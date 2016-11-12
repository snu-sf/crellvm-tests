	.text
	.file	"gnutls.bc"
	.globl	emacs_gnutls_record_check_pending
	.align	16, 0x90
	.type	emacs_gnutls_record_check_pending,@function
emacs_gnutls_record_check_pending:      # @emacs_gnutls_record_check_pending
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
	callq	gnutls_record_check_pending
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	emacs_gnutls_record_check_pending, .Lfunc_end0-emacs_gnutls_record_check_pending
	.cfi_endproc

	.globl	emacs_gnutls_write
	.align	16, 0x90
	.type	emacs_gnutls_write,@function
emacs_gnutls_write:                     # @emacs_gnutls_write
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rdx
	movq	240(%rdx), %rdx
	movq	%rdx, -56(%rbp)
	movq	-16(%rbp), %rdx
	cmpl	$9, 232(%rdx)
	je	.LBB1_2
# BB#1:                                 # %if.then
	callq	__errno_location
	movl	$11, (%rax)
	movq	$0, -8(%rbp)
	jmp	.LBB1_12
.LBB1_2:                                # %if.end
	movq	$0, -48(%rbp)
.LBB1_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	jle	.LBB1_11
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	gnutls_record_send
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jge	.LBB1_10
# BB#5:                                 # %if.then.4
                                        #   in Loop: Header=BB1_3 Depth=1
	cmpq	$-52, -40(%rbp)
	jne	.LBB1_7
# BB#6:                                 # %if.then.6
                                        #   in Loop: Header=BB1_3 Depth=1
	jmp	.LBB1_3
.LBB1_7:                                # %if.else
	cmpq	$-28, -40(%rbp)
	jne	.LBB1_9
# BB#8:                                 # %if.then.8
	callq	__errno_location
	movl	$11, (%rax)
.LBB1_9:                                # %if.end.10
	jmp	.LBB1_11
.LBB1_10:                               # %if.end.11
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	-40(%rbp), %rax
	addq	-24(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -32(%rbp)
	movq	-40(%rbp), %rax
	addq	-48(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB1_3
.LBB1_11:                               # %while.end
	movq	-56(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, %esi
	callq	emacs_gnutls_handle_error
	movq	-48(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	movb	%al, -57(%rbp)          # 1-byte Spill
.LBB1_12:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	emacs_gnutls_write, .Lfunc_end1-emacs_gnutls_write
	.cfi_endproc

	.align	16, 0x90
	.type	emacs_gnutls_handle_error,@function
emacs_gnutls_handle_error:              # @emacs_gnutls_handle_error
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	$0, -24(%rbp)
	cmpl	$0, -20(%rbp)
	jl	.LBB2_2
# BB#1:                                 # %if.then
	movb	$1, -1(%rbp)
	jmp	.LBB2_32
.LBB2_2:                                # %if.end
	movl	-20(%rbp), %edi
	callq	check_memory_full
	movq	globals+3128, %rax
	movl	%eax, %edi
	movl	%edi, -24(%rbp)
	movl	-20(%rbp), %edi
	callq	gnutls_strerror
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB2_4
# BB#3:                                 # %if.then.1
	movabsq	$.L.str.67, %rax
	movq	%rax, -40(%rbp)
.LBB2_4:                                # %if.end.2
	movl	-20(%rbp), %edi
	callq	gnutls_error_is_fatal
	cmpl	$0, %eax
	je	.LBB2_10
# BB#5:                                 # %if.then.5
	movb	$0, -25(%rbp)
# BB#6:                                 # %do.body
	movl	$1, %eax
	cmpl	-24(%rbp), %eax
	jg	.LBB2_8
# BB#7:                                 # %if.then.8
	movl	$1, %edi
	movabsq	$.L.str.68, %rsi
	movq	-40(%rbp), %rdx
	callq	gnutls_log_function2
.LBB2_8:                                # %if.end.9
	jmp	.LBB2_9
.LBB2_9:                                # %do.end
	jmp	.LBB2_22
.LBB2_10:                               # %if.else
	movb	$1, -25(%rbp)
	movl	-20(%rbp), %eax
	subl	$-28, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jne	.LBB2_16
	jmp	.LBB2_11
.LBB2_11:                               # %sw.bb
	jmp	.LBB2_12
.LBB2_12:                               # %do.body.10
	movl	$3, %eax
	cmpl	-24(%rbp), %eax
	jg	.LBB2_14
# BB#13:                                # %if.then.13
	movl	$3, %edi
	movabsq	$.L.str.69, %rsi
	movq	-40(%rbp), %rdx
	callq	gnutls_log_function2
.LBB2_14:                               # %if.end.14
	jmp	.LBB2_15
.LBB2_15:                               # %do.end.15
	jmp	.LBB2_16
.LBB2_16:                               # %sw.default
	jmp	.LBB2_17
.LBB2_17:                               # %do.body.16
	movl	$1, %eax
	cmpl	-24(%rbp), %eax
	jg	.LBB2_19
# BB#18:                                # %if.then.19
	movl	$1, %edi
	movabsq	$.L.str.70, %rsi
	movq	-40(%rbp), %rdx
	callq	gnutls_log_function2
.LBB2_19:                               # %if.end.20
	jmp	.LBB2_20
.LBB2_20:                               # %do.end.21
	jmp	.LBB2_21
.LBB2_21:                               # %sw.epilog
	jmp	.LBB2_22
.LBB2_22:                               # %if.end.22
	cmpl	$-16, -20(%rbp)
	je	.LBB2_24
# BB#23:                                # %lor.lhs.false
	cmpl	$-12, -20(%rbp)
	jne	.LBB2_31
.LBB2_24:                               # %if.then.27
	movq	-16(%rbp), %rdi
	callq	gnutls_alert_get
	movl	$1, %ecx
	xorl	%edx, %edx
	movl	%eax, -44(%rbp)
	cmpl	$-12, -20(%rbp)
	cmovel	%edx, %ecx
	movl	%ecx, -48(%rbp)
	movl	-44(%rbp), %edi
	callq	gnutls_alert_get_name
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB2_26
# BB#25:                                # %if.then.33
	movabsq	$.L.str.67, %rax
	movq	%rax, -40(%rbp)
.LBB2_26:                               # %if.end.34
	jmp	.LBB2_27
.LBB2_27:                               # %do.body.35
	movl	-48(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jg	.LBB2_29
# BB#28:                                # %if.then.38
	movabsq	$.L.str.71, %rsi
	movl	-48(%rbp), %edi
	movq	-40(%rbp), %rdx
	callq	gnutls_log_function2
.LBB2_29:                               # %if.end.39
	jmp	.LBB2_30
.LBB2_30:                               # %do.end.40
	jmp	.LBB2_31
.LBB2_31:                               # %if.end.41
	movb	-25(%rbp), %al
	andb	$1, %al
	movb	%al, -1(%rbp)
.LBB2_32:                               # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	emacs_gnutls_handle_error, .Lfunc_end2-emacs_gnutls_handle_error
	.cfi_endproc

	.globl	emacs_gnutls_read
	.align	16, 0x90
	.type	emacs_gnutls_read,@function
emacs_gnutls_read:                      # @emacs_gnutls_read
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	240(%rdx), %rdx
	movq	%rdx, -48(%rbp)
	movq	-16(%rbp), %rdx
	movl	280(%rdx), %eax
	movl	%eax, -52(%rbp)
	movq	-16(%rbp), %rdx
	cmpl	$9, 232(%rdx)
	je	.LBB3_12
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	cmpl	$100, 284(%rax)
	jge	.LBB3_7
# BB#2:                                 # %if.then.2
	movq	-16(%rbp), %rax
	movl	284(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 284(%rax)
	movq	-16(%rbp), %rdi
	callq	emacs_gnutls_handshake
	movl	%eax, -56(%rbp)         # 4-byte Spill
# BB#3:                                 # %do.body
	movl	$5, %eax
	cmpl	-52(%rbp), %eax
	jg	.LBB3_5
# BB#4:                                 # %if.then.5
	movl	$5, %edi
	movabsq	$.L.str, %rsi
	movq	-16(%rbp), %rax
	movl	284(%rax), %edx
	callq	gnutls_log_function2i
.LBB3_5:                                # %if.end
	jmp	.LBB3_6
.LBB3_6:                                # %do.end
	movq	$-1, -8(%rbp)
	jmp	.LBB3_19
.LBB3_7:                                # %if.end.7
	jmp	.LBB3_8
.LBB3_8:                                # %do.body.8
	movl	$2, %eax
	cmpl	-52(%rbp), %eax
	jg	.LBB3_10
# BB#9:                                 # %if.then.10
	movl	$2, %edi
	movabsq	$.L.str.1, %rsi
	callq	gnutls_log_function
.LBB3_10:                               # %if.end.11
	jmp	.LBB3_11
.LBB3_11:                               # %do.end.12
	movq	-16(%rbp), %rax
	movl	$0, 284(%rax)
	movq	$0, -8(%rbp)
	jmp	.LBB3_19
.LBB3_12:                               # %if.end.14
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	gnutls_record_recv
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jl	.LBB3_14
# BB#13:                                # %if.then.17
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_19
.LBB3_14:                               # %if.else
	cmpq	$-9, -40(%rbp)
	jne	.LBB3_16
# BB#15:                                # %if.then.19
	movq	$0, -8(%rbp)
	jmp	.LBB3_19
.LBB3_16:                               # %if.else.20
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, %esi
	callq	emacs_gnutls_handle_error
	testb	$1, %al
	jne	.LBB3_17
	jmp	.LBB3_18
.LBB3_17:                               # %if.then.22
	movq	$-1, -8(%rbp)
	jmp	.LBB3_19
.LBB3_18:                               # %if.else.23
	movq	$0, -8(%rbp)
.LBB3_19:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	emacs_gnutls_read, .Lfunc_end3-emacs_gnutls_read
	.cfi_endproc

	.align	16, 0x90
	.type	emacs_gnutls_handshake,@function
emacs_gnutls_handshake:                 # @emacs_gnutls_handshake
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	240(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-16(%rbp), %rdi
	cmpl	$6, 232(%rdi)
	jae	.LBB4_2
# BB#1:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB4_21
.LBB4_2:                                # %if.end
	movq	-16(%rbp), %rax
	cmpl	$7, 232(%rax)
	jae	.LBB4_4
# BB#3:                                 # %if.then.3
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movslq	164(%rax), %rsi
	movq	-16(%rbp), %rax
	movslq	168(%rax), %rdx
	callq	gnutls_transport_set_ptr2
	movq	-16(%rbp), %rax
	movl	$7, 232(%rax)
.LBB4_4:                                # %if.end.6
	jmp	.LBB4_5
.LBB4_5:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rdi
	callq	gnutls_handshake
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	emacs_gnutls_handle_error
	movb	%al, -29(%rbp)          # 1-byte Spill
# BB#6:                                 # %do.body.8
                                        #   in Loop: Header=BB4_5 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB4_9
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB4_5 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB4_9
# BB#8:                                 # %if.then.15
                                        #   in Loop: Header=BB4_5 Depth=1
	callq	process_quit_flag
	jmp	.LBB4_12
.LBB4_9:                                # %if.else
                                        #   in Loop: Header=BB4_5 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB4_11
# BB#10:                                # %if.then.16
                                        #   in Loop: Header=BB4_5 Depth=1
	callq	process_pending_signals
.LBB4_11:                               # %if.end.17
                                        #   in Loop: Header=BB4_5 Depth=1
	jmp	.LBB4_12
.LBB4_12:                               # %if.end.18
                                        #   in Loop: Header=BB4_5 Depth=1
	jmp	.LBB4_13
.LBB4_13:                               # %do.end
                                        #   in Loop: Header=BB4_5 Depth=1
	jmp	.LBB4_14
.LBB4_14:                               # %do.cond
                                        #   in Loop: Header=BB4_5 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -28(%rbp)
	movb	%cl, -49(%rbp)          # 1-byte Spill
	jge	.LBB4_16
# BB#15:                                # %land.rhs
                                        #   in Loop: Header=BB4_5 Depth=1
	movl	-28(%rbp), %edi
	callq	gnutls_error_is_fatal
	cmpl	$0, %eax
	sete	%cl
	movb	%cl, -49(%rbp)          # 1-byte Spill
.LBB4_16:                               # %land.end
                                        #   in Loop: Header=BB4_5 Depth=1
	movb	-49(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB4_5
# BB#17:                                # %do.end.24
	movq	-16(%rbp), %rax
	movl	$8, 232(%rax)
	cmpl	$0, -28(%rbp)
	jne	.LBB4_19
# BB#18:                                # %if.then.28
	movq	-16(%rbp), %rax
	movl	$9, 232(%rax)
	jmp	.LBB4_20
.LBB4_19:                               # %if.else.30
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gnutls_alert_send_appropriate
	movl	%eax, %edi
	callq	check_memory_full
.LBB4_20:                               # %if.end.32
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB4_21:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	emacs_gnutls_handshake, .Lfunc_end4-emacs_gnutls_handshake
	.cfi_endproc

	.align	16, 0x90
	.type	gnutls_log_function2i,@function
gnutls_log_function2i:                  # @gnutls_log_function2i
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
	movabsq	$.L.str.65, %rax
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-4(%rbp), %esi
	movq	-16(%rbp), %rdx
	movl	-20(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	message
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gnutls_log_function2i, .Lfunc_end5-gnutls_log_function2i
	.cfi_endproc

	.align	16, 0x90
	.type	gnutls_log_function,@function
gnutls_log_function:                    # @gnutls_log_function
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
	movabsq	$.L.str.66, %rax
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %esi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	message
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gnutls_log_function, .Lfunc_end6-gnutls_log_function
	.cfi_endproc

	.globl	emacs_gnutls_deinit
	.align	16, 0x90
	.type	emacs_gnutls_deinit,@function
emacs_gnutls_deinit:                    # @emacs_gnutls_deinit
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_PROCESS
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movb	288(%rax), %cl
	andb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB7_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB7_19
.LBB7_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movl	280(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	cmpq	$0, 248(%rax)
	je	.LBB7_8
# BB#3:                                 # %if.then.5
	jmp	.LBB7_4
.LBB7_4:                                # %do.body
	movl	$2, %eax
	cmpl	-20(%rbp), %eax
	jg	.LBB7_6
# BB#5:                                 # %if.then.8
	movl	$2, %edi
	movabsq	$.L.str.2, %rsi
	callq	gnutls_log_function
.LBB7_6:                                # %if.end.9
	jmp	.LBB7_7
.LBB7_7:                                # %do.end
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movq	248(%rax), %rdi
	callq	gnutls_certificate_free_credentials
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movq	$0, 248(%rax)
.LBB7_8:                                # %if.end.14
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	cmpq	$0, 256(%rax)
	je	.LBB7_14
# BB#9:                                 # %if.then.17
	jmp	.LBB7_10
.LBB7_10:                               # %do.body.18
	movl	$2, %eax
	cmpl	-20(%rbp), %eax
	jg	.LBB7_12
# BB#11:                                # %if.then.21
	movl	$2, %edi
	movabsq	$.L.str.3, %rsi
	callq	gnutls_log_function
.LBB7_12:                               # %if.end.22
	jmp	.LBB7_13
.LBB7_13:                               # %do.end.23
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movq	256(%rax), %rdi
	callq	gnutls_anon_free_client_credentials
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movq	$0, 256(%rax)
.LBB7_14:                               # %if.end.28
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	cmpq	$0, 240(%rax)
	je	.LBB7_18
# BB#15:                                # %if.then.31
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movq	240(%rax), %rdi
	callq	gnutls_deinit
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movq	$0, 240(%rax)
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	cmpl	$4, 232(%rax)
	jb	.LBB7_17
# BB#16:                                # %if.then.39
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movl	$3, 232(%rax)
.LBB7_17:                               # %if.end.42
	jmp	.LBB7_18
.LBB7_18:                               # %if.end.43
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movl	$901, %edi              # imm = 0x385
	movb	288(%rax), %cl
	andb	$-2, %cl
	movb	%cl, 288(%rax)
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB7_19:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	emacs_gnutls_deinit, .Lfunc_end7-emacs_gnutls_deinit
	.cfi_endproc

	.globl	Fgnutls_get_initstage
	.align	16, 0x90
	.type	Fgnutls_get_initstage,@function
Fgnutls_get_initstage:                  # @Fgnutls_get_initstage
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
	callq	CHECK_PROCESS
	movq	-8(%rbp), %rdi
	callq	XPROCESS
	movl	232(%rax), %ecx
	movl	%ecx, %eax
	shlq	$2, %rax
	addq	$2, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	Fgnutls_get_initstage, .Lfunc_end8-Fgnutls_get_initstage
	.cfi_endproc

	.globl	Fgnutls_errorp
	.align	16, 0x90
	.type	Fgnutls_errorp,@function
Fgnutls_errorp:                         # @Fgnutls_errorp
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
	movl	$901, %eax              # imm = 0x385
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB9_3
.LBB9_2:                                # %if.end
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB9_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	Fgnutls_errorp, .Lfunc_end9-Fgnutls_errorp
	.cfi_endproc

	.globl	Fgnutls_error_fatalp
	.align	16, 0x90
	.type	Fgnutls_error_fatalp,@function
Fgnutls_error_fatalp:                   # @Fgnutls_error_fatalp
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
	movl	$901, %eax              # imm = 0x385
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB10_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB10_16
.LBB10_2:                               # %if.end
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB10_7
# BB#3:                                 # %if.then.4
	movl	$493, %edi              # imm = 0x1ED
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	NUMBERP
	testb	$1, %al
	jne	.LBB10_4
	jmp	.LBB10_5
.LBB10_4:                               # %if.then.8
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB10_6
.LBB10_5:                               # %if.else
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	error
.LBB10_6:                               # %if.end.9
	jmp	.LBB10_7
.LBB10_7:                               # %if.end.10
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB10_12
# BB#8:                                 # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB10_10
	jmp	.LBB10_9
.LBB10_9:                               # %cond.true
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jle	.LBB10_11
	jmp	.LBB10_12
.LBB10_10:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	sarq	$2, %rdx
	cmpq	%rdx, %rcx
	jg	.LBB10_12
.LBB10_11:                              # %land.lhs.true.21
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jle	.LBB10_13
.LBB10_12:                              # %if.then.25
	movabsq	$.L.str.5, %rdi
	movb	$0, %al
	callq	error
.LBB10_13:                              # %if.end.26
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, %edi
	callq	gnutls_error_is_fatal
	xorl	%ecx, %ecx
	cmpl	%eax, %ecx
	jne	.LBB10_15
# BB#14:                                # %if.then.32
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB10_16
.LBB10_15:                              # %if.end.34
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB10_16:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	Fgnutls_error_fatalp, .Lfunc_end10-Fgnutls_error_fatalp
	.cfi_endproc

	.globl	Fgnutls_error_string
	.align	16, 0x90
	.type	Fgnutls_error_string,@function
Fgnutls_error_string:                   # @Fgnutls_error_string
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
	movl	$901, %eax              # imm = 0x385
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.6, %rdi
	callq	build_string
	movq	%rax, -8(%rbp)
	jmp	.LBB11_14
.LBB11_2:                               # %if.end
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB11_7
# BB#3:                                 # %if.then.4
	movl	$493, %edi              # imm = 0x1ED
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	NUMBERP
	testb	$1, %al
	jne	.LBB11_4
	jmp	.LBB11_5
.LBB11_4:                               # %if.then.8
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB11_6
.LBB11_5:                               # %if.else
	movabsq	$.L.str.4, %rdi
	callq	build_string
	movq	%rax, -8(%rbp)
	jmp	.LBB11_14
.LBB11_6:                               # %if.end.10
	jmp	.LBB11_7
.LBB11_7:                               # %if.end.11
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB11_12
# BB#8:                                 # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB11_10
	jmp	.LBB11_9
.LBB11_9:                               # %cond.true
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jle	.LBB11_11
	jmp	.LBB11_12
.LBB11_10:                              # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	sarq	$2, %rdx
	cmpq	%rdx, %rcx
	jg	.LBB11_12
.LBB11_11:                              # %land.lhs.true.22
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jle	.LBB11_13
.LBB11_12:                              # %if.then.26
	movabsq	$.L.str.5, %rdi
	callq	build_string
	movq	%rax, -8(%rbp)
	jmp	.LBB11_14
.LBB11_13:                              # %if.end.28
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, %edi
	callq	gnutls_strerror
	movq	%rax, %rdi
	callq	build_string
	movq	%rax, -8(%rbp)
.LBB11_14:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	Fgnutls_error_string, .Lfunc_end11-Fgnutls_error_string
	.cfi_endproc

	.globl	Fgnutls_deinit
	.align	16, 0x90
	.type	Fgnutls_deinit,@function
Fgnutls_deinit:                         # @Fgnutls_deinit
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
	callq	emacs_gnutls_deinit
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	Fgnutls_deinit, .Lfunc_end12-Fgnutls_deinit
	.cfi_endproc

	.globl	Fgnutls_peer_status_warning_describe
	.align	16, 0x90
	.type	Fgnutls_peer_status_warning_describe,@function
Fgnutls_peer_status_warning_describe:   # @Fgnutls_peer_status_warning_describe
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	andq	$7, %rdi
	movl	%edi, %eax
	cmpl	$0, %eax
	jne	.LBB13_2
# BB#1:                                 # %cond.true
	jmp	.LBB13_3
.LBB13_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB13_3:                               # %cond.end
	movabsq	$.L.str.7, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	intern
	movq	-32(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB13_5
# BB#4:                                 # %if.then
	movabsq	$.L.str.8, %rdi
	callq	build_string
	movq	%rax, -8(%rbp)
	jmp	.LBB13_22
.LBB13_5:                               # %if.end
	movabsq	$.L.str.9, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	intern
	movq	-40(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB13_7
# BB#6:                                 # %if.then.9
	movabsq	$.L.str.10, %rdi
	callq	build_string
	movq	%rax, -8(%rbp)
	jmp	.LBB13_22
.LBB13_7:                               # %if.end.11
	movabsq	$.L.str.11, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	intern
	movq	-48(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB13_9
# BB#8:                                 # %if.then.15
	movabsq	$.L.str.12, %rdi
	callq	build_string
	movq	%rax, -8(%rbp)
	jmp	.LBB13_22
.LBB13_9:                               # %if.end.17
	movabsq	$.L.str.13, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	intern
	movq	-56(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB13_11
# BB#10:                                # %if.then.21
	movabsq	$.L.str.14, %rdi
	callq	build_string
	movq	%rax, -8(%rbp)
	jmp	.LBB13_22
.LBB13_11:                              # %if.end.23
	movabsq	$.L.str.15, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	intern
	movq	-64(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB13_13
# BB#12:                                # %if.then.27
	movabsq	$.L.str.16, %rdi
	callq	build_string
	movq	%rax, -8(%rbp)
	jmp	.LBB13_22
.LBB13_13:                              # %if.end.29
	movabsq	$.L.str.17, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	intern
	movq	-72(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB13_15
# BB#14:                                # %if.then.33
	movabsq	$.L.str.18, %rdi
	callq	build_string
	movq	%rax, -8(%rbp)
	jmp	.LBB13_22
.LBB13_15:                              # %if.end.35
	movabsq	$.L.str.19, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	intern
	movq	-80(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB13_17
# BB#16:                                # %if.then.39
	movabsq	$.L.str.20, %rdi
	callq	build_string
	movq	%rax, -8(%rbp)
	jmp	.LBB13_22
.LBB13_17:                              # %if.end.41
	movabsq	$.L.str.21, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	intern
	movq	-88(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB13_19
# BB#18:                                # %if.then.45
	movabsq	$.L.str.22, %rdi
	callq	build_string
	movq	%rax, -8(%rbp)
	jmp	.LBB13_22
.LBB13_19:                              # %if.end.47
	movabsq	$.L.str.23, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	intern
	movq	-96(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB13_21
# BB#20:                                # %if.then.51
	movabsq	$.L.str.24, %rdi
	callq	build_string
	movq	%rax, -8(%rbp)
	jmp	.LBB13_22
.LBB13_21:                              # %if.end.53
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB13_22:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	Fgnutls_peer_status_warning_describe, .Lfunc_end13-Fgnutls_peer_status_warning_describe
	.cfi_endproc

	.globl	Fgnutls_peer_status
	.align	16, 0x90
	.type	Fgnutls_peer_status,@function
Fgnutls_peer_status:                    # @Fgnutls_peer_status
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
	subq	$176, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_PROCESS
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	cmpl	$4, 232(%rax)
	jae	.LBB14_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB14_28
.LBB14_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movl	272(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movl	-36(%rbp), %ecx
	andl	$2, %ecx
	cmpl	$0, %ecx
	je	.LBB14_4
# BB#3:                                 # %if.then.5
	movabsq	$.L.str.7, %rdi
	callq	intern
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -24(%rbp)
.LBB14_4:                               # %if.end.8
	movl	-36(%rbp), %eax
	andl	$32, %eax
	cmpl	$0, %eax
	je	.LBB14_6
# BB#5:                                 # %if.then.11
	movabsq	$.L.str.9, %rdi
	callq	intern
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -24(%rbp)
.LBB14_6:                               # %if.end.14
	movl	-36(%rbp), %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB14_8
# BB#7:                                 # %if.then.17
	movabsq	$.L.str.13, %rdi
	callq	intern
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -24(%rbp)
.LBB14_8:                               # %if.end.20
	movl	-36(%rbp), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	.LBB14_10
# BB#9:                                 # %if.then.23
	movabsq	$.L.str.15, %rdi
	callq	intern
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -24(%rbp)
.LBB14_10:                              # %if.end.26
	movl	-36(%rbp), %eax
	andl	$256, %eax              # imm = 0x100
	cmpl	$0, %eax
	je	.LBB14_12
# BB#11:                                # %if.then.29
	movabsq	$.L.str.17, %rdi
	callq	intern
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -24(%rbp)
.LBB14_12:                              # %if.end.32
	movl	-36(%rbp), %eax
	andl	$512, %eax              # imm = 0x200
	cmpl	$0, %eax
	je	.LBB14_14
# BB#13:                                # %if.then.35
	movabsq	$.L.str.19, %rdi
	callq	intern
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -24(%rbp)
.LBB14_14:                              # %if.end.38
	movl	-36(%rbp), %eax
	andl	$1024, %eax             # imm = 0x400
	cmpl	$0, %eax
	je	.LBB14_16
# BB#15:                                # %if.then.41
	movabsq	$.L.str.21, %rdi
	callq	intern
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -24(%rbp)
.LBB14_16:                              # %if.end.44
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movl	276(%rax), %ecx
	andl	$2, %ecx
	cmpl	$0, %ecx
	je	.LBB14_18
# BB#17:                                # %if.then.48
	movabsq	$.L.str.23, %rdi
	callq	intern
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -24(%rbp)
.LBB14_18:                              # %if.end.51
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	cmpq	$0, 264(%rax)
	je	.LBB14_21
# BB#19:                                # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movq	264(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	XPROCESS
	movq	264(%rax), %rsi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	gnutls_x509_crt_check_issuer
	cmpl	$0, %eax
	je	.LBB14_21
# BB#20:                                # %if.then.60
	movabsq	$.L.str.11, %rdi
	callq	intern
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -24(%rbp)
.LBB14_21:                              # %if.end.63
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB14_23
# BB#22:                                # %if.then.66
	movabsq	$.L.str.25, %rdi
	callq	intern
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	list2
	movq	%rax, -32(%rbp)
.LBB14_23:                              # %if.end.69
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	cmpq	$0, 264(%rax)
	je	.LBB14_25
# BB#24:                                # %if.then.73
	movabsq	$.L.str.26, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	intern
	movq	-16(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	XPROCESS
	movq	264(%rax), %rdi
	callq	gnutls_certificate_details
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	nconc2
	movq	%rax, -32(%rbp)
.LBB14_25:                              # %if.end.80
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movq	240(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gnutls_dh_get_prime_bits
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %edi
	callq	check_memory_full
	cmpl	$0, -52(%rbp)
	jle	.LBB14_27
# BB#26:                                # %if.then.84
	movabsq	$.L.str.27, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	intern
	movslq	-52(%rbp), %rdi
	shlq	$2, %rdi
	addq	$2, %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-104(%rbp), %rsi        # 8-byte Reload
	callq	list2
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	nconc2
	movq	%rax, -32(%rbp)
.LBB14_27:                              # %if.end.88
	movabsq	$.L.str.28, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	intern
	movq	-48(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gnutls_kx_get
	movl	%eax, %edi
	callq	gnutls_kx_get_name
	movq	%rax, %rdi
	callq	build_string
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	nconc2
	movabsq	$.L.str.29, %rdi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	intern
	movq	-48(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gnutls_protocol_get_version
	movl	%eax, %edi
	callq	gnutls_protocol_get_name
	movq	%rax, %rdi
	callq	build_string
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	nconc2
	movabsq	$.L.str.30, %rdi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	intern
	movq	-48(%rbp), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gnutls_cipher_get
	movl	%eax, %edi
	callq	gnutls_cipher_get_name
	movq	%rax, %rdi
	callq	build_string
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	nconc2
	movabsq	$.L.str.31, %rdi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	intern
	movq	-48(%rbp), %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gnutls_mac_get
	movl	%eax, %edi
	callq	gnutls_mac_get_name
	movq	%rax, %rdi
	callq	build_string
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	nconc2
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB14_28:                              # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	Fgnutls_peer_status, .Lfunc_end14-Fgnutls_peer_status
	.cfi_endproc

	.align	16, 0x90
	.type	gnutls_certificate_details,@function
gnutls_certificate_details:             # @gnutls_certificate_details
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
	subq	$416, %rsp              # imm = 0x1A0
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gnutls_x509_crt_get_version
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %edi
	callq	check_memory_full
	cmpl	$0, -36(%rbp)
	jl	.LBB15_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.72, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	intern
	movslq	-36(%rbp), %rdi
	shlq	$2, %rdi
	addq	$2, %rdi
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-224(%rbp), %rsi        # 8-byte Reload
	callq	list2
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	nconc2
	movq	%rax, -16(%rbp)
.LBB15_2:                               # %if.end
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-32(%rbp), %rdx
	movq	$0, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gnutls_x509_crt_get_serial
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edi
	callq	check_memory_full
	cmpl	$-51, -20(%rbp)
	jne	.LBB15_6
# BB#3:                                 # %if.then.8
	movq	-32(%rbp), %rdi
	callq	xmalloc
	leaq	-32(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gnutls_x509_crt_get_serial
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edi
	callq	check_memory_full
	cmpl	$0, -20(%rbp)
	jl	.LBB15_5
# BB#4:                                 # %if.then.13
	movabsq	$.L.str.73, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	intern
	movabsq	$.L.str.74, %rdx
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gnutls_hex_string
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	nconc2
	movq	%rax, -16(%rbp)
.LBB15_5:                               # %if.end.18
	movq	-48(%rbp), %rdi
	callq	xfree
.LBB15_6:                               # %if.end.19
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-32(%rbp), %rdx
	movq	$0, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gnutls_x509_crt_get_issuer_dn
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edi
	callq	check_memory_full
	cmpl	$-51, -20(%rbp)
	jne	.LBB15_10
# BB#7:                                 # %if.then.23
	movq	-32(%rbp), %rdi
	callq	xmalloc
	leaq	-32(%rbp), %rdx
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gnutls_x509_crt_get_issuer_dn
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edi
	callq	check_memory_full
	cmpl	$0, -20(%rbp)
	jl	.LBB15_9
# BB#8:                                 # %if.then.28
	movabsq	$.L.str.75, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	intern
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	make_string
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	nconc2
	movq	%rax, -16(%rbp)
.LBB15_9:                               # %if.end.33
	movq	-56(%rbp), %rdi
	callq	xfree
.LBB15_10:                              # %if.end.34
	movq	-8(%rbp), %rdi
	callq	gnutls_x509_crt_get_activation_time
	leaq	-144(%rbp), %rdi
	leaq	-136(%rbp), %rsi
	movq	%rax, -144(%rbp)
	callq	gmtime_r
	cmpq	$0, %rax
	je	.LBB15_13
# BB#11:                                # %land.lhs.true
	movl	$19, %eax
	movl	%eax, %esi
	movabsq	$.L.str.76, %rdx
	leaq	-136(%rbp), %rcx
	leaq	-80(%rbp), %rdi
	callq	strftime
	cmpq	$0, %rax
	je	.LBB15_13
# BB#12:                                # %if.then.39
	movabsq	$.L.str.77, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	intern
	leaq	-80(%rbp), %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	build_string
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	nconc2
	movq	%rax, -16(%rbp)
.LBB15_13:                              # %if.end.45
	movq	-8(%rbp), %rdi
	callq	gnutls_x509_crt_get_expiration_time
	leaq	-144(%rbp), %rdi
	leaq	-136(%rbp), %rsi
	movq	%rax, -144(%rbp)
	callq	gmtime_r
	cmpq	$0, %rax
	je	.LBB15_16
# BB#14:                                # %land.lhs.true.49
	movl	$19, %eax
	movl	%eax, %esi
	movabsq	$.L.str.76, %rdx
	leaq	-136(%rbp), %rcx
	leaq	-80(%rbp), %rdi
	callq	strftime
	cmpq	$0, %rax
	je	.LBB15_16
# BB#15:                                # %if.then.53
	movabsq	$.L.str.78, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	intern
	leaq	-80(%rbp), %rdi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	build_string
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	nconc2
	movq	%rax, -16(%rbp)
.LBB15_16:                              # %if.end.59
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-32(%rbp), %rdx
	movq	$0, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gnutls_x509_crt_get_dn
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edi
	callq	check_memory_full
	cmpl	$-51, -20(%rbp)
	jne	.LBB15_20
# BB#17:                                # %if.then.63
	movq	-32(%rbp), %rdi
	callq	xmalloc
	leaq	-32(%rbp), %rdx
	movq	%rax, -152(%rbp)
	movq	-8(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	gnutls_x509_crt_get_dn
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edi
	callq	check_memory_full
	cmpl	$0, -20(%rbp)
	jl	.LBB15_19
# BB#18:                                # %if.then.69
	movabsq	$.L.str.79, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	intern
	movq	-152(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	make_string
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	nconc2
	movq	%rax, -16(%rbp)
.LBB15_19:                              # %if.end.74
	movq	-152(%rbp), %rdi
	callq	xfree
.LBB15_20:                              # %if.end.75
	leaq	-156(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gnutls_x509_crt_get_pk_algorithm
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edi
	callq	check_memory_full
	cmpl	$0, -20(%rbp)
	jl	.LBB15_24
# BB#21:                                # %if.then.79
	movl	-20(%rbp), %edi
	callq	gnutls_pk_algorithm_get_name
	movq	%rax, -168(%rbp)
	cmpq	$0, -168(%rbp)
	je	.LBB15_23
# BB#22:                                # %if.then.82
	movabsq	$.L.str.80, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	intern
	movq	-168(%rbp), %rdi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	build_string
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	nconc2
	movq	%rax, -16(%rbp)
.LBB15_23:                              # %if.end.87
	movl	-20(%rbp), %edi
	movl	-156(%rbp), %esi
	callq	gnutls_pk_bits_to_sec_param
	movl	%eax, %edi
	callq	gnutls_sec_param_get_name
	movabsq	$.L.str.81, %rdi
	movq	%rax, -168(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	intern
	movq	-168(%rbp), %rdi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	build_string
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	nconc2
	movq	%rax, -16(%rbp)
.LBB15_24:                              # %if.end.94
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-32(%rbp), %rdx
	movq	$0, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gnutls_x509_crt_get_issuer_unique_id
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edi
	callq	check_memory_full
	cmpl	$-51, -20(%rbp)
	jne	.LBB15_28
# BB#25:                                # %if.then.98
	movq	-32(%rbp), %rdi
	callq	xmalloc
	leaq	-32(%rbp), %rdx
	movq	%rax, -176(%rbp)
	movq	-8(%rbp), %rdi
	movq	-176(%rbp), %rsi
	callq	gnutls_x509_crt_get_issuer_unique_id
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edi
	callq	check_memory_full
	cmpl	$0, -20(%rbp)
	jl	.LBB15_27
# BB#26:                                # %if.then.104
	movabsq	$.L.str.82, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	intern
	movq	-176(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	make_string
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	nconc2
	movq	%rax, -16(%rbp)
.LBB15_27:                              # %if.end.109
	movq	-176(%rbp), %rdi
	callq	xfree
.LBB15_28:                              # %if.end.110
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-32(%rbp), %rdx
	movq	$0, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gnutls_x509_crt_get_subject_unique_id
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edi
	callq	check_memory_full
	cmpl	$-51, -20(%rbp)
	jne	.LBB15_32
# BB#29:                                # %if.then.114
	movq	-32(%rbp), %rdi
	callq	xmalloc
	leaq	-32(%rbp), %rdx
	movq	%rax, -184(%rbp)
	movq	-8(%rbp), %rdi
	movq	-184(%rbp), %rsi
	callq	gnutls_x509_crt_get_subject_unique_id
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edi
	callq	check_memory_full
	cmpl	$0, -20(%rbp)
	jl	.LBB15_31
# BB#30:                                # %if.then.120
	movabsq	$.L.str.83, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	intern
	movq	-184(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	make_string
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	nconc2
	movq	%rax, -16(%rbp)
.LBB15_31:                              # %if.end.125
	movq	-184(%rbp), %rdi
	callq	xfree
.LBB15_32:                              # %if.end.126
	movq	-8(%rbp), %rdi
	callq	gnutls_x509_crt_get_signature_algorithm
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edi
	callq	check_memory_full
	cmpl	$0, -20(%rbp)
	jl	.LBB15_36
# BB#33:                                # %if.then.130
	movl	-20(%rbp), %edi
	callq	gnutls_sign_get_name
	movq	%rax, -192(%rbp)
	cmpq	$0, -192(%rbp)
	je	.LBB15_35
# BB#34:                                # %if.then.134
	movabsq	$.L.str.84, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	intern
	movq	-192(%rbp), %rdi
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	build_string
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	nconc2
	movq	%rax, -16(%rbp)
.LBB15_35:                              # %if.end.139
	jmp	.LBB15_36
.LBB15_36:                              # %if.end.140
	xorl	%esi, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	leaq	-32(%rbp), %rcx
	movq	$0, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gnutls_x509_crt_get_key_id
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edi
	callq	check_memory_full
	cmpl	$-51, -20(%rbp)
	jne	.LBB15_40
# BB#37:                                # %if.then.144
	movq	-32(%rbp), %rdi
	callq	xmalloc
	xorl	%esi, %esi
	leaq	-32(%rbp), %rcx
	movq	%rax, -200(%rbp)
	movq	-8(%rbp), %rdi
	movq	-200(%rbp), %rdx
	callq	gnutls_x509_crt_get_key_id
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edi
	callq	check_memory_full
	cmpl	$0, -20(%rbp)
	jl	.LBB15_39
# BB#38:                                # %if.then.150
	movabsq	$.L.str.85, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	intern
	movabsq	$.L.str.86, %rdx
	movq	-200(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gnutls_hex_string
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	nconc2
	movq	%rax, -16(%rbp)
.LBB15_39:                              # %if.end.155
	movq	-200(%rbp), %rdi
	callq	xfree
.LBB15_40:                              # %if.end.156
	movl	$3, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	leaq	-32(%rbp), %rcx
	movq	$0, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gnutls_x509_crt_get_fingerprint
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edi
	callq	check_memory_full
	cmpl	$-51, -20(%rbp)
	jne	.LBB15_44
# BB#41:                                # %if.then.160
	movq	-32(%rbp), %rdi
	callq	xmalloc
	movl	$3, %esi
	leaq	-32(%rbp), %rcx
	movq	%rax, -208(%rbp)
	movq	-8(%rbp), %rdi
	movq	-208(%rbp), %rdx
	callq	gnutls_x509_crt_get_fingerprint
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edi
	callq	check_memory_full
	cmpl	$0, -20(%rbp)
	jl	.LBB15_43
# BB#42:                                # %if.then.166
	movabsq	$.L.str.87, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	intern
	movabsq	$.L.str.86, %rdx
	movq	-208(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gnutls_hex_string
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	nconc2
	movq	%rax, -16(%rbp)
.LBB15_43:                              # %if.end.171
	movq	-208(%rbp), %rdi
	callq	xfree
.LBB15_44:                              # %if.end.172
	movq	-16(%rbp), %rax
	addq	$416, %rsp              # imm = 0x1A0
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gnutls_certificate_details, .Lfunc_end15-gnutls_certificate_details
	.cfi_endproc

	.align	16, 0x90
	.type	check_memory_full,@function
check_memory_full:                      # @check_memory_full
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
	movl	%edi, -4(%rbp)
	cmpl	$-25, -4(%rbp)
	jne	.LBB16_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	memory_full
.LBB16_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	check_memory_full, .Lfunc_end16-check_memory_full
	.cfi_endproc

	.globl	emacs_gnutls_global_init
	.align	16, 0x90
	.type	emacs_gnutls_global_init,@function
emacs_gnutls_global_init:               # @emacs_gnutls_global_init
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
	movl	$0, -4(%rbp)
	testb	$1, gnutls_global_initialized
	jne	.LBB17_4
# BB#1:                                 # %if.then
	callq	gnutls_global_init
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.LBB17_3
# BB#2:                                 # %if.then.1
	movb	$1, gnutls_global_initialized
.LBB17_3:                               # %if.end
	jmp	.LBB17_4
.LBB17_4:                               # %if.end.2
	movl	-4(%rbp), %edi
	callq	gnutls_make_error
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	emacs_gnutls_global_init, .Lfunc_end17-emacs_gnutls_global_init
	.cfi_endproc

	.align	16, 0x90
	.type	gnutls_make_error,@function
gnutls_make_error:                      # @gnutls_make_error
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
	movl	%edi, -12(%rbp)
	movl	%edi, %eax
	subl	$-52, %edi
	movl	%eax, -16(%rbp)         # 4-byte Spill
	movl	%edi, -20(%rbp)         # 4-byte Spill
	je	.LBB18_3
	jmp	.LBB18_7
.LBB18_7:                               # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$-28, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	je	.LBB18_2
	jmp	.LBB18_8
.LBB18_8:                               # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$-10, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB18_4
	jmp	.LBB18_9
.LBB18_9:                               # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	testl	%eax, %eax
	jne	.LBB18_5
	jmp	.LBB18_1
.LBB18_1:                               # %sw.bb
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB18_6
.LBB18_2:                               # %sw.bb.1
	movl	$494, %edi              # imm = 0x1EE
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB18_6
.LBB18_3:                               # %sw.bb.3
	movl	$495, %edi              # imm = 0x1EF
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB18_6
.LBB18_4:                               # %sw.bb.5
	movl	$496, %edi              # imm = 0x1F0
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB18_6
.LBB18_5:                               # %sw.epilog
	movl	-12(%rbp), %edi
	callq	check_memory_full
	movslq	-12(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
.LBB18_6:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gnutls_make_error, .Lfunc_end18-gnutls_make_error
	.cfi_endproc

	.globl	Fgnutls_boot
	.align	16, 0x90
	.type	Fgnutls_boot,@function
Fgnutls_boot:                           # @Fgnutls_boot
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
	subq	$656, %rsp              # imm = 0x290
	movabsq	$.L.str.32, %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	movb	$0, -41(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_PROCESS
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB19_2
# BB#1:                                 # %cond.true
	jmp	.LBB19_3
.LBB19_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -288(%rbp)        # 8-byte Spill
.LBB19_3:                               # %cond.end
	movq	-32(%rbp), %rdi
	callq	CHECK_LIST
	callq	Fgnutls_available_p
	xorl	%edi, %edi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB19_5
# BB#4:                                 # %if.then
	movabsq	$.L.str.33, %rdi
	movb	$0, %al
	callq	error
.LBB19_5:                               # %if.end
	movl	$498, %edi              # imm = 0x1F2
	movq	-24(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-304(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB19_8
# BB#6:                                 # %land.lhs.true
	movl	$492, %edi              # imm = 0x1EC
	movq	-24(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-312(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB19_8
# BB#7:                                 # %if.then.12
	movabsq	$.L.str.34, %rdi
	movb	$0, %al
	callq	error
.LBB19_8:                               # %if.end.13
	movl	$50, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movl	$54, %edi
	movq	%rax, -152(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movl	$55, %edi
	movq	%rax, -112(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movl	$51, %edi
	movq	%rax, -120(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movl	$49, %edi
	movq	%rax, -136(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movl	$52, %edi
	movq	%rax, -128(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movl	$56, %edi
	movq	%rax, -144(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movl	$53, %edi
	movq	%rax, -160(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -168(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-384(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB19_10
# BB#9:                                 # %if.then.33
	movb	$1, -41(%rbp)
	jmp	.LBB19_13
.LBB19_10:                              # %if.else
	movq	-160(%rbp), %rdi
	callq	Flistp
	xorl	%edi, %edi
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-392(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB19_12
# BB#11:                                # %if.then.38
	movabsq	$.L.str.35, %rdi
	movb	$0, %al
	callq	error
.LBB19_12:                              # %if.end.39
	jmp	.LBB19_13
.LBB19_13:                              # %if.end.40
	movq	-152(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB19_15
# BB#14:                                # %if.then.42
	movabsq	$.L.str.36, %rdi
	movb	$0, %al
	callq	error
.LBB19_15:                              # %if.end.43
	movq	-152(%rbp), %rdi
	callq	SSDATA
	movq	%rax, -104(%rbp)
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movq	240(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-144(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB19_21
# BB#16:                                # %land.lhs.true.51
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB19_18
	jmp	.LBB19_17
.LBB19_17:                              # %cond.true.52
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	-144(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jle	.LBB19_19
	jmp	.LBB19_21
.LBB19_18:                              # %cond.false.55
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-144(%rbp), %rdx
	sarq	$2, %rdx
	cmpq	%rdx, %rcx
	jg	.LBB19_21
.LBB19_19:                              # %land.lhs.true.59
	movq	-144(%rbp), %rax
	sarq	$2, %rax
	cmpq	$2147483647, %rax       # imm = 0x7FFFFFFF
	jg	.LBB19_21
# BB#20:                                # %if.then.63
	movabsq	$gnutls_log_function, %rdi
	callq	gnutls_global_set_log_function
	movabsq	$gnutls_audit_log_function, %rdi
	callq	gnutls_global_set_audit_log_function
	movq	-144(%rbp), %rdi
	sarq	$2, %rdi
	movl	%edi, %eax
	movl	%eax, %edi
	callq	gnutls_global_set_log_level
	movq	-144(%rbp), %rcx
	sarq	$2, %rcx
	movl	%ecx, %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	movq	-16(%rbp), %rdi
	movl	%eax, -396(%rbp)        # 4-byte Spill
	callq	XPROCESS
	movl	-396(%rbp), %edx        # 4-byte Reload
	movl	%edx, 280(%rax)
.LBB19_21:                              # %if.end.69
	jmp	.LBB19_22
.LBB19_22:                              # %do.body
	movl	$1, %eax
	cmpl	-40(%rbp), %eax
	jg	.LBB19_24
# BB#23:                                # %if.then.72
	movl	$1, %edi
	movabsq	$.L.str.37, %rsi
	movq	-104(%rbp), %rdx
	callq	gnutls_log_function2
.LBB19_24:                              # %if.end.73
	jmp	.LBB19_25
.LBB19_25:                              # %do.end
	callq	emacs_gnutls_global_init
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	Fgnutls_errorp
	xorl	%edi, %edi
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-408(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB19_27
# BB#26:                                # %if.then.79
	movq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB19_195
.LBB19_27:                              # %if.end.80
	movq	-16(%rbp), %rdi
	callq	emacs_gnutls_deinit
	movq	-16(%rbp), %rdi
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	XPROCESS
	movq	$0, 240(%rax)
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movq	$0, 248(%rax)
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movq	$0, 256(%rax)
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	pset_gnutls_cred_type
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movl	$0, 232(%rax)
# BB#28:                                # %do.body.88
	movl	$1, %eax
	cmpl	-40(%rbp), %eax
	jg	.LBB19_30
# BB#29:                                # %if.then.91
	movl	$1, %edi
	movabsq	$.L.str.38, %rsi
	callq	gnutls_log_function
.LBB19_30:                              # %if.end.92
	jmp	.LBB19_31
.LBB19_31:                              # %do.end.93
	movl	$498, %edi              # imm = 0x1F2
	movq	-24(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-424(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB19_55
# BB#32:                                # %if.then.97
	movl	$0, -188(%rbp)
# BB#33:                                # %do.body.98
	movl	$2, %eax
	cmpl	-40(%rbp), %eax
	jg	.LBB19_35
# BB#34:                                # %if.then.101
	movl	$2, %edi
	movabsq	$.L.str.39, %rsi
	callq	gnutls_log_function
.LBB19_35:                              # %if.end.102
	jmp	.LBB19_36
.LBB19_36:                              # %do.end.103
	leaq	-64(%rbp), %rdi
	callq	gnutls_certificate_allocate_credentials
	movl	%eax, %edi
	callq	check_memory_full
	movq	-64(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	callq	XPROCESS
	movl	$57, %edi
	movq	-432(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 248(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rdi
	callq	NUMBERP
	testb	$1, %al
	jne	.LBB19_37
	jmp	.LBB19_42
.LBB19_37:                              # %if.then.110
	movq	-184(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -188(%rbp)
# BB#38:                                # %do.body.113
	movl	$2, %eax
	cmpl	-40(%rbp), %eax
	jg	.LBB19_40
# BB#39:                                # %if.then.116
	movl	$2, %edi
	movabsq	$.L.str.40, %rsi
	callq	gnutls_log_function
.LBB19_40:                              # %if.end.117
	jmp	.LBB19_41
.LBB19_41:                              # %do.end.118
	jmp	.LBB19_54
.LBB19_42:                              # %if.else.119
	xorl	%edi, %edi
	movq	-184(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-448(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB19_48
# BB#43:                                # %if.then.123
	jmp	.LBB19_44
.LBB19_44:                              # %do.body.124
	movl	$2, %eax
	cmpl	-40(%rbp), %eax
	jg	.LBB19_46
# BB#45:                                # %if.then.127
	movl	$2, %edi
	movabsq	$.L.str.41, %rsi
	callq	gnutls_log_function
.LBB19_46:                              # %if.end.128
	jmp	.LBB19_47
.LBB19_47:                              # %do.end.129
	jmp	.LBB19_53
.LBB19_48:                              # %if.else.130
	jmp	.LBB19_49
.LBB19_49:                              # %do.body.131
	movl	$2, %eax
	cmpl	-40(%rbp), %eax
	jg	.LBB19_51
# BB#50:                                # %if.then.134
	movl	$2, %edi
	movabsq	$.L.str.42, %rsi
	callq	gnutls_log_function
.LBB19_51:                              # %if.end.135
	jmp	.LBB19_52
.LBB19_52:                              # %do.end.136
	jmp	.LBB19_53
.LBB19_53:                              # %if.end.137
	jmp	.LBB19_54
.LBB19_54:                              # %if.end.138
	movq	-64(%rbp), %rdi
	movl	-188(%rbp), %esi
	callq	gnutls_certificate_set_verify_flags
	jmp	.LBB19_60
.LBB19_55:                              # %if.else.139
	jmp	.LBB19_56
.LBB19_56:                              # %do.body.140
	movl	$2, %eax
	cmpl	-40(%rbp), %eax
	jg	.LBB19_58
# BB#57:                                # %if.then.143
	movl	$2, %edi
	movabsq	$.L.str.43, %rsi
	callq	gnutls_log_function
.LBB19_58:                              # %if.end.144
	jmp	.LBB19_59
.LBB19_59:                              # %do.end.145
	leaq	-72(%rbp), %rdi
	callq	gnutls_anon_allocate_client_credentials
	movl	%eax, %edi
	callq	check_memory_full
	movq	-72(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	%rcx, -456(%rbp)        # 8-byte Spill
	callq	XPROCESS
	movq	-456(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 256(%rax)
.LBB19_60:                              # %if.end.149
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movl	$498, %edi              # imm = 0x1F2
	movl	$1, 232(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-464(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB19_112
# BB#61:                                # %if.then.155
	movl	$1, -192(%rbp)
	movq	-64(%rbp), %rdi
	callq	gnutls_certificate_set_x509_system_trust
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jge	.LBB19_67
# BB#62:                                # %if.then.159
	movl	-36(%rbp), %edi
	callq	check_memory_full
# BB#63:                                # %do.body.160
	movl	$4, %eax
	cmpl	-40(%rbp), %eax
	jg	.LBB19_65
# BB#64:                                # %if.then.163
	movl	$4, %edi
	movabsq	$.L.str.44, %rsi
	movl	-36(%rbp), %edx
	callq	gnutls_log_function2i
.LBB19_65:                              # %if.end.164
	jmp	.LBB19_66
.LBB19_66:                              # %do.end.165
	jmp	.LBB19_67
.LBB19_67:                              # %if.end.166
	movq	-120(%rbp), %rax
	movq	%rax, -200(%rbp)
.LBB19_68:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-200(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB19_80
# BB#69:                                # %for.body
                                        #   in Loop: Header=BB19_68 Depth=1
	movq	-200(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB19_70
	jmp	.LBB19_77
.LBB19_70:                              # %if.then.172
                                        #   in Loop: Header=BB19_68 Depth=1
	jmp	.LBB19_71
.LBB19_71:                              # %do.body.173
                                        #   in Loop: Header=BB19_68 Depth=1
	movl	$1, %eax
	cmpl	-40(%rbp), %eax
	jg	.LBB19_73
# BB#72:                                # %if.then.176
                                        #   in Loop: Header=BB19_68 Depth=1
	movq	-208(%rbp), %rdi
	callq	SSDATA
	movl	$1, %edi
	movabsq	$.L.str.45, %rsi
	movq	%rax, %rdx
	callq	gnutls_log_function2
.LBB19_73:                              # %if.end.178
                                        #   in Loop: Header=BB19_68 Depth=1
	jmp	.LBB19_74
.LBB19_74:                              # %do.end.179
                                        #   in Loop: Header=BB19_68 Depth=1
	movq	-208(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -208(%rbp)
	movq	-64(%rbp), %rdi
	movq	-208(%rbp), %rax
	movq	%rdi, -472(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SSDATA
	movl	-192(%rbp), %edx
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gnutls_certificate_set_x509_trust_file
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jge	.LBB19_76
# BB#75:                                # %if.then.185
	movl	-36(%rbp), %edi
	callq	gnutls_make_error
	movq	%rax, -8(%rbp)
	jmp	.LBB19_195
.LBB19_76:                              # %if.end.187
                                        #   in Loop: Header=BB19_68 Depth=1
	jmp	.LBB19_78
.LBB19_77:                              # %if.else.188
	movq	-16(%rbp), %rdi
	callq	emacs_gnutls_deinit
	movabsq	$.L.str.46, %rdi
	movq	%rax, -480(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	error
.LBB19_78:                              # %if.end.190
                                        #   in Loop: Header=BB19_68 Depth=1
	jmp	.LBB19_79
.LBB19_79:                              # %for.inc
                                        #   in Loop: Header=BB19_68 Depth=1
	movq	-200(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -200(%rbp)
	jmp	.LBB19_68
.LBB19_80:                              # %for.end
	movq	-128(%rbp), %rax
	movq	%rax, -200(%rbp)
.LBB19_81:                              # %for.cond.192
                                        # =>This Inner Loop Header: Depth=1
	movq	-200(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB19_93
# BB#82:                                # %for.body.197
                                        #   in Loop: Header=BB19_81 Depth=1
	movq	-200(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB19_83
	jmp	.LBB19_90
.LBB19_83:                              # %if.then.201
                                        #   in Loop: Header=BB19_81 Depth=1
	jmp	.LBB19_84
.LBB19_84:                              # %do.body.202
                                        #   in Loop: Header=BB19_81 Depth=1
	movl	$1, %eax
	cmpl	-40(%rbp), %eax
	jg	.LBB19_86
# BB#85:                                # %if.then.205
                                        #   in Loop: Header=BB19_81 Depth=1
	movq	-216(%rbp), %rdi
	callq	SSDATA
	movl	$1, %edi
	movabsq	$.L.str.47, %rsi
	movq	%rax, %rdx
	callq	gnutls_log_function2
.LBB19_86:                              # %if.end.207
                                        #   in Loop: Header=BB19_81 Depth=1
	jmp	.LBB19_87
.LBB19_87:                              # %do.end.208
                                        #   in Loop: Header=BB19_81 Depth=1
	movq	-216(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -216(%rbp)
	movq	-64(%rbp), %rdi
	movq	-216(%rbp), %rax
	movq	%rdi, -488(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SSDATA
	movl	-192(%rbp), %edx
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gnutls_certificate_set_x509_crl_file
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jge	.LBB19_89
# BB#88:                                # %if.then.214
	movl	-36(%rbp), %edi
	callq	gnutls_make_error
	movq	%rax, -8(%rbp)
	jmp	.LBB19_195
.LBB19_89:                              # %if.end.216
                                        #   in Loop: Header=BB19_81 Depth=1
	jmp	.LBB19_91
.LBB19_90:                              # %if.else.217
	movq	-16(%rbp), %rdi
	callq	emacs_gnutls_deinit
	movabsq	$.L.str.48, %rdi
	movq	%rax, -496(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	error
.LBB19_91:                              # %if.end.219
                                        #   in Loop: Header=BB19_81 Depth=1
	jmp	.LBB19_92
.LBB19_92:                              # %for.inc.220
                                        #   in Loop: Header=BB19_81 Depth=1
	movq	-200(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -200(%rbp)
	jmp	.LBB19_81
.LBB19_93:                              # %for.end.224
	movq	-136(%rbp), %rax
	movq	%rax, -200(%rbp)
.LBB19_94:                              # %for.cond.225
                                        # =>This Inner Loop Header: Depth=1
	movq	-200(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB19_111
# BB#95:                                # %for.body.230
                                        #   in Loop: Header=BB19_94 Depth=1
	movq	-200(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	Fcar
	movq	%rax, -224(%rbp)
	movq	-200(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	Fcdr
	movq	%rax, %rdi
	callq	Fcar
	movq	%rax, -232(%rbp)
	movq	-224(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB19_96
	jmp	.LBB19_108
.LBB19_96:                              # %land.lhs.true.240
                                        #   in Loop: Header=BB19_94 Depth=1
	movq	-232(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB19_97
	jmp	.LBB19_108
.LBB19_97:                              # %if.then.243
                                        #   in Loop: Header=BB19_94 Depth=1
	jmp	.LBB19_98
.LBB19_98:                              # %do.body.244
                                        #   in Loop: Header=BB19_94 Depth=1
	movl	$1, %eax
	cmpl	-40(%rbp), %eax
	jg	.LBB19_100
# BB#99:                                # %if.then.247
                                        #   in Loop: Header=BB19_94 Depth=1
	movq	-224(%rbp), %rdi
	callq	SSDATA
	movl	$1, %edi
	movabsq	$.L.str.49, %rsi
	movq	%rax, %rdx
	callq	gnutls_log_function2
.LBB19_100:                             # %if.end.249
                                        #   in Loop: Header=BB19_94 Depth=1
	jmp	.LBB19_101
.LBB19_101:                             # %do.end.250
                                        #   in Loop: Header=BB19_94 Depth=1
	jmp	.LBB19_102
.LBB19_102:                             # %do.body.251
                                        #   in Loop: Header=BB19_94 Depth=1
	movl	$1, %eax
	cmpl	-40(%rbp), %eax
	jg	.LBB19_104
# BB#103:                               # %if.then.254
                                        #   in Loop: Header=BB19_94 Depth=1
	movq	-232(%rbp), %rdi
	callq	SSDATA
	movl	$1, %edi
	movabsq	$.L.str.50, %rsi
	movq	%rax, %rdx
	callq	gnutls_log_function2
.LBB19_104:                             # %if.end.256
                                        #   in Loop: Header=BB19_94 Depth=1
	jmp	.LBB19_105
.LBB19_105:                             # %do.end.257
                                        #   in Loop: Header=BB19_94 Depth=1
	movq	-224(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -224(%rbp)
	movq	-232(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -232(%rbp)
	movq	-64(%rbp), %rdi
	movq	-232(%rbp), %rax
	movq	%rdi, -504(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SSDATA
	movq	-224(%rbp), %rdi
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	SSDATA
	movl	-192(%rbp), %ecx
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	-512(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gnutls_certificate_set_x509_key_file
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jge	.LBB19_107
# BB#106:                               # %if.then.265
	movl	-36(%rbp), %edi
	callq	gnutls_make_error
	movq	%rax, -8(%rbp)
	jmp	.LBB19_195
.LBB19_107:                             # %if.end.267
                                        #   in Loop: Header=BB19_94 Depth=1
	jmp	.LBB19_109
.LBB19_108:                             # %if.else.268
	movq	-16(%rbp), %rdi
	callq	emacs_gnutls_deinit
	movq	-224(%rbp), %rdi
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	STRINGP
	movabsq	$.L.str.52, %rdi
	movabsq	$.L.str.51, %rcx
	testb	$1, %al
	cmovneq	%rcx, %rdi
	movb	$0, %al
	callq	error
.LBB19_109:                             # %if.end.272
                                        #   in Loop: Header=BB19_94 Depth=1
	jmp	.LBB19_110
.LBB19_110:                             # %for.inc.273
                                        #   in Loop: Header=BB19_94 Depth=1
	movq	-200(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -200(%rbp)
	jmp	.LBB19_94
.LBB19_111:                             # %for.end.277
	jmp	.LBB19_112
.LBB19_112:                             # %if.end.278
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movl	$2, 232(%rax)
# BB#113:                               # %do.body.281
	movl	$1, %eax
	cmpl	-40(%rbp), %eax
	jg	.LBB19_115
# BB#114:                               # %if.then.284
	movl	$1, %edi
	movabsq	$.L.str.53, %rsi
	callq	gnutls_log_function
.LBB19_115:                             # %if.end.285
	jmp	.LBB19_116
.LBB19_116:                             # %do.end.286
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movl	$3, 232(%rax)
# BB#117:                               # %do.body.289
	movl	$1, %eax
	cmpl	-40(%rbp), %eax
	jg	.LBB19_119
# BB#118:                               # %if.then.292
	movl	$1, %edi
	movabsq	$.L.str.54, %rsi
	callq	gnutls_log_function
.LBB19_119:                             # %if.end.293
	jmp	.LBB19_120
.LBB19_120:                             # %do.end.294
	leaq	-56(%rbp), %rdi
	movl	$2, %esi
	callq	gnutls_init
	movl	%eax, -36(%rbp)
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	%rdi, -528(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	XPROCESS
	movq	-528(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 240(%rax)
	cmpl	$0, -36(%rbp)
	jge	.LBB19_122
# BB#121:                               # %if.then.300
	movl	-36(%rbp), %edi
	callq	gnutls_make_error
	movq	%rax, -8(%rbp)
	jmp	.LBB19_195
.LBB19_122:                             # %if.end.302
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movl	$4, 232(%rax)
	movq	-112(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB19_123
	jmp	.LBB19_128
.LBB19_123:                             # %if.then.306
	movq	-112(%rbp), %rdi
	callq	SSDATA
	movq	%rax, -88(%rbp)
# BB#124:                               # %do.body.308
	movl	$1, %eax
	cmpl	-40(%rbp), %eax
	jg	.LBB19_126
# BB#125:                               # %if.then.311
	movl	$1, %edi
	movabsq	$.L.str.55, %rsi
	movq	-88(%rbp), %rdx
	callq	gnutls_log_function2
.LBB19_126:                             # %if.end.312
	jmp	.LBB19_127
.LBB19_127:                             # %do.end.313
	jmp	.LBB19_133
.LBB19_128:                             # %if.else.314
	jmp	.LBB19_129
.LBB19_129:                             # %do.body.315
	movl	$1, %eax
	cmpl	-40(%rbp), %eax
	jg	.LBB19_131
# BB#130:                               # %if.then.318
	movl	$1, %edi
	movabsq	$.L.str.56, %rsi
	movq	-88(%rbp), %rdx
	callq	gnutls_log_function2
.LBB19_131:                             # %if.end.319
	jmp	.LBB19_132
.LBB19_132:                             # %do.end.320
	jmp	.LBB19_133
.LBB19_133:                             # %if.end.321
	jmp	.LBB19_134
.LBB19_134:                             # %do.body.322
	movl	$1, %eax
	cmpl	-40(%rbp), %eax
	jg	.LBB19_136
# BB#135:                               # %if.then.325
	movl	$1, %edi
	movabsq	$.L.str.57, %rsi
	callq	gnutls_log_function
.LBB19_136:                             # %if.end.326
	jmp	.LBB19_137
.LBB19_137:                             # %do.end.327
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-56(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	gnutls_priority_set_direct
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jge	.LBB19_139
# BB#138:                               # %if.then.331
	movl	-36(%rbp), %edi
	callq	gnutls_make_error
	movq	%rax, -8(%rbp)
	jmp	.LBB19_195
.LBB19_139:                             # %if.end.333
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movl	$5, 232(%rax)
	movq	-168(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB19_141
# BB#140:                               # %if.then.341
	movq	-56(%rbp), %rdi
	movq	-168(%rbp), %rax
	movq	%rdi, -536(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	XUINT
	movl	%eax, %ecx
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	callq	gnutls_dh_set_prime_bits
.LBB19_141:                             # %if.end.344
	movl	$498, %edi              # imm = 0x1F2
	movq	-24(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-544(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB19_143
# BB#142:                               # %cond.true.348
	movl	$1, %esi
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	callq	gnutls_credentials_set
	movl	%eax, -548(%rbp)        # 4-byte Spill
	jmp	.LBB19_144
.LBB19_143:                             # %cond.false.350
	movl	$2, %esi
	movq	-56(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	%rax, %rdx
	callq	gnutls_credentials_set
	movl	%eax, -548(%rbp)        # 4-byte Spill
.LBB19_144:                             # %cond.end.352
	movl	-548(%rbp), %eax        # 4-byte Reload
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jge	.LBB19_146
# BB#145:                               # %if.then.356
	movl	-36(%rbp), %edi
	callq	gnutls_make_error
	movq	%rax, -8(%rbp)
	jmp	.LBB19_195
.LBB19_146:                             # %if.end.358
	movq	-104(%rbp), %rdi
	callq	gnutls_ip_address_p
	testb	$1, %al
	jne	.LBB19_150
# BB#147:                               # %if.then.360
	movl	$1, %esi
	movq	-56(%rbp), %rdi
	movq	-104(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdi, -560(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%esi, -564(%rbp)        # 4-byte Spill
	movq	%rdx, -576(%rbp)        # 8-byte Spill
	callq	strlen
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movl	-564(%rbp), %esi        # 4-byte Reload
	movq	-576(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	gnutls_server_name_set
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jge	.LBB19_149
# BB#148:                               # %if.then.365
	movl	-36(%rbp), %edi
	callq	gnutls_make_error
	movq	%rax, -8(%rbp)
	jmp	.LBB19_195
.LBB19_149:                             # %if.end.367
	jmp	.LBB19_150
.LBB19_150:                             # %if.end.368
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movl	$6, 232(%rax)
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movq	%rax, %rdi
	callq	emacs_gnutls_handshake
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jge	.LBB19_152
# BB#151:                               # %if.then.375
	movl	-36(%rbp), %edi
	callq	gnutls_make_error
	movq	%rax, -8(%rbp)
	jmp	.LBB19_195
.LBB19_152:                             # %if.end.377
	leaq	-92(%rbp), %rsi
	movq	-56(%rbp), %rdi
	callq	gnutls_certificate_verify_peers2
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jge	.LBB19_154
# BB#153:                               # %if.then.381
	movl	-36(%rbp), %edi
	callq	gnutls_make_error
	movq	%rax, -8(%rbp)
	jmp	.LBB19_195
.LBB19_154:                             # %if.end.383
	movl	-92(%rbp), %eax
	movq	-16(%rbp), %rdi
	movl	%eax, -580(%rbp)        # 4-byte Spill
	callq	XPROCESS
	movl	-580(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, 272(%rax)
	movq	-16(%rbp), %rdi
	callq	Fgnutls_peer_status
	movabsq	$.L.str.25, %rdi
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	intern
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	xorl	%edi, %edi
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-600(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB19_166
# BB#155:                               # %if.then.391
	movq	-176(%rbp), %rax
	movq	%rax, -240(%rbp)
.LBB19_156:                             # %for.cond.393
                                        # =>This Inner Loop Header: Depth=1
	movq	-240(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB19_165
# BB#157:                               # %for.body.398
                                        #   in Loop: Header=BB19_156 Depth=1
	movq	-240(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rdi
	callq	Fgnutls_peer_status_warning_describe
	xorl	%edi, %edi
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-608(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB19_163
# BB#158:                               # %if.then.405
                                        #   in Loop: Header=BB19_156 Depth=1
	jmp	.LBB19_159
.LBB19_159:                             # %do.body.406
                                        #   in Loop: Header=BB19_156 Depth=1
	movl	$1, %eax
	cmpl	-40(%rbp), %eax
	jg	.LBB19_161
# BB#160:                               # %if.then.409
                                        #   in Loop: Header=BB19_156 Depth=1
	movq	-256(%rbp), %rdi
	callq	SSDATA
	movl	$1, %edi
	movabsq	$.L.str.58, %rsi
	movq	%rax, %rdx
	callq	gnutls_log_function2
.LBB19_161:                             # %if.end.411
                                        #   in Loop: Header=BB19_156 Depth=1
	jmp	.LBB19_162
.LBB19_162:                             # %do.end.412
                                        #   in Loop: Header=BB19_156 Depth=1
	jmp	.LBB19_163
.LBB19_163:                             # %if.end.413
                                        #   in Loop: Header=BB19_156 Depth=1
	jmp	.LBB19_164
.LBB19_164:                             # %for.inc.414
                                        #   in Loop: Header=BB19_156 Depth=1
	movq	-240(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -240(%rbp)
	jmp	.LBB19_156
.LBB19_165:                             # %for.end.418
	jmp	.LBB19_166
.LBB19_166:                             # %if.end.419
	cmpl	$0, -92(%rbp)
	je	.LBB19_176
# BB#167:                               # %if.then.422
	testb	$1, -41(%rbp)
	jne	.LBB19_169
# BB#168:                               # %lor.lhs.false
	movl	$55, %edi
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fmember
	xorl	%edi, %edi
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-616(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB19_170
.LBB19_169:                             # %if.then.429
	movq	-16(%rbp), %rdi
	callq	emacs_gnutls_deinit
	movabsq	$.L.str.59, %rdi
	movq	-104(%rbp), %rsi
	movl	-92(%rbp), %edx
	movq	%rax, -624(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	error
.LBB19_170:                             # %if.else.431
	jmp	.LBB19_171
.LBB19_171:                             # %do.body.432
	movl	$1, %eax
	cmpl	-40(%rbp), %eax
	jg	.LBB19_173
# BB#172:                               # %if.then.435
	movl	$1, %edi
	movabsq	$.L.str.60, %rsi
	movq	-104(%rbp), %rdx
	callq	gnutls_log_function2
.LBB19_173:                             # %if.end.436
	jmp	.LBB19_174
.LBB19_174:                             # %do.end.437
	jmp	.LBB19_175
.LBB19_175:                             # %if.end.438
	jmp	.LBB19_176
.LBB19_176:                             # %if.end.439
	movq	-56(%rbp), %rdi
	callq	gnutls_certificate_type_get
	cmpl	$1, %eax
	jne	.LBB19_194
# BB#177:                               # %if.then.443
	leaq	-264(%rbp), %rdi
	callq	gnutls_x509_crt_init
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jge	.LBB19_179
# BB#178:                               # %if.then.447
	movl	-36(%rbp), %edi
	callq	gnutls_make_error
	movq	%rax, -8(%rbp)
	jmp	.LBB19_195
.LBB19_179:                             # %if.end.449
	leaq	-276(%rbp), %rsi
	movq	-56(%rbp), %rdi
	callq	gnutls_certificate_get_peers
	movq	%rax, -272(%rbp)
	cmpq	$0, -272(%rbp)
	jne	.LBB19_181
# BB#180:                               # %if.then.453
	movq	-264(%rbp), %rdi
	callq	gnutls_x509_crt_deinit
	movq	-16(%rbp), %rdi
	callq	emacs_gnutls_deinit
	movabsq	$.L.str.61, %rdi
	movq	%rax, -632(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	error
.LBB19_181:                             # %if.end.455
	xorl	%edx, %edx
	movq	-264(%rbp), %rdi
	movq	-272(%rbp), %rsi
	callq	gnutls_x509_crt_import
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jge	.LBB19_183
# BB#182:                               # %if.then.459
	movq	-264(%rbp), %rdi
	callq	gnutls_x509_crt_deinit
	movl	-36(%rbp), %edi
	callq	gnutls_make_error
	movq	%rax, -8(%rbp)
	jmp	.LBB19_195
.LBB19_183:                             # %if.end.461
	movq	-264(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	XPROCESS
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, 264(%rax)
	movq	-264(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	gnutls_x509_crt_check_hostname
	movl	%eax, -280(%rbp)
	movl	-280(%rbp), %edi
	callq	check_memory_full
	cmpl	$0, -280(%rbp)
	jne	.LBB19_193
# BB#184:                               # %if.then.465
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movl	276(%rax), %ecx
	orl	$2, %ecx
	movl	%ecx, 276(%rax)
	testb	$1, -41(%rbp)
	jne	.LBB19_186
# BB#185:                               # %lor.lhs.false.469
	movl	$50, %edi
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fmember
	xorl	%edi, %edi
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-648(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB19_187
.LBB19_186:                             # %if.then.475
	movq	-264(%rbp), %rdi
	callq	gnutls_x509_crt_deinit
	movq	-16(%rbp), %rdi
	callq	emacs_gnutls_deinit
	movabsq	$.L.str.62, %rdi
	movq	-104(%rbp), %rsi
	movq	%rax, -656(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	error
.LBB19_187:                             # %if.else.477
	jmp	.LBB19_188
.LBB19_188:                             # %do.body.478
	movl	$1, %eax
	cmpl	-40(%rbp), %eax
	jg	.LBB19_190
# BB#189:                               # %if.then.481
	movl	$1, %edi
	movabsq	$.L.str.63, %rsi
	movq	-104(%rbp), %rdx
	callq	gnutls_log_function2
.LBB19_190:                             # %if.end.482
	jmp	.LBB19_191
.LBB19_191:                             # %do.end.483
	jmp	.LBB19_192
.LBB19_192:                             # %if.end.484
	jmp	.LBB19_193
.LBB19_193:                             # %if.end.485
	jmp	.LBB19_194
.LBB19_194:                             # %if.end.486
	movq	-16(%rbp), %rdi
	callq	XPROCESS
	movb	288(%rax), %cl
	andb	$-2, %cl
	orb	$1, %cl
	movb	%cl, 288(%rax)
	movl	-36(%rbp), %edi
	callq	gnutls_make_error
	movq	%rax, -8(%rbp)
.LBB19_195:                             # %return
	movq	-8(%rbp), %rax
	addq	$656, %rsp              # imm = 0x290
	popq	%rbp
	retq
.Lfunc_end19:
	.size	Fgnutls_boot, .Lfunc_end19-Fgnutls_boot
	.cfi_endproc

	.globl	Fgnutls_available_p
	.align	16, 0x90
	.type	Fgnutls_available_p,@function
Fgnutls_available_p:                    # @Fgnutls_available_p
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
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	popq	%rbp
	retq
.Lfunc_end20:
	.size	Fgnutls_available_p, .Lfunc_end20-Fgnutls_available_p
	.cfi_endproc

	.align	16, 0x90
	.type	gnutls_audit_log_function,@function
gnutls_audit_log_function:              # @gnutls_audit_log_function
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
	movq	%rsi, -16(%rbp)
	cmpq	$1, globals+3128
	jl	.LBB21_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.90, %rdi
	movq	-16(%rbp), %rsi
	movb	$0, %al
	callq	message
.LBB21_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gnutls_audit_log_function, .Lfunc_end21-gnutls_audit_log_function
	.cfi_endproc

	.align	16, 0x90
	.type	gnutls_log_function2,@function
gnutls_log_function2:                   # @gnutls_log_function2
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
	movabsq	$.L.str.91, %rax
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-4(%rbp), %esi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	message
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gnutls_log_function2, .Lfunc_end22-gnutls_log_function2
	.cfi_endproc

	.align	16, 0x90
	.type	gnutls_ip_address_p,@function
gnutls_ip_address_p:                    # @gnutls_ip_address_p
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
	movq	%rdi, -16(%rbp)
.LBB23_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	(%rax), %dl
	movb	%dl, -17(%rbp)
	movsbl	%dl, %esi
	cmpl	$0, %esi
	je	.LBB23_8
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB23_1 Depth=1
	movsbl	-17(%rbp), %eax
	cmpl	$46, %eax
	je	.LBB23_7
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB23_1 Depth=1
	movsbl	-17(%rbp), %eax
	cmpl	$58, %eax
	je	.LBB23_7
# BB#4:                                 # %lor.lhs.false.8
                                        #   in Loop: Header=BB23_1 Depth=1
	movsbl	-17(%rbp), %eax
	cmpl	$48, %eax
	jl	.LBB23_6
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB23_1 Depth=1
	movsbl	-17(%rbp), %eax
	cmpl	$57, %eax
	jle	.LBB23_7
.LBB23_6:                               # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB23_9
.LBB23_7:                               # %if.end
                                        #   in Loop: Header=BB23_1 Depth=1
	jmp	.LBB23_1
.LBB23_8:                               # %while.end
	movb	$1, -1(%rbp)
.LBB23_9:                               # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gnutls_ip_address_p, .Lfunc_end23-gnutls_ip_address_p
	.cfi_endproc

	.globl	Fgnutls_bye
	.align	16, 0x90
	.type	Fgnutls_bye,@function
Fgnutls_bye:                            # @Fgnutls_bye
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_PROCESS
	movq	-8(%rbp), %rdi
	callq	XPROCESS
	movq	240(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	XPROCESS
	movq	264(%rax), %rdi
	callq	gnutls_x509_crt_deinit
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edi
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	cmovel	%ecx, %edi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	%edi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	-52(%rbp), %esi         # 4-byte Reload
	callq	gnutls_bye
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %edi
	callq	gnutls_make_error
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	Fgnutls_bye, .Lfunc_end24-Fgnutls_bye
	.cfi_endproc

	.globl	syms_of_gnutls
	.align	16, 0x90
	.type	syms_of_gnutls,@function
syms_of_gnutls:                         # @syms_of_gnutls
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
	movl	$616, %edi              # imm = 0x268
	callq	builtin_lisp_symbol
	movl	$121234, %edi           # imm = 0x1D992
	movl	%edi, %esi
	movq	%rax, %rdi
	callq	Fset
	movl	$495, %edi              # imm = 0x1EF
	movb	$0, gnutls_global_initialized
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$493, %edi              # imm = 0x1ED
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	$-206, %rdx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fput
	movl	$494, %edi              # imm = 0x1EE
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$493, %edi              # imm = 0x1ED
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	$-110, %rdx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fput
	movl	$496, %edi              # imm = 0x1F0
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$493, %edi              # imm = 0x1ED
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	$-38, %rdx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fput
	movl	$497, %edi              # imm = 0x1F1
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$493, %edi              # imm = 0x1ED
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	$-261998, %rdx          # imm = 0xFFFFFFFFFFFC0092
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fput
	movabsq	$Sgnutls_get_initstage, %rdx
	movq	%rdx, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	defsubr
	movabsq	$Sgnutls_errorp, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sgnutls_error_fatalp, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sgnutls_error_string, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sgnutls_boot, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sgnutls_deinit, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sgnutls_bye, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sgnutls_peer_status, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sgnutls_peer_status_warning_describe, %rax
	movq	%rax, %rdi
	callq	defsubr
# BB#1:                                 # %do.body
	movabsq	$syms_of_gnutls.i_fwd, %rdi
	movabsq	$.L.str.64, %rsi
	movabsq	$globals, %rax
	addq	$3128, %rax             # imm = 0xC38
	movq	%rax, %rdx
	callq	defvar_int
# BB#2:                                 # %do.end
	movabsq	$Sgnutls_available_p, %rdi
	movq	$0, globals+3128
	callq	defsubr
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	syms_of_gnutls, .Lfunc_end25-syms_of_gnutls
	.cfi_endproc

	.align	16, 0x90
	.type	gnutls_hex_string,@function
gnutls_hex_string:                      # @gnutls_hex_string
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
	subq	$1296, %rsp             # imm = 0x510
	xorl	%eax, %eax
	movb	%al, %cl
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	movb	%cl, -65(%rbp)          # 1-byte Spill
	callq	strlen
	movq	%rax, -32(%rbp)
	movb	-65(%rbp), %cl          # 1-byte Reload
	testb	$1, %cl
	jne	.LBB26_1
	jmp	.LBB26_80
.LBB26_1:                               # %cond.true
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_2
	jmp	.LBB26_41
.LBB26_2:                               # %cond.true.1
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB26_4
# BB#3:                                 # %cond.true.4
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rcx
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
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB26_5
.LBB26_4:                               # %cond.false
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -72(%rbp)         # 4-byte Spill
.LBB26_5:                               # %cond.end
	movl	-72(%rbp), %eax         # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB26_7
# BB#6:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jl	.LBB26_33
.LBB26_7:                               # %lor.lhs.false
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_8
	jmp	.LBB26_19
.LBB26_8:                               # %cond.true.33
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB26_13
# BB#9:                                 # %cond.true.38
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -76(%rbp)         # 4-byte Spill
	jge	.LBB26_11
# BB#10:                                # %cond.true.48
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -80(%rbp)         # 4-byte Spill
	jmp	.LBB26_12
.LBB26_11:                              # %cond.false.58
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -80(%rbp)         # 4-byte Spill
.LBB26_12:                              # %cond.end.64
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	$3, %ecx
	cltd
	idivl	%ecx
	movl	-76(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB26_33
	jmp	.LBB26_30
.LBB26_13:                              # %cond.false.68
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_14
	jmp	.LBB26_15
.LBB26_14:                              # %cond.true.69
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_33
	jmp	.LBB26_30
.LBB26_15:                              # %cond.false.70
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB26_17
# BB#16:                                # %cond.true.78
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rcx
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
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB26_18
.LBB26_17:                              # %cond.false.98
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -84(%rbp)         # 4-byte Spill
.LBB26_18:                              # %cond.end.104
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	$3, %ecx
	cltd
	idivl	%ecx
	movq	-16(%rbp), %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB26_33
	jmp	.LBB26_30
.LBB26_19:                              # %cond.false.111
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_20
	jmp	.LBB26_21
.LBB26_20:                              # %cond.true.112
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_33
	jmp	.LBB26_30
.LBB26_21:                              # %cond.false.113
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB26_26
# BB#22:                                # %cond.true.118
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -88(%rbp)         # 4-byte Spill
	jge	.LBB26_24
# BB#23:                                # %cond.true.128
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rcx
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
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB26_25
.LBB26_24:                              # %cond.false.148
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -92(%rbp)         # 4-byte Spill
.LBB26_25:                              # %cond.end.154
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	$3, %ecx
	cltd
	idivl	%ecx
	movl	-88(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB26_33
	jmp	.LBB26_30
.LBB26_26:                              # %cond.false.159
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB26_28
# BB#27:                                # %cond.true.167
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -96(%rbp)         # 4-byte Spill
	jmp	.LBB26_29
.LBB26_28:                              # %cond.false.177
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -96(%rbp)         # 4-byte Spill
.LBB26_29:                              # %cond.end.183
	movl	-96(%rbp), %eax         # 4-byte Reload
	movl	$3, %ecx
	cltd
	idivl	%ecx
	movq	-16(%rbp), %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB26_33
.LBB26_30:                              # %lor.lhs.false.190
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$3, %edx, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB26_32
# BB#31:                                # %land.lhs.true.198
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$3, %edx, %edx
	cmpl	$-128, %edx
	jl	.LBB26_33
.LBB26_32:                              # %lor.lhs.false.204
	movl	$127, %eax
	movq	-16(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$3, %esi, %esi
	cmpl	%esi, %eax
	jge	.LBB26_37
.LBB26_33:                              # %cond.true.210
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$3, %edx, %edx
	cmpl	$127, %edx
	jg	.LBB26_35
# BB#34:                                # %cond.true.216
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$3, %edx, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -100(%rbp)        # 4-byte Spill
	jmp	.LBB26_36
.LBB26_35:                              # %cond.false.222
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$3, %edx, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -100(%rbp)        # 4-byte Spill
.LBB26_36:                              # %cond.end.230
	movl	-100(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -40(%rbp)
	testb	$1, %cl
	jne	.LBB26_698
	jmp	.LBB26_399
.LBB26_37:                              # %cond.false.233
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$3, %edx, %edx
	cmpl	$127, %edx
	jg	.LBB26_39
# BB#38:                                # %cond.true.239
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$3, %edx, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -104(%rbp)        # 4-byte Spill
	jmp	.LBB26_40
.LBB26_39:                              # %cond.false.245
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$3, %edx, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -104(%rbp)        # 4-byte Spill
.LBB26_40:                              # %cond.end.253
	movl	-104(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -40(%rbp)
	testb	$1, %dl
	jne	.LBB26_698
	jmp	.LBB26_399
.LBB26_41:                              # %cond.false.256
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_43
# BB#42:                                # %cond.true.262
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB26_44
.LBB26_43:                              # %cond.false.279
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB26_44:                              # %cond.end.283
	movq	-112(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB26_46
# BB#45:                                # %land.lhs.true.287
	cmpq	$0, -16(%rbp)
	jl	.LBB26_72
.LBB26_46:                              # %lor.lhs.false.290
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_47
	jmp	.LBB26_58
.LBB26_47:                              # %cond.true.291
	cmpq	$0, -16(%rbp)
	jge	.LBB26_52
# BB#48:                                # %cond.true.294
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jge	.LBB26_50
# BB#49:                                # %cond.true.300
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB26_51
.LBB26_50:                              # %cond.false.308
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB26_51:                              # %cond.end.312
	movq	-128(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	cqto
	movq	-136(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB26_72
	jmp	.LBB26_69
.LBB26_52:                              # %cond.false.317
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_53
	jmp	.LBB26_54
.LBB26_53:                              # %cond.true.318
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_72
	jmp	.LBB26_69
.LBB26_54:                              # %cond.false.319
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_56
# BB#55:                                # %cond.true.325
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	jmp	.LBB26_57
.LBB26_56:                              # %cond.false.342
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB26_57:                              # %cond.end.346
	movq	-144(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	cqto
	movq	-152(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-16(%rbp), %rax
	jl	.LBB26_72
	jmp	.LBB26_69
.LBB26_58:                              # %cond.false.351
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_59
	jmp	.LBB26_60
.LBB26_59:                              # %cond.true.352
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_72
	jmp	.LBB26_69
.LBB26_60:                              # %cond.false.353
	cmpq	$0, -16(%rbp)
	jge	.LBB26_65
# BB#61:                                # %cond.true.356
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jge	.LBB26_63
# BB#62:                                # %cond.true.362
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB26_64
.LBB26_63:                              # %cond.false.379
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB26_64:                              # %cond.end.383
	movq	-168(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	cqto
	movq	-176(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-160(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB26_72
	jmp	.LBB26_69
.LBB26_65:                              # %cond.false.388
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_67
# BB#66:                                # %cond.true.394
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB26_68
.LBB26_67:                              # %cond.false.402
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB26_68:                              # %cond.end.406
	movq	-184(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	cqto
	movq	-192(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-16(%rbp), %rax
	jl	.LBB26_72
.LBB26_69:                              # %lor.lhs.false.411
	imulq	$3, -16(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_71
# BB#70:                                # %land.lhs.true.417
	imulq	$3, -16(%rbp), %rax
	cmpq	$-128, %rax
	jl	.LBB26_72
.LBB26_71:                              # %lor.lhs.false.421
	movl	$127, %eax
	movl	%eax, %ecx
	imulq	$3, -16(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB26_76
.LBB26_72:                              # %cond.true.425
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$3, %edx, %edx
	cmpl	$127, %edx
	jg	.LBB26_74
# BB#73:                                # %cond.true.431
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$3, %edx, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -196(%rbp)        # 4-byte Spill
	jmp	.LBB26_75
.LBB26_74:                              # %cond.false.437
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$3, %edx, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -196(%rbp)        # 4-byte Spill
.LBB26_75:                              # %cond.end.445
	movl	-196(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -40(%rbp)
	testb	$1, %cl
	jne	.LBB26_698
	jmp	.LBB26_399
.LBB26_76:                              # %cond.false.448
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$3, %edx, %edx
	cmpl	$127, %edx
	jg	.LBB26_78
# BB#77:                                # %cond.true.454
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$3, %edx, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -200(%rbp)        # 4-byte Spill
	jmp	.LBB26_79
.LBB26_78:                              # %cond.false.460
	movq	-16(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	imull	$3, %edx, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -200(%rbp)        # 4-byte Spill
.LBB26_79:                              # %cond.end.468
	movl	-200(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -40(%rbp)
	testb	$1, %dl
	jne	.LBB26_698
	jmp	.LBB26_399
.LBB26_80:                              # %cond.false.471
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_81
	jmp	.LBB26_160
.LBB26_81:                              # %cond.true.472
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_82
	jmp	.LBB26_121
.LBB26_82:                              # %cond.true.473
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB26_84
# BB#83:                                # %cond.true.481
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rcx
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
	movl	%eax, -204(%rbp)        # 4-byte Spill
	jmp	.LBB26_85
.LBB26_84:                              # %cond.false.501
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -204(%rbp)        # 4-byte Spill
.LBB26_85:                              # %cond.end.507
	movl	-204(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB26_87
# BB#86:                                # %land.lhs.true.511
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jl	.LBB26_113
.LBB26_87:                              # %lor.lhs.false.516
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_88
	jmp	.LBB26_99
.LBB26_88:                              # %cond.true.517
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB26_93
# BB#89:                                # %cond.true.522
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -208(%rbp)        # 4-byte Spill
	jge	.LBB26_91
# BB#90:                                # %cond.true.532
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -212(%rbp)        # 4-byte Spill
	jmp	.LBB26_92
.LBB26_91:                              # %cond.false.542
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -212(%rbp)        # 4-byte Spill
.LBB26_92:                              # %cond.end.548
	movl	-212(%rbp), %eax        # 4-byte Reload
	movl	$3, %ecx
	cltd
	idivl	%ecx
	movl	-208(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB26_113
	jmp	.LBB26_110
.LBB26_93:                              # %cond.false.553
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_94
	jmp	.LBB26_95
.LBB26_94:                              # %cond.true.554
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_113
	jmp	.LBB26_110
.LBB26_95:                              # %cond.false.555
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB26_97
# BB#96:                                # %cond.true.563
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rcx
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
	movl	%eax, -216(%rbp)        # 4-byte Spill
	jmp	.LBB26_98
.LBB26_97:                              # %cond.false.583
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -216(%rbp)        # 4-byte Spill
.LBB26_98:                              # %cond.end.589
	movl	-216(%rbp), %eax        # 4-byte Reload
	movl	$3, %ecx
	cltd
	idivl	%ecx
	movq	-16(%rbp), %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB26_113
	jmp	.LBB26_110
.LBB26_99:                              # %cond.false.596
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_100
	jmp	.LBB26_101
.LBB26_100:                             # %cond.true.597
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_113
	jmp	.LBB26_110
.LBB26_101:                             # %cond.false.598
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB26_106
# BB#102:                               # %cond.true.603
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -220(%rbp)        # 4-byte Spill
	jge	.LBB26_104
# BB#103:                               # %cond.true.613
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rcx
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
	movl	%eax, -224(%rbp)        # 4-byte Spill
	jmp	.LBB26_105
.LBB26_104:                             # %cond.false.633
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -224(%rbp)        # 4-byte Spill
.LBB26_105:                             # %cond.end.639
	movl	-224(%rbp), %eax        # 4-byte Reload
	movl	$3, %ecx
	cltd
	idivl	%ecx
	movl	-220(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB26_113
	jmp	.LBB26_110
.LBB26_106:                             # %cond.false.644
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB26_108
# BB#107:                               # %cond.true.652
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -228(%rbp)        # 4-byte Spill
	jmp	.LBB26_109
.LBB26_108:                             # %cond.false.662
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -228(%rbp)        # 4-byte Spill
.LBB26_109:                             # %cond.end.668
	movl	-228(%rbp), %eax        # 4-byte Reload
	movl	$3, %ecx
	cltd
	idivl	%ecx
	movq	-16(%rbp), %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB26_113
.LBB26_110:                             # %lor.lhs.false.675
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$3, %edx, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB26_112
# BB#111:                               # %land.lhs.true.683
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$3, %edx, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB26_113
.LBB26_112:                             # %lor.lhs.false.689
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-16(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$3, %esi, %esi
	cmpl	%esi, %eax
	jge	.LBB26_117
.LBB26_113:                             # %cond.true.695
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$3, %edx, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB26_115
# BB#114:                               # %cond.true.701
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$3, %edx, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -232(%rbp)        # 4-byte Spill
	jmp	.LBB26_116
.LBB26_115:                             # %cond.false.707
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$3, %edx, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -232(%rbp)        # 4-byte Spill
.LBB26_116:                             # %cond.end.715
	movl	-232(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -40(%rbp)
	testb	$1, %cl
	jne	.LBB26_698
	jmp	.LBB26_399
.LBB26_117:                             # %cond.false.718
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$3, %edx, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB26_119
# BB#118:                               # %cond.true.724
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$3, %edx, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -236(%rbp)        # 4-byte Spill
	jmp	.LBB26_120
.LBB26_119:                             # %cond.false.730
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$3, %edx, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -236(%rbp)        # 4-byte Spill
.LBB26_120:                             # %cond.end.738
	movl	-236(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -40(%rbp)
	testb	$1, %dl
	jne	.LBB26_698
	jmp	.LBB26_399
.LBB26_121:                             # %cond.false.741
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_123
# BB#122:                               # %cond.true.747
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	jmp	.LBB26_124
.LBB26_123:                             # %cond.false.764
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB26_124:                             # %cond.end.768
	movq	-248(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB26_126
# BB#125:                               # %land.lhs.true.772
	cmpq	$0, -16(%rbp)
	jl	.LBB26_152
.LBB26_126:                             # %lor.lhs.false.775
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_127
	jmp	.LBB26_138
.LBB26_127:                             # %cond.true.776
	cmpq	$0, -16(%rbp)
	jge	.LBB26_132
# BB#128:                               # %cond.true.779
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -256(%rbp)        # 8-byte Spill
	jge	.LBB26_130
# BB#129:                               # %cond.true.785
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	jmp	.LBB26_131
.LBB26_130:                             # %cond.false.793
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
.LBB26_131:                             # %cond.end.797
	movq	-264(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -272(%rbp)        # 8-byte Spill
	cqto
	movq	-272(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-256(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB26_152
	jmp	.LBB26_149
.LBB26_132:                             # %cond.false.802
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_133
	jmp	.LBB26_134
.LBB26_133:                             # %cond.true.803
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_152
	jmp	.LBB26_149
.LBB26_134:                             # %cond.false.804
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_136
# BB#135:                               # %cond.true.810
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	jmp	.LBB26_137
.LBB26_136:                             # %cond.false.827
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
.LBB26_137:                             # %cond.end.831
	movq	-280(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -288(%rbp)        # 8-byte Spill
	cqto
	movq	-288(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-16(%rbp), %rax
	jl	.LBB26_152
	jmp	.LBB26_149
.LBB26_138:                             # %cond.false.836
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_139
	jmp	.LBB26_140
.LBB26_139:                             # %cond.true.837
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_152
	jmp	.LBB26_149
.LBB26_140:                             # %cond.false.838
	cmpq	$0, -16(%rbp)
	jge	.LBB26_145
# BB#141:                               # %cond.true.841
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jge	.LBB26_143
# BB#142:                               # %cond.true.847
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	jmp	.LBB26_144
.LBB26_143:                             # %cond.false.864
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB26_144:                             # %cond.end.868
	movq	-304(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -312(%rbp)        # 8-byte Spill
	cqto
	movq	-312(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-296(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB26_152
	jmp	.LBB26_149
.LBB26_145:                             # %cond.false.873
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_147
# BB#146:                               # %cond.true.879
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jmp	.LBB26_148
.LBB26_147:                             # %cond.false.887
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
.LBB26_148:                             # %cond.end.891
	movq	-320(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -328(%rbp)        # 8-byte Spill
	cqto
	movq	-328(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-16(%rbp), %rax
	jl	.LBB26_152
.LBB26_149:                             # %lor.lhs.false.896
	imulq	$3, -16(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_151
# BB#150:                               # %land.lhs.true.902
	imulq	$3, -16(%rbp), %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB26_152
.LBB26_151:                             # %lor.lhs.false.906
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	imulq	$3, -16(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB26_156
.LBB26_152:                             # %cond.true.910
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$3, %edx, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB26_154
# BB#153:                               # %cond.true.916
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$3, %edx, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -332(%rbp)        # 4-byte Spill
	jmp	.LBB26_155
.LBB26_154:                             # %cond.false.922
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$3, %edx, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -332(%rbp)        # 4-byte Spill
.LBB26_155:                             # %cond.end.930
	movl	-332(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -40(%rbp)
	testb	$1, %cl
	jne	.LBB26_698
	jmp	.LBB26_399
.LBB26_156:                             # %cond.false.933
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$3, %edx, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB26_158
# BB#157:                               # %cond.true.939
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$3, %edx, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -336(%rbp)        # 4-byte Spill
	jmp	.LBB26_159
.LBB26_158:                             # %cond.false.945
	movq	-16(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	imull	$3, %edx, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -336(%rbp)        # 4-byte Spill
.LBB26_159:                             # %cond.end.953
	movl	-336(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -40(%rbp)
	testb	$1, %dl
	jne	.LBB26_698
	jmp	.LBB26_399
.LBB26_160:                             # %cond.false.956
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_161
	jmp	.LBB26_240
.LBB26_161:                             # %cond.true.957
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_162
	jmp	.LBB26_201
.LBB26_162:                             # %cond.true.958
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB26_164
# BB#163:                               # %cond.true.965
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -340(%rbp)        # 4-byte Spill
	jmp	.LBB26_165
.LBB26_164:                             # %cond.false.983
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -340(%rbp)        # 4-byte Spill
.LBB26_165:                             # %cond.end.988
	movl	-340(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB26_167
# BB#166:                               # %land.lhs.true.992
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jl	.LBB26_193
.LBB26_167:                             # %lor.lhs.false.996
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_168
	jmp	.LBB26_179
.LBB26_168:                             # %cond.true.997
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB26_173
# BB#169:                               # %cond.true.1001
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -344(%rbp)        # 4-byte Spill
	jge	.LBB26_171
# BB#170:                               # %cond.true.1009
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -348(%rbp)        # 4-byte Spill
	jmp	.LBB26_172
.LBB26_171:                             # %cond.false.1018
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -348(%rbp)        # 4-byte Spill
.LBB26_172:                             # %cond.end.1023
	movl	-348(%rbp), %eax        # 4-byte Reload
	movl	$3, %ecx
	cltd
	idivl	%ecx
	movl	-344(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB26_193
	jmp	.LBB26_190
.LBB26_173:                             # %cond.false.1028
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_174
	jmp	.LBB26_175
.LBB26_174:                             # %cond.true.1029
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_193
	jmp	.LBB26_190
.LBB26_175:                             # %cond.false.1030
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB26_177
# BB#176:                               # %cond.true.1037
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -352(%rbp)        # 4-byte Spill
	jmp	.LBB26_178
.LBB26_177:                             # %cond.false.1055
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -352(%rbp)        # 4-byte Spill
.LBB26_178:                             # %cond.end.1060
	movl	-352(%rbp), %eax        # 4-byte Reload
	movl	$3, %ecx
	cltd
	idivl	%ecx
	movq	-16(%rbp), %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB26_193
	jmp	.LBB26_190
.LBB26_179:                             # %cond.false.1066
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_180
	jmp	.LBB26_181
.LBB26_180:                             # %cond.true.1067
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_193
	jmp	.LBB26_190
.LBB26_181:                             # %cond.false.1068
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB26_186
# BB#182:                               # %cond.true.1072
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -356(%rbp)        # 4-byte Spill
	jge	.LBB26_184
# BB#183:                               # %cond.true.1080
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -360(%rbp)        # 4-byte Spill
	jmp	.LBB26_185
.LBB26_184:                             # %cond.false.1098
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -360(%rbp)        # 4-byte Spill
.LBB26_185:                             # %cond.end.1103
	movl	-360(%rbp), %eax        # 4-byte Reload
	movl	$3, %ecx
	cltd
	idivl	%ecx
	movl	-356(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB26_193
	jmp	.LBB26_190
.LBB26_186:                             # %cond.false.1108
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB26_188
# BB#187:                               # %cond.true.1115
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -364(%rbp)        # 4-byte Spill
	jmp	.LBB26_189
.LBB26_188:                             # %cond.false.1124
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -364(%rbp)        # 4-byte Spill
.LBB26_189:                             # %cond.end.1129
	movl	-364(%rbp), %eax        # 4-byte Reload
	movl	$3, %ecx
	cltd
	idivl	%ecx
	movq	-16(%rbp), %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB26_193
.LBB26_190:                             # %lor.lhs.false.1135
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	imull	$3, %ecx, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB26_192
# BB#191:                               # %land.lhs.true.1142
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	imull	$3, %ecx, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB26_193
.LBB26_192:                             # %lor.lhs.false.1147
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-16(%rbp), %rcx
	movl	%ecx, %edx
	imull	$3, %edx, %edx
	cmpl	%edx, %eax
	jge	.LBB26_197
.LBB26_193:                             # %cond.true.1152
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	imull	$3, %ecx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB26_195
# BB#194:                               # %cond.true.1157
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	imull	$3, %ecx, %ecx
	movl	%ecx, -368(%rbp)        # 4-byte Spill
	jmp	.LBB26_196
.LBB26_195:                             # %cond.false.1160
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	imull	$3, %ecx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -368(%rbp)        # 4-byte Spill
.LBB26_196:                             # %cond.end.1165
	movl	-368(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -40(%rbp)
	testb	$1, %cl
	jne	.LBB26_698
	jmp	.LBB26_399
.LBB26_197:                             # %cond.false.1168
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	imull	$3, %ecx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB26_199
# BB#198:                               # %cond.true.1173
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	imull	$3, %ecx, %ecx
	movl	%ecx, -372(%rbp)        # 4-byte Spill
	jmp	.LBB26_200
.LBB26_199:                             # %cond.false.1176
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	imull	$3, %ecx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -372(%rbp)        # 4-byte Spill
.LBB26_200:                             # %cond.end.1181
	movl	-372(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -40(%rbp)
	testb	$1, %dl
	jne	.LBB26_698
	jmp	.LBB26_399
.LBB26_201:                             # %cond.false.1184
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_203
# BB#202:                               # %cond.true.1190
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	jmp	.LBB26_204
.LBB26_203:                             # %cond.false.1207
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
.LBB26_204:                             # %cond.end.1211
	movq	-384(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB26_206
# BB#205:                               # %land.lhs.true.1215
	cmpq	$0, -16(%rbp)
	jl	.LBB26_232
.LBB26_206:                             # %lor.lhs.false.1218
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_207
	jmp	.LBB26_218
.LBB26_207:                             # %cond.true.1219
	cmpq	$0, -16(%rbp)
	jge	.LBB26_212
# BB#208:                               # %cond.true.1222
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -392(%rbp)        # 8-byte Spill
	jge	.LBB26_210
# BB#209:                               # %cond.true.1228
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	jmp	.LBB26_211
.LBB26_210:                             # %cond.false.1236
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
.LBB26_211:                             # %cond.end.1240
	movq	-400(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -408(%rbp)        # 8-byte Spill
	cqto
	movq	-408(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-392(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB26_232
	jmp	.LBB26_229
.LBB26_212:                             # %cond.false.1245
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_213
	jmp	.LBB26_214
.LBB26_213:                             # %cond.true.1246
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_232
	jmp	.LBB26_229
.LBB26_214:                             # %cond.false.1247
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_216
# BB#215:                               # %cond.true.1253
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	jmp	.LBB26_217
.LBB26_216:                             # %cond.false.1270
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
.LBB26_217:                             # %cond.end.1274
	movq	-416(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -424(%rbp)        # 8-byte Spill
	cqto
	movq	-424(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-16(%rbp), %rax
	jl	.LBB26_232
	jmp	.LBB26_229
.LBB26_218:                             # %cond.false.1279
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_219
	jmp	.LBB26_220
.LBB26_219:                             # %cond.true.1280
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_232
	jmp	.LBB26_229
.LBB26_220:                             # %cond.false.1281
	cmpq	$0, -16(%rbp)
	jge	.LBB26_225
# BB#221:                               # %cond.true.1284
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -432(%rbp)        # 8-byte Spill
	jge	.LBB26_223
# BB#222:                               # %cond.true.1290
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -440(%rbp)        # 8-byte Spill
	jmp	.LBB26_224
.LBB26_223:                             # %cond.false.1307
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
.LBB26_224:                             # %cond.end.1311
	movq	-440(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -448(%rbp)        # 8-byte Spill
	cqto
	movq	-448(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-432(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB26_232
	jmp	.LBB26_229
.LBB26_225:                             # %cond.false.1316
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_227
# BB#226:                               # %cond.true.1322
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	jmp	.LBB26_228
.LBB26_227:                             # %cond.false.1330
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
.LBB26_228:                             # %cond.end.1334
	movq	-456(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -464(%rbp)        # 8-byte Spill
	cqto
	movq	-464(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-16(%rbp), %rax
	jl	.LBB26_232
.LBB26_229:                             # %lor.lhs.false.1339
	imulq	$3, -16(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_231
# BB#230:                               # %land.lhs.true.1345
	imulq	$3, -16(%rbp), %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB26_232
.LBB26_231:                             # %lor.lhs.false.1349
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	imulq	$3, -16(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB26_236
.LBB26_232:                             # %cond.true.1353
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	imull	$3, %ecx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB26_234
# BB#233:                               # %cond.true.1358
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	imull	$3, %ecx, %ecx
	movl	%ecx, -468(%rbp)        # 4-byte Spill
	jmp	.LBB26_235
.LBB26_234:                             # %cond.false.1361
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	imull	$3, %ecx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -468(%rbp)        # 4-byte Spill
.LBB26_235:                             # %cond.end.1366
	movl	-468(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -40(%rbp)
	testb	$1, %cl
	jne	.LBB26_698
	jmp	.LBB26_399
.LBB26_236:                             # %cond.false.1369
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	imull	$3, %ecx, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB26_238
# BB#237:                               # %cond.true.1374
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	imull	$3, %ecx, %ecx
	movl	%ecx, -472(%rbp)        # 4-byte Spill
	jmp	.LBB26_239
.LBB26_238:                             # %cond.false.1377
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	imull	$3, %ecx, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -472(%rbp)        # 4-byte Spill
.LBB26_239:                             # %cond.end.1382
	movl	-472(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -40(%rbp)
	testb	$1, %dl
	jne	.LBB26_698
	jmp	.LBB26_399
.LBB26_240:                             # %cond.false.1385
	movb	$1, %al
	testb	$1, %al
	jne	.LBB26_241
	jmp	.LBB26_320
.LBB26_241:                             # %cond.true.1386
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_242
	jmp	.LBB26_281
.LBB26_242:                             # %cond.true.1387
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_244
# BB#243:                               # %cond.true.1393
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -480(%rbp)        # 8-byte Spill
	jmp	.LBB26_245
.LBB26_244:                             # %cond.false.1410
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
.LBB26_245:                             # %cond.end.1414
	movq	-480(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB26_247
# BB#246:                               # %land.lhs.true.1418
	cmpq	$0, -16(%rbp)
	jl	.LBB26_273
.LBB26_247:                             # %lor.lhs.false.1421
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_248
	jmp	.LBB26_259
.LBB26_248:                             # %cond.true.1422
	cmpq	$0, -16(%rbp)
	jge	.LBB26_253
# BB#249:                               # %cond.true.1425
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -488(%rbp)        # 8-byte Spill
	jge	.LBB26_251
# BB#250:                               # %cond.true.1431
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	jmp	.LBB26_252
.LBB26_251:                             # %cond.false.1439
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
.LBB26_252:                             # %cond.end.1443
	movq	-496(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -504(%rbp)        # 8-byte Spill
	cqto
	movq	-504(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-488(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB26_273
	jmp	.LBB26_270
.LBB26_253:                             # %cond.false.1448
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_254
	jmp	.LBB26_255
.LBB26_254:                             # %cond.true.1449
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_273
	jmp	.LBB26_270
.LBB26_255:                             # %cond.false.1450
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_257
# BB#256:                               # %cond.true.1456
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -512(%rbp)        # 8-byte Spill
	jmp	.LBB26_258
.LBB26_257:                             # %cond.false.1473
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
.LBB26_258:                             # %cond.end.1477
	movq	-512(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -520(%rbp)        # 8-byte Spill
	cqto
	movq	-520(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-16(%rbp), %rax
	jl	.LBB26_273
	jmp	.LBB26_270
.LBB26_259:                             # %cond.false.1482
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_260
	jmp	.LBB26_261
.LBB26_260:                             # %cond.true.1483
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_273
	jmp	.LBB26_270
.LBB26_261:                             # %cond.false.1484
	cmpq	$0, -16(%rbp)
	jge	.LBB26_266
# BB#262:                               # %cond.true.1487
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -528(%rbp)        # 8-byte Spill
	jge	.LBB26_264
# BB#263:                               # %cond.true.1493
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -536(%rbp)        # 8-byte Spill
	jmp	.LBB26_265
.LBB26_264:                             # %cond.false.1510
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
.LBB26_265:                             # %cond.end.1514
	movq	-536(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -544(%rbp)        # 8-byte Spill
	cqto
	movq	-544(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-528(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB26_273
	jmp	.LBB26_270
.LBB26_266:                             # %cond.false.1519
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_268
# BB#267:                               # %cond.true.1525
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	jmp	.LBB26_269
.LBB26_268:                             # %cond.false.1533
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
.LBB26_269:                             # %cond.end.1537
	movq	-552(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -560(%rbp)        # 8-byte Spill
	cqto
	movq	-560(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-16(%rbp), %rax
	jl	.LBB26_273
.LBB26_270:                             # %lor.lhs.false.1542
	imulq	$3, -16(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_272
# BB#271:                               # %land.lhs.true.1548
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	imulq	$3, -16(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB26_273
.LBB26_272:                             # %lor.lhs.false.1552
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$3, -16(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB26_277
.LBB26_273:                             # %cond.true.1556
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$3, -16(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB26_275
# BB#274:                               # %cond.true.1560
	imulq	$3, -16(%rbp), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	jmp	.LBB26_276
.LBB26_275:                             # %cond.false.1562
	imulq	$3, -16(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
.LBB26_276:                             # %cond.end.1566
	movq	-568(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -40(%rbp)
	testb	$1, %cl
	jne	.LBB26_698
	jmp	.LBB26_399
.LBB26_277:                             # %cond.false.1568
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$3, -16(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB26_279
# BB#278:                               # %cond.true.1572
	imulq	$3, -16(%rbp), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	jmp	.LBB26_280
.LBB26_279:                             # %cond.false.1574
	imulq	$3, -16(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
.LBB26_280:                             # %cond.end.1578
	movq	-576(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -40(%rbp)
	testb	$1, %dl
	jne	.LBB26_698
	jmp	.LBB26_399
.LBB26_281:                             # %cond.false.1580
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_283
# BB#282:                               # %cond.true.1586
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -584(%rbp)        # 8-byte Spill
	jmp	.LBB26_284
.LBB26_283:                             # %cond.false.1603
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
.LBB26_284:                             # %cond.end.1607
	movq	-584(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB26_286
# BB#285:                               # %land.lhs.true.1611
	cmpq	$0, -16(%rbp)
	jl	.LBB26_312
.LBB26_286:                             # %lor.lhs.false.1614
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_287
	jmp	.LBB26_298
.LBB26_287:                             # %cond.true.1615
	cmpq	$0, -16(%rbp)
	jge	.LBB26_292
# BB#288:                               # %cond.true.1618
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -592(%rbp)        # 8-byte Spill
	jge	.LBB26_290
# BB#289:                               # %cond.true.1624
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	jmp	.LBB26_291
.LBB26_290:                             # %cond.false.1632
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
.LBB26_291:                             # %cond.end.1636
	movq	-600(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -608(%rbp)        # 8-byte Spill
	cqto
	movq	-608(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-592(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB26_312
	jmp	.LBB26_309
.LBB26_292:                             # %cond.false.1641
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_293
	jmp	.LBB26_294
.LBB26_293:                             # %cond.true.1642
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_312
	jmp	.LBB26_309
.LBB26_294:                             # %cond.false.1643
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_296
# BB#295:                               # %cond.true.1649
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -616(%rbp)        # 8-byte Spill
	jmp	.LBB26_297
.LBB26_296:                             # %cond.false.1666
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
.LBB26_297:                             # %cond.end.1670
	movq	-616(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -624(%rbp)        # 8-byte Spill
	cqto
	movq	-624(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-16(%rbp), %rax
	jl	.LBB26_312
	jmp	.LBB26_309
.LBB26_298:                             # %cond.false.1675
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_299
	jmp	.LBB26_300
.LBB26_299:                             # %cond.true.1676
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_312
	jmp	.LBB26_309
.LBB26_300:                             # %cond.false.1677
	cmpq	$0, -16(%rbp)
	jge	.LBB26_305
# BB#301:                               # %cond.true.1680
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -632(%rbp)        # 8-byte Spill
	jge	.LBB26_303
# BB#302:                               # %cond.true.1686
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -640(%rbp)        # 8-byte Spill
	jmp	.LBB26_304
.LBB26_303:                             # %cond.false.1703
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
.LBB26_304:                             # %cond.end.1707
	movq	-640(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -648(%rbp)        # 8-byte Spill
	cqto
	movq	-648(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-632(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB26_312
	jmp	.LBB26_309
.LBB26_305:                             # %cond.false.1712
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_307
# BB#306:                               # %cond.true.1718
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
	jmp	.LBB26_308
.LBB26_307:                             # %cond.false.1726
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
.LBB26_308:                             # %cond.end.1730
	movq	-656(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -664(%rbp)        # 8-byte Spill
	cqto
	movq	-664(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-16(%rbp), %rax
	jl	.LBB26_312
.LBB26_309:                             # %lor.lhs.false.1735
	imulq	$3, -16(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_311
# BB#310:                               # %land.lhs.true.1741
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	imulq	$3, -16(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB26_312
.LBB26_311:                             # %lor.lhs.false.1745
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$3, -16(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB26_316
.LBB26_312:                             # %cond.true.1749
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$3, -16(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB26_314
# BB#313:                               # %cond.true.1753
	imulq	$3, -16(%rbp), %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
	jmp	.LBB26_315
.LBB26_314:                             # %cond.false.1755
	imulq	$3, -16(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
.LBB26_315:                             # %cond.end.1759
	movq	-672(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -40(%rbp)
	testb	$1, %cl
	jne	.LBB26_698
	jmp	.LBB26_399
.LBB26_316:                             # %cond.false.1761
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$3, -16(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB26_318
# BB#317:                               # %cond.true.1765
	imulq	$3, -16(%rbp), %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	jmp	.LBB26_319
.LBB26_318:                             # %cond.false.1767
	imulq	$3, -16(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
.LBB26_319:                             # %cond.end.1771
	movq	-680(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -40(%rbp)
	testb	$1, %dl
	jne	.LBB26_698
	jmp	.LBB26_399
.LBB26_320:                             # %cond.false.1773
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_321
	jmp	.LBB26_360
.LBB26_321:                             # %cond.true.1774
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_323
# BB#322:                               # %cond.true.1780
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -688(%rbp)        # 8-byte Spill
	jmp	.LBB26_324
.LBB26_323:                             # %cond.false.1797
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
.LBB26_324:                             # %cond.end.1801
	movq	-688(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB26_326
# BB#325:                               # %land.lhs.true.1805
	cmpq	$0, -16(%rbp)
	jl	.LBB26_352
.LBB26_326:                             # %lor.lhs.false.1808
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_327
	jmp	.LBB26_338
.LBB26_327:                             # %cond.true.1809
	cmpq	$0, -16(%rbp)
	jge	.LBB26_332
# BB#328:                               # %cond.true.1812
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -696(%rbp)        # 8-byte Spill
	jge	.LBB26_330
# BB#329:                               # %cond.true.1818
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
	jmp	.LBB26_331
.LBB26_330:                             # %cond.false.1826
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
.LBB26_331:                             # %cond.end.1830
	movq	-704(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -712(%rbp)        # 8-byte Spill
	cqto
	movq	-712(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-696(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB26_352
	jmp	.LBB26_349
.LBB26_332:                             # %cond.false.1835
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_333
	jmp	.LBB26_334
.LBB26_333:                             # %cond.true.1836
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_352
	jmp	.LBB26_349
.LBB26_334:                             # %cond.false.1837
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_336
# BB#335:                               # %cond.true.1843
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -720(%rbp)        # 8-byte Spill
	jmp	.LBB26_337
.LBB26_336:                             # %cond.false.1860
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
.LBB26_337:                             # %cond.end.1864
	movq	-720(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -728(%rbp)        # 8-byte Spill
	cqto
	movq	-728(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-16(%rbp), %rax
	jl	.LBB26_352
	jmp	.LBB26_349
.LBB26_338:                             # %cond.false.1869
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_339
	jmp	.LBB26_340
.LBB26_339:                             # %cond.true.1870
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_352
	jmp	.LBB26_349
.LBB26_340:                             # %cond.false.1871
	cmpq	$0, -16(%rbp)
	jge	.LBB26_345
# BB#341:                               # %cond.true.1874
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -736(%rbp)        # 8-byte Spill
	jge	.LBB26_343
# BB#342:                               # %cond.true.1880
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -744(%rbp)        # 8-byte Spill
	jmp	.LBB26_344
.LBB26_343:                             # %cond.false.1897
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -744(%rbp)        # 8-byte Spill
.LBB26_344:                             # %cond.end.1901
	movq	-744(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -752(%rbp)        # 8-byte Spill
	cqto
	movq	-752(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-736(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB26_352
	jmp	.LBB26_349
.LBB26_345:                             # %cond.false.1906
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_347
# BB#346:                               # %cond.true.1912
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
	jmp	.LBB26_348
.LBB26_347:                             # %cond.false.1920
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
.LBB26_348:                             # %cond.end.1924
	movq	-760(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -768(%rbp)        # 8-byte Spill
	cqto
	movq	-768(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-16(%rbp), %rax
	jl	.LBB26_352
.LBB26_349:                             # %lor.lhs.false.1929
	imulq	$3, -16(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_351
# BB#350:                               # %land.lhs.true.1935
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	imulq	$3, -16(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB26_352
.LBB26_351:                             # %lor.lhs.false.1939
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$3, -16(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB26_356
.LBB26_352:                             # %cond.true.1943
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$3, -16(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB26_354
# BB#353:                               # %cond.true.1947
	imulq	$3, -16(%rbp), %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
	jmp	.LBB26_355
.LBB26_354:                             # %cond.false.1949
	imulq	$3, -16(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
.LBB26_355:                             # %cond.end.1953
	movq	-776(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -40(%rbp)
	testb	$1, %cl
	jne	.LBB26_698
	jmp	.LBB26_399
.LBB26_356:                             # %cond.false.1955
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$3, -16(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB26_358
# BB#357:                               # %cond.true.1959
	imulq	$3, -16(%rbp), %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
	jmp	.LBB26_359
.LBB26_358:                             # %cond.false.1961
	imulq	$3, -16(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
.LBB26_359:                             # %cond.end.1965
	movq	-784(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -40(%rbp)
	testb	$1, %dl
	jne	.LBB26_698
	jmp	.LBB26_399
.LBB26_360:                             # %cond.false.1967
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_362
# BB#361:                               # %cond.true.1973
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -792(%rbp)        # 8-byte Spill
	jmp	.LBB26_363
.LBB26_362:                             # %cond.false.1990
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -792(%rbp)        # 8-byte Spill
.LBB26_363:                             # %cond.end.1994
	movq	-792(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB26_365
# BB#364:                               # %land.lhs.true.1998
	cmpq	$0, -16(%rbp)
	jl	.LBB26_391
.LBB26_365:                             # %lor.lhs.false.2001
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_366
	jmp	.LBB26_377
.LBB26_366:                             # %cond.true.2002
	cmpq	$0, -16(%rbp)
	jge	.LBB26_371
# BB#367:                               # %cond.true.2005
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -800(%rbp)        # 8-byte Spill
	jge	.LBB26_369
# BB#368:                               # %cond.true.2011
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
	jmp	.LBB26_370
.LBB26_369:                             # %cond.false.2019
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
.LBB26_370:                             # %cond.end.2023
	movq	-808(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -816(%rbp)        # 8-byte Spill
	cqto
	movq	-816(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-800(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB26_391
	jmp	.LBB26_388
.LBB26_371:                             # %cond.false.2028
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_372
	jmp	.LBB26_373
.LBB26_372:                             # %cond.true.2029
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_391
	jmp	.LBB26_388
.LBB26_373:                             # %cond.false.2030
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_375
# BB#374:                               # %cond.true.2036
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -824(%rbp)        # 8-byte Spill
	jmp	.LBB26_376
.LBB26_375:                             # %cond.false.2053
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -824(%rbp)        # 8-byte Spill
.LBB26_376:                             # %cond.end.2057
	movq	-824(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -832(%rbp)        # 8-byte Spill
	cqto
	movq	-832(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-16(%rbp), %rax
	jl	.LBB26_391
	jmp	.LBB26_388
.LBB26_377:                             # %cond.false.2062
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_378
	jmp	.LBB26_379
.LBB26_378:                             # %cond.true.2063
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_391
	jmp	.LBB26_388
.LBB26_379:                             # %cond.false.2064
	cmpq	$0, -16(%rbp)
	jge	.LBB26_384
# BB#380:                               # %cond.true.2067
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -840(%rbp)        # 8-byte Spill
	jge	.LBB26_382
# BB#381:                               # %cond.true.2073
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
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
	movq	-16(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -848(%rbp)        # 8-byte Spill
	jmp	.LBB26_383
.LBB26_382:                             # %cond.false.2090
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -848(%rbp)        # 8-byte Spill
.LBB26_383:                             # %cond.end.2094
	movq	-848(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -856(%rbp)        # 8-byte Spill
	cqto
	movq	-856(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-840(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB26_391
	jmp	.LBB26_388
.LBB26_384:                             # %cond.false.2099
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_386
# BB#385:                               # %cond.true.2105
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
	jmp	.LBB26_387
.LBB26_386:                             # %cond.false.2113
	movq	-16(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
.LBB26_387:                             # %cond.end.2117
	movq	-864(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %edx
	movq	%rdx, -872(%rbp)        # 8-byte Spill
	cqto
	movq	-872(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-16(%rbp), %rax
	jl	.LBB26_391
.LBB26_388:                             # %lor.lhs.false.2122
	imulq	$3, -16(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_390
# BB#389:                               # %land.lhs.true.2128
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	imulq	$3, -16(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB26_391
.LBB26_390:                             # %lor.lhs.false.2132
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$3, -16(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB26_395
.LBB26_391:                             # %cond.true.2136
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$3, -16(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB26_393
# BB#392:                               # %cond.true.2140
	imulq	$3, -16(%rbp), %rax
	movq	%rax, -880(%rbp)        # 8-byte Spill
	jmp	.LBB26_394
.LBB26_393:                             # %cond.false.2142
	imulq	$3, -16(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -880(%rbp)        # 8-byte Spill
.LBB26_394:                             # %cond.end.2146
	movq	-880(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -40(%rbp)
	testb	$1, %cl
	jne	.LBB26_698
	jmp	.LBB26_399
.LBB26_395:                             # %cond.false.2148
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	imulq	$3, -16(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB26_397
# BB#396:                               # %cond.true.2152
	imulq	$3, -16(%rbp), %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
	jmp	.LBB26_398
.LBB26_397:                             # %cond.false.2154
	imulq	$3, -16(%rbp), %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
.LBB26_398:                             # %cond.end.2158
	movq	-888(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -40(%rbp)
	testb	$1, %dl
	jne	.LBB26_698
.LBB26_399:                             # %lor.lhs.false.2160
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_400
	jmp	.LBB26_459
.LBB26_400:                             # %cond.true.2161
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_401
	jmp	.LBB26_430
.LBB26_401:                             # %cond.true.2162
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB26_403
# BB#402:                               # %cond.true.2177
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %edi
	movslq	%edi, %r8
	subq	%r8, %rcx
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
	movq	-40(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %edi
	movslq	%edi, %r8
	subq	%r8, %rcx
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
	movl	%eax, -892(%rbp)        # 4-byte Spill
	jmp	.LBB26_404
.LBB26_403:                             # %cond.false.2211
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -892(%rbp)        # 4-byte Spill
.LBB26_404:                             # %cond.end.2224
	movl	-892(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB26_414
# BB#405:                               # %cond.true.2228
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB26_410
# BB#406:                               # %cond.true.2233
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edi
	imull	$0, %edi, %edi
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %r8d
	movslq	%r8d, %rsi
	subq	%rsi, %rax
	movb	%al, %cl
	movsbl	%cl, %r8d
	addl	%r8d, %edi
	imull	$0, %edi, %edi
	subl	$1, %edi
	cmpl	$0, %edi
	movl	%edx, -896(%rbp)        # 4-byte Spill
	jge	.LBB26_408
# BB#407:                               # %cond.true.2254
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %edi
	movslq	%edi, %r8
	subq	%r8, %rcx
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
	movq	-40(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	imull	$0, %esi, %esi
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %edi
	movslq	%edi, %r8
	subq	%r8, %rcx
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
	movl	%eax, -900(%rbp)        # 4-byte Spill
	jmp	.LBB26_409
.LBB26_408:                             # %cond.false.2288
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -900(%rbp)        # 4-byte Spill
.LBB26_409:                             # %cond.end.2301
	movl	-900(%rbp), %eax        # 4-byte Reload
	movq	-40(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	subl	%esi, %eax
	movl	-896(%rbp), %esi        # 4-byte Reload
	cmpl	%eax, %esi
	jl	.LBB26_422
	jmp	.LBB26_419
.LBB26_410:                             # %cond.false.2308
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB26_412
# BB#411:                               # %cond.true.2323
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -904(%rbp)        # 4-byte Spill
	jmp	.LBB26_413
.LBB26_412:                             # %cond.false.2340
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	%esi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -904(%rbp)        # 4-byte Spill
.LBB26_413:                             # %cond.end.2353
	movl	-904(%rbp), %eax        # 4-byte Reload
	movq	-40(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	subl	%esi, %eax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	cmpl	%esi, %eax
	jl	.LBB26_422
	jmp	.LBB26_419
.LBB26_414:                             # %cond.false.2366
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB26_416
# BB#415:                               # %cond.true.2375
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %r8d
	addl	%r8d, %esi
	cmpl	%esi, %edx
	jle	.LBB26_422
	jmp	.LBB26_419
.LBB26_416:                             # %cond.false.2389
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB26_418
# BB#417:                               # %cond.true.2394
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edi
	movslq	%edi, %rsi
	subq	%rsi, %rax
	movb	%al, %cl
	movsbl	%cl, %edi
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %r8d
	addl	%r8d, %edi
	cmpl	%edi, %edx
	jle	.LBB26_422
	jmp	.LBB26_419
.LBB26_418:                             # %cond.false.2412
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edi
	addl	%edi, %edx
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edi
	cmpl	%edi, %edx
	jl	.LBB26_422
.LBB26_419:                             # %lor.lhs.false.2426
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edi
	addl	%edi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB26_421
# BB#420:                               # %land.lhs.true.2440
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edi
	addl	%edi, %edx
	cmpl	$-128, %edx
	jl	.LBB26_422
.LBB26_421:                             # %lor.lhs.false.2452
	movl	$127, %eax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	movq	-40(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %r8d
	addl	%r8d, %esi
	cmpl	%esi, %eax
	jge	.LBB26_426
.LBB26_422:                             # %cond.true.2464
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edi
	addl	%edi, %edx
	cmpl	$127, %edx
	jg	.LBB26_424
# BB#423:                               # %cond.true.2476
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edi
	addl	%edi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -908(%rbp)        # 4-byte Spill
	jmp	.LBB26_425
.LBB26_424:                             # %cond.false.2488
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edi
	addl	%edi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -908(%rbp)        # 4-byte Spill
.LBB26_425:                             # %cond.end.2502
	movl	-908(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -40(%rbp)
	testb	$1, %cl
	jne	.LBB26_698
	jmp	.LBB26_699
.LBB26_426:                             # %cond.false.2505
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edi
	addl	%edi, %edx
	cmpl	$127, %edx
	jg	.LBB26_428
# BB#427:                               # %cond.true.2517
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edi
	addl	%edi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -912(%rbp)        # 4-byte Spill
	jmp	.LBB26_429
.LBB26_428:                             # %cond.false.2529
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edi
	addl	%edi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -912(%rbp)        # 4-byte Spill
.LBB26_429:                             # %cond.end.2543
	movl	-912(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -40(%rbp)
	testb	$1, %dl
	jne	.LBB26_698
	jmp	.LBB26_699
.LBB26_430:                             # %cond.false.2546
	imulq	$0, -40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_432
# BB#431:                               # %cond.true.2557
	xorl	%eax, %eax
	imulq	$0, -40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	cmpq	$0, -16(%rbp)
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	movslq	%edi, %r8
	subq	%r8, %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -40(%rbp), %rdx
	movq	-32(%rbp), %r8
	cmpq	$0, -16(%rbp)
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movslq	%eax, %r9
	subq	%r9, %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -920(%rbp)        # 8-byte Spill
	jmp	.LBB26_433
.LBB26_432:                             # %cond.false.2584
	imulq	$0, -40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -920(%rbp)        # 8-byte Spill
.LBB26_433:                             # %cond.end.2593
	movq	-920(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB26_443
# BB#434:                               # %cond.true.2597
	cmpq	$0, -40(%rbp)
	jge	.LBB26_439
# BB#435:                               # %cond.true.2600
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	imulq	$0, -40(%rbp), %rsi
	movq	-32(%rbp), %rdi
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %r8
	subq	%r8, %rdi
	addq	%rdi, %rsi
	imulq	$0, %rsi, %rsi
	subq	$1, %rsi
	cmpq	$0, %rsi
	movq	%rax, -928(%rbp)        # 8-byte Spill
	jge	.LBB26_437
# BB#436:                               # %cond.true.2615
	xorl	%eax, %eax
	imulq	$0, -40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	cmpq	$0, -16(%rbp)
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	movslq	%edi, %r8
	subq	%r8, %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -40(%rbp), %rdx
	movq	-32(%rbp), %r8
	cmpq	$0, -16(%rbp)
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movslq	%eax, %r9
	subq	%r9, %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -936(%rbp)        # 8-byte Spill
	jmp	.LBB26_438
.LBB26_437:                             # %cond.false.2642
	imulq	$0, -40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -936(%rbp)        # 8-byte Spill
.LBB26_438:                             # %cond.end.2651
	movq	-936(%rbp), %rax        # 8-byte Reload
	subq	-40(%rbp), %rax
	movq	-928(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB26_451
	jmp	.LBB26_448
.LBB26_439:                             # %cond.false.2656
	imulq	$0, -40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_441
# BB#440:                               # %cond.true.2667
	imulq	$0, -40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -944(%rbp)        # 8-byte Spill
	jmp	.LBB26_442
.LBB26_441:                             # %cond.false.2680
	imulq	$0, -40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -944(%rbp)        # 8-byte Spill
.LBB26_442:                             # %cond.end.2689
	movq	-944(%rbp), %rax        # 8-byte Reload
	subq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	cmpq	%rcx, %rax
	jl	.LBB26_451
	jmp	.LBB26_448
.LBB26_443:                             # %cond.false.2698
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	cmpq	$0, %rax
	jge	.LBB26_445
# BB#444:                               # %cond.true.2705
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	-40(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB26_451
	jmp	.LBB26_448
.LBB26_445:                             # %cond.false.2713
	cmpq	$0, -40(%rbp)
	jge	.LBB26_447
# BB#446:                               # %cond.true.2716
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movq	-32(%rbp), %rsi
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rdi
	subq	%rdi, %rsi
	addq	-40(%rbp), %rsi
	cmpq	%rsi, %rax
	jle	.LBB26_451
	jmp	.LBB26_448
.LBB26_447:                             # %cond.false.2728
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	addq	-40(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jl	.LBB26_451
.LBB26_448:                             # %lor.lhs.false.2736
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_450
# BB#449:                               # %land.lhs.true.2746
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	addq	-40(%rbp), %rax
	cmpq	$-128, %rax
	jl	.LBB26_451
.LBB26_450:                             # %lor.lhs.false.2754
	movl	$127, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	cmpq	$0, -16(%rbp)
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movslq	%eax, %rdi
	subq	%rdi, %rdx
	addq	-40(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB26_455
.LBB26_451:                             # %cond.true.2762
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edi
	addl	%edi, %edx
	cmpl	$127, %edx
	jg	.LBB26_453
# BB#452:                               # %cond.true.2774
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edi
	addl	%edi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -948(%rbp)        # 4-byte Spill
	jmp	.LBB26_454
.LBB26_453:                             # %cond.false.2786
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edi
	addl	%edi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -948(%rbp)        # 4-byte Spill
.LBB26_454:                             # %cond.end.2800
	movl	-948(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -40(%rbp)
	testb	$1, %cl
	jne	.LBB26_698
	jmp	.LBB26_699
.LBB26_455:                             # %cond.false.2803
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edi
	addl	%edi, %edx
	cmpl	$127, %edx
	jg	.LBB26_457
# BB#456:                               # %cond.true.2815
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edi
	addl	%edi, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -952(%rbp)        # 4-byte Spill
	jmp	.LBB26_458
.LBB26_457:                             # %cond.false.2827
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movq	-40(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edi
	addl	%edi, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -952(%rbp)        # 4-byte Spill
.LBB26_458:                             # %cond.end.2841
	movl	-952(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -40(%rbp)
	testb	$1, %dl
	jne	.LBB26_698
	jmp	.LBB26_699
.LBB26_459:                             # %cond.false.2844
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_460
	jmp	.LBB26_519
.LBB26_460:                             # %cond.true.2845
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_461
	jmp	.LBB26_490
.LBB26_461:                             # %cond.true.2846
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	movslq	%edi, %r8
	subq	%r8, %rax
	movw	%ax, %cx
	movswl	%cx, %edi
	addl	%edi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB26_463
# BB#462:                               # %cond.true.2861
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dil
	andb	$1, %dil
	movzbl	%dil, %r8d
	movslq	%r8d, %r9
	subq	%r9, %rcx
	movw	%cx, %dx
	movswl	%dx, %r8d
	addl	%r8d, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-40(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dil
	andb	$1, %dil
	movzbl	%dil, %r8d
	movslq	%r8d, %r9
	subq	%r9, %rcx
	movw	%cx, %dx
	movswl	%dx, %r8d
	addl	%r8d, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -956(%rbp)        # 4-byte Spill
	jmp	.LBB26_464
.LBB26_463:                             # %cond.false.2895
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	movslq	%edi, %r8
	subq	%r8, %rax
	movw	%ax, %cx
	movswl	%cx, %edi
	addl	%edi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -956(%rbp)        # 4-byte Spill
.LBB26_464:                             # %cond.end.2908
	movl	-956(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB26_474
# BB#465:                               # %cond.true.2912
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB26_470
# BB#466:                               # %cond.true.2917
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movw	%ax, %di
	movswl	%di, %edx
	movq	-40(%rbp), %rax
	movw	%ax, %di
	movswl	%di, %r8d
	imull	$0, %r8d, %r8d
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %r9d
	movslq	%r9d, %rsi
	subq	%rsi, %rax
	movw	%ax, %di
	movswl	%di, %r9d
	addl	%r9d, %r8d
	imull	$0, %r8d, %r8d
	subl	$1, %r8d
	cmpl	$0, %r8d
	movl	%edx, -960(%rbp)        # 4-byte Spill
	jge	.LBB26_468
# BB#467:                               # %cond.true.2938
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dil
	andb	$1, %dil
	movzbl	%dil, %r8d
	movslq	%r8d, %r9
	subq	%r9, %rcx
	movw	%cx, %dx
	movswl	%dx, %r8d
	addl	%r8d, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-40(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	imull	$0, %esi, %esi
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dil
	andb	$1, %dil
	movzbl	%dil, %r8d
	movslq	%r8d, %r9
	subq	%r9, %rcx
	movw	%cx, %dx
	movswl	%dx, %r8d
	addl	%r8d, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -964(%rbp)        # 4-byte Spill
	jmp	.LBB26_469
.LBB26_468:                             # %cond.false.2972
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	movslq	%edi, %r8
	subq	%r8, %rax
	movw	%ax, %cx
	movswl	%cx, %edi
	addl	%edi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -964(%rbp)        # 4-byte Spill
.LBB26_469:                             # %cond.end.2985
	movl	-964(%rbp), %eax        # 4-byte Reload
	movq	-40(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	subl	%esi, %eax
	movl	-960(%rbp), %esi        # 4-byte Reload
	cmpl	%eax, %esi
	jl	.LBB26_482
	jmp	.LBB26_479
.LBB26_470:                             # %cond.false.2992
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	movslq	%edi, %r8
	subq	%r8, %rax
	movw	%ax, %cx
	movswl	%cx, %edi
	addl	%edi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB26_472
# BB#471:                               # %cond.true.3007
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	movslq	%edi, %r8
	subq	%r8, %rax
	movw	%ax, %cx
	movswl	%cx, %edi
	addl	%edi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -968(%rbp)        # 4-byte Spill
	jmp	.LBB26_473
.LBB26_472:                             # %cond.false.3024
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	movslq	%edi, %r8
	subq	%r8, %rax
	movw	%ax, %cx
	movswl	%cx, %edi
	addl	%edi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -968(%rbp)        # 4-byte Spill
.LBB26_473:                             # %cond.end.3037
	movl	-968(%rbp), %eax        # 4-byte Reload
	movq	-40(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	subl	%esi, %eax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	movslq	%esi, %r8
	subq	%r8, %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	cmpl	%esi, %eax
	jl	.LBB26_482
	jmp	.LBB26_479
.LBB26_474:                             # %cond.false.3050
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movw	%ax, %di
	movswl	%di, %edx
	cmpl	$0, %edx
	jge	.LBB26_476
# BB#475:                               # %cond.true.3059
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	movslq	%edi, %r8
	subq	%r8, %rax
	movw	%ax, %cx
	movswl	%cx, %edi
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %r9d
	addl	%r9d, %edi
	cmpl	%edi, %edx
	jle	.LBB26_482
	jmp	.LBB26_479
.LBB26_476:                             # %cond.false.3073
	movq	-40(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB26_478
# BB#477:                               # %cond.true.3078
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movw	%ax, %di
	movswl	%di, %edx
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %r8d
	movslq	%r8d, %rsi
	subq	%rsi, %rax
	movw	%ax, %di
	movswl	%di, %r8d
	movq	-40(%rbp), %rax
	movw	%ax, %di
	movswl	%di, %r9d
	addl	%r9d, %r8d
	cmpl	%r8d, %edx
	jle	.LBB26_482
	jmp	.LBB26_479
.LBB26_478:                             # %cond.false.3096
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movw	%ax, %di
	movswl	%di, %edx
	movq	-40(%rbp), %rax
	movw	%ax, %di
	movswl	%di, %r8d
	addl	%r8d, %edx
	movq	-40(%rbp), %rax
	movw	%ax, %di
	movswl	%di, %r8d
	cmpl	%r8d, %edx
	jl	.LBB26_482
.LBB26_479:                             # %lor.lhs.false.3110
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movw	%ax, %di
	movswl	%di, %edx
	movq	-40(%rbp), %rax
	movw	%ax, %di
	movswl	%di, %r8d
	addl	%r8d, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB26_481
# BB#480:                               # %land.lhs.true.3124
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movw	%ax, %di
	movswl	%di, %edx
	movq	-40(%rbp), %rax
	movw	%ax, %di
	movswl	%di, %r8d
	addl	%r8d, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB26_482
.LBB26_481:                             # %lor.lhs.false.3136
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	movw	%cx, %r8w
	movswl	%r8w, %esi
	movq	-40(%rbp), %rcx
	movw	%cx, %r8w
	movswl	%r8w, %r9d
	addl	%r9d, %esi
	cmpl	%esi, %eax
	jge	.LBB26_486
.LBB26_482:                             # %cond.true.3148
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movw	%ax, %di
	movzwl	%di, %edx
	movq	-40(%rbp), %rax
	movw	%ax, %di
	movzwl	%di, %r8d
	addl	%r8d, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB26_484
# BB#483:                               # %cond.true.3160
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movw	%ax, %di
	movzwl	%di, %edx
	movq	-40(%rbp), %rax
	movw	%ax, %di
	movzwl	%di, %r8d
	addl	%r8d, %edx
	movw	%dx, %di
	movswl	%di, %edx
	movl	%edx, -972(%rbp)        # 4-byte Spill
	jmp	.LBB26_485
.LBB26_484:                             # %cond.false.3172
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movw	%ax, %di
	movzwl	%di, %edx
	movq	-40(%rbp), %rax
	movw	%ax, %di
	movzwl	%di, %r8d
	addl	%r8d, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %di
	movswl	%di, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -972(%rbp)        # 4-byte Spill
.LBB26_485:                             # %cond.end.3186
	movl	-972(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -40(%rbp)
	testb	$1, %cl
	jne	.LBB26_698
	jmp	.LBB26_699
.LBB26_486:                             # %cond.false.3189
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movw	%ax, %di
	movzwl	%di, %edx
	movq	-40(%rbp), %rax
	movw	%ax, %di
	movzwl	%di, %r8d
	addl	%r8d, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB26_488
# BB#487:                               # %cond.true.3201
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movw	%ax, %di
	movzwl	%di, %edx
	movq	-40(%rbp), %rax
	movw	%ax, %di
	movzwl	%di, %r8d
	addl	%r8d, %edx
	movw	%dx, %di
	movswl	%di, %edx
	movl	%edx, -976(%rbp)        # 4-byte Spill
	jmp	.LBB26_489
.LBB26_488:                             # %cond.false.3213
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movw	%ax, %di
	movzwl	%di, %edx
	movq	-40(%rbp), %rax
	movw	%ax, %di
	movzwl	%di, %r8d
	addl	%r8d, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %di
	movswl	%di, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -976(%rbp)        # 4-byte Spill
.LBB26_489:                             # %cond.end.3227
	movl	-976(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -40(%rbp)
	testb	$1, %dl
	jne	.LBB26_698
	jmp	.LBB26_699
.LBB26_490:                             # %cond.false.3230
	imulq	$0, -40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_492
# BB#491:                               # %cond.true.3241
	xorl	%eax, %eax
	imulq	$0, -40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	cmpq	$0, -16(%rbp)
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	movslq	%edi, %r8
	subq	%r8, %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -40(%rbp), %rdx
	movq	-32(%rbp), %r8
	cmpq	$0, -16(%rbp)
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movslq	%eax, %r9
	subq	%r9, %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -984(%rbp)        # 8-byte Spill
	jmp	.LBB26_493
.LBB26_492:                             # %cond.false.3268
	imulq	$0, -40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -984(%rbp)        # 8-byte Spill
.LBB26_493:                             # %cond.end.3277
	movq	-984(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB26_503
# BB#494:                               # %cond.true.3281
	cmpq	$0, -40(%rbp)
	jge	.LBB26_499
# BB#495:                               # %cond.true.3284
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	imulq	$0, -40(%rbp), %rsi
	movq	-32(%rbp), %rdi
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %r8
	subq	%r8, %rdi
	addq	%rdi, %rsi
	imulq	$0, %rsi, %rsi
	subq	$1, %rsi
	cmpq	$0, %rsi
	movq	%rax, -992(%rbp)        # 8-byte Spill
	jge	.LBB26_497
# BB#496:                               # %cond.true.3299
	xorl	%eax, %eax
	imulq	$0, -40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	cmpq	$0, -16(%rbp)
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	movslq	%edi, %r8
	subq	%r8, %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -40(%rbp), %rdx
	movq	-32(%rbp), %r8
	cmpq	$0, -16(%rbp)
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movslq	%eax, %r9
	subq	%r9, %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1000(%rbp)       # 8-byte Spill
	jmp	.LBB26_498
.LBB26_497:                             # %cond.false.3326
	imulq	$0, -40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1000(%rbp)       # 8-byte Spill
.LBB26_498:                             # %cond.end.3335
	movq	-1000(%rbp), %rax       # 8-byte Reload
	subq	-40(%rbp), %rax
	movq	-992(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB26_511
	jmp	.LBB26_508
.LBB26_499:                             # %cond.false.3340
	imulq	$0, -40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_501
# BB#500:                               # %cond.true.3351
	imulq	$0, -40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	jmp	.LBB26_502
.LBB26_501:                             # %cond.false.3364
	imulq	$0, -40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1008(%rbp)       # 8-byte Spill
.LBB26_502:                             # %cond.end.3373
	movq	-1008(%rbp), %rax       # 8-byte Reload
	subq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	cmpq	%rcx, %rax
	jl	.LBB26_511
	jmp	.LBB26_508
.LBB26_503:                             # %cond.false.3382
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	cmpq	$0, %rax
	jge	.LBB26_505
# BB#504:                               # %cond.true.3389
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	-40(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB26_511
	jmp	.LBB26_508
.LBB26_505:                             # %cond.false.3397
	cmpq	$0, -40(%rbp)
	jge	.LBB26_507
# BB#506:                               # %cond.true.3400
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movq	-32(%rbp), %rsi
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rdi
	subq	%rdi, %rsi
	addq	-40(%rbp), %rsi
	cmpq	%rsi, %rax
	jle	.LBB26_511
	jmp	.LBB26_508
.LBB26_507:                             # %cond.false.3412
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	addq	-40(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jl	.LBB26_511
.LBB26_508:                             # %lor.lhs.false.3420
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_510
# BB#509:                               # %land.lhs.true.3430
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	addq	-40(%rbp), %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB26_511
.LBB26_510:                             # %lor.lhs.false.3438
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	cmpq	$0, -16(%rbp)
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movslq	%eax, %rdi
	subq	%rdi, %rdx
	addq	-40(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB26_515
.LBB26_511:                             # %cond.true.3446
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movw	%ax, %di
	movzwl	%di, %edx
	movq	-40(%rbp), %rax
	movw	%ax, %di
	movzwl	%di, %r8d
	addl	%r8d, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB26_513
# BB#512:                               # %cond.true.3458
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movw	%ax, %di
	movzwl	%di, %edx
	movq	-40(%rbp), %rax
	movw	%ax, %di
	movzwl	%di, %r8d
	addl	%r8d, %edx
	movw	%dx, %di
	movswl	%di, %edx
	movl	%edx, -1012(%rbp)       # 4-byte Spill
	jmp	.LBB26_514
.LBB26_513:                             # %cond.false.3470
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movw	%ax, %di
	movzwl	%di, %edx
	movq	-40(%rbp), %rax
	movw	%ax, %di
	movzwl	%di, %r8d
	addl	%r8d, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %di
	movswl	%di, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -1012(%rbp)       # 4-byte Spill
.LBB26_514:                             # %cond.end.3484
	movl	-1012(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -40(%rbp)
	testb	$1, %cl
	jne	.LBB26_698
	jmp	.LBB26_699
.LBB26_515:                             # %cond.false.3487
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movw	%ax, %di
	movzwl	%di, %edx
	movq	-40(%rbp), %rax
	movw	%ax, %di
	movzwl	%di, %r8d
	addl	%r8d, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB26_517
# BB#516:                               # %cond.true.3499
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movw	%ax, %di
	movzwl	%di, %edx
	movq	-40(%rbp), %rax
	movw	%ax, %di
	movzwl	%di, %r8d
	addl	%r8d, %edx
	movw	%dx, %di
	movswl	%di, %edx
	movl	%edx, -1016(%rbp)       # 4-byte Spill
	jmp	.LBB26_518
.LBB26_517:                             # %cond.false.3511
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movw	%ax, %di
	movzwl	%di, %edx
	movq	-40(%rbp), %rax
	movw	%ax, %di
	movzwl	%di, %r8d
	addl	%r8d, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %di
	movswl	%di, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -1016(%rbp)       # 4-byte Spill
.LBB26_518:                             # %cond.end.3525
	movl	-1016(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -40(%rbp)
	testb	$1, %dl
	jne	.LBB26_698
	jmp	.LBB26_699
.LBB26_519:                             # %cond.false.3528
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_520
	jmp	.LBB26_579
.LBB26_520:                             # %cond.true.3529
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_521
	jmp	.LBB26_550
.LBB26_521:                             # %cond.true.3530
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rax
	movl	%eax, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB26_523
# BB#522:                               # %cond.true.3543
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	movslq	%edi, %r8
	subq	%r8, %rcx
	movl	%ecx, %edi
	addl	%edi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-40(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	movslq	%edi, %r8
	subq	%r8, %rcx
	movl	%ecx, %edi
	addl	%edi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -1020(%rbp)       # 4-byte Spill
	jmp	.LBB26_524
.LBB26_523:                             # %cond.false.3573
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rax
	movl	%eax, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -1020(%rbp)       # 4-byte Spill
.LBB26_524:                             # %cond.end.3584
	movl	-1020(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	jge	.LBB26_534
# BB#525:                               # %cond.true.3588
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB26_530
# BB#526:                               # %cond.true.3592
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%eax, %edi
	imull	$0, %edi, %edi
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %r8d
	movslq	%r8d, %rsi
	subq	%rsi, %rax
	movl	%eax, %r8d
	addl	%r8d, %edi
	imull	$0, %edi, %edi
	subl	$1, %edi
	cmpl	$0, %edi
	movl	%edx, -1024(%rbp)       # 4-byte Spill
	jge	.LBB26_528
# BB#527:                               # %cond.true.3610
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	movslq	%edi, %r8
	subq	%r8, %rcx
	movl	%ecx, %edi
	addl	%edi, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-40(%rbp), %rcx
	movl	%ecx, %edx
	imull	$0, %edx, %edx
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	movslq	%edi, %r8
	subq	%r8, %rcx
	movl	%ecx, %edi
	addl	%edi, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -1028(%rbp)       # 4-byte Spill
	jmp	.LBB26_529
.LBB26_528:                             # %cond.false.3640
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rax
	movl	%eax, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -1028(%rbp)       # 4-byte Spill
.LBB26_529:                             # %cond.end.3651
	movl	-1028(%rbp), %eax       # 4-byte Reload
	movq	-40(%rbp), %rcx
	movl	%ecx, %edx
	subl	%edx, %eax
	movl	-1024(%rbp), %edx       # 4-byte Reload
	cmpl	%eax, %edx
	jl	.LBB26_542
	jmp	.LBB26_539
.LBB26_530:                             # %cond.false.3657
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rax
	movl	%eax, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB26_532
# BB#531:                               # %cond.true.3670
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rax
	movl	%eax, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -1032(%rbp)       # 4-byte Spill
	jmp	.LBB26_533
.LBB26_532:                             # %cond.false.3685
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	imull	$0, %ecx, %ecx
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rax
	movl	%eax, %esi
	addl	%esi, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -1032(%rbp)       # 4-byte Spill
.LBB26_533:                             # %cond.end.3696
	movl	-1032(%rbp), %eax       # 4-byte Reload
	movq	-40(%rbp), %rcx
	movl	%ecx, %edx
	subl	%edx, %eax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	movslq	%edx, %rdi
	subq	%rdi, %rcx
	movl	%ecx, %edx
	cmpl	%edx, %eax
	jl	.LBB26_542
	jmp	.LBB26_539
.LBB26_534:                             # %cond.false.3707
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movl	%eax, %edx
	cmpl	$0, %edx
	jge	.LBB26_536
# BB#535:                               # %cond.true.3715
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rax
	movl	%eax, %esi
	movq	-40(%rbp), %rax
	movl	%eax, %r8d
	addl	%r8d, %esi
	cmpl	%esi, %ecx
	jle	.LBB26_542
	jmp	.LBB26_539
.LBB26_536:                             # %cond.false.3726
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB26_538
# BB#537:                               # %cond.true.3730
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movl	%eax, %edx
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edi
	movslq	%edi, %rsi
	subq	%rsi, %rax
	movl	%eax, %edi
	movq	-40(%rbp), %rax
	movl	%eax, %r8d
	addl	%r8d, %edi
	cmpl	%edi, %edx
	jle	.LBB26_542
	jmp	.LBB26_539
.LBB26_538:                             # %cond.false.3745
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%eax, %edi
	addl	%edi, %edx
	movq	-40(%rbp), %rax
	movl	%eax, %edi
	cmpl	%edi, %edx
	jl	.LBB26_542
.LBB26_539:                             # %lor.lhs.false.3756
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%eax, %edi
	addl	%edi, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB26_541
# BB#540:                               # %land.lhs.true.3768
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%eax, %edi
	addl	%edi, %edx
	cmpl	$-2147483648, %edx      # imm = 0xFFFFFFFF80000000
	jl	.LBB26_542
.LBB26_541:                             # %lor.lhs.false.3778
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	movl	%ecx, %esi
	movq	-40(%rbp), %rcx
	movl	%ecx, %r8d
	addl	%r8d, %esi
	cmpl	%esi, %eax
	jge	.LBB26_546
.LBB26_542:                             # %cond.true.3788
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%eax, %edi
	addl	%edi, %edx
	cmpl	$2147483647, %edx       # imm = 0x7FFFFFFF
	ja	.LBB26_544
# BB#543:                               # %cond.true.3798
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%eax, %edi
	addl	%edi, %edx
	movl	%edx, -1036(%rbp)       # 4-byte Spill
	jmp	.LBB26_545
.LBB26_544:                             # %cond.false.3806
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%eax, %edi
	addl	%edi, %edx
	subl	$-2147483648, %edx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %edx      # imm = 0xFFFFFFFF80000000
	movl	%edx, -1036(%rbp)       # 4-byte Spill
.LBB26_545:                             # %cond.end.3816
	movl	-1036(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -40(%rbp)
	testb	$1, %cl
	jne	.LBB26_698
	jmp	.LBB26_699
.LBB26_546:                             # %cond.false.3819
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%eax, %edi
	addl	%edi, %edx
	cmpl	$2147483647, %edx       # imm = 0x7FFFFFFF
	ja	.LBB26_548
# BB#547:                               # %cond.true.3829
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%eax, %edi
	addl	%edi, %edx
	movl	%edx, -1040(%rbp)       # 4-byte Spill
	jmp	.LBB26_549
.LBB26_548:                             # %cond.false.3837
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%eax, %edi
	addl	%edi, %edx
	subl	$-2147483648, %edx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %edx      # imm = 0xFFFFFFFF80000000
	movl	%edx, -1040(%rbp)       # 4-byte Spill
.LBB26_549:                             # %cond.end.3847
	movl	-1040(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -40(%rbp)
	testb	$1, %dl
	jne	.LBB26_698
	jmp	.LBB26_699
.LBB26_550:                             # %cond.false.3850
	imulq	$0, -40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_552
# BB#551:                               # %cond.true.3861
	xorl	%eax, %eax
	imulq	$0, -40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	cmpq	$0, -16(%rbp)
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	movslq	%edi, %r8
	subq	%r8, %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -40(%rbp), %rdx
	movq	-32(%rbp), %r8
	cmpq	$0, -16(%rbp)
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movslq	%eax, %r9
	subq	%r9, %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1048(%rbp)       # 8-byte Spill
	jmp	.LBB26_553
.LBB26_552:                             # %cond.false.3888
	imulq	$0, -40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1048(%rbp)       # 8-byte Spill
.LBB26_553:                             # %cond.end.3897
	movq	-1048(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB26_563
# BB#554:                               # %cond.true.3901
	cmpq	$0, -40(%rbp)
	jge	.LBB26_559
# BB#555:                               # %cond.true.3904
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	imulq	$0, -40(%rbp), %rsi
	movq	-32(%rbp), %rdi
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %r8
	subq	%r8, %rdi
	addq	%rdi, %rsi
	imulq	$0, %rsi, %rsi
	subq	$1, %rsi
	cmpq	$0, %rsi
	movq	%rax, -1056(%rbp)       # 8-byte Spill
	jge	.LBB26_557
# BB#556:                               # %cond.true.3919
	xorl	%eax, %eax
	imulq	$0, -40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	cmpq	$0, -16(%rbp)
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	movslq	%edi, %r8
	subq	%r8, %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -40(%rbp), %rdx
	movq	-32(%rbp), %r8
	cmpq	$0, -16(%rbp)
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movslq	%eax, %r9
	subq	%r9, %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1064(%rbp)       # 8-byte Spill
	jmp	.LBB26_558
.LBB26_557:                             # %cond.false.3946
	imulq	$0, -40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1064(%rbp)       # 8-byte Spill
.LBB26_558:                             # %cond.end.3955
	movq	-1064(%rbp), %rax       # 8-byte Reload
	subq	-40(%rbp), %rax
	movq	-1056(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB26_571
	jmp	.LBB26_568
.LBB26_559:                             # %cond.false.3960
	imulq	$0, -40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_561
# BB#560:                               # %cond.true.3971
	imulq	$0, -40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1072(%rbp)       # 8-byte Spill
	jmp	.LBB26_562
.LBB26_561:                             # %cond.false.3984
	imulq	$0, -40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1072(%rbp)       # 8-byte Spill
.LBB26_562:                             # %cond.end.3993
	movq	-1072(%rbp), %rax       # 8-byte Reload
	subq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	cmpq	%rcx, %rax
	jl	.LBB26_571
	jmp	.LBB26_568
.LBB26_563:                             # %cond.false.4002
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	cmpq	$0, %rax
	jge	.LBB26_565
# BB#564:                               # %cond.true.4009
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	-40(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB26_571
	jmp	.LBB26_568
.LBB26_565:                             # %cond.false.4017
	cmpq	$0, -40(%rbp)
	jge	.LBB26_567
# BB#566:                               # %cond.true.4020
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movq	-32(%rbp), %rsi
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rdi
	subq	%rdi, %rsi
	addq	-40(%rbp), %rsi
	cmpq	%rsi, %rax
	jle	.LBB26_571
	jmp	.LBB26_568
.LBB26_567:                             # %cond.false.4032
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	addq	-40(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jl	.LBB26_571
.LBB26_568:                             # %lor.lhs.false.4040
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_570
# BB#569:                               # %land.lhs.true.4050
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	addq	-40(%rbp), %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB26_571
.LBB26_570:                             # %lor.lhs.false.4058
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	cmpq	$0, -16(%rbp)
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movslq	%eax, %rdi
	subq	%rdi, %rdx
	addq	-40(%rbp), %rdx
	cmpq	%rdx, %rcx
	jge	.LBB26_575
.LBB26_571:                             # %cond.true.4066
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%eax, %edi
	addl	%edi, %edx
	cmpl	$2147483647, %edx       # imm = 0x7FFFFFFF
	ja	.LBB26_573
# BB#572:                               # %cond.true.4076
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%eax, %edi
	addl	%edi, %edx
	movl	%edx, -1076(%rbp)       # 4-byte Spill
	jmp	.LBB26_574
.LBB26_573:                             # %cond.false.4084
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%eax, %edi
	addl	%edi, %edx
	subl	$-2147483648, %edx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %edx      # imm = 0xFFFFFFFF80000000
	movl	%edx, -1076(%rbp)       # 4-byte Spill
.LBB26_574:                             # %cond.end.4094
	movl	-1076(%rbp), %eax       # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -40(%rbp)
	testb	$1, %cl
	jne	.LBB26_698
	jmp	.LBB26_699
.LBB26_575:                             # %cond.false.4097
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%eax, %edi
	addl	%edi, %edx
	cmpl	$2147483647, %edx       # imm = 0x7FFFFFFF
	ja	.LBB26_577
# BB#576:                               # %cond.true.4107
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%eax, %edi
	addl	%edi, %edx
	movl	%edx, -1080(%rbp)       # 4-byte Spill
	jmp	.LBB26_578
.LBB26_577:                             # %cond.false.4115
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movl	%eax, %edx
	movq	-40(%rbp), %rax
	movl	%eax, %edi
	addl	%edi, %edx
	subl	$-2147483648, %edx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %edx      # imm = 0xFFFFFFFF80000000
	movl	%edx, -1080(%rbp)       # 4-byte Spill
.LBB26_578:                             # %cond.end.4125
	movl	-1080(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -40(%rbp)
	testb	$1, %dl
	jne	.LBB26_698
	jmp	.LBB26_699
.LBB26_579:                             # %cond.false.4128
	movb	$1, %al
	testb	$1, %al
	jne	.LBB26_580
	jmp	.LBB26_639
.LBB26_580:                             # %cond.true.4129
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_581
	jmp	.LBB26_610
.LBB26_581:                             # %cond.true.4130
	imulq	$0, -40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_583
# BB#582:                               # %cond.true.4141
	xorl	%eax, %eax
	imulq	$0, -40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	cmpq	$0, -16(%rbp)
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	movslq	%edi, %r8
	subq	%r8, %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -40(%rbp), %rdx
	movq	-32(%rbp), %r8
	cmpq	$0, -16(%rbp)
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movslq	%eax, %r9
	subq	%r9, %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1088(%rbp)       # 8-byte Spill
	jmp	.LBB26_584
.LBB26_583:                             # %cond.false.4168
	imulq	$0, -40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1088(%rbp)       # 8-byte Spill
.LBB26_584:                             # %cond.end.4177
	movq	-1088(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB26_594
# BB#585:                               # %cond.true.4181
	cmpq	$0, -40(%rbp)
	jge	.LBB26_590
# BB#586:                               # %cond.true.4184
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	imulq	$0, -40(%rbp), %rsi
	movq	-32(%rbp), %rdi
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %r8
	subq	%r8, %rdi
	addq	%rdi, %rsi
	imulq	$0, %rsi, %rsi
	subq	$1, %rsi
	cmpq	$0, %rsi
	movq	%rax, -1096(%rbp)       # 8-byte Spill
	jge	.LBB26_588
# BB#587:                               # %cond.true.4199
	xorl	%eax, %eax
	imulq	$0, -40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	cmpq	$0, -16(%rbp)
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	movslq	%edi, %r8
	subq	%r8, %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -40(%rbp), %rdx
	movq	-32(%rbp), %r8
	cmpq	$0, -16(%rbp)
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movslq	%eax, %r9
	subq	%r9, %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1104(%rbp)       # 8-byte Spill
	jmp	.LBB26_589
.LBB26_588:                             # %cond.false.4226
	imulq	$0, -40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1104(%rbp)       # 8-byte Spill
.LBB26_589:                             # %cond.end.4235
	movq	-1104(%rbp), %rax       # 8-byte Reload
	subq	-40(%rbp), %rax
	movq	-1096(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB26_602
	jmp	.LBB26_599
.LBB26_590:                             # %cond.false.4240
	imulq	$0, -40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_592
# BB#591:                               # %cond.true.4251
	imulq	$0, -40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1112(%rbp)       # 8-byte Spill
	jmp	.LBB26_593
.LBB26_592:                             # %cond.false.4264
	imulq	$0, -40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1112(%rbp)       # 8-byte Spill
.LBB26_593:                             # %cond.end.4273
	movq	-1112(%rbp), %rax       # 8-byte Reload
	subq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	cmpq	%rcx, %rax
	jl	.LBB26_602
	jmp	.LBB26_599
.LBB26_594:                             # %cond.false.4282
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	cmpq	$0, %rax
	jge	.LBB26_596
# BB#595:                               # %cond.true.4289
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	-40(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB26_602
	jmp	.LBB26_599
.LBB26_596:                             # %cond.false.4297
	cmpq	$0, -40(%rbp)
	jge	.LBB26_598
# BB#597:                               # %cond.true.4300
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movq	-32(%rbp), %rsi
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rdi
	subq	%rdi, %rsi
	addq	-40(%rbp), %rsi
	cmpq	%rsi, %rax
	jle	.LBB26_602
	jmp	.LBB26_599
.LBB26_598:                             # %cond.false.4312
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	addq	-40(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jl	.LBB26_602
.LBB26_599:                             # %lor.lhs.false.4320
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_601
# BB#600:                               # %land.lhs.true.4330
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	-40(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB26_602
.LBB26_601:                             # %lor.lhs.false.4338
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	-40(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB26_606
.LBB26_602:                             # %cond.true.4346
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	-40(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB26_604
# BB#603:                               # %cond.true.4354
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	addq	-40(%rbp), %rax
	movq	%rax, -1120(%rbp)       # 8-byte Spill
	jmp	.LBB26_605
.LBB26_604:                             # %cond.false.4360
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	addq	-40(%rbp), %rax
	movabsq	$-9223372036854775808, %rsi # imm = 0x8000000000000000
	subq	%rsi, %rax
	movabsq	$-9223372036854775808, %rsi # imm = 0x8000000000000000
	addq	%rsi, %rax
	movq	%rax, -1120(%rbp)       # 8-byte Spill
.LBB26_605:                             # %cond.end.4368
	movq	-1120(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -40(%rbp)
	testb	$1, %cl
	jne	.LBB26_698
	jmp	.LBB26_699
.LBB26_606:                             # %cond.false.4370
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	-40(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB26_608
# BB#607:                               # %cond.true.4378
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	addq	-40(%rbp), %rax
	movq	%rax, -1128(%rbp)       # 8-byte Spill
	jmp	.LBB26_609
.LBB26_608:                             # %cond.false.4384
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	addq	-40(%rbp), %rax
	movabsq	$-9223372036854775808, %rsi # imm = 0x8000000000000000
	subq	%rsi, %rax
	movabsq	$-9223372036854775808, %rsi # imm = 0x8000000000000000
	addq	%rsi, %rax
	movq	%rax, -1128(%rbp)       # 8-byte Spill
.LBB26_609:                             # %cond.end.4392
	movq	-1128(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -40(%rbp)
	testb	$1, %dl
	jne	.LBB26_698
	jmp	.LBB26_699
.LBB26_610:                             # %cond.false.4394
	imulq	$0, -40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_612
# BB#611:                               # %cond.true.4405
	xorl	%eax, %eax
	imulq	$0, -40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	cmpq	$0, -16(%rbp)
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	movslq	%edi, %r8
	subq	%r8, %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -40(%rbp), %rdx
	movq	-32(%rbp), %r8
	cmpq	$0, -16(%rbp)
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movslq	%eax, %r9
	subq	%r9, %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1136(%rbp)       # 8-byte Spill
	jmp	.LBB26_613
.LBB26_612:                             # %cond.false.4432
	imulq	$0, -40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1136(%rbp)       # 8-byte Spill
.LBB26_613:                             # %cond.end.4441
	movq	-1136(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB26_623
# BB#614:                               # %cond.true.4445
	cmpq	$0, -40(%rbp)
	jge	.LBB26_619
# BB#615:                               # %cond.true.4448
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	imulq	$0, -40(%rbp), %rsi
	movq	-32(%rbp), %rdi
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %r8
	subq	%r8, %rdi
	addq	%rdi, %rsi
	imulq	$0, %rsi, %rsi
	subq	$1, %rsi
	cmpq	$0, %rsi
	movq	%rax, -1144(%rbp)       # 8-byte Spill
	jge	.LBB26_617
# BB#616:                               # %cond.true.4463
	xorl	%eax, %eax
	imulq	$0, -40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	cmpq	$0, -16(%rbp)
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	movslq	%edi, %r8
	subq	%r8, %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -40(%rbp), %rdx
	movq	-32(%rbp), %r8
	cmpq	$0, -16(%rbp)
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movslq	%eax, %r9
	subq	%r9, %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1152(%rbp)       # 8-byte Spill
	jmp	.LBB26_618
.LBB26_617:                             # %cond.false.4490
	imulq	$0, -40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1152(%rbp)       # 8-byte Spill
.LBB26_618:                             # %cond.end.4499
	movq	-1152(%rbp), %rax       # 8-byte Reload
	subq	-40(%rbp), %rax
	movq	-1144(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB26_631
	jmp	.LBB26_628
.LBB26_619:                             # %cond.false.4504
	imulq	$0, -40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_621
# BB#620:                               # %cond.true.4515
	imulq	$0, -40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1160(%rbp)       # 8-byte Spill
	jmp	.LBB26_622
.LBB26_621:                             # %cond.false.4528
	imulq	$0, -40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1160(%rbp)       # 8-byte Spill
.LBB26_622:                             # %cond.end.4537
	movq	-1160(%rbp), %rax       # 8-byte Reload
	subq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	cmpq	%rcx, %rax
	jl	.LBB26_631
	jmp	.LBB26_628
.LBB26_623:                             # %cond.false.4546
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	cmpq	$0, %rax
	jge	.LBB26_625
# BB#624:                               # %cond.true.4553
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	-40(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB26_631
	jmp	.LBB26_628
.LBB26_625:                             # %cond.false.4561
	cmpq	$0, -40(%rbp)
	jge	.LBB26_627
# BB#626:                               # %cond.true.4564
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movq	-32(%rbp), %rsi
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rdi
	subq	%rdi, %rsi
	addq	-40(%rbp), %rsi
	cmpq	%rsi, %rax
	jle	.LBB26_631
	jmp	.LBB26_628
.LBB26_627:                             # %cond.false.4576
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	addq	-40(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jl	.LBB26_631
.LBB26_628:                             # %lor.lhs.false.4584
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_630
# BB#629:                               # %land.lhs.true.4594
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	-40(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB26_631
.LBB26_630:                             # %lor.lhs.false.4602
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	-40(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB26_635
.LBB26_631:                             # %cond.true.4610
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	-40(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB26_633
# BB#632:                               # %cond.true.4618
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	addq	-40(%rbp), %rax
	movq	%rax, -1168(%rbp)       # 8-byte Spill
	jmp	.LBB26_634
.LBB26_633:                             # %cond.false.4624
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	addq	-40(%rbp), %rax
	movabsq	$-9223372036854775808, %rsi # imm = 0x8000000000000000
	subq	%rsi, %rax
	movabsq	$-9223372036854775808, %rsi # imm = 0x8000000000000000
	addq	%rsi, %rax
	movq	%rax, -1168(%rbp)       # 8-byte Spill
.LBB26_634:                             # %cond.end.4632
	movq	-1168(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -40(%rbp)
	testb	$1, %cl
	jne	.LBB26_698
	jmp	.LBB26_699
.LBB26_635:                             # %cond.false.4634
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	-40(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB26_637
# BB#636:                               # %cond.true.4642
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	addq	-40(%rbp), %rax
	movq	%rax, -1176(%rbp)       # 8-byte Spill
	jmp	.LBB26_638
.LBB26_637:                             # %cond.false.4648
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	addq	-40(%rbp), %rax
	movabsq	$-9223372036854775808, %rsi # imm = 0x8000000000000000
	subq	%rsi, %rax
	movabsq	$-9223372036854775808, %rsi # imm = 0x8000000000000000
	addq	%rsi, %rax
	movq	%rax, -1176(%rbp)       # 8-byte Spill
.LBB26_638:                             # %cond.end.4656
	movq	-1176(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -40(%rbp)
	testb	$1, %dl
	jne	.LBB26_698
	jmp	.LBB26_699
.LBB26_639:                             # %cond.false.4658
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB26_640
	jmp	.LBB26_669
.LBB26_640:                             # %cond.true.4659
	imulq	$0, -40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_642
# BB#641:                               # %cond.true.4670
	xorl	%eax, %eax
	imulq	$0, -40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	cmpq	$0, -16(%rbp)
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	movslq	%edi, %r8
	subq	%r8, %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -40(%rbp), %rdx
	movq	-32(%rbp), %r8
	cmpq	$0, -16(%rbp)
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movslq	%eax, %r9
	subq	%r9, %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1184(%rbp)       # 8-byte Spill
	jmp	.LBB26_643
.LBB26_642:                             # %cond.false.4697
	imulq	$0, -40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1184(%rbp)       # 8-byte Spill
.LBB26_643:                             # %cond.end.4706
	movq	-1184(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB26_653
# BB#644:                               # %cond.true.4710
	cmpq	$0, -40(%rbp)
	jge	.LBB26_649
# BB#645:                               # %cond.true.4713
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	imulq	$0, -40(%rbp), %rsi
	movq	-32(%rbp), %rdi
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %r8
	subq	%r8, %rdi
	addq	%rdi, %rsi
	imulq	$0, %rsi, %rsi
	subq	$1, %rsi
	cmpq	$0, %rsi
	movq	%rax, -1192(%rbp)       # 8-byte Spill
	jge	.LBB26_647
# BB#646:                               # %cond.true.4728
	xorl	%eax, %eax
	imulq	$0, -40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	cmpq	$0, -16(%rbp)
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	movslq	%edi, %r8
	subq	%r8, %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -40(%rbp), %rdx
	movq	-32(%rbp), %r8
	cmpq	$0, -16(%rbp)
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movslq	%eax, %r9
	subq	%r9, %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1200(%rbp)       # 8-byte Spill
	jmp	.LBB26_648
.LBB26_647:                             # %cond.false.4755
	imulq	$0, -40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1200(%rbp)       # 8-byte Spill
.LBB26_648:                             # %cond.end.4764
	movq	-1200(%rbp), %rax       # 8-byte Reload
	subq	-40(%rbp), %rax
	movq	-1192(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB26_661
	jmp	.LBB26_658
.LBB26_649:                             # %cond.false.4769
	imulq	$0, -40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_651
# BB#650:                               # %cond.true.4780
	imulq	$0, -40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1208(%rbp)       # 8-byte Spill
	jmp	.LBB26_652
.LBB26_651:                             # %cond.false.4793
	imulq	$0, -40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1208(%rbp)       # 8-byte Spill
.LBB26_652:                             # %cond.end.4802
	movq	-1208(%rbp), %rax       # 8-byte Reload
	subq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	cmpq	%rcx, %rax
	jl	.LBB26_661
	jmp	.LBB26_658
.LBB26_653:                             # %cond.false.4811
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	cmpq	$0, %rax
	jge	.LBB26_655
# BB#654:                               # %cond.true.4818
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	-40(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB26_661
	jmp	.LBB26_658
.LBB26_655:                             # %cond.false.4826
	cmpq	$0, -40(%rbp)
	jge	.LBB26_657
# BB#656:                               # %cond.true.4829
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movq	-32(%rbp), %rsi
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rdi
	subq	%rdi, %rsi
	addq	-40(%rbp), %rsi
	cmpq	%rsi, %rax
	jle	.LBB26_661
	jmp	.LBB26_658
.LBB26_657:                             # %cond.false.4841
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	addq	-40(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jl	.LBB26_661
.LBB26_658:                             # %lor.lhs.false.4849
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_660
# BB#659:                               # %land.lhs.true.4859
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	-40(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB26_661
.LBB26_660:                             # %lor.lhs.false.4867
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	-40(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB26_665
.LBB26_661:                             # %cond.true.4875
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	-40(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB26_663
# BB#662:                               # %cond.true.4883
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	addq	-40(%rbp), %rax
	movq	%rax, -1216(%rbp)       # 8-byte Spill
	jmp	.LBB26_664
.LBB26_663:                             # %cond.false.4889
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	addq	-40(%rbp), %rax
	movabsq	$-9223372036854775808, %rsi # imm = 0x8000000000000000
	subq	%rsi, %rax
	movabsq	$-9223372036854775808, %rsi # imm = 0x8000000000000000
	addq	%rsi, %rax
	movq	%rax, -1216(%rbp)       # 8-byte Spill
.LBB26_664:                             # %cond.end.4897
	movq	-1216(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -40(%rbp)
	testb	$1, %cl
	jne	.LBB26_698
	jmp	.LBB26_699
.LBB26_665:                             # %cond.false.4899
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	-40(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB26_667
# BB#666:                               # %cond.true.4907
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	addq	-40(%rbp), %rax
	movq	%rax, -1224(%rbp)       # 8-byte Spill
	jmp	.LBB26_668
.LBB26_667:                             # %cond.false.4913
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	addq	-40(%rbp), %rax
	movabsq	$-9223372036854775808, %rsi # imm = 0x8000000000000000
	subq	%rsi, %rax
	movabsq	$-9223372036854775808, %rsi # imm = 0x8000000000000000
	addq	%rsi, %rax
	movq	%rax, -1224(%rbp)       # 8-byte Spill
.LBB26_668:                             # %cond.end.4921
	movq	-1224(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -40(%rbp)
	testb	$1, %dl
	jne	.LBB26_698
	jmp	.LBB26_699
.LBB26_669:                             # %cond.false.4923
	imulq	$0, -40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_671
# BB#670:                               # %cond.true.4934
	xorl	%eax, %eax
	imulq	$0, -40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	cmpq	$0, -16(%rbp)
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	movslq	%edi, %r8
	subq	%r8, %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -40(%rbp), %rdx
	movq	-32(%rbp), %r8
	cmpq	$0, -16(%rbp)
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movslq	%eax, %r9
	subq	%r9, %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1232(%rbp)       # 8-byte Spill
	jmp	.LBB26_672
.LBB26_671:                             # %cond.false.4961
	imulq	$0, -40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1232(%rbp)       # 8-byte Spill
.LBB26_672:                             # %cond.end.4970
	movq	-1232(%rbp), %rax       # 8-byte Reload
	cmpq	$0, %rax
	jge	.LBB26_682
# BB#673:                               # %cond.true.4974
	cmpq	$0, -40(%rbp)
	jge	.LBB26_678
# BB#674:                               # %cond.true.4977
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	imulq	$0, -40(%rbp), %rsi
	movq	-32(%rbp), %rdi
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %r8
	subq	%r8, %rdi
	addq	%rdi, %rsi
	imulq	$0, %rsi, %rsi
	subq	$1, %rsi
	cmpq	$0, %rsi
	movq	%rax, -1240(%rbp)       # 8-byte Spill
	jge	.LBB26_676
# BB#675:                               # %cond.true.4992
	xorl	%eax, %eax
	imulq	$0, -40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	cmpq	$0, -16(%rbp)
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	movslq	%edi, %r8
	subq	%r8, %rdx
	addq	%rdx, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	subl	%edi, %eax
	movslq	%eax, %rcx
	imulq	$0, -40(%rbp), %rdx
	movq	-32(%rbp), %r8
	cmpq	$0, -16(%rbp)
	setne	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movslq	%eax, %r9
	subq	%r9, %r8
	addq	%r8, %rdx
	imulq	$0, %rdx, %rdx
	addq	$1, %rdx
	shlq	$62, %rdx
	subq	$1, %rdx
	shlq	$1, %rdx
	addq	$1, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -1248(%rbp)       # 8-byte Spill
	jmp	.LBB26_677
.LBB26_676:                             # %cond.false.5019
	imulq	$0, -40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -1248(%rbp)       # 8-byte Spill
.LBB26_677:                             # %cond.end.5028
	movq	-1248(%rbp), %rax       # 8-byte Reload
	subq	-40(%rbp), %rax
	movq	-1240(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jl	.LBB26_690
	jmp	.LBB26_687
.LBB26_678:                             # %cond.false.5033
	imulq	$0, -40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_680
# BB#679:                               # %cond.true.5044
	imulq	$0, -40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1256(%rbp)       # 8-byte Spill
	jmp	.LBB26_681
.LBB26_680:                             # %cond.false.5057
	imulq	$0, -40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	%rcx, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1256(%rbp)       # 8-byte Spill
.LBB26_681:                             # %cond.end.5066
	movq	-1256(%rbp), %rax       # 8-byte Reload
	subq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	cmpq	%rcx, %rax
	jl	.LBB26_690
	jmp	.LBB26_687
.LBB26_682:                             # %cond.false.5075
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	cmpq	$0, %rax
	jge	.LBB26_684
# BB#683:                               # %cond.true.5082
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	-40(%rbp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB26_690
	jmp	.LBB26_687
.LBB26_684:                             # %cond.false.5090
	cmpq	$0, -40(%rbp)
	jge	.LBB26_686
# BB#685:                               # %cond.true.5093
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	movq	-32(%rbp), %rsi
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rdi
	subq	%rdi, %rsi
	addq	-40(%rbp), %rsi
	cmpq	%rsi, %rax
	jle	.LBB26_690
	jmp	.LBB26_687
.LBB26_686:                             # %cond.false.5105
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	addq	-40(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jl	.LBB26_690
.LBB26_687:                             # %lor.lhs.false.5113
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	addq	-40(%rbp), %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB26_689
# BB#688:                               # %land.lhs.true.5123
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	-40(%rbp), %rcx
	cmpq	%rax, %rcx
	jl	.LBB26_690
.LBB26_689:                             # %lor.lhs.false.5131
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	-40(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB26_694
.LBB26_690:                             # %cond.true.5139
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	-40(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB26_692
# BB#691:                               # %cond.true.5147
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	addq	-40(%rbp), %rax
	movq	%rax, -1264(%rbp)       # 8-byte Spill
	jmp	.LBB26_693
.LBB26_692:                             # %cond.false.5153
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	addq	-40(%rbp), %rax
	movabsq	$-9223372036854775808, %rsi # imm = 0x8000000000000000
	subq	%rsi, %rax
	movabsq	$-9223372036854775808, %rsi # imm = 0x8000000000000000
	addq	%rsi, %rax
	movq	%rax, -1264(%rbp)       # 8-byte Spill
.LBB26_693:                             # %cond.end.5161
	movq	-1264(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -40(%rbp)
	testb	$1, %cl
	jne	.LBB26_698
	jmp	.LBB26_699
.LBB26_694:                             # %cond.false.5163
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-32(%rbp), %rcx
	cmpq	$0, -16(%rbp)
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movslq	%esi, %rdi
	subq	%rdi, %rcx
	addq	-40(%rbp), %rcx
	cmpq	%rax, %rcx
	ja	.LBB26_696
# BB#695:                               # %cond.true.5171
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	addq	-40(%rbp), %rax
	movq	%rax, -1272(%rbp)       # 8-byte Spill
	jmp	.LBB26_697
.LBB26_696:                             # %cond.false.5177
	movq	-32(%rbp), %rax
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rsi
	subq	%rsi, %rax
	addq	-40(%rbp), %rax
	movabsq	$-9223372036854775808, %rsi # imm = 0x8000000000000000
	subq	%rsi, %rax
	movabsq	$-9223372036854775808, %rsi # imm = 0x8000000000000000
	addq	%rsi, %rax
	movq	%rax, -1272(%rbp)       # 8-byte Spill
.LBB26_697:                             # %cond.end.5185
	movq	-1272(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -40(%rbp)
	testb	$1, %dl
	jne	.LBB26_698
	jmp	.LBB26_699
.LBB26_698:                             # %if.then
	callq	string_overflow
.LBB26_699:                             # %if.end
	movq	-40(%rbp), %rdi
	callq	make_uninit_string
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	SSDATA
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	strcpy
	movq	$0, -64(%rbp)
	movq	%rax, -1280(%rbp)       # 8-byte Spill
.LBB26_700:                             # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jge	.LBB26_703
# BB#701:                               # %for.body
                                        #   in Loop: Header=BB26_700 Depth=1
	movabsq	$.L.str.89, %rax
	movabsq	$.L.str.88, %rcx
	movq	-56(%rbp), %rdx
	imulq	$3, -64(%rbp), %rsi
	addq	%rsi, %rdx
	addq	-32(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-16(%rbp), %rdi
	subq	$1, %rdi
	cmpq	%rdi, %rsi
	cmoveq	%rcx, %rax
	movq	-64(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rcx), %r8d
	movq	%rdx, %rdi
	movq	%rax, %rsi
	movl	%r8d, %edx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -1284(%rbp)       # 4-byte Spill
# BB#702:                               # %for.inc
                                        #   in Loop: Header=BB26_700 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB26_700
.LBB26_703:                             # %for.end
	movq	-48(%rbp), %rax
	addq	$1296, %rsp             # imm = 0x510
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gnutls_hex_string, .Lfunc_end26-gnutls_hex_string
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"(Emacs) Retried handshake"
	.size	.L.str, 26

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"(Emacs) Giving up on handshake; resetting retries"
	.size	.L.str.1, 50

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"(Emacs) Deallocating x509 credentials"
	.size	.L.str.2, 38

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"(Emacs) Deallocating anon credentials"
	.size	.L.str.3, 38

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Symbol has no numeric gnutls-code property"
	.size	.L.str.4, 43

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Not an error symbol or code"
	.size	.L.str.5, 28

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Not an error"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	":invalid"
	.size	.L.str.7, 9

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"certificate could not be verified"
	.size	.L.str.8, 34

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	":revoked"
	.size	.L.str.9, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"certificate was revoked (CRL)"
	.size	.L.str.10, 30

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	":self-signed"
	.size	.L.str.11, 13

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"certificate signer was not found (self-signed)"
	.size	.L.str.12, 47

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	":unknown-ca"
	.size	.L.str.13, 12

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"the certificate was signed by an unknown and therefore untrusted authority"
	.size	.L.str.14, 75

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	":not-ca"
	.size	.L.str.15, 8

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"certificate signer is not a CA"
	.size	.L.str.16, 31

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	":insecure"
	.size	.L.str.17, 10

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"certificate was signed with an insecure algorithm"
	.size	.L.str.18, 50

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	":not-activated"
	.size	.L.str.19, 15

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"certificate is not yet activated"
	.size	.L.str.20, 33

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	":expired"
	.size	.L.str.21, 9

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"certificate has expired"
	.size	.L.str.22, 24

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	":no-host-match"
	.size	.L.str.23, 15

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"certificate host does not match hostname"
	.size	.L.str.24, 41

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	":warnings"
	.size	.L.str.25, 10

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	":certificate"
	.size	.L.str.26, 13

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	":diffie-hellman-prime-bits"
	.size	.L.str.27, 27

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	":key-exchange"
	.size	.L.str.28, 14

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	":protocol"
	.size	.L.str.29, 10

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	":cipher"
	.size	.L.str.30, 8

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	":mac"
	.size	.L.str.31, 5

	.type	gnutls_global_initialized,@object # @gnutls_global_initialized
	.local	gnutls_global_initialized
	.comm	gnutls_global_initialized,1,1
	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"NORMAL"
	.size	.L.str.32, 7

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"GnuTLS not available"
	.size	.L.str.33, 21

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Invalid GnuTLS credential type"
	.size	.L.str.34, 31

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"gnutls-boot: invalid :verify_error parameter (not a list)"
	.size	.L.str.35, 58

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"gnutls-boot: invalid :hostname parameter (not a string)"
	.size	.L.str.36, 56

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"(Emacs) connecting to host:"
	.size	.L.str.37, 28

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"(Emacs) allocating credentials"
	.size	.L.str.38, 31

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"(Emacs) allocating x509 credentials"
	.size	.L.str.39, 36

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"(Emacs) setting verification flags"
	.size	.L.str.40, 35

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"(Emacs) using default verification flags"
	.size	.L.str.41, 41

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"(Emacs) ignoring invalid verify-flags"
	.size	.L.str.42, 38

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"(Emacs) allocating anon credentials"
	.size	.L.str.43, 36

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"(Emacs) setting system trust failed with code "
	.size	.L.str.44, 47

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"(Emacs) setting the trustfile: "
	.size	.L.str.45, 32

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Invalid trustfile"
	.size	.L.str.46, 18

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"(Emacs) setting the CRL file: "
	.size	.L.str.47, 31

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Invalid CRL file"
	.size	.L.str.48, 17

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"(Emacs) setting the client key file: "
	.size	.L.str.49, 38

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"(Emacs) setting the client cert file: "
	.size	.L.str.50, 39

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Invalid client cert file"
	.size	.L.str.51, 25

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Invalid client key file"
	.size	.L.str.52, 24

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"(Emacs) gnutls callbacks"
	.size	.L.str.53, 25

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"(Emacs) gnutls_init"
	.size	.L.str.54, 20

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"(Emacs) got non-default priority string:"
	.size	.L.str.55, 41

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"(Emacs) using default priority string:"
	.size	.L.str.56, 39

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"(Emacs) setting the priority string"
	.size	.L.str.57, 36

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"(Emacs) verification:"
	.size	.L.str.58, 22

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Certificate validation failed %s, verification code %x"
	.size	.L.str.59, 55

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"(Emacs) certificate validation failed:"
	.size	.L.str.60, 39

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"No x509 certificate was found\n"
	.size	.L.str.61, 31

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"The x509 certificate does not match \"%s\""
	.size	.L.str.62, 41

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"(Emacs) x509 certificate does not match:"
	.size	.L.str.63, 41

	.type	syms_of_gnutls.i_fwd,@object # @syms_of_gnutls.i_fwd
	.local	syms_of_gnutls.i_fwd
	.comm	syms_of_gnutls.i_fwd,16,8
	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"gnutls-log-level"
	.size	.L.str.64, 17

	.type	Sgnutls_available_p,@object # @Sgnutls_available_p
	.data
	.align	8
Sgnutls_available_p:
	.quad	167772160               # 0xa000000
	.quad	Fgnutls_available_p
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.101
	.quad	0
	.quad	0
	.size	Sgnutls_available_p, 48

	.type	.L.str.65,@object       # @.str.65
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.65:
	.asciz	"gnutls.c: [%d] %s %d"
	.size	.L.str.65, 21

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"gnutls.c: [%d] %s"
	.size	.L.str.66, 18

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"unknown"
	.size	.L.str.67, 8

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"(Emacs) fatal error:"
	.size	.L.str.68, 21

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"(Emacs) retry:"
	.size	.L.str.69, 15

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"(Emacs) non-fatal error:"
	.size	.L.str.70, 25

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"(Emacs) Received alert: "
	.size	.L.str.71, 25

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	":version"
	.size	.L.str.72, 9

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	":serial-number"
	.size	.L.str.73, 15

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.zero	1
	.size	.L.str.74, 1

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	":issuer"
	.size	.L.str.75, 8

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"%Y-%m-%d"
	.size	.L.str.76, 9

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	":valid-from"
	.size	.L.str.77, 12

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	":valid-to"
	.size	.L.str.78, 10

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	":subject"
	.size	.L.str.79, 9

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	":public-key-algorithm"
	.size	.L.str.80, 22

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	":certificate-security-level"
	.size	.L.str.81, 28

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	":issuer-unique-id"
	.size	.L.str.82, 18

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	":subject-unique-id"
	.size	.L.str.83, 19

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	":signature-algorithm"
	.size	.L.str.84, 21

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	":public-key-id"
	.size	.L.str.85, 15

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"sha1:"
	.size	.L.str.86, 6

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	":certificate-id"
	.size	.L.str.87, 16

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"%02x"
	.size	.L.str.88, 5

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"%02x:"
	.size	.L.str.89, 6

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"gnutls.c: [audit] %s"
	.size	.L.str.90, 21

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"gnutls.c: [%d] %s %s"
	.size	.L.str.91, 21

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"gnutls-get-initstage"
	.size	.L.str.92, 21

	.type	Sgnutls_get_initstage,@object # @Sgnutls_get_initstage
	.data
	.align	8
Sgnutls_get_initstage:
	.quad	167772160               # 0xa000000
	.quad	Fgnutls_get_initstage
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.92
	.quad	0
	.quad	0
	.size	Sgnutls_get_initstage, 48

	.type	.L.str.93,@object       # @.str.93
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.93:
	.asciz	"gnutls-errorp"
	.size	.L.str.93, 14

	.type	Sgnutls_errorp,@object  # @Sgnutls_errorp
	.data
	.align	8
Sgnutls_errorp:
	.quad	167772160               # 0xa000000
	.quad	Fgnutls_errorp
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.93
	.quad	0
	.quad	0
	.size	Sgnutls_errorp, 48

	.type	.L.str.94,@object       # @.str.94
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.94:
	.asciz	"gnutls-error-fatalp"
	.size	.L.str.94, 20

	.type	Sgnutls_error_fatalp,@object # @Sgnutls_error_fatalp
	.data
	.align	8
Sgnutls_error_fatalp:
	.quad	167772160               # 0xa000000
	.quad	Fgnutls_error_fatalp
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.94
	.quad	0
	.quad	0
	.size	Sgnutls_error_fatalp, 48

	.type	.L.str.95,@object       # @.str.95
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.95:
	.asciz	"gnutls-error-string"
	.size	.L.str.95, 20

	.type	Sgnutls_error_string,@object # @Sgnutls_error_string
	.data
	.align	8
Sgnutls_error_string:
	.quad	167772160               # 0xa000000
	.quad	Fgnutls_error_string
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.95
	.quad	0
	.quad	0
	.size	Sgnutls_error_string, 48

	.type	.L.str.96,@object       # @.str.96
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.96:
	.asciz	"gnutls-boot"
	.size	.L.str.96, 12

	.type	Sgnutls_boot,@object    # @Sgnutls_boot
	.data
	.align	8
Sgnutls_boot:
	.quad	167772160               # 0xa000000
	.quad	Fgnutls_boot
	.short	3                       # 0x3
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.96
	.quad	0
	.quad	0
	.size	Sgnutls_boot, 48

	.type	.L.str.97,@object       # @.str.97
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.97:
	.asciz	"gnutls-deinit"
	.size	.L.str.97, 14

	.type	Sgnutls_deinit,@object  # @Sgnutls_deinit
	.data
	.align	8
Sgnutls_deinit:
	.quad	167772160               # 0xa000000
	.quad	Fgnutls_deinit
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.97
	.quad	0
	.quad	0
	.size	Sgnutls_deinit, 48

	.type	.L.str.98,@object       # @.str.98
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.98:
	.asciz	"gnutls-bye"
	.size	.L.str.98, 11

	.type	Sgnutls_bye,@object     # @Sgnutls_bye
	.data
	.align	8
Sgnutls_bye:
	.quad	167772160               # 0xa000000
	.quad	Fgnutls_bye
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.98
	.quad	0
	.quad	0
	.size	Sgnutls_bye, 48

	.type	.L.str.99,@object       # @.str.99
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.99:
	.asciz	"gnutls-peer-status"
	.size	.L.str.99, 19

	.type	Sgnutls_peer_status,@object # @Sgnutls_peer_status
	.data
	.align	8
Sgnutls_peer_status:
	.quad	167772160               # 0xa000000
	.quad	Fgnutls_peer_status
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.99
	.quad	0
	.quad	0
	.size	Sgnutls_peer_status, 48

	.type	.L.str.100,@object      # @.str.100
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.100:
	.asciz	"gnutls-peer-status-warning-describe"
	.size	.L.str.100, 36

	.type	Sgnutls_peer_status_warning_describe,@object # @Sgnutls_peer_status_warning_describe
	.data
	.align	8
Sgnutls_peer_status_warning_describe:
	.quad	167772160               # 0xa000000
	.quad	Fgnutls_peer_status_warning_describe
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.100
	.quad	0
	.quad	0
	.size	Sgnutls_peer_status_warning_describe, 48

	.type	.L.str.101,@object      # @.str.101
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.101:
	.asciz	"gnutls-available-p"
	.size	.L.str.101, 19


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
