	.text
	.file	"sysdep.bc"
	.globl	discard_tty_input
	.align	16, 0x90
	.type	discard_tty_input,@function
discard_tty_input:                      # @discard_tty_input
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
	testb	$1, noninteractive
	je	.LBB0_2
# BB#1:                                 # %if.then
	jmp	.LBB0_8
.LBB0_2:                                # %if.end
	movq	tty_list, %rax
	movq	%rax, -72(%rbp)
.LBB0_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB0_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-72(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB0_6
# BB#5:                                 # %if.then.3
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-72(%rbp), %rax
	movq	24(%rax), %rdi
	callq	fileno
	leaq	-64(%rbp), %rsi
	movl	%eax, %edi
	callq	emacs_get_tty
	movq	-72(%rbp), %rsi
	movq	24(%rsi), %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	fileno
	leaq	-64(%rbp), %rsi
	xorl	%edx, %edx
	movl	%eax, %edi
	callq	emacs_set_tty
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB0_6:                                # %if.end.9
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_7
.LBB0_7:                                # %for.inc
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB0_3
.LBB0_8:                                # %for.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	discard_tty_input, .Lfunc_end0-discard_tty_input
	.cfi_endproc

	.globl	emacs_get_tty
	.align	16, 0x90
	.type	emacs_get_tty,@function
emacs_get_tty:                          # @emacs_get_tty
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
	xorl	%eax, %eax
	movl	$60, %ecx
	movl	%ecx, %edx
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	movl	%eax, %esi
	callq	memset
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	tcgetattr
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	emacs_get_tty, .Lfunc_end1-emacs_get_tty
	.cfi_endproc

	.globl	emacs_set_tty
	.align	16, 0x90
	.type	emacs_set_tty,@function
emacs_set_tty:                          # @emacs_set_tty
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
	subq	$112, %rsp
	movb	%dl, %al
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	movl	$0, -24(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$10, -24(%rbp)
	jge	.LBB2_14
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	$1, %eax
	movl	$2, %ecx
	movl	-8(%rbp), %edi
	movb	-17(%rbp), %dl
	testb	$1, %dl
	cmovnel	%ecx, %eax
	movq	-16(%rbp), %rdx
	movl	%eax, %esi
	callq	tcsetattr
	cmpl	$0, %eax
	jge	.LBB2_6
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB2_1 Depth=1
	callq	__errno_location
	cmpl	$4, (%rax)
	jne	.LBB2_5
# BB#4:                                 # %if.then.4
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_13
.LBB2_5:                                # %if.else
	movl	$-1, -4(%rbp)
	jmp	.LBB2_15
.LBB2_6:                                # %if.else.5
                                        #   in Loop: Header=BB2_1 Depth=1
	leaq	-88(%rbp), %rax
	xorl	%esi, %esi
	movl	$60, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	memset
	movl	-8(%rbp), %edi
	movq	-96(%rbp), %rsi         # 8-byte Reload
	callq	tcgetattr
	movl	-88(%rbp), %ecx
	movq	-16(%rbp), %rdx
	cmpl	(%rdx), %ecx
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jne	.LBB2_12
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-84(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jne	.LBB2_12
# BB#8:                                 # %land.lhs.true.13
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-80(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jne	.LBB2_12
# BB#9:                                 # %land.lhs.true.17
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-76(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jne	.LBB2_12
# BB#10:                                # %land.lhs.true.21
                                        #   in Loop: Header=BB2_1 Depth=1
	leaq	-88(%rbp), %rax
	addq	$17, %rax
	movq	-16(%rbp), %rcx
	addq	$17, %rcx
	movl	$32, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcmp
	cmpl	$0, %eax
	jne	.LBB2_12
# BB#11:                                # %if.then.27
	jmp	.LBB2_14
.LBB2_12:                               # %if.else.28
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_13
.LBB2_13:                               # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB2_1
.LBB2_14:                               # %for.end
	movl	$0, -4(%rbp)
.LBB2_15:                               # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	emacs_set_tty, .Lfunc_end2-emacs_set_tty
	.cfi_endproc

	.globl	stuff_char
	.align	16, 0x90
	.type	stuff_char,@function
stuff_char:                             # @stuff_char
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
	movb	%dil, %al
	movb	%al, -1(%rbp)
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB3_1
	jmp	.LBB3_3
.LBB3_1:                                # %land.lhs.true
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB3_3
# BB#2:                                 # %land.lhs.true.1
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	je	.LBB3_4
.LBB3_3:                                # %if.then
	jmp	.LBB3_21
.LBB3_4:                                # %if.end
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB3_5
	jmp	.LBB3_7
.LBB3_5:                                # %land.lhs.true.5
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB3_7
# BB#6:                                 # %cond.true
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB3_8
.LBB3_7:                                # %cond.false
	callq	emacs_abort
.LBB3_8:                                # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	movq	208(%rax), %rcx
	shrq	$23, %rcx
	andq	$7, %rcx
	movl	%ecx, %edx
	cmpl	$1, %edx
	je	.LBB3_14
# BB#9:                                 # %lor.lhs.false
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB3_10
	jmp	.LBB3_12
.LBB3_10:                               # %land.lhs.true.17
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB3_12
# BB#11:                                # %cond.true.21
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB3_13
.LBB3_12:                               # %cond.false.23
	callq	emacs_abort
.LBB3_13:                               # %cond.end.24
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	208(%rax), %rcx
	shrq	$23, %rcx
	andq	$7, %rcx
	movl	%ecx, %edx
	cmpl	$3, %edx
	jne	.LBB3_19
.LBB3_14:                               # %cond.true.32
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB3_15
	jmp	.LBB3_17
.LBB3_15:                               # %land.lhs.true.34
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB3_17
# BB#16:                                # %cond.true.38
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB3_18
.LBB3_17:                               # %cond.false.40
	callq	emacs_abort
.LBB3_18:                               # %cond.end.41
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	376(%rax), %rcx
	movq	88(%rcx), %rcx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB3_20
.LBB3_19:                               # %cond.false.44
	callq	emacs_abort
.LBB3_20:                               # %cond.end.45
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	24(%rax), %rdi
	callq	fileno
	movl	$21522, %ecx            # imm = 0x5412
	movl	%ecx, %esi
	leaq	-1(%rbp), %rdx
	movl	%eax, %edi
	movb	$0, %al
	callq	ioctl
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB3_21:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	stuff_char, .Lfunc_end3-stuff_char
	.cfi_endproc

	.globl	emacs_abort
	.align	16, 0x90
	.type	emacs_abort,@function
emacs_abort:                            # @emacs_abort
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
	movl	$6, %edi
	movl	$40, %esi
	callq	terminate_due_to_signal
.Lfunc_end4:
	.size	emacs_abort, .Lfunc_end4-emacs_abort
	.cfi_endproc

	.globl	init_baud_rate
	.align	16, 0x90
	.type	init_baud_rate,@function
init_baud_rate:                         # @init_baud_rate
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
	subq	$80, %rsp
	movl	%edi, -4(%rbp)
	testb	$1, noninteractive
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	$0, -8(%rbp)
	jmp	.LBB5_3
.LBB5_2:                                # %if.else
	leaq	-72(%rbp), %rsi
	movl	$13, -64(%rbp)
	movl	-4(%rbp), %edi
	callq	tcgetattr
	leaq	-72(%rbp), %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	cfgetospeed
	movl	%eax, -8(%rbp)
.LBB5_3:                                # %if.end
	movslq	-8(%rbp), %rax
	cmpq	$16, %rax
	jae	.LBB5_5
# BB#4:                                 # %cond.true
	movslq	-8(%rbp), %rax
	movl	baud_convert(,%rax,4), %ecx
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	jmp	.LBB5_6
.LBB5_5:                                # %cond.false
	movl	$9600, %eax             # imm = 0x2580
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB5_6
.LBB5_6:                                # %cond.end
	movl	-80(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	movq	%rcx, globals+3048
	cmpq	$0, globals+3048
	jne	.LBB5_8
# BB#7:                                 # %if.then.6
	movq	$1200, globals+3048     # imm = 0x4B0
.LBB5_8:                                # %if.end.7
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	init_baud_rate, .Lfunc_end5-init_baud_rate
	.cfi_endproc

	.globl	wait_for_termination
	.align	16, 0x90
	.type	wait_for_termination,@function
wait_for_termination:                   # @wait_for_termination
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
	movb	%dl, %al
	xorl	%edx, %edx
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	movb	-17(%rbp), %al
	andb	$1, %al
	movzbl	%al, %ecx
	callq	get_child_status
	movl	%eax, -24(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	wait_for_termination, .Lfunc_end6-wait_for_termination
	.cfi_endproc

	.align	16, 0x90
	.type	get_child_status,@function
get_child_status:                       # @get_child_status
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
	subq	$80, %rsp
	movb	%cl, %al
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	andb	$1, %al
	movb	%al, -21(%rbp)
.LBB7_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	waitpid
	movl	%eax, -28(%rbp)
	cmpl	$0, %eax
	jge	.LBB7_15
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB7_1 Depth=1
	callq	__errno_location
	cmpl	$4, (%rax)
	je	.LBB7_4
# BB#3:                                 # %if.then
	callq	emacs_abort
.LBB7_4:                                # %if.end
                                        #   in Loop: Header=BB7_1 Depth=1
	testb	$1, -21(%rbp)
	je	.LBB7_14
# BB#5:                                 # %if.then.3
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_6
.LBB7_6:                                # %do.body
                                        #   in Loop: Header=BB7_1 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB7_9
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB7_1 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB7_9
# BB#8:                                 # %if.then.8
                                        #   in Loop: Header=BB7_1 Depth=1
	callq	process_quit_flag
	jmp	.LBB7_12
.LBB7_9:                                # %if.else
                                        #   in Loop: Header=BB7_1 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB7_11
# BB#10:                                # %if.then.10
                                        #   in Loop: Header=BB7_1 Depth=1
	callq	process_pending_signals
.LBB7_11:                               # %if.end.11
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_12
.LBB7_12:                               # %if.end.12
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_13
.LBB7_13:                               # %do.end
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_14
.LBB7_14:                               # %if.end.13
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_1
.LBB7_15:                               # %while.end
	cmpl	$0, -28(%rbp)
	je	.LBB7_19
# BB#16:                                # %land.lhs.true.15
	cmpq	$0, -16(%rbp)
	je	.LBB7_19
# BB#17:                                # %land.lhs.true.17
	cmpq	$0, input_available_clear_time
	je	.LBB7_19
# BB#18:                                # %if.then.19
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	input_available_clear_time, %rdx
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	callq	make_timespec
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rcx)
.LBB7_19:                               # %if.end.21
	movl	-28(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	get_child_status, .Lfunc_end7-get_child_status
	.cfi_endproc

	.globl	child_status_changed
	.align	16, 0x90
	.type	child_status_changed,@function
child_status_changed:                   # @child_status_changed
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
	xorl	%ecx, %ecx
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	orl	$1, %edx
	callq	get_child_status
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	child_status_changed, .Lfunc_end8-child_status_changed
	.cfi_endproc

	.globl	child_setup_tty
	.align	16, 0x90
	.type	child_setup_tty,@function
child_setup_tty:                        # @child_setup_tty
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
	subq	$80, %rsp
	leaq	-64(%rbp), %rsi
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	emacs_get_tty
	movl	-60(%rbp), %edi
	orl	$1, %edi
	movl	%edi, -60(%rbp)
	movl	-60(%rbp), %edi
	andl	$-5, %edi
	movl	%edi, -60(%rbp)
	movl	-60(%rbp), %edi
	andl	$-65281, %edi           # imm = 0xFFFFFFFFFFFF00FF
	movl	%edi, -60(%rbp)
	movl	-52(%rbp), %edi
	andl	$-9, %edi
	movl	%edi, -52(%rbp)
	movl	-52(%rbp), %edi
	orl	$1, %edi
	movl	%edi, -52(%rbp)
	movl	-64(%rbp), %edi
	andl	$-513, %edi             # imm = 0xFFFFFFFFFFFFFDFF
	movl	%edi, -64(%rbp)
	movl	-64(%rbp), %edi
	andl	$-33, %edi
	movl	%edi, -64(%rbp)
	movl	-60(%rbp), %edi
	andl	$-3, %edi
	movl	%edi, -60(%rbp)
	movl	-60(%rbp), %edi
	andl	$-6145, %edi            # imm = 0xFFFFFFFFFFFFE7FF
	movl	%edi, -60(%rbp)
	movl	-56(%rbp), %edi
	andl	$-49, %edi
	orl	$48, %edi
	movl	%edi, -56(%rbp)
	movb	$0, -45(%rbp)
	movb	$0, -44(%rbp)
	movzbl	-46(%rbp), %edi
	cmpl	$0, %edi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movb	$28, -46(%rbp)
.LBB9_2:                                # %if.end
	movzbl	-47(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB9_4
# BB#3:                                 # %if.then.44
	movb	$3, -47(%rbp)
.LBB9_4:                                # %if.end.48
	leaq	-64(%rbp), %rsi
	xorl	%edx, %edx
	movl	-52(%rbp), %eax
	orl	$2, %eax
	movl	%eax, -52(%rbp)
	movb	$4, -43(%rbp)
	movl	-4(%rbp), %edi
	callq	emacs_set_tty
	movl	%eax, -72(%rbp)         # 4-byte Spill
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	child_setup_tty, .Lfunc_end9-child_setup_tty
	.cfi_endproc

	.globl	sys_suspend
	.align	16, 0x90
	.type	sys_suspend,@function
sys_suspend:                            # @sys_suspend
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
	xorl	%edi, %edi
	movl	$20, %esi
	callq	kill
	movl	%eax, -4(%rbp)          # 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	sys_suspend, .Lfunc_end10-sys_suspend
	.cfi_endproc

	.globl	sys_subshell
	.align	16, 0x90
	.type	sys_subshell,@function
sys_subshell:                           # @sys_subshell
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
	subq	$848, %rsp              # imm = 0x350
	callq	encode_current_directory
	movq	%rax, %rdi
	callq	SSDATA
	movq	%rax, -824(%rbp)
	movq	-824(%rbp), %rax
	movq	%rax, -832(%rbp)
	callq	vfork
	movl	%eax, -4(%rbp)
	movq	-832(%rbp), %rdi
	movq	%rdi, -824(%rbp)
	cmpl	$0, -4(%rbp)
	jge	.LBB11_2
# BB#1:                                 # %if.then
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.LBB11_2:                               # %if.end
	movl	$2, -816(%rbp)
	movl	$3, -656(%rbp)
	movl	$15, -496(%rbp)
	movl	$29, -336(%rbp)
	movl	$0, -176(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.LBB11_10
# BB#3:                                 # %if.then.12
	movq	$0, -840(%rbp)
	cmpq	$0, -840(%rbp)
	jne	.LBB11_5
# BB#4:                                 # %if.then.14
	movabsq	$.L.str.1, %rdi
	callq	egetenv
	movq	%rax, -840(%rbp)
.LBB11_5:                               # %if.end.16
	cmpq	$0, -840(%rbp)
	jne	.LBB11_7
# BB#6:                                 # %if.then.18
	movabsq	$.L.str.2, %rax
	movq	%rax, -840(%rbp)
.LBB11_7:                               # %if.end.19
	movq	-824(%rbp), %rdi
	callq	chdir
	cmpl	$0, %eax
	je	.LBB11_9
# BB#8:                                 # %if.then.22
	movq	-824(%rbp), %rdi
	callq	emacs_perror
	movl	$125, %edi
	callq	_exit
.LBB11_9:                               # %if.end.23
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-840(%rbp), %rdi
	movq	-840(%rbp), %rsi
	movb	$0, %al
	callq	execlp
	movq	-840(%rbp), %rdi
	movl	%eax, -844(%rbp)        # 4-byte Spill
	callq	emacs_perror
	callq	__errno_location
	movl	$126, %ecx
	movl	$127, %r8d
	cmpl	$2, (%rax)
	cmovel	%r8d, %ecx
	movl	%ecx, %edi
	callq	_exit
.LBB11_10:                              # %if.end.27
	leaq	-816(%rbp), %rdi
	callq	save_signal_handlers
	leaq	-8(%rbp), %rsi
	xorl	%edx, %edx
	movl	-4(%rbp), %edi
	callq	wait_for_termination
	leaq	-816(%rbp), %rdi
	callq	restore_signal_handlers
	addq	$848, %rsp              # imm = 0x350
	popq	%rbp
	retq
.Lfunc_end11:
	.size	sys_subshell, .Lfunc_end11-sys_subshell
	.cfi_endproc

	.globl	emacs_perror
	.align	16, 0x90
	.type	emacs_perror,@function
emacs_perror:                           # @emacs_perror
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
	subq	$8352, %rsp             # imm = 0x20A0
	movq	%rdi, -8(%rbp)
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -12(%rbp)
	movl	-12(%rbp), %edi
	callq	strerror
	movq	%rax, -24(%rbp)
	cmpq	$0, initial_argv
	je	.LBB12_3
# BB#1:                                 # %land.lhs.true
	movq	initial_argv, %rax
	cmpq	$0, (%rax)
	je	.LBB12_3
# BB#2:                                 # %cond.true
	movq	initial_argv, %rax
	movq	(%rax), %rax
	movq	%rax, -8240(%rbp)       # 8-byte Spill
	jmp	.LBB12_4
.LBB12_3:                               # %cond.false
	movabsq	$.L.str.8, %rax
	movq	%rax, -8240(%rbp)       # 8-byte Spill
	jmp	.LBB12_4
.LBB12_4:                               # %cond.end
	movq	-8240(%rbp), %rax       # 8-byte Reload
	movl	$8192, %ecx             # imm = 0x2000
	movl	%ecx, %esi
	movabsq	$.L.str.9, %rdx
	leaq	-8224(%rbp), %rdi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %r8
	movq	-24(%rbp), %r9
	movb	$0, %al
	callq	snprintf
	xorl	%r10d, %r10d
	movl	%eax, -8228(%rbp)
	cmpl	-8228(%rbp), %r10d
	jg	.LBB12_7
# BB#5:                                 # %land.lhs.true.5
	cmpl	$8192, -8228(%rbp)      # imm = 0x2000
	jge	.LBB12_7
# BB#6:                                 # %if.then
	movl	$2, %edi
	leaq	-8224(%rbp), %rsi
	movslq	-8228(%rbp), %rdx
	callq	emacs_write
	movq	%rax, -8248(%rbp)       # 8-byte Spill
	jmp	.LBB12_8
.LBB12_7:                               # %if.else
	movl	$2, %edi
	movq	-32(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	%edi, -8252(%rbp)       # 4-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -8264(%rbp)       # 8-byte Spill
	callq	strlen
	movl	-8252(%rbp), %edi       # 4-byte Reload
	movq	-8264(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	emacs_write
	movl	$2, %edi
	movabsq	$.L.str.10, %rsi
	movl	$2, %ecx
	movl	%ecx, %edx
	movq	%rax, -8272(%rbp)       # 8-byte Spill
	callq	emacs_write
	movl	$2, %edi
	movq	-8(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movl	%edi, -8276(%rbp)       # 4-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -8288(%rbp)       # 8-byte Spill
	movq	%rsi, -8296(%rbp)       # 8-byte Spill
	callq	strlen
	movl	-8276(%rbp), %edi       # 4-byte Reload
	movq	-8296(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	emacs_write
	movl	$2, %edi
	movabsq	$.L.str.10, %rsi
	movl	$2, %ecx
	movl	%ecx, %edx
	movq	%rax, -8304(%rbp)       # 8-byte Spill
	callq	emacs_write
	movl	$2, %edi
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	%edi, -8308(%rbp)       # 4-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -8320(%rbp)       # 8-byte Spill
	movq	%rsi, -8328(%rbp)       # 8-byte Spill
	callq	strlen
	movl	-8308(%rbp), %edi       # 4-byte Reload
	movq	-8328(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	emacs_write
	movl	$2, %edi
	movabsq	$.L.str.11, %rsi
	movl	$1, %ecx
	movl	%ecx, %edx
	movq	%rax, -8336(%rbp)       # 8-byte Spill
	callq	emacs_write
	movq	%rax, -8344(%rbp)       # 8-byte Spill
.LBB12_8:                               # %if.end
	movl	-12(%rbp), %eax
	movl	%eax, -8348(%rbp)       # 4-byte Spill
	callq	__errno_location
	movl	-8348(%rbp), %ecx       # 4-byte Reload
	movl	%ecx, (%rax)
	addq	$8352, %rsp             # imm = 0x20A0
	popq	%rbp
	retq
.Lfunc_end12:
	.size	emacs_perror, .Lfunc_end12-emacs_perror
	.cfi_endproc

	.align	16, 0x90
	.type	save_signal_handlers,@function
save_signal_handlers:                   # @save_signal_handlers
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
.LBB13_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB13_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB13_1 Depth=1
	leaq	-160(%rbp), %rdi
	movl	$1, %eax
	movl	%eax, %esi
	callq	emacs_sigaction_init
	leaq	-160(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	movq	-8(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, %rdx
	callq	sigaction
	movq	-8(%rbp), %rcx
	addq	$160, %rcx
	movq	%rcx, -8(%rbp)
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jmp	.LBB13_1
.LBB13_3:                               # %while.end
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	save_signal_handlers, .Lfunc_end13-save_signal_handlers
	.cfi_endproc

	.align	16, 0x90
	.type	restore_signal_handlers,@function
restore_signal_handlers:                # @restore_signal_handlers
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
.LBB14_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB14_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB14_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movq	-8(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, %rsi
	callq	sigaction
	movq	-8(%rbp), %rcx
	addq	$160, %rcx
	movq	%rcx, -8(%rbp)
	movl	%eax, -12(%rbp)         # 4-byte Spill
	jmp	.LBB14_1
.LBB14_3:                               # %while.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	restore_signal_handlers, .Lfunc_end14-restore_signal_handlers
	.cfi_endproc

	.globl	init_sigio
	.align	16, 0x90
	.type	init_sigio,@function
init_sigio:                             # @init_sigio
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
	movl	$3, %esi
	xorl	%edx, %edx
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	movb	$0, %al
	callq	rpl_fcntl
	movl	$4, %esi
	andl	$-8193, %eax            # imm = 0xFFFFFFFFFFFFDFFF
	movslq	-4(%rbp), %rcx
	movl	%eax, old_fcntl_flags(,%rcx,4)
	movl	-4(%rbp), %edi
	movslq	-4(%rbp), %rcx
	movl	old_fcntl_flags(,%rcx,4), %eax
	orl	$8192, %eax             # imm = 0x2000
	movl	%eax, %edx
	movb	$0, %al
	callq	rpl_fcntl
	movb	$0, interrupts_deferred
	movl	%eax, -8(%rbp)          # 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	init_sigio, .Lfunc_end15-init_sigio
	.cfi_endproc

	.globl	request_sigio
	.align	16, 0x90
	.type	request_sigio,@function
request_sigio:                          # @request_sigio
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
	subq	$144, %rsp
	testb	$1, noninteractive
	je	.LBB16_2
# BB#1:                                 # %if.then
	jmp	.LBB16_3
.LBB16_2:                               # %if.end
	leaq	-128(%rbp), %rdi
	callq	sigemptyset
	leaq	-128(%rbp), %rdi
	movl	$28, %esi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	sigaddset
	leaq	-128(%rbp), %rdi
	movl	$29, %esi
	movl	%eax, -136(%rbp)        # 4-byte Spill
	callq	sigaddset
	movl	$1, %edi
	leaq	-128(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	pthread_sigmask
	movb	$0, interrupts_deferred
	movl	%eax, -144(%rbp)        # 4-byte Spill
.LBB16_3:                               # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	request_sigio, .Lfunc_end16-request_sigio
	.cfi_endproc

	.globl	unrequest_sigio
	.align	16, 0x90
	.type	unrequest_sigio,@function
unrequest_sigio:                        # @unrequest_sigio
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
	subq	$144, %rsp
	testb	$1, noninteractive
	je	.LBB17_2
# BB#1:                                 # %if.then
	jmp	.LBB17_3
.LBB17_2:                               # %if.end
	leaq	-128(%rbp), %rdi
	callq	sigemptyset
	leaq	-128(%rbp), %rdi
	movl	$28, %esi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	sigaddset
	leaq	-128(%rbp), %rdi
	movl	$29, %esi
	movl	%eax, -136(%rbp)        # 4-byte Spill
	callq	sigaddset
	xorl	%edi, %edi
	leaq	-128(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	pthread_sigmask
	movb	$1, interrupts_deferred
	movl	%eax, -144(%rbp)        # 4-byte Spill
.LBB17_3:                               # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	unrequest_sigio, .Lfunc_end17-unrequest_sigio
	.cfi_endproc

	.globl	block_child_signal
	.align	16, 0x90
	.type	block_child_signal,@function
block_child_signal:                     # @block_child_signal
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
	subq	$160, %rsp
	leaq	-136(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	sigemptyset
	leaq	-136(%rbp), %rdi
	movl	$17, %esi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	sigaddset
	leaq	-136(%rbp), %rdi
	movl	$2, %esi
	movl	%eax, -144(%rbp)        # 4-byte Spill
	callq	sigaddset
	xorl	%edi, %edi
	leaq	-136(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	pthread_sigmask
	movl	%eax, -152(%rbp)        # 4-byte Spill
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	block_child_signal, .Lfunc_end18-block_child_signal
	.cfi_endproc

	.globl	unblock_child_signal
	.align	16, 0x90
	.type	unblock_child_signal,@function
unblock_child_signal:                   # @unblock_child_signal
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
	movl	$2, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movl	%eax, %edi
	callq	pthread_sigmask
	movl	%eax, -12(%rbp)         # 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	unblock_child_signal, .Lfunc_end19-unblock_child_signal
	.cfi_endproc

	.globl	init_foreground_group
	.align	16, 0x90
	.type	init_foreground_group,@function
init_foreground_group:                  # @init_foreground_group
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
	callq	getpgrp
	movl	%eax, -4(%rbp)
	callq	getpid
	cmpl	-4(%rbp), %eax
	jne	.LBB20_2
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, -8(%rbp)          # 4-byte Spill
	jmp	.LBB20_3
.LBB20_2:                               # %cond.false
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)          # 4-byte Spill
.LBB20_3:                               # %cond.end
	movl	-8(%rbp), %eax          # 4-byte Reload
	movl	%eax, inherited_pgroup
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	init_foreground_group, .Lfunc_end20-init_foreground_group
	.cfi_endproc

	.globl	block_tty_out_signal
	.align	16, 0x90
	.type	block_tty_out_signal,@function
block_tty_out_signal:                   # @block_tty_out_signal
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
	subq	$160, %rsp
	leaq	-136(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	sigemptyset
	leaq	-136(%rbp), %rdi
	movl	$22, %esi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	sigaddset
	xorl	%edi, %edi
	leaq	-136(%rbp), %rsi
	movq	-8(%rbp), %rdx
	movl	%eax, -144(%rbp)        # 4-byte Spill
	callq	pthread_sigmask
	movl	%eax, -148(%rbp)        # 4-byte Spill
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	block_tty_out_signal, .Lfunc_end21-block_tty_out_signal
	.cfi_endproc

	.globl	unblock_tty_out_signal
	.align	16, 0x90
	.type	unblock_tty_out_signal,@function
unblock_tty_out_signal:                 # @unblock_tty_out_signal
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
	movl	$2, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movl	%eax, %edi
	callq	pthread_sigmask
	movl	%eax, -12(%rbp)         # 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	unblock_tty_out_signal, .Lfunc_end22-unblock_tty_out_signal
	.cfi_endproc

	.globl	init_all_sys_modes
	.align	16, 0x90
	.type	init_all_sys_modes,@function
init_all_sys_modes:                     # @init_all_sys_modes
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
	movq	tty_list, %rax
	movq	%rax, -8(%rbp)
.LBB23_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB23_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	init_sys_modes
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB23_1
.LBB23_4:                               # %for.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	init_all_sys_modes, .Lfunc_end23-init_all_sys_modes
	.cfi_endproc

	.globl	init_sys_modes
	.align	16, 0x90
	.type	init_sys_modes,@function
init_sys_modes:                         # @init_sys_modes
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
	subq	$192, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2488
	testb	$1, noninteractive
	je	.LBB24_2
# BB#1:                                 # %if.then
	jmp	.LBB24_58
.LBB24_2:                               # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	jne	.LBB24_4
# BB#3:                                 # %if.then.2
	jmp	.LBB24_58
.LBB24_4:                               # %if.end.3
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	fileno
	movl	%eax, %edi
	callq	narrow_foreground_group
	movq	-8(%rbp), %rcx
	cmpq	$0, 48(%rcx)
	jne	.LBB24_6
# BB#5:                                 # %if.then.6
	movl	$60, %eax
	movl	%eax, %edi
	callq	xmalloc
	movq	-8(%rbp), %rdi
	movq	%rax, 48(%rdi)
.LBB24_6:                               # %if.end.9
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	fileno
	movq	-8(%rbp), %rdi
	movq	48(%rdi), %rsi
	movl	%eax, %edi
	callq	emacs_get_tty
	movl	$60, %edi
	movl	%edi, %edx
	leaq	-72(%rbp), %rsi
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	memcpy
	movzbl	-53(%rbp), %eax
	movl	%eax, %ecx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, globals+2488
	movl	-72(%rbp), %eax
	orl	$1, %eax
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %eax
	andl	$-257, %eax             # imm = 0xFFFFFFFFFFFFFEFF
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %eax
	andl	$-65, %eax
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %eax
	andl	$-33, %eax
	movl	%eax, -72(%rbp)
	movl	-60(%rbp), %eax
	andl	$-9, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	andl	$-3, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	andl	$-32769, %eax           # imm = 0xFFFFFFFFFFFF7FFF
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	orl	$1, %eax
	movl	%eax, -60(%rbp)
	movq	-8(%rbp), %rcx
	movb	8788(%rcx), %r8b
	shrb	$1, %r8b
	andb	$1, %r8b
	testb	$1, %r8b
	je	.LBB24_8
# BB#7:                                 # %if.then.35
	movl	-72(%rbp), %eax
	orl	$1024, %eax             # imm = 0x400
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %eax
	andl	$-2049, %eax            # imm = 0xFFFFFFFFFFFFF7FF
	movl	%eax, -72(%rbp)
	jmp	.LBB24_9
.LBB24_8:                               # %if.else
	movl	-72(%rbp), %eax
	andl	$-1025, %eax            # imm = 0xFFFFFFFFFFFFFBFF
	movl	%eax, -72(%rbp)
.LBB24_9:                               # %if.end.45
	movl	-68(%rbp), %eax
	andl	$-5, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	andl	$-6145, %eax            # imm = 0xFFFFFFFFFFFFE7FF
	movl	%eax, -68(%rbp)
	movq	-8(%rbp), %rcx
	cmpl	$0, 8780(%rcx)
	je	.LBB24_11
# BB#10:                                # %if.then.52
	movl	-64(%rbp), %eax
	orl	$48, %eax
	movl	%eax, -64(%rbp)
	movl	-64(%rbp), %eax
	andl	$-257, %eax             # imm = 0xFFFFFFFFFFFFFEFF
	movl	%eax, -64(%rbp)
.LBB24_11:                              # %if.end.58
	movl	$5, %esi
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	Fcontrolling_tty_p
	xorl	%edi, %edi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB24_13
# BB#12:                                # %if.then.64
	movl	quit_char, %eax
	movb	%al, %cl
	movb	%cl, -55(%rbp)
	movl	quit_char, %eax
	movb	%al, %cl
	movb	%cl, -54(%rbp)
	jmp	.LBB24_14
.LBB24_13:                              # %if.else.73
	movb	$0, -55(%rbp)
	movb	$0, -54(%rbp)
.LBB24_14:                              # %if.end.80
	movb	$1, -49(%rbp)
	movb	$0, -50(%rbp)
	movb	$0, -45(%rbp)
	movb	$0, -40(%rbp)
	movb	$0, -43(%rbp)
	movb	$0, -41(%rbp)
	movb	$0, -42(%rbp)
	movq	-8(%rbp), %rax
	movb	8788(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB24_16
# BB#15:                                # %if.then.107
	movb	$17, -47(%rbp)
	movb	$19, -46(%rbp)
	jmp	.LBB24_17
.LBB24_16:                              # %if.else.114
	movb	$0, -47(%rbp)
	movb	$0, -46(%rbp)
.LBB24_17:                              # %if.end.121
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	fileno
	leaq	-72(%rbp), %rsi
	xorl	%edx, %edx
	movl	%eax, %edi
	callq	emacs_set_tty
	movq	-8(%rbp), %rsi
	movb	8788(%rsi), %cl
	shrb	$1, %cl
	andb	$1, %cl
	testb	$1, %cl
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jne	.LBB24_19
# BB#18:                                # %if.then.130
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	fileno
	movl	$21514, %ecx            # imm = 0x540A
	movl	%ecx, %esi
	movl	$1, %edx
	movl	%eax, %edi
	movb	$0, %al
	callq	ioctl
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB24_19:                              # %if.end.134
	movq	-8(%rbp), %rax
	movb	8788(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB24_21
# BB#20:                                # %if.then.140
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	fileno
	movl	$1, %esi
	movl	%eax, %edi
	callq	tcflow
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB24_21:                              # %if.end.144
	testb	$1, interrupt_input
	je	.LBB24_23
# BB#22:                                # %if.then.146
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	fileno
	movl	$9, %esi
	xorl	%edx, %edx
	movl	%eax, %edi
	movb	$0, %al
	callq	rpl_fcntl
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rdi
	movl	%eax, -144(%rbp)        # 4-byte Spill
	callq	fileno
	movslq	%eax, %rcx
	movl	-144(%rbp), %eax        # 4-byte Reload
	movl	%eax, old_fcntl_owner(,%rcx,4)
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rdi
	callq	fileno
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	getpid
	movl	$8, %esi
	movl	-148(%rbp), %edi        # 4-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	rpl_fcntl
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rdi
	movl	%eax, -152(%rbp)        # 4-byte Spill
	callq	fileno
	movl	%eax, %edi
	callq	init_sigio
.LBB24_23:                              # %if.end.159
	movabsq	$_sobuf, %rsi
	xorl	%edx, %edx
	movl	$8200, %eax             # imm = 0x2008
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	callq	setvbuf
	movq	-8(%rbp), %rcx
	movq	64(%rcx), %rcx
	cmpq	$0, 216(%rcx)
	movl	%eax, -156(%rbp)        # 4-byte Spill
	je	.LBB24_25
# BB#24:                                # %if.then.164
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	216(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	64(%rcx), %rdi
	callq	*%rax
.LBB24_25:                              # %if.end.168
	movq	-8(%rbp), %rax
	movb	56(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB24_40
# BB#26:                                # %if.then.172
	movq	Vframe_list, %rax
	movq	%rax, -88(%rbp)
.LBB24_27:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-88(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -157(%rbp)         # 1-byte Spill
	jne	.LBB24_29
# BB#28:                                # %land.rhs
                                        #   in Loop: Header=BB24_27 Depth=1
	movb	$1, %al
	movq	-88(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -96(%rbp)
	movb	%al, -157(%rbp)         # 1-byte Spill
.LBB24_29:                              # %land.end
                                        #   in Loop: Header=BB24_27 Depth=1
	movb	-157(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB24_30
	jmp	.LBB24_39
.LBB24_30:                              # %for.body
                                        #   in Loop: Header=BB24_27 Depth=1
	movq	-96(%rbp), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB24_37
# BB#31:                                # %land.lhs.true
                                        #   in Loop: Header=BB24_27 Depth=1
	movq	-96(%rbp), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	je	.LBB24_33
# BB#32:                                # %lor.lhs.false
                                        #   in Loop: Header=BB24_27 Depth=1
	movq	-96(%rbp), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB24_34
.LBB24_33:                              # %cond.true
                                        #   in Loop: Header=BB24_27 Depth=1
	movq	-96(%rbp), %rax
	subq	$5, %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB24_35
.LBB24_34:                              # %cond.false
	callq	emacs_abort
.LBB24_35:                              # %cond.end
                                        #   in Loop: Header=BB24_27 Depth=1
	movq	-168(%rbp), %rax        # 8-byte Reload
	cmpq	-8(%rbp), %rax
	jne	.LBB24_37
# BB#36:                                # %if.then.205
                                        #   in Loop: Header=BB24_27 Depth=1
	movq	-96(%rbp), %rax
	subq	$5, %rax
	movq	%rax, %rdi
	callq	init_frame_faces
.LBB24_37:                              # %if.end.207
                                        #   in Loop: Header=BB24_27 Depth=1
	jmp	.LBB24_38
.LBB24_38:                              # %for.inc
                                        #   in Loop: Header=BB24_27 Depth=1
	movq	-88(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB24_27
.LBB24_39:                              # %for.end
	jmp	.LBB24_40
.LBB24_40:                              # %if.end.209
	movq	-8(%rbp), %rax
	movb	56(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB24_43
# BB#41:                                # %land.lhs.true.215
	testb	$1, globals+3416
	je	.LBB24_43
# BB#42:                                # %if.then.218
	jmp	.LBB24_57
.LBB24_43:                              # %if.else.219
	movb	$1, frame_garbaged
	movq	Vframe_list, %rax
	movq	%rax, -104(%rbp)
.LBB24_44:                              # %for.cond.222
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-104(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -169(%rbp)         # 1-byte Spill
	jne	.LBB24_46
# BB#45:                                # %land.rhs.227
                                        #   in Loop: Header=BB24_44 Depth=1
	movb	$1, %al
	movq	-104(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -112(%rbp)
	movb	%al, -169(%rbp)         # 1-byte Spill
.LBB24_46:                              # %land.end.230
                                        #   in Loop: Header=BB24_44 Depth=1
	movb	-169(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB24_47
	jmp	.LBB24_56
.LBB24_47:                              # %for.body.231
                                        #   in Loop: Header=BB24_44 Depth=1
	movq	-112(%rbp), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB24_54
# BB#48:                                # %land.lhs.true.240
                                        #   in Loop: Header=BB24_44 Depth=1
	movq	-112(%rbp), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	je	.LBB24_50
# BB#49:                                # %lor.lhs.false.249
                                        #   in Loop: Header=BB24_44 Depth=1
	movq	-112(%rbp), %rax
	subq	$5, %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB24_51
.LBB24_50:                              # %cond.true.258
                                        #   in Loop: Header=BB24_44 Depth=1
	movq	-112(%rbp), %rax
	subq	$5, %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB24_52
.LBB24_51:                              # %cond.false.263
	callq	emacs_abort
.LBB24_52:                              # %cond.end.264
                                        #   in Loop: Header=BB24_44 Depth=1
	movq	-184(%rbp), %rax        # 8-byte Reload
	cmpq	-8(%rbp), %rax
	jne	.LBB24_54
# BB#53:                                # %if.then.268
                                        #   in Loop: Header=BB24_44 Depth=1
	movq	-112(%rbp), %rax
	subq	$5, %rax
	movq	208(%rax), %rcx
	andq	$-8193, %rcx            # imm = 0xFFFFFFFFFFFFDFFF
	orq	$8192, %rcx             # imm = 0x2000
	movq	%rcx, 208(%rax)
.LBB24_54:                              # %if.end.272
                                        #   in Loop: Header=BB24_44 Depth=1
	jmp	.LBB24_55
.LBB24_55:                              # %for.inc.273
                                        #   in Loop: Header=BB24_44 Depth=1
	movq	-104(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB24_44
.LBB24_56:                              # %for.end.277
	jmp	.LBB24_57
.LBB24_57:                              # %if.end.278
	movq	-8(%rbp), %rax
	movb	56(%rax), %cl
	andb	$-2, %cl
	orb	$1, %cl
	movb	%cl, 56(%rax)
.LBB24_58:                              # %return
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	init_sys_modes, .Lfunc_end24-init_sys_modes
	.cfi_endproc

	.align	16, 0x90
	.type	narrow_foreground_group,@function
narrow_foreground_group:                # @narrow_foreground_group
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
	movl	%edi, -4(%rbp)
	cmpl	$0, inherited_pgroup
	je	.LBB25_3
# BB#1:                                 # %land.lhs.true
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	%eax, %esi
	callq	setpgid
	cmpl	$0, %eax
	jne	.LBB25_3
# BB#2:                                 # %if.then
	movl	-4(%rbp), %edi
	movl	%edi, -8(%rbp)          # 4-byte Spill
	callq	getpid
	movl	-8(%rbp), %edi          # 4-byte Reload
	movl	%eax, %esi
	callq	tcsetpgrp_without_stopping
.LBB25_3:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	narrow_foreground_group, .Lfunc_end25-narrow_foreground_group
	.cfi_endproc

	.globl	tabs_safe_p
	.align	16, 0x90
	.type	tabs_safe_p,@function
tabs_safe_p:                            # @tabs_safe_p
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
	subq	$80, %rsp
	leaq	-64(%rbp), %rsi
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	emacs_get_tty
	movl	-60(%rbp), %edi
	andl	$6144, %edi             # imm = 0x1800
	cmpl	$6144, %edi             # imm = 0x1800
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movl	%edi, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	tabs_safe_p, .Lfunc_end26-tabs_safe_p
	.cfi_endproc

	.globl	suppress_echo_on_tty
	.align	16, 0x90
	.type	suppress_echo_on_tty,@function
suppress_echo_on_tty:                   # @suppress_echo_on_tty
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
	subq	$80, %rsp
	leaq	-64(%rbp), %rsi
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	emacs_get_tty
	leaq	-64(%rbp), %rsi
	xorl	%edx, %edx
	movl	-52(%rbp), %edi
	andl	$-3, %edi
	movl	%edi, -52(%rbp)
	movl	-52(%rbp), %edi
	andl	$-9, %edi
	movl	%edi, -52(%rbp)
	movl	-4(%rbp), %edi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	emacs_set_tty
	movl	%eax, -72(%rbp)         # 4-byte Spill
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	suppress_echo_on_tty, .Lfunc_end27-suppress_echo_on_tty
	.cfi_endproc

	.globl	get_tty_size
	.align	16, 0x90
	.type	get_tty_size,@function
get_tty_size:                           # @get_tty_size
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
	subq	$32, %rsp
	movl	$21523, %eax            # imm = 0x5413
	movl	%eax, %ecx
	leaq	-32(%rbp), %r8
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-4(%rbp), %edi
	movq	%rcx, %rsi
	movq	%r8, %rdx
	movb	$0, %al
	callq	ioctl
	cmpl	$-1, %eax
	jne	.LBB28_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	jmp	.LBB28_3
.LBB28_2:                               # %if.else
	movzwl	-30(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movzwl	-32(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB28_3:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	get_tty_size, .Lfunc_end28-get_tty_size
	.cfi_endproc

	.globl	set_window_size
	.align	16, 0x90
	.type	set_window_size,@function
set_window_size:                        # @set_window_size
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
	subq	$32, %rsp
	movl	$21524, %eax            # imm = 0x5414
	movl	%eax, %ecx
	leaq	-24(%rbp), %r8
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-8(%rbp), %eax
	movw	%ax, %r9w
	movw	%r9w, -24(%rbp)
	movl	-12(%rbp), %eax
	movw	%ax, %r9w
	movw	%r9w, -22(%rbp)
	movl	-4(%rbp), %edi
	movq	%rcx, %rsi
	movq	%r8, %rdx
	movb	$0, %al
	callq	ioctl
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	set_window_size, .Lfunc_end29-set_window_size
	.cfi_endproc

	.globl	reset_all_sys_modes
	.align	16, 0x90
	.type	reset_all_sys_modes,@function
reset_all_sys_modes:                    # @reset_all_sys_modes
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
	movq	tty_list, %rax
	movq	%rax, -8(%rbp)
.LBB30_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB30_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	reset_sys_modes
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB30_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB30_1
.LBB30_4:                               # %for.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	reset_all_sys_modes, .Lfunc_end30-reset_all_sys_modes
	.cfi_endproc

	.globl	reset_sys_modes
	.align	16, 0x90
	.type	reset_sys_modes,@function
reset_sys_modes:                        # @reset_sys_modes
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	testb	$1, noninteractive
	je	.LBB31_2
# BB#1:                                 # %if.then
	movq	stdout, %rdi
	callq	fflush
	movl	%eax, -16(%rbp)         # 4-byte Spill
	jmp	.LBB31_30
.LBB31_2:                               # %if.end
	movq	-8(%rbp), %rax
	movb	56(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB31_4
# BB#3:                                 # %if.then.1
	jmp	.LBB31_30
.LBB31_4:                               # %if.end.2
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	jne	.LBB31_6
# BB#5:                                 # %if.then.4
	jmp	.LBB31_30
.LBB31_6:                               # %if.end.5
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movl	140(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %esi
	callq	cmgoto
	movq	-8(%rbp), %rax
	cmpq	$0, 8400(%rax)
	je	.LBB31_8
# BB#7:                                 # %if.then.7
	movl	$1, %esi
	movabsq	$cmputc, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, current_tty
	movq	-8(%rbp), %rax
	movq	8400(%rax), %rdi
	callq	tputs
	jmp	.LBB31_13
.LBB31_8:                               # %if.else
	movq	-8(%rbp), %rdi
	callq	tty_turn_off_insert
	movq	-8(%rbp), %rdi
	movq	72(%rdi), %rdi
	movl	4(%rdi), %eax
	movl	%eax, -12(%rbp)
.LBB31_9:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rcx
	movl	136(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jge	.LBB31_12
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB31_9 Depth=1
	movl	$32, %edi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rsi
	callq	fputc
	movl	%eax, -20(%rbp)         # 4-byte Spill
# BB#11:                                # %for.inc
                                        #   in Loop: Header=BB31_9 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB31_9
.LBB31_12:                              # %for.end
	jmp	.LBB31_13
.LBB31_13:                              # %if.end.14
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movl	140(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %esi
	callq	cmgoto
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	fflush
	movq	-8(%rbp), %rdi
	movq	64(%rdi), %rdi
	cmpq	$0, 208(%rdi)
	movl	%eax, -24(%rbp)         # 4-byte Spill
	je	.LBB31_15
# BB#14:                                # %if.then.21
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	208(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	64(%rcx), %rdi
	callq	*%rax
.LBB31_15:                              # %if.end.25
	jmp	.LBB31_16
.LBB31_16:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	fileno
	movl	%eax, %edi
	callq	fdatasync
	xorl	%edi, %edi
	movb	%dil, %cl
	cmpl	$0, %eax
	movb	%cl, -25(%rbp)          # 1-byte Spill
	je	.LBB31_18
# BB#17:                                # %land.rhs
                                        #   in Loop: Header=BB31_16 Depth=1
	callq	__errno_location
	cmpl	$4, (%rax)
	sete	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB31_18:                              # %land.end
                                        #   in Loop: Header=BB31_16 Depth=1
	movb	-25(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB31_19
	jmp	.LBB31_20
.LBB31_19:                              # %while.body
                                        #   in Loop: Header=BB31_16 Depth=1
	jmp	.LBB31_16
.LBB31_20:                              # %while.end
	testb	$1, interrupt_input
	je	.LBB31_22
# BB#21:                                # %if.then.33
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	fileno
	movl	%eax, %edi
	callq	reset_sigio
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rdi
	callq	fileno
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rdi
	movl	%eax, -32(%rbp)         # 4-byte Spill
	callq	fileno
	movl	$8, %esi
	movslq	%eax, %rcx
	movl	old_fcntl_owner(,%rcx,4), %edx
	movl	-32(%rbp), %edi         # 4-byte Reload
	movb	$0, %al
	callq	rpl_fcntl
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB31_22:                              # %if.end.40
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	fileno
	movq	-8(%rbp), %rdi
	movq	24(%rdi), %rdi
	movl	%eax, -40(%rbp)         # 4-byte Spill
	callq	fileno
	movl	$3, %esi
	xorl	%edx, %edx
	movl	%eax, %edi
	movb	$0, %al
	callq	rpl_fcntl
	movl	$4, %esi
	andl	$-2049, %eax            # imm = 0xFFFFFFFFFFFFF7FF
	movl	-40(%rbp), %edi         # 4-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	rpl_fcntl
	movq	-8(%rbp), %rcx
	cmpq	$0, 48(%rcx)
	movl	%eax, -44(%rbp)         # 4-byte Spill
	je	.LBB31_29
# BB#23:                                # %if.then.48
	jmp	.LBB31_24
.LBB31_24:                              # %while.cond.49
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	fileno
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movq	48(%rdi), %rsi
	movl	%eax, %edi
	callq	emacs_set_tty
	xorl	%edx, %edx
	movb	%dl, %cl
	cmpl	$0, %eax
	movb	%cl, -45(%rbp)          # 1-byte Spill
	jge	.LBB31_26
# BB#25:                                # %land.rhs.55
                                        #   in Loop: Header=BB31_24 Depth=1
	callq	__errno_location
	cmpl	$4, (%rax)
	sete	%cl
	movb	%cl, -45(%rbp)          # 1-byte Spill
.LBB31_26:                              # %land.end.58
                                        #   in Loop: Header=BB31_24 Depth=1
	movb	-45(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB31_27
	jmp	.LBB31_28
.LBB31_27:                              # %while.body.59
                                        #   in Loop: Header=BB31_24 Depth=1
	jmp	.LBB31_24
.LBB31_28:                              # %while.end.60
	jmp	.LBB31_29
.LBB31_29:                              # %if.end.61
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	fileno
	movl	%eax, %edi
	callq	widen_foreground_group
.LBB31_30:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	reset_sys_modes, .Lfunc_end31-reset_sys_modes
	.cfi_endproc

	.align	16, 0x90
	.type	reset_sigio,@function
reset_sigio:                            # @reset_sigio
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
	movl	$4, %esi
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	movslq	-4(%rbp), %rax
	movl	old_fcntl_flags(,%rax,4), %edx
	movb	$0, %al
	callq	rpl_fcntl
	movl	%eax, -8(%rbp)          # 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	reset_sigio, .Lfunc_end32-reset_sigio
	.cfi_endproc

	.align	16, 0x90
	.type	widen_foreground_group,@function
widen_foreground_group:                 # @widen_foreground_group
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
	movl	%edi, -4(%rbp)
	cmpl	$0, inherited_pgroup
	je	.LBB33_3
# BB#1:                                 # %land.lhs.true
	xorl	%edi, %edi
	movl	inherited_pgroup, %esi
	callq	setpgid
	cmpl	$0, %eax
	jne	.LBB33_3
# BB#2:                                 # %if.then
	movl	-4(%rbp), %edi
	movl	inherited_pgroup, %esi
	callq	tcsetpgrp_without_stopping
.LBB33_3:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	widen_foreground_group, .Lfunc_end33-widen_foreground_group
	.cfi_endproc

	.globl	setup_pty
	.align	16, 0x90
	.type	setup_pty,@function
setup_pty:                              # @setup_pty
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
	movl	$21537, %eax            # imm = 0x5421
	movl	%eax, %esi
	leaq	-8(%rbp), %rdx
	movl	%edi, -4(%rbp)
	movl	$1, -8(%rbp)
	movl	-4(%rbp), %edi
	movb	$0, %al
	callq	ioctl
	movl	%eax, -12(%rbp)         # 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	setup_pty, .Lfunc_end34-setup_pty
	.cfi_endproc

	.globl	init_system_name
	.align	16, 0x90
	.type	init_system_name,@function
init_system_name:                       # @init_system_name
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
	subq	$320, %rsp              # imm = 0x140
	leaq	-272(%rbp), %rax
	movq	$0, -8(%rbp)
	movq	$256, -280(%rbp)        # imm = 0x100
	movq	%rax, -16(%rbp)
.LBB35_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	movq	-280(%rbp), %rax
	subq	$1, %rax
	movq	%rax, %rsi
	callq	gethostname
	movq	-280(%rbp), %rsi
	subq	$1, %rsi
	movq	-16(%rbp), %rdi
	movb	$0, (%rdi,%rsi)
	movq	-16(%rbp), %rdi
	movl	%eax, -292(%rbp)        # 4-byte Spill
	callq	strlen
	movq	-280(%rbp), %rsi
	subq	$1, %rsi
	cmpq	%rsi, %rax
	jae	.LBB35_3
# BB#2:                                 # %if.then
	jmp	.LBB35_4
.LBB35_3:                               # %if.end
                                        #   in Loop: Header=BB35_1 Depth=1
	leaq	-280(%rbp), %rsi
	movl	$1, %eax
	movl	%eax, %ecx
	movabsq	$9223372036854775807, %rdx # imm = 0x7FFFFFFFFFFFFFFF
	movq	-8(%rbp), %rdi
	movq	%rdx, -304(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-304(%rbp), %r8         # 8-byte Reload
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movq	-312(%rbp), %r8         # 8-byte Reload
	callq	xpalloc
	movq	%rax, -8(%rbp)
	movq	%rax, -16(%rbp)
	jmp	.LBB35_1
.LBB35_4:                               # %for.end
	movq	-16(%rbp), %rax
	movq	%rax, -288(%rbp)
.LBB35_5:                               # %for.cond.5
                                        # =>This Inner Loop Header: Depth=1
	movq	-288(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB35_11
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB35_5 Depth=1
	movq	-288(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$32, %ecx
	je	.LBB35_8
# BB#7:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB35_5 Depth=1
	movq	-288(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$9, %ecx
	jne	.LBB35_9
.LBB35_8:                               # %if.then.11
                                        #   in Loop: Header=BB35_5 Depth=1
	movq	-288(%rbp), %rax
	movb	$45, (%rax)
.LBB35_9:                               # %if.end.12
                                        #   in Loop: Header=BB35_5 Depth=1
	jmp	.LBB35_10
.LBB35_10:                              # %for.inc
                                        #   in Loop: Header=BB35_5 Depth=1
	movq	-288(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -288(%rbp)
	jmp	.LBB35_5
.LBB35_11:                              # %for.end.13
	movq	globals+2280, %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB35_12
	jmp	.LBB35_14
.LBB35_12:                              # %land.lhs.true
	movq	globals+2280, %rdi
	callq	SBYTES
	movq	-288(%rbp), %rdi
	movq	-16(%rbp), %rcx
	subq	%rcx, %rdi
	cmpq	%rdi, %rax
	jne	.LBB35_14
# BB#13:                                # %land.lhs.true.19
	movq	globals+2280, %rdi
	callq	SSDATA
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB35_15
.LBB35_14:                              # %if.then.24
	movq	-16(%rbp), %rdi
	callq	build_string
	movq	%rax, globals+2280
.LBB35_15:                              # %if.end.26
	movq	-8(%rbp), %rdi
	callq	xfree
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end35:
	.size	init_system_name, .Lfunc_end35-init_system_name
	.cfi_endproc

	.globl	emacs_sigaction_init
	.align	16, 0x90
	.type	emacs_sigaction_init,@function
emacs_sigaction_init:                   # @emacs_sigaction_init
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	addq	$8, %rsi
	movq	%rsi, %rdi
	callq	sigemptyset
	movl	$14, %esi
	movq	-8(%rbp), %rdi
	addq	$8, %rdi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	sigaddset
	movl	$17, %esi
	movq	-8(%rbp), %rdi
	addq	$8, %rdi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	callq	sigaddset
	movl	$27, %esi
	movq	-8(%rbp), %rdi
	addq	$8, %rdi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	sigaddset
	movl	$28, %esi
	movq	-8(%rbp), %rdi
	addq	$8, %rdi
	movl	%eax, -32(%rbp)         # 4-byte Spill
	callq	sigaddset
	testb	$1, noninteractive
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jne	.LBB36_2
# BB#1:                                 # %if.then
	movl	$2, %esi
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	callq	sigaddset
	movl	$3, %esi
	movq	-8(%rbp), %rdi
	addq	$8, %rdi
	movl	%eax, -40(%rbp)         # 4-byte Spill
	callq	sigaddset
	movl	$29, %esi
	movq	-8(%rbp), %rdi
	addq	$8, %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	sigaddset
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB36_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	callq	emacs_sigaction_flags
	movq	-8(%rbp), %rcx
	movl	%eax, 136(%rcx)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	emacs_sigaction_init, .Lfunc_end36-emacs_sigaction_init
	.cfi_endproc

	.align	16, 0x90
	.type	emacs_sigaction_flags,@function
emacs_sigaction_flags:                  # @emacs_sigaction_flags
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
	testb	$1, noninteractive
	je	.LBB37_2
# BB#1:                                 # %if.then
	movl	$268435456, -4(%rbp)    # imm = 0x10000000
	jmp	.LBB37_3
.LBB37_2:                               # %if.end
	movl	$0, -4(%rbp)
.LBB37_3:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end37:
	.size	emacs_sigaction_flags, .Lfunc_end37-emacs_sigaction_flags
	.cfi_endproc

	.globl	deliver_process_signal
	.align	16, 0x90
	.type	deliver_process_signal,@function
deliver_process_signal:                 # @deliver_process_signal
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
	subq	$176, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	callq	__errno_location
	movl	(%rax), %edi
	movl	%edi, -20(%rbp)
	movb	$1, -21(%rbp)
	callq	pthread_self
	movq	main_thread, %rsi
	movq	%rax, %rdi
	callq	pthread_equal
	cmpl	$0, %eax
	jne	.LBB38_2
# BB#1:                                 # %if.then
	leaq	-152(%rbp), %rdi
	callq	sigemptyset
	leaq	-152(%rbp), %rdi
	movl	-4(%rbp), %esi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	sigaddset
	xorl	%edi, %edi
	leaq	-152(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	%eax, -160(%rbp)        # 4-byte Spill
	callq	pthread_sigmask
	movq	main_thread, %rdi
	movl	-4(%rbp), %esi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	pthread_kill
	movb	$0, -21(%rbp)
	movl	%eax, -168(%rbp)        # 4-byte Spill
.LBB38_2:                               # %if.end
	testb	$1, -21(%rbp)
	je	.LBB38_4
# BB#3:                                 # %if.then.8
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edi
	callq	*%rax
.LBB38_4:                               # %if.end.9
	movl	-20(%rbp), %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	-172(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, (%rax)
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	deliver_process_signal, .Lfunc_end38-deliver_process_signal
	.cfi_endproc

	.globl	init_signals
	.align	16, 0x90
	.type	init_signals,@function
init_signals:                           # @init_signals
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
	subq	$400, %rsp              # imm = 0x190
	movb	%dil, %al
	movabsq	$empty_mask, %rdi
	andb	$1, %al
	movb	%al, -1(%rbp)
	callq	sigemptyset
	movl	%eax, -316(%rbp)        # 4-byte Spill
	callq	pthread_self
	movq	%rax, main_thread
	testb	$1, -1(%rbp)
	je	.LBB39_2
# BB#1:                                 # %if.then
	jmp	.LBB39_7
.LBB39_2:                               # %if.end
	movabsq	$process_fatal_action, %rax
	addq	$8, %rax
	movq	%rax, %rdi
	callq	sigfillset
	movabsq	$deliver_fatal_signal, %rdi
	movq	%rdi, process_fatal_action
	movl	%eax, -320(%rbp)        # 4-byte Spill
	callq	emacs_sigaction_flags
	leaq	-160(%rbp), %rdi
	movl	%eax, process_fatal_action+136
	addq	$8, %rdi
	callq	sigfillset
	movl	$1, %edi
	movabsq	$deliver_fatal_thread_signal, %rcx
	movq	%rcx, -160(%rbp)
	movl	process_fatal_action+136, %edx
	movl	%edx, -24(%rbp)
	movl	%eax, -324(%rbp)        # 4-byte Spill
	callq	maybe_fatal_sig
	movl	$2, %edi
	callq	maybe_fatal_sig
	movl	$15, %edi
	callq	maybe_fatal_sig
	testb	$1, noninteractive
	jne	.LBB39_4
# BB#3:                                 # %if.then.6
	movl	$13, %edi
	movl	$1, %eax
	movl	%eax, %esi
	callq	signal
	movq	%rax, -336(%rbp)        # 8-byte Spill
.LBB39_4:                               # %if.end.8
	movl	$3, %edi
	movabsq	$process_fatal_action, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	sigaction
	movl	$4, %edi
	leaq	-160(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	%eax, -340(%rbp)        # 4-byte Spill
	callq	sigaction
	movl	$5, %edi
	leaq	-160(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	%eax, -344(%rbp)        # 4-byte Spill
	callq	sigaction
	movl	$8, %edi
	leaq	-160(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	%eax, -348(%rbp)        # 4-byte Spill
	callq	sigaction
	movl	$10, %edi
	movabsq	$.L.str.3, %rsi
	movl	%eax, -352(%rbp)        # 4-byte Spill
	callq	add_user_signal
	movl	$12, %edi
	movabsq	$.L.str.4, %rsi
	callq	add_user_signal
	movl	$6, %edi
	leaq	-160(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	sigaction
	movl	$6, %edi
	leaq	-160(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	%eax, -356(%rbp)        # 4-byte Spill
	callq	sigaction
	movl	$7, %edi
	leaq	-160(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	%eax, -360(%rbp)        # 4-byte Spill
	callq	sigaction
	movl	%eax, -364(%rbp)        # 4-byte Spill
	callq	init_sigsegv
	testb	$1, %al
	jne	.LBB39_6
# BB#5:                                 # %if.then.17
	movl	$11, %edi
	leaq	-160(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	sigaction
	movl	%eax, -368(%rbp)        # 4-byte Spill
.LBB39_6:                               # %if.end.19
	movl	$31, %edi
	leaq	-160(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	sigaction
	movl	$15, %edi
	movabsq	$process_fatal_action, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	%eax, -372(%rbp)        # 4-byte Spill
	callq	sigaction
	movl	$27, %edi
	movl	$1, %ecx
	movl	%ecx, %esi
	movl	%eax, -376(%rbp)        # 4-byte Spill
	callq	signal
	movl	$26, %edi
	movabsq	$process_fatal_action, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	sigaction
	movl	$24, %edi
	movabsq	$process_fatal_action, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	%eax, -388(%rbp)        # 4-byte Spill
	callq	sigaction
	movl	$25, %edi
	movabsq	$process_fatal_action, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	%eax, -392(%rbp)        # 4-byte Spill
	callq	sigaction
	movl	%eax, -396(%rbp)        # 4-byte Spill
.LBB39_7:                               # %return
	addq	$400, %rsp              # imm = 0x190
	popq	%rbp
	retq
.Lfunc_end39:
	.size	init_signals, .Lfunc_end39-init_signals
	.cfi_endproc

	.align	16, 0x90
	.type	deliver_fatal_signal,@function
deliver_fatal_signal:                   # @deliver_fatal_signal
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
	movabsq	$handle_fatal_signal, %rsi
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	deliver_process_signal
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	deliver_fatal_signal, .Lfunc_end40-deliver_fatal_signal
	.cfi_endproc

	.align	16, 0x90
	.type	deliver_fatal_thread_signal,@function
deliver_fatal_thread_signal:            # @deliver_fatal_thread_signal
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
	subq	$16, %rsp
	movabsq	$handle_fatal_signal, %rsi
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	deliver_thread_signal
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	deliver_fatal_thread_signal, .Lfunc_end41-deliver_fatal_thread_signal
	.cfi_endproc

	.align	16, 0x90
	.type	maybe_fatal_sig,@function
maybe_fatal_sig:                        # @maybe_fatal_sig
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
	subq	$176, %rsp
	movl	%edi, -4(%rbp)
	movb	noninteractive, %al
	xorb	$-1, %al
	andb	$1, %al
	movb	%al, -5(%rbp)
	testb	$1, -5(%rbp)
	jne	.LBB42_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-160(%rbp), %rdx
	movl	-4(%rbp), %edi
	callq	sigaction
	movl	$1, %edi
	movl	%edi, %edx
	cmpq	%rdx, -160(%rbp)
	setne	%cl
	andb	$1, %cl
	movb	%cl, -5(%rbp)
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB42_2:                               # %if.end
	testb	$1, -5(%rbp)
	je	.LBB42_4
# BB#3:                                 # %if.then.4
	movabsq	$process_fatal_action, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %edi
	callq	sigaction
	movl	%eax, -168(%rbp)        # 4-byte Spill
.LBB42_4:                               # %if.end.6
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	maybe_fatal_sig, .Lfunc_end42-maybe_fatal_sig
	.cfi_endproc

	.align	16, 0x90
	.type	init_sigsegv,@function
init_sigsegv:                           # @init_sigsegv
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
	subq	$192, %rsp
	leaq	-184(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	movabsq	$sigsegv_stack, %rcx
	movq	%rcx, -184(%rbp)
	movq	$8192, -168(%rbp)       # imm = 0x2000
	movl	$0, -176(%rbp)
	callq	sigaltstack
	cmpl	$0, %eax
	jge	.LBB43_2
# BB#1:                                 # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB43_3
.LBB43_2:                               # %if.end
	leaq	-160(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	callq	sigfillset
	movabsq	$handle_sigsegv, %rdi
	movq	%rdi, -160(%rbp)
	movl	%eax, -188(%rbp)        # 4-byte Spill
	callq	emacs_sigaction_flags
	movl	$11, %edi
	leaq	-160(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	orl	$134217732, %eax        # imm = 0x8000004
	movl	%eax, -24(%rbp)
	callq	sigaction
	movl	$1, %ecx
	xorl	%edi, %edi
	cmpl	$0, %eax
	cmovll	%edi, %ecx
	cmpl	$0, %ecx
	setne	%r8b
	andb	$1, %r8b
	movb	%r8b, -1(%rbp)
.LBB43_3:                               # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	init_sigsegv, .Lfunc_end43-init_sigsegv
	.cfi_endproc

	.globl	seed_random
	.align	16, 0x90
	.type	seed_random,@function
seed_random:                            # @seed_random
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
	leaq	-20(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	$0, -48(%rbp)
.LBB44_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jge	.LBB44_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movq	-48(%rbp), %rax
	andq	$3, %rax
	movq	-32(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	xorl	%edx, %esi
	movb	%sil, %dil
	movb	%dil, (%rcx,%rax)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB44_1 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB44_1
.LBB44_4:                               # %for.end
	movl	-20(%rbp), %edi
	callq	set_random_seed
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	seed_random, .Lfunc_end44-seed_random
	.cfi_endproc

	.align	16, 0x90
	.type	set_random_seed,@function
set_random_seed:                        # @set_random_seed
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	srandom
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	set_random_seed, .Lfunc_end45-set_random_seed
	.cfi_endproc

	.globl	init_random
	.align	16, 0x90
	.type	init_random,@function
init_random:                            # @init_random
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
	subq	$48, %rsp
	callq	emacs_gnutls_global_init
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB46_2
# BB#1:                                 # %land.lhs.true
	xorl	%edi, %edi
	movl	$4, %eax
	movl	%eax, %edx
	leaq	-4(%rbp), %rcx
	movq	%rcx, %rsi
	callq	gnutls_rnd
	cmpl	$0, %eax
	je	.LBB46_7
.LBB46_2:                               # %if.then
	movabsq	$.L.str.5, %rdi
	xorl	%eax, %eax
	movb	$0, -5(%rbp)
	movl	%eax, %esi
	movl	%eax, %edx
	callq	emacs_open
	xorl	%edx, %edx
	movl	%eax, -12(%rbp)
	cmpl	-12(%rbp), %edx
	jg	.LBB46_4
# BB#3:                                 # %if.then.6
	movl	$4, %eax
	movl	%eax, %edx
	leaq	-4(%rbp), %rcx
	movl	-12(%rbp), %edi
	movq	%rcx, %rsi
	callq	emacs_read
	cmpq	$4, %rax
	sete	%r8b
	andb	$1, %r8b
	movb	%r8b, -5(%rbp)
	movl	-12(%rbp), %edi
	callq	emacs_close
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB46_4:                               # %if.end
	testb	$1, -5(%rbp)
	jne	.LBB46_6
# BB#5:                                 # %if.then.10
	callq	current_timespec
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	callq	getpid
	movslq	%eax, %rdx
	xorq	-32(%rbp), %rdx
	xorq	-24(%rbp), %rdx
	movl	%edx, %eax
	movl	%eax, -4(%rbp)
.LBB46_6:                               # %if.end.15
	jmp	.LBB46_7
.LBB46_7:                               # %if.end.16
	movl	-4(%rbp), %edi
	callq	set_random_seed
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	init_random, .Lfunc_end46-init_random
	.cfi_endproc

	.globl	emacs_open
	.align	16, 0x90
	.type	emacs_open,@function
emacs_open:                             # @emacs_open
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-12(%rbp), %edx
	andl	$0, %edx
	cmpl	$0, %edx
	jne	.LBB47_2
# BB#1:                                 # %if.then
	movl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
.LBB47_2:                               # %if.end
	movl	-12(%rbp), %eax
	orl	$524288, %eax           # imm = 0x80000
	movl	%eax, -12(%rbp)
.LBB47_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movb	$0, %al
	callq	open
	xorl	%edx, %edx
	movb	%dl, %cl
	movl	%eax, -20(%rbp)
	cmpl	$0, %eax
	movb	%cl, -21(%rbp)          # 1-byte Spill
	jge	.LBB47_5
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB47_3 Depth=1
	callq	__errno_location
	cmpl	$4, (%rax)
	sete	%cl
	movb	%cl, -21(%rbp)          # 1-byte Spill
.LBB47_5:                               # %land.end
                                        #   in Loop: Header=BB47_3 Depth=1
	movb	-21(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB47_6
	jmp	.LBB47_15
.LBB47_6:                               # %while.body
                                        #   in Loop: Header=BB47_3 Depth=1
	jmp	.LBB47_7
.LBB47_7:                               # %do.body
                                        #   in Loop: Header=BB47_3 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB47_10
# BB#8:                                 # %land.lhs.true
                                        #   in Loop: Header=BB47_3 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB47_10
# BB#9:                                 # %if.then.7
                                        #   in Loop: Header=BB47_3 Depth=1
	callq	process_quit_flag
	jmp	.LBB47_13
.LBB47_10:                              # %if.else
                                        #   in Loop: Header=BB47_3 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB47_12
# BB#11:                                # %if.then.9
                                        #   in Loop: Header=BB47_3 Depth=1
	callq	process_pending_signals
.LBB47_12:                              # %if.end.10
                                        #   in Loop: Header=BB47_3 Depth=1
	jmp	.LBB47_13
.LBB47_13:                              # %if.end.11
                                        #   in Loop: Header=BB47_3 Depth=1
	jmp	.LBB47_14
.LBB47_14:                              # %do.end
                                        #   in Loop: Header=BB47_3 Depth=1
	jmp	.LBB47_3
.LBB47_15:                              # %while.end
	movl	-20(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	emacs_open, .Lfunc_end47-emacs_open
	.cfi_endproc

	.globl	emacs_read
	.align	16, 0x90
	.type	emacs_read,@function
emacs_read:                             # @emacs_read
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
	subq	$64, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
.LBB48_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	read
	xorl	%edi, %edi
	movb	%dil, %cl
	movq	%rax, -32(%rbp)
	cmpq	$-1, %rax
	movb	%cl, -33(%rbp)          # 1-byte Spill
	jne	.LBB48_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB48_1 Depth=1
	callq	__errno_location
	cmpl	$4, (%rax)
	sete	%cl
	movb	%cl, -33(%rbp)          # 1-byte Spill
.LBB48_3:                               # %land.end
                                        #   in Loop: Header=BB48_1 Depth=1
	movb	-33(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB48_4
	jmp	.LBB48_13
.LBB48_4:                               # %while.body
                                        #   in Loop: Header=BB48_1 Depth=1
	jmp	.LBB48_5
.LBB48_5:                               # %do.body
                                        #   in Loop: Header=BB48_1 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB48_8
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB48_1 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB48_8
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB48_1 Depth=1
	callq	process_quit_flag
	jmp	.LBB48_11
.LBB48_8:                               # %if.else
                                        #   in Loop: Header=BB48_1 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB48_10
# BB#9:                                 # %if.then.7
                                        #   in Loop: Header=BB48_1 Depth=1
	callq	process_pending_signals
.LBB48_10:                              # %if.end
                                        #   in Loop: Header=BB48_1 Depth=1
	jmp	.LBB48_11
.LBB48_11:                              # %if.end.8
                                        #   in Loop: Header=BB48_1 Depth=1
	jmp	.LBB48_12
.LBB48_12:                              # %do.end
                                        #   in Loop: Header=BB48_1 Depth=1
	jmp	.LBB48_1
.LBB48_13:                              # %while.end
	movq	-32(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	emacs_read, .Lfunc_end48-emacs_read
	.cfi_endproc

	.globl	emacs_close
	.align	16, 0x90
	.type	emacs_close,@function
emacs_close:                            # @emacs_close
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
	subq	$16, %rsp
	movl	%edi, -8(%rbp)
.LBB49_1:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %esi
	movl	-8(%rbp), %edi
	callq	posix_close
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.LBB49_3
# BB#2:                                 # %if.then
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB49_9
.LBB49_3:                               # %if.end
                                        #   in Loop: Header=BB49_1 Depth=1
	callq	__errno_location
	cmpl	$4, (%rax)
	je	.LBB49_8
# BB#4:                                 # %if.then.3
	callq	__errno_location
	cmpl	$115, (%rax)
	jne	.LBB49_6
# BB#5:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, -16(%rbp)         # 4-byte Spill
	jmp	.LBB49_7
.LBB49_6:                               # %cond.false
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)         # 4-byte Spill
.LBB49_7:                               # %cond.end
	movl	-16(%rbp), %eax         # 4-byte Reload
	movl	%eax, -4(%rbp)
	jmp	.LBB49_9
.LBB49_8:                               # %if.end.6
                                        #   in Loop: Header=BB49_1 Depth=1
	jmp	.LBB49_1
.LBB49_9:                               # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	emacs_close, .Lfunc_end49-emacs_close
	.cfi_endproc

	.globl	get_random
	.align	16, 0x90
	.type	get_random,@function
get_random:                             # @get_random
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
	subq	$16, %rsp
	movq	$0, -8(%rbp)
	movl	$0, -12(%rbp)
.LBB50_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$2, -12(%rbp)
	jge	.LBB50_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB50_1 Depth=1
	callq	random
	movq	-8(%rbp), %rcx
	shlq	$31, %rcx
	xorq	%rcx, %rax
	movq	-8(%rbp), %rcx
	shrq	$33, %rcx
	xorq	%rcx, %rax
	movq	%rax, -8(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB50_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB50_1
.LBB50_4:                               # %for.end
	movq	-8(%rbp), %rax
	shrq	$2, %rax
	xorq	-8(%rbp), %rax
	movq	%rax, -8(%rbp)
	movabsq	$4611686018427387903, %rax # imm = 0x3FFFFFFFFFFFFFFF
	andq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	get_random, .Lfunc_end50-get_random
	.cfi_endproc

	.globl	emacs_backtrace
	.align	16, 0x90
	.type	emacs_backtrace,@function
emacs_backtrace:                        # @emacs_backtrace
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
	subq	$4064, %rsp             # imm = 0xFE0
	movl	%edi, -4(%rbp)
	cmpl	$500, -4(%rbp)          # imm = 0x1F4
	jge	.LBB51_2
# BB#1:                                 # %cond.true
	movl	-4(%rbp), %eax
	movl	%eax, -4040(%rbp)       # 4-byte Spill
	jmp	.LBB51_3
.LBB51_2:                               # %cond.false
	movl	$500, %eax              # imm = 0x1F4
	movl	%eax, -4040(%rbp)       # 4-byte Spill
	jmp	.LBB51_3
.LBB51_3:                               # %cond.end
	movl	-4040(%rbp), %eax       # 4-byte Reload
	movl	%eax, -4020(%rbp)
	cmpl	$0, thread_backtrace_npointers
	je	.LBB51_5
# BB#4:                                 # %if.then
	movabsq	$thread_backtrace_buffer, %rax
	movq	%rax, -4032(%rbp)
	movl	thread_backtrace_npointers, %ecx
	movl	%ecx, -4036(%rbp)
	jmp	.LBB51_8
.LBB51_5:                               # %if.else
	leaq	-4016(%rbp), %rax
	movq	%rax, -4032(%rbp)
	cmpl	$0, -4020(%rbp)
	jge	.LBB51_7
# BB#6:                                 # %if.then.2
	movl	$1, %esi
	movq	-4032(%rbp), %rax
	movq	%rax, %rdi
	callq	backtrace
	movl	%eax, -4044(%rbp)       # 4-byte Spill
	jmp	.LBB51_12
.LBB51_7:                               # %if.end
	movq	-4032(%rbp), %rax
	movl	-4020(%rbp), %ecx
	addl	$1, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	backtrace
	movl	%eax, -4036(%rbp)
.LBB51_8:                               # %if.end.4
	cmpl	$0, -4036(%rbp)
	je	.LBB51_12
# BB#9:                                 # %if.then.6
	movl	$2, %edi
	movabsq	$.L.str.6, %rsi
	movl	$12, %eax
	movl	%eax, %edx
	callq	emacs_write
	movl	$2, %edx
	movq	-4032(%rbp), %rsi
	movl	-4036(%rbp), %edi
	movl	%edi, -4048(%rbp)       # 4-byte Spill
	movq	%rsi, %rdi
	movl	-4048(%rbp), %esi       # 4-byte Reload
	movq	%rax, -4056(%rbp)       # 8-byte Spill
	callq	backtrace_symbols_fd
	movl	-4020(%rbp), %edx
	cmpl	-4036(%rbp), %edx
	jge	.LBB51_11
# BB#10:                                # %if.then.9
	movl	$2, %edi
	movabsq	$.L.str.7, %rsi
	movl	$4, %eax
	movl	%eax, %edx
	callq	emacs_write
	movq	%rax, -4064(%rbp)       # 8-byte Spill
.LBB51_11:                              # %if.end.11
	jmp	.LBB51_12
.LBB51_12:                              # %if.end.12
	addq	$4064, %rsp             # imm = 0xFE0
	popq	%rbp
	retq
.Lfunc_end51:
	.size	emacs_backtrace, .Lfunc_end51-emacs_backtrace
	.cfi_endproc

	.globl	emacs_write
	.align	16, 0x90
	.type	emacs_write,@function
emacs_write:                            # @emacs_write
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
	xorl	%ecx, %ecx
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	emacs_full_write
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	emacs_write, .Lfunc_end52-emacs_write
	.cfi_endproc

	.globl	emacs_fopen
	.align	16, 0x90
	.type	emacs_fopen,@function
emacs_fopen:                            # @emacs_fopen
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -32(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, -40(%rbp)
	movsbl	(%rsi), %eax
	movl	%eax, %ecx
	subl	$97, %ecx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	je	.LBB53_3
	jmp	.LBB53_17
.LBB53_17:                              # %entry
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$114, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB53_1
	jmp	.LBB53_18
.LBB53_18:                              # %entry
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$119, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB53_2
	jmp	.LBB53_4
.LBB53_1:                               # %sw.bb
	movl	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	jmp	.LBB53_5
.LBB53_2:                               # %sw.bb.1
	movl	$1, -24(%rbp)
	movl	$576, -28(%rbp)         # imm = 0x240
	jmp	.LBB53_5
.LBB53_3:                               # %sw.bb.2
	movl	$1, -24(%rbp)
	movl	$1088, -28(%rbp)        # imm = 0x440
	jmp	.LBB53_5
.LBB53_4:                               # %sw.default
	callq	emacs_abort
.LBB53_5:                               # %sw.epilog
	jmp	.LBB53_6
.LBB53_6:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB53_13
# BB#7:                                 # %while.body
                                        #   in Loop: Header=BB53_6 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	incq	%rcx
	movq	%rcx, -40(%rbp)
	movsbl	(%rax), %edx
	movl	%edx, %esi
	subl	$43, %esi
	movl	%edx, -60(%rbp)         # 4-byte Spill
	movl	%esi, -64(%rbp)         # 4-byte Spill
	je	.LBB53_8
	jmp	.LBB53_19
.LBB53_19:                              # %while.body
                                        #   in Loop: Header=BB53_6 Depth=1
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$98, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB53_9
	jmp	.LBB53_20
.LBB53_20:                              # %while.body
                                        #   in Loop: Header=BB53_6 Depth=1
	movl	-60(%rbp), %eax         # 4-byte Reload
	subl	$116, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB53_10
	jmp	.LBB53_11
.LBB53_8:                               # %sw.bb.5
                                        #   in Loop: Header=BB53_6 Depth=1
	movl	$2, -24(%rbp)
	jmp	.LBB53_12
.LBB53_9:                               # %sw.bb.6
                                        #   in Loop: Header=BB53_6 Depth=1
	movl	$0, -32(%rbp)
	jmp	.LBB53_12
.LBB53_10:                              # %sw.bb.7
                                        #   in Loop: Header=BB53_6 Depth=1
	movl	$0, -32(%rbp)
	jmp	.LBB53_12
.LBB53_11:                              # %sw.default.8
                                        #   in Loop: Header=BB53_6 Depth=1
	jmp	.LBB53_12
.LBB53_12:                              # %sw.epilog.9
                                        #   in Loop: Header=BB53_6 Depth=1
	jmp	.LBB53_6
.LBB53_13:                              # %while.end
	movl	$438, %edx              # imm = 0x1B6
	movq	-8(%rbp), %rdi
	movl	-24(%rbp), %eax
	orl	-28(%rbp), %eax
	orl	-32(%rbp), %eax
	movl	%eax, %esi
	callq	emacs_open
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jge	.LBB53_15
# BB#14:                                # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB53_16
.LBB53_15:                              # %cond.false
	movl	-20(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	fdopen
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB53_16:                              # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	emacs_fopen, .Lfunc_end53-emacs_fopen
	.cfi_endproc

	.globl	emacs_pipe
	.align	16, 0x90
	.type	emacs_pipe,@function
emacs_pipe:                             # @emacs_pipe
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
	movl	$524288, %esi           # imm = 0x80000
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	rpl_pipe2
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end54:
	.size	emacs_pipe, .Lfunc_end54-emacs_pipe
	.cfi_endproc

	.align	16, 0x90
	.type	posix_close,@function
posix_close:                            # @posix_close
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
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %edi
	callq	close
	movb	$1, %cl
	cmpl	$0, %eax
	movb	%cl, -9(%rbp)           # 1-byte Spill
	je	.LBB55_2
# BB#1:                                 # %lor.rhs
	callq	__errno_location
	cmpl	$4, (%rax)
	sete	%cl
	movb	%cl, -9(%rbp)           # 1-byte Spill
.LBB55_2:                               # %lor.end
	movb	-9(%rbp), %al           # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	xorl	%edx, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	posix_close, .Lfunc_end55-posix_close
	.cfi_endproc

	.align	16, 0x90
	.type	emacs_full_write,@function
emacs_full_write:                       # @emacs_full_write
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
	subq	$80, %rsp
	movb	%cl, %al
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	andb	$1, %al
	movb	%al, -25(%rbp)
	movq	$0, -40(%rbp)
.LBB56_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	jle	.LBB56_13
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB56_1 Depth=1
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	cmpq	$2147221504, -24(%rbp)  # imm = 0x7FFC0000
	movl	%edi, -52(%rbp)         # 4-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	jge	.LBB56_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB56_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB56_5
.LBB56_4:                               # %cond.false
                                        #   in Loop: Header=BB56_1 Depth=1
	movl	$2147221504, %eax       # imm = 0x7FFC0000
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB56_5
.LBB56_5:                               # %cond.end
                                        #   in Loop: Header=BB56_1 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	-52(%rbp), %edi         # 4-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	write
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jge	.LBB56_12
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB56_1 Depth=1
	callq	__errno_location
	cmpl	$4, (%rax)
	jne	.LBB56_11
# BB#7:                                 # %if.then.5
                                        #   in Loop: Header=BB56_1 Depth=1
	testb	$1, -25(%rbp)
	je	.LBB56_10
# BB#8:                                 # %land.lhs.true
                                        #   in Loop: Header=BB56_1 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB56_10
# BB#9:                                 # %if.then.7
                                        #   in Loop: Header=BB56_1 Depth=1
	callq	process_pending_signals
.LBB56_10:                              # %if.end
                                        #   in Loop: Header=BB56_1 Depth=1
	jmp	.LBB56_1
.LBB56_11:                              # %if.else
	jmp	.LBB56_13
.LBB56_12:                              # %if.end.8
                                        #   in Loop: Header=BB56_1 Depth=1
	movq	-48(%rbp), %rax
	addq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -24(%rbp)
	movq	-48(%rbp), %rax
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB56_1
.LBB56_13:                              # %while.end
	movq	-40(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	emacs_full_write, .Lfunc_end56-emacs_full_write
	.cfi_endproc

	.globl	emacs_write_sig
	.align	16, 0x90
	.type	emacs_write_sig,@function
emacs_write_sig:                        # @emacs_write_sig
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
	movl	$1, %ecx
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	emacs_full_write
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	emacs_write_sig, .Lfunc_end57-emacs_write_sig
	.cfi_endproc

	.globl	make_timeval
	.align	16, 0x90
	.type	make_timeval,@function
make_timeval:                           # @make_timeval
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
	movl	$1000, %eax             # imm = 0x3E8
	movl	%eax, %ecx
	movq	%rdi, -32(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-32(%rbp), %rsi
	movq	%rsi, -48(%rbp)
	movq	-24(%rbp), %rax
	cqto
	idivq	%rcx
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	cqto
	idivq	%rcx
	cmpq	$0, %rdx
	je	.LBB58_7
# BB#1:                                 # %if.then
	cmpq	$999999, -40(%rbp)      # imm = 0xF423F
	jge	.LBB58_3
# BB#2:                                 # %if.then.5
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB58_6
.LBB58_3:                               # %if.else
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	cmpq	%rax, -48(%rbp)
	jge	.LBB58_5
# BB#4:                                 # %if.then.9
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movq	$0, -40(%rbp)
.LBB58_5:                               # %if.end
	jmp	.LBB58_6
.LBB58_6:                               # %if.end.13
	jmp	.LBB58_7
.LBB58_7:                               # %if.end.14
	movups	-48(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	popq	%rbp
	retq
.Lfunc_end58:
	.size	make_timeval, .Lfunc_end58-make_timeval
	.cfi_endproc

	.globl	set_file_times
	.align	16, 0x90
	.type	set_file_times,@function
set_file_times:                         # @set_file_times
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
	leaq	-80(%rbp), %rax
	movq	%rdx, -16(%rbp)
	movq	%rcx, -8(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -24(%rbp)
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -80(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movl	-36(%rbp), %edi
	movq	-48(%rbp), %rsi
	movq	%rax, %rdx
	callq	fdutimens
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end59:
	.size	set_file_times, .Lfunc_end59-set_file_times
	.cfi_endproc

	.globl	safe_strsignal
	.align	16, 0x90
	.type	safe_strsignal,@function
safe_strsignal:                         # @safe_strsignal
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
	xorl	%eax, %eax
	movl	%edi, -4(%rbp)
	movq	$0, -16(%rbp)
	cmpl	-4(%rbp), %eax
	jg	.LBB60_3
# BB#1:                                 # %land.lhs.true
	cmpl	$65, -4(%rbp)
	jge	.LBB60_3
# BB#2:                                 # %if.then
	movslq	-4(%rbp), %rax
	movq	sys_siglist(,%rax,8), %rax
	movq	%rax, -16(%rbp)
.LBB60_3:                               # %if.end
	cmpq	$0, -16(%rbp)
	jne	.LBB60_5
# BB#4:                                 # %if.then.2
	movabsq	$.L.str.12, %rax
	movq	%rax, -16(%rbp)
.LBB60_5:                               # %if.end.3
	movq	-16(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end60:
	.size	safe_strsignal, .Lfunc_end60-safe_strsignal
	.cfi_endproc

	.globl	serial_open
	.align	16, 0x90
	.type	serial_open,@function
serial_open:                            # @serial_open
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	SSDATA
	movl	$2306, %esi             # imm = 0x902
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	emacs_open
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jge	.LBB61_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.13, %rdi
	movq	-8(%rbp), %rsi
	callq	report_file_error
.LBB61_2:                               # %if.end
	movl	$21516, %eax            # imm = 0x540C
	movl	%eax, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movl	-12(%rbp), %edi
	movb	$0, %al
	callq	ioctl
	movl	-12(%rbp), %edi
	movl	%eax, -16(%rbp)         # 4-byte Spill
	movl	%edi, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end61:
	.size	serial_open, .Lfunc_end61-serial_open
	.cfi_endproc

	.globl	serial_configure
	.align	16, 0x90
	.type	serial_configure,@function
serial_configure:                       # @serial_configure
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
	subq	$464, %rsp              # imm = 0x1D0
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
	movl	.Lserial_configure.summary, %edi
	movl	%edi, -104(%rbp)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdi
	callq	Fcopy_sequence
	leaq	-96(%rbp), %rsi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	168(%rax), %edi
	callq	tcgetattr
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	.LBB62_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$.L.str.14, %rdi
	movq	%rax, %rsi
	callq	report_file_error
.LBB62_2:                               # %if.end
	leaq	-96(%rbp), %rdi
	callq	cfmakeraw
	movl	$121, %edi
	movl	-88(%rbp), %eax
	orl	$2048, %eax             # imm = 0x800
	movl	%eax, -88(%rbp)
	movl	-88(%rbp), %eax
	orl	$128, %eax
	movl	%eax, -88(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_member
	xorl	%edi, %edi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB62_4
# BB#3:                                 # %if.then.11
	movl	$121, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movq	%rax, -32(%rbp)
	jmp	.LBB62_5
.LBB62_4:                               # %if.else
	movl	$121, %edi
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movq	%rax, -32(%rbp)
.LBB62_5:                               # %if.end.17
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB62_7
# BB#6:                                 # %cond.true
	jmp	.LBB62_8
.LBB62_7:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB62_8:                               # %cond.end
	leaq	-96(%rbp), %rdi
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, %esi
	callq	cfsetspeed
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	.LBB62_10
# BB#9:                                 # %if.then.26
	movabsq	$.L.str.15, %rdi
	movq	-32(%rbp), %rsi
	callq	report_file_error
.LBB62_10:                              # %if.end.27
	movl	$121, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdx
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_put
	movl	$18, %edi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_member
	xorl	%edi, %edi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB62_12
# BB#11:                                # %if.then.35
	movl	$18, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movq	%rax, -32(%rbp)
	jmp	.LBB62_13
.LBB62_12:                              # %if.else.38
	movl	$18, %edi
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movq	%rax, -32(%rbp)
.LBB62_13:                              # %if.end.42
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB62_15
# BB#14:                                # %if.then.46
	movq	$34, -32(%rbp)
.LBB62_15:                              # %if.end.47
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB62_17
# BB#16:                                # %cond.true.53
	jmp	.LBB62_18
.LBB62_17:                              # %cond.false.54
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB62_18:                              # %cond.end.56
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	cmpq	$7, %rax
	je	.LBB62_21
# BB#19:                                # %land.lhs.true
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	cmpq	$8, %rax
	je	.LBB62_21
# BB#20:                                # %if.then.63
	movabsq	$.L.str.16, %rdi
	movb	$0, %al
	callq	error
.LBB62_21:                              # %if.end.64
	movl	$18, %edi
	movl	$48, %eax
	movl	$32, %ecx
	movq	-32(%rbp), %rdx
	sarq	$2, %rdx
	addq	$48, %rdx
	movb	%dl, %sil
	movb	%sil, -104(%rbp)
	movl	-88(%rbp), %r8d
	andl	$-49, %r8d
	movl	%r8d, -88(%rbp)
	movq	-32(%rbp), %rdx
	sarq	$2, %rdx
	cmpq	$7, %rdx
	cmovel	%ecx, %eax
	orl	-88(%rbp), %eax
	movl	%eax, -88(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdx
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_put
	movl	$91, %edi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_member
	xorl	%edi, %edi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB62_23
# BB#22:                                # %if.then.81
	movl	$91, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movq	%rax, -32(%rbp)
	jmp	.LBB62_24
.LBB62_23:                              # %if.else.84
	movl	$91, %edi
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movq	%rax, -32(%rbp)
.LBB62_24:                              # %if.end.88
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB62_28
# BB#25:                                # %land.lhs.true.92
	movl	$381, %edi              # imm = 0x17D
	movq	-32(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB62_28
# BB#26:                                # %land.lhs.true.96
	movl	$714, %edi              # imm = 0x2CA
	movq	-32(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB62_28
# BB#27:                                # %if.then.100
	movabsq	$.L.str.17, %rdi
	movb	$0, %al
	callq	error
.LBB62_28:                              # %if.end.101
	xorl	%edi, %edi
	movl	-88(%rbp), %eax
	andl	$-769, %eax             # imm = 0xFFFFFFFFFFFFFCFF
	movl	%eax, -88(%rbp)
	movl	-96(%rbp), %eax
	andl	$-21, %eax
	movl	%eax, -96(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB62_30
# BB#29:                                # %if.then.108
	movb	$78, -103(%rbp)
	jmp	.LBB62_36
.LBB62_30:                              # %if.else.110
	movl	$381, %edi              # imm = 0x17D
	movq	-32(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB62_32
# BB#31:                                # %if.then.114
	movb	$69, -103(%rbp)
	movl	-88(%rbp), %eax
	orl	$256, %eax              # imm = 0x100
	movl	%eax, -88(%rbp)
	movl	-96(%rbp), %eax
	orl	$20, %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB62_35
.LBB62_32:                              # %if.else.120
	movl	$714, %edi              # imm = 0x2CA
	movq	-32(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB62_34
# BB#33:                                # %if.then.124
	movb	$79, -103(%rbp)
	movl	-88(%rbp), %eax
	orl	$768, %eax              # imm = 0x300
	movl	%eax, -88(%rbp)
	movl	-96(%rbp), %eax
	orl	$20, %eax
	movl	%eax, -96(%rbp)
.LBB62_34:                              # %if.end.130
	jmp	.LBB62_35
.LBB62_35:                              # %if.end.131
	jmp	.LBB62_36
.LBB62_36:                              # %if.end.132
	movl	$91, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdx
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_put
	movl	$125, %edi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_member
	xorl	%edi, %edi
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-312(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB62_38
# BB#37:                                # %if.then.140
	movl	$125, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movq	%rax, -32(%rbp)
	jmp	.LBB62_39
.LBB62_38:                              # %if.else.143
	movl	$125, %edi
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movq	%rax, -32(%rbp)
.LBB62_39:                              # %if.end.147
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-336(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB62_41
# BB#40:                                # %if.then.151
	movq	$6, -32(%rbp)
.LBB62_41:                              # %if.end.152
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB62_43
# BB#42:                                # %cond.true.158
	jmp	.LBB62_44
.LBB62_43:                              # %cond.false.159
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -344(%rbp)        # 8-byte Spill
.LBB62_44:                              # %cond.end.161
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	cmpq	$1, %rax
	je	.LBB62_47
# BB#45:                                # %land.lhs.true.165
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2, %rax
	je	.LBB62_47
# BB#46:                                # %if.then.169
	movabsq	$.L.str.18, %rdi
	movb	$0, %al
	callq	error
.LBB62_47:                              # %if.end.170
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	addq	$48, %rax
	movb	%al, %cl
	movb	%cl, -102(%rbp)
	movl	-88(%rbp), %edx
	andl	$-65, %edx
	movl	%edx, -88(%rbp)
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2, %rax
	jne	.LBB62_49
# BB#48:                                # %if.then.180
	movl	-88(%rbp), %eax
	orl	$64, %eax
	movl	%eax, -88(%rbp)
.LBB62_49:                              # %if.end.183
	movl	$125, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdx
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_put
	movl	$43, %edi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_member
	xorl	%edi, %edi
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-368(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB62_51
# BB#50:                                # %if.then.191
	movl	$43, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movq	%rax, -32(%rbp)
	jmp	.LBB62_52
.LBB62_51:                              # %if.else.194
	movl	$43, %edi
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movq	%rax, -32(%rbp)
.LBB62_52:                              # %if.end.198
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-392(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB62_56
# BB#53:                                # %land.lhs.true.202
	movl	$526, %edi              # imm = 0x20E
	movq	-32(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-400(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB62_56
# BB#54:                                # %land.lhs.true.206
	movl	$894, %edi              # imm = 0x37E
	movq	-32(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-408(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB62_56
# BB#55:                                # %if.then.210
	movabsq	$.L.str.19, %rdi
	movb	$0, %al
	callq	error
.LBB62_56:                              # %if.end.211
	xorl	%edi, %edi
	movl	-88(%rbp), %eax
	andl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, -88(%rbp)
	movl	-96(%rbp), %eax
	andl	$-5121, %eax            # imm = 0xFFFFFFFFFFFFEBFF
	movl	%eax, -96(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-416(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB62_58
# BB#57:                                # %if.then.219
	jmp	.LBB62_64
.LBB62_58:                              # %if.else.220
	movl	$526, %edi              # imm = 0x20E
	movq	-32(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-424(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB62_60
# BB#59:                                # %if.then.224
	movl	-88(%rbp), %eax
	orl	$-2147483648, %eax      # imm = 0xFFFFFFFF80000000
	movl	%eax, -88(%rbp)
	jmp	.LBB62_63
.LBB62_60:                              # %if.else.227
	movl	$894, %edi              # imm = 0x37E
	movq	-32(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-432(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB62_62
# BB#61:                                # %if.then.231
	movl	-96(%rbp), %eax
	orl	$5120, %eax             # imm = 0x1400
	movl	%eax, -96(%rbp)
.LBB62_62:                              # %if.end.234
	jmp	.LBB62_63
.LBB62_63:                              # %if.end.235
	jmp	.LBB62_64
.LBB62_64:                              # %if.end.236
	movl	$43, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdx
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_put
	xorl	%esi, %esi
	leaq	-96(%rbp), %rdx
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	168(%rax), %edi
	callq	tcsetattr
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	.LBB62_66
# BB#65:                                # %if.then.243
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$.L.str.20, %rdi
	movq	%rax, %rsi
	callq	report_file_error
.LBB62_66:                              # %if.end.245
	movl	$128, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	leaq	-104(%rbp), %rdi
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	build_string
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	-456(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fplist_put
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	pset_childp
	addq	$464, %rsp              # imm = 0x1D0
	popq	%rbp
	retq
.Lfunc_end62:
	.size	serial_configure, .Lfunc_end62-serial_configure
	.cfi_endproc

	.globl	list_system_processes
	.align	16, 0x90
	.type	list_system_processes,@function
list_system_processes:                  # @list_system_processes
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
	subq	$96, %rsp
	movabsq	$.L.str.21, %rdi
	callq	build_string
	movabsq	$.L.str.22, %rdi
	movq	%rax, -8(%rbp)
	callq	build_string
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rdx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%r8d, %r8d
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rax, %r9
	callq	directory_files_internal
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB63_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB63_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB63_1 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fstring_to_number
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCAR
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB63_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB63_1
.LBB63_4:                               # %for.end
	movq	-24(%rbp), %rdi
	callq	Fnreverse
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end63:
	.size	list_system_processes, .Lfunc_end63-list_system_processes
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI64_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI64_1:
	.quad	4841369599423283200     # double 4.503600e+15
	.quad	4985484787499139072     # double 1.934281e+25
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI64_2:
	.quad	4607182418800017408     # double 1
.LCPI64_3:
	.quad	4636737291354636288     # double 100
.LCPI64_4:
	.quad	4645744490609377280     # double 400
	.text
	.globl	system_process_attributes
	.align	16, 0x90
	.type	system_process_attributes,@function
system_process_attributes:              # @system_process_attributes
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$10584, %rsp            # imm = 0x2958
.Ltmp195:
	.cfi_offset %rbx, -56
.Ltmp196:
	.cfi_offset %r12, -48
.Ltmp197:
	.cfi_offset %r13, -40
.Ltmp198:
	.cfi_offset %r14, -32
.Ltmp199:
	.cfi_offset %r15, -24
	xorl	%eax, %eax
	movabsq	$system_process_attributes.default_cmd, %rcx
	movq	%rdi, -56(%rbp)
	movq	%rcx, -9512(%rbp)
	movl	$3, -9516(%rbp)
	movq	$0, -9528(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -9792(%rbp)
	movq	-56(%rbp), %rdi
	callq	CHECK_NUMBER_OR_FLOAT
	movq	$-2147483648, %rsi      # imm = 0xFFFFFFFF80000000
	movl	$2147483647, %edx       # imm = 0x7FFFFFFF
                                        # kill: RDX<def> EDX<kill>
	movq	-56(%rbp), %rdi
	callq	cons_to_signed
	movabsq	$.L.str.23, %rsi
	leaq	-4160(%rbp), %rdi
	movq	%rax, -9552(%rbp)
	movq	-9552(%rbp), %rdx
	movb	$0, %al
	callq	sprintf
	leaq	-8400(%rbp), %rsi
	leaq	-4160(%rbp), %rdi
	movl	%eax, -9960(%rbp)       # 4-byte Spill
	callq	stat
	cmpl	$0, %eax
	jge	.LBB64_2
# BB#1:                                 # %if.then
	movq	-9792(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB64_118
.LBB64_2:                               # %if.end
	movl	$377, %edi              # imm = 0x179
	movl	-8372(%rbp), %eax
	movl	%eax, -9580(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	cmpl	-9580(%rbp), %edi
	movq	%rax, -9968(%rbp)       # 8-byte Spill
	jbe	.LBB64_4
# BB#3:                                 # %lor.lhs.false
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	movl	-9580(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jg	.LBB64_5
.LBB64_4:                               # %land.lhs.true
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movl	-9580(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rax, %rdx
	jle	.LBB64_6
.LBB64_5:                               # %cond.true
	movl	-9580(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm0
	callq	make_float
	movq	%rax, -9976(%rbp)       # 8-byte Spill
	jmp	.LBB64_7
.LBB64_6:                               # %cond.false
	movl	-9580(%rbp), %eax
	movl	%eax, %ecx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -9976(%rbp)       # 8-byte Spill
.LBB64_7:                               # %cond.end
	movq	-9976(%rbp), %rax       # 8-byte Reload
	movq	-9968(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-9792(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -9792(%rbp)
	callq	block_input
	movl	-9580(%rbp), %edi
	callq	getpwuid
	movq	%rax, -8408(%rbp)
	callq	unblock_input
	cmpq	$0, -8408(%rbp)
	je	.LBB64_9
# BB#8:                                 # %if.then.18
	movl	$980, %edi              # imm = 0x3D4
	callq	builtin_lisp_symbol
	movq	-8408(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	%rax, -9984(%rbp)       # 8-byte Spill
	callq	build_string
	movq	-9984(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-9792(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -9792(%rbp)
.LBB64_9:                               # %if.end.23
	movl	$358, %edi              # imm = 0x166
	movl	-8368(%rbp), %eax
	movl	%eax, -9584(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	cmpl	-9584(%rbp), %edi
	movq	%rax, -9992(%rbp)       # 8-byte Spill
	jbe	.LBB64_11
# BB#10:                                # %lor.lhs.false.27
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	movl	-9584(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jg	.LBB64_12
.LBB64_11:                              # %land.lhs.true.31
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movl	-9584(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rax, %rdx
	jle	.LBB64_13
.LBB64_12:                              # %cond.true.35
	movl	-9584(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm0
	callq	make_float
	movq	%rax, -10000(%rbp)      # 8-byte Spill
	jmp	.LBB64_14
.LBB64_13:                              # %cond.false.38
	movl	-9584(%rbp), %eax
	movl	%eax, %ecx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -10000(%rbp)      # 8-byte Spill
.LBB64_14:                              # %cond.end.42
	movq	-10000(%rbp), %rax      # 8-byte Reload
	movq	-9992(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-9792(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -9792(%rbp)
	callq	block_input
	movl	-9584(%rbp), %edi
	callq	getgrgid
	movq	%rax, -8416(%rbp)
	callq	unblock_input
	cmpq	$0, -8416(%rbp)
	je	.LBB64_16
# BB#15:                                # %if.then.48
	movl	$501, %edi              # imm = 0x1F5
	callq	builtin_lisp_symbol
	movq	-8416(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	%rax, -10008(%rbp)      # 8-byte Spill
	callq	build_string
	movq	-10008(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-9792(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -9792(%rbp)
.LBB64_16:                              # %if.end.53
	callq	SPECPDL_INDEX
	xorl	%ecx, %ecx
	leaq	-8256(%rbp), %rdx
	leaq	-4160(%rbp), %rsi
	movq	%rax, -9816(%rbp)
	movq	%rdx, %rdi
	movq	%rdx, -10016(%rbp)      # 8-byte Spill
	movl	%ecx, -10020(%rbp)      # 4-byte Spill
	callq	strcpy
	movq	-10016(%rbp), %rdi      # 8-byte Reload
	movq	%rax, -10032(%rbp)      # 8-byte Spill
	callq	strlen
	movq	-10016(%rbp), %rdx      # 8-byte Reload
	addq	%rax, %rdx
	movq	%rdx, -8432(%rbp)
	movq	-8432(%rbp), %rdi
	movl	$.L.str.24, %ecx
	movl	%ecx, %esi
	callq	strcpy
	movq	-10016(%rbp), %rdi      # 8-byte Reload
	movl	-10020(%rbp), %esi      # 4-byte Reload
	movl	-10020(%rbp), %edx      # 4-byte Reload
	movq	%rax, -10040(%rbp)      # 8-byte Spill
	callq	emacs_open
	movl	%eax, -9492(%rbp)
	cmpl	$0, -9492(%rbp)
	jge	.LBB64_18
# BB#17:                                # %if.then.66
	movq	$0, -9504(%rbp)
	jmp	.LBB64_19
.LBB64_18:                              # %if.else
	movabsq	$close_file_unwind, %rdi
	movl	-9492(%rbp), %esi
	callq	record_unwind_protect_int
	movl	$1024, %esi             # imm = 0x400
	movl	%esi, %edx
	leaq	-9472(%rbp), %rsi
	movl	-9492(%rbp), %edi
	callq	emacs_read
	movq	%rax, -9504(%rbp)
.LBB64_19:                              # %if.end.69
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-9504(%rbp), %rcx
	jge	.LBB64_90
# BB#20:                                # %if.then.72
	movl	$40, %esi
	leaq	-9472(%rbp), %rax
	movq	-9504(%rbp), %rcx
	movb	$0, -9472(%rbp,%rcx)
	movq	%rax, -9480(%rbp)
	movq	-9480(%rbp), %rdi
	callq	strchr
	movq	%rax, -9480(%rbp)
	cmpq	$0, -9480(%rbp)
	je	.LBB64_24
# BB#21:                                # %if.then.77
	movl	$41, %esi
	movq	-9480(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	strrchr
	movq	%rax, -9488(%rbp)
	cmpq	$0, -9488(%rbp)
	je	.LBB64_23
# BB#22:                                # %if.then.82
	movq	-9480(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -9512(%rbp)
	movq	-9488(%rbp), %rax
	movq	-9512(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -9516(%rbp)
.LBB64_23:                              # %if.end.85
	jmp	.LBB64_25
.LBB64_24:                              # %if.else.86
	movq	$0, -9488(%rbp)
.LBB64_25:                              # %if.end.87
	movq	-9512(%rbp), %rdi
	movslq	-9516(%rbp), %rsi
	callq	make_unibyte_string
	xorl	%edx, %edx
	movq	%rax, -9800(%rbp)
	movq	-9800(%rbp), %rdi
	movq	globals+1344, %rsi
	callq	code_convert_string_norecord
	movl	$281, %edi              # imm = 0x119
	movq	%rax, -9808(%rbp)
	callq	builtin_lisp_symbol
	movq	-9808(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	-9792(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -9792(%rbp)
	cmpq	$0, -9488(%rbp)
	je	.LBB64_89
# BB#26:                                # %land.lhs.true.95
	movabsq	$.L.str.25, %rsi
	leaq	-9537(%rbp), %rdx
	leaq	-9556(%rbp), %rcx
	leaq	-9560(%rbp), %r8
	leaq	-9564(%rbp), %r9
	leaq	-9568(%rbp), %rax
	leaq	-9572(%rbp), %rdi
	leaq	-9656(%rbp), %r10
	leaq	-9672(%rbp), %r11
	leaq	-9664(%rbp), %rbx
	leaq	-9680(%rbp), %r14
	leaq	-9592(%rbp), %r15
	leaq	-9600(%rbp), %r12
	leaq	-9608(%rbp), %r13
	movq	%rax, -10048(%rbp)      # 8-byte Spill
	leaq	-9616(%rbp), %rax
	movq	%rax, -10056(%rbp)      # 8-byte Spill
	leaq	-9632(%rbp), %rax
	movq	%rax, -10064(%rbp)      # 8-byte Spill
	leaq	-9640(%rbp), %rax
	movq	%rax, -10072(%rbp)      # 8-byte Spill
	leaq	-9576(%rbp), %rax
	movq	%rax, -10080(%rbp)      # 8-byte Spill
	leaq	-9624(%rbp), %rax
	movq	%rax, -10088(%rbp)      # 8-byte Spill
	leaq	-9688(%rbp), %rax
	movq	%rax, -10096(%rbp)      # 8-byte Spill
	leaq	-9648(%rbp), %rax
	movq	%rax, -10104(%rbp)      # 8-byte Spill
	movq	-9488(%rbp), %rax
	addq	$2, %rax
	movq	%rdi, -10112(%rbp)      # 8-byte Spill
	movq	%rax, %rdi
	movq	-10048(%rbp), %rax      # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-10112(%rbp), %rax      # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r10, 16(%rsp)
	movq	%r11, 24(%rsp)
	movq	%rbx, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	%r15, 48(%rsp)
	movq	%r12, 56(%rsp)
	movq	%r13, 64(%rsp)
	movq	-10056(%rbp), %r10      # 8-byte Reload
	movq	%r10, 72(%rsp)
	movq	-10064(%rbp), %r11      # 8-byte Reload
	movq	%r11, 80(%rsp)
	movq	-10072(%rbp), %rbx      # 8-byte Reload
	movq	%rbx, 88(%rsp)
	movq	-10080(%rbp), %r14      # 8-byte Reload
	movq	%r14, 96(%rsp)
	movq	-10088(%rbp), %r15      # 8-byte Reload
	movq	%r15, 104(%rsp)
	movq	-10096(%rbp), %r12      # 8-byte Reload
	movq	%r12, 112(%rsp)
	movq	-10104(%rbp), %r13      # 8-byte Reload
	movq	%r13, 120(%rsp)
	movb	$0, %al
	callq	sscanf
	cmpl	$20, %eax
	jne	.LBB64_89
# BB#27:                                # %if.then.100
	movl	$874, %edi              # imm = 0x36A
	movb	-9537(%rbp), %al
	movb	%al, -9818(%rbp)
	movb	$0, -9817(%rbp)
	callq	builtin_lisp_symbol
	leaq	-9818(%rbp), %rdi
	movq	%rax, -10120(%rbp)      # 8-byte Spill
	callq	build_string
	movq	-10120(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-9792(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movl	$766, %edi              # imm = 0x2FE
	movq	%rax, -9792(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	cmpl	-9556(%rbp), %edi
	movq	%rax, -10128(%rbp)      # 8-byte Spill
	jle	.LBB64_29
# BB#28:                                # %lor.lhs.false.111
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	movslq	-9556(%rbp), %rcx
	cmpq	%rcx, %rax
	jg	.LBB64_30
.LBB64_29:                              # %land.lhs.true.115
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movslq	-9556(%rbp), %rcx
	cmpq	%rax, %rcx
	jle	.LBB64_31
.LBB64_30:                              # %cond.true.119
	cvtsi2sdl	-9556(%rbp), %xmm0
	callq	make_float
	movq	%rax, -10136(%rbp)      # 8-byte Spill
	jmp	.LBB64_32
.LBB64_31:                              # %cond.false.122
	movslq	-9556(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -10136(%rbp)      # 8-byte Spill
.LBB64_32:                              # %cond.end.126
	movq	-10136(%rbp), %rax      # 8-byte Reload
	movq	-10128(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-9792(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movl	$749, %edi              # imm = 0x2ED
	movq	%rax, -9792(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	cmpl	-9560(%rbp), %edi
	movq	%rax, -10144(%rbp)      # 8-byte Spill
	jle	.LBB64_34
# BB#33:                                # %lor.lhs.false.133
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	movslq	-9560(%rbp), %rcx
	cmpq	%rcx, %rax
	jg	.LBB64_35
.LBB64_34:                              # %land.lhs.true.137
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movslq	-9560(%rbp), %rcx
	cmpq	%rax, %rcx
	jle	.LBB64_36
.LBB64_35:                              # %cond.true.141
	cvtsi2sdl	-9560(%rbp), %xmm0
	callq	make_float
	movq	%rax, -10152(%rbp)      # 8-byte Spill
	jmp	.LBB64_37
.LBB64_36:                              # %cond.false.144
	movslq	-9560(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -10152(%rbp)      # 8-byte Spill
.LBB64_37:                              # %cond.end.148
	movq	-10152(%rbp), %rax      # 8-byte Reload
	movq	-10144(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-9792(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movl	$846, %edi              # imm = 0x34E
	movq	%rax, -9792(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	cmpl	-9564(%rbp), %edi
	movq	%rax, -10160(%rbp)      # 8-byte Spill
	jle	.LBB64_39
# BB#38:                                # %lor.lhs.false.155
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	movslq	-9564(%rbp), %rcx
	cmpq	%rcx, %rax
	jg	.LBB64_40
.LBB64_39:                              # %land.lhs.true.159
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movslq	-9564(%rbp), %rcx
	cmpq	%rax, %rcx
	jle	.LBB64_41
.LBB64_40:                              # %cond.true.163
	cvtsi2sdl	-9564(%rbp), %xmm0
	callq	make_float
	movq	%rax, -10168(%rbp)      # 8-byte Spill
	jmp	.LBB64_42
.LBB64_41:                              # %cond.false.166
	movslq	-9564(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -10168(%rbp)      # 8-byte Spill
.LBB64_42:                              # %cond.end.170
	movq	-10168(%rbp), %rax      # 8-byte Reload
	movq	-10160(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-9792(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movl	$937, %edi              # imm = 0x3A9
	movq	%rax, -9792(%rbp)
	callq	builtin_lisp_symbol
	movl	-9568(%rbp), %edi
	movq	%rax, -10176(%rbp)      # 8-byte Spill
	callq	procfs_ttyname
	movq	-10176(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-9792(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movl	$932, %edi              # imm = 0x3A4
	movq	%rax, -9792(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	cmpl	-9572(%rbp), %edi
	movq	%rax, -10184(%rbp)      # 8-byte Spill
	jle	.LBB64_44
# BB#43:                                # %lor.lhs.false.181
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	movslq	-9572(%rbp), %rcx
	cmpq	%rcx, %rax
	jg	.LBB64_45
.LBB64_44:                              # %land.lhs.true.185
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movslq	-9572(%rbp), %rcx
	cmpq	%rax, %rcx
	jle	.LBB64_46
.LBB64_45:                              # %cond.true.189
	cvtsi2sdl	-9572(%rbp), %xmm0
	callq	make_float
	movq	%rax, -10192(%rbp)      # 8-byte Spill
	jmp	.LBB64_47
.LBB64_46:                              # %cond.false.192
	movslq	-9572(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -10192(%rbp)      # 8-byte Spill
.LBB64_47:                              # %cond.end.196
	movq	-10192(%rbp), %rax      # 8-byte Reload
	movq	-10184(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-9792(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movl	$660, %edi              # imm = 0x294
	movq	%rax, -9792(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %esi
	cmpq	-9656(%rbp), %rsi
	movq	%rax, -10200(%rbp)      # 8-byte Spill
	jbe	.LBB64_49
# BB#48:                                # %lor.lhs.false.203
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	cmpq	-9656(%rbp), %rax
	ja	.LBB64_50
.LBB64_49:                              # %land.lhs.true.206
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	cmpq	%rax, -9656(%rbp)
	jbe	.LBB64_51
.LBB64_50:                              # %cond.true.209
	movaps	.LCPI64_0(%rip), %xmm0  # xmm0 = [1127219200,1160773632,0,0]
	movq	-9656(%rbp), %xmm1      # xmm1 = mem[0],zero
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movapd	.LCPI64_1(%rip), %xmm0  # xmm0 = [4.503600e+15,1.934281e+25]
	subpd	%xmm0, %xmm1
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	addpd	%xmm1, %xmm0
	callq	make_float
	movq	%rax, -10208(%rbp)      # 8-byte Spill
	jmp	.LBB64_52
.LBB64_51:                              # %cond.false.212
	movq	-9656(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -10208(%rbp)      # 8-byte Spill
.LBB64_52:                              # %cond.end.215
	movq	-10208(%rbp), %rax      # 8-byte Reload
	movq	-10200(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-9792(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movl	$637, %edi              # imm = 0x27D
	movq	%rax, -9792(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %esi
	cmpq	-9664(%rbp), %rsi
	movq	%rax, -10216(%rbp)      # 8-byte Spill
	jbe	.LBB64_54
# BB#53:                                # %lor.lhs.false.222
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	cmpq	-9664(%rbp), %rax
	ja	.LBB64_55
.LBB64_54:                              # %land.lhs.true.225
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	cmpq	%rax, -9664(%rbp)
	jbe	.LBB64_56
.LBB64_55:                              # %cond.true.228
	movaps	.LCPI64_0(%rip), %xmm0  # xmm0 = [1127219200,1160773632,0,0]
	movq	-9664(%rbp), %xmm1      # xmm1 = mem[0],zero
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movapd	.LCPI64_1(%rip), %xmm0  # xmm0 = [4.503600e+15,1.934281e+25]
	subpd	%xmm0, %xmm1
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	addpd	%xmm1, %xmm0
	callq	make_float
	movq	%rax, -10224(%rbp)      # 8-byte Spill
	jmp	.LBB64_57
.LBB64_56:                              # %cond.false.231
	movq	-9664(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -10224(%rbp)      # 8-byte Spill
.LBB64_57:                              # %cond.end.234
	movq	-10224(%rbp), %rax      # 8-byte Reload
	movq	-10216(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-9792(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movl	$273, %edi              # imm = 0x111
	movq	%rax, -9792(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %esi
	cmpq	-9672(%rbp), %rsi
	movq	%rax, -10232(%rbp)      # 8-byte Spill
	jbe	.LBB64_59
# BB#58:                                # %lor.lhs.false.241
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	cmpq	-9672(%rbp), %rax
	ja	.LBB64_60
.LBB64_59:                              # %land.lhs.true.244
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	cmpq	%rax, -9672(%rbp)
	jbe	.LBB64_61
.LBB64_60:                              # %cond.true.247
	movaps	.LCPI64_0(%rip), %xmm0  # xmm0 = [1127219200,1160773632,0,0]
	movq	-9672(%rbp), %xmm1      # xmm1 = mem[0],zero
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movapd	.LCPI64_1(%rip), %xmm0  # xmm0 = [4.503600e+15,1.934281e+25]
	subpd	%xmm0, %xmm1
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	addpd	%xmm1, %xmm0
	callq	make_float
	movq	%rax, -10240(%rbp)      # 8-byte Spill
	jmp	.LBB64_62
.LBB64_61:                              # %cond.false.250
	movq	-9672(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -10240(%rbp)      # 8-byte Spill
.LBB64_62:                              # %cond.end.253
	movq	-10240(%rbp), %rax      # 8-byte Reload
	movq	-10232(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-9792(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movl	$272, %edi              # imm = 0x110
	movq	%rax, -9792(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %esi
	cmpq	-9680(%rbp), %rsi
	movq	%rax, -10248(%rbp)      # 8-byte Spill
	jbe	.LBB64_64
# BB#63:                                # %lor.lhs.false.260
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	cmpq	-9680(%rbp), %rax
	ja	.LBB64_65
.LBB64_64:                              # %land.lhs.true.263
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	cmpq	%rax, -9680(%rbp)
	jbe	.LBB64_66
.LBB64_65:                              # %cond.true.266
	movaps	.LCPI64_0(%rip), %xmm0  # xmm0 = [1127219200,1160773632,0,0]
	movq	-9680(%rbp), %xmm1      # xmm1 = mem[0],zero
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movapd	.LCPI64_1(%rip), %xmm0  # xmm0 = [4.503600e+15,1.934281e+25]
	subpd	%xmm0, %xmm1
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	addpd	%xmm1, %xmm0
	callq	make_float
	movq	%rax, -10256(%rbp)      # 8-byte Spill
	jmp	.LBB64_67
.LBB64_66:                              # %cond.false.269
	movq	-9680(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -10256(%rbp)      # 8-byte Spill
.LBB64_67:                              # %cond.end.272
	movq	-10256(%rbp), %rax      # 8-byte Reload
	movq	-10248(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-9792(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movl	$2, %edi
	movq	%rax, -9792(%rbp)
	callq	sysconf
	movq	%rax, -8424(%rbp)
	cmpq	$0, -8424(%rbp)
	jge	.LBB64_69
# BB#68:                                # %if.then.279
	movq	$100, -8424(%rbp)
.LBB64_69:                              # %if.end.280
	movl	$990, %edi              # imm = 0x3DE
	callq	builtin_lisp_symbol
	movq	-9592(%rbp), %rdi
	movq	-8424(%rbp), %rsi
	movq	%rax, -10264(%rbp)      # 8-byte Spill
	callq	ltime_from_jiffies
	movq	-10264(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-9792(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movl	$879, %edi              # imm = 0x36F
	movq	%rax, -9792(%rbp)
	callq	builtin_lisp_symbol
	movq	-9600(%rbp), %rdi
	movq	-8424(%rbp), %rsi
	movq	%rax, -10272(%rbp)      # 8-byte Spill
	callq	ltime_from_jiffies
	movq	-10272(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-9792(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movl	$917, %edi              # imm = 0x395
	movq	%rax, -9792(%rbp)
	callq	builtin_lisp_symbol
	movq	-9600(%rbp), %rsi
	addq	-9592(%rbp), %rsi
	movq	-8424(%rbp), %rcx
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	movq	%rax, -10280(%rbp)      # 8-byte Spill
	callq	ltime_from_jiffies
	movq	-10280(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-9792(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movl	$311, %edi              # imm = 0x137
	movq	%rax, -9792(%rbp)
	callq	builtin_lisp_symbol
	movq	-9608(%rbp), %rdi
	movq	-8424(%rbp), %rsi
	movq	%rax, -10288(%rbp)      # 8-byte Spill
	callq	ltime_from_jiffies
	movq	-10288(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-9792(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movl	$302, %edi              # imm = 0x12E
	movq	%rax, -9792(%rbp)
	callq	builtin_lisp_symbol
	movq	-9616(%rbp), %rdi
	movq	-8424(%rbp), %rsi
	movq	%rax, -10296(%rbp)      # 8-byte Spill
	callq	ltime_from_jiffies
	movq	-10296(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-9792(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movl	$303, %edi              # imm = 0x12F
	movq	%rax, -9792(%rbp)
	callq	builtin_lisp_symbol
	movq	-9616(%rbp), %rcx
	addq	-9608(%rbp), %rcx
	movq	-8424(%rbp), %rsi
	movq	%rcx, %rdi
	movq	%rax, -10304(%rbp)      # 8-byte Spill
	callq	ltime_from_jiffies
	movq	-10304(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-9792(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movl	$769, %edi              # imm = 0x301
	movq	%rax, -9792(%rbp)
	callq	builtin_lisp_symbol
	movq	-9632(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	Fcons
	movq	-9792(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movl	$700, %edi              # imm = 0x2BC
	movq	%rax, -9792(%rbp)
	callq	builtin_lisp_symbol
	movq	-9640(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	Fcons
	movq	-9792(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movl	$914, %edi              # imm = 0x392
	movq	%rax, -9792(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	cmpl	-9576(%rbp), %edi
	movq	%rax, -10312(%rbp)      # 8-byte Spill
	jle	.LBB64_71
# BB#70:                                # %lor.lhs.false.320
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	movslq	-9576(%rbp), %rcx
	cmpq	%rcx, %rax
	jg	.LBB64_72
.LBB64_71:                              # %land.lhs.true.324
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movslq	-9576(%rbp), %rcx
	cmpq	%rax, %rcx
	jle	.LBB64_73
.LBB64_72:                              # %cond.true.328
	cvtsi2sdl	-9576(%rbp), %xmm0
	callq	make_float
	movq	%rax, -10320(%rbp)      # 8-byte Spill
	jmp	.LBB64_74
.LBB64_73:                              # %cond.false.331
	movslq	-9576(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -10320(%rbp)      # 8-byte Spill
.LBB64_74:                              # %cond.end.335
	movq	-10320(%rbp), %rax      # 8-byte Reload
	movq	-10312(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-9792(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -9792(%rbp)
	callq	current_timespec
	movq	%rax, -9840(%rbp)
	movq	%rdx, -9832(%rbp)
	movq	-9840(%rbp), %rax
	movq	%rax, -9704(%rbp)
	movq	-9832(%rbp), %rax
	movq	%rax, -9696(%rbp)
	callq	get_up_time
	movq	%rax, -9856(%rbp)
	movq	%rdx, -9848(%rbp)
	movq	-9856(%rbp), %rax
	movq	%rax, -9752(%rbp)
	movq	-9848(%rbp), %rax
	movq	%rax, -9744(%rbp)
	movq	-9704(%rbp), %rdi
	movq	-9696(%rbp), %rsi
	movq	-9752(%rbp), %rdx
	movq	-9744(%rbp), %rcx
	callq	timespec_sub
	movq	%rax, -9872(%rbp)
	movq	%rdx, -9864(%rbp)
	movq	-9872(%rbp), %rax
	movq	%rax, -9736(%rbp)
	movq	-9864(%rbp), %rax
	movq	%rax, -9728(%rbp)
	movq	-9624(%rbp), %rdi
	movq	-8424(%rbp), %rsi
	callq	time_from_jiffies
	movq	%rax, -9888(%rbp)
	movq	%rdx, -9880(%rbp)
	movq	-9888(%rbp), %rax
	movq	%rax, -9720(%rbp)
	movq	-9880(%rbp), %rax
	movq	%rax, -9712(%rbp)
	movq	-9736(%rbp), %rdi
	movq	-9728(%rbp), %rsi
	movq	-9720(%rbp), %rdx
	movq	-9712(%rbp), %rcx
	callq	timespec_add
	movl	$872, %edi              # imm = 0x368
	movq	%rax, -9904(%rbp)
	movq	%rdx, -9896(%rbp)
	movq	-9904(%rbp), %rax
	movq	%rax, -9720(%rbp)
	movq	-9896(%rbp), %rax
	movq	%rax, -9712(%rbp)
	callq	builtin_lisp_symbol
	movq	-9720(%rbp), %rdi
	movq	-9712(%rbp), %rsi
	movq	%rax, -10328(%rbp)      # 8-byte Spill
	callq	make_lisp_time
	movq	-10328(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-9792(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movl	$1008, %edi             # imm = 0x3F0
	movq	%rax, -9792(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %ecx
	movq	-9688(%rbp), %rdx
	shrq	$10, %rdx
	cmpq	%rdx, %rcx
	movq	%rax, -10336(%rbp)      # 8-byte Spill
	jbe	.LBB64_76
# BB#75:                                # %lor.lhs.false.355
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	movq	-9688(%rbp), %rcx
	shrq	$10, %rcx
	cmpq	%rcx, %rax
	ja	.LBB64_77
.LBB64_76:                              # %land.lhs.true.359
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movq	-9688(%rbp), %rcx
	shrq	$10, %rcx
	cmpq	%rax, %rcx
	jbe	.LBB64_78
.LBB64_77:                              # %cond.true.363
	movq	-9688(%rbp), %rax
	shrq	$10, %rax
	cvtsi2sdq	%rax, %xmm0
	callq	make_float
	movq	%rax, -10344(%rbp)      # 8-byte Spill
	jmp	.LBB64_79
.LBB64_78:                              # %cond.false.367
	movq	-9688(%rbp), %rax
	shrq	$10, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -10344(%rbp)      # 8-byte Spill
.LBB64_79:                              # %cond.end.371
	movq	-10344(%rbp), %rax      # 8-byte Reload
	movq	-10336(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-9792(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movl	$819, %edi              # imm = 0x333
	movq	%rax, -9792(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %esi
	movq	-9648(%rbp), %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rsi
	movq	%rax, -10352(%rbp)      # 8-byte Spill
	jle	.LBB64_81
# BB#80:                                # %lor.lhs.false.378
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	movq	-9648(%rbp), %rcx
	shlq	$2, %rcx
	cmpq	%rcx, %rax
	jg	.LBB64_82
.LBB64_81:                              # %land.lhs.true.382
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movq	-9648(%rbp), %rcx
	shlq	$2, %rcx
	cmpq	%rax, %rcx
	jle	.LBB64_83
.LBB64_82:                              # %cond.true.386
	movq	-9648(%rbp), %rax
	shlq	$2, %rax
	cvtsi2sdq	%rax, %xmm0
	callq	make_float
	movq	%rax, -10360(%rbp)      # 8-byte Spill
	jmp	.LBB64_84
.LBB64_83:                              # %cond.false.390
	movq	-9648(%rbp), %rax
	shlq	$2, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -10360(%rbp)      # 8-byte Spill
.LBB64_84:                              # %cond.end.394
	movq	-10360(%rbp), %rax      # 8-byte Reload
	movq	-10352(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-9792(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -9792(%rbp)
	movq	-9704(%rbp), %rdi
	movq	-9696(%rbp), %rsi
	movq	-9720(%rbp), %rdx
	movq	-9712(%rbp), %rcx
	callq	timespec_sub
	movl	$376, %edi              # imm = 0x178
	movq	%rax, -9920(%rbp)
	movq	%rdx, -9912(%rbp)
	movq	-9920(%rbp), %rax
	movq	%rax, -9752(%rbp)
	movq	-9912(%rbp), %rax
	movq	%rax, -9744(%rbp)
	callq	builtin_lisp_symbol
	movq	-9752(%rbp), %rdi
	movq	-9744(%rbp), %rsi
	movq	%rax, -10368(%rbp)      # 8-byte Spill
	callq	make_lisp_time
	movq	-10368(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-9792(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -9792(%rbp)
	movq	-9592(%rbp), %rax
	addq	-9600(%rbp), %rax
	movq	-8424(%rbp), %rsi
	movq	%rax, %rdi
	callq	time_from_jiffies
	movq	%rax, -9936(%rbp)
	movq	%rdx, -9928(%rbp)
	movq	-9936(%rbp), %rax
	movq	%rax, -9768(%rbp)
	movq	-9928(%rbp), %rax
	movq	%rax, -9760(%rbp)
	movq	-9768(%rbp), %rdi
	movq	-9760(%rbp), %rsi
	callq	timespectod
	movq	-9752(%rbp), %rdi
	movq	-9744(%rbp), %rsi
	movsd	%xmm0, -10376(%rbp)     # 8-byte Spill
	callq	timespectod
	movsd	.LCPI64_2, %xmm1        # xmm1 = mem[0],zero
	movsd	-10376(%rbp), %xmm2     # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	movsd	%xmm2, -9776(%rbp)
	movsd	-9776(%rbp), %xmm0      # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB64_86
# BB#85:                                # %if.then.412
	movsd	.LCPI64_2, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -9776(%rbp)
.LBB64_86:                              # %if.end.413
	movsd	.LCPI64_3, %xmm0        # xmm0 = mem[0],zero
	movl	$745, %edi              # imm = 0x2E9
	movsd	%xmm0, -10384(%rbp)     # 8-byte Spill
	callq	builtin_lisp_symbol
	movsd	-9776(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	.LCPI64_3(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movq	%rax, -10392(%rbp)      # 8-byte Spill
	callq	make_float
	movq	-10392(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-9792(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -9792(%rbp)
	movq	-9648(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	.LCPI64_4(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -10400(%rbp)     # 8-byte Spill
	callq	procfs_get_total_memory
	movd	%rax, %xmm0
	movaps	.LCPI64_0(%rip), %xmm1  # xmm1 = [1127219200,1160773632,0,0]
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movapd	.LCPI64_1(%rip), %xmm1  # xmm1 = [4.503600e+15,1.934281e+25]
	subpd	%xmm1, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	addpd	%xmm0, %xmm1
	movsd	-10400(%rbp), %xmm0     # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -9784(%rbp)
	movsd	-9784(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	-10384(%rbp), %xmm1     # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB64_88
# BB#87:                                # %if.then.426
	movsd	.LCPI64_3, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -9784(%rbp)
.LBB64_88:                              # %if.end.427
	movl	$753, %edi              # imm = 0x2F1
	callq	builtin_lisp_symbol
	movsd	-9784(%rbp), %xmm0      # xmm0 = mem[0],zero
	movq	%rax, -10408(%rbp)      # 8-byte Spill
	callq	make_float
	movq	-10408(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-9792(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -9792(%rbp)
.LBB64_89:                              # %if.end.432
	jmp	.LBB64_90
.LBB64_90:                              # %if.end.433
	xorl	%edi, %edi
	movq	-9816(%rbp), %rax
	movq	%rax, -10416(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-10416(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	xorl	%ecx, %ecx
	leaq	-8256(%rbp), %rdi
	movq	-8432(%rbp), %rsi
	movl	$.L.str.26, %edx
	movl	%edx, %r8d
	movq	%rdi, -10424(%rbp)      # 8-byte Spill
	movq	%rsi, %rdi
	movq	%r8, %rsi
	movq	%rax, -10432(%rbp)      # 8-byte Spill
	movl	%ecx, -10436(%rbp)      # 4-byte Spill
	callq	strcpy
	movq	-10424(%rbp), %rdi      # 8-byte Reload
	movl	-10436(%rbp), %esi      # 4-byte Reload
	movl	-10436(%rbp), %edx      # 4-byte Reload
	movq	%rax, -10448(%rbp)      # 8-byte Spill
	callq	emacs_open
	movl	%eax, -9492(%rbp)
	cmpl	$0, -9492(%rbp)
	jl	.LBB64_117
# BB#91:                                # %if.then.441
	movabsq	$close_file_unwind, %rdi
	movl	-9492(%rbp), %esi
	callq	record_unwind_protect_int
	callq	record_unwind_protect_nothing
	movq	$0, -9536(%rbp)
	movq	$0, -9504(%rbp)
.LBB64_92:                              # %do.body
                                        # =>This Inner Loop Header: Depth=1
	leaq	-9536(%rbp), %rsi
	movl	$2, %eax
	movl	%eax, %edx
	movabsq	$2305843009213693951, %rcx # imm = 0x1FFFFFFFFFFFFFFF
	movl	$1, %eax
	movl	%eax, %r8d
	movq	-9528(%rbp), %rdi
	callq	xpalloc
	movabsq	$xfree, %rsi
	movq	%rax, -9528(%rbp)
	movq	-9816(%rbp), %rax
	addq	$1, %rax
	movq	-9528(%rbp), %rdx
	movq	%rax, %rdi
	callq	set_unwind_protect_ptr
	movq	-9536(%rbp), %rax
	sarq	$1, %rax
	subq	-9504(%rbp), %rax
	movq	%rax, -9944(%rbp)
	movl	-9492(%rbp), %edi
	movq	-9528(%rbp), %rax
	addq	-9504(%rbp), %rax
	movq	-9944(%rbp), %rdx
	movq	%rax, %rsi
	callq	emacs_read
	xorl	%edi, %edi
	movl	%edi, %ecx
	movq	%rax, -9952(%rbp)
	cmpq	-9952(%rbp), %rcx
	jle	.LBB64_94
# BB#93:                                # %cond.true.448
                                        #   in Loop: Header=BB64_92 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -10456(%rbp)      # 8-byte Spill
	jmp	.LBB64_95
.LBB64_94:                              # %cond.false.449
                                        #   in Loop: Header=BB64_92 Depth=1
	movq	-9952(%rbp), %rax
	movq	%rax, -10456(%rbp)      # 8-byte Spill
.LBB64_95:                              # %cond.end.450
                                        #   in Loop: Header=BB64_92 Depth=1
	movq	-10456(%rbp), %rax      # 8-byte Reload
	addq	-9504(%rbp), %rax
	movq	%rax, -9504(%rbp)
# BB#96:                                # %do.cond
                                        #   in Loop: Header=BB64_92 Depth=1
	movq	-9952(%rbp), %rax
	cmpq	-9944(%rbp), %rax
	je	.LBB64_92
# BB#97:                                # %do.end
	cmpq	$0, -9504(%rbp)
	je	.LBB64_114
# BB#98:                                # %if.then.456
	movq	-9528(%rbp), %rax
	addq	-9504(%rbp), %rax
	movq	%rax, -9480(%rbp)
.LBB64_99:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-9528(%rbp), %rdx
	cmpq	-9480(%rbp), %rdx
	movb	%cl, -10457(%rbp)       # 1-byte Spill
	jae	.LBB64_101
# BB#100:                               # %land.rhs
                                        #   in Loop: Header=BB64_99 Depth=1
	movq	-9480(%rbp), %rax
	cmpb	$0, -1(%rax)
	setne	%cl
	xorb	$-1, %cl
	movb	%cl, -10457(%rbp)       # 1-byte Spill
.LBB64_101:                             # %land.end
                                        #   in Loop: Header=BB64_99 Depth=1
	movb	-10457(%rbp), %al       # 1-byte Reload
	testb	$1, %al
	jne	.LBB64_102
	jmp	.LBB64_104
.LBB64_102:                             # %for.body
                                        #   in Loop: Header=BB64_99 Depth=1
	jmp	.LBB64_103
.LBB64_103:                             # %for.inc
                                        #   in Loop: Header=BB64_99 Depth=1
	movq	-9480(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -9480(%rbp)
	jmp	.LBB64_99
.LBB64_104:                             # %for.end
	movq	-9528(%rbp), %rax
	addq	-9536(%rbp), %rax
	movq	%rax, -9488(%rbp)
.LBB64_105:                             # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-9528(%rbp), %rax
	cmpq	-9480(%rbp), %rax
	jae	.LBB64_113
# BB#106:                               # %while.body
                                        #   in Loop: Header=BB64_105 Depth=1
	movq	-9480(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -9480(%rbp)
	movb	-1(%rax), %dl
	movb	%dl, -9953(%rbp)
	movsbl	-9953(%rbp), %esi
	cmpl	$0, %esi
	je	.LBB64_108
# BB#107:                               # %cond.true.469
                                        #   in Loop: Header=BB64_105 Depth=1
	movsbl	-9953(%rbp), %eax
	movl	%eax, -10464(%rbp)      # 4-byte Spill
	jmp	.LBB64_109
.LBB64_108:                             # %cond.false.471
                                        #   in Loop: Header=BB64_105 Depth=1
	movl	$32, %eax
	movl	%eax, -10464(%rbp)      # 4-byte Spill
	jmp	.LBB64_109
.LBB64_109:                             # %cond.end.472
                                        #   in Loop: Header=BB64_105 Depth=1
	movl	-10464(%rbp), %eax      # 4-byte Reload
	movb	%al, %cl
	movq	-9488(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$-1, %rsi
	movq	%rsi, -9488(%rbp)
	movb	%cl, -1(%rdx)
	movsbl	-9953(%rbp), %edi
	callq	c_isspace
	testb	$1, %al
	jne	.LBB64_111
# BB#110:                               # %lor.lhs.false.479
                                        #   in Loop: Header=BB64_105 Depth=1
	movsbl	-9953(%rbp), %eax
	cmpl	$92, %eax
	jne	.LBB64_112
.LBB64_111:                             # %if.then.483
                                        #   in Loop: Header=BB64_105 Depth=1
	movq	-9488(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -9488(%rbp)
	movb	$92, -1(%rax)
.LBB64_112:                             # %if.end.485
                                        #   in Loop: Header=BB64_105 Depth=1
	jmp	.LBB64_105
.LBB64_113:                             # %while.end
	movq	-9528(%rbp), %rax
	addq	-9536(%rbp), %rax
	movq	-9488(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -9504(%rbp)
.LBB64_114:                             # %if.end.490
	cmpq	$0, -9504(%rbp)
	jne	.LBB64_116
# BB#115:                               # %if.then.492
	movl	-9516(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	%rcx, -9504(%rbp)
	movq	-9504(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -9536(%rbp)
	movq	-9528(%rbp), %rdi
	movq	-9536(%rbp), %rsi
	callq	xrealloc
	movabsq	$xfree, %rsi
	movq	%rax, -9528(%rbp)
	movq	%rax, -9488(%rbp)
	movq	-9816(%rbp), %rax
	addq	$1, %rax
	movq	-9528(%rbp), %rdx
	movq	%rax, %rdi
	callq	set_unwind_protect_ptr
	movabsq	$.L.str.27, %rsi
	movq	-9528(%rbp), %rdi
	movl	-9516(%rbp), %edx
	movq	-9512(%rbp), %rcx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -10468(%rbp)      # 4-byte Spill
.LBB64_116:                             # %if.end.499
	movq	-9488(%rbp), %rdi
	movq	-9504(%rbp), %rsi
	callq	make_unibyte_string
	xorl	%edx, %edx
	movq	%rax, -9800(%rbp)
	movq	-9800(%rbp), %rdi
	movq	globals+1344, %rsi
	callq	code_convert_string_norecord
	xorl	%edi, %edi
	movq	%rax, -9808(%rbp)
	movq	-9816(%rbp), %rax
	movq	%rax, -10480(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-10480(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movl	$176, %edi
	movq	%rax, -10488(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-9808(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	-9792(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -9792(%rbp)
.LBB64_117:                             # %if.end.507
	movq	-9792(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB64_118:                             # %return
	movq	-48(%rbp), %rax
	addq	$10584, %rsp            # imm = 0x2958
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end64:
	.size	system_process_attributes, .Lfunc_end64-system_process_attributes
	.cfi_endproc

	.align	16, 0x90
	.type	procfs_ttyname,@function
procfs_ttyname:                         # @procfs_ttyname
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp200:
	.cfi_def_cfa_offset 16
.Ltmp201:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp202:
	.cfi_def_cfa_register %rbp
	subq	$4224, %rsp             # imm = 0x1080
	movl	%edi, -4(%rbp)
	callq	block_input
	movabsq	$.L.str.30, %rdi
	movabsq	$.L.str.31, %rsi
	callq	emacs_fopen
	movq	%rax, -16(%rbp)
	movb	$0, -4112(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB65_20
# BB#1:                                 # %if.then
	jmp	.LBB65_2
.LBB65_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	callq	feof
	xorl	%ecx, %ecx
	movb	%cl, %dl
	cmpl	$0, %eax
	movb	%dl, -4185(%rbp)        # 1-byte Spill
	jne	.LBB65_4
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB65_2 Depth=1
	movq	-16(%rbp), %rdi
	callq	ferror
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	movb	%cl, -4185(%rbp)        # 1-byte Spill
.LBB65_4:                               # %land.end
                                        #   in Loop: Header=BB65_2 Depth=1
	movb	-4185(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB65_5
	jmp	.LBB65_19
.LBB65_5:                               # %for.body
                                        #   in Loop: Header=BB65_2 Depth=1
	movabsq	$.L.str.32, %rsi
	leaq	-4116(%rbp), %rcx
	leaq	-4176(%rbp), %r8
	leaq	-4112(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	fscanf
	cmpl	$3, %eax
	jl	.LBB65_17
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB65_2 Depth=1
	movl	-4116(%rbp), %eax
	movl	-4(%rbp), %ecx
	shrl	$8, %ecx
	andl	$4095, %ecx             # imm = 0xFFF
	cmpl	%ecx, %eax
	jne	.LBB65_17
# BB#7:                                 # %if.then.8
                                        #   in Loop: Header=BB65_2 Depth=1
	leaq	-4184(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-4176(%rbp), %rdi
	callq	strtoul
	movq	%rax, -4128(%rbp)
	movq	-4184(%rbp), %rax
	movsbl	(%rax), %edx
	cmpl	$0, %edx
	jne	.LBB65_9
# BB#8:                                 # %if.then.13
                                        #   in Loop: Header=BB65_2 Depth=1
	movq	-4128(%rbp), %rax
	movq	%rax, -4136(%rbp)
	jmp	.LBB65_13
.LBB65_9:                               # %if.else
                                        #   in Loop: Header=BB65_2 Depth=1
	movq	-4184(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$45, %ecx
	jne	.LBB65_11
# BB#10:                                # %if.then.17
                                        #   in Loop: Header=BB65_2 Depth=1
	leaq	-4184(%rbp), %rsi
	xorl	%edx, %edx
	movq	-4184(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	strtoul
	movq	%rax, -4136(%rbp)
	jmp	.LBB65_12
.LBB65_11:                              # %if.else.19
                                        #   in Loop: Header=BB65_2 Depth=1
	jmp	.LBB65_18
.LBB65_12:                              # %if.end
                                        #   in Loop: Header=BB65_2 Depth=1
	jmp	.LBB65_13
.LBB65_13:                              # %if.end.20
                                        #   in Loop: Header=BB65_2 Depth=1
	movl	-4(%rbp), %eax
	andl	$255, %eax
	movl	-4(%rbp), %ecx
	andl	$-1048576, %ecx         # imm = 0xFFFFFFFFFFF00000
	shrl	$12, %ecx
	orl	%ecx, %eax
	movl	%eax, %eax
	movl	%eax, %edx
	cmpq	-4128(%rbp), %rdx
	jb	.LBB65_16
# BB#14:                                # %land.lhs.true.27
                                        #   in Loop: Header=BB65_2 Depth=1
	movl	-4(%rbp), %eax
	andl	$255, %eax
	movl	-4(%rbp), %ecx
	andl	$-1048576, %ecx         # imm = 0xFFFFFFFFFFF00000
	shrl	$12, %ecx
	orl	%ecx, %eax
	movl	%eax, %eax
	movl	%eax, %edx
	cmpq	-4136(%rbp), %rdx
	ja	.LBB65_16
# BB#15:                                # %if.then.35
	movabsq	$.L.str.33, %rsi
	leaq	-4112(%rbp), %rax
	movq	%rax, %rdi
	movq	%rsi, -4200(%rbp)       # 8-byte Spill
	movq	%rax, -4208(%rbp)       # 8-byte Spill
	callq	strlen
	movq	-4208(%rbp), %rsi       # 8-byte Reload
	addq	%rax, %rsi
	movl	-4(%rbp), %ecx
	andl	$255, %ecx
	movl	-4(%rbp), %edx
	andl	$-1048576, %edx         # imm = 0xFFFFFFFFFFF00000
	shrl	$12, %edx
	orl	%edx, %ecx
	movq	%rsi, %rdi
	movq	-4200(%rbp), %rsi       # 8-byte Reload
	movl	%ecx, %edx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -4212(%rbp)       # 4-byte Spill
	jmp	.LBB65_19
.LBB65_16:                              # %if.end.45
                                        #   in Loop: Header=BB65_2 Depth=1
	jmp	.LBB65_17
.LBB65_17:                              # %if.end.46
                                        #   in Loop: Header=BB65_2 Depth=1
	jmp	.LBB65_18
.LBB65_18:                              # %for.inc
                                        #   in Loop: Header=BB65_2 Depth=1
	movb	$0, -4112(%rbp)
	jmp	.LBB65_2
.LBB65_19:                              # %for.end
	movq	-16(%rbp), %rdi
	callq	fclose
	movl	%eax, -4216(%rbp)       # 4-byte Spill
.LBB65_20:                              # %if.end.49
	callq	unblock_input
	leaq	-4112(%rbp), %rdi
	callq	build_string
	addq	$4224, %rsp             # imm = 0x1080
	popq	%rbp
	retq
.Lfunc_end65:
	.size	procfs_ttyname, .Lfunc_end65-procfs_ttyname
	.cfi_endproc

	.align	16, 0x90
	.type	ltime_from_jiffies,@function
ltime_from_jiffies:                     # @ltime_from_jiffies
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp203:
	.cfi_def_cfa_offset 16
.Ltmp204:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp205:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	time_from_jiffies
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	make_lisp_time
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end66:
	.size	ltime_from_jiffies, .Lfunc_end66-ltime_from_jiffies
	.cfi_endproc

	.align	16, 0x90
	.type	get_up_time,@function
get_up_time:                            # @get_up_time
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp206:
	.cfi_def_cfa_offset 16
.Ltmp207:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp208:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$184, %rsp
.Ltmp209:
	.cfi_offset %rbx, -24
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	callq	make_timespec
	movq	%rax, -56(%rbp)
	movq	%rdx, -48(%rbp)
	callq	block_input
	movabsq	$.L.str.34, %rdi
	movabsq	$.L.str.31, %rsi
	callq	emacs_fopen
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB67_18
# BB#1:                                 # %if.then
	movabsq	$.L.str.35, %rsi
	leaq	-64(%rbp), %rdx
	leaq	-92(%rbp), %rcx
	leaq	-72(%rbp), %r8
	leaq	-96(%rbp), %r9
	leaq	-80(%rbp), %rax
	leaq	-100(%rbp), %rdi
	leaq	-88(%rbp), %r10
	leaq	-104(%rbp), %r11
	movq	-40(%rbp), %rbx
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, (%rsp)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r10, 16(%rsp)
	movq	%r11, 24(%rsp)
	movb	$0, %al
	callq	fscanf
	cmpl	$4, %eax
	jne	.LBB67_17
# BB#2:                                 # %if.then.3
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	cmpq	-64(%rbp), %rax
	jae	.LBB67_4
# BB#3:                                 # %if.then.5
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rax, -64(%rbp)
	movq	$999999999, -72(%rbp)   # imm = 0x3B9AC9FF
	jmp	.LBB67_16
.LBB67_4:                               # %if.else
	movl	-96(%rbp), %eax
	subl	-92(%rbp), %eax
	movl	%eax, -108(%rbp)
.LBB67_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$9, -108(%rbp)
	jge	.LBB67_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB67_5 Depth=1
	imulq	$10, -72(%rbp), %rax
	movq	%rax, -72(%rbp)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB67_5 Depth=1
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB67_5
.LBB67_8:                               # %for.end
	jmp	.LBB67_9
.LBB67_9:                               # %for.cond.7
                                        # =>This Inner Loop Header: Depth=1
	movl	$9, %eax
	cmpl	-108(%rbp), %eax
	jge	.LBB67_12
# BB#10:                                # %for.body.9
                                        #   in Loop: Header=BB67_9 Depth=1
	movl	$10, %eax
	movl	%eax, %ecx
	movq	-72(%rbp), %rax
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	divq	%rcx
	movq	%rax, -72(%rbp)
# BB#11:                                # %for.inc.10
                                        #   in Loop: Header=BB67_9 Depth=1
	movl	-108(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB67_9
.LBB67_12:                              # %for.end.11
	cmpq	$999999999, -72(%rbp)   # imm = 0x3B9AC9FF
	jae	.LBB67_14
# BB#13:                                # %cond.true
	movq	-72(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB67_15
.LBB67_14:                              # %cond.false
	movl	$999999999, %eax        # imm = 0x3B9AC9FF
	movl	%eax, %ecx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB67_15
.LBB67_15:                              # %cond.end
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
.LBB67_16:                              # %if.end
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	make_timespec
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB67_17:                              # %if.end.14
	movq	-40(%rbp), %rdi
	callq	fclose
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB67_18:                              # %if.end.16
	callq	unblock_input
	movups	-56(%rbp), %xmm0
	movaps	%xmm0, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end67:
	.size	get_up_time, .Lfunc_end67-get_up_time
	.cfi_endproc

	.align	16, 0x90
	.type	time_from_jiffies,@function
time_from_jiffies:                      # @time_from_jiffies
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
	subq	$80, %rsp
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rsi, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-32(%rbp)
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-32(%rbp)
	movq	%rdx, -48(%rbp)
	movq	-72(%rbp), %rdx         # 8-byte Reload
	cmpq	-40(%rbp), %rdx
	jae	.LBB68_2
# BB#1:                                 # %if.then
	callq	time_overflow
.LBB68_2:                               # %if.end
	movabsq	$18446744073, %rax      # imm = 0x44B82FA09
	cmpq	%rax, -48(%rbp)
	ja	.LBB68_4
# BB#3:                                 # %if.then.2
	imulq	$1000000000, -48(%rbp), %rax # imm = 0x3B9ACA00
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-32(%rbp)
	movl	%eax, %ecx
	movl	%ecx, -52(%rbp)
	jmp	.LBB68_5
.LBB68_4:                               # %if.else
	movl	$1000000000, %eax       # imm = 0x3B9ACA00
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	cqto
	idivq	%rcx
	movq	-32(%rbp), %rsi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rsi, %rax
	cqto
	idivq	%rcx
	cmpq	$0, %rdx
	setne	%dil
	andb	$1, %dil
	movzbl	%dil, %r8d
	movslq	%r8d, %rcx
	movq	-80(%rbp), %rdx         # 8-byte Reload
	addq	%rcx, %rdx
	movq	%rdx, -64(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, %rax
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	divq	-64(%rbp)
	movl	%eax, %r8d
	movl	%r8d, -52(%rbp)
.LBB68_5:                               # %if.end.11
	movq	-40(%rbp), %rdi
	movslq	-52(%rbp), %rsi
	callq	make_timespec
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end68:
	.size	time_from_jiffies, .Lfunc_end68-time_from_jiffies
	.cfi_endproc

	.align	16, 0x90
	.type	procfs_get_total_memory,@function
procfs_get_total_memory:                # @procfs_get_total_memory
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
	movq	$2097152, -16(%rbp)     # imm = 0x200000
	callq	block_input
	movabsq	$.L.str.36, %rdi
	movabsq	$.L.str.31, %rsi
	callq	emacs_fopen
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB69_14
# BB#1:                                 # %if.then
	jmp	.LBB69_2
.LBB69_2:                               # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB69_5 Depth 2
	movq	-8(%rbp), %rdi
	movl	$.L.str.37, %eax
	movl	%eax, %esi
	xorl	%eax, %eax
	movb	%al, %cl
	leaq	-32(%rbp), %rdx
	movb	%cl, %al
	callq	fscanf
	movl	%eax, %r8d
	testl	%eax, %eax
	movl	%r8d, -40(%rbp)         # 4-byte Spill
	je	.LBB69_4
	jmp	.LBB69_15
.LBB69_15:                              # %do.body
                                        #   in Loop: Header=BB69_2 Depth=1
	movl	-40(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jne	.LBB69_10
	jmp	.LBB69_3
.LBB69_3:                               # %sw.bb
                                        #   in Loop: Header=BB69_2 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movb	$1, -33(%rbp)
	jmp	.LBB69_11
.LBB69_4:                               # %sw.bb.3
                                        #   in Loop: Header=BB69_2 Depth=1
	jmp	.LBB69_5
.LBB69_5:                               # %while.cond
                                        #   Parent Loop BB69_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, -20(%rbp)
	cmpl	$-1, %eax
	movb	%dl, -45(%rbp)          # 1-byte Spill
	je	.LBB69_7
# BB#6:                                 # %land.rhs
                                        #   in Loop: Header=BB69_5 Depth=2
	cmpl	$10, -20(%rbp)
	setne	%al
	movb	%al, -45(%rbp)          # 1-byte Spill
.LBB69_7:                               # %land.end
                                        #   in Loop: Header=BB69_5 Depth=2
	movb	-45(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB69_8
	jmp	.LBB69_9
.LBB69_8:                               # %while.body
                                        #   in Loop: Header=BB69_5 Depth=2
	jmp	.LBB69_5
.LBB69_9:                               # %while.end
                                        #   in Loop: Header=BB69_2 Depth=1
	cmpl	$-1, -20(%rbp)
	sete	%al
	andb	$1, %al
	movb	%al, -33(%rbp)
	jmp	.LBB69_11
.LBB69_10:                              # %sw.default
                                        #   in Loop: Header=BB69_2 Depth=1
	movb	$1, -33(%rbp)
.LBB69_11:                              # %sw.epilog
                                        #   in Loop: Header=BB69_2 Depth=1
	jmp	.LBB69_12
.LBB69_12:                              # %do.cond
                                        #   in Loop: Header=BB69_2 Depth=1
	movb	-33(%rbp), %al
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB69_2
# BB#13:                                # %do.end
	movq	-8(%rbp), %rdi
	callq	fclose
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB69_14:                              # %if.end
	callq	unblock_input
	movq	-16(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end69:
	.size	procfs_get_total_memory, .Lfunc_end69-procfs_get_total_memory
	.cfi_endproc

	.globl	str_collate
	.align	16, 0x90
	.type	str_collate,@function
str_collate:                            # @str_collate
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
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	$16384, -88(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -96(%rbp)
	movb	$0, -97(%rbp)
	movq	-8(%rbp), %rdi
	callq	SCHARS
	movq	%rax, -48(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
# BB#1:                                 # %do.body
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	-88(%rbp), %rcx
	shrq	$2, %rcx
	shrq	$0, %rcx
	cmpq	%rcx, %rax
	ja	.LBB70_3
# BB#2:                                 # %if.then
	movq	-48(%rbp), %rax
	leaq	4(,%rax,4), %rax
	movq	-88(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -88(%rbp)
	movq	-48(%rbp), %rax
	leaq	19(,%rax,4), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -72(%rbp)
	jmp	.LBB70_4
.LBB70_3:                               # %if.else
	movl	$4, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, %rdi
	callq	xnmalloc
	movabsq	$xfree, %rdi
	movq	%rax, -72(%rbp)
	movb	$1, -97(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
.LBB70_4:                               # %if.end
	jmp	.LBB70_5
.LBB70_5:                               # %do.end
	jmp	.LBB70_6
.LBB70_6:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jge	.LBB70_22
# BB#7:                                 # %while.body
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_8
.LBB70_8:                               # %do.body.9
                                        #   in Loop: Header=BB70_6 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB70_9
	jmp	.LBB70_19
.LBB70_9:                               # %if.then.11
                                        #   in Loop: Header=BB70_6 Depth=1
	movq	-64(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	-184(%rbp), %rdi        # 8-byte Reload
	addq	%rdi, %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB70_11
# BB#10:                                # %cond.true
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	$1, -116(%rbp)
	movq	-112(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	jmp	.LBB70_18
.LBB70_11:                              # %cond.false
                                        #   in Loop: Header=BB70_6 Depth=1
	movq	-112(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB70_13
# BB#12:                                # %cond.true.20
                                        #   in Loop: Header=BB70_6 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -116(%rbp)
	movq	-112(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-112(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-112(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -192(%rbp)        # 4-byte Spill
	jmp	.LBB70_17
.LBB70_13:                              # %cond.false.32
                                        #   in Loop: Header=BB70_6 Depth=1
	movq	-112(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB70_15
# BB#14:                                # %cond.true.37
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	$3, -116(%rbp)
	movq	-112(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-112(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-112(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -196(%rbp)        # 4-byte Spill
	jmp	.LBB70_16
.LBB70_15:                              # %cond.false.51
                                        #   in Loop: Header=BB70_6 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-116(%rbp), %rdx
	movq	-112(%rbp), %rdi
	callq	string_char
	movl	%eax, -196(%rbp)        # 4-byte Spill
.LBB70_16:                              # %cond.end
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-196(%rbp), %eax        # 4-byte Reload
	movl	%eax, -192(%rbp)        # 4-byte Spill
.LBB70_17:                              # %cond.end.54
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-192(%rbp), %eax        # 4-byte Reload
	movl	%eax, -188(%rbp)        # 4-byte Spill
.LBB70_18:                              # %cond.end.56
                                        #   in Loop: Header=BB70_6 Depth=1
	movl	-188(%rbp), %eax        # 4-byte Reload
	movq	-72(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movl	%eax, -4(%rcx,%rdx,4)
	movslq	-116(%rbp), %rcx
	addq	-64(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	jmp	.LBB70_20
.LBB70_19:                              # %if.else.61
                                        #   in Loop: Header=BB70_6 Depth=1
	movq	-8(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	SREF
	movzbl	%al, %ecx
	movq	-72(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movl	%ecx, -4(%rsi,%rdi,4)
	movq	-64(%rbp), %rsi
	addq	$1, %rsi
	movq	%rsi, -64(%rbp)
.LBB70_20:                              # %if.end.67
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_21
.LBB70_21:                              # %do.end.68
                                        #   in Loop: Header=BB70_6 Depth=1
	jmp	.LBB70_6
.LBB70_22:                              # %while.end
	movq	-72(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	$0, (%rax,%rcx,4)
	movq	-16(%rbp), %rdi
	callq	SCHARS
	movq	%rax, -48(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
# BB#23:                                # %do.body.71
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	-88(%rbp), %rcx
	shrq	$2, %rcx
	shrq	$0, %rcx
	cmpq	%rcx, %rax
	ja	.LBB70_25
# BB#24:                                # %if.then.77
	movq	-48(%rbp), %rax
	leaq	4(,%rax,4), %rax
	movq	-88(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -88(%rbp)
	movq	-48(%rbp), %rax
	leaq	19(,%rax,4), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -80(%rbp)
	jmp	.LBB70_26
.LBB70_25:                              # %if.else.83
	movl	$4, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, %rdi
	callq	xnmalloc
	movabsq	$xfree, %rdi
	movq	%rax, -80(%rbp)
	movb	$1, -97(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
.LBB70_26:                              # %if.end.86
	jmp	.LBB70_27
.LBB70_27:                              # %do.end.87
	jmp	.LBB70_28
.LBB70_28:                              # %while.cond.88
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jge	.LBB70_44
# BB#29:                                # %while.body.91
                                        #   in Loop: Header=BB70_28 Depth=1
	jmp	.LBB70_30
.LBB70_30:                              # %do.body.92
                                        #   in Loop: Header=BB70_28 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB70_31
	jmp	.LBB70_41
.LBB70_31:                              # %if.then.95
                                        #   in Loop: Header=BB70_28 Depth=1
	movq	-64(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	-208(%rbp), %rdi        # 8-byte Reload
	addq	%rdi, %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB70_33
# BB#32:                                # %cond.true.104
                                        #   in Loop: Header=BB70_28 Depth=1
	movl	$1, -132(%rbp)
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -212(%rbp)        # 4-byte Spill
	jmp	.LBB70_40
.LBB70_33:                              # %cond.false.107
                                        #   in Loop: Header=BB70_28 Depth=1
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB70_35
# BB#34:                                # %cond.true.112
                                        #   in Loop: Header=BB70_28 Depth=1
	xorl	%eax, %eax
	movl	$4194176, %ecx          # imm = 0x3FFF80
	movl	$2, -132(%rbp)
	movq	-128(%rbp), %rdx
	movzbl	(%rdx), %esi
	andl	$31, %esi
	shll	$6, %esi
	movq	-128(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$63, %edi
	orl	%edi, %esi
	movq	-128(%rbp), %rdx
	movzbl	(%rdx), %edi
	cmpl	$194, %edi
	cmovll	%ecx, %eax
	addl	%eax, %esi
	movl	%esi, -216(%rbp)        # 4-byte Spill
	jmp	.LBB70_39
.LBB70_35:                              # %cond.false.127
                                        #   in Loop: Header=BB70_28 Depth=1
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB70_37
# BB#36:                                # %cond.true.132
                                        #   in Loop: Header=BB70_28 Depth=1
	movl	$3, -132(%rbp)
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-128(%rbp), %rax
	movzbl	1(%rax), %edx
	andl	$63, %edx
	shll	$6, %edx
	orl	%edx, %ecx
	movq	-128(%rbp), %rax
	movzbl	2(%rax), %edx
	andl	$63, %edx
	orl	%edx, %ecx
	movl	%ecx, -220(%rbp)        # 4-byte Spill
	jmp	.LBB70_38
.LBB70_37:                              # %cond.false.146
                                        #   in Loop: Header=BB70_28 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-132(%rbp), %rdx
	movq	-128(%rbp), %rdi
	callq	string_char
	movl	%eax, -220(%rbp)        # 4-byte Spill
.LBB70_38:                              # %cond.end.148
                                        #   in Loop: Header=BB70_28 Depth=1
	movl	-220(%rbp), %eax        # 4-byte Reload
	movl	%eax, -216(%rbp)        # 4-byte Spill
.LBB70_39:                              # %cond.end.150
                                        #   in Loop: Header=BB70_28 Depth=1
	movl	-216(%rbp), %eax        # 4-byte Reload
	movl	%eax, -212(%rbp)        # 4-byte Spill
.LBB70_40:                              # %cond.end.152
                                        #   in Loop: Header=BB70_28 Depth=1
	movl	-212(%rbp), %eax        # 4-byte Reload
	movq	-80(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movl	%eax, -4(%rcx,%rdx,4)
	movslq	-132(%rbp), %rcx
	addq	-64(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	jmp	.LBB70_42
.LBB70_41:                              # %if.else.158
                                        #   in Loop: Header=BB70_28 Depth=1
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	SREF
	movzbl	%al, %ecx
	movq	-80(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movl	%ecx, -4(%rsi,%rdi,4)
	movq	-64(%rbp), %rsi
	addq	$1, %rsi
	movq	%rsi, -64(%rbp)
.LBB70_42:                              # %if.end.164
                                        #   in Loop: Header=BB70_28 Depth=1
	jmp	.LBB70_43
.LBB70_43:                              # %do.end.165
                                        #   in Loop: Header=BB70_28 Depth=1
	jmp	.LBB70_28
.LBB70_44:                              # %while.end.166
	movq	-80(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	$0, (%rax,%rcx,4)
	movq	-24(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB70_45
	jmp	.LBB70_61
.LBB70_45:                              # %if.then.169
	movq	-24(%rbp), %rdi
	callq	SSDATA
	movl	$9, %edi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rsi
	callq	newlocale
	movq	%rax, -144(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB70_47
# BB#46:                                # %if.then.173
	movq	-24(%rbp), %rdi
	callq	SSDATA
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movabsq	$.L.str.28, %rdi
	movq	-232(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	error
.LBB70_47:                              # %if.end.177
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB70_60
# BB#48:                                # %if.then.181
	movl	$1, -148(%rbp)
.LBB70_49:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB70_54 Depth 2
	cmpl	$3, -148(%rbp)
	jge	.LBB70_59
# BB#50:                                # %for.body
                                        #   in Loop: Header=BB70_49 Depth=1
	cmpl	$1, -148(%rbp)
	jne	.LBB70_52
# BB#51:                                # %cond.true.187
                                        #   in Loop: Header=BB70_49 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB70_53
.LBB70_52:                              # %cond.false.188
                                        #   in Loop: Header=BB70_49 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB70_53:                              # %cond.end.189
                                        #   in Loop: Header=BB70_49 Depth=1
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	%rax, -160(%rbp)
.LBB70_54:                              # %for.cond.191
                                        #   Parent Loop BB70_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-160(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB70_57
# BB#55:                                # %for.body.193
                                        #   in Loop: Header=BB70_54 Depth=2
	movq	-160(%rbp), %rax
	movl	(%rax), %edi
	movq	-144(%rbp), %rsi
	callq	towlower_l
	movq	-160(%rbp), %rsi
	movl	%eax, (%rsi)
# BB#56:                                # %for.inc
                                        #   in Loop: Header=BB70_54 Depth=2
	movq	-160(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -160(%rbp)
	jmp	.LBB70_54
.LBB70_57:                              # %for.end
                                        #   in Loop: Header=BB70_49 Depth=1
	jmp	.LBB70_58
.LBB70_58:                              # %for.inc.195
                                        #   in Loop: Header=BB70_49 Depth=1
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB70_49
.LBB70_59:                              # %for.end.197
	jmp	.LBB70_60
.LBB70_60:                              # %if.end.198
	callq	__errno_location
	movl	$0, (%rax)
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-144(%rbp), %rdx
	callq	wcscoll_l
	movl	%eax, -36(%rbp)
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -40(%rbp)
	movq	-144(%rbp), %rdi
	callq	freelocale
	jmp	.LBB70_75
.LBB70_61:                              # %if.else.202
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB70_74
# BB#62:                                # %if.then.206
	movl	$1, -164(%rbp)
.LBB70_63:                              # %for.cond.208
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB70_68 Depth 2
	cmpl	$3, -164(%rbp)
	jge	.LBB70_73
# BB#64:                                # %for.body.211
                                        #   in Loop: Header=BB70_63 Depth=1
	cmpl	$1, -164(%rbp)
	jne	.LBB70_66
# BB#65:                                # %cond.true.215
                                        #   in Loop: Header=BB70_63 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	jmp	.LBB70_67
.LBB70_66:                              # %cond.false.216
                                        #   in Loop: Header=BB70_63 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
.LBB70_67:                              # %cond.end.217
                                        #   in Loop: Header=BB70_63 Depth=1
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	%rax, -176(%rbp)
.LBB70_68:                              # %for.cond.219
                                        #   Parent Loop BB70_63 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-176(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB70_71
# BB#69:                                # %for.body.221
                                        #   in Loop: Header=BB70_68 Depth=2
	movq	-176(%rbp), %rax
	movl	(%rax), %edi
	callq	towlower
	movq	-176(%rbp), %rcx
	movl	%eax, (%rcx)
# BB#70:                                # %for.inc.223
                                        #   in Loop: Header=BB70_68 Depth=2
	movq	-176(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -176(%rbp)
	jmp	.LBB70_68
.LBB70_71:                              # %for.end.225
                                        #   in Loop: Header=BB70_63 Depth=1
	jmp	.LBB70_72
.LBB70_72:                              # %for.inc.226
                                        #   in Loop: Header=BB70_63 Depth=1
	movl	-164(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -164(%rbp)
	jmp	.LBB70_63
.LBB70_73:                              # %for.end.228
	jmp	.LBB70_74
.LBB70_74:                              # %if.end.229
	callq	__errno_location
	movl	$0, (%rax)
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	wcscoll
	movl	%eax, -36(%rbp)
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -40(%rbp)
.LBB70_75:                              # %if.end.233
	cmpl	$0, -40(%rbp)
	je	.LBB70_77
# BB#76:                                # %if.then.235
	movl	-40(%rbp), %edi
	callq	strerror
	movabsq	$.L.str.29, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB70_77:                              # %if.end.237
	jmp	.LBB70_78
.LBB70_78:                              # %do.body.238
	testb	$1, -97(%rbp)
	je	.LBB70_80
# BB#79:                                # %if.then.240
	xorl	%edi, %edi
	movb	$0, -97(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -280(%rbp)        # 8-byte Spill
.LBB70_80:                              # %if.end.243
	jmp	.LBB70_81
.LBB70_81:                              # %do.end.244
	movl	-36(%rbp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end70:
	.size	str_collate, .Lfunc_end70-str_collate
	.cfi_endproc

	.align	16, 0x90
	.type	tcsetpgrp_without_stopping,@function
tcsetpgrp_without_stopping:             # @tcsetpgrp_without_stopping
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
	subq	$144, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	callq	block_input
	leaq	-136(%rbp), %rdi
	callq	block_tty_out_signal
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	tcsetpgrp
	leaq	-136(%rbp), %rdi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	unblock_tty_out_signal
	callq	unblock_input
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end71:
	.size	tcsetpgrp_without_stopping, .Lfunc_end71-tcsetpgrp_without_stopping
	.cfi_endproc

	.align	16, 0x90
	.type	handle_fatal_signal,@function
handle_fatal_signal:                    # @handle_fatal_signal
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
	subq	$16, %rsp
	movl	$40, %esi
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	terminate_due_to_signal
.Lfunc_end72:
	.size	handle_fatal_signal, .Lfunc_end72-handle_fatal_signal
	.cfi_endproc

	.align	16, 0x90
	.type	deliver_thread_signal,@function
deliver_thread_signal:                  # @deliver_thread_signal
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
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	callq	__errno_location
	movl	(%rax), %edi
	movl	%edi, -20(%rbp)
	callq	pthread_self
	movq	main_thread, %rsi
	movq	%rax, %rdi
	callq	pthread_equal
	cmpl	$0, %eax
	jne	.LBB73_3
# BB#1:                                 # %if.then
	movabsq	$thread_backtrace_buffer, %rdi
	movl	$500, %esi              # imm = 0x1F4
	callq	backtrace
	movabsq	$process_fatal_action, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	%eax, thread_backtrace_npointers
	movl	-4(%rbp), %edi
	callq	sigaction
	movq	main_thread, %rdi
	movl	-4(%rbp), %esi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	callq	pthread_kill
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB73_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movabsq	$empty_mask, %rdi
	callq	sigsuspend
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jmp	.LBB73_2
.LBB73_3:                               # %if.end
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %edi
	callq	*%rax
	movl	-20(%rbp), %edi
	movl	%edi, -36(%rbp)         # 4-byte Spill
	callq	__errno_location
	movl	-36(%rbp), %edi         # 4-byte Reload
	movl	%edi, (%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end73:
	.size	deliver_thread_signal, .Lfunc_end73-deliver_thread_signal
	.cfi_endproc

	.align	16, 0x90
	.type	handle_sigsegv,@function
handle_sigsegv:                         # @handle_sigsegv
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
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movb	gc_in_progress, %al
	andb	$1, %al
	movb	%al, -25(%rbp)
	testb	$1, -25(%rbp)
	jne	.LBB74_3
# BB#1:                                 # %land.lhs.true
	callq	pthread_self
	movq	main_thread, %rsi
	movq	%rax, %rdi
	callq	pthread_equal
	cmpl	$0, %eax
	jne	.LBB74_3
# BB#2:                                 # %if.then
	movb	$1, -25(%rbp)
.LBB74_3:                               # %if.end
	testb	$1, -25(%rbp)
	jne	.LBB74_6
# BB#4:                                 # %land.lhs.true.5
	movq	-16(%rbp), %rdi
	callq	stack_overflow
	testb	$1, %al
	jne	.LBB74_5
	jmp	.LBB74_6
.LBB74_5:                               # %if.then.7
	movabsq	$return_to_command_loop, %rdi
	movl	$1, %esi
	callq	siglongjmp
.LBB74_6:                               # %if.end.8
	movl	-4(%rbp), %edi
	callq	deliver_fatal_thread_signal
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end74:
	.size	handle_sigsegv, .Lfunc_end74-handle_sigsegv
	.cfi_endproc

	.align	16, 0x90
	.type	stack_overflow,@function
stack_overflow:                         # @stack_overflow
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB75_2
# BB#1:                                 # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB75_11
.LBB75_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB75_4
# BB#3:                                 # %if.then.2
	movb	$0, -1(%rbp)
	jmp	.LBB75_11
.LBB75_4:                               # %if.end.3
	movq	stack_bottom, %rax
	movq	%rax, -32(%rbp)
	callq	near_C_stack_top
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jae	.LBB75_8
# BB#5:                                 # %if.then.4
	xorl	%eax, %eax
	movb	%al, %cl
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdi
	subq	%rdi, %rsi
	cmpq	%rsi, %rdx
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jg	.LBB75_7
# BB#6:                                 # %land.rhs
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	subq	%rdx, %rcx
	sarq	$8, %rcx
	cmpq	%rcx, %rax
	setl	%sil
	movb	%sil, -41(%rbp)         # 1-byte Spill
.LBB75_7:                               # %land.end
	movb	-41(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movb	%al, -1(%rbp)
	jmp	.LBB75_11
.LBB75_8:                               # %if.else
	xorl	%eax, %eax
	movb	%al, %cl
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rdi
	subq	%rdi, %rsi
	cmpq	%rsi, %rdx
	movb	%cl, -42(%rbp)          # 1-byte Spill
	jg	.LBB75_10
# BB#9:                                 # %land.rhs.17
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rdx
	subq	%rdx, %rcx
	sarq	$8, %rcx
	cmpq	%rcx, %rax
	setl	%sil
	movb	%sil, -42(%rbp)         # 1-byte Spill
.LBB75_10:                              # %land.end.26
	movb	-42(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movb	%al, -1(%rbp)
.LBB75_11:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end75:
	.size	stack_overflow, .Lfunc_end75-stack_overflow
	.cfi_endproc

	.type	baud_convert,@object    # @baud_convert
	.section	.rodata,"a",@progbits
	.align	16
baud_convert:
	.long	0                       # 0x0
	.long	50                      # 0x32
	.long	75                      # 0x4b
	.long	110                     # 0x6e
	.long	135                     # 0x87
	.long	150                     # 0x96
	.long	200                     # 0xc8
	.long	300                     # 0x12c
	.long	600                     # 0x258
	.long	1200                    # 0x4b0
	.long	1800                    # 0x708
	.long	2400                    # 0x960
	.long	4800                    # 0x12c0
	.long	9600                    # 0x2580
	.long	19200                   # 0x4b00
	.long	38400                   # 0x9600
	.size	baud_convert, 64

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Can't spawn subshell"
	.size	.L.str, 21

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"SHELL"
	.size	.L.str.1, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"sh"
	.size	.L.str.2, 3

	.type	old_fcntl_flags,@object # @old_fcntl_flags
	.local	old_fcntl_flags
	.comm	old_fcntl_flags,4096,16
	.type	inherited_pgroup,@object # @inherited_pgroup
	.local	inherited_pgroup
	.comm	inherited_pgroup,4,4
	.type	old_fcntl_owner,@object # @old_fcntl_owner
	.local	old_fcntl_owner
	.comm	old_fcntl_owner,4096,16
	.type	_sobuf,@object          # @_sobuf
	.comm	_sobuf,8200,16
	.type	main_thread,@object     # @main_thread
	.local	main_thread
	.comm	main_thread,8,8
	.type	empty_mask,@object      # @empty_mask
	.comm	empty_mask,128,8
	.type	process_fatal_action,@object # @process_fatal_action
	.local	process_fatal_action
	.comm	process_fatal_action,152,8
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"sigusr1"
	.size	.L.str.3, 8

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"sigusr2"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"/dev/urandom"
	.size	.L.str.5, 13

	.type	thread_backtrace_npointers,@object # @thread_backtrace_npointers
	.local	thread_backtrace_npointers
	.comm	thread_backtrace_npointers,4,4
	.type	thread_backtrace_buffer,@object # @thread_backtrace_buffer
	.local	thread_backtrace_buffer
	.comm	thread_backtrace_buffer,4008,16
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"\nBacktrace:\n"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"...\n"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"emacs"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%s: %s: %s\n"
	.size	.L.str.9, 12

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	": "
	.size	.L.str.10, 3

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"\n"
	.size	.L.str.11, 2

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Unknown signal"
	.size	.L.str.12, 15

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Opening serial port"
	.size	.L.str.13, 20

	.type	.Lserial_configure.summary,@object # @serial_configure.summary
.Lserial_configure.summary:
	.asciz	"???"
	.size	.Lserial_configure.summary, 4

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Failed tcgetattr"
	.size	.L.str.14, 17

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Failed cfsetspeed"
	.size	.L.str.15, 18

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	":bytesize must be nil (8), 7, or 8"
	.size	.L.str.16, 35

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	":parity must be nil (no parity), `even', or `odd'"
	.size	.L.str.17, 50

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	":stopbits must be nil (1 stopbit), 1, or 2"
	.size	.L.str.18, 43

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	":flowcontrol must be nil (no flowcontrol), `hw', or `sw'"
	.size	.L.str.19, 57

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Failed tcsetattr"
	.size	.L.str.20, 17

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"/proc"
	.size	.L.str.21, 6

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"[0-9]+"
	.size	.L.str.22, 7

	.type	system_process_attributes.default_cmd,@object # @system_process_attributes.default_cmd
	.section	.rodata,"a",@progbits
system_process_attributes.default_cmd:
	.asciz	"???"
	.size	system_process_attributes.default_cmd, 4

	.type	.L.str.23,@object       # @.str.23
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.23:
	.asciz	"/proc/%ld"
	.size	.L.str.23, 10

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"/stat"
	.size	.L.str.24, 6

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"%c %d %d %d %d %d %*u %lu %lu %lu %lu %Lu %Lu %Lu %Lu %ld %ld %d %*d %Lu %lu %ld"
	.size	.L.str.25, 81

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"/cmdline"
	.size	.L.str.26, 9

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"[%.*s]"
	.size	.L.str.27, 7

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Invalid locale %s: %s"
	.size	.L.str.28, 22

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Invalid string for collation: %s"
	.size	.L.str.29, 33

	.type	sigsegv_stack,@object   # @sigsegv_stack
	.local	sigsegv_stack
	.comm	sigsegv_stack,8192,16
	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"/proc/tty/drivers"
	.size	.L.str.30, 18

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"r"
	.size	.L.str.31, 2

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"%*s %s %u %s %*s\n"
	.size	.L.str.32, 18

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"%u"
	.size	.L.str.33, 3

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"/proc/uptime"
	.size	.L.str.34, 13

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"%llu.%n%llu%n %llu.%n%llu%n"
	.size	.L.str.35, 28

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"/proc/meminfo"
	.size	.L.str.36, 14

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"MemTotal: %lu"
	.size	.L.str.37, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
