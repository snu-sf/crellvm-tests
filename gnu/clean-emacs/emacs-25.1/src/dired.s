	.text
	.file	"dired.bc"
	.globl	directory_files_internal
	.align	16, 0x90
	.type	directory_files_internal,@function
directory_files_internal:               # @directory_files_internal
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
	subq	$336, %rsp              # imm = 0x150
	movb	%r8b, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	andb	$1, %al
	movb	%al, -33(%rbp)
	movq	%r9, -48(%rbp)
	movq	$0, -88(%rbp)
	movb	$0, -89(%rbp)
	callq	SPECPDL_INDEX
	xorl	%edi, %edi
	movq	%rax, -104(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -72(%rbp)
	movq	%rax, -80(%rbp)
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rdi
	callq	Fdirectory_file_name
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB0_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	CHECK_STRING
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %esi
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	compile_pattern
	movq	%rax, -88(%rbp)
.LBB0_2:                                # %if.end
	movq	-72(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rdi
	callq	encode_file_name
	leaq	-116(%rbp), %rsi
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rdi
	callq	open_directory
	movabsq	$directory_files_internal_unwind, %rdi
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
	movq	-8(%rbp), %rdi
	callq	SBYTES
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -56(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, re_match_object
	cmpq	$0, -56(%rbp)
	je	.LBB0_4
# BB#3:                                 # %lor.lhs.false
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rax
	subq	$1, %rax
	movq	%rax, %rsi
	callq	SREF
	movzbl	%al, %ecx
	cmpl	$47, %ecx
	je	.LBB0_5
.LBB0_4:                                # %if.then.15
	movb	$1, -89(%rbp)
.LBB0_5:                                # %if.end.16
	jmp	.LBB0_6
.LBB0_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-128(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	read_dirent
	movq	%rax, -136(%rbp)
	cmpq	$0, %rax
	je	.LBB0_37
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-136(%rbp), %rdi
	callq	dirent_namelen
	movq	%rax, -144(%rbp)
	movq	-136(%rbp), %rax
	addq	$19, %rax
	movq	-144(%rbp), %rsi
	movq	%rax, %rdi
	callq	make_unibyte_string
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-152(%rbp), %rdi
	callq	decode_file_name
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rdi
	callq	SBYTES
	movq	%rax, -144(%rbp)
	movb	$1, immediate_quit
# BB#8:                                 # %do.body
                                        #   in Loop: Header=BB0_6 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB0_11
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB0_6 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB0_11
# BB#10:                                # %if.then.28
                                        #   in Loop: Header=BB0_6 Depth=1
	callq	process_quit_flag
	jmp	.LBB0_14
.LBB0_11:                               # %if.else
                                        #   in Loop: Header=BB0_6 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB0_13
# BB#12:                                # %if.then.30
                                        #   in Loop: Header=BB0_6 Depth=1
	callq	process_pending_signals
.LBB0_13:                               # %if.end.31
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_14
.LBB0_14:                               # %if.end.32
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_15
.LBB0_15:                               # %do.end
                                        #   in Loop: Header=BB0_6 Depth=1
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %cl
	movq	-240(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -241(%rbp)         # 1-byte Spill
	je	.LBB0_17
# BB#16:                                # %lor.rhs
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-88(%rbp), %rdi
	movq	-152(%rbp), %rax
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SSDATA
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-144(%rbp), %rdx
	movq	-144(%rbp), %r8
	movq	-256(%rbp), %rsi        # 8-byte Reload
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	%rax, %rsi
	movq	-264(%rbp), %rcx        # 8-byte Reload
	movq	-264(%rbp), %r9         # 8-byte Reload
	callq	re_search
	cmpq	$0, %rax
	setge	%r10b
	movb	%r10b, -241(%rbp)       # 1-byte Spill
.LBB0_17:                               # %lor.end
                                        #   in Loop: Header=BB0_6 Depth=1
	movb	-241(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movb	%al, -161(%rbp)
	movb	$0, immediate_quit
	testb	$1, -161(%rbp)
	je	.LBB0_36
# BB#18:                                # %if.then.42
                                        #   in Loop: Header=BB0_6 Depth=1
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB0_31
# BB#19:                                # %if.then.46
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-144(%rbp), %rax
	addq	-56(%rbp), %rax
	movb	-89(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, %esi
	addq	%rsi, %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rdi
	movq	-184(%rbp), %rsi
	callq	make_uninit_multibyte_string
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rdi
	callq	SDATA
	movq	-8(%rbp), %rdi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	-56(%rbp), %rdx
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	memcpy
	testb	$1, -89(%rbp)
	je	.LBB0_21
# BB#20:                                # %if.then.54
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	$47, %edx
	movq	-176(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	SSET
.LBB0_21:                               # %if.end.55
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-176(%rbp), %rdi
	callq	SDATA
	addq	-56(%rbp), %rax
	movb	-89(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movslq	%edx, %rdi
	addq	%rdi, %rax
	movq	-152(%rbp), %rdi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	SDATA
	movq	-144(%rbp), %rdx
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	memcpy
	movq	-176(%rbp), %rdi
	callq	SDATA
	movq	-184(%rbp), %rsi
	movq	%rax, %rdi
	callq	multibyte_chars_in_text
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	cmpq	-184(%rbp), %rax
	jle	.LBB0_23
# BB#22:                                # %if.then.65
	callq	emacs_abort
.LBB0_23:                               # %if.end.66
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-176(%rbp), %rdi
	movq	-192(%rbp), %rsi
	callq	STRING_SET_CHARS
	movq	-192(%rbp), %rsi
	cmpq	-184(%rbp), %rsi
	jne	.LBB0_30
# BB#24:                                # %if.then.69
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_25
.LBB0_25:                               # %do.body.70
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-176(%rbp), %rdi
	callq	XSTRING
	cmpq	$0, (%rax)
	jne	.LBB0_27
# BB#26:                                # %if.then.74
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	empty_unibyte_string, %rax
	movq	%rax, -176(%rbp)
	jmp	.LBB0_28
.LBB0_27:                               # %if.else.75
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-176(%rbp), %rdi
	callq	XSTRING
	movq	$-1, 8(%rax)
.LBB0_28:                               # %if.end.77
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_29
.LBB0_29:                               # %do.end.78
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_30
.LBB0_30:                               # %if.end.79
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-176(%rbp), %rax
	movq	%rax, -160(%rbp)
	jmp	.LBB0_32
.LBB0_31:                               # %if.else.80
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-152(%rbp), %rax
	movq	%rax, -160(%rbp)
.LBB0_32:                               # %if.end.81
                                        #   in Loop: Header=BB0_6 Depth=1
	testb	$1, -33(%rbp)
	je	.LBB0_34
# BB#33:                                # %if.then.83
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	-116(%rbp), %edi
	movq	-136(%rbp), %rax
	addq	$19, %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rsi
	callq	file_attributes
	movq	%rax, -200(%rbp)
	movq	-160(%rbp), %rdi
	movq	-200(%rbp), %rsi
	callq	Fcons
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -64(%rbp)
	jmp	.LBB0_35
.LBB0_34:                               # %if.else.89
                                        #   in Loop: Header=BB0_6 Depth=1
	movq	-160(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	Fcons
	movq	%rax, -64(%rbp)
.LBB0_35:                               # %if.end.91
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_36
.LBB0_36:                               # %if.end.92
                                        #   in Loop: Header=BB0_6 Depth=1
	jmp	.LBB0_6
.LBB0_37:                               # %for.end
	callq	block_input
	movq	-128(%rbp), %rdi
	callq	closedir
	movl	%eax, -292(%rbp)        # 4-byte Spill
	callq	unblock_input
	xorl	%edi, %edi
	movq	specpdl, %rcx
	movq	-104(%rbp), %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movq	%rcx, specpdl_ptr
	movq	-32(%rbp), %rcx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-304(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB0_42
# BB#38:                                # %if.then.98
	movq	-64(%rbp), %rdi
	callq	Fnreverse
	testb	$1, -33(%rbp)
	movq	%rax, -312(%rbp)        # 8-byte Spill
	je	.LBB0_40
# BB#39:                                # %cond.true
	movl	$408, %edi              # imm = 0x198
	callq	builtin_lisp_symbol
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jmp	.LBB0_41
.LBB0_40:                               # %cond.false
	movl	$884, %edi              # imm = 0x374
	callq	builtin_lisp_symbol
	movq	%rax, -320(%rbp)        # 8-byte Spill
.LBB0_41:                               # %cond.end
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fsort
	movq	%rax, -64(%rbp)
.LBB0_42:                               # %if.end.105
	movq	-112(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, -328(%rbp)        # 8-byte Spill
	movq	%rcx, %rax
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end0:
	.size	directory_files_internal, .Lfunc_end0-directory_files_internal
	.cfi_endproc

	.align	16, 0x90
	.type	open_directory,@function
open_directory:                         # @open_directory
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	SSDATA
	movq	%rax, -24(%rbp)
	callq	block_input
	movl	$65536, %esi            # imm = 0x10000
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi
	callq	emacs_open
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jge	.LBB1_2
# BB#1:                                 # %if.then
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -40(%rbp)
	movq	$0, -32(%rbp)
	jmp	.LBB1_5
.LBB1_2:                                # %if.else
	movl	-36(%rbp), %edi
	callq	fdopendir
	movq	%rax, -32(%rbp)
	callq	__errno_location
	movl	(%rax), %edi
	movl	%edi, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB1_4
# BB#3:                                 # %if.then.5
	movl	-36(%rbp), %edi
	callq	emacs_close
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %if.end.7
	callq	unblock_input
	cmpq	$0, -32(%rbp)
	jne	.LBB1_7
# BB#6:                                 # %if.then.9
	movabsq	$.L.str.1, %rdi
	movq	-8(%rbp), %rsi
	movl	-40(%rbp), %edx
	callq	report_file_errno
.LBB1_7:                                # %if.end.10
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-32(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	open_directory, .Lfunc_end1-open_directory
	.cfi_endproc

	.align	16, 0x90
	.type	directory_files_internal_unwind,@function
directory_files_internal_unwind:        # @directory_files_internal_unwind
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	callq	block_input
	movq	-16(%rbp), %rdi
	callq	closedir
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	unblock_input
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	directory_files_internal_unwind, .Lfunc_end2-directory_files_internal_unwind
	.cfi_endproc

	.align	16, 0x90
	.type	read_dirent,@function
read_dirent:                            # @read_dirent
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.LBB3_1:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	callq	__errno_location
	movl	$0, (%rax)
	movq	-8(%rbp), %rdi
	callq	readdir
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB3_1 Depth=1
	callq	__errno_location
	cmpl	$0, (%rax)
	jne	.LBB3_4
.LBB3_3:                                # %if.then
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.LBB3_4:                                # %if.end
                                        #   in Loop: Header=BB3_1 Depth=1
	callq	__errno_location
	cmpl	$11, (%rax)
	je	.LBB3_7
# BB#5:                                 # %lor.lhs.false.5
                                        #   in Loop: Header=BB3_1 Depth=1
	callq	__errno_location
	cmpl	$4, (%rax)
	je	.LBB3_7
# BB#6:                                 # %if.then.8
	movabsq	$.L.str.2, %rdi
	movq	-16(%rbp), %rsi
	callq	report_file_error
.LBB3_7:                                # %if.end.9
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_8
.LBB3_8:                                # %do.body
                                        #   in Loop: Header=BB3_1 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB3_11
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB3_1 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB3_11
# BB#10:                                # %if.then.14
                                        #   in Loop: Header=BB3_1 Depth=1
	callq	process_quit_flag
	jmp	.LBB3_14
.LBB3_11:                               # %if.else
                                        #   in Loop: Header=BB3_1 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB3_13
# BB#12:                                # %if.then.16
                                        #   in Loop: Header=BB3_1 Depth=1
	callq	process_pending_signals
.LBB3_13:                               # %if.end.17
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_14
.LBB3_14:                               # %if.end.18
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_15
.LBB3_15:                               # %do.end
                                        #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_1
.Lfunc_end3:
	.size	read_dirent, .Lfunc_end3-read_dirent
	.cfi_endproc

	.align	16, 0x90
	.type	dirent_namelen,@function
dirent_namelen:                         # @dirent_namelen
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
	addq	$19, %rdi
	callq	strlen
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	dirent_namelen, .Lfunc_end4-dirent_namelen
	.cfi_endproc

	.align	16, 0x90
	.type	file_attributes,@function
file_attributes:                        # @file_attributes
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
	subq	$576, %rsp              # imm = 0x240
	leaq	-176(%rbp), %rax
	movl	$256, %ecx              # imm = 0x100
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -200(%rbp)
	movq	$0, -208(%rbp)
	movl	-12(%rbp), %edi
	movq	-24(%rbp), %rsi
	movq	%rax, %rdx
	callq	fstatat
	movl	%eax, -180(%rbp)
	cmpl	$0, -180(%rbp)
	jge	.LBB5_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB5_55
.LBB5_2:                                # %if.end
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-360(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB5_5
# BB#3:                                 # %lor.lhs.false
	movl	$557, %edi              # imm = 0x22D
	movq	-32(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-368(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB5_5
# BB#4:                                 # %if.then.6
	callq	block_input
	leaq	-176(%rbp), %rdi
	callq	stat_uname
	leaq	-176(%rbp), %rdi
	movq	%rax, -200(%rbp)
	callq	stat_gname
	movq	%rax, -208(%rbp)
	callq	unblock_input
.LBB5_5:                                # %if.end.9
	leaq	-176(%rbp), %rdi
	leaq	-192(%rbp), %rsi
	callq	filemodestring
	leaq	-304(%rbp), %rsi
	movl	-152(%rbp), %eax
	andl	$61440, %eax            # imm = 0xF000
	cmpl	$40960, %eax            # imm = 0xA000
	movq	%rsi, -376(%rbp)        # 8-byte Spill
	jne	.LBB5_7
# BB#6:                                 # %cond.true
	movl	-12(%rbp), %edi
	movq	-24(%rbp), %rsi
	callq	emacs_readlinkat
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jmp	.LBB5_11
.LBB5_7:                                # %cond.false
	movl	-152(%rbp), %eax
	andl	$61440, %eax            # imm = 0xF000
	cmpl	$16384, %eax            # imm = 0x4000
	jne	.LBB5_9
# BB#8:                                 # %cond.true.15
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -392(%rbp)        # 8-byte Spill
	jmp	.LBB5_10
.LBB5_9:                                # %cond.false.17
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -392(%rbp)        # 8-byte Spill
.LBB5_10:                               # %cond.end
	movq	-392(%rbp), %rax        # 8-byte Reload
	movq	%rax, -384(%rbp)        # 8-byte Spill
.LBB5_11:                               # %cond.end.19
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	-376(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rcx)
	addq	$8, %rcx
	movq	-160(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-376(%rbp), %rdx        # 8-byte Reload
	movq	%rax, 8(%rdx)
	addq	$8, %rcx
	cmpq	$0, -200(%rbp)
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	je	.LBB5_16
# BB#12:                                # %cond.true.22
	xorl	%edi, %edi
	movq	globals+1344, %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-408(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB5_14
# BB#13:                                # %cond.true.25
	movq	-200(%rbp), %rdi
	callq	build_unibyte_string
	xorl	%edx, %edx
	movq	globals+1344, %rsi
	movq	%rax, %rdi
	callq	code_convert_string_norecord
	movq	%rax, -416(%rbp)        # 8-byte Spill
	jmp	.LBB5_15
.LBB5_14:                               # %cond.false.28
	movq	-200(%rbp), %rdi
	callq	build_unibyte_string
	movq	%rax, -416(%rbp)        # 8-byte Spill
.LBB5_15:                               # %cond.end.30
	movq	-416(%rbp), %rax        # 8-byte Reload
	movq	%rax, -424(%rbp)        # 8-byte Spill
	jmp	.LBB5_22
.LBB5_16:                               # %cond.false.32
	xorl	%eax, %eax
	cmpl	-148(%rbp), %eax
	jbe	.LBB5_18
# BB#17:                                # %lor.lhs.false.34
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jg	.LBB5_19
.LBB5_18:                               # %land.lhs.true
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movl	-148(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rax, %rdx
	jle	.LBB5_20
.LBB5_19:                               # %cond.true.42
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm0
	callq	make_float
	movq	%rax, -432(%rbp)        # 8-byte Spill
	jmp	.LBB5_21
.LBB5_20:                               # %cond.false.46
	movl	-148(%rbp), %eax
	movl	%eax, %ecx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -432(%rbp)        # 8-byte Spill
.LBB5_21:                               # %cond.end.51
	movq	-432(%rbp), %rax        # 8-byte Reload
	movq	%rax, -424(%rbp)        # 8-byte Spill
.LBB5_22:                               # %cond.end.53
	movq	-424(%rbp), %rax        # 8-byte Reload
	movq	-400(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rcx)
	addq	$8, %rcx
	cmpq	$0, -208(%rbp)
	movq	%rcx, -440(%rbp)        # 8-byte Spill
	je	.LBB5_27
# BB#23:                                # %cond.true.57
	xorl	%edi, %edi
	movq	globals+1344, %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-448(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB5_25
# BB#24:                                # %cond.true.61
	movq	-208(%rbp), %rdi
	callq	build_unibyte_string
	xorl	%edx, %edx
	movq	globals+1344, %rsi
	movq	%rax, %rdi
	callq	code_convert_string_norecord
	movq	%rax, -456(%rbp)        # 8-byte Spill
	jmp	.LBB5_26
.LBB5_25:                               # %cond.false.64
	movq	-208(%rbp), %rdi
	callq	build_unibyte_string
	movq	%rax, -456(%rbp)        # 8-byte Spill
.LBB5_26:                               # %cond.end.66
	movq	-456(%rbp), %rax        # 8-byte Reload
	movq	%rax, -464(%rbp)        # 8-byte Spill
	jmp	.LBB5_33
.LBB5_27:                               # %cond.false.68
	xorl	%eax, %eax
	cmpl	-144(%rbp), %eax
	jbe	.LBB5_29
# BB#28:                                # %lor.lhs.false.71
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	movl	-144(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	jg	.LBB5_30
.LBB5_29:                               # %land.lhs.true.76
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	movl	-144(%rbp), %ecx
	movl	%ecx, %edx
	cmpq	%rax, %rdx
	jle	.LBB5_31
.LBB5_30:                               # %cond.true.81
	movl	-144(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm0
	callq	make_float
	movq	%rax, -472(%rbp)        # 8-byte Spill
	jmp	.LBB5_32
.LBB5_31:                               # %cond.false.85
	movl	-144(%rbp), %eax
	movl	%eax, %ecx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -472(%rbp)        # 8-byte Spill
.LBB5_32:                               # %cond.end.90
	movq	-472(%rbp), %rax        # 8-byte Reload
	movq	%rax, -464(%rbp)        # 8-byte Spill
.LBB5_33:                               # %cond.end.92
	movq	-464(%rbp), %rax        # 8-byte Reload
	leaq	-176(%rbp), %rdi
	movq	-440(%rbp), %rcx        # 8-byte Reload
	movq	%rax, (%rcx)
	addq	$8, %rcx
	movq	%rcx, -480(%rbp)        # 8-byte Spill
	callq	get_stat_atime
	movq	%rax, -320(%rbp)
	movq	%rdx, -312(%rbp)
	movq	-320(%rbp), %rdi
	movq	-312(%rbp), %rsi
	callq	make_lisp_time
	leaq	-176(%rbp), %rdi
	movq	-440(%rbp), %rcx        # 8-byte Reload
	movq	%rax, 8(%rcx)
	movq	-480(%rbp), %rax        # 8-byte Reload
	addq	$8, %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	get_stat_mtime
	movq	%rax, -336(%rbp)
	movq	%rdx, -328(%rbp)
	movq	-336(%rbp), %rdi
	movq	-328(%rbp), %rsi
	callq	make_lisp_time
	leaq	-176(%rbp), %rdi
	movq	-440(%rbp), %rcx        # 8-byte Reload
	movq	%rax, 16(%rcx)
	movq	-488(%rbp), %rax        # 8-byte Reload
	addq	$8, %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	get_stat_ctime
	movq	%rax, -352(%rbp)
	movq	%rdx, -344(%rbp)
	movq	-352(%rbp), %rdi
	movq	-344(%rbp), %rsi
	callq	make_lisp_time
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-440(%rbp), %rdx        # 8-byte Reload
	movq	%rax, 24(%rdx)
	movq	-496(%rbp), %rax        # 8-byte Reload
	addq	$8, %rax
	cmpq	-128(%rbp), %rcx
	movq	%rax, -504(%rbp)        # 8-byte Spill
	jle	.LBB5_35
# BB#34:                                # %lor.lhs.false.108
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	cmpq	-128(%rbp), %rax
	jg	.LBB5_36
.LBB5_35:                               # %land.lhs.true.112
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	cmpq	%rax, -128(%rbp)
	jle	.LBB5_37
.LBB5_36:                               # %cond.true.116
	cvtsi2sdq	-128(%rbp), %xmm0
	callq	make_float
	movq	%rax, -512(%rbp)        # 8-byte Spill
	jmp	.LBB5_38
.LBB5_37:                               # %cond.false.120
	movq	-128(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
.LBB5_38:                               # %cond.end.124
	movq	-512(%rbp), %rax        # 8-byte Reload
	movl	$10, %ecx
	movl	%ecx, %esi
	leaq	-192(%rbp), %rdi
	movq	-504(%rbp), %rdx        # 8-byte Reload
	movq	%rax, (%rdx)
	addq	$8, %rdx
	movq	%rdx, -520(%rbp)        # 8-byte Spill
	callq	make_string
	movl	$901, %edi              # imm = 0x385
	movq	-504(%rbp), %rdx        # 8-byte Reload
	movq	%rax, 8(%rdx)
	movq	-520(%rbp), %rax        # 8-byte Reload
	addq	$8, %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-504(%rbp), %rsi        # 8-byte Reload
	movq	%rax, 16(%rsi)
	movq	-528(%rbp), %rax        # 8-byte Reload
	addq	$8, %rax
	cmpq	-168(%rbp), %rdx
	movq	%rax, -536(%rbp)        # 8-byte Spill
	jbe	.LBB5_40
# BB#39:                                # %lor.lhs.false.134
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	cmpq	-168(%rbp), %rax
	ja	.LBB5_42
.LBB5_40:                               # %land.lhs.true.138
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	cmpq	%rax, -168(%rbp)
	ja	.LBB5_42
# BB#41:                                # %cond.true.142
	movq	-168(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	jmp	.LBB5_46
.LBB5_42:                               # %cond.false.146
	imulq	$0, -168(%rbp), %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB5_44
# BB#43:                                # %cond.true.150
	movq	-168(%rbp), %rdi
	callq	intbig_to_lisp
	movq	%rax, -552(%rbp)        # 8-byte Spill
	jmp	.LBB5_45
.LBB5_44:                               # %cond.false.153
	movq	-168(%rbp), %rdi
	callq	uintbig_to_lisp
	movq	%rax, -552(%rbp)        # 8-byte Spill
.LBB5_45:                               # %cond.end.156
	movq	-552(%rbp), %rax        # 8-byte Reload
	movq	%rax, -544(%rbp)        # 8-byte Spill
.LBB5_46:                               # %cond.end.158
	movq	-544(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-536(%rbp), %rsi        # 8-byte Reload
	movq	%rax, (%rsi)
	addq	$8, %rsi
	cmpq	-176(%rbp), %rdx
	movq	%rsi, -560(%rbp)        # 8-byte Spill
	jbe	.LBB5_48
# BB#47:                                # %lor.lhs.false.163
	movabsq	$-2305843009213693952, %rax # imm = 0xE000000000000000
	cmpq	-176(%rbp), %rax
	ja	.LBB5_50
.LBB5_48:                               # %land.lhs.true.167
	movabsq	$2305843009213693951, %rax # imm = 0x1FFFFFFFFFFFFFFF
	cmpq	%rax, -176(%rbp)
	ja	.LBB5_50
# BB#49:                                # %cond.true.171
	movq	-176(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	jmp	.LBB5_54
.LBB5_50:                               # %cond.false.175
	imulq	$0, -176(%rbp), %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jae	.LBB5_52
# BB#51:                                # %cond.true.181
	movq	-176(%rbp), %rdi
	callq	intbig_to_lisp
	movq	%rax, -576(%rbp)        # 8-byte Spill
	jmp	.LBB5_53
.LBB5_52:                               # %cond.false.184
	movq	-176(%rbp), %rdi
	callq	uintbig_to_lisp
	movq	%rax, -576(%rbp)        # 8-byte Spill
.LBB5_53:                               # %cond.end.187
	movq	-576(%rbp), %rax        # 8-byte Reload
	movq	%rax, -568(%rbp)        # 8-byte Spill
.LBB5_54:                               # %cond.end.189
	movq	-568(%rbp), %rax        # 8-byte Reload
	movl	$12, %ecx
	movl	%ecx, %edi
	leaq	-304(%rbp), %rsi
	movq	-560(%rbp), %rdx        # 8-byte Reload
	movq	%rax, (%rdx)
	callq	Flist
	movq	%rax, -8(%rbp)
.LBB5_55:                               # %return
	movq	-8(%rbp), %rax
	addq	$576, %rsp              # imm = 0x240
	popq	%rbp
	retq
.Lfunc_end5:
	.size	file_attributes, .Lfunc_end5-file_attributes
	.cfi_endproc

	.globl	Fdirectory_files
	.align	16, 0x90
	.type	Fdirectory_files,@function
Fdirectory_files:                       # @Fdirectory_files
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
	subq	$112, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fexpand_file_name
	movl	$341, %edi              # imm = 0x155
	movq	%rax, -16(%rbp)
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
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB6_2
# BB#1:                                 # %if.then
	movl	$341, %edi              # imm = 0x155
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %r8
	movq	-40(%rbp), %r9
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	call5
	movq	%rax, -8(%rbp)
	jmp	.LBB6_3
.LBB6_2:                                # %if.end
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%r8d, %r8d
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%rax, %r9
	callq	directory_files_internal
	movq	%rax, -8(%rbp)
.LBB6_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	Fdirectory_files, .Lfunc_end6-Fdirectory_files
	.cfi_endproc

	.globl	Fdirectory_files_and_attributes
	.align	16, 0x90
	.type	Fdirectory_files_and_attributes,@function
Fdirectory_files_and_attributes:        # @Fdirectory_files_and_attributes
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
	subq	$112, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fexpand_file_name
	movl	$342, %edi              # imm = 0x156
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB7_2
# BB#1:                                 # %if.then
	movl	$342, %edi              # imm = 0x156
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %r8
	movq	-40(%rbp), %r9
	movq	-48(%rbp), %rsi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	call6
	movq	%rax, -8(%rbp)
	jmp	.LBB7_3
.LBB7_2:                                # %if.end
	movl	$1, %r8d
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r9
	callq	directory_files_internal
	movq	%rax, -8(%rbp)
.LBB7_3:                                # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	Fdirectory_files_and_attributes, .Lfunc_end7-Fdirectory_files_and_attributes
	.cfi_endproc

	.globl	Ffile_name_completion
	.align	16, 0x90
	.type	Ffile_name_completion,@function
Ffile_name_completion:                  # @Ffile_name_completion
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
	subq	$96, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fexpand_file_name
	movl	$417, %edi              # imm = 0x1A1
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB8_2
# BB#1:                                 # %if.then
	movl	$417, %edi              # imm = 0x1A1
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %r8
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	call4
	movq	%rax, -8(%rbp)
	jmp	.LBB8_5
.LBB8_2:                                # %if.end
	movl	$417, %edi              # imm = 0x1A1
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB8_4
# BB#3:                                 # %if.then.11
	movl	$417, %edi              # imm = 0x1A1
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %r8
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	call4
	movq	%rax, -8(%rbp)
	jmp	.LBB8_5
.LBB8_4:                                # %if.end.14
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rcx
	callq	file_name_completion
	movq	%rax, -8(%rbp)
.LBB8_5:                                # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	Ffile_name_completion, .Lfunc_end8-Ffile_name_completion
	.cfi_endproc

	.align	16, 0x90
	.type	file_name_completion,@function
file_name_completion:                   # @file_name_completion
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
	subq	$880, %rsp              # imm = 0x370
	movb	%dl, %al
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	andb	$1, %al
	movb	%al, -25(%rbp)
	movq	%rcx, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -52(%rbp)
	movb	$1, -250(%rbp)
	movb	$0, -251(%rbp)
	callq	SPECPDL_INDEX
	xorl	%edi, %edi
	movq	%rax, -264(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)
	callq	builtin_lisp_symbol
	movl	$325, %edi              # imm = 0x145
	movq	%rax, -104(%rbp)
	movq	%rax, -96(%rbp)
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	specbind
	movq	-16(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -96(%rbp)
	movq	-24(%rbp), %rdi
	callq	Fdirectory_file_name
	movq	%rax, %rdi
	callq	encode_file_name
	xorl	%edi, %edi
	movq	%rax, -104(%rbp)
	movq	globals+752, %rax
	movq	%rax, -272(%rbp)
	movq	globals+752, %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-408(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movq	globals+472, %rax
	movq	%rax, -272(%rbp)
.LBB9_2:                                # %if.end
	xorl	%edi, %edi
	movq	-272(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-416(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_7
# BB#3:                                 # %land.lhs.true
	movq	-272(%rbp), %rdi
	callq	Fcoding_system_plist
	movl	$322, %edi              # imm = 0x142
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fplist_get
	xorl	%edi, %edi
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-432(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB9_7
# BB#4:                                 # %if.then.16
	movb	$1, -251(%rbp)
	movq	-16(%rbp), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB9_5
	jmp	.LBB9_6
.LBB9_5:                                # %if.then.18
	movq	-96(%rbp), %rdi
	callq	decode_file_name
	movq	%rax, -16(%rbp)
.LBB9_6:                                # %if.end.20
	jmp	.LBB9_7
.LBB9_7:                                # %if.end.21
	leaq	-276(%rbp), %rsi
	movq	-104(%rbp), %rdi
	callq	open_directory
	movabsq	$directory_files_internal_unwind, %rdi
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
.LBB9_8:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_47 Depth 2
                                        #     Child Loop BB9_29 Depth 2
                                        #     Child Loop BB9_71 Depth 2
	movq	-288(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	read_dirent
	movq	%rax, -296(%rbp)
	cmpq	$0, %rax
	je	.LBB9_124
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	-296(%rbp), %rdi
	callq	dirent_namelen
	movq	%rax, -304(%rbp)
	movb	$0, -305(%rbp)
# BB#10:                                # %do.body
                                        #   in Loop: Header=BB9_8 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-440(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_13
# BB#11:                                # %land.lhs.true.27
                                        #   in Loop: Header=BB9_8 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-448(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_13
# BB#12:                                # %if.then.30
                                        #   in Loop: Header=BB9_8 Depth=1
	callq	process_quit_flag
	jmp	.LBB9_16
.LBB9_13:                               # %if.else
                                        #   in Loop: Header=BB9_8 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB9_15
# BB#14:                                # %if.then.32
                                        #   in Loop: Header=BB9_8 Depth=1
	callq	process_pending_signals
.LBB9_15:                               # %if.end.33
                                        #   in Loop: Header=BB9_8 Depth=1
	jmp	.LBB9_16
.LBB9_16:                               # %if.end.34
                                        #   in Loop: Header=BB9_8 Depth=1
	jmp	.LBB9_17
.LBB9_17:                               # %do.end
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	-304(%rbp), %rax
	movq	-96(%rbp), %rdi
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-456(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB9_19
# BB#18:                                # %lor.lhs.false
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	-296(%rbp), %rax
	addq	$19, %rax
	movq	-96(%rbp), %rdi
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	SSDATA
	movq	-96(%rbp), %rdi
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	-472(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	scmp
	cmpq	$0, %rax
	jl	.LBB9_20
.LBB9_19:                               # %if.then.41
                                        #   in Loop: Header=BB9_8 Depth=1
	jmp	.LBB9_8
.LBB9_20:                               # %if.end.42
                                        #   in Loop: Header=BB9_8 Depth=1
	leaq	-248(%rbp), %rdx
	movl	-276(%rbp), %edi
	movq	-296(%rbp), %rsi
	callq	file_name_completion_stat
	cmpl	$0, %eax
	jge	.LBB9_22
# BB#21:                                # %if.then.45
                                        #   in Loop: Header=BB9_8 Depth=1
	jmp	.LBB9_8
.LBB9_22:                               # %if.end.46
                                        #   in Loop: Header=BB9_8 Depth=1
	xorl	%edi, %edi
	movl	-224(%rbp), %eax
	andl	$61440, %eax            # imm = 0xF000
	cmpl	$16384, %eax            # imm = 0x4000
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movb	%cl, -249(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -72(%rbp)
	testb	$1, -25(%rbp)
	jne	.LBB9_67
# BB#23:                                # %if.then.53
                                        #   in Loop: Header=BB9_8 Depth=1
	testb	$1, -249(%rbp)
	je	.LBB9_45
# BB#24:                                # %if.then.55
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	-296(%rbp), %rax
	addq	$19, %rax
	movl	$.L.str.3, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB9_26
# BB#25:                                # %lor.lhs.false.60
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	-296(%rbp), %rax
	addq	$19, %rax
	movl	$.L.str.4, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB9_27
.LBB9_26:                               # %if.then.65
                                        #   in Loop: Header=BB9_8 Depth=1
	movb	$1, -305(%rbp)
	jmp	.LBB9_44
.LBB9_27:                               # %if.else.66
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	-304(%rbp), %rax
	movq	-96(%rbp), %rdi
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-480(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jle	.LBB9_43
# BB#28:                                # %if.then.70
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	globals+344, %rax
	movq	%rax, -72(%rbp)
.LBB9_29:                               # %for.cond.71
                                        #   Parent Loop BB9_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB9_42
# BB#30:                                # %for.body.76
                                        #   in Loop: Header=BB9_29 Depth=2
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB9_32
# BB#31:                                # %if.then.78
                                        #   in Loop: Header=BB9_29 Depth=2
	jmp	.LBB9_41
.LBB9_32:                               # %if.end.79
                                        #   in Loop: Header=BB9_29 Depth=2
	movq	-80(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	SCHARS
	subq	$1, %rax
	movq	%rax, -328(%rbp)
	cmpq	$0, -328(%rbp)
	jg	.LBB9_34
# BB#33:                                # %if.then.85
                                        #   in Loop: Header=BB9_29 Depth=2
	jmp	.LBB9_41
.LBB9_34:                               # %if.end.86
                                        #   in Loop: Header=BB9_29 Depth=2
	movq	-80(%rbp), %rdi
	callq	SSDATA
	movq	%rax, -336(%rbp)
	movq	-328(%rbp), %rax
	movq	-336(%rbp), %rdi
	movsbl	(%rdi,%rax), %ecx
	cmpl	$47, %ecx
	je	.LBB9_36
# BB#35:                                # %if.then.91
                                        #   in Loop: Header=BB9_29 Depth=2
	jmp	.LBB9_41
.LBB9_36:                               # %if.end.92
                                        #   in Loop: Header=BB9_29 Depth=2
	movq	-304(%rbp), %rax
	subq	-328(%rbp), %rax
	movq	%rax, -320(%rbp)
	cmpq	$0, -320(%rbp)
	jge	.LBB9_38
# BB#37:                                # %if.then.96
                                        #   in Loop: Header=BB9_29 Depth=2
	jmp	.LBB9_41
.LBB9_38:                               # %if.end.97
                                        #   in Loop: Header=BB9_29 Depth=2
	movq	-296(%rbp), %rax
	addq	$19, %rax
	addq	-320(%rbp), %rax
	movq	-336(%rbp), %rsi
	movq	-328(%rbp), %rdx
	movq	%rax, %rdi
	callq	scmp
	cmpq	$0, %rax
	jl	.LBB9_40
# BB#39:                                # %if.then.103
                                        #   in Loop: Header=BB9_29 Depth=2
	jmp	.LBB9_41
.LBB9_40:                               # %if.end.104
                                        #   in Loop: Header=BB9_8 Depth=1
	jmp	.LBB9_42
.LBB9_41:                               # %for.inc
                                        #   in Loop: Header=BB9_29 Depth=2
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB9_29
.LBB9_42:                               # %for.end
                                        #   in Loop: Header=BB9_8 Depth=1
	jmp	.LBB9_43
.LBB9_43:                               # %if.end.106
                                        #   in Loop: Header=BB9_8 Depth=1
	jmp	.LBB9_44
.LBB9_44:                               # %if.end.107
                                        #   in Loop: Header=BB9_8 Depth=1
	jmp	.LBB9_58
.LBB9_45:                               # %if.else.108
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	-304(%rbp), %rax
	movq	-96(%rbp), %rdi
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-488(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jle	.LBB9_57
# BB#46:                                # %if.then.112
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	globals+344, %rax
	movq	%rax, -72(%rbp)
.LBB9_47:                               # %for.cond.113
                                        #   Parent Loop BB9_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB9_56
# BB#48:                                # %for.body.118
                                        #   in Loop: Header=BB9_47 Depth=2
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB9_50
# BB#49:                                # %if.then.122
                                        #   in Loop: Header=BB9_47 Depth=2
	jmp	.LBB9_55
.LBB9_50:                               # %if.end.123
                                        #   in Loop: Header=BB9_47 Depth=2
	movq	-80(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -80(%rbp)
	movq	-304(%rbp), %rax
	movq	-80(%rbp), %rdi
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-496(%rbp), %rdi        # 8-byte Reload
	subq	%rax, %rdi
	movq	%rdi, -320(%rbp)
	cmpq	$0, -320(%rbp)
	jge	.LBB9_52
# BB#51:                                # %if.then.129
                                        #   in Loop: Header=BB9_47 Depth=2
	jmp	.LBB9_55
.LBB9_52:                               # %if.end.130
                                        #   in Loop: Header=BB9_47 Depth=2
	movq	-296(%rbp), %rax
	addq	$19, %rax
	addq	-320(%rbp), %rax
	movq	-80(%rbp), %rdi
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	SSDATA
	movq	-80(%rbp), %rdi
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	-512(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	scmp
	cmpq	$0, %rax
	jl	.LBB9_54
# BB#53:                                # %if.then.139
                                        #   in Loop: Header=BB9_47 Depth=2
	jmp	.LBB9_55
.LBB9_54:                               # %if.end.140
                                        #   in Loop: Header=BB9_8 Depth=1
	jmp	.LBB9_56
.LBB9_55:                               # %for.inc.141
                                        #   in Loop: Header=BB9_47 Depth=2
	movq	-72(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB9_47
.LBB9_56:                               # %for.end.145
                                        #   in Loop: Header=BB9_8 Depth=1
	jmp	.LBB9_57
.LBB9_57:                               # %if.end.146
                                        #   in Loop: Header=BB9_8 Depth=1
	jmp	.LBB9_58
.LBB9_58:                               # %if.end.147
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB9_60
# BB#59:                                # %if.then.152
                                        #   in Loop: Header=BB9_8 Depth=1
	movb	$1, -305(%rbp)
.LBB9_60:                               # %if.end.153
                                        #   in Loop: Header=BB9_8 Depth=1
	testb	$1, -250(%rbp)
	jne	.LBB9_63
# BB#61:                                # %land.lhs.true.155
                                        #   in Loop: Header=BB9_8 Depth=1
	testb	$1, -305(%rbp)
	je	.LBB9_63
# BB#62:                                # %if.then.158
                                        #   in Loop: Header=BB9_8 Depth=1
	jmp	.LBB9_8
.LBB9_63:                               # %if.end.159
                                        #   in Loop: Header=BB9_8 Depth=1
	testb	$1, -250(%rbp)
	je	.LBB9_66
# BB#64:                                # %land.lhs.true.162
                                        #   in Loop: Header=BB9_8 Depth=1
	testb	$1, -305(%rbp)
	jne	.LBB9_66
# BB#65:                                # %if.then.164
                                        #   in Loop: Header=BB9_8 Depth=1
	xorl	%edi, %edi
	movb	$0, -250(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -52(%rbp)
.LBB9_66:                               # %if.end.166
                                        #   in Loop: Header=BB9_8 Depth=1
	jmp	.LBB9_67
.LBB9_67:                               # %if.end.167
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	-296(%rbp), %rax
	addq	$19, %rax
	movq	-304(%rbp), %rsi
	movq	%rax, %rdi
	callq	make_unibyte_string
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	decode_file_name
	movq	%rax, -88(%rbp)
	testb	$1, globals+3368
	je	.LBB9_69
# BB#68:                                # %cond.true
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	Vascii_canon_table, %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	jmp	.LBB9_70
.LBB9_69:                               # %cond.false
                                        #   in Loop: Header=BB9_8 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -520(%rbp)        # 8-byte Spill
.LBB9_70:                               # %cond.end
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	-520(%rbp), %rax        # 8-byte Reload
	movq	%rax, -352(%rbp)
	movq	globals+352, %rax
	movq	%rax, -344(%rbp)
.LBB9_71:                               # %for.cond.175
                                        #   Parent Loop BB9_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-344(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB9_76
# BB#72:                                # %for.body.180
                                        #   in Loop: Header=BB9_71 Depth=2
	movq	-344(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	-88(%rbp), %rsi
	movq	-352(%rbp), %rdx
	callq	fast_string_match_internal
	cmpq	$0, %rax
	jge	.LBB9_74
# BB#73:                                # %if.then.186
                                        #   in Loop: Header=BB9_8 Depth=1
	jmp	.LBB9_76
.LBB9_74:                               # %if.end.187
                                        #   in Loop: Header=BB9_71 Depth=2
	jmp	.LBB9_75
.LBB9_75:                               # %for.inc.188
                                        #   in Loop: Header=BB9_71 Depth=2
	movq	-344(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -344(%rbp)
	jmp	.LBB9_71
.LBB9_76:                               # %for.end.192
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	-344(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB9_78
# BB#77:                                # %if.then.197
                                        #   in Loop: Header=BB9_8 Depth=1
	jmp	.LBB9_8
.LBB9_78:                               # %if.end.198
                                        #   in Loop: Header=BB9_8 Depth=1
	testb	$1, -249(%rbp)
	je	.LBB9_80
# BB#79:                                # %if.then.200
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	-88(%rbp), %rdi
	callq	Ffile_name_as_directory
	movq	%rax, -88(%rbp)
.LBB9_80:                               # %if.end.202
                                        #   in Loop: Header=BB9_8 Depth=1
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-528(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_83
# BB#81:                                # %land.lhs.true.206
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	-40(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	call1
	xorl	%edi, %edi
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-536(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB9_83
# BB#82:                                # %if.then.211
                                        #   in Loop: Header=BB9_8 Depth=1
	jmp	.LBB9_8
.LBB9_83:                               # %if.end.212
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	$2, -360(%rbp)
	testb	$1, -251(%rbp)
	je	.LBB9_91
# BB#84:                                # %land.lhs.true.215
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	-16(%rbp), %rdi
	callq	SCHARS
	movq	-88(%rbp), %rdi
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-544(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jg	.LBB9_91
# BB#85:                                # %if.then.220
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	-16(%rbp), %rdi
	callq	SCHARS
	movq	%rax, -368(%rbp)
	movq	-88(%rbp), %rdi
	movq	-360(%rbp), %rsi
	movq	-368(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-16(%rbp), %rcx
	movq	-360(%rbp), %r8
	movq	-368(%rbp), %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	testb	$1, globals+3368
	movq	%rdi, -552(%rbp)        # 8-byte Spill
	movq	%rsi, -560(%rbp)        # 8-byte Spill
	movq	%rax, -568(%rbp)        # 8-byte Spill
	movq	%rcx, -576(%rbp)        # 8-byte Spill
	movq	%r8, -584(%rbp)         # 8-byte Spill
	movq	%rdx, -592(%rbp)        # 8-byte Spill
	je	.LBB9_87
# BB#86:                                # %cond.true.227
                                        #   in Loop: Header=BB9_8 Depth=1
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -600(%rbp)        # 8-byte Spill
	jmp	.LBB9_88
.LBB9_87:                               # %cond.false.229
                                        #   in Loop: Header=BB9_8 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -600(%rbp)        # 8-byte Spill
.LBB9_88:                               # %cond.end.231
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	-600(%rbp), %rax        # 8-byte Reload
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	-560(%rbp), %rsi        # 8-byte Reload
	movq	-568(%rbp), %rdx        # 8-byte Reload
	movq	-576(%rbp), %rcx        # 8-byte Reload
	movq	-584(%rbp), %r8         # 8-byte Reload
	movq	-592(%rbp), %r9         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	Fcompare_strings
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -376(%rbp)
	movq	-376(%rbp), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-608(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB9_90
# BB#89:                                # %if.then.237
                                        #   in Loop: Header=BB9_8 Depth=1
	jmp	.LBB9_8
.LBB9_90:                               # %if.end.238
                                        #   in Loop: Header=BB9_8 Depth=1
	jmp	.LBB9_91
.LBB9_91:                               # %if.end.239
                                        #   in Loop: Header=BB9_8 Depth=1
	cmpl	$1, -52(%rbp)
	setle	%al
	andb	$1, %al
	movzbl	%al, %ecx
	addl	-52(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	testb	$1, -25(%rbp)
	je	.LBB9_93
# BB#92:                                # %if.then.244
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	-88(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	Fcons
	movq	%rax, -64(%rbp)
	jmp	.LBB9_123
.LBB9_93:                               # %if.else.246
                                        #   in Loop: Header=BB9_8 Depth=1
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-616(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_95
# BB#94:                                # %if.then.250
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rdi
	callq	SCHARS
	movq	%rax, -48(%rbp)
	jmp	.LBB9_122
.LBB9_95:                               # %if.else.252
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	-48(%rbp), %rax
	movq	-88(%rbp), %rdi
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-624(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jge	.LBB9_97
# BB#96:                                # %cond.true.257
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	jmp	.LBB9_98
.LBB9_97:                               # %cond.false.258
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	-88(%rbp), %rdi
	callq	SCHARS
	movq	%rax, -632(%rbp)        # 8-byte Spill
.LBB9_98:                               # %cond.end.260
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	-632(%rbp), %rax        # 8-byte Reload
	movq	%rax, -384(%rbp)
	movq	-64(%rbp), %rdi
	movq	-360(%rbp), %rsi
	movq	-384(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	-88(%rbp), %rcx
	movq	-360(%rbp), %r8
	movq	-384(%rbp), %rdx
	shlq	$2, %rdx
	addq	$2, %rdx
	testb	$1, globals+3368
	movq	%rdi, -640(%rbp)        # 8-byte Spill
	movq	%rsi, -648(%rbp)        # 8-byte Spill
	movq	%rax, -656(%rbp)        # 8-byte Spill
	movq	%rcx, -664(%rbp)        # 8-byte Spill
	movq	%r8, -672(%rbp)         # 8-byte Spill
	movq	%rdx, -680(%rbp)        # 8-byte Spill
	je	.LBB9_100
# BB#99:                                # %cond.true.269
                                        #   in Loop: Header=BB9_8 Depth=1
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -688(%rbp)        # 8-byte Spill
	jmp	.LBB9_101
.LBB9_100:                              # %cond.false.271
                                        #   in Loop: Header=BB9_8 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -688(%rbp)        # 8-byte Spill
.LBB9_101:                              # %cond.end.273
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	-688(%rbp), %rax        # 8-byte Reload
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	-648(%rbp), %rsi        # 8-byte Reload
	movq	-656(%rbp), %rdx        # 8-byte Reload
	movq	-664(%rbp), %rcx        # 8-byte Reload
	movq	-672(%rbp), %r8         # 8-byte Reload
	movq	-680(%rbp), %r9         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	Fcompare_strings
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -392(%rbp)
	movq	-392(%rbp), %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-696(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_103
# BB#102:                               # %cond.true.279
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	-384(%rbp), %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
	jmp	.LBB9_107
.LBB9_103:                              # %cond.false.280
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	-392(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jge	.LBB9_105
# BB#104:                               # %cond.true.283
                                        #   in Loop: Header=BB9_8 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-392(%rbp), %rdx
	sarq	$2, %rdx
	subq	%rdx, %rcx
	movq	%rcx, -712(%rbp)        # 8-byte Spill
	jmp	.LBB9_106
.LBB9_105:                              # %cond.false.286
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	-392(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
.LBB9_106:                              # %cond.end.288
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	-712(%rbp), %rax        # 8-byte Reload
	subq	$1, %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
.LBB9_107:                              # %cond.end.291
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	-704(%rbp), %rax        # 8-byte Reload
	movq	%rax, -400(%rbp)
	testb	$1, globals+3368
	je	.LBB9_115
# BB#108:                               # %if.then.294
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	-400(%rbp), %rax
	movq	-88(%rbp), %rdi
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-720(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jne	.LBB9_110
# BB#109:                               # %land.lhs.true.298
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	-400(%rbp), %rax
	movb	-249(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, %esi
	addq	%rsi, %rax
	movq	-64(%rbp), %rdi
	movq	%rax, -728(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-728(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jl	.LBB9_113
.LBB9_110:                              # %lor.lhs.false.305
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	-400(%rbp), %rax
	movq	-88(%rbp), %rdi
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-736(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	-400(%rbp), %rax
	movb	-249(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movl	%esi, %r8d
	addq	%r8, %rax
	movq	-64(%rbp), %rdi
	movq	%rax, -744(%rbp)        # 8-byte Spill
	movl	%edx, -748(%rbp)        # 4-byte Spill
	callq	SCHARS
	movq	-744(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	-748(%rbp), %esi        # 4-byte Reload
	cmpl	%edx, %esi
	jne	.LBB9_114
# BB#111:                               # %land.lhs.true.317
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	-88(%rbp), %rdi
	movq	-360(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, -760(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -768(%rbp)        # 8-byte Spill
	callq	SCHARS
	xorl	%edi, %edi
	shlq	$2, %rax
	addq	$2, %rax
	movq	-16(%rbp), %rcx
	movq	-360(%rbp), %r8
	movq	%r8, -776(%rbp)         # 8-byte Spill
	movq	%rax, -784(%rbp)        # 8-byte Spill
	movq	%rcx, -792(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -800(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-760(%rbp), %rdi        # 8-byte Reload
	movq	-768(%rbp), %rsi        # 8-byte Reload
	movq	-784(%rbp), %rdx        # 8-byte Reload
	movq	-792(%rbp), %rcx        # 8-byte Reload
	movq	-776(%rbp), %r8         # 8-byte Reload
	movq	-800(%rbp), %r9         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	Fcompare_strings
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -392(%rbp)
	callq	builtin_lisp_symbol
	cmpq	-392(%rbp), %rax
	jne	.LBB9_114
# BB#112:                               # %land.lhs.true.327
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	-64(%rbp), %rdi
	movq	-360(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, -808(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -816(%rbp)        # 8-byte Spill
	callq	SCHARS
	xorl	%edi, %edi
	shlq	$2, %rax
	addq	$2, %rax
	movq	-16(%rbp), %rcx
	movq	-360(%rbp), %r8
	movq	%r8, -824(%rbp)         # 8-byte Spill
	movq	%rax, -832(%rbp)        # 8-byte Spill
	movq	%rcx, -840(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -848(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-808(%rbp), %rdi        # 8-byte Reload
	movq	-816(%rbp), %rsi        # 8-byte Reload
	movq	-832(%rbp), %rdx        # 8-byte Reload
	movq	-840(%rbp), %rcx        # 8-byte Reload
	movq	-824(%rbp), %r8         # 8-byte Reload
	movq	-848(%rbp), %r9         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	Fcompare_strings
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -392(%rbp)
	callq	builtin_lisp_symbol
	cmpq	-392(%rbp), %rax
	sete	%r10b
	xorb	$-1, %r10b
	testb	$1, %r10b
	jne	.LBB9_113
	jmp	.LBB9_114
.LBB9_113:                              # %if.then.337
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB9_114:                              # %if.end.338
                                        #   in Loop: Header=BB9_8 Depth=1
	jmp	.LBB9_115
.LBB9_115:                              # %if.end.339
                                        #   in Loop: Header=BB9_8 Depth=1
	movq	-400(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-400(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -856(%rbp)        # 8-byte Spill
	callq	SCHARS
	movq	-856(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jg	.LBB9_121
# BB#116:                               # %land.lhs.true.343
                                        #   in Loop: Header=BB9_8 Depth=1
	testb	$1, -250(%rbp)
	jne	.LBB9_121
# BB#117:                               # %land.lhs.true.345
                                        #   in Loop: Header=BB9_8 Depth=1
	testb	$1, globals+3368
	je	.LBB9_119
# BB#118:                               # %lor.lhs.false.347
                                        #   in Loop: Header=BB9_8 Depth=1
	cmpq	$0, -400(%rbp)
	jne	.LBB9_121
.LBB9_119:                              # %land.lhs.true.350
                                        #   in Loop: Header=BB9_8 Depth=1
	cmpl	$1, -52(%rbp)
	jle	.LBB9_121
# BB#120:                               # %if.then.353
	jmp	.LBB9_124
.LBB9_121:                              # %if.end.354
                                        #   in Loop: Header=BB9_8 Depth=1
	jmp	.LBB9_122
.LBB9_122:                              # %if.end.355
                                        #   in Loop: Header=BB9_8 Depth=1
	jmp	.LBB9_123
.LBB9_123:                              # %if.end.356
                                        #   in Loop: Header=BB9_8 Depth=1
	jmp	.LBB9_8
.LBB9_124:                              # %for.end.357
	movq	-264(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	unbind_to
	movq	%rax, -64(%rbp)
	testb	$1, -25(%rbp)
	jne	.LBB9_126
# BB#125:                               # %lor.lhs.false.361
	xorl	%edi, %edi
	movq	-64(%rbp), %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-864(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB9_127
.LBB9_126:                              # %if.then.365
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB9_131
.LBB9_127:                              # %if.end.366
	cmpl	$1, -52(%rbp)
	jne	.LBB9_130
# BB#128:                               # %land.lhs.true.369
	movq	-64(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -872(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-872(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB9_130
# BB#129:                               # %if.then.374
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB9_131
.LBB9_130:                              # %if.end.376
	movl	$2, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rdx
	callq	Fsubstring
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB9_131:                              # %return
	movq	-8(%rbp), %rax
	addq	$880, %rsp              # imm = 0x370
	popq	%rbp
	retq
.Lfunc_end9:
	.size	file_name_completion, .Lfunc_end9-file_name_completion
	.cfi_endproc

	.globl	Ffile_name_all_completions
	.align	16, 0x90
	.type	Ffile_name_all_completions,@function
Ffile_name_all_completions:             # @Ffile_name_all_completions
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
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fexpand_file_name
	movl	$415, %edi              # imm = 0x19F
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
	je	.LBB10_2
# BB#1:                                 # %if.then
	movl	$415, %edi              # imm = 0x19F
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	call3
	movq	%rax, -8(%rbp)
	jmp	.LBB10_5
.LBB10_2:                               # %if.end
	movl	$415, %edi              # imm = 0x19F
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB10_4
# BB#3:                                 # %if.then.11
	movl	$415, %edi              # imm = 0x19F
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	call3
	movq	%rax, -8(%rbp)
	jmp	.LBB10_5
.LBB10_4:                               # %if.end.14
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rcx
	callq	file_name_completion
	movq	%rax, -8(%rbp)
.LBB10_5:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	Ffile_name_all_completions, .Lfunc_end10-Ffile_name_all_completions
	.cfi_endproc

	.globl	Ffile_attributes
	.align	16, 0x90
	.type	Ffile_attributes,@function
Ffile_attributes:                       # @Ffile_attributes
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
	subq	$96, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movabsq	$Fexpand_file_name, %rdi
	movabsq	$Fidentity, %r8
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	internal_condition_case_2
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB11_2
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB11_7
.LBB11_2:                               # %if.end
	movl	$407, %edi              # imm = 0x197
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffind_file_name_handler
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB11_6
# BB#3:                                 # %if.then.8
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB11_5
# BB#4:                                 # %if.then.11
	movl	$407, %edi              # imm = 0x197
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	call2
	movq	%rax, -8(%rbp)
	jmp	.LBB11_7
.LBB11_5:                               # %if.else
	movl	$407, %edi              # imm = 0x197
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	call3
	movq	%rax, -8(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.end.16
	movq	-16(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	SSDATA
	movl	$4294967196, %edi       # imm = 0xFFFFFF9C
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	callq	file_attributes
	movq	%rax, -8(%rbp)
.LBB11_7:                               # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	Ffile_attributes, .Lfunc_end11-Ffile_attributes
	.cfi_endproc

	.globl	Ffile_attributes_lessp
	.align	16, 0x90
	.type	Ffile_attributes_lessp,@function
Ffile_attributes_lessp:                 # @Ffile_attributes_lessp
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	Fcar
	movq	-16(%rbp), %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	Fcar
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fstring_lessp
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	Ffile_attributes_lessp, .Lfunc_end12-Ffile_attributes_lessp
	.cfi_endproc

	.globl	Fsystem_users
	.align	16, 0x90
	.type	Fsystem_users,@function
Fsystem_users:                          # @Fsystem_users
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
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB13_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	callq	getpwent
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	je	.LBB13_6
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB13_1 Depth=1
	xorl	%edi, %edi
	movq	globals+1344, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB13_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	build_string
	xorl	%edx, %edx
	movq	globals+1344, %rsi
	movq	%rax, %rdi
	callq	code_convert_string_norecord
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB13_5
.LBB13_4:                               # %cond.false
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	build_string
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB13_5:                               # %cond.end
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -8(%rbp)
	jmp	.LBB13_1
.LBB13_6:                               # %while.end
	callq	endpwent
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB13_8
# BB#7:                                 # %if.then
	movq	globals+2576, %rdi
	callq	list1
	movq	%rax, -8(%rbp)
.LBB13_8:                               # %if.end
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	Fsystem_users, .Lfunc_end13-Fsystem_users
	.cfi_endproc

	.globl	Fsystem_groups
	.align	16, 0x90
	.type	Fsystem_groups,@function
Fsystem_groups:                         # @Fsystem_groups
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
	subq	$32, %rsp
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB14_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	callq	getgrent
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	je	.LBB14_6
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB14_1 Depth=1
	xorl	%edi, %edi
	movq	globals+1344, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB14_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	build_string
	xorl	%edx, %edx
	movq	globals+1344, %rsi
	movq	%rax, %rdi
	callq	code_convert_string_norecord
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB14_5
.LBB14_4:                               # %cond.false
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	build_string
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB14_5:                               # %cond.end
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -8(%rbp)
	jmp	.LBB14_1
.LBB14_6:                               # %while.end
	callq	endgrent
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	Fsystem_groups, .Lfunc_end14-Fsystem_groups
	.cfi_endproc

	.globl	syms_of_dired
	.align	16, 0x90
	.type	syms_of_dired,@function
syms_of_dired:                          # @syms_of_dired
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
	movabsq	$Sdirectory_files, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sdirectory_files_and_attributes, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfile_name_completion, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfile_name_all_completions, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfile_attributes, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sfile_attributes_lessp, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Ssystem_users, %rdi
	callq	defsubr
	movabsq	$Ssystem_groups, %rdi
	callq	defsubr
# BB#1:                                 # %do.body
	movabsq	$syms_of_dired.o_fwd, %rdi
	movabsq	$.L.str, %rsi
	movabsq	$globals, %rax
	addq	$344, %rax              # imm = 0x158
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#2:                                 # %do.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+344
	popq	%rbp
	retq
.Lfunc_end15:
	.size	syms_of_dired, .Lfunc_end15-syms_of_dired
	.cfi_endproc

	.align	16, 0x90
	.type	scmp,@function
scmp:                                   # @scmp
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
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	testb	$1, globals+3368
	je	.LBB16_7
# BB#1:                                 # %if.then
	jmp	.LBB16_2
.LBB16_2:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -40(%rbp)
	movb	%cl, -41(%rbp)          # 1-byte Spill
	je	.LBB16_4
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB16_2 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rax), %edi
	callq	downcase
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rcx), %edi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	downcase
	movl	-48(%rbp), %edi         # 4-byte Reload
	cmpl	%eax, %edi
	sete	%sil
	movb	%sil, -41(%rbp)         # 1-byte Spill
.LBB16_4:                               # %land.end
                                        #   in Loop: Header=BB16_2 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB16_5
	jmp	.LBB16_6
.LBB16_5:                               # %while.body
                                        #   in Loop: Header=BB16_2 Depth=1
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB16_2
.LBB16_6:                               # %while.end
	jmp	.LBB16_13
.LBB16_7:                               # %if.else
	jmp	.LBB16_8
.LBB16_8:                               # %while.cond.6
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -40(%rbp)
	movb	%cl, -49(%rbp)          # 1-byte Spill
	je	.LBB16_10
# BB#9:                                 # %land.rhs.8
                                        #   in Loop: Header=BB16_8 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movsbl	(%rax), %edx
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movsbl	(%rax), %esi
	cmpl	%esi, %edx
	sete	%dil
	movb	%dil, -49(%rbp)         # 1-byte Spill
.LBB16_10:                              # %land.end.15
                                        #   in Loop: Header=BB16_8 Depth=1
	movb	-49(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB16_11
	jmp	.LBB16_12
.LBB16_11:                              # %while.body.16
                                        #   in Loop: Header=BB16_8 Depth=1
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB16_8
.LBB16_12:                              # %while.end.18
	jmp	.LBB16_13
.LBB16_13:                              # %if.end
	cmpq	$0, -40(%rbp)
	jne	.LBB16_15
# BB#14:                                # %if.then.21
	movq	$-1, -8(%rbp)
	jmp	.LBB16_16
.LBB16_15:                              # %if.else.22
	movq	-32(%rbp), %rax
	subq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB16_16:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	scmp, .Lfunc_end16-scmp
	.cfi_endproc

	.align	16, 0x90
	.type	file_name_completion_stat,@function
file_name_completion_stat:              # @file_name_completion_stat
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
	subq	$48, %rsp
	movl	$256, %ecx              # imm = 0x100
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rdx
	addq	$19, %rdx
	movq	-24(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rdx, %rsi
	movq	-40(%rbp), %rdx         # 8-byte Reload
	callq	fstatat
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.LBB17_3
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movl	24(%rax), %ecx
	andl	$61440, %ecx            # imm = 0xF000
	cmpl	$40960, %ecx            # imm = 0xA000
	jne	.LBB17_3
# BB#2:                                 # %if.then
	xorl	%ecx, %ecx
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rax
	addq	$19, %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	callq	fstatat
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB17_3:                               # %if.end
	movl	-28(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	file_name_completion_stat, .Lfunc_end17-file_name_completion_stat
	.cfi_endproc

	.align	16, 0x90
	.type	stat_uname,@function
stat_uname:                             # @stat_uname
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	28(%rdi), %edi
	callq	getpwuid
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB18_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB18_3
.LBB18_2:                               # %if.else
	movq	$0, -8(%rbp)
.LBB18_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	stat_uname, .Lfunc_end18-stat_uname
	.cfi_endproc

	.align	16, 0x90
	.type	stat_gname,@function
stat_gname:                             # @stat_gname
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
	movl	32(%rdi), %edi
	callq	getgrgid
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB19_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB19_3
.LBB19_2:                               # %if.else
	movq	$0, -8(%rbp)
.LBB19_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	stat_gname, .Lfunc_end19-stat_gname
	.cfi_endproc

	.type	Ssystem_users,@object   # @Ssystem_users
	.data
	.align	8
Ssystem_users:
	.quad	167772160               # 0xa000000
	.quad	Fsystem_users
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.11
	.quad	0
	.quad	0
	.size	Ssystem_users, 48

	.type	Ssystem_groups,@object  # @Ssystem_groups
	.align	8
Ssystem_groups:
	.quad	167772160               # 0xa000000
	.quad	Fsystem_groups
	.short	0                       # 0x0
	.short	0                       # 0x0
	.zero	4
	.quad	.L.str.12
	.quad	0
	.quad	0
	.size	Ssystem_groups, 48

	.type	syms_of_dired.o_fwd,@object # @syms_of_dired.o_fwd
	.local	syms_of_dired.o_fwd
	.comm	syms_of_dired.o_fwd,16,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"completion-ignored-extensions"
	.size	.L.str, 30

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Opening directory"
	.size	.L.str.1, 18

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Reading directory"
	.size	.L.str.2, 18

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"."
	.size	.L.str.3, 2

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	".."
	.size	.L.str.4, 3

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"directory-files"
	.size	.L.str.5, 16

	.type	Sdirectory_files,@object # @Sdirectory_files
	.data
	.align	8
Sdirectory_files:
	.quad	167772160               # 0xa000000
	.quad	Fdirectory_files
	.short	1                       # 0x1
	.short	4                       # 0x4
	.zero	4
	.quad	.L.str.5
	.quad	0
	.quad	0
	.size	Sdirectory_files, 48

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"directory-files-and-attributes"
	.size	.L.str.6, 31

	.type	Sdirectory_files_and_attributes,@object # @Sdirectory_files_and_attributes
	.data
	.align	8
Sdirectory_files_and_attributes:
	.quad	167772160               # 0xa000000
	.quad	Fdirectory_files_and_attributes
	.short	1                       # 0x1
	.short	5                       # 0x5
	.zero	4
	.quad	.L.str.6
	.quad	0
	.quad	0
	.size	Sdirectory_files_and_attributes, 48

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"file-name-completion"
	.size	.L.str.7, 21

	.type	Sfile_name_completion,@object # @Sfile_name_completion
	.data
	.align	8
Sfile_name_completion:
	.quad	167772160               # 0xa000000
	.quad	Ffile_name_completion
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.7
	.quad	0
	.quad	0
	.size	Sfile_name_completion, 48

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"file-name-all-completions"
	.size	.L.str.8, 26

	.type	Sfile_name_all_completions,@object # @Sfile_name_all_completions
	.data
	.align	8
Sfile_name_all_completions:
	.quad	167772160               # 0xa000000
	.quad	Ffile_name_all_completions
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.8
	.quad	0
	.quad	0
	.size	Sfile_name_all_completions, 48

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"file-attributes"
	.size	.L.str.9, 16

	.type	Sfile_attributes,@object # @Sfile_attributes
	.data
	.align	8
Sfile_attributes:
	.quad	167772160               # 0xa000000
	.quad	Ffile_attributes
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.9
	.quad	0
	.quad	0
	.size	Sfile_attributes, 48

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"file-attributes-lessp"
	.size	.L.str.10, 22

	.type	Sfile_attributes_lessp,@object # @Sfile_attributes_lessp
	.data
	.align	8
Sfile_attributes_lessp:
	.quad	167772160               # 0xa000000
	.quad	Ffile_attributes_lessp
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.10
	.quad	0
	.quad	0
	.size	Sfile_attributes_lessp, 48

	.type	.L.str.11,@object       # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"system-users"
	.size	.L.str.11, 13

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"system-groups"
	.size	.L.str.12, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
