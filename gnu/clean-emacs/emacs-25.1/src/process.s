	.text
	.file	"process.bc"
	.globl	add_read_fd
	.align	16, 0x90
	.type	add_read_fd,@function
add_read_fd:                            # @add_read_fd
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
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-4(%rbp), %edi
	callq	add_keyboard_wait_descriptor
	movabsq	$fd_callback_info, %rdx
	movq	-16(%rbp), %rsi
	movslq	-4(%rbp), %rax
	imulq	$24, %rax, %rax
	movq	%rdx, %rcx
	addq	%rax, %rcx
	movq	%rsi, (%rcx)
	movq	-24(%rbp), %rax
	movslq	-4(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	movq	%rdx, %rsi
	addq	%rcx, %rsi
	movq	%rax, 8(%rsi)
	movslq	-4(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	%rax, %rdx
	movl	16(%rdx), %edi
	orl	$1, %edi
	movl	%edi, 16(%rdx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	add_read_fd, .Lfunc_end0-add_read_fd
	.cfi_endproc

	.globl	add_keyboard_wait_descriptor
	.align	16, 0x90
	.type	add_keyboard_wait_descriptor,@function
add_keyboard_wait_descriptor:           # @add_keyboard_wait_descriptor
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
	movabsq	$input_wait_mask, %rsi
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	fd_SET
	movabsq	$non_process_wait_mask, %rsi
	movl	-4(%rbp), %edi
	callq	fd_SET
	movl	-4(%rbp), %edi
	cmpl	max_input_desc, %edi
	jle	.LBB1_2
# BB#1:                                 # %if.then
	movl	-4(%rbp), %eax
	movl	%eax, max_input_desc
.LBB1_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	add_keyboard_wait_descriptor, .Lfunc_end1-add_keyboard_wait_descriptor
	.cfi_endproc

	.globl	delete_read_fd
	.align	16, 0x90
	.type	delete_read_fd,@function
delete_read_fd:                         # @delete_read_fd
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
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	delete_keyboard_wait_descriptor
	movabsq	$fd_callback_info, %rax
	movslq	-4(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movl	16(%rdx), %edi
	andl	$-2, %edi
	movl	%edi, 16(%rdx)
	movslq	-4(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$0, 16(%rax)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movabsq	$fd_callback_info, %rax
	movslq	-4(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movq	$0, (%rdx)
	movslq	-4(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	$0, 8(%rax)
.LBB2_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	delete_read_fd, .Lfunc_end2-delete_read_fd
	.cfi_endproc

	.globl	delete_keyboard_wait_descriptor
	.align	16, 0x90
	.type	delete_keyboard_wait_descriptor,@function
delete_keyboard_wait_descriptor:        # @delete_keyboard_wait_descriptor
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
	movabsq	$input_wait_mask, %rsi
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	fd_CLR
	movabsq	$non_process_wait_mask, %rsi
	movl	-4(%rbp), %edi
	callq	fd_CLR
	movl	-4(%rbp), %edi
	callq	delete_input_desc
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	delete_keyboard_wait_descriptor, .Lfunc_end3-delete_keyboard_wait_descriptor
	.cfi_endproc

	.globl	add_write_fd
	.align	16, 0x90
	.type	add_write_fd,@function
add_write_fd:                           # @add_write_fd
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
	movabsq	$write_mask, %rax
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-4(%rbp), %edi
	movq	%rax, %rsi
	callq	fd_SET
	movl	-4(%rbp), %edi
	cmpl	max_input_desc, %edi
	jle	.LBB4_2
# BB#1:                                 # %if.then
	movl	-4(%rbp), %eax
	movl	%eax, max_input_desc
.LBB4_2:                                # %if.end
	movabsq	$fd_callback_info, %rax
	movq	-16(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movq	%rcx, (%rsi)
	movq	-24(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movq	%rcx, 8(%rsi)
	movslq	-4(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movl	16(%rax), %edi
	orl	$2, %edi
	movl	%edi, 16(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	add_write_fd, .Lfunc_end4-add_write_fd
	.cfi_endproc

	.globl	delete_write_fd
	.align	16, 0x90
	.type	delete_write_fd,@function
delete_write_fd:                        # @delete_write_fd
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
	movabsq	$write_mask, %rsi
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	fd_CLR
	movabsq	$fd_callback_info, %rsi
	movslq	-4(%rbp), %rax
	imulq	$24, %rax, %rax
	movq	%rsi, %rcx
	addq	%rax, %rcx
	movl	16(%rcx), %edi
	andl	$-3, %edi
	movl	%edi, 16(%rcx)
	movslq	-4(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	%rax, %rsi
	cmpl	$0, 16(%rsi)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movabsq	$fd_callback_info, %rax
	movslq	-4(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movq	$0, (%rdx)
	movslq	-4(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	$0, 8(%rax)
	movl	-4(%rbp), %edi
	callq	delete_input_desc
.LBB5_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	delete_write_fd, .Lfunc_end5-delete_write_fd
	.cfi_endproc

	.align	16, 0x90
	.type	delete_input_desc,@function
delete_input_desc:                      # @delete_input_desc
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
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	cmpl	max_input_desc, %edi
	jne	.LBB6_9
# BB#1:                                 # %if.then
	jmp	.LBB6_2
.LBB6_2:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -4(%rbp)
# BB#3:                                 # %do.cond
                                        #   in Loop: Header=BB6_2 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	xorl	%eax, %eax
	cmpl	-4(%rbp), %eax
	movb	%cl, -5(%rbp)           # 1-byte Spill
	jg	.LBB6_7
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB6_2 Depth=1
	movabsq	$input_wait_mask, %rsi
	movl	-4(%rbp), %edi
	callq	fd_ISSET
	movb	$1, %cl
	testb	$1, %al
	movb	%cl, -6(%rbp)           # 1-byte Spill
	jne	.LBB6_6
# BB#5:                                 # %lor.rhs
                                        #   in Loop: Header=BB6_2 Depth=1
	movabsq	$write_mask, %rsi
	movl	-4(%rbp), %edi
	callq	fd_ISSET
	movb	%al, -6(%rbp)           # 1-byte Spill
.LBB6_6:                                # %lor.end
                                        #   in Loop: Header=BB6_2 Depth=1
	movb	-6(%rbp), %al           # 1-byte Reload
	xorb	$-1, %al
	movb	%al, -5(%rbp)           # 1-byte Spill
.LBB6_7:                                # %land.end
                                        #   in Loop: Header=BB6_2 Depth=1
	movb	-5(%rbp), %al           # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_2
# BB#8:                                 # %do.end
	movl	-4(%rbp), %eax
	movl	%eax, max_input_desc
.LBB6_9:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	delete_input_desc, .Lfunc_end6-delete_input_desc
	.cfi_endproc

	.globl	Fprocessp
	.align	16, 0x90
	.type	Fprocessp,@function
Fprocessp:                              # @Fprocessp
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
	callq	PROCESSP
	testb	$1, %al
	jne	.LBB7_1
	jmp	.LBB7_2
.LBB7_1:                                # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB7_3
.LBB7_2:                                # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB7_3:                                # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	Fprocessp, .Lfunc_end7-Fprocessp
	.cfi_endproc

	.globl	Fget_process
	.align	16, 0x90
	.type	Fget_process,@function
Fget_process:                           # @Fget_process
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	PROCESSP
	testb	$1, %al
	jne	.LBB8_1
	jmp	.LBB8_2
.LBB8_1:                                # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB8_3
.LBB8_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	movq	-16(%rbp), %rdi
	movq	Vprocess_alist, %rsi
	callq	Fassoc
	movq	%rax, %rdi
	callq	Fcdr
	movq	%rax, -8(%rbp)
.LBB8_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	Fget_process, .Lfunc_end8-Fget_process
	.cfi_endproc

	.globl	record_deleted_pid
	.align	16, 0x90
	.type	record_deleted_pid,@function
record_deleted_pid:                     # @record_deleted_pid
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
	xorl	%eax, %eax
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	-4(%rbp), %eax
	jle	.LBB9_2
# BB#1:                                 # %lor.lhs.false
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	movslq	-4(%rbp), %rcx
	cmpq	%rcx, %rax
	jg	.LBB9_3
.LBB9_2:                                # %land.lhs.true
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movslq	-4(%rbp), %rcx
	cmpq	%rax, %rcx
	jle	.LBB9_4
.LBB9_3:                                # %cond.true
	cvtsi2sdl	-4(%rbp), %xmm0
	callq	make_float
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB9_5
.LBB9_4:                                # %cond.false
	movslq	-4(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB9_5:                                # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	deleted_pid_list, %rsi
	movq	%rax, %rdi
	callq	Fdelq
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	%rax, deleted_pid_list
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	record_deleted_pid, .Lfunc_end9-record_deleted_pid
	.cfi_endproc

	.globl	Fdelete_process
	.align	16, 0x90
	.type	Fdelete_process,@function
Fdelete_process:                        # @Fdelete_process
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	get_process
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	XPROCESS
	movl	$699, %edi              # imm = 0x2BB
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movb	224(%rax), %cl
	andb	$127, %cl
	movb	%cl, 224(%rax)
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB10_3
# BB#1:                                 # %lor.lhs.false
	movl	$845, %edi              # imm = 0x34D
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB10_3
# BB#2:                                 # %lor.lhs.false.6
	movl	$750, %edi              # imm = 0x2EE
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB10_4
.LBB10_3:                               # %if.then
	movl	$387, %edi              # imm = 0x183
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	%edi, %esi
	movq	%rax, %rdi
	callq	list2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_status
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	process_tick, %rax
	addq	$1, %rax
	movq	%rax, process_tick
	movq	-16(%rbp), %rdi
	movq	%rax, 200(%rdi)
	movq	-16(%rbp), %rdi
	callq	status_notify
	movl	$13, %edi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	redisplay_preserve_echo_area
	jmp	.LBB10_17
.LBB10_4:                               # %if.else
	movq	-16(%rbp), %rax
	movb	224(%rax), %cl
	shrb	$6, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB10_6
# BB#5:                                 # %if.then.15
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	record_kill_process
.LBB10_6:                               # %if.end
	movq	-16(%rbp), %rax
	cmpl	$0, 164(%rax)
	jl	.LBB10_16
# BB#7:                                 # %if.then.18
	movq	-16(%rbp), %rax
	movb	224(%rax), %cl
	shrb	$7, %cl
	testb	$1, %cl
	je	.LBB10_9
# BB#8:                                 # %if.then.23
	movq	-16(%rbp), %rdi
	callq	update_status
.LBB10_9:                               # %if.end.24
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB10_11
# BB#10:                                # %cond.true
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB10_12
.LBB10_11:                              # %cond.false
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB10_12:                              # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	$862, %edi              # imm = 0x35E
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB10_15
# BB#13:                                # %lor.lhs.false.32
	movl	$387, %edi              # imm = 0x183
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB10_15
# BB#14:                                # %if.then.36
	movl	$862, %edi              # imm = 0x35E
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$38, %edi
	movl	%edi, %esi
	movq	%rax, %rdi
	callq	list2
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_status
.LBB10_15:                              # %if.end.39
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	process_tick, %rcx
	addq	$1, %rcx
	movq	%rcx, process_tick
	movq	-16(%rbp), %rdx
	movq	%rcx, 200(%rdx)
	movq	-16(%rbp), %rdi
	callq	status_notify
	movl	$13, %edi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	redisplay_preserve_echo_area
.LBB10_16:                              # %if.end.43
	jmp	.LBB10_17
.LBB10_17:                              # %if.end.44
	movq	-8(%rbp), %rdi
	callq	remove_process
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	Fdelete_process, .Lfunc_end10-Fdelete_process
	.cfi_endproc

	.align	16, 0x90
	.type	get_process,@function
get_process:                            # @get_process
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB11_1
	jmp	.LBB11_6
.LBB11_1:                               # %if.then
	movq	-8(%rbp), %rdi
	callq	Fget_process
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB11_3
# BB#2:                                 # %if.then.3
	movq	-8(%rbp), %rdi
	callq	Fget_buffer
	movq	%rax, -24(%rbp)
.LBB11_3:                               # %if.end
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB11_5
# BB#4:                                 # %if.then.7
	movq	-8(%rbp), %rdi
	callq	SDATA
	movabsq	$.L.str.58, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB11_5:                               # %if.end.9
	jmp	.LBB11_10
.LBB11_6:                               # %if.else
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB11_8
# BB#7:                                 # %if.then.12
	callq	Fcurrent_buffer
	movq	%rax, -24(%rbp)
	jmp	.LBB11_9
.LBB11_8:                               # %if.else.14
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB11_9:                               # %if.end.15
	jmp	.LBB11_10
.LBB11_10:                              # %if.end.16
	movq	-24(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB11_11
	jmp	.LBB11_16
.LBB11_11:                              # %if.then.18
	movq	-24(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB11_13
# BB#12:                                # %if.then.22
	movabsq	$.L.str.59, %rdi
	movb	$0, %al
	callq	error
.LBB11_13:                              # %if.end.23
	movq	-24(%rbp), %rdi
	callq	Fget_buffer_process
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB11_15
# BB#14:                                # %if.then.27
	movq	-24(%rbp), %rdi
	callq	XBUFFER
	movq	8(%rax), %rdi
	callq	SDATA
	movabsq	$.L.str.60, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB11_15:                              # %if.end.31
	jmp	.LBB11_17
.LBB11_16:                              # %if.else.32
	movq	-24(%rbp), %rdi
	callq	CHECK_PROCESS
	movq	-24(%rbp), %rdi
	movq	%rdi, -16(%rbp)
.LBB11_17:                              # %if.end.33
	movq	-16(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	get_process, .Lfunc_end11-get_process
	.cfi_endproc

	.align	16, 0x90
	.type	pset_status,@function
pset_status:                            # @pset_status
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
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 96(%rdi)
	popq	%rbp
	retq
.Lfunc_end12:
	.size	pset_status, .Lfunc_end12-pset_status
	.cfi_endproc

	.align	16, 0x90
	.type	status_notify,@function
status_notify:                          # @status_notify
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
	subq	$144, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$-1, -44(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)
	movq	process_tick, %rax
	movq	%rax, update_tick
	movq	Vprocess_alist, %rax
	movq	%rax, -32(%rbp)
.LBB13_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_6 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -69(%rbp)          # 1-byte Spill
	jne	.LBB13_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB13_1 Depth=1
	movb	$1, %al
	movq	-32(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -24(%rbp)
	movb	%al, -69(%rbp)          # 1-byte Spill
.LBB13_3:                               # %land.end
                                        #   in Loop: Header=BB13_1 Depth=1
	movb	-69(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB13_4
	jmp	.LBB13_36
.LBB13_4:                               # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	XPROCESS
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	200(%rax), %rax
	movq	-64(%rbp), %rdi
	cmpq	208(%rdi), %rax
	je	.LBB13_34
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-64(%rbp), %rax
	movq	200(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, 208(%rcx)
.LBB13_6:                               # %while.cond
                                        #   Parent Loop BB13_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$901, %edi              # imm = 0x385
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movb	%dil, %cl
	movq	-80(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -81(%rbp)          # 1-byte Spill
	je	.LBB13_12
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB13_6 Depth=2
	movl	$293, %edi              # imm = 0x125
	movq	-64(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movb	%dil, %cl
	movq	-96(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -81(%rbp)          # 1-byte Spill
	je	.LBB13_12
# BB#8:                                 # %land.lhs.true.15
                                        #   in Loop: Header=BB13_6 Depth=2
	movl	$625, %edi              # imm = 0x271
	movq	-64(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movb	%dil, %cl
	movq	-104(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -81(%rbp)          # 1-byte Spill
	je	.LBB13_12
# BB#9:                                 # %land.lhs.true.20
                                        #   in Loop: Header=BB13_6 Depth=2
	movl	$901, %edi              # imm = 0x385
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movb	%dil, %cl
	movq	-112(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -81(%rbp)          # 1-byte Spill
	je	.LBB13_12
# BB#10:                                # %land.lhs.true.24
                                        #   in Loop: Header=BB13_6 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-64(%rbp), %rdx
	cmpl	$0, 164(%rdx)
	movb	%cl, -81(%rbp)          # 1-byte Spill
	jl	.LBB13_12
# BB#11:                                # %land.rhs.27
                                        #   in Loop: Header=BB13_6 Depth=2
	movq	-64(%rbp), %rax
	cmpq	-8(%rbp), %rax
	setne	%cl
	movb	%cl, -81(%rbp)          # 1-byte Spill
.LBB13_12:                              # %land.end.30
                                        #   in Loop: Header=BB13_6 Depth=2
	movb	-81(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB13_13
	jmp	.LBB13_20
.LBB13_13:                              # %while.body
                                        #   in Loop: Header=BB13_6 Depth=2
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rax
	movl	164(%rax), %esi
	callq	read_process_output
	movl	%eax, -68(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB13_15
# BB#14:                                # %lor.lhs.false
                                        #   in Loop: Header=BB13_6 Depth=2
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	XPROCESS
	movq	-120(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB13_17
.LBB13_15:                              # %land.lhs.true.36
                                        #   in Loop: Header=BB13_6 Depth=2
	movl	-44(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB13_17
# BB#16:                                # %if.then.39
                                        #   in Loop: Header=BB13_6 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB13_17:                              # %if.end
                                        #   in Loop: Header=BB13_6 Depth=2
	cmpl	$0, -68(%rbp)
	jg	.LBB13_19
# BB#18:                                # %if.then.42
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_20
.LBB13_19:                              # %if.end.43
                                        #   in Loop: Header=BB13_6 Depth=2
	jmp	.LBB13_6
.LBB13_20:                              # %while.end
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-64(%rbp), %rax
	movb	224(%rax), %cl
	shrb	$7, %cl
	testb	$1, %cl
	je	.LBB13_22
# BB#21:                                # %if.then.44
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-64(%rbp), %rdi
	callq	update_status
.LBB13_22:                              # %if.end.45
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-64(%rbp), %rdi
	callq	status_message
	movq	%rax, -40(%rbp)
	movq	-64(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	movq	96(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB13_24
# BB#23:                                # %if.then.53
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-64(%rbp), %rax
	movq	96(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB13_24:                              # %if.end.57
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	$862, %edi              # imm = 0x35E
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB13_27
# BB#25:                                # %lor.lhs.false.61
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	$387, %edi              # imm = 0x183
	movq	-56(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB13_27
# BB#26:                                # %lor.lhs.false.65
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	$270, %edi              # imm = 0x10E
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB13_31
.LBB13_27:                              # %if.then.69
                                        #   in Loop: Header=BB13_1 Depth=1
	testb	$1, globals+3376
	je	.LBB13_29
# BB#28:                                # %if.then.71
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	remove_process
	jmp	.LBB13_30
.LBB13_29:                              # %if.else
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	deactivate_process
.LBB13_30:                              # %if.end.72
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_31
.LBB13_31:                              # %if.end.73
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-64(%rbp), %rax
	movq	200(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, 208(%rcx)
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	exec_sentinel
	movq	-64(%rbp), %rax
	movq	56(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB13_32
	jmp	.LBB13_33
.LBB13_32:                              # %if.then.77
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-64(%rbp), %rax
	movq	56(%rax), %rdi
	callq	XBUFFER
	movq	%rax, %rdi
	callq	bset_update_mode_line
.LBB13_33:                              # %if.end.80
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_34
.LBB13_34:                              # %if.end.81
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_35
.LBB13_35:                              # %for.inc
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB13_1
.LBB13_36:                              # %for.end
	movl	-44(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	status_notify, .Lfunc_end13-status_notify
	.cfi_endproc

	.align	16, 0x90
	.type	update_status,@function
update_status:                          # @update_status
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
	movq	-8(%rbp), %rax
	movl	228(%rax), %ecx
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movl	%ecx, %edi
	callq	status_convert
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_status
	movq	-8(%rbp), %rax
	movb	224(%rax), %dl
	andb	$127, %dl
	movb	%dl, 224(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	update_status, .Lfunc_end14-update_status
	.cfi_endproc

	.align	16, 0x90
	.type	remove_process,@function
remove_process:                         # @remove_process
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	Vprocess_alist, %rsi
	callq	Frassq
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	Vprocess_alist, %rsi
	callq	Fdelq
	movq	%rax, Vprocess_alist
	movq	-8(%rbp), %rdi
	callq	deactivate_process
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	remove_process, .Lfunc_end15-remove_process
	.cfi_endproc

	.globl	Fprocess_status
	.align	16, 0x90
	.type	Fprocess_status,@function
Fprocess_status:                        # @Fprocess_status
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB16_1
	jmp	.LBB16_2
.LBB16_1:                               # %if.then
	movq	-16(%rbp), %rdi
	callq	Fget_process
	movq	%rax, -16(%rbp)
	jmp	.LBB16_3
.LBB16_2:                               # %if.else
	movq	-16(%rbp), %rdi
	callq	get_process
	movq	%rax, -16(%rbp)
.LBB16_3:                               # %if.end
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB16_5
# BB#4:                                 # %if.then.4
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB16_22
.LBB16_5:                               # %if.end.5
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movb	224(%rax), %cl
	shrb	$7, %cl
	testb	$1, %cl
	je	.LBB16_7
# BB#6:                                 # %if.then.7
	movq	-24(%rbp), %rdi
	callq	update_status
.LBB16_7:                               # %if.end.8
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB16_9
# BB#8:                                 # %if.then.12
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB16_9:                               # %if.end.13
	movl	$699, %edi              # imm = 0x2BB
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB16_12
# BB#10:                                # %lor.lhs.false
	movl	$845, %edi              # imm = 0x34D
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB16_12
# BB#11:                                # %lor.lhs.false.21
	movl	$750, %edi              # imm = 0x2EE
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB16_21
.LBB16_12:                              # %if.then.26
	movl	$387, %edi              # imm = 0x183
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB16_14
# BB#13:                                # %if.then.30
	movl	$270, %edi              # imm = 0x10E
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
	jmp	.LBB16_20
.LBB16_14:                              # %if.else.32
	movl	$901, %edi              # imm = 0x385
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB16_16
# BB#15:                                # %if.then.36
	movl	$880, %edi              # imm = 0x370
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
	jmp	.LBB16_19
.LBB16_16:                              # %if.else.38
	movl	$820, %edi              # imm = 0x334
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB16_18
# BB#17:                                # %if.then.42
	movl	$719, %edi              # imm = 0x2CF
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
.LBB16_18:                              # %if.end.44
	jmp	.LBB16_19
.LBB16_19:                              # %if.end.45
	jmp	.LBB16_20
.LBB16_20:                              # %if.end.46
	jmp	.LBB16_21
.LBB16_21:                              # %if.end.47
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB16_22:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	Fprocess_status, .Lfunc_end16-Fprocess_status
	.cfi_endproc

	.globl	Fprocess_exit_status
	.align	16, 0x90
	.type	Fprocess_exit_status,@function
Fprocess_exit_status:                   # @Fprocess_exit_status
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_PROCESS
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movb	224(%rax), %cl
	shrb	$7, %cl
	testb	$1, %cl
	je	.LBB17_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movq	%rax, %rdi
	callq	update_status
.LBB17_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movq	96(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB17_4
# BB#3:                                 # %if.then.4
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movq	96(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB17_5
.LBB17_4:                               # %if.end.8
	movq	$2, -8(%rbp)
.LBB17_5:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	Fprocess_exit_status, .Lfunc_end17-Fprocess_exit_status
	.cfi_endproc

	.globl	Fprocess_id
	.align	16, 0x90
	.type	Fprocess_id,@function
Fprocess_id:                            # @Fprocess_id
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
	movq	-8(%rbp), %rdi
	callq	CHECK_PROCESS
	movq	-8(%rbp), %rdi
	callq	XPROCESS
	movl	160(%rax), %ecx
	movl	%ecx, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB18_7
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	cmpl	-12(%rbp), %eax
	jle	.LBB18_3
# BB#2:                                 # %lor.lhs.false
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	movslq	-12(%rbp), %rcx
	cmpq	%rcx, %rax
	jg	.LBB18_4
.LBB18_3:                               # %land.lhs.true
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movslq	-12(%rbp), %rcx
	cmpq	%rax, %rcx
	jle	.LBB18_5
.LBB18_4:                               # %cond.true.7
	cvtsi2sdl	-12(%rbp), %xmm0
	callq	make_float
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB18_6
.LBB18_5:                               # %cond.false
	movslq	-12(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB18_6:                               # %cond.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB18_8
.LBB18_7:                               # %cond.false.11
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB18_8:                               # %cond.end.13
	movq	-32(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	Fprocess_id, .Lfunc_end18-Fprocess_id
	.cfi_endproc

	.globl	Fprocess_name
	.align	16, 0x90
	.type	Fprocess_name,@function
Fprocess_name:                          # @Fprocess_name
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
	callq	CHECK_PROCESS
	movq	-8(%rbp), %rdi
	callq	XPROCESS
	movq	16(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	Fprocess_name, .Lfunc_end19-Fprocess_name
	.cfi_endproc

	.globl	Fprocess_command
	.align	16, 0x90
	.type	Fprocess_command,@function
Fprocess_command:                       # @Fprocess_command
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
	callq	CHECK_PROCESS
	movq	-8(%rbp), %rdi
	callq	XPROCESS
	movq	24(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	Fprocess_command, .Lfunc_end20-Fprocess_command
	.cfi_endproc

	.globl	Fprocess_tty_name
	.align	16, 0x90
	.type	Fprocess_tty_name,@function
Fprocess_tty_name:                      # @Fprocess_tty_name
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
	movq	-8(%rbp), %rdi
	callq	CHECK_PROCESS
	movq	-8(%rbp), %rdi
	callq	XPROCESS
	movq	8(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	Fprocess_tty_name, .Lfunc_end21-Fprocess_tty_name
	.cfi_endproc

	.globl	Fset_process_buffer
	.align	16, 0x90
	.type	Fset_process_buffer,@function
Fset_process_buffer:                    # @Fset_process_buffer
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_PROCESS
	xorl	%edi, %edi
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB22_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	CHECK_BUFFER
.LBB22_2:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	XPROCESS
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	pset_buffer
	movl	$699, %edi              # imm = 0x2BB
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB22_5
# BB#3:                                 # %lor.lhs.false
	movl	$845, %edi              # imm = 0x34D
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB22_5
# BB#4:                                 # %lor.lhs.false.7
	movl	$750, %edi              # imm = 0x2EE
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB22_6
.LBB22_5:                               # %if.then.11
	movl	$16, %edi
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_put
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_childp
.LBB22_6:                               # %if.end.14
	movq	-8(%rbp), %rdi
	callq	setup_process_coding_systems
	movq	-16(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	Fset_process_buffer, .Lfunc_end22-Fset_process_buffer
	.cfi_endproc

	.align	16, 0x90
	.type	pset_buffer,@function
pset_buffer:                            # @pset_buffer
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 56(%rdi)
	popq	%rbp
	retq
.Lfunc_end23:
	.size	pset_buffer, .Lfunc_end23-pset_buffer
	.cfi_endproc

	.globl	setup_process_coding_systems
	.align	16, 0x90
	.type	setup_process_coding_systems,@function
setup_process_coding_systems:           # @setup_process_coding_systems
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	XPROCESS
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	164(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	-16(%rbp), %rax
	movl	168(%rax), %ecx
	movl	%ecx, -24(%rbp)
	cmpl	$0, -20(%rbp)
	jl	.LBB24_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, -24(%rbp)
	jge	.LBB24_3
.LBB24_2:                               # %if.then
	jmp	.LBB24_13
.LBB24_3:                               # %if.end
	movslq	-20(%rbp), %rax
	cmpq	$0, proc_decode_coding_system(,%rax,8)
	jne	.LBB24_5
# BB#4:                                 # %if.then.2
	movl	$616, %eax              # imm = 0x268
	movl	%eax, %edi
	callq	xmalloc
	movslq	-20(%rbp), %rdi
	movq	%rax, proc_decode_coding_system(,%rdi,8)
.LBB24_5:                               # %if.end.6
	movl	$564, %edi              # imm = 0x234
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB24_10
# BB#6:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB24_7
	jmp	.LBB24_10
.LBB24_7:                               # %if.then.10
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	312(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB24_9
# BB#8:                                 # %if.then.15
	movq	-32(%rbp), %rdi
	callq	raw_text_coding_system
	movq	%rax, -32(%rbp)
.LBB24_9:                               # %if.end.17
	jmp	.LBB24_10
.LBB24_10:                              # %if.end.18
	movq	-32(%rbp), %rdi
	movslq	-20(%rbp), %rax
	movq	proc_decode_coding_system(,%rax,8), %rsi
	callq	setup_coding_system
	movslq	-24(%rbp), %rax
	cmpq	$0, proc_encode_coding_system(,%rax,8)
	jne	.LBB24_12
# BB#11:                                # %if.then.24
	movl	$616, %eax              # imm = 0x268
	movl	%eax, %edi
	callq	xmalloc
	movslq	-24(%rbp), %rdi
	movq	%rax, proc_encode_coding_system(,%rdi,8)
.LBB24_12:                              # %if.end.28
	movq	-16(%rbp), %rax
	movq	120(%rax), %rdi
	movslq	-24(%rbp), %rax
	movq	proc_encode_coding_system(,%rax,8), %rsi
	callq	setup_coding_system
.LBB24_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	setup_process_coding_systems, .Lfunc_end24-setup_process_coding_systems
	.cfi_endproc

	.globl	Fprocess_buffer
	.align	16, 0x90
	.type	Fprocess_buffer,@function
Fprocess_buffer:                        # @Fprocess_buffer
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
	callq	CHECK_PROCESS
	movq	-8(%rbp), %rdi
	callq	XPROCESS
	movq	56(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	Fprocess_buffer, .Lfunc_end25-Fprocess_buffer
	.cfi_endproc

	.globl	Fprocess_mark
	.align	16, 0x90
	.type	Fprocess_mark,@function
Fprocess_mark:                          # @Fprocess_mark
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_PROCESS
	movq	-8(%rbp), %rdi
	callq	XPROCESS
	movq	88(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	Fprocess_mark, .Lfunc_end26-Fprocess_mark
	.cfi_endproc

	.globl	Fset_process_filter
	.align	16, 0x90
	.type	Fset_process_filter,@function
Fset_process_filter:                    # @Fset_process_filter
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_PROCESS
	movq	-8(%rbp), %rdi
	callq	XPROCESS
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB27_2
# BB#1:                                 # %if.then
	movl	$564, %edi              # imm = 0x234
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
.LBB27_2:                               # %if.end
	movq	-24(%rbp), %rax
	cmpl	$0, 164(%rax)
	jl	.LBB27_11
# BB#3:                                 # %if.then.4
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB27_6
# BB#4:                                 # %land.lhs.true
	movl	$625, %edi              # imm = 0x271
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB27_6
# BB#5:                                 # %if.then.9
	movabsq	$input_wait_mask, %rsi
	movq	-24(%rbp), %rax
	movl	164(%rax), %edi
	callq	fd_CLR
	movabsq	$non_keyboard_wait_mask, %rsi
	movq	-24(%rbp), %rax
	movl	164(%rax), %edi
	callq	fd_CLR
	jmp	.LBB27_10
.LBB27_6:                               # %if.else
	movl	$901, %edi              # imm = 0x385
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB27_9
# BB#7:                                 # %land.lhs.true.15
	movl	$901, %edi              # imm = 0x385
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB27_9
# BB#8:                                 # %if.then.18
	movabsq	$input_wait_mask, %rsi
	movq	-24(%rbp), %rax
	movl	164(%rax), %edi
	callq	fd_SET
	movabsq	$non_keyboard_wait_mask, %rsi
	movq	-24(%rbp), %rax
	movl	164(%rax), %edi
	callq	fd_SET
.LBB27_9:                               # %if.end.21
	jmp	.LBB27_10
.LBB27_10:                              # %if.end.22
	jmp	.LBB27_11
.LBB27_11:                              # %if.end.23
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	pset_filter
	movl	$699, %edi              # imm = 0x2BB
	movq	-24(%rbp), %rsi
	movq	80(%rsi), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB27_14
# BB#12:                                # %lor.lhs.false
	movl	$845, %edi              # imm = 0x34D
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB27_14
# BB#13:                                # %lor.lhs.false.29
	movl	$750, %edi              # imm = 0x2EE
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB27_15
.LBB27_14:                              # %if.then.33
	movl	$42, %edi
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_put
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_childp
.LBB27_15:                              # %if.end.36
	movq	-8(%rbp), %rdi
	callq	setup_process_coding_systems
	movq	-16(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	Fset_process_filter, .Lfunc_end27-Fset_process_filter
	.cfi_endproc

	.align	16, 0x90
	.type	pset_filter,@function
pset_filter:                            # @pset_filter
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB28_2
# BB#1:                                 # %cond.true
	movl	$564, %edi              # imm = 0x234
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB28_3
.LBB28_2:                               # %cond.false
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB28_3:                               # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	-8(%rbp), %rcx
	movq	%rax, 32(%rcx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	pset_filter, .Lfunc_end28-pset_filter
	.cfi_endproc

	.globl	Fprocess_filter
	.align	16, 0x90
	.type	Fprocess_filter,@function
Fprocess_filter:                        # @Fprocess_filter
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
	callq	CHECK_PROCESS
	movq	-8(%rbp), %rdi
	callq	XPROCESS
	movq	32(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	Fprocess_filter, .Lfunc_end29-Fprocess_filter
	.cfi_endproc

	.globl	Fset_process_sentinel
	.align	16, 0x90
	.type	Fset_process_sentinel,@function
Fset_process_sentinel:                  # @Fset_process_sentinel
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_PROCESS
	movq	-8(%rbp), %rdi
	callq	XPROCESS
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB30_2
# BB#1:                                 # %if.then
	movl	$565, %edi              # imm = 0x235
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
.LBB30_2:                               # %if.end
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	pset_sentinel
	movl	$699, %edi              # imm = 0x2BB
	movq	-24(%rbp), %rsi
	movq	80(%rsi), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB30_5
# BB#3:                                 # %lor.lhs.false
	movl	$845, %edi              # imm = 0x34D
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB30_5
# BB#4:                                 # %lor.lhs.false.8
	movl	$750, %edi              # imm = 0x2EE
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB30_6
.LBB30_5:                               # %if.then.12
	movl	$115, %edi
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_put
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_childp
.LBB30_6:                               # %if.end.15
	movq	-16(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	Fset_process_sentinel, .Lfunc_end30-Fset_process_sentinel
	.cfi_endproc

	.align	16, 0x90
	.type	pset_sentinel,@function
pset_sentinel:                          # @pset_sentinel
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB31_2
# BB#1:                                 # %cond.true
	movl	$565, %edi              # imm = 0x235
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB31_3
.LBB31_2:                               # %cond.false
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB31_3:                               # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	-8(%rbp), %rcx
	movq	%rax, 40(%rcx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	pset_sentinel, .Lfunc_end31-pset_sentinel
	.cfi_endproc

	.globl	Fprocess_sentinel
	.align	16, 0x90
	.type	Fprocess_sentinel,@function
Fprocess_sentinel:                      # @Fprocess_sentinel
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
	callq	CHECK_PROCESS
	movq	-8(%rbp), %rdi
	callq	XPROCESS
	movq	40(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	Fprocess_sentinel, .Lfunc_end32-Fprocess_sentinel
	.cfi_endproc

	.globl	Fset_process_window_size
	.align	16, 0x90
	.type	Fset_process_window_size,@function
Fset_process_window_size:               # @Fset_process_window_size
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_PROCESS
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB33_3
# BB#2:                                 # %cond.true
	jmp	.LBB33_4
.LBB33_3:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB33_4:                               # %cond.end
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	sarq	$2, %rdx
	cmpq	%rdx, %rcx
	jg	.LBB33_6
# BB#5:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	cmpq	$65535, %rax            # imm = 0xFFFF
	jle	.LBB33_7
.LBB33_6:                               # %if.then
	movl	$2, %eax
	movl	%eax, %esi
	movl	$262142, %eax           # imm = 0x3FFFE
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	callq	args_out_of_range_3
.LBB33_7:                               # %if.end
	jmp	.LBB33_8
.LBB33_8:                               # %do.end
	jmp	.LBB33_9
.LBB33_9:                               # %do.body.8
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB33_11
# BB#10:                                # %cond.true.14
	jmp	.LBB33_12
.LBB33_11:                              # %cond.false.15
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB33_12:                              # %cond.end.17
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	sarq	$2, %rdx
	cmpq	%rdx, %rcx
	jg	.LBB33_14
# BB#13:                                # %land.lhs.true.21
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	cmpq	$65535, %rax            # imm = 0xFFFF
	jle	.LBB33_15
.LBB33_14:                              # %if.then.25
	movl	$2, %eax
	movl	%eax, %esi
	movl	$262142, %eax           # imm = 0x3FFFE
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	callq	args_out_of_range_3
.LBB33_15:                              # %if.end.26
	jmp	.LBB33_16
.LBB33_16:                              # %do.end.27
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	cmpl	$0, 164(%rax)
	jl	.LBB33_18
# BB#17:                                # %lor.lhs.false
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movl	164(%rax), %edi
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %edx
	movl	%ecx, %esi
	callq	set_window_size
	cmpl	$0, %eax
	jge	.LBB33_19
.LBB33_18:                              # %if.then.40
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB33_20
.LBB33_19:                              # %if.else
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB33_20:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	Fset_process_window_size, .Lfunc_end33-Fset_process_window_size
	.cfi_endproc

	.globl	Fset_process_inherit_coding_system_flag
	.align	16, 0x90
	.type	Fset_process_inherit_coding_system_flag,@function
Fset_process_inherit_coding_system_flag: # @Fset_process_inherit_coding_system_flag
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
	movq	-8(%rbp), %rdi
	callq	CHECK_PROCESS
	xorl	%edi, %edi
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	movq	-8(%rbp), %rdi
	movb	%cl, -25(%rbp)          # 1-byte Spill
	callq	XPROCESS
	movb	-25(%rbp), %cl          # 1-byte Reload
	andb	$1, %cl
	movb	224(%rax), %dl
	shlb	$5, %cl
	andb	$-33, %dl
	orb	%cl, %dl
	movb	%dl, 224(%rax)
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	Fset_process_inherit_coding_system_flag, .Lfunc_end34-Fset_process_inherit_coding_system_flag
	.cfi_endproc

	.globl	Fset_process_query_on_exit_flag
	.align	16, 0x90
	.type	Fset_process_query_on_exit_flag,@function
Fset_process_query_on_exit_flag:        # @Fset_process_query_on_exit_flag
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
	callq	CHECK_PROCESS
	xorl	%edi, %edi
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	movq	-8(%rbp), %rdi
	movb	%cl, -25(%rbp)          # 1-byte Spill
	callq	XPROCESS
	movb	-25(%rbp), %cl          # 1-byte Reload
	andb	$1, %cl
	movb	224(%rax), %dl
	shlb	$3, %cl
	andb	$-9, %dl
	orb	%cl, %dl
	movb	%dl, 224(%rax)
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	Fset_process_query_on_exit_flag, .Lfunc_end35-Fset_process_query_on_exit_flag
	.cfi_endproc

	.globl	Fprocess_query_on_exit_flag
	.align	16, 0x90
	.type	Fprocess_query_on_exit_flag,@function
Fprocess_query_on_exit_flag:            # @Fprocess_query_on_exit_flag
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
	callq	CHECK_PROCESS
	movq	-8(%rbp), %rdi
	callq	XPROCESS
	movb	224(%rax), %cl
	shrb	$3, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB36_2
# BB#1:                                 # %cond.true
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB36_3
.LBB36_2:                               # %cond.false
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB36_3:                               # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	Fprocess_query_on_exit_flag, .Lfunc_end36-Fprocess_query_on_exit_flag
	.cfi_endproc

	.globl	Fprocess_contact
	.align	16, 0x90
	.type	Fprocess_contact,@function
Fprocess_contact:                       # @Fprocess_contact
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
	subq	$192, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_PROCESS
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movq	64(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	PROCESSP
	testb	$1, %al
	jne	.LBB37_1
	jmp	.LBB37_6
.LBB37_1:                               # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	cmpl	$0, 164(%rax)
	jl	.LBB37_6
# BB#2:                                 # %land.lhs.true.3
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movabsq	$datagram_address, %rdi
	movslq	164(%rax), %rax
	shlq	$4, %rax
	addq	%rax, %rdi
	cmpq	$0, (%rdi)
	je	.LBB37_6
# BB#3:                                 # %land.lhs.true.7
	movl	$901, %edi              # imm = 0x385
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB37_5
# BB#4:                                 # %lor.lhs.false
	movl	$108, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB37_6
.LBB37_5:                               # %if.then
	movl	$108, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	Fprocess_datagram_address
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fplist_put
	movq	%rax, -32(%rbp)
.LBB37_6:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movl	$699, %edi              # imm = 0x2BB
	movq	80(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB37_9
# BB#7:                                 # %land.lhs.true.18
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movl	$845, %edi              # imm = 0x34D
	movq	80(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB37_9
# BB#8:                                 # %land.lhs.true.23
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movl	$750, %edi              # imm = 0x2EE
	movq	80(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB37_10
.LBB37_9:                               # %lor.lhs.false.28
	movl	$901, %edi              # imm = 0x385
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB37_11
.LBB37_10:                              # %if.then.31
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB37_21
.LBB37_11:                              # %if.end.32
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB37_14
# BB#12:                                # %land.lhs.true.35
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movl	$699, %edi              # imm = 0x2BB
	movq	80(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB37_14
# BB#13:                                # %if.then.40
	movl	$63, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movl	$117, %edi
	movq	-32(%rbp), %rsi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	%rax, -8(%rbp)
	jmp	.LBB37_21
.LBB37_14:                              # %if.end.46
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB37_17
# BB#15:                                # %land.lhs.true.49
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movl	$845, %edi              # imm = 0x34D
	movq	80(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB37_17
# BB#16:                                # %if.then.54
	movl	$94, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movl	$121, %edi
	movq	-32(%rbp), %rsi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	%rax, -8(%rbp)
	jmp	.LBB37_21
.LBB37_17:                              # %if.end.60
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB37_20
# BB#18:                                # %land.lhs.true.63
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movl	$750, %edi              # imm = 0x2EE
	movq	80(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB37_20
# BB#19:                                # %if.then.68
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB37_21
.LBB37_20:                              # %if.end.70
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Fplist_get
	movq	%rax, -8(%rbp)
.LBB37_21:                              # %return
	movq	-8(%rbp), %rax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	Fprocess_contact, .Lfunc_end37-Fprocess_contact
	.cfi_endproc

	.globl	Fprocess_datagram_address
	.align	16, 0x90
	.type	Fprocess_datagram_address,@function
Fprocess_datagram_address:              # @Fprocess_datagram_address
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_PROCESS
	movq	-16(%rbp), %rdi
	callq	PROCESSP
	testb	$1, %al
	jne	.LBB38_1
	jmp	.LBB38_3
.LBB38_1:                               # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	cmpl	$0, 164(%rax)
	jl	.LBB38_3
# BB#2:                                 # %land.lhs.true.2
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movabsq	$datagram_address, %rdi
	movslq	164(%rax), %rax
	shlq	$4, %rax
	addq	%rax, %rdi
	cmpq	$0, (%rdi)
	jne	.LBB38_4
.LBB38_3:                               # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB38_5
.LBB38_4:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movabsq	$datagram_address, %rdi
	movl	164(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movslq	-20(%rbp), %rax
	shlq	$4, %rax
	movq	%rdi, %rdx
	addq	%rax, %rdx
	movq	(%rdx), %rax
	movslq	-20(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rdi
	movl	8(%rdi), %esi
	movq	%rax, %rdi
	callq	conv_sockaddr_to_lisp
	movq	%rax, -8(%rbp)
.LBB38_5:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	Fprocess_datagram_address, .Lfunc_end38-Fprocess_datagram_address
	.cfi_endproc

	.globl	Fprocess_plist
	.align	16, 0x90
	.type	Fprocess_plist,@function
Fprocess_plist:                         # @Fprocess_plist
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
	callq	CHECK_PROCESS
	movq	-8(%rbp), %rdi
	callq	XPROCESS
	movq	72(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	Fprocess_plist, .Lfunc_end39-Fprocess_plist
	.cfi_endproc

	.globl	Fset_process_plist
	.align	16, 0x90
	.type	Fset_process_plist,@function
Fset_process_plist:                     # @Fset_process_plist
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_PROCESS
	movq	-16(%rbp), %rdi
	callq	CHECK_LIST
	movq	-8(%rbp), %rdi
	callq	XPROCESS
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	pset_plist
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	Fset_process_plist, .Lfunc_end40-Fset_process_plist
	.cfi_endproc

	.align	16, 0x90
	.type	pset_plist,@function
pset_plist:                             # @pset_plist
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
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 72(%rdi)
	popq	%rbp
	retq
.Lfunc_end41:
	.size	pset_plist, .Lfunc_end41-pset_plist
	.cfi_endproc

	.globl	Fprocess_type
	.align	16, 0x90
	.type	Fprocess_type,@function
Fprocess_type:                          # @Fprocess_type
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	get_process
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movq	80(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	Fprocess_type, .Lfunc_end42-Fprocess_type
	.cfi_endproc

	.globl	Fformat_network_address
	.align	16, 0x90
	.type	Fformat_network_address,@function
Fformat_network_address:                # @Fformat_network_address
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
	subq	$288, %rsp              # imm = 0x120
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB43_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB43_35
.LBB43_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB43_3
	jmp	.LBB43_4
.LBB43_3:                               # %if.then.3
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB43_35
.LBB43_4:                               # %if.end.4
	movq	-16(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB43_5
	jmp	.LBB43_32
.LBB43_5:                               # %if.then.6
	movq	-16(%rbp), %rdi
	callq	XVECTOR
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$4, -40(%rbp)
	je	.LBB43_8
# BB#6:                                 # %lor.lhs.false
	cmpq	$5, -40(%rbp)
	jne	.LBB43_9
# BB#7:                                 # %land.lhs.true
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB43_9
.LBB43_8:                               # %if.then.13
	movabsq	$.L.str, %rax
	movq	%rax, -144(%rbp)
	movl	$4, -132(%rbp)
	jmp	.LBB43_21
.LBB43_9:                               # %if.else
	cmpq	$5, -40(%rbp)
	jne	.LBB43_11
# BB#10:                                # %if.then.15
	movabsq	$.L.str.1, %rax
	movq	%rax, -144(%rbp)
	movl	$5, -132(%rbp)
	jmp	.LBB43_20
.LBB43_11:                              # %if.else.16
	cmpq	$8, -40(%rbp)
	je	.LBB43_14
# BB#12:                                # %lor.lhs.false.18
	cmpq	$9, -40(%rbp)
	jne	.LBB43_15
# BB#13:                                # %land.lhs.true.20
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB43_15
.LBB43_14:                              # %if.then.23
	movabsq	$.L.str.2, %rax
	movq	%rax, -144(%rbp)
	movl	$8, -132(%rbp)
	jmp	.LBB43_19
.LBB43_15:                              # %if.else.24
	cmpq	$9, -40(%rbp)
	jne	.LBB43_17
# BB#16:                                # %if.then.26
	movabsq	$.L.str.3, %rax
	movq	%rax, -144(%rbp)
	movl	$9, -132(%rbp)
	jmp	.LBB43_18
.LBB43_17:                              # %if.else.27
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB43_35
.LBB43_18:                              # %if.end.29
	jmp	.LBB43_19
.LBB43_19:                              # %if.end.30
	jmp	.LBB43_20
.LBB43_20:                              # %if.end.31
	jmp	.LBB43_21
.LBB43_21:                              # %if.end.32
	movl	$4, %esi
	leaq	-184(%rbp), %rax
	movq	-144(%rbp), %rdi
	movl	%esi, -268(%rbp)        # 4-byte Spill
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	strlen
	movq	%rax, -184(%rbp)
	movq	$-1, -176(%rbp)
	movq	$0, -168(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	movl	-268(%rbp), %esi        # 4-byte Reload
	callq	make_lisp_ptr
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -128(%rbp)
	movl	$0, -136(%rbp)
.LBB43_22:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-136(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jge	.LBB43_31
# BB#23:                                # %for.body
                                        #   in Loop: Header=BB43_22 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$65535, %eax            # imm = 0xFFFF
	movl	%eax, %edx
	movslq	-136(%rbp), %rcx
	movq	-32(%rbp), %rsi
	movq	8(%rsi,%rcx,8), %rsi
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB43_25
# BB#24:                                # %if.then.40
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB43_35
.LBB43_25:                              # %if.end.42
                                        #   in Loop: Header=BB43_22 Depth=1
	cmpl	$5, -132(%rbp)
	jg	.LBB43_29
# BB#26:                                # %land.lhs.true.44
                                        #   in Loop: Header=BB43_22 Depth=1
	cmpl	$4, -136(%rbp)
	jge	.LBB43_29
# BB#27:                                # %land.lhs.true.46
                                        #   in Loop: Header=BB43_22 Depth=1
	movslq	-136(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	8(%rcx,%rax,8), %rax
	sarq	$2, %rax
	cmpq	$255, %rax
	jle	.LBB43_29
# BB#28:                                # %if.then.51
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB43_35
.LBB43_29:                              # %if.end.53
                                        #   in Loop: Header=BB43_22 Depth=1
	movslq	-136(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	8(%rcx,%rax,8), %rax
	movl	-136(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	movq	%rax, -128(%rbp,%rcx,8)
# BB#30:                                # %for.inc
                                        #   in Loop: Header=BB43_22 Depth=1
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	jmp	.LBB43_22
.LBB43_31:                              # %for.end
	leaq	-128(%rbp), %rsi
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	callq	Fformat
	movq	%rax, -8(%rbp)
	jmp	.LBB43_35
.LBB43_32:                              # %if.end.61
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB43_34
# BB#33:                                # %if.then.65
	movl	$4, %esi
	leaq	-224(%rbp), %rax
	movabsq	$.L.str.4, %rcx
	movq	$11, -224(%rbp)
	movq	$-1, -216(%rbp)
	movq	$0, -208(%rbp)
	movq	%rcx, -200(%rbp)
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	-16(%rbp), %rdi
	callq	Fcar
	movl	$2, %esi
	movl	%esi, %edi
	leaq	-240(%rbp), %rsi
	movq	%rax, -232(%rbp)
	callq	Fformat
	movq	%rax, -8(%rbp)
	jmp	.LBB43_35
.LBB43_34:                              # %if.end.79
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB43_35:                              # %return
	movq	-8(%rbp), %rax
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end43:
	.size	Fformat_network_address, .Lfunc_end43-Fformat_network_address
	.cfi_endproc

	.globl	Fprocess_list
	.align	16, 0x90
	.type	Fprocess_list,@function
Fprocess_list:                          # @Fprocess_list
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
	movl	$249, %edi
	callq	builtin_lisp_symbol
	movq	Vprocess_alist, %rsi
	movq	%rax, %rdi
	callq	Fmapcar
	popq	%rbp
	retq
.Lfunc_end44:
	.size	Fprocess_list, .Lfunc_end44-Fprocess_list
	.cfi_endproc

	.globl	Fmake_process
	.align	16, 0x90
	.type	Fmake_process,@function
Fmake_process:                          # @Fmake_process
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
	subq	$2480, %rsp             # imm = 0x9B0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	callq	SPECPDL_INDEX
	movq	%rax, -112(%rbp)
	movq	$16384, -120(%rbp)      # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -128(%rbp)
	movb	$0, -129(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB45_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB45_936
.LBB45_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Flist
	movl	$16, %edi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-344(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB45_4
# BB#3:                                 # %if.then.8
	movq	-32(%rbp), %rdi
	callq	Fget_buffer_create
	movq	%rax, -32(%rbp)
.LBB45_4:                               # %if.end.10
	callq	encode_current_directory
	movl	$86, %edi
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	CHECK_STRING
	movl	$25, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB45_6
# BB#5:                                 # %if.then.18
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB45_7
.LBB45_6:                               # %if.else
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -56(%rbp)
.LBB45_7:                               # %if.end.20
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-368(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_9
# BB#8:                                 # %if.then.24
	movq	-56(%rbp), %rdi
	callq	CHECK_STRING
.LBB45_9:                               # %if.end.25
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$122, %edi
	movq	%rax, -104(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	PROCESSP
	testb	$1, %al
	jne	.LBB45_10
	jmp	.LBB45_13
.LBB45_10:                              # %if.then.30
	movq	-96(%rbp), %rdi
	callq	XPROCESS
	movl	$750, %edi              # imm = 0x2EE
	movq	80(%rax), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-384(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_12
# BB#11:                                # %if.then.35
	movabsq	$.L.str.5, %rdi
	movb	$0, %al
	callq	error
.LBB45_12:                              # %if.end.36
	movq	-96(%rbp), %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB45_16
.LBB45_13:                              # %if.else.37
	xorl	%edi, %edi
	movq	-96(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-392(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_15
# BB#14:                                # %if.then.41
	movq	-56(%rbp), %rdi
	callq	CHECK_STRING
	movl	$86, %edi
	callq	builtin_lisp_symbol
	movabsq	$.L.str.6, %rdi
	movq	%rax, -168(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	build_string
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	concat2
	movl	$16, %edi
	movq	%rax, -160(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -152(%rbp)
	movq	-96(%rbp), %rdi
	callq	Fget_buffer_create
	movl	$4, %ecx
	movl	%ecx, %edi
	leaq	-168(%rbp), %rsi
	movq	%rax, -144(%rbp)
	callq	Fmake_pipe_process
	movq	%rax, -104(%rbp)
.LBB45_15:                              # %if.end.50
	jmp	.LBB45_16
.LBB45_16:                              # %if.end.51
	movq	-40(%rbp), %rdi
	callq	make_process
	movabsq	$start_process_unwind, %rdi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rsi
	callq	record_unwind_protect
	movq	-64(%rbp), %rdi
	callq	XPROCESS
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_childp
	movq	-64(%rbp), %rdi
	callq	XPROCESS
	xorl	%edi, %edi
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_plist
	movq	-64(%rbp), %rdi
	callq	XPROCESS
	movl	$793, %edi              # imm = 0x319
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_type
	movq	-64(%rbp), %rdi
	callq	XPROCESS
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	pset_buffer
	movq	-64(%rbp), %rdi
	callq	XPROCESS
	movl	$115, %edi
	movq	-72(%rbp), %rsi
	movq	%rax, -432(%rbp)        # 8-byte Spill
	movq	%rsi, -440(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_sentinel
	movq	-64(%rbp), %rdi
	callq	XPROCESS
	movl	$42, %edi
	movq	-72(%rbp), %rsi
	movq	%rax, -448(%rbp)        # 8-byte Spill
	movq	%rsi, -456(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_filter
	movq	-64(%rbp), %rdi
	callq	XPROCESS
	movq	-48(%rbp), %rdi
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	Fcopy_sequence
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_command
	movl	$87, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-480(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB45_17
	jmp	.LBB45_18
.LBB45_17:                              # %if.then.73
	movq	-64(%rbp), %rdi
	callq	XPROCESS
	movb	224(%rax), %cl
	andb	$-9, %cl
	orb	$8, %cl
	movb	%cl, 224(%rax)
.LBB45_18:                              # %if.end.75
	movl	$124, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-496(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB45_19
	jmp	.LBB45_20
.LBB45_19:                              # %if.then.82
	movq	-64(%rbp), %rdi
	callq	XPROCESS
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_command
.LBB45_20:                              # %if.end.85
	movl	$26, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movl	$780, %edi              # imm = 0x30C
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-520(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB45_22
# BB#21:                                # %if.then.91
	movq	-64(%rbp), %rdi
	callq	XPROCESS
	movb	224(%rax), %cl
	andb	$-17, %cl
	orb	$16, %cl
	movb	%cl, 224(%rax)
	jmp	.LBB45_29
.LBB45_22:                              # %if.else.96
	movl	$750, %edi              # imm = 0x2EE
	movq	-88(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-528(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_24
# BB#23:                                # %if.then.100
	movq	-64(%rbp), %rdi
	callq	XPROCESS
	movb	224(%rax), %cl
	andb	$-17, %cl
	movb	%cl, 224(%rax)
	jmp	.LBB45_28
.LBB45_24:                              # %if.else.105
	xorl	%edi, %edi
	movq	-88(%rbp), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-536(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_26
# BB#25:                                # %if.then.109
	xorl	%edi, %edi
	movq	globals+1904, %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-544(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	movq	-64(%rbp), %rdi
	movb	%dl, -545(%rbp)         # 1-byte Spill
	callq	XPROCESS
	movb	-545(%rbp), %dl         # 1-byte Reload
	andb	$1, %dl
	movb	224(%rax), %sil
	shlb	$4, %dl
	andb	$-17, %sil
	orb	%dl, %sil
	movb	%sil, 224(%rax)
	jmp	.LBB45_27
.LBB45_26:                              # %if.else.119
	movabsq	$.L.str.7, %rdi
	movq	-88(%rbp), %rsi
	callq	report_file_error
.LBB45_27:                              # %if.end.120
	jmp	.LBB45_28
.LBB45_28:                              # %if.end.121
	jmp	.LBB45_29
.LBB45_29:                              # %if.end.122
	xorl	%edi, %edi
	movq	-104(%rbp), %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-560(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_31
# BB#30:                                # %if.then.126
	movq	-64(%rbp), %rdi
	callq	XPROCESS
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	callq	pset_stderrproc
	movq	-64(%rbp), %rdi
	callq	XPROCESS
	movb	224(%rax), %cl
	andb	$-17, %cl
	movb	%cl, 224(%rax)
.LBB45_31:                              # %if.end.132
	movq	-64(%rbp), %rdi
	callq	XPROCESS
	movl	$0, 232(%rax)
	movq	-64(%rbp), %rdi
	callq	XPROCESS
	xorl	%edi, %edi
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_gnutls_cred_type
	xorl	%edi, %edi
	movq	globals+1888, %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-576(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB45_33
# BB#32:                                # %cond.true
	xorl	%eax, %eax
	movl	%eax, -580(%rbp)        # 4-byte Spill
	jmp	.LBB45_34
.LBB45_33:                              # %cond.false
	movl	$901, %edi              # imm = 0x385
	movq	globals+1888, %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	$1, %ecx
	movq	-592(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -580(%rbp)        # 4-byte Spill
.LBB45_34:                              # %cond.end
	movl	-580(%rbp), %eax        # 4-byte Reload
	movq	-64(%rbp), %rdi
	movl	%eax, -596(%rbp)        # 4-byte Spill
	callq	XPROCESS
	movl	-596(%rbp), %ecx        # 4-byte Reload
	movb	%cl, %dl
	movb	224(%rax), %sil
	andb	$3, %dl
	andb	$-4, %sil
	orb	%dl, %sil
	movb	%sil, 224(%rax)
	movq	-32(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB45_35
	jmp	.LBB45_48
.LBB45_35:                              # %if.then.148
	movq	-64(%rbp), %rdi
	callq	XPROCESS
	movq	88(%rax), %rdi
	movq	-32(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, -608(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -616(%rbp)        # 8-byte Spill
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB45_37
# BB#36:                                # %cond.true.153
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	jmp	.LBB45_41
.LBB45_37:                              # %cond.false.154
	movq	-32(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	376(%rax), %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-632(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_39
# BB#38:                                # %cond.true.159
	movq	-32(%rbp), %rdi
	callq	XBUFFER
	movq	768(%rax), %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	jmp	.LBB45_40
.LBB45_39:                              # %cond.false.162
	movq	-32(%rbp), %rdi
	callq	XBUFFER
	movq	376(%rax), %rdi
	callq	marker_position
	movq	%rax, -640(%rbp)        # 8-byte Spill
.LBB45_40:                              # %cond.end.166
	movq	-640(%rbp), %rax        # 8-byte Reload
	movq	%rax, -624(%rbp)        # 8-byte Spill
.LBB45_41:                              # %cond.end.168
	movq	-624(%rbp), %rax        # 8-byte Reload
	movq	-32(%rbp), %rdi
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB45_43
# BB#42:                                # %cond.true.173
	movq	current_buffer, %rax
	movq	776(%rax), %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
	jmp	.LBB45_47
.LBB45_43:                              # %cond.false.174
	movq	-32(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	376(%rax), %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-664(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_45
# BB#44:                                # %cond.true.180
	movq	-32(%rbp), %rdi
	callq	XBUFFER
	movq	776(%rax), %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
	jmp	.LBB45_46
.LBB45_45:                              # %cond.false.183
	movq	-32(%rbp), %rdi
	callq	XBUFFER
	movq	376(%rax), %rdi
	callq	marker_byte_position
	movq	%rax, -672(%rbp)        # 8-byte Spill
.LBB45_46:                              # %cond.end.187
	movq	-672(%rbp), %rax        # 8-byte Reload
	movq	%rax, -656(%rbp)        # 8-byte Spill
.LBB45_47:                              # %cond.end.189
	movq	-656(%rbp), %rax        # 8-byte Reload
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	-616(%rbp), %rsi        # 8-byte Reload
	movq	-648(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	set_marker_both
	movq	%rax, -680(%rbp)        # 8-byte Spill
.LBB45_48:                              # %if.end.192
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movl	$20, %edi
	movq	%rax, -176(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-688(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-696(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB45_52
# BB#49:                                # %if.then.199
	movq	-88(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB45_51
# BB#50:                                # %if.then.204
	movq	-184(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
.LBB45_51:                              # %if.end.207
	jmp	.LBB45_53
.LBB45_52:                              # %if.else.208
	movq	globals+280, %rax
	movq	%rax, -184(%rbp)
.LBB45_53:                              # %if.end.209
	xorl	%edi, %edi
	movq	-184(%rbp), %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-704(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_473
# BB#54:                                # %if.then.213
	movq	-48(%rbp), %rdi
	callq	Flength
	sarq	$2, %rax
	addq	$3, %rax
	movq	%rax, -200(%rbp)
# BB#55:                                # %do.body
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_56
	jmp	.LBB45_135
.LBB45_56:                              # %cond.true.215
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_57
	jmp	.LBB45_96
.LBB45_57:                              # %cond.true.216
	movq	-200(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB45_59
# BB#58:                                # %cond.true.223
	xorl	%eax, %eax
	movq	-200(%rbp), %rcx
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
	movq	-200(%rbp), %rcx
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
	movl	%eax, -708(%rbp)        # 4-byte Spill
	jmp	.LBB45_60
.LBB45_59:                              # %cond.false.241
	movq	-200(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -708(%rbp)        # 4-byte Spill
.LBB45_60:                              # %cond.end.247
	movl	-708(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB45_62
# BB#61:                                # %land.lhs.true
	movq	-200(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jl	.LBB45_88
.LBB45_62:                              # %lor.lhs.false
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_63
	jmp	.LBB45_74
.LBB45_63:                              # %cond.true.255
	movq	-200(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB45_68
# BB#64:                                # %cond.true.260
	movq	-200(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-200(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -712(%rbp)        # 4-byte Spill
	jge	.LBB45_66
# BB#65:                                # %cond.true.270
	movq	-200(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -716(%rbp)        # 4-byte Spill
	jmp	.LBB45_67
.LBB45_66:                              # %cond.false.280
	movq	-200(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -716(%rbp)        # 4-byte Spill
.LBB45_67:                              # %cond.end.286
	movl	-716(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-712(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB45_88
	jmp	.LBB45_85
.LBB45_68:                              # %cond.false.290
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_69
	jmp	.LBB45_70
.LBB45_69:                              # %cond.true.291
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_88
	jmp	.LBB45_85
.LBB45_70:                              # %cond.false.292
	movq	-200(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB45_72
# BB#71:                                # %cond.true.300
	xorl	%eax, %eax
	movq	-200(%rbp), %rcx
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
	movq	-200(%rbp), %rcx
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
	movl	%eax, -720(%rbp)        # 4-byte Spill
	jmp	.LBB45_73
.LBB45_72:                              # %cond.false.320
	movq	-200(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -720(%rbp)        # 4-byte Spill
.LBB45_73:                              # %cond.end.326
	movl	-720(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-200(%rbp), %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB45_88
	jmp	.LBB45_85
.LBB45_74:                              # %cond.false.333
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_75
	jmp	.LBB45_76
.LBB45_75:                              # %cond.true.334
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_88
	jmp	.LBB45_85
.LBB45_76:                              # %cond.false.335
	movq	-200(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB45_81
# BB#77:                                # %cond.true.340
	movq	-200(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-200(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -724(%rbp)        # 4-byte Spill
	jge	.LBB45_79
# BB#78:                                # %cond.true.350
	xorl	%eax, %eax
	movq	-200(%rbp), %rcx
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
	movq	-200(%rbp), %rcx
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
	movl	%eax, -728(%rbp)        # 4-byte Spill
	jmp	.LBB45_80
.LBB45_79:                              # %cond.false.370
	movq	-200(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -728(%rbp)        # 4-byte Spill
.LBB45_80:                              # %cond.end.376
	movl	-728(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-724(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB45_88
	jmp	.LBB45_85
.LBB45_81:                              # %cond.false.381
	movq	-200(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB45_83
# BB#82:                                # %cond.true.389
	movq	-200(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -732(%rbp)        # 4-byte Spill
	jmp	.LBB45_84
.LBB45_83:                              # %cond.false.399
	movq	-200(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -732(%rbp)        # 4-byte Spill
.LBB45_84:                              # %cond.end.405
	movl	-732(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-200(%rbp), %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB45_88
.LBB45_85:                              # %lor.lhs.false.412
	movq	-200(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$3, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB45_87
# BB#86:                                # %land.lhs.true.420
	movq	-200(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$3, %edx
	cmpl	$-128, %edx
	jl	.LBB45_88
.LBB45_87:                              # %lor.lhs.false.426
	movl	$127, %eax
	movq	-200(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	shll	$3, %esi
	cmpl	%esi, %eax
	jge	.LBB45_92
.LBB45_88:                              # %cond.true.432
	movq	-200(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB45_90
# BB#89:                                # %cond.true.438
	movq	-200(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -736(%rbp)        # 4-byte Spill
	jmp	.LBB45_91
.LBB45_90:                              # %cond.false.444
	movq	-200(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -736(%rbp)        # 4-byte Spill
.LBB45_91:                              # %cond.end.452
	movl	-736(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -216(%rbp)
	testb	$1, %cl
	jne	.LBB45_455
	jmp	.LBB45_454
.LBB45_92:                              # %cond.false.455
	movq	-200(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB45_94
# BB#93:                                # %cond.true.461
	movq	-200(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -740(%rbp)        # 4-byte Spill
	jmp	.LBB45_95
.LBB45_94:                              # %cond.false.467
	movq	-200(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -740(%rbp)        # 4-byte Spill
.LBB45_95:                              # %cond.end.475
	movl	-740(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -216(%rbp)
	testb	$1, %dl
	jne	.LBB45_455
	jmp	.LBB45_454
.LBB45_96:                              # %cond.false.478
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_98
# BB#97:                                # %cond.true.484
	xorl	%eax, %eax
	movq	-200(%rbp), %rcx
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
	movq	-200(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -752(%rbp)        # 8-byte Spill
	jmp	.LBB45_99
.LBB45_98:                              # %cond.false.501
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -752(%rbp)        # 8-byte Spill
.LBB45_99:                              # %cond.end.505
	movq	-752(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB45_101
# BB#100:                               # %land.lhs.true.509
	cmpq	$0, -200(%rbp)
	jl	.LBB45_127
.LBB45_101:                             # %lor.lhs.false.512
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_102
	jmp	.LBB45_113
.LBB45_102:                             # %cond.true.513
	cmpq	$0, -200(%rbp)
	jge	.LBB45_107
# BB#103:                               # %cond.true.516
	movq	-200(%rbp), %rax
	movq	-200(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -760(%rbp)        # 8-byte Spill
	jge	.LBB45_105
# BB#104:                               # %cond.true.522
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
	jmp	.LBB45_106
.LBB45_105:                             # %cond.false.530
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
.LBB45_106:                             # %cond.end.534
	movq	-768(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -776(%rbp)        # 8-byte Spill
	cqto
	movq	-776(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-760(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB45_127
	jmp	.LBB45_124
.LBB45_107:                             # %cond.false.539
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_108
	jmp	.LBB45_109
.LBB45_108:                             # %cond.true.540
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_127
	jmp	.LBB45_124
.LBB45_109:                             # %cond.false.541
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_111
# BB#110:                               # %cond.true.547
	xorl	%eax, %eax
	movq	-200(%rbp), %rcx
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
	movq	-200(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -784(%rbp)        # 8-byte Spill
	jmp	.LBB45_112
.LBB45_111:                             # %cond.false.564
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
.LBB45_112:                             # %cond.end.568
	movq	-784(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -792(%rbp)        # 8-byte Spill
	cqto
	movq	-792(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-200(%rbp), %rax
	jl	.LBB45_127
	jmp	.LBB45_124
.LBB45_113:                             # %cond.false.573
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_114
	jmp	.LBB45_115
.LBB45_114:                             # %cond.true.574
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_127
	jmp	.LBB45_124
.LBB45_115:                             # %cond.false.575
	cmpq	$0, -200(%rbp)
	jge	.LBB45_120
# BB#116:                               # %cond.true.578
	movq	-200(%rbp), %rax
	movq	-200(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -800(%rbp)        # 8-byte Spill
	jge	.LBB45_118
# BB#117:                               # %cond.true.584
	xorl	%eax, %eax
	movq	-200(%rbp), %rcx
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
	movq	-200(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -808(%rbp)        # 8-byte Spill
	jmp	.LBB45_119
.LBB45_118:                             # %cond.false.601
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
.LBB45_119:                             # %cond.end.605
	movq	-808(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -816(%rbp)        # 8-byte Spill
	cqto
	movq	-816(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-800(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB45_127
	jmp	.LBB45_124
.LBB45_120:                             # %cond.false.610
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_122
# BB#121:                               # %cond.true.616
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -824(%rbp)        # 8-byte Spill
	jmp	.LBB45_123
.LBB45_122:                             # %cond.false.624
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -824(%rbp)        # 8-byte Spill
.LBB45_123:                             # %cond.end.628
	movq	-824(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -832(%rbp)        # 8-byte Spill
	cqto
	movq	-832(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-200(%rbp), %rax
	jl	.LBB45_127
.LBB45_124:                             # %lor.lhs.false.633
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_126
# BB#125:                               # %land.lhs.true.639
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	cmpq	$-128, %rax
	jl	.LBB45_127
.LBB45_126:                             # %lor.lhs.false.643
	movl	$127, %eax
	movl	%eax, %ecx
	movq	-200(%rbp), %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB45_131
.LBB45_127:                             # %cond.true.647
	movq	-200(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB45_129
# BB#128:                               # %cond.true.653
	movq	-200(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -836(%rbp)        # 4-byte Spill
	jmp	.LBB45_130
.LBB45_129:                             # %cond.false.659
	movq	-200(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -836(%rbp)        # 4-byte Spill
.LBB45_130:                             # %cond.end.667
	movl	-836(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -216(%rbp)
	testb	$1, %cl
	jne	.LBB45_455
	jmp	.LBB45_454
.LBB45_131:                             # %cond.false.670
	movq	-200(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB45_133
# BB#132:                               # %cond.true.676
	movq	-200(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -840(%rbp)        # 4-byte Spill
	jmp	.LBB45_134
.LBB45_133:                             # %cond.false.682
	movq	-200(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -840(%rbp)        # 4-byte Spill
.LBB45_134:                             # %cond.end.690
	movl	-840(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -216(%rbp)
	testb	$1, %dl
	jne	.LBB45_455
	jmp	.LBB45_454
.LBB45_135:                             # %cond.false.693
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_136
	jmp	.LBB45_215
.LBB45_136:                             # %cond.true.694
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_137
	jmp	.LBB45_176
.LBB45_137:                             # %cond.true.695
	movq	-200(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB45_139
# BB#138:                               # %cond.true.703
	xorl	%eax, %eax
	movq	-200(%rbp), %rcx
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
	movq	-200(%rbp), %rcx
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
	movl	%eax, -844(%rbp)        # 4-byte Spill
	jmp	.LBB45_140
.LBB45_139:                             # %cond.false.723
	movq	-200(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -844(%rbp)        # 4-byte Spill
.LBB45_140:                             # %cond.end.729
	movl	-844(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB45_142
# BB#141:                               # %land.lhs.true.733
	movq	-200(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jl	.LBB45_168
.LBB45_142:                             # %lor.lhs.false.738
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_143
	jmp	.LBB45_154
.LBB45_143:                             # %cond.true.739
	movq	-200(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB45_148
# BB#144:                               # %cond.true.744
	movq	-200(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-200(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -848(%rbp)        # 4-byte Spill
	jge	.LBB45_146
# BB#145:                               # %cond.true.754
	movq	-200(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -852(%rbp)        # 4-byte Spill
	jmp	.LBB45_147
.LBB45_146:                             # %cond.false.764
	movq	-200(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -852(%rbp)        # 4-byte Spill
.LBB45_147:                             # %cond.end.770
	movl	-852(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-848(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB45_168
	jmp	.LBB45_165
.LBB45_148:                             # %cond.false.775
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_149
	jmp	.LBB45_150
.LBB45_149:                             # %cond.true.776
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_168
	jmp	.LBB45_165
.LBB45_150:                             # %cond.false.777
	movq	-200(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB45_152
# BB#151:                               # %cond.true.785
	xorl	%eax, %eax
	movq	-200(%rbp), %rcx
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
	movq	-200(%rbp), %rcx
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
	movl	%eax, -856(%rbp)        # 4-byte Spill
	jmp	.LBB45_153
.LBB45_152:                             # %cond.false.805
	movq	-200(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -856(%rbp)        # 4-byte Spill
.LBB45_153:                             # %cond.end.811
	movl	-856(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-200(%rbp), %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB45_168
	jmp	.LBB45_165
.LBB45_154:                             # %cond.false.818
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_155
	jmp	.LBB45_156
.LBB45_155:                             # %cond.true.819
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_168
	jmp	.LBB45_165
.LBB45_156:                             # %cond.false.820
	movq	-200(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB45_161
# BB#157:                               # %cond.true.825
	movq	-200(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-200(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -860(%rbp)        # 4-byte Spill
	jge	.LBB45_159
# BB#158:                               # %cond.true.835
	xorl	%eax, %eax
	movq	-200(%rbp), %rcx
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
	movq	-200(%rbp), %rcx
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
	movl	%eax, -864(%rbp)        # 4-byte Spill
	jmp	.LBB45_160
.LBB45_159:                             # %cond.false.855
	movq	-200(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -864(%rbp)        # 4-byte Spill
.LBB45_160:                             # %cond.end.861
	movl	-864(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-860(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB45_168
	jmp	.LBB45_165
.LBB45_161:                             # %cond.false.866
	movq	-200(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB45_163
# BB#162:                               # %cond.true.874
	movq	-200(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -868(%rbp)        # 4-byte Spill
	jmp	.LBB45_164
.LBB45_163:                             # %cond.false.884
	movq	-200(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -868(%rbp)        # 4-byte Spill
.LBB45_164:                             # %cond.end.890
	movl	-868(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-200(%rbp), %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB45_168
.LBB45_165:                             # %lor.lhs.false.897
	movq	-200(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$3, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB45_167
# BB#166:                               # %land.lhs.true.905
	movq	-200(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$3, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB45_168
.LBB45_167:                             # %lor.lhs.false.911
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-200(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	shll	$3, %esi
	cmpl	%esi, %eax
	jge	.LBB45_172
.LBB45_168:                             # %cond.true.917
	movq	-200(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB45_170
# BB#169:                               # %cond.true.923
	movq	-200(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -872(%rbp)        # 4-byte Spill
	jmp	.LBB45_171
.LBB45_170:                             # %cond.false.929
	movq	-200(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -872(%rbp)        # 4-byte Spill
.LBB45_171:                             # %cond.end.937
	movl	-872(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -216(%rbp)
	testb	$1, %cl
	jne	.LBB45_455
	jmp	.LBB45_454
.LBB45_172:                             # %cond.false.940
	movq	-200(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB45_174
# BB#173:                               # %cond.true.946
	movq	-200(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -876(%rbp)        # 4-byte Spill
	jmp	.LBB45_175
.LBB45_174:                             # %cond.false.952
	movq	-200(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -876(%rbp)        # 4-byte Spill
.LBB45_175:                             # %cond.end.960
	movl	-876(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -216(%rbp)
	testb	$1, %dl
	jne	.LBB45_455
	jmp	.LBB45_454
.LBB45_176:                             # %cond.false.963
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_178
# BB#177:                               # %cond.true.969
	xorl	%eax, %eax
	movq	-200(%rbp), %rcx
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
	movq	-200(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -888(%rbp)        # 8-byte Spill
	jmp	.LBB45_179
.LBB45_178:                             # %cond.false.986
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
.LBB45_179:                             # %cond.end.990
	movq	-888(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB45_181
# BB#180:                               # %land.lhs.true.994
	cmpq	$0, -200(%rbp)
	jl	.LBB45_207
.LBB45_181:                             # %lor.lhs.false.997
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_182
	jmp	.LBB45_193
.LBB45_182:                             # %cond.true.998
	cmpq	$0, -200(%rbp)
	jge	.LBB45_187
# BB#183:                               # %cond.true.1001
	movq	-200(%rbp), %rax
	movq	-200(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -896(%rbp)        # 8-byte Spill
	jge	.LBB45_185
# BB#184:                               # %cond.true.1007
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
	jmp	.LBB45_186
.LBB45_185:                             # %cond.false.1015
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
.LBB45_186:                             # %cond.end.1019
	movq	-904(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -912(%rbp)        # 8-byte Spill
	cqto
	movq	-912(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-896(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB45_207
	jmp	.LBB45_204
.LBB45_187:                             # %cond.false.1024
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_188
	jmp	.LBB45_189
.LBB45_188:                             # %cond.true.1025
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_207
	jmp	.LBB45_204
.LBB45_189:                             # %cond.false.1026
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_191
# BB#190:                               # %cond.true.1032
	xorl	%eax, %eax
	movq	-200(%rbp), %rcx
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
	movq	-200(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -920(%rbp)        # 8-byte Spill
	jmp	.LBB45_192
.LBB45_191:                             # %cond.false.1049
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -920(%rbp)        # 8-byte Spill
.LBB45_192:                             # %cond.end.1053
	movq	-920(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -928(%rbp)        # 8-byte Spill
	cqto
	movq	-928(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-200(%rbp), %rax
	jl	.LBB45_207
	jmp	.LBB45_204
.LBB45_193:                             # %cond.false.1058
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_194
	jmp	.LBB45_195
.LBB45_194:                             # %cond.true.1059
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_207
	jmp	.LBB45_204
.LBB45_195:                             # %cond.false.1060
	cmpq	$0, -200(%rbp)
	jge	.LBB45_200
# BB#196:                               # %cond.true.1063
	movq	-200(%rbp), %rax
	movq	-200(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -936(%rbp)        # 8-byte Spill
	jge	.LBB45_198
# BB#197:                               # %cond.true.1069
	xorl	%eax, %eax
	movq	-200(%rbp), %rcx
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
	movq	-200(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -944(%rbp)        # 8-byte Spill
	jmp	.LBB45_199
.LBB45_198:                             # %cond.false.1086
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -944(%rbp)        # 8-byte Spill
.LBB45_199:                             # %cond.end.1090
	movq	-944(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -952(%rbp)        # 8-byte Spill
	cqto
	movq	-952(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-936(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB45_207
	jmp	.LBB45_204
.LBB45_200:                             # %cond.false.1095
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_202
# BB#201:                               # %cond.true.1101
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jmp	.LBB45_203
.LBB45_202:                             # %cond.false.1109
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
.LBB45_203:                             # %cond.end.1113
	movq	-960(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -968(%rbp)        # 8-byte Spill
	cqto
	movq	-968(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-200(%rbp), %rax
	jl	.LBB45_207
.LBB45_204:                             # %lor.lhs.false.1118
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_206
# BB#205:                               # %land.lhs.true.1124
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB45_207
.LBB45_206:                             # %lor.lhs.false.1128
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movq	-200(%rbp), %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB45_211
.LBB45_207:                             # %cond.true.1132
	movq	-200(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB45_209
# BB#208:                               # %cond.true.1138
	movq	-200(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -972(%rbp)        # 4-byte Spill
	jmp	.LBB45_210
.LBB45_209:                             # %cond.false.1144
	movq	-200(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -972(%rbp)        # 4-byte Spill
.LBB45_210:                             # %cond.end.1152
	movl	-972(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -216(%rbp)
	testb	$1, %cl
	jne	.LBB45_455
	jmp	.LBB45_454
.LBB45_211:                             # %cond.false.1155
	movq	-200(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB45_213
# BB#212:                               # %cond.true.1161
	movq	-200(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -976(%rbp)        # 4-byte Spill
	jmp	.LBB45_214
.LBB45_213:                             # %cond.false.1167
	movq	-200(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -976(%rbp)        # 4-byte Spill
.LBB45_214:                             # %cond.end.1175
	movl	-976(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -216(%rbp)
	testb	$1, %dl
	jne	.LBB45_455
	jmp	.LBB45_454
.LBB45_215:                             # %cond.false.1178
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_216
	jmp	.LBB45_295
.LBB45_216:                             # %cond.true.1179
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_217
	jmp	.LBB45_256
.LBB45_217:                             # %cond.true.1180
	movq	-200(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB45_219
# BB#218:                               # %cond.true.1187
	xorl	%eax, %eax
	movq	-200(%rbp), %rcx
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
	movq	-200(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -980(%rbp)        # 4-byte Spill
	jmp	.LBB45_220
.LBB45_219:                             # %cond.false.1205
	movq	-200(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -980(%rbp)        # 4-byte Spill
.LBB45_220:                             # %cond.end.1210
	movl	-980(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB45_222
# BB#221:                               # %land.lhs.true.1214
	movq	-200(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jl	.LBB45_248
.LBB45_222:                             # %lor.lhs.false.1218
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_223
	jmp	.LBB45_234
.LBB45_223:                             # %cond.true.1219
	movq	-200(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB45_228
# BB#224:                               # %cond.true.1223
	movq	-200(%rbp), %rax
	movl	%eax, %ecx
	movq	-200(%rbp), %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -984(%rbp)        # 4-byte Spill
	jge	.LBB45_226
# BB#225:                               # %cond.true.1231
	movq	-200(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -988(%rbp)        # 4-byte Spill
	jmp	.LBB45_227
.LBB45_226:                             # %cond.false.1240
	movq	-200(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -988(%rbp)        # 4-byte Spill
.LBB45_227:                             # %cond.end.1245
	movl	-988(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-984(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB45_248
	jmp	.LBB45_245
.LBB45_228:                             # %cond.false.1250
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_229
	jmp	.LBB45_230
.LBB45_229:                             # %cond.true.1251
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_248
	jmp	.LBB45_245
.LBB45_230:                             # %cond.false.1252
	movq	-200(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB45_232
# BB#231:                               # %cond.true.1259
	xorl	%eax, %eax
	movq	-200(%rbp), %rcx
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
	movq	-200(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -992(%rbp)        # 4-byte Spill
	jmp	.LBB45_233
.LBB45_232:                             # %cond.false.1277
	movq	-200(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -992(%rbp)        # 4-byte Spill
.LBB45_233:                             # %cond.end.1282
	movl	-992(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-200(%rbp), %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB45_248
	jmp	.LBB45_245
.LBB45_234:                             # %cond.false.1288
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_235
	jmp	.LBB45_236
.LBB45_235:                             # %cond.true.1289
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_248
	jmp	.LBB45_245
.LBB45_236:                             # %cond.false.1290
	movq	-200(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB45_241
# BB#237:                               # %cond.true.1294
	movq	-200(%rbp), %rax
	movl	%eax, %ecx
	movq	-200(%rbp), %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -996(%rbp)        # 4-byte Spill
	jge	.LBB45_239
# BB#238:                               # %cond.true.1302
	xorl	%eax, %eax
	movq	-200(%rbp), %rcx
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
	movq	-200(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -1000(%rbp)       # 4-byte Spill
	jmp	.LBB45_240
.LBB45_239:                             # %cond.false.1320
	movq	-200(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -1000(%rbp)       # 4-byte Spill
.LBB45_240:                             # %cond.end.1325
	movl	-1000(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-996(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB45_248
	jmp	.LBB45_245
.LBB45_241:                             # %cond.false.1330
	movq	-200(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB45_243
# BB#242:                               # %cond.true.1337
	movq	-200(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -1004(%rbp)       # 4-byte Spill
	jmp	.LBB45_244
.LBB45_243:                             # %cond.false.1346
	movq	-200(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -1004(%rbp)       # 4-byte Spill
.LBB45_244:                             # %cond.end.1351
	movl	-1004(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-200(%rbp), %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB45_248
.LBB45_245:                             # %lor.lhs.false.1357
	movq	-200(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB45_247
# BB#246:                               # %land.lhs.true.1364
	movq	-200(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB45_248
.LBB45_247:                             # %lor.lhs.false.1369
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-200(%rbp), %rcx
	movl	%ecx, %edx
	shll	$3, %edx
	cmpl	%edx, %eax
	jge	.LBB45_252
.LBB45_248:                             # %cond.true.1374
	movq	-200(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB45_250
# BB#249:                               # %cond.true.1379
	movq	-200(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -1008(%rbp)       # 4-byte Spill
	jmp	.LBB45_251
.LBB45_250:                             # %cond.false.1382
	movq	-200(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -1008(%rbp)       # 4-byte Spill
.LBB45_251:                             # %cond.end.1387
	movl	-1008(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -216(%rbp)
	testb	$1, %cl
	jne	.LBB45_455
	jmp	.LBB45_454
.LBB45_252:                             # %cond.false.1390
	movq	-200(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB45_254
# BB#253:                               # %cond.true.1395
	movq	-200(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -1012(%rbp)       # 4-byte Spill
	jmp	.LBB45_255
.LBB45_254:                             # %cond.false.1398
	movq	-200(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -1012(%rbp)       # 4-byte Spill
.LBB45_255:                             # %cond.end.1403
	movl	-1012(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -216(%rbp)
	testb	$1, %dl
	jne	.LBB45_455
	jmp	.LBB45_454
.LBB45_256:                             # %cond.false.1406
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_258
# BB#257:                               # %cond.true.1412
	xorl	%eax, %eax
	movq	-200(%rbp), %rcx
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
	movq	-200(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1024(%rbp)       # 8-byte Spill
	jmp	.LBB45_259
.LBB45_258:                             # %cond.false.1429
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1024(%rbp)       # 8-byte Spill
.LBB45_259:                             # %cond.end.1433
	movq	-1024(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB45_261
# BB#260:                               # %land.lhs.true.1437
	cmpq	$0, -200(%rbp)
	jl	.LBB45_287
.LBB45_261:                             # %lor.lhs.false.1440
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_262
	jmp	.LBB45_273
.LBB45_262:                             # %cond.true.1441
	cmpq	$0, -200(%rbp)
	jge	.LBB45_267
# BB#263:                               # %cond.true.1444
	movq	-200(%rbp), %rax
	movq	-200(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1032(%rbp)       # 8-byte Spill
	jge	.LBB45_265
# BB#264:                               # %cond.true.1450
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1040(%rbp)       # 8-byte Spill
	jmp	.LBB45_266
.LBB45_265:                             # %cond.false.1458
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1040(%rbp)       # 8-byte Spill
.LBB45_266:                             # %cond.end.1462
	movq	-1040(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1048(%rbp)       # 8-byte Spill
	cqto
	movq	-1048(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1032(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB45_287
	jmp	.LBB45_284
.LBB45_267:                             # %cond.false.1467
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_268
	jmp	.LBB45_269
.LBB45_268:                             # %cond.true.1468
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_287
	jmp	.LBB45_284
.LBB45_269:                             # %cond.false.1469
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_271
# BB#270:                               # %cond.true.1475
	xorl	%eax, %eax
	movq	-200(%rbp), %rcx
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
	movq	-200(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1056(%rbp)       # 8-byte Spill
	jmp	.LBB45_272
.LBB45_271:                             # %cond.false.1492
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1056(%rbp)       # 8-byte Spill
.LBB45_272:                             # %cond.end.1496
	movq	-1056(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1064(%rbp)       # 8-byte Spill
	cqto
	movq	-1064(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-200(%rbp), %rax
	jl	.LBB45_287
	jmp	.LBB45_284
.LBB45_273:                             # %cond.false.1501
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_274
	jmp	.LBB45_275
.LBB45_274:                             # %cond.true.1502
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_287
	jmp	.LBB45_284
.LBB45_275:                             # %cond.false.1503
	cmpq	$0, -200(%rbp)
	jge	.LBB45_280
# BB#276:                               # %cond.true.1506
	movq	-200(%rbp), %rax
	movq	-200(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1072(%rbp)       # 8-byte Spill
	jge	.LBB45_278
# BB#277:                               # %cond.true.1512
	xorl	%eax, %eax
	movq	-200(%rbp), %rcx
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
	movq	-200(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1080(%rbp)       # 8-byte Spill
	jmp	.LBB45_279
.LBB45_278:                             # %cond.false.1529
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1080(%rbp)       # 8-byte Spill
.LBB45_279:                             # %cond.end.1533
	movq	-1080(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1088(%rbp)       # 8-byte Spill
	cqto
	movq	-1088(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1072(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB45_287
	jmp	.LBB45_284
.LBB45_280:                             # %cond.false.1538
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_282
# BB#281:                               # %cond.true.1544
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1096(%rbp)       # 8-byte Spill
	jmp	.LBB45_283
.LBB45_282:                             # %cond.false.1552
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1096(%rbp)       # 8-byte Spill
.LBB45_283:                             # %cond.end.1556
	movq	-1096(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1104(%rbp)       # 8-byte Spill
	cqto
	movq	-1104(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-200(%rbp), %rax
	jl	.LBB45_287
.LBB45_284:                             # %lor.lhs.false.1561
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_286
# BB#285:                               # %land.lhs.true.1567
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB45_287
.LBB45_286:                             # %lor.lhs.false.1571
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	-200(%rbp), %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB45_291
.LBB45_287:                             # %cond.true.1575
	movq	-200(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB45_289
# BB#288:                               # %cond.true.1580
	movq	-200(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -1108(%rbp)       # 4-byte Spill
	jmp	.LBB45_290
.LBB45_289:                             # %cond.false.1583
	movq	-200(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -1108(%rbp)       # 4-byte Spill
.LBB45_290:                             # %cond.end.1588
	movl	-1108(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -216(%rbp)
	testb	$1, %cl
	jne	.LBB45_455
	jmp	.LBB45_454
.LBB45_291:                             # %cond.false.1591
	movq	-200(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB45_293
# BB#292:                               # %cond.true.1596
	movq	-200(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -1112(%rbp)       # 4-byte Spill
	jmp	.LBB45_294
.LBB45_293:                             # %cond.false.1599
	movq	-200(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -1112(%rbp)       # 4-byte Spill
.LBB45_294:                             # %cond.end.1604
	movl	-1112(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -216(%rbp)
	testb	$1, %dl
	jne	.LBB45_455
	jmp	.LBB45_454
.LBB45_295:                             # %cond.false.1607
	movb	$1, %al
	testb	$1, %al
	jne	.LBB45_296
	jmp	.LBB45_375
.LBB45_296:                             # %cond.true.1608
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_297
	jmp	.LBB45_336
.LBB45_297:                             # %cond.true.1609
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_299
# BB#298:                               # %cond.true.1615
	xorl	%eax, %eax
	movq	-200(%rbp), %rcx
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
	movq	-200(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1120(%rbp)       # 8-byte Spill
	jmp	.LBB45_300
.LBB45_299:                             # %cond.false.1632
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1120(%rbp)       # 8-byte Spill
.LBB45_300:                             # %cond.end.1636
	movq	-1120(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB45_302
# BB#301:                               # %land.lhs.true.1640
	cmpq	$0, -200(%rbp)
	jl	.LBB45_328
.LBB45_302:                             # %lor.lhs.false.1643
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_303
	jmp	.LBB45_314
.LBB45_303:                             # %cond.true.1644
	cmpq	$0, -200(%rbp)
	jge	.LBB45_308
# BB#304:                               # %cond.true.1647
	movq	-200(%rbp), %rax
	movq	-200(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1128(%rbp)       # 8-byte Spill
	jge	.LBB45_306
# BB#305:                               # %cond.true.1653
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1136(%rbp)       # 8-byte Spill
	jmp	.LBB45_307
.LBB45_306:                             # %cond.false.1661
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1136(%rbp)       # 8-byte Spill
.LBB45_307:                             # %cond.end.1665
	movq	-1136(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1144(%rbp)       # 8-byte Spill
	cqto
	movq	-1144(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1128(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB45_328
	jmp	.LBB45_325
.LBB45_308:                             # %cond.false.1670
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_309
	jmp	.LBB45_310
.LBB45_309:                             # %cond.true.1671
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_328
	jmp	.LBB45_325
.LBB45_310:                             # %cond.false.1672
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_312
# BB#311:                               # %cond.true.1678
	xorl	%eax, %eax
	movq	-200(%rbp), %rcx
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
	movq	-200(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1152(%rbp)       # 8-byte Spill
	jmp	.LBB45_313
.LBB45_312:                             # %cond.false.1695
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1152(%rbp)       # 8-byte Spill
.LBB45_313:                             # %cond.end.1699
	movq	-1152(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1160(%rbp)       # 8-byte Spill
	cqto
	movq	-1160(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-200(%rbp), %rax
	jl	.LBB45_328
	jmp	.LBB45_325
.LBB45_314:                             # %cond.false.1704
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_315
	jmp	.LBB45_316
.LBB45_315:                             # %cond.true.1705
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_328
	jmp	.LBB45_325
.LBB45_316:                             # %cond.false.1706
	cmpq	$0, -200(%rbp)
	jge	.LBB45_321
# BB#317:                               # %cond.true.1709
	movq	-200(%rbp), %rax
	movq	-200(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1168(%rbp)       # 8-byte Spill
	jge	.LBB45_319
# BB#318:                               # %cond.true.1715
	xorl	%eax, %eax
	movq	-200(%rbp), %rcx
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
	movq	-200(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1176(%rbp)       # 8-byte Spill
	jmp	.LBB45_320
.LBB45_319:                             # %cond.false.1732
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1176(%rbp)       # 8-byte Spill
.LBB45_320:                             # %cond.end.1736
	movq	-1176(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1184(%rbp)       # 8-byte Spill
	cqto
	movq	-1184(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1168(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB45_328
	jmp	.LBB45_325
.LBB45_321:                             # %cond.false.1741
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_323
# BB#322:                               # %cond.true.1747
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1192(%rbp)       # 8-byte Spill
	jmp	.LBB45_324
.LBB45_323:                             # %cond.false.1755
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1192(%rbp)       # 8-byte Spill
.LBB45_324:                             # %cond.end.1759
	movq	-1192(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1200(%rbp)       # 8-byte Spill
	cqto
	movq	-1200(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-200(%rbp), %rax
	jl	.LBB45_328
.LBB45_325:                             # %lor.lhs.false.1764
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_327
# BB#326:                               # %land.lhs.true.1770
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-200(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB45_328
.LBB45_327:                             # %lor.lhs.false.1774
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-200(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB45_332
.LBB45_328:                             # %cond.true.1778
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-200(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB45_330
# BB#329:                               # %cond.true.1782
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -1208(%rbp)       # 8-byte Spill
	jmp	.LBB45_331
.LBB45_330:                             # %cond.false.1784
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1208(%rbp)       # 8-byte Spill
.LBB45_331:                             # %cond.end.1788
	movq	-1208(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -216(%rbp)
	testb	$1, %cl
	jne	.LBB45_455
	jmp	.LBB45_454
.LBB45_332:                             # %cond.false.1790
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-200(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB45_334
# BB#333:                               # %cond.true.1794
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -1216(%rbp)       # 8-byte Spill
	jmp	.LBB45_335
.LBB45_334:                             # %cond.false.1796
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1216(%rbp)       # 8-byte Spill
.LBB45_335:                             # %cond.end.1800
	movq	-1216(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -216(%rbp)
	testb	$1, %dl
	jne	.LBB45_455
	jmp	.LBB45_454
.LBB45_336:                             # %cond.false.1802
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_338
# BB#337:                               # %cond.true.1808
	xorl	%eax, %eax
	movq	-200(%rbp), %rcx
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
	movq	-200(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1224(%rbp)       # 8-byte Spill
	jmp	.LBB45_339
.LBB45_338:                             # %cond.false.1825
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1224(%rbp)       # 8-byte Spill
.LBB45_339:                             # %cond.end.1829
	movq	-1224(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB45_341
# BB#340:                               # %land.lhs.true.1833
	cmpq	$0, -200(%rbp)
	jl	.LBB45_367
.LBB45_341:                             # %lor.lhs.false.1836
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_342
	jmp	.LBB45_353
.LBB45_342:                             # %cond.true.1837
	cmpq	$0, -200(%rbp)
	jge	.LBB45_347
# BB#343:                               # %cond.true.1840
	movq	-200(%rbp), %rax
	movq	-200(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1232(%rbp)       # 8-byte Spill
	jge	.LBB45_345
# BB#344:                               # %cond.true.1846
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1240(%rbp)       # 8-byte Spill
	jmp	.LBB45_346
.LBB45_345:                             # %cond.false.1854
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1240(%rbp)       # 8-byte Spill
.LBB45_346:                             # %cond.end.1858
	movq	-1240(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1248(%rbp)       # 8-byte Spill
	cqto
	movq	-1248(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1232(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB45_367
	jmp	.LBB45_364
.LBB45_347:                             # %cond.false.1863
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_348
	jmp	.LBB45_349
.LBB45_348:                             # %cond.true.1864
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_367
	jmp	.LBB45_364
.LBB45_349:                             # %cond.false.1865
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_351
# BB#350:                               # %cond.true.1871
	xorl	%eax, %eax
	movq	-200(%rbp), %rcx
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
	movq	-200(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1256(%rbp)       # 8-byte Spill
	jmp	.LBB45_352
.LBB45_351:                             # %cond.false.1888
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1256(%rbp)       # 8-byte Spill
.LBB45_352:                             # %cond.end.1892
	movq	-1256(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1264(%rbp)       # 8-byte Spill
	cqto
	movq	-1264(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-200(%rbp), %rax
	jl	.LBB45_367
	jmp	.LBB45_364
.LBB45_353:                             # %cond.false.1897
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_354
	jmp	.LBB45_355
.LBB45_354:                             # %cond.true.1898
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_367
	jmp	.LBB45_364
.LBB45_355:                             # %cond.false.1899
	cmpq	$0, -200(%rbp)
	jge	.LBB45_360
# BB#356:                               # %cond.true.1902
	movq	-200(%rbp), %rax
	movq	-200(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1272(%rbp)       # 8-byte Spill
	jge	.LBB45_358
# BB#357:                               # %cond.true.1908
	xorl	%eax, %eax
	movq	-200(%rbp), %rcx
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
	movq	-200(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1280(%rbp)       # 8-byte Spill
	jmp	.LBB45_359
.LBB45_358:                             # %cond.false.1925
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1280(%rbp)       # 8-byte Spill
.LBB45_359:                             # %cond.end.1929
	movq	-1280(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1288(%rbp)       # 8-byte Spill
	cqto
	movq	-1288(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1272(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB45_367
	jmp	.LBB45_364
.LBB45_360:                             # %cond.false.1934
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_362
# BB#361:                               # %cond.true.1940
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1296(%rbp)       # 8-byte Spill
	jmp	.LBB45_363
.LBB45_362:                             # %cond.false.1948
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1296(%rbp)       # 8-byte Spill
.LBB45_363:                             # %cond.end.1952
	movq	-1296(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1304(%rbp)       # 8-byte Spill
	cqto
	movq	-1304(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-200(%rbp), %rax
	jl	.LBB45_367
.LBB45_364:                             # %lor.lhs.false.1957
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_366
# BB#365:                               # %land.lhs.true.1963
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-200(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB45_367
.LBB45_366:                             # %lor.lhs.false.1967
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-200(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB45_371
.LBB45_367:                             # %cond.true.1971
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-200(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB45_369
# BB#368:                               # %cond.true.1975
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -1312(%rbp)       # 8-byte Spill
	jmp	.LBB45_370
.LBB45_369:                             # %cond.false.1977
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1312(%rbp)       # 8-byte Spill
.LBB45_370:                             # %cond.end.1981
	movq	-1312(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -216(%rbp)
	testb	$1, %cl
	jne	.LBB45_455
	jmp	.LBB45_454
.LBB45_371:                             # %cond.false.1983
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-200(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB45_373
# BB#372:                               # %cond.true.1987
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -1320(%rbp)       # 8-byte Spill
	jmp	.LBB45_374
.LBB45_373:                             # %cond.false.1989
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1320(%rbp)       # 8-byte Spill
.LBB45_374:                             # %cond.end.1993
	movq	-1320(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -216(%rbp)
	testb	$1, %dl
	jne	.LBB45_455
	jmp	.LBB45_454
.LBB45_375:                             # %cond.false.1995
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_376
	jmp	.LBB45_415
.LBB45_376:                             # %cond.true.1996
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_378
# BB#377:                               # %cond.true.2002
	xorl	%eax, %eax
	movq	-200(%rbp), %rcx
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
	movq	-200(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1328(%rbp)       # 8-byte Spill
	jmp	.LBB45_379
.LBB45_378:                             # %cond.false.2019
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1328(%rbp)       # 8-byte Spill
.LBB45_379:                             # %cond.end.2023
	movq	-1328(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB45_381
# BB#380:                               # %land.lhs.true.2027
	cmpq	$0, -200(%rbp)
	jl	.LBB45_407
.LBB45_381:                             # %lor.lhs.false.2030
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_382
	jmp	.LBB45_393
.LBB45_382:                             # %cond.true.2031
	cmpq	$0, -200(%rbp)
	jge	.LBB45_387
# BB#383:                               # %cond.true.2034
	movq	-200(%rbp), %rax
	movq	-200(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1336(%rbp)       # 8-byte Spill
	jge	.LBB45_385
# BB#384:                               # %cond.true.2040
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1344(%rbp)       # 8-byte Spill
	jmp	.LBB45_386
.LBB45_385:                             # %cond.false.2048
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1344(%rbp)       # 8-byte Spill
.LBB45_386:                             # %cond.end.2052
	movq	-1344(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1352(%rbp)       # 8-byte Spill
	cqto
	movq	-1352(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1336(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB45_407
	jmp	.LBB45_404
.LBB45_387:                             # %cond.false.2057
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_388
	jmp	.LBB45_389
.LBB45_388:                             # %cond.true.2058
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_407
	jmp	.LBB45_404
.LBB45_389:                             # %cond.false.2059
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_391
# BB#390:                               # %cond.true.2065
	xorl	%eax, %eax
	movq	-200(%rbp), %rcx
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
	movq	-200(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1360(%rbp)       # 8-byte Spill
	jmp	.LBB45_392
.LBB45_391:                             # %cond.false.2082
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1360(%rbp)       # 8-byte Spill
.LBB45_392:                             # %cond.end.2086
	movq	-1360(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1368(%rbp)       # 8-byte Spill
	cqto
	movq	-1368(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-200(%rbp), %rax
	jl	.LBB45_407
	jmp	.LBB45_404
.LBB45_393:                             # %cond.false.2091
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_394
	jmp	.LBB45_395
.LBB45_394:                             # %cond.true.2092
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_407
	jmp	.LBB45_404
.LBB45_395:                             # %cond.false.2093
	cmpq	$0, -200(%rbp)
	jge	.LBB45_400
# BB#396:                               # %cond.true.2096
	movq	-200(%rbp), %rax
	movq	-200(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1376(%rbp)       # 8-byte Spill
	jge	.LBB45_398
# BB#397:                               # %cond.true.2102
	xorl	%eax, %eax
	movq	-200(%rbp), %rcx
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
	movq	-200(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1384(%rbp)       # 8-byte Spill
	jmp	.LBB45_399
.LBB45_398:                             # %cond.false.2119
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1384(%rbp)       # 8-byte Spill
.LBB45_399:                             # %cond.end.2123
	movq	-1384(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1392(%rbp)       # 8-byte Spill
	cqto
	movq	-1392(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1376(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB45_407
	jmp	.LBB45_404
.LBB45_400:                             # %cond.false.2128
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_402
# BB#401:                               # %cond.true.2134
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1400(%rbp)       # 8-byte Spill
	jmp	.LBB45_403
.LBB45_402:                             # %cond.false.2142
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1400(%rbp)       # 8-byte Spill
.LBB45_403:                             # %cond.end.2146
	movq	-1400(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1408(%rbp)       # 8-byte Spill
	cqto
	movq	-1408(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-200(%rbp), %rax
	jl	.LBB45_407
.LBB45_404:                             # %lor.lhs.false.2151
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_406
# BB#405:                               # %land.lhs.true.2157
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-200(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB45_407
.LBB45_406:                             # %lor.lhs.false.2161
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-200(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB45_411
.LBB45_407:                             # %cond.true.2165
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-200(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB45_409
# BB#408:                               # %cond.true.2169
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -1416(%rbp)       # 8-byte Spill
	jmp	.LBB45_410
.LBB45_409:                             # %cond.false.2171
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1416(%rbp)       # 8-byte Spill
.LBB45_410:                             # %cond.end.2175
	movq	-1416(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -216(%rbp)
	testb	$1, %cl
	jne	.LBB45_455
	jmp	.LBB45_454
.LBB45_411:                             # %cond.false.2177
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-200(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB45_413
# BB#412:                               # %cond.true.2181
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -1424(%rbp)       # 8-byte Spill
	jmp	.LBB45_414
.LBB45_413:                             # %cond.false.2183
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1424(%rbp)       # 8-byte Spill
.LBB45_414:                             # %cond.end.2187
	movq	-1424(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -216(%rbp)
	testb	$1, %dl
	jne	.LBB45_455
	jmp	.LBB45_454
.LBB45_415:                             # %cond.false.2189
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_417
# BB#416:                               # %cond.true.2195
	xorl	%eax, %eax
	movq	-200(%rbp), %rcx
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
	movq	-200(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1432(%rbp)       # 8-byte Spill
	jmp	.LBB45_418
.LBB45_417:                             # %cond.false.2212
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1432(%rbp)       # 8-byte Spill
.LBB45_418:                             # %cond.end.2216
	movq	-1432(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB45_420
# BB#419:                               # %land.lhs.true.2220
	cmpq	$0, -200(%rbp)
	jl	.LBB45_446
.LBB45_420:                             # %lor.lhs.false.2223
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_421
	jmp	.LBB45_432
.LBB45_421:                             # %cond.true.2224
	cmpq	$0, -200(%rbp)
	jge	.LBB45_426
# BB#422:                               # %cond.true.2227
	movq	-200(%rbp), %rax
	movq	-200(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1440(%rbp)       # 8-byte Spill
	jge	.LBB45_424
# BB#423:                               # %cond.true.2233
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1448(%rbp)       # 8-byte Spill
	jmp	.LBB45_425
.LBB45_424:                             # %cond.false.2241
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1448(%rbp)       # 8-byte Spill
.LBB45_425:                             # %cond.end.2245
	movq	-1448(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1456(%rbp)       # 8-byte Spill
	cqto
	movq	-1456(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1440(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB45_446
	jmp	.LBB45_443
.LBB45_426:                             # %cond.false.2250
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_427
	jmp	.LBB45_428
.LBB45_427:                             # %cond.true.2251
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_446
	jmp	.LBB45_443
.LBB45_428:                             # %cond.false.2252
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_430
# BB#429:                               # %cond.true.2258
	xorl	%eax, %eax
	movq	-200(%rbp), %rcx
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
	movq	-200(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1464(%rbp)       # 8-byte Spill
	jmp	.LBB45_431
.LBB45_430:                             # %cond.false.2275
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1464(%rbp)       # 8-byte Spill
.LBB45_431:                             # %cond.end.2279
	movq	-1464(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1472(%rbp)       # 8-byte Spill
	cqto
	movq	-1472(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-200(%rbp), %rax
	jl	.LBB45_446
	jmp	.LBB45_443
.LBB45_432:                             # %cond.false.2284
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_433
	jmp	.LBB45_434
.LBB45_433:                             # %cond.true.2285
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_446
	jmp	.LBB45_443
.LBB45_434:                             # %cond.false.2286
	cmpq	$0, -200(%rbp)
	jge	.LBB45_439
# BB#435:                               # %cond.true.2289
	movq	-200(%rbp), %rax
	movq	-200(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1480(%rbp)       # 8-byte Spill
	jge	.LBB45_437
# BB#436:                               # %cond.true.2295
	xorl	%eax, %eax
	movq	-200(%rbp), %rcx
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
	movq	-200(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1488(%rbp)       # 8-byte Spill
	jmp	.LBB45_438
.LBB45_437:                             # %cond.false.2312
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1488(%rbp)       # 8-byte Spill
.LBB45_438:                             # %cond.end.2316
	movq	-1488(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1496(%rbp)       # 8-byte Spill
	cqto
	movq	-1496(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1480(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB45_446
	jmp	.LBB45_443
.LBB45_439:                             # %cond.false.2321
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_441
# BB#440:                               # %cond.true.2327
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1504(%rbp)       # 8-byte Spill
	jmp	.LBB45_442
.LBB45_441:                             # %cond.false.2335
	movq	-200(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1504(%rbp)       # 8-byte Spill
.LBB45_442:                             # %cond.end.2339
	movq	-1504(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1512(%rbp)       # 8-byte Spill
	cqto
	movq	-1512(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-200(%rbp), %rax
	jl	.LBB45_446
.LBB45_443:                             # %lor.lhs.false.2344
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_445
# BB#444:                               # %land.lhs.true.2350
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-200(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB45_446
.LBB45_445:                             # %lor.lhs.false.2354
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-200(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB45_450
.LBB45_446:                             # %cond.true.2358
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-200(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB45_448
# BB#447:                               # %cond.true.2362
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -1520(%rbp)       # 8-byte Spill
	jmp	.LBB45_449
.LBB45_448:                             # %cond.false.2364
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1520(%rbp)       # 8-byte Spill
.LBB45_449:                             # %cond.end.2368
	movq	-1520(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -216(%rbp)
	testb	$1, %cl
	jne	.LBB45_455
	jmp	.LBB45_454
.LBB45_450:                             # %cond.false.2370
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-200(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB45_452
# BB#451:                               # %cond.true.2374
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -1528(%rbp)       # 8-byte Spill
	jmp	.LBB45_453
.LBB45_452:                             # %cond.false.2376
	movq	-200(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1528(%rbp)       # 8-byte Spill
.LBB45_453:                             # %cond.end.2380
	movq	-1528(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -216(%rbp)
	testb	$1, %dl
	jne	.LBB45_455
.LBB45_454:                             # %lor.lhs.false.2382
	movq	$-1, %rax
	cmpq	-216(%rbp), %rax
	jae	.LBB45_456
.LBB45_455:                             # %if.then.2385
	movq	$-1, %rdi
	callq	memory_full
.LBB45_456:                             # %if.else.2386
	movq	-216(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jg	.LBB45_458
# BB#457:                               # %if.then.2389
	movq	-216(%rbp), %rax
	movq	-120(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -120(%rbp)
	movq	-216(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -192(%rbp)
	jmp	.LBB45_459
.LBB45_458:                             # %if.else.2391
	movq	-216(%rbp), %rdi
	callq	xmalloc
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rdi
	movq	-200(%rbp), %rsi
	callq	make_save_memory
	movabsq	$free_save_value, %rdi
	movq	%rax, -224(%rbp)
	movb	$1, -129(%rbp)
	movq	-224(%rbp), %rsi
	callq	record_unwind_protect
.LBB45_459:                             # %if.end.2394
	jmp	.LBB45_460
.LBB45_460:                             # %if.end.2395
	jmp	.LBB45_461
.LBB45_461:                             # %do.end
	movl	$873, %edi              # imm = 0x369
	movq	$0, -232(%rbp)
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -232(%rbp)
	movq	-192(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-40(%rbp), %rax
	movq	-232(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -232(%rbp)
	movq	-192(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-32(%rbp), %rax
	movq	-232(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -232(%rbp)
	movq	-192(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-48(%rbp), %rax
	movq	%rax, -208(%rbp)
.LBB45_462:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-208(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB45_465
# BB#463:                               # %for.body
                                        #   in Loop: Header=BB45_462 Depth=1
	movq	-208(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	-232(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -232(%rbp)
	movq	-192(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
# BB#464:                               # %for.inc
                                        #   in Loop: Header=BB45_462 Depth=1
	movq	-208(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -208(%rbp)
	jmp	.LBB45_462
.LBB45_465:                             # %for.end
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -1536(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1536(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_467
# BB#466:                               # %if.then.2413
	movq	-200(%rbp), %rdi
	movq	-192(%rbp), %rsi
	callq	Ffind_operation_coding_system
	movq	%rax, -176(%rbp)
.LBB45_467:                             # %if.end.2415
	movq	-176(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB45_469
# BB#468:                               # %if.then.2420
	movq	-176(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	jmp	.LBB45_472
.LBB45_469:                             # %if.else.2423
	movq	globals+496, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB45_471
# BB#470:                               # %if.then.2428
	movq	globals+496, %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
.LBB45_471:                             # %if.end.2431
	jmp	.LBB45_472
.LBB45_472:                             # %if.end.2432
	jmp	.LBB45_473
.LBB45_473:                             # %if.end.2433
	movq	-64(%rbp), %rdi
	callq	XPROCESS
	movq	-184(%rbp), %rsi
	movq	%rax, %rdi
	callq	pset_decode_coding_system
	xorl	%edi, %edi
	movq	-88(%rbp), %rax
	movq	%rax, -1544(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1544(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB45_477
# BB#474:                               # %if.then.2438
	movq	-88(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB45_476
# BB#475:                               # %if.then.2443
	movq	-184(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -184(%rbp)
.LBB45_476:                             # %if.end.2447
	jmp	.LBB45_478
.LBB45_477:                             # %if.else.2448
	movq	globals+288, %rax
	movq	%rax, -184(%rbp)
.LBB45_478:                             # %if.end.2449
	xorl	%edi, %edi
	movq	-184(%rbp), %rax
	movq	%rax, -1552(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1552(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_900
# BB#479:                               # %if.then.2453
	movl	$901, %edi              # imm = 0x385
	movq	-176(%rbp), %rax
	movq	%rax, -1560(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1560(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_894
# BB#480:                               # %if.then.2457
	movq	-48(%rbp), %rdi
	callq	Flength
	sarq	$2, %rax
	addq	$3, %rax
	movq	%rax, -240(%rbp)
# BB#481:                               # %do.body.2463
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_482
	jmp	.LBB45_561
.LBB45_482:                             # %cond.true.2465
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_483
	jmp	.LBB45_522
.LBB45_483:                             # %cond.true.2466
	movq	-240(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB45_485
# BB#484:                               # %cond.true.2474
	xorl	%eax, %eax
	movq	-240(%rbp), %rcx
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
	movq	-240(%rbp), %rcx
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
	movl	%eax, -1564(%rbp)       # 4-byte Spill
	jmp	.LBB45_486
.LBB45_485:                             # %cond.false.2494
	movq	-240(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -1564(%rbp)       # 4-byte Spill
.LBB45_486:                             # %cond.end.2500
	movl	-1564(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB45_488
# BB#487:                               # %land.lhs.true.2504
	movq	-240(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jl	.LBB45_514
.LBB45_488:                             # %lor.lhs.false.2509
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_489
	jmp	.LBB45_500
.LBB45_489:                             # %cond.true.2510
	movq	-240(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB45_494
# BB#490:                               # %cond.true.2515
	movq	-240(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-240(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -1568(%rbp)       # 4-byte Spill
	jge	.LBB45_492
# BB#491:                               # %cond.true.2525
	movq	-240(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -1572(%rbp)       # 4-byte Spill
	jmp	.LBB45_493
.LBB45_492:                             # %cond.false.2535
	movq	-240(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -1572(%rbp)       # 4-byte Spill
.LBB45_493:                             # %cond.end.2541
	movl	-1572(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-1568(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB45_514
	jmp	.LBB45_511
.LBB45_494:                             # %cond.false.2546
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_495
	jmp	.LBB45_496
.LBB45_495:                             # %cond.true.2547
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_514
	jmp	.LBB45_511
.LBB45_496:                             # %cond.false.2548
	movq	-240(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB45_498
# BB#497:                               # %cond.true.2556
	xorl	%eax, %eax
	movq	-240(%rbp), %rcx
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
	movq	-240(%rbp), %rcx
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
	movl	%eax, -1576(%rbp)       # 4-byte Spill
	jmp	.LBB45_499
.LBB45_498:                             # %cond.false.2576
	movq	-240(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -1576(%rbp)       # 4-byte Spill
.LBB45_499:                             # %cond.end.2582
	movl	-1576(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-240(%rbp), %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB45_514
	jmp	.LBB45_511
.LBB45_500:                             # %cond.false.2589
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_501
	jmp	.LBB45_502
.LBB45_501:                             # %cond.true.2590
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_514
	jmp	.LBB45_511
.LBB45_502:                             # %cond.false.2591
	movq	-240(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB45_507
# BB#503:                               # %cond.true.2596
	movq	-240(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-240(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -1580(%rbp)       # 4-byte Spill
	jge	.LBB45_505
# BB#504:                               # %cond.true.2606
	xorl	%eax, %eax
	movq	-240(%rbp), %rcx
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
	movq	-240(%rbp), %rcx
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
	movl	%eax, -1584(%rbp)       # 4-byte Spill
	jmp	.LBB45_506
.LBB45_505:                             # %cond.false.2626
	movq	-240(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -1584(%rbp)       # 4-byte Spill
.LBB45_506:                             # %cond.end.2632
	movl	-1584(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-1580(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB45_514
	jmp	.LBB45_511
.LBB45_507:                             # %cond.false.2637
	movq	-240(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB45_509
# BB#508:                               # %cond.true.2645
	movq	-240(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -1588(%rbp)       # 4-byte Spill
	jmp	.LBB45_510
.LBB45_509:                             # %cond.false.2655
	movq	-240(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -1588(%rbp)       # 4-byte Spill
.LBB45_510:                             # %cond.end.2661
	movl	-1588(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-240(%rbp), %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB45_514
.LBB45_511:                             # %lor.lhs.false.2668
	movq	-240(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$3, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB45_513
# BB#512:                               # %land.lhs.true.2676
	movq	-240(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$3, %edx
	cmpl	$-128, %edx
	jl	.LBB45_514
.LBB45_513:                             # %lor.lhs.false.2682
	movl	$127, %eax
	movq	-240(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	shll	$3, %esi
	cmpl	%esi, %eax
	jge	.LBB45_518
.LBB45_514:                             # %cond.true.2688
	movq	-240(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB45_516
# BB#515:                               # %cond.true.2694
	movq	-240(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -1592(%rbp)       # 4-byte Spill
	jmp	.LBB45_517
.LBB45_516:                             # %cond.false.2700
	movq	-240(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -1592(%rbp)       # 4-byte Spill
.LBB45_517:                             # %cond.end.2708
	movl	-1592(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -256(%rbp)
	testb	$1, %cl
	jne	.LBB45_881
	jmp	.LBB45_880
.LBB45_518:                             # %cond.false.2711
	movq	-240(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB45_520
# BB#519:                               # %cond.true.2717
	movq	-240(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -1596(%rbp)       # 4-byte Spill
	jmp	.LBB45_521
.LBB45_520:                             # %cond.false.2723
	movq	-240(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -1596(%rbp)       # 4-byte Spill
.LBB45_521:                             # %cond.end.2731
	movl	-1596(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -256(%rbp)
	testb	$1, %dl
	jne	.LBB45_881
	jmp	.LBB45_880
.LBB45_522:                             # %cond.false.2734
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_524
# BB#523:                               # %cond.true.2740
	xorl	%eax, %eax
	movq	-240(%rbp), %rcx
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
	movq	-240(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1608(%rbp)       # 8-byte Spill
	jmp	.LBB45_525
.LBB45_524:                             # %cond.false.2757
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1608(%rbp)       # 8-byte Spill
.LBB45_525:                             # %cond.end.2761
	movq	-1608(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB45_527
# BB#526:                               # %land.lhs.true.2765
	cmpq	$0, -240(%rbp)
	jl	.LBB45_553
.LBB45_527:                             # %lor.lhs.false.2768
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_528
	jmp	.LBB45_539
.LBB45_528:                             # %cond.true.2769
	cmpq	$0, -240(%rbp)
	jge	.LBB45_533
# BB#529:                               # %cond.true.2772
	movq	-240(%rbp), %rax
	movq	-240(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1616(%rbp)       # 8-byte Spill
	jge	.LBB45_531
# BB#530:                               # %cond.true.2778
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1624(%rbp)       # 8-byte Spill
	jmp	.LBB45_532
.LBB45_531:                             # %cond.false.2786
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1624(%rbp)       # 8-byte Spill
.LBB45_532:                             # %cond.end.2790
	movq	-1624(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1632(%rbp)       # 8-byte Spill
	cqto
	movq	-1632(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1616(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB45_553
	jmp	.LBB45_550
.LBB45_533:                             # %cond.false.2795
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_534
	jmp	.LBB45_535
.LBB45_534:                             # %cond.true.2796
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_553
	jmp	.LBB45_550
.LBB45_535:                             # %cond.false.2797
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_537
# BB#536:                               # %cond.true.2803
	xorl	%eax, %eax
	movq	-240(%rbp), %rcx
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
	movq	-240(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1640(%rbp)       # 8-byte Spill
	jmp	.LBB45_538
.LBB45_537:                             # %cond.false.2820
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1640(%rbp)       # 8-byte Spill
.LBB45_538:                             # %cond.end.2824
	movq	-1640(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1648(%rbp)       # 8-byte Spill
	cqto
	movq	-1648(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-240(%rbp), %rax
	jl	.LBB45_553
	jmp	.LBB45_550
.LBB45_539:                             # %cond.false.2829
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_540
	jmp	.LBB45_541
.LBB45_540:                             # %cond.true.2830
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_553
	jmp	.LBB45_550
.LBB45_541:                             # %cond.false.2831
	cmpq	$0, -240(%rbp)
	jge	.LBB45_546
# BB#542:                               # %cond.true.2834
	movq	-240(%rbp), %rax
	movq	-240(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1656(%rbp)       # 8-byte Spill
	jge	.LBB45_544
# BB#543:                               # %cond.true.2840
	xorl	%eax, %eax
	movq	-240(%rbp), %rcx
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
	movq	-240(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1664(%rbp)       # 8-byte Spill
	jmp	.LBB45_545
.LBB45_544:                             # %cond.false.2857
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1664(%rbp)       # 8-byte Spill
.LBB45_545:                             # %cond.end.2861
	movq	-1664(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1672(%rbp)       # 8-byte Spill
	cqto
	movq	-1672(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1656(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB45_553
	jmp	.LBB45_550
.LBB45_546:                             # %cond.false.2866
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_548
# BB#547:                               # %cond.true.2872
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1680(%rbp)       # 8-byte Spill
	jmp	.LBB45_549
.LBB45_548:                             # %cond.false.2880
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1680(%rbp)       # 8-byte Spill
.LBB45_549:                             # %cond.end.2884
	movq	-1680(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1688(%rbp)       # 8-byte Spill
	cqto
	movq	-1688(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-240(%rbp), %rax
	jl	.LBB45_553
.LBB45_550:                             # %lor.lhs.false.2889
	movq	-240(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_552
# BB#551:                               # %land.lhs.true.2895
	movq	-240(%rbp), %rax
	shlq	$3, %rax
	cmpq	$-128, %rax
	jl	.LBB45_553
.LBB45_552:                             # %lor.lhs.false.2899
	movl	$127, %eax
	movl	%eax, %ecx
	movq	-240(%rbp), %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB45_557
.LBB45_553:                             # %cond.true.2903
	movq	-240(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB45_555
# BB#554:                               # %cond.true.2909
	movq	-240(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -1692(%rbp)       # 4-byte Spill
	jmp	.LBB45_556
.LBB45_555:                             # %cond.false.2915
	movq	-240(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -1692(%rbp)       # 4-byte Spill
.LBB45_556:                             # %cond.end.2923
	movl	-1692(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -256(%rbp)
	testb	$1, %cl
	jne	.LBB45_881
	jmp	.LBB45_880
.LBB45_557:                             # %cond.false.2926
	movq	-240(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB45_559
# BB#558:                               # %cond.true.2932
	movq	-240(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -1696(%rbp)       # 4-byte Spill
	jmp	.LBB45_560
.LBB45_559:                             # %cond.false.2938
	movq	-240(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -1696(%rbp)       # 4-byte Spill
.LBB45_560:                             # %cond.end.2946
	movl	-1696(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -256(%rbp)
	testb	$1, %dl
	jne	.LBB45_881
	jmp	.LBB45_880
.LBB45_561:                             # %cond.false.2949
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_562
	jmp	.LBB45_641
.LBB45_562:                             # %cond.true.2950
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_563
	jmp	.LBB45_602
.LBB45_563:                             # %cond.true.2951
	movq	-240(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB45_565
# BB#564:                               # %cond.true.2959
	xorl	%eax, %eax
	movq	-240(%rbp), %rcx
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
	movq	-240(%rbp), %rcx
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
	movl	%eax, -1700(%rbp)       # 4-byte Spill
	jmp	.LBB45_566
.LBB45_565:                             # %cond.false.2979
	movq	-240(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -1700(%rbp)       # 4-byte Spill
.LBB45_566:                             # %cond.end.2985
	movl	-1700(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB45_568
# BB#567:                               # %land.lhs.true.2989
	movq	-240(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jl	.LBB45_594
.LBB45_568:                             # %lor.lhs.false.2994
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_569
	jmp	.LBB45_580
.LBB45_569:                             # %cond.true.2995
	movq	-240(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB45_574
# BB#570:                               # %cond.true.3000
	movq	-240(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-240(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -1704(%rbp)       # 4-byte Spill
	jge	.LBB45_572
# BB#571:                               # %cond.true.3010
	movq	-240(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -1708(%rbp)       # 4-byte Spill
	jmp	.LBB45_573
.LBB45_572:                             # %cond.false.3020
	movq	-240(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -1708(%rbp)       # 4-byte Spill
.LBB45_573:                             # %cond.end.3026
	movl	-1708(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-1704(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB45_594
	jmp	.LBB45_591
.LBB45_574:                             # %cond.false.3031
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_575
	jmp	.LBB45_576
.LBB45_575:                             # %cond.true.3032
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_594
	jmp	.LBB45_591
.LBB45_576:                             # %cond.false.3033
	movq	-240(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB45_578
# BB#577:                               # %cond.true.3041
	xorl	%eax, %eax
	movq	-240(%rbp), %rcx
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
	movq	-240(%rbp), %rcx
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
	movl	%eax, -1712(%rbp)       # 4-byte Spill
	jmp	.LBB45_579
.LBB45_578:                             # %cond.false.3061
	movq	-240(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -1712(%rbp)       # 4-byte Spill
.LBB45_579:                             # %cond.end.3067
	movl	-1712(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-240(%rbp), %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB45_594
	jmp	.LBB45_591
.LBB45_580:                             # %cond.false.3074
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_581
	jmp	.LBB45_582
.LBB45_581:                             # %cond.true.3075
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_594
	jmp	.LBB45_591
.LBB45_582:                             # %cond.false.3076
	movq	-240(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB45_587
# BB#583:                               # %cond.true.3081
	movq	-240(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-240(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -1716(%rbp)       # 4-byte Spill
	jge	.LBB45_585
# BB#584:                               # %cond.true.3091
	xorl	%eax, %eax
	movq	-240(%rbp), %rcx
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
	movq	-240(%rbp), %rcx
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
	movl	%eax, -1720(%rbp)       # 4-byte Spill
	jmp	.LBB45_586
.LBB45_585:                             # %cond.false.3111
	movq	-240(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -1720(%rbp)       # 4-byte Spill
.LBB45_586:                             # %cond.end.3117
	movl	-1720(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-1716(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB45_594
	jmp	.LBB45_591
.LBB45_587:                             # %cond.false.3122
	movq	-240(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB45_589
# BB#588:                               # %cond.true.3130
	movq	-240(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -1724(%rbp)       # 4-byte Spill
	jmp	.LBB45_590
.LBB45_589:                             # %cond.false.3140
	movq	-240(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -1724(%rbp)       # 4-byte Spill
.LBB45_590:                             # %cond.end.3146
	movl	-1724(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-240(%rbp), %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB45_594
.LBB45_591:                             # %lor.lhs.false.3153
	movq	-240(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$3, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB45_593
# BB#592:                               # %land.lhs.true.3161
	movq	-240(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$3, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB45_594
.LBB45_593:                             # %lor.lhs.false.3167
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-240(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	shll	$3, %esi
	cmpl	%esi, %eax
	jge	.LBB45_598
.LBB45_594:                             # %cond.true.3173
	movq	-240(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB45_596
# BB#595:                               # %cond.true.3179
	movq	-240(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -1728(%rbp)       # 4-byte Spill
	jmp	.LBB45_597
.LBB45_596:                             # %cond.false.3185
	movq	-240(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -1728(%rbp)       # 4-byte Spill
.LBB45_597:                             # %cond.end.3193
	movl	-1728(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -256(%rbp)
	testb	$1, %cl
	jne	.LBB45_881
	jmp	.LBB45_880
.LBB45_598:                             # %cond.false.3196
	movq	-240(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB45_600
# BB#599:                               # %cond.true.3202
	movq	-240(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -1732(%rbp)       # 4-byte Spill
	jmp	.LBB45_601
.LBB45_600:                             # %cond.false.3208
	movq	-240(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -1732(%rbp)       # 4-byte Spill
.LBB45_601:                             # %cond.end.3216
	movl	-1732(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -256(%rbp)
	testb	$1, %dl
	jne	.LBB45_881
	jmp	.LBB45_880
.LBB45_602:                             # %cond.false.3219
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_604
# BB#603:                               # %cond.true.3225
	xorl	%eax, %eax
	movq	-240(%rbp), %rcx
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
	movq	-240(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1744(%rbp)       # 8-byte Spill
	jmp	.LBB45_605
.LBB45_604:                             # %cond.false.3242
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1744(%rbp)       # 8-byte Spill
.LBB45_605:                             # %cond.end.3246
	movq	-1744(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB45_607
# BB#606:                               # %land.lhs.true.3250
	cmpq	$0, -240(%rbp)
	jl	.LBB45_633
.LBB45_607:                             # %lor.lhs.false.3253
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_608
	jmp	.LBB45_619
.LBB45_608:                             # %cond.true.3254
	cmpq	$0, -240(%rbp)
	jge	.LBB45_613
# BB#609:                               # %cond.true.3257
	movq	-240(%rbp), %rax
	movq	-240(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1752(%rbp)       # 8-byte Spill
	jge	.LBB45_611
# BB#610:                               # %cond.true.3263
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1760(%rbp)       # 8-byte Spill
	jmp	.LBB45_612
.LBB45_611:                             # %cond.false.3271
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1760(%rbp)       # 8-byte Spill
.LBB45_612:                             # %cond.end.3275
	movq	-1760(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1768(%rbp)       # 8-byte Spill
	cqto
	movq	-1768(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1752(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB45_633
	jmp	.LBB45_630
.LBB45_613:                             # %cond.false.3280
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_614
	jmp	.LBB45_615
.LBB45_614:                             # %cond.true.3281
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_633
	jmp	.LBB45_630
.LBB45_615:                             # %cond.false.3282
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_617
# BB#616:                               # %cond.true.3288
	xorl	%eax, %eax
	movq	-240(%rbp), %rcx
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
	movq	-240(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1776(%rbp)       # 8-byte Spill
	jmp	.LBB45_618
.LBB45_617:                             # %cond.false.3305
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1776(%rbp)       # 8-byte Spill
.LBB45_618:                             # %cond.end.3309
	movq	-1776(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1784(%rbp)       # 8-byte Spill
	cqto
	movq	-1784(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-240(%rbp), %rax
	jl	.LBB45_633
	jmp	.LBB45_630
.LBB45_619:                             # %cond.false.3314
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_620
	jmp	.LBB45_621
.LBB45_620:                             # %cond.true.3315
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_633
	jmp	.LBB45_630
.LBB45_621:                             # %cond.false.3316
	cmpq	$0, -240(%rbp)
	jge	.LBB45_626
# BB#622:                               # %cond.true.3319
	movq	-240(%rbp), %rax
	movq	-240(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1792(%rbp)       # 8-byte Spill
	jge	.LBB45_624
# BB#623:                               # %cond.true.3325
	xorl	%eax, %eax
	movq	-240(%rbp), %rcx
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
	movq	-240(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1800(%rbp)       # 8-byte Spill
	jmp	.LBB45_625
.LBB45_624:                             # %cond.false.3342
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1800(%rbp)       # 8-byte Spill
.LBB45_625:                             # %cond.end.3346
	movq	-1800(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1808(%rbp)       # 8-byte Spill
	cqto
	movq	-1808(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1792(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB45_633
	jmp	.LBB45_630
.LBB45_626:                             # %cond.false.3351
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_628
# BB#627:                               # %cond.true.3357
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1816(%rbp)       # 8-byte Spill
	jmp	.LBB45_629
.LBB45_628:                             # %cond.false.3365
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1816(%rbp)       # 8-byte Spill
.LBB45_629:                             # %cond.end.3369
	movq	-1816(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1824(%rbp)       # 8-byte Spill
	cqto
	movq	-1824(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-240(%rbp), %rax
	jl	.LBB45_633
.LBB45_630:                             # %lor.lhs.false.3374
	movq	-240(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_632
# BB#631:                               # %land.lhs.true.3380
	movq	-240(%rbp), %rax
	shlq	$3, %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB45_633
.LBB45_632:                             # %lor.lhs.false.3384
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movq	-240(%rbp), %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB45_637
.LBB45_633:                             # %cond.true.3388
	movq	-240(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB45_635
# BB#634:                               # %cond.true.3394
	movq	-240(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -1828(%rbp)       # 4-byte Spill
	jmp	.LBB45_636
.LBB45_635:                             # %cond.false.3400
	movq	-240(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -1828(%rbp)       # 4-byte Spill
.LBB45_636:                             # %cond.end.3408
	movl	-1828(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -256(%rbp)
	testb	$1, %cl
	jne	.LBB45_881
	jmp	.LBB45_880
.LBB45_637:                             # %cond.false.3411
	movq	-240(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB45_639
# BB#638:                               # %cond.true.3417
	movq	-240(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -1832(%rbp)       # 4-byte Spill
	jmp	.LBB45_640
.LBB45_639:                             # %cond.false.3423
	movq	-240(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -1832(%rbp)       # 4-byte Spill
.LBB45_640:                             # %cond.end.3431
	movl	-1832(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -256(%rbp)
	testb	$1, %dl
	jne	.LBB45_881
	jmp	.LBB45_880
.LBB45_641:                             # %cond.false.3434
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_642
	jmp	.LBB45_721
.LBB45_642:                             # %cond.true.3435
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_643
	jmp	.LBB45_682
.LBB45_643:                             # %cond.true.3436
	movq	-240(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB45_645
# BB#644:                               # %cond.true.3443
	xorl	%eax, %eax
	movq	-240(%rbp), %rcx
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
	movq	-240(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -1836(%rbp)       # 4-byte Spill
	jmp	.LBB45_646
.LBB45_645:                             # %cond.false.3461
	movq	-240(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -1836(%rbp)       # 4-byte Spill
.LBB45_646:                             # %cond.end.3466
	movl	-1836(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB45_648
# BB#647:                               # %land.lhs.true.3470
	movq	-240(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jl	.LBB45_674
.LBB45_648:                             # %lor.lhs.false.3474
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_649
	jmp	.LBB45_660
.LBB45_649:                             # %cond.true.3475
	movq	-240(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB45_654
# BB#650:                               # %cond.true.3479
	movq	-240(%rbp), %rax
	movl	%eax, %ecx
	movq	-240(%rbp), %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -1840(%rbp)       # 4-byte Spill
	jge	.LBB45_652
# BB#651:                               # %cond.true.3487
	movq	-240(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -1844(%rbp)       # 4-byte Spill
	jmp	.LBB45_653
.LBB45_652:                             # %cond.false.3496
	movq	-240(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -1844(%rbp)       # 4-byte Spill
.LBB45_653:                             # %cond.end.3501
	movl	-1844(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-1840(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB45_674
	jmp	.LBB45_671
.LBB45_654:                             # %cond.false.3506
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_655
	jmp	.LBB45_656
.LBB45_655:                             # %cond.true.3507
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_674
	jmp	.LBB45_671
.LBB45_656:                             # %cond.false.3508
	movq	-240(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB45_658
# BB#657:                               # %cond.true.3515
	xorl	%eax, %eax
	movq	-240(%rbp), %rcx
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
	movq	-240(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -1848(%rbp)       # 4-byte Spill
	jmp	.LBB45_659
.LBB45_658:                             # %cond.false.3533
	movq	-240(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -1848(%rbp)       # 4-byte Spill
.LBB45_659:                             # %cond.end.3538
	movl	-1848(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-240(%rbp), %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB45_674
	jmp	.LBB45_671
.LBB45_660:                             # %cond.false.3544
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_661
	jmp	.LBB45_662
.LBB45_661:                             # %cond.true.3545
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_674
	jmp	.LBB45_671
.LBB45_662:                             # %cond.false.3546
	movq	-240(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB45_667
# BB#663:                               # %cond.true.3550
	movq	-240(%rbp), %rax
	movl	%eax, %ecx
	movq	-240(%rbp), %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -1852(%rbp)       # 4-byte Spill
	jge	.LBB45_665
# BB#664:                               # %cond.true.3558
	xorl	%eax, %eax
	movq	-240(%rbp), %rcx
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
	movq	-240(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -1856(%rbp)       # 4-byte Spill
	jmp	.LBB45_666
.LBB45_665:                             # %cond.false.3576
	movq	-240(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -1856(%rbp)       # 4-byte Spill
.LBB45_666:                             # %cond.end.3581
	movl	-1856(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-1852(%rbp), %ecx       # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB45_674
	jmp	.LBB45_671
.LBB45_667:                             # %cond.false.3586
	movq	-240(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB45_669
# BB#668:                               # %cond.true.3593
	movq	-240(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -1860(%rbp)       # 4-byte Spill
	jmp	.LBB45_670
.LBB45_669:                             # %cond.false.3602
	movq	-240(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -1860(%rbp)       # 4-byte Spill
.LBB45_670:                             # %cond.end.3607
	movl	-1860(%rbp), %eax       # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-240(%rbp), %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB45_674
.LBB45_671:                             # %lor.lhs.false.3613
	movq	-240(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB45_673
# BB#672:                               # %land.lhs.true.3620
	movq	-240(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB45_674
.LBB45_673:                             # %lor.lhs.false.3625
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-240(%rbp), %rcx
	movl	%ecx, %edx
	shll	$3, %edx
	cmpl	%edx, %eax
	jge	.LBB45_678
.LBB45_674:                             # %cond.true.3630
	movq	-240(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB45_676
# BB#675:                               # %cond.true.3635
	movq	-240(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -1864(%rbp)       # 4-byte Spill
	jmp	.LBB45_677
.LBB45_676:                             # %cond.false.3638
	movq	-240(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -1864(%rbp)       # 4-byte Spill
.LBB45_677:                             # %cond.end.3643
	movl	-1864(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -256(%rbp)
	testb	$1, %cl
	jne	.LBB45_881
	jmp	.LBB45_880
.LBB45_678:                             # %cond.false.3646
	movq	-240(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB45_680
# BB#679:                               # %cond.true.3651
	movq	-240(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -1868(%rbp)       # 4-byte Spill
	jmp	.LBB45_681
.LBB45_680:                             # %cond.false.3654
	movq	-240(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -1868(%rbp)       # 4-byte Spill
.LBB45_681:                             # %cond.end.3659
	movl	-1868(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -256(%rbp)
	testb	$1, %dl
	jne	.LBB45_881
	jmp	.LBB45_880
.LBB45_682:                             # %cond.false.3662
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_684
# BB#683:                               # %cond.true.3668
	xorl	%eax, %eax
	movq	-240(%rbp), %rcx
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
	movq	-240(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1880(%rbp)       # 8-byte Spill
	jmp	.LBB45_685
.LBB45_684:                             # %cond.false.3685
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1880(%rbp)       # 8-byte Spill
.LBB45_685:                             # %cond.end.3689
	movq	-1880(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB45_687
# BB#686:                               # %land.lhs.true.3693
	cmpq	$0, -240(%rbp)
	jl	.LBB45_713
.LBB45_687:                             # %lor.lhs.false.3696
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_688
	jmp	.LBB45_699
.LBB45_688:                             # %cond.true.3697
	cmpq	$0, -240(%rbp)
	jge	.LBB45_693
# BB#689:                               # %cond.true.3700
	movq	-240(%rbp), %rax
	movq	-240(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1888(%rbp)       # 8-byte Spill
	jge	.LBB45_691
# BB#690:                               # %cond.true.3706
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1896(%rbp)       # 8-byte Spill
	jmp	.LBB45_692
.LBB45_691:                             # %cond.false.3714
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1896(%rbp)       # 8-byte Spill
.LBB45_692:                             # %cond.end.3718
	movq	-1896(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1904(%rbp)       # 8-byte Spill
	cqto
	movq	-1904(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1888(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB45_713
	jmp	.LBB45_710
.LBB45_693:                             # %cond.false.3723
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_694
	jmp	.LBB45_695
.LBB45_694:                             # %cond.true.3724
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_713
	jmp	.LBB45_710
.LBB45_695:                             # %cond.false.3725
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_697
# BB#696:                               # %cond.true.3731
	xorl	%eax, %eax
	movq	-240(%rbp), %rcx
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
	movq	-240(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1912(%rbp)       # 8-byte Spill
	jmp	.LBB45_698
.LBB45_697:                             # %cond.false.3748
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1912(%rbp)       # 8-byte Spill
.LBB45_698:                             # %cond.end.3752
	movq	-1912(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1920(%rbp)       # 8-byte Spill
	cqto
	movq	-1920(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-240(%rbp), %rax
	jl	.LBB45_713
	jmp	.LBB45_710
.LBB45_699:                             # %cond.false.3757
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_700
	jmp	.LBB45_701
.LBB45_700:                             # %cond.true.3758
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_713
	jmp	.LBB45_710
.LBB45_701:                             # %cond.false.3759
	cmpq	$0, -240(%rbp)
	jge	.LBB45_706
# BB#702:                               # %cond.true.3762
	movq	-240(%rbp), %rax
	movq	-240(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1928(%rbp)       # 8-byte Spill
	jge	.LBB45_704
# BB#703:                               # %cond.true.3768
	xorl	%eax, %eax
	movq	-240(%rbp), %rcx
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
	movq	-240(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1936(%rbp)       # 8-byte Spill
	jmp	.LBB45_705
.LBB45_704:                             # %cond.false.3785
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1936(%rbp)       # 8-byte Spill
.LBB45_705:                             # %cond.end.3789
	movq	-1936(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1944(%rbp)       # 8-byte Spill
	cqto
	movq	-1944(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1928(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB45_713
	jmp	.LBB45_710
.LBB45_706:                             # %cond.false.3794
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_708
# BB#707:                               # %cond.true.3800
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1952(%rbp)       # 8-byte Spill
	jmp	.LBB45_709
.LBB45_708:                             # %cond.false.3808
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1952(%rbp)       # 8-byte Spill
.LBB45_709:                             # %cond.end.3812
	movq	-1952(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1960(%rbp)       # 8-byte Spill
	cqto
	movq	-1960(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-240(%rbp), %rax
	jl	.LBB45_713
.LBB45_710:                             # %lor.lhs.false.3817
	movq	-240(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_712
# BB#711:                               # %land.lhs.true.3823
	movq	-240(%rbp), %rax
	shlq	$3, %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB45_713
.LBB45_712:                             # %lor.lhs.false.3827
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	-240(%rbp), %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB45_717
.LBB45_713:                             # %cond.true.3831
	movq	-240(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB45_715
# BB#714:                               # %cond.true.3836
	movq	-240(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -1964(%rbp)       # 4-byte Spill
	jmp	.LBB45_716
.LBB45_715:                             # %cond.false.3839
	movq	-240(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -1964(%rbp)       # 4-byte Spill
.LBB45_716:                             # %cond.end.3844
	movl	-1964(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -256(%rbp)
	testb	$1, %cl
	jne	.LBB45_881
	jmp	.LBB45_880
.LBB45_717:                             # %cond.false.3847
	movq	-240(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB45_719
# BB#718:                               # %cond.true.3852
	movq	-240(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -1968(%rbp)       # 4-byte Spill
	jmp	.LBB45_720
.LBB45_719:                             # %cond.false.3855
	movq	-240(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -1968(%rbp)       # 4-byte Spill
.LBB45_720:                             # %cond.end.3860
	movl	-1968(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -256(%rbp)
	testb	$1, %dl
	jne	.LBB45_881
	jmp	.LBB45_880
.LBB45_721:                             # %cond.false.3863
	movb	$1, %al
	testb	$1, %al
	jne	.LBB45_722
	jmp	.LBB45_801
.LBB45_722:                             # %cond.true.3864
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_723
	jmp	.LBB45_762
.LBB45_723:                             # %cond.true.3865
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_725
# BB#724:                               # %cond.true.3871
	xorl	%eax, %eax
	movq	-240(%rbp), %rcx
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
	movq	-240(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -1976(%rbp)       # 8-byte Spill
	jmp	.LBB45_726
.LBB45_725:                             # %cond.false.3888
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1976(%rbp)       # 8-byte Spill
.LBB45_726:                             # %cond.end.3892
	movq	-1976(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB45_728
# BB#727:                               # %land.lhs.true.3896
	cmpq	$0, -240(%rbp)
	jl	.LBB45_754
.LBB45_728:                             # %lor.lhs.false.3899
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_729
	jmp	.LBB45_740
.LBB45_729:                             # %cond.true.3900
	cmpq	$0, -240(%rbp)
	jge	.LBB45_734
# BB#730:                               # %cond.true.3903
	movq	-240(%rbp), %rax
	movq	-240(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -1984(%rbp)       # 8-byte Spill
	jge	.LBB45_732
# BB#731:                               # %cond.true.3909
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1992(%rbp)       # 8-byte Spill
	jmp	.LBB45_733
.LBB45_732:                             # %cond.false.3917
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1992(%rbp)       # 8-byte Spill
.LBB45_733:                             # %cond.end.3921
	movq	-1992(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -2000(%rbp)       # 8-byte Spill
	cqto
	movq	-2000(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-1984(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB45_754
	jmp	.LBB45_751
.LBB45_734:                             # %cond.false.3926
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_735
	jmp	.LBB45_736
.LBB45_735:                             # %cond.true.3927
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_754
	jmp	.LBB45_751
.LBB45_736:                             # %cond.false.3928
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_738
# BB#737:                               # %cond.true.3934
	xorl	%eax, %eax
	movq	-240(%rbp), %rcx
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
	movq	-240(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -2008(%rbp)       # 8-byte Spill
	jmp	.LBB45_739
.LBB45_738:                             # %cond.false.3951
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -2008(%rbp)       # 8-byte Spill
.LBB45_739:                             # %cond.end.3955
	movq	-2008(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -2016(%rbp)       # 8-byte Spill
	cqto
	movq	-2016(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-240(%rbp), %rax
	jl	.LBB45_754
	jmp	.LBB45_751
.LBB45_740:                             # %cond.false.3960
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_741
	jmp	.LBB45_742
.LBB45_741:                             # %cond.true.3961
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_754
	jmp	.LBB45_751
.LBB45_742:                             # %cond.false.3962
	cmpq	$0, -240(%rbp)
	jge	.LBB45_747
# BB#743:                               # %cond.true.3965
	movq	-240(%rbp), %rax
	movq	-240(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -2024(%rbp)       # 8-byte Spill
	jge	.LBB45_745
# BB#744:                               # %cond.true.3971
	xorl	%eax, %eax
	movq	-240(%rbp), %rcx
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
	movq	-240(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -2032(%rbp)       # 8-byte Spill
	jmp	.LBB45_746
.LBB45_745:                             # %cond.false.3988
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -2032(%rbp)       # 8-byte Spill
.LBB45_746:                             # %cond.end.3992
	movq	-2032(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -2040(%rbp)       # 8-byte Spill
	cqto
	movq	-2040(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-2024(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB45_754
	jmp	.LBB45_751
.LBB45_747:                             # %cond.false.3997
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_749
# BB#748:                               # %cond.true.4003
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -2048(%rbp)       # 8-byte Spill
	jmp	.LBB45_750
.LBB45_749:                             # %cond.false.4011
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -2048(%rbp)       # 8-byte Spill
.LBB45_750:                             # %cond.end.4015
	movq	-2048(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -2056(%rbp)       # 8-byte Spill
	cqto
	movq	-2056(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-240(%rbp), %rax
	jl	.LBB45_754
.LBB45_751:                             # %lor.lhs.false.4020
	movq	-240(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_753
# BB#752:                               # %land.lhs.true.4026
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-240(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB45_754
.LBB45_753:                             # %lor.lhs.false.4030
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-240(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB45_758
.LBB45_754:                             # %cond.true.4034
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-240(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB45_756
# BB#755:                               # %cond.true.4038
	movq	-240(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -2064(%rbp)       # 8-byte Spill
	jmp	.LBB45_757
.LBB45_756:                             # %cond.false.4040
	movq	-240(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -2064(%rbp)       # 8-byte Spill
.LBB45_757:                             # %cond.end.4044
	movq	-2064(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -256(%rbp)
	testb	$1, %cl
	jne	.LBB45_881
	jmp	.LBB45_880
.LBB45_758:                             # %cond.false.4046
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-240(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB45_760
# BB#759:                               # %cond.true.4050
	movq	-240(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -2072(%rbp)       # 8-byte Spill
	jmp	.LBB45_761
.LBB45_760:                             # %cond.false.4052
	movq	-240(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -2072(%rbp)       # 8-byte Spill
.LBB45_761:                             # %cond.end.4056
	movq	-2072(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -256(%rbp)
	testb	$1, %dl
	jne	.LBB45_881
	jmp	.LBB45_880
.LBB45_762:                             # %cond.false.4058
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_764
# BB#763:                               # %cond.true.4064
	xorl	%eax, %eax
	movq	-240(%rbp), %rcx
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
	movq	-240(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -2080(%rbp)       # 8-byte Spill
	jmp	.LBB45_765
.LBB45_764:                             # %cond.false.4081
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -2080(%rbp)       # 8-byte Spill
.LBB45_765:                             # %cond.end.4085
	movq	-2080(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB45_767
# BB#766:                               # %land.lhs.true.4089
	cmpq	$0, -240(%rbp)
	jl	.LBB45_793
.LBB45_767:                             # %lor.lhs.false.4092
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_768
	jmp	.LBB45_779
.LBB45_768:                             # %cond.true.4093
	cmpq	$0, -240(%rbp)
	jge	.LBB45_773
# BB#769:                               # %cond.true.4096
	movq	-240(%rbp), %rax
	movq	-240(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -2088(%rbp)       # 8-byte Spill
	jge	.LBB45_771
# BB#770:                               # %cond.true.4102
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -2096(%rbp)       # 8-byte Spill
	jmp	.LBB45_772
.LBB45_771:                             # %cond.false.4110
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -2096(%rbp)       # 8-byte Spill
.LBB45_772:                             # %cond.end.4114
	movq	-2096(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -2104(%rbp)       # 8-byte Spill
	cqto
	movq	-2104(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-2088(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB45_793
	jmp	.LBB45_790
.LBB45_773:                             # %cond.false.4119
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_774
	jmp	.LBB45_775
.LBB45_774:                             # %cond.true.4120
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_793
	jmp	.LBB45_790
.LBB45_775:                             # %cond.false.4121
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_777
# BB#776:                               # %cond.true.4127
	xorl	%eax, %eax
	movq	-240(%rbp), %rcx
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
	movq	-240(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -2112(%rbp)       # 8-byte Spill
	jmp	.LBB45_778
.LBB45_777:                             # %cond.false.4144
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -2112(%rbp)       # 8-byte Spill
.LBB45_778:                             # %cond.end.4148
	movq	-2112(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -2120(%rbp)       # 8-byte Spill
	cqto
	movq	-2120(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-240(%rbp), %rax
	jl	.LBB45_793
	jmp	.LBB45_790
.LBB45_779:                             # %cond.false.4153
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_780
	jmp	.LBB45_781
.LBB45_780:                             # %cond.true.4154
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_793
	jmp	.LBB45_790
.LBB45_781:                             # %cond.false.4155
	cmpq	$0, -240(%rbp)
	jge	.LBB45_786
# BB#782:                               # %cond.true.4158
	movq	-240(%rbp), %rax
	movq	-240(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -2128(%rbp)       # 8-byte Spill
	jge	.LBB45_784
# BB#783:                               # %cond.true.4164
	xorl	%eax, %eax
	movq	-240(%rbp), %rcx
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
	movq	-240(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -2136(%rbp)       # 8-byte Spill
	jmp	.LBB45_785
.LBB45_784:                             # %cond.false.4181
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -2136(%rbp)       # 8-byte Spill
.LBB45_785:                             # %cond.end.4185
	movq	-2136(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -2144(%rbp)       # 8-byte Spill
	cqto
	movq	-2144(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-2128(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB45_793
	jmp	.LBB45_790
.LBB45_786:                             # %cond.false.4190
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_788
# BB#787:                               # %cond.true.4196
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -2152(%rbp)       # 8-byte Spill
	jmp	.LBB45_789
.LBB45_788:                             # %cond.false.4204
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -2152(%rbp)       # 8-byte Spill
.LBB45_789:                             # %cond.end.4208
	movq	-2152(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -2160(%rbp)       # 8-byte Spill
	cqto
	movq	-2160(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-240(%rbp), %rax
	jl	.LBB45_793
.LBB45_790:                             # %lor.lhs.false.4213
	movq	-240(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_792
# BB#791:                               # %land.lhs.true.4219
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-240(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB45_793
.LBB45_792:                             # %lor.lhs.false.4223
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-240(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB45_797
.LBB45_793:                             # %cond.true.4227
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-240(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB45_795
# BB#794:                               # %cond.true.4231
	movq	-240(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -2168(%rbp)       # 8-byte Spill
	jmp	.LBB45_796
.LBB45_795:                             # %cond.false.4233
	movq	-240(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -2168(%rbp)       # 8-byte Spill
.LBB45_796:                             # %cond.end.4237
	movq	-2168(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -256(%rbp)
	testb	$1, %cl
	jne	.LBB45_881
	jmp	.LBB45_880
.LBB45_797:                             # %cond.false.4239
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-240(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB45_799
# BB#798:                               # %cond.true.4243
	movq	-240(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -2176(%rbp)       # 8-byte Spill
	jmp	.LBB45_800
.LBB45_799:                             # %cond.false.4245
	movq	-240(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -2176(%rbp)       # 8-byte Spill
.LBB45_800:                             # %cond.end.4249
	movq	-2176(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -256(%rbp)
	testb	$1, %dl
	jne	.LBB45_881
	jmp	.LBB45_880
.LBB45_801:                             # %cond.false.4251
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_802
	jmp	.LBB45_841
.LBB45_802:                             # %cond.true.4252
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_804
# BB#803:                               # %cond.true.4258
	xorl	%eax, %eax
	movq	-240(%rbp), %rcx
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
	movq	-240(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -2184(%rbp)       # 8-byte Spill
	jmp	.LBB45_805
.LBB45_804:                             # %cond.false.4275
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -2184(%rbp)       # 8-byte Spill
.LBB45_805:                             # %cond.end.4279
	movq	-2184(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB45_807
# BB#806:                               # %land.lhs.true.4283
	cmpq	$0, -240(%rbp)
	jl	.LBB45_833
.LBB45_807:                             # %lor.lhs.false.4286
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_808
	jmp	.LBB45_819
.LBB45_808:                             # %cond.true.4287
	cmpq	$0, -240(%rbp)
	jge	.LBB45_813
# BB#809:                               # %cond.true.4290
	movq	-240(%rbp), %rax
	movq	-240(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -2192(%rbp)       # 8-byte Spill
	jge	.LBB45_811
# BB#810:                               # %cond.true.4296
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -2200(%rbp)       # 8-byte Spill
	jmp	.LBB45_812
.LBB45_811:                             # %cond.false.4304
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -2200(%rbp)       # 8-byte Spill
.LBB45_812:                             # %cond.end.4308
	movq	-2200(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -2208(%rbp)       # 8-byte Spill
	cqto
	movq	-2208(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-2192(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB45_833
	jmp	.LBB45_830
.LBB45_813:                             # %cond.false.4313
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_814
	jmp	.LBB45_815
.LBB45_814:                             # %cond.true.4314
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_833
	jmp	.LBB45_830
.LBB45_815:                             # %cond.false.4315
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_817
# BB#816:                               # %cond.true.4321
	xorl	%eax, %eax
	movq	-240(%rbp), %rcx
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
	movq	-240(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -2216(%rbp)       # 8-byte Spill
	jmp	.LBB45_818
.LBB45_817:                             # %cond.false.4338
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -2216(%rbp)       # 8-byte Spill
.LBB45_818:                             # %cond.end.4342
	movq	-2216(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -2224(%rbp)       # 8-byte Spill
	cqto
	movq	-2224(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-240(%rbp), %rax
	jl	.LBB45_833
	jmp	.LBB45_830
.LBB45_819:                             # %cond.false.4347
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_820
	jmp	.LBB45_821
.LBB45_820:                             # %cond.true.4348
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_833
	jmp	.LBB45_830
.LBB45_821:                             # %cond.false.4349
	cmpq	$0, -240(%rbp)
	jge	.LBB45_826
# BB#822:                               # %cond.true.4352
	movq	-240(%rbp), %rax
	movq	-240(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -2232(%rbp)       # 8-byte Spill
	jge	.LBB45_824
# BB#823:                               # %cond.true.4358
	xorl	%eax, %eax
	movq	-240(%rbp), %rcx
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
	movq	-240(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -2240(%rbp)       # 8-byte Spill
	jmp	.LBB45_825
.LBB45_824:                             # %cond.false.4375
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -2240(%rbp)       # 8-byte Spill
.LBB45_825:                             # %cond.end.4379
	movq	-2240(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -2248(%rbp)       # 8-byte Spill
	cqto
	movq	-2248(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-2232(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB45_833
	jmp	.LBB45_830
.LBB45_826:                             # %cond.false.4384
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_828
# BB#827:                               # %cond.true.4390
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -2256(%rbp)       # 8-byte Spill
	jmp	.LBB45_829
.LBB45_828:                             # %cond.false.4398
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -2256(%rbp)       # 8-byte Spill
.LBB45_829:                             # %cond.end.4402
	movq	-2256(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -2264(%rbp)       # 8-byte Spill
	cqto
	movq	-2264(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-240(%rbp), %rax
	jl	.LBB45_833
.LBB45_830:                             # %lor.lhs.false.4407
	movq	-240(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_832
# BB#831:                               # %land.lhs.true.4413
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-240(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB45_833
.LBB45_832:                             # %lor.lhs.false.4417
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-240(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB45_837
.LBB45_833:                             # %cond.true.4421
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-240(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB45_835
# BB#834:                               # %cond.true.4425
	movq	-240(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -2272(%rbp)       # 8-byte Spill
	jmp	.LBB45_836
.LBB45_835:                             # %cond.false.4427
	movq	-240(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -2272(%rbp)       # 8-byte Spill
.LBB45_836:                             # %cond.end.4431
	movq	-2272(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -256(%rbp)
	testb	$1, %cl
	jne	.LBB45_881
	jmp	.LBB45_880
.LBB45_837:                             # %cond.false.4433
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-240(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB45_839
# BB#838:                               # %cond.true.4437
	movq	-240(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -2280(%rbp)       # 8-byte Spill
	jmp	.LBB45_840
.LBB45_839:                             # %cond.false.4439
	movq	-240(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -2280(%rbp)       # 8-byte Spill
.LBB45_840:                             # %cond.end.4443
	movq	-2280(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -256(%rbp)
	testb	$1, %dl
	jne	.LBB45_881
	jmp	.LBB45_880
.LBB45_841:                             # %cond.false.4445
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_843
# BB#842:                               # %cond.true.4451
	xorl	%eax, %eax
	movq	-240(%rbp), %rcx
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
	movq	-240(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -2288(%rbp)       # 8-byte Spill
	jmp	.LBB45_844
.LBB45_843:                             # %cond.false.4468
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -2288(%rbp)       # 8-byte Spill
.LBB45_844:                             # %cond.end.4472
	movq	-2288(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB45_846
# BB#845:                               # %land.lhs.true.4476
	cmpq	$0, -240(%rbp)
	jl	.LBB45_872
.LBB45_846:                             # %lor.lhs.false.4479
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_847
	jmp	.LBB45_858
.LBB45_847:                             # %cond.true.4480
	cmpq	$0, -240(%rbp)
	jge	.LBB45_852
# BB#848:                               # %cond.true.4483
	movq	-240(%rbp), %rax
	movq	-240(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -2296(%rbp)       # 8-byte Spill
	jge	.LBB45_850
# BB#849:                               # %cond.true.4489
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -2304(%rbp)       # 8-byte Spill
	jmp	.LBB45_851
.LBB45_850:                             # %cond.false.4497
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -2304(%rbp)       # 8-byte Spill
.LBB45_851:                             # %cond.end.4501
	movq	-2304(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -2312(%rbp)       # 8-byte Spill
	cqto
	movq	-2312(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-2296(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB45_872
	jmp	.LBB45_869
.LBB45_852:                             # %cond.false.4506
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_853
	jmp	.LBB45_854
.LBB45_853:                             # %cond.true.4507
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_872
	jmp	.LBB45_869
.LBB45_854:                             # %cond.false.4508
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_856
# BB#855:                               # %cond.true.4514
	xorl	%eax, %eax
	movq	-240(%rbp), %rcx
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
	movq	-240(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -2320(%rbp)       # 8-byte Spill
	jmp	.LBB45_857
.LBB45_856:                             # %cond.false.4531
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -2320(%rbp)       # 8-byte Spill
.LBB45_857:                             # %cond.end.4535
	movq	-2320(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -2328(%rbp)       # 8-byte Spill
	cqto
	movq	-2328(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-240(%rbp), %rax
	jl	.LBB45_872
	jmp	.LBB45_869
.LBB45_858:                             # %cond.false.4540
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_859
	jmp	.LBB45_860
.LBB45_859:                             # %cond.true.4541
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_872
	jmp	.LBB45_869
.LBB45_860:                             # %cond.false.4542
	cmpq	$0, -240(%rbp)
	jge	.LBB45_865
# BB#861:                               # %cond.true.4545
	movq	-240(%rbp), %rax
	movq	-240(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -2336(%rbp)       # 8-byte Spill
	jge	.LBB45_863
# BB#862:                               # %cond.true.4551
	xorl	%eax, %eax
	movq	-240(%rbp), %rcx
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
	movq	-240(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -2344(%rbp)       # 8-byte Spill
	jmp	.LBB45_864
.LBB45_863:                             # %cond.false.4568
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -2344(%rbp)       # 8-byte Spill
.LBB45_864:                             # %cond.end.4572
	movq	-2344(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -2352(%rbp)       # 8-byte Spill
	cqto
	movq	-2352(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-2336(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB45_872
	jmp	.LBB45_869
.LBB45_865:                             # %cond.false.4577
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_867
# BB#866:                               # %cond.true.4583
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -2360(%rbp)       # 8-byte Spill
	jmp	.LBB45_868
.LBB45_867:                             # %cond.false.4591
	movq	-240(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -2360(%rbp)       # 8-byte Spill
.LBB45_868:                             # %cond.end.4595
	movq	-2360(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -2368(%rbp)       # 8-byte Spill
	cqto
	movq	-2368(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-240(%rbp), %rax
	jl	.LBB45_872
.LBB45_869:                             # %lor.lhs.false.4600
	movq	-240(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB45_871
# BB#870:                               # %land.lhs.true.4606
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-240(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB45_872
.LBB45_871:                             # %lor.lhs.false.4610
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-240(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB45_876
.LBB45_872:                             # %cond.true.4614
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-240(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB45_874
# BB#873:                               # %cond.true.4618
	movq	-240(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -2376(%rbp)       # 8-byte Spill
	jmp	.LBB45_875
.LBB45_874:                             # %cond.false.4620
	movq	-240(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -2376(%rbp)       # 8-byte Spill
.LBB45_875:                             # %cond.end.4624
	movq	-2376(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -256(%rbp)
	testb	$1, %cl
	jne	.LBB45_881
	jmp	.LBB45_880
.LBB45_876:                             # %cond.false.4626
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-240(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB45_878
# BB#877:                               # %cond.true.4630
	movq	-240(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -2384(%rbp)       # 8-byte Spill
	jmp	.LBB45_879
.LBB45_878:                             # %cond.false.4632
	movq	-240(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -2384(%rbp)       # 8-byte Spill
.LBB45_879:                             # %cond.end.4636
	movq	-2384(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -256(%rbp)
	testb	$1, %dl
	jne	.LBB45_881
.LBB45_880:                             # %lor.lhs.false.4638
	movq	$-1, %rax
	cmpq	-256(%rbp), %rax
	jae	.LBB45_882
.LBB45_881:                             # %if.then.4641
	movq	$-1, %rdi
	callq	memory_full
.LBB45_882:                             # %if.else.4642
	movq	-256(%rbp), %rax
	cmpq	-120(%rbp), %rax
	jg	.LBB45_884
# BB#883:                               # %if.then.4645
	movq	-256(%rbp), %rax
	movq	-120(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -120(%rbp)
	movq	-256(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -192(%rbp)
	jmp	.LBB45_885
.LBB45_884:                             # %if.else.4647
	movq	-256(%rbp), %rdi
	callq	xmalloc
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rdi
	movq	-240(%rbp), %rsi
	callq	make_save_memory
	movabsq	$free_save_value, %rdi
	movq	%rax, -264(%rbp)
	movb	$1, -129(%rbp)
	movq	-264(%rbp), %rsi
	callq	record_unwind_protect
.LBB45_885:                             # %if.end.4651
	jmp	.LBB45_886
.LBB45_886:                             # %if.end.4652
	jmp	.LBB45_887
.LBB45_887:                             # %do.end.4653
	movl	$873, %edi              # imm = 0x369
	movq	$0, -272(%rbp)
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -272(%rbp)
	movq	-192(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-40(%rbp), %rax
	movq	-272(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -272(%rbp)
	movq	-192(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-32(%rbp), %rax
	movq	-272(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -272(%rbp)
	movq	-192(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-48(%rbp), %rax
	movq	%rax, -248(%rbp)
.LBB45_888:                             # %for.cond.4662
                                        # =>This Inner Loop Header: Depth=1
	movq	-248(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB45_891
# BB#889:                               # %for.body.4667
                                        #   in Loop: Header=BB45_888 Depth=1
	movq	-248(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	-272(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -272(%rbp)
	movq	-192(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
# BB#890:                               # %for.inc.4672
                                        #   in Loop: Header=BB45_888 Depth=1
	movq	-248(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -248(%rbp)
	jmp	.LBB45_888
.LBB45_891:                             # %for.end.4676
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -2392(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-2392(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_893
# BB#892:                               # %if.then.4680
	movq	-240(%rbp), %rdi
	movq	-192(%rbp), %rsi
	callq	Ffind_operation_coding_system
	movq	%rax, -176(%rbp)
.LBB45_893:                             # %if.end.4682
	jmp	.LBB45_894
.LBB45_894:                             # %if.end.4683
	movq	-176(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB45_896
# BB#895:                               # %if.then.4688
	movq	-176(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -184(%rbp)
	jmp	.LBB45_899
.LBB45_896:                             # %if.else.4692
	movq	globals+496, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB45_898
# BB#897:                               # %if.then.4697
	movq	globals+496, %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -184(%rbp)
.LBB45_898:                             # %if.end.4701
	jmp	.LBB45_899
.LBB45_899:                             # %if.end.4702
	jmp	.LBB45_900
.LBB45_900:                             # %if.end.4703
	movq	-64(%rbp), %rdi
	callq	XPROCESS
	movq	-184(%rbp), %rsi
	movq	%rax, %rdi
	callq	pset_encode_coding_system
	movq	-64(%rbp), %rdi
	callq	XPROCESS
	movq	empty_unibyte_string, %rsi
	movq	%rax, %rdi
	callq	pset_decoding_buf
	movq	-64(%rbp), %rdi
	callq	XPROCESS
	movl	$0, 216(%rax)
	movq	-64(%rbp), %rdi
	callq	XPROCESS
	movq	empty_unibyte_string, %rsi
	movq	%rax, %rdi
	callq	pset_encoding_buf
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -2400(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %cl
	movq	-2400(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	movb	%cl, -2401(%rbp)        # 1-byte Spill
	je	.LBB45_902
# BB#901:                               # %lor.rhs
	movb	globals+3387, %al
	xorb	$-1, %al
	movb	%al, -2401(%rbp)        # 1-byte Spill
.LBB45_902:                             # %lor.end
	movb	-2401(%rbp), %al        # 1-byte Reload
	xorb	$-1, %al
	movq	-64(%rbp), %rdi
	movb	%al, -2402(%rbp)        # 1-byte Spill
	callq	XPROCESS
	xorl	%edi, %edi
	movb	-2402(%rbp), %cl        # 1-byte Reload
	andb	$1, %cl
	movb	224(%rax), %dl
	shlb	$5, %cl
	andb	$-33, %dl
	orb	%cl, %dl
	movb	%dl, 224(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, -2416(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-2416(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB45_930
# BB#903:                               # %if.then.4723
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -280(%rbp)
	movq	-56(%rbp), %rdi
	callq	SREF
	movzbl	%al, %edx
	cmpl	$47, %edx
	je	.LBB45_909
# BB#904:                               # %land.lhs.true.4731
	movq	-56(%rbp), %rdi
	callq	SCHARS
	cmpq	$1, %rax
	jle	.LBB45_906
# BB#905:                               # %land.lhs.true.4735
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB45_909
	jmp	.LBB45_906
.LBB45_906:                             # %if.then.4736
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	leaq	-88(%rbp), %rcx
	movl	$6, %edi
	movl	%edi, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -88(%rbp)
	movq	globals+672, %rdi
	movq	-56(%rbp), %rsi
	movq	globals+680, %rdx
	callq	openp
	xorl	%edi, %edi
	movq	-88(%rbp), %rcx
	movl	%eax, -2420(%rbp)       # 4-byte Spill
	movq	%rcx, -2432(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-2432(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_908
# BB#907:                               # %if.then.4742
	movabsq	$.L.str.8, %rdi
	movq	-56(%rbp), %rsi
	callq	report_file_error
.LBB45_908:                             # %if.end.4743
	xorl	%edi, %edi
	movq	-88(%rbp), %rax
	movq	%rax, -2440(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-2440(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fexpand_file_name
	movq	%rax, -88(%rbp)
	jmp	.LBB45_912
.LBB45_909:                             # %if.else.4746
	movq	-56(%rbp), %rdi
	callq	Ffile_directory_p
	xorl	%edi, %edi
	movq	%rax, -2448(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-2448(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_911
# BB#910:                               # %if.then.4751
	movabsq	$.L.str.9, %rdi
	movb	$0, %al
	callq	error
.LBB45_911:                             # %if.end.4752
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB45_912:                             # %if.end.4753
	movq	-88(%rbp), %rdi
	callq	remove_slash_colon
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -288(%rbp)
	movq	-88(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, %rdi
	callq	list1
	movq	%rax, -88(%rbp)
	movq	$1, -296(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -304(%rbp)
.LBB45_913:                             # %for.cond.4759
                                        # =>This Inner Loop Header: Depth=1
	movq	-304(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB45_920
# BB#914:                               # %for.body.4764
                                        #   in Loop: Header=BB45_913 Depth=1
	movq	-304(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rdi
	callq	CHECK_STRING
	movq	-312(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB45_915
	jmp	.LBB45_918
.LBB45_915:                             # %if.then.4768
                                        #   in Loop: Header=BB45_913 Depth=1
	xorl	%edi, %edi
	movq	-288(%rbp), %rax
	movq	%rax, -2456(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-2456(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB45_917
# BB#916:                               # %if.then.4772
                                        #   in Loop: Header=BB45_913 Depth=1
	movq	-64(%rbp), %rdi
	callq	XPROCESS
	movq	120(%rax), %rdi
	callq	complement_process_encoding_system
	movq	%rax, -288(%rbp)
.LBB45_917:                             # %if.end.4775
                                        #   in Loop: Header=BB45_913 Depth=1
	movl	$1, %edx
	movq	-312(%rbp), %rdi
	movq	-288(%rbp), %rsi
	callq	code_convert_string_norecord
	movq	%rax, -312(%rbp)
.LBB45_918:                             # %if.end.4777
                                        #   in Loop: Header=BB45_913 Depth=1
	movq	-312(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	Fcons
	movq	%rax, -88(%rbp)
	movq	-296(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -296(%rbp)
# BB#919:                               # %for.inc.4780
                                        #   in Loop: Header=BB45_913 Depth=1
	movq	-304(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -304(%rbp)
	jmp	.LBB45_913
.LBB45_920:                             # %for.end.4784
	jmp	.LBB45_921
.LBB45_921:                             # %do.body.4785
	movq	-296(%rbp), %rax
	addq	$1, %rax
	movq	-120(%rbp), %rcx
	shrq	$3, %rcx
	shrq	$0, %rcx
	cmpq	%rcx, %rax
	ja	.LBB45_923
# BB#922:                               # %if.then.4791
	movq	-296(%rbp), %rax
	leaq	8(,%rax,8), %rax
	movq	-120(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -120(%rbp)
	movq	-296(%rbp), %rax
	leaq	23(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -320(%rbp)
	jmp	.LBB45_924
.LBB45_923:                             # %if.else.4797
	movl	$8, %eax
	movl	%eax, %esi
	movq	-296(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, %rdi
	callq	xnmalloc
	movabsq	$xfree, %rdi
	movq	%rax, -320(%rbp)
	movb	$1, -129(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
.LBB45_924:                             # %if.end.4800
	jmp	.LBB45_925
.LBB45_925:                             # %do.end.4801
	movq	-296(%rbp), %rax
	movq	-320(%rbp), %rcx
	movq	$0, (%rcx,%rax,8)
	movq	-296(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -328(%rbp)
.LBB45_926:                             # %for.cond.4805
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -328(%rbp)
	jl	.LBB45_929
# BB#927:                               # %for.body.4808
                                        #   in Loop: Header=BB45_926 Depth=1
	movq	-88(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	SSDATA
	movq	-328(%rbp), %rdi
	movq	-320(%rbp), %rcx
	movq	%rax, (%rcx,%rdi,8)
	movq	-88(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
# BB#928:                               # %for.inc.4816
                                        #   in Loop: Header=BB45_926 Depth=1
	movq	-328(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -328(%rbp)
	jmp	.LBB45_926
.LBB45_929:                             # %for.end.4817
	movq	-64(%rbp), %rdi
	movq	-320(%rbp), %rsi
	movq	-80(%rbp), %rdx
	callq	create_process
	jmp	.LBB45_931
.LBB45_930:                             # %if.else.4818
	movq	-64(%rbp), %rdi
	callq	create_pty
.LBB45_931:                             # %if.end.4819
	jmp	.LBB45_932
.LBB45_932:                             # %do.body.4820
	testb	$1, -129(%rbp)
	je	.LBB45_934
# BB#933:                               # %if.then.4822
	xorl	%edi, %edi
	movb	$0, -129(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -2464(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-2464(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -2472(%rbp)       # 8-byte Spill
.LBB45_934:                             # %if.end.4825
	jmp	.LBB45_935
.LBB45_935:                             # %do.end.4826
	movq	-112(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	unbind_to
	movq	%rax, -8(%rbp)
.LBB45_936:                             # %return
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	Fmake_process, .Lfunc_end45-Fmake_process
	.cfi_endproc

	.globl	Fmake_pipe_process
	.align	16, 0x90
	.type	Fmake_pipe_process,@function
Fmake_pipe_process:                     # @Fmake_pipe_process
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
	subq	$432, %rsp              # imm = 0x1B0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB46_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB46_70
.LBB46_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Flist
	movl	$86, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	CHECK_STRING
	movq	-56(%rbp), %rdi
	callq	make_process
	movq	%rax, -32(%rbp)
	callq	SPECPDL_INDEX
	movabsq	$remove_process, %rdi
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rsi
	callq	record_unwind_protect
	movq	-32(%rbp), %rdi
	callq	XPROCESS
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	addq	$172, %rax
	movq	%rax, %rdi
	callq	emacs_pipe
	cmpl	$0, %eax
	jne	.LBB46_4
# BB#3:                                 # %lor.lhs.false
	movq	-48(%rbp), %rax
	addq	$172, %rax
	addq	$8, %rax
	movq	%rax, %rdi
	callq	emacs_pipe
	cmpl	$0, %eax
	je	.LBB46_5
.LBB46_4:                               # %if.then.14
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$.L.str.10, %rdi
	movq	%rax, %rsi
	callq	report_file_error
.LBB46_5:                               # %if.end.16
	movl	$4, %esi
	movl	$2048, %edx             # imm = 0x800
	movq	-48(%rbp), %rax
	movl	176(%rax), %ecx
	movl	%ecx, -88(%rbp)
	movq	-48(%rbp), %rax
	movl	180(%rax), %ecx
	movl	%ecx, -84(%rbp)
	movl	-84(%rbp), %edi
	movb	$0, %al
	callq	rpl_fcntl
	movl	$4, %esi
	movl	$2048, %edx             # imm = 0x800
	movl	-88(%rbp), %edi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	rpl_fcntl
	movq	-32(%rbp), %r8
	movslq	-84(%rbp), %r9
	movq	%r8, chan_process(,%r9,8)
	movl	-84(%rbp), %ecx
	movq	-48(%rbp), %r8
	movl	%ecx, 164(%r8)
	movl	-88(%rbp), %ecx
	movq	-48(%rbp), %r8
	movl	%ecx, 168(%r8)
	movl	-84(%rbp), %ecx
	cmpl	max_process_desc, %ecx
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jle	.LBB46_7
# BB#6:                                 # %if.then.24
	movl	-84(%rbp), %eax
	movl	%eax, max_process_desc
.LBB46_7:                               # %if.end.25
	movl	$16, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB46_9
# BB#8:                                 # %if.then.30
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB46_9:                               # %if.end.31
	movq	-64(%rbp), %rdi
	callq	Fget_buffer_create
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	pset_buffer
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	pset_childp
	movl	$92, %edi
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movq	%rax, %rdi
	callq	Fcopy_sequence
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_plist
	movl	$750, %edi              # imm = 0x2EE
	movq	-48(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_type
	movl	$115, %edi
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_sentinel
	movl	$42, %edi
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_filter
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_log
	movl	$87, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB46_10
	jmp	.LBB46_11
.LBB46_10:                              # %if.then.46
	movq	-48(%rbp), %rax
	movb	224(%rax), %cl
	andb	$-9, %cl
	orb	$8, %cl
	movb	%cl, 224(%rax)
.LBB46_11:                              # %if.end.47
	movl	$124, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB46_12
	jmp	.LBB46_13
.LBB46_12:                              # %if.then.53
	movl	$901, %edi              # imm = 0x385
	movq	-48(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_command
.LBB46_13:                              # %if.end.55
	movl	$901, %edi              # imm = 0x385
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB46_15
# BB#14:                                # %if.then.58
	movabsq	$input_wait_mask, %rsi
	movl	-84(%rbp), %edi
	callq	fd_SET
	movabsq	$non_keyboard_wait_mask, %rsi
	movl	-84(%rbp), %edi
	callq	fd_SET
.LBB46_15:                              # %if.end.59
	xorl	%edi, %edi
	movq	globals+1888, %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB46_17
# BB#16:                                # %cond.true
	xorl	%eax, %eax
	movl	%eax, -260(%rbp)        # 4-byte Spill
	jmp	.LBB46_18
.LBB46_17:                              # %cond.false
	movl	$901, %edi              # imm = 0x385
	movq	globals+1888, %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	$1, %ecx
	movq	-272(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -260(%rbp)        # 4-byte Spill
.LBB46_18:                              # %cond.end
	movl	-260(%rbp), %eax        # 4-byte Reload
	movq	-48(%rbp), %rcx
	movb	%al, %dl
	movb	224(%rcx), %sil
	andb	$3, %dl
	andb	$-4, %sil
	orb	%dl, %sil
	movb	%sil, 224(%rcx)
	movq	-64(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB46_19
	jmp	.LBB46_32
.LBB46_19:                              # %if.then.69
	movq	-48(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-64(%rbp), %rsi
	movq	-64(%rbp), %rax
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -288(%rbp)        # 8-byte Spill
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB46_21
# BB#20:                                # %cond.true.72
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jmp	.LBB46_25
.LBB46_21:                              # %cond.false.73
	movq	-64(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	376(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-304(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB46_23
# BB#22:                                # %cond.true.77
	movq	-64(%rbp), %rdi
	callq	XBUFFER
	movq	768(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jmp	.LBB46_24
.LBB46_23:                              # %cond.false.80
	movq	-64(%rbp), %rdi
	callq	XBUFFER
	movq	376(%rax), %rdi
	callq	marker_position
	movq	%rax, -312(%rbp)        # 8-byte Spill
.LBB46_24:                              # %cond.end.84
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	%rax, -296(%rbp)        # 8-byte Spill
.LBB46_25:                              # %cond.end.86
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	-64(%rbp), %rdi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB46_27
# BB#26:                                # %cond.true.90
	movq	current_buffer, %rax
	movq	776(%rax), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	jmp	.LBB46_31
.LBB46_27:                              # %cond.false.91
	movq	-64(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	376(%rax), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-336(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB46_29
# BB#28:                                # %cond.true.96
	movq	-64(%rbp), %rdi
	callq	XBUFFER
	movq	776(%rax), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jmp	.LBB46_30
.LBB46_29:                              # %cond.false.99
	movq	-64(%rbp), %rdi
	callq	XBUFFER
	movq	376(%rax), %rdi
	callq	marker_byte_position
	movq	%rax, -344(%rbp)        # 8-byte Spill
.LBB46_30:                              # %cond.end.103
	movq	-344(%rbp), %rax        # 8-byte Reload
	movq	%rax, -328(%rbp)        # 8-byte Spill
.LBB46_31:                              # %cond.end.105
	movq	-328(%rbp), %rax        # 8-byte Reload
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	-288(%rbp), %rsi        # 8-byte Reload
	movq	-320(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	set_marker_both
	movq	%rax, -352(%rbp)        # 8-byte Spill
.LBB46_32:                              # %if.end.108
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movl	$20, %edi
	movq	%rax, -96(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -104(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-368(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB46_36
# BB#33:                                # %if.then.115
	movq	-72(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB46_35
# BB#34:                                # %if.then.118
	movq	-104(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
.LBB46_35:                              # %if.end.119
	jmp	.LBB46_52
.LBB46_36:                              # %if.else
	xorl	%edi, %edi
	movq	globals+280, %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-376(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB46_38
# BB#37:                                # %if.then.123
	movq	globals+280, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB46_51
.LBB46_38:                              # %if.else.124
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-384(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB46_40
# BB#39:                                # %land.lhs.true
	movq	-64(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	312(%rax), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-392(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB46_42
.LBB46_40:                              # %lor.lhs.false.132
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-400(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB46_43
# BB#41:                                # %land.lhs.true.136
	xorl	%edi, %edi
	movq	buffer_defaults+312, %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-408(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB46_43
.LBB46_42:                              # %if.then.140
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -104(%rbp)
	jmp	.LBB46_50
.LBB46_43:                              # %if.else.142
	movq	-96(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB46_45
# BB#44:                                # %if.then.147
	movq	-96(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB46_49
.LBB46_45:                              # %if.else.150
	movq	globals+496, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB46_47
# BB#46:                                # %if.then.155
	movq	globals+496, %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB46_48
.LBB46_47:                              # %if.else.158
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -104(%rbp)
.LBB46_48:                              # %if.end.160
	jmp	.LBB46_49
.LBB46_49:                              # %if.end.161
	jmp	.LBB46_50
.LBB46_50:                              # %if.end.162
	jmp	.LBB46_51
.LBB46_51:                              # %if.end.163
	jmp	.LBB46_52
.LBB46_52:                              # %if.end.164
	movq	-48(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	pset_decode_coding_system
	xorl	%edi, %edi
	movq	-72(%rbp), %rsi
	movq	%rsi, -416(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-416(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB46_56
# BB#53:                                # %if.then.168
	movq	-72(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB46_55
# BB#54:                                # %if.then.173
	movq	-104(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)
.LBB46_55:                              # %if.end.175
	jmp	.LBB46_69
.LBB46_56:                              # %if.else.176
	xorl	%edi, %edi
	movq	globals+288, %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-424(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB46_58
# BB#57:                                # %if.then.180
	movq	globals+288, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB46_68
.LBB46_58:                              # %if.else.181
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-432(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB46_60
# BB#59:                                # %if.then.186
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -104(%rbp)
	jmp	.LBB46_67
.LBB46_60:                              # %if.else.188
	movq	-96(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB46_62
# BB#61:                                # %if.then.193
	movq	-96(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB46_66
.LBB46_62:                              # %if.else.197
	movq	globals+496, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB46_64
# BB#63:                                # %if.then.202
	movq	globals+496, %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB46_65
.LBB46_64:                              # %if.else.206
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -104(%rbp)
.LBB46_65:                              # %if.end.208
	jmp	.LBB46_66
.LBB46_66:                              # %if.end.209
	jmp	.LBB46_67
.LBB46_67:                              # %if.end.210
	jmp	.LBB46_68
.LBB46_68:                              # %if.end.211
	jmp	.LBB46_69
.LBB46_69:                              # %if.end.212
	movq	-48(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	pset_encode_coding_system
	movq	-32(%rbp), %rdi
	callq	setup_process_coding_systems
	movq	specpdl, %rsi
	movq	-80(%rbp), %rdi
	shlq	$5, %rdi
	addq	%rdi, %rsi
	movq	%rsi, specpdl_ptr
	movq	-32(%rbp), %rsi
	movq	%rsi, -8(%rbp)
.LBB46_70:                              # %return
	movq	-8(%rbp), %rax
	addq	$432, %rsp              # imm = 0x1B0
	popq	%rbp
	retq
.Lfunc_end46:
	.size	Fmake_pipe_process, .Lfunc_end46-Fmake_pipe_process
	.cfi_endproc

	.align	16, 0x90
	.type	make_process,@function
make_process:                           # @make_process
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	callq	allocate_process
	movl	$820, %edi              # imm = 0x334
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_status
	movq	-40(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	Fmake_marker
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_mark
	movq	-40(%rbp), %rax
	movl	$-1, 164(%rax)
	movq	-40(%rbp), %rax
	movl	$-1, 168(%rax)
	movq	$0, -72(%rbp)
.LBB47_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$6, -72(%rbp)
	jge	.LBB47_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB47_1 Depth=1
	movq	-72(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	$-1, 172(%rcx,%rax,4)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB47_1 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB47_1
.LBB47_4:                               # %for.end
	movq	-40(%rbp), %rax
	movl	$0, 232(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	$1, -72(%rbp)
.LBB47_5:                               # %for.cond.3
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rdi
	callq	Fget_process
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB47_7
# BB#6:                                 # %if.then
	jmp	.LBB47_9
.LBB47_7:                               # %if.end
                                        #   in Loop: Header=BB47_5 Depth=1
	movabsq	$.L.str.61, %rsi
	leaq	-64(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	make_formatted_string
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	concat2
	movq	%rax, -32(%rbp)
# BB#8:                                 # %for.inc.9
                                        #   in Loop: Header=BB47_5 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB47_5
.LBB47_9:                               # %for.end.11
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	pset_name
	movl	$565, %edi              # imm = 0x235
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_sentinel
	movl	$564, %edi              # imm = 0x234
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_filter
	movl	$5, %esi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	Fcons
	movq	Vprocess_alist, %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, Vprocess_alist
	movq	-16(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	make_process, .Lfunc_end47-make_process
	.cfi_endproc

	.align	16, 0x90
	.type	start_process_unwind,@function
start_process_unwind:                   # @start_process_unwind
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
	callq	PROCESSP
	testb	$1, %al
	jne	.LBB48_2
# BB#1:                                 # %if.then
	callq	emacs_abort
.LBB48_2:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	XPROCESS
	cmpl	$0, 160(%rax)
	jg	.LBB48_5
# BB#3:                                 # %land.lhs.true
	movq	-8(%rbp), %rdi
	callq	XPROCESS
	cmpl	$-2, 160(%rax)
	je	.LBB48_5
# BB#4:                                 # %if.then.5
	movq	-8(%rbp), %rdi
	callq	remove_process
.LBB48_5:                               # %if.end.6
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	start_process_unwind, .Lfunc_end48-start_process_unwind
	.cfi_endproc

	.align	16, 0x90
	.type	pset_type,@function
pset_type:                              # @pset_type
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 80(%rdi)
	popq	%rbp
	retq
.Lfunc_end49:
	.size	pset_type, .Lfunc_end49-pset_type
	.cfi_endproc

	.align	16, 0x90
	.type	pset_command,@function
pset_command:                           # @pset_command
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 24(%rdi)
	popq	%rbp
	retq
.Lfunc_end50:
	.size	pset_command, .Lfunc_end50-pset_command
	.cfi_endproc

	.align	16, 0x90
	.type	pset_stderrproc,@function
pset_stderrproc:                        # @pset_stderrproc
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 152(%rdi)
	popq	%rbp
	retq
.Lfunc_end51:
	.size	pset_stderrproc, .Lfunc_end51-pset_stderrproc
	.cfi_endproc

	.align	16, 0x90
	.type	pset_decode_coding_system,@function
pset_decode_coding_system:              # @pset_decode_coding_system
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 104(%rdi)
	popq	%rbp
	retq
.Lfunc_end52:
	.size	pset_decode_coding_system, .Lfunc_end52-pset_decode_coding_system
	.cfi_endproc

	.align	16, 0x90
	.type	pset_encode_coding_system,@function
pset_encode_coding_system:              # @pset_encode_coding_system
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 120(%rdi)
	popq	%rbp
	retq
.Lfunc_end53:
	.size	pset_encode_coding_system, .Lfunc_end53-pset_encode_coding_system
	.cfi_endproc

	.align	16, 0x90
	.type	pset_decoding_buf,@function
pset_decoding_buf:                      # @pset_decoding_buf
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 112(%rdi)
	popq	%rbp
	retq
.Lfunc_end54:
	.size	pset_decoding_buf, .Lfunc_end54-pset_decoding_buf
	.cfi_endproc

	.align	16, 0x90
	.type	pset_encoding_buf,@function
pset_encoding_buf:                      # @pset_encoding_buf
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 128(%rdi)
	popq	%rbp
	retq
.Lfunc_end55:
	.size	pset_encoding_buf, .Lfunc_end55-pset_encoding_buf
	.cfi_endproc

	.globl	remove_slash_colon
	.align	16, 0x90
	.type	remove_slash_colon,@function
remove_slash_colon:                     # @remove_slash_colon
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	SBYTES
	cmpq	$2, %rax
	jle	.LBB56_4
# BB#1:                                 # %land.lhs.true
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	SREF
	movzbl	%al, %ecx
	cmpl	$47, %ecx
	jne	.LBB56_4
# BB#2:                                 # %land.lhs.true.4
	movl	$1, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	SREF
	movzbl	%al, %ecx
	cmpl	$58, %ecx
	jne	.LBB56_4
# BB#3:                                 # %cond.true
	movq	-8(%rbp), %rdi
	callq	SSDATA
	addq	$2, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	SCHARS
	subq	$2, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	SBYTES
	subq	$2, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	STRING_MULTIBYTE
	movzbl	%al, %ecx
	andl	$1, %ecx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-32(%rbp), %rdx         # 8-byte Reload
	callq	make_specified_string
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB56_5
.LBB56_4:                               # %cond.false
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB56_5:                               # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	remove_slash_colon, .Lfunc_end56-remove_slash_colon
	.cfi_endproc

	.align	16, 0x90
	.type	create_process,@function
create_process:                         # @create_process
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
	subq	$416, %rsp              # imm = 0x1A0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	XPROCESS
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movl	$-1, -60(%rbp)
	movb	$0, -61(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -104(%rbp)
	movl	$-1, -40(%rbp)
	movl	$-1, -36(%rbp)
	movq	-32(%rbp), %rax
	movb	224(%rax), %cl
	shrb	$4, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB57_2
# BB#1:                                 # %if.then
	leaq	-96(%rbp), %rdi
	callq	allocate_pty
	movl	%eax, -36(%rbp)
	movl	%eax, -40(%rbp)
.LBB57_2:                               # %if.end
	cmpl	$0, -36(%rbp)
	jl	.LBB57_4
# BB#3:                                 # %if.then.4
	leaq	-96(%rbp), %rdi
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 180(%rcx)
	movl	$-1, -56(%rbp)
	movl	$-1, -52(%rbp)
	movb	$1, -61(%rbp)
	callq	build_string
	movq	%rax, -104(%rbp)
	jmp	.LBB57_10
.LBB57_4:                               # %if.else
	movq	-32(%rbp), %rax
	addq	$172, %rax
	movq	%rax, %rdi
	callq	emacs_pipe
	cmpl	$0, %eax
	jne	.LBB57_6
# BB#5:                                 # %lor.lhs.false
	movq	-32(%rbp), %rax
	addq	$172, %rax
	addq	$8, %rax
	movq	%rax, %rdi
	callq	emacs_pipe
	cmpl	$0, %eax
	je	.LBB57_7
.LBB57_6:                               # %if.then.16
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$.L.str.10, %rdi
	movq	%rax, %rsi
	callq	report_file_error
.LBB57_7:                               # %if.end.18
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movl	172(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movq	-32(%rbp), %rax
	movl	176(%rax), %ecx
	movl	%ecx, -40(%rbp)
	movq	-32(%rbp), %rax
	movl	180(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movq	-32(%rbp), %rax
	movl	184(%rax), %ecx
	movl	%ecx, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-312(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB57_9
# BB#8:                                 # %if.then.29
	movq	-32(%rbp), %rax
	movq	152(%rax), %rdi
	callq	XPROCESS
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	movl	184(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movq	-240(%rbp), %rax
	addq	$172, %rax
	addq	$4, %rax
	movq	%rax, %rdi
	callq	close_process_fd
	movq	-240(%rbp), %rax
	addq	$172, %rax
	movq	%rax, %rdi
	callq	close_process_fd
.LBB57_9:                               # %if.end.38
	jmp	.LBB57_10
.LBB57_10:                              # %if.end.39
	movq	-32(%rbp), %rax
	addq	$172, %rax
	addq	$16, %rax
	movq	%rax, %rdi
	callq	emacs_pipe
	cmpl	$0, %eax
	je	.LBB57_12
# BB#11:                                # %if.then.45
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$.L.str.10, %rdi
	movq	%rax, %rsi
	callq	report_file_error
.LBB57_12:                              # %if.end.47
	movl	$4, %esi
	movl	$2048, %edx             # imm = 0x800
	movl	-36(%rbp), %edi
	movb	$0, %al
	callq	rpl_fcntl
	movl	$4, %esi
	movl	$2048, %edx             # imm = 0x800
	movl	-40(%rbp), %edi
	movl	%eax, -316(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	rpl_fcntl
	movl	$820, %edi              # imm = 0x334
	movq	-8(%rbp), %rcx
	movslq	-36(%rbp), %r8
	movq	%rcx, chan_process(,%r8,8)
	movl	-36(%rbp), %edx
	movq	-32(%rbp), %rcx
	movl	%edx, 164(%rcx)
	movl	-40(%rbp), %edx
	movq	-32(%rbp), %rcx
	movl	%edx, 168(%rcx)
	movb	-61(%rbp), %r9b
	movq	-32(%rbp), %rcx
	andb	$1, %r9b
	movb	224(%rcx), %r10b
	shlb	$4, %r9b
	andb	$-17, %r10b
	orb	%r9b, %r10b
	movb	%r10b, 224(%rcx)
	movq	-32(%rbp), %rcx
	movl	%eax, -320(%rbp)        # 4-byte Spill
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_status
	movl	$901, %edi              # imm = 0x385
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-336(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB57_14
# BB#13:                                # %if.then.58
	movabsq	$input_wait_mask, %rsi
	movl	-36(%rbp), %edi
	callq	fd_SET
	movabsq	$non_keyboard_wait_mask, %rsi
	movl	-36(%rbp), %edi
	callq	fd_SET
.LBB57_14:                              # %if.end.59
	movl	-36(%rbp), %eax
	cmpl	max_process_desc, %eax
	jle	.LBB57_16
# BB#15:                                # %if.then.61
	movl	-36(%rbp), %eax
	movl	%eax, max_process_desc
.LBB57_16:                              # %if.end.62
	movq	-8(%rbp), %rdi
	callq	setup_process_coding_systems
	callq	block_input
	leaq	-232(%rbp), %rdi
	callq	block_child_signal
	movq	-24(%rbp), %rdi
	movq	%rdi, -248(%rbp)
	movq	-104(%rbp), %rdi
	movq	%rdi, -256(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -264(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -268(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, -272(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -276(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -288(%rbp)
	callq	vfork
	movl	%eax, -44(%rbp)
	movq	-248(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	-256(%rbp), %rdi
	movq	%rdi, -104(%rbp)
	movq	-264(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movl	-268(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-272(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-276(%rbp), %eax
	movl	%eax, -60(%rbp)
	movq	-288(%rbp), %rdi
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movb	224(%rdi), %cl
	shrb	$4, %cl
	andb	$1, %cl
	andb	$1, %cl
	movb	%cl, -61(%rbp)
	cmpl	$0, -44(%rbp)
	jne	.LBB57_35
# BB#17:                                # %if.then.70
	callq	setsid
	testb	$1, -61(%rbp)
	movl	%eax, -340(%rbp)        # 4-byte Spill
	je	.LBB57_20
# BB#18:                                # %land.lhs.true
	cmpl	$0, -52(%rbp)
	jl	.LBB57_20
# BB#19:                                # %if.then.74
	movl	$21518, %eax            # imm = 0x540E
	movl	%eax, %esi
	xorl	%edx, %edx
	movl	-52(%rbp), %edi
	movb	$0, %al
	callq	ioctl
	movl	%eax, -344(%rbp)        # 4-byte Spill
.LBB57_20:                              # %if.end.76
	testb	$1, -61(%rbp)
	je	.LBB57_24
# BB#21:                                # %if.then.78
	movabsq	$.L.str.62, %rdi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	emacs_open
	movl	%eax, -292(%rbp)
	cmpl	$0, -292(%rbp)
	jl	.LBB57_23
# BB#22:                                # %if.then.81
	movl	$21538, %eax            # imm = 0x5422
	movl	%eax, %esi
	xorl	%edx, %edx
	movl	-292(%rbp), %edi
	movb	$0, %al
	callq	ioctl
	movl	-292(%rbp), %edi
	movl	%eax, -348(%rbp)        # 4-byte Spill
	callq	emacs_close
	movl	%eax, -352(%rbp)        # 4-byte Spill
.LBB57_23:                              # %if.end.84
	jmp	.LBB57_24
.LBB57_24:                              # %if.end.85
	testb	$1, -61(%rbp)
	je	.LBB57_30
# BB#25:                                # %if.then.87
	cmpl	$0, -52(%rbp)
	jl	.LBB57_27
# BB#26:                                # %if.then.89
	movl	-52(%rbp), %edi
	callq	emacs_close
	movl	%eax, -356(%rbp)        # 4-byte Spill
.LBB57_27:                              # %if.end.91
	movq	-104(%rbp), %rdi
	callq	SSDATA
	movl	$2, %esi
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	emacs_open
	movl	%eax, -52(%rbp)
	movl	%eax, -56(%rbp)
	cmpl	$0, -52(%rbp)
	jge	.LBB57_29
# BB#28:                                # %if.then.95
	movq	-104(%rbp), %rdi
	callq	SSDATA
	movq	%rax, %rdi
	callq	emacs_perror
	movl	$125, %edi
	callq	_exit
.LBB57_29:                              # %if.end.97
	jmp	.LBB57_30
.LBB57_30:                              # %if.end.98
	movl	$2, %edi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	signal
	movl	$3, %edi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	signal
	movl	$27, %edi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	signal
	movl	$13, %edi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	signal
	leaq	-232(%rbp), %rdi
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	unblock_child_signal
	testb	$1, -61(%rbp)
	je	.LBB57_32
# BB#31:                                # %if.then.104
	movl	-56(%rbp), %edi
	callq	child_setup_tty
.LBB57_32:                              # %if.end.105
	cmpl	$0, -60(%rbp)
	jge	.LBB57_34
# BB#33:                                # %if.then.107
	movl	-56(%rbp), %eax
	movl	%eax, -60(%rbp)
.LBB57_34:                              # %if.end.108
	movl	$1, %r8d
	movl	-52(%rbp), %edi
	movl	-56(%rbp), %esi
	movl	-60(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %r9
	callq	child_setup
	movl	%eax, -396(%rbp)        # 4-byte Spill
.LBB57_35:                              # %if.end.109
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -48(%rbp)
	movl	-44(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 160(%rax)
	cmpl	$0, -44(%rbp)
	jl	.LBB57_37
# BB#36:                                # %if.then.113
	movq	-32(%rbp), %rax
	movb	224(%rax), %cl
	andb	$-65, %cl
	orb	$64, %cl
	movb	%cl, 224(%rax)
.LBB57_37:                              # %if.end.117
	leaq	-232(%rbp), %rdi
	callq	unblock_child_signal
	callq	unblock_input
	cmpl	$0, -44(%rbp)
	jge	.LBB57_39
# BB#38:                                # %if.then.119
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$.L.str.63, %rdi
	movl	-48(%rbp), %edx
	movq	%rax, %rsi
	callq	report_file_errno
.LBB57_39:                              # %if.else.121
	movq	-32(%rbp), %rax
	addq	$172, %rax
	movq	%rax, %rdi
	callq	close_process_fd
	movq	-32(%rbp), %rax
	addq	$172, %rax
	addq	$12, %rax
	movq	%rax, %rdi
	callq	close_process_fd
	movq	-32(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	pset_tty_name
	movq	-32(%rbp), %rax
	addq	$172, %rax
	addq	$20, %rax
	movq	%rax, %rdi
	callq	close_process_fd
	leaq	-293(%rbp), %rsi
	movl	$1, %ecx
	movl	%ecx, %edx
	movq	-32(%rbp), %rax
	movl	188(%rax), %edi
	callq	emacs_read
	movq	-32(%rbp), %rdx
	addq	$172, %rdx
	addq	$16, %rdx
	movq	%rdx, %rdi
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	close_process_fd
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-416(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB57_41
# BB#40:                                # %if.then.136
	movq	-32(%rbp), %rax
	movq	152(%rax), %rdi
	callq	XPROCESS
	movq	%rax, -304(%rbp)
	movq	-304(%rbp), %rax
	addq	$172, %rax
	addq	$12, %rax
	movq	%rax, %rdi
	callq	close_process_fd
.LBB57_41:                              # %if.end.142
	jmp	.LBB57_42
.LBB57_42:                              # %if.end.143
	addq	$416, %rsp              # imm = 0x1A0
	popq	%rbp
	retq
.Lfunc_end57:
	.size	create_process, .Lfunc_end57-create_process
	.cfi_endproc

	.align	16, 0x90
	.type	create_pty,@function
create_pty:                             # @create_pty
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	XPROCESS
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movb	224(%rax), %cl
	shrb	$4, %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB58_2
# BB#1:                                 # %cond.true
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB58_3
.LBB58_2:                               # %cond.false
	leaq	-48(%rbp), %rdi
	callq	allocate_pty
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB58_3:                               # %cond.end
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jl	.LBB58_7
# BB#4:                                 # %if.then
	movl	$4, %esi
	movl	$2048, %edx             # imm = 0x800
	movl	-52(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 172(%rcx)
	movl	-52(%rbp), %edi
	movb	$0, %al
	callq	rpl_fcntl
	movl	$820, %edi              # imm = 0x334
	movq	-8(%rbp), %rcx
	movslq	-52(%rbp), %r8
	movq	%rcx, chan_process(,%r8,8)
	movl	-52(%rbp), %edx
	movq	-16(%rbp), %rcx
	movl	%edx, 164(%rcx)
	movl	-52(%rbp), %edx
	movq	-16(%rbp), %rcx
	movl	%edx, 168(%rcx)
	movq	-16(%rbp), %rcx
	movb	224(%rcx), %r9b
	andb	$-17, %r9b
	orb	$16, %r9b
	movb	%r9b, 224(%rcx)
	movq	-16(%rbp), %rcx
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_status
	movq	-8(%rbp), %rdi
	callq	setup_process_coding_systems
	movabsq	$input_wait_mask, %rsi
	movl	-52(%rbp), %edi
	callq	fd_SET
	movabsq	$non_keyboard_wait_mask, %rsi
	movl	-52(%rbp), %edi
	callq	fd_SET
	movl	-52(%rbp), %edx
	cmpl	max_process_desc, %edx
	jle	.LBB58_6
# BB#5:                                 # %if.then.9
	movl	-52(%rbp), %eax
	movl	%eax, max_process_desc
.LBB58_6:                               # %if.end
	leaq	-48(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	build_string
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_tty_name
.LBB58_7:                               # %if.end.12
	movq	-16(%rbp), %rax
	movl	$-2, 160(%rax)
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end58:
	.size	create_pty, .Lfunc_end58-create_pty
	.cfi_endproc

	.align	16, 0x90
	.type	pset_log,@function
pset_log:                               # @pset_log
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 48(%rdi)
	popq	%rbp
	retq
.Lfunc_end59:
	.size	pset_log, .Lfunc_end59-pset_log
	.cfi_endproc

	.globl	conv_sockaddr_to_lisp
	.align	16, 0x90
	.type	conv_sockaddr_to_lisp,@function
conv_sockaddr_to_lisp:                  # @conv_sockaddr_to_lisp
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
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movslq	-20(%rbp), %rdi
	cmpq	$2, %rdi
	jae	.LBB60_2
# BB#1:                                 # %if.then
	movq	empty_unibyte_string, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB60_20
.LBB60_2:                               # %if.end
	movq	-16(%rbp), %rax
	movzwl	(%rax), %ecx
	movl	%ecx, %edx
	subl	$1, %edx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	movl	%edx, -112(%rbp)        # 4-byte Spill
	je	.LBB60_9
	jmp	.LBB60_21
.LBB60_21:                              # %if.end
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB60_3
	jmp	.LBB60_22
.LBB60_22:                              # %if.end
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$10, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	je	.LBB60_4
	jmp	.LBB60_15
.LBB60_3:                               # %sw.bb
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	$5, -20(%rbp)
	movslq	-20(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	XVECTOR
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	movzwl	2(%rax), %edi
	callq	ntohs
	movzwl	%ax, %edi
	movl	%edi, %esi
	shlq	$2, %rsi
	addq	$2, %rsi
	movl	-20(%rbp), %edi
	addl	$-1, %edi
	movl	%edi, -20(%rbp)
	movslq	%edi, %rcx
	movq	-56(%rbp), %rdx
	movq	%rsi, 8(%rdx,%rcx,8)
	movq	-64(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -48(%rbp)
	jmp	.LBB60_16
.LBB60_4:                               # %sw.bb.10
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -80(%rbp)
	movl	$9, -20(%rbp)
	movslq	-20(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	XVECTOR
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	movzwl	2(%rax), %edi
	callq	ntohs
	movzwl	%ax, %edi
	movl	%edi, %esi
	shlq	$2, %rsi
	addq	$2, %rsi
	movl	-20(%rbp), %edi
	addl	$-1, %edi
	movl	%edi, -20(%rbp)
	movslq	%edi, %rcx
	movq	-56(%rbp), %rdx
	movq	%rsi, 8(%rdx,%rcx,8)
	movl	$0, -36(%rbp)
.LBB60_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB60_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB60_5 Depth=1
	movslq	-36(%rbp), %rax
	movq	-80(%rbp), %rcx
	movzwl	(%rcx,%rax,2), %edi
	callq	ntohs
	movzwl	%ax, %edi
	movl	%edi, %ecx
	shlq	$2, %rcx
	addq	$2, %rcx
	movslq	-36(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	%rcx, 8(%rsi,%rdx,8)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB60_5 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB60_5
.LBB60_8:                               # %for.end
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB60_20
.LBB60_9:                               # %sw.bb.36
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	movslq	-20(%rbp), %rax
	subq	$2, %rax
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jle	.LBB60_14
# BB#10:                                # %land.lhs.true
	movq	-88(%rbp), %rax
	movsbl	2(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB60_14
# BB#11:                                # %if.then.44
	movq	-88(%rbp), %rax
	addq	$2, %rax
	movq	-96(%rbp), %rdx
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	memchr
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB60_13
# BB#12:                                # %if.then.47
	movq	-104(%rbp), %rax
	movq	-88(%rbp), %rcx
	addq	$2, %rcx
	subq	%rcx, %rax
	movq	%rax, -96(%rbp)
.LBB60_13:                              # %if.end.50
	jmp	.LBB60_14
.LBB60_14:                              # %if.end.51
	movq	-88(%rbp), %rax
	addq	$2, %rax
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	callq	make_unibyte_string
	movq	%rax, -8(%rbp)
	jmp	.LBB60_20
.LBB60_15:                              # %sw.default
	xorl	%edi, %edi
	movslq	-20(%rbp), %rax
	subq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -20(%rbp)
	movq	-16(%rbp), %rax
	movzwl	(%rax), %ecx
	movl	%ecx, %eax
	shlq	$2, %rax
	addq	$2, %rax
	movslq	-20(%rbp), %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	XVECTOR
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -48(%rbp)
.LBB60_16:                              # %sw.epilog
	movl	$0, -36(%rbp)
.LBB60_17:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB60_19
# BB#18:                                # %while.body
                                        #   in Loop: Header=BB60_17 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, %eax
	shlq	$2, %rax
	addq	$2, %rax
	movl	-36(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -36(%rbp)
	movslq	%edx, %rcx
	movq	-56(%rbp), %rdi
	movq	%rax, 8(%rdi,%rcx,8)
	jmp	.LBB60_17
.LBB60_19:                              # %while.end
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB60_20:                              # %return
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end60:
	.size	conv_sockaddr_to_lisp, .Lfunc_end60-conv_sockaddr_to_lisp
	.cfi_endproc

	.globl	Fset_process_datagram_address
	.align	16, 0x90
	.type	Fset_process_datagram_address,@function
Fset_process_datagram_address:          # @Fset_process_datagram_address
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
	movq	-16(%rbp), %rdi
	callq	CHECK_PROCESS
	movq	-16(%rbp), %rdi
	callq	PROCESSP
	testb	$1, %al
	jne	.LBB61_1
	jmp	.LBB61_3
.LBB61_1:                               # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	cmpl	$0, 164(%rax)
	jl	.LBB61_3
# BB#2:                                 # %land.lhs.true.2
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movabsq	$datagram_address, %rdi
	movslq	164(%rax), %rax
	shlq	$4, %rax
	addq	%rax, %rdi
	cmpq	$0, (%rdi)
	jne	.LBB61_4
.LBB61_3:                               # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB61_8
.LBB61_4:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	leaq	-32(%rbp), %rsi
	movl	164(%rax), %ecx
	movl	%ecx, -28(%rbp)
	movq	-24(%rbp), %rdi
	callq	get_lisp_to_sockaddr_size
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB61_6
# BB#5:                                 # %lor.lhs.false
	movabsq	$datagram_address, %rax
	movslq	-28(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %edx
	cmpl	-36(%rbp), %edx
	je	.LBB61_7
.LBB61_6:                               # %if.then.15
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB61_8
.LBB61_7:                               # %if.end.17
	movabsq	$datagram_address, %rax
	movl	-32(%rbp), %edi
	movq	-24(%rbp), %rsi
	movslq	-28(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rdx
	movl	-36(%rbp), %ecx
	callq	conv_lisp_to_sockaddr
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB61_8:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end61:
	.size	Fset_process_datagram_address, .Lfunc_end61-Fset_process_datagram_address
	.cfi_endproc

	.align	16, 0x90
	.type	get_lisp_to_sockaddr_size,@function
get_lisp_to_sockaddr_size:              # @get_lisp_to_sockaddr_size
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB62_1
	jmp	.LBB62_7
.LBB62_1:                               # %if.then
	movq	-16(%rbp), %rdi
	callq	XVECTOR
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$5, (%rax)
	jne	.LBB62_3
# BB#2:                                 # %if.then.2
	movq	-24(%rbp), %rax
	movl	$2, (%rax)
	movl	$16, -4(%rbp)
	jmp	.LBB62_22
.LBB62_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$9, (%rax)
	jne	.LBB62_5
# BB#4:                                 # %if.then.6
	movq	-24(%rbp), %rax
	movl	$10, (%rax)
	movl	$28, -4(%rbp)
	jmp	.LBB62_22
.LBB62_5:                               # %if.end
	jmp	.LBB62_6
.LBB62_6:                               # %if.end.7
	jmp	.LBB62_21
.LBB62_7:                               # %if.else.8
	movq	-16(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB62_8
	jmp	.LBB62_9
.LBB62_8:                               # %if.then.10
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
	movl	$110, -4(%rbp)
	jmp	.LBB62_22
.LBB62_9:                               # %if.else.11
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB62_19
# BB#10:                                # %land.lhs.true
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB62_19
# BB#11:                                # %land.lhs.true.19
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB62_13
	jmp	.LBB62_12
.LBB62_12:                              # %cond.true
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-16(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jle	.LBB62_14
	jmp	.LBB62_19
.LBB62_13:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	subq	$3, %rdx
	movq	(%rdx), %rdx
	sarq	$2, %rdx
	cmpq	%rdx, %rcx
	jg	.LBB62_19
.LBB62_14:                              # %land.lhs.true.29
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jg	.LBB62_19
# BB#15:                                # %land.lhs.true.35
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB62_16
	jmp	.LBB62_19
.LBB62_16:                              # %if.then.39
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	XVECTOR
	movl	$16382, %ecx            # imm = 0x3FFE
	movl	%ecx, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	(%rax), %rdi
	jae	.LBB62_18
# BB#17:                                # %if.then.48
	movl	$0, -4(%rbp)
	jmp	.LBB62_22
.LBB62_18:                              # %if.end.49
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	addq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB62_22
.LBB62_19:                              # %if.end.57
	jmp	.LBB62_20
.LBB62_20:                              # %if.end.58
	jmp	.LBB62_21
.LBB62_21:                              # %if.end.59
	movl	$0, -4(%rbp)
.LBB62_22:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end62:
	.size	get_lisp_to_sockaddr_size, .Lfunc_end62-get_lisp_to_sockaddr_size
	.cfi_endproc

	.align	16, 0x90
	.type	conv_lisp_to_sockaddr,@function
conv_lisp_to_sockaddr:                  # @conv_lisp_to_sockaddr
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
	subq	$128, %rsp
	xorl	%eax, %eax
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	$0, -48(%rbp)
	movq	-24(%rbp), %rdx
	movslq	-28(%rbp), %rsi
	movq	%rdx, %rdi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	memset
	movq	-16(%rbp), %rdi
	callq	VECTORP
	testb	$1, %al
	jne	.LBB63_1
	jmp	.LBB63_13
.LBB63_1:                               # %if.then
	movq	-16(%rbp), %rdi
	callq	XVECTOR
	movq	%rax, -40(%rbp)
	cmpl	$2, -4(%rbp)
	jne	.LBB63_3
# BB#2:                                 # %if.then.3
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	$5, -28(%rbp)
	movl	-28(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -28(%rbp)
	movslq	%ecx, %rax
	movq	-40(%rbp), %rdx
	movq	8(%rdx,%rax,8), %rax
	sarq	$2, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movw	%ax, %si
	movzwl	%si, %edi
	callq	htons
	movq	-72(%rbp), %rdx
	movw	%ax, 2(%rdx)
	movq	-72(%rbp), %rdx
	addq	$4, %rdx
	movq	%rdx, -48(%rbp)
	movl	-4(%rbp), %ecx
	movw	%cx, %ax
	movq	-24(%rbp), %rdx
	movw	%ax, (%rdx)
	jmp	.LBB63_12
.LBB63_3:                               # %if.else
	cmpl	$10, -4(%rbp)
	jne	.LBB63_11
# BB#4:                                 # %if.then.9
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -88(%rbp)
	movl	$9, -28(%rbp)
	movl	-28(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -28(%rbp)
	movslq	%ecx, %rax
	movq	-40(%rbp), %rdx
	movq	8(%rdx,%rax,8), %rax
	sarq	$2, %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movw	%ax, %si
	movzwl	%si, %edi
	callq	htons
	movq	-80(%rbp), %rdx
	movw	%ax, 2(%rdx)
	movl	$0, -52(%rbp)
.LBB63_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB63_10
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB63_5 Depth=1
	movslq	-52(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	8(%rcx,%rax,8), %rax
	andq	$7, %rax
	movl	%eax, %edx
	andl	$-5, %edx
	cmpl	$2, %edx
	jne	.LBB63_8
# BB#7:                                 # %if.then.26
                                        #   in Loop: Header=BB63_5 Depth=1
	movslq	-52(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	8(%rcx,%rax,8), %rax
	sarq	$2, %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movl	%eax, %edx
	movl	%edx, -92(%rbp)
	movl	-92(%rbp), %edx
	movw	%dx, %si
	movzwl	%si, %edi
	callq	ntohs
	movslq	-52(%rbp), %rcx
	movq	-88(%rbp), %r8
	movw	%ax, (%r8,%rcx,2)
.LBB63_8:                               # %if.end
                                        #   in Loop: Header=BB63_5 Depth=1
	jmp	.LBB63_9
.LBB63_9:                               # %for.inc
                                        #   in Loop: Header=BB63_5 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB63_5
.LBB63_10:                              # %for.end
	movl	-4(%rbp), %eax
	movw	%ax, %cx
	movq	-24(%rbp), %rdx
	movw	%cx, (%rdx)
	jmp	.LBB63_31
.LBB63_11:                              # %if.else.39
	jmp	.LBB63_31
.LBB63_12:                              # %if.end.40
	jmp	.LBB63_25
.LBB63_13:                              # %if.else.41
	movq	-16(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB63_14
	jmp	.LBB63_23
.LBB63_14:                              # %if.then.43
	cmpl	$1, -4(%rbp)
	jne	.LBB63_22
# BB#15:                                # %if.then.46
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-16(%rbp), %rdi
	callq	SDATA
	movq	%rax, -48(%rbp)
	movl	$0, -52(%rbp)
.LBB63_16:                              # %for.cond.48
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movslq	-52(%rbp), %rdx
	cmpq	$108, %rdx
	movb	%cl, -113(%rbp)         # 1-byte Spill
	jae	.LBB63_18
# BB#17:                                # %land.rhs
                                        #   in Loop: Header=BB63_16 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	setne	%dl
	movb	%dl, -113(%rbp)         # 1-byte Spill
.LBB63_18:                              # %land.end
                                        #   in Loop: Header=BB63_16 Depth=1
	movb	-113(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB63_19
	jmp	.LBB63_21
.LBB63_19:                              # %for.body.53
                                        #   in Loop: Header=BB63_16 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	(%rax), %dl
	movslq	-52(%rbp), %rax
	movq	-104(%rbp), %rcx
	movb	%dl, 2(%rcx,%rax)
# BB#20:                                # %for.inc.56
                                        #   in Loop: Header=BB63_16 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB63_16
.LBB63_21:                              # %for.end.58
	movl	-4(%rbp), %eax
	movw	%ax, %cx
	movq	-24(%rbp), %rdx
	movw	%cx, (%rdx)
.LBB63_22:                              # %if.end.61
	jmp	.LBB63_31
.LBB63_23:                              # %if.else.62
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	XVECTOR
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -48(%rbp)
# BB#24:                                # %if.end.64
	jmp	.LBB63_25
.LBB63_25:                              # %if.end.65
	movl	$0, -52(%rbp)
.LBB63_26:                              # %for.cond.66
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB63_31
# BB#27:                                # %for.body.69
                                        #   in Loop: Header=BB63_26 Depth=1
	movslq	-52(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	8(%rcx,%rax,8), %rax
	andq	$7, %rax
	movl	%eax, %edx
	andl	$-5, %edx
	cmpl	$2, %edx
	jne	.LBB63_29
# BB#28:                                # %if.then.78
                                        #   in Loop: Header=BB63_26 Depth=1
	movslq	-52(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	8(%rcx,%rax,8), %rax
	sarq	$2, %rax
	andq	$255, %rax
	movb	%al, %dl
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	%dl, (%rax)
.LBB63_29:                              # %if.end.86
                                        #   in Loop: Header=BB63_26 Depth=1
	jmp	.LBB63_30
.LBB63_30:                              # %for.inc.87
                                        #   in Loop: Header=BB63_26 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB63_26
.LBB63_31:                              # %for.end.89
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end63:
	.size	conv_lisp_to_sockaddr, .Lfunc_end63-conv_lisp_to_sockaddr
	.cfi_endproc

	.globl	Fset_network_process_option
	.align	16, 0x90
	.type	Fset_network_process_option,@function
Fset_network_process_option:            # @Fset_network_process_option
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_PROCESS
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movl	$699, %edi              # imm = 0x2BB
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB64_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.11, %rdi
	movb	$0, %al
	callq	error
.LBB64_2:                               # %if.end
	movq	-56(%rbp), %rax
	movl	164(%rax), %ecx
	movl	%ecx, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jge	.LBB64_4
# BB#3:                                 # %if.then.3
	movabsq	$.L.str.12, %rdi
	movb	$0, %al
	callq	error
.LBB64_4:                               # %if.end.4
	movl	-44(%rbp), %edi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	set_socket_option
	cmpl	$0, %eax
	je	.LBB64_6
# BB#5:                                 # %if.then.6
	movq	-56(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	64(%rax), %rax
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	Fplist_put
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_childp
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB64_9
.LBB64_6:                               # %if.end.9
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB64_8
# BB#7:                                 # %if.then.12
	movabsq	$.L.str.13, %rdi
	movb	$0, %al
	callq	error
.LBB64_8:                               # %if.end.13
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB64_9:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end64:
	.size	Fset_network_process_option, .Lfunc_end64-Fset_network_process_option
	.cfi_endproc

	.align	16, 0x90
	.type	set_socket_option,@function
set_socket_option:                      # @set_socket_option
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
	subq	$176, %rsp
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -44(%rbp)
	movq	-16(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %edi
	cmpl	$0, %edi
	jne	.LBB65_2
# BB#1:                                 # %cond.true
	jmp	.LBB65_3
.LBB65_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB65_3:                               # %cond.end
	movq	-16(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SSDATA
	movabsq	$socket_options, %rdi
	movq	%rax, -32(%rbp)
	movq	%rdi, -40(%rbp)
.LBB65_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB65_9
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB65_4 Depth=1
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB65_7
# BB#6:                                 # %if.then
	jmp	.LBB65_9
.LBB65_7:                               # %if.end
                                        #   in Loop: Header=BB65_4 Depth=1
	jmp	.LBB65_8
.LBB65_8:                               # %for.inc
                                        #   in Loop: Header=BB65_4 Depth=1
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB65_4
.LBB65_9:                               # %for.end
	movq	-40(%rbp), %rax
	movl	16(%rax), %ecx
	decl	%ecx
	movl	%ecx, %eax
	subl	$3, %ecx
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	ja	.LBB65_36
# BB#41:                                # %for.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	.LJTI65_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB65_10:                              # %sw.bb
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$4, %r8d
	leaq	-48(%rbp), %rcx
	movl	$1, %edi
	xorl	%edx, %edx
	movq	-144(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	cmovel	%edx, %edi
	movl	%edi, -48(%rbp)
	movl	-8(%rbp), %edi
	movq	-40(%rbp), %rax
	movl	8(%rax), %esi
	movq	-40(%rbp), %rax
	movl	12(%rax), %edx
	callq	setsockopt
	movl	%eax, -44(%rbp)
	jmp	.LBB65_37
.LBB65_11:                              # %sw.bb.13
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB65_17
# BB#12:                                # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_14
	jmp	.LBB65_13
.LBB65_13:                              # %cond.true.20
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jle	.LBB65_15
	jmp	.LBB65_17
.LBB65_14:                              # %cond.false.23
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	sarq	$2, %rdx
	cmpq	%rdx, %rcx
	jg	.LBB65_17
.LBB65_15:                              # %land.lhs.true.27
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jg	.LBB65_17
# BB#16:                                # %if.then.31
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -52(%rbp)
	jmp	.LBB65_18
.LBB65_17:                              # %if.else
	movabsq	$.L.str.65, %rdi
	movq	-32(%rbp), %rsi
	movb	$0, %al
	callq	error
.LBB65_18:                              # %if.end.34
	movl	$4, %r8d
	leaq	-52(%rbp), %rax
	movl	-8(%rbp), %edi
	movq	-40(%rbp), %rcx
	movl	8(%rcx), %esi
	movq	-40(%rbp), %rcx
	movl	12(%rcx), %edx
	movq	%rax, %rcx
	callq	setsockopt
	movl	%eax, -44(%rbp)
	jmp	.LBB65_37
.LBB65_19:                              # %sw.bb.38
	xorl	%esi, %esi
	movl	$17, %eax
	movl	%eax, %edx
	leaq	-80(%rbp), %rcx
	movq	%rcx, %rdi
	callq	memset
	movq	-24(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB65_20
	jmp	.LBB65_24
.LBB65_20:                              # %if.then.40
	movq	-24(%rbp), %rdi
	callq	SSDATA
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	strlen
	cmpq	$16, %rax
	jae	.LBB65_22
# BB#21:                                # %cond.true.45
	movq	-88(%rbp), %rdi
	callq	strlen
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB65_23
.LBB65_22:                              # %cond.false.47
	movl	$16, %eax
	movl	%eax, %ecx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB65_23
.LBB65_23:                              # %cond.end.48
	movq	-152(%rbp), %rax        # 8-byte Reload
	leaq	-80(%rbp), %rcx
	movl	%eax, %edx
	movl	%edx, -92(%rbp)
	movq	-88(%rbp), %rsi
	movslq	-92(%rbp), %rdx
	movq	%rcx, %rdi
	callq	memcpy
	jmp	.LBB65_27
.LBB65_24:                              # %if.else.52
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB65_26
# BB#25:                                # %if.then.56
	movabsq	$.L.str.65, %rdi
	movq	-32(%rbp), %rsi
	movb	$0, %al
	callq	error
.LBB65_26:                              # %if.end.57
	jmp	.LBB65_27
.LBB65_27:                              # %if.end.58
	movl	$16, %r8d
	leaq	-80(%rbp), %rcx
	movl	-8(%rbp), %edi
	movq	-40(%rbp), %rax
	movl	8(%rax), %esi
	movq	-40(%rbp), %rax
	movl	12(%rax), %edx
	callq	setsockopt
	movl	%eax, -44(%rbp)
	jmp	.LBB65_37
.LBB65_28:                              # %sw.bb.62
	movl	$1, -104(%rbp)
	movl	$0, -100(%rbp)
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB65_34
# BB#29:                                # %land.lhs.true.68
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB65_31
	jmp	.LBB65_30
.LBB65_30:                              # %cond.true.69
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jle	.LBB65_32
	jmp	.LBB65_34
.LBB65_31:                              # %cond.false.73
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	sarq	$2, %rdx
	cmpq	%rdx, %rcx
	jg	.LBB65_34
.LBB65_32:                              # %land.lhs.true.77
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jg	.LBB65_34
# BB#33:                                # %if.then.81
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -100(%rbp)
	jmp	.LBB65_35
.LBB65_34:                              # %if.else.85
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edi
	xorl	%ecx, %ecx
	movq	-168(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	cmovel	%ecx, %edi
	movl	%edi, -104(%rbp)
.LBB65_35:                              # %if.end.91
	movl	$8, %r8d
	leaq	-104(%rbp), %rax
	movl	-8(%rbp), %edi
	movq	-40(%rbp), %rcx
	movl	8(%rcx), %esi
	movq	-40(%rbp), %rcx
	movl	12(%rcx), %edx
	movq	%rax, %rcx
	callq	setsockopt
	movl	%eax, -44(%rbp)
	jmp	.LBB65_37
.LBB65_36:                              # %sw.default
	movl	$0, -4(%rbp)
	jmp	.LBB65_40
.LBB65_37:                              # %sw.epilog
	cmpl	$0, -44(%rbp)
	jge	.LBB65_39
# BB#38:                                # %if.then.97
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -108(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	list2
	movabsq	$.L.str.66, %rdi
	movl	-108(%rbp), %edx
	movq	%rax, %rsi
	callq	report_file_errno
.LBB65_39:                              # %if.end.100
	movl	$1, %eax
	movq	-40(%rbp), %rcx
	movl	20(%rcx), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	%eax, -4(%rbp)
.LBB65_40:                              # %return
	movl	-4(%rbp), %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end65:
	.size	set_socket_option, .Lfunc_end65-set_socket_option
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI65_0:
	.quad	.LBB65_10
	.quad	.LBB65_11
	.quad	.LBB65_19
	.quad	.LBB65_28

	.text
	.globl	Fserial_process_configure
	.align	16, 0x90
	.type	Fserial_process_configure,@function
Fserial_process_configure:              # @Fserial_process_configure
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
	subq	$128, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Flist
	movl	$97, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB66_2
# BB#1:                                 # %if.then
	movl	$86, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movq	%rax, -48(%rbp)
.LBB66_2:                               # %if.end
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB66_4
# BB#3:                                 # %if.then.10
	movl	$16, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movq	%rax, -48(%rbp)
.LBB66_4:                               # %if.end.13
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB66_6
# BB#5:                                 # %if.then.16
	movl	$94, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movq	%rax, -48(%rbp)
.LBB66_6:                               # %if.end.19
	movq	-48(%rbp), %rdi
	callq	get_process
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	XPROCESS
	movl	$845, %edi              # imm = 0x34D
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB66_8
# BB#7:                                 # %if.then.24
	movabsq	$.L.str.14, %rdi
	movb	$0, %al
	callq	error
.LBB66_8:                               # %if.end.25
	movl	$121, %edi
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	xorl	%edi, %edi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB66_10
# BB#9:                                 # %if.then.30
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB66_11
.LBB66_10:                              # %if.end.32
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	serial_configure
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB66_11:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end66:
	.size	Fserial_process_configure, .Lfunc_end66-Fserial_process_configure
	.cfi_endproc

	.globl	Fmake_serial_process
	.align	16, 0x90
	.type	Fmake_serial_process,@function
Fmake_serial_process:                   # @Fmake_serial_process
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
	subq	$560, %rsp              # imm = 0x230
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$-1, -28(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB67_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB67_71
.LBB67_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Flist
	movl	$94, %edi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB67_4
# BB#3:                                 # %if.then.6
	movabsq	$.L.str.15, %rdi
	movb	$0, %al
	callq	error
.LBB67_4:                               # %if.end.7
	movq	-56(%rbp), %rdi
	callq	CHECK_STRING
	movl	$121, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_member
	xorl	%edi, %edi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB67_6
# BB#5:                                 # %if.then.12
	movabsq	$.L.str.16, %rdi
	movb	$0, %al
	callq	error
.LBB67_6:                               # %if.end.13
	movl	$121, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	xorl	%edi, %edi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB67_11
# BB#7:                                 # %if.then.18
	movl	$121, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB67_9
# BB#8:                                 # %cond.true
	jmp	.LBB67_10
.LBB67_9:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movl	$121, %edi
	movq	-48(%rbp), %rcx
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	wrong_type_argument
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB67_10:                              # %cond.end
	jmp	.LBB67_11
.LBB67_11:                              # %if.end.27
	movl	$86, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB67_13
# BB#12:                                # %if.then.33
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB67_13:                              # %if.end.34
	movq	-72(%rbp), %rdi
	callq	CHECK_STRING
	movq	-72(%rbp), %rdi
	callq	make_process
	movq	%rax, -40(%rbp)
	callq	SPECPDL_INDEX
	movabsq	$remove_process, %rdi
	movq	%rax, -104(%rbp)
	movq	-40(%rbp), %rsi
	callq	record_unwind_protect
	movq	-40(%rbp), %rdi
	callq	XPROCESS
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rdi
	callq	serial_open
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movq	-64(%rbp), %rsi
	movl	%eax, 172(%rsi)
	movl	-28(%rbp), %eax
	movq	-64(%rbp), %rsi
	movl	%eax, 164(%rsi)
	movl	-28(%rbp), %eax
	movq	-64(%rbp), %rsi
	movl	%eax, 168(%rsi)
	movl	-28(%rbp), %eax
	cmpl	max_process_desc, %eax
	jle	.LBB67_15
# BB#14:                                # %if.then.41
	movl	-28(%rbp), %eax
	movl	%eax, max_process_desc
.LBB67_15:                              # %if.end.42
	movl	$16, %edi
	movq	-40(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	%rax, chan_process(,%rcx,8)
	movq	-48(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB67_17
# BB#16:                                # %if.then.49
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
.LBB67_17:                              # %if.end.50
	movq	-80(%rbp), %rdi
	callq	Fget_buffer_create
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	pset_buffer
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	pset_childp
	movl	$92, %edi
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %rsi
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movq	%rax, %rdi
	callq	Fcopy_sequence
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_plist
	movl	$845, %edi              # imm = 0x34D
	movq	-64(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_type
	movl	$115, %edi
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %rsi
	movq	%rsi, -248(%rbp)        # 8-byte Spill
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_sentinel
	movl	$42, %edi
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %rsi
	movq	%rsi, -264(%rbp)        # 8-byte Spill
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_filter
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_log
	movl	$87, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB67_18
	jmp	.LBB67_19
.LBB67_18:                              # %if.then.66
	movq	-64(%rbp), %rax
	movb	224(%rax), %cl
	andb	$-9, %cl
	orb	$8, %cl
	movb	%cl, 224(%rax)
.LBB67_19:                              # %if.end.67
	movl	$124, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-312(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB67_20
	jmp	.LBB67_21
.LBB67_20:                              # %if.then.74
	movl	$901, %edi              # imm = 0x385
	movq	-64(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_command
.LBB67_21:                              # %if.end.76
	movl	$901, %edi              # imm = 0x385
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-328(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB67_23
# BB#22:                                # %if.then.80
	movabsq	$input_wait_mask, %rsi
	movl	-28(%rbp), %edi
	callq	fd_SET
	movabsq	$non_keyboard_wait_mask, %rsi
	movl	-28(%rbp), %edi
	callq	fd_SET
.LBB67_23:                              # %if.end.81
	movq	-80(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB67_24
	jmp	.LBB67_37
.LBB67_24:                              # %if.then.83
	movq	-64(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-80(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -344(%rbp)        # 8-byte Spill
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB67_26
# BB#25:                                # %cond.true.87
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jmp	.LBB67_30
.LBB67_26:                              # %cond.false.88
	movq	-80(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	376(%rax), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-360(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB67_28
# BB#27:                                # %cond.true.93
	movq	-80(%rbp), %rdi
	callq	XBUFFER
	movq	768(%rax), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jmp	.LBB67_29
.LBB67_28:                              # %cond.false.96
	movq	-80(%rbp), %rdi
	callq	XBUFFER
	movq	376(%rax), %rdi
	callq	marker_position
	movq	%rax, -368(%rbp)        # 8-byte Spill
.LBB67_29:                              # %cond.end.100
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	%rax, -352(%rbp)        # 8-byte Spill
.LBB67_30:                              # %cond.end.101
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	-80(%rbp), %rdi
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB67_32
# BB#31:                                # %cond.true.106
	movq	current_buffer, %rax
	movq	776(%rax), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jmp	.LBB67_36
.LBB67_32:                              # %cond.false.107
	movq	-80(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	376(%rax), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-392(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB67_34
# BB#33:                                # %cond.true.113
	movq	-80(%rbp), %rdi
	callq	XBUFFER
	movq	776(%rax), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	jmp	.LBB67_35
.LBB67_34:                              # %cond.false.116
	movq	-80(%rbp), %rdi
	callq	XBUFFER
	movq	376(%rax), %rdi
	callq	marker_byte_position
	movq	%rax, -400(%rbp)        # 8-byte Spill
.LBB67_35:                              # %cond.end.120
	movq	-400(%rbp), %rax        # 8-byte Reload
	movq	%rax, -384(%rbp)        # 8-byte Spill
.LBB67_36:                              # %cond.end.122
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	-344(%rbp), %rsi        # 8-byte Reload
	movq	-376(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	set_marker_both
	movq	%rax, -408(%rbp)        # 8-byte Spill
.LBB67_37:                              # %if.end.125
	movl	$20, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_member
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-424(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB67_41
# BB#38:                                # %land.lhs.true
	movq	-88(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB67_40
# BB#39:                                # %lor.lhs.false
	movq	-88(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB67_41
.LBB67_40:                              # %if.then.139
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -88(%rbp)
.LBB67_41:                              # %if.end.141
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-432(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB67_45
# BB#42:                                # %if.then.146
	movq	-88(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB67_44
# BB#43:                                # %if.then.155
	movq	-96(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
.LBB67_44:                              # %if.end.158
	jmp	.LBB67_54
.LBB67_45:                              # %if.else
	xorl	%edi, %edi
	movq	globals+280, %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-440(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB67_47
# BB#46:                                # %if.then.162
	movq	globals+280, %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB67_53
.LBB67_47:                              # %if.else.163
	xorl	%edi, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-448(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB67_49
# BB#48:                                # %land.lhs.true.167
	movq	-80(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	312(%rax), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-456(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB67_51
.LBB67_49:                              # %lor.lhs.false.172
	xorl	%edi, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-464(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB67_52
# BB#50:                                # %land.lhs.true.176
	xorl	%edi, %edi
	movq	buffer_defaults+312, %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-472(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB67_52
.LBB67_51:                              # %if.then.180
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -96(%rbp)
.LBB67_52:                              # %if.end.182
	jmp	.LBB67_53
.LBB67_53:                              # %if.end.183
	jmp	.LBB67_54
.LBB67_54:                              # %if.end.184
	movq	-64(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	pset_decode_coding_system
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-480(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB67_58
# BB#55:                                # %if.then.189
	movq	-88(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB67_57
# BB#56:                                # %if.then.199
	movq	-96(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
.LBB67_57:                              # %if.end.203
	jmp	.LBB67_67
.LBB67_58:                              # %if.else.204
	xorl	%edi, %edi
	movq	globals+288, %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-488(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB67_60
# BB#59:                                # %if.then.208
	movq	globals+288, %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB67_66
.LBB67_60:                              # %if.else.209
	xorl	%edi, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-496(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB67_62
# BB#61:                                # %land.lhs.true.213
	movq	-80(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	312(%rax), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-504(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB67_64
.LBB67_62:                              # %lor.lhs.false.219
	xorl	%edi, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-512(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB67_65
# BB#63:                                # %land.lhs.true.223
	xorl	%edi, %edi
	movq	buffer_defaults+312, %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-520(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB67_65
.LBB67_64:                              # %if.then.227
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -96(%rbp)
.LBB67_65:                              # %if.end.229
	jmp	.LBB67_66
.LBB67_66:                              # %if.end.230
	jmp	.LBB67_67
.LBB67_67:                              # %if.end.231
	movq	-64(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	pset_encode_coding_system
	movq	-40(%rbp), %rdi
	callq	setup_process_coding_systems
	movq	-64(%rbp), %rdi
	movq	empty_unibyte_string, %rsi
	callq	pset_decoding_buf
	movq	-64(%rbp), %rsi
	movl	$0, 216(%rsi)
	movq	-64(%rbp), %rdi
	movq	empty_unibyte_string, %rsi
	callq	pset_encoding_buf
	xorl	%edi, %edi
	movq	-88(%rbp), %rsi
	movq	%rsi, -528(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %cl
	movq	-528(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	movb	%cl, -529(%rbp)         # 1-byte Spill
	jne	.LBB67_70
# BB#68:                                # %lor.lhs.false.235
	xorl	%edi, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %cl
	movq	-544(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -529(%rbp)         # 1-byte Spill
	je	.LBB67_70
# BB#69:                                # %lor.rhs
	movb	globals+3387, %al
	xorb	$-1, %al
	movb	%al, -529(%rbp)         # 1-byte Spill
.LBB67_70:                              # %lor.end
	movb	-529(%rbp), %al         # 1-byte Reload
	xorb	$-1, %al
	movq	-64(%rbp), %rcx
	andb	$1, %al
	movb	224(%rcx), %dl
	shlb	$5, %al
	andb	$-33, %dl
	orb	%al, %dl
	movb	%dl, 224(%rcx)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Fserial_process_configure
	movq	specpdl, %rcx
	movq	-104(%rbp), %rsi
	shlq	$5, %rsi
	addq	%rsi, %rcx
	movq	%rcx, specpdl_ptr
	movq	-40(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	movq	%rax, -552(%rbp)        # 8-byte Spill
.LBB67_71:                              # %return
	movq	-8(%rbp), %rax
	addq	$560, %rsp              # imm = 0x230
	popq	%rbp
	retq
.Lfunc_end67:
	.size	Fmake_serial_process, .Lfunc_end67-Fmake_serial_process
	.cfi_endproc

	.globl	Fmake_network_process
	.align	16, 0x90
	.type	Fmake_network_process,@function
Fmake_network_process:                  # @Fmake_network_process
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
	subq	$1744, %rsp             # imm = 0x6D0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$0, -440(%rbp)
	movl	$0, -444(%rbp)
	movl	$-1, -448(%rbp)
	callq	SPECPDL_INDEX
	movq	%rax, -464(%rbp)
	movb	$0, -545(%rbp)
	movb	$0, -546(%rbp)
	movl	$5, -552(%rbp)
	movl	$-1, -560(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB68_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB68_272
.LBB68_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Flist
	movl	$131, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-928(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	xorl	%edi, %edi
	movq	%rax, -488(%rbp)
	movq	-488(%rbp), %rax
	movq	%rax, -936(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-936(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB68_4
# BB#3:                                 # %if.then.7
	movl	$1, -556(%rbp)
	jmp	.LBB68_11
.LBB68_4:                               # %if.else
	movl	$316, %edi              # imm = 0x13C
	movq	-488(%rbp), %rax
	movq	%rax, -944(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-944(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB68_6
# BB#5:                                 # %if.then.10
	movl	$2, -556(%rbp)
	jmp	.LBB68_10
.LBB68_6:                               # %if.else.11
	movl	$843, %edi              # imm = 0x34B
	movq	-488(%rbp), %rax
	movq	%rax, -952(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-952(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB68_8
# BB#7:                                 # %if.then.14
	movl	$5, -556(%rbp)
	jmp	.LBB68_9
.LBB68_8:                               # %if.else.15
	movabsq	$.L.str.17, %rdi
	movb	$0, %al
	callq	error
.LBB68_9:                               # %if.end.16
	jmp	.LBB68_10
.LBB68_10:                              # %if.end.17
	jmp	.LBB68_11
.LBB68_11:                              # %if.end.18
	movl	$116, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-960(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	xorl	%edi, %edi
	movq	%rax, -488(%rbp)
	movq	-488(%rbp), %rax
	movq	%rax, -968(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-968(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB68_19
# BB#12:                                # %if.then.23
	movb	$1, -546(%rbp)
	movq	-488(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB68_18
# BB#13:                                # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB68_15
	jmp	.LBB68_14
.LBB68_14:                              # %cond.true
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-488(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jle	.LBB68_16
	jmp	.LBB68_18
.LBB68_15:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-488(%rbp), %rdx
	sarq	$2, %rdx
	cmpq	%rdx, %rcx
	jg	.LBB68_18
.LBB68_16:                              # %land.lhs.true.32
	movq	-488(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jg	.LBB68_18
# BB#17:                                # %if.then.36
	movq	-488(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -552(%rbp)
.LBB68_18:                              # %if.end.39
	jmp	.LBB68_19
.LBB68_19:                              # %if.end.40
	testb	$1, -546(%rbp)
	je	.LBB68_21
# BB#20:                                # %cond.true.42
	movl	$77, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -976(%rbp)        # 8-byte Spill
	jmp	.LBB68_22
.LBB68_21:                              # %cond.false.44
	movl	$108, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -976(%rbp)        # 8-byte Spill
.LBB68_22:                              # %cond.end
	movq	-976(%rbp), %rax        # 8-byte Reload
	movq	%rax, -480(%rbp)
	testb	$1, -546(%rbp)
	jne	.LBB68_26
# BB#23:                                # %land.lhs.true.47
	cmpl	$2, -556(%rbp)
	je	.LBB68_26
# BB#24:                                # %land.lhs.true.50
	movl	$88, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -984(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-984(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	xorl	%edi, %edi
	movq	%rax, -488(%rbp)
	movq	-488(%rbp), %rax
	movq	%rax, -992(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-992(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB68_25
	jmp	.LBB68_26
.LBB68_25:                              # %if.then.56
	movb	$1, -545(%rbp)
.LBB68_26:                              # %if.end.57
	movl	$86, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1000(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movl	$16, %edi
	movq	%rax, -496(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1008(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movl	$42, %edi
	movq	%rax, -504(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -1016(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1016(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movl	$115, %edi
	movq	%rax, -536(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1024(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movq	%rax, -544(%rbp)
	movq	-496(%rbp), %rdi
	callq	CHECK_STRING
	leaq	-96(%rbp), %rax
	movl	-556(%rbp), %ecx
	movl	%ecx, -88(%rbp)
	movl	$0, -84(%rbp)
	movq	$0, -56(%rbp)
	movq	%rax, -104(%rbp)
	movq	-40(%rbp), %rdi
	movq	-480(%rbp), %rsi
	callq	Fplist_get
	xorl	%edi, %edi
	movq	%rax, -528(%rbp)
	movq	-528(%rbp), %rax
	movq	%rax, -1032(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1032(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB68_30
# BB#27:                                # %if.then.70
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	leaq	-560(%rbp), %rsi
	movq	%rax, -520(%rbp)
	movq	%rax, -512(%rbp)
	movq	-528(%rbp), %rdi
	callq	get_lisp_to_sockaddr_size
	movl	%eax, -80(%rbp)
	cmpl	$0, %eax
	jne	.LBB68_29
# BB#28:                                # %if.then.74
	movabsq	$.L.str.18, %rdi
	movb	$0, %al
	callq	error
.LBB68_29:                              # %if.end.75
	movl	-560(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, %ecx
	addq	$15, %rcx
	movabsq	$8589934576, %rdx       # imm = 0x1FFFFFFF0
	andq	%rdx, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rdx, -72(%rbp)
	movl	-560(%rbp), %edi
	movq	-528(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movl	-80(%rbp), %ecx
	callq	conv_lisp_to_sockaddr
	jmp	.LBB68_88
.LBB68_30:                              # %if.end.80
	movl	$40, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -1040(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1040(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	xorl	%edi, %edi
	movq	%rax, -488(%rbp)
	movq	-488(%rbp), %rax
	movq	%rax, -1048(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1048(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB68_32
# BB#31:                                # %if.then.86
	movl	$0, -560(%rbp)
	jmp	.LBB68_49
.LBB68_32:                              # %if.else.87
	movl	$632, %edi              # imm = 0x278
	movq	-488(%rbp), %rax
	movq	%rax, -1056(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1056(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB68_34
# BB#33:                                # %if.then.91
	movl	$1, -560(%rbp)
	jmp	.LBB68_48
.LBB68_34:                              # %if.else.92
	movl	$576, %edi              # imm = 0x240
	movq	-488(%rbp), %rax
	movq	%rax, -1064(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1064(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB68_36
# BB#35:                                # %if.then.96
	movl	$10, -560(%rbp)
	jmp	.LBB68_47
.LBB68_36:                              # %if.else.97
	movl	$575, %edi              # imm = 0x23F
	movq	-488(%rbp), %rax
	movq	%rax, -1072(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1072(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB68_38
# BB#37:                                # %if.then.101
	movl	$2, -560(%rbp)
	jmp	.LBB68_46
.LBB68_38:                              # %if.else.102
	movq	-488(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB68_44
# BB#39:                                # %land.lhs.true.108
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB68_41
	jmp	.LBB68_40
.LBB68_40:                              # %cond.true.109
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-488(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jle	.LBB68_42
	jmp	.LBB68_44
.LBB68_41:                              # %cond.false.113
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-488(%rbp), %rdx
	sarq	$2, %rdx
	cmpq	%rdx, %rcx
	jg	.LBB68_44
.LBB68_42:                              # %land.lhs.true.117
	movq	-488(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jg	.LBB68_44
# BB#43:                                # %if.then.121
	movq	-488(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -560(%rbp)
	jmp	.LBB68_45
.LBB68_44:                              # %if.else.124
	movabsq	$.L.str.19, %rdi
	movb	$0, %al
	callq	error
.LBB68_45:                              # %if.end.125
	jmp	.LBB68_46
.LBB68_46:                              # %if.end.126
	jmp	.LBB68_47
.LBB68_47:                              # %if.end.127
	jmp	.LBB68_48
.LBB68_48:                              # %if.end.128
	jmp	.LBB68_49
.LBB68_49:                              # %if.end.129
	movl	$117, %edi
	movl	-560(%rbp), %eax
	movl	%eax, -92(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -1080(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1080(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movl	$63, %edi
	movq	%rax, -520(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -1088(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1088(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	xorl	%edi, %edi
	movq	%rax, -512(%rbp)
	movq	-512(%rbp), %rax
	movq	%rax, -1096(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1096(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB68_53
# BB#50:                                # %if.then.138
	movl	$632, %edi              # imm = 0x278
	movq	-512(%rbp), %rax
	movq	%rax, -1104(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1104(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB68_52
# BB#51:                                # %if.then.142
	movabsq	$.L.str.20, %rdi
	callq	build_string
	movq	%rax, -512(%rbp)
.LBB68_52:                              # %if.end.144
	movq	-512(%rbp), %rdi
	callq	CHECK_STRING
.LBB68_53:                              # %if.end.145
	cmpl	$1, -560(%rbp)
	jne	.LBB68_59
# BB#54:                                # %if.then.148
	xorl	%edi, %edi
	movq	-512(%rbp), %rax
	movq	%rax, -1112(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1112(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB68_56
# BB#55:                                # %if.then.152
	movabsq	$.L.str.21, %rdi
	movb	$0, %al
	callq	message
	movl	$63, %edi
	movq	-40(%rbp), %rcx
	movq	%rcx, -1120(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1128(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1120(%rbp), %rdi       # 8-byte Reload
	movq	-1128(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	Fplist_put
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -512(%rbp)
.LBB68_56:                              # %if.end.157
	movq	-520(%rbp), %rdi
	callq	CHECK_STRING
	xorl	%esi, %esi
	movl	$110, %eax
	movl	%eax, %edx
	leaq	-432(%rbp), %rdi
	callq	memset
	movw	$1, -432(%rbp)
	movq	-520(%rbp), %rdi
	callq	SBYTES
	movl	$108, %esi
	movl	%esi, %edx
	cmpq	%rax, %rdx
	ja	.LBB68_58
# BB#57:                                # %if.then.161
	movabsq	$.L.str.22, %rdi
	movb	$0, %al
	callq	error
.LBB68_58:                              # %if.end.162
	leaq	-432(%rbp), %rax
	addq	$2, %rax
	movq	-520(%rbp), %rsi
	movq	%rax, %rdi
	callq	lispstpcpy
	leaq	-432(%rbp), %rsi
	movq	%rsi, -72(%rbp)
	movl	$110, -80(%rbp)
	movq	%rax, -1136(%rbp)       # 8-byte Spill
	jmp	.LBB68_88
.LBB68_59:                              # %if.end.166
	cmpl	$2, -556(%rbp)
	je	.LBB68_61
# BB#60:                                # %if.then.169
	movabsq	$run_all_atimers, %rdi
	callq	record_unwind_protect_void
	movl	$10, %edi
	callq	bind_polling_period
.LBB68_61:                              # %if.end.170
	xorl	%edi, %edi
	movq	-512(%rbp), %rax
	movq	%rax, -1144(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1144(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB68_79
# BB#62:                                # %if.then.174
	movl	$901, %edi              # imm = 0x385
	movq	-520(%rbp), %rax
	movq	%rax, -1152(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1152(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB68_64
# BB#63:                                # %if.then.178
	movabsq	$.L.str.23, %rax
	movq	%rax, -168(%rbp)
	jmp	.LBB68_68
.LBB68_64:                              # %if.else.179
	movq	-520(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB68_66
# BB#65:                                # %if.then.185
	movabsq	$.L.str.24, %rsi
	leaq	-304(%rbp), %rdi
	movq	-520(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rdx
	movb	$0, %al
	callq	sprintf
	leaq	-304(%rbp), %rdx
	movq	%rdx, -168(%rbp)
	movl	%eax, -1156(%rbp)       # 4-byte Spill
	jmp	.LBB68_67
.LBB68_66:                              # %if.else.190
	movq	-520(%rbp), %rdi
	callq	CHECK_STRING
	movq	-520(%rbp), %rdi
	callq	SSDATA
	movq	%rax, -168(%rbp)
.LBB68_67:                              # %if.end.192
	jmp	.LBB68_68
.LBB68_68:                              # %if.end.193
	movb	$1, immediate_quit
# BB#69:                                # %do.body
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -1168(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1168(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB68_72
# BB#70:                                # %land.lhs.true.197
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -1176(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1176(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB68_72
# BB#71:                                # %if.then.201
	callq	process_quit_flag
	jmp	.LBB68_75
.LBB68_72:                              # %if.else.202
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB68_74
# BB#73:                                # %if.then.204
	callq	process_pending_signals
.LBB68_74:                              # %if.end.205
	jmp	.LBB68_75
.LBB68_75:                              # %if.end.206
	jmp	.LBB68_76
.LBB68_76:                              # %do.end
	xorl	%esi, %esi
	movl	$48, %eax
	movl	%eax, %edx
	leaq	-160(%rbp), %rcx
	movq	%rcx, %rdi
	callq	memset
	movl	$0, -160(%rbp)
	movl	-560(%rbp), %eax
	movl	%eax, -156(%rbp)
	movl	-556(%rbp), %eax
	movl	%eax, -152(%rbp)
	movl	$0, -148(%rbp)
	callq	__res_init
	movq	-512(%rbp), %rdi
	movl	%eax, -1180(%rbp)       # 4-byte Spill
	callq	SSDATA
	leaq	-160(%rbp), %rdx
	leaq	-104(%rbp), %rcx
	movq	-168(%rbp), %rsi
	movq	%rax, %rdi
	callq	getaddrinfo
	movl	%eax, -440(%rbp)
	cmpl	$0, -440(%rbp)
	je	.LBB68_78
# BB#77:                                # %if.then.214
	movq	-512(%rbp), %rdi
	callq	SSDATA
	movq	-168(%rbp), %rdx
	movl	-440(%rbp), %edi
	movq	%rax, -1192(%rbp)       # 8-byte Spill
	movq	%rdx, -1200(%rbp)       # 8-byte Spill
	callq	gai_strerror
	movabsq	$.L.str.25, %rdi
	movq	-1192(%rbp), %rsi       # 8-byte Reload
	movq	-1200(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	error
.LBB68_78:                              # %if.end.217
	movb	$0, immediate_quit
	jmp	.LBB68_88
.LBB68_79:                              # %if.end.218
	movl	$901, %edi              # imm = 0x385
	movq	-520(%rbp), %rax
	movq	%rax, -1208(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1208(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB68_81
# BB#80:                                # %if.then.222
	movl	$0, -436(%rbp)
	jmp	.LBB68_87
.LBB68_81:                              # %if.else.223
	movq	-520(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB68_83
# BB#82:                                # %if.then.229
	movq	-520(%rbp), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movzwl	%cx, %edi
	callq	htons
	movzwl	%ax, %edi
	movl	%edi, -436(%rbp)
	jmp	.LBB68_86
.LBB68_83:                              # %if.else.234
	movq	-520(%rbp), %rdi
	callq	CHECK_STRING
	movq	-520(%rbp), %rdi
	callq	SSDATA
	movabsq	$.L.str.27, %rdi
	movabsq	$.L.str.26, %rcx
	cmpl	$2, -556(%rbp)
	cmoveq	%rcx, %rdi
	movq	%rdi, -1216(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	-1216(%rbp), %rsi       # 8-byte Reload
	callq	getservbyname
	movq	%rax, -568(%rbp)
	cmpq	$0, -568(%rbp)
	jne	.LBB68_85
# BB#84:                                # %if.then.242
	movq	-520(%rbp), %rdi
	callq	SDATA
	movabsq	$.L.str.28, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB68_85:                              # %if.end.244
	movq	-568(%rbp), %rax
	movl	16(%rax), %ecx
	movl	%ecx, -436(%rbp)
.LBB68_86:                              # %if.end.245
	jmp	.LBB68_87
.LBB68_87:                              # %if.end.246
	leaq	-320(%rbp), %rax
	xorl	%esi, %esi
	movl	$16, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movq	%rax, -1224(%rbp)       # 8-byte Spill
	callq	memset
	movl	-560(%rbp), %ecx
	movw	%cx, %r8w
	movw	%r8w, -320(%rbp)
	movl	$0, -316(%rbp)
	movl	-436(%rbp), %ecx
	movw	%cx, %r8w
	movw	%r8w, -318(%rbp)
	movl	-560(%rbp), %ecx
	movl	%ecx, -92(%rbp)
	movq	-1224(%rbp), %rax       # 8-byte Reload
	movq	%rax, -72(%rbp)
	movl	$16, -80(%rbp)
.LBB68_88:                              # %open_socket
	callq	SPECPDL_INDEX
	movq	%rax, -472(%rbp)
	movl	$-1, -448(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -112(%rbp)
.LBB68_89:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB68_100 Depth 2
	cmpq	$0, -112(%rbp)
	je	.LBB68_157
# BB#90:                                # %for.body
                                        #   in Loop: Header=BB68_89 Depth=1
	movq	-112(%rbp), %rax
	movl	4(%rax), %edi
	movq	-112(%rbp), %rax
	movl	8(%rax), %ecx
	orl	$524288, %ecx           # imm = 0x80000
	movq	-112(%rbp), %rax
	movl	12(%rax), %edx
	movl	%ecx, %esi
	callq	socket
	movl	%eax, -448(%rbp)
	cmpl	$0, -448(%rbp)
	jge	.LBB68_92
# BB#91:                                # %if.then.260
                                        #   in Loop: Header=BB68_89 Depth=1
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -444(%rbp)
	jmp	.LBB68_156
.LBB68_92:                              # %if.end.262
                                        #   in Loop: Header=BB68_89 Depth=1
	testb	$1, -546(%rbp)
	jne	.LBB68_95
# BB#93:                                # %land.lhs.true.264
                                        #   in Loop: Header=BB68_89 Depth=1
	cmpl	$2, -556(%rbp)
	jne	.LBB68_95
# BB#94:                                # %if.then.267
	jmp	.LBB68_157
.LBB68_95:                              # %if.end.268
                                        #   in Loop: Header=BB68_89 Depth=1
	testb	$1, -545(%rbp)
	je	.LBB68_99
# BB#96:                                # %if.then.270
                                        #   in Loop: Header=BB68_89 Depth=1
	movl	$4, %esi
	movl	$2048, %edx             # imm = 0x800
	movl	-448(%rbp), %edi
	movb	$0, %al
	callq	rpl_fcntl
	movl	%eax, -440(%rbp)
	cmpl	$0, -440(%rbp)
	jge	.LBB68_98
# BB#97:                                # %if.then.274
                                        #   in Loop: Header=BB68_89 Depth=1
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -444(%rbp)
	movl	-448(%rbp), %edi
	callq	emacs_close
	movl	$-1, -448(%rbp)
	movl	%eax, -1228(%rbp)       # 4-byte Spill
	jmp	.LBB68_156
.LBB68_98:                              # %if.end.277
                                        #   in Loop: Header=BB68_89 Depth=1
	jmp	.LBB68_99
.LBB68_99:                              # %if.end.278
                                        #   in Loop: Header=BB68_89 Depth=1
	movabsq	$close_file_unwind, %rdi
	movl	-448(%rbp), %esi
	callq	record_unwind_protect_int
	movl	$0, -580(%rbp)
	movq	$0, -576(%rbp)
.LBB68_100:                             # %for.cond.279
                                        #   Parent Loop BB68_89 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-576(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	$1, %rcx
	cmpq	%rcx, %rax
	jge	.LBB68_103
# BB#101:                               # %for.body.282
                                        #   in Loop: Header=BB68_100 Depth=2
	movl	-448(%rbp), %edi
	movq	-576(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	movq	-576(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	8(%rcx,%rax,8), %rdx
	callq	set_socket_option
	orl	-580(%rbp), %eax
	movl	%eax, -580(%rbp)
# BB#102:                               # %for.inc
                                        #   in Loop: Header=BB68_100 Depth=2
	movq	-576(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -576(%rbp)
	jmp	.LBB68_100
.LBB68_103:                             # %for.end
                                        #   in Loop: Header=BB68_89 Depth=1
	testb	$1, -546(%rbp)
	je	.LBB68_120
# BB#104:                               # %if.then.288
	cmpl	$1, -560(%rbp)
	je	.LBB68_110
# BB#105:                               # %if.then.291
	movl	-580(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	jne	.LBB68_109
# BB#106:                               # %if.then.294
	movl	$1, %esi
	movl	$2, %edx
	movl	$4, %r8d
	leaq	-584(%rbp), %rax
	movl	$1, -584(%rbp)
	movl	-448(%rbp), %edi
	movq	%rax, %rcx
	callq	setsockopt
	cmpl	$0, %eax
	je	.LBB68_108
# BB#107:                               # %if.then.297
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$.L.str.29, %rdi
	movq	%rax, %rsi
	callq	report_file_error
.LBB68_108:                             # %if.end.299
	jmp	.LBB68_109
.LBB68_109:                             # %if.end.300
	jmp	.LBB68_110
.LBB68_110:                             # %if.end.301
	movl	-448(%rbp), %edi
	movq	-112(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -592(%rbp)
	movq	-112(%rbp), %rax
	movl	16(%rax), %edx
	movq	-592(%rbp), %rsi
	callq	bind
	cmpl	$0, %eax
	je	.LBB68_112
# BB#111:                               # %if.then.306
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$.L.str.30, %rdi
	movq	%rax, %rsi
	callq	report_file_error
.LBB68_112:                             # %if.end.308
	movl	$901, %edi              # imm = 0x385
	movq	-520(%rbp), %rax
	movq	%rax, -1240(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1240(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB68_116
# BB#113:                               # %if.then.312
	leaq	-612(%rbp), %rdx
	leaq	-608(%rbp), %rax
	movl	$16, -612(%rbp)
	movl	-448(%rbp), %edi
	movq	%rax, -624(%rbp)
	movq	-624(%rbp), %rsi
	callq	getsockname
	cmpl	$0, %eax
	jne	.LBB68_115
# BB#114:                               # %if.then.319
	movw	-606(%rbp), %ax
	movq	-112(%rbp), %rcx
	movq	24(%rcx), %rcx
	movw	%ax, 2(%rcx)
	movzwl	-606(%rbp), %edi
	callq	ntohs
	movl	$117, %edi
	movzwl	%ax, %edx
	movl	%edx, %ecx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -520(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -1248(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-520(%rbp), %rdx
	movq	-1248(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_put
	movq	%rax, -40(%rbp)
.LBB68_115:                             # %if.end.329
	jmp	.LBB68_116
.LBB68_116:                             # %if.end.330
	cmpl	$2, -556(%rbp)
	je	.LBB68_119
# BB#117:                               # %land.lhs.true.333
	movl	-448(%rbp), %edi
	movl	-552(%rbp), %esi
	callq	listen
	cmpl	$0, %eax
	je	.LBB68_119
# BB#118:                               # %if.then.336
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$.L.str.31, %rdi
	movq	%rax, %rsi
	callq	report_file_error
.LBB68_119:                             # %if.end.338
	jmp	.LBB68_157
.LBB68_120:                             # %if.end.339
                                        #   in Loop: Header=BB68_89 Depth=1
	movb	$1, immediate_quit
# BB#121:                               # %do.body.340
                                        #   in Loop: Header=BB68_89 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -1256(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1256(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB68_124
# BB#122:                               # %land.lhs.true.344
                                        #   in Loop: Header=BB68_89 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -1264(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1264(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB68_124
# BB#123:                               # %if.then.348
                                        #   in Loop: Header=BB68_89 Depth=1
	callq	process_quit_flag
	jmp	.LBB68_127
.LBB68_124:                             # %if.else.349
                                        #   in Loop: Header=BB68_89 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB68_126
# BB#125:                               # %if.then.351
                                        #   in Loop: Header=BB68_89 Depth=1
	callq	process_pending_signals
.LBB68_126:                             # %if.end.352
                                        #   in Loop: Header=BB68_89 Depth=1
	jmp	.LBB68_127
.LBB68_127:                             # %if.end.353
                                        #   in Loop: Header=BB68_89 Depth=1
	jmp	.LBB68_128
.LBB68_128:                             # %do.end.354
                                        #   in Loop: Header=BB68_89 Depth=1
	movl	-448(%rbp), %edi
	movq	-112(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -632(%rbp)
	movq	-112(%rbp), %rax
	movl	16(%rax), %edx
	movq	-632(%rbp), %rsi
	callq	connect
	movl	%eax, -440(%rbp)
	callq	__errno_location
	movl	(%rax), %edx
	movl	%edx, -444(%rbp)
	cmpl	$0, -440(%rbp)
	je	.LBB68_130
# BB#129:                               # %lor.lhs.false
                                        #   in Loop: Header=BB68_89 Depth=1
	cmpl	$106, -444(%rbp)
	jne	.LBB68_131
.LBB68_130:                             # %if.then.366
	jmp	.LBB68_157
.LBB68_131:                             # %if.end.367
                                        #   in Loop: Header=BB68_89 Depth=1
	testb	$1, -545(%rbp)
	je	.LBB68_134
# BB#132:                               # %land.lhs.true.370
                                        #   in Loop: Header=BB68_89 Depth=1
	cmpl	$115, -444(%rbp)
	jne	.LBB68_134
# BB#133:                               # %if.then.373
	jmp	.LBB68_157
.LBB68_134:                             # %if.end.374
                                        #   in Loop: Header=BB68_89 Depth=1
	cmpl	$4, -444(%rbp)
	jne	.LBB68_155
# BB#135:                               # %if.then.377
	jmp	.LBB68_136
.LBB68_136:                             # %retry_select
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB68_137
.LBB68_137:                             # %do.body.378
                                        #   in Loop: Header=BB68_136 Depth=1
	leaq	-768(%rbp), %rax
	movl	$16, %ecx
                                        # kill: RCX<def> ECX<kill>
	xorl	%edx, %edx
	movq	%rax, -1272(%rbp)       # 8-byte Spill
	movl	%edx, %eax
	movq	-1272(%rbp), %rsi       # 8-byte Reload
	movq	%rsi, %rdi
	#APP
	cld
	rep
	stosq	%rax, %es:(%rdi)
	#NO_APP
	movl	%ecx, %eax
	movl	%eax, -772(%rbp)
	movl	%edi, %eax
	movl	%eax, -776(%rbp)
# BB#138:                               # %do.end.381
                                        #   in Loop: Header=BB68_136 Depth=1
	leaq	-768(%rbp), %rsi
	movl	-448(%rbp), %edi
	callq	fd_SET
# BB#139:                               # %do.body.382
                                        #   in Loop: Header=BB68_136 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -1280(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1280(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB68_142
# BB#140:                               # %land.lhs.true.386
                                        #   in Loop: Header=BB68_136 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -1288(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1288(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB68_142
# BB#141:                               # %if.then.390
                                        #   in Loop: Header=BB68_136 Depth=1
	callq	process_quit_flag
	jmp	.LBB68_145
.LBB68_142:                             # %if.else.391
                                        #   in Loop: Header=BB68_136 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB68_144
# BB#143:                               # %if.then.393
                                        #   in Loop: Header=BB68_136 Depth=1
	callq	process_pending_signals
.LBB68_144:                             # %if.end.394
                                        #   in Loop: Header=BB68_136 Depth=1
	jmp	.LBB68_145
.LBB68_145:                             # %if.end.395
                                        #   in Loop: Header=BB68_136 Depth=1
	jmp	.LBB68_146
.LBB68_146:                             # %do.end.396
                                        #   in Loop: Header=BB68_136 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	leaq	-768(%rbp), %rdx
	movl	-448(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %edi
	movq	%rcx, %rsi
	movq	%rcx, -1296(%rbp)       # 8-byte Spill
	movq	-1296(%rbp), %r8        # 8-byte Reload
	movq	-1296(%rbp), %r9        # 8-byte Reload
	callq	pselect
	movl	%eax, -636(%rbp)
	cmpl	$-1, -636(%rbp)
	jne	.LBB68_150
# BB#147:                               # %if.then.401
                                        #   in Loop: Header=BB68_136 Depth=1
	callq	__errno_location
	cmpl	$4, (%rax)
	jne	.LBB68_149
# BB#148:                               # %if.then.405
                                        #   in Loop: Header=BB68_136 Depth=1
	jmp	.LBB68_136
.LBB68_149:                             # %if.else.406
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$.L.str.32, %rdi
	movq	%rax, %rsi
	callq	report_file_error
.LBB68_150:                             # %if.end.408
	movl	$1, %esi
	movl	$4, %edx
	leaq	-640(%rbp), %r8
	leaq	-444(%rbp), %rax
	movl	$4, -640(%rbp)
	movl	-448(%rbp), %edi
	movq	%rax, %rcx
	callq	getsockopt
	cmpl	$0, %eax
	jge	.LBB68_152
# BB#151:                               # %if.then.412
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$.L.str.33, %rdi
	movq	%rax, %rsi
	callq	report_file_error
.LBB68_152:                             # %if.end.414
	cmpl	$0, -444(%rbp)
	je	.LBB68_154
# BB#153:                               # %if.then.416
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$.L.str.34, %rdi
	movl	-444(%rbp), %edx
	movq	%rax, %rsi
	callq	report_file_errno
.LBB68_154:                             # %if.end.418
	jmp	.LBB68_157
.LBB68_155:                             # %if.end.419
                                        #   in Loop: Header=BB68_89 Depth=1
	movb	$0, immediate_quit
	movq	specpdl, %rax
	movq	-472(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	%rax, specpdl_ptr
	movl	-448(%rbp), %edi
	callq	emacs_close
	movl	$-1, -448(%rbp)
	movl	%eax, -1300(%rbp)       # 4-byte Spill
.LBB68_156:                             # %for.inc.421
                                        #   in Loop: Header=BB68_89 Depth=1
	movq	-112(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -112(%rbp)
	jmp	.LBB68_89
.LBB68_157:                             # %for.end.423
	cmpl	$0, -448(%rbp)
	jl	.LBB68_176
# BB#158:                               # %if.then.426
	cmpl	$2, -556(%rbp)
	jne	.LBB68_171
# BB#159:                               # %if.then.429
	movabsq	$datagram_address, %rax
	movslq	-448(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	je	.LBB68_161
# BB#160:                               # %if.then.432
	callq	emacs_abort
.LBB68_161:                             # %if.end.433
	movq	-112(%rbp), %rax
	movl	16(%rax), %ecx
	movl	%ecx, %edi
	callq	xmalloc
	movabsq	$datagram_address, %rdi
	movslq	-448(%rbp), %rdx
	shlq	$4, %rdx
	movq	%rdi, %rsi
	addq	%rdx, %rsi
	movq	%rax, (%rsi)
	movq	-112(%rbp), %rax
	movl	16(%rax), %ecx
	movslq	-448(%rbp), %rax
	shlq	$4, %rax
	addq	%rax, %rdi
	movl	%ecx, 8(%rdi)
	testb	$1, -546(%rbp)
	je	.LBB68_169
# BB#162:                               # %if.then.445
	movl	$108, %edi
	xorl	%esi, %esi
	movabsq	$datagram_address, %rax
	movslq	-448(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	-112(%rbp), %rcx
	movl	16(%rcx), %edx
                                        # kill: RDX<def> EDX<kill>
	movl	%edi, -1304(%rbp)       # 4-byte Spill
	movq	%rax, %rdi
	callq	memset
	movq	-40(%rbp), %rdi
	movl	-1304(%rbp), %esi       # 4-byte Reload
	movq	%rdi, -1312(%rbp)       # 8-byte Spill
	movl	%esi, %edi
	callq	builtin_lisp_symbol
	movq	-1312(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	xorl	%edi, %edi
	movq	%rax, -784(%rbp)
	movq	-784(%rbp), %rax
	movq	%rax, -1320(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1320(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%r8b
	xorb	$-1, %r8b
	testb	$1, %r8b
	jne	.LBB68_163
	jmp	.LBB68_168
.LBB68_163:                             # %if.then.457
	leaq	-788(%rbp), %rsi
	movq	-784(%rbp), %rdi
	callq	get_lisp_to_sockaddr_size
	movl	%eax, -792(%rbp)
	cmpl	$0, -792(%rbp)
	je	.LBB68_167
# BB#164:                               # %land.lhs.true.461
	movl	-788(%rbp), %eax
	movq	-112(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jne	.LBB68_167
# BB#165:                               # %land.lhs.true.465
	movl	-792(%rbp), %eax
	movq	-112(%rbp), %rcx
	cmpl	16(%rcx), %eax
	jne	.LBB68_167
# BB#166:                               # %if.then.469
	movabsq	$datagram_address, %rax
	movl	-788(%rbp), %edi
	movq	-784(%rbp), %rsi
	movslq	-448(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rdx
	movl	-792(%rbp), %ecx
	callq	conv_lisp_to_sockaddr
.LBB68_167:                             # %if.end.473
	jmp	.LBB68_168
.LBB68_168:                             # %if.end.474
	jmp	.LBB68_170
.LBB68_169:                             # %if.else.475
	movabsq	$datagram_address, %rax
	movslq	-448(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	-112(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	-112(%rbp), %rdx
	movl	16(%rdx), %esi
	movl	%esi, %edx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
.LBB68_170:                             # %if.end.482
	jmp	.LBB68_171
.LBB68_171:                             # %if.end.483
	movq	-40(%rbp), %rdi
	movq	-480(%rbp), %rsi
	movq	-112(%rbp), %rax
	movq	24(%rax), %rax
	movq	-112(%rbp), %rcx
	movl	16(%rcx), %edx
	movq	%rdi, -1328(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -1336(%rbp)       # 8-byte Spill
	movl	%edx, %esi
	callq	conv_sockaddr_to_lisp
	movq	-1328(%rbp), %rdi       # 8-byte Reload
	movq	-1336(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	Fplist_put
	movq	%rax, -40(%rbp)
	testb	$1, -546(%rbp)
	jne	.LBB68_175
# BB#172:                               # %if.then.489
	leaq	-812(%rbp), %rdx
	leaq	-808(%rbp), %rax
	movl	$16, -812(%rbp)
	movl	-448(%rbp), %edi
	movq	%rax, -824(%rbp)
	movq	-824(%rbp), %rsi
	callq	getsockname
	cmpl	$0, %eax
	jne	.LBB68_174
# BB#173:                               # %if.then.498
	movl	$77, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -1344(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	leaq	-808(%rbp), %rcx
	movl	-812(%rbp), %esi
	movq	%rcx, %rdi
	movq	%rax, -1352(%rbp)       # 8-byte Spill
	callq	conv_sockaddr_to_lisp
	movq	-1344(%rbp), %rdi       # 8-byte Reload
	movq	-1352(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	Fplist_put
	movq	%rax, -40(%rbp)
.LBB68_174:                             # %if.end.502
	jmp	.LBB68_175
.LBB68_175:                             # %if.end.503
	jmp	.LBB68_176
.LBB68_176:                             # %if.end.504
	leaq	-96(%rbp), %rax
	movb	$0, immediate_quit
	cmpq	%rax, -104(%rbp)
	je	.LBB68_178
# BB#177:                               # %if.then.507
	callq	block_input
	movq	-104(%rbp), %rdi
	callq	freeaddrinfo
	callq	unblock_input
.LBB68_178:                             # %if.end.508
	cmpl	$0, -448(%rbp)
	jge	.LBB68_182
# BB#179:                               # %if.then.511
	testb	$1, -545(%rbp)
	je	.LBB68_181
# BB#180:                               # %if.then.513
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB68_272
.LBB68_181:                             # %if.end.515
	movabsq	$.L.str.36, %rax
	movabsq	$.L.str.35, %rcx
	movb	-546(%rbp), %dl
	testb	$1, %dl
	cmovneq	%rcx, %rax
	movq	-40(%rbp), %rsi
	movl	-444(%rbp), %edx
	movq	%rax, %rdi
	callq	report_file_errno
.LBB68_182:                             # %if.end.519
	xorl	%edi, %edi
	movl	-448(%rbp), %eax
	movl	%eax, -456(%rbp)
	movl	-448(%rbp), %eax
	movl	%eax, -452(%rbp)
	movq	-504(%rbp), %rcx
	movq	%rcx, -1360(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1360(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB68_184
# BB#183:                               # %if.then.523
	movq	-504(%rbp), %rdi
	callq	Fget_buffer_create
	movq	%rax, -504(%rbp)
.LBB68_184:                             # %if.end.525
	movq	-496(%rbp), %rdi
	callq	make_process
	movl	$4, %esi
	movl	$2048, %edx             # imm = 0x800
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movslq	-456(%rbp), %rdi
	movq	%rax, chan_process(,%rdi,8)
	movl	-456(%rbp), %edi
	movb	$0, %al
	callq	rpl_fcntl
	movq	-32(%rbp), %rdi
	movl	%eax, -1364(%rbp)       # 4-byte Spill
	callq	XPROCESS
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	pset_childp
	movl	$92, %edi
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	%rsi, -1376(%rbp)       # 8-byte Spill
	movq	%rax, -1384(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1376(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movq	%rax, %rdi
	callq	Fcopy_sequence
	movq	-1384(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_plist
	movl	$699, %edi              # imm = 0x2BB
	movq	-48(%rbp), %rax
	movq	%rax, -1392(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1392(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_type
	movq	-48(%rbp), %rdi
	movq	-504(%rbp), %rsi
	callq	pset_buffer
	movq	-48(%rbp), %rdi
	movq	-544(%rbp), %rsi
	callq	pset_sentinel
	movq	-48(%rbp), %rdi
	movq	-536(%rbp), %rsi
	callq	pset_filter
	movl	$78, %edi
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	%rsi, -1400(%rbp)       # 8-byte Spill
	movq	%rax, -1408(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1400(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movq	-1408(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_log
	movl	$87, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -1416(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1416(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	xorl	%edi, %edi
	movq	%rax, -488(%rbp)
	movq	-488(%rbp), %rax
	movq	%rax, -1424(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1424(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB68_185
	jmp	.LBB68_186
.LBB68_185:                             # %if.then.543
	movq	-48(%rbp), %rax
	movb	224(%rax), %cl
	andb	$-9, %cl
	orb	$8, %cl
	movb	%cl, 224(%rax)
.LBB68_186:                             # %if.end.544
	movl	$124, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -1432(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1432(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	xorl	%edi, %edi
	movq	%rax, -488(%rbp)
	movq	-488(%rbp), %rax
	movq	%rax, -1440(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1440(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB68_187
	jmp	.LBB68_188
.LBB68_187:                             # %if.then.551
	movl	$901, %edi              # imm = 0x385
	movq	-48(%rbp), %rax
	movq	%rax, -1448(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1448(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_command
.LBB68_188:                             # %if.end.553
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movl	$0, 160(%rax)
	movl	-456(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 172(%rax)
	movl	-456(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 164(%rax)
	movl	-452(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 168(%rax)
	movq	specpdl, %rax
	movq	-472(%rbp), %rdx
	shlq	$5, %rdx
	addq	%rdx, %rax
	movq	%rax, specpdl_ptr
	movq	-464(%rbp), %rax
	movq	%rax, -1456(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1456(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	testb	$1, -546(%rbp)
	movq	%rax, -1464(%rbp)       # 8-byte Spill
	je	.LBB68_191
# BB#189:                               # %land.lhs.true.560
	cmpl	$2, -556(%rbp)
	je	.LBB68_191
# BB#190:                               # %if.then.563
	movl	$625, %edi              # imm = 0x271
	movq	-48(%rbp), %rax
	movq	%rax, -1472(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1472(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_status
.LBB68_191:                             # %if.end.565
	movq	-504(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB68_192
	jmp	.LBB68_205
.LBB68_192:                             # %if.then.567
	movq	-48(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-504(%rbp), %rsi
	movq	-504(%rbp), %rax
	movq	%rdi, -1480(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -1488(%rbp)       # 8-byte Spill
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB68_194
# BB#193:                               # %cond.true.571
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -1496(%rbp)       # 8-byte Spill
	jmp	.LBB68_198
.LBB68_194:                             # %cond.false.572
	movq	-504(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	376(%rax), %rax
	movq	%rax, -1504(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1504(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB68_196
# BB#195:                               # %cond.true.577
	movq	-504(%rbp), %rdi
	callq	XBUFFER
	movq	768(%rax), %rax
	movq	%rax, -1512(%rbp)       # 8-byte Spill
	jmp	.LBB68_197
.LBB68_196:                             # %cond.false.580
	movq	-504(%rbp), %rdi
	callq	XBUFFER
	movq	376(%rax), %rdi
	callq	marker_position
	movq	%rax, -1512(%rbp)       # 8-byte Spill
.LBB68_197:                             # %cond.end.584
	movq	-1512(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1496(%rbp)       # 8-byte Spill
.LBB68_198:                             # %cond.end.586
	movq	-1496(%rbp), %rax       # 8-byte Reload
	movq	-504(%rbp), %rdi
	movq	%rax, -1520(%rbp)       # 8-byte Spill
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB68_200
# BB#199:                               # %cond.true.591
	movq	current_buffer, %rax
	movq	776(%rax), %rax
	movq	%rax, -1528(%rbp)       # 8-byte Spill
	jmp	.LBB68_204
.LBB68_200:                             # %cond.false.592
	movq	-504(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	376(%rax), %rax
	movq	%rax, -1536(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1536(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB68_202
# BB#201:                               # %cond.true.598
	movq	-504(%rbp), %rdi
	callq	XBUFFER
	movq	776(%rax), %rax
	movq	%rax, -1544(%rbp)       # 8-byte Spill
	jmp	.LBB68_203
.LBB68_202:                             # %cond.false.601
	movq	-504(%rbp), %rdi
	callq	XBUFFER
	movq	376(%rax), %rdi
	callq	marker_byte_position
	movq	%rax, -1544(%rbp)       # 8-byte Spill
.LBB68_203:                             # %cond.end.605
	movq	-1544(%rbp), %rax       # 8-byte Reload
	movq	%rax, -1528(%rbp)       # 8-byte Spill
.LBB68_204:                             # %cond.end.607
	movq	-1528(%rbp), %rax       # 8-byte Reload
	movq	-1480(%rbp), %rdi       # 8-byte Reload
	movq	-1488(%rbp), %rsi       # 8-byte Reload
	movq	-1520(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	callq	set_marker_both
	movq	%rax, -1552(%rbp)       # 8-byte Spill
.LBB68_205:                             # %if.end.610
	testb	$1, -545(%rbp)
	je	.LBB68_209
# BB#206:                               # %if.then.612
	movl	$293, %edi              # imm = 0x125
	movq	-48(%rbp), %rax
	movq	%rax, -1560(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1560(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_status
	movabsq	$connect_wait_mask, %rsi
	movl	-456(%rbp), %edi
	callq	fd_ISSET
	testb	$1, %al
	jne	.LBB68_208
# BB#207:                               # %if.then.615
	movabsq	$connect_wait_mask, %rsi
	movl	-456(%rbp), %edi
	callq	fd_SET
	movabsq	$write_mask, %rsi
	movl	-456(%rbp), %edi
	callq	fd_SET
	movl	num_pending_connects, %edi
	addl	$1, %edi
	movl	%edi, num_pending_connects
.LBB68_208:                             # %if.end.616
	jmp	.LBB68_215
.LBB68_209:                             # %if.else.617
	movl	$901, %edi              # imm = 0x385
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -1568(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1568(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB68_211
# BB#210:                               # %land.lhs.true.622
	movl	$901, %edi              # imm = 0x385
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -1576(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1576(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB68_213
.LBB68_211:                             # %lor.lhs.false.626
	movl	$625, %edi              # imm = 0x271
	movq	-48(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -1584(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1584(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB68_214
# BB#212:                               # %land.lhs.true.630
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -1592(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1592(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB68_214
.LBB68_213:                             # %if.then.635
	movabsq	$input_wait_mask, %rsi
	movl	-456(%rbp), %edi
	callq	fd_SET
	movabsq	$non_keyboard_wait_mask, %rsi
	movl	-456(%rbp), %edi
	callq	fd_SET
.LBB68_214:                             # %if.end.636
	jmp	.LBB68_215
.LBB68_215:                             # %if.end.637
	movl	-456(%rbp), %eax
	cmpl	max_process_desc, %eax
	jle	.LBB68_217
# BB#216:                               # %if.then.640
	movl	-456(%rbp), %eax
	movl	%eax, max_process_desc
.LBB68_217:                             # %if.end.641
	movl	$20, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -1600(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1600(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_member
	xorl	%edi, %edi
	movq	%rax, -488(%rbp)
	movq	-488(%rbp), %rax
	movq	%rax, -1608(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1608(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB68_221
# BB#218:                               # %land.lhs.true.647
	movq	-488(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB68_220
# BB#219:                               # %lor.lhs.false.652
	movq	-488(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB68_221
.LBB68_220:                             # %if.then.658
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -488(%rbp)
.LBB68_221:                             # %if.end.660
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -832(%rbp)
	movq	-488(%rbp), %rax
	movq	%rax, -1616(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1616(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB68_225
# BB#222:                               # %if.then.665
	movq	-488(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -840(%rbp)
	movq	-840(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB68_224
# BB#223:                               # %if.then.674
	movq	-840(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -840(%rbp)
.LBB68_224:                             # %if.end.677
	jmp	.LBB68_245
.LBB68_225:                             # %if.else.678
	xorl	%edi, %edi
	movq	globals+280, %rax
	movq	%rax, -1624(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1624(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB68_227
# BB#226:                               # %if.then.682
	movq	globals+280, %rax
	movq	%rax, -840(%rbp)
	jmp	.LBB68_244
.LBB68_227:                             # %if.else.683
	xorl	%edi, %edi
	movq	-504(%rbp), %rax
	movq	%rax, -1632(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1632(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB68_229
# BB#228:                               # %land.lhs.true.687
	movq	-504(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	312(%rax), %rax
	movq	%rax, -1640(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1640(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB68_231
.LBB68_229:                             # %lor.lhs.false.692
	xorl	%edi, %edi
	movq	-504(%rbp), %rax
	movq	%rax, -1648(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1648(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB68_232
# BB#230:                               # %land.lhs.true.696
	xorl	%edi, %edi
	movq	buffer_defaults+312, %rax
	movq	%rax, -1656(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1656(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB68_232
.LBB68_231:                             # %if.then.700
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -840(%rbp)
	jmp	.LBB68_243
.LBB68_232:                             # %if.else.702
	xorl	%edi, %edi
	movq	-512(%rbp), %rax
	movq	%rax, -1664(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1664(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB68_234
# BB#233:                               # %lor.lhs.false.706
	xorl	%edi, %edi
	movq	-520(%rbp), %rax
	movq	%rax, -1672(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1672(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB68_235
.LBB68_234:                             # %if.then.710
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -832(%rbp)
	jmp	.LBB68_236
.LBB68_235:                             # %if.else.712
	movl	$720, %edi              # imm = 0x2D0
	callq	builtin_lisp_symbol
	movl	$5, %edi
                                        # kill: RDI<def> EDI<kill>
	leaq	-880(%rbp), %rsi
	movq	%rax, -880(%rbp)
	movq	-496(%rbp), %rax
	movq	%rax, -872(%rbp)
	movq	-504(%rbp), %rax
	movq	%rax, -864(%rbp)
	movq	-512(%rbp), %rax
	movq	%rax, -856(%rbp)
	movq	-520(%rbp), %rax
	movq	%rax, -848(%rbp)
	callq	Ffind_operation_coding_system
	movq	%rax, -832(%rbp)
.LBB68_236:                             # %if.end.719
	movq	-832(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB68_238
# BB#237:                               # %if.then.724
	movq	-832(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -840(%rbp)
	jmp	.LBB68_242
.LBB68_238:                             # %if.else.727
	movq	globals+496, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB68_240
# BB#239:                               # %if.then.732
	movq	globals+496, %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -840(%rbp)
	jmp	.LBB68_241
.LBB68_240:                             # %if.else.735
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -840(%rbp)
.LBB68_241:                             # %if.end.737
	jmp	.LBB68_242
.LBB68_242:                             # %if.end.738
	jmp	.LBB68_243
.LBB68_243:                             # %if.end.739
	jmp	.LBB68_244
.LBB68_244:                             # %if.end.740
	jmp	.LBB68_245
.LBB68_245:                             # %if.end.741
	movq	-48(%rbp), %rdi
	movq	-840(%rbp), %rsi
	callq	pset_decode_coding_system
	xorl	%edi, %edi
	movq	-488(%rbp), %rsi
	movq	%rsi, -1680(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1680(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB68_249
# BB#246:                               # %if.then.745
	movq	-488(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -840(%rbp)
	movq	-840(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB68_248
# BB#247:                               # %if.then.755
	movq	-840(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -840(%rbp)
.LBB68_248:                             # %if.end.759
	jmp	.LBB68_268
.LBB68_249:                             # %if.else.760
	xorl	%edi, %edi
	movq	globals+288, %rax
	movq	%rax, -1688(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1688(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB68_251
# BB#250:                               # %if.then.764
	movq	globals+288, %rax
	movq	%rax, -840(%rbp)
	jmp	.LBB68_267
.LBB68_251:                             # %if.else.765
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -1696(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1696(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB68_253
# BB#252:                               # %if.then.770
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -840(%rbp)
	jmp	.LBB68_266
.LBB68_253:                             # %if.else.772
	movl	$901, %edi              # imm = 0x385
	movq	-832(%rbp), %rax
	movq	%rax, -1704(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1704(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB68_259
# BB#254:                               # %if.then.776
	xorl	%edi, %edi
	movq	-512(%rbp), %rax
	movq	%rax, -1712(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1712(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB68_256
# BB#255:                               # %lor.lhs.false.780
	xorl	%edi, %edi
	movq	-520(%rbp), %rax
	movq	%rax, -1720(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1720(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB68_257
.LBB68_256:                             # %if.then.784
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -832(%rbp)
	jmp	.LBB68_258
.LBB68_257:                             # %if.else.786
	movl	$720, %edi              # imm = 0x2D0
	callq	builtin_lisp_symbol
	movl	$5, %edi
                                        # kill: RDI<def> EDI<kill>
	leaq	-920(%rbp), %rsi
	movq	%rax, -920(%rbp)
	movq	-496(%rbp), %rax
	movq	%rax, -912(%rbp)
	movq	-504(%rbp), %rax
	movq	%rax, -904(%rbp)
	movq	-512(%rbp), %rax
	movq	%rax, -896(%rbp)
	movq	-520(%rbp), %rax
	movq	%rax, -888(%rbp)
	callq	Ffind_operation_coding_system
	movq	%rax, -832(%rbp)
.LBB68_258:                             # %if.end.796
	jmp	.LBB68_259
.LBB68_259:                             # %if.end.797
	movq	-832(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB68_261
# BB#260:                               # %if.then.802
	movq	-832(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -840(%rbp)
	jmp	.LBB68_265
.LBB68_261:                             # %if.else.806
	movq	globals+496, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB68_263
# BB#262:                               # %if.then.811
	movq	globals+496, %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -840(%rbp)
	jmp	.LBB68_264
.LBB68_263:                             # %if.else.815
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -840(%rbp)
.LBB68_264:                             # %if.end.817
	jmp	.LBB68_265
.LBB68_265:                             # %if.end.818
	jmp	.LBB68_266
.LBB68_266:                             # %if.end.819
	jmp	.LBB68_267
.LBB68_267:                             # %if.end.820
	jmp	.LBB68_268
.LBB68_268:                             # %if.end.821
	movq	-48(%rbp), %rdi
	movq	-840(%rbp), %rsi
	callq	pset_encode_coding_system
	movq	-32(%rbp), %rdi
	callq	setup_process_coding_systems
	movq	-48(%rbp), %rdi
	movq	empty_unibyte_string, %rsi
	callq	pset_decoding_buf
	movq	-48(%rbp), %rsi
	movl	$0, 216(%rsi)
	movq	-48(%rbp), %rdi
	movq	empty_unibyte_string, %rsi
	callq	pset_encoding_buf
	xorl	%edi, %edi
	movq	-488(%rbp), %rsi
	movq	%rsi, -1728(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %cl
	movq	-1728(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	movb	%cl, -1729(%rbp)        # 1-byte Spill
	jne	.LBB68_271
# BB#269:                               # %lor.lhs.false.825
	xorl	%edi, %edi
	movq	-504(%rbp), %rax
	movq	%rax, -1744(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %cl
	movq	-1744(%rbp), %rdx       # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -1729(%rbp)        # 1-byte Spill
	je	.LBB68_271
# BB#270:                               # %lor.rhs
	movb	globals+3387, %al
	xorb	$-1, %al
	movb	%al, -1729(%rbp)        # 1-byte Spill
.LBB68_271:                             # %lor.end
	movb	-1729(%rbp), %al        # 1-byte Reload
	xorb	$-1, %al
	movq	-48(%rbp), %rcx
	andb	$1, %al
	movb	224(%rcx), %dl
	shlb	$5, %al
	andb	$-33, %dl
	orb	%al, %dl
	movb	%dl, 224(%rcx)
	movq	-32(%rbp), %rcx
	movq	%rcx, -8(%rbp)
.LBB68_272:                             # %return
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end68:
	.size	Fmake_network_process, .Lfunc_end68-Fmake_network_process
	.cfi_endproc

	.globl	Fnetwork_interface_list
	.align	16, 0x90
	.type	Fnetwork_interface_list,@function
Fnetwork_interface_list:                # @Fnetwork_interface_list
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
	callq	network_interface_list
	popq	%rbp
	retq
.Lfunc_end69:
	.size	Fnetwork_interface_list, .Lfunc_end69-Fnetwork_interface_list
	.cfi_endproc

	.align	16, 0x90
	.type	network_interface_list,@function
network_interface_list:                 # @network_interface_list
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
	subq	$160, %rsp
	movl	$2, %edi
	movl	$524289, %esi           # imm = 0x80001
	xorl	%edx, %edx
	movq	$0, -40(%rbp)
	movq	$512, -48(%rbp)         # imm = 0x200
	callq	socket
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jge	.LBB70_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB70_13
.LBB70_2:                               # %if.end
	callq	SPECPDL_INDEX
	movabsq	$close_file_unwind, %rdi
	movq	%rax, -72(%rbp)
	movl	-52(%rbp), %esi
	callq	record_unwind_protect_int
.LBB70_3:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	leaq	-48(%rbp), %rsi
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %edx
	movq	-40(%rbp), %rdi
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-120(%rbp), %r8         # 8-byte Reload
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movq	-128(%rbp), %r8         # 8-byte Reload
	callq	xpalloc
	movl	$35090, %r9d            # imm = 0x8912
	movl	%r9d, %esi
	leaq	-24(%rbp), %rdx
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movl	%eax, %r9d
	movl	%r9d, -24(%rbp)
	movl	-52(%rbp), %edi
	movb	$0, %al
	callq	ioctl
	cmpl	$0, %eax
	je	.LBB70_5
# BB#4:                                 # %if.then.5
	movl	-52(%rbp), %edi
	callq	emacs_close
	movq	-40(%rbp), %rdi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	xfree
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB70_13
.LBB70_5:                               # %if.end.8
                                        #   in Loop: Header=BB70_3 Depth=1
	jmp	.LBB70_6
.LBB70_6:                               # %do.cond
                                        #   in Loop: Header=BB70_3 Depth=1
	movslq	-24(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB70_3
# BB#7:                                 # %do.end
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB70_8:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	-24(%rbp), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jae	.LBB70_12
# BB#9:                                 # %while.body
                                        #   in Loop: Header=BB70_8 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	$40, -84(%rbp)
	movq	-32(%rbp), %rax
	movslq	-84(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	-80(%rbp), %rax
	movzwl	16(%rax), %edx
	cmpl	$2, %edx
	je	.LBB70_11
# BB#10:                                # %if.then.26
                                        #   in Loop: Header=BB70_8 Depth=1
	jmp	.LBB70_8
.LBB70_11:                              # %if.end.27
                                        #   in Loop: Header=BB70_8 Depth=1
	leaq	-112(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -112(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)
	movb	$0, -96(%rbp)
	callq	build_string
	movl	$16, %esi
	movq	-80(%rbp), %rcx
	addq	$16, %rcx
	movq	%rcx, %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	conv_sockaddr_to_lisp
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -64(%rbp)
	jmp	.LBB70_8
.LBB70_12:                              # %while.end
	movq	-40(%rbp), %rdi
	callq	xfree
	movq	-64(%rbp), %rdi
	movq	%rdi, -8(%rbp)
.LBB70_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end70:
	.size	network_interface_list, .Lfunc_end70-network_interface_list
	.cfi_endproc

	.globl	Fnetwork_interface_info
	.align	16, 0x90
	.type	Fnetwork_interface_info,@function
Fnetwork_interface_info:                # @Fnetwork_interface_info
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	network_interface_info
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end71:
	.size	Fnetwork_interface_info, .Lfunc_end71-Fnetwork_interface_info
	.cfi_endproc

	.align	16, 0x90
	.type	network_interface_info,@function
network_interface_info:                 # @network_interface_info
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
	subq	$176, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)
	movb	$0, -77(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	movq	-16(%rbp), %rdi
	callq	SBYTES
	movl	$16, %ecx
	movl	%ecx, %edi
	cmpq	%rax, %rdi
	ja	.LBB72_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.67, %rdi
	movb	$0, %al
	callq	error
.LBB72_2:                               # %if.end
	leaq	-56(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	lispstpcpy
	movl	$2, %edi
	movl	$524289, %esi           # imm = 0x80001
	xorl	%edx, %edx
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	socket
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	jge	.LBB72_4
# BB#3:                                 # %if.then.5
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB72_40
.LBB72_4:                               # %if.end.7
	callq	SPECPDL_INDEX
	movabsq	$close_file_unwind, %rdi
	movq	%rax, -88(%rbp)
	movl	-76(%rbp), %esi
	callq	record_unwind_protect_int
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$35091, %esi            # imm = 0x8913
                                        # kill: RSI<def> ESI<kill>
	leaq	-56(%rbp), %rdx
	movq	%rax, -72(%rbp)
	movl	-76(%rbp), %edi
	movb	$0, %al
	callq	ioctl
	cmpl	$0, %eax
	jne	.LBB72_24
# BB#5:                                 # %if.then.12
	movswl	-40(%rbp), %eax
	movl	%eax, -92(%rbp)
	cmpl	$0, -92(%rbp)
	jge	.LBB72_7
# BB#6:                                 # %if.then.15
	movzwl	-40(%rbp), %eax
	movl	%eax, -92(%rbp)
.LBB72_7:                               # %if.end.19
	movabsq	$ifflag_table, %rax
	movb	$1, -77(%rbp)
	movq	%rax, -104(%rbp)
.LBB72_8:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -92(%rbp)
	movb	%cl, -145(%rbp)         # 1-byte Spill
	je	.LBB72_10
# BB#9:                                 # %land.rhs
                                        #   in Loop: Header=BB72_8 Depth=1
	movq	-104(%rbp), %rax
	cmpq	$0, 8(%rax)
	setne	%cl
	movb	%cl, -145(%rbp)         # 1-byte Spill
.LBB72_10:                              # %land.end
                                        #   in Loop: Header=BB72_8 Depth=1
	movb	-145(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB72_11
	jmp	.LBB72_15
.LBB72_11:                              # %for.body
                                        #   in Loop: Header=BB72_8 Depth=1
	movl	-92(%rbp), %eax
	movq	-104(%rbp), %rcx
	andl	(%rcx), %eax
	cmpl	$0, %eax
	je	.LBB72_13
# BB#12:                                # %if.then.23
                                        #   in Loop: Header=BB72_8 Depth=1
	movq	-104(%rbp), %rax
	movq	8(%rax), %rdi
	callq	intern
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -72(%rbp)
	movq	-104(%rbp), %rax
	movl	(%rax), %ecx
	movl	-92(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -92(%rbp)
.LBB72_13:                              # %if.end.28
                                        #   in Loop: Header=BB72_8 Depth=1
	jmp	.LBB72_14
.LBB72_14:                              # %for.inc
                                        #   in Loop: Header=BB72_8 Depth=1
	movq	-104(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB72_8
.LBB72_15:                              # %for.end
	movl	$0, -108(%rbp)
.LBB72_16:                              # %for.cond.29
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -92(%rbp)
	movb	%cl, -146(%rbp)         # 1-byte Spill
	je	.LBB72_18
# BB#17:                                # %land.rhs.31
                                        #   in Loop: Header=BB72_16 Depth=1
	cmpl	$32, -108(%rbp)
	setl	%al
	movb	%al, -146(%rbp)         # 1-byte Spill
.LBB72_18:                              # %land.end.34
                                        #   in Loop: Header=BB72_16 Depth=1
	movb	-146(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB72_19
	jmp	.LBB72_23
.LBB72_19:                              # %for.body.35
                                        #   in Loop: Header=BB72_16 Depth=1
	movl	-92(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB72_21
# BB#20:                                # %if.then.38
                                        #   in Loop: Header=BB72_16 Depth=1
	movslq	-108(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -72(%rbp)
.LBB72_21:                              # %if.end.41
                                        #   in Loop: Header=BB72_16 Depth=1
	jmp	.LBB72_22
.LBB72_22:                              # %for.inc.42
                                        #   in Loop: Header=BB72_16 Depth=1
	movl	-92(%rbp), %eax
	sarl	$1, %eax
	movl	%eax, -92(%rbp)
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB72_16
.LBB72_23:                              # %for.end.43
	jmp	.LBB72_24
.LBB72_24:                              # %if.end.44
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	Fcons
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	callq	builtin_lisp_symbol
	movl	$35111, %edi            # imm = 0x8927
	movl	%edi, %esi
	leaq	-56(%rbp), %rdx
	movq	%rax, -72(%rbp)
	movl	-76(%rbp), %edi
	movb	$0, %al
	callq	ioctl
	cmpl	$0, %eax
	jne	.LBB72_30
# BB#25:                                # %if.then.50
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$26, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rdi
	callq	XVECTOR
	movq	%rax, -128(%rbp)
	movb	$1, -77(%rbp)
	movl	$0, -132(%rbp)
.LBB72_26:                              # %for.cond.54
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$6, -132(%rbp)
	jge	.LBB72_29
# BB#27:                                # %for.body.57
                                        #   in Loop: Header=BB72_26 Depth=1
	movslq	-132(%rbp), %rax
	movzbl	-38(%rbp,%rax), %ecx
	movl	%ecx, %eax
	shlq	$2, %rax
	addq	$2, %rax
	movslq	-132(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	%rax, 8(%rsi,%rdx,8)
# BB#28:                                # %for.inc.65
                                        #   in Loop: Header=BB72_26 Depth=1
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB72_26
.LBB72_29:                              # %for.end.67
	movzwl	-40(%rbp), %eax
	movl	%eax, %ecx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-120(%rbp), %rsi
	movq	%rcx, %rdi
	callq	Fcons
	movq	%rax, -72(%rbp)
.LBB72_30:                              # %if.end.74
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	Fcons
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	callq	builtin_lisp_symbol
	movl	$35099, %edi            # imm = 0x891B
	movl	%edi, %esi
	leaq	-56(%rbp), %rdx
	movq	%rax, -72(%rbp)
	movl	-76(%rbp), %edi
	movb	$0, %al
	callq	ioctl
	cmpl	$0, %eax
	jne	.LBB72_32
# BB#31:                                # %if.then.80
	movl	$16, %esi
	leaq	-56(%rbp), %rax
	movb	$1, -77(%rbp)
	addq	$16, %rax
	movq	%rax, %rdi
	callq	conv_sockaddr_to_lisp
	movq	%rax, -72(%rbp)
.LBB72_32:                              # %if.end.83
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	Fcons
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	callq	builtin_lisp_symbol
	movl	$35097, %edi            # imm = 0x8919
	movl	%edi, %esi
	leaq	-56(%rbp), %rdx
	movq	%rax, -72(%rbp)
	movl	-76(%rbp), %edi
	movb	$0, %al
	callq	ioctl
	cmpl	$0, %eax
	jne	.LBB72_34
# BB#33:                                # %if.then.89
	movl	$16, %esi
	leaq	-56(%rbp), %rax
	movb	$1, -77(%rbp)
	addq	$16, %rax
	movq	%rax, %rdi
	callq	conv_sockaddr_to_lisp
	movq	%rax, -72(%rbp)
.LBB72_34:                              # %if.end.92
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	Fcons
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	callq	builtin_lisp_symbol
	movl	$35093, %edi            # imm = 0x8915
	movl	%edi, %esi
	leaq	-56(%rbp), %rdx
	movq	%rax, -72(%rbp)
	movl	-76(%rbp), %edi
	movb	$0, %al
	callq	ioctl
	cmpl	$0, %eax
	jne	.LBB72_36
# BB#35:                                # %if.then.98
	movl	$16, %esi
	leaq	-56(%rbp), %rax
	movb	$1, -77(%rbp)
	addq	$16, %rax
	movq	%rax, %rdi
	callq	conv_sockaddr_to_lisp
	movq	%rax, -72(%rbp)
.LBB72_36:                              # %if.end.101
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	Fcons
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rdi
	testb	$1, -77(%rbp)
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	je	.LBB72_38
# BB#37:                                # %cond.true
	movq	-64(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB72_39
.LBB72_38:                              # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB72_39:                              # %cond.end
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -8(%rbp)
.LBB72_40:                              # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end72:
	.size	network_interface_info, .Lfunc_end72-network_interface_info
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI73_0:
	.quad	4652007308841189376     # double 1000
	.text
	.globl	Faccept_process_output
	.align	16, 0x90
	.type	Faccept_process_output,@function
Faccept_process_output:                 # @Faccept_process_output
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
	subq	$224, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movl	%eax, %edi
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB73_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	CHECK_PROCESS
	jmp	.LBB73_3
.LBB73_2:                               # %if.else
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
.LBB73_3:                               # %if.end
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB73_14
# BB#4:                                 # %if.then.4
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB73_6
# BB#5:                                 # %cond.true
	jmp	.LBB73_7
.LBB73_6:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB73_7:                               # %cond.end
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB73_9
# BB#8:                                 # %if.then.12
	movsd	.LCPI73_0, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	make_float
	movq	%rax, -16(%rbp)
	jmp	.LBB73_13
.LBB73_9:                               # %if.else.15
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB73_11
# BB#10:                                # %cond.true.21
	jmp	.LBB73_12
.LBB73_11:                              # %cond.false.22
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB73_12:                              # %cond.end.24
	movsd	.LCPI73_0, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm0, %xmm1
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cvtsi2sdq	%rax, %xmm0
	addsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	make_float
	movq	%rax, -16(%rbp)
.LBB73_13:                              # %if.end.31
	jmp	.LBB73_14
.LBB73_14:                              # %if.end.32
	xorl	%edi, %edi
	movq	$0, -40(%rbp)
	movl	$-1, -44(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB73_29
# BB#15:                                # %if.then.36
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB73_19
# BB#16:                                # %if.then.42
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jle	.LBB73_18
# BB#17:                                # %if.then.46
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB73_18:                              # %if.end.48
	jmp	.LBB73_28
.LBB73_19:                              # %if.else.49
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	jne	.LBB73_26
# BB#20:                                # %if.then.54
	movq	-16(%rbp), %rdi
	callq	XFLOAT_DATA
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB73_25
# BB#21:                                # %if.then.58
	movq	-16(%rbp), %rdi
	callq	XFLOAT_DATA
	callq	dtotimespec
	movabsq	$9223372036854775807, %rdi # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	cmpq	%rdi, -64(%rbp)
	jge	.LBB73_23
# BB#22:                                # %cond.true.63
	movq	-64(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB73_24
.LBB73_23:                              # %cond.false.65
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB73_24
.LBB73_24:                              # %cond.end.66
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -44(%rbp)
.LBB73_25:                              # %if.end.68
	jmp	.LBB73_27
.LBB73_26:                              # %if.else.69
	movl	$711, %edi              # imm = 0x2C7
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB73_27:                              # %if.end.71
	jmp	.LBB73_28
.LBB73_28:                              # %if.end.72
	jmp	.LBB73_32
.LBB73_29:                              # %if.else.73
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB73_31
# BB#30:                                # %if.then.77
	movl	$0, -44(%rbp)
.LBB73_31:                              # %if.end.78
	jmp	.LBB73_32
.LBB73_32:                              # %if.end.79
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movl	-44(%rbp), %esi
	movl	%esi, -140(%rbp)        # 4-byte Spill
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-8(%rbp), %rcx
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB73_34
# BB#33:                                # %cond.true.84
	movq	-8(%rbp), %rdi
	callq	XPROCESS
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB73_35
.LBB73_34:                              # %cond.false.86
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB73_35
.LBB73_35:                              # %cond.end.87
	movq	-176(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	movq	-32(%rbp), %rcx
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB73_37
# BB#36:                                # %cond.true.92
	xorl	%eax, %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
	jmp	.LBB73_38
.LBB73_37:                              # %cond.false.93
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$1, %ecx
	movq	-32(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %esi
	andl	$-5, %esi
	cmpl	$2, %esi
	sete	%dil
	xorb	$-1, %dil
	testb	$1, %dil
	cmovnel	%ecx, %eax
	movl	%eax, -196(%rbp)        # 4-byte Spill
.LBB73_38:                              # %cond.end.100
	movl	-196(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	-140(%rbp), %esi        # 4-byte Reload
	movl	%ecx, %edx
	movq	-160(%rbp), %r8         # 8-byte Reload
	movq	-184(%rbp), %r9         # 8-byte Reload
	movl	%eax, (%rsp)
	callq	wait_reading_process_output
	cmpl	$0, %eax
	jg	.LBB73_40
# BB#39:                                # %cond.true.105
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jmp	.LBB73_41
.LBB73_40:                              # %cond.false.107
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB73_41:                              # %cond.end.109
	movq	-208(%rbp), %rax        # 8-byte Reload
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end73:
	.size	Faccept_process_output, .Lfunc_end73-Faccept_process_output
	.cfi_endproc

	.globl	wait_reading_process_output
	.align	16, 0x90
	.type	wait_reading_process_output,@function
wait_reading_process_output:            # @wait_reading_process_output
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
	subq	$1744, %rsp             # imm = 0x6D0
	movb	%cl, %al
	movl	16(%rbp), %ecx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movl	%ecx, -44(%rbp)
	callq	invalid_timespec
	movq	%rax, -400(%rbp)
	movq	%rdx, -392(%rbp)
	movl	$-1, -408(%rbp)
	callq	SPECPDL_INDEX
	movq	%rax, -416(%rbp)
	callq	invalid_timespec
	movq	%rax, -432(%rbp)
	movq	%rdx, -424(%rbp)
# BB#1:                                 # %do.body
	leaq	-184(%rbp), %rax
	movl	$16, %ecx
                                        # kill: RCX<def> ECX<kill>
	xorl	%edx, %edx
	movq	%rax, -1280(%rbp)       # 8-byte Spill
	movl	%edx, %eax
	movq	-1280(%rbp), %rsi       # 8-byte Reload
	movq	%rsi, %rdi
	#APP
	cld
	rep
	stosq	%rax, %es:(%rdi)
	#NO_APP
	movl	%ecx, %eax
	movl	%eax, -436(%rbp)
	movl	%edi, %eax
	movl	%eax, -440(%rbp)
# BB#2:                                 # %do.end
	jmp	.LBB74_3
.LBB74_3:                               # %do.body.4
	leaq	-312(%rbp), %rax
	movl	$16, %ecx
                                        # kill: RCX<def> ECX<kill>
	xorl	%edx, %edx
	movq	%rax, -1288(%rbp)       # 8-byte Spill
	movl	%edx, %eax
	movq	-1288(%rbp), %rsi       # 8-byte Reload
	movq	%rsi, %rdi
	#APP
	cld
	rep
	stosq	%rax, %es:(%rdi)
	#NO_APP
	movl	%ecx, %eax
	movl	%eax, -444(%rbp)
	movl	%edi, %eax
	movl	%eax, -448(%rbp)
# BB#4:                                 # %do.end.11
	cmpq	$0, -8(%rbp)
	jne	.LBB74_11
# BB#5:                                 # %land.lhs.true
	cmpl	$0, -12(%rbp)
	jne	.LBB74_11
# BB#6:                                 # %land.lhs.true.13
	cmpq	$0, -40(%rbp)
	je	.LBB74_11
# BB#7:                                 # %land.lhs.true.14
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -1296(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1296(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB74_11
# BB#8:                                 # %land.lhs.true.17
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB74_10
# BB#9:                                 # %land.lhs.true.20
	movl	$387, %edi              # imm = 0x183
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -1304(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1304(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB74_11
.LBB74_10:                              # %if.then
	movabsq	$.L.str.37, %rdi
	callq	message1
.LBB74_11:                              # %if.end
	movabsq	$wait_reading_process_output_unwind, %rdi
	movl	waiting_for_user_input_p, %esi
	callq	record_unwind_protect_int
	movabsq	$9223372036854775807, %rdi # imm = 0x7FFFFFFFFFFFFFFF
	movl	-16(%rbp), %esi
	movl	%esi, waiting_for_user_input_p
	cmpq	-8(%rbp), %rdi
	jge	.LBB74_13
# BB#12:                                # %if.then.27
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rax, -8(%rbp)
.LBB74_13:                              # %if.end.28
	cmpq	$0, -8(%rbp)
	jl	.LBB74_15
# BB#14:                                # %lor.lhs.false
	cmpl	$0, -12(%rbp)
	jge	.LBB74_16
.LBB74_15:                              # %if.then.33
	movl	$-1, -404(%rbp)
	jmp	.LBB74_21
.LBB74_16:                              # %if.else
	cmpq	$0, -8(%rbp)
	jg	.LBB74_18
# BB#17:                                # %lor.lhs.false.36
	cmpl	$0, -12(%rbp)
	jle	.LBB74_19
.LBB74_18:                              # %if.then.39
	movl	$0, -404(%rbp)
	callq	current_timespec
	movq	%rax, -464(%rbp)
	movq	%rdx, -456(%rbp)
	movq	-464(%rbp), %rax
	movq	%rax, -432(%rbp)
	movq	-456(%rbp), %rax
	movq	%rax, -424(%rbp)
	movq	-8(%rbp), %rdi
	movslq	-12(%rbp), %rsi
	callq	make_timespec
	movq	%rax, -480(%rbp)
	movq	%rdx, -472(%rbp)
	movq	-432(%rbp), %rdi
	movq	-424(%rbp), %rsi
	movq	-480(%rbp), %rdx
	movq	-472(%rbp), %rcx
	callq	timespec_add
	movq	%rax, -496(%rbp)
	movq	%rdx, -488(%rbp)
	movq	-496(%rbp), %rax
	movq	%rax, -368(%rbp)
	movq	-488(%rbp), %rax
	movq	%rax, -360(%rbp)
	jmp	.LBB74_20
.LBB74_19:                              # %if.else.45
	movl	$1, -404(%rbp)
.LBB74_20:                              # %if.end.46
	jmp	.LBB74_21
.LBB74_21:                              # %if.end.47
	jmp	.LBB74_22
.LBB74_22:                              # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB74_48 Depth 2
                                        #     Child Loop BB74_142 Depth 2
                                        #     Child Loop BB74_186 Depth 2
                                        #     Child Loop BB74_266 Depth 2
                                        #     Child Loop BB74_276 Depth 2
	movb	$0, -497(%rbp)
	cmpl	$0, -16(%rbp)
	jl	.LBB74_32
# BB#23:                                # %if.then.50
                                        #   in Loop: Header=BB74_22 Depth=1
	jmp	.LBB74_24
.LBB74_24:                              # %do.body.51
                                        #   in Loop: Header=BB74_22 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -1312(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1312(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB74_27
# BB#25:                                # %land.lhs.true.55
                                        #   in Loop: Header=BB74_22 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -1320(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1320(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB74_27
# BB#26:                                # %if.then.59
                                        #   in Loop: Header=BB74_22 Depth=1
	callq	process_quit_flag
	jmp	.LBB74_30
.LBB74_27:                              # %if.else.60
                                        #   in Loop: Header=BB74_22 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB74_29
# BB#28:                                # %if.then.62
                                        #   in Loop: Header=BB74_22 Depth=1
	callq	process_pending_signals
.LBB74_29:                              # %if.end.63
                                        #   in Loop: Header=BB74_22 Depth=1
	jmp	.LBB74_30
.LBB74_30:                              # %if.end.64
                                        #   in Loop: Header=BB74_22 Depth=1
	jmp	.LBB74_31
.LBB74_31:                              # %do.end.65
                                        #   in Loop: Header=BB74_22 Depth=1
	jmp	.LBB74_35
.LBB74_32:                              # %if.else.66
                                        #   in Loop: Header=BB74_22 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB74_34
# BB#33:                                # %if.then.68
                                        #   in Loop: Header=BB74_22 Depth=1
	callq	process_pending_signals
.LBB74_34:                              # %if.end.69
                                        #   in Loop: Header=BB74_22 Depth=1
	jmp	.LBB74_35
.LBB74_35:                              # %if.end.70
                                        #   in Loop: Header=BB74_22 Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -1328(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1328(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB74_38
# BB#36:                                # %land.lhs.true.74
                                        #   in Loop: Header=BB74_22 Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -1336(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1336(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB74_38
# BB#37:                                # %if.then.80
	jmp	.LBB74_347
.LBB74_38:                              # %if.end.81
                                        #   in Loop: Header=BB74_22 Depth=1
	cmpl	$0, -404(%rbp)
	jne	.LBB74_44
# BB#39:                                # %if.then.84
                                        #   in Loop: Header=BB74_22 Depth=1
	movq	-432(%rbp), %rdi
	movq	-424(%rbp), %rsi
	callq	timespec_valid_p
	testb	$1, %al
	jne	.LBB74_41
# BB#40:                                # %if.then.86
                                        #   in Loop: Header=BB74_22 Depth=1
	callq	current_timespec
	movq	%rax, -520(%rbp)
	movq	%rdx, -512(%rbp)
	movq	-520(%rbp), %rax
	movq	%rax, -432(%rbp)
	movq	-512(%rbp), %rax
	movq	%rax, -424(%rbp)
.LBB74_41:                              # %if.end.89
                                        #   in Loop: Header=BB74_22 Depth=1
	movq	-368(%rbp), %rdi
	movq	-360(%rbp), %rsi
	movq	-432(%rbp), %rdx
	movq	-424(%rbp), %rcx
	callq	timespec_cmp
	cmpl	$0, %eax
	jg	.LBB74_43
# BB#42:                                # %if.then.93
	jmp	.LBB74_347
.LBB74_43:                              # %if.end.94
                                        #   in Loop: Header=BB74_22 Depth=1
	movq	-368(%rbp), %rdi
	movq	-360(%rbp), %rsi
	movq	-432(%rbp), %rdx
	movq	-424(%rbp), %rcx
	callq	timespec_sub
	movq	%rax, -536(%rbp)
	movq	%rdx, -528(%rbp)
	movq	-536(%rbp), %rax
	movq	%rax, -352(%rbp)
	movq	-528(%rbp), %rax
	movq	%rax, -344(%rbp)
	jmp	.LBB74_45
.LBB74_44:                              # %if.else.97
                                        #   in Loop: Header=BB74_22 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$100000, %eax           # imm = 0x186A0
	xorl	%ecx, %ecx
	cmpl	$0, -404(%rbp)
	cmovll	%ecx, %eax
	movslq	%eax, %rdi
	callq	make_timespec
	movq	%rax, -552(%rbp)
	movq	%rdx, -544(%rbp)
	movq	-552(%rbp), %rax
	movq	%rax, -352(%rbp)
	movq	-544(%rbp), %rax
	movq	%rax, -344(%rbp)
.LBB74_45:                              # %if.end.103
                                        #   in Loop: Header=BB74_22 Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -1344(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1344(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB74_65
# BB#46:                                # %land.lhs.true.107
                                        #   in Loop: Header=BB74_22 Depth=1
	cmpl	$0, -44(%rbp)
	jl	.LBB74_65
# BB#47:                                # %if.then.110
                                        #   in Loop: Header=BB74_22 Depth=1
	jmp	.LBB74_48
.LBB74_48:                              # %do.body.111
                                        #   Parent Loop BB74_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	timers_run, %eax
	movl	%eax, -556(%rbp)
	movq	current_buffer, %rcx
	movq	%rcx, -568(%rbp)
	movq	selected_window, %rcx
	movq	%rcx, -576(%rbp)
	callq	timer_check
	movq	%rax, -592(%rbp)
	movq	%rdx, -584(%rbp)
	movq	-592(%rbp), %rax
	movq	%rax, -384(%rbp)
	movq	-584(%rbp), %rax
	movq	%rax, -376(%rbp)
	movl	timers_run, %esi
	cmpl	-556(%rbp), %esi
	je	.LBB74_53
# BB#49:                                # %land.lhs.true.116
                                        #   in Loop: Header=BB74_48 Depth=2
	movq	-568(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB74_51
# BB#50:                                # %lor.lhs.false.119
                                        #   in Loop: Header=BB74_48 Depth=2
	movq	-576(%rbp), %rax
	cmpq	selected_window, %rax
	je	.LBB74_53
.LBB74_51:                              # %land.lhs.true.122
                                        #   in Loop: Header=BB74_48 Depth=2
	cmpl	$-1, waiting_for_user_input_p
	jne	.LBB74_53
# BB#52:                                # %if.then.125
                                        #   in Loop: Header=BB74_48 Depth=2
	callq	record_asynch_buffer_change
.LBB74_53:                              # %if.end.126
                                        #   in Loop: Header=BB74_48 Depth=2
	movl	timers_run, %eax
	cmpl	-556(%rbp), %eax
	je	.LBB74_56
# BB#54:                                # %land.lhs.true.129
                                        #   in Loop: Header=BB74_48 Depth=2
	testb	$1, -17(%rbp)
	je	.LBB74_56
# BB#55:                                # %if.then.132
                                        #   in Loop: Header=BB74_48 Depth=2
	movl	$9, %edi
	callq	redisplay_preserve_echo_area
	jmp	.LBB74_57
.LBB74_56:                              # %if.else.133
                                        #   in Loop: Header=BB74_22 Depth=1
	jmp	.LBB74_59
.LBB74_57:                              # %if.end.134
                                        #   in Loop: Header=BB74_48 Depth=2
	jmp	.LBB74_58
.LBB74_58:                              # %do.cond
                                        #   in Loop: Header=BB74_48 Depth=2
	callq	detect_input_pending
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB74_48
.LBB74_59:                              # %do.end.136
                                        #   in Loop: Header=BB74_22 Depth=1
	cmpl	$0, -16(%rbp)
	je	.LBB74_62
# BB#60:                                # %land.lhs.true.139
                                        #   in Loop: Header=BB74_22 Depth=1
	callq	requeued_events_pending_p
	testb	$1, %al
	jne	.LBB74_61
	jmp	.LBB74_62
.LBB74_61:                              # %if.then.142
	jmp	.LBB74_347
.LBB74_62:                              # %if.end.143
                                        #   in Loop: Header=BB74_22 Depth=1
	movq	-384(%rbp), %rdi
	movq	-376(%rbp), %rsi
	callq	timespec_valid_p
	testb	$1, %al
	jne	.LBB74_64
# BB#63:                                # %if.then.145
                                        #   in Loop: Header=BB74_22 Depth=1
	callq	wait_reading_process_output_1
.LBB74_64:                              # %if.end.146
                                        #   in Loop: Header=BB74_22 Depth=1
	jmp	.LBB74_65
.LBB74_65:                              # %if.end.147
                                        #   in Loop: Header=BB74_22 Depth=1
	cmpl	$0, -16(%rbp)
	jge	.LBB74_67
# BB#66:                                # %if.then.150
                                        #   in Loop: Header=BB74_22 Depth=1
	leaq	-352(%rbp), %rdi
	callq	set_waiting_for_input
.LBB74_67:                              # %if.end.151
                                        #   in Loop: Header=BB74_22 Depth=1
	movq	update_tick, %rax
	cmpq	process_tick, %rax
	je	.LBB74_84
# BB#68:                                # %if.then.154
                                        #   in Loop: Header=BB74_22 Depth=1
	callq	kbd_on_hold_p
	testb	$1, %al
	jne	.LBB74_69
	jmp	.LBB74_72
.LBB74_69:                              # %if.then.156
                                        #   in Loop: Header=BB74_22 Depth=1
	jmp	.LBB74_70
.LBB74_70:                              # %do.body.157
                                        #   in Loop: Header=BB74_22 Depth=1
	leaq	-720(%rbp), %rax
	movl	$16, %ecx
                                        # kill: RCX<def> ECX<kill>
	xorl	%edx, %edx
	movq	%rax, -1352(%rbp)       # 8-byte Spill
	movl	%edx, %eax
	movq	-1352(%rbp), %rsi       # 8-byte Reload
	movq	%rsi, %rdi
	#APP
	cld
	rep
	stosq	%rax, %es:(%rdi)
	#NO_APP
	movl	%ecx, %eax
	movl	%eax, -852(%rbp)
	movl	%edi, %eax
	movl	%eax, -856(%rbp)
# BB#71:                                # %do.end.165
                                        #   in Loop: Header=BB74_22 Depth=1
	jmp	.LBB74_73
.LBB74_72:                              # %if.else.166
                                        #   in Loop: Header=BB74_22 Depth=1
	movabsq	$input_wait_mask, %rax
	movl	$128, %ecx
	movl	%ecx, %edx
	leaq	-720(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	memcpy
.LBB74_73:                              # %if.end.167
                                        #   in Loop: Header=BB74_22 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$write_mask, %rdx
	movl	$128, %eax
	movl	%eax, %esi
	leaq	-848(%rbp), %rdi
	movq	%rsi, -1360(%rbp)       # 8-byte Spill
	movq	%rdx, %rsi
	movq	-1360(%rbp), %rdx       # 8-byte Reload
	movq	%rcx, -1368(%rbp)       # 8-byte Spill
	callq	memcpy
	movq	-1368(%rbp), %rdi       # 8-byte Reload
	movq	-1368(%rbp), %rsi       # 8-byte Reload
	callq	make_timespec
	movq	%rax, -872(%rbp)
	movq	%rdx, -864(%rbp)
	movq	-872(%rbp), %rax
	movq	%rax, -352(%rbp)
	movq	-864(%rbp), %rax
	movq	%rax, -344(%rbp)
	movl	max_process_desc, %r8d
	cmpl	max_input_desc, %r8d
	jle	.LBB74_75
# BB#74:                                # %cond.true
                                        #   in Loop: Header=BB74_22 Depth=1
	movl	max_process_desc, %eax
	movl	%eax, -1372(%rbp)       # 4-byte Spill
	jmp	.LBB74_76
.LBB74_75:                              # %cond.false
                                        #   in Loop: Header=BB74_22 Depth=1
	movl	max_input_desc, %eax
	movl	%eax, -1372(%rbp)       # 4-byte Spill
.LBB74_76:                              # %cond.end
                                        #   in Loop: Header=BB74_22 Depth=1
	movl	-1372(%rbp), %eax       # 4-byte Reload
	addl	$1, %eax
	cmpl	$0, num_pending_connects
	movl	%eax, -1376(%rbp)       # 4-byte Spill
	jle	.LBB74_78
# BB#77:                                # %cond.true.175
                                        #   in Loop: Header=BB74_22 Depth=1
	leaq	-848(%rbp), %rax
	movq	%rax, -1384(%rbp)       # 8-byte Spill
	jmp	.LBB74_79
.LBB74_78:                              # %cond.false.176
                                        #   in Loop: Header=BB74_22 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1384(%rbp)       # 8-byte Spill
	jmp	.LBB74_79
.LBB74_79:                              # %cond.end.177
                                        #   in Loop: Header=BB74_22 Depth=1
	movq	-1384(%rbp), %rax       # 8-byte Reload
	leaq	-720(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	-352(%rbp), %r8
	movl	-1376(%rbp), %edi       # 4-byte Reload
	movq	%rdx, -1392(%rbp)       # 8-byte Spill
	movq	%rax, %rdx
	movq	-1392(%rbp), %rcx       # 8-byte Reload
	movq	-1392(%rbp), %r9        # 8-byte Reload
	callq	pselect
	cmpl	$0, %eax
	jg	.LBB74_83
# BB#80:                                # %if.then.182
                                        #   in Loop: Header=BB74_22 Depth=1
	callq	clear_waiting_for_input
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-40(%rbp), %rsi
	callq	status_notify
	movl	%eax, -408(%rbp)
	testb	$1, -17(%rbp)
	je	.LBB74_82
# BB#81:                                # %if.then.185
                                        #   in Loop: Header=BB74_22 Depth=1
	movl	$13, %edi
	callq	redisplay_preserve_echo_area
.LBB74_82:                              # %if.end.186
                                        #   in Loop: Header=BB74_22 Depth=1
	jmp	.LBB74_83
.LBB74_83:                              # %if.end.187
                                        #   in Loop: Header=BB74_22 Depth=1
	jmp	.LBB74_84
.LBB74_84:                              # %if.end.188
                                        #   in Loop: Header=BB74_22 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB74_87
# BB#85:                                # %land.lhs.true.190
                                        #   in Loop: Header=BB74_22 Depth=1
	movq	-40(%rbp), %rax
	movb	224(%rax), %cl
	shrb	$7, %cl
	testb	$1, %cl
	je	.LBB74_87
# BB#86:                                # %if.then.192
                                        #   in Loop: Header=BB74_22 Depth=1
	movq	-40(%rbp), %rdi
	callq	update_status
.LBB74_87:                              # %if.end.193
                                        #   in Loop: Header=BB74_22 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB74_110
# BB#88:                                # %land.lhs.true.195
                                        #   in Loop: Header=BB74_22 Depth=1
	movl	$820, %edi              # imm = 0x334
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -1400(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1400(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB74_110
# BB#89:                                # %land.lhs.true.200
                                        #   in Loop: Header=BB74_22 Depth=1
	movl	$293, %edi              # imm = 0x125
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -1408(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1408(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB74_110
# BB#90:                                # %if.then.205
	movb	$0, -873(%rbp)
	callq	clear_waiting_for_input
	movq	-40(%rbp), %rax
	cmpl	$0, 164(%rax)
	jl	.LBB74_106
# BB#91:                                # %if.then.208
	movl	$5, %esi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -336(%rbp)
.LBB74_92:                              # %while.body.211
                                        # =>This Inner Loop Header: Depth=1
	movq	-336(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	164(%rax), %esi
	callq	read_process_output
	movl	%eax, -880(%rbp)
	cmpl	$0, -880(%rbp)
	jge	.LBB74_99
# BB#93:                                # %if.then.216
                                        #   in Loop: Header=BB74_92 Depth=1
	callq	__errno_location
	cmpl	$5, (%rax)
	je	.LBB74_95
# BB#94:                                # %lor.lhs.false.220
                                        #   in Loop: Header=BB74_92 Depth=1
	callq	__errno_location
	cmpl	$11, (%rax)
	jne	.LBB74_96
.LBB74_95:                              # %if.then.224
	jmp	.LBB74_105
.LBB74_96:                              # %if.end.225
                                        #   in Loop: Header=BB74_92 Depth=1
	callq	__errno_location
	cmpl	$11, (%rax)
	jne	.LBB74_98
# BB#97:                                # %if.then.229
	jmp	.LBB74_105
.LBB74_98:                              # %if.end.230
                                        #   in Loop: Header=BB74_92 Depth=1
	jmp	.LBB74_104
.LBB74_99:                              # %if.else.231
                                        #   in Loop: Header=BB74_92 Depth=1
	movl	-408(%rbp), %eax
	cmpl	-880(%rbp), %eax
	jge	.LBB74_101
# BB#100:                               # %if.then.234
                                        #   in Loop: Header=BB74_92 Depth=1
	movl	-880(%rbp), %eax
	movl	%eax, -408(%rbp)
.LBB74_101:                             # %if.end.235
                                        #   in Loop: Header=BB74_92 Depth=1
	cmpl	$0, -880(%rbp)
	jne	.LBB74_103
# BB#102:                               # %if.then.238
	jmp	.LBB74_105
.LBB74_103:                             # %if.end.239
                                        #   in Loop: Header=BB74_92 Depth=1
	movb	$1, -873(%rbp)
.LBB74_104:                             # %if.end.240
                                        #   in Loop: Header=BB74_92 Depth=1
	jmp	.LBB74_92
.LBB74_105:                             # %while.end
	jmp	.LBB74_106
.LBB74_106:                             # %if.end.241
	testb	$1, -873(%rbp)
	je	.LBB74_109
# BB#107:                               # %land.lhs.true.244
	testb	$1, -17(%rbp)
	je	.LBB74_109
# BB#108:                               # %if.then.247
	movl	$10, %edi
	callq	redisplay_preserve_echo_area
.LBB74_109:                             # %if.end.248
	jmp	.LBB74_347
.LBB74_110:                             # %if.end.249
                                        #   in Loop: Header=BB74_22 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB74_115
# BB#111:                               # %land.lhs.true.251
                                        #   in Loop: Header=BB74_22 Depth=1
	cmpl	$0, -44(%rbp)
	je	.LBB74_115
# BB#112:                               # %if.then.253
                                        #   in Loop: Header=BB74_22 Depth=1
	movq	-40(%rbp), %rax
	cmpl	$0, 164(%rax)
	jge	.LBB74_114
# BB#113:                               # %if.then.257
	jmp	.LBB74_347
.LBB74_114:                             # %if.end.258
                                        #   in Loop: Header=BB74_22 Depth=1
	leaq	-184(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	164(%rax), %edi
	callq	fd_SET
	movl	$0, -320(%rbp)
	movb	$0, -313(%rbp)
	jmp	.LBB74_125
.LBB74_115:                             # %if.else.260
                                        #   in Loop: Header=BB74_22 Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -1416(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1416(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB74_117
# BB#116:                               # %if.then.264
                                        #   in Loop: Header=BB74_22 Depth=1
	movabsq	$non_process_wait_mask, %rax
	movl	$128, %ecx
	movl	%ecx, %edx
	leaq	-184(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	memcpy
	movl	$0, -320(%rbp)
	movb	$0, -313(%rbp)
	jmp	.LBB74_124
.LBB74_117:                             # %if.else.265
                                        #   in Loop: Header=BB74_22 Depth=1
	cmpl	$0, -16(%rbp)
	jne	.LBB74_119
# BB#118:                               # %if.then.267
                                        #   in Loop: Header=BB74_22 Depth=1
	movabsq	$non_keyboard_wait_mask, %rax
	movl	$128, %ecx
	movl	%ecx, %edx
	leaq	-184(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	memcpy
	jmp	.LBB74_120
.LBB74_119:                             # %if.else.268
                                        #   in Loop: Header=BB74_22 Depth=1
	movabsq	$input_wait_mask, %rax
	movl	$128, %ecx
	movl	%ecx, %edx
	leaq	-184(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	memcpy
.LBB74_120:                             # %if.end.269
                                        #   in Loop: Header=BB74_22 Depth=1
	movabsq	$write_mask, %rax
	movl	$128, %ecx
	movl	%ecx, %edx
	leaq	-312(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	memcpy
	cmpq	$0, -40(%rbp)
	je	.LBB74_122
# BB#121:                               # %cond.true.271
                                        #   in Loop: Header=BB74_22 Depth=1
	xorl	%eax, %eax
	movl	%eax, -1420(%rbp)       # 4-byte Spill
	jmp	.LBB74_123
.LBB74_122:                             # %cond.false.272
                                        #   in Loop: Header=BB74_22 Depth=1
	movl	process_output_delay_count, %eax
	movl	%eax, -1420(%rbp)       # 4-byte Spill
.LBB74_123:                             # %cond.end.273
                                        #   in Loop: Header=BB74_22 Depth=1
	movl	-1420(%rbp), %eax       # 4-byte Reload
	movl	%eax, -320(%rbp)
	movb	$1, -313(%rbp)
.LBB74_124:                             # %if.end.275
                                        #   in Loop: Header=BB74_22 Depth=1
	jmp	.LBB74_125
.LBB74_125:                             # %if.end.276
                                        #   in Loop: Header=BB74_22 Depth=1
	testb	$1, frame_garbaged
	je	.LBB74_130
# BB#126:                               # %land.lhs.true.279
                                        #   in Loop: Header=BB74_22 Depth=1
	testb	$1, -17(%rbp)
	je	.LBB74_130
# BB#127:                               # %if.then.282
                                        #   in Loop: Header=BB74_22 Depth=1
	callq	clear_waiting_for_input
	movl	$11, %edi
	callq	redisplay_preserve_echo_area
	cmpl	$0, -16(%rbp)
	jge	.LBB74_129
# BB#128:                               # %if.then.285
                                        #   in Loop: Header=BB74_22 Depth=1
	leaq	-352(%rbp), %rdi
	callq	set_waiting_for_input
.LBB74_129:                             # %if.end.286
                                        #   in Loop: Header=BB74_22 Depth=1
	jmp	.LBB74_130
.LBB74_130:                             # %if.end.287
                                        #   in Loop: Header=BB74_22 Depth=1
	movb	$0, -321(%rbp)
	cmpl	$0, -16(%rbp)
	jne	.LBB74_132
# BB#131:                               # %lor.lhs.false.289
                                        #   in Loop: Header=BB74_22 Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -1432(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1432(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB74_136
.LBB74_132:                             # %land.lhs.true.293
                                        #   in Loop: Header=BB74_22 Depth=1
	callq	detect_input_pending
	testb	$1, %al
	jne	.LBB74_133
	jmp	.LBB74_136
.LBB74_133:                             # %if.then.296
                                        #   in Loop: Header=BB74_22 Depth=1
	movl	$1, %eax
	xorl	%ecx, %ecx
	cmpl	$0, -16(%rbp)
	cmovnel	%ecx, %eax
	movl	%eax, -52(%rbp)
	movb	$1, -321(%rbp)
# BB#134:                               # %do.body.299
                                        #   in Loop: Header=BB74_22 Depth=1
	leaq	-184(%rbp), %rax
	movl	$16, %ecx
                                        # kill: RCX<def> ECX<kill>
	xorl	%edx, %edx
	movq	%rax, -1440(%rbp)       # 8-byte Spill
	movl	%edx, %eax
	movq	-1440(%rbp), %rsi       # 8-byte Reload
	movq	%rsi, %rdi
	#APP
	cld
	rep
	stosq	%rax, %es:(%rdi)
	#NO_APP
	movl	%ecx, %eax
	movl	%eax, -884(%rbp)
	movl	%edi, %eax
	movl	%eax, -888(%rbp)
# BB#135:                               # %do.end.307
                                        #   in Loop: Header=BB74_22 Depth=1
	jmp	.LBB74_206
.LBB74_136:                             # %if.else.308
                                        #   in Loop: Header=BB74_22 Depth=1
	testb	$1, process_output_skip
	je	.LBB74_156
# BB#137:                               # %land.lhs.true.311
                                        #   in Loop: Header=BB74_22 Depth=1
	cmpl	$0, -320(%rbp)
	jle	.LBB74_156
# BB#138:                               # %if.then.314
                                        #   in Loop: Header=BB74_22 Depth=1
	movq	-344(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -892(%rbp)
	cmpq	$0, -352(%rbp)
	jg	.LBB74_140
# BB#139:                               # %lor.lhs.false.318
                                        #   in Loop: Header=BB74_22 Depth=1
	cmpl	$50000000, -892(%rbp)   # imm = 0x2FAF080
	jle	.LBB74_141
.LBB74_140:                             # %if.then.321
                                        #   in Loop: Header=BB74_22 Depth=1
	movl	$50000000, -892(%rbp)   # imm = 0x2FAF080
.LBB74_141:                             # %if.end.322
                                        #   in Loop: Header=BB74_22 Depth=1
	movl	$0, -48(%rbp)
.LBB74_142:                             # %for.cond
                                        #   Parent Loop BB74_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -320(%rbp)
	movb	%cl, -1441(%rbp)        # 1-byte Spill
	jle	.LBB74_144
# BB#143:                               # %land.rhs
                                        #   in Loop: Header=BB74_142 Depth=2
	movl	-48(%rbp), %eax
	cmpl	max_process_desc, %eax
	setle	%cl
	movb	%cl, -1441(%rbp)        # 1-byte Spill
.LBB74_144:                             # %land.end
                                        #   in Loop: Header=BB74_142 Depth=2
	movb	-1441(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB74_145
	jmp	.LBB74_155
.LBB74_145:                             # %for.body
                                        #   in Loop: Header=BB74_142 Depth=2
	xorl	%edi, %edi
	movslq	-48(%rbp), %rax
	movq	chan_process(,%rax,8), %rax
	movq	%rax, -336(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -1456(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1456(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB74_147
# BB#146:                               # %if.then.331
                                        #   in Loop: Header=BB74_142 Depth=2
	jmp	.LBB74_154
.LBB74_147:                             # %if.end.332
                                        #   in Loop: Header=BB74_142 Depth=2
	movq	-336(%rbp), %rdi
	callq	XPROCESS
	cmpl	$0, 220(%rax)
	jle	.LBB74_153
# BB#148:                               # %if.then.336
                                        #   in Loop: Header=BB74_142 Depth=2
	movl	-320(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -320(%rbp)
	movq	-336(%rbp), %rdi
	callq	XPROCESS
	movb	224(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB74_150
# BB#149:                               # %if.then.341
                                        #   in Loop: Header=BB74_142 Depth=2
	jmp	.LBB74_154
.LBB74_150:                             # %if.end.342
                                        #   in Loop: Header=BB74_142 Depth=2
	leaq	-184(%rbp), %rsi
	movl	-48(%rbp), %edi
	callq	fd_CLR
	movb	$1, -497(%rbp)
	movq	-336(%rbp), %rdi
	callq	XPROCESS
	movb	224(%rax), %cl
	andb	$-5, %cl
	movb	%cl, 224(%rax)
	movq	-336(%rbp), %rdi
	callq	XPROCESS
	movl	220(%rax), %edx
	cmpl	-892(%rbp), %edx
	jge	.LBB74_152
# BB#151:                               # %if.then.351
                                        #   in Loop: Header=BB74_142 Depth=2
	movq	-336(%rbp), %rdi
	callq	XPROCESS
	movl	220(%rax), %ecx
	movl	%ecx, -892(%rbp)
.LBB74_152:                             # %if.end.354
                                        #   in Loop: Header=BB74_142 Depth=2
	jmp	.LBB74_153
.LBB74_153:                             # %if.end.355
                                        #   in Loop: Header=BB74_142 Depth=2
	jmp	.LBB74_154
.LBB74_154:                             # %for.inc
                                        #   in Loop: Header=BB74_142 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB74_142
.LBB74_155:                             # %for.end
                                        #   in Loop: Header=BB74_22 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movslq	-892(%rbp), %rsi
	callq	make_timespec
	movq	%rax, -912(%rbp)
	movq	%rdx, -904(%rbp)
	movq	-912(%rbp), %rax
	movq	%rax, -352(%rbp)
	movq	-904(%rbp), %rax
	movq	%rax, -344(%rbp)
	movb	$0, process_output_skip
.LBB74_156:                             # %if.end.359
                                        #   in Loop: Header=BB74_22 Depth=1
	cmpl	$0, -408(%rbp)
	jle	.LBB74_161
# BB#157:                               # %land.lhs.true.362
                                        #   in Loop: Header=BB74_22 Depth=1
	testb	$1, -497(%rbp)
	jne	.LBB74_161
# BB#158:                               # %land.lhs.true.364
                                        #   in Loop: Header=BB74_22 Depth=1
	cmpq	$0, -352(%rbp)
	jne	.LBB74_160
# BB#159:                               # %lor.lhs.false.367
                                        #   in Loop: Header=BB74_22 Depth=1
	cmpq	$10000000, -344(%rbp)   # imm = 0x989680
	jle	.LBB74_161
.LBB74_160:                             # %if.then.371
                                        #   in Loop: Header=BB74_22 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$10000000, %eax         # imm = 0x989680
	movl	%eax, %esi
	callq	make_timespec
	movq	%rax, -928(%rbp)
	movq	%rdx, -920(%rbp)
	movq	-928(%rbp), %rax
	movq	%rax, -352(%rbp)
	movq	-920(%rbp), %rax
	movq	%rax, -344(%rbp)
.LBB74_161:                             # %if.end.374
                                        #   in Loop: Header=BB74_22 Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -1464(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1464(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB74_171
# BB#162:                               # %land.lhs.true.378
                                        #   in Loop: Header=BB74_22 Depth=1
	cmpl	$0, -44(%rbp)
	jl	.LBB74_171
# BB#163:                               # %land.lhs.true.381
                                        #   in Loop: Header=BB74_22 Depth=1
	movq	-384(%rbp), %rdi
	movq	-376(%rbp), %rsi
	callq	timespec_valid_p
	testb	$1, %al
	jne	.LBB74_164
	jmp	.LBB74_171
.LBB74_164:                             # %land.lhs.true.384
                                        #   in Loop: Header=BB74_22 Depth=1
	movq	-384(%rbp), %rdi
	movq	-376(%rbp), %rsi
	movq	-352(%rbp), %rdx
	movq	-344(%rbp), %rcx
	callq	timespec_cmp
	cmpl	$0, %eax
	jge	.LBB74_171
# BB#165:                               # %if.then.388
                                        #   in Loop: Header=BB74_22 Depth=1
	movq	-432(%rbp), %rdi
	movq	-424(%rbp), %rsi
	callq	timespec_valid_p
	testb	$1, %al
	jne	.LBB74_167
# BB#166:                               # %if.then.390
                                        #   in Loop: Header=BB74_22 Depth=1
	callq	current_timespec
	movq	%rax, -944(%rbp)
	movq	%rdx, -936(%rbp)
	movq	-944(%rbp), %rax
	movq	%rax, -432(%rbp)
	movq	-936(%rbp), %rax
	movq	%rax, -424(%rbp)
.LBB74_167:                             # %if.end.393
                                        #   in Loop: Header=BB74_22 Depth=1
	movq	-432(%rbp), %rdi
	movq	-424(%rbp), %rsi
	movq	-352(%rbp), %rdx
	movq	-344(%rbp), %rcx
	callq	timespec_add
	movq	%rax, -960(%rbp)
	movq	%rdx, -952(%rbp)
	movq	-400(%rbp), %rdi
	movq	-392(%rbp), %rsi
	callq	timespec_valid_p
	testb	$1, %al
	jne	.LBB74_168
	jmp	.LBB74_169
.LBB74_168:                             # %lor.lhs.false.396
                                        #   in Loop: Header=BB74_22 Depth=1
	movq	-960(%rbp), %rdi
	movq	-952(%rbp), %rsi
	movq	-400(%rbp), %rdx
	movq	-392(%rbp), %rcx
	callq	timespec_cmp
	cmpl	$0, %eax
	jge	.LBB74_170
.LBB74_169:                             # %if.then.400
                                        #   in Loop: Header=BB74_22 Depth=1
	movq	-960(%rbp), %rax
	movq	%rax, -400(%rbp)
	movq	-952(%rbp), %rax
	movq	%rax, -392(%rbp)
.LBB74_170:                             # %if.end.401
                                        #   in Loop: Header=BB74_22 Depth=1
	movq	-384(%rbp), %rax
	movq	%rax, -352(%rbp)
	movq	-376(%rbp), %rax
	movq	%rax, -344(%rbp)
	jmp	.LBB74_172
.LBB74_171:                             # %if.else.402
                                        #   in Loop: Header=BB74_22 Depth=1
	callq	invalid_timespec
	movq	%rax, -976(%rbp)
	movq	%rdx, -968(%rbp)
	movq	-976(%rbp), %rax
	movq	%rax, -400(%rbp)
	movq	-968(%rbp), %rax
	movq	%rax, -392(%rbp)
.LBB74_172:                             # %if.end.405
                                        #   in Loop: Header=BB74_22 Depth=1
	cmpq	$0, -352(%rbp)
	jg	.LBB74_174
# BB#173:                               # %lor.lhs.false.409
                                        #   in Loop: Header=BB74_22 Depth=1
	cmpq	$0, -344(%rbp)
	jle	.LBB74_175
.LBB74_174:                             # %if.then.413
                                        #   in Loop: Header=BB74_22 Depth=1
	callq	invalid_timespec
	movq	%rax, -992(%rbp)
	movq	%rdx, -984(%rbp)
	movq	-992(%rbp), %rax
	movq	%rax, -432(%rbp)
	movq	-984(%rbp), %rax
	movq	%rax, -424(%rbp)
.LBB74_175:                             # %if.end.416
                                        #   in Loop: Header=BB74_22 Depth=1
	movl	max_process_desc, %eax
	cmpl	max_input_desc, %eax
	jle	.LBB74_177
# BB#176:                               # %cond.true.419
                                        #   in Loop: Header=BB74_22 Depth=1
	movl	max_process_desc, %eax
	movl	%eax, -1468(%rbp)       # 4-byte Spill
	jmp	.LBB74_178
.LBB74_177:                             # %cond.false.420
                                        #   in Loop: Header=BB74_22 Depth=1
	movl	max_input_desc, %eax
	movl	%eax, -1468(%rbp)       # 4-byte Spill
.LBB74_178:                             # %cond.end.421
                                        #   in Loop: Header=BB74_22 Depth=1
	movl	-1468(%rbp), %eax       # 4-byte Reload
	addl	$1, %eax
	testb	$1, -313(%rbp)
	movl	%eax, -1472(%rbp)       # 4-byte Spill
	je	.LBB74_180
# BB#179:                               # %cond.true.426
                                        #   in Loop: Header=BB74_22 Depth=1
	leaq	-312(%rbp), %rax
	movq	%rax, -1480(%rbp)       # 8-byte Spill
	jmp	.LBB74_181
.LBB74_180:                             # %cond.false.427
                                        #   in Loop: Header=BB74_22 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -1480(%rbp)       # 8-byte Spill
	jmp	.LBB74_181
.LBB74_181:                             # %cond.end.428
                                        #   in Loop: Header=BB74_22 Depth=1
	movq	-1480(%rbp), %rax       # 8-byte Reload
	leaq	-184(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	-352(%rbp), %r8
	movl	-1472(%rbp), %edi       # 4-byte Reload
	movq	%rdx, -1488(%rbp)       # 8-byte Spill
	movq	%rax, %rdx
	movq	-1488(%rbp), %rcx       # 8-byte Reload
	movq	-1488(%rbp), %r9        # 8-byte Reload
	callq	xg_select
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.LBB74_205
# BB#182:                               # %if.then.433
                                        #   in Loop: Header=BB74_22 Depth=1
	movl	$0, -1124(%rbp)
# BB#183:                               # %do.body.434
                                        #   in Loop: Header=BB74_22 Depth=1
	leaq	-1120(%rbp), %rax
	movl	$16, %ecx
                                        # kill: RCX<def> ECX<kill>
	xorl	%edx, %edx
	movq	%rax, -1496(%rbp)       # 8-byte Spill
	movl	%edx, %eax
	movq	-1496(%rbp), %rsi       # 8-byte Reload
	movq	%rsi, %rdi
	#APP
	cld
	rep
	stosq	%rax, %es:(%rdi)
	#NO_APP
	movl	%ecx, %eax
	movl	%eax, -1128(%rbp)
	movl	%edi, %eax
	movl	%eax, -1132(%rbp)
# BB#184:                               # %do.end.442
                                        #   in Loop: Header=BB74_22 Depth=1
	cmpq	$0, -40(%rbp)
	jne	.LBB74_197
# BB#185:                               # %if.then.444
                                        #   in Loop: Header=BB74_22 Depth=1
	movl	$0, -48(%rbp)
.LBB74_186:                             # %for.cond.445
                                        #   Parent Loop BB74_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$1024, -48(%rbp)        # imm = 0x400
	jge	.LBB74_196
# BB#187:                               # %for.body.448
                                        #   in Loop: Header=BB74_186 Depth=2
	xorl	%edi, %edi
	movslq	-48(%rbp), %rax
	movq	chan_process(,%rax,8), %rax
	movq	%rax, -1504(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1504(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB74_194
# BB#188:                               # %if.then.454
                                        #   in Loop: Header=BB74_186 Depth=2
	movslq	-48(%rbp), %rax
	movq	chan_process(,%rax,8), %rdi
	callq	XPROCESS
	movq	%rax, -1144(%rbp)
	cmpq	$0, -1144(%rbp)
	je	.LBB74_193
# BB#189:                               # %land.lhs.true.459
                                        #   in Loop: Header=BB74_186 Depth=2
	movq	-1144(%rbp), %rax
	movb	288(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB74_193
# BB#190:                               # %land.lhs.true.464
                                        #   in Loop: Header=BB74_186 Depth=2
	movq	-1144(%rbp), %rax
	cmpq	$0, 240(%rax)
	je	.LBB74_193
# BB#191:                               # %land.lhs.true.466
                                        #   in Loop: Header=BB74_186 Depth=2
	movq	-1144(%rbp), %rax
	movq	240(%rax), %rdi
	callq	emacs_gnutls_record_check_pending
	cmpq	$0, %rax
	jle	.LBB74_193
# BB#192:                               # %if.then.471
                                        #   in Loop: Header=BB74_186 Depth=2
	leaq	-1120(%rbp), %rsi
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	movq	-1144(%rbp), %rcx
	movl	164(%rcx), %edi
	callq	fd_SET
	movl	-1124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1124(%rbp)
.LBB74_193:                             # %if.end.475
                                        #   in Loop: Header=BB74_186 Depth=2
	jmp	.LBB74_194
.LBB74_194:                             # %if.end.476
                                        #   in Loop: Header=BB74_186 Depth=2
	jmp	.LBB74_195
.LBB74_195:                             # %for.inc.477
                                        #   in Loop: Header=BB74_186 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB74_186
.LBB74_196:                             # %for.end.479
                                        #   in Loop: Header=BB74_22 Depth=1
	jmp	.LBB74_202
.LBB74_197:                             # %if.else.480
                                        #   in Loop: Header=BB74_22 Depth=1
	movq	-40(%rbp), %rax
	movb	288(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB74_201
# BB#198:                               # %land.lhs.true.486
                                        #   in Loop: Header=BB74_22 Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, 240(%rax)
	je	.LBB74_201
# BB#199:                               # %land.lhs.true.489
                                        #   in Loop: Header=BB74_22 Depth=1
	movq	-40(%rbp), %rax
	movq	240(%rax), %rdi
	callq	emacs_gnutls_record_check_pending
	cmpq	$0, %rax
	jle	.LBB74_201
# BB#200:                               # %if.then.494
                                        #   in Loop: Header=BB74_22 Depth=1
	leaq	-1120(%rbp), %rsi
	movl	$1, -52(%rbp)
	movq	-40(%rbp), %rax
	movl	164(%rax), %edi
	callq	fd_SET
	movl	-1124(%rbp), %edi
	addl	$1, %edi
	movl	%edi, -1124(%rbp)
.LBB74_201:                             # %if.end.497
                                        #   in Loop: Header=BB74_22 Depth=1
	jmp	.LBB74_202
.LBB74_202:                             # %if.end.498
                                        #   in Loop: Header=BB74_22 Depth=1
	cmpl	$0, -1124(%rbp)
	je	.LBB74_204
# BB#203:                               # %if.then.500
                                        #   in Loop: Header=BB74_22 Depth=1
	movl	$128, %eax
	movl	%eax, %edx
	leaq	-1120(%rbp), %rcx
	leaq	-184(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	memcpy
.LBB74_204:                             # %if.end.501
                                        #   in Loop: Header=BB74_22 Depth=1
	jmp	.LBB74_205
.LBB74_205:                             # %if.end.502
                                        #   in Loop: Header=BB74_22 Depth=1
	jmp	.LBB74_206
.LBB74_206:                             # %if.end.503
                                        #   in Loop: Header=BB74_22 Depth=1
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -328(%rbp)
	callq	clear_waiting_for_input
	xorl	%edi, %edi
	callq	do_pending_window_change
	cmpl	$0, -52(%rbp)
	jne	.LBB74_225
# BB#207:                               # %if.then.507
                                        #   in Loop: Header=BB74_22 Depth=1
	movabsq	$9223372036854775807, %rdi # imm = 0x7FFFFFFFFFFFFFFF
	movl	$2000000000, %eax       # imm = 0x77359400
	movl	%eax, %esi
	callq	make_timespec
	movq	%rax, -1160(%rbp)
	movq	%rdx, -1152(%rbp)
	movq	-1160(%rbp), %rax
	movq	%rax, -1176(%rbp)
	movq	-1152(%rbp), %rax
	movq	%rax, -1168(%rbp)
	cmpl	$0, -404(%rbp)
	jge	.LBB74_209
# BB#208:                               # %if.then.511
	jmp	.LBB74_347
.LBB74_209:                             # %if.end.512
                                        #   in Loop: Header=BB74_22 Depth=1
	cmpl	$0, -404(%rbp)
	jne	.LBB74_211
# BB#210:                               # %if.then.515
                                        #   in Loop: Header=BB74_22 Depth=1
	movq	-368(%rbp), %rax
	movq	%rax, -1176(%rbp)
	movq	-360(%rbp), %rax
	movq	%rax, -1168(%rbp)
.LBB74_211:                             # %if.end.516
                                        #   in Loop: Header=BB74_22 Depth=1
	testb	$1, -497(%rbp)
	jne	.LBB74_220
# BB#212:                               # %land.lhs.true.518
                                        #   in Loop: Header=BB74_22 Depth=1
	cmpl	$0, -408(%rbp)
	jle	.LBB74_220
# BB#213:                               # %land.lhs.true.521
                                        #   in Loop: Header=BB74_22 Depth=1
	cmpq	$0, -352(%rbp)
	jg	.LBB74_215
# BB#214:                               # %lor.lhs.false.525
                                        #   in Loop: Header=BB74_22 Depth=1
	cmpq	$0, -344(%rbp)
	jle	.LBB74_220
.LBB74_215:                             # %if.then.529
                                        #   in Loop: Header=BB74_22 Depth=1
	movq	-400(%rbp), %rdi
	movq	-392(%rbp), %rsi
	callq	timespec_valid_p
	testb	$1, %al
	jne	.LBB74_217
# BB#216:                               # %if.then.531
	jmp	.LBB74_347
.LBB74_217:                             # %if.end.532
                                        #   in Loop: Header=BB74_22 Depth=1
	movq	-400(%rbp), %rdi
	movq	-392(%rbp), %rsi
	movq	-1176(%rbp), %rdx
	movq	-1168(%rbp), %rcx
	callq	timespec_cmp
	cmpl	$0, %eax
	jge	.LBB74_219
# BB#218:                               # %if.then.536
                                        #   in Loop: Header=BB74_22 Depth=1
	movq	-400(%rbp), %rax
	movq	%rax, -1176(%rbp)
	movq	-392(%rbp), %rax
	movq	%rax, -1168(%rbp)
.LBB74_219:                             # %if.end.537
                                        #   in Loop: Header=BB74_22 Depth=1
	jmp	.LBB74_220
.LBB74_220:                             # %if.end.538
                                        #   in Loop: Header=BB74_22 Depth=1
	movq	-1176(%rbp), %rdi
	movq	-1168(%rbp), %rsi
	movq	-1160(%rbp), %rdx
	movq	-1152(%rbp), %rcx
	callq	timespec_cmp
	cmpl	$0, %eax
	jge	.LBB74_224
# BB#221:                               # %if.then.542
                                        #   in Loop: Header=BB74_22 Depth=1
	callq	current_timespec
	movq	%rax, -1192(%rbp)
	movq	%rdx, -1184(%rbp)
	movq	-1192(%rbp), %rax
	movq	%rax, -432(%rbp)
	movq	-1184(%rbp), %rax
	movq	%rax, -424(%rbp)
	movq	-1176(%rbp), %rdi
	movq	-1168(%rbp), %rsi
	movq	-432(%rbp), %rdx
	movq	-424(%rbp), %rcx
	callq	timespec_cmp
	cmpl	$0, %eax
	jg	.LBB74_223
# BB#222:                               # %if.then.548
	jmp	.LBB74_347
.LBB74_223:                             # %if.end.549
                                        #   in Loop: Header=BB74_22 Depth=1
	jmp	.LBB74_224
.LBB74_224:                             # %if.end.550
                                        #   in Loop: Header=BB74_22 Depth=1
	jmp	.LBB74_225
.LBB74_225:                             # %if.end.551
                                        #   in Loop: Header=BB74_22 Depth=1
	cmpl	$0, -52(%rbp)
	jge	.LBB74_232
# BB#226:                               # %if.then.554
                                        #   in Loop: Header=BB74_22 Depth=1
	cmpl	$4, -328(%rbp)
	jne	.LBB74_228
# BB#227:                               # %if.then.557
                                        #   in Loop: Header=BB74_22 Depth=1
	movb	$1, -321(%rbp)
	jmp	.LBB74_231
.LBB74_228:                             # %if.else.558
	cmpl	$9, -328(%rbp)
	jne	.LBB74_230
# BB#229:                               # %if.then.561
	callq	emacs_abort
.LBB74_230:                             # %if.else.562
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$.L.str.32, %rdi
	movl	-328(%rbp), %edx
	movq	%rax, %rsi
	callq	report_file_errno
.LBB74_231:                             # %if.end.564
                                        #   in Loop: Header=BB74_22 Depth=1
	jmp	.LBB74_232
.LBB74_232:                             # %if.end.565
                                        #   in Loop: Header=BB74_22 Depth=1
	cmpl	$0, -16(%rbp)
	je	.LBB74_245
# BB#233:                               # %if.then.568
                                        #   in Loop: Header=BB74_22 Depth=1
	movl	timers_run, %eax
	movl	%eax, -1196(%rbp)
	movq	current_buffer, %rcx
	movq	%rcx, -1208(%rbp)
	movq	selected_window, %rcx
	movq	%rcx, -1216(%rbp)
	movb	$0, -1217(%rbp)
	movb	-17(%rbp), %dl
	andb	$1, %dl
	movzbl	%dl, %edi
	callq	detect_input_pending_run_timers
	testb	$1, %al
	jne	.LBB74_234
	jmp	.LBB74_237
.LBB74_234:                             # %if.then.574
                                        #   in Loop: Header=BB74_22 Depth=1
	movb	-17(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edi
	callq	swallow_events
	movb	-17(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edi
	callq	detect_input_pending_run_timers
	testb	$1, %al
	jne	.LBB74_235
	jmp	.LBB74_236
.LBB74_235:                             # %if.then.578
                                        #   in Loop: Header=BB74_22 Depth=1
	movb	$1, -1217(%rbp)
.LBB74_236:                             # %if.end.579
                                        #   in Loop: Header=BB74_22 Depth=1
	jmp	.LBB74_237
.LBB74_237:                             # %if.end.580
                                        #   in Loop: Header=BB74_22 Depth=1
	movl	timers_run, %eax
	cmpl	-1196(%rbp), %eax
	je	.LBB74_242
# BB#238:                               # %land.lhs.true.583
                                        #   in Loop: Header=BB74_22 Depth=1
	cmpl	$-1, waiting_for_user_input_p
	jne	.LBB74_242
# BB#239:                               # %land.lhs.true.586
                                        #   in Loop: Header=BB74_22 Depth=1
	movq	-1208(%rbp), %rax
	cmpq	current_buffer, %rax
	jne	.LBB74_241
# BB#240:                               # %lor.lhs.false.589
                                        #   in Loop: Header=BB74_22 Depth=1
	movq	-1216(%rbp), %rax
	cmpq	selected_window, %rax
	je	.LBB74_242
.LBB74_241:                             # %if.then.592
                                        #   in Loop: Header=BB74_22 Depth=1
	callq	record_asynch_buffer_change
.LBB74_242:                             # %if.end.593
                                        #   in Loop: Header=BB74_22 Depth=1
	testb	$1, -1217(%rbp)
	je	.LBB74_244
# BB#243:                               # %if.then.595
	jmp	.LBB74_347
.LBB74_244:                             # %if.end.596
                                        #   in Loop: Header=BB74_22 Depth=1
	jmp	.LBB74_245
.LBB74_245:                             # %if.end.597
                                        #   in Loop: Header=BB74_22 Depth=1
	cmpl	$0, -16(%rbp)
	je	.LBB74_248
# BB#246:                               # %land.lhs.true.600
                                        #   in Loop: Header=BB74_22 Depth=1
	callq	requeued_events_pending_p
	testb	$1, %al
	jne	.LBB74_247
	jmp	.LBB74_248
.LBB74_247:                             # %if.then.603
	jmp	.LBB74_347
.LBB74_248:                             # %if.end.604
                                        #   in Loop: Header=BB74_22 Depth=1
	cmpl	$0, -16(%rbp)
	jne	.LBB74_251
# BB#249:                               # %land.lhs.true.607
                                        #   in Loop: Header=BB74_22 Depth=1
	callq	detect_input_pending
	testb	$1, %al
	jne	.LBB74_250
	jmp	.LBB74_251
.LBB74_250:                             # %if.then.610
                                        #   in Loop: Header=BB74_22 Depth=1
	movb	-17(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edi
	callq	swallow_events
.LBB74_251:                             # %if.end.612
                                        #   in Loop: Header=BB74_22 Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -1512(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1512(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB74_254
# BB#252:                               # %land.lhs.true.616
                                        #   in Loop: Header=BB74_22 Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -1520(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1520(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB74_254
# BB#253:                               # %if.then.622
	jmp	.LBB74_347
.LBB74_254:                             # %if.end.623
                                        #   in Loop: Header=BB74_22 Depth=1
	cmpl	$0, -16(%rbp)
	je	.LBB74_259
# BB#255:                               # %land.lhs.true.625
                                        #   in Loop: Header=BB74_22 Depth=1
	testb	$1, interrupt_input
	je	.LBB74_259
# BB#256:                               # %land.lhs.true.628
                                        #   in Loop: Header=BB74_22 Depth=1
	leaq	-184(%rbp), %rdi
	callq	keyboard_bit_set
	testb	$1, %al
	jne	.LBB74_257
	jmp	.LBB74_259
.LBB74_257:                             # %land.lhs.true.631
                                        #   in Loop: Header=BB74_22 Depth=1
	testb	$1, noninteractive
	jne	.LBB74_259
# BB#258:                               # %if.then.633
                                        #   in Loop: Header=BB74_22 Depth=1
	movl	$29, %edi
	callq	handle_input_available_signal
.LBB74_259:                             # %if.end.634
                                        #   in Loop: Header=BB74_22 Depth=1
	cmpl	$0, -16(%rbp)
	jne	.LBB74_261
# BB#260:                               # %lor.lhs.false.636
                                        #   in Loop: Header=BB74_22 Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -1528(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1528(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB74_262
.LBB74_261:                             # %if.then.640
                                        #   in Loop: Header=BB74_22 Depth=1
	xorl	%edi, %edi
	callq	do_pending_window_change
.LBB74_262:                             # %if.end.641
                                        #   in Loop: Header=BB74_22 Depth=1
	testb	$1, -321(%rbp)
	jne	.LBB74_264
# BB#263:                               # %lor.lhs.false.644
                                        #   in Loop: Header=BB74_22 Depth=1
	cmpl	$0, -52(%rbp)
	jne	.LBB74_265
.LBB74_264:                             # %if.then.647
                                        #   in Loop: Header=BB74_22 Depth=1
	jmp	.LBB74_22
.LBB74_265:                             # %if.end.648
                                        #   in Loop: Header=BB74_22 Depth=1
	movl	$0, -48(%rbp)
.LBB74_266:                             # %for.cond.649
                                        #   Parent Loop BB74_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %eax
	cmpl	max_input_desc, %eax
	jg	.LBB74_275
# BB#267:                               # %for.body.652
                                        #   in Loop: Header=BB74_266 Depth=2
	movabsq	$fd_callback_info, %rax
	movslq	-48(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -1232(%rbp)
	movq	-1232(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB74_273
# BB#268:                               # %land.lhs.true.656
                                        #   in Loop: Header=BB74_266 Depth=2
	movq	-1232(%rbp), %rax
	movl	16(%rax), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB74_270
# BB#269:                               # %land.lhs.true.659
                                        #   in Loop: Header=BB74_266 Depth=2
	leaq	-184(%rbp), %rsi
	movl	-48(%rbp), %edi
	callq	fd_ISSET
	testb	$1, %al
	jne	.LBB74_272
.LBB74_270:                             # %lor.lhs.false.662
                                        #   in Loop: Header=BB74_266 Depth=2
	movq	-1232(%rbp), %rax
	movl	16(%rax), %ecx
	andl	$2, %ecx
	cmpl	$0, %ecx
	je	.LBB74_273
# BB#271:                               # %land.lhs.true.666
                                        #   in Loop: Header=BB74_266 Depth=2
	movabsq	$write_mask, %rsi
	movl	-48(%rbp), %edi
	callq	fd_ISSET
	testb	$1, %al
	jne	.LBB74_272
	jmp	.LBB74_273
.LBB74_272:                             # %if.then.669
                                        #   in Loop: Header=BB74_266 Depth=2
	movq	-1232(%rbp), %rax
	movq	(%rax), %rax
	movl	-48(%rbp), %edi
	movq	-1232(%rbp), %rcx
	movq	8(%rcx), %rsi
	callq	*%rax
.LBB74_273:                             # %if.end.671
                                        #   in Loop: Header=BB74_266 Depth=2
	jmp	.LBB74_274
.LBB74_274:                             # %for.inc.672
                                        #   in Loop: Header=BB74_266 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB74_266
.LBB74_275:                             # %for.end.674
                                        #   in Loop: Header=BB74_22 Depth=1
	movl	$0, -48(%rbp)
.LBB74_276:                             # %for.cond.675
                                        #   Parent Loop BB74_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %eax
	cmpl	max_process_desc, %eax
	jg	.LBB74_346
# BB#277:                               # %for.body.678
                                        #   in Loop: Header=BB74_276 Depth=2
	leaq	-184(%rbp), %rsi
	movl	-48(%rbp), %edi
	callq	fd_ISSET
	testb	$1, %al
	jne	.LBB74_278
	jmp	.LBB74_328
.LBB74_278:                             # %land.lhs.true.681
                                        #   in Loop: Header=BB74_276 Depth=2
	movabsq	$non_keyboard_wait_mask, %rsi
	movl	-48(%rbp), %edi
	callq	fd_ISSET
	testb	$1, %al
	jne	.LBB74_279
	jmp	.LBB74_328
.LBB74_279:                             # %land.lhs.true.684
                                        #   in Loop: Header=BB74_276 Depth=2
	movabsq	$non_process_wait_mask, %rsi
	movl	-48(%rbp), %edi
	callq	fd_ISSET
	testb	$1, %al
	jne	.LBB74_328
# BB#280:                               # %if.then.686
                                        #   in Loop: Header=BB74_276 Depth=2
	xorl	%edi, %edi
	movslq	-48(%rbp), %rax
	movq	chan_process(,%rax,8), %rax
	movq	%rax, -336(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -1536(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1536(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB74_282
# BB#281:                               # %if.then.693
                                        #   in Loop: Header=BB74_276 Depth=2
	jmp	.LBB74_345
.LBB74_282:                             # %if.end.694
                                        #   in Loop: Header=BB74_276 Depth=2
	movq	-336(%rbp), %rdi
	callq	XPROCESS
	movl	$625, %edi              # imm = 0x271
	movq	96(%rax), %rax
	movq	%rax, -1544(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1544(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB74_284
# BB#283:                               # %if.then.700
                                        #   in Loop: Header=BB74_276 Depth=2
	movq	-336(%rbp), %rdi
	movl	-48(%rbp), %esi
	callq	server_accept_connection
	jmp	.LBB74_345
.LBB74_284:                             # %if.end.701
                                        #   in Loop: Header=BB74_276 Depth=2
	movq	-336(%rbp), %rdi
	movl	-48(%rbp), %esi
	callq	read_process_output
	movl	%eax, -1236(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB74_286
# BB#285:                               # %lor.lhs.false.704
                                        #   in Loop: Header=BB74_276 Depth=2
	movq	-40(%rbp), %rax
	movq	-336(%rbp), %rdi
	movq	%rax, -1552(%rbp)       # 8-byte Spill
	callq	XPROCESS
	movq	-1552(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB74_288
.LBB74_286:                             # %land.lhs.true.708
                                        #   in Loop: Header=BB74_276 Depth=2
	movl	-408(%rbp), %eax
	cmpl	-1236(%rbp), %eax
	jge	.LBB74_288
# BB#287:                               # %if.then.711
                                        #   in Loop: Header=BB74_276 Depth=2
	movl	-1236(%rbp), %eax
	movl	%eax, -408(%rbp)
.LBB74_288:                             # %if.end.712
                                        #   in Loop: Header=BB74_276 Depth=2
	cmpl	$0, -1236(%rbp)
	jle	.LBB74_296
# BB#289:                               # %if.then.715
                                        #   in Loop: Header=BB74_276 Depth=2
	movq	-40(%rbp), %rax
	movq	-336(%rbp), %rdi
	movq	%rax, -1560(%rbp)       # 8-byte Spill
	callq	XPROCESS
	movq	-1560(%rbp), %rdi       # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB74_291
# BB#290:                               # %if.then.719
                                        #   in Loop: Header=BB74_276 Depth=2
	movl	$-1, -404(%rbp)
.LBB74_291:                             # %if.end.720
                                        #   in Loop: Header=BB74_276 Depth=2
	jmp	.LBB74_292
.LBB74_292:                             # %do.body.721
                                        #   in Loop: Header=BB74_276 Depth=2
	leaq	-184(%rbp), %rax
	movl	$16, %ecx
                                        # kill: RCX<def> ECX<kill>
	xorl	%edx, %edx
	movq	%rax, -1568(%rbp)       # 8-byte Spill
	movl	%edx, %eax
	movq	-1568(%rbp), %rsi       # 8-byte Reload
	movq	%rsi, %rdi
	#APP
	cld
	rep
	stosq	%rax, %es:(%rdi)
	#NO_APP
	movl	%ecx, %eax
	movl	%eax, -1240(%rbp)
	movl	%edi, %eax
	movl	%eax, -1244(%rbp)
# BB#293:                               # %do.end.729
                                        #   in Loop: Header=BB74_276 Depth=2
	testb	$1, -17(%rbp)
	je	.LBB74_295
# BB#294:                               # %if.then.731
                                        #   in Loop: Header=BB74_276 Depth=2
	movl	$12, %edi
	callq	redisplay_preserve_echo_area
.LBB74_295:                             # %if.end.732
                                        #   in Loop: Header=BB74_276 Depth=2
	jmp	.LBB74_327
.LBB74_296:                             # %if.else.733
                                        #   in Loop: Header=BB74_276 Depth=2
	cmpl	$-1, -1236(%rbp)
	jne	.LBB74_299
# BB#297:                               # %land.lhs.true.736
                                        #   in Loop: Header=BB74_276 Depth=2
	callq	__errno_location
	cmpl	$11, (%rax)
	jne	.LBB74_299
# BB#298:                               # %if.then.740
                                        #   in Loop: Header=BB74_276 Depth=2
	jmp	.LBB74_326
.LBB74_299:                             # %if.else.741
                                        #   in Loop: Header=BB74_276 Depth=2
	cmpl	$-1, -1236(%rbp)
	jne	.LBB74_302
# BB#300:                               # %land.lhs.true.744
                                        #   in Loop: Header=BB74_276 Depth=2
	callq	__errno_location
	cmpl	$11, (%rax)
	jne	.LBB74_302
# BB#301:                               # %if.then.748
                                        #   in Loop: Header=BB74_276 Depth=2
	jmp	.LBB74_325
.LBB74_302:                             # %if.else.749
                                        #   in Loop: Header=BB74_276 Depth=2
	cmpl	$-1, -1236(%rbp)
	jne	.LBB74_307
# BB#303:                               # %land.lhs.true.752
                                        #   in Loop: Header=BB74_276 Depth=2
	callq	__errno_location
	cmpl	$5, (%rax)
	jne	.LBB74_307
# BB#304:                               # %if.then.756
                                        #   in Loop: Header=BB74_276 Depth=2
	movq	-336(%rbp), %rdi
	callq	XPROCESS
	movabsq	$input_wait_mask, %rsi
	movq	%rax, -1256(%rbp)
	movl	-48(%rbp), %edi
	callq	fd_CLR
	movabsq	$non_keyboard_wait_mask, %rsi
	movl	-48(%rbp), %edi
	callq	fd_CLR
	movq	-1256(%rbp), %rax
	cmpl	$-2, 160(%rax)
	jne	.LBB74_306
# BB#305:                               # %if.then.761
                                        #   in Loop: Header=BB74_276 Depth=2
	movl	$401, %edi              # imm = 0x191
	movq	process_tick, %rax
	addq	$1, %rax
	movq	%rax, process_tick
	movq	-1256(%rbp), %rcx
	movq	%rax, 200(%rcx)
	movq	-1256(%rbp), %rax
	movq	%rax, -1576(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1576(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_status
.LBB74_306:                             # %if.end.764
                                        #   in Loop: Header=BB74_276 Depth=2
	jmp	.LBB74_324
.LBB74_307:                             # %if.else.765
                                        #   in Loop: Header=BB74_276 Depth=2
	cmpl	$0, -1236(%rbp)
	jne	.LBB74_312
# BB#308:                               # %land.lhs.true.768
                                        #   in Loop: Header=BB74_276 Depth=2
	movq	-336(%rbp), %rdi
	callq	XPROCESS
	movl	$699, %edi              # imm = 0x2BB
	movq	80(%rax), %rax
	movq	%rax, -1584(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1584(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB74_312
# BB#309:                               # %land.lhs.true.773
                                        #   in Loop: Header=BB74_276 Depth=2
	movq	-336(%rbp), %rdi
	callq	XPROCESS
	movl	$845, %edi              # imm = 0x34D
	movq	80(%rax), %rax
	movq	%rax, -1592(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1592(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB74_312
# BB#310:                               # %land.lhs.true.779
                                        #   in Loop: Header=BB74_276 Depth=2
	movq	-336(%rbp), %rdi
	callq	XPROCESS
	movl	$750, %edi              # imm = 0x2EE
	movq	80(%rax), %rax
	movq	%rax, -1600(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1600(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB74_312
# BB#311:                               # %if.then.785
                                        #   in Loop: Header=BB74_276 Depth=2
	jmp	.LBB74_323
.LBB74_312:                             # %if.else.786
                                        #   in Loop: Header=BB74_276 Depth=2
	cmpl	$0, -1236(%rbp)
	jne	.LBB74_317
# BB#313:                               # %land.lhs.true.789
                                        #   in Loop: Header=BB74_276 Depth=2
	movq	-336(%rbp), %rdi
	callq	XPROCESS
	movl	$750, %edi              # imm = 0x2EE
	movq	80(%rax), %rax
	movq	%rax, -1608(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1608(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB74_317
# BB#314:                               # %if.then.795
                                        #   in Loop: Header=BB74_276 Depth=2
	movq	process_tick, %rax
	addq	$1, %rax
	movq	%rax, process_tick
	movq	-336(%rbp), %rdi
	movq	%rax, -1616(%rbp)       # 8-byte Spill
	callq	XPROCESS
	movq	-1616(%rbp), %rdi       # 8-byte Reload
	movq	%rdi, 200(%rax)
	movq	-336(%rbp), %rdi
	callq	deactivate_process
	movq	-336(%rbp), %rdi
	callq	XPROCESS
	movl	$820, %edi              # imm = 0x334
	movq	96(%rax), %rax
	movq	%rax, -1624(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1624(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB74_316
# BB#315:                               # %if.then.804
                                        #   in Loop: Header=BB74_276 Depth=2
	movq	-336(%rbp), %rdi
	callq	XPROCESS
	movl	$387, %edi              # imm = 0x183
	movq	%rax, -1632(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	%edi, %esi
	movq	%rax, %rdi
	callq	list2
	movq	-1632(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_status
.LBB74_316:                             # %if.end.808
                                        #   in Loop: Header=BB74_276 Depth=2
	jmp	.LBB74_322
.LBB74_317:                             # %if.else.809
                                        #   in Loop: Header=BB74_276 Depth=2
	movq	process_tick, %rax
	addq	$1, %rax
	movq	%rax, process_tick
	movq	-336(%rbp), %rdi
	movq	%rax, -1640(%rbp)       # 8-byte Spill
	callq	XPROCESS
	movq	-1640(%rbp), %rdi       # 8-byte Reload
	movq	%rdi, 200(%rax)
	movq	-336(%rbp), %rdi
	callq	deactivate_process
	movq	-336(%rbp), %rdi
	callq	XPROCESS
	movb	224(%rax), %cl
	shrb	$7, %cl
	testb	$1, %cl
	je	.LBB74_319
# BB#318:                               # %if.then.818
                                        #   in Loop: Header=BB74_276 Depth=2
	movq	-336(%rbp), %rdi
	callq	XPROCESS
	movq	%rax, %rdi
	callq	update_status
.LBB74_319:                             # %if.end.820
                                        #   in Loop: Header=BB74_276 Depth=2
	movq	-336(%rbp), %rdi
	callq	XPROCESS
	movl	$820, %edi              # imm = 0x334
	movq	96(%rax), %rax
	movq	%rax, -1648(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1648(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB74_321
# BB#320:                               # %if.then.826
                                        #   in Loop: Header=BB74_276 Depth=2
	movq	-336(%rbp), %rdi
	callq	XPROCESS
	movl	$387, %edi              # imm = 0x183
	movq	%rax, -1656(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1026, %edi             # imm = 0x402
	movl	%edi, %esi
	movq	%rax, %rdi
	callq	list2
	movq	-1656(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_status
.LBB74_321:                             # %if.end.830
                                        #   in Loop: Header=BB74_276 Depth=2
	jmp	.LBB74_322
.LBB74_322:                             # %if.end.831
                                        #   in Loop: Header=BB74_276 Depth=2
	jmp	.LBB74_323
.LBB74_323:                             # %if.end.832
                                        #   in Loop: Header=BB74_276 Depth=2
	jmp	.LBB74_324
.LBB74_324:                             # %if.end.833
                                        #   in Loop: Header=BB74_276 Depth=2
	jmp	.LBB74_325
.LBB74_325:                             # %if.end.834
                                        #   in Loop: Header=BB74_276 Depth=2
	jmp	.LBB74_326
.LBB74_326:                             # %if.end.835
                                        #   in Loop: Header=BB74_276 Depth=2
	jmp	.LBB74_327
.LBB74_327:                             # %if.end.836
                                        #   in Loop: Header=BB74_276 Depth=2
	jmp	.LBB74_328
.LBB74_328:                             # %if.end.837
                                        #   in Loop: Header=BB74_276 Depth=2
	leaq	-312(%rbp), %rsi
	movl	-48(%rbp), %edi
	callq	fd_ISSET
	testb	$1, %al
	jne	.LBB74_329
	jmp	.LBB74_344
.LBB74_329:                             # %land.lhs.true.840
                                        #   in Loop: Header=BB74_276 Depth=2
	movabsq	$connect_wait_mask, %rsi
	movl	-48(%rbp), %edi
	callq	fd_ISSET
	testb	$1, %al
	jne	.LBB74_330
	jmp	.LBB74_344
.LBB74_330:                             # %if.then.843
                                        #   in Loop: Header=BB74_276 Depth=2
	movabsq	$connect_wait_mask, %rsi
	movl	-48(%rbp), %edi
	callq	fd_CLR
	movabsq	$write_mask, %rsi
	movl	-48(%rbp), %edi
	callq	fd_CLR
	movl	num_pending_connects, %edi
	addl	$-1, %edi
	movl	%edi, num_pending_connects
	cmpl	$0, %edi
	jge	.LBB74_332
# BB#331:                               # %if.then.848
	callq	emacs_abort
.LBB74_332:                             # %if.end.849
                                        #   in Loop: Header=BB74_276 Depth=2
	xorl	%edi, %edi
	movslq	-48(%rbp), %rax
	movq	chan_process(,%rax,8), %rax
	movq	%rax, -336(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -1664(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1664(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB74_334
# BB#333:                               # %if.then.855
                                        #   in Loop: Header=BB74_276 Depth=2
	jmp	.LBB74_345
.LBB74_334:                             # %if.end.856
                                        #   in Loop: Header=BB74_276 Depth=2
	movq	-336(%rbp), %rdi
	callq	XPROCESS
	movl	$1, %esi
	movl	$4, %edx
	leaq	-1268(%rbp), %r8
	leaq	-328(%rbp), %rdi
	movq	%rax, -1264(%rbp)
	movl	$4, -1268(%rbp)
	movl	-48(%rbp), %ecx
	movq	%rdi, -1672(%rbp)       # 8-byte Spill
	movl	%ecx, %edi
	movq	-1672(%rbp), %rcx       # 8-byte Reload
	callq	getsockopt
	cmpl	$0, %eax
	je	.LBB74_336
# BB#335:                               # %if.then.860
                                        #   in Loop: Header=BB74_276 Depth=2
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -328(%rbp)
.LBB74_336:                             # %if.end.862
                                        #   in Loop: Header=BB74_276 Depth=2
	cmpl	$0, -328(%rbp)
	je	.LBB74_338
# BB#337:                               # %if.then.864
                                        #   in Loop: Header=BB74_276 Depth=2
	movl	$401, %edi              # imm = 0x191
	movq	process_tick, %rax
	addq	$1, %rax
	movq	%rax, process_tick
	movq	-1264(%rbp), %rcx
	movq	%rax, 200(%rcx)
	movq	-1264(%rbp), %rax
	movq	%rax, -1680(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movslq	-328(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	list2
	movq	-1680(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_status
	movq	-336(%rbp), %rdi
	callq	deactivate_process
	jmp	.LBB74_343
.LBB74_338:                             # %if.else.871
                                        #   in Loop: Header=BB74_276 Depth=2
	movl	$820, %edi              # imm = 0x334
	movq	-1264(%rbp), %rax
	movq	%rax, -1688(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1688(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_status
	movabsq	$.L.str.38, %rdi
	movq	-336(%rbp), %rax
	movq	%rax, -1696(%rbp)       # 8-byte Spill
	callq	build_string
	movq	-1696(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	exec_sentinel
	xorl	%ecx, %ecx
	movq	-1264(%rbp), %rax
	cmpl	164(%rax), %ecx
	jg	.LBB74_342
# BB#339:                               # %land.lhs.true.877
                                        #   in Loop: Header=BB74_276 Depth=2
	movl	$901, %edi              # imm = 0x385
	movq	-1264(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -1704(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1704(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB74_342
# BB#340:                               # %land.lhs.true.881
                                        #   in Loop: Header=BB74_276 Depth=2
	movl	$901, %edi              # imm = 0x385
	movq	-1264(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -1712(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1712(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB74_342
# BB#341:                               # %if.then.885
                                        #   in Loop: Header=BB74_276 Depth=2
	movabsq	$input_wait_mask, %rsi
	movq	-1264(%rbp), %rax
	movl	164(%rax), %edi
	callq	fd_SET
	movabsq	$non_keyboard_wait_mask, %rsi
	movq	-1264(%rbp), %rax
	movl	164(%rax), %edi
	callq	fd_SET
.LBB74_342:                             # %if.end.888
                                        #   in Loop: Header=BB74_276 Depth=2
	jmp	.LBB74_343
.LBB74_343:                             # %if.end.889
                                        #   in Loop: Header=BB74_276 Depth=2
	jmp	.LBB74_344
.LBB74_344:                             # %if.end.890
                                        #   in Loop: Header=BB74_276 Depth=2
	jmp	.LBB74_345
.LBB74_345:                             # %for.inc.891
                                        #   in Loop: Header=BB74_276 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB74_276
.LBB74_346:                             # %for.end.893
                                        #   in Loop: Header=BB74_22 Depth=1
	jmp	.LBB74_22
.LBB74_347:                             # %while.end.894
	xorl	%edi, %edi
	movq	-416(%rbp), %rax
	movq	%rax, -1720(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1720(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	cmpl	$0, -16(%rbp)
	movq	%rax, -1728(%rbp)       # 8-byte Spill
	jl	.LBB74_357
# BB#348:                               # %if.then.899
	callq	clear_input_pending
# BB#349:                               # %do.body.900
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -1736(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1736(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB74_352
# BB#350:                               # %land.lhs.true.904
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -1744(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1744(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB74_352
# BB#351:                               # %if.then.908
	callq	process_quit_flag
	jmp	.LBB74_355
.LBB74_352:                             # %if.else.909
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB74_354
# BB#353:                               # %if.then.911
	callq	process_pending_signals
.LBB74_354:                             # %if.end.912
	jmp	.LBB74_355
.LBB74_355:                             # %if.end.913
	jmp	.LBB74_356
.LBB74_356:                             # %do.end.915
	jmp	.LBB74_357
.LBB74_357:                             # %if.end.916
	movl	-408(%rbp), %eax
	addq	$1744, %rsp             # imm = 0x6D0
	popq	%rbp
	retq
.Lfunc_end74:
	.size	wait_reading_process_output, .Lfunc_end74-wait_reading_process_output
	.cfi_endproc

	.align	16, 0x90
	.type	wait_reading_process_output_unwind,@function
wait_reading_process_output_unwind:     # @wait_reading_process_output_unwind
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
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	movl	%edi, waiting_for_user_input_p
	popq	%rbp
	retq
.Lfunc_end75:
	.size	wait_reading_process_output_unwind, .Lfunc_end75-wait_reading_process_output_unwind
	.cfi_endproc

	.align	16, 0x90
	.type	wait_reading_process_output_1,@function
wait_reading_process_output_1:          # @wait_reading_process_output_1
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
	popq	%rbp
	retq
.Lfunc_end76:
	.size	wait_reading_process_output_1, .Lfunc_end76-wait_reading_process_output_1
	.cfi_endproc

	.globl	kbd_on_hold_p
	.align	16, 0x90
	.type	kbd_on_hold_p,@function
kbd_on_hold_p:                          # @kbd_on_hold_p
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
	movb	kbd_is_on_hold, %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end77:
	.size	kbd_on_hold_p, .Lfunc_end77-kbd_on_hold_p
	.cfi_endproc

	.align	16, 0x90
	.type	read_process_output,@function
read_process_output:                    # @read_process_output
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
	subq	$4304, %rsp             # imm = 0x10D0
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movq	%rax, -40(%rbp)
	movslq	-20(%rbp), %rax
	movq	proc_decode_coding_system(,%rax,8), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movl	216(%rax), %esi
	movl	%esi, -52(%rbp)
	callq	SPECPDL_INDEX
	movq	%rax, -64(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB78_2
# BB#1:                                 # %if.then
	leaq	-4240(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	112(%rcx), %rdi
	movq	%rax, -4272(%rbp)       # 8-byte Spill
	callq	SDATA
	movslq	-52(%rbp), %rdx
	movq	-4272(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	memcpy
.LBB78_2:                               # %if.end
	movabsq	$datagram_address, %rax
	movslq	-20(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	je	.LBB78_4
# BB#3:                                 # %if.then.6
	movl	$4096, %eax             # imm = 0x1000
	movl	%eax, %edx
	xorl	%ecx, %ecx
	leaq	-4244(%rbp), %r9
	movabsq	$datagram_address, %rsi
	leaq	-4240(%rbp), %rdi
	movslq	-20(%rbp), %r8
	shlq	$4, %r8
	movq	%rsi, %r10
	addq	%r8, %r10
	movl	8(%r10), %eax
	movl	%eax, -4244(%rbp)
	movl	-20(%rbp), %eax
	movslq	-52(%rbp), %r8
	addq	%r8, %rdi
	movslq	-20(%rbp), %r8
	shlq	$4, %r8
	addq	%r8, %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -4256(%rbp)
	movq	-4256(%rbp), %r8
	movq	%rdi, -4280(%rbp)       # 8-byte Spill
	movl	%eax, %edi
	movq	-4280(%rbp), %rsi       # 8-byte Reload
	callq	recvfrom
	movq	%rax, -32(%rbp)
	jmp	.LBB78_30
.LBB78_4:                               # %if.else
	movslq	-20(%rbp), %rax
	cmpl	$0, proc_buffered_char(,%rax,4)
	setge	%cl
	andb	$1, %cl
	movb	%cl, -4257(%rbp)
	testb	$1, -4257(%rbp)
	je	.LBB78_6
# BB#5:                                 # %if.then.19
	movslq	-20(%rbp), %rax
	movl	proc_buffered_char(,%rax,4), %ecx
	movb	%cl, %dl
	movslq	-52(%rbp), %rax
	movb	%dl, -4240(%rbp,%rax)
	movslq	-20(%rbp), %rax
	movl	$-1, proc_buffered_char(,%rax,4)
.LBB78_6:                               # %if.end.27
	movq	-40(%rbp), %rax
	movb	288(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB78_9
# BB#7:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	cmpq	$0, 240(%rax)
	je	.LBB78_9
# BB#8:                                 # %if.then.30
	movl	$4096, %eax             # imm = 0x1000
	leaq	-4240(%rbp), %rcx
	movq	-40(%rbp), %rdi
	movslq	-52(%rbp), %rdx
	addq	%rdx, %rcx
	movb	-4257(%rbp), %sil
	andb	$1, %sil
	movzbl	%sil, %r8d
	movslq	%r8d, %rdx
	addq	%rdx, %rcx
	movb	-4257(%rbp), %sil
	andb	$1, %sil
	movzbl	%sil, %r8d
	subl	%r8d, %eax
	movslq	%eax, %rdx
	movq	%rcx, %rsi
	callq	emacs_gnutls_read
	movq	%rax, -32(%rbp)
	jmp	.LBB78_10
.LBB78_9:                               # %if.else.42
	movl	$4096, %eax             # imm = 0x1000
	leaq	-4240(%rbp), %rcx
	movl	-20(%rbp), %edi
	movslq	-52(%rbp), %rdx
	addq	%rdx, %rcx
	movb	-4257(%rbp), %sil
	andb	$1, %sil
	movzbl	%sil, %r8d
	movslq	%r8d, %rdx
	addq	%rdx, %rcx
	movb	-4257(%rbp), %sil
	andb	$1, %sil
	movzbl	%sil, %r8d
	subl	%r8d, %eax
	movslq	%eax, %rdx
	movq	%rcx, %rsi
	callq	emacs_read
	movq	%rax, -32(%rbp)
.LBB78_10:                              # %if.end.55
	cmpq	$0, -32(%rbp)
	jle	.LBB78_27
# BB#11:                                # %land.lhs.true.58
	movq	-40(%rbp), %rax
	movb	224(%rax), %cl
	andb	$3, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB78_27
# BB#12:                                # %if.then.63
	movq	-40(%rbp), %rax
	movl	220(%rax), %ecx
	movl	%ecx, -4264(%rbp)
	cmpq	$256, -32(%rbp)         # imm = 0x100
	jge	.LBB78_18
# BB#13:                                # %if.then.66
	cmpl	$70000000, -4264(%rbp)  # imm = 0x42C1D80
	jge	.LBB78_17
# BB#14:                                # %if.then.69
	cmpl	$0, -4264(%rbp)
	jne	.LBB78_16
# BB#15:                                # %if.then.72
	movl	process_output_delay_count, %eax
	addl	$1, %eax
	movl	%eax, process_output_delay_count
.LBB78_16:                              # %if.end.73
	movl	-4264(%rbp), %eax
	addl	$20000000, %eax         # imm = 0x1312D00
	movl	%eax, -4264(%rbp)
.LBB78_17:                              # %if.end.74
	jmp	.LBB78_24
.LBB78_18:                              # %if.else.75
	cmpl	$0, -4264(%rbp)
	jle	.LBB78_23
# BB#19:                                # %land.lhs.true.78
	movl	$4096, %eax             # imm = 0x1000
	movq	-32(%rbp), %rcx
	movb	-4257(%rbp), %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rdi
	cmpq	%rdi, %rcx
	jne	.LBB78_23
# BB#20:                                # %if.then.85
	movl	-4264(%rbp), %eax
	subl	$10000000, %eax         # imm = 0x989680
	movl	%eax, -4264(%rbp)
	cmpl	$0, -4264(%rbp)
	jne	.LBB78_22
# BB#21:                                # %if.then.89
	movl	process_output_delay_count, %eax
	addl	$-1, %eax
	movl	%eax, process_output_delay_count
.LBB78_22:                              # %if.end.90
	jmp	.LBB78_23
.LBB78_23:                              # %if.end.91
	jmp	.LBB78_24
.LBB78_24:                              # %if.end.92
	movl	-4264(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 220(%rcx)
	cmpl	$0, -4264(%rbp)
	je	.LBB78_26
# BB#25:                                # %if.then.95
	movq	-40(%rbp), %rax
	movb	224(%rax), %cl
	andb	$-5, %cl
	orb	$4, %cl
	movb	%cl, 224(%rax)
	movb	$1, process_output_skip
.LBB78_26:                              # %if.end.98
	jmp	.LBB78_27
.LBB78_27:                              # %if.end.99
	xorl	%eax, %eax
	movb	%al, %cl
	movb	-4257(%rbp), %dl
	andb	$1, %dl
	movzbl	%dl, %eax
	movl	%eax, %esi
	addq	-32(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	testb	$1, -4257(%rbp)
	movb	%cl, -4281(%rbp)        # 1-byte Spill
	je	.LBB78_29
# BB#28:                                # %land.rhs
	cmpq	$0, -32(%rbp)
	setle	%al
	movb	%al, -4281(%rbp)        # 1-byte Spill
.LBB78_29:                              # %land.end
	movb	-4281(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movslq	%ecx, %rdx
	addq	-32(%rbp), %rdx
	movq	%rdx, -32(%rbp)
.LBB78_30:                              # %if.end.109
	movq	-40(%rbp), %rax
	movl	$0, 216(%rax)
	cmpq	$0, -32(%rbp)
	jg	.LBB78_35
# BB#31:                                # %if.then.113
	cmpq	$0, -32(%rbp)
	jl	.LBB78_33
# BB#32:                                # %lor.lhs.false
	movq	-48(%rbp), %rax
	movl	8(%rax), %ecx
	shrl	$14, %ecx
	andl	$31, %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	je	.LBB78_34
.LBB78_33:                              # %if.then.119
	movq	-32(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB78_36
.LBB78_34:                              # %if.end.121
	movq	-48(%rbp), %rax
	movl	8(%rax), %ecx
	shrl	$14, %ecx
	andl	$31, %ecx
	orl	$1, %ecx
	movl	8(%rax), %edx
	andl	$31, %ecx
	shll	$14, %ecx
	andl	$-507905, %edx          # imm = 0xFFFFFFFFFFF83FFF
	orl	%ecx, %edx
	movl	%edx, 8(%rax)
.LBB78_35:                              # %if.end.129
	movslq	-52(%rbp), %rax
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	globals+416, %rax
	movq	%rax, -72(%rbp)
	callq	record_unwind_current_buffer
	leaq	-4240(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rcx
	callq	read_and_dispose_of_process_output
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	%rax, globals+416
	movq	-64(%rbp), %rax
	movq	%rax, -4296(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-4296(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	-32(%rbp), %rcx
	movl	%ecx, %r8d
	movl	%r8d, -4(%rbp)
	movq	%rax, -4304(%rbp)       # 8-byte Spill
.LBB78_36:                              # %return
	movl	-4(%rbp), %eax
	addq	$4304, %rsp             # imm = 0x10D0
	popq	%rbp
	retq
.Lfunc_end78:
	.size	read_process_output, .Lfunc_end78-read_process_output
	.cfi_endproc

	.align	16, 0x90
	.type	keyboard_bit_set,@function
keyboard_bit_set:                       # @keyboard_bit_set
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
	movq	%rdi, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB79_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	max_input_desc, %eax
	jg	.LBB79_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB79_1 Depth=1
	movl	-20(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	fd_ISSET
	testb	$1, %al
	jne	.LBB79_3
	jmp	.LBB79_6
.LBB79_3:                               # %land.lhs.true
                                        #   in Loop: Header=BB79_1 Depth=1
	movabsq	$input_wait_mask, %rsi
	movl	-20(%rbp), %edi
	callq	fd_ISSET
	testb	$1, %al
	jne	.LBB79_4
	jmp	.LBB79_6
.LBB79_4:                               # %land.lhs.true.2
                                        #   in Loop: Header=BB79_1 Depth=1
	movabsq	$non_keyboard_wait_mask, %rsi
	movl	-20(%rbp), %edi
	callq	fd_ISSET
	testb	$1, %al
	jne	.LBB79_6
# BB#5:                                 # %if.then
	movb	$1, -1(%rbp)
	jmp	.LBB79_9
.LBB79_6:                               # %if.end
                                        #   in Loop: Header=BB79_1 Depth=1
	jmp	.LBB79_7
.LBB79_7:                               # %for.inc
                                        #   in Loop: Header=BB79_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB79_1
.LBB79_8:                               # %for.end
	movb	$0, -1(%rbp)
.LBB79_9:                               # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end79:
	.size	keyboard_bit_set, .Lfunc_end79-keyboard_bit_set
	.cfi_endproc

	.align	16, 0x90
	.type	server_accept_connection,@function
server_accept_connection:               # @server_accept_connection
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
	subq	$1136, %rsp             # imm = 0x470
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	callq	XPROCESS
	leaq	-212(%rbp), %rdx
	movl	$524288, %ecx           # imm = 0x80000
	leaq	-208(%rbp), %rdi
	movq	%rax, -80(%rbp)
	movl	$112, -212(%rbp)
	movl	-12(%rbp), %esi
	movq	%rdi, -232(%rbp)
	movq	-232(%rbp), %rax
	movl	%esi, %edi
	movq	%rax, %rsi
	callq	accept4
	movl	%eax, -92(%rbp)
	cmpl	$0, -92(%rbp)
	jge	.LBB80_8
# BB#1:                                 # %if.then
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -236(%rbp)
	cmpl	$11, -236(%rbp)
	jne	.LBB80_3
# BB#2:                                 # %if.then.4
	jmp	.LBB80_43
.LBB80_3:                               # %if.end
	cmpl	$11, -236(%rbp)
	jne	.LBB80_5
# BB#4:                                 # %if.then.6
	jmp	.LBB80_43
.LBB80_5:                               # %if.end.7
	xorl	%edi, %edi
	movq	-80(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -848(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-848(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB80_7
# BB#6:                                 # %if.then.10
	xorl	%edi, %edi
	movq	-80(%rbp), %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rsi
	movq	%rsi, -856(%rbp)        # 8-byte Spill
	movq	%rax, -864(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.84, %rdi
	movq	%rax, -872(%rbp)        # 8-byte Spill
	callq	build_string
	movslq	-236(%rbp), %rsi
	shlq	$2, %rsi
	addq	$2, %rsi
	movq	%rsi, %rdi
	movq	%rax, -880(%rbp)        # 8-byte Spill
	callq	Fnumber_to_string
	movabsq	$.L.str.85, %rdi
	movq	%rax, -888(%rbp)        # 8-byte Spill
	callq	build_string
	movq	-880(%rbp), %rdi        # 8-byte Reload
	movq	-888(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	concat3
	movq	-864(%rbp), %rdi        # 8-byte Reload
	movq	-856(%rbp), %rsi        # 8-byte Reload
	movq	-872(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	call3
	movq	%rax, -896(%rbp)        # 8-byte Spill
.LBB80_7:                               # %if.end.18
	jmp	.LBB80_43
.LBB80_8:                               # %if.end.19
	callq	SPECPDL_INDEX
	movq	%rax, -224(%rbp)
	movl	-92(%rbp), %esi
	movl	$close_file_unwind, %ecx
	movl	%ecx, %edi
	callq	record_unwind_protect_int
	movq	connect_counter(%rip), %rax
	incq	%rax
	movq	%rax, connect_counter(%rip)
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -72(%rbp)
	movzwl	-208(%rbp), %ecx
	movl	%ecx, %esi
	subl	$1, %esi
	movl	%ecx, -900(%rbp)        # 4-byte Spill
	movl	%esi, -904(%rbp)        # 4-byte Spill
	je	.LBB80_15
	jmp	.LBB80_44
.LBB80_44:                              # %if.end.19
	movl	-900(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -908(%rbp)        # 4-byte Spill
	je	.LBB80_9
	jmp	.LBB80_45
.LBB80_45:                              # %if.end.19
	movl	-900(%rbp), %eax        # 4-byte Reload
	subl	$10, %eax
	movl	%eax, -912(%rbp)        # 4-byte Spill
	je	.LBB80_10
	jmp	.LBB80_16
.LBB80_9:                               # %sw.bb
	movl	$4, %esi
	leaq	-288(%rbp), %rax
	movabsq	$.L.str, %rcx
	leaq	-208(%rbp), %rdx
	addq	$4, %rdx
	movq	%rdx, -248(%rbp)
	movq	$11, -288(%rbp)
	movq	$-1, -280(%rbp)
	movq	$0, -272(%rbp)
	movq	%rcx, -264(%rbp)
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movl	$5, %esi
	movl	%esi, %edi
	leaq	-328(%rbp), %rsi
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -328(%rbp)
	movq	-248(%rbp), %rax
	movzbl	(%rax), %r8d
	movl	%r8d, %eax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -320(%rbp)
	movq	-248(%rbp), %rax
	movzbl	1(%rax), %r8d
	movl	%r8d, %eax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -312(%rbp)
	movq	-248(%rbp), %rax
	movzbl	2(%rax), %r8d
	movl	%r8d, %eax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -304(%rbp)
	movq	-248(%rbp), %rax
	movzbl	3(%rax), %r8d
	movl	%r8d, %eax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -296(%rbp)
	callq	Fformat
	movq	%rax, -64(%rbp)
	movzwl	-206(%rbp), %edi
	callq	ntohs
	movl	$4, %esi
	leaq	-368(%rbp), %rcx
	movabsq	$.L.str.86, %rdx
	movzwl	%ax, %edi
	movl	%edi, %r9d
	shlq	$2, %r9
	addq	$2, %r9
	movq	%r9, -72(%rbp)
	movq	$8, -368(%rbp)
	movq	$-1, -360(%rbp)
	movq	$0, -352(%rbp)
	movq	%rdx, -344(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	movl	$3, %esi
	movl	%esi, %edi
	leaq	-392(%rbp), %rsi
	movq	%rax, -336(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -392(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -384(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -376(%rbp)
	callq	Fformat
	movq	%rax, -32(%rbp)
	jmp	.LBB80_17
.LBB80_10:                              # %sw.bb.67
	movl	$4, %esi
	leaq	-520(%rbp), %rax
	movabsq	$.L.str.2, %rcx
	leaq	-208(%rbp), %rdx
	addq	$8, %rdx
	movq	%rdx, -472(%rbp)
	movq	$23, -520(%rbp)
	movq	$-1, -512(%rbp)
	movq	$0, -504(%rbp)
	movq	%rcx, -496(%rbp)
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -488(%rbp)
	movq	-488(%rbp), %rax
	movq	%rax, -464(%rbp)
	movl	$0, -476(%rbp)
.LBB80_11:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -476(%rbp)
	jge	.LBB80_14
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB80_11 Depth=1
	movslq	-476(%rbp), %rax
	movq	-472(%rbp), %rcx
	movzwl	(%rcx,%rax,2), %edi
	callq	ntohs
	movzwl	%ax, %edi
	movl	%edi, %ecx
	shlq	$2, %rcx
	addq	$2, %rcx
	movl	-476(%rbp), %edi
	addl	$1, %edi
	movslq	%edi, %rdx
	movq	%rcx, -464(%rbp,%rdx,8)
# BB#13:                                # %for.inc
                                        #   in Loop: Header=BB80_11 Depth=1
	movl	-476(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -476(%rbp)
	jmp	.LBB80_11
.LBB80_14:                              # %for.end
	movl	$9, %eax
	movl	%eax, %edi
	leaq	-464(%rbp), %rsi
	callq	Fformat
	movq	%rax, -64(%rbp)
	movzwl	-206(%rbp), %edi
	callq	ntohs
	movl	$4, %esi
	leaq	-560(%rbp), %rcx
	movabsq	$.L.str.87, %rdx
	movzwl	%ax, %edi
	movl	%edi, %r8d
	shlq	$2, %r8
	addq	$2, %r8
	movq	%r8, -72(%rbp)
	movq	$10, -560(%rbp)
	movq	$-1, -552(%rbp)
	movq	$0, -544(%rbp)
	movq	%rdx, -536(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	movl	$3, %esi
	movl	%esi, %edi
	leaq	-584(%rbp), %rsi
	movq	%rax, -528(%rbp)
	movq	-528(%rbp), %rax
	movq	%rax, -584(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -576(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -568(%rbp)
	callq	Fformat
	movq	%rax, -32(%rbp)
	jmp	.LBB80_17
.LBB80_15:                              # %sw.bb.111
	jmp	.LBB80_16
.LBB80_16:                              # %sw.default
	movq	connect_counter, %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdi
	callq	Fnumber_to_string
	movl	$4, %esi
	leaq	-624(%rbp), %rdi
	movabsq	$.L.str.88, %rcx
	movq	%rax, -32(%rbp)
	movq	$2, -624(%rbp)
	movq	$-1, -616(%rbp)
	movq	$0, -608(%rbp)
	movq	%rcx, -600(%rbp)
	callq	make_lisp_ptr
	movl	$4, %esi
	leaq	-664(%rbp), %rcx
	movabsq	$.L.str.89, %rdi
	movq	%rax, -592(%rbp)
	movq	$1, -664(%rbp)
	movq	$-1, -656(%rbp)
	movq	$0, -648(%rbp)
	movq	%rdi, -640(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	movq	%rax, -632(%rbp)
	movq	-592(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-632(%rbp), %rdx
	callq	concat3
	movq	%rax, -32(%rbp)
.LBB80_17:                              # %sw.epilog
	movl	$564, %edi              # imm = 0x234
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -920(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-920(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB80_20
# BB#18:                                # %lor.lhs.false
	movl	$901, %edi              # imm = 0x385
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-928(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB80_20
# BB#19:                                # %if.then.139
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
	jmp	.LBB80_26
.LBB80_20:                              # %if.else
	xorl	%edi, %edi
	movq	-80(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -936(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-936(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB80_22
# BB#21:                                # %if.then.145
	movq	-48(%rbp), %rdi
	callq	Fbuffer_name
	movq	%rax, -48(%rbp)
	jmp	.LBB80_23
.LBB80_22:                              # %if.else.147
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB80_23:                              # %if.end.149
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -944(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-944(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB80_25
# BB#24:                                # %if.then.153
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	concat2
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	Fget_buffer_create
	movq	%rax, -48(%rbp)
.LBB80_25:                              # %if.end.156
	jmp	.LBB80_26
.LBB80_26:                              # %if.end.157
	movq	-80(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	concat2
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	make_process
	movl	$4, %esi
	movl	$2048, %edx             # imm = 0x800
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movslq	-92(%rbp), %rdi
	movq	%rax, chan_process(,%rdi,8)
	movl	-92(%rbp), %edi
	movb	$0, %al
	callq	rpl_fcntl
	movq	-24(%rbp), %rdi
	movl	%eax, -948(%rbp)        # 4-byte Spill
	callq	XPROCESS
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	64(%rax), %rdi
	callq	Fcopy_sequence
	movl	$116, %edi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -960(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -968(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-960(%rbp), %rdi        # 8-byte Reload
	movq	-968(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fplist_put
	movl	$63, %edi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -976(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdx
	movq	-976(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_put
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -984(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-984(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB80_28
# BB#27:                                # %if.then.174
	movl	$117, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -992(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdx
	movq	-992(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_put
	movq	%rax, -56(%rbp)
.LBB80_28:                              # %if.end.177
	movl	$108, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	leaq	-208(%rbp), %rcx
	movl	-212(%rbp), %esi
	movq	%rcx, %rdi
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	callq	conv_sockaddr_to_lisp
	movq	-1000(%rbp), %rdi       # 8-byte Reload
	movq	-1008(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	Fplist_put
	leaq	-212(%rbp), %rdx
	leaq	-208(%rbp), %rcx
	movq	%rax, -56(%rbp)
	movl	$112, -212(%rbp)
	movl	-92(%rbp), %edi
	movq	%rcx, -672(%rbp)
	movq	-672(%rbp), %rsi
	callq	getsockname
	cmpl	$0, %eax
	jne	.LBB80_30
# BB#29:                                # %if.then.189
	movl	$77, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -1016(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	leaq	-208(%rbp), %rcx
	movl	-212(%rbp), %esi
	movq	%rcx, %rdi
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	callq	conv_sockaddr_to_lisp
	movq	-1016(%rbp), %rdi       # 8-byte Reload
	movq	-1024(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	callq	Fplist_put
	movq	%rax, -56(%rbp)
.LBB80_30:                              # %if.end.194
	movq	-88(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	pset_childp
	movq	-88(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	72(%rsi), %rsi
	movq	%rdi, -1032(%rbp)       # 8-byte Spill
	movq	%rsi, %rdi
	callq	Fcopy_sequence
	movq	-1032(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_plist
	movl	$699, %edi              # imm = 0x2BB
	movq	-88(%rbp), %rax
	movq	%rax, -1040(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1040(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_type
	movq	-88(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	pset_buffer
	movq	-88(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	40(%rax), %rsi
	callq	pset_sentinel
	movq	-88(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	32(%rax), %rsi
	callq	pset_filter
	xorl	%edi, %edi
	movq	-88(%rbp), %rax
	movq	%rax, -1048(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1048(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_command
	movl	$820, %edi              # imm = 0x334
	movq	-88(%rbp), %rax
	movl	$0, 160(%rax)
	movq	specpdl, %rax
	movq	-224(%rbp), %rsi
	shlq	$5, %rsi
	addq	%rsi, %rax
	movq	%rax, specpdl_ptr
	movl	-92(%rbp), %ecx
	movq	-88(%rbp), %rax
	movl	%ecx, 172(%rax)
	movl	-92(%rbp), %ecx
	movq	-88(%rbp), %rax
	movl	%ecx, 164(%rax)
	movl	-92(%rbp), %ecx
	movq	-88(%rbp), %rax
	movl	%ecx, 168(%rax)
	movq	-88(%rbp), %rax
	movq	%rax, -1056(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1056(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_status
	movl	$901, %edi              # imm = 0x385
	movq	-88(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -1064(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1064(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB80_32
# BB#31:                                # %if.then.205
	movabsq	$input_wait_mask, %rsi
	movl	-92(%rbp), %edi
	callq	fd_SET
	movabsq	$non_keyboard_wait_mask, %rsi
	movl	-92(%rbp), %edi
	callq	fd_SET
.LBB80_32:                              # %if.end.206
	movl	-92(%rbp), %eax
	cmpl	max_process_desc, %eax
	jle	.LBB80_34
# BB#33:                                # %if.then.209
	movl	-92(%rbp), %eax
	movl	%eax, max_process_desc
.LBB80_34:                              # %if.end.210
	movq	-88(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	104(%rax), %rsi
	callq	pset_decode_coding_system
	movq	-88(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	120(%rax), %rsi
	callq	pset_encode_coding_system
	movq	-24(%rbp), %rdi
	callq	setup_process_coding_systems
	movq	-88(%rbp), %rdi
	movq	empty_unibyte_string, %rsi
	callq	pset_decoding_buf
	movq	-88(%rbp), %rax
	movl	$0, 216(%rax)
	movq	-88(%rbp), %rdi
	movq	empty_unibyte_string, %rsi
	callq	pset_encoding_buf
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -1072(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1072(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB80_36
# BB#35:                                # %cond.true
	xorl	%eax, %eax
	movl	%eax, -1076(%rbp)       # 4-byte Spill
	jmp	.LBB80_37
.LBB80_36:                              # %cond.false
	movq	-80(%rbp), %rax
	movb	224(%rax), %cl
	shrb	$5, %cl
	andb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -1076(%rbp)       # 4-byte Spill
.LBB80_37:                              # %cond.end
	movl	-1076(%rbp), %eax       # 4-byte Reload
	movl	$4, %esi
	leaq	-712(%rbp), %rcx
	movabsq	$.L.str.90, %rdx
	cmpl	$0, %eax
	setne	%dil
	movq	-88(%rbp), %r8
	andb	$1, %dil
	movb	224(%r8), %r9b
	shlb	$5, %dil
	andb	$-33, %r9b
	orb	%dil, %r9b
	movb	%r9b, 224(%r8)
	movq	$1, -712(%rbp)
	movq	$-1, -704(%rbp)
	movq	$0, -696(%rbp)
	movq	%rdx, -688(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	movl	$4, %esi
	leaq	-752(%rbp), %rcx
	movabsq	$.L.str.85, %rdx
	movq	%rax, -680(%rbp)
	movq	$1, -752(%rbp)
	movq	$-1, -744(%rbp)
	movq	$0, -736(%rbp)
	movq	%rdx, -728(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	movq	%rax, -720(%rbp)
	movq	-64(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB80_38
	jmp	.LBB80_39
.LBB80_38:                              # %cond.true.237
	movq	-64(%rbp), %rax
	movq	%rax, -1088(%rbp)       # 8-byte Spill
	jmp	.LBB80_40
.LBB80_39:                              # %cond.false.238
	movq	-680(%rbp), %rax
	movq	%rax, -1088(%rbp)       # 8-byte Spill
.LBB80_40:                              # %cond.end.239
	movq	-1088(%rbp), %rax       # 8-byte Reload
	xorl	%edi, %edi
	movq	%rax, -760(%rbp)
	movq	-80(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -1096(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1096(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB80_42
# BB#41:                                # %if.then.245
	movl	$4, %esi
	leaq	-800(%rbp), %rax
	movabsq	$.L.str.91, %rcx
	movq	$12, -800(%rbp)
	movq	$-1, -792(%rbp)
	movq	$0, -784(%rbp)
	movq	%rcx, -776(%rbp)
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -768(%rbp)
	movq	-80(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-768(%rbp), %rax
	movq	-760(%rbp), %rcx
	movq	-720(%rbp), %r8
	movq	%rdi, -1104(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -1112(%rbp)       # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -1120(%rbp)       # 8-byte Spill
	movq	%r8, %rdx
	callq	concat3
	movq	-1104(%rbp), %rdi       # 8-byte Reload
	movq	-1112(%rbp), %rsi       # 8-byte Reload
	movq	-1120(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	callq	call3
	movq	%rax, -1128(%rbp)       # 8-byte Spill
.LBB80_42:                              # %if.end.257
	movl	$4, %esi
	leaq	-840(%rbp), %rax
	movabsq	$.L.str.92, %rcx
	movq	$10, -840(%rbp)
	movq	$-1, -832(%rbp)
	movq	$0, -824(%rbp)
	movq	%rcx, -816(%rbp)
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -808(%rbp)
	movq	-24(%rbp), %rdi
	movq	-808(%rbp), %rax
	movq	-760(%rbp), %rsi
	movq	-720(%rbp), %rdx
	movq	%rdi, -1136(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	concat3
	movq	-1136(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	exec_sentinel
.LBB80_43:                              # %return
	addq	$1136, %rsp             # imm = 0x470
	popq	%rbp
	retq
.Lfunc_end80:
	.size	server_accept_connection, .Lfunc_end80-server_accept_connection
	.cfi_endproc

	.align	16, 0x90
	.type	deactivate_process,@function
deactivate_process:                     # @deactivate_process
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
	movq	-8(%rbp), %rdi
	callq	XPROCESS
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	emacs_gnutls_deinit
	movq	-24(%rbp), %rdi
	cmpl	$0, 220(%rdi)
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jle	.LBB81_4
# BB#1:                                 # %if.then
	movl	process_output_delay_count, %eax
	addl	$-1, %eax
	movl	%eax, process_output_delay_count
	cmpl	$0, %eax
	jge	.LBB81_3
# BB#2:                                 # %if.then.3
	movl	$0, process_output_delay_count
.LBB81_3:                               # %if.end
	movq	-24(%rbp), %rax
	movl	$0, 220(%rax)
	movq	-24(%rbp), %rax
	movb	224(%rax), %cl
	andb	$-5, %cl
	movb	%cl, 224(%rax)
.LBB81_4:                               # %if.end.5
	movl	$0, -28(%rbp)
.LBB81_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$6, -28(%rbp)
	jge	.LBB81_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB81_5 Depth=1
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	$172, %rcx
	shlq	$2, %rax
	addq	%rax, %rcx
	movq	%rcx, %rdi
	callq	close_process_fd
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB81_5 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB81_5
.LBB81_8:                               # %for.end
	movq	-24(%rbp), %rax
	movl	164(%rax), %ecx
	movl	%ecx, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jl	.LBB81_23
# BB#9:                                 # %if.then.8
	movabsq	$datagram_address, %rax
	movq	-24(%rbp), %rcx
	movl	$-1, 164(%rcx)
	movq	-24(%rbp), %rcx
	movl	$-1, 168(%rcx)
	movslq	-12(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	je	.LBB81_11
# BB#10:                                # %if.then.13
	movabsq	$datagram_address, %rax
	movslq	-12(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	xfree
	movabsq	$datagram_address, %rax
	movslq	-12(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdi
	addq	%rcx, %rdi
	movq	$0, (%rdi)
	movslq	-12(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	$0, 8(%rax)
.LBB81_11:                              # %if.end.22
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$input_wait_mask, %rsi
	movslq	-12(%rbp), %rcx
	movq	%rax, chan_process(,%rcx,8)
	movl	-12(%rbp), %edi
	callq	fd_CLR
	movabsq	$non_keyboard_wait_mask, %rsi
	movl	-12(%rbp), %edi
	callq	fd_CLR
	movabsq	$connect_wait_mask, %rsi
	movl	-12(%rbp), %edi
	callq	fd_ISSET
	testb	$1, %al
	jne	.LBB81_12
	jmp	.LBB81_15
.LBB81_12:                              # %if.then.27
	movabsq	$connect_wait_mask, %rsi
	movl	-12(%rbp), %edi
	callq	fd_CLR
	movabsq	$write_mask, %rsi
	movl	-12(%rbp), %edi
	callq	fd_CLR
	movl	num_pending_connects, %edi
	addl	$-1, %edi
	movl	%edi, num_pending_connects
	cmpl	$0, %edi
	jge	.LBB81_14
# BB#13:                                # %if.then.30
	callq	emacs_abort
.LBB81_14:                              # %if.end.31
	jmp	.LBB81_15
.LBB81_15:                              # %if.end.32
	movl	-12(%rbp), %eax
	cmpl	max_process_desc, %eax
	jne	.LBB81_22
# BB#16:                                # %if.then.34
	movl	-12(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB81_17:                              # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -32(%rbp)
# BB#18:                                # %do.cond
                                        #   in Loop: Header=BB81_17 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	xorl	%eax, %eax
	cmpl	-32(%rbp), %eax
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jg	.LBB81_20
# BB#19:                                # %land.rhs
                                        #   in Loop: Header=BB81_17 Depth=1
	xorl	%edi, %edi
	movslq	-32(%rbp), %rax
	movq	chan_process(,%rax,8), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	movb	%dl, -41(%rbp)          # 1-byte Spill
.LBB81_20:                              # %land.end
                                        #   in Loop: Header=BB81_17 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB81_17
# BB#21:                                # %do.end
	movl	-32(%rbp), %eax
	movl	%eax, max_process_desc
.LBB81_22:                              # %if.end.42
	jmp	.LBB81_23
.LBB81_23:                              # %if.end.43
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end81:
	.size	deactivate_process, .Lfunc_end81-deactivate_process
	.cfi_endproc

	.align	16, 0x90
	.type	exec_sentinel,@function
exec_sentinel:                          # @exec_sentinel
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	XPROCESS
	movq	%rax, -40(%rbp)
	callq	SPECPDL_INDEX
	movq	%rax, -48(%rbp)
	movb	running_asynch_code, %cl
	andb	$1, %cl
	movb	%cl, -49(%rbp)
	movl	waiting_for_user_input_p, %edx
	movl	%edx, -56(%rbp)
	testb	$1, inhibit_sentinels
	je	.LBB82_2
# BB#1:                                 # %if.then
	jmp	.LBB82_10
.LBB82_2:                               # %if.end
	movq	globals+416, %rax
	movq	%rax, -32(%rbp)
	callq	record_unwind_current_buffer
	movl	$546, %edi              # imm = 0x222
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -24(%rbp)
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movl	$604, %edi              # imm = 0x25C
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	testb	$1, -49(%rbp)
	je	.LBB82_4
# BB#3:                                 # %if.then.9
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fmatch_data
	movq	%rax, -64(%rbp)
	callq	restore_search_regs
	callq	record_unwind_save_match_data
	movl	$901, %edi              # imm = 0x385
	movq	-64(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fset_match_data
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB82_4:                               # %if.end.16
	movb	$1, running_asynch_code
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	list3
	xorl	%edi, %edi
	movq	globals+432, %rdx
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB82_6
# BB#5:                                 # %cond.true
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB82_7
.LBB82_6:                               # %cond.false
	movl	$372, %edi              # imm = 0x174
	callq	builtin_lisp_symbol
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB82_7:                               # %cond.end
	movq	-136(%rbp), %rax        # 8-byte Reload
	movabsq	$read_process_output_call, %rdi
	movabsq	$exec_sentinel_error_handler, %rcx
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	internal_condition_case_1
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	restore_search_regs
	movb	-49(%rbp), %r8b
	andb	$1, %r8b
	movb	%r8b, running_asynch_code
	movq	-32(%rbp), %rax
	movq	%rax, globals+416
	movl	-56(%rbp), %r9d
	movl	%r9d, waiting_for_user_input_p
	cmpl	$-1, waiting_for_user_input_p
	jne	.LBB82_9
# BB#8:                                 # %if.then.25
	callq	record_asynch_buffer_change
.LBB82_9:                               # %if.end.26
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB82_10:                              # %return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end82:
	.size	exec_sentinel, .Lfunc_end82-exec_sentinel
	.cfi_endproc

	.globl	Finternal_default_process_filter
	.align	16, 0x90
	.type	Finternal_default_process_filter,@function
Finternal_default_process_filter:       # @Finternal_default_process_filter
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
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_PROCESS
	movq	-8(%rbp), %rdi
	callq	XPROCESS
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB83_39
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB83_39
# BB#2:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdi
	callq	Fset_buffer
	xorl	%edi, %edi
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	movq	%rcx, -32(%rbp)
	movq	current_buffer, %rcx
	movq	744(%rcx), %rcx
	addq	$0, %rcx
	movq	%rcx, -96(%rbp)
	movq	current_buffer, %rcx
	movq	56(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movq	current_buffer, %rcx
	movq	752(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movq	current_buffer, %rcx
	movq	768(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	movq	current_buffer, %rcx
	movq	760(%rcx), %rcx
	movq	%rcx, -64(%rbp)
	movq	current_buffer, %rcx
	movq	776(%rcx), %rcx
	movq	%rcx, -72(%rbp)
	movq	current_buffer, %rcx
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_read_only
	movq	-24(%rbp), %rax
	movq	88(%rax), %rdi
	callq	XMARKER
	cmpq	$0, 8(%rax)
	je	.LBB83_4
# BB#3:                                 # %if.then.12
	movq	-24(%rbp), %rax
	movq	88(%rax), %rdi
	callq	set_point_from_marker
	jmp	.LBB83_5
.LBB83_4:                               # %if.else
	movq	current_buffer, %rax
	movq	768(%rax), %rdi
	movq	current_buffer, %rax
	movq	776(%rax), %rsi
	callq	set_point_both
.LBB83_5:                               # %if.end
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -80(%rbp)
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -88(%rbp)
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	cmpq	%rcx, %rax
	jg	.LBB83_7
# BB#6:                                 # %land.lhs.true.24
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jle	.LBB83_8
.LBB83_7:                               # %if.then.29
	callq	Fwiden
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB83_8:                               # %if.end.31
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %edi
	movq	-16(%rbp), %rax
	movl	%edi, -156(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	callq	STRING_MULTIBYTE
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %esi
	movl	-156(%rbp), %r8d        # 4-byte Reload
	cmpl	%esi, %r8d
	je	.LBB83_13
# BB#9:                                 # %if.then.37
	movq	-16(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB83_10
	jmp	.LBB83_11
.LBB83_10:                              # %cond.true
	movq	-16(%rbp), %rdi
	callq	Fstring_as_unibyte
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB83_12
.LBB83_11:                              # %cond.false
	movq	-16(%rbp), %rdi
	callq	Fstring_to_multibyte
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB83_12:                              # %cond.end
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, -16(%rbp)
.LBB83_13:                              # %if.end.42
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SCHARS
	movq	-16(%rbp), %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	SBYTES
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-176(%rbp), %rdx        # 8-byte Reload
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-192(%rbp), %rsi        # 8-byte Reload
	movq	-192(%rbp), %rdx        # 8-byte Reload
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	callq	insert_from_string_before_markers
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB83_14
	jmp	.LBB83_28
.LBB83_14:                              # %land.lhs.true.48
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdi
	callq	XBUFFER
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	cmpq	current_buffer, %rax
	je	.LBB83_28
# BB#15:                                # %if.then.53
	movq	-24(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	56(%rax), %rsi
	movq	-104(%rbp), %rax
	cmpq	current_buffer, %rax
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	jne	.LBB83_17
# BB#16:                                # %cond.true.58
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB83_21
.LBB83_17:                              # %cond.false.61
	xorl	%edi, %edi
	movq	-104(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB83_19
# BB#18:                                # %cond.true.65
	movq	-104(%rbp), %rax
	movq	736(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	jmp	.LBB83_20
.LBB83_19:                              # %cond.false.67
	movq	-104(%rbp), %rax
	movq	360(%rax), %rdi
	callq	marker_position
	movq	%rax, -232(%rbp)        # 8-byte Spill
.LBB83_20:                              # %cond.end.70
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB83_21:                              # %cond.end.72
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rcx
	cmpq	current_buffer, %rcx
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jne	.LBB83_23
# BB#22:                                # %cond.true.76
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB83_27
.LBB83_23:                              # %cond.false.79
	xorl	%edi, %edi
	movq	-104(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB83_25
# BB#24:                                # %cond.true.84
	movq	-104(%rbp), %rax
	movq	744(%rax), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	jmp	.LBB83_26
.LBB83_25:                              # %cond.false.86
	movq	-104(%rbp), %rax
	movq	360(%rax), %rdi
	callq	marker_byte_position
	movq	%rax, -264(%rbp)        # 8-byte Spill
.LBB83_26:                              # %cond.end.89
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB83_27:                              # %cond.end.91
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	-208(%rbp), %rsi        # 8-byte Reload
	movq	-240(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	set_marker_both
	movq	%rax, -272(%rbp)        # 8-byte Spill
	jmp	.LBB83_29
.LBB83_28:                              # %if.else.94
	movq	-24(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	56(%rax), %rsi
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	movq	744(%rcx), %rcx
	addq	$0, %rcx
	movq	%rax, %rdx
	callq	set_marker_both
	movq	%rax, -280(%rbp)        # 8-byte Spill
.LBB83_29:                              # %if.end.102
	movl	$23, update_mode_lines
	movq	-32(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jl	.LBB83_31
# BB#30:                                # %if.then.105
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	subq	-80(%rbp), %rax
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	subq	-88(%rbp), %rax
	addq	-96(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB83_31:                              # %if.end.113
	movq	-48(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jle	.LBB83_33
# BB#32:                                # %if.then.116
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	subq	-80(%rbp), %rax
	addq	-48(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	subq	-88(%rbp), %rax
	addq	-64(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB83_33:                              # %if.end.125
	movq	-56(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jl	.LBB83_35
# BB#34:                                # %if.then.128
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	subq	-80(%rbp), %rax
	addq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	subq	-88(%rbp), %rax
	addq	-72(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB83_35:                              # %if.end.137
	movq	-48(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	752(%rcx), %rax
	jne	.LBB83_37
# BB#36:                                # %lor.lhs.false
	movq	-56(%rbp), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	je	.LBB83_38
.LBB83_37:                              # %if.then.144
	movq	-48(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-56(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	Fnarrow_to_region
	movq	%rax, -288(%rbp)        # 8-byte Spill
.LBB83_38:                              # %if.end.149
	movq	current_buffer, %rdi
	movq	-40(%rbp), %rsi
	callq	bset_read_only
	movq	-32(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	set_point_both
.LBB83_39:                              # %if.end.150
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end83:
	.size	Finternal_default_process_filter, .Lfunc_end83-Finternal_default_process_filter
	.cfi_endproc

	.globl	Fprocess_send_region
	.align	16, 0x90
	.type	Fprocess_send_region,@function
Fprocess_send_region:                   # @Fprocess_send_region
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	get_process
	leaq	-16(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	movq	%rax, -32(%rbp)
	callq	validate_region
	movq	current_buffer, %rdi
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -40(%rbp)
	movq	current_buffer, %rdi
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	cmpq	8(%rdx), %rax
	jge	.LBB84_3
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	8(%rcx), %rax
	jle	.LBB84_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	move_gap_both
.LBB84_3:                               # %if.end
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	jl	.LBB84_5
# BB#4:                                 # %cond.true
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB84_6
.LBB84_5:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB84_6
.LBB84_6:                               # %cond.end
	movq	-64(%rbp), %rax         # 8-byte Reload
	addq	-40(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	-48(%rbp), %rcx
	subq	-40(%rbp), %rcx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	Fcurrent_buffer
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	send_process
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end84:
	.size	Fprocess_send_region, .Lfunc_end84-Fprocess_send_region
	.cfi_endproc

	.align	16, 0x90
	.type	send_process,@function
send_process:                           # @send_process
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
	subq	$352, %rsp              # imm = 0x160
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	XPROCESS
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movb	224(%rax), %r8b
	shrb	$7, %r8b
	testb	$1, %r8b
	je	.LBB85_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rdi
	callq	update_status
.LBB85_2:                               # %if.end
	movl	$820, %edi              # imm = 0x334
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB85_4
# BB#3:                                 # %if.then.2
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdi
	callq	SDATA
	movabsq	$.L.str.43, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB85_4:                               # %if.end.4
	movq	-40(%rbp), %rax
	cmpl	$0, 168(%rax)
	jge	.LBB85_6
# BB#5:                                 # %if.then.6
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdi
	callq	SDATA
	movabsq	$.L.str.94, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB85_6:                               # %if.end.9
	movq	-40(%rbp), %rax
	movslq	168(%rax), %rax
	movq	proc_encode_coding_system(,%rax,8), %rax
	movq	%rax, -56(%rbp)
	movq	Vcoding_system_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_KEY
	movq	%rax, globals+1240
	movq	-32(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB85_7
	jmp	.LBB85_8
.LBB85_7:                               # %land.lhs.true
	movq	-32(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB85_11
.LBB85_8:                               # %lor.lhs.false
	movq	-32(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB85_9
	jmp	.LBB85_10
.LBB85_9:                               # %land.lhs.true.16
	movq	-32(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	312(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB85_11
.LBB85_10:                              # %lor.lhs.false.20
	movl	$901, %edi              # imm = 0x385
	movq	-32(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB85_14
.LBB85_11:                              # %if.then.23
	movq	-40(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	complement_process_encoding_system
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_encode_coding_system
	movq	globals+1240, %rax
	movq	-40(%rbp), %rsi
	cmpq	120(%rsi), %rax
	je	.LBB85_13
# BB#12:                                # %if.then.27
	movq	-40(%rbp), %rax
	movq	120(%rax), %rdi
	movq	-56(%rbp), %rsi
	callq	setup_coding_system
	movq	-40(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, globals+1240
.LBB85_13:                              # %if.end.30
	movq	-56(%rbp), %rax
	movl	8(%rax), %ecx
	andl	$-524289, %ecx          # imm = 0xFFFFFFFFFFF7FFFF
	orl	$524288, %ecx           # imm = 0x80000
	movl	%ecx, 8(%rax)
	jmp	.LBB85_21
.LBB85_14:                              # %if.else
	movq	-56(%rbp), %rax
	movl	8(%rax), %ecx
	andl	$-524289, %ecx          # imm = 0xFFFFFFFFFFF7FFFF
	movl	%ecx, 8(%rax)
	movq	-56(%rbp), %rax
	movl	8(%rax), %ecx
	shrl	$19, %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	jne	.LBB85_17
# BB#15:                                # %lor.lhs.false.40
	movq	-56(%rbp), %rax
	movl	8(%rax), %ecx
	andl	$16383, %ecx            # imm = 0x3FFF
	andl	$2048, %ecx             # imm = 0x800
	cmpl	$0, %ecx
	jne	.LBB85_17
# BB#16:                                # %lor.lhs.false.43
	movq	-56(%rbp), %rax
	movl	8(%rax), %ecx
	shrl	$14, %ecx
	andl	$31, %ecx
	andl	$2, %ecx
	cmpl	$0, %ecx
	je	.LBB85_20
.LBB85_17:                              # %if.then.49
	movq	-56(%rbp), %rax
	movl	8(%rax), %ecx
	andl	$16383, %ecx            # imm = 0x3FFF
	andl	$512, %ecx              # imm = 0x200
	cmpl	$0, %ecx
	je	.LBB85_19
# BB#18:                                # %if.then.55
	movl	$901, %edi              # imm = 0x385
	movq	-56(%rbp), %rax
	movl	8(%rax), %ecx
	shrl	$14, %ecx
	andl	$31, %ecx
	orl	$1, %ecx
	movl	8(%rax), %edx
	andl	$31, %ecx
	shll	$14, %ecx
	andl	$-507905, %edx          # imm = 0xFFFFFFFFFFF83FFF
	orl	%ecx, %edx
	movl	%edx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.44, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	send_process
	movq	-56(%rbp), %rax
	movl	8(%rax), %r8d
	shrl	$14, %r8d
	andl	$31, %r8d
	andl	$1, %r8d
	movl	8(%rax), %r9d
	andl	$31, %r8d
	shll	$14, %r8d
	andl	$-507905, %r9d          # imm = 0xFFFFFFFFFFF83FFF
	orl	%r8d, %r9d
	movl	%r9d, 8(%rax)
.LBB85_19:                              # %if.end.74
	movq	globals+1240, %rdi
	callq	raw_text_coding_system
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	setup_coding_system
	movq	-56(%rbp), %rax
	movl	8(%rax), %ecx
	andl	$-524289, %ecx          # imm = 0xFFFFFFFFFFF7FFFF
	movl	%ecx, 8(%rax)
.LBB85_20:                              # %if.end.79
	jmp	.LBB85_21
.LBB85_21:                              # %if.end.80
	movq	-56(%rbp), %rax
	movl	8(%rax), %ecx
	andl	$-1048577, %ecx         # imm = 0xFFFFFFFFFFEFFFFF
	movl	%ecx, 8(%rax)
	movq	-56(%rbp), %rax
	movl	8(%rax), %ecx
	shrl	$19, %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	jne	.LBB85_24
# BB#22:                                # %lor.lhs.false.88
	movq	-56(%rbp), %rax
	movl	8(%rax), %ecx
	andl	$16383, %ecx            # imm = 0x3FFF
	andl	$2048, %ecx             # imm = 0x800
	cmpl	$0, %ecx
	jne	.LBB85_24
# BB#23:                                # %lor.lhs.false.94
	movq	-56(%rbp), %rax
	movl	8(%rax), %ecx
	shrl	$14, %ecx
	andl	$31, %ecx
	andl	$2, %ecx
	cmpl	$0, %ecx
	je	.LBB85_34
.LBB85_24:                              # %if.then.101
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx
	movq	%rax, 488(%rcx)
	movq	-32(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB85_25
	jmp	.LBB85_29
.LBB85_25:                              # %if.then.104
	movq	current_buffer, %rax
	movq	%rax, -104(%rbp)
	movq	-32(%rbp), %rdi
	callq	XBUFFER
	movq	%rax, %rdi
	callq	set_buffer_internal
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -88(%rbp)
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -96(%rbp)
	movq	-16(%rbp), %rax
	movq	current_buffer, %rdi
	movq	720(%rdi), %rdi
	movq	(%rdi), %rdi
	subq	%rdi, %rax
	movq	-16(%rbp), %rdi
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rdi
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	24(%rcx), %rcx
	subq	$1, %rcx
	cmpq	%rcx, %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jg	.LBB85_27
# BB#26:                                # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	jmp	.LBB85_28
.LBB85_27:                              # %cond.false
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB85_28:                              # %cond.end
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	-200(%rbp), %rcx        # 8-byte Reload
	subq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movq	current_buffer, %rdi
	movq	-64(%rbp), %rsi
	callq	buf_bytepos_to_charpos
	movq	%rax, -72(%rbp)
	movq	current_buffer, %rdi
	movq	-64(%rbp), %rax
	addq	-24(%rbp), %rax
	movq	%rax, %rsi
	callq	buf_bytepos_to_charpos
	movq	%rax, -80(%rbp)
	movq	current_buffer, %rdi
	movq	-72(%rbp), %rsi
	movq	-64(%rbp), %rdx
	callq	temp_set_point_both
	movl	$901, %edi              # imm = 0x385
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-80(%rbp), %r8
	movq	-64(%rbp), %r9
	addq	-24(%rbp), %r9
	movq	%r9, -216(%rbp)         # 8-byte Spill
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	movq	%rdx, -240(%rbp)        # 8-byte Spill
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	movq	%r8, -256(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	-232(%rbp), %rsi        # 8-byte Reload
	movq	-240(%rbp), %rdx        # 8-byte Reload
	movq	-248(%rbp), %rcx        # 8-byte Reload
	movq	-256(%rbp), %r8         # 8-byte Reload
	movq	-216(%rbp), %r9         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	encode_coding_object
	movq	current_buffer, %rdi
	movq	-88(%rbp), %rsi
	movq	-96(%rbp), %rdx
	callq	temp_set_point_both
	movq	-104(%rbp), %rdi
	callq	set_buffer_internal
	jmp	.LBB85_33
.LBB85_29:                              # %if.else.122
	movq	-32(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB85_30
	jmp	.LBB85_31
.LBB85_30:                              # %if.then.124
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -272(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-32(%rbp), %rdi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	SBYTES
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %esi
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	-272(%rbp), %rcx        # 8-byte Reload
	movq	%rsi, -296(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	-296(%rbp), %rdx        # 8-byte Reload
	movq	-296(%rbp), %rcx        # 8-byte Reload
	movq	-280(%rbp), %r8         # 8-byte Reload
	movq	-288(%rbp), %r9         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	encode_coding_object
	jmp	.LBB85_32
.LBB85_31:                              # %if.else.128
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	make_unibyte_string
	movq	-56(%rbp), %rsi
	movq	%rax, 488(%rsi)
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rsi
	movq	%rax, 384(%rsi)
.LBB85_32:                              # %if.end.131
	jmp	.LBB85_33
.LBB85_33:                              # %if.end.132
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	488(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	SSDATA
	movq	%rax, -16(%rbp)
.LBB85_34:                              # %if.end.136
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-304(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB85_36
# BB#35:                                # %if.then.139
	xorl	%r8d, %r8d
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	callq	write_queue_push
.LBB85_36:                              # %if.end.140
	jmp	.LBB85_37
.LBB85_37:                              # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB85_40 Depth 2
	leaq	-128(%rbp), %rsi
	leaq	-120(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	movq	$-1, -112(%rbp)
	movq	-40(%rbp), %rdi
	callq	write_queue_pop
	testb	$1, %al
	jne	.LBB85_39
# BB#38:                                # %if.then.142
                                        #   in Loop: Header=BB85_37 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)
.LBB85_39:                              # %if.end.143
                                        #   in Loop: Header=BB85_37 Depth=1
	jmp	.LBB85_40
.LBB85_40:                              # %while.cond
                                        #   Parent Loop BB85_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -112(%rbp)
	jle	.LBB85_64
# BB#41:                                # %while.body
                                        #   in Loop: Header=BB85_40 Depth=2
	movabsq	$datagram_address, %rax
	movq	$0, -136(%rbp)
	movq	-40(%rbp), %rcx
	movl	168(%rcx), %edx
	movl	%edx, -140(%rbp)
	movslq	-140(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	je	.LBB85_48
# BB#42:                                # %if.then.150
                                        #   in Loop: Header=BB85_40 Depth=2
	xorl	%ecx, %ecx
	movabsq	$datagram_address, %rax
	movl	-140(%rbp), %edi
	movq	-120(%rbp), %rsi
	movq	-112(%rbp), %rdx
	movslq	-140(%rbp), %r8
	shlq	$4, %r8
	movq	%rax, %r9
	addq	%r8, %r9
	movq	(%r9), %r8
	movq	%r8, -152(%rbp)
	movslq	-140(%rbp), %r8
	shlq	$4, %r8
	addq	%r8, %rax
	movl	8(%rax), %r9d
	movq	-152(%rbp), %r8
	callq	sendto
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jl	.LBB85_44
# BB#43:                                # %if.then.159
                                        #   in Loop: Header=BB85_40 Depth=2
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB85_47
.LBB85_44:                              # %if.else.160
                                        #   in Loop: Header=BB85_40 Depth=2
	callq	__errno_location
	cmpl	$90, (%rax)
	jne	.LBB85_46
# BB#45:                                # %if.then.163
	movabsq	$.L.str.95, %rdi
	movq	-8(%rbp), %rsi
	callq	report_file_error
.LBB85_46:                              # %if.end.164
                                        #   in Loop: Header=BB85_40 Depth=2
	jmp	.LBB85_47
.LBB85_47:                              # %if.end.165
                                        #   in Loop: Header=BB85_40 Depth=2
	jmp	.LBB85_56
.LBB85_48:                              # %if.else.166
                                        #   in Loop: Header=BB85_40 Depth=2
	movq	-40(%rbp), %rax
	movb	288(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB85_51
# BB#49:                                # %land.lhs.true.170
                                        #   in Loop: Header=BB85_40 Depth=2
	movq	-40(%rbp), %rax
	cmpq	$0, 240(%rax)
	je	.LBB85_51
# BB#50:                                # %if.then.172
                                        #   in Loop: Header=BB85_40 Depth=2
	movq	-40(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movq	-112(%rbp), %rdx
	callq	emacs_gnutls_write
	movq	%rax, -136(%rbp)
	jmp	.LBB85_52
.LBB85_51:                              # %if.else.174
                                        #   in Loop: Header=BB85_40 Depth=2
	movl	-140(%rbp), %edi
	movq	-120(%rbp), %rsi
	movq	-112(%rbp), %rdx
	callq	emacs_write_sig
	movq	%rax, -136(%rbp)
.LBB85_52:                              # %if.end.176
                                        #   in Loop: Header=BB85_40 Depth=2
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	cmpq	$0, -136(%rbp)
	cmovnel	%ecx, %eax
	movslq	%eax, %rdx
	movq	%rdx, -48(%rbp)
	movq	-40(%rbp), %rdx
	cmpl	$0, 220(%rdx)
	jle	.LBB85_55
# BB#53:                                # %land.lhs.true.181
                                        #   in Loop: Header=BB85_40 Depth=2
	movq	-40(%rbp), %rax
	movb	224(%rax), %cl
	andb	$3, %cl
	movzbl	%cl, %edx
	cmpl	$1, %edx
	jne	.LBB85_55
# BB#54:                                # %if.then.187
                                        #   in Loop: Header=BB85_40 Depth=2
	movq	-40(%rbp), %rax
	movl	$0, 220(%rax)
	movl	process_output_delay_count, %ecx
	addl	$-1, %ecx
	movl	%ecx, process_output_delay_count
	movq	-40(%rbp), %rax
	movb	224(%rax), %dl
	andb	$-5, %dl
	movb	%dl, 224(%rax)
.LBB85_55:                              # %if.end.191
                                        #   in Loop: Header=BB85_40 Depth=2
	jmp	.LBB85_56
.LBB85_56:                              # %if.end.192
                                        #   in Loop: Header=BB85_40 Depth=2
	cmpq	$0, -48(%rbp)
	jge	.LBB85_63
# BB#57:                                # %if.then.195
                                        #   in Loop: Header=BB85_37 Depth=1
	callq	__errno_location
	cmpl	$11, (%rax)
	je	.LBB85_59
# BB#58:                                # %lor.lhs.false.199
                                        #   in Loop: Header=BB85_37 Depth=1
	callq	__errno_location
	cmpl	$11, (%rax)
	jne	.LBB85_60
.LBB85_59:                              # %if.then.203
                                        #   in Loop: Header=BB85_37 Depth=1
	movl	$1, %r8d
	movq	-40(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movq	-120(%rbp), %rdx
	movq	-112(%rbp), %rcx
	callq	write_queue_push
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %ecx
	movl	$20000000, %esi         # imm = 0x1312D00
	xorl	%edi, %edi
	movl	%edi, -308(%rbp)        # 4-byte Spill
	movq	%rcx, %rdi
	movl	-308(%rbp), %edx        # 4-byte Reload
	movl	-308(%rbp), %r8d        # 4-byte Reload
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	movl	%r8d, %ecx
	movq	%rax, %r8
	movq	-320(%rbp), %r9         # 8-byte Reload
	movl	$0, (%rsp)
	callq	wait_reading_process_output
	movl	%eax, -324(%rbp)        # 4-byte Spill
	jmp	.LBB85_64
.LBB85_60:                              # %if.else.206
	callq	__errno_location
	cmpl	$32, (%rax)
	jne	.LBB85_62
# BB#61:                                # %if.then.210
	movl	$387, %edi              # imm = 0x183
	movq	-40(%rbp), %rax
	movb	224(%rax), %cl
	andb	$127, %cl
	movb	%cl, 224(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1026, %edi             # imm = 0x402
	movl	%edi, %esi
	movq	%rax, %rdi
	callq	list2
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_status
	movq	process_tick, %rax
	addq	$1, %rax
	movq	%rax, process_tick
	movq	-40(%rbp), %rsi
	movq	%rax, 200(%rsi)
	movq	-8(%rbp), %rdi
	callq	deactivate_process
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdi
	callq	SDATA
	movabsq	$.L.str.96, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB85_62:                              # %if.else.218
	movabsq	$.L.str.97, %rdi
	movq	-8(%rbp), %rsi
	callq	report_file_error
.LBB85_63:                              # %if.end.219
                                        #   in Loop: Header=BB85_40 Depth=2
	movq	-136(%rbp), %rax
	addq	-120(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-136(%rbp), %rax
	movq	-112(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -112(%rbp)
	jmp	.LBB85_40
.LBB85_64:                              # %while.end
                                        #   in Loop: Header=BB85_37 Depth=1
	jmp	.LBB85_65
.LBB85_65:                              # %do.cond
                                        #   in Loop: Header=BB85_37 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-344(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB85_37
# BB#66:                                # %do.end
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end85:
	.size	send_process, .Lfunc_end85-send_process
	.cfi_endproc

	.globl	Fprocess_send_string
	.align	16, 0x90
	.type	Fprocess_send_string,@function
Fprocess_send_string:                   # @Fprocess_send_string
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	movq	-8(%rbp), %rdi
	callq	get_process
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	SSDATA
	movq	-16(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	SBYTES
	movq	-16(%rbp), %rcx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	send_process
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end86:
	.size	Fprocess_send_string, .Lfunc_end86-Fprocess_send_string
	.cfi_endproc

	.globl	Fprocess_running_child_p
	.align	16, 0x90
	.type	Fprocess_running_child_p,@function
Fprocess_running_child_p:               # @Fprocess_running_child_p
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	get_process
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	XPROCESS
	movl	$793, %edi              # imm = 0x319
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB87_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdi
	callq	SDATA
	movabsq	$.L.str.39, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB87_2:                               # %if.end
	movq	-40(%rbp), %rax
	cmpl	$0, 164(%rax)
	jge	.LBB87_4
# BB#3:                                 # %if.then.5
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdi
	callq	SDATA
	movabsq	$.L.str.40, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB87_4:                               # %if.end.8
	movq	-40(%rbp), %rdi
	callq	emacs_get_tty_pgrp
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movq	-40(%rbp), %rdi
	cmpl	160(%rdi), %eax
	jne	.LBB87_6
# BB#5:                                 # %if.then.11
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB87_9
.LBB87_6:                               # %if.end.13
	cmpl	$-1, -20(%rbp)
	je	.LBB87_8
# BB#7:                                 # %if.then.15
	movslq	-20(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB87_9
.LBB87_8:                               # %if.end.16
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB87_9:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end87:
	.size	Fprocess_running_child_p, .Lfunc_end87-Fprocess_running_child_p
	.cfi_endproc

	.align	16, 0x90
	.type	emacs_get_tty_pgrp,@function
emacs_get_tty_pgrp:                     # @emacs_get_tty_pgrp
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
	movl	$21519, %eax            # imm = 0x540F
	movl	%eax, %esi
	leaq	-12(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movl	$-1, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	164(%rdi), %edi
	movb	$0, %al
	callq	ioctl
	cmpl	$-1, %eax
	jne	.LBB88_5
# BB#1:                                 # %land.lhs.true
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB88_5
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	SSDATA
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	emacs_open
	movl	%eax, -16(%rbp)
	cmpl	$-1, -16(%rbp)
	je	.LBB88_4
# BB#3:                                 # %if.then.7
	movl	$21519, %eax            # imm = 0x540F
	movl	%eax, %esi
	leaq	-12(%rbp), %rdx
	movl	-16(%rbp), %edi
	movb	$0, %al
	callq	ioctl
	movl	-16(%rbp), %edi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	emacs_close
	movl	%eax, -32(%rbp)         # 4-byte Spill
.LBB88_4:                               # %if.end
	jmp	.LBB88_5
.LBB88_5:                               # %if.end.10
	movl	-12(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end88:
	.size	emacs_get_tty_pgrp, .Lfunc_end88-emacs_get_tty_pgrp
	.cfi_endproc

	.globl	Finterrupt_process
	.align	16, 0x90
	.type	Finterrupt_process,@function
Finterrupt_process:                     # @Finterrupt_process
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
	subq	$16, %rsp
	movl	$2, %eax
	xorl	%ecx, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movl	%eax, %esi
	callq	process_send_signal
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end89:
	.size	Finterrupt_process, .Lfunc_end89-Finterrupt_process
	.cfi_endproc

	.align	16, 0x90
	.type	process_send_signal,@function
process_send_signal:                    # @process_send_signal
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
	subq	$352, %rsp              # imm = 0x160
	movb	%cl, %al
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	andb	$1, %al
	movb	%al, -25(%rbp)
	movb	$0, -53(%rbp)
	movq	-8(%rbp), %rdi
	callq	get_process
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	XPROCESS
	movl	$793, %edi              # imm = 0x319
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB90_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdi
	callq	SDATA
	movabsq	$.L.str.39, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB90_2:                               # %if.end
	movq	-48(%rbp), %rax
	cmpl	$0, 164(%rax)
	jge	.LBB90_4
# BB#3:                                 # %if.then.5
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdi
	callq	SDATA
	movabsq	$.L.str.40, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB90_4:                               # %if.end.8
	movq	-48(%rbp), %rax
	movb	224(%rax), %cl
	shrb	$4, %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB90_6
# BB#5:                                 # %if.then.9
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)
.LBB90_6:                               # %if.end.11
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB90_8
# BB#7:                                 # %if.then.14
	movq	-48(%rbp), %rax
	movl	160(%rax), %ecx
	movl	%ecx, -52(%rbp)
	jmp	.LBB90_23
.LBB90_8:                               # %if.else
	movq	$0, -128(%rbp)
	movq	-48(%rbp), %rax
	movl	164(%rax), %edi
	leaq	-120(%rbp), %rsi
	callq	tcgetattr
	movl	-12(%rbp), %edi
	movl	%edi, %ecx
	subl	$2, %ecx
	movl	%eax, -284(%rbp)        # 4-byte Spill
	movl	%edi, -288(%rbp)        # 4-byte Spill
	movl	%ecx, -292(%rbp)        # 4-byte Spill
	je	.LBB90_9
	jmp	.LBB90_34
.LBB90_34:                              # %if.else
	movl	-288(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -296(%rbp)        # 4-byte Spill
	je	.LBB90_10
	jmp	.LBB90_35
.LBB90_35:                              # %if.else
	movl	-288(%rbp), %eax        # 4-byte Reload
	subl	$20, %eax
	movl	%eax, -300(%rbp)        # 4-byte Spill
	je	.LBB90_11
	jmp	.LBB90_12
.LBB90_9:                               # %sw.bb
	leaq	-120(%rbp), %rax
	addq	$17, %rax
	movq	%rax, -128(%rbp)
	jmp	.LBB90_12
.LBB90_10:                              # %sw.bb.17
	leaq	-120(%rbp), %rax
	addq	$17, %rax
	addq	$1, %rax
	movq	%rax, -128(%rbp)
	jmp	.LBB90_12
.LBB90_11:                              # %sw.bb.20
	leaq	-120(%rbp), %rax
	addq	$17, %rax
	addq	$10, %rax
	movq	%rax, -128(%rbp)
.LBB90_12:                              # %sw.epilog
	cmpq	$0, -128(%rbp)
	je	.LBB90_15
# BB#13:                                # %land.lhs.true
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB90_15
# BB#14:                                # %if.then.25
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	-128(%rbp), %rsi
	movq	%rsi, -312(%rbp)        # 8-byte Spill
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edi
	movl	%edi, %edx
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	-312(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rcx
	callq	send_process
	jmp	.LBB90_33
.LBB90_15:                              # %if.end.27
	movq	-48(%rbp), %rdi
	callq	emacs_get_tty_pgrp
	movl	%eax, -52(%rbp)
	cmpl	$-1, -52(%rbp)
	jne	.LBB90_17
# BB#16:                                # %if.then.31
	movq	-48(%rbp), %rax
	movl	160(%rax), %ecx
	movl	%ecx, -52(%rbp)
.LBB90_17:                              # %if.end.33
	cmpl	$-1, -52(%rbp)
	jne	.LBB90_19
# BB#18:                                # %if.then.36
	movb	$1, -53(%rbp)
.LBB90_19:                              # %if.end.37
	movl	$598, %edi              # imm = 0x256
	movq	-24(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-328(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB90_22
# BB#20:                                # %land.lhs.true.41
	movl	-52(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	160(%rcx), %eax
	jne	.LBB90_22
# BB#21:                                # %if.then.45
	jmp	.LBB90_33
.LBB90_22:                              # %if.end.46
	jmp	.LBB90_23
.LBB90_23:                              # %if.end.47
	cmpl	$18, -12(%rbp)
	jne	.LBB90_27
# BB#24:                                # %if.then.50
	movl	$820, %edi              # imm = 0x334
	movq	-48(%rbp), %rax
	movb	224(%rax), %cl
	andb	$127, %cl
	movb	%cl, 224(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_status
	movq	process_tick, %rax
	addq	$1, %rax
	movq	%rax, process_tick
	movq	-48(%rbp), %rsi
	movq	%rax, 200(%rsi)
	testb	$1, -25(%rbp)
	jne	.LBB90_26
# BB#25:                                # %if.then.55
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	callq	status_notify
	movl	$13, %edi
	movl	%eax, -340(%rbp)        # 4-byte Spill
	callq	redisplay_preserve_echo_area
.LBB90_26:                              # %if.end.57
	jmp	.LBB90_27
.LBB90_27:                              # %if.end.58
	testb	$1, -53(%rbp)
	je	.LBB90_29
# BB#28:                                # %cond.true
	movl	-52(%rbp), %eax
	movl	%eax, -344(%rbp)        # 4-byte Spill
	jmp	.LBB90_30
.LBB90_29:                              # %cond.false
	xorl	%eax, %eax
	subl	-52(%rbp), %eax
	movl	%eax, -344(%rbp)        # 4-byte Spill
.LBB90_30:                              # %cond.end
	movl	-344(%rbp), %eax        # 4-byte Reload
	leaq	-264(%rbp), %rdi
	movl	%eax, -132(%rbp)
	callq	block_child_signal
	movq	-48(%rbp), %rdi
	movb	224(%rdi), %cl
	shrb	$6, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB90_32
# BB#31:                                # %if.then.66
	movl	-132(%rbp), %edi
	movl	-12(%rbp), %esi
	callq	kill
	movl	%eax, -348(%rbp)        # 4-byte Spill
.LBB90_32:                              # %if.end.68
	leaq	-264(%rbp), %rdi
	callq	unblock_child_signal
.LBB90_33:                              # %return
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end90:
	.size	process_send_signal, .Lfunc_end90-process_send_signal
	.cfi_endproc

	.globl	Fkill_process
	.align	16, 0x90
	.type	Fkill_process,@function
Fkill_process:                          # @Fkill_process
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
	subq	$16, %rsp
	movl	$9, %eax
	xorl	%ecx, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movl	%eax, %esi
	callq	process_send_signal
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end91:
	.size	Fkill_process, .Lfunc_end91-Fkill_process
	.cfi_endproc

	.globl	Fquit_process
	.align	16, 0x90
	.type	Fquit_process,@function
Fquit_process:                          # @Fquit_process
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
	subq	$16, %rsp
	movl	$3, %eax
	xorl	%ecx, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movl	%eax, %esi
	callq	process_send_signal
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end92:
	.size	Fquit_process, .Lfunc_end92-Fquit_process
	.cfi_endproc

	.globl	Fstop_process
	.align	16, 0x90
	.type	Fstop_process,@function
Fstop_process:                          # @Fstop_process
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	PROCESSP
	testb	$1, %al
	jne	.LBB93_1
	jmp	.LBB93_8
.LBB93_1:                               # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movl	$699, %edi              # imm = 0x2BB
	movq	80(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB93_4
# BB#2:                                 # %lor.lhs.false
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movl	$845, %edi              # imm = 0x34D
	movq	80(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB93_4
# BB#3:                                 # %lor.lhs.false.7
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movl	$750, %edi              # imm = 0x2EE
	movq	80(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB93_8
.LBB93_4:                               # %if.then
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB93_7
# BB#5:                                 # %land.lhs.true.15
	movq	-32(%rbp), %rax
	cmpl	$0, 164(%rax)
	jl	.LBB93_7
# BB#6:                                 # %if.then.17
	movabsq	$input_wait_mask, %rsi
	movq	-32(%rbp), %rax
	movl	164(%rax), %edi
	callq	fd_CLR
	movabsq	$non_keyboard_wait_mask, %rsi
	movq	-32(%rbp), %rax
	movl	164(%rax), %edi
	callq	fd_CLR
.LBB93_7:                               # %if.end
	movl	$901, %edi              # imm = 0x385
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_command
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB93_9
.LBB93_8:                               # %if.end.21
	movl	$20, %esi
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	process_send_signal
	movq	-16(%rbp), %rdx
	movq	%rdx, -8(%rbp)
.LBB93_9:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end93:
	.size	Fstop_process, .Lfunc_end93-Fstop_process
	.cfi_endproc

	.globl	Fcontinue_process
	.align	16, 0x90
	.type	Fcontinue_process,@function
Fcontinue_process:                      # @Fcontinue_process
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	PROCESSP
	testb	$1, %al
	jne	.LBB94_1
	jmp	.LBB94_10
.LBB94_1:                               # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movl	$699, %edi              # imm = 0x2BB
	movq	80(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB94_4
# BB#2:                                 # %lor.lhs.false
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movl	$845, %edi              # imm = 0x34D
	movq	80(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB94_4
# BB#3:                                 # %lor.lhs.false.7
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movl	$750, %edi              # imm = 0x2EE
	movq	80(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB94_10
.LBB94_4:                               # %if.then
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB94_9
# BB#5:                                 # %land.lhs.true.15
	movq	-32(%rbp), %rax
	cmpl	$0, 164(%rax)
	jl	.LBB94_9
# BB#6:                                 # %land.lhs.true.17
	movl	$901, %edi              # imm = 0x385
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB94_8
# BB#7:                                 # %lor.lhs.false.20
	movl	$625, %edi              # imm = 0x271
	movq	-32(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB94_9
.LBB94_8:                               # %if.then.23
	movabsq	$input_wait_mask, %rsi
	movq	-32(%rbp), %rax
	movl	164(%rax), %edi
	callq	fd_SET
	movabsq	$non_keyboard_wait_mask, %rsi
	movq	-32(%rbp), %rax
	movl	164(%rax), %edi
	callq	fd_SET
	xorl	%esi, %esi
	movq	-32(%rbp), %rax
	movl	164(%rax), %edi
	callq	tcflush
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB94_9:                               # %if.end
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_command
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB94_11
.LBB94_10:                              # %if.end.29
	movl	$18, %esi
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	process_send_signal
	movq	-16(%rbp), %rdx
	movq	%rdx, -8(%rbp)
.LBB94_11:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end94:
	.size	Fcontinue_process, .Lfunc_end94-Fcontinue_process
	.cfi_endproc

	.globl	Fsignal_process
	.align	16, 0x90
	.type	Fsignal_process,@function
Fsignal_process:                        # @Fsignal_process
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB95_1
	jmp	.LBB95_6
.LBB95_1:                               # %if.then
	movq	-16(%rbp), %rdi
	callq	Fget_process
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB95_5
# BB#2:                                 # %if.then.3
	movq	-16(%rbp), %rdi
	callq	SSDATA
	movl	$10, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	string_to_number
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	NUMBERP
	testb	$1, %al
	jne	.LBB95_3
	jmp	.LBB95_4
.LBB95_3:                               # %if.then.7
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB95_4:                               # %if.end
	jmp	.LBB95_5
.LBB95_5:                               # %if.end.8
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB95_9
.LBB95_6:                               # %if.else
	movq	-16(%rbp), %rdi
	callq	NUMBERP
	testb	$1, %al
	jne	.LBB95_8
# BB#7:                                 # %if.then.10
	movq	-16(%rbp), %rdi
	callq	get_process
	movq	%rax, -16(%rbp)
.LBB95_8:                               # %if.end.12
	jmp	.LBB95_9
.LBB95_9:                               # %if.end.13
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB95_11
# BB#10:                                # %if.then.16
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB95_35
.LBB95_11:                              # %if.end.17
	movq	-16(%rbp), %rdi
	callq	NUMBERP
	testb	$1, %al
	jne	.LBB95_12
	jmp	.LBB95_13
.LBB95_12:                              # %if.then.19
	movq	$-2147483648, %rsi      # imm = 0xFFFFFFFF80000000
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	cons_to_signed
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	jmp	.LBB95_16
.LBB95_13:                              # %if.else.21
	movq	-16(%rbp), %rdi
	callq	CHECK_PROCESS
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movl	160(%rax), %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.LBB95_15
# BB#14:                                # %if.then.26
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movq	16(%rax), %rdi
	callq	SDATA
	movabsq	$.L.str.41, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB95_15:                              # %if.end.29
	jmp	.LBB95_16
.LBB95_16:                              # %if.end.30
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB95_28
# BB#17:                                # %if.then.35
	jmp	.LBB95_18
.LBB95_18:                              # %do.body
	jmp	.LBB95_19
.LBB95_19:                              # %do.body.36
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB95_21
# BB#20:                                # %cond.true
	jmp	.LBB95_22
.LBB95_21:                              # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB95_22:                              # %cond.end
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jg	.LBB95_24
# BB#23:                                # %land.lhs.true
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jle	.LBB95_25
.LBB95_24:                              # %if.then.48
	movabsq	$-8589934590, %rsi      # imm = 0xFFFFFFFE00000002
	movabsq	$8589934590, %rdx       # imm = 0x1FFFFFFFE
	movq	-24(%rbp), %rdi
	callq	args_out_of_range_3
.LBB95_25:                              # %if.end.49
	jmp	.LBB95_26
.LBB95_26:                              # %do.end
	jmp	.LBB95_27
.LBB95_27:                              # %do.end.50
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -32(%rbp)
	jmp	.LBB95_34
.LBB95_28:                              # %if.else.53
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB95_30
# BB#29:                                # %cond.true.59
	jmp	.LBB95_31
.LBB95_30:                              # %cond.false.60
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB95_31:                              # %cond.end.62
	movq	-24(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SSDATA
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	abbr_to_signal
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	jge	.LBB95_33
# BB#32:                                # %if.then.68
	movabsq	$.L.str.42, %rdi
	movq	-56(%rbp), %rsi
	movb	$0, %al
	callq	error
.LBB95_33:                              # %if.end.69
	jmp	.LBB95_34
.LBB95_34:                              # %if.end.70
	movl	-28(%rbp), %edi
	movl	-32(%rbp), %esi
	callq	kill
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -8(%rbp)
.LBB95_35:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end95:
	.size	Fsignal_process, .Lfunc_end95-Fsignal_process
	.cfi_endproc

	.align	16, 0x90
	.type	abbr_to_signal,@function
abbr_to_signal:                         # @abbr_to_signal
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
	subq	$64, %rsp
	movabsq	$.L.str.98, %rsi
	movl	$3, %eax
	movl	%eax, %edx
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	je	.LBB96_2
# BB#1:                                 # %lor.lhs.false
	movabsq	$.L.str.99, %rsi
	movl	$3, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB96_3
.LBB96_2:                               # %if.then
	movq	-16(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -16(%rbp)
.LBB96_3:                               # %if.end
	movl	$0, -20(%rbp)
.LBB96_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-20(%rbp), %rax
	cmpq	$20, %rax
	jae	.LBB96_12
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB96_4 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movsbl	(%rcx,%rax), %edi
	callq	c_toupper
	movb	%al, %dl
	movslq	-20(%rbp), %rcx
	movb	%dl, -48(%rbp,%rcx)
	movslq	-20(%rbp), %rcx
	cmpb	$0, -48(%rbp,%rcx)
	jne	.LBB96_10
# BB#6:                                 # %if.then.12
	leaq	-24(%rbp), %rsi
	leaq	-48(%rbp), %rdi
	callq	str2sig
	cmpl	$0, %eax
	jne	.LBB96_8
# BB#7:                                 # %cond.true
	movl	-24(%rbp), %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB96_9
.LBB96_8:                               # %cond.false
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB96_9
.LBB96_9:                               # %cond.end
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, -4(%rbp)
	jmp	.LBB96_13
.LBB96_10:                              # %if.end.16
                                        #   in Loop: Header=BB96_4 Depth=1
	jmp	.LBB96_11
.LBB96_11:                              # %for.inc
                                        #   in Loop: Header=BB96_4 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB96_4
.LBB96_12:                              # %for.end
	movl	$-1, -4(%rbp)
.LBB96_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end96:
	.size	abbr_to_signal, .Lfunc_end96-abbr_to_signal
	.cfi_endproc

	.globl	Fprocess_send_eof
	.align	16, 0x90
	.type	Fprocess_send_eof,@function
Fprocess_send_eof:                      # @Fprocess_send_eof
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	$0, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	PROCESSP
	testb	$1, %al
	jne	.LBB97_1
	jmp	.LBB97_4
.LBB97_1:                               # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	cmpl	$0, 164(%rax)
	jl	.LBB97_4
# BB#2:                                 # %land.lhs.true.2
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movabsq	$datagram_address, %rdi
	movslq	164(%rax), %rax
	shlq	$4, %rax
	addq	%rax, %rdi
	cmpq	$0, (%rdi)
	je	.LBB97_4
# BB#3:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB97_33
.LBB97_4:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	get_process
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	XPROCESS
	movl	168(%rax), %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jl	.LBB97_6
# BB#5:                                 # %if.then.10
	movslq	-36(%rbp), %rax
	movq	proc_encode_coding_system(,%rax,8), %rax
	movq	%rax, -32(%rbp)
.LBB97_6:                               # %if.end.13
	movq	-24(%rbp), %rdi
	callq	XPROCESS
	movb	224(%rax), %cl
	shrb	$7, %cl
	testb	$1, %cl
	je	.LBB97_8
# BB#7:                                 # %if.then.15
	movq	-24(%rbp), %rdi
	callq	XPROCESS
	movq	%rax, %rdi
	callq	update_status
.LBB97_8:                               # %if.end.17
	movq	-24(%rbp), %rdi
	callq	XPROCESS
	movl	$820, %edi              # imm = 0x334
	movq	96(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB97_10
# BB#9:                                 # %if.then.21
	movq	-24(%rbp), %rdi
	callq	XPROCESS
	movq	16(%rax), %rdi
	callq	SDATA
	movabsq	$.L.str.43, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB97_10:                              # %if.end.24
	cmpq	$0, -32(%rbp)
	je	.LBB97_13
# BB#11:                                # %land.lhs.true.25
	movq	-32(%rbp), %rax
	movl	8(%rax), %ecx
	andl	$16383, %ecx            # imm = 0x3FFF
	andl	$512, %ecx              # imm = 0x200
	cmpl	$0, %ecx
	je	.LBB97_13
# BB#12:                                # %if.then.28
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movl	8(%rax), %ecx
	shrl	$14, %ecx
	andl	$31, %ecx
	orl	$1, %ecx
	movl	8(%rax), %edx
	andl	$31, %ecx
	shll	$14, %ecx
	andl	$-507905, %edx          # imm = 0xFFFFFFFFFFF83FFF
	orl	%ecx, %edx
	movl	%edx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.44, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rcx
	callq	send_process
.LBB97_13:                              # %if.end.35
	movq	-24(%rbp), %rdi
	callq	XPROCESS
	movb	224(%rax), %cl
	shrb	$4, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB97_15
# BB#14:                                # %if.then.41
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.45, %rsi
	movl	$1, %edi
	movl	%edi, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rcx
	callq	send_process
	jmp	.LBB97_32
.LBB97_15:                              # %if.else
	movq	-24(%rbp), %rdi
	callq	XPROCESS
	movl	$845, %edi              # imm = 0x34D
	movq	80(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB97_19
# BB#16:                                # %if.then.46
	movq	-24(%rbp), %rdi
	callq	XPROCESS
	movl	168(%rax), %edi
	callq	tcdrain
	cmpl	$0, %eax
	je	.LBB97_18
# BB#17:                                # %if.then.51
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$.L.str.46, %rdi
	movq	%rax, %rsi
	callq	report_file_error
.LBB97_18:                              # %if.end.53
	jmp	.LBB97_31
.LBB97_19:                              # %if.else.54
	movq	-24(%rbp), %rdi
	callq	XPROCESS
	xorl	%ecx, %ecx
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	168(%rax), %edx
	movl	%edx, -52(%rbp)
	cmpl	-52(%rbp), %ecx
	jg	.LBB97_23
# BB#20:                                # %land.lhs.true.58
	movl	$699, %edi              # imm = 0x2BB
	movq	-48(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB97_22
# BB#21:                                # %lor.lhs.false
	movq	-48(%rbp), %rax
	movl	164(%rax), %ecx
	cmpl	-52(%rbp), %ecx
	jne	.LBB97_23
.LBB97_22:                              # %if.then.64
	movl	$1, %esi
	movl	-52(%rbp), %edi
	callq	shutdown
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB97_23:                              # %if.end.66
	movq	-48(%rbp), %rax
	addq	$172, %rax
	addq	$4, %rax
	movq	%rax, %rdi
	callq	close_process_fd
	movabsq	$.L.str.47, %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	emacs_open
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	jge	.LBB97_25
# BB#24:                                # %if.then.70
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$.L.str.48, %rdi
	movq	%rax, %rsi
	callq	report_file_error
.LBB97_25:                              # %if.end.72
	movl	-56(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 176(%rcx)
	movl	-56(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 168(%rcx)
	movslq	-56(%rbp), %rcx
	cmpq	$0, proc_encode_coding_system(,%rcx,8)
	jne	.LBB97_27
# BB#26:                                # %if.then.79
	movl	$616, %eax              # imm = 0x268
	movl	%eax, %edi
	callq	xmalloc
	movslq	-56(%rbp), %rdi
	movq	%rax, proc_encode_coding_system(,%rdi,8)
.LBB97_27:                              # %if.end.83
	cmpl	$0, -52(%rbp)
	jl	.LBB97_29
# BB#28:                                # %if.then.85
	xorl	%esi, %esi
	movl	$616, %eax              # imm = 0x268
	movl	%eax, %ecx
	movslq	-56(%rbp), %rdx
	movq	proc_encode_coding_system(,%rdx,8), %rdx
	movslq	-52(%rbp), %rdi
	movq	proc_encode_coding_system(,%rdi,8), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movl	%esi, -116(%rbp)        # 4-byte Spill
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	memcpy
	movslq	-52(%rbp), %rcx
	movq	proc_encode_coding_system(,%rcx,8), %rcx
	movq	%rcx, %rdi
	movl	-116(%rbp), %esi        # 4-byte Reload
	movq	-128(%rbp), %rdx        # 8-byte Reload
	callq	memset
	jmp	.LBB97_30
.LBB97_29:                              # %if.else.92
	movq	-48(%rbp), %rax
	movq	120(%rax), %rdi
	movslq	-56(%rbp), %rax
	movq	proc_encode_coding_system(,%rax,8), %rsi
	callq	setup_coding_system
.LBB97_30:                              # %if.end.95
	jmp	.LBB97_31
.LBB97_31:                              # %if.end.96
	jmp	.LBB97_32
.LBB97_32:                              # %if.end.97
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB97_33:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end97:
	.size	Fprocess_send_eof, .Lfunc_end97-Fprocess_send_eof
	.cfi_endproc

	.align	16, 0x90
	.type	close_process_fd,@function
close_process_fd:                       # @close_process_fd
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
	movq	-8(%rbp), %rdi
	movl	(%rdi), %ecx
	movl	%ecx, -12(%rbp)
	cmpl	-12(%rbp), %eax
	jg	.LBB98_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	$-1, (%rax)
	movl	-12(%rbp), %edi
	callq	emacs_close
	movl	%eax, -16(%rbp)         # 4-byte Spill
.LBB98_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end98:
	.size	close_process_fd, .Lfunc_end98-close_process_fd
	.cfi_endproc

	.globl	Finternal_default_process_sentinel
	.align	16, 0x90
	.type	Finternal_default_process_sentinel,@function
Finternal_default_process_sentinel:     # @Finternal_default_process_sentinel
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
	subq	$192, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_PROCESS
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB99_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB99_2:                               # %if.end
	movl	$820, %edi              # imm = 0x334
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB99_15
# BB#3:                                 # %land.lhs.true
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB99_15
# BB#4:                                 # %if.then.9
	movq	current_buffer, %rax
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rdi
	callq	XBUFFER
	xorl	%edi, %edi
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB99_6
# BB#5:                                 # %if.then.14
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB99_16
.LBB99_6:                               # %if.end.16
	movq	-32(%rbp), %rdi
	callq	Fset_buffer
	xorl	%edi, %edi
	movq	current_buffer, %rcx
	movq	312(%rcx), %rcx
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB99_8
# BB#7:                                 # %if.then.21
	movl	$1, %edx
	movq	-24(%rbp), %rdi
	movq	globals+1344, %rsi
	callq	code_convert_string_norecord
	movq	%rax, -24(%rbp)
.LBB99_8:                               # %if.end.23
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -72(%rbp)
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rax
	movq	88(%rax), %rdi
	callq	XMARKER
	cmpq	$0, 8(%rax)
	je	.LBB99_10
# BB#9:                                 # %if.then.27
	movq	-48(%rbp), %rax
	movq	88(%rax), %rdi
	callq	Fgoto_char
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB99_11
.LBB99_10:                              # %if.else
	movq	current_buffer, %rax
	movq	768(%rax), %rdi
	movq	current_buffer, %rax
	movq	776(%rax), %rsi
	callq	set_point_both
.LBB99_11:                              # %if.end.30
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -88(%rbp)
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -96(%rbp)
	movq	current_buffer, %rax
	movq	56(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	current_buffer, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_read_only
	movabsq	$.L.str.49, %rdi
	callq	insert_string
	movl	$1, %ecx
	movl	%ecx, %edi
	leaq	-104(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -104(%rbp)
	callq	Finsert
	movabsq	$.L.str.50, %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	insert_string
	movl	$1, %ecx
	movl	%ecx, %edi
	leaq	-24(%rbp), %rsi
	callq	Finsert
	movq	current_buffer, %rdi
	movq	-56(%rbp), %rsi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	bset_read_only
	movq	-48(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	56(%rax), %rsi
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rdx
	movq	744(%rdx), %rdx
	addq	$0, %rdx
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-184(%rbp), %rcx        # 8-byte Reload
	callq	set_marker_both
	movq	-72(%rbp), %rcx
	cmpq	-88(%rbp), %rcx
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jl	.LBB99_13
# BB#12:                                # %if.then.47
	movq	-72(%rbp), %rax
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	subq	-88(%rbp), %rcx
	addq	%rcx, %rax
	movq	-80(%rbp), %rcx
	movq	current_buffer, %rdx
	movq	744(%rdx), %rdx
	addq	$0, %rdx
	subq	-96(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	set_point_both
	jmp	.LBB99_14
.LBB99_13:                              # %if.else.56
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	set_point_both
.LBB99_14:                              # %if.end.57
	movq	-64(%rbp), %rdi
	callq	set_buffer_internal
.LBB99_15:                              # %if.end.58
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB99_16:                              # %return
	movq	-8(%rbp), %rax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end99:
	.size	Finternal_default_process_sentinel, .Lfunc_end99-Finternal_default_process_sentinel
	.cfi_endproc

	.globl	Fset_process_coding_system
	.align	16, 0x90
	.type	Fset_process_coding_system,@function
Fset_process_coding_system:             # @Fset_process_coding_system
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_PROCESS
	movq	-8(%rbp), %rdi
	callq	XPROCESS
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, 164(%rax)
	jge	.LBB100_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	callq	SDATA
	movabsq	$.L.str.51, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB100_2:                              # %if.end
	movq	-32(%rbp), %rax
	cmpl	$0, 168(%rax)
	jge	.LBB100_4
# BB#3:                                 # %if.then.3
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	callq	SDATA
	movabsq	$.L.str.52, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	error
.LBB100_4:                              # %if.end.6
	movq	-16(%rbp), %rdi
	callq	Fcheck_coding_system
	movq	-24(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	Fcheck_coding_system
	xorl	%edi, %edi
	movq	-24(%rbp), %rcx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	coding_inherit_eol_type
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	pset_decode_coding_system
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	pset_encode_coding_system
	movq	-8(%rbp), %rdi
	callq	setup_process_coding_systems
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end100:
	.size	Fset_process_coding_system, .Lfunc_end100-Fset_process_coding_system
	.cfi_endproc

	.globl	Fprocess_coding_system
	.align	16, 0x90
	.type	Fprocess_coding_system,@function
Fprocess_coding_system:                 # @Fprocess_coding_system
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_PROCESS
	movq	-8(%rbp), %rdi
	callq	XPROCESS
	movq	104(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	XPROCESS
	movq	120(%rax), %rsi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	callq	Fcons
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end101:
	.size	Fprocess_coding_system, .Lfunc_end101-Fprocess_coding_system
	.cfi_endproc

	.globl	Fset_process_filter_multibyte
	.align	16, 0x90
	.type	Fset_process_filter_multibyte,@function
Fset_process_filter_multibyte:          # @Fset_process_filter_multibyte
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_PROCESS
	movq	-8(%rbp), %rdi
	callq	XPROCESS
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB102_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	raw_text_coding_system
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_decode_coding_system
.LBB102_2:                              # %if.end
	movq	-8(%rbp), %rdi
	callq	setup_process_coding_systems
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end102:
	.size	Fset_process_filter_multibyte, .Lfunc_end102-Fset_process_filter_multibyte
	.cfi_endproc

	.globl	Fprocess_filter_multibyte_p
	.align	16, 0x90
	.type	Fprocess_filter_multibyte_p,@function
Fprocess_filter_multibyte_p:            # @Fprocess_filter_multibyte_p
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_PROCESS
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 164(%rax)
	jge	.LBB103_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB103_6
.LBB103_2:                              # %if.end
	movq	-24(%rbp), %rax
	movslq	164(%rax), %rax
	movq	proc_decode_coding_system(,%rax,8), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	8(%rax), %ecx
	andl	$16383, %ecx            # imm = 0x3FFF
	andl	$256, %ecx              # imm = 0x100
	cmpl	$0, %ecx
	je	.LBB103_4
# BB#3:                                 # %cond.true
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB103_5
.LBB103_4:                              # %cond.false
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB103_5:                              # %cond.end
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
.LBB103_6:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end103:
	.size	Fprocess_filter_multibyte_p, .Lfunc_end103-Fprocess_filter_multibyte_p
	.cfi_endproc

	.globl	add_timer_wait_descriptor
	.align	16, 0x90
	.type	add_timer_wait_descriptor,@function
add_timer_wait_descriptor:              # @add_timer_wait_descriptor
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
	movabsq	$input_wait_mask, %rsi
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	fd_SET
	movabsq	$non_keyboard_wait_mask, %rsi
	movl	-4(%rbp), %edi
	callq	fd_SET
	movabsq	$non_process_wait_mask, %rsi
	movl	-4(%rbp), %edi
	callq	fd_SET
	movabsq	$fd_callback_info, %rsi
	movabsq	$timerfd_callback, %rax
	movslq	-4(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	movq	%rsi, %rdx
	addq	%rcx, %rdx
	movq	%rax, (%rdx)
	movslq	-4(%rbp), %rax
	imulq	$24, %rax, %rax
	movq	%rsi, %rcx
	addq	%rax, %rcx
	movq	$0, 8(%rcx)
	movslq	-4(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	%rax, %rsi
	movl	16(%rsi), %edi
	orl	$1, %edi
	movl	%edi, 16(%rsi)
	movl	-4(%rbp), %edi
	cmpl	max_input_desc, %edi
	jle	.LBB104_2
# BB#1:                                 # %if.then
	movl	-4(%rbp), %eax
	movl	%eax, max_input_desc
.LBB104_2:                              # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end104:
	.size	add_timer_wait_descriptor, .Lfunc_end104-add_timer_wait_descriptor
	.cfi_endproc

	.globl	Fget_buffer_process
	.align	16, 0x90
	.type	Fget_buffer_process,@function
Fget_buffer_process:                    # @Fget_buffer_process
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
	subq	$64, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB105_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB105_13
.LBB105_2:                              # %if.end
	movq	-16(%rbp), %rdi
	callq	Fget_buffer
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB105_4
# BB#3:                                 # %if.then.5
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB105_13
.LBB105_4:                              # %if.end.7
	movq	Vprocess_alist, %rax
	movq	%rax, -32(%rbp)
.LBB105_5:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -57(%rbp)          # 1-byte Spill
	jne	.LBB105_7
# BB#6:                                 # %land.rhs
                                        #   in Loop: Header=BB105_5 Depth=1
	movb	$1, %al
	movq	-32(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movb	%al, -57(%rbp)          # 1-byte Spill
.LBB105_7:                              # %land.end
                                        #   in Loop: Header=BB105_5 Depth=1
	movb	-57(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB105_8
	jmp	.LBB105_12
.LBB105_8:                              # %for.body
                                        #   in Loop: Header=BB105_5 Depth=1
	movq	-40(%rbp), %rdi
	callq	XPROCESS
	movq	56(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB105_10
# BB#9:                                 # %if.then.15
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB105_13
.LBB105_10:                             # %if.end.16
                                        #   in Loop: Header=BB105_5 Depth=1
	jmp	.LBB105_11
.LBB105_11:                             # %for.inc
                                        #   in Loop: Header=BB105_5 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB105_5
.LBB105_12:                             # %for.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB105_13:                             # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end105:
	.size	Fget_buffer_process, .Lfunc_end105-Fget_buffer_process
	.cfi_endproc

	.globl	Fprocess_inherit_coding_system_flag
	.align	16, 0x90
	.type	Fprocess_inherit_coding_system_flag,@function
Fprocess_inherit_coding_system_flag:    # @Fprocess_inherit_coding_system_flag
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
	movq	-8(%rbp), %rdi
	callq	CHECK_PROCESS
	movq	-8(%rbp), %rdi
	callq	XPROCESS
	movb	224(%rax), %cl
	shrb	$5, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB106_2
# BB#1:                                 # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB106_3
.LBB106_2:                              # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB106_3:                              # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end106:
	.size	Fprocess_inherit_coding_system_flag, .Lfunc_end106-Fprocess_inherit_coding_system_flag
	.cfi_endproc

	.globl	kill_buffer_processes
	.align	16, 0x90
	.type	kill_buffer_processes,@function
kill_buffer_processes:                  # @kill_buffer_processes
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	Vprocess_alist, %rdi
	movq	%rdi, -16(%rbp)
.LBB107_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB107_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB107_1 Depth=1
	movb	$1, %al
	movq	-16(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -24(%rbp)
	movb	%al, -25(%rbp)          # 1-byte Spill
.LBB107_3:                              # %land.end
                                        #   in Loop: Header=BB107_1 Depth=1
	movb	-25(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB107_4
	jmp	.LBB107_16
.LBB107_4:                              # %for.body
                                        #   in Loop: Header=BB107_1 Depth=1
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB107_6
# BB#5:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB107_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	XPROCESS
	movq	56(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB107_14
.LBB107_6:                              # %if.then
                                        #   in Loop: Header=BB107_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	XPROCESS
	movl	$699, %edi              # imm = 0x2BB
	movq	80(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB107_9
# BB#7:                                 # %lor.lhs.false.13
                                        #   in Loop: Header=BB107_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	XPROCESS
	movl	$845, %edi              # imm = 0x34D
	movq	80(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB107_9
# BB#8:                                 # %lor.lhs.false.19
                                        #   in Loop: Header=BB107_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	XPROCESS
	movl	$750, %edi              # imm = 0x2EE
	movq	80(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB107_10
.LBB107_9:                              # %if.then.25
                                        #   in Loop: Header=BB107_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	Fdelete_process
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB107_13
.LBB107_10:                             # %if.else
                                        #   in Loop: Header=BB107_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	XPROCESS
	cmpl	$0, 164(%rax)
	jl	.LBB107_12
# BB#11:                                # %if.then.30
                                        #   in Loop: Header=BB107_1 Depth=1
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edi
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movl	%edi, -84(%rbp)         # 4-byte Spill
	movq	%rcx, %rdi
	movl	-84(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rdx
	movl	-84(%rbp), %ecx         # 4-byte Reload
	callq	process_send_signal
.LBB107_12:                             # %if.end
                                        #   in Loop: Header=BB107_1 Depth=1
	jmp	.LBB107_13
.LBB107_13:                             # %if.end.32
                                        #   in Loop: Header=BB107_1 Depth=1
	jmp	.LBB107_14
.LBB107_14:                             # %if.end.33
                                        #   in Loop: Header=BB107_1 Depth=1
	jmp	.LBB107_15
.LBB107_15:                             # %for.inc
                                        #   in Loop: Header=BB107_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB107_1
.LBB107_16:                             # %for.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end107:
	.size	kill_buffer_processes, .Lfunc_end107-kill_buffer_processes
	.cfi_endproc

	.globl	Fwaiting_for_user_input_p
	.align	16, 0x90
	.type	Fwaiting_for_user_input_p,@function
Fwaiting_for_user_input_p:              # @Fwaiting_for_user_input_p
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
	subq	$16, %rsp
	cmpl	$0, waiting_for_user_input_p
	je	.LBB108_2
# BB#1:                                 # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)          # 8-byte Spill
	jmp	.LBB108_3
.LBB108_2:                              # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)          # 8-byte Spill
.LBB108_3:                              # %cond.end
	movq	-8(%rbp), %rax          # 8-byte Reload
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end108:
	.size	Fwaiting_for_user_input_p, .Lfunc_end108-Fwaiting_for_user_input_p
	.cfi_endproc

	.globl	hold_keyboard_input
	.align	16, 0x90
	.type	hold_keyboard_input,@function
hold_keyboard_input:                    # @hold_keyboard_input
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
	movb	$1, kbd_is_on_hold
	popq	%rbp
	retq
.Lfunc_end109:
	.size	hold_keyboard_input, .Lfunc_end109-hold_keyboard_input
	.cfi_endproc

	.globl	unhold_keyboard_input
	.align	16, 0x90
	.type	unhold_keyboard_input,@function
unhold_keyboard_input:                  # @unhold_keyboard_input
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
	movb	$0, kbd_is_on_hold
	popq	%rbp
	retq
.Lfunc_end110:
	.size	unhold_keyboard_input, .Lfunc_end110-unhold_keyboard_input
	.cfi_endproc

	.globl	Flist_system_processes
	.align	16, 0x90
	.type	Flist_system_processes,@function
Flist_system_processes:                 # @Flist_system_processes
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
	callq	list_system_processes
	popq	%rbp
	retq
.Lfunc_end111:
	.size	Flist_system_processes, .Lfunc_end111-Flist_system_processes
	.cfi_endproc

	.globl	Fprocess_attributes
	.align	16, 0x90
	.type	Fprocess_attributes,@function
Fprocess_attributes:                    # @Fprocess_attributes
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	system_process_attributes
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end112:
	.size	Fprocess_attributes, .Lfunc_end112-Fprocess_attributes
	.cfi_endproc

	.globl	catch_child_signal
	.align	16, 0x90
	.type	catch_child_signal,@function
catch_child_signal:                     # @catch_child_signal
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
	subq	$448, %rsp              # imm = 0x1C0
	leaq	-152(%rbp), %rdi
	movabsq	$deliver_child_signal, %rsi
	callq	emacs_sigaction_init
	leaq	-432(%rbp), %rdi
	callq	block_child_signal
	movl	$17, %edi
	leaq	-152(%rbp), %rsi
	leaq	-304(%rbp), %rdx
	callq	sigaction
	movabsq	$deliver_child_signal, %rdx
	cmpq	%rdx, -304(%rbp)
	movl	%eax, -436(%rbp)        # 4-byte Spill
	je	.LBB113_6
# BB#1:                                 # %if.then
	cmpq	$0, -304(%rbp)
	je	.LBB113_3
# BB#2:                                 # %lor.lhs.false
	movl	$1, %eax
	movl	%eax, %ecx
	cmpq	%rcx, -304(%rbp)
	jne	.LBB113_4
.LBB113_3:                              # %cond.true
	movabsq	$dummy_handler, %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	jmp	.LBB113_5
.LBB113_4:                              # %cond.false
	movq	-304(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
.LBB113_5:                              # %cond.end
	movq	-448(%rbp), %rax        # 8-byte Reload
	movq	%rax, lib_child_handler
.LBB113_6:                              # %if.end
	leaq	-432(%rbp), %rdi
	callq	unblock_child_signal
	addq	$448, %rsp              # imm = 0x1C0
	popq	%rbp
	retq
.Lfunc_end113:
	.size	catch_child_signal, .Lfunc_end113-catch_child_signal
	.cfi_endproc

	.align	16, 0x90
	.type	deliver_child_signal,@function
deliver_child_signal:                   # @deliver_child_signal
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
	movabsq	$handle_child_signal, %rsi
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	deliver_process_signal
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end114:
	.size	deliver_child_signal, .Lfunc_end114-deliver_child_signal
	.cfi_endproc

	.align	16, 0x90
	.type	dummy_handler,@function
dummy_handler:                          # @dummy_handler
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
	movl	%edi, -4(%rbp)
	popq	%rbp
	retq
.Lfunc_end115:
	.size	dummy_handler, .Lfunc_end115-dummy_handler
	.cfi_endproc

	.globl	init_process_emacs
	.align	16, 0x90
	.type	init_process_emacs,@function
init_process_emacs:                     # @init_process_emacs
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
	subq	$96, %rsp
	movb	$0, inhibit_sentinels
	testb	$1, noninteractive
	je	.LBB116_2
# BB#1:                                 # %lor.lhs.false
	testb	$1, initialized
	je	.LBB116_3
.LBB116_2:                              # %if.then
	callq	getpid
	movl	%eax, %edi
	callq	g_child_watch_source_new
	movq	%rax, %rdi
	callq	g_source_unref
	callq	catch_child_signal
.LBB116_3:                              # %if.end
	jmp	.LBB116_4
.LBB116_4:                              # %do.body
	movl	$input_wait_mask, %eax
	movl	%eax, %edi
	movl	$16, %eax
	movl	%eax, %ecx
	xorl	%eax, %eax
	#APP
	cld
	rep
	stosq	%rax, %es:(%rdi)
	#NO_APP
	movl	%ecx, %eax
	movl	%eax, -8(%rbp)
	movl	%edi, %eax
	movl	%eax, -12(%rbp)
# BB#5:                                 # %do.end
	jmp	.LBB116_6
.LBB116_6:                              # %do.body.4
	movl	$non_keyboard_wait_mask, %eax
	movl	%eax, %edi
	movl	$16, %eax
	movl	%eax, %ecx
	xorl	%eax, %eax
	#APP
	cld
	rep
	stosq	%rax, %es:(%rdi)
	#NO_APP
	movl	%ecx, %eax
	movl	%eax, -16(%rbp)
	movl	%edi, %eax
	movl	%eax, -20(%rbp)
# BB#7:                                 # %do.end.9
	jmp	.LBB116_8
.LBB116_8:                              # %do.body.10
	movl	$non_process_wait_mask, %eax
	movl	%eax, %edi
	movl	$16, %eax
	movl	%eax, %ecx
	xorl	%eax, %eax
	#APP
	cld
	rep
	stosq	%rax, %es:(%rdi)
	#NO_APP
	movl	%ecx, %eax
	movl	%eax, -24(%rbp)
	movl	%edi, %eax
	movl	%eax, -28(%rbp)
# BB#9:                                 # %do.end.15
	jmp	.LBB116_10
.LBB116_10:                             # %do.body.16
	movl	$write_mask, %eax
	movl	%eax, %edi
	movl	$16, %eax
	movl	%eax, %ecx
	xorl	%eax, %eax
	#APP
	cld
	rep
	stosq	%rax, %es:(%rdi)
	#NO_APP
	movl	%ecx, %eax
	movl	%eax, -32(%rbp)
	movl	%edi, %eax
	movl	%eax, -36(%rbp)
# BB#11:                                # %do.end.21
	movabsq	$fd_callback_info, %rax
	xorl	%esi, %esi
	movl	$24576, %ecx            # imm = 0x6000
	movl	%ecx, %edx
	movl	$-1, max_input_desc
	movl	$-1, max_process_desc
	movq	%rax, %rdi
	callq	memset
# BB#12:                                # %do.body.22
	movl	$connect_wait_mask, %eax
	movl	%eax, %edi
	movl	$16, %eax
	movl	%eax, %ecx
	xorl	%eax, %eax
	#APP
	cld
	rep
	stosq	%rax, %es:(%rdi)
	#NO_APP
	movl	%ecx, %eax
	movl	%eax, -40(%rbp)
	movl	%edi, %eax
	movl	%eax, -44(%rbp)
# BB#13:                                # %do.end.27
	xorl	%edi, %edi
	movl	$0, num_pending_connects
	movl	$0, process_output_delay_count
	movb	$0, process_output_skip
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, Vprocess_alist
	callq	builtin_lisp_symbol
	movq	%rax, deleted_pid_list
	movl	$0, -4(%rbp)
.LBB116_14:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$1024, -4(%rbp)         # imm = 0x400
	jge	.LBB116_17
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB116_14 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movslq	-4(%rbp), %rcx
	movq	%rax, chan_process(,%rcx,8)
	movslq	-4(%rbp), %rax
	movl	$-1, proc_buffered_char(,%rax,4)
# BB#16:                                # %for.inc
                                        #   in Loop: Header=BB116_14 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB116_14
.LBB116_17:                             # %for.end
	movabsq	$datagram_address, %rax
	xorl	%ecx, %ecx
	movl	$16384, %edx            # imm = 0x4000
                                        # kill: RDX<def> EDX<kill>
	movabsq	$proc_encode_coding_system, %rsi
	movl	$8192, %edi             # imm = 0x2000
	movl	%edi, %r8d
	movabsq	$proc_decode_coding_system, %r9
	movq	%r9, %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movl	%ecx, %esi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%r8, %rdx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	movq	%r8, -88(%rbp)          # 8-byte Spill
	callq	memset
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movq	-88(%rbp), %rdx         # 8-byte Reload
	callq	memset
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	memset
	movb	$0, kbd_is_on_hold
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end116:
	.size	init_process_emacs, .Lfunc_end116-init_process_emacs
	.cfi_endproc

	.globl	syms_of_process
	.align	16, 0x90
	.type	syms_of_process,@function
syms_of_process:                        # @syms_of_process
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
	subq	$160, %rsp
	movabsq	$Vprocess_alist, %rdi
	callq	staticpro
	movabsq	$deleted_pid_list, %rdi
	callq	staticpro
# BB#1:                                 # %do.body
	movabsq	$syms_of_process.b_fwd, %rdi
	movabsq	$.L.str.53, %rsi
	movabsq	$globals, %rax
	addq	$3376, %rax             # imm = 0xD30
	movq	%rax, %rdx
	callq	defvar_bool
# BB#2:                                 # %do.end
	movb	$1, globals+3376
# BB#3:                                 # %do.body.1
	movabsq	$syms_of_process.o_fwd, %rdi
	movabsq	$.L.str.54, %rsi
	movabsq	$globals, %rax
	addq	$1904, %rax             # imm = 0x770
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#4:                                 # %do.end.2
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, globals+1904
# BB#5:                                 # %do.body.3
	movabsq	$syms_of_process.o_fwd.55, %rdi
	movabsq	$.L.str.56, %rsi
	movabsq	$globals, %rax
	addq	$1888, %rax             # imm = 0x760
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#6:                                 # %do.end.4
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movabsq	$Sprocessp, %rcx
	movq	%rax, globals+1888
	movq	%rcx, %rdi
	callq	defsubr
	movabsq	$Sget_process, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sdelete_process, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sprocess_status, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sprocess_exit_status, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sprocess_id, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sprocess_name, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sprocess_tty_name, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sprocess_command, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sset_process_buffer, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sprocess_buffer, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sprocess_mark, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sset_process_filter, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sprocess_filter, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sset_process_sentinel, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sprocess_sentinel, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sset_process_window_size, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sset_process_inherit_coding_system_flag, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sset_process_query_on_exit_flag, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sprocess_query_on_exit_flag, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sprocess_contact, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sprocess_plist, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sset_process_plist, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sprocess_list, %rdi
	callq	defsubr
	movabsq	$Smake_process, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smake_pipe_process, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sserial_process_configure, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smake_serial_process, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sset_network_process_option, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smake_network_process, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sformat_network_address, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Snetwork_interface_list, %rdi
	callq	defsubr
	movabsq	$Snetwork_interface_info, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sprocess_datagram_address, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sset_process_datagram_address, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Saccept_process_output, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sprocess_send_region, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sprocess_send_string, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sinterrupt_process, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Skill_process, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Squit_process, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sstop_process, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Scontinue_process, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sprocess_running_child_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sprocess_send_eof, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Ssignal_process, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Swaiting_for_user_input_p, %rdi
	callq	defsubr
	movabsq	$Sprocess_type, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sinternal_default_process_sentinel, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sinternal_default_process_filter, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sset_process_coding_system, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sprocess_coding_system, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sset_process_filter_multibyte, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sprocess_filter_multibyte_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$88, %edi
	movq	%rax, -8(%rbp)
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	pure_cons
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	pure_cons
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	pure_cons
	movl	$131, %edi
	movq	%rax, -8(%rbp)
	callq	builtin_lisp_symbol
	movl	$316, %edi              # imm = 0x13C
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	pure_cons
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	pure_cons
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	pure_cons
	movl	$131, %edi
	movq	%rax, -8(%rbp)
	callq	builtin_lisp_symbol
	movl	$843, %edi              # imm = 0x34B
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	pure_cons
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	pure_cons
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	pure_cons
	movl	$40, %edi
	movq	%rax, -8(%rbp)
	callq	builtin_lisp_symbol
	movl	$632, %edi              # imm = 0x278
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	pure_cons
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	pure_cons
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	pure_cons
	movl	$40, %edi
	movq	%rax, -8(%rbp)
	callq	builtin_lisp_symbol
	movl	$575, %edi              # imm = 0x23F
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	pure_cons
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	pure_cons
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	pure_cons
	movl	$40, %edi
	movq	%rax, -8(%rbp)
	callq	builtin_lisp_symbol
	movl	$576, %edi              # imm = 0x240
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	pure_cons
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	pure_cons
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	pure_cons
	movl	$117, %edi
	movq	%rax, -8(%rbp)
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	pure_cons
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	pure_cons
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	pure_cons
	movl	$116, %edi
	movq	%rax, -8(%rbp)
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	pure_cons
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	pure_cons
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	pure_cons
	movabsq	$socket_options, %rcx
	movq	%rax, -8(%rbp)
	movq	%rcx, -16(%rbp)
.LBB117_7:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB117_10
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB117_7 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	intern_c_string
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	pure_cons
	movq	%rax, -8(%rbp)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB117_7 Depth=1
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB117_7
.LBB117_10:                             # %for.end
	movabsq	$.L.str.57, %rdi
	callq	intern_c_string
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fprovide
	movabsq	$Sget_buffer_process, %rsi
	movq	%rsi, %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	defsubr
	movabsq	$Sprocess_inherit_coding_system_flag, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Slist_system_processes, %rdi
	callq	defsubr
	movabsq	$Sprocess_attributes, %rax
	movq	%rax, %rdi
	callq	defsubr
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end117:
	.size	syms_of_process, .Lfunc_end117-syms_of_process
	.cfi_endproc

	.align	16, 0x90
	.type	status_convert,@function
status_convert:                         # @status_convert
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
	subq	$144, %rsp
	movl	%edi, -12(%rbp)
	movl	-12(%rbp), %edi
	movl	%edi, -16(%rbp)
	movl	-16(%rbp), %edi
	andl	$255, %edi
	cmpl	$127, %edi
	jne	.LBB118_2
# BB#1:                                 # %if.then
	movl	$880, %edi              # imm = 0x370
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	-12(%rbp), %ecx
	movl	%ecx, -24(%rbp)
	movl	-24(%rbp), %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	sarl	$8, %ecx
	movslq	%ecx, %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	%rax, -8(%rbp)
	jmp	.LBB118_13
.LBB118_2:                              # %if.else
	movl	-12(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	andl	$127, %eax
	cmpl	$0, %eax
	jne	.LBB118_7
# BB#3:                                 # %if.then.14
	movl	$387, %edi              # imm = 0x183
	callq	builtin_lisp_symbol
	movl	-12(%rbp), %edi
	movl	%edi, -40(%rbp)
	movl	-40(%rbp), %edi
	andl	$65280, %edi            # imm = 0xFF00
	sarl	$8, %edi
	movslq	%edi, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movl	-12(%rbp), %edi
	movl	%edi, -48(%rbp)
	movl	-48(%rbp), %edi
	andl	$128, %edi
	cmpl	$0, %edi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	je	.LBB118_5
# BB#4:                                 # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB118_6
.LBB118_5:                              # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB118_6:                              # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	%rax, -8(%rbp)
	jmp	.LBB118_13
.LBB118_7:                              # %if.else.32
	movl	-12(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	andl	$127, %eax
	addl	$1, %eax
	movb	%al, %cl
	movsbl	%cl, %eax
	sarl	$1, %eax
	cmpl	$0, %eax
	jle	.LBB118_12
# BB#8:                                 # %if.then.43
	movl	$862, %edi              # imm = 0x35E
	callq	builtin_lisp_symbol
	movl	-12(%rbp), %edi
	movl	%edi, -64(%rbp)
	movl	-64(%rbp), %edi
	andl	$127, %edi
	movslq	%edi, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movl	-12(%rbp), %edi
	movl	%edi, -72(%rbp)
	movl	-72(%rbp), %edi
	andl	$128, %edi
	cmpl	$0, %edi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	je	.LBB118_10
# BB#9:                                 # %cond.true.57
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB118_11
.LBB118_10:                             # %cond.false.59
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB118_11:                             # %cond.end.61
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	%rax, -8(%rbp)
	jmp	.LBB118_13
.LBB118_12:                             # %if.else.65
	movl	$820, %edi              # imm = 0x334
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB118_13:                             # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end118:
	.size	status_convert, .Lfunc_end118-status_convert
	.cfi_endproc

	.align	16, 0x90
	.type	allocate_process,@function
allocate_process:                       # @allocate_process
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
	movl	$36, %eax
	movl	$19, %esi
	movl	$2, %ecx
	movl	%eax, %edi
	movl	%eax, %edx
	callq	allocate_pseudovector
	popq	%rbp
	retq
.Lfunc_end119:
	.size	allocate_process, .Lfunc_end119-allocate_process
	.cfi_endproc

	.align	16, 0x90
	.type	pset_mark,@function
pset_mark:                              # @pset_mark
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 88(%rdi)
	popq	%rbp
	retq
.Lfunc_end120:
	.size	pset_mark, .Lfunc_end120-pset_mark
	.cfi_endproc

	.align	16, 0x90
	.type	pset_name,@function
pset_name:                              # @pset_name
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 16(%rdi)
	popq	%rbp
	retq
.Lfunc_end121:
	.size	pset_name, .Lfunc_end121-pset_name
	.cfi_endproc

	.align	16, 0x90
	.type	allocate_pty,@function
allocate_pty:                           # @allocate_pty
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
	subq	$192, %rsp
	movq	%rdi, -16(%rbp)
	movl	$0, -24(%rbp)
.LBB122_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$1, -24(%rbp)
	jge	.LBB122_18
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB122_1 Depth=1
	jmp	.LBB122_3
.LBB122_3:                              # %do.body
                                        #   in Loop: Header=BB122_1 Depth=1
	movl	$524546, %edi           # imm = 0x80102
	callq	posix_openpt
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jge	.LBB122_6
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB122_1 Depth=1
	callq	__errno_location
	cmpl	$22, (%rax)
	jne	.LBB122_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB122_1 Depth=1
	movl	$258, %edi              # imm = 0x102
	callq	posix_openpt
	movl	%eax, -20(%rbp)
.LBB122_6:                              # %if.end
                                        #   in Loop: Header=BB122_1 Depth=1
	jmp	.LBB122_7
.LBB122_7:                              # %do.end
                                        #   in Loop: Header=BB122_1 Depth=1
	cmpl	$0, -20(%rbp)
	jl	.LBB122_16
# BB#8:                                 # %if.then.6
                                        #   in Loop: Header=BB122_1 Depth=1
	leaq	-160(%rbp), %rdi
	movq	$0, -32(%rbp)
	callq	sigemptyset
	leaq	-160(%rbp), %rdi
	movl	$17, %esi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	sigaddset
	xorl	%edi, %edi
	leaq	-160(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	%eax, -168(%rbp)        # 4-byte Spill
	callq	pthread_sigmask
	movl	-20(%rbp), %edi
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	grantpt
	cmpl	$-1, %eax
	je	.LBB122_11
# BB#9:                                 # %land.lhs.true.12
                                        #   in Loop: Header=BB122_1 Depth=1
	movl	-20(%rbp), %edi
	callq	unlockpt
	cmpl	$-1, %eax
	je	.LBB122_11
# BB#10:                                # %if.then.15
                                        #   in Loop: Header=BB122_1 Depth=1
	movl	-20(%rbp), %edi
	callq	ptsname
	movq	%rax, -32(%rbp)
.LBB122_11:                             # %if.end.17
                                        #   in Loop: Header=BB122_1 Depth=1
	movl	$1, %edi
	leaq	-160(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	pthread_sigmask
	cmpq	$0, -32(%rbp)
	movl	%eax, -176(%rbp)        # 4-byte Spill
	jne	.LBB122_13
# BB#12:                                # %if.then.19
	movl	-20(%rbp), %edi
	callq	emacs_close
	movl	$-1, -4(%rbp)
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jmp	.LBB122_19
.LBB122_13:                             # %if.end.21
                                        #   in Loop: Header=BB122_1 Depth=1
	movl	$24, %eax
	movl	%eax, %esi
	movabsq	$.L.str.64, %rdx
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movb	$0, %al
	callq	snprintf
	movl	$2, %esi
	movl	$1, %edx
	movl	-20(%rbp), %edi
	movl	%eax, -184(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	rpl_fcntl
	movl	$4294967196, %edi       # imm = 0xFFFFFF9C
	movl	$6, %edx
	movl	$512, %ecx              # imm = 0x200
	movq	-16(%rbp), %rsi
	movl	%eax, -188(%rbp)        # 4-byte Spill
	callq	faccessat
	cmpl	$0, %eax
	je	.LBB122_15
# BB#14:                                # %if.then.26
                                        #   in Loop: Header=BB122_1 Depth=1
	movl	-20(%rbp), %edi
	callq	emacs_close
	movl	%eax, -192(%rbp)        # 4-byte Spill
	jmp	.LBB122_17
.LBB122_15:                             # %if.end.28
	movl	-20(%rbp), %edi
	callq	setup_pty
	movl	-20(%rbp), %edi
	movl	%edi, -4(%rbp)
	jmp	.LBB122_19
.LBB122_16:                             # %if.end.29
                                        #   in Loop: Header=BB122_1 Depth=1
	jmp	.LBB122_17
.LBB122_17:                             # %for.inc
                                        #   in Loop: Header=BB122_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB122_1
.LBB122_18:                             # %for.end
	movl	$-1, -4(%rbp)
.LBB122_19:                             # %return
	movl	-4(%rbp), %eax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end122:
	.size	allocate_pty, .Lfunc_end122-allocate_pty
	.cfi_endproc

	.align	16, 0x90
	.type	pset_tty_name,@function
pset_tty_name:                          # @pset_tty_name
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
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 8(%rdi)
	popq	%rbp
	retq
.Lfunc_end123:
	.size	pset_tty_name, .Lfunc_end123-pset_tty_name
	.cfi_endproc

	.align	16, 0x90
	.type	read_and_dispose_of_process_output,@function
read_and_dispose_of_process_output:     # @read_and_dispose_of_process_output
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
	subq	$240, %rsp
	movl	$546, %eax              # imm = 0x222
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movb	running_asynch_code, %r8b
	andb	$1, %r8b
	movb	%r8b, -49(%rbp)
	movl	waiting_for_user_input_p, %r9d
	movl	%r9d, -56(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movl	$604, %edi              # imm = 0x25C
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	testb	$1, -49(%rbp)
	je	.LBB124_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fmatch_data
	movq	%rax, -64(%rbp)
	callq	restore_search_regs
	callq	record_unwind_save_match_data
	movl	$901, %edi              # imm = 0x385
	movq	-64(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fset_match_data
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB124_2:                              # %if.end
	movb	$1, running_asynch_code
# BB#3:                                 # %do.body
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 456(%rcx)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 440(%rcx)
	movq	-32(%rbp), %rcx
	movq	%rax, 432(%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	-24(%rbp), %r8
	movq	-24(%rbp), %r9
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%r9, -136(%rbp)         # 8-byte Spill
	movq	%r8, -144(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %ecx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	%rcx, %rdx
	movq	-144(%rbp), %r8         # 8-byte Reload
	movq	-136(%rbp), %r9         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	decode_coding_object
# BB#4:                                 # %do.end
	movq	-32(%rbp), %rax
	movq	488(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	Vcoding_system_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-32(%rbp), %rdi
	movq	(%rdi), %rsi
	movq	%rax, %rdi
	callq	HASH_KEY
	movq	%rax, globals+1240
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	cmpq	globals+1240, %rax
	je	.LBB124_10
# BB#5:                                 # %if.then.15
	movq	-8(%rbp), %rdi
	movq	globals+1240, %rsi
	callq	pset_decode_coding_system
	xorl	%edi, %edi
	movq	-8(%rbp), %rsi
	movq	120(%rsi), %rsi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB124_9
# BB#6:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpl	$0, 168(%rax)
	jl	.LBB124_9
# BB#7:                                 # %land.lhs.true.19
	movq	-8(%rbp), %rax
	movslq	168(%rax), %rax
	cmpq	$0, proc_encode_coding_system(,%rax,8)
	je	.LBB124_9
# BB#8:                                 # %if.then.22
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	globals+1240, %rcx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	coding_inherit_eol_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_encode_coding_system
	movq	-8(%rbp), %rax
	movq	120(%rax), %rdi
	movq	-8(%rbp), %rax
	movslq	168(%rax), %rax
	movq	proc_encode_coding_system(,%rax,8), %rsi
	callq	setup_coding_system
.LBB124_9:                              # %if.end.29
	jmp	.LBB124_10
.LBB124_10:                             # %if.end.30
	movq	-32(%rbp), %rax
	cmpl	$0, 584(%rax)
	jle	.LBB124_14
# BB#11:                                # %if.then.32
	movq	-8(%rbp), %rax
	movq	112(%rax), %rdi
	callq	SCHARS
	movq	-32(%rbp), %rdi
	movslq	584(%rdi), %rdi
	cmpq	%rdi, %rax
	jge	.LBB124_13
# BB#12:                                # %if.then.37
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movslq	584(%rax), %rax
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	make_uninit_string
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_decoding_buf
.LBB124_13:                             # %if.end.41
	movq	-8(%rbp), %rax
	movq	112(%rax), %rdi
	callq	SDATA
	movq	-32(%rbp), %rdi
	addq	$520, %rdi              # imm = 0x208
	movq	-32(%rbp), %rcx
	movslq	584(%rcx), %rdx
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-184(%rbp), %rsi        # 8-byte Reload
	callq	memcpy
	movq	-32(%rbp), %rax
	movl	584(%rax), %r8d
	movq	-8(%rbp), %rax
	movl	%r8d, 216(%rax)
.LBB124_14:                             # %if.end.47
	movq	-48(%rbp), %rdi
	callq	SBYTES
	cmpq	$0, %rax
	jle	.LBB124_19
# BB#15:                                # %if.then.51
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	make_lisp_proc
	movq	-48(%rbp), %rdx
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	list3
	xorl	%edi, %edi
	movq	globals+432, %rdx
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB124_17
# BB#16:                                # %cond.true
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB124_18
.LBB124_17:                             # %cond.false
	movl	$372, %edi              # imm = 0x174
	callq	builtin_lisp_symbol
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB124_18:                             # %cond.end
	movq	-216(%rbp), %rax        # 8-byte Reload
	movabsq	$read_process_output_call, %rdi
	movabsq	$read_process_output_error_handler, %rcx
	movq	-200(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	internal_condition_case_1
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB124_19:                             # %if.end.60
	callq	restore_search_regs
	movb	-49(%rbp), %al
	andb	$1, %al
	movb	%al, running_asynch_code
	movl	-56(%rbp), %ecx
	movl	%ecx, waiting_for_user_input_p
	cmpl	$-1, waiting_for_user_input_p
	jne	.LBB124_21
# BB#20:                                # %if.then.65
	callq	record_asynch_buffer_change
.LBB124_21:                             # %if.end.66
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end124:
	.size	read_and_dispose_of_process_output, .Lfunc_end124-read_and_dispose_of_process_output
	.cfi_endproc

	.align	16, 0x90
	.type	read_process_output_call,@function
read_process_output_call:               # @read_process_output_call
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	subq	$3, %rdi
	movq	(%rdi), %rdi
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rsi
	callq	apply1
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end125:
	.size	read_process_output_call, .Lfunc_end125-read_process_output_call
	.cfi_endproc

	.align	16, 0x90
	.type	make_lisp_proc,@function
make_lisp_proc:                         # @make_lisp_proc
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
	movl	$5, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	make_lisp_ptr
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end126:
	.size	make_lisp_proc, .Lfunc_end126-make_lisp_proc
	.cfi_endproc

	.align	16, 0x90
	.type	read_process_output_error_handler,@function
read_process_output_error_handler:      # @read_process_output_error_handler
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
	subq	$16, %rsp
	movabsq	$.L.str.93, %rsi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	cmd_error_internal
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, globals+1104
	callq	update_echo_area
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$10, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	Fsleep_for
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end127:
	.size	read_process_output_error_handler, .Lfunc_end127-read_process_output_error_handler
	.cfi_endproc

	.align	16, 0x90
	.type	write_queue_push,@function
write_queue_push:                       # @write_queue_push
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
	subq	$112, %rsp
	movb	%r8b, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	andb	$1, %al
	movb	%al, -33(%rbp)
	movq	-16(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB128_1
	jmp	.LBB128_2
.LBB128_1:                              # %if.then
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	SSDATA
	movq	-72(%rbp), %rdi         # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB128_3
.LBB128_2:                              # %if.else
	movq	$0, -48(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	make_unibyte_string
	movq	%rax, -64(%rbp)
.LBB128_3:                              # %if.end
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-32(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	Fcons
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	%rax, -56(%rbp)
	testb	$1, -33(%rbp)
	je	.LBB128_5
# BB#4:                                 # %if.then.8
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	136(%rcx), %rsi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcons
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_write_queue
	jmp	.LBB128_6
.LBB128_5:                              # %if.else.10
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	list1
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	nconc2
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	pset_write_queue
.LBB128_6:                              # %if.end.14
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end128:
	.size	write_queue_push, .Lfunc_end128-write_queue_push
	.cfi_endproc

	.align	16, 0x90
	.type	write_queue_pop,@function
write_queue_pop:                        # @write_queue_pop
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rcx
	movq	136(%rcx), %rcx
	movl	%eax, %edi
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB129_2
# BB#1:                                 # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB129_3
.LBB129_2:                              # %if.end
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rsi
	callq	pset_write_queue
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	movq	-40(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	SSDATA
	addq	-64(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	%rax, (%rsi)
	movb	$1, -1(%rbp)
.LBB129_3:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end129:
	.size	write_queue_pop, .Lfunc_end129-write_queue_pop
	.cfi_endproc

	.align	16, 0x90
	.type	pset_write_queue,@function
pset_write_queue:                       # @pset_write_queue
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
	movq	%rsi, 136(%rdi)
	popq	%rbp
	retq
.Lfunc_end130:
	.size	pset_write_queue, .Lfunc_end130-pset_write_queue
	.cfi_endproc

	.align	16, 0x90
	.type	exec_sentinel_error_handler,@function
exec_sentinel_error_handler:            # @exec_sentinel_error_handler
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
	subq	$16, %rsp
	movabsq	$.L.str.100, %rsi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	cmd_error_internal
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, globals+1104
	callq	update_echo_area
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$10, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	Fsleep_for
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end131:
	.size	exec_sentinel_error_handler, .Lfunc_end131-exec_sentinel_error_handler
	.cfi_endproc

	.align	16, 0x90
	.type	status_message,@function
status_message:                         # @status_message
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
	subq	$432, %rsp              # imm = 0x1B0
	leaq	-32(%rbp), %rsi
	leaq	-36(%rbp), %rdx
	leaq	-37(%rbp), %rcx
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	96(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	decode_status
	movl	$862, %edi              # imm = 0x35E
	movq	-32(%rbp), %rcx
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB132_2
# BB#1:                                 # %lor.lhs.false
	movl	$880, %edi              # imm = 0x370
	movq	-32(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB132_19
.LBB132_2:                              # %if.then
	callq	synchronize_system_messages_locale
	movl	-36(%rbp), %edi
	callq	strsignal
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB132_4
# BB#3:                                 # %if.then.6
	movabsq	$.L.str.101, %rdi
	callq	build_string
	movq	%rax, -48(%rbp)
	jmp	.LBB132_18
.LBB132_4:                              # %if.else
	movq	-56(%rbp), %rdi
	callq	build_unibyte_string
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	globals+1344, %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB132_6
# BB#5:                                 # %if.then.11
	xorl	%edx, %edx
	movq	-48(%rbp), %rdi
	movq	globals+1344, %rsi
	callq	code_convert_string_norecord
	movq	%rax, -48(%rbp)
.LBB132_6:                              # %if.end
	movq	-48(%rbp), %rdi
	callq	SDATA
	movzbl	(%rax), %ecx
	andl	$128, %ecx
	cmpl	$0, %ecx
	jne	.LBB132_8
# BB#7:                                 # %cond.true
	movq	-48(%rbp), %rdi
	callq	SDATA
	movzbl	(%rax), %ecx
	movl	%ecx, -292(%rbp)        # 4-byte Spill
	jmp	.LBB132_15
.LBB132_8:                              # %cond.false
	movq	-48(%rbp), %rdi
	callq	SDATA
	movzbl	(%rax), %ecx
	andl	$32, %ecx
	cmpl	$0, %ecx
	jne	.LBB132_10
# BB#9:                                 # %cond.true.22
	movq	-48(%rbp), %rdi
	callq	SDATA
	movzbl	(%rax), %ecx
	andl	$31, %ecx
	shll	$6, %ecx
	movq	-48(%rbp), %rdi
	movl	%ecx, -296(%rbp)        # 4-byte Spill
	callq	SDATA
	movzbl	1(%rax), %ecx
	andl	$63, %ecx
	movl	-296(%rbp), %edx        # 4-byte Reload
	orl	%ecx, %edx
	movq	-48(%rbp), %rdi
	movl	%edx, -300(%rbp)        # 4-byte Spill
	callq	SDATA
	xorl	%ecx, %ecx
	movl	$4194176, %edx          # imm = 0x3FFF80
	movzbl	(%rax), %esi
	cmpl	$194, %esi
	cmovll	%edx, %ecx
	movl	-300(%rbp), %edx        # 4-byte Reload
	addl	%ecx, %edx
	movl	%edx, -304(%rbp)        # 4-byte Spill
	jmp	.LBB132_14
.LBB132_10:                             # %cond.false.36
	movq	-48(%rbp), %rdi
	callq	SDATA
	movzbl	(%rax), %ecx
	andl	$16, %ecx
	cmpl	$0, %ecx
	jne	.LBB132_12
# BB#11:                                # %cond.true.42
	movq	-48(%rbp), %rdi
	callq	SDATA
	movzbl	(%rax), %ecx
	andl	$15, %ecx
	shll	$12, %ecx
	movq	-48(%rbp), %rdi
	movl	%ecx, -308(%rbp)        # 4-byte Spill
	callq	SDATA
	movzbl	1(%rax), %ecx
	andl	$63, %ecx
	shll	$6, %ecx
	movl	-308(%rbp), %edx        # 4-byte Reload
	orl	%ecx, %edx
	movq	-48(%rbp), %rdi
	movl	%edx, -312(%rbp)        # 4-byte Spill
	callq	SDATA
	movzbl	2(%rax), %ecx
	andl	$63, %ecx
	movl	-312(%rbp), %edx        # 4-byte Reload
	orl	%ecx, %edx
	movl	%edx, -316(%rbp)        # 4-byte Spill
	jmp	.LBB132_13
.LBB132_12:                             # %cond.false.59
	movq	-48(%rbp), %rdi
	callq	SDATA
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-328(%rbp), %rsi        # 8-byte Reload
	movq	-328(%rbp), %rdx        # 8-byte Reload
	callq	string_char
	movl	%eax, -316(%rbp)        # 4-byte Spill
.LBB132_13:                             # %cond.end
	movl	-316(%rbp), %eax        # 4-byte Reload
	movl	%eax, -304(%rbp)        # 4-byte Spill
.LBB132_14:                             # %cond.end.63
	movl	-304(%rbp), %eax        # 4-byte Reload
	movl	%eax, -292(%rbp)        # 4-byte Spill
.LBB132_15:                             # %cond.end.65
	movl	-292(%rbp), %eax        # 4-byte Reload
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %edi
	callq	downcase
	movl	%eax, -64(%rbp)
	movl	-60(%rbp), %eax
	cmpl	-64(%rbp), %eax
	je	.LBB132_17
# BB#16:                                # %if.then.70
	movl	$2, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	movslq	-64(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rdx
	callq	Faset
	movq	%rax, -336(%rbp)        # 8-byte Spill
.LBB132_17:                             # %if.end.75
	jmp	.LBB132_18
.LBB132_18:                             # %if.end.76
	movl	$4, %esi
	leaq	-104(%rbp), %rax
	movabsq	$.L.str.85, %rcx
	movabsq	$.L.str.102, %rdx
	movb	-37(%rbp), %dil
	testb	$1, %dil
	movq	%rcx, %r8
	cmovneq	%rdx, %r8
	movq	%r8, %rdi
	movl	%esi, -340(%rbp)        # 4-byte Spill
	movq	%rax, -352(%rbp)        # 8-byte Spill
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	movq	%rdx, -368(%rbp)        # 8-byte Spill
	callq	strlen
	movq	%rax, -104(%rbp)
	movq	$-1, -96(%rbp)
	movq	$0, -88(%rbp)
	movb	-37(%rbp), %r9b
	testb	$1, %r9b
	movq	-360(%rbp), %rax        # 8-byte Reload
	movq	-368(%rbp), %rcx        # 8-byte Reload
	cmovneq	%rcx, %rax
	movq	%rax, -80(%rbp)
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	movl	-340(%rbp), %esi        # 4-byte Reload
	callq	make_lisp_ptr
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	concat2
	movq	%rax, -8(%rbp)
	jmp	.LBB132_28
.LBB132_19:                             # %if.else.87
	movl	$387, %edi              # imm = 0x183
	movq	-32(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-376(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB132_25
# BB#20:                                # %if.then.91
	movl	$699, %edi              # imm = 0x2BB
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-384(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB132_22
# BB#21:                                # %if.then.95
	movabsq	$.L.str.104, %rax
	movabsq	$.L.str.103, %rcx
	cmpl	$0, -36(%rbp)
	cmoveq	%rcx, %rax
	movq	%rax, %rdi
	callq	build_string
	movq	%rax, -8(%rbp)
	jmp	.LBB132_28
.LBB132_22:                             # %if.end.100
	cmpl	$0, -36(%rbp)
	jne	.LBB132_24
# BB#23:                                # %if.then.103
	movabsq	$.L.str.105, %rdi
	callq	build_string
	movq	%rax, -8(%rbp)
	jmp	.LBB132_28
.LBB132_24:                             # %if.end.105
	movl	$4, %esi
	leaq	-144(%rbp), %rax
	movabsq	$.L.str.106, %rcx
	movq	$28, -144(%rbp)
	movq	$-1, -136(%rbp)
	movq	$0, -128(%rbp)
	movq	%rcx, -120(%rbp)
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -112(%rbp)
	movslq	-36(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdi
	callq	Fnumber_to_string
	movl	$4, %esi
	leaq	-184(%rbp), %rcx
	movabsq	$.L.str.85, %rdi
	movabsq	$.L.str.102, %rdx
	movq	%rax, -48(%rbp)
	movb	-37(%rbp), %r8b
	testb	$1, %r8b
	movq	%rdi, %rax
	cmovneq	%rdx, %rax
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -400(%rbp)        # 8-byte Spill
	movl	%esi, -404(%rbp)        # 4-byte Spill
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	callq	strlen
	movq	%rax, -184(%rbp)
	movq	$-1, -176(%rbp)
	movq	$0, -168(%rbp)
	movb	-37(%rbp), %r8b
	testb	$1, %r8b
	movq	-392(%rbp), %rax        # 8-byte Reload
	movq	-400(%rbp), %rcx        # 8-byte Reload
	cmovneq	%rcx, %rax
	movq	%rax, -160(%rbp)
	movq	-416(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	movl	-404(%rbp), %esi        # 4-byte Reload
	callq	make_lisp_ptr
	movq	%rax, -152(%rbp)
	movq	-112(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-152(%rbp), %rdx
	callq	concat3
	movq	%rax, -8(%rbp)
	jmp	.LBB132_28
.LBB132_25:                             # %if.else.135
	movl	$401, %edi              # imm = 0x191
	movq	-32(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-424(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB132_27
# BB#26:                                # %if.then.139
	movl	$4, %esi
	leaq	-224(%rbp), %rax
	movabsq	$.L.str.107, %rcx
	movq	$17, -224(%rbp)
	movq	$-1, -216(%rbp)
	movq	$0, -208(%rbp)
	movq	%rcx, -200(%rbp)
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -192(%rbp)
	movslq	-36(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdi
	callq	Fnumber_to_string
	movl	$4, %esi
	leaq	-264(%rbp), %rcx
	movabsq	$.L.str.85, %rdi
	movq	%rax, -48(%rbp)
	movq	$1, -264(%rbp)
	movq	$-1, -256(%rbp)
	movq	$0, -248(%rbp)
	movq	%rdi, -240(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	movq	%rax, -232(%rbp)
	movq	-192(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-232(%rbp), %rdx
	callq	concat3
	movq	%rax, -8(%rbp)
	jmp	.LBB132_28
.LBB132_27:                             # %if.else.163
	movq	-32(%rbp), %rdi
	callq	Fsymbol_name
	movq	%rax, %rdi
	callq	Fcopy_sequence
	movq	%rax, -8(%rbp)
.LBB132_28:                             # %return
	movq	-8(%rbp), %rax
	addq	$432, %rsp              # imm = 0x1B0
	popq	%rbp
	retq
.Lfunc_end132:
	.size	status_message, .Lfunc_end132-status_message
	.cfi_endproc

	.align	16, 0x90
	.type	decode_status,@function
decode_status:                          # @decode_status
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	andq	$7, %rcx
	movl	%ecx, %eax
	cmpl	$0, %eax
	jne	.LBB133_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
	jmp	.LBB133_3
.LBB133_2:                              # %if.else
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%sil
	xorb	$-1, %sil
	movq	-32(%rbp), %rax
	andb	$1, %sil
	movb	%sil, (%rax)
.LBB133_3:                              # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end133:
	.size	decode_status, .Lfunc_end133-decode_status
	.cfi_endproc

	.align	16, 0x90
	.type	handle_child_signal,@function
handle_child_signal:                    # @handle_child_signal
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
	subq	$112, %rsp
	movl	%edi, -4(%rbp)
	movq	deleted_pid_list, %rax
	movq	%rax, -16(%rbp)
.LBB134_1:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB134_17
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB134_1 Depth=1
	movb	$1, -25(%rbp)
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB134_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB134_1 Depth=1
	jmp	.LBB134_16
.LBB134_4:                              # %if.end
                                        #   in Loop: Header=BB134_1 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	testb	$1, -25(%rbp)
	je	.LBB134_6
# BB#5:                                 # %cond.true
                                        #   in Loop: Header=BB134_1 Depth=1
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	je	.LBB134_7
	jmp	.LBB134_15
.LBB134_6:                              # %cond.false
                                        #   in Loop: Header=BB134_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	NUMBERP
	testb	$1, %al
	jne	.LBB134_7
	jmp	.LBB134_15
.LBB134_7:                              # %if.then.15
                                        #   in Loop: Header=BB134_1 Depth=1
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB134_9
# BB#8:                                 # %if.then.21
                                        #   in Loop: Header=BB134_1 Depth=1
	movq	-48(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -52(%rbp)
	jmp	.LBB134_10
.LBB134_9:                              # %if.else
                                        #   in Loop: Header=BB134_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	XFLOAT_DATA
	cvttsd2si	%xmm0, %eax
	movl	%eax, -52(%rbp)
.LBB134_10:                             # %if.end.25
                                        #   in Loop: Header=BB134_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	xorl	%edx, %edx
	movl	-52(%rbp), %edi
	callq	child_status_changed
	cmpl	$0, %eax
	je	.LBB134_14
# BB#11:                                # %if.then.28
                                        #   in Loop: Header=BB134_1 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB134_12
	jmp	.LBB134_13
.LBB134_12:                             # %if.then.31
                                        #   in Loop: Header=BB134_1 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	SSDATA
	movq	%rax, %rdi
	callq	unlink
	movl	%eax, -88(%rbp)         # 4-byte Spill
.LBB134_13:                             # %if.end.37
                                        #   in Loop: Header=BB134_1 Depth=1
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCAR
.LBB134_14:                             # %if.end.39
                                        #   in Loop: Header=BB134_1 Depth=1
	jmp	.LBB134_15
.LBB134_15:                             # %if.end.40
                                        #   in Loop: Header=BB134_1 Depth=1
	jmp	.LBB134_16
.LBB134_16:                             # %for.inc
                                        #   in Loop: Header=BB134_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB134_1
.LBB134_17:                             # %for.end
	movq	Vprocess_alist, %rax
	movq	%rax, -16(%rbp)
.LBB134_18:                             # %for.cond.44
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -97(%rbp)          # 1-byte Spill
	jne	.LBB134_20
# BB#19:                                # %land.rhs
                                        #   in Loop: Header=BB134_18 Depth=1
	movb	$1, %al
	movq	-16(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -24(%rbp)
	movb	%al, -97(%rbp)          # 1-byte Spill
.LBB134_20:                             # %land.end
                                        #   in Loop: Header=BB134_18 Depth=1
	movb	-97(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB134_21
	jmp	.LBB134_33
.LBB134_21:                             # %for.body.54
                                        #   in Loop: Header=BB134_18 Depth=1
	movq	-24(%rbp), %rdi
	callq	XPROCESS
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movb	224(%rax), %cl
	shrb	$6, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB134_31
# BB#22:                                # %land.lhs.true
                                        #   in Loop: Header=BB134_18 Depth=1
	leaq	-68(%rbp), %rsi
	movl	$10, %edx
	movq	-64(%rbp), %rax
	movl	160(%rax), %edi
	callq	child_status_changed
	cmpl	$0, %eax
	je	.LBB134_31
# BB#23:                                # %if.then.59
                                        #   in Loop: Header=BB134_18 Depth=1
	movq	process_tick, %rax
	addq	$1, %rax
	movq	%rax, process_tick
	movq	-64(%rbp), %rcx
	movq	%rax, 200(%rcx)
	movl	-68(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	%edx, 228(%rax)
	movq	-64(%rbp), %rax
	movb	224(%rax), %sil
	andb	$127, %sil
	orb	$-128, %sil
	movb	%sil, 224(%rax)
	movl	-68(%rbp), %edx
	movl	%edx, -72(%rbp)
	movl	-72(%rbp), %edx
	andl	$127, %edx
	addl	$1, %edx
	movb	%dl, %sil
	movsbl	%sil, %edx
	sarl	$1, %edx
	cmpl	$0, %edx
	jg	.LBB134_25
# BB#24:                                # %lor.lhs.false
                                        #   in Loop: Header=BB134_18 Depth=1
	movl	-68(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %eax
	andl	$127, %eax
	cmpl	$0, %eax
	jne	.LBB134_30
.LBB134_25:                             # %if.then.74
                                        #   in Loop: Header=BB134_18 Depth=1
	movb	$0, -81(%rbp)
	movq	-64(%rbp), %rax
	movb	224(%rax), %cl
	andb	$-65, %cl
	movb	%cl, 224(%rax)
	movq	-64(%rbp), %rax
	cmpl	$0, 164(%rax)
	jl	.LBB134_27
# BB#26:                                # %if.then.80
                                        #   in Loop: Header=BB134_18 Depth=1
	movb	$1, -81(%rbp)
.LBB134_27:                             # %if.end.81
                                        #   in Loop: Header=BB134_18 Depth=1
	testb	$1, -81(%rbp)
	je	.LBB134_29
# BB#28:                                # %if.then.83
                                        #   in Loop: Header=BB134_18 Depth=1
	movabsq	$input_wait_mask, %rsi
	movq	-64(%rbp), %rax
	movl	164(%rax), %edi
	callq	fd_CLR
	movabsq	$non_keyboard_wait_mask, %rsi
	movq	-64(%rbp), %rax
	movl	164(%rax), %edi
	callq	fd_CLR
.LBB134_29:                             # %if.end.86
                                        #   in Loop: Header=BB134_18 Depth=1
	jmp	.LBB134_30
.LBB134_30:                             # %if.end.87
                                        #   in Loop: Header=BB134_18 Depth=1
	jmp	.LBB134_31
.LBB134_31:                             # %if.end.88
                                        #   in Loop: Header=BB134_18 Depth=1
	jmp	.LBB134_32
.LBB134_32:                             # %for.inc.89
                                        #   in Loop: Header=BB134_18 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB134_18
.LBB134_33:                             # %for.end.93
	movq	lib_child_handler, %rax
	movl	-4(%rbp), %edi
	callq	*%rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end134:
	.size	handle_child_signal, .Lfunc_end134-handle_child_signal
	.cfi_endproc

	.type	fd_callback_info,@object # @fd_callback_info
	.local	fd_callback_info
	.comm	fd_callback_info,24576,16
	.type	write_mask,@object      # @write_mask
	.local	write_mask
	.comm	write_mask,128,8
	.type	max_input_desc,@object  # @max_input_desc
	.local	max_input_desc
	.comm	max_input_desc,4,4
	.type	Vprocess_alist,@object  # @Vprocess_alist
	.local	Vprocess_alist
	.comm	Vprocess_alist,8,8
	.type	deleted_pid_list,@object # @deleted_pid_list
	.local	deleted_pid_list
	.comm	deleted_pid_list,8,8
	.type	process_tick,@object    # @process_tick
	.local	process_tick
	.comm	process_tick,8,8
	.type	input_wait_mask,@object # @input_wait_mask
	.local	input_wait_mask
	.comm	input_wait_mask,128,8
	.type	non_keyboard_wait_mask,@object # @non_keyboard_wait_mask
	.local	non_keyboard_wait_mask
	.comm	non_keyboard_wait_mask,128,8
	.type	datagram_address,@object # @datagram_address
	.local	datagram_address
	.comm	datagram_address,16384,16
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d.%d.%d.%d"
	.size	.L.str, 12

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%d.%d.%d.%d:%d"
	.size	.L.str.1, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%x:%x:%x:%x:%x:%x:%x:%x"
	.size	.L.str.2, 24

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"[%x:%x:%x:%x:%x:%x:%x:%x]:%d"
	.size	.L.str.3, 29

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"<Family %d>"
	.size	.L.str.4, 12

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Process is not a pipe process"
	.size	.L.str.5, 30

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	" stderr"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Unknown connection type"
	.size	.L.str.7, 24

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Searching for program"
	.size	.L.str.8, 22

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Specified program for new process is a directory"
	.size	.L.str.9, 49

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Creating pipe"
	.size	.L.str.10, 14

	.type	chan_process,@object    # @chan_process
	.local	chan_process
	.comm	chan_process,8192,16
	.type	max_process_desc,@object # @max_process_desc
	.local	max_process_desc
	.comm	max_process_desc,4,4
	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Process is not a network process"
	.size	.L.str.11, 33

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Process is not running"
	.size	.L.str.12, 23

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Unknown or unsupported option"
	.size	.L.str.13, 30

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Not a serial process"
	.size	.L.str.14, 21

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"No port specified"
	.size	.L.str.15, 18

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	":speed not specified"
	.size	.L.str.16, 21

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Unsupported connection type"
	.size	.L.str.17, 28

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Malformed :address"
	.size	.L.str.18, 19

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Unknown address family"
	.size	.L.str.19, 23

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"127.0.0.1"
	.size	.L.str.20, 10

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	":family local ignores the :host property"
	.size	.L.str.21, 41

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Service name too long"
	.size	.L.str.22, 22

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"0"
	.size	.L.str.23, 2

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"%ld"
	.size	.L.str.24, 4

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"%s/%s %s"
	.size	.L.str.25, 9

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"udp"
	.size	.L.str.26, 4

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"tcp"
	.size	.L.str.27, 4

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Unknown service: %s"
	.size	.L.str.28, 20

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Cannot set reuse option on server socket"
	.size	.L.str.29, 41

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Cannot bind server socket"
	.size	.L.str.30, 26

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Cannot listen on server socket"
	.size	.L.str.31, 31

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Failed select"
	.size	.L.str.32, 14

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Failed getsockopt"
	.size	.L.str.33, 18

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Failed connect"
	.size	.L.str.34, 15

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"make server process failed"
	.size	.L.str.35, 27

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"make client process failed"
	.size	.L.str.36, 27

	.type	connect_wait_mask,@object # @connect_wait_mask
	.local	connect_wait_mask
	.comm	connect_wait_mask,128,8
	.type	num_pending_connects,@object # @num_pending_connects
	.local	num_pending_connects
	.comm	num_pending_connects,4,4
	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Blocking call to accept-process-output with quit inhibited!!"
	.size	.L.str.37, 61

	.type	waiting_for_user_input_p,@object # @waiting_for_user_input_p
	.local	waiting_for_user_input_p
	.comm	waiting_for_user_input_p,4,4
	.type	update_tick,@object     # @update_tick
	.local	update_tick
	.comm	update_tick,8,8
	.type	non_process_wait_mask,@object # @non_process_wait_mask
	.local	non_process_wait_mask
	.comm	non_process_wait_mask,128,8
	.type	process_output_delay_count,@object # @process_output_delay_count
	.local	process_output_delay_count
	.comm	process_output_delay_count,4,4
	.type	process_output_skip,@object # @process_output_skip
	.local	process_output_skip
	.comm	process_output_skip,1,1
	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"open\n"
	.size	.L.str.38, 6

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Process %s is not a subprocess"
	.size	.L.str.39, 31

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Process %s is not active"
	.size	.L.str.40, 25

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Cannot signal process %s"
	.size	.L.str.41, 25

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Undefined signal name %s"
	.size	.L.str.42, 25

	.type	proc_encode_coding_system,@object # @proc_encode_coding_system
	.local	proc_encode_coding_system
	.comm	proc_encode_coding_system,8192,16
	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Process %s not running"
	.size	.L.str.43, 23

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.zero	1
	.size	.L.str.44, 1

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"\004"
	.size	.L.str.45, 2

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Failed tcdrain"
	.size	.L.str.46, 15

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"/dev/null"
	.size	.L.str.47, 10

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Opening null device"
	.size	.L.str.48, 20

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"\nProcess "
	.size	.L.str.49, 10

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	" "
	.size	.L.str.50, 2

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Input file descriptor of %s closed"
	.size	.L.str.51, 35

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Output file descriptor of %s closed"
	.size	.L.str.52, 36

	.type	proc_decode_coding_system,@object # @proc_decode_coding_system
	.local	proc_decode_coding_system
	.comm	proc_decode_coding_system,8192,16
	.type	kbd_is_on_hold,@object  # @kbd_is_on_hold
	.local	kbd_is_on_hold
	.comm	kbd_is_on_hold,1,1
	.type	lib_child_handler,@object # @lib_child_handler
	.local	lib_child_handler
	.comm	lib_child_handler,8,8
	.type	inhibit_sentinels,@object # @inhibit_sentinels
	.comm	inhibit_sentinels,1,1
	.type	proc_buffered_char,@object # @proc_buffered_char
	.local	proc_buffered_char
	.comm	proc_buffered_char,4096,16
	.type	syms_of_process.b_fwd,@object # @syms_of_process.b_fwd
	.local	syms_of_process.b_fwd
	.comm	syms_of_process.b_fwd,16,8
	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"delete-exited-processes"
	.size	.L.str.53, 24

	.type	syms_of_process.o_fwd,@object # @syms_of_process.o_fwd
	.local	syms_of_process.o_fwd
	.comm	syms_of_process.o_fwd,16,8
	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"process-connection-type"
	.size	.L.str.54, 24

	.type	syms_of_process.o_fwd.55,@object # @syms_of_process.o_fwd.55
	.local	syms_of_process.o_fwd.55
	.comm	syms_of_process.o_fwd.55,16,8
	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"process-adaptive-read-buffering"
	.size	.L.str.56, 32

	.type	Sprocess_list,@object   # @Sprocess_list
	.data
	.align	8
Sprocess_list:
	.quad	167772160               # 0xa000000
	.quad	Fprocess_list
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.131
	.quad	0
	.quad	0
	.size	Sprocess_list, 48

	.type	Snetwork_interface_list,@object # @Snetwork_interface_list
	.align	8
Snetwork_interface_list:
	.quad	167772160               # 0xa000000
	.quad	Fnetwork_interface_list
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.138
	.quad	0
	.quad	0
	.size	Snetwork_interface_list, 48

	.type	Swaiting_for_user_input_p,@object # @Swaiting_for_user_input_p
	.align	8
Swaiting_for_user_input_p:
	.quad	167772160               # 0xa000000
	.quad	Fwaiting_for_user_input_p
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.154
	.quad	0
	.quad	0
	.size	Swaiting_for_user_input_p, 48

	.type	socket_options,@object  # @socket_options
	.section	.rodata,"a",@progbits
	.align	16
socket_options:
	.quad	.L.str.162
	.long	1                       # 0x1
	.long	25                      # 0x19
	.long	3                       # 0x3
	.long	1                       # 0x1
	.quad	.L.str.163
	.long	1                       # 0x1
	.long	6                       # 0x6
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.164
	.long	1                       # 0x1
	.long	5                       # 0x5
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.165
	.long	1                       # 0x1
	.long	9                       # 0x9
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.166
	.long	1                       # 0x1
	.long	13                      # 0xd
	.long	4                       # 0x4
	.long	1                       # 0x1
	.quad	.L.str.167
	.long	1                       # 0x1
	.long	10                      # 0xa
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	.L.str.168
	.long	1                       # 0x1
	.long	12                      # 0xc
	.long	2                       # 0x2
	.long	1                       # 0x1
	.quad	.L.str.169
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	2                       # 0x2
	.zero	24
	.size	socket_options, 216

	.type	.L.str.57,@object       # @.str.57
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.57:
	.asciz	"make-network-process"
	.size	.L.str.57, 21

	.type	Slist_system_processes,@object # @Slist_system_processes
	.data
	.align	8
Slist_system_processes:
	.quad	167772160               # 0xa000000
	.quad	Flist_system_processes
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.172
	.quad	0
	.quad	0
	.size	Slist_system_processes, 48

	.type	.L.str.58,@object       # @.str.58
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.58:
	.asciz	"Process %s does not exist"
	.size	.L.str.58, 26

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Attempt to get process for a dead buffer"
	.size	.L.str.59, 41

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Buffer %s has no process"
	.size	.L.str.60, 25

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"<%ld>"
	.size	.L.str.61, 6

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"/dev/tty"
	.size	.L.str.62, 9

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Doing vfork"
	.size	.L.str.63, 12

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"%s"
	.size	.L.str.64, 3

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"Bad option value for %s"
	.size	.L.str.65, 24

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"Cannot set network option"
	.size	.L.str.66, 26

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"interface name too long"
	.size	.L.str.67, 24

	.type	ifflag_table,@object    # @ifflag_table
	.section	.rodata,"a",@progbits
	.align	16
ifflag_table:
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.68
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.69
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.70
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.71
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.72
	.long	64                      # 0x40
	.zero	4
	.quad	.L.str.73
	.long	128                     # 0x80
	.zero	4
	.quad	.L.str.74
	.long	256                     # 0x100
	.zero	4
	.quad	.L.str.75
	.long	32                      # 0x20
	.zero	4
	.quad	.L.str.76
	.long	512                     # 0x200
	.zero	4
	.quad	.L.str.77
	.long	1024                    # 0x400
	.zero	4
	.quad	.L.str.78
	.long	2048                    # 0x800
	.zero	4
	.quad	.L.str.79
	.long	4096                    # 0x1000
	.zero	4
	.quad	.L.str.80
	.long	8192                    # 0x2000
	.zero	4
	.quad	.L.str.81
	.long	16384                   # 0x4000
	.zero	4
	.quad	.L.str.82
	.long	32768                   # 0x8000
	.zero	4
	.quad	.L.str.83
	.zero	16
	.size	ifflag_table, 272

	.type	.L.str.68,@object       # @.str.68
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.68:
	.asciz	"up"
	.size	.L.str.68, 3

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"broadcast"
	.size	.L.str.69, 10

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"debug"
	.size	.L.str.70, 6

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"loopback"
	.size	.L.str.71, 9

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"pointopoint"
	.size	.L.str.72, 12

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"running"
	.size	.L.str.73, 8

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"noarp"
	.size	.L.str.74, 6

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"promisc"
	.size	.L.str.75, 8

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"notrailers"
	.size	.L.str.76, 11

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"allmulti"
	.size	.L.str.77, 9

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"master"
	.size	.L.str.78, 7

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"slave"
	.size	.L.str.79, 6

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"multicast"
	.size	.L.str.80, 10

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"portsel"
	.size	.L.str.81, 8

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"automedia"
	.size	.L.str.82, 10

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"dynamic"
	.size	.L.str.83, 8

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"accept failed with code"
	.size	.L.str.84, 24

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"\n"
	.size	.L.str.85, 2

	.type	connect_counter,@object # @connect_counter
	.local	connect_counter
	.comm	connect_counter,8,8
	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	" <%s:%d>"
	.size	.L.str.86, 9

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	" <[%s]:%d>"
	.size	.L.str.87, 11

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	" <"
	.size	.L.str.88, 3

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	">"
	.size	.L.str.89, 2

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"-"
	.size	.L.str.90, 2

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"accept from "
	.size	.L.str.91, 13

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"open from "
	.size	.L.str.92, 11

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"error in process filter: "
	.size	.L.str.93, 26

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"Output file descriptor of %s is closed"
	.size	.L.str.94, 39

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"Sending datagram"
	.size	.L.str.95, 17

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"process %s no longer connected to pipe; closed it"
	.size	.L.str.96, 50

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"Writing to process"
	.size	.L.str.97, 19

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"SIG"
	.size	.L.str.98, 4

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"sig"
	.size	.L.str.99, 4

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"error in process sentinel: "
	.size	.L.str.100, 28

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"unknown"
	.size	.L.str.101, 8

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	" (core dumped)\n"
	.size	.L.str.102, 16

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"deleted\n"
	.size	.L.str.103, 9

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"connection broken by remote peer\n"
	.size	.L.str.104, 34

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"finished\n"
	.size	.L.str.105, 10

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"exited abnormally with code "
	.size	.L.str.106, 29

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"failed with code "
	.size	.L.str.107, 18

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"processp"
	.size	.L.str.108, 9

	.type	Sprocessp,@object       # @Sprocessp
	.data
	.align	8
Sprocessp:
	.quad	167772160               # 0xa000000
	.quad	Fprocessp
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.108
	.quad	0
	.quad	0
	.size	Sprocessp, 48

	.type	.L.str.109,@object      # @.str.109
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.109:
	.asciz	"get-process"
	.size	.L.str.109, 12

	.type	Sget_process,@object    # @Sget_process
	.data
	.align	8
Sget_process:
	.quad	167772160               # 0xa000000
	.quad	Fget_process
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.109
	.quad	0
	.quad	0
	.size	Sget_process, 48

	.type	.L.str.110,@object      # @.str.110
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.110:
	.asciz	"delete-process"
	.size	.L.str.110, 15

	.type	Sdelete_process,@object # @Sdelete_process
	.data
	.align	8
Sdelete_process:
	.quad	167772160               # 0xa000000
	.quad	Fdelete_process
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.110
	.quad	0
	.quad	0
	.size	Sdelete_process, 48

	.type	.L.str.111,@object      # @.str.111
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.111:
	.asciz	"process-status"
	.size	.L.str.111, 15

	.type	Sprocess_status,@object # @Sprocess_status
	.data
	.align	8
Sprocess_status:
	.quad	167772160               # 0xa000000
	.quad	Fprocess_status
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.111
	.quad	0
	.quad	0
	.size	Sprocess_status, 48

	.type	.L.str.112,@object      # @.str.112
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.112:
	.asciz	"process-exit-status"
	.size	.L.str.112, 20

	.type	Sprocess_exit_status,@object # @Sprocess_exit_status
	.data
	.align	8
Sprocess_exit_status:
	.quad	167772160               # 0xa000000
	.quad	Fprocess_exit_status
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.112
	.quad	0
	.quad	0
	.size	Sprocess_exit_status, 48

	.type	.L.str.113,@object      # @.str.113
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.113:
	.asciz	"process-id"
	.size	.L.str.113, 11

	.type	Sprocess_id,@object     # @Sprocess_id
	.data
	.align	8
Sprocess_id:
	.quad	167772160               # 0xa000000
	.quad	Fprocess_id
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.113
	.quad	0
	.quad	0
	.size	Sprocess_id, 48

	.type	.L.str.114,@object      # @.str.114
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.114:
	.asciz	"process-name"
	.size	.L.str.114, 13

	.type	Sprocess_name,@object   # @Sprocess_name
	.data
	.align	8
Sprocess_name:
	.quad	167772160               # 0xa000000
	.quad	Fprocess_name
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.114
	.quad	0
	.quad	0
	.size	Sprocess_name, 48

	.type	.L.str.115,@object      # @.str.115
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.115:
	.asciz	"process-tty-name"
	.size	.L.str.115, 17

	.type	Sprocess_tty_name,@object # @Sprocess_tty_name
	.data
	.align	8
Sprocess_tty_name:
	.quad	167772160               # 0xa000000
	.quad	Fprocess_tty_name
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.115
	.quad	0
	.quad	0
	.size	Sprocess_tty_name, 48

	.type	.L.str.116,@object      # @.str.116
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.116:
	.asciz	"process-command"
	.size	.L.str.116, 16

	.type	Sprocess_command,@object # @Sprocess_command
	.data
	.align	8
Sprocess_command:
	.quad	167772160               # 0xa000000
	.quad	Fprocess_command
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.116
	.quad	0
	.quad	0
	.size	Sprocess_command, 48

	.type	.L.str.117,@object      # @.str.117
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.117:
	.asciz	"set-process-buffer"
	.size	.L.str.117, 19

	.type	Sset_process_buffer,@object # @Sset_process_buffer
	.data
	.align	8
Sset_process_buffer:
	.quad	167772160               # 0xa000000
	.quad	Fset_process_buffer
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.117
	.quad	0
	.quad	0
	.size	Sset_process_buffer, 48

	.type	.L.str.118,@object      # @.str.118
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.118:
	.asciz	"process-buffer"
	.size	.L.str.118, 15

	.type	Sprocess_buffer,@object # @Sprocess_buffer
	.data
	.align	8
Sprocess_buffer:
	.quad	167772160               # 0xa000000
	.quad	Fprocess_buffer
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.118
	.quad	0
	.quad	0
	.size	Sprocess_buffer, 48

	.type	.L.str.119,@object      # @.str.119
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.119:
	.asciz	"process-mark"
	.size	.L.str.119, 13

	.type	Sprocess_mark,@object   # @Sprocess_mark
	.data
	.align	8
Sprocess_mark:
	.quad	167772160               # 0xa000000
	.quad	Fprocess_mark
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.119
	.quad	0
	.quad	0
	.size	Sprocess_mark, 48

	.type	.L.str.120,@object      # @.str.120
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.120:
	.asciz	"set-process-filter"
	.size	.L.str.120, 19

	.type	Sset_process_filter,@object # @Sset_process_filter
	.data
	.align	8
Sset_process_filter:
	.quad	167772160               # 0xa000000
	.quad	Fset_process_filter
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.120
	.quad	0
	.quad	0
	.size	Sset_process_filter, 48

	.type	.L.str.121,@object      # @.str.121
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.121:
	.asciz	"process-filter"
	.size	.L.str.121, 15

	.type	Sprocess_filter,@object # @Sprocess_filter
	.data
	.align	8
Sprocess_filter:
	.quad	167772160               # 0xa000000
	.quad	Fprocess_filter
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.121
	.quad	0
	.quad	0
	.size	Sprocess_filter, 48

	.type	.L.str.122,@object      # @.str.122
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.122:
	.asciz	"set-process-sentinel"
	.size	.L.str.122, 21

	.type	Sset_process_sentinel,@object # @Sset_process_sentinel
	.data
	.align	8
Sset_process_sentinel:
	.quad	167772160               # 0xa000000
	.quad	Fset_process_sentinel
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.122
	.quad	0
	.quad	0
	.size	Sset_process_sentinel, 48

	.type	.L.str.123,@object      # @.str.123
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.123:
	.asciz	"process-sentinel"
	.size	.L.str.123, 17

	.type	Sprocess_sentinel,@object # @Sprocess_sentinel
	.data
	.align	8
Sprocess_sentinel:
	.quad	167772160               # 0xa000000
	.quad	Fprocess_sentinel
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.123
	.quad	0
	.quad	0
	.size	Sprocess_sentinel, 48

	.type	.L.str.124,@object      # @.str.124
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.124:
	.asciz	"set-process-window-size"
	.size	.L.str.124, 24

	.type	Sset_process_window_size,@object # @Sset_process_window_size
	.data
	.align	8
Sset_process_window_size:
	.quad	167772160               # 0xa000000
	.quad	Fset_process_window_size
	.short	3                       # 0x3
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.124
	.quad	0
	.quad	0
	.size	Sset_process_window_size, 48

	.type	.L.str.125,@object      # @.str.125
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.125:
	.asciz	"set-process-inherit-coding-system-flag"
	.size	.L.str.125, 39

	.type	Sset_process_inherit_coding_system_flag,@object # @Sset_process_inherit_coding_system_flag
	.data
	.align	8
Sset_process_inherit_coding_system_flag:
	.quad	167772160               # 0xa000000
	.quad	Fset_process_inherit_coding_system_flag
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.125
	.quad	0
	.quad	0
	.size	Sset_process_inherit_coding_system_flag, 48

	.type	.L.str.126,@object      # @.str.126
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.126:
	.asciz	"set-process-query-on-exit-flag"
	.size	.L.str.126, 31

	.type	Sset_process_query_on_exit_flag,@object # @Sset_process_query_on_exit_flag
	.data
	.align	8
Sset_process_query_on_exit_flag:
	.quad	167772160               # 0xa000000
	.quad	Fset_process_query_on_exit_flag
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.126
	.quad	0
	.quad	0
	.size	Sset_process_query_on_exit_flag, 48

	.type	.L.str.127,@object      # @.str.127
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.127:
	.asciz	"process-query-on-exit-flag"
	.size	.L.str.127, 27

	.type	Sprocess_query_on_exit_flag,@object # @Sprocess_query_on_exit_flag
	.data
	.align	8
Sprocess_query_on_exit_flag:
	.quad	167772160               # 0xa000000
	.quad	Fprocess_query_on_exit_flag
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.127
	.quad	0
	.quad	0
	.size	Sprocess_query_on_exit_flag, 48

	.type	.L.str.128,@object      # @.str.128
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.128:
	.asciz	"process-contact"
	.size	.L.str.128, 16

	.type	Sprocess_contact,@object # @Sprocess_contact
	.data
	.align	8
Sprocess_contact:
	.quad	167772160               # 0xa000000
	.quad	Fprocess_contact
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.128
	.quad	0
	.quad	0
	.size	Sprocess_contact, 48

	.type	.L.str.129,@object      # @.str.129
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.129:
	.asciz	"process-plist"
	.size	.L.str.129, 14

	.type	Sprocess_plist,@object  # @Sprocess_plist
	.data
	.align	8
Sprocess_plist:
	.quad	167772160               # 0xa000000
	.quad	Fprocess_plist
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.129
	.quad	0
	.quad	0
	.size	Sprocess_plist, 48

	.type	.L.str.130,@object      # @.str.130
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.130:
	.asciz	"set-process-plist"
	.size	.L.str.130, 18

	.type	Sset_process_plist,@object # @Sset_process_plist
	.data
	.align	8
Sset_process_plist:
	.quad	167772160               # 0xa000000
	.quad	Fset_process_plist
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.130
	.quad	0
	.quad	0
	.size	Sset_process_plist, 48

	.type	.L.str.131,@object      # @.str.131
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.131:
	.asciz	"process-list"
	.size	.L.str.131, 13

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"make-process"
	.size	.L.str.132, 13

	.type	Smake_process,@object   # @Smake_process
	.data
	.align	8
Smake_process:
	.quad	167772160               # 0xa000000
	.quad	Fmake_process
	.short	0                       # 0x0
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.132
	.quad	0
	.quad	0
	.size	Smake_process, 48

	.type	.L.str.133,@object      # @.str.133
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.133:
	.asciz	"make-pipe-process"
	.size	.L.str.133, 18

	.type	Smake_pipe_process,@object # @Smake_pipe_process
	.data
	.align	8
Smake_pipe_process:
	.quad	167772160               # 0xa000000
	.quad	Fmake_pipe_process
	.short	0                       # 0x0
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.133
	.quad	0
	.quad	0
	.size	Smake_pipe_process, 48

	.type	.L.str.134,@object      # @.str.134
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.134:
	.asciz	"serial-process-configure"
	.size	.L.str.134, 25

	.type	Sserial_process_configure,@object # @Sserial_process_configure
	.data
	.align	8
Sserial_process_configure:
	.quad	167772160               # 0xa000000
	.quad	Fserial_process_configure
	.short	0                       # 0x0
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.134
	.quad	0
	.quad	0
	.size	Sserial_process_configure, 48

	.type	.L.str.135,@object      # @.str.135
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.135:
	.asciz	"make-serial-process"
	.size	.L.str.135, 20

	.type	Smake_serial_process,@object # @Smake_serial_process
	.data
	.align	8
Smake_serial_process:
	.quad	167772160               # 0xa000000
	.quad	Fmake_serial_process
	.short	0                       # 0x0
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.135
	.quad	0
	.quad	0
	.size	Smake_serial_process, 48

	.type	.L.str.136,@object      # @.str.136
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.136:
	.asciz	"set-network-process-option"
	.size	.L.str.136, 27

	.type	Sset_network_process_option,@object # @Sset_network_process_option
	.data
	.align	8
Sset_network_process_option:
	.quad	167772160               # 0xa000000
	.quad	Fset_network_process_option
	.short	3                       # 0x3
	.short	4                       # 0x4
	.zero	4
	.quad	.L.str.136
	.quad	0
	.quad	0
	.size	Sset_network_process_option, 48

	.type	Smake_network_process,@object # @Smake_network_process
	.align	8
Smake_network_process:
	.quad	167772160               # 0xa000000
	.quad	Fmake_network_process
	.short	0                       # 0x0
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.57
	.quad	0
	.quad	0
	.size	Smake_network_process, 48

	.type	.L.str.137,@object      # @.str.137
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.137:
	.asciz	"format-network-address"
	.size	.L.str.137, 23

	.type	Sformat_network_address,@object # @Sformat_network_address
	.data
	.align	8
Sformat_network_address:
	.quad	167772160               # 0xa000000
	.quad	Fformat_network_address
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.137
	.quad	0
	.quad	0
	.size	Sformat_network_address, 48

	.type	.L.str.138,@object      # @.str.138
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.138:
	.asciz	"network-interface-list"
	.size	.L.str.138, 23

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"network-interface-info"
	.size	.L.str.139, 23

	.type	Snetwork_interface_info,@object # @Snetwork_interface_info
	.data
	.align	8
Snetwork_interface_info:
	.quad	167772160               # 0xa000000
	.quad	Fnetwork_interface_info
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.139
	.quad	0
	.quad	0
	.size	Snetwork_interface_info, 48

	.type	.L.str.140,@object      # @.str.140
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.140:
	.asciz	"process-datagram-address"
	.size	.L.str.140, 25

	.type	Sprocess_datagram_address,@object # @Sprocess_datagram_address
	.data
	.align	8
Sprocess_datagram_address:
	.quad	167772160               # 0xa000000
	.quad	Fprocess_datagram_address
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.140
	.quad	0
	.quad	0
	.size	Sprocess_datagram_address, 48

	.type	.L.str.141,@object      # @.str.141
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.141:
	.asciz	"set-process-datagram-address"
	.size	.L.str.141, 29

	.type	Sset_process_datagram_address,@object # @Sset_process_datagram_address
	.data
	.align	8
Sset_process_datagram_address:
	.quad	167772160               # 0xa000000
	.quad	Fset_process_datagram_address
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.141
	.quad	0
	.quad	0
	.size	Sset_process_datagram_address, 48

	.type	.L.str.142,@object      # @.str.142
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.142:
	.asciz	"accept-process-output"
	.size	.L.str.142, 22

	.type	Saccept_process_output,@object # @Saccept_process_output
	.data
	.align	8
Saccept_process_output:
	.quad	167772160               # 0xa000000
	.quad	Faccept_process_output
	.short	0                       # 0x0
	.short	4                       # 0x4
	.zero	4
	.quad	.L.str.142
	.quad	0
	.quad	0
	.size	Saccept_process_output, 48

	.type	.L.str.143,@object      # @.str.143
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.143:
	.asciz	"process-send-region"
	.size	.L.str.143, 20

	.type	Sprocess_send_region,@object # @Sprocess_send_region
	.data
	.align	8
Sprocess_send_region:
	.quad	167772160               # 0xa000000
	.quad	Fprocess_send_region
	.short	3                       # 0x3
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.143
	.quad	0
	.quad	0
	.size	Sprocess_send_region, 48

	.type	.L.str.144,@object      # @.str.144
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.144:
	.asciz	"process-send-string"
	.size	.L.str.144, 20

	.type	Sprocess_send_string,@object # @Sprocess_send_string
	.data
	.align	8
Sprocess_send_string:
	.quad	167772160               # 0xa000000
	.quad	Fprocess_send_string
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.144
	.quad	0
	.quad	0
	.size	Sprocess_send_string, 48

	.type	.L.str.145,@object      # @.str.145
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.145:
	.asciz	"interrupt-process"
	.size	.L.str.145, 18

	.type	Sinterrupt_process,@object # @Sinterrupt_process
	.data
	.align	8
Sinterrupt_process:
	.quad	167772160               # 0xa000000
	.quad	Finterrupt_process
	.short	0                       # 0x0
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.145
	.quad	0
	.quad	0
	.size	Sinterrupt_process, 48

	.type	.L.str.146,@object      # @.str.146
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.146:
	.asciz	"kill-process"
	.size	.L.str.146, 13

	.type	Skill_process,@object   # @Skill_process
	.data
	.align	8
Skill_process:
	.quad	167772160               # 0xa000000
	.quad	Fkill_process
	.short	0                       # 0x0
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.146
	.quad	0
	.quad	0
	.size	Skill_process, 48

	.type	.L.str.147,@object      # @.str.147
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.147:
	.asciz	"quit-process"
	.size	.L.str.147, 13

	.type	Squit_process,@object   # @Squit_process
	.data
	.align	8
Squit_process:
	.quad	167772160               # 0xa000000
	.quad	Fquit_process
	.short	0                       # 0x0
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.147
	.quad	0
	.quad	0
	.size	Squit_process, 48

	.type	.L.str.148,@object      # @.str.148
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.148:
	.asciz	"stop-process"
	.size	.L.str.148, 13

	.type	Sstop_process,@object   # @Sstop_process
	.data
	.align	8
Sstop_process:
	.quad	167772160               # 0xa000000
	.quad	Fstop_process
	.short	0                       # 0x0
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.148
	.quad	0
	.quad	0
	.size	Sstop_process, 48

	.type	.L.str.149,@object      # @.str.149
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.149:
	.asciz	"continue-process"
	.size	.L.str.149, 17

	.type	Scontinue_process,@object # @Scontinue_process
	.data
	.align	8
Scontinue_process:
	.quad	167772160               # 0xa000000
	.quad	Fcontinue_process
	.short	0                       # 0x0
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.149
	.quad	0
	.quad	0
	.size	Scontinue_process, 48

	.type	.L.str.150,@object      # @.str.150
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.150:
	.asciz	"process-running-child-p"
	.size	.L.str.150, 24

	.type	Sprocess_running_child_p,@object # @Sprocess_running_child_p
	.data
	.align	8
Sprocess_running_child_p:
	.quad	167772160               # 0xa000000
	.quad	Fprocess_running_child_p
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.150
	.quad	0
	.quad	0
	.size	Sprocess_running_child_p, 48

	.type	.L.str.151,@object      # @.str.151
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.151:
	.asciz	"process-send-eof"
	.size	.L.str.151, 17

	.type	Sprocess_send_eof,@object # @Sprocess_send_eof
	.data
	.align	8
Sprocess_send_eof:
	.quad	167772160               # 0xa000000
	.quad	Fprocess_send_eof
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.151
	.quad	0
	.quad	0
	.size	Sprocess_send_eof, 48

	.type	.L.str.152,@object      # @.str.152
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.152:
	.asciz	"signal-process"
	.size	.L.str.152, 15

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"sProcess (name or number): \nnSignal code: "
	.size	.L.str.153, 43

	.type	Ssignal_process,@object # @Ssignal_process
	.data
	.align	8
Ssignal_process:
	.quad	167772160               # 0xa000000
	.quad	Fsignal_process
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.152
	.quad	.L.str.153
	.quad	0
	.size	Ssignal_process, 48

	.type	.L.str.154,@object      # @.str.154
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.154:
	.asciz	"waiting-for-user-input-p"
	.size	.L.str.154, 25

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"process-type"
	.size	.L.str.155, 13

	.type	Sprocess_type,@object   # @Sprocess_type
	.data
	.align	8
Sprocess_type:
	.quad	167772160               # 0xa000000
	.quad	Fprocess_type
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.155
	.quad	0
	.quad	0
	.size	Sprocess_type, 48

	.type	.L.str.156,@object      # @.str.156
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.156:
	.asciz	"internal-default-process-sentinel"
	.size	.L.str.156, 34

	.type	Sinternal_default_process_sentinel,@object # @Sinternal_default_process_sentinel
	.data
	.align	8
Sinternal_default_process_sentinel:
	.quad	167772160               # 0xa000000
	.quad	Finternal_default_process_sentinel
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.156
	.quad	0
	.quad	0
	.size	Sinternal_default_process_sentinel, 48

	.type	.L.str.157,@object      # @.str.157
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.157:
	.asciz	"internal-default-process-filter"
	.size	.L.str.157, 32

	.type	Sinternal_default_process_filter,@object # @Sinternal_default_process_filter
	.data
	.align	8
Sinternal_default_process_filter:
	.quad	167772160               # 0xa000000
	.quad	Finternal_default_process_filter
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.157
	.quad	0
	.quad	0
	.size	Sinternal_default_process_filter, 48

	.type	.L.str.158,@object      # @.str.158
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.158:
	.asciz	"set-process-coding-system"
	.size	.L.str.158, 26

	.type	Sset_process_coding_system,@object # @Sset_process_coding_system
	.data
	.align	8
Sset_process_coding_system:
	.quad	167772160               # 0xa000000
	.quad	Fset_process_coding_system
	.short	1                       # 0x1
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.158
	.quad	0
	.quad	0
	.size	Sset_process_coding_system, 48

	.type	.L.str.159,@object      # @.str.159
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.159:
	.asciz	"process-coding-system"
	.size	.L.str.159, 22

	.type	Sprocess_coding_system,@object # @Sprocess_coding_system
	.data
	.align	8
Sprocess_coding_system:
	.quad	167772160               # 0xa000000
	.quad	Fprocess_coding_system
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.159
	.quad	0
	.quad	0
	.size	Sprocess_coding_system, 48

	.type	.L.str.160,@object      # @.str.160
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.160:
	.asciz	"set-process-filter-multibyte"
	.size	.L.str.160, 29

	.type	Sset_process_filter_multibyte,@object # @Sset_process_filter_multibyte
	.data
	.align	8
Sset_process_filter_multibyte:
	.quad	167772160               # 0xa000000
	.quad	Fset_process_filter_multibyte
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.160
	.quad	0
	.quad	0
	.size	Sset_process_filter_multibyte, 48

	.type	.L.str.161,@object      # @.str.161
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.161:
	.asciz	"process-filter-multibyte-p"
	.size	.L.str.161, 27

	.type	Sprocess_filter_multibyte_p,@object # @Sprocess_filter_multibyte_p
	.data
	.align	8
Sprocess_filter_multibyte_p:
	.quad	167772160               # 0xa000000
	.quad	Fprocess_filter_multibyte_p
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.161
	.quad	0
	.quad	0
	.size	Sprocess_filter_multibyte_p, 48

	.type	.L.str.162,@object      # @.str.162
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.162:
	.asciz	":bindtodevice"
	.size	.L.str.162, 14

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	":broadcast"
	.size	.L.str.163, 11

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	":dontroute"
	.size	.L.str.164, 11

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	":keepalive"
	.size	.L.str.165, 11

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	":linger"
	.size	.L.str.166, 8

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	":oobinline"
	.size	.L.str.167, 11

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	":priority"
	.size	.L.str.168, 10

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	":reuseaddr"
	.size	.L.str.169, 11

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	"get-buffer-process"
	.size	.L.str.170, 19

	.type	Sget_buffer_process,@object # @Sget_buffer_process
	.data
	.align	8
Sget_buffer_process:
	.quad	167772160               # 0xa000000
	.quad	Fget_buffer_process
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.170
	.quad	0
	.quad	0
	.size	Sget_buffer_process, 48

	.type	.L.str.171,@object      # @.str.171
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.171:
	.asciz	"process-inherit-coding-system-flag"
	.size	.L.str.171, 35

	.type	Sprocess_inherit_coding_system_flag,@object # @Sprocess_inherit_coding_system_flag
	.data
	.align	8
Sprocess_inherit_coding_system_flag:
	.quad	167772160               # 0xa000000
	.quad	Fprocess_inherit_coding_system_flag
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.171
	.quad	0
	.quad	0
	.size	Sprocess_inherit_coding_system_flag, 48

	.type	.L.str.172,@object      # @.str.172
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.172:
	.asciz	"list-system-processes"
	.size	.L.str.172, 22

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	"process-attributes"
	.size	.L.str.173, 19

	.type	Sprocess_attributes,@object # @Sprocess_attributes
	.data
	.align	8
Sprocess_attributes:
	.quad	167772160               # 0xa000000
	.quad	Fprocess_attributes
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.173
	.quad	0
	.quad	0
	.size	Sprocess_attributes, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
