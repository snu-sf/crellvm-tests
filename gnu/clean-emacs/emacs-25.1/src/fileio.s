	.text
	.file	"fileio.bc"
	.globl	report_file_errno
	.align	16, 0x90
	.type	report_file_errno,@function
report_file_errno:                      # @report_file_errno
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %edx
	cmpl	$3, %edx
	je	.LBB0_2
# BB#1:                                 # %lor.lhs.false
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB0_3
.LBB0_2:                                # %cond.true
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB0_4
.LBB0_3:                                # %cond.false
	movq	-16(%rbp), %rdi
	callq	list1
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB0_4:                                # %cond.end
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	callq	synchronize_system_messages_locale
	movl	-20(%rbp), %edi
	callq	strerror
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	build_unibyte_string
	xorl	%edx, %edx
	movq	globals+1344, %rsi
	movq	%rax, %rdi
	callq	code_convert_string_norecord
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	Fcons
	movq	%rax, -56(%rbp)
	cmpl	$17, -20(%rbp)
	jne	.LBB0_6
# BB#5:                                 # %if.then
	movl	$406, %edi              # imm = 0x196
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	xsignal
.LBB0_6:                                # %if.else
	movl	$411, %edi              # imm = 0x19B
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	build_string
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	xsignal
.Lfunc_end0:
	.size	report_file_errno, .Lfunc_end0-report_file_errno
	.cfi_endproc

	.globl	report_file_error
	.align	16, 0x90
	.type	report_file_error,@function
report_file_error:                      # @report_file_error
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	-32(%rbp), %rsi         # 8-byte Reload
	callq	report_file_errno
.Lfunc_end1:
	.size	report_file_error, .Lfunc_end1-report_file_error
	.cfi_endproc

	.globl	report_file_notify_error
	.align	16, 0x90
	.type	report_file_notify_error,@function
report_file_notify_error:               # @report_file_notify_error
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
	movq	-16(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	cmpl	$3, %eax
	je	.LBB2_2
# BB#1:                                 # %lor.lhs.false
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB2_3
.LBB2_2:                                # %cond.true
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB2_4
.LBB2_3:                                # %cond.false
	movq	-16(%rbp), %rdi
	callq	list1
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB2_4:                                # %cond.end
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -24(%rbp)
	callq	synchronize_system_messages_locale
	callq	__errno_location
	movl	(%rax), %edi
	callq	strerror
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	build_unibyte_string
	xorl	%edx, %edx
	movq	globals+1344, %rsi
	movq	%rax, %rdi
	callq	code_convert_string_norecord
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Fcons
	movl	$424, %edi              # imm = 0x1A8
	movq	%rax, -48(%rbp)
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	build_string
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	xsignal
.Lfunc_end2:
	.size	report_file_notify_error, .Lfunc_end2-report_file_notify_error
	.cfi_endproc

	.globl	close_file_unwind
	.align	16, 0x90
	.type	close_file_unwind,@function
close_file_unwind:                      # @close_file_unwind
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
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	emacs_close
	movl	%eax, -8(%rbp)          # 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	close_file_unwind, .Lfunc_end3-close_file_unwind
	.cfi_endproc

	.globl	fclose_unwind
	.align	16, 0x90
	.type	fclose_unwind,@function
fclose_unwind:                          # @fclose_unwind
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	fclose
	movl	%eax, -20(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	fclose_unwind, .Lfunc_end4-fclose_unwind
	.cfi_endproc

	.globl	restore_point_unwind
	.align	16, 0x90
	.type	restore_point_unwind,@function
restore_point_unwind:                   # @restore_point_unwind
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
	callq	Fgoto_char
	movq	-8(%rbp), %rdi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	XMARKER
	movq	%rax, %rdi
	callq	unchain_marker
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	restore_point_unwind, .Lfunc_end5-restore_point_unwind
	.cfi_endproc

	.globl	Ffind_file_name_handler
	.align	16, 0x90
	.type	Ffind_file_name_handler,@function
Ffind_file_name_handler:                # @Ffind_file_name_handler
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
	subq	$144, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$-1, -48(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
	movq	-16(%rbp), %rax
	cmpq	globals+1088, %rax
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movq	globals+1080, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB6_3
.LBB6_2:                                # %if.else
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
.LBB6_3:                                # %if.end
	movq	globals+760, %rax
	movq	%rax, -24(%rbp)
.LBB6_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB6_26
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB6_4 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB6_16
# BB#6:                                 # %if.then.8
                                        #   in Loop: Header=BB6_4 Depth=1
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edi
	cmpl	$0, %edi
	jne	.LBB6_8
# BB#7:                                 # %if.then.17
                                        #   in Loop: Header=BB6_4 Depth=1
	movl	$722, %edi              # imm = 0x2D2
	movq	-80(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	movq	%rax, -88(%rbp)
.LBB6_8:                                # %if.end.20
                                        #   in Loop: Header=BB6_4 Depth=1
	movq	-64(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB6_9
	jmp	.LBB6_15
.LBB6_9:                                # %land.lhs.true
                                        #   in Loop: Header=BB6_4 Depth=1
	movq	-64(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	fast_string_match
	movq	%rax, -72(%rbp)
	cmpq	-48(%rbp), %rax
	jle	.LBB6_15
# BB#10:                                # %land.lhs.true.26
                                        #   in Loop: Header=BB6_4 Depth=1
	xorl	%edi, %edi
	movq	-88(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB6_12
# BB#11:                                # %lor.lhs.false
                                        #   in Loop: Header=BB6_4 Depth=1
	movq	-16(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB6_15
.LBB6_12:                               # %if.then.34
                                        #   in Loop: Header=BB6_4 Depth=1
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	Fmemq
	xorl	%edi, %edi
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB6_14
# BB#13:                                # %if.then.42
                                        #   in Loop: Header=BB6_4 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB6_14:                               # %if.end.43
                                        #   in Loop: Header=BB6_4 Depth=1
	jmp	.LBB6_15
.LBB6_15:                               # %if.end.44
                                        #   in Loop: Header=BB6_4 Depth=1
	jmp	.LBB6_16
.LBB6_16:                               # %if.end.45
                                        #   in Loop: Header=BB6_4 Depth=1
	jmp	.LBB6_17
.LBB6_17:                               # %do.body
                                        #   in Loop: Header=BB6_4 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB6_20
# BB#18:                                # %land.lhs.true.49
                                        #   in Loop: Header=BB6_4 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_20
# BB#19:                                # %if.then.53
                                        #   in Loop: Header=BB6_4 Depth=1
	callq	process_quit_flag
	jmp	.LBB6_23
.LBB6_20:                               # %if.else.54
                                        #   in Loop: Header=BB6_4 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB6_22
# BB#21:                                # %if.then.55
                                        #   in Loop: Header=BB6_4 Depth=1
	callq	process_pending_signals
.LBB6_22:                               # %if.end.56
                                        #   in Loop: Header=BB6_4 Depth=1
	jmp	.LBB6_23
.LBB6_23:                               # %if.end.57
                                        #   in Loop: Header=BB6_4 Depth=1
	jmp	.LBB6_24
.LBB6_24:                               # %do.end
                                        #   in Loop: Header=BB6_4 Depth=1
	jmp	.LBB6_25
.LBB6_25:                               # %for.inc
                                        #   in Loop: Header=BB6_4 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB6_4
.LBB6_26:                               # %for.end
	movq	-40(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	Ffind_file_name_handler, .Lfunc_end6-Ffind_file_name_handler
	.cfi_endproc

	.globl	Ffile_name_directory
	.align	16, 0x90
	.type	Ffile_name_directory,@function
Ffile_name_directory:                   # @Ffile_name_directory
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	movl	$418, %edi              # imm = 0x1A2
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB7_5
# BB#1:                                 # %if.then
	movl	$418, %edi              # imm = 0x1A2
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	call2
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB7_2
	jmp	.LBB7_3
.LBB7_2:                                # %cond.true
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB7_4
.LBB7_3:                                # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB7_4:                                # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB7_13
.LBB7_5:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	SSDATA
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	SBYTES
	movq	-88(%rbp), %rdi         # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -48(%rbp)
.LBB7_6:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	cmpq	-40(%rbp), %rdx
	movb	%cl, -89(%rbp)          # 1-byte Spill
	je	.LBB7_8
# BB#7:                                 # %land.rhs
                                        #   in Loop: Header=BB7_6 Depth=1
	movq	-48(%rbp), %rax
	movsbl	-1(%rax), %ecx
	cmpl	$47, %ecx
	sete	%dl
	xorb	$-1, %dl
	movb	%dl, -89(%rbp)          # 1-byte Spill
.LBB7_8:                                # %land.end
                                        #   in Loop: Header=BB7_6 Depth=1
	movb	-89(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB7_9
	jmp	.LBB7_10
.LBB7_9:                                # %while.body
                                        #   in Loop: Header=BB7_6 Depth=1
	movq	-48(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB7_6
.LBB7_10:                               # %while.end
	movq	-48(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB7_12
# BB#11:                                # %if.then.14
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB7_13
.LBB7_12:                               # %if.end.16
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	%rcx, %rax
	movq	-16(%rbp), %rcx
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	STRING_MULTIBYTE
	movq	$-1, %rcx
	movzbl	%al, %edx
	andl	$1, %edx
	movq	$-1, %rsi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-112(%rbp), %r8         # 8-byte Reload
	movl	%edx, -116(%rbp)        # 4-byte Spill
	movq	%r8, %rdx
	movl	-116(%rbp), %r9d        # 4-byte Reload
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movl	%r9d, %ecx
	callq	make_specified_string
	movq	%rax, -8(%rbp)
.LBB7_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	Ffile_name_directory, .Lfunc_end7-Ffile_name_directory
	.cfi_endproc

	.globl	Ffile_name_nondirectory
	.align	16, 0x90
	.type	Ffile_name_nondirectory,@function
Ffile_name_nondirectory:                # @Ffile_name_nondirectory
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	movl	$421, %edi              # imm = 0x1A5
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB8_4
# BB#1:                                 # %if.then
	movl	$421, %edi              # imm = 0x1A5
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	call2
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB8_2
	jmp	.LBB8_3
.LBB8_2:                                # %if.then.6
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB8_10
.LBB8_3:                                # %if.end
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.LBB8_4:                                # %if.end.7
	movq	-16(%rbp), %rdi
	callq	SSDATA
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	SBYTES
	movq	-88(%rbp), %rdi         # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -32(%rbp)
	movq	%rdi, -40(%rbp)
.LBB8_5:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	cmpq	-24(%rbp), %rdx
	movb	%cl, -89(%rbp)          # 1-byte Spill
	je	.LBB8_7
# BB#6:                                 # %land.rhs
                                        #   in Loop: Header=BB8_5 Depth=1
	movq	-32(%rbp), %rax
	movsbl	-1(%rax), %ecx
	cmpl	$47, %ecx
	sete	%dl
	xorb	$-1, %dl
	movb	%dl, -89(%rbp)          # 1-byte Spill
.LBB8_7:                                # %land.end
                                        #   in Loop: Header=BB8_5 Depth=1
	movb	-89(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB8_8
	jmp	.LBB8_9
.LBB8_8:                                # %while.body
                                        #   in Loop: Header=BB8_5 Depth=1
	movq	-32(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB8_5
.LBB8_9:                                # %while.end
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
	movq	-16(%rbp), %rcx
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	STRING_MULTIBYTE
	movq	$-1, %rcx
	movzbl	%al, %edx
	andl	$1, %edx
	movq	$-1, %rsi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-112(%rbp), %r8         # 8-byte Reload
	movl	%edx, -116(%rbp)        # 4-byte Spill
	movq	%r8, %rdx
	movl	-116(%rbp), %r9d        # 4-byte Reload
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movl	%r9d, %ecx
	callq	make_specified_string
	movq	%rax, -8(%rbp)
.LBB8_10:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	Ffile_name_nondirectory, .Lfunc_end8-Ffile_name_nondirectory
	.cfi_endproc

	.globl	Funhandled_file_name_directory
	.align	16, 0x90
	.type	Funhandled_file_name_directory,@function
Funhandled_file_name_directory:         # @Funhandled_file_name_directory
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
	subq	$64, %rsp
	movl	$970, %eax              # imm = 0x3CA
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB9_5
# BB#1:                                 # %if.then
	movl	$970, %edi              # imm = 0x3CA
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	call2
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB9_2
	jmp	.LBB9_3
.LBB9_2:                                # %cond.true
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB9_4
.LBB9_3:                                # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB9_4:                                # %cond.end
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB9_6
.LBB9_5:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	Ffile_name_as_directory
	movq	%rax, -8(%rbp)
.LBB9_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	Funhandled_file_name_directory, .Lfunc_end9-Funhandled_file_name_directory
	.cfi_endproc

	.globl	Ffile_name_as_directory
	.align	16, 0x90
	.type	Ffile_name_as_directory,@function
Ffile_name_as_directory:                # @Ffile_name_as_directory
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
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movq	$16384, -56(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -64(%rbp)
	movb	$0, -65(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	movl	$416, %edi              # imm = 0x1A0
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB10_4
# BB#1:                                 # %if.then
	movl	$416, %edi              # imm = 0x1A0
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	call2
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB10_2
	jmp	.LBB10_3
.LBB10_2:                               # %if.then.7
	movq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB10_12
.LBB10_3:                               # %if.end
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.LBB10_4:                               # %if.end.8
	movq	-16(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	addq	$1, %rax
	cmpq	-56(%rbp), %rax
	jg	.LBB10_6
# BB#5:                                 # %cond.true
	movq	-16(%rbp), %rdi
	callq	SBYTES
	addq	$3, %rax
	movq	-56(%rbp), %rdi
	subq	%rax, %rdi
	movq	%rdi, -56(%rbp)
	movq	-16(%rbp), %rdi
	callq	SBYTES
	addq	$18, %rax
	andq	$-16, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	jmp	.LBB10_7
.LBB10_6:                               # %cond.false
	movb	$1, -65(%rbp)
	movq	-16(%rbp), %rdi
	callq	SBYTES
	addq	$2, %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	record_xmalloc
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB10_7:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SSDATA
	movq	-16(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-16(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	STRING_MULTIBYTE
	movzbl	%al, %ecx
	andl	$1, %ecx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	-136(%rbp), %rdx        # 8-byte Reload
	callq	file_name_as_directory
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	callq	STRING_MULTIBYTE
	movq	$-1, %rdx
	movzbl	%al, %ecx
	andl	$1, %ecx
	movq	$-1, %rsi
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	-152(%rbp), %r8         # 8-byte Reload
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	callq	make_specified_string
	movq	%rax, -48(%rbp)
# BB#8:                                 # %do.body
	testb	$1, -65(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.28
	xorl	%edi, %edi
	movb	$0, -65(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB10_10:                              # %if.end.31
	jmp	.LBB10_11
.LBB10_11:                              # %do.end
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB10_12:                              # %return
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	Ffile_name_as_directory, .Lfunc_end10-Ffile_name_as_directory
	.cfi_endproc

	.align	16, 0x90
	.type	file_name_as_directory,@function
file_name_as_directory:                 # @file_name_as_directory
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
	movb	%cl, %al
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	andb	$1, %al
	movb	%al, -33(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movb	$46, (%rax)
	movq	-16(%rbp), %rax
	movb	$47, 1(%rax)
	movq	-16(%rbp), %rax
	movb	$0, 2(%rax)
	movq	$2, -8(%rbp)
	jmp	.LBB11_5
.LBB11_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	memcpy
	movq	-32(%rbp), %rdx
	subq	$1, %rdx
	movq	-16(%rbp), %rsi
	movsbl	(%rsi,%rdx), %eax
	cmpl	$47, %eax
	je	.LBB11_4
# BB#3:                                 # %if.then.6
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rcx
	movb	$47, (%rcx,%rax)
.LBB11_4:                               # %if.end.8
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	$0, (%rcx,%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB11_5:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	file_name_as_directory, .Lfunc_end11-file_name_as_directory
	.cfi_endproc

	.globl	Fdirectory_file_name
	.align	16, 0x90
	.type	Fdirectory_file_name,@function
Fdirectory_file_name:                   # @Fdirectory_file_name
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
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movq	$16384, -56(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -64(%rbp)
	movb	$0, -65(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	movl	$340, %edi              # imm = 0x154
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB12_4
# BB#1:                                 # %if.then
	movl	$340, %edi              # imm = 0x154
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	call2
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB12_2
	jmp	.LBB12_3
.LBB12_2:                               # %if.then.7
	movq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB12_12
.LBB12_3:                               # %if.end
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.LBB12_4:                               # %if.end.8
	movq	-16(%rbp), %rdi
	callq	SBYTES
	addq	$1, %rax
	cmpq	-56(%rbp), %rax
	jg	.LBB12_6
# BB#5:                                 # %cond.true
	movq	-16(%rbp), %rdi
	callq	SBYTES
	incq	%rax
	movq	-56(%rbp), %rdi
	subq	%rax, %rdi
	movq	%rdi, -56(%rbp)
	movq	-16(%rbp), %rdi
	callq	SBYTES
	addq	$16, %rax
	andq	$-16, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	jmp	.LBB12_7
.LBB12_6:                               # %cond.false
	movb	$1, -65(%rbp)
	movq	-16(%rbp), %rdi
	callq	SBYTES
	addq	$1, %rax
	movq	%rax, %rdi
	callq	record_xmalloc
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB12_7:                               # %cond.end
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SSDATA
	movq	-16(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-16(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	STRING_MULTIBYTE
	movzbl	%al, %ecx
	andl	$1, %ecx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	-136(%rbp), %rdx        # 8-byte Reload
	callq	directory_file_name
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	callq	STRING_MULTIBYTE
	movq	$-1, %rdx
	movzbl	%al, %ecx
	andl	$1, %ecx
	movq	$-1, %rsi
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	-152(%rbp), %r8         # 8-byte Reload
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	callq	make_specified_string
	movq	%rax, -48(%rbp)
# BB#8:                                 # %do.body
	testb	$1, -65(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.24
	xorl	%edi, %edi
	movb	$0, -65(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB12_10:                              # %if.end.27
	jmp	.LBB12_11
.LBB12_11:                              # %do.end
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB12_12:                              # %return
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	Fdirectory_file_name, .Lfunc_end12-Fdirectory_file_name
	.cfi_endproc

	.align	16, 0x90
	.type	directory_file_name,@function
directory_file_name:                    # @directory_file_name
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
	movb	%cl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	andb	$1, %al
	movb	%al, -25(%rbp)
.LBB13_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$1, -24(%rbp)
	movb	%cl, -26(%rbp)          # 1-byte Spill
	jle	.LBB13_6
# BB#2:                                 # %land.lhs.true
                                        #   in Loop: Header=BB13_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	subq	$1, %rdx
	movq	-16(%rbp), %rsi
	movsbl	(%rsi,%rdx), %eax
	cmpl	$47, %eax
	movb	%cl, -26(%rbp)          # 1-byte Spill
	jne	.LBB13_6
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB13_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$2, -24(%rbp)
	movb	%cl, -27(%rbp)          # 1-byte Spill
	jne	.LBB13_5
# BB#4:                                 # %land.rhs.5
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$47, %ecx
	sete	%dl
	movb	%dl, -27(%rbp)          # 1-byte Spill
.LBB13_5:                               # %land.end
                                        #   in Loop: Header=BB13_1 Depth=1
	movb	-27(%rbp), %al          # 1-byte Reload
	xorb	$-1, %al
	movb	%al, -26(%rbp)          # 1-byte Spill
.LBB13_6:                               # %land.end.10
                                        #   in Loop: Header=BB13_1 Depth=1
	movb	-26(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB13_7
	jmp	.LBB13_8
.LBB13_7:                               # %while.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB13_1
.LBB13_8:                               # %while.end
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	memcpy
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movb	$0, (%rsi,%rdx)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	directory_file_name, .Lfunc_end13-directory_file_name
	.cfi_endproc

	.globl	make_temp_name
	.align	16, 0x90
	.type	make_temp_name,@function
make_temp_name:                         # @make_temp_name
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
	subq	$128, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
	callq	getpid
	movslq	%eax, %rdi
	movq	%rdi, -48(%rbp)
	testb	$1, -9(%rbp)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	andq	$63, %rax
	movb	make_temp_name_tbl(,%rax), %cl
	movb	%cl, -96(%rbp)
	movq	-48(%rbp), %rax
	sarq	$6, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	andq	$63, %rax
	movb	make_temp_name_tbl(,%rax), %cl
	movb	%cl, -95(%rbp)
	movq	-48(%rbp), %rax
	sarq	$6, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	andq	$63, %rax
	movb	make_temp_name_tbl(,%rax), %cl
	movb	%cl, -94(%rbp)
	movq	-48(%rbp), %rax
	sarq	$6, %rax
	movq	%rax, -48(%rbp)
	movl	$3, -100(%rbp)
	jmp	.LBB14_3
.LBB14_2:                               # %if.else
	movabsq	$.L.str.1, %rsi
	leaq	-96(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movb	$0, %al
	callq	sprintf
	movl	%eax, -100(%rbp)
.LBB14_3:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	SBYTES
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	addq	$3, %rax
	movslq	-100(%rbp), %rdi
	addq	%rdi, %rax
	movq	%rax, %rdi
	callq	make_uninit_string
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	SSDATA
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SSDATA
	leaq	-96(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	memcpy
	movq	-64(%rbp), %rax
	addq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-120(%rbp), %rax        # 8-byte Reload
	movslq	-100(%rbp), %rdx
	movq	%rax, %rsi
	callq	memcpy
	movl	-100(%rbp), %r8d
	movq	-56(%rbp), %rax
	movslq	%r8d, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	cmpl	$0, make_temp_name_count_initialized_p
	jne	.LBB14_5
# BB#4:                                 # %if.then.21
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	time
	movl	%eax, %ecx
	movl	%ecx, make_temp_name_count
	movl	$1, make_temp_name_count_initialized_p
.LBB14_5:                               # %if.end.24
	jmp	.LBB14_6
.LBB14_6:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$225307, %eax           # imm = 0x3701B
	movl	make_temp_name_count, %ecx
	movl	%ecx, -104(%rbp)
	movl	-104(%rbp), %ecx
	andl	$63, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movb	make_temp_name_tbl(,%rdx), %sil
	movq	-56(%rbp), %rdx
	movb	%sil, (%rdx)
	movl	-104(%rbp), %ecx
	shrl	$6, %ecx
	movl	%ecx, -104(%rbp)
	movl	-104(%rbp), %ecx
	andl	$63, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movb	make_temp_name_tbl(,%rdx), %sil
	movq	-56(%rbp), %rdx
	movb	%sil, 1(%rdx)
	movl	-104(%rbp), %ecx
	shrl	$6, %ecx
	movl	%ecx, -104(%rbp)
	movl	-104(%rbp), %ecx
	andl	$63, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movb	make_temp_name_tbl(,%rdx), %sil
	movq	-56(%rbp), %rdx
	movb	%sil, 2(%rdx)
	movl	-104(%rbp), %ecx
	shrl	$6, %ecx
	movl	%ecx, -104(%rbp)
	movl	make_temp_name_count, %ecx
	addl	$25229, %ecx            # imm = 0x628D
	movl	%ecx, make_temp_name_count
	movl	make_temp_name_count, %ecx
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-124(%rbp), %ecx        # 4-byte Reload
	divl	%ecx
	movl	%edx, make_temp_name_count
	movq	-64(%rbp), %rdi
	callq	check_existing
	testb	$1, %al
	jne	.LBB14_10
# BB#7:                                 # %if.then.41
	callq	__errno_location
	cmpl	$2, (%rax)
	jne	.LBB14_9
# BB#8:                                 # %if.then.44
	movq	-24(%rbp), %rdi
	callq	decode_file_name
	addq	$128, %rsp
	popq	%rbp
	retq
.LBB14_9:                               # %if.else.46
	movabsq	$.L.str.2, %rdi
	movq	-8(%rbp), %rsi
	callq	report_file_error
.LBB14_10:                              # %if.end.47
                                        #   in Loop: Header=BB14_6 Depth=1
	jmp	.LBB14_6
.Lfunc_end14:
	.size	make_temp_name, .Lfunc_end14-make_temp_name
	.cfi_endproc

	.align	16, 0x90
	.type	check_existing,@function
check_existing:                         # @check_existing
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
	movl	$4294967196, %eax       # imm = 0xFFFFFF9C
	xorl	%edx, %edx
	movl	$512, %ecx              # imm = 0x200
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movl	%eax, %edi
	callq	faccessat
	cmpl	$0, %eax
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	check_existing, .Lfunc_end15-check_existing
	.cfi_endproc

	.globl	Fmake_temp_name
	.align	16, 0x90
	.type	Fmake_temp_name,@function
Fmake_temp_name:                        # @Fmake_temp_name
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
	xorl	%esi, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	make_temp_name
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	Fmake_temp_name, .Lfunc_end16-Fmake_temp_name
	.cfi_endproc

	.globl	Fexpand_file_name
	.align	16, 0x90
	.type	Fexpand_file_name,@function
Fexpand_file_name:                      # @Fexpand_file_name
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
	subq	$528, %rsp              # imm = 0x210
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	$16384, -144(%rbp)      # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -152(%rbp)
	movb	$0, -153(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	movl	$389, %edi              # imm = 0x185
	movq	-16(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	xorl	%edi, %edi
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB17_4
# BB#1:                                 # %if.then
	movl	$389, %edi              # imm = 0x185
	movq	-104(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	call3
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB17_2
	jmp	.LBB17_3
.LBB17_2:                               # %if.then.7
	movq	-120(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB17_152
.LBB17_3:                               # %if.end
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.LBB17_4:                               # %if.end.8
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB17_6
# BB#5:                                 # %if.then.11
	movq	current_buffer, %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB17_6:                               # %if.end.12
	movq	-24(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB17_8
# BB#7:                                 # %if.then.14
	movabsq	$.L.str.3, %rdi
	callq	build_string
	movq	%rax, -24(%rbp)
.LBB17_8:                               # %if.end.16
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB17_14
# BB#9:                                 # %if.then.19
	movl	$389, %edi              # imm = 0x185
	movq	-24(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	xorl	%edi, %edi
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB17_13
# BB#10:                                # %if.then.24
	movl	$389, %edi              # imm = 0x185
	movq	-104(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	call3
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB17_11
	jmp	.LBB17_12
.LBB17_11:                              # %if.then.28
	movq	-120(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB17_152
.LBB17_12:                              # %if.end.29
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.LBB17_13:                              # %if.end.30
	jmp	.LBB17_14
.LBB17_14:                              # %if.end.31
	movq	-24(%rbp), %rdi
	callq	SSDATA
	xorl	%edi, %edi
	movq	%rax, -168(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-312(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB17_18
# BB#15:                                # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB17_18
# BB#16:                                # %land.lhs.true.36
	movq	-168(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$47, %ecx
	je	.LBB17_18
# BB#17:                                # %if.then.39
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fexpand_file_name
	movq	%rax, -24(%rbp)
.LBB17_18:                              # %if.end.42
	movq	-16(%rbp), %rdi
	callq	STRING_MULTIBYTE
	andb	$1, %al
	movb	%al, -121(%rbp)
	movb	-121(%rbp), %al
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-24(%rbp), %rdi
	movl	%ecx, -324(%rbp)        # 4-byte Spill
	callq	STRING_MULTIBYTE
	andb	$1, %al
	movzbl	%al, %ecx
	movl	-324(%rbp), %edx        # 4-byte Reload
	cmpl	%ecx, %edx
	je	.LBB17_31
# BB#19:                                # %if.then.49
	testb	$1, -121(%rbp)
	je	.LBB17_29
# BB#20:                                # %if.then.51
	movq	-16(%rbp), %rdi
	callq	SDATA
	movq	%rax, -176(%rbp)
.LBB17_21:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-176(%rbp), %rdx
	movzbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -325(%rbp)         # 1-byte Spill
	je	.LBB17_23
# BB#22:                                # %land.rhs
                                        #   in Loop: Header=BB17_21 Depth=1
	movq	-176(%rbp), %rax
	movzbl	(%rax), %ecx
	addl	$0, %ecx
	cmpl	$128, %ecx
	setb	%dl
	movb	%dl, -325(%rbp)         # 1-byte Spill
.LBB17_23:                              # %land.end
                                        #   in Loop: Header=BB17_21 Depth=1
	movb	-325(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB17_24
	jmp	.LBB17_25
.LBB17_24:                              # %while.body
                                        #   in Loop: Header=BB17_21 Depth=1
	movq	-176(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -176(%rbp)
	jmp	.LBB17_21
.LBB17_25:                              # %while.end
	movq	-176(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB17_27
# BB#26:                                # %if.then.61
	movq	-16(%rbp), %rdi
	callq	SSDATA
	movq	-16(%rbp), %rdi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	make_unibyte_string
	movq	%rax, -16(%rbp)
	movb	$0, -121(%rbp)
	jmp	.LBB17_28
.LBB17_27:                              # %if.else
	movq	-24(%rbp), %rdi
	callq	string_to_multibyte
	movq	%rax, -24(%rbp)
.LBB17_28:                              # %if.end.66
	jmp	.LBB17_30
.LBB17_29:                              # %if.else.67
	movq	-16(%rbp), %rdi
	callq	string_to_multibyte
	movq	%rax, -16(%rbp)
	movb	$1, -121(%rbp)
.LBB17_30:                              # %if.end.69
	jmp	.LBB17_31
.LBB17_31:                              # %if.end.70
	jmp	.LBB17_32
.LBB17_32:                              # %do.body
	movq	-16(%rbp), %rdi
	callq	SBYTES
	addq	$1, %rax
	cmpq	-144(%rbp), %rax
	jg	.LBB17_34
# BB#33:                                # %cond.true
	movq	-16(%rbp), %rdi
	callq	SBYTES
	incq	%rax
	movq	-144(%rbp), %rdi
	subq	%rax, %rdi
	movq	%rdi, -144(%rbp)
	movq	-16(%rbp), %rdi
	callq	SBYTES
	addq	$16, %rax
	andq	$-16, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	jmp	.LBB17_35
.LBB17_34:                              # %cond.false
	movb	$1, -153(%rbp)
	movq	-16(%rbp), %rdi
	callq	SBYTES
	addq	$1, %rax
	movq	%rax, %rdi
	callq	record_xmalloc
	movq	%rax, -344(%rbp)        # 8-byte Spill
.LBB17_35:                              # %cond.end
	movq	-344(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SDATA
	movq	-16(%rbp), %rdi
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	SBYTES
	addq	$1, %rax
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	-360(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	memcpy
# BB#36:                                # %do.end
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-368(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -40(%rbp)
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$47, %ecx
	jne	.LBB17_63
# BB#37:                                # %if.then.90
	movb	$0, -177(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -192(%rbp)
.LBB17_38:                              # %while.cond.92
                                        # =>This Inner Loop Header: Depth=1
	movq	-192(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB17_54
# BB#39:                                # %while.body.94
                                        #   in Loop: Header=BB17_38 Depth=1
	movq	-192(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$47, %ecx
	jne	.LBB17_47
# BB#40:                                # %land.lhs.true.99
                                        #   in Loop: Header=BB17_38 Depth=1
	movq	-192(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$46, %ecx
	jne	.LBB17_47
# BB#41:                                # %land.lhs.true.104
                                        #   in Loop: Header=BB17_38 Depth=1
	movq	-192(%rbp), %rax
	movsbl	2(%rax), %ecx
	cmpl	$47, %ecx
	je	.LBB17_46
# BB#42:                                # %lor.lhs.false
                                        #   in Loop: Header=BB17_38 Depth=1
	movq	-192(%rbp), %rax
	movsbl	2(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB17_46
# BB#43:                                # %lor.lhs.false.113
                                        #   in Loop: Header=BB17_38 Depth=1
	movq	-192(%rbp), %rax
	movsbl	2(%rax), %ecx
	cmpl	$46, %ecx
	jne	.LBB17_47
# BB#44:                                # %land.lhs.true.118
                                        #   in Loop: Header=BB17_38 Depth=1
	movq	-192(%rbp), %rax
	movsbl	3(%rax), %ecx
	cmpl	$47, %ecx
	je	.LBB17_46
# BB#45:                                # %lor.lhs.false.123
                                        #   in Loop: Header=BB17_38 Depth=1
	movq	-192(%rbp), %rax
	movsbl	3(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB17_47
.LBB17_46:                              # %if.then.128
                                        #   in Loop: Header=BB17_38 Depth=1
	movb	$1, -177(%rbp)
	jmp	.LBB17_53
.LBB17_47:                              # %if.else.129
                                        #   in Loop: Header=BB17_38 Depth=1
	movq	-192(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$47, %ecx
	jne	.LBB17_52
# BB#48:                                # %land.lhs.true.134
                                        #   in Loop: Header=BB17_38 Depth=1
	movq	-192(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$47, %ecx
	jne	.LBB17_52
# BB#49:                                # %land.lhs.true.139
                                        #   in Loop: Header=BB17_38 Depth=1
	movq	-192(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB17_51
# BB#50:                                # %lor.lhs.false.142
                                        #   in Loop: Header=BB17_38 Depth=1
	movq	-192(%rbp), %rax
	movsbl	2(%rax), %ecx
	cmpl	$47, %ecx
	jne	.LBB17_52
.LBB17_51:                              # %if.then.147
                                        #   in Loop: Header=BB17_38 Depth=1
	movb	$1, -177(%rbp)
.LBB17_52:                              # %if.end.148
                                        #   in Loop: Header=BB17_38 Depth=1
	jmp	.LBB17_53
.LBB17_53:                              # %if.end.149
                                        #   in Loop: Header=BB17_38 Depth=1
	movq	-192(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -192(%rbp)
	jmp	.LBB17_38
.LBB17_54:                              # %while.end.151
	testb	$1, -177(%rbp)
	jne	.LBB17_62
# BB#55:                                # %if.then.153
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SSDATA
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB17_57
# BB#56:                                # %if.then.158
	movq	$-1, %rsi
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
	movb	-121(%rbp), %dl
	andb	$1, %dl
	movb	%dl, -377(%rbp)         # 1-byte Spill
	movq	%rax, %rdx
	movb	-377(%rbp), %r8b        # 1-byte Reload
	movzbl	%r8b, %ecx
	callq	make_specified_string
	movq	%rax, -16(%rbp)
.LBB17_57:                              # %if.end.161
	jmp	.LBB17_58
.LBB17_58:                              # %do.body.162
	testb	$1, -153(%rbp)
	je	.LBB17_60
# BB#59:                                # %if.then.164
	xorl	%edi, %edi
	movb	$0, -153(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -400(%rbp)        # 8-byte Spill
.LBB17_60:                              # %if.end.167
	jmp	.LBB17_61
.LBB17_61:                              # %do.end.168
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB17_152
.LBB17_62:                              # %if.end.169
	jmp	.LBB17_63
.LBB17_63:                              # %if.end.170
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$126, %ecx
	jne	.LBB17_88
# BB#64:                                # %if.then.175
	movq	-32(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$47, %ecx
	je	.LBB17_66
# BB#65:                                # %lor.lhs.false.180
	movq	-32(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB17_72
.LBB17_66:                              # %if.then.185
	movabsq	$.L.str.4, %rdi
	callq	egetenv
	movq	%rax, -48(%rbp)
	cmpq	$0, %rax
	jne	.LBB17_68
# BB#67:                                # %if.then.188
	movabsq	$.L.str.5, %rax
	movq	%rax, -56(%rbp)
	movq	%rax, -48(%rbp)
.LBB17_68:                              # %if.end.189
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rdi
	callq	build_string
	movq	%rax, -200(%rbp)
	movq	-48(%rbp), %rax
	movq	-200(%rbp), %rdi
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-408(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -56(%rbp)
	testb	$1, -121(%rbp)
	je	.LBB17_71
# BB#69:                                # %land.lhs.true.196
	movq	-200(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB17_71
# BB#70:                                # %if.then.198
	movq	-200(%rbp), %rdi
	callq	decode_file_name
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rdi
	callq	SSDATA
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-136(%rbp), %rdi
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-416(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -56(%rbp)
.LBB17_71:                              # %if.end.203
	jmp	.LBB17_87
.LBB17_72:                              # %if.else.204
	movq	-32(%rbp), %rax
	movq	%rax, -216(%rbp)
.LBB17_73:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-216(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -417(%rbp)         # 1-byte Spill
	je	.LBB17_75
# BB#74:                                # %land.rhs.209
                                        #   in Loop: Header=BB17_73 Depth=1
	movq	-216(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$47, %ecx
	sete	%dl
	xorb	$-1, %dl
	movb	%dl, -417(%rbp)         # 1-byte Spill
.LBB17_75:                              # %land.end.213
                                        #   in Loop: Header=BB17_73 Depth=1
	movb	-417(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB17_76
	jmp	.LBB17_78
.LBB17_76:                              # %for.body
                                        #   in Loop: Header=BB17_73 Depth=1
	jmp	.LBB17_77
.LBB17_77:                              # %for.inc
                                        #   in Loop: Header=BB17_73 Depth=1
	movq	-216(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -216(%rbp)
	jmp	.LBB17_73
.LBB17_78:                              # %for.end
	movq	-216(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	cmpq	-144(%rbp), %rax
	jg	.LBB17_80
# BB#79:                                # %cond.true.221
	movq	-216(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
	incq	%rax
	movq	-144(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -144(%rbp)
	movq	-216(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
	addq	$16, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	jmp	.LBB17_81
.LBB17_80:                              # %cond.false.231
	movb	$1, -153(%rbp)
	movq	-216(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	record_xmalloc
	movq	%rax, -432(%rbp)        # 8-byte Spill
.LBB17_81:                              # %cond.end.237
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-216(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, %rdx
	callq	memcpy
	movq	-216(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
	movq	-208(%rbp), %rcx
	movb	$0, (%rcx,%rax)
	callq	block_input
	movq	-208(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	getpwnam
	movq	%rax, -80(%rbp)
	callq	unblock_input
	cmpq	$0, -80(%rbp)
	je	.LBB17_86
# BB#82:                                # %if.then.249
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	strlen
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	make_unibyte_string
	movq	%rax, -224(%rbp)
	movq	-48(%rbp), %rax
	movq	-224(%rbp), %rdi
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-448(%rbp), %rsi        # 8-byte Reload
	addq	%rax, %rsi
	movq	%rsi, -56(%rbp)
	testb	$1, -121(%rbp)
	je	.LBB17_85
# BB#83:                                # %land.lhs.true.257
	movq	-224(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB17_85
# BB#84:                                # %if.then.259
	movq	-224(%rbp), %rdi
	callq	decode_file_name
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rdi
	callq	SSDATA
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-136(%rbp), %rdi
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-456(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -56(%rbp)
.LBB17_85:                              # %if.end.264
	movq	-216(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB17_86:                              # %if.end.265
	jmp	.LBB17_87
.LBB17_87:                              # %if.end.266
	jmp	.LBB17_88
.LBB17_88:                              # %if.end.267
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$47, %ecx
	je	.LBB17_91
# BB#89:                                # %land.lhs.true.272
	cmpq	$0, -48(%rbp)
	jne	.LBB17_91
# BB#90:                                # %if.then.274
	movq	-24(%rbp), %rdi
	callq	SSDATA
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-464(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -56(%rbp)
.LBB17_91:                              # %if.end.278
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -88(%rbp)
.LBB17_92:                              # %while.cond.282
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$1, -88(%rbp)
	movb	%cl, -465(%rbp)         # 1-byte Spill
	jle	.LBB17_97
# BB#93:                                # %land.lhs.true.285
                                        #   in Loop: Header=BB17_92 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-88(%rbp), %rdx
	subq	$1, %rdx
	movq	-48(%rbp), %rsi
	movsbl	(%rsi,%rdx), %eax
	cmpl	$47, %eax
	movb	%cl, -465(%rbp)         # 1-byte Spill
	jne	.LBB17_97
# BB#94:                                # %land.rhs.291
                                        #   in Loop: Header=BB17_92 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$2, -88(%rbp)
	movb	%cl, -466(%rbp)         # 1-byte Spill
	jne	.LBB17_96
# BB#95:                                # %land.rhs.294
                                        #   in Loop: Header=BB17_92 Depth=1
	movq	-48(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$47, %ecx
	sete	%dl
	movb	%dl, -466(%rbp)         # 1-byte Spill
.LBB17_96:                              # %land.end.299
                                        #   in Loop: Header=BB17_92 Depth=1
	movb	-466(%rbp), %al         # 1-byte Reload
	xorb	$-1, %al
	movb	%al, -465(%rbp)         # 1-byte Spill
.LBB17_97:                              # %land.end.301
                                        #   in Loop: Header=BB17_92 Depth=1
	movb	-465(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB17_98
	jmp	.LBB17_99
.LBB17_98:                              # %while.body.302
                                        #   in Loop: Header=BB17_92 Depth=1
	movq	-88(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB17_92
.LBB17_99:                              # %while.end.303
	movq	-88(%rbp), %rax
	addq	$2, %rax
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpq	-144(%rbp), %rax
	jg	.LBB17_101
# BB#100:                               # %cond.true.312
	movq	-72(%rbp), %rax
	movq	-144(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -144(%rbp)
	movq	-72(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -480(%rbp)        # 8-byte Spill
	jmp	.LBB17_102
.LBB17_101:                             # %cond.false.314
	movb	$1, -153(%rbp)
	movq	-72(%rbp), %rdi
	callq	record_xmalloc
	movq	%rax, -480(%rbp)        # 8-byte Spill
.LBB17_102:                             # %cond.end.316
	movq	-480(%rbp), %rax        # 8-byte Reload
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movb	$0, (%rax)
	movq	$0, -96(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB17_108
# BB#103:                               # %if.then.319
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB17_105
# BB#104:                               # %lor.lhs.false.324
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$47, %ecx
	jne	.LBB17_106
.LBB17_105:                             # %if.then.329
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	memcpy
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movb	$0, (%rsi,%rdx)
	movq	-88(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	jmp	.LBB17_107
.LBB17_106:                             # %if.else.331
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-88(%rbp), %rdx
	movb	-121(%rbp), %al
	andb	$1, %al
	movzbl	%al, %ecx
	callq	file_name_as_directory
	movq	%rax, -96(%rbp)
.LBB17_107:                             # %if.end.334
	jmp	.LBB17_108
.LBB17_108:                             # %if.end.335
	movq	-64(%rbp), %rax
	addq	-96(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	subq	%rdx, %rcx
	addq	$1, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	memcpy
	movq	-64(%rbp), %rax
	movq	%rax, -232(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -240(%rbp)
.LBB17_109:                             # %while.cond.343
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_125 Depth 2
	movq	-232(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB17_143
# BB#110:                               # %while.body.345
                                        #   in Loop: Header=BB17_109 Depth=1
	movq	-232(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$47, %ecx
	je	.LBB17_112
# BB#111:                               # %if.then.349
                                        #   in Loop: Header=BB17_109 Depth=1
	movq	-232(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -232(%rbp)
	movb	(%rax), %dl
	movq	-240(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -240(%rbp)
	movb	%dl, (%rax)
	jmp	.LBB17_142
.LBB17_112:                             # %if.else.352
                                        #   in Loop: Header=BB17_109 Depth=1
	movq	-232(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$46, %ecx
	jne	.LBB17_119
# BB#113:                               # %land.lhs.true.357
                                        #   in Loop: Header=BB17_109 Depth=1
	movq	-232(%rbp), %rax
	movsbl	2(%rax), %ecx
	cmpl	$47, %ecx
	je	.LBB17_115
# BB#114:                               # %lor.lhs.false.362
                                        #   in Loop: Header=BB17_109 Depth=1
	movq	-232(%rbp), %rax
	movsbl	2(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB17_119
.LBB17_115:                             # %if.then.367
                                        #   in Loop: Header=BB17_109 Depth=1
	movq	-240(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB17_118
# BB#116:                               # %land.lhs.true.370
                                        #   in Loop: Header=BB17_109 Depth=1
	movq	-232(%rbp), %rax
	movsbl	2(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB17_118
# BB#117:                               # %if.then.375
                                        #   in Loop: Header=BB17_109 Depth=1
	movq	-232(%rbp), %rax
	movb	(%rax), %cl
	movq	-240(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -240(%rbp)
	movb	%cl, (%rax)
.LBB17_118:                             # %if.end.377
                                        #   in Loop: Header=BB17_109 Depth=1
	movq	-232(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -232(%rbp)
	jmp	.LBB17_141
.LBB17_119:                             # %if.else.379
                                        #   in Loop: Header=BB17_109 Depth=1
	movq	-232(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$46, %ecx
	jne	.LBB17_134
# BB#120:                               # %land.lhs.true.384
                                        #   in Loop: Header=BB17_109 Depth=1
	movq	-232(%rbp), %rax
	movsbl	2(%rax), %ecx
	cmpl	$46, %ecx
	jne	.LBB17_134
# BB#121:                               # %land.lhs.true.389
                                        #   in Loop: Header=BB17_109 Depth=1
	movq	-240(%rbp), %rax
	cmpq	-64(%rbp), %rax
	je	.LBB17_134
# BB#122:                               # %land.lhs.true.392
                                        #   in Loop: Header=BB17_109 Depth=1
	movq	-232(%rbp), %rax
	movsbl	3(%rax), %ecx
	cmpl	$47, %ecx
	je	.LBB17_124
# BB#123:                               # %lor.lhs.false.397
                                        #   in Loop: Header=BB17_109 Depth=1
	movq	-232(%rbp), %rax
	movsbl	3(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB17_134
.LBB17_124:                             # %if.then.402
                                        #   in Loop: Header=BB17_109 Depth=1
	jmp	.LBB17_125
.LBB17_125:                             # %while.cond.403
                                        #   Parent Loop BB17_109 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-240(%rbp), %rdx
	cmpq	-64(%rbp), %rdx
	movb	%cl, -481(%rbp)         # 1-byte Spill
	je	.LBB17_127
# BB#126:                               # %land.rhs.406
                                        #   in Loop: Header=BB17_125 Depth=2
	movq	-240(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$47, %ecx
	sete	%dl
	xorb	$-1, %dl
	movb	%dl, -481(%rbp)         # 1-byte Spill
.LBB17_127:                             # %land.end.412
                                        #   in Loop: Header=BB17_125 Depth=2
	movb	-481(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB17_128
	jmp	.LBB17_129
.LBB17_128:                             # %while.body.413
                                        #   in Loop: Header=BB17_125 Depth=2
	jmp	.LBB17_125
.LBB17_129:                             # %while.end.414
                                        #   in Loop: Header=BB17_109 Depth=1
	movq	-240(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB17_133
# BB#130:                               # %land.lhs.true.417
                                        #   in Loop: Header=BB17_109 Depth=1
	movq	-240(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$47, %ecx
	jne	.LBB17_133
# BB#131:                               # %land.lhs.true.421
                                        #   in Loop: Header=BB17_109 Depth=1
	movq	-232(%rbp), %rax
	movsbl	3(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB17_133
# BB#132:                               # %if.then.426
                                        #   in Loop: Header=BB17_109 Depth=1
	movq	-240(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -240(%rbp)
.LBB17_133:                             # %if.end.428
                                        #   in Loop: Header=BB17_109 Depth=1
	movq	-232(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -232(%rbp)
	jmp	.LBB17_140
.LBB17_134:                             # %if.else.430
                                        #   in Loop: Header=BB17_109 Depth=1
	movq	-232(%rbp), %rax
	movsbl	1(%rax), %ecx
	cmpl	$47, %ecx
	jne	.LBB17_138
# BB#135:                               # %land.lhs.true.435
                                        #   in Loop: Header=BB17_109 Depth=1
	movq	-232(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB17_137
# BB#136:                               # %lor.lhs.false.438
                                        #   in Loop: Header=BB17_109 Depth=1
	movq	-232(%rbp), %rax
	movsbl	2(%rax), %ecx
	cmpl	$47, %ecx
	jne	.LBB17_138
.LBB17_137:                             # %if.then.443
                                        #   in Loop: Header=BB17_109 Depth=1
	movq	-232(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -232(%rbp)
	jmp	.LBB17_139
.LBB17_138:                             # %if.else.445
                                        #   in Loop: Header=BB17_109 Depth=1
	movq	-232(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -232(%rbp)
	movb	(%rax), %dl
	movq	-240(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -240(%rbp)
	movb	%dl, (%rax)
.LBB17_139:                             # %if.end.448
                                        #   in Loop: Header=BB17_109 Depth=1
	jmp	.LBB17_140
.LBB17_140:                             # %if.end.449
                                        #   in Loop: Header=BB17_109 Depth=1
	jmp	.LBB17_141
.LBB17_141:                             # %if.end.450
                                        #   in Loop: Header=BB17_109 Depth=1
	jmp	.LBB17_142
.LBB17_142:                             # %if.end.451
                                        #   in Loop: Header=BB17_109 Depth=1
	jmp	.LBB17_109
.LBB17_143:                             # %while.end.452
	movq	$-1, %rsi
	movq	-64(%rbp), %rdi
	movq	-240(%rbp), %rax
	movq	-64(%rbp), %rcx
	subq	%rcx, %rax
	movb	-121(%rbp), %dl
	andb	$1, %dl
	movb	%dl, -482(%rbp)         # 1-byte Spill
	movq	%rax, %rdx
	movb	-482(%rbp), %r8b        # 1-byte Reload
	movzbl	%r8b, %ecx
	callq	make_specified_string
	movl	$389, %edi              # imm = 0x185
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	xorl	%edi, %edi
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-504(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB17_147
# BB#144:                               # %if.then.463
	movl	$389, %edi              # imm = 0x185
	movq	-104(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	call3
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB17_146
# BB#145:                               # %if.then.467
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.LBB17_146:                             # %if.end.468
	movq	-120(%rbp), %rax
	movq	%rax, -112(%rbp)
.LBB17_147:                             # %if.end.469
	jmp	.LBB17_148
.LBB17_148:                             # %do.body.470
	testb	$1, -153(%rbp)
	je	.LBB17_150
# BB#149:                               # %if.then.472
	xorl	%edi, %edi
	movb	$0, -153(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -528(%rbp)        # 8-byte Spill
.LBB17_150:                             # %if.end.475
	jmp	.LBB17_151
.LBB17_151:                             # %do.end.476
	movq	-112(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB17_152:                             # %return
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	Fexpand_file_name, .Lfunc_end17-Fexpand_file_name
	.cfi_endproc

	.globl	Fsubstitute_in_file_name
	.align	16, 0x90
	.type	Fsubstitute_in_file_name,@function
Fsubstitute_in_file_name:               # @Fsubstitute_in_file_name
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
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -16(%rbp)
	movb	$0, -49(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	movq	-16(%rbp), %rdi
	callq	STRING_MULTIBYTE
	movl	$891, %edi              # imm = 0x37B
	andb	$1, %al
	movb	%al, -50(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB18_4
# BB#1:                                 # %if.then
	movl	$891, %edi              # imm = 0x37B
	movq	-72(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	call2
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB18_2
	jmp	.LBB18_3
.LBB18_2:                               # %if.then.7
	movq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB18_38
.LBB18_3:                               # %if.end
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	error
.LBB18_4:                               # %if.end.8
	movq	$16384, -88(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -96(%rbp)
	movb	$0, -97(%rbp)
# BB#5:                                 # %do.body
	movq	-16(%rbp), %rdi
	callq	SBYTES
	addq	$1, %rax
	cmpq	-88(%rbp), %rax
	jg	.LBB18_7
# BB#6:                                 # %cond.true
	movq	-16(%rbp), %rdi
	callq	SBYTES
	incq	%rax
	movq	-88(%rbp), %rdi
	subq	%rax, %rdi
	movq	%rdi, -88(%rbp)
	movq	-16(%rbp), %rdi
	callq	SBYTES
	addq	$16, %rax
	andq	$-16, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	jmp	.LBB18_8
.LBB18_7:                               # %cond.false
	movb	$1, -97(%rbp)
	movq	-16(%rbp), %rdi
	callq	SBYTES
	addq	$1, %rax
	movq	%rax, %rdi
	callq	record_xmalloc
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB18_8:                               # %cond.end
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SDATA
	movq	-16(%rbp), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	SBYTES
	addq	$1, %rax
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	-176(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	memcpy
# BB#9:                                 # %do.end
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-184(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -48(%rbp)
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	search_embedded_absfilename
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB18_15
# BB#10:                                # %if.then.24
	movq	$-1, %rsi
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
	movb	-50(%rbp), %dl
	andb	$1, %dl
	movb	%dl, -185(%rbp)         # 1-byte Spill
	movq	%rax, %rdx
	movb	-185(%rbp), %r8b        # 1-byte Reload
	movzbl	%r8b, %ecx
	callq	make_specified_string
	movq	%rax, %rdi
	callq	Fsubstitute_in_file_name
	movq	%rax, -112(%rbp)
# BB#11:                                # %do.body.28
	testb	$1, -97(%rbp)
	je	.LBB18_13
# BB#12:                                # %if.then.30
	xorl	%edi, %edi
	movb	$0, -97(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB18_13:                              # %if.end.33
	jmp	.LBB18_14
.LBB18_14:                              # %do.end.34
	movq	-112(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB18_38
.LBB18_15:                              # %if.end.35
	movl	$890, %edi              # imm = 0x37A
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Ffboundp
	xorl	%edi, %edi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB18_22
# BB#16:                                # %if.then.40
	testb	$1, -49(%rbp)
	jne	.LBB18_18
# BB#17:                                # %cond.true.42
	movq	-16(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jmp	.LBB18_19
.LBB18_18:                              # %cond.false.43
	movq	$-1, %rsi
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	movb	-50(%rbp), %dl
	andb	$1, %dl
	movb	%dl, -225(%rbp)         # 1-byte Spill
	movq	%rax, %rdx
	movb	-225(%rbp), %r8b        # 1-byte Reload
	movzbl	%r8b, %ecx
	callq	make_specified_string
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB18_19:                              # %cond.end.49
	movq	-224(%rbp), %rax        # 8-byte Reload
	movl	$890, %edi              # imm = 0x37A
	movq	%rax, -120(%rbp)
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	callq	call1
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rdi
	callq	CHECK_STRING
	movq	-128(%rbp), %rax
	cmpq	-120(%rbp), %rax
	je	.LBB18_21
# BB#20:                                # %if.then.54
	movb	$1, -49(%rbp)
.LBB18_21:                              # %if.end.55
	movq	-128(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB18_22:                              # %if.end.56
	testb	$1, -49(%rbp)
	jne	.LBB18_28
# BB#23:                                # %if.then.58
	jmp	.LBB18_24
.LBB18_24:                              # %do.body.59
	testb	$1, -97(%rbp)
	je	.LBB18_26
# BB#25:                                # %if.then.61
	xorl	%edi, %edi
	movb	$0, -97(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB18_26:                              # %if.end.64
	jmp	.LBB18_27
.LBB18_27:                              # %do.end.65
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB18_38
.LBB18_28:                              # %if.end.66
	movq	-16(%rbp), %rdi
	callq	SSDATA
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	SBYTES
	movq	-256(%rbp), %rdi        # 8-byte Reload
	addq	%rax, %rdi
	movq	%rdi, -40(%rbp)
.LBB18_29:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	search_embedded_absfilename
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	je	.LBB18_31
# BB#30:                                # %while.body
                                        #   in Loop: Header=BB18_29 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB18_29
.LBB18_31:                              # %while.end
	movq	-64(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	SSDATA
	movq	-264(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	je	.LBB18_33
# BB#32:                                # %if.then.74
	movq	$-1, %rsi
	movq	-64(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rcx
	subq	%rcx, %rax
	movb	-50(%rbp), %dl
	andb	$1, %dl
	movb	%dl, -265(%rbp)         # 1-byte Spill
	movq	%rax, %rdx
	movb	-265(%rbp), %r8b        # 1-byte Reload
	movzbl	%r8b, %ecx
	callq	make_specified_string
	movq	%rax, -16(%rbp)
.LBB18_33:                              # %if.end.80
	jmp	.LBB18_34
.LBB18_34:                              # %do.body.81
	testb	$1, -97(%rbp)
	je	.LBB18_36
# BB#35:                                # %if.then.83
	xorl	%edi, %edi
	movb	$0, -97(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -288(%rbp)        # 8-byte Spill
.LBB18_36:                              # %if.end.86
	jmp	.LBB18_37
.LBB18_37:                              # %do.end.87
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB18_38:                              # %return
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	Fsubstitute_in_file_name, .Lfunc_end18-Fsubstitute_in_file_name
	.cfi_endproc

	.align	16, 0x90
	.type	search_embedded_absfilename,@function
search_embedded_absfilename:            # @search_embedded_absfilename
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	addq	$1, %rsi
	movq	%rsi, -32(%rbp)
.LBB19_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_5 Depth 2
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB19_26
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-32(%rbp), %rax
	movsbl	-1(%rax), %ecx
	cmpl	$47, %ecx
	jne	.LBB19_24
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	file_name_absolute_p
	testb	$1, %al
	jne	.LBB19_4
	jmp	.LBB19_24
.LBB19_4:                               # %if.then
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB19_5:                               # %for.cond.4
                                        #   Parent Loop BB19_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -81(%rbp)          # 1-byte Spill
	je	.LBB19_7
# BB#6:                                 # %land.rhs
                                        #   in Loop: Header=BB19_5 Depth=2
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$47, %ecx
	sete	%dl
	xorb	$-1, %dl
	movb	%dl, -81(%rbp)          # 1-byte Spill
.LBB19_7:                               # %land.end
                                        #   in Loop: Header=BB19_5 Depth=2
	movb	-81(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB19_8
	jmp	.LBB19_10
.LBB19_8:                               # %for.body.9
                                        #   in Loop: Header=BB19_5 Depth=2
	jmp	.LBB19_9
.LBB19_9:                               # %for.inc
                                        #   in Loop: Header=BB19_5 Depth=2
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB19_5
.LBB19_10:                              # %for.end
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$126, %ecx
	jne	.LBB19_22
# BB#11:                                # %land.lhs.true.14
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	$1, %rcx
	cmpq	%rcx, %rax
	jbe	.LBB19_22
# BB#12:                                # %if.then.18
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	$16384, -48(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -56(%rbp)
	movb	$0, -57(%rbp)
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	cmpq	-48(%rbp), %rax
	jg	.LBB19_14
# BB#13:                                # %cond.true
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
	incq	%rax
	movq	-48(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
	addq	$16, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB19_15
.LBB19_14:                              # %cond.false
                                        #   in Loop: Header=BB19_1 Depth=1
	movb	$1, -57(%rbp)
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	record_xmalloc
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB19_15:                              # %cond.end
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, %rdx
	callq	memcpy
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rcx, %rax
	movq	-72(%rbp), %rcx
	movb	$0, (%rcx,%rax)
	callq	block_input
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	getpwnam
	movq	%rax, -80(%rbp)
	callq	unblock_input
# BB#16:                                # %do.body
                                        #   in Loop: Header=BB19_1 Depth=1
	testb	$1, -57(%rbp)
	je	.LBB19_18
# BB#17:                                # %if.then.45
                                        #   in Loop: Header=BB19_1 Depth=1
	xorl	%edi, %edi
	movb	$0, -57(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB19_18:                              # %if.end
                                        #   in Loop: Header=BB19_1 Depth=1
	jmp	.LBB19_19
.LBB19_19:                              # %do.end
                                        #   in Loop: Header=BB19_1 Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB19_21
# BB#20:                                # %if.then.49
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB19_27
.LBB19_21:                              # %if.end.50
                                        #   in Loop: Header=BB19_1 Depth=1
	jmp	.LBB19_23
.LBB19_22:                              # %if.else
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB19_27
.LBB19_23:                              # %if.end.51
                                        #   in Loop: Header=BB19_1 Depth=1
	jmp	.LBB19_24
.LBB19_24:                              # %if.end.52
                                        #   in Loop: Header=BB19_1 Depth=1
	jmp	.LBB19_25
.LBB19_25:                              # %for.inc.53
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB19_1
.LBB19_26:                              # %for.end.55
	movq	$0, -8(%rbp)
.LBB19_27:                              # %return
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	search_embedded_absfilename, .Lfunc_end19-search_embedded_absfilename
	.cfi_endproc

	.globl	expand_and_dir_to_file
	.align	16, 0x90
	.type	expand_and_dir_to_file,@function
expand_and_dir_to_file:                 # @expand_and_dir_to_file
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	Fexpand_file_name
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	SCHARS
	cmpq	$1, %rax
	jle	.LBB20_3
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	SBYTES
	subq	$1, %rax
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	SREF
	movzbl	%al, %ecx
	cmpl	$47, %ecx
	jne	.LBB20_3
# BB#2:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	Fdirectory_file_name
	movq	%rax, -24(%rbp)
.LBB20_3:                               # %if.end
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	expand_and_dir_to_file, .Lfunc_end20-expand_and_dir_to_file
	.cfi_endproc

	.globl	Fcopy_file
	.align	16, 0x90
	.type	Fcopy_file,@function
Fcopy_file:                             # @Fcopy_file
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
	subq	$17088, %rsp            # imm = 0x42C0
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	callq	SPECPDL_INDEX
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)
	movb	$0, -89(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -88(%rbp)
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	movq	-24(%rbp), %rdi
	callq	CHECK_STRING
	movq	-24(%rbp), %rdi
	callq	Ffile_directory_p
	xorl	%edi, %edi
	movq	%rax, -16856(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16856(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB21_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	Ffile_name_nondirectory
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fexpand_file_name
	movq	%rax, -24(%rbp)
	jmp	.LBB21_3
.LBB21_2:                               # %if.else
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -16864(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16864(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	Fexpand_file_name
	movq	%rax, -24(%rbp)
.LBB21_3:                               # %if.end
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -16872(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16872(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	Fexpand_file_name
	movl	$299, %edi              # imm = 0x12B
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -16880(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16880(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -16888(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16888(%rbp), %rsi      # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB21_5
# BB#4:                                 # %if.then.14
	movl	$299, %edi              # imm = 0x12B
	movq	-24(%rbp), %rax
	movq	%rax, -16896(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16896(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	movq	%rax, -64(%rbp)
.LBB21_5:                               # %if.end.17
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -16904(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16904(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB21_7
# BB#6:                                 # %if.then.20
	movl	$299, %edi              # imm = 0x12B
	movq	-64(%rbp), %rax
	movq	%rax, -16912(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %r8
	movq	-40(%rbp), %r9
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %r10
	movq	-16912(%rbp), %rdi      # 8-byte Reload
	movq	%rsi, -16920(%rbp)      # 8-byte Spill
	movq	%rax, %rsi
	movq	-16920(%rbp), %rax      # 8-byte Reload
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	callq	call7
	movq	%rax, -8(%rbp)
	jmp	.LBB21_75
.LBB21_7:                               # %if.end.23
	movq	-16(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -88(%rbp)
	movb	$1, immediate_quit
	movq	-80(%rbp), %rdi
	callq	SSDATA
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	emacs_open
	movl	%eax, -100(%rbp)
	movb	$0, immediate_quit
	cmpl	$0, -100(%rbp)
	jge	.LBB21_9
# BB#8:                                 # %if.then.29
	movabsq	$.L.str.6, %rdi
	movq	-16(%rbp), %rsi
	callq	report_file_error
.LBB21_9:                               # %if.end.30
	movabsq	$close_file_unwind, %rdi
	movl	-100(%rbp), %esi
	callq	record_unwind_protect_int
	leaq	-248(%rbp), %rsi
	movl	-100(%rbp), %edi
	callq	fstat
	cmpl	$0, %eax
	je	.LBB21_11
# BB#10:                                # %if.then.33
	movabsq	$.L.str.7, %rdi
	movq	-16(%rbp), %rsi
	callq	report_file_error
.LBB21_11:                              # %if.end.34
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -16928(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16928(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB21_13
# BB#12:                                # %if.then.37
	jmp	.LBB21_13
.LBB21_13:                              # %if.end.38
	movl	-224(%rbp), %eax
	andl	$61440, %eax            # imm = 0xF000
	cmpl	$32768, %eax            # imm = 0x8000
	je	.LBB21_15
# BB#14:                                # %if.then.40
	movabsq	$.L.str.8, %rdi
	movl	$22, %eax
	movl	$21, %ecx
	movq	-16(%rbp), %rsi
	movl	-224(%rbp), %edx
	andl	$61440, %edx            # imm = 0xF000
	cmpl	$16384, %edx            # imm = 0x4000
	cmovel	%ecx, %eax
	movl	%eax, %edx
	callq	report_file_errno
.LBB21_15:                              # %if.end.44
	xorl	%edi, %edi
	movl	-224(%rbp), %eax
	movq	-48(%rbp), %rcx
	movq	%rcx, -16936(%rbp)      # 8-byte Spill
	movl	%eax, -16940(%rbp)      # 4-byte Spill
	callq	builtin_lisp_symbol
	movl	$511, %edi              # imm = 0x1FF
	movl	$448, %edx              # imm = 0x1C0
	movq	-16936(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%sil
	xorb	$-1, %sil
	testb	$1, %sil
	cmovnel	%edx, %edi
	movl	-16940(%rbp), %edx      # 4-byte Reload
	andl	%edi, %edx
	movl	%edx, -96(%rbp)
	movq	-88(%rbp), %rdi
	callq	SSDATA
	movl	$193, %esi
	movl	-96(%rbp), %edx
	movq	%rax, %rdi
	callq	emacs_open
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	jge	.LBB21_21
# BB#16:                                # %land.lhs.true
	callq	__errno_location
	cmpl	$17, (%rax)
	jne	.LBB21_21
# BB#17:                                # %if.then.55
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -16952(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16952(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB21_19
# BB#18:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB21_20
.LBB21_19:                              # %if.then.62
	movl	$1, %eax
	movabsq	$.L.str.9, %rcx
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %esi
	andl	$-5, %esi
	cmpl	$2, %esi
	sete	%r8b
	movl	$.L.str.9, %esi
	movl	%esi, %edx
	movzbl	%r8b, %esi
	andl	$1, %esi
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movl	%esi, -16956(%rbp)      # 4-byte Spill
	movl	%r9d, %esi
	movl	-16956(%rbp), %r9d      # 4-byte Reload
	movq	%rcx, -16968(%rbp)      # 8-byte Spill
	movl	%r9d, %ecx
	movl	%eax, -16972(%rbp)      # 4-byte Spill
	callq	barf_or_query_if_file_exists
.LBB21_20:                              # %if.end.68
	movb	$1, -89(%rbp)
	movq	-88(%rbp), %rdi
	callq	SSDATA
	movl	$1, %esi
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	emacs_open
	movl	%eax, -104(%rbp)
.LBB21_21:                              # %if.end.71
	cmpl	$0, -104(%rbp)
	jge	.LBB21_23
# BB#22:                                # %if.then.74
	movabsq	$.L.str.10, %rdi
	movq	-24(%rbp), %rsi
	callq	report_file_error
.LBB21_23:                              # %if.end.75
	movabsq	$close_file_unwind, %rdi
	movl	-104(%rbp), %esi
	callq	record_unwind_protect_int
	movq	$0, -256(%rbp)
	movq	$0, -264(%rbp)
	testb	$1, -89(%rbp)
	je	.LBB21_32
# BB#24:                                # %if.then.76
	leaq	-408(%rbp), %rsi
	movl	-104(%rbp), %edi
	callq	fstat
	cmpl	$0, %eax
	je	.LBB21_26
# BB#25:                                # %if.then.80
	movabsq	$.L.str.11, %rdi
	movq	-24(%rbp), %rsi
	callq	report_file_error
.LBB21_26:                              # %if.end.81
	movq	-248(%rbp), %rax
	cmpq	-408(%rbp), %rax
	jne	.LBB21_29
# BB#27:                                # %land.lhs.true.85
	movq	-240(%rbp), %rax
	cmpq	-400(%rbp), %rax
	jne	.LBB21_29
# BB#28:                                # %if.then.89
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	list2
	movabsq	$.L.str.12, %rdi
	xorl	%edx, %edx
	movq	%rax, %rsi
	callq	report_file_errno
.LBB21_29:                              # %if.end.91
	movl	-384(%rbp), %eax
	andl	$61440, %eax            # imm = 0xF000
	cmpl	$32768, %eax            # imm = 0x8000
	jne	.LBB21_31
# BB#30:                                # %if.then.96
	movq	-360(%rbp), %rax
	movq	%rax, -256(%rbp)
.LBB21_31:                              # %if.end.97
	jmp	.LBB21_32
.LBB21_32:                              # %if.end.98
	movb	$1, immediate_quit
# BB#33:                                # %do.body
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -16984(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16984(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB21_36
# BB#34:                                # %land.lhs.true.102
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -16992(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16992(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB21_36
# BB#35:                                # %if.then.106
	callq	process_quit_flag
	jmp	.LBB21_39
.LBB21_36:                              # %if.else.107
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB21_38
# BB#37:                                # %if.then.109
	callq	process_pending_signals
.LBB21_38:                              # %if.end.110
	jmp	.LBB21_39
.LBB21_39:                              # %if.end.111
	jmp	.LBB21_40
.LBB21_40:                              # %do.end
	jmp	.LBB21_41
.LBB21_41:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$16384, %eax            # imm = 0x4000
	movl	%eax, %edx
	leaq	-16800(%rbp), %rsi
	movl	-100(%rbp), %edi
	callq	emacs_read
	movq	%rax, -16808(%rbp)
	cmpq	$0, -16808(%rbp)
	jge	.LBB21_43
# BB#42:                                # %if.then.115
	movabsq	$.L.str.13, %rdi
	movq	-16(%rbp), %rsi
	callq	report_file_error
.LBB21_43:                              # %if.end.116
                                        #   in Loop: Header=BB21_41 Depth=1
	cmpq	$0, -16808(%rbp)
	jne	.LBB21_45
# BB#44:                                # %if.then.119
	jmp	.LBB21_48
.LBB21_45:                              # %if.end.120
                                        #   in Loop: Header=BB21_41 Depth=1
	leaq	-16800(%rbp), %rsi
	movl	-104(%rbp), %edi
	movq	-16808(%rbp), %rdx
	callq	emacs_write_sig
	cmpq	-16808(%rbp), %rax
	je	.LBB21_47
# BB#46:                                # %if.then.125
	movabsq	$.L.str.14, %rdi
	movq	-24(%rbp), %rsi
	callq	report_file_error
.LBB21_47:                              # %if.end.126
                                        #   in Loop: Header=BB21_41 Depth=1
	movq	-16808(%rbp), %rax
	addq	-264(%rbp), %rax
	movq	%rax, -264(%rbp)
	jmp	.LBB21_41
.LBB21_48:                              # %while.end
	movq	-264(%rbp), %rax
	cmpq	-256(%rbp), %rax
	jge	.LBB21_51
# BB#49:                                # %land.lhs.true.129
	movl	-104(%rbp), %edi
	movq	-264(%rbp), %rsi
	callq	ftruncate
	cmpl	$0, %eax
	je	.LBB21_51
# BB#50:                                # %if.then.133
	movabsq	$.L.str.15, %rdi
	movq	-24(%rbp), %rsi
	callq	report_file_error
.LBB21_51:                              # %if.end.134
	xorl	%edi, %edi
	movb	$0, immediate_quit
	movl	-224(%rbp), %eax
	andl	$4095, %eax             # imm = 0xFFF
	movl	%eax, -16812(%rbp)
	movl	-224(%rbp), %eax
	andl	$511, %eax              # imm = 0x1FF
	movl	realmask, %ecx
	xorl	$-1, %ecx
	andl	%ecx, %eax
	movl	%eax, -16816(%rbp)
	movq	-48(%rbp), %rdx
	movq	%rdx, -17000(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-17000(%rbp), %rdx      # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB21_58
# BB#52:                                # %if.then.143
	movl	-104(%rbp), %edi
	movl	-220(%rbp), %esi
	movl	-216(%rbp), %edx
	callq	fchown
	cmpl	$0, %eax
	je	.LBB21_57
# BB#53:                                # %if.then.147
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movl	-104(%rbp), %edi
	movl	-216(%rbp), %edx
	callq	fchown
	cmpl	$0, %eax
	jne	.LBB21_55
# BB#54:                                # %if.then.152
	movl	-16812(%rbp), %eax
	andl	$-2049, %eax            # imm = 0xFFFFFFFFFFFFF7FF
	movl	%eax, -16812(%rbp)
	jmp	.LBB21_56
.LBB21_55:                              # %if.else.154
	movl	-16812(%rbp), %eax
	andl	$-3073, %eax            # imm = 0xFFFFFFFFFFFFF3FF
	movl	%eax, -16812(%rbp)
	movl	-16812(%rbp), %eax
	andl	$-57, %eax
	movl	%eax, -16812(%rbp)
	movl	-16812(%rbp), %eax
	andl	$7, %eax
	shll	$3, %eax
	orl	-16812(%rbp), %eax
	movl	%eax, -16812(%rbp)
	movl	-16816(%rbp), %eax
	andl	$-57, %eax
	movl	%eax, -16816(%rbp)
	movl	-16816(%rbp), %eax
	andl	$7, %eax
	shll	$3, %eax
	orl	-16816(%rbp), %eax
	movl	%eax, -16816(%rbp)
.LBB21_56:                              # %if.end.162
	jmp	.LBB21_57
.LBB21_57:                              # %if.end.163
	jmp	.LBB21_58
.LBB21_58:                              # %if.end.164
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -17008(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-17008(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB21_60
# BB#59:                                # %cond.true
	movq	-80(%rbp), %rdi
	callq	SSDATA
	movl	-100(%rbp), %esi
	movq	-88(%rbp), %rdi
	movq	%rax, -17016(%rbp)      # 8-byte Spill
	movl	%esi, -17020(%rbp)      # 4-byte Spill
	callq	SSDATA
	movl	-104(%rbp), %ecx
	movl	-16812(%rbp), %r8d
	movq	-17016(%rbp), %rdi      # 8-byte Reload
	movl	-17020(%rbp), %esi      # 4-byte Reload
	movq	%rax, %rdx
	callq	qcopy_acl
	movl	%eax, -17024(%rbp)      # 4-byte Spill
	jmp	.LBB21_65
.LBB21_60:                              # %cond.false
	testb	$1, -89(%rbp)
	jne	.LBB21_62
# BB#61:                                # %lor.lhs.false.173
	movl	-96(%rbp), %eax
	movl	realmask, %ecx
	xorl	$-1, %ecx
	andl	%ecx, %eax
	cmpl	-16816(%rbp), %eax
	jne	.LBB21_63
.LBB21_62:                              # %cond.true.178
	xorl	%eax, %eax
	movl	%eax, -17028(%rbp)      # 4-byte Spill
	jmp	.LBB21_64
.LBB21_63:                              # %cond.false.179
	movl	-104(%rbp), %edi
	movl	-16816(%rbp), %esi
	callq	fchmod
	movl	%eax, -17028(%rbp)      # 4-byte Spill
.LBB21_64:                              # %cond.end
	movl	-17028(%rbp), %eax      # 4-byte Reload
	movl	%eax, -17024(%rbp)      # 4-byte Spill
.LBB21_65:                              # %cond.end.182
	movl	-17024(%rbp), %eax      # 4-byte Reload
	movl	%eax, %ecx
	subl	$-2, %ecx
	movl	%eax, -17032(%rbp)      # 4-byte Spill
	movl	%ecx, -17036(%rbp)      # 4-byte Spill
	je	.LBB21_66
	jmp	.LBB21_76
.LBB21_76:                              # %cond.end.182
	movl	-17032(%rbp), %eax      # 4-byte Reload
	subl	$-1, %eax
	movl	%eax, -17040(%rbp)      # 4-byte Spill
	je	.LBB21_67
	jmp	.LBB21_68
.LBB21_66:                              # %sw.bb
	movabsq	$.L.str.16, %rdi
	movq	-16(%rbp), %rsi
	callq	report_file_error
.LBB21_67:                              # %sw.bb.184
	movabsq	$.L.str.17, %rdi
	movq	-24(%rbp), %rsi
	callq	report_file_error
.LBB21_68:                              # %sw.epilog
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -17048(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-17048(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB21_72
# BB#69:                                # %if.then.188
	leaq	-248(%rbp), %rdi
	callq	get_stat_atime
	leaq	-248(%rbp), %rdi
	movq	%rax, -16832(%rbp)
	movq	%rdx, -16824(%rbp)
	callq	get_stat_mtime
	movq	%rax, -16848(%rbp)
	movq	%rdx, -16840(%rbp)
	movl	-104(%rbp), %edi
	movq	-88(%rbp), %rax
	movl	%edi, -17052(%rbp)      # 4-byte Spill
	movq	%rax, %rdi
	callq	SSDATA
	movq	-16832(%rbp), %rdx
	movq	-16824(%rbp), %rcx
	movq	-16848(%rbp), %r8
	movq	-16840(%rbp), %r9
	movl	-17052(%rbp), %edi      # 4-byte Reload
	movq	%rax, %rsi
	callq	set_file_times
	cmpl	$0, %eax
	je	.LBB21_71
# BB#70:                                # %if.then.195
	movl	$409, %edi              # imm = 0x199
	callq	builtin_lisp_symbol
	movabsq	$.L.str.18, %rdi
	movq	%rax, -17064(%rbp)      # 8-byte Spill
	callq	build_string
	movq	-24(%rbp), %rdx
	movq	-17064(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	xsignal2
.LBB21_71:                              # %if.end.198
	jmp	.LBB21_72
.LBB21_72:                              # %if.end.199
	movl	-104(%rbp), %edi
	callq	emacs_close
	cmpl	$0, %eax
	jge	.LBB21_74
# BB#73:                                # %if.then.203
	movabsq	$.L.str.14, %rdi
	movq	-24(%rbp), %rsi
	callq	report_file_error
.LBB21_74:                              # %if.end.204
	movl	-100(%rbp), %edi
	callq	emacs_close
	xorl	%edi, %edi
	movq	specpdl, %rcx
	movq	-72(%rbp), %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movq	%rcx, specpdl_ptr
	movl	%eax, -17068(%rbp)      # 4-byte Spill
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB21_75:                              # %return
	movq	-8(%rbp), %rax
	addq	$17088, %rsp            # imm = 0x42C0
	popq	%rbp
	retq
.Lfunc_end21:
	.size	Fcopy_file, .Lfunc_end21-Fcopy_file
	.cfi_endproc

	.globl	Ffile_directory_p
	.align	16, 0x90
	.type	Ffile_directory_p,@function
Ffile_directory_p:                      # @Ffile_directory_p
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	current_buffer, %rax
	movq	24(%rax), %rsi
	callq	expand_and_dir_to_file
	movl	$410, %edi              # imm = 0x19A
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB22_2
# BB#1:                                 # %if.then
	movl	$410, %edi              # imm = 0x19A
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	call2
	movq	%rax, -8(%rbp)
	jmp	.LBB22_6
.LBB22_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	SSDATA
	movq	%rax, %rdi
	callq	file_directory_p
	testb	$1, %al
	jne	.LBB22_3
	jmp	.LBB22_4
.LBB22_3:                               # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB22_5
.LBB22_4:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB22_5:                               # %cond.end
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
.LBB22_6:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	Ffile_directory_p, .Lfunc_end22-Ffile_directory_p
	.cfi_endproc

	.align	16, 0x90
	.type	barf_or_query_if_file_exists,@function
barf_or_query_if_file_exists:           # @barf_or_query_if_file_exists
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
	subq	$288, %rsp              # imm = 0x120
	movb	%r8b, %al
	movb	%cl, %r9b
	movb	%sil, %r10b
	movq	%rdi, -8(%rbp)
	andb	$1, %r10b
	movb	%r10b, -9(%rbp)
	movq	%rdx, -24(%rbp)
	andb	$1, %r9b
	movb	%r9b, -25(%rbp)
	andb	$1, %al
	movb	%al, -26(%rbp)
	movq	-8(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -48(%rbp)
	testb	$1, -9(%rbp)
	jne	.LBB23_5
# BB#1:                                 # %land.lhs.true
	movq	-48(%rbp), %rdi
	callq	SSDATA
	leaq	-192(%rbp), %rsi
	movq	%rax, %rdi
	callq	lstat
	cmpl	$0, %eax
	jne	.LBB23_5
# BB#2:                                 # %if.then
	movl	-168(%rbp), %eax
	andl	$61440, %eax            # imm = 0xF000
	cmpl	$16384, %eax            # imm = 0x4000
	jne	.LBB23_4
# BB#3:                                 # %if.then.6
	movl	$411, %edi              # imm = 0x19B
	callq	builtin_lisp_symbol
	movabsq	$.L.str.84, %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	build_string
	movq	-8(%rbp), %rdx
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	xsignal2
.LBB23_4:                               # %if.end
	movb	$1, -9(%rbp)
.LBB23_5:                               # %if.end.9
	testb	$1, -9(%rbp)
	je	.LBB23_14
# BB#6:                                 # %if.then.11
	testb	$1, -25(%rbp)
	jne	.LBB23_8
# BB#7:                                 # %if.then.13
	movl	$406, %edi              # imm = 0x196
	callq	builtin_lisp_symbol
	movabsq	$.L.str.57, %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	build_string
	movq	-8(%rbp), %rdx
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	xsignal2
.LBB23_8:                               # %if.end.16
	movl	$4, %esi
	leaq	-232(%rbp), %rax
	movabsq	$.L.str.85, %rcx
	movq	$35, -232(%rbp)
	movq	$-1, -224(%rbp)
	movq	$0, -216(%rbp)
	movq	%rcx, -208(%rbp)
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -256(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -248(%rbp)
	movq	-24(%rbp), %rdi
	callq	build_string
	movl	$3, %esi
	movl	%esi, %edi
	leaq	-256(%rbp), %rsi
	movq	%rax, -240(%rbp)
	callq	Fformat
	movq	%rax, -40(%rbp)
	testb	$1, -26(%rbp)
	je	.LBB23_10
# BB#9:                                 # %if.then.24
	movabsq	$.L.str.86, %rdi
	callq	intern
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	call1
	movq	%rax, -40(%rbp)
	jmp	.LBB23_11
.LBB23_10:                              # %if.else
	movq	-40(%rbp), %rdi
	callq	do_yes_or_no_p
	movq	%rax, -40(%rbp)
.LBB23_11:                              # %if.end.28
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB23_13
# BB#12:                                # %if.then.31
	movl	$406, %edi              # imm = 0x196
	callq	builtin_lisp_symbol
	movabsq	$.L.str.57, %rdi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	build_string
	movq	-8(%rbp), %rdx
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	xsignal2
.LBB23_13:                              # %if.end.34
	jmp	.LBB23_14
.LBB23_14:                              # %if.end.35
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end23:
	.size	barf_or_query_if_file_exists, .Lfunc_end23-barf_or_query_if_file_exists
	.cfi_endproc

	.globl	Fmake_directory_internal
	.align	16, 0x90
	.type	Fmake_directory_internal,@function
Fmake_directory_internal:               # @Fmake_directory_internal
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fexpand_file_name
	movl	$639, %edi              # imm = 0x27F
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB24_2
# BB#1:                                 # %if.then
	movl	$639, %edi              # imm = 0x27F
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	call2
	movq	%rax, -8(%rbp)
	jmp	.LBB24_5
.LBB24_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	SSDATA
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	auto_saving_dir_umask, %ecx
	xorl	$-1, %ecx
	andl	$511, %ecx              # imm = 0x1FF
	movl	%ecx, %esi
	callq	mkdir
	cmpl	$0, %eax
	je	.LBB24_4
# BB#3:                                 # %if.then.11
	movabsq	$.L.str.19, %rdi
	movq	-16(%rbp), %rsi
	callq	report_file_error
.LBB24_4:                               # %if.end.12
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB24_5:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	Fmake_directory_internal, .Lfunc_end24-Fmake_directory_internal
	.cfi_endproc

	.globl	Fdelete_directory_internal
	.align	16, 0x90
	.type	Fdelete_directory_internal,@function
Fdelete_directory_internal:             # @Fdelete_directory_internal
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
	callq	CHECK_STRING
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fexpand_file_name
	movq	%rax, %rdi
	callq	Fdirectory_file_name
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	SSDATA
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	rmdir
	cmpl	$0, %eax
	je	.LBB25_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.20, %rdi
	movq	-8(%rbp), %rsi
	callq	report_file_error
.LBB25_2:                               # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	Fdelete_directory_internal, .Lfunc_end25-Fdelete_directory_internal
	.cfi_endproc

	.globl	Fdelete_file
	.align	16, 0x90
	.type	Fdelete_file,@function
Fdelete_file:                           # @Fdelete_file
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	Ffile_directory_p
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB26_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	Ffile_symlink_p
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB26_3
# BB#2:                                 # %if.then
	movl	$411, %edi              # imm = 0x19B
	callq	builtin_lisp_symbol
	movabsq	$.L.str.21, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	build_string
	movq	-16(%rbp), %rdx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	xsignal2
.LBB26_3:                               # %if.end
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fexpand_file_name
	movl	$333, %edi              # imm = 0x14D
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB26_5
# BB#4:                                 # %if.then.13
	movl	$333, %edi              # imm = 0x14D
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	call3
	movq	%rax, -8(%rbp)
	jmp	.LBB26_11
.LBB26_5:                               # %if.end.16
	testb	$1, globals+3375
	je	.LBB26_8
# BB#6:                                 # %land.lhs.true.17
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB26_8
# BB#7:                                 # %if.then.20
	movl	$692, %edi              # imm = 0x2B4
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	call1
	movq	%rax, -8(%rbp)
	jmp	.LBB26_11
.LBB26_8:                               # %if.end.23
	movq	-16(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	SSDATA
	movq	%rax, %rdi
	callq	unlink
	cmpl	$0, %eax
	jge	.LBB26_10
# BB#9:                                 # %if.then.28
	movabsq	$.L.str.22, %rdi
	movq	-16(%rbp), %rsi
	callq	report_file_error
.LBB26_10:                              # %if.end.29
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB26_11:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	Fdelete_file, .Lfunc_end26-Fdelete_file
	.cfi_endproc

	.globl	Ffile_symlink_p
	.align	16, 0x90
	.type	Ffile_symlink_p,@function
Ffile_symlink_p:                        # @Ffile_symlink_p
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fexpand_file_name
	movl	$428, %edi              # imm = 0x1AC
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB27_2
# BB#1:                                 # %if.then
	movl	$428, %edi              # imm = 0x1AC
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	call2
	movq	%rax, -8(%rbp)
	jmp	.LBB27_3
.LBB27_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	SSDATA
	movl	$4294967196, %edi       # imm = 0xFFFFFF9C
	movq	%rax, %rsi
	callq	emacs_readlinkat
	movq	%rax, -8(%rbp)
.LBB27_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	Ffile_symlink_p, .Lfunc_end27-Ffile_symlink_p
	.cfi_endproc

	.globl	internal_delete_file
	.align	16, 0x90
	.type	internal_delete_file,@function
internal_delete_file:                   # @internal_delete_file
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
	subq	$48, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$Fdelete_file, %rdi
	movabsq	$internal_delete_file_1, %r8
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	-32(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	internal_condition_case_2
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	internal_delete_file, .Lfunc_end28-internal_delete_file
	.cfi_endproc

	.align	16, 0x90
	.type	internal_delete_file_1,@function
internal_delete_file_1:                 # @internal_delete_file_1
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
	movl	$901, %eax              # imm = 0x385
	movq	%rdi, -8(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	internal_delete_file_1, .Lfunc_end29-internal_delete_file_1
	.cfi_endproc

	.globl	Frename_file
	.align	16, 0x90
	.type	Frename_file,@function
Frename_file:                           # @Frename_file
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
	subq	$448, %rsp              # imm = 0x1C0
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -56(%rbp)
	movq	%rax, -48(%rbp)
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	movq	-24(%rbp), %rdi
	callq	CHECK_STRING
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fexpand_file_name
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rdi
	callq	Ffile_directory_p
	xorl	%edi, %edi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB30_5
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	Ffile_directory_p
	xorl	%edi, %edi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB30_3
# BB#2:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB30_4
.LBB30_3:                               # %cond.false
	movq	-16(%rbp), %rdi
	callq	Fdirectory_file_name
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB30_4:                               # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	Ffile_name_nondirectory
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fexpand_file_name
	movq	%rax, -24(%rbp)
	jmp	.LBB30_6
.LBB30_5:                               # %if.else
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fexpand_file_name
	movq	%rax, -24(%rbp)
.LBB30_6:                               # %if.end
	movl	$806, %edi              # imm = 0x326
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB30_8
# BB#7:                                 # %if.then.17
	movl	$806, %edi              # imm = 0x326
	movq	-24(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	movq	%rax, -40(%rbp)
.LBB30_8:                               # %if.end.20
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB30_10
# BB#9:                                 # %if.then.23
	movl	$806, %edi              # imm = 0x326
	movq	-40(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %r8
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	call4
	movq	%rax, -8(%rbp)
	jmp	.LBB30_35
.LBB30_10:                              # %if.end.26
	movq	-16(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	callq	encode_file_name
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB30_12
# BB#11:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB30_13
.LBB30_12:                              # %if.then.34
	xorl	%eax, %eax
	movabsq	$.L.str.23, %rcx
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %esi
	andl	$-5, %esi
	cmpl	$2, %esi
	sete	%r8b
	movl	$.L.str.23, %esi
	movl	%esi, %edx
	movzbl	%r8b, %esi
	andl	$1, %esi
	xorl	%r9d, %r9d
	movl	%esi, -180(%rbp)        # 4-byte Spill
	movl	%r9d, %esi
	movl	-180(%rbp), %r10d       # 4-byte Reload
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r9d, %r8d
	movl	%eax, -196(%rbp)        # 4-byte Spill
	callq	barf_or_query_if_file_exists
.LBB30_13:                              # %if.end.40
	movq	-48(%rbp), %rdi
	callq	SSDATA
	movq	-56(%rbp), %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	SSDATA
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	rename
	cmpl	$0, %eax
	jge	.LBB30_34
# BB#14:                                # %if.then.46
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -76(%rbp)
	cmpl	$18, -76(%rbp)
	jne	.LBB30_32
# BB#15:                                # %if.then.50
	movq	-16(%rbp), %rdi
	callq	Ffile_symlink_p
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB30_20
# BB#16:                                # %if.then.55
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB30_18
# BB#17:                                # %cond.true.59
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB30_19
.LBB30_18:                              # %cond.false.61
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB30_19:                              # %cond.end.63
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	-240(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fmake_symbolic_link
	movq	%rax, -256(%rbp)        # 8-byte Spill
	jmp	.LBB30_27
.LBB30_20:                              # %if.else.66
	movq	-16(%rbp), %rdi
	callq	Ffile_directory_p
	xorl	%edi, %edi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB30_22
# BB#21:                                # %if.then.71
	movl	$298, %edi              # imm = 0x12A
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, -272(%rbp)        # 8-byte Spill
	movq	%rdx, -280(%rbp)        # 8-byte Spill
	movq	%rsi, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	-288(%rbp), %rsi        # 8-byte Reload
	movq	-280(%rbp), %rdx        # 8-byte Reload
	movq	-296(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	callq	call4
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jmp	.LBB30_26
.LBB30_22:                              # %if.else.76
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	movq	%rax, -320(%rbp)        # 8-byte Spill
	movq	%rsi, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-312(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB30_24
# BB#23:                                # %cond.true.80
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -336(%rbp)        # 8-byte Spill
	jmp	.LBB30_25
.LBB30_24:                              # %cond.false.82
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -336(%rbp)        # 8-byte Spill
.LBB30_25:                              # %cond.end.84
	movq	-336(%rbp), %rax        # 8-byte Reload
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	-328(%rbp), %rsi        # 8-byte Reload
	movq	-344(%rbp), %rdx        # 8-byte Reload
	movq	-352(%rbp), %rcx        # 8-byte Reload
	movq	-360(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	callq	Fcopy_file
	movq	%rax, -368(%rbp)        # 8-byte Spill
.LBB30_26:                              # %if.end.90
	jmp	.LBB30_27
.LBB30_27:                              # %if.end.91
	callq	SPECPDL_INDEX
	movl	$331, %edi              # imm = 0x14B
	movq	%rax, -88(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movq	-16(%rbp), %rdi
	callq	Ffile_directory_p
	xorl	%edi, %edi
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-384(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB30_30
# BB#28:                                # %land.lhs.true
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-392(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB30_30
# BB#29:                                # %if.then.102
	movl	$332, %edi              # imm = 0x14C
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rsi
	movq	%rax, -400(%rbp)        # 8-byte Spill
	movq	%rsi, -408(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	-408(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	call2
	movq	%rax, -416(%rbp)        # 8-byte Spill
	jmp	.LBB30_31
.LBB30_30:                              # %if.else.106
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fdelete_file
	movq	%rax, -432(%rbp)        # 8-byte Spill
.LBB30_31:                              # %if.end.109
	xorl	%edi, %edi
	movq	-88(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -448(%rbp)        # 8-byte Spill
	jmp	.LBB30_33
.LBB30_32:                              # %if.else.112
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	list2
	movabsq	$.L.str.24, %rdi
	movl	-76(%rbp), %edx
	movq	%rax, %rsi
	callq	report_file_errno
.LBB30_33:                              # %if.end.114
	jmp	.LBB30_34
.LBB30_34:                              # %if.end.115
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB30_35:                              # %return
	movq	-8(%rbp), %rax
	addq	$448, %rsp              # imm = 0x1C0
	popq	%rbp
	retq
.Lfunc_end30:
	.size	Frename_file, .Lfunc_end30-Frename_file
	.cfi_endproc

	.globl	Fmake_symbolic_link
	.align	16, 0x90
	.type	Fmake_symbolic_link,@function
Fmake_symbolic_link:                    # @Fmake_symbolic_link
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
	subq	$208, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -56(%rbp)
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	movq	-24(%rbp), %rdi
	callq	CHECK_STRING
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdi
	callq	SREF
	movzbl	%al, %ecx
	cmpl	$126, %ecx
	jne	.LBB31_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fexpand_file_name
	movq	%rax, -16(%rbp)
.LBB31_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	Ffile_directory_p
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB31_4
# BB#3:                                 # %if.then.9
	movq	-16(%rbp), %rdi
	callq	Ffile_name_nondirectory
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fexpand_file_name
	movq	%rax, -24(%rbp)
	jmp	.LBB31_5
.LBB31_4:                               # %if.else
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fexpand_file_name
	movq	%rax, -24(%rbp)
.LBB31_5:                               # %if.end.14
	movl	$641, %edi              # imm = 0x281
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB31_7
# BB#6:                                 # %if.then.20
	movl	$641, %edi              # imm = 0x281
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %r8
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	call4
	movq	%rax, -8(%rbp)
	jmp	.LBB31_21
.LBB31_7:                               # %if.end.23
	movl	$641, %edi              # imm = 0x281
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB31_9
# BB#8:                                 # %if.then.29
	movl	$641, %edi              # imm = 0x281
	movq	-40(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %r8
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	call4
	movq	%rax, -8(%rbp)
	jmp	.LBB31_21
.LBB31_9:                               # %if.end.32
	movq	-16(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	callq	encode_file_name
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB31_11
# BB#10:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB31_12
.LBB31_11:                              # %if.then.42
	xorl	%eax, %eax
	movabsq	$.L.str.27, %rcx
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %esi
	andl	$-5, %esi
	cmpl	$2, %esi
	sete	%r8b
	movl	$.L.str.27, %esi
	movl	%esi, %edx
	movzbl	%r8b, %esi
	andl	$1, %esi
	xorl	%r9d, %r9d
	movl	%esi, -148(%rbp)        # 4-byte Spill
	movl	%r9d, %esi
	movl	-148(%rbp), %r10d       # 4-byte Reload
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r9d, %r8d
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	barf_or_query_if_file_exists
.LBB31_12:                              # %if.end.48
	movq	-48(%rbp), %rdi
	callq	SSDATA
	movq	-56(%rbp), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	SSDATA
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	symlink
	cmpl	$0, %eax
	jge	.LBB31_20
# BB#13:                                # %if.then.54
	callq	__errno_location
	cmpl	$17, (%rax)
	jne	.LBB31_17
# BB#14:                                # %if.then.58
	movq	-56(%rbp), %rdi
	callq	SSDATA
	movq	%rax, %rdi
	callq	unlink
	movq	-48(%rbp), %rdi
	movl	%eax, -180(%rbp)        # 4-byte Spill
	callq	SSDATA
	movq	-56(%rbp), %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	SSDATA
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	symlink
	cmpl	$0, %eax
	jl	.LBB31_16
# BB#15:                                # %if.then.66
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB31_21
.LBB31_16:                              # %if.end.68
	jmp	.LBB31_17
.LBB31_17:                              # %if.end.69
	callq	__errno_location
	cmpl	$38, (%rax)
	jne	.LBB31_19
# BB#18:                                # %if.then.73
	movl	$411, %edi              # imm = 0x19B
	callq	builtin_lisp_symbol
	movabsq	$.L.str.28, %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	build_string
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	xsignal1
.LBB31_19:                              # %if.end.76
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	list2
	movabsq	$.L.str.29, %rdi
	movl	-60(%rbp), %edx
	movq	%rax, %rsi
	callq	report_file_errno
.LBB31_20:                              # %if.end.79
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB31_21:                              # %return
	movq	-8(%rbp), %rax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	Fmake_symbolic_link, .Lfunc_end31-Fmake_symbolic_link
	.cfi_endproc

	.globl	Fadd_name_to_file
	.align	16, 0x90
	.type	Fadd_name_to_file,@function
Fadd_name_to_file:                      # @Fadd_name_to_file
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
	subq	$176, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -56(%rbp)
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	movq	-24(%rbp), %rdi
	callq	CHECK_STRING
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fexpand_file_name
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rdi
	callq	Ffile_directory_p
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB32_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	Ffile_name_nondirectory
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fexpand_file_name
	movq	%rax, -24(%rbp)
	jmp	.LBB32_3
.LBB32_2:                               # %if.else
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fexpand_file_name
	movq	%rax, -24(%rbp)
.LBB32_3:                               # %if.end
	movl	$161, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB32_5
# BB#4:                                 # %if.then.13
	movl	$161, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %r8
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	call4
	movq	%rax, -8(%rbp)
	jmp	.LBB32_13
.LBB32_5:                               # %if.end.16
	movl	$161, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB32_7
# BB#6:                                 # %if.then.21
	movl	$161, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %r8
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	call4
	movq	%rax, -8(%rbp)
	jmp	.LBB32_13
.LBB32_7:                               # %if.end.24
	movq	-16(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	callq	encode_file_name
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB32_9
# BB#8:                                 # %lor.lhs.false
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB32_10
.LBB32_9:                               # %if.then.32
	xorl	%eax, %eax
	movabsq	$.L.str.25, %rcx
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %esi
	andl	$-5, %esi
	cmpl	$2, %esi
	sete	%r8b
	movl	$.L.str.25, %esi
	movl	%esi, %edx
	movzbl	%r8b, %esi
	andl	$1, %esi
	xorl	%r9d, %r9d
	movl	%esi, -148(%rbp)        # 4-byte Spill
	movl	%r9d, %esi
	movl	-148(%rbp), %r10d       # 4-byte Reload
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movl	%r9d, %r8d
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	barf_or_query_if_file_exists
.LBB32_10:                              # %if.end.38
	movq	-24(%rbp), %rdi
	callq	SSDATA
	movq	%rax, %rdi
	callq	unlink
	movq	-48(%rbp), %rdi
	movl	%eax, -168(%rbp)        # 4-byte Spill
	callq	SSDATA
	movq	-56(%rbp), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	SSDATA
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	link
	cmpl	$0, %eax
	jge	.LBB32_12
# BB#11:                                # %if.then.46
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	list2
	movabsq	$.L.str.26, %rdi
	movl	-60(%rbp), %edx
	movq	%rax, %rsi
	callq	report_file_errno
.LBB32_12:                              # %if.end.49
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB32_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	Fadd_name_to_file, .Lfunc_end32-Fadd_name_to_file
	.cfi_endproc

	.globl	Ffile_name_absolute_p
	.align	16, 0x90
	.type	Ffile_name_absolute_p,@function
Ffile_name_absolute_p:                  # @Ffile_name_absolute_p
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
	callq	CHECK_STRING
	movq	-8(%rbp), %rdi
	callq	SSDATA
	movq	%rax, %rdi
	callq	file_name_absolute_p
	testb	$1, %al
	jne	.LBB33_1
	jmp	.LBB33_2
.LBB33_1:                               # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jmp	.LBB33_3
.LBB33_2:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)         # 8-byte Spill
.LBB33_3:                               # %cond.end
	movq	-16(%rbp), %rax         # 8-byte Reload
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	Ffile_name_absolute_p, .Lfunc_end33-Ffile_name_absolute_p
	.cfi_endproc

	.align	16, 0x90
	.type	file_name_absolute_p,@function
file_name_absolute_p:                   # @file_name_absolute_p
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
	movb	$1, %al
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movsbl	(%rdi), %ecx
	cmpl	$47, %ecx
	movb	%al, -9(%rbp)           # 1-byte Spill
	je	.LBB34_2
# BB#1:                                 # %lor.rhs
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$126, %ecx
	sete	%dl
	movb	%dl, -9(%rbp)           # 1-byte Spill
.LBB34_2:                               # %lor.end
	movb	-9(%rbp), %al           # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end34:
	.size	file_name_absolute_p, .Lfunc_end34-file_name_absolute_p
	.cfi_endproc

	.globl	Ffile_exists_p
	.align	16, 0x90
	.type	Ffile_exists_p,@function
Ffile_exists_p:                         # @Ffile_exists_p
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fexpand_file_name
	movl	$413, %edi              # imm = 0x19D
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB35_2
# BB#1:                                 # %if.then
	movl	$413, %edi              # imm = 0x19D
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	call2
	movq	%rax, -40(%rbp)
	callq	__errno_location
	movl	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB35_6
.LBB35_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	SSDATA
	movq	%rax, %rdi
	callq	check_existing
	testb	$1, %al
	jne	.LBB35_3
	jmp	.LBB35_4
.LBB35_3:                               # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB35_5
.LBB35_4:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB35_5:                               # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
.LBB35_6:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	Ffile_exists_p, .Lfunc_end35-Ffile_exists_p
	.cfi_endproc

	.globl	Ffile_executable_p
	.align	16, 0x90
	.type	Ffile_executable_p,@function
Ffile_executable_p:                     # @Ffile_executable_p
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fexpand_file_name
	movl	$412, %edi              # imm = 0x19C
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB36_2
# BB#1:                                 # %if.then
	movl	$412, %edi              # imm = 0x19C
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	call2
	movq	%rax, -8(%rbp)
	jmp	.LBB36_6
.LBB36_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	SSDATA
	movq	%rax, %rdi
	callq	check_executable
	testb	$1, %al
	jne	.LBB36_3
	jmp	.LBB36_4
.LBB36_3:                               # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB36_5
.LBB36_4:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB36_5:                               # %cond.end
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
.LBB36_6:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	Ffile_executable_p, .Lfunc_end36-Ffile_executable_p
	.cfi_endproc

	.align	16, 0x90
	.type	check_executable,@function
check_executable:                       # @check_executable
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
	movl	$4294967196, %eax       # imm = 0xFFFFFF9C
	movl	$1, %edx
	movl	$512, %ecx              # imm = 0x200
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movl	%eax, %edi
	callq	faccessat
	cmpl	$0, %eax
	sete	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	check_executable, .Lfunc_end37-check_executable
	.cfi_endproc

	.globl	Ffile_readable_p
	.align	16, 0x90
	.type	Ffile_readable_p,@function
Ffile_readable_p:                       # @Ffile_readable_p
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fexpand_file_name
	movl	$425, %edi              # imm = 0x1A9
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB38_2
# BB#1:                                 # %if.then
	movl	$425, %edi              # imm = 0x1A9
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	call2
	movq	%rax, -8(%rbp)
	jmp	.LBB38_6
.LBB38_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	SSDATA
	movl	$4294967196, %edi       # imm = 0xFFFFFF9C
	movl	$4, %edx
	movl	$512, %ecx              # imm = 0x200
	movq	%rax, %rsi
	callq	faccessat
	cmpl	$0, %eax
	jne	.LBB38_4
# BB#3:                                 # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB38_5
.LBB38_4:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB38_5:                               # %cond.end
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
.LBB38_6:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	Ffile_readable_p, .Lfunc_end38-Ffile_readable_p
	.cfi_endproc

	.globl	Ffile_writable_p
	.align	16, 0x90
	.type	Ffile_writable_p,@function
Ffile_writable_p:                       # @Ffile_writable_p
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fexpand_file_name
	movl	$430, %edi              # imm = 0x1AE
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB39_2
# BB#1:                                 # %if.then
	movl	$430, %edi              # imm = 0x1AE
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	call2
	movq	%rax, -8(%rbp)
	jmp	.LBB39_10
.LBB39_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	SSDATA
	movl	$2, %esi
	movq	%rax, %rdi
	callq	check_writable
	testb	$1, %al
	jne	.LBB39_3
	jmp	.LBB39_4
.LBB39_3:                               # %if.then.10
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB39_10
.LBB39_4:                               # %if.end.12
	callq	__errno_location
	cmpl	$2, (%rax)
	je	.LBB39_6
# BB#5:                                 # %if.then.15
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB39_10
.LBB39_6:                               # %if.end.17
	movq	-24(%rbp), %rdi
	callq	Ffile_name_directory
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	SSDATA
	movl	$3, %esi
	movq	%rax, %rdi
	callq	check_writable
	testb	$1, %al
	jne	.LBB39_7
	jmp	.LBB39_8
.LBB39_7:                               # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB39_9
.LBB39_8:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB39_9:                               # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
.LBB39_10:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	Ffile_writable_p, .Lfunc_end39-Ffile_writable_p
	.cfi_endproc

	.align	16, 0x90
	.type	check_writable,@function
check_writable:                         # @check_writable
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
	movl	$4294967196, %eax       # imm = 0xFFFFFF9C
	movl	$512, %ecx              # imm = 0x200
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rsi
	movl	-12(%rbp), %edx
	movl	%eax, %edi
	callq	faccessat
	cmpl	$0, %eax
	sete	%r8b
	andb	$1, %r8b
	movb	%r8b, -13(%rbp)
	movb	-13(%rbp), %r8b
	andb	$1, %r8b
	movzbl	%r8b, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	check_writable, .Lfunc_end40-check_writable
	.cfi_endproc

	.globl	Faccess_file
	.align	16, 0x90
	.type	Faccess_file,@function
Faccess_file:                           # @Faccess_file
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	xorl	%edi, %edi
	movq	-16(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fexpand_file_name
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	callq	CHECK_STRING
	movl	$158, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB41_2
# BB#1:                                 # %if.then
	movl	$158, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	call3
	movq	%rax, -8(%rbp)
	jmp	.LBB41_5
.LBB41_2:                               # %if.end
	movq	-48(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	SSDATA
	movl	$4294967196, %edi       # imm = 0xFFFFFF9C
	movl	$4, %edx
	movl	$512, %ecx              # imm = 0x200
	movq	%rax, %rsi
	callq	faccessat
	cmpl	$0, %eax
	je	.LBB41_4
# BB#3:                                 # %if.then.11
	movq	-24(%rbp), %rdi
	callq	SSDATA
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	report_file_error
.LBB41_4:                               # %if.end.13
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB41_5:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	Faccess_file, .Lfunc_end41-Faccess_file
	.cfi_endproc

	.globl	emacs_readlinkat
	.align	16, 0x90
	.type	emacs_readlinkat,@function
emacs_readlinkat:                       # @emacs_readlinkat
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
	subq	$1104, %rsp             # imm = 0x450
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %ecx
	movabsq	$emacs_readlinkat.emacs_norealloc_allocator, %r8
	movabsq	$readlinkat, %r9
	leaq	-1056(%rbp), %rdx
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movl	-12(%rbp), %edi
	movq	-24(%rbp), %rsi
	callq	careadlinkat
	movq	%rax, -1064(%rbp)
	cmpq	$0, -1064(%rbp)
	jne	.LBB42_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB42_8
.LBB42_2:                               # %if.end
	movq	-1064(%rbp), %rdi
	callq	build_unibyte_string
	movq	%rax, -32(%rbp)
	movq	-1064(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$47, %ecx
	jne	.LBB42_5
# BB#3:                                 # %land.lhs.true
	movl	$58, %esi
	movq	-1064(%rbp), %rdi
	callq	strchr
	cmpq	$0, %rax
	je	.LBB42_5
# BB#4:                                 # %if.then.6
	movl	$4, %esi
	leaq	-1104(%rbp), %rax
	movabsq	$.L.str.30, %rcx
	movq	$2, -1104(%rbp)
	movq	$-1, -1096(%rbp)
	movq	$0, -1088(%rbp)
	movq	%rcx, -1080(%rbp)
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -1072(%rbp)
	movq	-1072(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	concat2
	movq	%rax, -32(%rbp)
.LBB42_5:                               # %if.end.10
	leaq	-1056(%rbp), %rax
	movq	-1064(%rbp), %rcx
	cmpq	%rax, %rcx
	je	.LBB42_7
# BB#6:                                 # %if.then.14
	movq	-1064(%rbp), %rdi
	callq	xfree
.LBB42_7:                               # %if.end.15
	movq	-32(%rbp), %rdi
	callq	decode_file_name
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB42_8:                               # %return
	movq	-8(%rbp), %rax
	addq	$1104, %rsp             # imm = 0x450
	popq	%rbp
	retq
.Lfunc_end42:
	.size	emacs_readlinkat, .Lfunc_end42-emacs_readlinkat
	.cfi_endproc

	.globl	file_directory_p
	.align	16, 0x90
	.type	file_directory_p,@function
file_directory_p:                       # @file_directory_p
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
	subq	$160, %rsp
	leaq	-152(%rbp), %rsi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	stat
	xorl	%ecx, %ecx
	movb	%cl, %dl
	cmpl	$0, %eax
	movb	%dl, -153(%rbp)         # 1-byte Spill
	jne	.LBB43_2
# BB#1:                                 # %land.rhs
	movl	-128(%rbp), %eax
	andl	$61440, %eax            # imm = 0xF000
	cmpl	$16384, %eax            # imm = 0x4000
	sete	%cl
	movb	%cl, -153(%rbp)         # 1-byte Spill
.LBB43_2:                               # %land.end
	movb	-153(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	file_directory_p, .Lfunc_end43-file_directory_p
	.cfi_endproc

	.globl	Ffile_accessible_directory_p
	.align	16, 0x90
	.type	Ffile_accessible_directory_p,@function
Ffile_accessible_directory_p:           # @Ffile_accessible_directory_p
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fexpand_file_name
	movl	$404, %edi              # imm = 0x194
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB44_2
# BB#1:                                 # %if.then
	movl	$404, %edi              # imm = 0x194
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	call2
	movq	%rax, -40(%rbp)
	callq	__errno_location
	movl	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB44_6
.LBB44_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	file_accessible_directory_p
	testb	$1, %al
	jne	.LBB44_3
	jmp	.LBB44_4
.LBB44_3:                               # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB44_5
.LBB44_4:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB44_5:                               # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
.LBB44_6:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	Ffile_accessible_directory_p, .Lfunc_end44-Ffile_accessible_directory_p
	.cfi_endproc

	.globl	file_accessible_directory_p
	.align	16, 0x90
	.type	file_accessible_directory_p,@function
file_accessible_directory_p:            # @file_accessible_directory_p
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	SSDATA
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	SBYTES
	movq	%rax, -24(%rbp)
	movq	$16384, -48(%rbp)       # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -56(%rbp)
	movb	$0, -57(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB45_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB45_6
.LBB45_2:                               # %if.else
	movq	-24(%rbp), %rax
	addq	$3, %rax
	cmpq	-48(%rbp), %rax
	jg	.LBB45_4
# BB#3:                                 # %cond.true
	movq	-24(%rbp), %rax
	addq	$3, %rax
	movq	-48(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rax
	addq	$18, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB45_5
.LBB45_4:                               # %cond.false
	movb	$1, -57(%rbp)
	movq	-24(%rbp), %rax
	addq	$3, %rax
	movq	%rax, %rdi
	callq	record_xmalloc
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB45_5:                               # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	movabsq	$.L.str.31, %rcx
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	memcpy
	movq	-72(%rbp), %rax
	addq	-24(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	$1, %rcx
	movq	-16(%rbp), %rdx
	movsbl	(%rdx,%rcx), %r8d
	cmpl	$47, %r8d
	sete	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %r8d
	movslq	%r8d, %rcx
	movq	-88(%rbp), %rdx         # 8-byte Reload
	addq	%rcx, %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	strcpy
	movq	-72(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB45_6:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	check_existing
	andb	$1, %al
	movb	%al, -33(%rbp)
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -40(%rbp)
# BB#7:                                 # %do.body
	testb	$1, -57(%rbp)
	je	.LBB45_9
# BB#8:                                 # %if.then.15
	xorl	%edi, %edi
	movb	$0, -57(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB45_9:                               # %if.end.18
	jmp	.LBB45_10
.LBB45_10:                              # %do.end
	movl	-40(%rbp), %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	-116(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, (%rax)
	movb	-33(%rbp), %dl
	andb	$1, %dl
	movzbl	%dl, %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	file_accessible_directory_p, .Lfunc_end45-file_accessible_directory_p
	.cfi_endproc

	.globl	Ffile_regular_p
	.align	16, 0x90
	.type	Ffile_regular_p,@function
Ffile_regular_p:                        # @Ffile_regular_p
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
	subq	$208, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	current_buffer, %rax
	movq	24(%rax), %rsi
	callq	expand_and_dir_to_file
	movl	$426, %edi              # imm = 0x1AA
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	xorl	%edi, %edi
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB46_2
# BB#1:                                 # %if.then
	movl	$426, %edi              # imm = 0x1AA
	movq	-176(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdx
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	call2
	movq	%rax, -8(%rbp)
	jmp	.LBB46_8
.LBB46_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	SSDATA
	leaq	-168(%rbp), %rsi
	movq	%rax, %rdi
	callq	stat
	cmpl	$0, %eax
	jge	.LBB46_4
# BB#3:                                 # %if.then.10
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB46_8
.LBB46_4:                               # %if.end.12
	movl	-144(%rbp), %eax
	andl	$61440, %eax            # imm = 0xF000
	cmpl	$32768, %eax            # imm = 0x8000
	jne	.LBB46_6
# BB#5:                                 # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jmp	.LBB46_7
.LBB46_6:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB46_7:                               # %cond.end
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	%rax, -8(%rbp)
.LBB46_8:                               # %return
	movq	-8(%rbp), %rax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	Ffile_regular_p, .Lfunc_end46-Ffile_regular_p
	.cfi_endproc

	.globl	Ffile_selinux_context
	.align	16, 0x90
	.type	Ffile_selinux_context,@function
Ffile_selinux_context:                  # @Ffile_selinux_context
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
	subq	$96, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	movq	current_buffer, %rax
	movq	24(%rax), %rsi
	callq	expand_and_dir_to_file
	movl	$427, %edi              # imm = 0x1AB
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB47_2
# BB#1:                                 # %if.then
	movl	$427, %edi              # imm = 0x1AB
	movq	-64(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	call2
	movq	%rax, -8(%rbp)
	jmp	.LBB47_3
.LBB47_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rcx
	callq	list4
	movq	%rax, -8(%rbp)
.LBB47_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	Ffile_selinux_context, .Lfunc_end47-Ffile_selinux_context
	.cfi_endproc

	.globl	Fset_file_selinux_context
	.align	16, 0x90
	.type	Fset_file_selinux_context,@function
Fset_file_selinux_context:              # @Fset_file_selinux_context
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	current_buffer, %rsi
	movq	24(%rsi), %rsi
	callq	Fexpand_file_name
	movl	$849, %edi              # imm = 0x351
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB48_2
# BB#1:                                 # %if.then
	movl	$849, %edi              # imm = 0x351
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	call3
	movq	%rax, -8(%rbp)
	jmp	.LBB48_3
.LBB48_2:                               # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB48_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	Fset_file_selinux_context, .Lfunc_end48-Fset_file_selinux_context
	.cfi_endproc

	.globl	Ffile_acl
	.align	16, 0x90
	.type	Ffile_acl,@function
Ffile_acl:                              # @Ffile_acl
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	Ffile_acl, .Lfunc_end49-Ffile_acl
	.cfi_endproc

	.globl	Fset_file_acl
	.align	16, 0x90
	.type	Fset_file_acl,@function
Fset_file_acl:                          # @Fset_file_acl
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	Fset_file_acl, .Lfunc_end50-Fset_file_acl
	.cfi_endproc

	.globl	Ffile_modes
	.align	16, 0x90
	.type	Ffile_modes,@function
Ffile_modes:                            # @Ffile_modes
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
	subq	$208, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	current_buffer, %rax
	movq	24(%rax), %rsi
	callq	expand_and_dir_to_file
	movl	$414, %edi              # imm = 0x19E
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	xorl	%edi, %edi
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB51_2
# BB#1:                                 # %if.then
	movl	$414, %edi              # imm = 0x19E
	movq	-176(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdx
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	call2
	movq	%rax, -8(%rbp)
	jmp	.LBB51_5
.LBB51_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	SSDATA
	leaq	-168(%rbp), %rsi
	movq	%rax, %rdi
	callq	stat
	cmpl	$0, %eax
	jge	.LBB51_4
# BB#3:                                 # %if.then.10
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB51_5
.LBB51_4:                               # %if.end.12
	movl	-144(%rbp), %eax
	andl	$4095, %eax             # imm = 0xFFF
	movl	%eax, %eax
	movl	%eax, %ecx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -8(%rbp)
.LBB51_5:                               # %return
	movq	-8(%rbp), %rax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	Ffile_modes, .Lfunc_end51-Ffile_modes
	.cfi_endproc

	.globl	Fset_file_modes
	.align	16, 0x90
	.type	Fset_file_modes,@function
Fset_file_modes:                        # @Fset_file_modes
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	current_buffer, %rsi
	movq	24(%rsi), %rsi
	callq	Fexpand_file_name
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB52_2
# BB#1:                                 # %cond.true
	jmp	.LBB52_3
.LBB52_2:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB52_3:                               # %cond.end
	movl	$848, %edi              # imm = 0x350
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB52_5
# BB#4:                                 # %if.then
	movl	$848, %edi              # imm = 0x350
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	call3
	movq	%rax, -8(%rbp)
	jmp	.LBB52_8
.LBB52_5:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	SSDATA
	movq	-24(%rbp), %rdi
	sarq	$2, %rdi
	andq	$4095, %rdi             # imm = 0xFFF
	movl	%edi, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	chmod
	cmpl	$0, %eax
	jge	.LBB52_7
# BB#6:                                 # %if.then.18
	movabsq	$.L.str.32, %rdi
	movq	-32(%rbp), %rsi
	callq	report_file_error
.LBB52_7:                               # %if.end.19
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB52_8:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	Fset_file_modes, .Lfunc_end52-Fset_file_modes
	.cfi_endproc

	.globl	Fset_default_file_modes
	.align	16, 0x90
	.type	Fset_default_file_modes,@function
Fset_default_file_modes:                # @Fset_default_file_modes
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
	andq	$7, %rdi
	movl	%edi, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB53_2
# BB#1:                                 # %cond.true
	jmp	.LBB53_3
.LBB53_2:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB53_3:                               # %cond.end
	movl	realmask, %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rcx
	sarq	$2, %rcx
	xorq	$-1, %rcx
	andq	$511, %rcx              # imm = 0x1FF
	movl	%ecx, %eax
	movl	%eax, -20(%rbp)
	callq	block_input
	movl	-20(%rbp), %eax
	movl	%eax, realmask
	movl	-20(%rbp), %edi
	callq	umask
	movl	%eax, -16(%rbp)
	callq	unblock_input
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	Fset_default_file_modes, .Lfunc_end53-Fset_default_file_modes
	.cfi_endproc

	.globl	Fdefault_file_modes
	.align	16, 0x90
	.type	Fdefault_file_modes,@function
Fdefault_file_modes:                    # @Fdefault_file_modes
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
	movl	realmask, %eax
	xorl	$-1, %eax
	andl	$511, %eax              # imm = 0x1FF
	movl	%eax, %eax
	movl	%eax, %ecx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end54:
	.size	Fdefault_file_modes, .Lfunc_end54-Fdefault_file_modes
	.cfi_endproc

	.globl	Fset_file_times
	.align	16, 0x90
	.type	Fset_file_times,@function
Fset_file_times:                        # @Fset_file_times
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	lisp_time_argument
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-16(%rbp), %rdi
	movq	current_buffer, %rax
	movq	24(%rax), %rsi
	callq	Fexpand_file_name
	movl	$850, %edi              # imm = 0x352
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB55_2
# BB#1:                                 # %if.then
	movl	$850, %edi              # imm = 0x352
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	call3
	movq	%rax, -8(%rbp)
	jmp	.LBB55_5
.LBB55_2:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	SSDATA
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %r8
	movq	-56(%rbp), %r9
	movq	%rax, %rsi
	callq	set_file_times
	cmpl	$0, %eax
	je	.LBB55_4
# BB#3:                                 # %if.then.11
	movabsq	$.L.str.33, %rdi
	movq	-32(%rbp), %rsi
	callq	report_file_error
.LBB55_4:                               # %if.end.12
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB55_5:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	Fset_file_times, .Lfunc_end55-Fset_file_times
	.cfi_endproc

	.globl	Funix_sync
	.align	16, 0x90
	.type	Funix_sync,@function
Funix_sync:                             # @Funix_sync
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
	callq	sync
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	popq	%rbp
	retq
.Lfunc_end56:
	.size	Funix_sync, .Lfunc_end56-Funix_sync
	.cfi_endproc

	.globl	Ffile_newer_than_file_p
	.align	16, 0x90
	.type	Ffile_newer_than_file_p,@function
Ffile_newer_than_file_p:                # @Ffile_newer_than_file_p
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	movq	-24(%rbp), %rdi
	callq	CHECK_STRING
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	current_buffer, %rax
	movq	24(%rax), %rsi
	callq	expand_and_dir_to_file
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	current_buffer, %rax
	movq	24(%rax), %rsi
	callq	expand_and_dir_to_file
	movl	$422, %edi              # imm = 0x1A6
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	xorl	%edi, %edi
	movq	%rax, -336(%rbp)
	movq	-336(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-384(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB57_2
# BB#1:                                 # %if.then
	movl	$422, %edi              # imm = 0x1A6
	movq	-40(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	movq	%rax, -336(%rbp)
.LBB57_2:                               # %if.end
	xorl	%edi, %edi
	movq	-336(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-400(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB57_4
# BB#3:                                 # %if.then.11
	movl	$422, %edi              # imm = 0x1A6
	movq	-336(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	call3
	movq	%rax, -8(%rbp)
	jmp	.LBB57_12
.LBB57_4:                               # %if.end.14
	movq	-32(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	SSDATA
	leaq	-184(%rbp), %rsi
	movq	%rax, %rdi
	callq	stat
	cmpl	$0, %eax
	jge	.LBB57_6
# BB#5:                                 # %if.then.20
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB57_12
.LBB57_6:                               # %if.end.22
	movq	-40(%rbp), %rdi
	callq	SSDATA
	leaq	-328(%rbp), %rsi
	movq	%rax, %rdi
	callq	stat
	cmpl	$0, %eax
	jge	.LBB57_8
# BB#7:                                 # %if.then.26
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB57_12
.LBB57_8:                               # %if.end.28
	leaq	-328(%rbp), %rdi
	callq	get_stat_mtime
	leaq	-184(%rbp), %rdi
	movq	%rax, -352(%rbp)
	movq	%rdx, -344(%rbp)
	callq	get_stat_mtime
	movq	%rax, -368(%rbp)
	movq	%rdx, -360(%rbp)
	movq	-352(%rbp), %rdi
	movq	-344(%rbp), %rsi
	movq	-368(%rbp), %rdx
	movq	-360(%rbp), %rcx
	callq	timespec_cmp
	cmpl	$0, %eax
	jge	.LBB57_10
# BB#9:                                 # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -416(%rbp)        # 8-byte Spill
	jmp	.LBB57_11
.LBB57_10:                              # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -416(%rbp)        # 8-byte Spill
.LBB57_11:                              # %cond.end
	movq	-416(%rbp), %rax        # 8-byte Reload
	movq	%rax, -8(%rbp)
.LBB57_12:                              # %return
	movq	-8(%rbp), %rax
	addq	$416, %rsp              # imm = 0x1A0
	popq	%rbp
	retq
.Lfunc_end57:
	.size	Ffile_newer_than_file_p, .Lfunc_end57-Ffile_newer_than_file_p
	.cfi_endproc

	.globl	Finsert_file_contents
	.align	16, 0x90
	.type	Finsert_file_contents,@function
Finsert_file_contents:                  # @Finsert_file_contents
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
	subq	$68528, %rsp            # imm = 0x10BB0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	$0, -216(%rbp)
	callq	SPECPDL_INDEX
	xorl	%edi, %edi
	movq	%rax, -256(%rbp)
	movq	$0, -312(%rbp)
	movb	$0, -313(%rbp)
	movl	$0, -320(%rbp)
	movb	$0, -66473(%rbp)
	movb	$0, -66474(%rbp)
	movb	$0, -66489(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -67064(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movb	%dil, %r9b
	movq	-67064(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	movb	%r9b, -67065(%rbp)      # 1-byte Spill
	je	.LBB58_3
# BB#1:                                 # %land.lhs.true
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	968(%rax), %rax
	movq	%rax, -67080(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movb	%dil, %cl
	movq	-67080(%rbp), %rdx      # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -67065(%rbp)       # 1-byte Spill
	jne	.LBB58_3
# BB#2:                                 # %land.rhs
	movl	$1, %eax
	movl	%eax, %ecx
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	cmpq	16(%rdx), %rcx
	sete	%sil
	movb	%sil, -67065(%rbp)      # 1-byte Spill
.LBB58_3:                               # %land.end
	movb	-67065(%rbp), %al       # 1-byte Reload
	xorl	%edi, %edi
	andb	$1, %al
	movb	%al, -66490(%rbp)
	movq	globals+416, %rcx
	movq	%rcx, -66504(%rbp)
	movb	$0, -66505(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -66528(%rbp)
	movq	current_buffer, %rax
	movq	760(%rax), %rax
	movq	%rax, -66536(%rbp)
	movq	current_buffer, %rax
	movq	776(%rax), %rax
	movq	%rax, -66544(%rbp)
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -66552(%rbp)
	movq	current_buffer, %rax
	cmpq	$0, 784(%rax)
	je	.LBB58_6
# BB#4:                                 # %land.lhs.true.6
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -67088(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67088(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_6
# BB#5:                                 # %if.then
	movabsq	$.L.str.34, %rdi
	movb	$0, %al
	callq	error
.LBB58_6:                               # %if.end
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	56(%rax), %rax
	movq	%rax, -67096(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67096(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_8
# BB#7:                                 # %if.then.11
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fbarf_if_buffer_read_only
	movq	%rax, -67104(%rbp)      # 8-byte Spill
.LBB58_8:                               # %if.end.14
	movl	$966, %edi              # imm = 0x3C6
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Ffboundp
	xorl	%edi, %edi
	movq	%rax, -67112(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67112(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_10
# BB#9:                                 # %if.then.19
	movl	$966, %edi              # imm = 0x3C6
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	call0
	movq	%rax, -67120(%rbp)      # 8-byte Spill
.LBB58_10:                              # %if.end.22
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -272(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -304(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -288(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -296(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -67128(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67128(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	Fexpand_file_name
	xorl	%edi, %edi
	movq	%rax, -8(%rbp)
	callq	builtin_lisp_symbol
	movl	$553, %edi              # imm = 0x229
	movq	%rax, -66488(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -67136(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67136(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	xorl	%edi, %edi
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -67144(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67144(%rbp), %rsi      # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB58_16
# BB#11:                                # %if.then.34
	movl	$553, %edi              # imm = 0x229
	movq	-264(%rbp), %rax
	movq	%rax, -67152(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %r8
	movq	-32(%rbp), %r9
	movq	-40(%rbp), %rsi
	movq	-67152(%rbp), %rdi      # 8-byte Reload
	movq	%rsi, -67160(%rbp)      # 8-byte Spill
	movq	%rax, %rsi
	movq	-67160(%rbp), %rax      # 8-byte Reload
	movq	%rax, (%rsp)
	callq	call6
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %r10d
	cmpl	$3, %r10d
	jne	.LBB58_15
# BB#12:                                # %land.lhs.true.39
	movq	-272(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB58_15
# BB#13:                                # %land.lhs.true.44
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-272(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rsi
	movq	current_buffer, %rcx
	movq	768(%rcx), %rcx
	movq	current_buffer, %rdx
	movq	736(%rdx), %rdx
	addq	$0, %rdx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB58_14
	jmp	.LBB58_15
.LBB58_14:                              # %if.then.53
	movq	-272(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movq	%rax, -216(%rbp)
.LBB58_15:                              # %if.end.59
	jmp	.LBB58_409
.LBB58_16:                              # %if.end.60
	movq	-8(%rbp), %rax
	movq	%rax, -288(%rbp)
	movq	-8(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	SSDATA
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	emacs_open
	movl	%eax, -204(%rbp)
	cmpl	$0, -204(%rbp)
	jge	.LBB58_27
# BB#17:                                # %if.then.66
	callq	__errno_location
	xorl	%edi, %edi
	movl	(%rax), %ecx
	movl	%ecx, -320(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -67168(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67168(%rbp), %rdx      # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB58_19
# BB#18:                                # %if.then.71
	movabsq	$.L.str.6, %rdi
	movq	-288(%rbp), %rsi
	callq	report_file_error
.LBB58_19:                              # %if.end.72
	movl	-320(%rbp), %edi
	callq	time_error_value
	xorl	%edi, %edi
	movq	%rax, -66568(%rbp)
	movq	%rdx, -66560(%rbp)
	movq	-66568(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-66560(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	$-1, -136(%rbp)
	movq	globals+280, %rax
	movq	%rax, -67176(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67176(%rbp), %rdx      # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB58_26
# BB#20:                                # %if.then.77
	jmp	.LBB58_21
.LBB58_21:                              # %do.body
	movq	Vcoding_system_hash_table, %rdi
	callq	XHASH_TABLE
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	globals+280, %rsi
	movq	%rax, %rdi
	callq	hash_lookup
	cmpq	$0, %rax
	jge	.LBB58_24
# BB#22:                                # %land.lhs.true.82
	movq	globals+280, %rdi
	callq	Fcheck_coding_system
	xorl	%edi, %edi
	movq	%rax, -67184(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67184(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB58_24
# BB#23:                                # %if.then.87
	movl	$280, %edi              # imm = 0x118
	callq	builtin_lisp_symbol
	movq	globals+280, %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -67192(%rbp)      # 8-byte Spill
.LBB58_24:                              # %if.end.89
	jmp	.LBB58_25
.LBB58_25:                              # %do.end
	movl	$221, %edi
	callq	builtin_lisp_symbol
	movq	globals+280, %rsi
	movq	%rax, %rdi
	callq	Fset
	movq	%rax, -67200(%rbp)      # 8-byte Spill
.LBB58_26:                              # %if.end.92
	jmp	.LBB58_364
.LBB58_27:                              # %if.end.93
	callq	SPECPDL_INDEX
	movabsq	$close_file_unwind, %rdi
	movq	%rax, -66520(%rbp)
	movl	-204(%rbp), %esi
	callq	record_unwind_protect_int
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -67208(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67208(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_29
# BB#28:                                # %if.then.98
	callq	get_window_points_and_markers
	movabsq	$restore_point_unwind, %rdi
	movq	%rax, -66528(%rbp)
	movq	-66528(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rsi
	callq	record_unwind_protect
.LBB58_29:                              # %if.end.104
	leaq	-184(%rbp), %rsi
	movl	-204(%rbp), %edi
	callq	fstat
	cmpl	$0, %eax
	je	.LBB58_31
# BB#30:                                # %if.then.108
	movabsq	$.L.str.7, %rdi
	movq	-288(%rbp), %rsi
	callq	report_file_error
.LBB58_31:                              # %if.end.109
	leaq	-184(%rbp), %rdi
	callq	get_stat_mtime
	movq	%rax, -66584(%rbp)
	movq	%rdx, -66576(%rbp)
	movq	-66584(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-66576(%rbp), %rax
	movq	%rax, -192(%rbp)
	movl	-160(%rbp), %ecx
	andl	$61440, %ecx            # imm = 0xF000
	cmpl	$32768, %ecx            # imm = 0x8000
	je	.LBB58_39
# BB#32:                                # %if.then.115
	xorl	%edi, %edi
	movb	$1, -313(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -67216(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67216(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_34
# BB#33:                                # %if.then.119
	jmp	.LBB58_364
.LBB58_34:                              # %if.end.120
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -67224(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67224(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB58_37
# BB#35:                                # %lor.lhs.false
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -67232(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67232(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB58_37
# BB#36:                                # %lor.lhs.false.127
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -67240(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67240(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_38
.LBB58_37:                              # %if.then.131
	movl	$411, %edi              # imm = 0x19B
	callq	builtin_lisp_symbol
	movabsq	$.L.str.35, %rdi
	movq	%rax, -67248(%rbp)      # 8-byte Spill
	callq	build_string
	movq	-288(%rbp), %rdx
	movq	-67248(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	xsignal2
.LBB58_38:                              # %if.end.134
	jmp	.LBB58_39
.LBB58_39:                              # %if.end.135
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -67256(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67256(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_47
# BB#40:                                # %if.then.139
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -67264(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67264(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB58_42
# BB#41:                                # %lor.lhs.false.143
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -67272(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67272(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_43
.LBB58_42:                              # %if.then.147
	movabsq	$.L.str.36, %rdi
	movb	$0, %al
	callq	error
.LBB58_43:                              # %if.end.148
	movl	$1, %eax
	movl	%eax, %ecx
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	cmpq	16(%rdx), %rcx
	jge	.LBB58_46
# BB#44:                                # %land.lhs.true.153
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -67280(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67280(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB58_46
# BB#45:                                # %if.then.157
	movabsq	$.L.str.37, %rdi
	movb	$0, %al
	callq	error
.LBB58_46:                              # %if.end.158
	jmp	.LBB58_47
.LBB58_47:                              # %if.end.159
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -67288(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67288(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_49
# BB#48:                                # %if.then.163
	movq	-24(%rbp), %rdi
	callq	file_offset
	movq	%rax, -232(%rbp)
	jmp	.LBB58_50
.LBB58_49:                              # %if.else
	movq	$0, -232(%rbp)
.LBB58_50:                              # %if.end.165
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -67296(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67296(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_52
# BB#51:                                # %if.then.169
	movq	-32(%rbp), %rdi
	callq	file_offset
	movq	%rax, -240(%rbp)
	jmp	.LBB58_60
.LBB58_52:                              # %if.else.171
	testb	$1, -313(%rbp)
	je	.LBB58_54
# BB#53:                                # %if.then.173
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rax, -240(%rbp)
	jmp	.LBB58_59
.LBB58_54:                              # %if.else.174
	movq	-136(%rbp), %rax
	movq	%rax, -240(%rbp)
	cmpq	$0, -240(%rbp)
	jge	.LBB58_56
# BB#55:                                # %if.then.178
	callq	buffer_overflow
.LBB58_56:                              # %if.end.179
	cmpq	$0, -240(%rbp)
	jne	.LBB58_58
# BB#57:                                # %if.then.182
	movq	$65536, -240(%rbp)      # imm = 0x10000
.LBB58_58:                              # %if.end.183
	jmp	.LBB58_59
.LBB58_59:                              # %if.end.184
	jmp	.LBB58_60
.LBB58_60:                              # %if.end.185
	testb	$1, -313(%rbp)
	jne	.LBB58_72
# BB#61:                                # %if.then.187
	movq	-240(%rbp), %rax
	cmpq	-136(%rbp), %rax
	jge	.LBB58_63
# BB#62:                                # %cond.true
	movq	-240(%rbp), %rax
	movq	%rax, -67304(%rbp)      # 8-byte Spill
	jmp	.LBB58_64
.LBB58_63:                              # %cond.false
	movq	-136(%rbp), %rax
	movq	%rax, -67304(%rbp)      # 8-byte Spill
.LBB58_64:                              # %cond.end
	movq	-67304(%rbp), %rax      # 8-byte Reload
	movq	%rax, -66592(%rbp)
	movq	-232(%rbp), %rax
	cmpq	-66592(%rbp), %rax
	jge	.LBB58_71
# BB#65:                                # %if.then.194
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	32(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, -67312(%rbp)      # 8-byte Spill
	movq	%rax, -67320(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67312(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_67
# BB#66:                                # %cond.true.199
	movq	current_buffer, %rax
	movq	776(%rax), %rax
	movq	current_buffer, %rcx
	subq	760(%rcx), %rax
	movq	%rax, -67328(%rbp)      # 8-byte Spill
	jmp	.LBB58_68
.LBB58_67:                              # %cond.false.203
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -67328(%rbp)      # 8-byte Spill
	jmp	.LBB58_68
.LBB58_68:                              # %cond.end.204
	movq	-67328(%rbp), %rax      # 8-byte Reload
	movabsq	$2305843009213693950, %rcx # imm = 0x1FFFFFFFFFFFFFFE
	movq	-67320(%rbp), %rdx      # 8-byte Reload
	subq	%rax, %rdx
	movq	%rdx, -66600(%rbp)
	subq	-66600(%rbp), %rcx
	movq	%rcx, -66608(%rbp)
	movq	-66592(%rbp), %rax
	subq	-232(%rbp), %rax
	movq	%rax, -66616(%rbp)
	movq	-66608(%rbp), %rax
	cmpq	-66616(%rbp), %rax
	jge	.LBB58_70
# BB#69:                                # %if.then.211
	callq	buffer_overflow
.LBB58_70:                              # %if.end.212
	jmp	.LBB58_71
.LBB58_71:                              # %if.end.213
	jmp	.LBB58_72
.LBB58_72:                              # %if.end.214
	movl	$190, %edi
	movq	current_buffer, %rax
	movb	936(%rax), %cl
	andb	$-3, %cl
	orb	$2, %cl
	movb	%cl, 936(%rax)
	movq	globals+280, %rax
	movq	%rax, -67336(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67336(%rbp), %rdx      # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB58_74
# BB#73:                                # %if.then.218
	movl	$989, %edi              # imm = 0x3DD
	callq	builtin_lisp_symbol
	movl	$973, %edi              # imm = 0x3CD
	movq	%rax, -67344(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67344(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	coding_inherit_eol_type
	leaq	-66472(%rbp), %rsi
	movq	%rax, -66488(%rbp)
	movq	-66488(%rbp), %rdi
	callq	setup_coding_system
	movb	$1, -66474(%rbp)
	jmp	.LBB58_114
.LBB58_74:                              # %if.else.222
	movl	$1, %eax
	movl	%eax, %ecx
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	cmpq	16(%rdx), %rcx
	jge	.LBB58_113
# BB#75:                                # %if.then.227
	xorl	%edi, %edi
	movq	globals+280, %rax
	movq	%rax, -67352(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67352(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_77
# BB#76:                                # %if.then.231
	movq	globals+280, %rax
	movq	%rax, -66488(%rbp)
	jmp	.LBB58_102
.LBB58_77:                              # %if.else.232
	testb	$1, -313(%rbp)
	jne	.LBB58_97
# BB#78:                                # %land.lhs.true.234
	xorl	%edi, %edi
	movq	globals+2136, %rax
	movq	%rax, -67360(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67360(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_97
# BB#79:                                # %if.then.238
	cmpq	$4096, -136(%rbp)       # imm = 0x1000
	jg	.LBB58_81
# BB#80:                                # %if.then.242
	movl	$4096, %eax             # imm = 0x1000
	movl	%eax, %edx
	leaq	-65856(%rbp), %rsi
	movl	-204(%rbp), %edi
	callq	emacs_read
	movl	%eax, %edi
	movl	%edi, -66620(%rbp)
	jmp	.LBB58_89
.LBB58_81:                              # %if.else.245
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %edx
	leaq	-65856(%rbp), %rsi
	movl	-204(%rbp), %edi
	callq	emacs_read
	movl	%eax, %edi
	movl	%edi, -66620(%rbp)
	cmpl	$1024, -66620(%rbp)     # imm = 0x400
	jne	.LBB58_88
# BB#82:                                # %if.then.251
	movq	$-3072, %rsi            # imm = 0xFFFFFFFFFFFFF400
	movl	$2, %edx
	movl	-204(%rbp), %edi
	callq	lseek
	cmpq	$0, %rax
	jge	.LBB58_84
# BB#83:                                # %if.then.255
	movabsq	$.L.str.38, %rdi
	movq	-288(%rbp), %rsi
	callq	report_file_error
.LBB58_84:                              # %if.end.256
	movl	$3072, %eax             # imm = 0xC00
	movl	%eax, %edx
	leaq	-65856(%rbp), %rcx
	movl	-204(%rbp), %edi
	movslq	-66620(%rbp), %rsi
	addq	%rsi, %rcx
	movq	%rcx, %rsi
	callq	emacs_read
	movl	%eax, %edi
	movl	%edi, -66624(%rbp)
	cmpl	$0, -66624(%rbp)
	jge	.LBB58_86
# BB#85:                                # %cond.true.262
	movl	-66624(%rbp), %eax
	movl	%eax, -67364(%rbp)      # 4-byte Spill
	jmp	.LBB58_87
.LBB58_86:                              # %cond.false.263
	movl	-66620(%rbp), %eax
	addl	-66624(%rbp), %eax
	movl	%eax, -67364(%rbp)      # 4-byte Spill
.LBB58_87:                              # %cond.end.265
	movl	-67364(%rbp), %eax      # 4-byte Reload
	movl	%eax, -66620(%rbp)
.LBB58_88:                              # %if.end.267
	jmp	.LBB58_89
.LBB58_89:                              # %if.end.268
	cmpl	$0, -66620(%rbp)
	jge	.LBB58_91
# BB#90:                                # %if.then.271
	movabsq	$.L.str.13, %rdi
	movq	-288(%rbp), %rsi
	callq	report_file_error
.LBB58_91:                              # %if.else.272
	cmpl	$0, -66620(%rbp)
	jle	.LBB58_95
# BB#92:                                # %if.then.275
	movl	$4, %esi
	leaq	-66664(%rbp), %rax
	movabsq	$.L.str.39, %rcx
	movq	$23, -66664(%rbp)
	movq	$-1, -66656(%rbp)
	movq	$0, -66648(%rbp)
	movq	%rcx, -66640(%rbp)
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -66632(%rbp)
	movq	current_buffer, %rax
	movq	%rax, -66672(%rbp)
	callq	record_unwind_current_buffer
	movq	-66632(%rbp), %rdi
	callq	Fget_buffer_create
	movq	%rax, -66680(%rbp)
	movq	-66680(%rbp), %rdi
	callq	XBUFFER
	movq	%rax, -66688(%rbp)
	movq	-66688(%rbp), %rdi
	callq	delete_all_overlays
	movq	-66688(%rbp), %rdi
	movq	current_buffer, %rax
	movq	24(%rax), %rsi
	callq	bset_directory
	xorl	%edi, %edi
	movq	-66688(%rbp), %rax
	movq	%rax, -67376(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67376(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_read_only
	xorl	%edi, %edi
	movq	-66688(%rbp), %rax
	movq	%rax, -67384(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67384(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_filename
	movl	$901, %edi              # imm = 0x385
	movq	-66688(%rbp), %rax
	movq	%rax, -67392(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67392(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_undo_list
	movq	-66688(%rbp), %rdi
	callq	set_buffer_internal
	callq	Ferase_buffer
	xorl	%edi, %edi
	movq	-66688(%rbp), %rcx
	movq	%rax, -67400(%rbp)      # 8-byte Spill
	movq	%rcx, -67408(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67408(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_enable_multibyte_characters
	xorl	%edx, %edx
	leaq	-65856(%rbp), %rdi
	movslq	-66620(%rbp), %rsi
	movslq	-66620(%rbp), %rax
	movl	%edx, -67412(%rbp)      # 4-byte Spill
	movq	%rax, %rdx
	movl	-67412(%rbp), %ecx      # 4-byte Reload
	movl	-67412(%rbp), %r8d      # 4-byte Reload
	movl	-67412(%rbp), %r9d      # 4-byte Reload
	callq	insert_1_both
	movl	$1, %ecx
	movl	%ecx, %eax
	movq	current_buffer, %rdi
	movq	%rax, %rsi
	movq	%rax, %rdx
	callq	temp_set_point_both
	movq	globals+2136, %rdi
	movq	-8(%rbp), %rsi
	movslq	-66620(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	call2
	movq	%rax, -66488(%rbp)
	movq	-66672(%rbp), %rdi
	callq	set_buffer_internal
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorl	%edx, %edx
	movq	specpdl_ptr, %rax
	addq	$-32, %rax
	movq	%rax, specpdl_ptr
	movl	-204(%rbp), %edi
	callq	lseek
	cmpq	$0, %rax
	jge	.LBB58_94
# BB#93:                                # %if.then.294
	movabsq	$.L.str.38, %rdi
	movq	-288(%rbp), %rsi
	callq	report_file_error
.LBB58_94:                              # %if.end.295
	jmp	.LBB58_95
.LBB58_95:                              # %if.end.296
	jmp	.LBB58_96
.LBB58_96:                              # %if.end.297
	jmp	.LBB58_97
.LBB58_97:                              # %if.end.298
	xorl	%edi, %edi
	movq	-66488(%rbp), %rax
	movq	%rax, -67424(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67424(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB58_101
# BB#98:                                # %if.then.302
	movl	$553, %edi              # imm = 0x229
	callq	builtin_lisp_symbol
	movl	$6, %edi
                                        # kill: RDI<def> EDI<kill>
	leaq	-66736(%rbp), %rsi
	movq	%rax, -66736(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -66728(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -66720(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -66712(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -66704(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -66696(%rbp)
	callq	Ffind_operation_coding_system
	movq	%rax, -66488(%rbp)
	movq	-66488(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB58_100
# BB#99:                                # %if.then.315
	movq	-66488(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -66488(%rbp)
.LBB58_100:                             # %if.end.318
	jmp	.LBB58_101
.LBB58_101:                             # %if.end.319
	jmp	.LBB58_102
.LBB58_102:                             # %if.end.320
	xorl	%edi, %edi
	movq	-66488(%rbp), %rax
	movq	%rax, -67432(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67432(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB58_104
# BB#103:                               # %if.then.324
	movl	$958, %edi              # imm = 0x3BE
	callq	builtin_lisp_symbol
	movq	%rax, -66488(%rbp)
	jmp	.LBB58_110
.LBB58_104:                             # %if.else.326
	jmp	.LBB58_105
.LBB58_105:                             # %do.body.327
	movq	Vcoding_system_hash_table, %rdi
	callq	XHASH_TABLE
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-66488(%rbp), %rsi
	movq	%rax, %rdi
	callq	hash_lookup
	cmpq	$0, %rax
	jge	.LBB58_108
# BB#106:                               # %land.lhs.true.332
	movq	-66488(%rbp), %rdi
	callq	Fcheck_coding_system
	xorl	%edi, %edi
	movq	%rax, -67440(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67440(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB58_108
# BB#107:                               # %if.then.337
	movl	$280, %edi              # imm = 0x118
	callq	builtin_lisp_symbol
	movq	-66488(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -67448(%rbp)      # 8-byte Spill
.LBB58_108:                             # %if.end.339
	jmp	.LBB58_109
.LBB58_109:                             # %do.end.340
	jmp	.LBB58_110
.LBB58_110:                             # %if.end.341
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -67456(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67456(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB58_112
# BB#111:                               # %if.then.345
	movq	-66488(%rbp), %rdi
	callq	raw_text_coding_system
	movq	%rax, -66488(%rbp)
.LBB58_112:                             # %if.end.347
	leaq	-66472(%rbp), %rsi
	movq	-66488(%rbp), %rdi
	callq	setup_coding_system
	movb	$1, -66474(%rbp)
.LBB58_113:                             # %if.end.348
	jmp	.LBB58_114
.LBB58_114:                             # %if.end.349
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -67464(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67464(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_235
# BB#115:                               # %land.lhs.true.353
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jge	.LBB58_235
# BB#116:                               # %land.lhs.true.357
	xorl	%edi, %edi
	movq	-66488(%rbp), %rax
	movq	%rax, -67472(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67472(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_119
# BB#117:                               # %lor.lhs.false.361
	movl	-66464(%rbp), %eax
	shrl	$20, %eax
	andl	$1, %eax
	testl	$1, %eax
	jne	.LBB58_235
# BB#118:                               # %lor.lhs.false.365
	movl	-66464(%rbp), %eax
	andl	$16383, %eax            # imm = 0x3FFF
	andl	$1024, %eax             # imm = 0x400
	cmpl	$0, %eax
	jne	.LBB58_235
.LBB58_119:                             # %if.then.370
	movb	$0, -66745(%rbp)
	cmpq	$0, -232(%rbp)
	je	.LBB58_123
# BB#120:                               # %if.then.373
	xorl	%edx, %edx
	movl	-204(%rbp), %edi
	movq	-232(%rbp), %rsi
	callq	lseek
	cmpq	$0, %rax
	jge	.LBB58_122
# BB#121:                               # %if.then.377
	movabsq	$.L.str.38, %rdi
	movq	-288(%rbp), %rsi
	callq	report_file_error
.LBB58_122:                             # %if.end.378
	jmp	.LBB58_123
.LBB58_123:                             # %if.end.379
	movb	$1, immediate_quit
# BB#124:                               # %do.body.380
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -67480(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67480(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_127
# BB#125:                               # %land.lhs.true.384
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -67488(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67488(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB58_127
# BB#126:                               # %if.then.388
	callq	process_quit_flag
	jmp	.LBB58_130
.LBB58_127:                             # %if.else.389
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB58_129
# BB#128:                               # %if.then.391
	callq	process_pending_signals
.LBB58_129:                             # %if.end.392
	jmp	.LBB58_130
.LBB58_130:                             # %if.end.393
	jmp	.LBB58_131
.LBB58_131:                             # %do.end.394
	jmp	.LBB58_132
.LBB58_132:                             # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB58_143 Depth 2
	movl	$65536, %eax            # imm = 0x10000
	movl	%eax, %edx
	leaq	-65856(%rbp), %rsi
	movl	-204(%rbp), %edi
	callq	emacs_read
	movl	%eax, %edi
	movl	%edi, -66752(%rbp)
	cmpl	$0, -66752(%rbp)
	jge	.LBB58_134
# BB#133:                               # %if.then.401
	movabsq	$.L.str.13, %rdi
	movq	-288(%rbp), %rsi
	callq	report_file_error
.LBB58_134:                             # %if.else.402
                                        #   in Loop: Header=BB58_132 Depth=1
	cmpl	$0, -66752(%rbp)
	jne	.LBB58_136
# BB#135:                               # %if.then.405
	jmp	.LBB58_154
.LBB58_136:                             # %if.end.406
                                        #   in Loop: Header=BB58_132 Depth=1
	jmp	.LBB58_137
.LBB58_137:                             # %if.end.407
                                        #   in Loop: Header=BB58_132 Depth=1
	movl	-66464(%rbp), %eax
	andl	$16383, %eax            # imm = 0x3FFF
	andl	$4096, %eax             # imm = 0x1000
	cmpl	$0, %eax
	je	.LBB58_139
# BB#138:                               # %if.then.413
                                        #   in Loop: Header=BB58_132 Depth=1
	movl	$1, %ecx
	xorl	%r8d, %r8d
	leaq	-65856(%rbp), %rdi
	movslq	-66752(%rbp), %rsi
	movslq	-66752(%rbp), %rdx
	movq	-66488(%rbp), %r9
	callq	detect_coding_system
	leaq	-66472(%rbp), %rsi
	movq	%rax, -66488(%rbp)
	movq	-66488(%rbp), %rdi
	callq	setup_coding_system
.LBB58_139:                             # %if.end.418
                                        #   in Loop: Header=BB58_132 Depth=1
	movl	-66464(%rbp), %eax
	shrl	$20, %eax
	andl	$1, %eax
	testl	$1, %eax
	jne	.LBB58_141
# BB#140:                               # %lor.lhs.false.425
                                        #   in Loop: Header=BB58_132 Depth=1
	movl	-66464(%rbp), %eax
	andl	$16383, %eax            # imm = 0x3FFF
	andl	$1024, %eax             # imm = 0x400
	cmpl	$0, %eax
	je	.LBB58_142
.LBB58_141:                             # %if.then.431
	movb	$1, -66745(%rbp)
	jmp	.LBB58_154
.LBB58_142:                             # %if.end.432
                                        #   in Loop: Header=BB58_132 Depth=1
	movl	$0, -66756(%rbp)
.LBB58_143:                             # %while.cond.433
                                        #   Parent Loop BB58_132 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-66756(%rbp), %eax
	cmpl	-66752(%rbp), %eax
	movb	%cl, -67489(%rbp)       # 1-byte Spill
	jge	.LBB58_149
# BB#144:                               # %land.lhs.true.436
                                        #   in Loop: Header=BB58_143 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-66536(%rbp), %rdx
	movq	current_buffer, %rsi
	cmpq	776(%rsi), %rdx
	movb	%cl, -67489(%rbp)       # 1-byte Spill
	jge	.LBB58_149
# BB#145:                               # %land.rhs.440
                                        #   in Loop: Header=BB58_143 Depth=2
	movq	-66536(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB58_147
# BB#146:                               # %cond.true.444
                                        #   in Loop: Header=BB58_143 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -67504(%rbp)      # 8-byte Spill
	jmp	.LBB58_148
.LBB58_147:                             # %cond.false.446
                                        #   in Loop: Header=BB58_143 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -67504(%rbp)      # 8-byte Spill
	jmp	.LBB58_148
.LBB58_148:                             # %cond.end.447
                                        #   in Loop: Header=BB58_143 Depth=2
	movq	-67504(%rbp), %rax      # 8-byte Reload
	addq	-66536(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movslq	-66756(%rbp), %rax
	movsbl	-65856(%rbp,%rax), %esi
	cmpl	%esi, %edx
	sete	%dil
	movb	%dil, -67489(%rbp)      # 1-byte Spill
.LBB58_149:                             # %land.end.458
                                        #   in Loop: Header=BB58_143 Depth=2
	movb	-67489(%rbp), %al       # 1-byte Reload
	testb	$1, %al
	jne	.LBB58_150
	jmp	.LBB58_151
.LBB58_150:                             # %while.body.459
                                        #   in Loop: Header=BB58_143 Depth=2
	movq	-66536(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -66536(%rbp)
	movl	-66756(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -66756(%rbp)
	jmp	.LBB58_143
.LBB58_151:                             # %while.end
                                        #   in Loop: Header=BB58_132 Depth=1
	movl	-66756(%rbp), %eax
	cmpl	-66752(%rbp), %eax
	je	.LBB58_153
# BB#152:                               # %if.then.463
	jmp	.LBB58_154
.LBB58_153:                             # %if.end.464
                                        #   in Loop: Header=BB58_132 Depth=1
	jmp	.LBB58_132
.LBB58_154:                             # %while.end.465
	movb	$0, immediate_quit
	movq	-66536(%rbp), %rax
	movq	current_buffer, %rcx
	subq	760(%rcx), %rax
	movq	-240(%rbp), %rcx
	subq	-232(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB58_156
# BB#155:                               # %if.then.471
	movl	-204(%rbp), %edi
	callq	emacs_close
	movq	-66520(%rbp), %rdi
	movl	%eax, -67508(%rbp)      # 4-byte Spill
	callq	clear_unwind_protect
	xorl	%eax, %eax
	movq	-66536(%rbp), %rdi
	movq	-66544(%rbp), %rsi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	del_range_1
	movq	%rax, -67520(%rbp)      # 8-byte Spill
	jmp	.LBB58_409
.LBB58_156:                             # %if.end.474
	movb	$1, immediate_quit
# BB#157:                               # %do.body.475
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -67528(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67528(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_160
# BB#158:                               # %land.lhs.true.479
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -67536(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67536(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB58_160
# BB#159:                               # %if.then.483
	callq	process_quit_flag
	jmp	.LBB58_163
.LBB58_160:                             # %if.else.484
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB58_162
# BB#161:                               # %if.then.486
	callq	process_pending_signals
.LBB58_162:                             # %if.end.487
	jmp	.LBB58_163
.LBB58_163:                             # %if.end.488
	jmp	.LBB58_164
.LBB58_164:                             # %do.end.489
	jmp	.LBB58_165
.LBB58_165:                             # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB58_174 Depth 2
                                        #     Child Loop BB58_182 Depth 2
	movb	-66745(%rbp), %al
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB58_166
	jmp	.LBB58_205
.LBB58_166:                             # %while.body.491
                                        #   in Loop: Header=BB58_165 Depth=1
	movq	-240(%rbp), %rax
	movq	current_buffer, %rcx
	movq	776(%rcx), %rcx
	subq	-66544(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -66784(%rbp)
	cmpq	$0, -66784(%rbp)
	jne	.LBB58_168
# BB#167:                               # %if.then.499
	jmp	.LBB58_205
.LBB58_168:                             # %if.end.500
                                        #   in Loop: Header=BB58_165 Depth=1
	cmpq	$65536, -66784(%rbp)    # imm = 0x10000
	jae	.LBB58_170
# BB#169:                               # %cond.true.503
                                        #   in Loop: Header=BB58_165 Depth=1
	movq	-66784(%rbp), %rax
	movq	%rax, -67544(%rbp)      # 8-byte Spill
	jmp	.LBB58_171
.LBB58_170:                             # %cond.false.504
                                        #   in Loop: Header=BB58_165 Depth=1
	movl	$65536, %eax            # imm = 0x10000
	movl	%eax, %ecx
	movq	%rcx, -67544(%rbp)      # 8-byte Spill
	jmp	.LBB58_171
.LBB58_171:                             # %cond.end.505
                                        #   in Loop: Header=BB58_165 Depth=1
	movq	-67544(%rbp), %rax      # 8-byte Reload
	xorl	%edx, %edx
	movl	%eax, %ecx
	movl	%ecx, -66772(%rbp)
	movl	-204(%rbp), %edi
	movq	-66784(%rbp), %rax
	movslq	-66772(%rbp), %rsi
	subq	%rsi, %rax
	movq	%rax, %rsi
	callq	lseek
	cmpq	$0, %rax
	jge	.LBB58_173
# BB#172:                               # %if.then.513
	movabsq	$.L.str.38, %rdi
	movq	-288(%rbp), %rsi
	callq	report_file_error
.LBB58_173:                             # %if.end.514
                                        #   in Loop: Header=BB58_165 Depth=1
	movl	$0, -66764(%rbp)
	movl	$0, -66760(%rbp)
.LBB58_174:                             # %while.cond.515
                                        #   Parent Loop BB58_165 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-66760(%rbp), %eax
	cmpl	-66772(%rbp), %eax
	jge	.LBB58_181
# BB#175:                               # %while.body.518
                                        #   in Loop: Header=BB58_174 Depth=2
	leaq	-65856(%rbp), %rax
	movl	-204(%rbp), %edi
	movslq	-66760(%rbp), %rcx
	addq	%rcx, %rax
	movl	-66772(%rbp), %edx
	subl	-66760(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rax, %rsi
	callq	emacs_read
	movl	%eax, %edi
	movl	%edi, -66764(%rbp)
	cmpl	$0, -66764(%rbp)
	jge	.LBB58_177
# BB#176:                               # %if.then.528
	movabsq	$.L.str.13, %rdi
	movq	-288(%rbp), %rsi
	callq	report_file_error
.LBB58_177:                             # %if.else.529
                                        #   in Loop: Header=BB58_174 Depth=2
	cmpl	$0, -66764(%rbp)
	jne	.LBB58_179
# BB#178:                               # %if.then.532
                                        #   in Loop: Header=BB58_165 Depth=1
	jmp	.LBB58_181
.LBB58_179:                             # %if.end.533
                                        #   in Loop: Header=BB58_174 Depth=2
	jmp	.LBB58_180
.LBB58_180:                             # %if.end.534
                                        #   in Loop: Header=BB58_174 Depth=2
	movl	-66764(%rbp), %eax
	addl	-66760(%rbp), %eax
	movl	%eax, -66760(%rbp)
	jmp	.LBB58_174
.LBB58_181:                             # %while.end.536
                                        #   in Loop: Header=BB58_165 Depth=1
	movl	-66760(%rbp), %eax
	movl	%eax, -66768(%rbp)
.LBB58_182:                             # %while.cond.537
                                        #   Parent Loop BB58_165 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -66768(%rbp)
	movb	%cl, -67545(%rbp)       # 1-byte Spill
	jle	.LBB58_188
# BB#183:                               # %land.lhs.true.540
                                        #   in Loop: Header=BB58_182 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-66544(%rbp), %rdx
	cmpq	-66536(%rbp), %rdx
	movb	%cl, -67545(%rbp)       # 1-byte Spill
	jle	.LBB58_188
# BB#184:                               # %land.rhs.543
                                        #   in Loop: Header=BB58_182 Depth=2
	movq	-66544(%rbp), %rax
	subq	$1, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB58_186
# BB#185:                               # %cond.true.549
                                        #   in Loop: Header=BB58_182 Depth=2
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -67560(%rbp)      # 8-byte Spill
	jmp	.LBB58_187
.LBB58_186:                             # %cond.false.552
                                        #   in Loop: Header=BB58_182 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -67560(%rbp)      # 8-byte Spill
	jmp	.LBB58_187
.LBB58_187:                             # %cond.end.553
                                        #   in Loop: Header=BB58_182 Depth=2
	movq	-67560(%rbp), %rax      # 8-byte Reload
	movq	-66544(%rbp), %rcx
	subq	$1, %rcx
	addq	%rcx, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movl	-66768(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rax
	movsbl	-65856(%rbp,%rax), %esi
	cmpl	%esi, %edx
	sete	%dil
	movb	%dil, -67545(%rbp)      # 1-byte Spill
.LBB58_188:                             # %land.end.568
                                        #   in Loop: Header=BB58_182 Depth=2
	movb	-67545(%rbp), %al       # 1-byte Reload
	testb	$1, %al
	jne	.LBB58_189
	jmp	.LBB58_190
.LBB58_189:                             # %while.body.569
                                        #   in Loop: Header=BB58_182 Depth=2
	movq	-66544(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -66544(%rbp)
	movl	-66768(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -66768(%rbp)
	jmp	.LBB58_182
.LBB58_190:                             # %while.end.571
                                        #   in Loop: Header=BB58_165 Depth=1
	cmpl	$0, -66768(%rbp)
	je	.LBB58_202
# BB#191:                               # %if.then.574
	movq	-66544(%rbp), %rax
	cmpq	-66536(%rbp), %rax
	jle	.LBB58_201
# BB#192:                               # %land.lhs.true.577
	movq	-66544(%rbp), %rax
	subq	$1, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB58_194
# BB#193:                               # %cond.true.583
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -67568(%rbp)      # 8-byte Spill
	jmp	.LBB58_195
.LBB58_194:                             # %cond.false.586
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -67568(%rbp)      # 8-byte Spill
	jmp	.LBB58_195
.LBB58_195:                             # %cond.end.587
	movq	-67568(%rbp), %rax      # 8-byte Reload
	movq	-66544(%rbp), %rcx
	subq	$1, %rcx
	addq	%rcx, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	cmpl	$128, %edx
	jl	.LBB58_201
# BB#196:                               # %land.lhs.true.598
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -67576(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67576(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_201
# BB#197:                               # %land.lhs.true.603
	movl	-66464(%rbp), %eax
	shrl	$20, %eax
	andl	$1, %eax
	testl	$1, %eax
	jne	.LBB58_200
# BB#198:                               # %lor.lhs.false.610
	movl	-66464(%rbp), %eax
	andl	$16383, %eax            # imm = 0x3FFF
	andl	$1024, %eax             # imm = 0x400
	cmpl	$0, %eax
	jne	.LBB58_200
# BB#199:                               # %lor.lhs.false.616
	movl	-66464(%rbp), %eax
	andl	$16383, %eax            # imm = 0x3FFF
	andl	$4096, %eax             # imm = 0x1000
	cmpl	$0, %eax
	je	.LBB58_201
.LBB58_200:                             # %if.then.622
	movb	$1, -66745(%rbp)
.LBB58_201:                             # %if.end.623
	jmp	.LBB58_205
.LBB58_202:                             # %if.end.624
                                        #   in Loop: Header=BB58_165 Depth=1
	cmpl	$0, -66764(%rbp)
	jne	.LBB58_204
# BB#203:                               # %if.then.627
	jmp	.LBB58_205
.LBB58_204:                             # %if.end.628
                                        #   in Loop: Header=BB58_165 Depth=1
	jmp	.LBB58_165
.LBB58_205:                             # %while.end.629
	movb	$0, immediate_quit
	testb	$1, -66745(%rbp)
	jne	.LBB58_234
# BB#206:                               # %if.then.631
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -67584(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67584(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_216
# BB#207:                               # %if.then.636
	jmp	.LBB58_208
.LBB58_208:                             # %while.cond.637
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-66536(%rbp), %rdx
	movq	current_buffer, %rsi
	cmpq	760(%rsi), %rdx
	movb	%cl, -67585(%rbp)       # 1-byte Spill
	jle	.LBB58_213
# BB#209:                               # %land.rhs.641
                                        #   in Loop: Header=BB58_208 Depth=1
	movq	-66536(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB58_211
# BB#210:                               # %cond.true.646
                                        #   in Loop: Header=BB58_208 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -67600(%rbp)      # 8-byte Spill
	jmp	.LBB58_212
.LBB58_211:                             # %cond.false.649
                                        #   in Loop: Header=BB58_208 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -67600(%rbp)      # 8-byte Spill
	jmp	.LBB58_212
.LBB58_212:                             # %cond.end.650
                                        #   in Loop: Header=BB58_208 Depth=1
	movq	-67600(%rbp), %rax      # 8-byte Reload
	addq	-66536(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	andl	$192, %edx
	cmpl	$128, %edx
	setne	%sil
	xorb	$-1, %sil
	movb	%sil, -67585(%rbp)      # 1-byte Spill
.LBB58_213:                             # %land.end.662
                                        #   in Loop: Header=BB58_208 Depth=1
	movb	-67585(%rbp), %al       # 1-byte Reload
	testb	$1, %al
	jne	.LBB58_214
	jmp	.LBB58_215
.LBB58_214:                             # %while.body.663
                                        #   in Loop: Header=BB58_208 Depth=1
	movq	-66536(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -66536(%rbp)
	jmp	.LBB58_208
.LBB58_215:                             # %while.end.665
	jmp	.LBB58_216
.LBB58_216:                             # %if.end.666
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -67608(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67608(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_226
# BB#217:                               # %if.then.671
	jmp	.LBB58_218
.LBB58_218:                             # %while.cond.672
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-66544(%rbp), %rdx
	movq	current_buffer, %rsi
	cmpq	776(%rsi), %rdx
	movb	%cl, -67609(%rbp)       # 1-byte Spill
	jge	.LBB58_223
# BB#219:                               # %land.rhs.676
                                        #   in Loop: Header=BB58_218 Depth=1
	movq	-66544(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB58_221
# BB#220:                               # %cond.true.681
                                        #   in Loop: Header=BB58_218 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -67624(%rbp)      # 8-byte Spill
	jmp	.LBB58_222
.LBB58_221:                             # %cond.false.684
                                        #   in Loop: Header=BB58_218 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -67624(%rbp)      # 8-byte Spill
	jmp	.LBB58_222
.LBB58_222:                             # %cond.end.685
                                        #   in Loop: Header=BB58_218 Depth=1
	movq	-67624(%rbp), %rax      # 8-byte Reload
	addq	-66544(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	andl	$192, %edx
	cmpl	$128, %edx
	setne	%sil
	xorb	$-1, %sil
	movb	%sil, -67609(%rbp)      # 1-byte Spill
.LBB58_223:                             # %land.end.697
                                        #   in Loop: Header=BB58_218 Depth=1
	movb	-67609(%rbp), %al       # 1-byte Reload
	testb	$1, %al
	jne	.LBB58_224
	jmp	.LBB58_225
.LBB58_224:                             # %while.body.698
                                        #   in Loop: Header=BB58_218 Depth=1
	movq	-66544(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -66544(%rbp)
	jmp	.LBB58_218
.LBB58_225:                             # %while.end.700
	jmp	.LBB58_226
.LBB58_226:                             # %if.end.701
	xorl	%edi, %edi
	movq	-66536(%rbp), %rax
	movq	current_buffer, %rcx
	subq	760(%rcx), %rax
	movq	-66544(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rdx, -67632(%rbp)      # 8-byte Spill
	movq	%rax, -67640(%rbp)      # 8-byte Spill
	movq	%rcx, -67648(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67632(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_228
# BB#227:                               # %cond.true.707
	movq	-240(%rbp), %rax
	movq	%rax, -67656(%rbp)      # 8-byte Spill
	jmp	.LBB58_229
.LBB58_228:                             # %cond.false.708
	movq	-136(%rbp), %rax
	movq	%rax, -67656(%rbp)      # 8-byte Spill
.LBB58_229:                             # %cond.end.710
	movq	-67656(%rbp), %rax      # 8-byte Reload
	movq	-67648(%rbp), %rcx      # 8-byte Reload
	addq	%rax, %rcx
	movq	current_buffer, %rax
	subq	776(%rax), %rcx
	movq	-67640(%rbp), %rax      # 8-byte Reload
	subq	%rcx, %rax
	movq	%rax, -66744(%rbp)
	cmpq	$0, -66744(%rbp)
	jle	.LBB58_231
# BB#230:                               # %if.then.718
	movq	-66744(%rbp), %rax
	addq	-66544(%rbp), %rax
	movq	%rax, -66544(%rbp)
.LBB58_231:                             # %if.end.720
	movq	current_buffer, %rdi
	movq	-66544(%rbp), %rsi
	callq	buf_bytepos_to_charpos
	movq	%rax, -66552(%rbp)
	movq	-66536(%rbp), %rax
	movq	current_buffer, %rsi
	subq	760(%rsi), %rax
	addq	-232(%rbp), %rax
	movq	%rax, -232(%rbp)
	movq	current_buffer, %rax
	movq	776(%rax), %rax
	subq	-66544(%rbp), %rax
	movq	-240(%rbp), %rsi
	subq	%rax, %rsi
	movq	%rsi, -240(%rbp)
	movq	current_buffer, %rdi
	movq	current_buffer, %rax
	movq	-66536(%rbp), %rsi
	movq	%rdi, -67664(%rbp)      # 8-byte Spill
	movq	%rax, %rdi
	callq	buf_bytepos_to_charpos
	movq	-66552(%rbp), %rdx
	movq	-67664(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	invalidate_buffer_caches
	xorl	%edx, %edx
	movq	-66536(%rbp), %rdi
	movq	-66544(%rbp), %rsi
	callq	del_range_byte
	movq	current_buffer, %rdi
	movq	-66536(%rbp), %rsi
	callq	buf_bytepos_to_charpos
	movq	%rax, -66792(%rbp)
	movq	-66792(%rbp), %rdi
	movq	-66536(%rbp), %rsi
	callq	set_point_both
	movq	selected_window, %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB58_233
# BB#232:                               # %if.then.734
	callq	Fbolp
	xorl	%edi, %edi
	movq	%rax, -67672(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67672(%rbp), %rcx      # 8-byte Reload
	subq	%rax, %rcx
	setne	%dl
	movq	selected_window(%rip), %rdi
	movq	%rcx, -67680(%rbp)      # 8-byte Spill
	movb	%dl, -67681(%rbp)       # 1-byte Spill
	callq	XWINDOW
	movb	-67681(%rbp), %dl       # 1-byte Reload
	movzbl	%dl, %esi
	movw	%si, %r8w
	movw	468(%rax), %r9w
	shlw	$4, %r8w
	andw	$-17, %r9w
	orw	%r8w, %r9w
	movw	%r9w, 468(%rax)
.LBB58_233:                             # %if.end.745
	movb	$1, -66473(%rbp)
.LBB58_234:                             # %if.end.746
	jmp	.LBB58_235
.LBB58_235:                             # %if.end.747
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -67696(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67696(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_312
# BB#236:                               # %land.lhs.true.751
	testb	$1, -66473(%rbp)
	jne	.LBB58_312
# BB#237:                               # %land.lhs.true.753
	movq	current_buffer, %rax
	movq	752(%rax), %rax
	movq	current_buffer, %rcx
	cmpq	768(%rcx), %rax
	jge	.LBB58_312
# BB#238:                               # %if.then.758
	movq	$0, -66848(%rbp)
	callq	SPECPDL_INDEX
	xorl	%edi, %edi
	movq	%rax, -66856(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -67704(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edi
	movq	-67704(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movb	%dl, -66857(%rbp)
	movb	-66857(%rbp), %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	callq	code_conversion_save
	xorl	%edx, %edx
	movq	%rax, -66872(%rbp)
	movl	-204(%rbp), %edi
	movq	-232(%rbp), %rsi
	callq	lseek
	cmpq	$0, %rax
	jge	.LBB58_240
# BB#239:                               # %if.then.774
	movabsq	$.L.str.38, %rdi
	movq	-288(%rbp), %rsi
	callq	report_file_error
.LBB58_240:                             # %if.end.775
	movq	$0, -216(%rbp)
	movl	$0, -244(%rbp)
.LBB58_241:                             # %while.body.777
                                        # =>This Inner Loop Header: Depth=1
	movb	$1, immediate_quit
# BB#242:                               # %do.body.778
                                        #   in Loop: Header=BB58_241 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -67712(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67712(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_245
# BB#243:                               # %land.lhs.true.782
                                        #   in Loop: Header=BB58_241 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -67720(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67720(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB58_245
# BB#244:                               # %if.then.786
                                        #   in Loop: Header=BB58_241 Depth=1
	callq	process_quit_flag
	jmp	.LBB58_248
.LBB58_245:                             # %if.else.787
                                        #   in Loop: Header=BB58_241 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB58_247
# BB#246:                               # %if.then.789
                                        #   in Loop: Header=BB58_241 Depth=1
	callq	process_pending_signals
.LBB58_247:                             # %if.end.790
                                        #   in Loop: Header=BB58_241 Depth=1
	jmp	.LBB58_248
.LBB58_248:                             # %if.end.791
                                        #   in Loop: Header=BB58_241 Depth=1
	jmp	.LBB58_249
.LBB58_249:                             # %do.end.792
                                        #   in Loop: Header=BB58_241 Depth=1
	movl	$65536, %eax            # imm = 0x10000
	leaq	-65856(%rbp), %rcx
	movl	-204(%rbp), %edi
	movslq	-244(%rbp), %rdx
	addq	%rdx, %rcx
	subl	-244(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rcx, %rsi
	callq	emacs_read
	movq	%rax, -66848(%rbp)
	movb	$0, immediate_quit
	cmpq	$0, -66848(%rbp)
	jg	.LBB58_251
# BB#250:                               # %if.then.801
	jmp	.LBB58_256
.LBB58_251:                             # %if.end.802
                                        #   in Loop: Header=BB58_241 Depth=1
	movq	-66872(%rbp), %rdi
	callq	XBUFFER
	movq	-66872(%rbp), %rdi
	movq	%rax, -67728(%rbp)      # 8-byte Spill
	callq	XBUFFER
	movq	720(%rax), %rax
	movq	16(%rax), %rsi
	movq	-67728(%rbp), %rdi      # 8-byte Reload
	callq	temp_set_point
# BB#252:                               # %do.body.807
                                        #   in Loop: Header=BB58_241 Depth=1
	xorl	%edi, %edi
	leaq	-65856(%rbp), %rax
	movq	%rax, -66016(%rbp)
	movslq	-244(%rbp), %rax
	addq	-66848(%rbp), %rax
	movq	%rax, -66032(%rbp)
	movq	%rax, -66040(%rbp)
	callq	builtin_lisp_symbol
	leaq	-66472(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movslq	-244(%rbp), %rsi
	addq	-66848(%rbp), %rsi
	movslq	-244(%rbp), %r8
	addq	-66848(%rbp), %r8
	movq	-66872(%rbp), %r9
	movq	%rsi, -67736(%rbp)      # 8-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -67744(%rbp)      # 8-byte Spill
	movq	-67744(%rbp), %rcx      # 8-byte Reload
	movq	-67736(%rbp), %rax      # 8-byte Reload
	movq	%r8, -67752(%rbp)       # 8-byte Spill
	movq	%rax, %r8
	movq	-67752(%rbp), %r10      # 8-byte Reload
	movq	%r9, -67760(%rbp)       # 8-byte Spill
	movq	%r10, %r9
	movq	-67760(%rbp), %r11      # 8-byte Reload
	movq	%r11, (%rsp)
	callq	decode_coding_object
# BB#253:                               # %do.end.816
                                        #   in Loop: Header=BB58_241 Depth=1
	movl	-65888(%rbp), %eax
	movl	%eax, -244(%rbp)
	cmpl	$0, -65888(%rbp)
	jle	.LBB58_255
# BB#254:                               # %if.then.820
                                        #   in Loop: Header=BB58_241 Depth=1
	leaq	-66472(%rbp), %rax
	leaq	-65856(%rbp), %rcx
	addq	$520, %rax              # imm = 0x208
	movslq	-244(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	memcpy
.LBB58_255:                             # %if.end.822
                                        #   in Loop: Header=BB58_241 Depth=1
	jmp	.LBB58_241
.LBB58_256:                             # %while.end.823
	cmpq	$0, -66848(%rbp)
	jge	.LBB58_258
# BB#257:                               # %if.then.826
	movabsq	$.L.str.13, %rdi
	movq	-288(%rbp), %rsi
	callq	report_file_error
.LBB58_258:                             # %if.end.827
	movl	-204(%rbp), %edi
	callq	emacs_close
	movq	-66520(%rbp), %rdi
	movl	%eax, -67764(%rbp)      # 4-byte Spill
	callq	clear_unwind_protect
	cmpl	$0, -244(%rbp)
	jle	.LBB58_262
# BB#259:                               # %if.then.831
	movl	-66464(%rbp), %eax
	shrl	$14, %eax
	andl	$31, %eax
	orl	$1, %eax
	movl	-66464(%rbp), %ecx
	andl	$31, %eax
	shll	$14, %eax
	andl	$-507905, %ecx          # imm = 0xFFFFFFFFFFF83FFF
	orl	%eax, %ecx
	movl	%ecx, -66464(%rbp)
# BB#260:                               # %do.body.839
	xorl	%edi, %edi
	leaq	-65856(%rbp), %rax
	movq	%rax, -66016(%rbp)
	movslq	-244(%rbp), %rax
	movq	%rax, -66032(%rbp)
	movq	%rax, -66040(%rbp)
	callq	builtin_lisp_symbol
	leaq	-66472(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movslq	-244(%rbp), %r8
	movslq	-244(%rbp), %r9
	movq	-66872(%rbp), %rsi
	movq	%rsi, -67776(%rbp)      # 8-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -67784(%rbp)      # 8-byte Spill
	movq	-67784(%rbp), %rcx      # 8-byte Reload
	movq	-67776(%rbp), %rax      # 8-byte Reload
	movq	%rax, (%rsp)
	callq	decode_coding_object
# BB#261:                               # %do.end.848
	movl	-66464(%rbp), %eax
	shrl	$14, %eax
	andl	$31, %eax
	andl	$-2, %eax
	movl	-66464(%rbp), %ecx
	andl	$31, %eax
	shll	$14, %eax
	andl	$-507905, %ecx          # imm = 0xFFFFFFFFFFF83FFF
	orl	%eax, %ecx
	movl	%ecx, -66464(%rbp)
.LBB58_262:                             # %if.end.859
	movq	Vcoding_system_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-66472(%rbp), %rsi
	movq	%rax, %rdi
	callq	HASH_KEY
	movq	%rax, -66488(%rbp)
	movb	$1, -66474(%rbp)
	movq	-66872(%rbp), %rdi
	callq	XBUFFER
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -66832(%rbp)
	movq	-66872(%rbp), %rdi
	callq	XBUFFER
	movq	720(%rax), %rax
	movq	32(%rax), %rax
	subq	$1, %rax
	movq	%rax, -216(%rbp)
	movq	$0, -66824(%rbp)
.LBB58_263:                             # %while.cond.869
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-66824(%rbp), %rdx
	cmpq	-216(%rbp), %rdx
	movb	%cl, -67785(%rbp)       # 1-byte Spill
	jge	.LBB58_269
# BB#264:                               # %land.lhs.true.872
                                        #   in Loop: Header=BB58_263 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-66536(%rbp), %rdx
	cmpq	-66544(%rbp), %rdx
	movb	%cl, -67785(%rbp)       # 1-byte Spill
	jge	.LBB58_269
# BB#265:                               # %land.rhs.875
                                        #   in Loop: Header=BB58_263 Depth=1
	movq	-66536(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB58_267
# BB#266:                               # %cond.true.880
                                        #   in Loop: Header=BB58_263 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -67800(%rbp)      # 8-byte Spill
	jmp	.LBB58_268
.LBB58_267:                             # %cond.false.883
                                        #   in Loop: Header=BB58_263 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -67800(%rbp)      # 8-byte Spill
	jmp	.LBB58_268
.LBB58_268:                             # %cond.end.884
                                        #   in Loop: Header=BB58_263 Depth=1
	movq	-67800(%rbp), %rax      # 8-byte Reload
	addq	-66536(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movq	-66824(%rbp), %rax
	movq	-66832(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	cmpl	%esi, %edx
	sete	%dil
	movb	%dil, -67785(%rbp)      # 1-byte Spill
.LBB58_269:                             # %land.end.896
                                        #   in Loop: Header=BB58_263 Depth=1
	movb	-67785(%rbp), %al       # 1-byte Reload
	testb	$1, %al
	jne	.LBB58_270
	jmp	.LBB58_271
.LBB58_270:                             # %while.body.897
                                        #   in Loop: Header=BB58_263 Depth=1
	movq	-66536(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -66536(%rbp)
	movq	-66824(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -66824(%rbp)
	jmp	.LBB58_263
.LBB58_271:                             # %while.end.900
	movq	-66824(%rbp), %rax
	cmpq	-216(%rbp), %rax
	jne	.LBB58_275
# BB#272:                               # %if.then.903
	movq	-66536(%rbp), %rax
	cmpq	-66544(%rbp), %rax
	je	.LBB58_274
# BB#273:                               # %if.then.906
	movq	current_buffer, %rdi
	movq	current_buffer, %rax
	movq	-66536(%rbp), %rsi
	movq	%rdi, -67808(%rbp)      # 8-byte Spill
	movq	%rax, %rdi
	callq	buf_bytepos_to_charpos
	movq	current_buffer, %rdi
	movq	-66544(%rbp), %rsi
	movq	%rax, -67816(%rbp)      # 8-byte Spill
	callq	buf_bytepos_to_charpos
	movq	-67808(%rbp), %rdi      # 8-byte Reload
	movq	-67816(%rbp), %rsi      # 8-byte Reload
	movq	%rax, %rdx
	callq	invalidate_buffer_caches
	xorl	%edx, %edx
	movq	-66536(%rbp), %rdi
	movq	-66544(%rbp), %rsi
	callq	del_range_byte
.LBB58_274:                             # %if.end.909
	xorl	%edi, %edi
	movq	$0, -216(%rbp)
	movq	-66856(%rbp), %rax
	movq	%rax, -67824(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67824(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -67832(%rbp)      # 8-byte Spill
	jmp	.LBB58_409
.LBB58_275:                             # %if.end.912
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -67840(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67840(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_285
# BB#276:                               # %if.then.917
	jmp	.LBB58_277
.LBB58_277:                             # %while.cond.918
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-66536(%rbp), %rdx
	movq	current_buffer, %rsi
	cmpq	760(%rsi), %rdx
	movb	%cl, -67841(%rbp)       # 1-byte Spill
	jle	.LBB58_282
# BB#278:                               # %land.rhs.922
                                        #   in Loop: Header=BB58_277 Depth=1
	movq	-66536(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB58_280
# BB#279:                               # %cond.true.927
                                        #   in Loop: Header=BB58_277 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -67856(%rbp)      # 8-byte Spill
	jmp	.LBB58_281
.LBB58_280:                             # %cond.false.930
                                        #   in Loop: Header=BB58_277 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -67856(%rbp)      # 8-byte Spill
	jmp	.LBB58_281
.LBB58_281:                             # %cond.end.931
                                        #   in Loop: Header=BB58_277 Depth=1
	movq	-67856(%rbp), %rax      # 8-byte Reload
	addq	-66536(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	andl	$192, %edx
	cmpl	$128, %edx
	setne	%sil
	xorb	$-1, %sil
	movb	%sil, -67841(%rbp)      # 1-byte Spill
.LBB58_282:                             # %land.end.943
                                        #   in Loop: Header=BB58_277 Depth=1
	movb	-67841(%rbp), %al       # 1-byte Reload
	testb	$1, %al
	jne	.LBB58_283
	jmp	.LBB58_284
.LBB58_283:                             # %while.body.944
                                        #   in Loop: Header=BB58_277 Depth=1
	movq	-66536(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -66536(%rbp)
	jmp	.LBB58_277
.LBB58_284:                             # %while.end.946
	jmp	.LBB58_285
.LBB58_285:                             # %if.end.947
	movq	-216(%rbp), %rax
	movq	%rax, -66824(%rbp)
.LBB58_286:                             # %while.cond.948
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -66824(%rbp)
	movb	%cl, -67857(%rbp)       # 1-byte Spill
	jle	.LBB58_292
# BB#287:                               # %land.lhs.true.951
                                        #   in Loop: Header=BB58_286 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-66544(%rbp), %rdx
	cmpq	-66536(%rbp), %rdx
	movb	%cl, -67857(%rbp)       # 1-byte Spill
	jle	.LBB58_292
# BB#288:                               # %land.rhs.954
                                        #   in Loop: Header=BB58_286 Depth=1
	movq	-66544(%rbp), %rax
	subq	$1, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB58_290
# BB#289:                               # %cond.true.960
                                        #   in Loop: Header=BB58_286 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -67872(%rbp)      # 8-byte Spill
	jmp	.LBB58_291
.LBB58_290:                             # %cond.false.963
                                        #   in Loop: Header=BB58_286 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -67872(%rbp)      # 8-byte Spill
	jmp	.LBB58_291
.LBB58_291:                             # %cond.end.964
                                        #   in Loop: Header=BB58_286 Depth=1
	movq	-67872(%rbp), %rax      # 8-byte Reload
	movq	-66544(%rbp), %rcx
	subq	$1, %rcx
	addq	%rcx, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	movq	-66824(%rbp), %rax
	subq	$1, %rax
	movq	-66832(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	cmpl	%esi, %edx
	sete	%dil
	movb	%dil, -67857(%rbp)      # 1-byte Spill
.LBB58_292:                             # %land.end.978
                                        #   in Loop: Header=BB58_286 Depth=1
	movb	-67857(%rbp), %al       # 1-byte Reload
	testb	$1, %al
	jne	.LBB58_293
	jmp	.LBB58_294
.LBB58_293:                             # %while.body.979
                                        #   in Loop: Header=BB58_286 Depth=1
	movq	-66544(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -66544(%rbp)
	movq	-66824(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -66824(%rbp)
	jmp	.LBB58_286
.LBB58_294:                             # %while.end.982
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -67880(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67880(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_304
# BB#295:                               # %if.then.987
	jmp	.LBB58_296
.LBB58_296:                             # %while.cond.988
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-66544(%rbp), %rdx
	movq	current_buffer, %rsi
	cmpq	776(%rsi), %rdx
	movb	%cl, -67881(%rbp)       # 1-byte Spill
	jge	.LBB58_301
# BB#297:                               # %land.rhs.992
                                        #   in Loop: Header=BB58_296 Depth=1
	movq	-66544(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB58_299
# BB#298:                               # %cond.true.997
                                        #   in Loop: Header=BB58_296 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -67896(%rbp)      # 8-byte Spill
	jmp	.LBB58_300
.LBB58_299:                             # %cond.false.1000
                                        #   in Loop: Header=BB58_296 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -67896(%rbp)      # 8-byte Spill
	jmp	.LBB58_300
.LBB58_300:                             # %cond.end.1001
                                        #   in Loop: Header=BB58_296 Depth=1
	movq	-67896(%rbp), %rax      # 8-byte Reload
	addq	-66544(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	(%rcx), %rcx
	movzbl	-1(%rcx,%rax), %edx
	andl	$192, %edx
	cmpl	$128, %edx
	setne	%sil
	xorb	$-1, %sil
	movb	%sil, -67881(%rbp)      # 1-byte Spill
.LBB58_301:                             # %land.end.1013
                                        #   in Loop: Header=BB58_296 Depth=1
	movb	-67881(%rbp), %al       # 1-byte Reload
	testb	$1, %al
	jne	.LBB58_302
	jmp	.LBB58_303
.LBB58_302:                             # %while.body.1014
                                        #   in Loop: Header=BB58_296 Depth=1
	movq	-66544(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -66544(%rbp)
	jmp	.LBB58_296
.LBB58_303:                             # %while.end.1016
	jmp	.LBB58_304
.LBB58_304:                             # %if.end.1017
	movq	-66536(%rbp), %rax
	movq	current_buffer, %rcx
	subq	760(%rcx), %rax
	movq	-66544(%rbp), %rcx
	addq	-216(%rbp), %rcx
	movq	current_buffer, %rdx
	subq	776(%rdx), %rcx
	subq	%rcx, %rax
	movq	%rax, -66816(%rbp)
	cmpq	$0, -66816(%rbp)
	jle	.LBB58_306
# BB#305:                               # %if.then.1026
	movq	-66816(%rbp), %rax
	addq	-66544(%rbp), %rax
	movq	%rax, -66544(%rbp)
.LBB58_306:                             # %if.end.1028
	movq	current_buffer, %rdi
	movq	-66544(%rbp), %rsi
	callq	buf_bytepos_to_charpos
	movq	%rax, -66552(%rbp)
	movq	selected_window, %rdi
	callq	XWINDOW
	movq	80(%rax), %rdi
	callq	XBUFFER
	cmpq	current_buffer, %rax
	jne	.LBB58_308
# BB#307:                               # %if.then.1035
	callq	Fbolp
	xorl	%edi, %edi
	movq	%rax, -67904(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67904(%rbp), %rcx      # 8-byte Reload
	subq	%rax, %rcx
	setne	%dl
	movq	selected_window(%rip), %rdi
	movq	%rcx, -67912(%rbp)      # 8-byte Spill
	movb	%dl, -67913(%rbp)       # 1-byte Spill
	callq	XWINDOW
	movb	-67913(%rbp), %dl       # 1-byte Reload
	movzbl	%dl, %esi
	movw	%si, %r8w
	movw	468(%rax), %r9w
	shlw	$4, %r8w
	andw	$-17, %r9w
	orw	%r8w, %r9w
	movw	%r9w, 468(%rax)
.LBB58_308:                             # %if.end.1049
	movq	current_buffer, %rax
	movq	776(%rax), %rax
	subq	-66544(%rbp), %rax
	movq	-66536(%rbp), %rcx
	movq	current_buffer, %rdx
	subq	760(%rdx), %rcx
	addq	%rcx, %rax
	movq	-216(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -216(%rbp)
	movq	-66544(%rbp), %rax
	cmpq	-66536(%rbp), %rax
	je	.LBB58_310
# BB#309:                               # %if.then.1058
	movq	current_buffer, %rdi
	movq	current_buffer, %rax
	movq	-66536(%rbp), %rsi
	movq	%rdi, -67928(%rbp)      # 8-byte Spill
	movq	%rax, %rdi
	callq	buf_bytepos_to_charpos
	movq	-66552(%rbp), %rdx
	movq	-67928(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	invalidate_buffer_caches
	xorl	%edx, %edx
	movq	-66536(%rbp), %rdi
	movq	-66544(%rbp), %rsi
	callq	del_range_byte
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -66840(%rbp)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -66536(%rbp)
	jmp	.LBB58_311
.LBB58_310:                             # %if.else.1063
	movq	-66552(%rbp), %rax
	movq	%rax, -66840(%rbp)
.LBB58_311:                             # %if.end.1064
	movq	-66840(%rbp), %rdi
	movq	-66536(%rbp), %rsi
	callq	set_point_both
	movq	-66872(%rbp), %rdi
	callq	XBUFFER
	movq	-66536(%rbp), %rsi
	movq	current_buffer, %rdi
	subq	760(%rdi), %rsi
	addq	$1, %rsi
	movq	%rax, %rdi
	callq	buf_bytepos_to_charpos
	movq	%rax, -66800(%rbp)
	movq	-66872(%rbp), %rdi
	callq	XBUFFER
	movq	-66536(%rbp), %rsi
	addq	-216(%rbp), %rsi
	movq	current_buffer, %rdi
	subq	760(%rdi), %rsi
	addq	$1, %rsi
	movq	%rax, %rdi
	callq	buf_bytepos_to_charpos
	movabsq	$.L.str.40, %rdi
	subq	-66800(%rbp), %rax
	movq	%rax, -66808(%rbp)
	callq	intern
	xorl	%edi, %edi
	movq	%rax, -67936(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67936(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movq	-66872(%rbp), %rdi
	callq	XBUFFER
	xorl	%ecx, %ecx
	movq	-66800(%rbp), %rsi
	movq	-66808(%rbp), %rdx
	movq	%rax, %rdi
	callq	insert_from_buffer
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	subq	-66840(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	-66840(%rbp), %rdi
	movq	-66536(%rbp), %rsi
	callq	set_point_both
	xorl	%edi, %edi
	movq	-66856(%rbp), %rax
	movq	%rax, -67944(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67944(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -67952(%rbp)      # 8-byte Spill
	jmp	.LBB58_409
.LBB58_312:                             # %if.end.1085
	testb	$1, -313(%rbp)
	jne	.LBB58_314
# BB#313:                               # %if.then.1087
	movq	-240(%rbp), %rax
	subq	-232(%rbp), %rax
	movq	%rax, -312(%rbp)
	jmp	.LBB58_315
.LBB58_314:                             # %if.else.1089
	movq	$65536, -312(%rbp)      # imm = 0x10000
.LBB58_315:                             # %if.end.1090
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -67960(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67960(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB58_322
# BB#316:                               # %land.lhs.true.1094
	cmpq	$0, -312(%rbp)
	jle	.LBB58_322
# BB#317:                               # %if.then.1097
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	392(%rax), %rax
	movq	%rax, -67968(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67968(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_321
# BB#318:                               # %land.lhs.true.1101
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	16(%rax), %rax
	movq	%rax, -67976(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67976(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_321
# BB#319:                               # %land.lhs.true.1105
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	64(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	48(%rcx), %rax
	jl	.LBB58_321
# BB#320:                               # %if.then.1110
	movb	$1, -66505(%rbp)
.LBB58_321:                             # %if.end.1111
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
.LBB58_322:                             # %if.end.1116
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	movq	744(%rcx), %rcx
	addq	$0, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	move_gap_both
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	cmpq	-312(%rbp), %rax
	jge	.LBB58_324
# BB#323:                               # %if.then.1124
	movq	-312(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	subq	40(%rcx), %rax
	movq	%rax, %rdi
	callq	make_gap
.LBB58_324:                             # %if.end.1128
	cmpq	$0, -232(%rbp)
	jne	.LBB58_326
# BB#325:                               # %lor.lhs.false.1131
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -67984(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67984(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_329
.LBB58_326:                             # %if.then.1135
	xorl	%edx, %edx
	movl	-204(%rbp), %edi
	movq	-232(%rbp), %rsi
	callq	lseek
	cmpq	$0, %rax
	jge	.LBB58_328
# BB#327:                               # %if.then.1139
	movabsq	$.L.str.38, %rdi
	movq	-288(%rbp), %rsi
	callq	report_file_error
.LBB58_328:                             # %if.end.1140
	jmp	.LBB58_329
.LBB58_329:                             # %if.end.1141
	movq	$0, -224(%rbp)
	movq	$0, -216(%rbp)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -66880(%rbp)
.LBB58_330:                             # %while.cond.1145
                                        # =>This Inner Loop Header: Depth=1
	movq	-224(%rbp), %rax
	cmpq	-312(%rbp), %rax
	jge	.LBB58_354
# BB#331:                               # %while.body.1148
                                        #   in Loop: Header=BB58_330 Depth=1
	movq	-312(%rbp), %rax
	subq	-224(%rbp), %rax
	cmpq	$65536, %rax            # imm = 0x10000
	jge	.LBB58_333
# BB#332:                               # %cond.true.1152
                                        #   in Loop: Header=BB58_330 Depth=1
	movq	-312(%rbp), %rax
	subq	-224(%rbp), %rax
	movq	%rax, -67992(%rbp)      # 8-byte Spill
	jmp	.LBB58_334
.LBB58_333:                             # %cond.false.1154
                                        #   in Loop: Header=BB58_330 Depth=1
	movl	$65536, %eax            # imm = 0x10000
	movl	%eax, %ecx
	movq	%rcx, -67992(%rbp)      # 8-byte Spill
	jmp	.LBB58_334
.LBB58_334:                             # %cond.end.1155
                                        #   in Loop: Header=BB58_330 Depth=1
	movq	-67992(%rbp), %rax      # 8-byte Reload
	movq	%rax, -66888(%rbp)
	testb	$1, -313(%rbp)
	je	.LBB58_340
# BB#335:                               # %if.then.1159
                                        #   in Loop: Header=BB58_330 Depth=1
	movq	-66880(%rbp), %rax
	cmpq	-66888(%rbp), %rax
	jge	.LBB58_337
# BB#336:                               # %if.then.1162
                                        #   in Loop: Header=BB58_330 Depth=1
	movq	-66888(%rbp), %rax
	subq	-66880(%rbp), %rax
	movq	%rax, %rdi
	callq	make_gap
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	subq	-216(%rbp), %rax
	movq	%rax, -66880(%rbp)
.LBB58_337:                             # %if.end.1167
                                        #   in Loop: Header=BB58_330 Depth=1
	movslq	-204(%rbp), %rdi
	movq	-216(%rbp), %rsi
	movq	-66888(%rbp), %rdx
	callq	make_save_int_int_int
	movl	$372, %edi              # imm = 0x174
	movq	%rax, -68000(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$read_non_regular, %rdi
	movabsq	$read_non_regular_quit, %rcx
	movq	-68000(%rbp), %rsi      # 8-byte Reload
	movq	%rax, %rdx
	callq	internal_condition_case_1
	xorl	%edi, %edi
	movq	%rax, -66904(%rbp)
	movq	-66904(%rbp), %rax
	movq	%rax, -68008(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68008(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB58_339
# BB#338:                               # %if.then.1175
	movb	$1, -66489(%rbp)
	jmp	.LBB58_354
.LBB58_339:                             # %if.end.1176
                                        #   in Loop: Header=BB58_330 Depth=1
	movq	-66904(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -66896(%rbp)
	jmp	.LBB58_349
.LBB58_340:                             # %if.else.1178
                                        #   in Loop: Header=BB58_330 Depth=1
	movb	$1, immediate_quit
# BB#341:                               # %do.body.1179
                                        #   in Loop: Header=BB58_330 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -68016(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68016(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_344
# BB#342:                               # %land.lhs.true.1183
                                        #   in Loop: Header=BB58_330 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -68024(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68024(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB58_344
# BB#343:                               # %if.then.1187
                                        #   in Loop: Header=BB58_330 Depth=1
	callq	process_quit_flag
	jmp	.LBB58_347
.LBB58_344:                             # %if.else.1188
                                        #   in Loop: Header=BB58_330 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB58_346
# BB#345:                               # %if.then.1190
                                        #   in Loop: Header=BB58_330 Depth=1
	callq	process_pending_signals
.LBB58_346:                             # %if.end.1191
                                        #   in Loop: Header=BB58_330 Depth=1
	jmp	.LBB58_347
.LBB58_347:                             # %if.end.1192
                                        #   in Loop: Header=BB58_330 Depth=1
	jmp	.LBB58_348
.LBB58_348:                             # %do.end.1193
                                        #   in Loop: Header=BB58_330 Depth=1
	movl	-204(%rbp), %edi
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	744(%rcx), %rcx
	addq	$0, %rcx
	addq	%rcx, %rax
	addq	$-1, %rax
	addq	-216(%rbp), %rax
	movq	-66888(%rbp), %rdx
	movq	%rax, %rsi
	callq	emacs_read
	movq	%rax, -66896(%rbp)
	movb	$0, immediate_quit
.LBB58_349:                             # %if.end.1202
                                        #   in Loop: Header=BB58_330 Depth=1
	cmpq	$0, -66896(%rbp)
	jg	.LBB58_351
# BB#350:                               # %if.then.1205
	movq	-66896(%rbp), %rax
	movq	%rax, -224(%rbp)
	jmp	.LBB58_354
.LBB58_351:                             # %if.end.1206
                                        #   in Loop: Header=BB58_330 Depth=1
	movq	-66896(%rbp), %rax
	movq	-66880(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -66880(%rbp)
	testb	$1, -313(%rbp)
	jne	.LBB58_353
# BB#352:                               # %if.then.1209
                                        #   in Loop: Header=BB58_330 Depth=1
	movq	-66896(%rbp), %rax
	addq	-224(%rbp), %rax
	movq	%rax, -224(%rbp)
.LBB58_353:                             # %if.end.1211
                                        #   in Loop: Header=BB58_330 Depth=1
	movq	-66896(%rbp), %rax
	addq	-216(%rbp), %rax
	movq	%rax, -216(%rbp)
	jmp	.LBB58_330
.LBB58_354:                             # %while.end.1213
	cmpq	$0, -216(%rbp)
	jne	.LBB58_358
# BB#355:                               # %if.then.1216
	testb	$1, -66505(%rbp)
	je	.LBB58_357
# BB#356:                               # %if.then.1218
	movq	current_buffer, %rax
	movq	392(%rax), %rdi
	callq	unlock_file
.LBB58_357:                             # %if.end.1220
	movq	-66504(%rbp), %rax
	movq	%rax, globals+416
	jmp	.LBB58_359
.LBB58_358:                             # %if.else.1221
	movl	$319, %edi              # imm = 0x13F
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -68032(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68032(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	Fset
	movq	%rax, -68040(%rbp)      # 8-byte Spill
.LBB58_359:                             # %if.end.1225
	movl	-204(%rbp), %edi
	callq	emacs_close
	movq	-66520(%rbp), %rdi
	movl	%eax, -68044(%rbp)      # 4-byte Spill
	callq	clear_unwind_protect
	cmpq	$0, -224(%rbp)
	jge	.LBB58_361
# BB#360:                               # %if.then.1229
	movabsq	$.L.str.13, %rdi
	movq	-288(%rbp), %rsi
	callq	report_file_error
.LBB58_361:                             # %if.end.1230
	movq	-216(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	40(%rcx), %rdx
	subq	%rax, %rdx
	movq	%rdx, 40(%rcx)
	movq	-216(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	8(%rcx), %rax
	movq	%rax, 8(%rcx)
	movq	-216(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	24(%rcx), %rax
	movq	%rax, 24(%rcx)
	movq	-216(%rbp), %rax
	movq	current_buffer, %rcx
	addq	768(%rcx), %rax
	movq	%rax, 768(%rcx)
	movq	-216(%rbp), %rax
	movq	current_buffer, %rcx
	addq	776(%rcx), %rax
	movq	%rax, 776(%rcx)
	movq	-216(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	16(%rcx), %rax
	movq	%rax, 16(%rcx)
	movq	-216(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	32(%rcx), %rax
	movq	%rax, 32(%rcx)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	cmpq	$0, 40(%rax)
	jle	.LBB58_363
# BB#362:                               # %if.then.1254
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	24(%rcx), %rcx
	movb	$0, -1(%rax,%rcx)
.LBB58_363:                             # %if.end.1261
	jmp	.LBB58_364
.LBB58_364:                             # %notfound
	xorl	%edi, %edi
	movq	-66488(%rbp), %rax
	movq	%rax, -68056(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68056(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB58_386
# BB#365:                               # %if.then.1265
	xorl	%edi, %edi
	movq	globals+280, %rax
	movq	%rax, -68064(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68064(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_367
# BB#366:                               # %if.then.1269
	movq	globals+280, %rax
	movq	%rax, -66488(%rbp)
	jmp	.LBB58_375
.LBB58_367:                             # %if.else.1270
	callq	SPECPDL_INDEX
	movq	%rax, -66920(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rdi
	movq	current_buffer, %rax
	movq	968(%rax), %rax
	movq	%rdi, -68072(%rbp)      # 8-byte Spill
	movq	%rax, -68080(%rbp)      # 8-byte Spill
	callq	Fcurrent_buffer
	movq	-68080(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-68072(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	xorl	%edi, %edi
	movq	%rax, -66912(%rbp)
	movq	current_buffer, %rax
	movq	%rax, -68088(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68088(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_enable_multibyte_characters
	movl	$901, %edi              # imm = 0x385
	movq	current_buffer, %rax
	movq	%rax, -68096(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68096(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_undo_list
	movabsq	$decide_coding_unwind, %rdi
	movq	-66912(%rbp), %rsi
	callq	record_unwind_protect
	cmpq	$0, -216(%rbp)
	jle	.LBB58_370
# BB#368:                               # %land.lhs.true.1281
	xorl	%edi, %edi
	movq	globals+2136, %rax
	movq	%rax, -68104(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68104(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_370
# BB#369:                               # %if.then.1285
	movq	globals+2136, %rdi
	movq	-8(%rbp), %rsi
	movq	-216(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	call2
	movq	%rax, -66488(%rbp)
.LBB58_370:                             # %if.end.1289
	xorl	%edi, %edi
	movq	-66488(%rbp), %rax
	movq	%rax, -68112(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68112(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB58_374
# BB#371:                               # %if.then.1293
	movl	$553, %edi              # imm = 0x229
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -66968(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -66960(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -66952(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -66944(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -66936(%rbp)
	callq	builtin_lisp_symbol
	movl	$6, %edi
                                        # kill: RDI<def> EDI<kill>
	leaq	-66968(%rbp), %rsi
	movq	%rax, -66928(%rbp)
	callq	Ffind_operation_coding_system
	movq	%rax, -66488(%rbp)
	movq	-66488(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB58_373
# BB#372:                               # %if.then.1309
	movq	-66488(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -66488(%rbp)
.LBB58_373:                             # %if.end.1312
	jmp	.LBB58_374
.LBB58_374:                             # %if.end.1313
	xorl	%edi, %edi
	movq	-66920(%rbp), %rax
	movq	%rax, -68120(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68120(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	current_buffer, %rsi
	movq	720(%rsi), %rsi
	movq	32(%rsi), %rsi
	subq	$1, %rsi
	movq	%rsi, -216(%rbp)
	movq	%rax, -68128(%rbp)      # 8-byte Spill
.LBB58_375:                             # %if.end.1319
	xorl	%edi, %edi
	movq	-66488(%rbp), %rax
	movq	%rax, -68136(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68136(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB58_377
# BB#376:                               # %if.then.1323
	movl	$958, %edi              # imm = 0x3BE
	callq	builtin_lisp_symbol
	movq	%rax, -66488(%rbp)
	jmp	.LBB58_383
.LBB58_377:                             # %if.else.1325
	jmp	.LBB58_378
.LBB58_378:                             # %do.body.1326
	movq	Vcoding_system_hash_table, %rdi
	callq	XHASH_TABLE
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-66488(%rbp), %rsi
	movq	%rax, %rdi
	callq	hash_lookup
	cmpq	$0, %rax
	jge	.LBB58_381
# BB#379:                               # %land.lhs.true.1331
	movq	-66488(%rbp), %rdi
	callq	Fcheck_coding_system
	xorl	%edi, %edi
	movq	%rax, -68144(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68144(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB58_381
# BB#380:                               # %if.then.1336
	movl	$280, %edi              # imm = 0x118
	callq	builtin_lisp_symbol
	movq	-66488(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -68152(%rbp)      # 8-byte Spill
.LBB58_381:                             # %if.end.1338
	jmp	.LBB58_382
.LBB58_382:                             # %do.end.1339
	jmp	.LBB58_383
.LBB58_383:                             # %if.end.1340
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -68160(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68160(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB58_385
# BB#384:                               # %if.then.1345
	movq	-66488(%rbp), %rdi
	callq	raw_text_coding_system
	movq	%rax, -66488(%rbp)
.LBB58_385:                             # %if.end.1347
	leaq	-66472(%rbp), %rsi
	movq	-66488(%rbp), %rdi
	callq	setup_coding_system
	movb	$1, -66474(%rbp)
.LBB58_386:                             # %if.end.1348
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -68168(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68168(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_394
# BB#387:                               # %if.then.1352
	movl	-66464(%rbp), %eax
	andl	$16383, %eax            # imm = 0x3FFF
	andl	$256, %eax              # imm = 0x100
	cmpl	$0, %eax
	je	.LBB58_393
# BB#388:                               # %land.lhs.true.1358
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -68176(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68176(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB58_393
# BB#389:                               # %if.then.1362
	cmpq	$0, -216(%rbp)
	jle	.LBB58_391
# BB#390:                               # %if.then.1365
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	%rax, -68184(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68184(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_enable_multibyte_characters
	jmp	.LBB58_392
.LBB58_391:                             # %if.else.1367
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fset_buffer_multibyte
	movq	%rax, -68192(%rbp)      # 8-byte Spill
.LBB58_392:                             # %if.end.1370
	jmp	.LBB58_393
.LBB58_393:                             # %if.end.1371
	jmp	.LBB58_394
.LBB58_394:                             # %if.end.1372
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -68200(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68200(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %edi
	movl	-66464(%rbp), %esi
	shll	$20, %edi
	andl	$-1048577, %esi         # imm = 0xFFFFFFFFFFEFFFFF
	orl	%edi, %esi
	movl	%esi, -66464(%rbp)
	movl	-66464(%rbp), %esi
	shrl	$20, %esi
	andl	$1, %esi
	testl	$1, %esi
	jne	.LBB58_397
# BB#395:                               # %lor.lhs.false.1391
	movl	-66464(%rbp), %eax
	andl	$16383, %eax            # imm = 0x3FFF
	andl	$1024, %eax             # imm = 0x400
	cmpl	$0, %eax
	jne	.LBB58_397
# BB#396:                               # %lor.lhs.false.1397
	movl	-66464(%rbp), %eax
	andl	$16383, %eax            # imm = 0x3FFF
	andl	$4096, %eax             # imm = 0x1000
	cmpl	$0, %eax
	je	.LBB58_400
.LBB58_397:                             # %land.lhs.true.1403
	cmpq	$0, -216(%rbp)
	jg	.LBB58_399
# BB#398:                               # %lor.lhs.false.1406
	movl	-66464(%rbp), %eax
	andl	$16383, %eax            # imm = 0x3FFF
	andl	$512, %eax              # imm = 0x200
	cmpl	$0, %eax
	je	.LBB58_400
.LBB58_399:                             # %if.then.1412
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	movq	744(%rcx), %rcx
	addq	$0, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	move_gap_both
	leaq	-66472(%rbp), %rdi
	movq	-216(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	40(%rcx), %rax
	movq	%rax, 40(%rcx)
	movq	-216(%rbp), %rax
	movq	current_buffer, %rcx
	movq	776(%rcx), %rsi
	subq	%rax, %rsi
	movq	%rsi, 776(%rcx)
	movq	-216(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	32(%rcx), %rsi
	subq	%rax, %rsi
	movq	%rsi, 32(%rcx)
	movq	-216(%rbp), %rax
	movq	current_buffer, %rcx
	movq	768(%rcx), %rsi
	subq	%rax, %rsi
	movq	%rsi, 768(%rcx)
	movq	-216(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	16(%rcx), %rsi
	subq	%rax, %rsi
	movq	%rsi, 16(%rcx)
	movq	-216(%rbp), %rsi
	movq	-216(%rbp), %rdx
	callq	decode_coding_gap
	movq	-66080(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	Vcoding_system_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-66472(%rbp), %rsi
	movq	%rax, %rdi
	callq	HASH_KEY
	movq	%rax, -66488(%rbp)
	jmp	.LBB58_403
.LBB58_400:                             # %if.else.1433
	cmpq	$0, -216(%rbp)
	jle	.LBB58_402
# BB#401:                               # %if.then.1436
	movq	current_buffer, %rdi
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	addq	-216(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	invalidate_buffer_caches
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rcx
	movq	744(%rcx), %rcx
	addq	$0, %rcx
	movq	current_buffer, %rdx
	movq	736(%rdx), %rdx
	addq	$0, %rdx
	addq	-216(%rbp), %rdx
	movq	current_buffer, %rsi
	movq	744(%rsi), %rsi
	addq	$0, %rsi
	addq	-216(%rbp), %rsi
	movq	-216(%rbp), %r8
	movq	%rax, %rdi
	movq	%rsi, -68208(%rbp)      # 8-byte Spill
	movq	%rcx, %rsi
	movq	-68208(%rbp), %rcx      # 8-byte Reload
	callq	adjust_after_insert
.LBB58_402:                             # %if.end.1452
	jmp	.LBB58_403
.LBB58_403:                             # %if.end.1453
	cmpq	$0, -216(%rbp)
	jle	.LBB58_408
# BB#404:                               # %land.lhs.true.1456
	cmpq	$0, -312(%rbp)
	jle	.LBB58_408
# BB#405:                               # %land.lhs.true.1459
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -68216(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68216(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_407
# BB#406:                               # %lor.lhs.false.1463
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -68224(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68224(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_408
.LBB58_407:                             # %if.then.1467
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	movq	-216(%rbp), %rdx
	movq	%rcx, %rdi
	callq	signal_after_change
	movl	$3, %edx
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	movq	current_buffer, %rsi
	movq	736(%rsi), %rsi
	addq	$0, %rsi
	movq	%rcx, %rdi
	callq	update_compositions
.LBB58_408:                             # %if.end.1474
	jmp	.LBB58_409
.LBB58_409:                             # %handled
	cmpq	$0, -216(%rbp)
	jle	.LBB58_411
# BB#410:                               # %if.then.1477
	movq	-66528(%rbp), %rdi
	movq	-216(%rbp), %rsi
	movq	current_buffer, %rax
	movq	-66536(%rbp), %rcx
	movq	%rdi, -68232(%rbp)      # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -68240(%rbp)      # 8-byte Spill
	movq	%rcx, %rsi
	callq	buf_bytepos_to_charpos
	movq	-66552(%rbp), %rcx
	movq	-68232(%rbp), %rdi      # 8-byte Reload
	movq	-68240(%rbp), %rsi      # 8-byte Reload
	movq	%rax, %rdx
	callq	restore_window_points
.LBB58_411:                             # %if.end.1479
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -68248(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68248(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_423
# BB#412:                               # %if.then.1483
	testb	$1, -66490(%rbp)
	je	.LBB58_414
# BB#413:                               # %if.then.1485
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	%rax, -68256(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68256(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_undo_list
.LBB58_414:                             # %if.end.1487
	xorl	%edi, %edi
	movq	-264(%rbp), %rax
	movq	%rax, -68264(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68264(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB58_416
# BB#415:                               # %if.then.1491
	movq	current_buffer, %rax
	movq	-200(%rbp), %rcx
	movq	%rcx, 856(%rax)
	movq	-192(%rbp), %rcx
	movq	%rcx, 864(%rax)
	movq	-136(%rbp), %rax
	movq	current_buffer, %rcx
	movq	%rax, 872(%rcx)
	movq	current_buffer, %rdi
	movq	-288(%rbp), %rsi
	callq	bset_filename
.LBB58_416:                             # %if.end.1493
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 64(%rcx)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rax
	movq	current_buffer, %rcx
	movq	%rax, 880(%rcx)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	subq	$1, %rax
	movq	%rax, %rdi
	callq	make_natnum
	xorl	%edi, %edi
	movq	current_buffer, %rcx
	movq	%rax, 40(%rcx)
	movq	-264(%rbp), %rax
	movq	%rax, -68272(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68272(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB58_420
# BB#417:                               # %if.then.1507
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	392(%rax), %rax
	movq	%rax, -68280(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68280(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_419
# BB#418:                               # %if.then.1512
	movq	current_buffer, %rax
	movq	392(%rax), %rdi
	callq	unlock_file
.LBB58_419:                             # %if.end.1514
	movq	-8(%rbp), %rdi
	callq	unlock_file
.LBB58_420:                             # %if.end.1515
	testb	$1, -313(%rbp)
	je	.LBB58_422
# BB#421:                               # %if.then.1517
	movl	$411, %edi              # imm = 0x19B
	callq	builtin_lisp_symbol
	movabsq	$.L.str.35, %rdi
	movq	%rax, -68288(%rbp)      # 8-byte Spill
	callq	build_string
	movq	-288(%rbp), %rdx
	movq	-68288(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	xsignal2
.LBB58_422:                             # %if.end.1520
	jmp	.LBB58_423
.LBB58_423:                             # %if.end.1521
	testb	$1, -66474(%rbp)
	je	.LBB58_425
# BB#424:                               # %if.then.1523
	movq	-66488(%rbp), %rax
	movq	%rax, globals+1240
.LBB58_425:                             # %if.end.1524
	movl	$167, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Ffboundp
	xorl	%edi, %edi
	movq	%rax, -68296(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68296(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_431
# BB#426:                               # %if.then.1530
	movl	$167, %edi
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	call2
	xorl	%edi, %edi
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -68304(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68304(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_430
# BB#427:                               # %if.then.1538
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-280(%rbp), %rsi
	movq	current_buffer, %rcx
	movq	768(%rcx), %rcx
	movq	current_buffer, %rdx
	movq	736(%rdx), %rdx
	addq	$0, %rdx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB58_429
# BB#428:                               # %if.then.1544
	movabsq	$.L.str.41, %rdi
	callq	intern
	movq	-280(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -68312(%rbp)      # 8-byte Spill
.LBB58_429:                             # %if.end.1546
	movq	-280(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -216(%rbp)
.LBB58_430:                             # %if.end.1548
	jmp	.LBB58_431
.LBB58_431:                             # %if.end.1549
	cmpq	$0, -216(%rbp)
	jle	.LBB58_482
# BB#432:                               # %if.then.1552
	callq	SPECPDL_INDEX
	movl	$545, %edi              # imm = 0x221
	movq	%rax, -66976(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -66984(%rbp)
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -68320(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68320(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movl	$544, %edi              # imm = 0x220
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -68328(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68328(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	movl	$901, %edi              # imm = 0x385
	movq	current_buffer, %rax
	movq	968(%rax), %rax
	movq	%rax, -296(%rbp)
	movq	current_buffer, %rax
	movq	%rax, -68336(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68336(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_undo_list
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -68344(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68344(%rbp), %rsi      # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB58_436
# BB#433:                               # %if.then.1564
	movl	$454, %edi              # imm = 0x1C6
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -68352(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-16(%rbp), %rdx
	movq	-68352(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	movq	%rdx, -68360(%rbp)      # 8-byte Spill
	movq	%rcx, %rdx
	movq	-68360(%rbp), %rcx      # 8-byte Reload
	callq	call3
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rsi
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	subq	%rcx, %rax
	movq	%rax, %rdx
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB58_435
# BB#434:                               # %if.then.1575
	movabsq	$.L.str.41, %rdi
	callq	intern
	movq	-280(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -68368(%rbp)      # 8-byte Spill
.LBB58_435:                             # %if.end.1577
	movq	-280(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -216(%rbp)
	jmp	.LBB58_442
.LBB58_436:                             # %if.else.1579
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -66992(%rbp)
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -67000(%rbp)
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	current_buffer, %rcx
	subq	752(%rcx), %rax
	movq	%rax, -67008(%rbp)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -67016(%rbp)
	movq	current_buffer, %rdi
	movq	current_buffer, %rax
	movq	752(%rax), %rsi
	movq	current_buffer, %rax
	movq	760(%rax), %rdx
	callq	temp_set_point_both
	movl	$454, %edi              # imm = 0x1C6
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -68376(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67008(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-16(%rbp), %rdx
	movq	-68376(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	movq	%rdx, -68384(%rbp)      # 8-byte Spill
	movq	%rcx, %rdx
	movq	-68384(%rbp), %rcx      # 8-byte Reload
	callq	call3
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rsi
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	subq	%rcx, %rax
	movq	%rax, %rdx
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB58_438
# BB#437:                               # %if.then.1600
	movabsq	$.L.str.41, %rdi
	callq	intern
	movq	-280(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -68392(%rbp)      # 8-byte Spill
.LBB58_438:                             # %if.end.1602
	movq	-67016(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	56(%rcx), %rax
	jne	.LBB58_440
# BB#439:                               # %if.then.1607
	movq	-66992(%rbp), %rdi
	movq	-67000(%rbp), %rsi
	callq	set_point_both
	jmp	.LBB58_441
.LBB58_440:                             # %if.else.1608
	movq	-280(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -216(%rbp)
.LBB58_441:                             # %if.end.1610
	jmp	.LBB58_442
.LBB58_442:                             # %if.end.1611
	movq	globals+16, %rax
	movq	%rax, -304(%rbp)
.LBB58_443:                             # %while.cond.1612
                                        # =>This Inner Loop Header: Depth=1
	movq	-304(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB58_467
# BB#444:                               # %while.body.1617
                                        #   in Loop: Header=BB58_443 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -68400(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68400(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB58_450
# BB#445:                               # %if.then.1621
                                        #   in Loop: Header=BB58_443 Depth=1
	movq	-304(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-216(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	call1
	xorl	%edi, %edi
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -68408(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68408(%rbp), %rsi      # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB58_449
# BB#446:                               # %if.then.1630
                                        #   in Loop: Header=BB58_443 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-280(%rbp), %rsi
	movq	current_buffer, %rcx
	movq	768(%rcx), %rcx
	movq	current_buffer, %rdx
	movq	736(%rdx), %rdx
	addq	$0, %rdx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB58_448
# BB#447:                               # %if.then.1636
	movabsq	$.L.str.41, %rdi
	callq	intern
	movq	-280(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -68416(%rbp)      # 8-byte Spill
.LBB58_448:                             # %if.end.1638
                                        #   in Loop: Header=BB58_443 Depth=1
	movq	-280(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -216(%rbp)
.LBB58_449:                             # %if.end.1640
                                        #   in Loop: Header=BB58_443 Depth=1
	jmp	.LBB58_458
.LBB58_450:                             # %if.else.1641
                                        #   in Loop: Header=BB58_443 Depth=1
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	%rax, -67024(%rbp)
	movq	current_buffer, %rax
	movq	744(%rax), %rax
	addq	$0, %rax
	movq	%rax, -67032(%rbp)
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	current_buffer, %rcx
	subq	752(%rcx), %rax
	movq	%rax, -67040(%rbp)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	56(%rax), %rax
	movq	%rax, -67048(%rbp)
	movq	current_buffer, %rdi
	movq	current_buffer, %rax
	movq	752(%rax), %rsi
	movq	current_buffer, %rax
	movq	760(%rax), %rdx
	callq	temp_set_point_both
	movq	-304(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-67040(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	call1
	xorl	%edi, %edi
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -68424(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68424(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_457
# BB#451:                               # %if.then.1665
                                        #   in Loop: Header=BB58_443 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	-280(%rbp), %rsi
	movq	current_buffer, %rcx
	movq	768(%rcx), %rcx
	movq	current_buffer, %rdx
	movq	736(%rdx), %rdx
	addq	$0, %rdx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB58_453
# BB#452:                               # %if.then.1671
	movabsq	$.L.str.41, %rdi
	callq	intern
	movq	-280(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -68432(%rbp)      # 8-byte Spill
.LBB58_453:                             # %if.end.1673
                                        #   in Loop: Header=BB58_443 Depth=1
	movq	-67048(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	56(%rcx), %rax
	jne	.LBB58_455
# BB#454:                               # %if.then.1678
                                        #   in Loop: Header=BB58_443 Depth=1
	movq	-67024(%rbp), %rdi
	movq	-67032(%rbp), %rsi
	callq	set_point_both
	jmp	.LBB58_456
.LBB58_455:                             # %if.else.1679
                                        #   in Loop: Header=BB58_443 Depth=1
	movq	-280(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -216(%rbp)
.LBB58_456:                             # %if.end.1681
                                        #   in Loop: Header=BB58_443 Depth=1
	jmp	.LBB58_457
.LBB58_457:                             # %if.end.1682
                                        #   in Loop: Header=BB58_443 Depth=1
	jmp	.LBB58_458
.LBB58_458:                             # %if.end.1683
                                        #   in Loop: Header=BB58_443 Depth=1
	jmp	.LBB58_459
.LBB58_459:                             # %do.body.1684
                                        #   in Loop: Header=BB58_443 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -68440(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68440(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_462
# BB#460:                               # %land.lhs.true.1688
                                        #   in Loop: Header=BB58_443 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -68448(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68448(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB58_462
# BB#461:                               # %if.then.1692
                                        #   in Loop: Header=BB58_443 Depth=1
	callq	process_quit_flag
	jmp	.LBB58_465
.LBB58_462:                             # %if.else.1693
                                        #   in Loop: Header=BB58_443 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB58_464
# BB#463:                               # %if.then.1695
                                        #   in Loop: Header=BB58_443 Depth=1
	callq	process_pending_signals
.LBB58_464:                             # %if.end.1696
                                        #   in Loop: Header=BB58_443 Depth=1
	jmp	.LBB58_465
.LBB58_465:                             # %if.end.1697
                                        #   in Loop: Header=BB58_443 Depth=1
	jmp	.LBB58_466
.LBB58_466:                             # %do.end.1698
                                        #   in Loop: Header=BB58_443 Depth=1
	movq	-304(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -304(%rbp)
	jmp	.LBB58_443
.LBB58_467:                             # %while.end.1702
	testb	$1, -66490(%rbp)
	jne	.LBB58_477
# BB#468:                               # %if.then.1704
	movq	current_buffer, %rdi
	movq	-296(%rbp), %rsi
	callq	bset_undo_list
	movq	-296(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	cmpl	$3, %eax
	jne	.LBB58_476
# BB#469:                               # %land.lhs.true.1709
	movq	-216(%rbp), %rax
	cmpq	-66984(%rbp), %rax
	je	.LBB58_476
# BB#470:                               # %if.then.1712
	movq	-296(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -67056(%rbp)
	movq	-67056(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB58_475
# BB#471:                               # %land.lhs.true.1719
	movq	-67056(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB58_475
# BB#472:                               # %land.lhs.true.1727
	movq	-67056(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB58_475
# BB#473:                               # %land.lhs.true.1736
	movq	-67056(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	sarq	$2, %rax
	movq	current_buffer, %rcx
	movq	736(%rcx), %rcx
	addq	$0, %rcx
	addq	-66984(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB58_475
# BB#474:                               # %if.then.1746
	movq	-67056(%rbp), %rdi
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	addq	-216(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	XSETCDR
.LBB58_475:                             # %if.end.1752
	jmp	.LBB58_476
.LBB58_476:                             # %if.end.1753
	jmp	.LBB58_481
.LBB58_477:                             # %if.else.1754
	movl	$901, %edi              # imm = 0x385
	movq	current_buffer, %rax
	movq	-296(%rbp), %rcx
	movq	%rcx, -68456(%rbp)      # 8-byte Spill
	movq	%rax, -68464(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68456(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB58_479
# BB#478:                               # %cond.true.1758
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -68472(%rbp)      # 8-byte Spill
	jmp	.LBB58_480
.LBB58_479:                             # %cond.false.1760
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -68472(%rbp)      # 8-byte Spill
.LBB58_480:                             # %cond.end.1762
	movq	-68472(%rbp), %rax      # 8-byte Reload
	movq	-68464(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	bset_undo_list
.LBB58_481:                             # %if.end.1764
	xorl	%edi, %edi
	movq	-66976(%rbp), %rax
	movq	%rax, -68480(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68480(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -68488(%rbp)      # 8-byte Spill
.LBB58_482:                             # %if.end.1767
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -68496(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68496(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB58_485
# BB#483:                               # %land.lhs.true.1771
	movq	current_buffer, %rax
	cmpq	$-1, 864(%rax)
	jne	.LBB58_485
# BB#484:                               # %if.then.1775
	movabsq	$.L.str.6, %rdi
	movq	-288(%rbp), %rsi
	movl	-320(%rbp), %edx
	callq	report_file_errno
.LBB58_485:                             # %if.end.1776
	movq	current_buffer, %rax
	cmpq	$0, 784(%rax)
	je	.LBB58_488
# BB#486:                               # %land.lhs.true.1779
	movq	current_buffer, %rax
	movq	784(%rax), %rax
	cmpq	$0, 912(%rax)
	je	.LBB58_488
# BB#487:                               # %if.then.1782
	movq	current_buffer, %rax
	movq	784(%rax), %rdi
	movq	current_buffer, %rax
	movq	784(%rax), %rax
	movq	912(%rax), %rsi
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	subq	$1, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	16(%rcx), %rcx
	movq	current_buffer, %rdx
	movq	736(%rdx), %rdx
	addq	$0, %rdx
	subq	%rdx, %rcx
	subq	-216(%rbp), %rcx
	movq	%rax, %rdx
	callq	invalidate_region_cache
	jmp	.LBB58_491
.LBB58_488:                             # %if.else.1795
	movq	current_buffer, %rax
	cmpq	$0, 912(%rax)
	je	.LBB58_490
# BB#489:                               # %if.then.1798
	movq	current_buffer, %rdi
	movq	current_buffer, %rax
	movq	912(%rax), %rsi
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	subq	$1, %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	16(%rcx), %rcx
	movq	current_buffer, %rdx
	movq	736(%rdx), %rdx
	addq	$0, %rdx
	subq	%rdx, %rcx
	subq	-216(%rbp), %rcx
	movq	%rax, %rdx
	callq	invalidate_region_cache
.LBB58_490:                             # %if.end.1809
	jmp	.LBB58_491
.LBB58_491:                             # %if.end.1810
	testb	$1, -66489(%rbp)
	je	.LBB58_493
# BB#492:                               # %if.then.1812
	movl	$782, %edi              # imm = 0x30E
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -68504(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68504(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	Fsignal
	movq	%rax, -68512(%rbp)      # 8-byte Spill
.LBB58_493:                             # %if.end.1816
	xorl	%edi, %edi
	movq	-272(%rbp), %rax
	movq	%rax, -68520(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68520(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB58_495
# BB#494:                               # %if.then.1820
	movq	-288(%rbp), %rdi
	movq	-216(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rsi
	callq	list2
	movq	%rax, -272(%rbp)
.LBB58_495:                             # %if.end.1824
	movq	-256(%rbp), %rdi
	movq	-272(%rbp), %rsi
	callq	unbind_to
	addq	$68528, %rsp            # imm = 0x10BB0
	popq	%rbp
	retq
.Lfunc_end58:
	.size	Finsert_file_contents, .Lfunc_end58-Finsert_file_contents
	.cfi_endproc

	.align	16, 0x90
	.type	time_error_value,@function
time_error_value:                       # @time_error_value
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
	movb	$1, %al
	movl	%edi, -20(%rbp)
	cmpl	$2, -20(%rbp)
	movb	%al, -25(%rbp)          # 1-byte Spill
	je	.LBB59_3
# BB#1:                                 # %lor.lhs.false
	movb	$1, %al
	cmpl	$13, -20(%rbp)
	movb	%al, -25(%rbp)          # 1-byte Spill
	je	.LBB59_3
# BB#2:                                 # %lor.rhs
	cmpl	$20, -20(%rbp)
	sete	%al
	movb	%al, -25(%rbp)          # 1-byte Spill
.LBB59_3:                               # %lor.end
	movb	-25(%rbp), %al          # 1-byte Reload
	movzbl	%al, %ecx
	orl	$-2, %ecx
	movl	%ecx, -24(%rbp)
	movslq	-24(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	make_timespec
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end59:
	.size	time_error_value, .Lfunc_end59-time_error_value
	.cfi_endproc

	.align	16, 0x90
	.type	get_window_points_and_markers,@function
get_window_points_and_markers:          # @get_window_points_and_markers
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
	subq	$80, %rsp
	callq	Fpoint_marker
	movl	$483, %edi              # imm = 0x1E3
	movq	%rax, -8(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	Fcurrent_buffer
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	call3
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB60_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB60_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB60_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB60_3
	jmp	.LBB60_4
.LBB60_3:                               # %if.then
                                        #   in Loop: Header=BB60_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	XWINDOW
	movq	96(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	Fmarker_position
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCAR
.LBB60_4:                               # %if.end
                                        #   in Loop: Header=BB60_1 Depth=1
	jmp	.LBB60_5
.LBB60_5:                               # %for.inc
                                        #   in Loop: Header=BB60_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB60_1
.LBB60_6:                               # %for.end
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	Fpoint
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end60:
	.size	get_window_points_and_markers, .Lfunc_end60-get_window_points_and_markers
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI61_0:
	.quad	4890909195324358656     # double 9.2233720368547758E+18
	.text
	.align	16, 0x90
	.type	file_offset,@function
file_offset:                            # @file_offset
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
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$9223372036854775807, %rdx # imm = 0x7FFFFFFFFFFFFFFF
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rcx, %rdi
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB61_1
	jmp	.LBB61_2
.LBB61_1:                               # %if.then
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB61_10
.LBB61_2:                               # %if.end
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	jne	.LBB61_9
# BB#3:                                 # %if.then.2
	movq	-16(%rbp), %rdi
	callq	XFLOAT_DATA
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -24(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jb	.LBB61_8
# BB#4:                                 # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB61_5
	jmp	.LBB61_6
.LBB61_5:                               # %cond.true
	movsd	.LCPI61_0, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jae	.LBB61_7
	jmp	.LBB61_8
.LBB61_6:                               # %cond.false
	movsd	.LCPI61_0, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0
	jbe	.LBB61_8
.LBB61_7:                               # %if.then.10
	cvttsd2si	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB61_10
.LBB61_8:                               # %if.end.12
	jmp	.LBB61_9
.LBB61_9:                               # %if.end.13
	movabsq	$.L.str.87, %rdi
	callq	intern
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB61_10:                              # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end61:
	.size	file_offset, .Lfunc_end61-file_offset
	.cfi_endproc

	.align	16, 0x90
	.type	read_non_regular,@function
read_non_regular:                       # @read_non_regular
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
	movq	%rdi, -8(%rbp)
	movb	$1, immediate_quit
# BB#1:                                 # %do.body
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB62_4
# BB#2:                                 # %land.lhs.true
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB62_4
# BB#3:                                 # %if.then
	callq	process_quit_flag
	jmp	.LBB62_7
.LBB62_4:                               # %if.else
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB62_6
# BB#5:                                 # %if.then.3
	callq	process_pending_signals
.LBB62_6:                               # %if.end
	jmp	.LBB62_7
.LBB62_7:                               # %if.end.4
	jmp	.LBB62_8
.LBB62_8:                               # %do.end
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	XSAVE_INTEGER
	movl	$1, %esi
	movl	%eax, %ecx
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	(%rax), %rax
	movq	current_buffer, %rdi
	movq	744(%rdi), %rdi
	addq	$0, %rdi
	addq	%rdi, %rax
	addq	$-1, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	callq	XSAVE_INTEGER
	movl	$2, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	addq	%rax, %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	XSAVE_INTEGER
	movl	-44(%rbp), %edi         # 4-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	emacs_read
	movl	%eax, %ecx
	movl	%ecx, -12(%rbp)
	movb	$0, immediate_quit
	movq	-8(%rbp), %rdi
	callq	free_misc
	movslq	-12(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end62:
	.size	read_non_regular, .Lfunc_end62-read_non_regular
	.cfi_endproc

	.align	16, 0x90
	.type	read_non_regular_quit,@function
read_non_regular_quit:                  # @read_non_regular_quit
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
	subq	$16, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end63:
	.size	read_non_regular_quit, .Lfunc_end63-read_non_regular_quit
	.cfi_endproc

	.align	16, 0x90
	.type	decide_coding_unwind,@function
decide_coding_unwind:                   # @decide_coding_unwind
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
	movq	-8(%rbp), %rdi
	subq	$3, %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	subq	$3, %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	subq	$3, %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	subq	$3, %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	XBUFFER
	movq	%rax, %rdi
	callq	set_buffer_internal
	movl	$1, %ecx
	movl	%ecx, %eax
	movq	current_buffer, %rdi
	movq	720(%rdi), %rdi
	movq	16(%rdi), %rdx
	movq	current_buffer, %rdi
	movq	720(%rdi), %rdi
	movq	32(%rdi), %rcx
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	adjust_markers_for_delete
	movl	$1, %r8d
	movl	%r8d, %edi
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	subq	$1, %rax
	movq	%rax, %rsi
	callq	adjust_overlays_for_delete
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	current_buffer, %rdi
	callq	set_buffer_intervals
	movl	$1, %r8d
	movl	%r8d, %eax
	movq	current_buffer, %rdi
	movq	%rax, %rsi
	movq	%rax, %rdx
	callq	temp_set_point_both
	movq	current_buffer, %rdi
	movq	-16(%rbp), %rsi
	callq	bset_enable_multibyte_characters
	movq	current_buffer, %rdi
	movq	-24(%rbp), %rsi
	callq	bset_undo_list
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end64:
	.size	decide_coding_unwind, .Lfunc_end64-decide_coding_unwind
	.cfi_endproc

	.align	16, 0x90
	.type	restore_window_points,@function
restore_window_points:                  # @restore_window_points
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
.LBB65_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB65_12
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB65_1 Depth=1
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB65_10
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB65_1 Depth=1
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB65_9
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB65_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB65_9
# BB#5:                                 # %land.lhs.true.18
                                        #   in Loop: Header=BB65_1 Depth=1
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB65_9
# BB#6:                                 # %land.lhs.true.24
                                        #   in Loop: Header=BB65_1 Depth=1
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	cmpq	-24(%rbp), %rax
	jle	.LBB65_9
# BB#7:                                 # %land.lhs.true.27
                                        #   in Loop: Header=BB65_1 Depth=1
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB65_9
# BB#8:                                 # %if.then.31
                                        #   in Loop: Header=BB65_1 Depth=1
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	cvtsi2sdq	-72(%rbp), %xmm0
	cvtsi2sdq	-64(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	cvtsi2sdq	-24(%rbp), %xmm0
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	subq	-24(%rbp), %rax
	cvtsi2sdq	%rax, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %rax
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	-88(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fset_marker
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB65_9:                               # %if.end
                                        #   in Loop: Header=BB65_1 Depth=1
	jmp	.LBB65_10
.LBB65_10:                              # %if.end.43
                                        #   in Loop: Header=BB65_1 Depth=1
	jmp	.LBB65_11
.LBB65_11:                              # %for.inc
                                        #   in Loop: Header=BB65_1 Depth=1
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB65_1
.LBB65_12:                              # %for.end
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end65:
	.size	restore_window_points, .Lfunc_end65-restore_window_points
	.cfi_endproc

	.globl	Fwrite_region
	.align	16, 0x90
	.type	Fwrite_region,@function
Fwrite_region:                          # @Fwrite_region
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
	subq	$80, %rsp
	movq	16(%rbp), %rax
	movl	$4294967295, %r10d      # imm = 0xFFFFFFFF
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %r9
	movq	-56(%rbp), %rax
	movq	%rax, (%rsp)
	movl	$-1, 8(%rsp)
	movl	%r10d, -60(%rbp)        # 4-byte Spill
	callq	write_region
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end66:
	.size	Fwrite_region, .Lfunc_end66-Fwrite_region
	.cfi_endproc

	.globl	write_region
	.align	16, 0x90
	.type	write_region,@function
write_region:                           # @write_region
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
	subq	$1504, %rsp             # imm = 0x5E0
	movl	24(%rbp), %eax
	movq	16(%rbp), %r10
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	%r10, -64(%rbp)
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	setl	%r11b
	andb	$1, %r11b
	movb	%r11b, -89(%rbp)
	movl	$0, -96(%rbp)
	callq	SPECPDL_INDEX
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -272(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -1200(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %r11b
	movq	-1200(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	movb	%r11b, -1201(%rbp)      # 1-byte Spill
	je	.LBB67_2
# BB#1:                                 # %lor.rhs
	movq	-48(%rbp), %rdi
	callq	STRINGP
	movb	%al, -1201(%rbp)        # 1-byte Spill
.LBB67_2:                               # %lor.end
	movb	-1201(%rbp), %al        # 1-byte Reload
	xorl	%edi, %edi
	andb	$1, %al
	movb	%al, -313(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, -1216(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1216(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movb	%dl, -314(%rbp)
	movb	$0, -315(%rbp)
	movq	current_buffer, %rax
	cmpq	$0, 784(%rax)
	je	.LBB67_5
# BB#3:                                 # %land.lhs.true
	testb	$1, -313(%rbp)
	je	.LBB67_5
# BB#4:                                 # %if.then
	movabsq	$.L.str.34, %rdi
	movb	$0, %al
	callq	error
.LBB67_5:                               # %if.end
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -1224(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1224(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB67_8
# BB#6:                                 # %land.lhs.true.11
	movq	-16(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB67_8
# BB#7:                                 # %if.then.13
	leaq	-16(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	validate_region
.LBB67_8:                               # %if.end.14
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -296(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1232(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1232(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fexpand_file_name
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -1240(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1240(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB67_11
# BB#9:                                 # %land.lhs.true.20
	movl	$385, %edi              # imm = 0x181
	movq	-64(%rbp), %rax
	movq	%rax, -1248(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1248(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB67_11
# BB#10:                                # %if.then.23
	xorl	%esi, %esi
	movabsq	$.L.str.42, %rdx
	movl	$1, %eax
	movq	-32(%rbp), %rdi
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	barf_or_query_if_file_exists
.LBB67_11:                              # %if.end.24
	movq	-48(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB67_12
	jmp	.LBB67_13
.LBB67_12:                              # %if.then.26
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -1256(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1256(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fexpand_file_name
	movq	%rax, -296(%rbp)
	jmp	.LBB67_14
.LBB67_13:                              # %if.else
	movq	-32(%rbp), %rax
	movq	%rax, -296(%rbp)
.LBB67_14:                              # %if.end.29
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -1264(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1264(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB67_16
# BB#15:                                # %if.then.32
	movq	-296(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB67_16:                              # %if.end.33
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$1040, %edi             # imm = 0x410
	movq	%rax, -304(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1272(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1272(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	xorl	%edi, %edi
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -1280(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1280(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB67_19
# BB#17:                                # %land.lhs.true.39
	movq	-48(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB67_18
	jmp	.LBB67_19
.LBB67_18:                              # %if.then.41
	movl	$1040, %edi             # imm = 0x410
	movq	-48(%rbp), %rax
	movq	%rax, -1288(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1288(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	movq	%rax, -288(%rbp)
.LBB67_19:                              # %if.end.44
	xorl	%edi, %edi
	movq	-288(%rbp), %rax
	movq	%rax, -1296(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1296(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB67_23
# BB#20:                                # %if.then.47
	movl	$1040, %edi             # imm = 0x410
	movq	-288(%rbp), %rax
	movq	%rax, -1304(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %r8
	movq	-40(%rbp), %r9
	movq	-48(%rbp), %rsi
	movq	-1304(%rbp), %rdi       # 8-byte Reload
	movq	%rsi, -1312(%rbp)       # 8-byte Spill
	movq	%rax, %rsi
	movq	-1312(%rbp), %rax       # 8-byte Reload
	movq	%rax, (%rsp)
	callq	call6
	movq	%rax, -952(%rbp)
	testb	$1, -313(%rbp)
	je	.LBB67_22
# BB#21:                                # %if.then.51
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 64(%rcx)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	subq	$1, %rax
	movq	%rax, %rdi
	callq	make_natnum
	movq	current_buffer, %rcx
	movq	%rax, 40(%rcx)
	movq	current_buffer, %rdi
	movq	-296(%rbp), %rsi
	callq	bset_filename
.LBB67_22:                              # %if.end.55
	movq	-952(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB67_133
.LBB67_23:                              # %if.end.56
	callq	save_restriction_save
	movabsq	$save_restriction_restore, %rdi
	movq	%rax, %rsi
	callq	record_unwind_protect
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -1320(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1320(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB67_25
# BB#24:                                # %if.then.60
	callq	Fwiden
	movq	%rax, -1328(%rbp)       # 8-byte Spill
.LBB67_25:                              # %if.end.62
	movabsq	$build_annotations_unwind, %rdi
	movq	Vwrite_region_annotation_buffers, %rsi
	callq	record_unwind_protect
	callq	Fcurrent_buffer
	movq	%rax, %rdi
	callq	list1
	movq	%rax, Vwrite_region_annotation_buffers
	movq	current_buffer, %rax
	movq	%rax, -328(%rbp)
	movq	-16(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB67_29
# BB#26:                                # %if.then.66
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	build_annotations
	movq	%rax, -304(%rbp)
	movq	current_buffer, %rax
	cmpq	-328(%rbp), %rax
	je	.LBB67_28
# BB#27:                                # %if.then.69
	movq	current_buffer, %rax
	movq	752(%rax), %rdi
	callq	make_natnum
	movq	%rax, -16(%rbp)
	movq	current_buffer, %rax
	movq	768(%rax), %rdi
	callq	make_natnum
	movq	%rax, -24(%rbp)
.LBB67_28:                              # %if.end.72
	jmp	.LBB67_29
.LBB67_29:                              # %if.end.73
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -1336(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1336(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB67_31
# BB#30:                                # %if.then.76
	movq	current_buffer, %rax
	movq	752(%rax), %rdi
	callq	make_natnum
	movq	%rax, -16(%rbp)
	movq	current_buffer, %rax
	movq	768(%rax), %rdi
	callq	make_natnum
	movq	%rax, -24(%rbp)
.LBB67_31:                              # %if.end.81
	leaq	-944(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	movq	-56(%rbp), %r9
	movq	%rax, (%rsp)
	callq	choose_write_coding_system
	movq	%rax, globals+1240
	testb	$1, -89(%rbp)
	je	.LBB67_34
# BB#32:                                # %land.lhs.true.84
	testb	$1, auto_saving
	jne	.LBB67_34
# BB#33:                                # %if.then.86
	movq	-56(%rbp), %rdi
	callq	lock_file
	movb	$1, -315(%rbp)
.LBB67_34:                              # %if.end.87
	movq	-32(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rdi
	callq	SSDATA
	movl	$385, %edi              # imm = 0x181
	movq	%rax, -104(%rbp)
	movl	$65, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -1344(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1344(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB67_36
# BB#35:                                # %cond.true
	movl	$128, %eax
	movl	%eax, -1348(%rbp)       # 4-byte Spill
	jmp	.LBB67_37
.LBB67_36:                              # %cond.false
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -1360(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$512, %edi              # imm = 0x200
	xorl	%ecx, %ecx
	movq	-1360(%rbp), %rdx       # 8-byte Reload
	cmpq	%rax, %rdx
	sete	%sil
	xorb	$-1, %sil
	testb	$1, %sil
	cmovnel	%ecx, %edi
	movl	%edi, -1348(%rbp)       # 4-byte Spill
.LBB67_37:                              # %cond.end
	movl	-1348(%rbp), %eax       # 4-byte Reload
	orl	-72(%rbp), %eax
	movl	%eax, -72(%rbp)
	movq	-40(%rbp), %rdi
	callq	NUMBERP
	testb	$1, %al
	jne	.LBB67_38
	jmp	.LBB67_39
.LBB67_38:                              # %if.then.97
	movq	-40(%rbp), %rdi
	callq	file_offset
	movq	%rax, -88(%rbp)
	jmp	.LBB67_42
.LBB67_39:                              # %if.else.99
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -1368(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1368(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB67_41
# BB#40:                                # %if.then.102
	movl	-72(%rbp), %eax
	orl	$1024, %eax             # imm = 0x400
	movl	%eax, -72(%rbp)
.LBB67_41:                              # %if.end.104
	jmp	.LBB67_42
.LBB67_42:                              # %if.end.105
	testb	$1, auto_saving
	je	.LBB67_44
# BB#43:                                # %cond.true.107
	movl	auto_save_mode_bits, %eax
	movl	%eax, -1372(%rbp)       # 4-byte Spill
	jmp	.LBB67_45
.LBB67_44:                              # %cond.false.108
	movl	$438, %eax              # imm = 0x1B6
	movl	%eax, -1372(%rbp)       # 4-byte Spill
	jmp	.LBB67_45
.LBB67_45:                              # %cond.end.109
	movl	-1372(%rbp), %eax       # 4-byte Reload
	movl	%eax, -76(%rbp)
	testb	$1, -89(%rbp)
	je	.LBB67_51
# BB#46:                                # %if.then.112
	movq	-104(%rbp), %rdi
	movl	-72(%rbp), %esi
	movl	-76(%rbp), %edx
	callq	emacs_open
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jge	.LBB67_50
# BB#47:                                # %if.then.115
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -956(%rbp)
	testb	$1, -315(%rbp)
	je	.LBB67_49
# BB#48:                                # %if.then.118
	movq	-56(%rbp), %rdi
	callq	unlock_file
.LBB67_49:                              # %if.end.119
	movabsq	$.L.str.10, %rdi
	movq	-32(%rbp), %rsi
	movl	-956(%rbp), %edx
	callq	report_file_errno
.LBB67_50:                              # %if.end.120
	callq	SPECPDL_INDEX
	movabsq	$close_file_unwind, %rdi
	movq	%rax, -280(%rbp)
	movl	-68(%rbp), %esi
	callq	record_unwind_protect_int
.LBB67_51:                              # %if.end.122
	movq	-40(%rbp), %rdi
	callq	NUMBERP
	testb	$1, %al
	jne	.LBB67_52
	jmp	.LBB67_57
.LBB67_52:                              # %if.then.124
	xorl	%edx, %edx
	movl	-68(%rbp), %edi
	movq	-88(%rbp), %rsi
	callq	lseek
	movq	%rax, -968(%rbp)
	cmpq	$0, -968(%rbp)
	jge	.LBB67_56
# BB#53:                                # %if.then.127
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -972(%rbp)
	testb	$1, -315(%rbp)
	je	.LBB67_55
# BB#54:                                # %if.then.130
	movq	-56(%rbp), %rdi
	callq	unlock_file
.LBB67_55:                              # %if.end.131
	movabsq	$.L.str.43, %rdi
	movq	-32(%rbp), %rsi
	movl	-972(%rbp), %edx
	callq	report_file_errno
.LBB67_56:                              # %if.end.132
	jmp	.LBB67_57
.LBB67_57:                              # %if.end.133
	movb	$1, immediate_quit
	movq	-16(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB67_58
	jmp	.LBB67_59
.LBB67_58:                              # %if.then.135
	movl	-68(%rbp), %edi
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rax
	movl	%edi, -1376(%rbp)       # 4-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -1384(%rbp)       # 8-byte Spill
	callq	SCHARS
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	-304(%rbp), %r8
	leaq	-944(%rbp), %r9
	movl	-1376(%rbp), %edi       # 4-byte Reload
	movq	-1384(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rcx
	callq	a_write
	andb	$1, %al
	movb	%al, -90(%rbp)
	jmp	.LBB67_63
.LBB67_59:                              # %if.else.139
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	movq	-24(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	je	.LBB67_61
# BB#60:                                # %if.then.142
	xorl	%edi, %edi
	movl	-68(%rbp), %eax
	movl	%eax, -1388(%rbp)       # 4-byte Spill
	callq	builtin_lisp_symbol
	leaq	-304(%rbp), %r8
	leaq	-944(%rbp), %r9
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	movq	-24(%rbp), %rdx
	sarq	$2, %rdx
	movq	-16(%rbp), %rsi
	sarq	$2, %rsi
	subq	%rsi, %rdx
	movl	-1388(%rbp), %edi       # 4-byte Reload
	movq	%rax, %rsi
	movq	%rdx, -1400(%rbp)       # 8-byte Spill
	movq	%rcx, %rdx
	movq	-1400(%rbp), %rcx       # 8-byte Reload
	callq	a_write
	andb	$1, %al
	movb	%al, -90(%rbp)
	jmp	.LBB67_62
.LBB67_61:                              # %if.else.150
	xorl	%edi, %edi
	movl	-936(%rbp), %eax
	shrl	$14, %eax
	andl	$31, %eax
	orl	$1, %eax
	movl	-936(%rbp), %ecx
	andl	$31, %eax
	shll	$14, %eax
	andl	$-507905, %ecx          # imm = 0xFFFFFFFFFFF83FFF
	orl	%eax, %ecx
	movl	%ecx, -936(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -1404(%rbp)       # 4-byte Spill
	callq	builtin_lisp_symbol
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	leaq	-304(%rbp), %r8
	leaq	-944(%rbp), %r9
	movq	-24(%rbp), %rdx
	sarq	$2, %rdx
	movl	-1404(%rbp), %edi       # 4-byte Reload
	movq	%rax, %rsi
	callq	a_write
	andb	$1, %al
	movb	%al, -90(%rbp)
.LBB67_62:                              # %if.end.159
	jmp	.LBB67_63
.LBB67_63:                              # %if.end.160
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -96(%rbp)
	testb	$1, -90(%rbp)
	je	.LBB67_67
# BB#64:                                # %land.lhs.true.163
	movl	-936(%rbp), %eax
	andl	$16383, %eax            # imm = 0x3FFF
	andl	$512, %eax              # imm = 0x200
	cmpl	$0, %eax
	je	.LBB67_67
# BB#65:                                # %land.lhs.true.167
	movl	-936(%rbp), %eax
	shrl	$14, %eax
	andl	$31, %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB67_67
# BB#66:                                # %if.then.174
	xorl	%edi, %edi
	movl	-936(%rbp), %eax
	shrl	$14, %eax
	andl	$31, %eax
	orl	$1, %eax
	movl	-936(%rbp), %ecx
	andl	$31, %eax
	shll	$14, %eax
	andl	$-507905, %ecx          # imm = 0xFFFFFFFFFFF83FFF
	orl	%eax, %ecx
	movl	%ecx, -936(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -1408(%rbp)       # 4-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %ecx
	movl	%ecx, %edx
	leaq	-944(%rbp), %r8
	movl	-1408(%rbp), %edi       # 4-byte Reload
	movq	%rax, %rsi
	movq	%rdx, -1416(%rbp)       # 8-byte Spill
	movq	-1416(%rbp), %rcx       # 8-byte Reload
	callq	e_write
	andb	$1, %al
	movb	%al, -90(%rbp)
	callq	__errno_location
	movl	(%rax), %edi
	movl	%edi, -96(%rbp)
.LBB67_67:                              # %if.end.189
	movb	$0, immediate_quit
	testb	$1, -89(%rbp)
	je	.LBB67_78
# BB#68:                                # %land.lhs.true.191
	testb	$1, auto_saving
	jne	.LBB67_78
# BB#69:                                # %land.lhs.true.193
	testb	$1, globals+3440
	jne	.LBB67_78
# BB#70:                                # %if.then.195
	jmp	.LBB67_71
.LBB67_71:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-68(%rbp), %edi
	callq	fsync
	cmpl	$0, %eax
	je	.LBB67_77
# BB#72:                                # %while.body
                                        #   in Loop: Header=BB67_71 Depth=1
	callq	__errno_location
	cmpl	$4, (%rax)
	je	.LBB67_76
# BB#73:                                # %if.then.200
	callq	__errno_location
	cmpl	$22, (%rax)
	je	.LBB67_75
# BB#74:                                # %if.then.203
	movb	$0, -90(%rbp)
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -96(%rbp)
.LBB67_75:                              # %if.end.205
	jmp	.LBB67_77
.LBB67_76:                              # %if.end.206
                                        #   in Loop: Header=BB67_71 Depth=1
	jmp	.LBB67_71
.LBB67_77:                              # %while.end
	jmp	.LBB67_78
.LBB67_78:                              # %if.end.207
	callq	invalid_timespec
	movq	%rax, -992(%rbp)
	movq	%rdx, -984(%rbp)
	movq	-992(%rbp), %rax
	movq	%rax, -264(%rbp)
	movq	-984(%rbp), %rax
	movq	%rax, -256(%rbp)
	testb	$1, -313(%rbp)
	je	.LBB67_83
# BB#79:                                # %if.then.210
	leaq	-248(%rbp), %rsi
	movl	-68(%rbp), %edi
	callq	fstat
	cmpl	$0, %eax
	jne	.LBB67_81
# BB#80:                                # %if.then.213
	leaq	-248(%rbp), %rdi
	callq	get_stat_mtime
	movq	%rax, -1008(%rbp)
	movq	%rdx, -1000(%rbp)
	movq	-1008(%rbp), %rax
	movq	%rax, -264(%rbp)
	movq	-1000(%rbp), %rax
	movq	%rax, -256(%rbp)
	jmp	.LBB67_82
.LBB67_81:                              # %if.else.216
	movb	$0, -90(%rbp)
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -96(%rbp)
.LBB67_82:                              # %if.end.218
	jmp	.LBB67_83
.LBB67_83:                              # %if.end.219
	testb	$1, -89(%rbp)
	je	.LBB67_87
# BB#84:                                # %if.then.221
	movl	-68(%rbp), %edi
	callq	emacs_close
	cmpl	$0, %eax
	jge	.LBB67_86
# BB#85:                                # %if.then.224
	movb	$0, -90(%rbp)
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -96(%rbp)
.LBB67_86:                              # %if.end.226
	movq	specpdl, %rax
	movq	-280(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	%rax, specpdl_ptr
.LBB67_87:                              # %if.end.227
	movq	-264(%rbp), %rdi
	movq	-256(%rbp), %rsi
	callq	timespec_valid_p
	testb	$1, %al
	jne	.LBB67_88
	jmp	.LBB67_105
.LBB67_88:                              # %land.lhs.true.229
	testb	$1, valid_timestamp_file_system
	je	.LBB67_90
# BB#89:                                # %land.lhs.true.231
	movq	-248(%rbp), %rax
	cmpq	timestamp_file_system, %rax
	je	.LBB67_105
.LBB67_90:                              # %if.then.233
	movl	$1, %esi
	xorl	%edx, %edx
	movq	-104(%rbp), %rdi
	callq	emacs_open
	movl	%eax, -1012(%rbp)
	cmpl	$0, -1012(%rbp)
	jl	.LBB67_104
# BB#91:                                # %if.then.236
	leaq	-1160(%rbp), %rsi
	movl	-1012(%rbp), %edi
	callq	fstat
	cmpl	$0, %eax
	jne	.LBB67_103
# BB#92:                                # %land.lhs.true.239
	movq	-248(%rbp), %rax
	cmpq	-1160(%rbp), %rax
	jne	.LBB67_103
# BB#93:                                # %land.lhs.true.243
	movq	-240(%rbp), %rax
	cmpq	-1152(%rbp), %rax
	jne	.LBB67_103
# BB#94:                                # %if.then.246
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-72(%rbp), %eax
	andl	$640, %eax              # imm = 0x280
	cmpl	$0, %eax
	movb	%cl, -1417(%rbp)        # 1-byte Spill
	je	.LBB67_97
# BB#95:                                # %land.lhs.true.249
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -200(%rbp)
	movb	%cl, -1417(%rbp)        # 1-byte Spill
	je	.LBB67_97
# BB#96:                                # %land.rhs
	movl	$100, %eax
	movl	%eax, %ecx
	movq	-256(%rbp), %rax
	cqto
	idivq	%rcx
	cmpq	$0, %rdx
	setne	%sil
	movb	%sil, -1417(%rbp)       # 1-byte Spill
.LBB67_97:                              # %land.end
	movb	-1417(%rbp), %al        # 1-byte Reload
	leaq	-1160(%rbp), %rdi
	andb	$1, %al
	movb	%al, -1161(%rbp)
	callq	get_stat_mtime
	movq	%rax, -1184(%rbp)
	movq	%rdx, -1176(%rbp)
	testb	$1, -1161(%rbp)
	je	.LBB67_101
# BB#98:                                # %land.lhs.true.255
	movq	-264(%rbp), %rdi
	movq	-256(%rbp), %rsi
	movq	-1184(%rbp), %rdx
	movq	-1176(%rbp), %rcx
	callq	timespec_cmp
	cmpl	$0, %eax
	jne	.LBB67_101
# BB#99:                                # %land.lhs.true.258
	movq	-200(%rbp), %rax
	cmpq	-1112(%rbp), %rax
	jne	.LBB67_101
# BB#100:                               # %if.then.262
	movq	-248(%rbp), %rax
	movq	%rax, timestamp_file_system
	movb	$1, valid_timestamp_file_system
	jmp	.LBB67_102
.LBB67_101:                             # %if.else.264
	movq	-1112(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-1184(%rbp), %rax
	movq	%rax, -264(%rbp)
	movq	-1176(%rbp), %rax
	movq	%rax, -256(%rbp)
.LBB67_102:                             # %if.end.267
	jmp	.LBB67_103
.LBB67_103:                             # %if.end.268
	movl	-1012(%rbp), %edi
	callq	emacs_close
	movl	%eax, -1424(%rbp)       # 4-byte Spill
.LBB67_104:                             # %if.end.270
	jmp	.LBB67_105
.LBB67_105:                             # %if.end.271
	jmp	.LBB67_106
.LBB67_106:                             # %while.cond.272
                                        # =>This Inner Loop Header: Depth=1
	movq	Vwrite_region_annotation_buffers, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB67_112
# BB#107:                               # %while.body.276
                                        #   in Loop: Header=BB67_106 Depth=1
	movq	Vwrite_region_annotation_buffers, %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -1192(%rbp)
	movq	-1192(%rbp), %rdi
	callq	Fbuffer_live_p
	xorl	%edi, %edi
	movq	%rax, -1432(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1432(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB67_111
# BB#108:                               # %if.then.282
                                        #   in Loop: Header=BB67_106 Depth=1
	movq	-1192(%rbp), %rdi
	callq	Fset_buffer
	movq	globals+2728, %rdi
	movq	%rax, -1440(%rbp)       # 8-byte Spill
	callq	FUNCTIONP
	testb	$1, %al
	jne	.LBB67_109
	jmp	.LBB67_110
.LBB67_109:                             # %if.then.285
                                        #   in Loop: Header=BB67_106 Depth=1
	movq	globals+2728, %rdi
	callq	call0
	movq	%rax, -1448(%rbp)       # 8-byte Spill
.LBB67_110:                             # %if.end.287
                                        #   in Loop: Header=BB67_106 Depth=1
	jmp	.LBB67_111
.LBB67_111:                             # %if.end.288
                                        #   in Loop: Header=BB67_106 Depth=1
	movq	Vwrite_region_annotation_buffers, %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, Vwrite_region_annotation_buffers
	jmp	.LBB67_106
.LBB67_112:                             # %while.end.290
	xorl	%edi, %edi
	movq	-272(%rbp), %rax
	movq	%rax, -1456(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1456(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	testb	$1, -315(%rbp)
	movq	%rax, -1464(%rbp)       # 8-byte Spill
	je	.LBB67_114
# BB#113:                               # %if.then.294
	movq	-56(%rbp), %rdi
	callq	unlock_file
.LBB67_114:                             # %if.end.295
	movq	-264(%rbp), %rdi
	movq	-256(%rbp), %rsi
	callq	timespec_valid_p
	testb	$1, %al
	jne	.LBB67_115
	jmp	.LBB67_116
.LBB67_115:                             # %if.then.297
	movq	current_buffer, %rax
	movq	-264(%rbp), %rcx
	movq	%rcx, 856(%rax)
	movq	-256(%rbp), %rcx
	movq	%rcx, 864(%rax)
	movq	-200(%rbp), %rax
	movq	current_buffer, %rcx
	movq	%rax, 872(%rcx)
.LBB67_116:                             # %if.end.300
	testb	$1, -90(%rbp)
	jne	.LBB67_118
# BB#117:                               # %if.then.302
	movabsq	$.L.str.14, %rdi
	movq	-32(%rbp), %rsi
	movl	-96(%rbp), %edx
	callq	report_file_errno
.LBB67_118:                             # %if.end.303
	testb	$1, -313(%rbp)
	je	.LBB67_120
# BB#119:                               # %if.then.305
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 64(%rcx)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	subq	$1, %rax
	movq	%rax, %rdi
	callq	make_natnum
	movq	current_buffer, %rcx
	movq	%rax, 40(%rcx)
	movq	current_buffer, %rdi
	movq	-296(%rbp), %rsi
	callq	bset_filename
	movl	$14, update_mode_lines
	jmp	.LBB67_126
.LBB67_120:                             # %if.else.315
	testb	$1, -314(%rbp)
	je	.LBB67_125
# BB#121:                               # %if.then.317
	testb	$1, auto_saving
	je	.LBB67_124
# BB#122:                               # %land.lhs.true.320
	movq	current_buffer, %rax
	movq	16(%rax), %rdi
	movq	current_buffer, %rax
	movq	48(%rax), %rsi
	callq	Fstring_equal
	xorl	%edi, %edi
	movq	%rax, -1472(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1472(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB67_124
# BB#123:                               # %if.then.325
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	movq	%rax, 64(%rcx)
.LBB67_124:                             # %if.end.330
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB67_133
.LBB67_125:                             # %if.end.332
	jmp	.LBB67_126
.LBB67_126:                             # %if.end.333
	testb	$1, auto_saving
	jne	.LBB67_132
# BB#127:                               # %land.lhs.true.335
	testb	$1, noninteractive
	jne	.LBB67_132
# BB#128:                               # %if.then.337
	movq	-40(%rbp), %rdi
	callq	NUMBERP
	testb	$1, %al
	jne	.LBB67_129
	jmp	.LBB67_130
.LBB67_129:                             # %cond.true.340
	movabsq	$.L.str.44, %rax
	movq	%rax, -1480(%rbp)       # 8-byte Spill
	jmp	.LBB67_131
.LBB67_130:                             # %cond.false.341
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -1488(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.46, %rcx
	movabsq	$.L.str.45, %rdx
	movq	-1488(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%r8b
	xorb	$-1, %r8b
	testb	$1, %r8b
	cmovneq	%rdx, %rcx
	movq	%rcx, -1480(%rbp)       # 8-byte Spill
.LBB67_131:                             # %cond.end.347
	movq	-1480(%rbp), %rax       # 8-byte Reload
	movl	$1, %edx
	movq	-296(%rbp), %rsi
	movq	%rax, %rdi
	callq	message_with_string
.LBB67_132:                             # %if.end.349
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB67_133:                             # %return
	movq	-8(%rbp), %rax
	addq	$1504, %rsp             # imm = 0x5E0
	popq	%rbp
	retq
.Lfunc_end67:
	.size	write_region, .Lfunc_end67-write_region
	.cfi_endproc

	.align	16, 0x90
	.type	build_annotations_unwind,@function
build_annotations_unwind:               # @build_annotations_unwind
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, Vwrite_region_annotation_buffers
	popq	%rbp
	retq
.Lfunc_end68:
	.size	build_annotations_unwind, .Lfunc_end68-build_annotations_unwind
	.cfi_endproc

	.align	16, 0x90
	.type	build_annotations,@function
build_annotations:                      # @build_annotations
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
	subq	$144, %rsp
	movl	$5, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movb	$0, -53(%rbp)
	movq	current_buffer, %rsi
	movq	%rsi, %rdi
	movl	%eax, %esi
	callq	make_lisp_ptr
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)
	movq	globals+2712, %rax
	movq	%rax, -32(%rbp)
.LBB69_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB69_8
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB69_1 Depth=1
	movl	$901, %edi              # imm = 0x385
	movq	current_buffer, %rax
	movq	%rax, -64(%rbp)
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx
	subq	$3, %rcx
	cmpq	(%rcx), %rax
	jne	.LBB69_5
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB69_1 Depth=1
	testb	$1, -53(%rbp)
	jne	.LBB69_5
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB69_1 Depth=1
	movl	$1041, %edi             # imm = 0x411
	movb	$1, -53(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Fdefault_value
	movl	$2, %ecx
	movl	%ecx, %edi
	leaq	-80(%rbp), %rsi
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	callq	Fappend
	movq	%rax, -32(%rbp)
	jmp	.LBB69_1
.LBB69_5:                               # %if.end
                                        #   in Loop: Header=BB69_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, globals+2720
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	call2
	movq	%rax, -40(%rbp)
	movq	current_buffer, %rax
	cmpq	-64(%rbp), %rax
	je	.LBB69_7
# BB#6:                                 # %if.then.15
                                        #   in Loop: Header=BB69_1 Depth=1
	callq	Fcurrent_buffer
	movq	Vwrite_region_annotation_buffers, %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, Vwrite_region_annotation_buffers
	movq	current_buffer, %rax
	movq	752(%rax), %rdi
	callq	make_natnum
	movq	%rax, -8(%rbp)
	movq	current_buffer, %rax
	movq	768(%rax), %rdi
	callq	make_natnum
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)
.LBB69_7:                               # %if.end.21
                                        #   in Loop: Header=BB69_1 Depth=1
	movq	-40(%rbp), %rdi
	callq	Flength
	movl	$237, %edi
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	merge
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB69_1
.LBB69_8:                               # %while.end
	testb	$1, auto_saving
	je	.LBB69_11
# BB#9:                                 # %land.lhs.true.30
	movl	$901, %edi              # imm = 0x385
	movq	current_buffer, %rax
	movq	336(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB69_11
# BB#10:                                # %if.then.34
	movq	current_buffer, %rax
	movq	336(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB69_12
.LBB69_11:                              # %if.else
	movq	current_buffer, %rax
	movq	328(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB69_12:                              # %if.end.36
	movl	$0, -52(%rbp)
.LBB69_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB69_20
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB69_13 Depth=1
	movl	$453, %edi              # imm = 0x1C5
	movq	current_buffer, %rax
	movq	%rax, -88(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, globals+2720
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rsi
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-48(%rbp), %r8
	movslq	-52(%rbp), %r9
	shlq	$2, %r9
	addq	$2, %r9
	movq	%rax, %rdi
	callq	call5
	movq	%rax, -40(%rbp)
	movq	current_buffer, %rax
	cmpq	-88(%rbp), %rax
	je	.LBB69_16
# BB#15:                                # %if.then.49
                                        #   in Loop: Header=BB69_13 Depth=1
	movq	current_buffer, %rax
	movq	752(%rax), %rdi
	callq	make_natnum
	movq	%rax, -8(%rbp)
	movq	current_buffer, %rax
	movq	768(%rax), %rdi
	callq	make_natnum
	xorl	%edi, %edi
	movq	%rax, -16(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)
.LBB69_16:                              # %if.end.55
                                        #   in Loop: Header=BB69_13 Depth=1
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB69_18
# BB#17:                                # %if.then.60
                                        #   in Loop: Header=BB69_13 Depth=1
	movl	$237, %edi
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	merge
	movq	%rax, -24(%rbp)
.LBB69_18:                              # %if.end.63
                                        #   in Loop: Header=BB69_13 Depth=1
	jmp	.LBB69_19
.LBB69_19:                              # %for.inc
                                        #   in Loop: Header=BB69_13 Depth=1
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	-52(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -52(%rbp)
	jmp	.LBB69_13
.LBB69_20:                              # %for.end
	movq	-24(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end69:
	.size	build_annotations, .Lfunc_end69-build_annotations
	.cfi_endproc

	.align	16, 0x90
	.type	choose_write_coding_system,@function
choose_write_coding_system:             # @choose_write_coding_system
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
	subq	$464, %rsp              # imm = 0x1D0
	movq	16(%rbp), %rax
	xorl	%r10d, %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	%rax, -56(%rbp)
	movl	%r10d, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -72(%rbp)
	testb	$1, auto_saving
	je	.LBB70_3
# BB#1:                                 # %land.lhs.true
	movq	current_buffer, %rax
	movq	16(%rax), %rdi
	movq	current_buffer, %rax
	movq	48(%rax), %rsi
	callq	Fstring_equal
	xorl	%edi, %edi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB70_3
# BB#2:                                 # %if.then
	movl	$989, %edi              # imm = 0x3DD
	callq	builtin_lisp_symbol
	movl	$973, %edi              # imm = 0x3CD
	movq	%rax, -64(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -72(%rbp)
	jmp	.LBB70_54
.LBB70_3:                               # %if.else
	xorl	%edi, %edi
	movq	globals+288, %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB70_8
# BB#4:                                 # %if.then.7
	movq	globals+288, %rax
	movq	%rax, -64(%rbp)
	testb	$1, globals+3367
	je	.LBB70_7
# BB#5:                                 # %land.lhs.true.9
	movq	globals+2112, %rdi
	callq	Ffboundp
	xorl	%edi, %edi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB70_7
# BB#6:                                 # %if.then.13
	movl	$901, %edi              # imm = 0x385
	movq	globals+2112, %rax
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	list2
	xorl	%edi, %edi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %r9
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	-216(%rbp), %rsi        # 8-byte Reload
	movq	-200(%rbp), %rdx        # 8-byte Reload
	movq	-224(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	callq	call5
	movq	%rax, -64(%rbp)
.LBB70_7:                               # %if.end
	jmp	.LBB70_53
.LBB70_8:                               # %if.else.18
	xorl	%edi, %edi
	movb	$0, -73(%rbp)
	movb	$0, -74(%rbp)
	movq	current_buffer, %rax
	movq	320(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB70_10
# BB#9:                                 # %lor.lhs.false
	movl	$221, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Flocal_variable_p
	xorl	%edi, %edi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB70_13
.LBB70_10:                              # %if.then.26
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB70_12
# BB#11:                                # %if.then.30
	movb	$1, -74(%rbp)
.LBB70_12:                              # %if.end.31
	jmp	.LBB70_13
.LBB70_13:                              # %if.end.32
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB70_18
# BB#14:                                # %if.then.35
	movl	$1040, %edi             # imm = 0x410
	callq	builtin_lisp_symbol
	movl	$7, %edi
                                        # kill: RDI<def> EDI<kill>
	leaq	-144(%rbp), %rsi
	movq	%rax, -144(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	Ffind_operation_coding_system
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB70_17
# BB#15:                                # %land.lhs.true.45
	xorl	%edi, %edi
	movq	-88(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB70_17
# BB#16:                                # %if.then.49
	movq	-88(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB70_17:                              # %if.end.53
	jmp	.LBB70_18
.LBB70_18:                              # %if.end.54
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB70_20
# BB#19:                                # %if.then.58
	movq	current_buffer, %rax
	movq	320(%rax), %rax
	movq	%rax, -64(%rbp)
	movb	$1, -73(%rbp)
.LBB70_20:                              # %if.end.60
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB70_36
# BB#21:                                # %land.lhs.true.64
	testb	$1, -74(%rbp)
	jne	.LBB70_36
# BB#22:                                # %if.then.66
	jmp	.LBB70_23
.LBB70_23:                              # %do.body
	movq	Vcoding_system_hash_table, %rdi
	callq	XHASH_TABLE
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	hash_lookup
	cmpq	$0, %rax
	jge	.LBB70_26
# BB#24:                                # %land.lhs.true.71
	movq	-64(%rbp), %rdi
	callq	Fcheck_coding_system
	xorl	%edi, %edi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB70_26
# BB#25:                                # %if.then.76
	movl	$280, %edi              # imm = 0x118
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -304(%rbp)        # 8-byte Spill
.LBB70_26:                              # %if.end.78
	jmp	.LBB70_27
.LBB70_27:                              # %do.end
	jmp	.LBB70_28
.LBB70_28:                              # %do.body.79
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	Vcoding_system_hash_table, %rsi
	movq	%rsi, -312(%rbp)        # 8-byte Spill
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	-312(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fgethash
	xorl	%edi, %edi
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-328(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB70_30
# BB#29:                                # %if.then.85
	movq	-64(%rbp), %rdi
	callq	Fcheck_coding_system
	xorl	%edi, %edi
	movq	-64(%rbp), %rcx
	movq	Vcoding_system_hash_table, %rsi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	movq	%rsi, -344(%rbp)        # 8-byte Spill
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	-344(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fgethash
	movq	%rax, -152(%rbp)
.LBB70_30:                              # %if.end.89
	xorl	%edi, %edi
	movq	-152(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-360(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB70_32
# BB#31:                                # %if.then.93
	movl	$280, %edi              # imm = 0x118
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -368(%rbp)        # 8-byte Spill
.LBB70_32:                              # %if.end.95
	jmp	.LBB70_33
.LBB70_33:                              # %do.end.96
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-152(%rbp), %rdi
	callq	AREF
	movl	$3, %ecx
	movl	%ecx, %esi
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rdi
	callq	AREF
	movl	$788, %edi              # imm = 0x314
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-376(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB70_35
# BB#34:                                # %if.then.102
	movb	$1, -74(%rbp)
.LBB70_35:                              # %if.end.103
	jmp	.LBB70_36
.LBB70_36:                              # %if.end.104
	testb	$1, -74(%rbp)
	jne	.LBB70_46
# BB#37:                                # %land.lhs.true.106
	movq	globals+2112, %rdi
	callq	Ffboundp
	xorl	%edi, %edi
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-384(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB70_46
# BB#38:                                # %if.then.111
	xorl	%edi, %edi
	movq	globals+2112, %rax
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	movq	%rax, -400(%rbp)        # 8-byte Spill
	movq	%rsi, -408(%rbp)        # 8-byte Spill
	movq	%rdx, -416(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %r9
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	-408(%rbp), %rsi        # 8-byte Reload
	movq	-416(%rbp), %rdx        # 8-byte Reload
	movq	-392(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	callq	call5
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-424(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB70_45
# BB#39:                                # %if.then.117
	jmp	.LBB70_40
.LBB70_40:                              # %do.body.118
	movq	Vcoding_system_hash_table, %rdi
	callq	XHASH_TABLE
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	hash_lookup
	cmpq	$0, %rax
	jge	.LBB70_43
# BB#41:                                # %land.lhs.true.123
	movq	-64(%rbp), %rdi
	callq	Fcheck_coding_system
	xorl	%edi, %edi
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-432(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB70_43
# BB#42:                                # %if.then.128
	movl	$280, %edi              # imm = 0x118
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -440(%rbp)        # 8-byte Spill
.LBB70_43:                              # %if.end.130
	jmp	.LBB70_44
.LBB70_44:                              # %do.end.131
	jmp	.LBB70_45
.LBB70_45:                              # %if.end.132
	jmp	.LBB70_46
.LBB70_46:                              # %if.end.133
	testb	$1, -73(%rbp)
	jne	.LBB70_50
# BB#47:                                # %if.then.135
	xorl	%edi, %edi
	movq	buffer_defaults+320, %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-448(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB70_49
# BB#48:                                # %if.then.139
	movq	-64(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	coding_inherit_eol_type
	movq	%rax, -64(%rbp)
.LBB70_49:                              # %if.end.141
	jmp	.LBB70_50
.LBB70_50:                              # %if.end.142
	testb	$1, -74(%rbp)
	je	.LBB70_52
# BB#51:                                # %if.then.144
	movq	-64(%rbp), %rdi
	callq	raw_text_coding_system
	movq	%rax, -64(%rbp)
.LBB70_52:                              # %if.end.146
	jmp	.LBB70_53
.LBB70_53:                              # %if.end.147
	jmp	.LBB70_54
.LBB70_54:                              # %if.end.148
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	coding_inherit_eol_type
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	setup_coding_system
	movq	-8(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB70_57
# BB#55:                                # %land.lhs.true.151
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	256(%rax), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-456(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB70_57
# BB#56:                                # %if.then.155
	movq	-56(%rbp), %rax
	movl	8(%rax), %ecx
	shrl	$14, %ecx
	andl	$31, %ecx
	orl	$2, %ecx
	movl	8(%rax), %edx
	andl	$31, %ecx
	shll	$14, %ecx
	andl	$-507905, %edx          # imm = 0xFFFFFFFFFFF83FFF
	orl	%ecx, %edx
	movl	%edx, 8(%rax)
.LBB70_57:                              # %if.end.158
	movq	-64(%rbp), %rax
	addq	$464, %rsp              # imm = 0x1D0
	popq	%rbp
	retq
.Lfunc_end70:
	.size	choose_write_coding_system, .Lfunc_end70-choose_write_coding_system
	.cfi_endproc

	.align	16, 0x90
	.type	a_write,@function
a_write:                                # @a_write
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
	subq	$96, %rsp
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-24(%rbp), %rcx
	addq	-32(%rbp), %rcx
	movq	%rcx, -72(%rbp)
.LBB71_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %cl
	movq	-80(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -81(%rbp)          # 1-byte Spill
	je	.LBB71_3
# BB#2:                                 # %lor.rhs
                                        #   in Loop: Header=BB71_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	sete	%dl
	movb	%dl, -81(%rbp)          # 1-byte Spill
.LBB71_3:                               # %lor.end
                                        #   in Loop: Header=BB71_1 Depth=1
	movb	-81(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB71_4
	jmp	.LBB71_18
.LBB71_4:                               # %while.body
                                        #   in Loop: Header=BB71_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	callq	Fcar
	movq	%rax, %rdi
	callq	Fcar_safe
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB71_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB71_1 Depth=1
	movq	-56(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -64(%rbp)
.LBB71_6:                               # %if.end
                                        #   in Loop: Header=BB71_1 Depth=1
	movq	-64(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jl	.LBB71_8
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB71_1 Depth=1
	movq	-64(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jle	.LBB71_9
.LBB71_8:                               # %if.then.14
	movl	-8(%rbp), %edi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-48(%rbp), %r8
	callq	e_write
	andb	$1, %al
	movb	%al, -1(%rbp)
	jmp	.LBB71_19
.LBB71_9:                               # %if.end.16
                                        #   in Loop: Header=BB71_1 Depth=1
	movq	-64(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jle	.LBB71_13
# BB#10:                                # %if.then.19
                                        #   in Loop: Header=BB71_1 Depth=1
	movl	-8(%rbp), %edi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-48(%rbp), %r8
	callq	e_write
	testb	$1, %al
	jne	.LBB71_12
# BB#11:                                # %if.then.21
	movb	$0, -1(%rbp)
	jmp	.LBB71_19
.LBB71_12:                              # %if.end.22
                                        #   in Loop: Header=BB71_1 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB71_13:                              # %if.end.23
                                        #   in Loop: Header=BB71_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	callq	Fcar
	movq	%rax, %rdi
	callq	Fcdr
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB71_14
	jmp	.LBB71_17
.LBB71_14:                              # %if.then.27
                                        #   in Loop: Header=BB71_1 Depth=1
	movl	-8(%rbp), %edi
	movq	-56(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	%edi, -88(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	SCHARS
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-48(%rbp), %r8
	movl	-88(%rbp), %edi         # 4-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rcx
	callq	e_write
	testb	$1, %al
	jne	.LBB71_16
# BB#15:                                # %if.then.30
	movb	$0, -1(%rbp)
	jmp	.LBB71_19
.LBB71_16:                              # %if.end.31
                                        #   in Loop: Header=BB71_1 Depth=1
	jmp	.LBB71_17
.LBB71_17:                              # %if.end.32
                                        #   in Loop: Header=BB71_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	callq	Fcdr
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
	jmp	.LBB71_1
.LBB71_18:                              # %while.end
	movb	$1, -1(%rbp)
.LBB71_19:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end71:
	.size	a_write, .Lfunc_end71-a_write
	.cfi_endproc

	.align	16, 0x90
	.type	e_write,@function
e_write:                                # @e_write
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
	subq	$240, %rsp
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB72_1
	jmp	.LBB72_2
.LBB72_1:                               # %if.then
	movq	$0, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	SCHARS
	movq	%rax, -32(%rbp)
.LBB72_2:                               # %if.end
	jmp	.LBB72_3
.LBB72_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB72_47
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB72_3 Depth=1
	movq	-16(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB72_5
	jmp	.LBB72_16
.LBB72_5:                               # %if.then.3
                                        #   in Loop: Header=BB72_3 Depth=1
	movq	-16(%rbp), %rdi
	callq	SCHARS
	movq	-16(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	SBYTES
	movq	-88(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	setl	%cl
	movq	-40(%rbp), %rax
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	8(%rax), %esi
	shll	$19, %edx
	andl	$-524289, %esi          # imm = 0xFFFFFFFFFFF7FFFF
	orl	%edx, %esi
	movl	%esi, 8(%rax)
	movq	-40(%rbp), %rax
	movl	8(%rax), %edx
	shrl	$19, %edx
	andl	$1, %edx
	testl	$1, %edx
	jne	.LBB72_8
# BB#6:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB72_3 Depth=1
	movq	-40(%rbp), %rax
	movl	8(%rax), %ecx
	andl	$16383, %ecx            # imm = 0x3FFF
	andl	$2048, %ecx             # imm = 0x800
	cmpl	$0, %ecx
	jne	.LBB72_8
# BB#7:                                 # %lor.lhs.false.13
                                        #   in Loop: Header=BB72_3 Depth=1
	movq	-40(%rbp), %rax
	movl	8(%rax), %ecx
	shrl	$14, %ecx
	andl	$31, %ecx
	andl	$2, %ecx
	cmpl	$0, %ecx
	je	.LBB72_14
.LBB72_8:                               # %if.then.19
                                        #   in Loop: Header=BB72_3 Depth=1
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	cmpq	$8388608, %rax          # imm = 0x800000
	jge	.LBB72_10
# BB#9:                                 # %cond.true
                                        #   in Loop: Header=BB72_3 Depth=1
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB72_11
.LBB72_10:                              # %cond.false
                                        #   in Loop: Header=BB72_3 Depth=1
	movl	$8388608, %eax          # imm = 0x800000
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB72_11
.LBB72_11:                              # %cond.end
                                        #   in Loop: Header=BB72_3 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -48(%rbp)
	cmpq	$8388608, -48(%rbp)     # imm = 0x800000
	jne	.LBB72_13
# BB#12:                                # %if.then.23
                                        #   in Loop: Header=BB72_3 Depth=1
	movq	-40(%rbp), %rax
	movl	8(%rax), %ecx
	andl	$-4194305, %ecx         # imm = 0xFFFFFFFFFFBFFFFF
	orl	$4194304, %ecx          # imm = 0x400000
	movl	%ecx, 8(%rax)
.LBB72_13:                              # %if.end.27
                                        #   in Loop: Header=BB72_3 Depth=1
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	callq	string_char_to_byte
	movq	-24(%rbp), %rcx
	addq	-48(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	addq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	string_char_to_byte
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	-136(%rbp), %r8         # 8-byte Reload
	movq	-144(%rbp), %r9         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	encode_coding_object
	jmp	.LBB72_15
.LBB72_14:                              # %if.else
                                        #   in Loop: Header=BB72_3 Depth=1
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 488(%rcx)
	movq	-16(%rbp), %rdi
	callq	SCHARS
	movq	-40(%rbp), %rcx
	movq	%rax, 408(%rcx)
	movq	-16(%rbp), %rdi
	callq	SBYTES
	movq	-40(%rbp), %rcx
	movq	%rax, 384(%rcx)
.LBB72_15:                              # %if.end.34
                                        #   in Loop: Header=BB72_3 Depth=1
	jmp	.LBB72_31
.LBB72_16:                              # %if.else.35
                                        #   in Loop: Header=BB72_3 Depth=1
	movq	current_buffer, %rdi
	movq	-24(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -56(%rbp)
	movq	current_buffer, %rdi
	movq	-32(%rbp), %rsi
	callq	buf_charpos_to_bytepos
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	-64(%rbp), %rsi
	subq	-56(%rbp), %rsi
	cmpq	%rsi, %rax
	setl	%cl
	movq	-40(%rbp), %rax
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	8(%rax), %r8d
	shll	$19, %edx
	andl	$-524289, %r8d          # imm = 0xFFFFFFFFFFF7FFFF
	orl	%edx, %r8d
	movl	%r8d, 8(%rax)
	movq	-40(%rbp), %rax
	movl	8(%rax), %edx
	shrl	$19, %edx
	andl	$1, %edx
	testl	$1, %edx
	jne	.LBB72_19
# BB#17:                                # %lor.lhs.false.53
                                        #   in Loop: Header=BB72_3 Depth=1
	movq	-40(%rbp), %rax
	movl	8(%rax), %ecx
	andl	$16383, %ecx            # imm = 0x3FFF
	andl	$2048, %ecx             # imm = 0x800
	cmpl	$0, %ecx
	jne	.LBB72_19
# BB#18:                                # %lor.lhs.false.59
                                        #   in Loop: Header=BB72_3 Depth=1
	movq	-40(%rbp), %rax
	movl	8(%rax), %ecx
	shrl	$14, %ecx
	andl	$31, %ecx
	andl	$2, %ecx
	cmpl	$0, %ecx
	je	.LBB72_25
.LBB72_19:                              # %if.then.66
                                        #   in Loop: Header=BB72_3 Depth=1
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	cmpq	$8388608, %rax          # imm = 0x800000
	jge	.LBB72_21
# BB#20:                                # %cond.true.70
                                        #   in Loop: Header=BB72_3 Depth=1
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB72_22
.LBB72_21:                              # %cond.false.72
                                        #   in Loop: Header=BB72_3 Depth=1
	movl	$8388608, %eax          # imm = 0x800000
	movl	%eax, %ecx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB72_22
.LBB72_22:                              # %cond.end.73
                                        #   in Loop: Header=BB72_3 Depth=1
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
	cmpq	$8388608, -72(%rbp)     # imm = 0x800000
	jne	.LBB72_24
# BB#23:                                # %if.then.76
                                        #   in Loop: Header=BB72_3 Depth=1
	movq	-40(%rbp), %rax
	movl	8(%rax), %ecx
	andl	$-4194305, %ecx         # imm = 0xFFFFFFFFFFBFFFFF
	orl	$4194304, %ecx          # imm = 0x400000
	movl	%ecx, 8(%rax)
.LBB72_24:                              # %if.end.81
                                        #   in Loop: Header=BB72_3 Depth=1
	movq	-40(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	callq	Fcurrent_buffer
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-24(%rbp), %rdi
	addq	-72(%rbp), %rdi
	movq	current_buffer, %rsi
	movq	-24(%rbp), %r8
	addq	-72(%rbp), %r8
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	%r8, %rsi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	callq	buf_charpos_to_bytepos
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	-176(%rbp), %rsi        # 8-byte Reload
	movq	-184(%rbp), %rdx        # 8-byte Reload
	movq	-192(%rbp), %rcx        # 8-byte Reload
	movq	-168(%rbp), %r8         # 8-byte Reload
	movq	-200(%rbp), %r9         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	encode_coding_object
	jmp	.LBB72_30
.LBB72_25:                              # %if.else.87
                                        #   in Loop: Header=BB72_3 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx
	movq	%rax, 488(%rcx)
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 472(%rcx)
	movq	-24(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	8(%rcx), %rax
	jge	.LBB72_27
# BB#26:                                # %lor.lhs.false.91
                                        #   in Loop: Header=BB72_3 Depth=1
	movq	-32(%rbp), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	8(%rcx), %rax
	jg	.LBB72_28
.LBB72_27:                              # %if.then.95
                                        #   in Loop: Header=BB72_3 Depth=1
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 408(%rcx)
	movq	-64(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 384(%rcx)
	jmp	.LBB72_29
.LBB72_28:                              # %if.else.100
                                        #   in Loop: Header=BB72_3 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	8(%rax), %rax
	subq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 408(%rcx)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	24(%rax), %rax
	subq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 384(%rcx)
.LBB72_29:                              # %if.end.108
                                        #   in Loop: Header=BB72_3 Depth=1
	jmp	.LBB72_30
.LBB72_30:                              # %if.end.109
                                        #   in Loop: Header=BB72_3 Depth=1
	jmp	.LBB72_31
.LBB72_31:                              # %if.end.110
                                        #   in Loop: Header=BB72_3 Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, 384(%rax)
	jle	.LBB72_46
# BB#32:                                # %if.then.113
                                        #   in Loop: Header=BB72_3 Depth=1
	movq	-40(%rbp), %rax
	movl	8(%rax), %ecx
	shrl	$22, %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	je	.LBB72_34
# BB#33:                                # %cond.true.119
                                        #   in Loop: Header=BB72_3 Depth=1
	movq	-40(%rbp), %rax
	movq	496(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jmp	.LBB72_41
.LBB72_34:                              # %cond.false.120
                                        #   in Loop: Header=BB72_3 Depth=1
	movq	-40(%rbp), %rax
	movq	488(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB72_35
	jmp	.LBB72_36
.LBB72_35:                              # %cond.true.123
                                        #   in Loop: Header=BB72_3 Depth=1
	movq	-40(%rbp), %rax
	movq	488(%rax), %rdi
	callq	SSDATA
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB72_40
.LBB72_36:                              # %cond.false.126
                                        #   in Loop: Header=BB72_3 Depth=1
	movq	-40(%rbp), %rax
	movq	472(%rax), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	cmpq	24(%rcx), %rax
	jl	.LBB72_38
# BB#37:                                # %cond.true.131
                                        #   in Loop: Header=BB72_3 Depth=1
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jmp	.LBB72_39
.LBB72_38:                              # %cond.false.133
                                        #   in Loop: Header=BB72_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	jmp	.LBB72_39
.LBB72_39:                              # %cond.end.134
                                        #   in Loop: Header=BB72_3 Depth=1
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	-40(%rbp), %rcx
	addq	472(%rcx), %rax
	movq	current_buffer, %rcx
	movq	720(%rcx), %rcx
	addq	(%rcx), %rax
	addq	$-1, %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB72_40:                              # %cond.end.140
                                        #   in Loop: Header=BB72_3 Depth=1
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB72_41:                              # %cond.end.142
                                        #   in Loop: Header=BB72_3 Depth=1
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	%rax, -80(%rbp)
	movl	-8(%rbp), %edi
	movq	-80(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	384(%rax), %rdx
	callq	emacs_write_sig
	movq	-40(%rbp), %rdx
	movq	384(%rdx), %rsi
	subq	%rax, %rsi
	movq	%rsi, 384(%rdx)
	movq	-40(%rbp), %rax
	movl	8(%rax), %edi
	shrl	$22, %edi
	andl	$1, %edi
	testl	$1, %edi
	je	.LBB72_43
# BB#42:                                # %if.then.153
                                        #   in Loop: Header=BB72_3 Depth=1
	movq	-40(%rbp), %rax
	movq	496(%rax), %rdi
	callq	xfree
	movq	-40(%rbp), %rax
	movl	8(%rax), %ecx
	andl	$-4194305, %ecx         # imm = 0xFFFFFFFFFFBFFFFF
	movl	%ecx, 8(%rax)
.LBB72_43:                              # %if.end.158
                                        #   in Loop: Header=BB72_3 Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, 384(%rax)
	je	.LBB72_45
# BB#44:                                # %if.then.161
	movb	$0, -1(%rbp)
	jmp	.LBB72_48
.LBB72_45:                              # %if.end.162
                                        #   in Loop: Header=BB72_3 Depth=1
	jmp	.LBB72_46
.LBB72_46:                              # %if.end.163
                                        #   in Loop: Header=BB72_3 Depth=1
	movq	-40(%rbp), %rax
	movq	408(%rax), %rax
	addq	-24(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB72_3
.LBB72_47:                              # %while.end
	movb	$1, -1(%rbp)
.LBB72_48:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end72:
	.size	e_write, .Lfunc_end72-e_write
	.cfi_endproc

	.globl	Fcar_less_than_car
	.align	16, 0x90
	.type	Fcar_less_than_car,@function
Fcar_less_than_car:                     # @Fcar_less_than_car
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	Fcar
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	Fcar
	movl	$2, %ecx
	movl	%ecx, %edi
	leaq	-32(%rbp), %rsi
	movq	%rax, -24(%rbp)
	callq	Flss
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end73:
	.size	Fcar_less_than_car, .Lfunc_end73-Fcar_less_than_car
	.cfi_endproc

	.globl	Fverify_visited_file_modtime
	.align	16, 0x90
	.type	Fverify_visited_file_modtime,@function
Fverify_visited_file_modtime:           # @Fverify_visited_file_modtime
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	decode_buffer
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB74_2
# BB#1:                                 # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB74_14
.LBB74_2:                               # %if.end
	movq	-24(%rbp), %rax
	cmpq	$-2, 864(%rax)
	jne	.LBB74_4
# BB#3:                                 # %if.then.3
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB74_14
.LBB74_4:                               # %if.end.5
	movl	$999, %edi              # imm = 0x3E7
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	xorl	%edi, %edi
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB74_6
# BB#5:                                 # %if.then.11
	movl	$999, %edi              # imm = 0x3E7
	movq	-176(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	call2
	movq	%rax, -8(%rbp)
	jmp	.LBB74_14
.LBB74_6:                               # %if.end.14
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	callq	encode_file_name
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rdi
	callq	SSDATA
	leaq	-168(%rbp), %rsi
	movq	%rax, %rdi
	callq	stat
	cmpl	$0, %eax
	jne	.LBB74_8
# BB#7:                                 # %cond.true
	leaq	-168(%rbp), %rdi
	callq	get_stat_mtime
	movq	%rax, -216(%rbp)
	movq	%rdx, -208(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-208(%rbp), %rax
	movq	%rax, -192(%rbp)
	jmp	.LBB74_9
.LBB74_8:                               # %cond.false
	callq	__errno_location
	movl	(%rax), %edi
	callq	time_error_value
	movq	%rax, -232(%rbp)
	movq	%rdx, -224(%rbp)
	movq	-232(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -192(%rbp)
.LBB74_9:                               # %cond.end
	movq	-24(%rbp), %rax
	movq	-200(%rbp), %rdi
	movq	-192(%rbp), %rsi
	movq	856(%rax), %rdx
	movq	864(%rax), %rcx
	callq	timespec_cmp
	cmpl	$0, %eax
	jne	.LBB74_13
# BB#10:                                # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpq	$0, 872(%rax)
	jl	.LBB74_12
# BB#11:                                # %lor.lhs.false
	movq	-120(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	872(%rcx), %rax
	jne	.LBB74_13
.LBB74_12:                              # %if.then.30
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB74_14
.LBB74_13:                              # %if.end.32
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB74_14:                              # %return
	movq	-8(%rbp), %rax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end74:
	.size	Fverify_visited_file_modtime, .Lfunc_end74-Fverify_visited_file_modtime
	.cfi_endproc

	.globl	Fvisited_file_modtime
	.align	16, 0x90
	.type	Fvisited_file_modtime,@function
Fvisited_file_modtime:                  # @Fvisited_file_modtime
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
	movq	current_buffer, %rax
	movq	864(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jge	.LBB75_2
# BB#1:                                 # %if.then
	movl	$4294967294, %eax       # imm = 0xFFFFFFFE
	subl	-12(%rbp), %eax
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -8(%rbp)
	jmp	.LBB75_3
.LBB75_2:                               # %if.end
	movq	current_buffer, %rax
	movq	856(%rax), %rdi
	movq	864(%rax), %rsi
	callq	make_lisp_time
	movq	%rax, -8(%rbp)
.LBB75_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end75:
	.size	Fvisited_file_modtime, .Lfunc_end75-Fvisited_file_modtime
	.cfi_endproc

	.globl	Fset_visited_file_modtime
	.align	16, 0x90
	.type	Fset_visited_file_modtime,@function
Fset_visited_file_modtime:              # @Fset_visited_file_modtime
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
	subq	$304, %rsp              # imm = 0x130
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB76_13
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB76_11
# BB#2:                                 # %if.then.4
	jmp	.LBB76_3
.LBB76_3:                               # %do.body
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB76_5
# BB#4:                                 # %cond.true
	jmp	.LBB76_6
.LBB76_5:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -256(%rbp)        # 8-byte Spill
.LBB76_6:                               # %cond.end
	movq	$-1, %rax
	movq	-16(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jg	.LBB76_8
# BB#7:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jle	.LBB76_9
.LBB76_8:                               # %if.then.16
	movq	$-2, %rsi
	movl	$2, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	args_out_of_range_3
.LBB76_9:                               # %if.end
	jmp	.LBB76_10
.LBB76_10:                              # %do.end
	xorl	%eax, %eax
	movl	%eax, %edi
	movq	$-2, %rcx
	movq	-16(%rbp), %rdx
	sarq	$2, %rdx
	subq	%rdx, %rcx
	movq	%rcx, %rsi
	callq	make_timespec
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB76_12
.LBB76_11:                              # %if.else
	movq	-16(%rbp), %rdi
	callq	lisp_time_argument
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB76_12:                              # %if.end.21
	movq	current_buffer, %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, 856(%rax)
	movq	-24(%rbp), %rcx
	movq	%rcx, 864(%rax)
	movq	current_buffer, %rax
	movq	$-1, 872(%rax)
	jmp	.LBB76_18
.LBB76_13:                              # %if.else.22
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	16(%rax), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fexpand_file_name
	movl	$852, %edi              # imm = 0x354
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	xorl	%edi, %edi
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB76_15
# BB#14:                                # %if.then.30
	movl	$852, %edi              # imm = 0x354
	movq	-224(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	-296(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	call2
	movq	%rax, -8(%rbp)
	jmp	.LBB76_19
.LBB76_15:                              # %if.end.34
	movq	-72(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	SSDATA
	leaq	-216(%rbp), %rsi
	movq	%rax, %rdi
	callq	stat
	cmpl	$0, %eax
	jl	.LBB76_17
# BB#16:                                # %if.then.40
	leaq	-216(%rbp), %rdi
	movq	current_buffer, %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	get_stat_mtime
	movq	%rax, -240(%rbp)
	movq	%rdx, -232(%rbp)
	movq	-240(%rbp), %rax
	movq	-304(%rbp), %rdx        # 8-byte Reload
	movq	%rax, 856(%rdx)
	movq	-232(%rbp), %rax
	movq	%rax, 864(%rdx)
	movq	-168(%rbp), %rax
	movq	current_buffer, %rdi
	movq	%rax, 872(%rdi)
.LBB76_17:                              # %if.end.45
	jmp	.LBB76_18
.LBB76_18:                              # %if.end.46
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB76_19:                              # %return
	movq	-8(%rbp), %rax
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end76:
	.size	Fset_visited_file_modtime, .Lfunc_end76-Fset_visited_file_modtime
	.cfi_endproc

	.globl	Fdo_auto_save
	.align	16, 0x90
	.type	Fdo_auto_save,@function
Fdo_auto_save:                          # @Fdo_auto_save
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
	subq	$400, %rsp              # imm = 0x190
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	current_buffer, %rsi
	movq	%rsi, -24(%rbp)
	movb	$0, -57(%rbp)
	movq	$0, -80(%rbp)
	callq	SPECPDL_INDEX
	movq	%rax, -88(%rbp)
	movb	globals+3412, %cl
	andb	$1, %cl
	movb	%cl, -89(%rbp)
	movb	$0, -90(%rbp)
	movq	globals+3176, %rax
	movq	specpdl_size, %rsi
	addq	$40, %rsi
	cmpq	%rsi, %rax
	jge	.LBB77_2
# BB#1:                                 # %if.then
	movq	specpdl_size, %rax
	addq	$40, %rax
	movq	%rax, globals+3176
.LBB77_2:                               # %if.end
	cmpq	$0, minibuf_level
	je	.LBB77_4
# BB#3:                                 # %if.then.3
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB77_4:                               # %if.end.5
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB77_6
# BB#5:                                 # %if.then.8
	callq	push_message
	movabsq	$pop_message_unwind, %rdi
	andb	$1, %al
	movb	%al, -90(%rbp)
	callq	record_unwind_protect_void
.LBB77_6:                               # %if.end.11
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -72(%rbp)
	callq	builtin_lisp_symbol
	movabsq	$.L.str.47, %rdi
	movq	%rax, globals+1928
	callq	intern
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	safe_run_hooks
	movq	globals+80, %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB77_7
	jmp	.LBB77_12
.LBB77_7:                               # %if.then.15
	xorl	%edi, %edi
	movq	globals+80, %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fexpand_file_name
	xorl	%edi, %edi
	movq	%rax, -120(%rbp)
	movq	Vrun_hooks, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB77_11
# BB#8:                                 # %if.then.20
	movq	-120(%rbp), %rdi
	callq	Ffile_name_directory
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rdi
	callq	Ffile_directory_p
	xorl	%edi, %edi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB77_10
# BB#9:                                 # %if.then.25
	movl	$901, %edi              # imm = 0x385
	movq	-128(%rbp), %rsi
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$do_auto_save_make_dir, %rdi
	movabsq	$do_auto_save_eh, %rcx
	movq	-216(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	internal_condition_case_1
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB77_10:                              # %if.end.28
	jmp	.LBB77_11
.LBB77_11:                              # %if.end.29
	movq	-120(%rbp), %rdi
	callq	SSDATA
	movabsq	$.L.str.48, %rsi
	movq	%rax, %rdi
	callq	emacs_fopen
	movq	%rax, -80(%rbp)
.LBB77_12:                              # %if.end.32
	movabsq	$do_auto_save_unwind, %rdi
	leaq	-112(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rcx, -112(%rbp)
	movb	globals+3412, %dl
	andb	$1, %dl
	movb	%dl, -104(%rbp)
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
	movb	$0, globals+3412
	movb	$1, auto_saving
	movb	$0, auto_save_error_occurred
	movl	$0, -64(%rbp)
.LBB77_13:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB77_15 Depth 2
	cmpl	$2, -64(%rbp)
	jge	.LBB77_54
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB77_13 Depth=1
	movq	Vbuffer_alist, %rax
	movq	%rax, -40(%rbp)
.LBB77_15:                              # %for.cond.37
                                        #   Parent Loop BB77_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -225(%rbp)         # 1-byte Spill
	jne	.LBB77_17
# BB#16:                                # %land.rhs
                                        #   in Loop: Header=BB77_15 Depth=2
	movb	$1, %al
	movq	-40(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movb	%al, -225(%rbp)         # 1-byte Spill
.LBB77_17:                              # %land.end
                                        #   in Loop: Header=BB77_15 Depth=2
	movb	-225(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB77_18
	jmp	.LBB77_52
.LBB77_18:                              # %for.body.41
                                        #   in Loop: Header=BB77_15 Depth=2
	movq	-48(%rbp), %rdi
	callq	XBUFFER
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB77_19
	jmp	.LBB77_24
.LBB77_19:                              # %land.lhs.true
                                        #   in Loop: Header=BB77_15 Depth=2
	cmpq	$0, -80(%rbp)
	je	.LBB77_24
# BB#20:                                # %land.lhs.true.47
                                        #   in Loop: Header=BB77_15 Depth=2
	cmpl	$0, -64(%rbp)
	jne	.LBB77_24
# BB#21:                                # %if.then.50
                                        #   in Loop: Header=BB77_15 Depth=2
	callq	block_input
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB77_23
# BB#22:                                # %if.then.54
                                        #   in Loop: Header=BB77_15 Depth=2
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	callq	SDATA
	movq	-32(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	SBYTES
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-80(%rbp), %rcx
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	fwrite
	movq	%rax, -256(%rbp)        # 8-byte Spill
.LBB77_23:                              # %if.end.60
                                        #   in Loop: Header=BB77_15 Depth=2
	movl	$10, %edi
	movq	-80(%rbp), %rsi
	callq	_IO_putc
	movq	-32(%rbp), %rsi
	movq	48(%rsi), %rdi
	movl	%eax, -260(%rbp)        # 4-byte Spill
	callq	SDATA
	movq	-32(%rbp), %rsi
	movq	48(%rsi), %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	SBYTES
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-80(%rbp), %rcx
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	fwrite
	movl	$10, %edi
	movq	-80(%rbp), %rsi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	_IO_putc
	movl	%eax, -284(%rbp)        # 4-byte Spill
	callq	unblock_input
.LBB77_24:                              # %if.end.68
                                        #   in Loop: Header=BB77_15 Depth=2
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB77_27
# BB#25:                                # %land.lhs.true.72
                                        #   in Loop: Header=BB77_15 Depth=2
	movq	-32(%rbp), %rax
	cmpq	current_buffer, %rax
	je	.LBB77_27
# BB#26:                                # %if.then.75
                                        #   in Loop: Header=BB77_15 Depth=2
	jmp	.LBB77_51
.LBB77_27:                              # %if.end.76
                                        #   in Loop: Header=BB77_15 Depth=2
	movq	-32(%rbp), %rax
	cmpq	$0, 784(%rax)
	je	.LBB77_29
# BB#28:                                # %if.then.78
                                        #   in Loop: Header=BB77_15 Depth=2
	jmp	.LBB77_51
.LBB77_29:                              # %if.end.79
                                        #   in Loop: Header=BB77_15 Depth=2
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB77_30
	jmp	.LBB77_50
.LBB77_30:                              # %land.lhs.true.83
                                        #   in Loop: Header=BB77_15 Depth=2
	movq	-32(%rbp), %rax
	movq	720(%rax), %rax
	movq	64(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	720(%rcx), %rcx
	cmpq	48(%rcx), %rax
	jge	.LBB77_50
# BB#31:                                # %land.lhs.true.87
                                        #   in Loop: Header=BB77_15 Depth=2
	movq	-32(%rbp), %rax
	movq	880(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	720(%rcx), %rcx
	cmpq	48(%rcx), %rax
	jge	.LBB77_50
# BB#32:                                # %land.lhs.true.92
                                        #   in Loop: Header=BB77_15 Depth=2
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jl	.LBB77_50
# BB#33:                                # %land.lhs.true.95
                                        #   in Loop: Header=BB77_15 Depth=2
	cmpl	$0, -64(%rbp)
	jne	.LBB77_35
# BB#34:                                # %lor.lhs.false
                                        #   in Loop: Header=BB77_15 Depth=2
	movl	$1040, %edi             # imm = 0x410
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	xorl	%edi, %edi
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-312(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB77_50
.LBB77_35:                              # %if.then.103
                                        #   in Loop: Header=BB77_15 Depth=2
	callq	current_timespec
	movq	%rax, -144(%rbp)
	movq	%rdx, -136(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 896(%rax)
	jle	.LBB77_38
# BB#36:                                # %land.lhs.true.107
                                        #   in Loop: Header=BB77_15 Depth=2
	movq	-144(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	896(%rcx), %rax
	cmpq	$1200, %rax             # imm = 0x4B0
	jge	.LBB77_38
# BB#37:                                # %if.then.112
                                        #   in Loop: Header=BB77_15 Depth=2
	jmp	.LBB77_51
.LBB77_38:                              # %if.end.113
                                        #   in Loop: Header=BB77_15 Depth=2
	movq	-32(%rbp), %rdi
	callq	set_buffer_internal
	xorl	%edi, %edi
	movq	globals+72, %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-320(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB77_44
# BB#39:                                # %land.lhs.true.117
                                        #   in Loop: Header=BB77_15 Depth=2
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	sarq	$2, %rax
	imulq	$10, %rax, %rax
	movq	-32(%rbp), %rcx
	movq	720(%rcx), %rcx
	movq	16(%rcx), %rcx
	subq	$1, %rcx
	imulq	$13, %rcx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB77_44
# BB#40:                                # %land.lhs.true.125
                                        #   in Loop: Header=BB77_15 Depth=2
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	sarq	$2, %rax
	cmpq	$5000, %rax             # imm = 0x1388
	jle	.LBB77_44
# BB#41:                                # %land.lhs.true.130
                                        #   in Loop: Header=BB77_15 Depth=2
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-328(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB77_44
# BB#42:                                # %land.lhs.true.135
                                        #   in Loop: Header=BB77_15 Depth=2
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-336(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB77_44
# BB#43:                                # %if.then.139
                                        #   in Loop: Header=BB77_15 Depth=2
	movabsq	$.L.str.49, %rdi
	movl	$1, %edx
	movb	-89(%rbp), %al
	andb	$1, %al
	movb	%al, globals+3412
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rsi
	callq	message_with_string
	xorl	%edi, %edi
	movb	$0, globals+3412
	movq	-32(%rbp), %rcx
	movq	$-2, 40(%rcx)
	callq	builtin_lisp_symbol
	movl	$6, %edx
	movl	%edx, %edi
	movq	%rax, %rsi
	callq	Fsleep_for
	movq	%rax, -344(%rbp)        # 8-byte Spill
	jmp	.LBB77_51
.LBB77_44:                              # %if.end.145
                                        #   in Loop: Header=BB77_15 Depth=2
	testb	$1, -57(%rbp)
	jne	.LBB77_47
# BB#45:                                # %land.lhs.true.147
                                        #   in Loop: Header=BB77_15 Depth=2
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-352(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB77_47
# BB#46:                                # %if.then.151
                                        #   in Loop: Header=BB77_15 Depth=2
	movabsq	$.L.str.50, %rdi
	callq	message1
.LBB77_47:                              # %if.end.152
                                        #   in Loop: Header=BB77_15 Depth=2
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movabsq	$auto_save_1, %rdi
	movabsq	$auto_save_error, %rdx
	movq	%rax, %rsi
	callq	internal_condition_case
	movb	$1, -57(%rbp)
	movq	-32(%rbp), %rdx
	movq	720(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	-32(%rbp), %rsi
	movq	%rdx, 880(%rsi)
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	movq	16(%rdx), %rdx
	subq	$1, %rdx
	movq	%rdx, %rdi
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	make_natnum
	movq	current_buffer, %rdx
	movq	%rax, 40(%rdx)
	movq	-24(%rbp), %rdi
	callq	set_buffer_internal
	callq	current_timespec
	movq	%rax, -176(%rbp)
	movq	%rdx, -168(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-160(%rbp), %rax
	subq	-144(%rbp), %rax
	cmpq	$60, %rax
	jle	.LBB77_49
# BB#48:                                # %if.then.169
                                        #   in Loop: Header=BB77_15 Depth=2
	movq	-160(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 896(%rcx)
.LBB77_49:                              # %if.end.172
                                        #   in Loop: Header=BB77_15 Depth=2
	jmp	.LBB77_50
.LBB77_50:                              # %if.end.173
                                        #   in Loop: Header=BB77_15 Depth=2
	jmp	.LBB77_51
.LBB77_51:                              # %for.inc
                                        #   in Loop: Header=BB77_15 Depth=2
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB77_15
.LBB77_52:                              # %for.end
                                        #   in Loop: Header=BB77_13 Depth=1
	jmp	.LBB77_53
.LBB77_53:                              # %for.inc.177
                                        #   in Loop: Header=BB77_13 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB77_13
.LBB77_54:                              # %for.end.178
	callq	record_auto_save
	testb	$1, -57(%rbp)
	je	.LBB77_62
# BB#55:                                # %land.lhs.true.181
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-368(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB77_62
# BB#56:                                # %if.then.185
	testb	$1, -90(%rbp)
	je	.LBB77_58
# BB#57:                                # %if.then.187
	movl	$6, %eax
	movl	%eax, %edi
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	%eax, %edx
	callq	sit_for
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	restore_message
	jmp	.LBB77_61
.LBB77_58:                              # %if.else
	testb	$1, auto_save_error_occurred
	jne	.LBB77_60
# BB#59:                                # %if.then.190
	movabsq	$.L.str.51, %rdi
	callq	message1
.LBB77_60:                              # %if.end.191
	jmp	.LBB77_61
.LBB77_61:                              # %if.end.192
	jmp	.LBB77_62
.LBB77_62:                              # %if.end.193
	xorl	%edi, %edi
	movq	-72(%rbp), %rax
	movq	%rax, globals+1928
	movq	-88(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	xorl	%edi, %edi
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	addq	$400, %rsp              # imm = 0x190
	popq	%rbp
	retq
.Lfunc_end77:
	.size	Fdo_auto_save, .Lfunc_end77-Fdo_auto_save
	.cfi_endproc

	.align	16, 0x90
	.type	do_auto_save_make_dir,@function
do_auto_save_make_dir:                  # @do_auto_save_make_dir
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
	subq	$32, %rsp
	movl	$638, %eax              # imm = 0x27E
	movq	%rdi, -8(%rbp)
	movl	$63, auto_saving_dir_umask
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	-8(%rbp), %rsi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	call2
	movq	%rax, -16(%rbp)
	movl	$0, auto_saving_dir_umask
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end78:
	.size	do_auto_save_make_dir, .Lfunc_end78-do_auto_save_make_dir
	.cfi_endproc

	.align	16, 0x90
	.type	do_auto_save_eh,@function
do_auto_save_eh:                        # @do_auto_save_eh
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movl	$0, auto_saving_dir_umask
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end79:
	.size	do_auto_save_eh, .Lfunc_end79-do_auto_save_eh
	.cfi_endproc

	.align	16, 0x90
	.type	do_auto_save_unwind,@function
do_auto_save_unwind:                    # @do_auto_save_unwind
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movb	8(%rdi), %al
	andb	$1, %al
	movb	%al, globals+3412
	movb	$0, auto_saving
	cmpq	$0, -24(%rbp)
	je	.LBB80_2
# BB#1:                                 # %if.then
	callq	block_input
	movq	-24(%rbp), %rdi
	callq	fclose
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	unblock_input
.LBB80_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end80:
	.size	do_auto_save_unwind, .Lfunc_end80-do_auto_save_unwind
	.cfi_endproc

	.align	16, 0x90
	.type	auto_save_1,@function
auto_save_1:                            # @auto_save_1
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
	subq	$240, %rsp
	xorl	%edi, %edi
	movl	$438, auto_save_mode_bits # imm = 0x1B6
	movq	current_buffer, %rax
	movq	16(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB81_7
# BB#1:                                 # %if.then
	movq	current_buffer, %rax
	movq	16(%rax), %rdi
	callq	SSDATA
	leaq	-144(%rbp), %rsi
	movq	%rax, %rdi
	callq	stat
	cmpl	$0, %eax
	jl	.LBB81_3
# BB#2:                                 # %if.then.5
	movl	-120(%rbp), %eax
	orl	$384, %eax              # imm = 0x180
	andl	$511, %eax              # imm = 0x1FF
	movl	%eax, auto_save_mode_bits
	jmp	.LBB81_6
.LBB81_3:                               # %if.else
	movq	current_buffer, %rax
	movq	16(%rax), %rdi
	callq	Ffile_modes
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB81_5
# BB#4:                                 # %if.then.12
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	orq	$384, %rax              # imm = 0x180
	andq	$511, %rax              # imm = 0x1FF
	movl	%eax, %ecx
	movl	%ecx, auto_save_mode_bits
.LBB81_5:                               # %if.end
	jmp	.LBB81_6
.LBB81_6:                               # %if.end.16
	jmp	.LBB81_7
.LBB81_7:                               # %if.end.17
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	current_buffer, %rcx
	movq	48(%rcx), %rdx
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	globals+96, %rcx
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB81_9
# BB#8:                                 # %cond.true
	movl	$598, %edi              # imm = 0x256
	callq	builtin_lisp_symbol
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jmp	.LBB81_10
.LBB81_9:                               # %cond.false
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB81_10:                              # %cond.end
	movq	-208(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	-176(%rbp), %rsi        # 8-byte Reload
	movq	-184(%rbp), %rdx        # 8-byte Reload
	movq	-192(%rbp), %rcx        # 8-byte Reload
	movq	-216(%rbp), %r8         # 8-byte Reload
	movq	-224(%rbp), %r9         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	Fwrite_region
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end81:
	.size	auto_save_1, .Lfunc_end81-auto_save_1
	.cfi_endproc

	.align	16, 0x90
	.type	auto_save_error,@function
auto_save_error:                        # @auto_save_error
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movb	$1, auto_save_error_occurred
	movq	selected_frame, %rdi
	subq	$5, %rdi
	callq	ring_bell
	movl	$4, %esi
	leaq	-64(%rbp), %rdi
	movabsq	$.L.str.88, %rax
	movq	$18, -64(%rbp)
	movq	$-1, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	%rax, -40(%rbp)
	callq	make_lisp_ptr
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	current_buffer, %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-8(%rbp), %rdi
	callq	Ferror_message_string
	movl	$3, %esi
	movl	%esi, %edi
	leaq	-88(%rbp), %rsi
	movq	%rax, -72(%rbp)
	callq	Fformat
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB82_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -20(%rbp)
	jge	.LBB82_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB82_1 Depth=1
	cmpl	$0, -20(%rbp)
	jne	.LBB82_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB82_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	message3
	jmp	.LBB82_5
.LBB82_4:                               # %if.else
                                        #   in Loop: Header=BB82_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	message3_nolog
.LBB82_5:                               # %if.end
                                        #   in Loop: Header=BB82_1 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$6, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	Fsleep_for
	movq	%rax, -96(%rbp)         # 8-byte Spill
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB82_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB82_1
.LBB82_7:                               # %for.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end82:
	.size	auto_save_error, .Lfunc_end82-auto_save_error
	.cfi_endproc

	.globl	Fset_buffer_auto_saved
	.align	16, 0x90
	.type	Fset_buffer_auto_saved,@function
Fset_buffer_auto_saved:                 # @Fset_buffer_auto_saved
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
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	48(%rax), %rax
	movq	current_buffer, %rcx
	movq	%rax, 880(%rcx)
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	16(%rax), %rax
	subq	$1, %rax
	movq	%rax, %rdi
	callq	make_natnum
	xorl	%edi, %edi
	movq	current_buffer, %rcx
	movq	%rax, 40(%rcx)
	movq	current_buffer, %rax
	movq	$0, 896(%rax)
	callq	builtin_lisp_symbol
	popq	%rbp
	retq
.Lfunc_end83:
	.size	Fset_buffer_auto_saved, .Lfunc_end83-Fset_buffer_auto_saved
	.cfi_endproc

	.globl	Fclear_buffer_auto_save_failure
	.align	16, 0x90
	.type	Fclear_buffer_auto_save_failure,@function
Fclear_buffer_auto_save_failure:        # @Fclear_buffer_auto_save_failure
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
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	$0, 896(%rax)
	callq	builtin_lisp_symbol
	popq	%rbp
	retq
.Lfunc_end84:
	.size	Fclear_buffer_auto_save_failure, .Lfunc_end84-Fclear_buffer_auto_save_failure
	.cfi_endproc

	.globl	Frecent_auto_save_p
	.align	16, 0x90
	.type	Frecent_auto_save_p,@function
Frecent_auto_save_p:                    # @Frecent_auto_save_p
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
	movq	current_buffer, %rax
	movq	720(%rax), %rax
	movq	64(%rax), %rax
	movq	current_buffer, %rcx
	cmpq	880(%rcx), %rax
	jge	.LBB85_2
# BB#1:                                 # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)          # 8-byte Spill
	jmp	.LBB85_3
.LBB85_2:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)          # 8-byte Spill
.LBB85_3:                               # %cond.end
	movq	-8(%rbp), %rax          # 8-byte Reload
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end85:
	.size	Frecent_auto_save_p, .Lfunc_end85-Frecent_auto_save_p
	.cfi_endproc

	.globl	Fnext_read_file_uses_dialog_p
	.align	16, 0x90
	.type	Fnext_read_file_uses_dialog_p,@function
Fnext_read_file_uses_dialog_p:          # @Fnext_read_file_uses_dialog_p
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
	xorl	%edi, %edi
	movq	globals+3016, %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB86_2
# BB#1:                                 # %lor.lhs.false
	movq	globals+3016, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB86_10
.LBB86_2:                               # %land.lhs.true
	testb	$1, globals+3433
	je	.LBB86_10
# BB#3:                                 # %land.lhs.true.4
	testb	$1, globals+3434
	je	.LBB86_10
# BB#4:                                 # %land.lhs.true.7
	movq	selected_frame, %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB86_5
	jmp	.LBB86_7
.LBB86_5:                               # %land.lhs.true.10
	movq	selected_frame, %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB86_7
# BB#6:                                 # %cond.true
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	jmp	.LBB86_8
.LBB86_7:                               # %cond.false
	callq	emacs_abort
.LBB86_8:                               # %cond.end
	movq	-24(%rbp), %rdi         # 8-byte Reload
	callq	window_system_available
	testb	$1, %al
	jne	.LBB86_9
	jmp	.LBB86_10
.LBB86_9:                               # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB86_11
.LBB86_10:                              # %if.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB86_11:                              # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end86:
	.size	Fnext_read_file_uses_dialog_p, .Lfunc_end86-Fnext_read_file_uses_dialog_p
	.cfi_endproc

	.globl	Fset_binary_mode
	.align	16, 0x90
	.type	Fset_binary_mode,@function
Fset_binary_mode:                       # @Fset_binary_mode
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	cmpl	$0, %eax
	jne	.LBB87_2
# BB#1:                                 # %cond.true
	jmp	.LBB87_3
.LBB87_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB87_3:                               # %cond.end
	movl	$876, %edi              # imm = 0x36C
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB87_5
# BB#4:                                 # %if.then
	movq	stdin, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB87_12
.LBB87_5:                               # %if.else
	movl	$877, %edi              # imm = 0x36D
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB87_7
# BB#6:                                 # %if.then.8
	movq	stdout, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB87_11
.LBB87_7:                               # %if.else.9
	movl	$875, %edi              # imm = 0x36B
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB87_9
# BB#8:                                 # %if.then.13
	movq	stderr, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB87_10
.LBB87_9:                               # %if.else.14
	movl	$372, %edi              # imm = 0x174
	callq	builtin_lisp_symbol
	movabsq	$.L.str.52, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	build_string
	movq	-8(%rbp), %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	xsignal2
.LBB87_10:                              # %if.end
	jmp	.LBB87_11
.LBB87_11:                              # %if.end.17
	jmp	.LBB87_12
.LBB87_12:                              # %if.end.18
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	cmovel	%edi, %edi
	movl	%edi, -28(%rbp)
	movq	-24(%rbp), %rax
	cmpq	stdin, %rax
	je	.LBB87_14
# BB#13:                                # %if.then.24
	movq	-24(%rbp), %rdi
	callq	fflush
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB87_14:                              # %if.end.26
	movq	-24(%rbp), %rdi
	callq	fileno
	movl	-28(%rbp), %esi
	movl	%eax, %edi
	callq	set_binary_mode
	cmpl	$0, %eax
	jne	.LBB87_16
# BB#15:                                # %cond.true.31
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB87_17
.LBB87_16:                              # %cond.false.33
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB87_17:                              # %cond.end.35
	movq	-96(%rbp), %rax         # 8-byte Reload
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end87:
	.size	Fset_binary_mode, .Lfunc_end87-Fset_binary_mode
	.cfi_endproc

	.globl	init_fileio
	.align	16, 0x90
	.type	init_fileio,@function
init_fileio:                            # @init_fileio
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
	subq	$16, %rsp
	xorl	%edi, %edi
	callq	umask
	movl	%eax, realmask
	movl	realmask, %edi
	callq	umask
	movb	$0, valid_timestamp_file_system
	movb	noninteractive, %cl
	andb	$1, %cl
	movb	%cl, globals+3440
	movl	%eax, -4(%rbp)          # 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end88:
	.size	init_fileio, .Lfunc_end88-init_fileio
	.cfi_endproc

	.globl	syms_of_fileio
	.align	16, 0x90
	.type	syms_of_fileio,@function
syms_of_fileio:                         # @syms_of_fileio
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
	subq	$272, %rsp              # imm = 0x110
	movl	$420, %edi              # imm = 0x1A4
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	Fset
	movq	%rax, -16(%rbp)         # 8-byte Spill
# BB#1:                                 # %do.body
	movabsq	$syms_of_fileio.o_fwd, %rdi
	movabsq	$.L.str.53, %rsi
	movabsq	$globals, %rax
	addq	$752, %rax              # imm = 0x2F0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#2:                                 # %do.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+752
# BB#3:                                 # %do.body.4
	movabsq	$syms_of_fileio.o_fwd.54, %rdi
	movabsq	$.L.str.55, %rsi
	movabsq	$globals, %rax
	addq	$472, %rax              # imm = 0x1D8
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#4:                                 # %do.end.5
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$411, %edi              # imm = 0x19B
	movq	%rax, globals+472
	callq	builtin_lisp_symbol
	movl	$373, %edi              # imm = 0x175
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$411, %edi              # imm = 0x19B
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$372, %edi              # imm = 0x174
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	%rax, %rdi
	callq	Fpurecopy
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$411, %edi              # imm = 0x19B
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$374, %edi              # imm = 0x176
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.56, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	build_pure_c_string
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$406, %edi              # imm = 0x196
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$373, %edi              # imm = 0x175
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$406, %edi              # imm = 0x196
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$411, %edi              # imm = 0x19B
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$372, %edi              # imm = 0x174
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	list3
	movq	%rax, %rdi
	callq	Fpurecopy
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$406, %edi              # imm = 0x196
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$374, %edi              # imm = 0x176
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.57, %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	build_pure_c_string
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$409, %edi              # imm = 0x199
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$373, %edi              # imm = 0x175
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$409, %edi              # imm = 0x199
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$411, %edi              # imm = 0x19B
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$372, %edi              # imm = 0x174
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	-168(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	list3
	movq	%rax, %rdi
	callq	Fpurecopy
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$409, %edi              # imm = 0x199
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$374, %edi              # imm = 0x176
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.18, %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	build_pure_c_string
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	-192(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$424, %edi              # imm = 0x1A8
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$373, %edi              # imm = 0x175
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$424, %edi              # imm = 0x1A8
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$411, %edi              # imm = 0x19B
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$372, %edi              # imm = 0x174
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	-232(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	list3
	movq	%rax, %rdi
	callq	Fpurecopy
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	-216(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movl	$424, %edi              # imm = 0x1A8
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$374, %edi              # imm = 0x176
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$.L.str.58, %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	build_pure_c_string
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	-256(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fput
	movq	%rax, -264(%rbp)        # 8-byte Spill
# BB#5:                                 # %do.body.54
	movabsq	$syms_of_fileio.o_fwd.59, %rdi
	movabsq	$.L.str.60, %rsi
	movabsq	$globals, %rax
	addq	$760, %rax              # imm = 0x2F8
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#6:                                 # %do.end.55
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+760
# BB#7:                                 # %do.body.57
	movabsq	$syms_of_fileio.o_fwd.61, %rdi
	movabsq	$.L.str.62, %rsi
	movabsq	$globals, %rax
	addq	$2136, %rax             # imm = 0x858
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#8:                                 # %do.end.58
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2136
# BB#9:                                 # %do.body.60
	movabsq	$syms_of_fileio.o_fwd.63, %rdi
	movabsq	$.L.str.64, %rsi
	movabsq	$globals, %rax
	addq	$16, %rax
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#10:                                # %do.end.61
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+16
# BB#11:                                # %do.body.63
	movabsq	$syms_of_fileio.o_fwd.65, %rdi
	movabsq	$.L.str.66, %rsi
	movabsq	$globals, %rax
	addq	$2712, %rax             # imm = 0xA98
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#12:                                # %do.end.64
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2712
# BB#13:                                # %do.body.66
	movabsq	$syms_of_fileio.o_fwd.67, %rdi
	movabsq	$.L.str.68, %rsi
	movabsq	$globals, %rax
	addq	$2728, %rax             # imm = 0xAA8
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#14:                                # %do.end.67
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$Vwrite_region_annotation_buffers, %rdi
	movq	%rax, globals+2728
	callq	staticpro
# BB#15:                                # %do.body.69
	movabsq	$syms_of_fileio.o_fwd.69, %rdi
	movabsq	$.L.str.70, %rsi
	movabsq	$globals, %rax
	addq	$2720, %rax             # imm = 0xAA0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#16:                                # %do.end.70
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2720
# BB#17:                                # %do.body.72
	movabsq	$syms_of_fileio.o_fwd.71, %rdi
	movabsq	$.L.str.72, %rsi
	movabsq	$globals, %rax
	addq	$1080, %rax             # imm = 0x438
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#18:                                # %do.end.73
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1080
# BB#19:                                # %do.body.75
	movabsq	$syms_of_fileio.o_fwd.73, %rdi
	movabsq	$.L.str.74, %rsi
	movabsq	$globals, %rax
	addq	$1088, %rax             # imm = 0x440
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#20:                                # %do.end.76
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1088
# BB#21:                                # %do.body.78
	movabsq	$syms_of_fileio.o_fwd.75, %rdi
	movabsq	$.L.str.76, %rsi
	movabsq	$globals, %rax
	addq	$80, %rax
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#22:                                # %do.end.79
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+80
# BB#23:                                # %do.body.81
	movabsq	$syms_of_fileio.o_fwd.77, %rdi
	movabsq	$.L.str.78, %rsi
	movabsq	$globals, %rax
	addq	$96, %rax
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#24:                                # %do.end.82
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+96
# BB#25:                                # %do.body.84
	movabsq	$syms_of_fileio.o_fwd.79, %rdi
	movabsq	$.L.str.80, %rsi
	movabsq	$globals, %rax
	addq	$72, %rax
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#26:                                # %do.end.85
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+72
# BB#27:                                # %do.body.87
	movabsq	$syms_of_fileio.b_fwd, %rdi
	movabsq	$.L.str.81, %rsi
	movabsq	$globals, %rax
	addq	$3440, %rax             # imm = 0xD70
	movq	%rax, %rdx
	callq	defvar_bool
# BB#28:                                # %do.end.88
	movb	$0, globals+3440
# BB#29:                                # %do.body.89
	movabsq	$syms_of_fileio.b_fwd.82, %rdi
	movabsq	$.L.str.83, %rsi
	movabsq	$globals, %rax
	addq	$3375, %rax             # imm = 0xD2F
	movq	%rax, %rdx
	callq	defvar_bool
# BB#30:                                # %do.end.90
	movabsq	$Sfind_file_name_handler, %rax
	movb	$0, globals+3375
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfile_name_directory, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfile_name_nondirectory, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sunhandled_file_name_directory, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfile_name_as_directory, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sdirectory_file_name, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smake_temp_name, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sexpand_file_name, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Ssubstitute_in_file_name, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Scopy_file, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smake_directory_internal, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sdelete_directory_internal, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sdelete_file, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Srename_file, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sadd_name_to_file, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smake_symbolic_link, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfile_name_absolute_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfile_exists_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfile_executable_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfile_readable_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfile_writable_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Saccess_file, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfile_symlink_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfile_directory_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfile_accessible_directory_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfile_regular_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfile_modes, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sset_file_modes, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sset_file_times, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfile_selinux_context, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfile_acl, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sset_file_acl, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sset_file_selinux_context, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sset_default_file_modes, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sdefault_file_modes, %rdi
	callq	defsubr
	movabsq	$Sfile_newer_than_file_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sinsert_file_contents, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Swrite_region, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Scar_less_than_car, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sverify_visited_file_modtime, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Svisited_file_modtime, %rdi
	callq	defsubr
	movabsq	$Sset_visited_file_modtime, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sdo_auto_save, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sset_buffer_auto_saved, %rdi
	callq	defsubr
	movabsq	$Sclear_buffer_auto_save_failure, %rdi
	callq	defsubr
	movabsq	$Srecent_auto_save_p, %rdi
	callq	defsubr
	movabsq	$Snext_read_file_uses_dialog_p, %rdi
	callq	defsubr
	movabsq	$Sset_binary_mode, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sunix_sync, %rdi
	callq	defsubr
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end89:
	.size	syms_of_fileio, .Lfunc_end89-syms_of_fileio
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Invalid handler in `file-name-handler-alist'"
	.size	.L.str, 45

	.type	make_temp_name_tbl,@object # @make_temp_name_tbl
	.section	.rodata,"a",@progbits
	.align	16
make_temp_name_tbl:
	.ascii	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"
	.size	make_temp_name_tbl, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"%ld"
	.size	.L.str.1, 4

	.type	make_temp_name_count_initialized_p,@object # @make_temp_name_count_initialized_p
	.local	make_temp_name_count_initialized_p
	.comm	make_temp_name_count_initialized_p,4,4
	.type	make_temp_name_count,@object # @make_temp_name_count
	.local	make_temp_name_count
	.comm	make_temp_name_count,4,4
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Cannot create temporary name for prefix"
	.size	.L.str.2, 40

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"/"
	.size	.L.str.3, 2

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"HOME"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.zero	1
	.size	.L.str.5, 1

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Opening input file"
	.size	.L.str.6, 19

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Input file status"
	.size	.L.str.7, 18

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Non-regular file"
	.size	.L.str.8, 17

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"copy to it"
	.size	.L.str.9, 11

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Opening output file"
	.size	.L.str.10, 20

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Output file status"
	.size	.L.str.11, 19

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Input and output files are the same"
	.size	.L.str.12, 36

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Read error"
	.size	.L.str.13, 11

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Write error"
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Truncating output file"
	.size	.L.str.15, 23

	.type	realmask,@object        # @realmask
	.local	realmask
	.comm	realmask,4,4
	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Copying permissions from"
	.size	.L.str.16, 25

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Copying permissions to"
	.size	.L.str.17, 23

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Cannot set file date"
	.size	.L.str.18, 21

	.type	auto_saving_dir_umask,@object # @auto_saving_dir_umask
	.local	auto_saving_dir_umask
	.comm	auto_saving_dir_umask,4,4
	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Creating directory"
	.size	.L.str.19, 19

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Removing directory"
	.size	.L.str.20, 19

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Removing old name: is a directory"
	.size	.L.str.21, 34

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Removing old name"
	.size	.L.str.22, 18

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"rename to it"
	.size	.L.str.23, 13

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Renaming"
	.size	.L.str.24, 9

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"make it a new name"
	.size	.L.str.25, 19

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Adding new name"
	.size	.L.str.26, 16

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"make it a link"
	.size	.L.str.27, 15

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Symbolic links are not supported"
	.size	.L.str.28, 33

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Making symbolic link"
	.size	.L.str.29, 21

	.type	emacs_readlinkat.emacs_norealloc_allocator,@object # @emacs_readlinkat.emacs_norealloc_allocator
	.section	.rodata,"a",@progbits
	.align	8
emacs_readlinkat.emacs_norealloc_allocator:
	.quad	xmalloc
	.quad	0
	.quad	xfree
	.quad	memory_full
	.size	emacs_readlinkat.emacs_norealloc_allocator, 32

	.type	.L.str.30,@object       # @.str.30
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.30:
	.asciz	"/:"
	.size	.L.str.30, 3

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"/."
	.size	.L.str.31, 3

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Doing chmod"
	.size	.L.str.32, 12

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Setting file times"
	.size	.L.str.33, 19

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Cannot do file visiting in an indirect buffer"
	.size	.L.str.34, 46

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"not a regular file"
	.size	.L.str.35, 19

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Attempt to visit less than an entire file"
	.size	.L.str.36, 42

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Cannot do file visiting in a non-empty buffer"
	.size	.L.str.37, 46

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Setting file position"
	.size	.L.str.38, 22

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	" *code-converting-work*"
	.size	.L.str.39, 24

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"buffer-file-name"
	.size	.L.str.40, 17

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"inserted-chars"
	.size	.L.str.41, 15

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"overwrite"
	.size	.L.str.42, 10

	.type	Vwrite_region_annotation_buffers,@object # @Vwrite_region_annotation_buffers
	.local	Vwrite_region_annotation_buffers
	.comm	Vwrite_region_annotation_buffers,8,8
	.type	auto_saving,@object     # @auto_saving
	.local	auto_saving
	.comm	auto_saving,1,1
	.type	auto_save_mode_bits,@object # @auto_save_mode_bits
	.local	auto_save_mode_bits
	.comm	auto_save_mode_bits,4,4
	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Lseek error"
	.size	.L.str.43, 12

	.type	valid_timestamp_file_system,@object # @valid_timestamp_file_system
	.local	valid_timestamp_file_system
	.comm	valid_timestamp_file_system,1,1
	.type	timestamp_file_system,@object # @timestamp_file_system
	.local	timestamp_file_system
	.comm	timestamp_file_system,8,8
	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Updated %s"
	.size	.L.str.44, 11

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Added to %s"
	.size	.L.str.45, 12

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Wrote %s"
	.size	.L.str.46, 9

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"auto-save-hook"
	.size	.L.str.47, 15

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"w"
	.size	.L.str.48, 2

	.type	auto_save_error_occurred,@object # @auto_save_error_occurred
	.local	auto_save_error_occurred
	.comm	auto_save_error_occurred,1,1
	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Buffer %s has shrunk a lot; auto save disabled in that buffer until next real save"
	.size	.L.str.49, 83

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Auto-saving..."
	.size	.L.str.50, 15

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Auto-saving...done"
	.size	.L.str.51, 19

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"unsupported stream"
	.size	.L.str.52, 19

	.type	syms_of_fileio.o_fwd,@object # @syms_of_fileio.o_fwd
	.local	syms_of_fileio.o_fwd
	.comm	syms_of_fileio.o_fwd,16,8
	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"file-name-coding-system"
	.size	.L.str.53, 24

	.type	syms_of_fileio.o_fwd.54,@object # @syms_of_fileio.o_fwd.54
	.local	syms_of_fileio.o_fwd.54
	.comm	syms_of_fileio.o_fwd.54,16,8
	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"default-file-name-coding-system"
	.size	.L.str.55, 32

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"File error"
	.size	.L.str.56, 11

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"File already exists"
	.size	.L.str.57, 20

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"File notification error"
	.size	.L.str.58, 24

	.type	syms_of_fileio.o_fwd.59,@object # @syms_of_fileio.o_fwd.59
	.local	syms_of_fileio.o_fwd.59
	.comm	syms_of_fileio.o_fwd.59,16,8
	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"file-name-handler-alist"
	.size	.L.str.60, 24

	.type	syms_of_fileio.o_fwd.61,@object # @syms_of_fileio.o_fwd.61
	.local	syms_of_fileio.o_fwd.61
	.comm	syms_of_fileio.o_fwd.61,16,8
	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"set-auto-coding-function"
	.size	.L.str.62, 25

	.type	syms_of_fileio.o_fwd.63,@object # @syms_of_fileio.o_fwd.63
	.local	syms_of_fileio.o_fwd.63
	.comm	syms_of_fileio.o_fwd.63,16,8
	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"after-insert-file-functions"
	.size	.L.str.64, 28

	.type	syms_of_fileio.o_fwd.65,@object # @syms_of_fileio.o_fwd.65
	.local	syms_of_fileio.o_fwd.65
	.comm	syms_of_fileio.o_fwd.65,16,8
	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"write-region-annotate-functions"
	.size	.L.str.66, 32

	.type	syms_of_fileio.o_fwd.67,@object # @syms_of_fileio.o_fwd.67
	.local	syms_of_fileio.o_fwd.67
	.comm	syms_of_fileio.o_fwd.67,16,8
	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"write-region-post-annotation-function"
	.size	.L.str.68, 38

	.type	syms_of_fileio.o_fwd.69,@object # @syms_of_fileio.o_fwd.69
	.local	syms_of_fileio.o_fwd.69
	.comm	syms_of_fileio.o_fwd.69,16,8
	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"write-region-annotations-so-far"
	.size	.L.str.70, 32

	.type	syms_of_fileio.o_fwd.71,@object # @syms_of_fileio.o_fwd.71
	.local	syms_of_fileio.o_fwd.71
	.comm	syms_of_fileio.o_fwd.71,16,8
	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"inhibit-file-name-handlers"
	.size	.L.str.72, 27

	.type	syms_of_fileio.o_fwd.73,@object # @syms_of_fileio.o_fwd.73
	.local	syms_of_fileio.o_fwd.73
	.comm	syms_of_fileio.o_fwd.73,16,8
	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"inhibit-file-name-operation"
	.size	.L.str.74, 28

	.type	syms_of_fileio.o_fwd.75,@object # @syms_of_fileio.o_fwd.75
	.local	syms_of_fileio.o_fwd.75
	.comm	syms_of_fileio.o_fwd.75,16,8
	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"auto-save-list-file-name"
	.size	.L.str.76, 25

	.type	syms_of_fileio.o_fwd.77,@object # @syms_of_fileio.o_fwd.77
	.local	syms_of_fileio.o_fwd.77
	.comm	syms_of_fileio.o_fwd.77,16,8
	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"auto-save-visited-file-name"
	.size	.L.str.78, 28

	.type	syms_of_fileio.o_fwd.79,@object # @syms_of_fileio.o_fwd.79
	.local	syms_of_fileio.o_fwd.79
	.comm	syms_of_fileio.o_fwd.79,16,8
	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"auto-save-include-big-deletions"
	.size	.L.str.80, 32

	.type	syms_of_fileio.b_fwd,@object # @syms_of_fileio.b_fwd
	.local	syms_of_fileio.b_fwd
	.comm	syms_of_fileio.b_fwd,16,8
	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"write-region-inhibit-fsync"
	.size	.L.str.81, 27

	.type	syms_of_fileio.b_fwd.82,@object # @syms_of_fileio.b_fwd.82
	.local	syms_of_fileio.b_fwd.82
	.comm	syms_of_fileio.b_fwd.82,16,8
	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"delete-by-moving-to-trash"
	.size	.L.str.83, 26

	.type	Sdefault_file_modes,@object # @Sdefault_file_modes
	.data
	.align	8
Sdefault_file_modes:
	.quad	167772160               # 0xa000000
	.quad	Fdefault_file_modes
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.129
	.quad	0
	.quad	0
	.size	Sdefault_file_modes, 48

	.type	Svisited_file_modtime,@object # @Svisited_file_modtime
	.align	8
Svisited_file_modtime:
	.quad	167772160               # 0xa000000
	.quad	Fvisited_file_modtime
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.136
	.quad	0
	.quad	0
	.size	Svisited_file_modtime, 48

	.type	Sset_buffer_auto_saved,@object # @Sset_buffer_auto_saved
	.align	8
Sset_buffer_auto_saved:
	.quad	167772160               # 0xa000000
	.quad	Fset_buffer_auto_saved
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.139
	.quad	0
	.quad	0
	.size	Sset_buffer_auto_saved, 48

	.type	Sclear_buffer_auto_save_failure,@object # @Sclear_buffer_auto_save_failure
	.align	8
Sclear_buffer_auto_save_failure:
	.quad	167772160               # 0xa000000
	.quad	Fclear_buffer_auto_save_failure
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.140
	.quad	0
	.quad	0
	.size	Sclear_buffer_auto_save_failure, 48

	.type	Srecent_auto_save_p,@object # @Srecent_auto_save_p
	.align	8
Srecent_auto_save_p:
	.quad	167772160               # 0xa000000
	.quad	Frecent_auto_save_p
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.141
	.quad	0
	.quad	0
	.size	Srecent_auto_save_p, 48

	.type	Snext_read_file_uses_dialog_p,@object # @Snext_read_file_uses_dialog_p
	.align	8
Snext_read_file_uses_dialog_p:
	.quad	167772160               # 0xa000000
	.quad	Fnext_read_file_uses_dialog_p
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.142
	.quad	0
	.quad	0
	.size	Snext_read_file_uses_dialog_p, 48

	.type	Sunix_sync,@object      # @Sunix_sync
	.align	8
Sunix_sync:
	.quad	167772160               # 0xa000000
	.quad	Funix_sync
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.144
	.quad	.L.str.5
	.quad	0
	.size	Sunix_sync, 48

	.type	.L.str.84,@object       # @.str.84
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.84:
	.asciz	"File is a directory"
	.size	.L.str.84, 20

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"File %s already exists; %s anyway? "
	.size	.L.str.85, 36

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"y-or-n-p"
	.size	.L.str.86, 9

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"file-offset"
	.size	.L.str.87, 12

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"Auto-saving %s: %s"
	.size	.L.str.88, 19

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"find-file-name-handler"
	.size	.L.str.89, 23

	.type	Sfind_file_name_handler,@object # @Sfind_file_name_handler
	.data
	.align	8
Sfind_file_name_handler:
	.quad	167772160               # 0xa000000
	.quad	Ffind_file_name_handler
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.89
	.quad	0
	.quad	0
	.size	Sfind_file_name_handler, 48

	.type	.L.str.90,@object       # @.str.90
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.90:
	.asciz	"file-name-directory"
	.size	.L.str.90, 20

	.type	Sfile_name_directory,@object # @Sfile_name_directory
	.data
	.align	8
Sfile_name_directory:
	.quad	167772160               # 0xa000000
	.quad	Ffile_name_directory
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.90
	.quad	0
	.quad	0
	.size	Sfile_name_directory, 48

	.type	.L.str.91,@object       # @.str.91
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.91:
	.asciz	"file-name-nondirectory"
	.size	.L.str.91, 23

	.type	Sfile_name_nondirectory,@object # @Sfile_name_nondirectory
	.data
	.align	8
Sfile_name_nondirectory:
	.quad	167772160               # 0xa000000
	.quad	Ffile_name_nondirectory
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.91
	.quad	0
	.quad	0
	.size	Sfile_name_nondirectory, 48

	.type	.L.str.92,@object       # @.str.92
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.92:
	.asciz	"unhandled-file-name-directory"
	.size	.L.str.92, 30

	.type	Sunhandled_file_name_directory,@object # @Sunhandled_file_name_directory
	.data
	.align	8
Sunhandled_file_name_directory:
	.quad	167772160               # 0xa000000
	.quad	Funhandled_file_name_directory
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.92
	.quad	0
	.quad	0
	.size	Sunhandled_file_name_directory, 48

	.type	.L.str.93,@object       # @.str.93
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.93:
	.asciz	"file-name-as-directory"
	.size	.L.str.93, 23

	.type	Sfile_name_as_directory,@object # @Sfile_name_as_directory
	.data
	.align	8
Sfile_name_as_directory:
	.quad	167772160               # 0xa000000
	.quad	Ffile_name_as_directory
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.93
	.quad	0
	.quad	0
	.size	Sfile_name_as_directory, 48

	.type	.L.str.94,@object       # @.str.94
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.94:
	.asciz	"directory-file-name"
	.size	.L.str.94, 20

	.type	Sdirectory_file_name,@object # @Sdirectory_file_name
	.data
	.align	8
Sdirectory_file_name:
	.quad	167772160               # 0xa000000
	.quad	Fdirectory_file_name
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.94
	.quad	0
	.quad	0
	.size	Sdirectory_file_name, 48

	.type	.L.str.95,@object       # @.str.95
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.95:
	.asciz	"make-temp-name"
	.size	.L.str.95, 15

	.type	Smake_temp_name,@object # @Smake_temp_name
	.data
	.align	8
Smake_temp_name:
	.quad	167772160               # 0xa000000
	.quad	Fmake_temp_name
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.95
	.quad	0
	.quad	0
	.size	Smake_temp_name, 48

	.type	.L.str.96,@object       # @.str.96
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.96:
	.asciz	"expand-file-name"
	.size	.L.str.96, 17

	.type	Sexpand_file_name,@object # @Sexpand_file_name
	.data
	.align	8
Sexpand_file_name:
	.quad	167772160               # 0xa000000
	.quad	Fexpand_file_name
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.96
	.quad	0
	.quad	0
	.size	Sexpand_file_name, 48

	.type	.L.str.97,@object       # @.str.97
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.97:
	.asciz	"substitute-in-file-name"
	.size	.L.str.97, 24

	.type	Ssubstitute_in_file_name,@object # @Ssubstitute_in_file_name
	.data
	.align	8
Ssubstitute_in_file_name:
	.quad	167772160               # 0xa000000
	.quad	Fsubstitute_in_file_name
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.97
	.quad	0
	.quad	0
	.size	Ssubstitute_in_file_name, 48

	.type	.L.str.98,@object       # @.str.98
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.98:
	.asciz	"copy-file"
	.size	.L.str.98, 10

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"fCopy file: \nGCopy %s to file: \np\nP"
	.size	.L.str.99, 36

	.type	Scopy_file,@object      # @Scopy_file
	.data
	.align	8
Scopy_file:
	.quad	167772160               # 0xa000000
	.quad	Fcopy_file
	.short	2                       # 0x2
	.short	6                       # 0x6
	.zero	4
	.quad	.L.str.98
	.quad	.L.str.99
	.quad	0
	.size	Scopy_file, 48

	.type	.L.str.100,@object      # @.str.100
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.100:
	.asciz	"make-directory-internal"
	.size	.L.str.100, 24

	.type	Smake_directory_internal,@object # @Smake_directory_internal
	.data
	.align	8
Smake_directory_internal:
	.quad	167772160               # 0xa000000
	.quad	Fmake_directory_internal
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.100
	.quad	0
	.quad	0
	.size	Smake_directory_internal, 48

	.type	.L.str.101,@object      # @.str.101
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.101:
	.asciz	"delete-directory-internal"
	.size	.L.str.101, 26

	.type	Sdelete_directory_internal,@object # @Sdelete_directory_internal
	.data
	.align	8
Sdelete_directory_internal:
	.quad	167772160               # 0xa000000
	.quad	Fdelete_directory_internal
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.101
	.quad	0
	.quad	0
	.size	Sdelete_directory_internal, 48

	.type	.L.str.102,@object      # @.str.102
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.102:
	.asciz	"delete-file"
	.size	.L.str.102, 12

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"(list (read-file-name                 (if (and delete-by-moving-to-trash (null current-prefix-arg))                     \"Move file to trash: \" \"Delete file: \")                 nil default-directory (confirm-nonexistent-file-or-buffer))               (null current-prefix-arg))"
	.size	.L.str.103, 277

	.type	Sdelete_file,@object    # @Sdelete_file
	.data
	.align	8
Sdelete_file:
	.quad	167772160               # 0xa000000
	.quad	Fdelete_file
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.102
	.quad	.L.str.103
	.quad	0
	.size	Sdelete_file, 48

	.type	.L.str.104,@object      # @.str.104
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.104:
	.asciz	"rename-file"
	.size	.L.str.104, 12

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"fRename file: \nGRename %s to file: \np"
	.size	.L.str.105, 38

	.type	Srename_file,@object    # @Srename_file
	.data
	.align	8
Srename_file:
	.quad	167772160               # 0xa000000
	.quad	Frename_file
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.104
	.quad	.L.str.105
	.quad	0
	.size	Srename_file, 48

	.type	.L.str.106,@object      # @.str.106
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.106:
	.asciz	"add-name-to-file"
	.size	.L.str.106, 17

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"fAdd name to file: \nGName to add to %s: \np"
	.size	.L.str.107, 43

	.type	Sadd_name_to_file,@object # @Sadd_name_to_file
	.data
	.align	8
Sadd_name_to_file:
	.quad	167772160               # 0xa000000
	.quad	Fadd_name_to_file
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.106
	.quad	.L.str.107
	.quad	0
	.size	Sadd_name_to_file, 48

	.type	.L.str.108,@object      # @.str.108
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.108:
	.asciz	"make-symbolic-link"
	.size	.L.str.108, 19

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"FMake symbolic link to file: \nGMake symbolic link to file %s: \np"
	.size	.L.str.109, 65

	.type	Smake_symbolic_link,@object # @Smake_symbolic_link
	.data
	.align	8
Smake_symbolic_link:
	.quad	167772160               # 0xa000000
	.quad	Fmake_symbolic_link
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.108
	.quad	.L.str.109
	.quad	0
	.size	Smake_symbolic_link, 48

	.type	.L.str.110,@object      # @.str.110
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.110:
	.asciz	"file-name-absolute-p"
	.size	.L.str.110, 21

	.type	Sfile_name_absolute_p,@object # @Sfile_name_absolute_p
	.data
	.align	8
Sfile_name_absolute_p:
	.quad	167772160               # 0xa000000
	.quad	Ffile_name_absolute_p
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.110
	.quad	0
	.quad	0
	.size	Sfile_name_absolute_p, 48

	.type	.L.str.111,@object      # @.str.111
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.111:
	.asciz	"file-exists-p"
	.size	.L.str.111, 14

	.type	Sfile_exists_p,@object  # @Sfile_exists_p
	.data
	.align	8
Sfile_exists_p:
	.quad	167772160               # 0xa000000
	.quad	Ffile_exists_p
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.111
	.quad	0
	.quad	0
	.size	Sfile_exists_p, 48

	.type	.L.str.112,@object      # @.str.112
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.112:
	.asciz	"file-executable-p"
	.size	.L.str.112, 18

	.type	Sfile_executable_p,@object # @Sfile_executable_p
	.data
	.align	8
Sfile_executable_p:
	.quad	167772160               # 0xa000000
	.quad	Ffile_executable_p
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.112
	.quad	0
	.quad	0
	.size	Sfile_executable_p, 48

	.type	.L.str.113,@object      # @.str.113
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.113:
	.asciz	"file-readable-p"
	.size	.L.str.113, 16

	.type	Sfile_readable_p,@object # @Sfile_readable_p
	.data
	.align	8
Sfile_readable_p:
	.quad	167772160               # 0xa000000
	.quad	Ffile_readable_p
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.113
	.quad	0
	.quad	0
	.size	Sfile_readable_p, 48

	.type	.L.str.114,@object      # @.str.114
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.114:
	.asciz	"file-writable-p"
	.size	.L.str.114, 16

	.type	Sfile_writable_p,@object # @Sfile_writable_p
	.data
	.align	8
Sfile_writable_p:
	.quad	167772160               # 0xa000000
	.quad	Ffile_writable_p
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.114
	.quad	0
	.quad	0
	.size	Sfile_writable_p, 48

	.type	.L.str.115,@object      # @.str.115
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.115:
	.asciz	"access-file"
	.size	.L.str.115, 12

	.type	Saccess_file,@object    # @Saccess_file
	.data
	.align	8
Saccess_file:
	.quad	167772160               # 0xa000000
	.quad	Faccess_file
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.115
	.quad	0
	.quad	0
	.size	Saccess_file, 48

	.type	.L.str.116,@object      # @.str.116
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.116:
	.asciz	"file-symlink-p"
	.size	.L.str.116, 15

	.type	Sfile_symlink_p,@object # @Sfile_symlink_p
	.data
	.align	8
Sfile_symlink_p:
	.quad	167772160               # 0xa000000
	.quad	Ffile_symlink_p
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.116
	.quad	0
	.quad	0
	.size	Sfile_symlink_p, 48

	.type	.L.str.117,@object      # @.str.117
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.117:
	.asciz	"file-directory-p"
	.size	.L.str.117, 17

	.type	Sfile_directory_p,@object # @Sfile_directory_p
	.data
	.align	8
Sfile_directory_p:
	.quad	167772160               # 0xa000000
	.quad	Ffile_directory_p
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.117
	.quad	0
	.quad	0
	.size	Sfile_directory_p, 48

	.type	.L.str.118,@object      # @.str.118
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.118:
	.asciz	"file-accessible-directory-p"
	.size	.L.str.118, 28

	.type	Sfile_accessible_directory_p,@object # @Sfile_accessible_directory_p
	.data
	.align	8
Sfile_accessible_directory_p:
	.quad	167772160               # 0xa000000
	.quad	Ffile_accessible_directory_p
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.118
	.quad	0
	.quad	0
	.size	Sfile_accessible_directory_p, 48

	.type	.L.str.119,@object      # @.str.119
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.119:
	.asciz	"file-regular-p"
	.size	.L.str.119, 15

	.type	Sfile_regular_p,@object # @Sfile_regular_p
	.data
	.align	8
Sfile_regular_p:
	.quad	167772160               # 0xa000000
	.quad	Ffile_regular_p
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.119
	.quad	0
	.quad	0
	.size	Sfile_regular_p, 48

	.type	.L.str.120,@object      # @.str.120
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.120:
	.asciz	"file-modes"
	.size	.L.str.120, 11

	.type	Sfile_modes,@object     # @Sfile_modes
	.data
	.align	8
Sfile_modes:
	.quad	167772160               # 0xa000000
	.quad	Ffile_modes
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.120
	.quad	0
	.quad	0
	.size	Sfile_modes, 48

	.type	.L.str.121,@object      # @.str.121
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.121:
	.asciz	"set-file-modes"
	.size	.L.str.121, 15

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"(let ((file (read-file-name \"File: \")))\t\t\t\t  (list file (read-file-modes nil file)))"
	.size	.L.str.122, 85

	.type	Sset_file_modes,@object # @Sset_file_modes
	.data
	.align	8
Sset_file_modes:
	.quad	167772160               # 0xa000000
	.quad	Fset_file_modes
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.121
	.quad	.L.str.122
	.quad	0
	.size	Sset_file_modes, 48

	.type	.L.str.123,@object      # @.str.123
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.123:
	.asciz	"set-file-times"
	.size	.L.str.123, 15

	.type	Sset_file_times,@object # @Sset_file_times
	.data
	.align	8
Sset_file_times:
	.quad	167772160               # 0xa000000
	.quad	Fset_file_times
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.123
	.quad	0
	.quad	0
	.size	Sset_file_times, 48

	.type	.L.str.124,@object      # @.str.124
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.124:
	.asciz	"file-selinux-context"
	.size	.L.str.124, 21

	.type	Sfile_selinux_context,@object # @Sfile_selinux_context
	.data
	.align	8
Sfile_selinux_context:
	.quad	167772160               # 0xa000000
	.quad	Ffile_selinux_context
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.124
	.quad	0
	.quad	0
	.size	Sfile_selinux_context, 48

	.type	.L.str.125,@object      # @.str.125
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.125:
	.asciz	"file-acl"
	.size	.L.str.125, 9

	.type	Sfile_acl,@object       # @Sfile_acl
	.data
	.align	8
Sfile_acl:
	.quad	167772160               # 0xa000000
	.quad	Ffile_acl
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.125
	.quad	0
	.quad	0
	.size	Sfile_acl, 48

	.type	.L.str.126,@object      # @.str.126
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.126:
	.asciz	"set-file-acl"
	.size	.L.str.126, 13

	.type	Sset_file_acl,@object   # @Sset_file_acl
	.data
	.align	8
Sset_file_acl:
	.quad	167772160               # 0xa000000
	.quad	Fset_file_acl
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.126
	.quad	0
	.quad	0
	.size	Sset_file_acl, 48

	.type	.L.str.127,@object      # @.str.127
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.127:
	.asciz	"set-file-selinux-context"
	.size	.L.str.127, 25

	.type	Sset_file_selinux_context,@object # @Sset_file_selinux_context
	.data
	.align	8
Sset_file_selinux_context:
	.quad	167772160               # 0xa000000
	.quad	Fset_file_selinux_context
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.127
	.quad	0
	.quad	0
	.size	Sset_file_selinux_context, 48

	.type	.L.str.128,@object      # @.str.128
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.128:
	.asciz	"set-default-file-modes"
	.size	.L.str.128, 23

	.type	Sset_default_file_modes,@object # @Sset_default_file_modes
	.data
	.align	8
Sset_default_file_modes:
	.quad	167772160               # 0xa000000
	.quad	Fset_default_file_modes
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.128
	.quad	0
	.quad	0
	.size	Sset_default_file_modes, 48

	.type	.L.str.129,@object      # @.str.129
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.129:
	.asciz	"default-file-modes"
	.size	.L.str.129, 19

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"file-newer-than-file-p"
	.size	.L.str.130, 23

	.type	Sfile_newer_than_file_p,@object # @Sfile_newer_than_file_p
	.data
	.align	8
Sfile_newer_than_file_p:
	.quad	167772160               # 0xa000000
	.quad	Ffile_newer_than_file_p
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.130
	.quad	0
	.quad	0
	.size	Sfile_newer_than_file_p, 48

	.type	.L.str.131,@object      # @.str.131
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.131:
	.asciz	"insert-file-contents"
	.size	.L.str.131, 21

	.type	Sinsert_file_contents,@object # @Sinsert_file_contents
	.data
	.align	8
Sinsert_file_contents:
	.quad	167772160               # 0xa000000
	.quad	Finsert_file_contents
	.short	1                       # 0x1
	.short	5                       # 0x5
	.zero	4
	.quad	.L.str.131
	.quad	0
	.quad	0
	.size	Sinsert_file_contents, 48

	.type	.L.str.132,@object      # @.str.132
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.132:
	.asciz	"write-region"
	.size	.L.str.132, 13

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"r\nFWrite region to file: \ni\ni\ni\np"
	.size	.L.str.133, 34

	.type	Swrite_region,@object   # @Swrite_region
	.data
	.align	8
Swrite_region:
	.quad	167772160               # 0xa000000
	.quad	Fwrite_region
	.short	3                       # 0x3
	.short	7                       # 0x7
	.zero	4
	.quad	.L.str.132
	.quad	.L.str.133
	.quad	0
	.size	Swrite_region, 48

	.type	.L.str.134,@object      # @.str.134
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.134:
	.asciz	"car-less-than-car"
	.size	.L.str.134, 18

	.type	Scar_less_than_car,@object # @Scar_less_than_car
	.data
	.align	8
Scar_less_than_car:
	.quad	167772160               # 0xa000000
	.quad	Fcar_less_than_car
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.134
	.quad	0
	.quad	0
	.size	Scar_less_than_car, 48

	.type	.L.str.135,@object      # @.str.135
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.135:
	.asciz	"verify-visited-file-modtime"
	.size	.L.str.135, 28

	.type	Sverify_visited_file_modtime,@object # @Sverify_visited_file_modtime
	.data
	.align	8
Sverify_visited_file_modtime:
	.quad	167772160               # 0xa000000
	.quad	Fverify_visited_file_modtime
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.135
	.quad	0
	.quad	0
	.size	Sverify_visited_file_modtime, 48

	.type	.L.str.136,@object      # @.str.136
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.136:
	.asciz	"visited-file-modtime"
	.size	.L.str.136, 21

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"set-visited-file-modtime"
	.size	.L.str.137, 25

	.type	Sset_visited_file_modtime,@object # @Sset_visited_file_modtime
	.data
	.align	8
Sset_visited_file_modtime:
	.quad	167772160               # 0xa000000
	.quad	Fset_visited_file_modtime
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.137
	.quad	0
	.quad	0
	.size	Sset_visited_file_modtime, 48

	.type	.L.str.138,@object      # @.str.138
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.138:
	.asciz	"do-auto-save"
	.size	.L.str.138, 13

	.type	Sdo_auto_save,@object   # @Sdo_auto_save
	.data
	.align	8
Sdo_auto_save:
	.quad	167772160               # 0xa000000
	.quad	Fdo_auto_save
	.short	0                       # 0x0
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.138
	.quad	.L.str.5
	.quad	0
	.size	Sdo_auto_save, 48

	.type	.L.str.139,@object      # @.str.139
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.139:
	.asciz	"set-buffer-auto-saved"
	.size	.L.str.139, 22

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"clear-buffer-auto-save-failure"
	.size	.L.str.140, 31

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"recent-auto-save-p"
	.size	.L.str.141, 19

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"next-read-file-uses-dialog-p"
	.size	.L.str.142, 29

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"set-binary-mode"
	.size	.L.str.143, 16

	.type	Sset_binary_mode,@object # @Sset_binary_mode
	.data
	.align	8
Sset_binary_mode:
	.quad	167772160               # 0xa000000
	.quad	Fset_binary_mode
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.143
	.quad	0
	.quad	0
	.size	Sset_binary_mode, 48

	.type	.L.str.144,@object      # @.str.144
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.144:
	.asciz	"unix-sync"
	.size	.L.str.144, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
