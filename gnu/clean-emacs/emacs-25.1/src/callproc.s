	.text
	.file	"callproc.bc"
	.globl	encode_current_directory
	.align	16, 0x90
	.type	encode_current_directory,@function
encode_current_directory:               # @encode_current_directory
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
	movq	current_buffer, %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	Funhandled_file_name_directory
	xorl	%edi, %edi
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movabsq	$.L.str, %rdi
	callq	build_string
	movq	%rax, -8(%rbp)
.LBB0_2:                                # %if.end
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	expand_and_dir_to_file
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	Ffile_accessible_directory_p
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB0_4
# BB#3:                                 # %if.then.8
	movabsq	$.L.str.1, %rdi
	movq	current_buffer, %rax
	movq	24(%rax), %rsi
	callq	report_file_error
.LBB0_4:                                # %if.end.10
	movq	-8(%rbp), %rdi
	callq	remove_slash_colon
	movq	%rax, %rdi
	callq	encode_file_name
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	file_accessible_directory_p
	testb	$1, %al
	jne	.LBB0_6
# BB#5:                                 # %if.then.14
	movabsq	$.L.str.1, %rdi
	movq	current_buffer, %rax
	movq	24(%rax), %rsi
	callq	report_file_error
.LBB0_6:                                # %if.end.16
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	encode_current_directory, .Lfunc_end0-encode_current_directory
	.cfi_endproc

	.globl	record_kill_process
	.align	16, 0x90
	.type	record_kill_process,@function
record_kill_process:                    # @record_kill_process
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
	leaq	-144(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, %rdi
	callq	block_child_signal
	movq	-8(%rbp), %rax
	movb	224(%rax), %cl
	shrb	$6, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	160(%rax), %edi
	movq	-16(%rbp), %rsi
	callq	record_deleted_pid
	movl	$9, %esi
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movb	224(%rax), %cl
	andb	$-65, %cl
	movb	%cl, 224(%rax)
	movq	-8(%rbp), %rax
	subl	160(%rax), %edi
	callq	kill
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB1_2:                                # %if.end
	leaq	-144(%rbp), %rdi
	callq	unblock_child_signal
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	record_kill_process, .Lfunc_end1-record_kill_process
	.cfi_endproc

	.globl	Fcall_process
	.align	16, 0x90
	.type	Fcall_process,@function
Fcall_process:                          # @Fcall_process
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	SPECPDL_INDEX
	movq	%rax, -48(%rbp)
	cmpq	$2, -8(%rbp)
	jl	.LBB2_3
# BB#1:                                 # %land.lhs.true
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB2_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	current_buffer, %rax
	movq	24(%rax), %rsi
	callq	Fexpand_file_name
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	CHECK_STRING
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	movabsq	$.L.str.2, %rdi
	callq	build_string
	movq	%rax, -24(%rbp)
.LBB2_4:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	SSDATA
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	emacs_open
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jge	.LBB2_6
# BB#5:                                 # %if.then.10
	movabsq	$.L.str.3, %rdi
	movq	-24(%rbp), %rsi
	callq	report_file_error
.LBB2_6:                                # %if.end.11
	movabsq	$close_file_unwind, %rdi
	movl	-36(%rbp), %esi
	callq	record_unwind_protect_int
	movq	$-1, %rcx
	movq	-48(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rsi
	movl	-36(%rbp), %edx
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	call_process
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	Fcall_process, .Lfunc_end2-Fcall_process
	.cfi_endproc

	.align	16, 0x90
	.type	call_process,@function
call_process:                           # @call_process
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
	subq	$68464, %rsp            # imm = 0x10B70
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	callq	SPECPDL_INDEX
	movq	%rax, -104(%rbp)
	movq	$16384, -112(%rbp)      # imm = 0x4000
	callq	SPECPDL_INDEX
	xorl	%edi, %edi
	movq	%rax, -120(%rbp)
	movb	$0, -121(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -152(%rbp)
	cmpl	$0, synch_process_pid
	je	.LBB3_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.48, %rdi
	movb	$0, %al
	callq	error
.LBB3_2:                                # %if.end
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -1536(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	CHECK_STRING
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -144(%rbp)
	cmpq	$5, -16(%rbp)
	jl	.LBB3_34
# BB#3:                                 # %if.then.5
	movb	$0, -1561(%rbp)
	movq	$4, -96(%rbp)
.LBB3_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-96(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jge	.LBB3_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB3_4 Depth=1
	movq	-96(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	CHECK_STRING
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB3_4 Depth=1
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB3_4
.LBB3_7:                                # %for.end
	movq	$4, -96(%rbp)
.LBB3_8:                                # %for.cond.8
                                        # =>This Inner Loop Header: Depth=1
	movq	-96(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jge	.LBB3_13
# BB#9:                                 # %for.body.10
                                        #   in Loop: Header=BB3_8 Depth=1
	movq	-96(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB3_10
	jmp	.LBB3_11
.LBB3_10:                               # %if.then.13
                                        #   in Loop: Header=BB3_8 Depth=1
	movb	$1, -1561(%rbp)
.LBB3_11:                               # %if.end.14
                                        #   in Loop: Header=BB3_8 Depth=1
	jmp	.LBB3_12
.LBB3_12:                               # %for.inc.15
                                        #   in Loop: Header=BB3_8 Depth=1
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB3_8
.LBB3_13:                               # %for.end.17
	xorl	%edi, %edi
	movq	globals+288, %rax
	movq	%rax, -67984(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-67984(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB3_15
# BB#14:                                # %if.then.20
	movq	globals+288, %rax
	movq	%rax, -1552(%rbp)
	jmp	.LBB3_31
.LBB3_15:                               # %if.else
	testb	$1, -1561(%rbp)
	jne	.LBB3_17
# BB#16:                                # %if.then.22
	movl	$788, %edi              # imm = 0x314
	callq	builtin_lisp_symbol
	movq	%rax, -1552(%rbp)
	jmp	.LBB3_30
.LBB3_17:                               # %if.else.24
	jmp	.LBB3_18
.LBB3_18:                               # %do.body
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	-112(%rbp), %rcx
	shrq	$3, %rcx
	shrq	$0, %rcx
	cmpq	%rcx, %rax
	ja	.LBB3_20
# BB#19:                                # %if.then.27
	movq	-16(%rbp), %rax
	leaq	8(,%rax,8), %rax
	movq	-112(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -112(%rbp)
	movq	-16(%rbp), %rax
	leaq	23(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -1560(%rbp)
	jmp	.LBB3_21
.LBB3_20:                               # %if.else.31
	movl	$8, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, %rdi
	callq	xnmalloc
	movabsq	$xfree, %rdi
	movq	%rax, -1560(%rbp)
	movb	$1, -121(%rbp)
	movq	-1560(%rbp), %rax
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
.LBB3_21:                               # %if.end.34
	jmp	.LBB3_22
.LBB3_22:                               # %do.end
	movl	$234, %edi
	callq	builtin_lisp_symbol
	movq	-1560(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, -96(%rbp)
.LBB3_23:                               # %for.cond.37
                                        # =>This Inner Loop Header: Depth=1
	movq	-96(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jge	.LBB3_26
# BB#24:                                # %for.body.39
                                        #   in Loop: Header=BB3_23 Depth=1
	movq	-96(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-96(%rbp), %rcx
	movq	-1560(%rbp), %rdx
	movq	%rax, 8(%rdx,%rcx,8)
# BB#25:                                # %for.inc.43
                                        #   in Loop: Header=BB3_23 Depth=1
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB3_23
.LBB3_26:                               # %for.end.45
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	-1560(%rbp), %rsi
	movq	%rax, %rdi
	callq	Ffind_operation_coding_system
	movq	%rax, -1536(%rbp)
	movq	-1536(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB3_28
# BB#27:                                # %cond.true
	movq	-1536(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -67992(%rbp)      # 8-byte Spill
	jmp	.LBB3_29
.LBB3_28:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -67992(%rbp)      # 8-byte Spill
.LBB3_29:                               # %cond.end
	movq	-67992(%rbp), %rax      # 8-byte Reload
	movq	%rax, -1552(%rbp)
.LBB3_30:                               # %if.end.52
	jmp	.LBB3_31
.LBB3_31:                               # %if.end.53
	movq	-1552(%rbp), %rdi
	callq	complement_process_encoding_system
	movq	%rax, -1552(%rbp)
	movq	-1552(%rbp), %rdi
	callq	Fcheck_coding_system
	leaq	-1528(%rbp), %rsi
	movq	%rax, %rdi
	callq	setup_coding_system
	movq	Vcoding_system_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-1528(%rbp), %rsi
	movq	%rax, %rdi
	callq	HASH_VALUE
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	AREF
	movl	$5, %ecx
	movl	%ecx, %esi
	movq	%rax, -1576(%rbp)
	movq	-1576(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -68000(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68000(%rbp), %rsi      # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB3_33
# BB#32:                                # %if.then.63
	movq	-1552(%rbp), %rdi
	callq	raw_text_coding_system
	leaq	-1528(%rbp), %rsi
	movq	%rax, -1552(%rbp)
	movq	-1552(%rbp), %rdi
	callq	setup_coding_system
.LBB3_33:                               # %if.end.65
	jmp	.LBB3_34
.LBB3_34:                               # %if.end.66
	cmpq	$3, -16(%rbp)
	jge	.LBB3_36
# BB#35:                                # %if.then.69
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
	jmp	.LBB3_55
.LBB3_36:                               # %if.else.71
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB3_45
# BB#37:                                # %land.lhs.true
	movl	$41, %edi
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -68008(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68008(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB3_45
# BB#38:                                # %if.then.81
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB3_44
# BB#39:                                # %if.then.89
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -1584(%rbp)
	movq	-1584(%rbp), %rax
	movq	%rax, -68016(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68016(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB3_41
# BB#40:                                # %lor.lhs.false
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	cmpq	-1584(%rbp), %rax
	jne	.LBB3_42
.LBB3_41:                               # %if.then.101
	movq	-1584(%rbp), %rax
	movq	%rax, -144(%rbp)
	jmp	.LBB3_43
.LBB3_42:                               # %if.else.102
	xorl	%edi, %edi
	movq	-1584(%rbp), %rax
	movq	%rax, -68024(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68024(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	Fexpand_file_name
	movq	%rax, -144(%rbp)
.LBB3_43:                               # %if.end.105
	jmp	.LBB3_44
.LBB3_44:                               # %if.end.106
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB3_45:                               # %if.end.109
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB3_48
# BB#46:                                # %land.lhs.true.114
	movl	$41, %edi
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -68032(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68032(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB3_48
# BB#47:                                # %if.then.120
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	movq	current_buffer, %rax
	movq	24(%rax), %rsi
	callq	Fexpand_file_name
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rdi
	callq	CHECK_STRING
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
.LBB3_48:                               # %if.end.128
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -68040(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68040(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB3_54
# BB#49:                                # %lor.lhs.false.132
	movl	$901, %edi              # imm = 0x385
	movq	-48(%rbp), %rax
	movq	%rax, -68048(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68048(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB3_54
# BB#50:                                # %lor.lhs.false.136
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	je	.LBB3_54
# BB#51:                                # %if.then.142
	movq	-48(%rbp), %rax
	movq	%rax, -1592(%rbp)
	movq	-48(%rbp), %rdi
	callq	Fget_buffer_create
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -68056(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68056(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB3_53
# BB#52:                                # %if.then.147
	movq	-1592(%rbp), %rdi
	callq	CHECK_BUFFER
.LBB3_53:                               # %if.end.148
	movq	-48(%rbp), %rdi
	callq	CHECK_BUFFER
.LBB3_54:                               # %if.end.149
	jmp	.LBB3_55
.LBB3_55:                               # %if.end.150
	callq	encode_current_directory
	movq	%rax, -56(%rbp)
	movq	-144(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB3_56
	jmp	.LBB3_57
.LBB3_56:                               # %if.then.153
	movq	-144(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -144(%rbp)
.LBB3_57:                               # %if.end.155
	movq	-152(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB3_58
	jmp	.LBB3_59
.LBB3_58:                               # %if.then.157
	movq	-152(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -152(%rbp)
.LBB3_59:                               # %if.end.159
	xorl	%edi, %edi
	movq	globals+688, %rax
	movq	%rax, -68064(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movb	%dil, %cl
	movq	-68064(%rbp), %rdx      # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -68065(%rbp)       # 1-byte Spill
	jne	.LBB3_63
# BB#60:                                # %land.lhs.true.163
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, noninteractive
	movb	%cl, -68065(%rbp)       # 1-byte Spill
	jne	.LBB3_63
# BB#61:                                # %land.lhs.true.165
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$4, -16(%rbp)
	movb	%cl, -68065(%rbp)       # 1-byte Spill
	jl	.LBB3_63
# BB#62:                                # %land.rhs
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -68080(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68080(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	movb	%dl, -68065(%rbp)       # 1-byte Spill
.LBB3_63:                               # %land.end
	movb	-68065(%rbp), %al       # 1-byte Reload
	andb	$1, %al
	movb	%al, -65(%rbp)
	movq	$0, -96(%rbp)
.LBB3_64:                               # %for.cond.172
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$3, -96(%rbp)
	jge	.LBB3_67
# BB#65:                                # %for.body.175
                                        #   in Loop: Header=BB3_64 Depth=1
	movq	-96(%rbp), %rax
	movl	$-1, -84(%rbp,%rax,4)
# BB#66:                                # %for.inc.177
                                        #   in Loop: Header=BB3_64 Depth=1
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB3_64
.LBB3_67:                               # %for.end.179
	movabsq	$call_process_kill, %rdi
	leaq	-84(%rbp), %rax
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
	leaq	-64(%rbp), %rcx
	movl	$6, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	globals+672, %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	movq	globals+680, %rdx
	callq	openp
	movl	%eax, -1596(%rbp)
	cmpl	$0, -1596(%rbp)
	jge	.LBB3_69
# BB#68:                                # %if.then.184
	movabsq	$.L.str.49, %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	callq	report_file_error
.LBB3_69:                               # %if.end.186
	movq	-64(%rbp), %rdi
	callq	remove_slash_colon
	movq	%rax, -64(%rbp)
# BB#70:                                # %do.body.188
	cmpq	$4, -16(%rbp)
	jge	.LBB3_72
# BB#71:                                # %cond.true.191
	movl	$2, %eax
	movl	%eax, %ecx
	movq	%rcx, -68088(%rbp)      # 8-byte Spill
	jmp	.LBB3_73
.LBB3_72:                               # %cond.false.192
	movq	-16(%rbp), %rax
	subq	$2, %rax
	movq	%rax, -68088(%rbp)      # 8-byte Spill
.LBB3_73:                               # %cond.end.194
	movq	-68088(%rbp), %rax      # 8-byte Reload
	movq	-112(%rbp), %rcx
	shrq	$3, %rcx
	shrq	$0, %rcx
	cmpq	%rcx, %rax
	ja	.LBB3_81
# BB#74:                                # %if.then.200
	cmpq	$4, -16(%rbp)
	jge	.LBB3_76
# BB#75:                                # %cond.true.203
	movl	$2, %eax
	movl	%eax, %ecx
	movq	%rcx, -68096(%rbp)      # 8-byte Spill
	jmp	.LBB3_77
.LBB3_76:                               # %cond.false.204
	movq	-16(%rbp), %rax
	subq	$2, %rax
	movq	%rax, -68096(%rbp)      # 8-byte Spill
.LBB3_77:                               # %cond.end.206
	movq	-68096(%rbp), %rax      # 8-byte Reload
	shlq	$3, %rax
	movq	-112(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -112(%rbp)
	cmpq	$4, -16(%rbp)
	jge	.LBB3_79
# BB#78:                                # %cond.true.212
	movl	$2, %eax
	movl	%eax, %ecx
	movq	%rcx, -68104(%rbp)      # 8-byte Spill
	jmp	.LBB3_80
.LBB3_79:                               # %cond.false.213
	movq	-16(%rbp), %rax
	subq	$2, %rax
	movq	%rax, -68104(%rbp)      # 8-byte Spill
.LBB3_80:                               # %cond.end.215
	movq	-68104(%rbp), %rax      # 8-byte Reload
	leaq	15(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -136(%rbp)
	jmp	.LBB3_85
.LBB3_81:                               # %if.else.218
	cmpq	$4, -16(%rbp)
	jge	.LBB3_83
# BB#82:                                # %cond.true.221
	movl	$2, %eax
	movl	%eax, %ecx
	movq	%rcx, -68112(%rbp)      # 8-byte Spill
	jmp	.LBB3_84
.LBB3_83:                               # %cond.false.222
	movq	-16(%rbp), %rax
	subq	$2, %rax
	movq	%rax, -68112(%rbp)      # 8-byte Spill
.LBB3_84:                               # %cond.end.224
	movq	-68112(%rbp), %rax      # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	xnmalloc
	movabsq	$xfree, %rdi
	movq	%rax, -136(%rbp)
	movb	$1, -121(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
.LBB3_85:                               # %if.end.227
	jmp	.LBB3_86
.LBB3_86:                               # %do.end.228
	cmpq	$4, -16(%rbp)
	jle	.LBB3_103
# BB#87:                                # %if.then.231
	movl	-1520(%rbp), %eax
	andl	$-1048577, %eax         # imm = 0xFFFFFFFFFFEFFFFF
	movl	%eax, -1520(%rbp)
	movq	$4, -1608(%rbp)
.LBB3_88:                               # %for.cond.233
                                        # =>This Inner Loop Header: Depth=1
	movq	-1608(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jge	.LBB3_98
# BB#89:                                # %for.body.236
                                        #   in Loop: Header=BB3_88 Depth=1
	movq	-1608(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	STRING_MULTIBYTE
	andb	$1, %al
	movzbl	%al, %edx
	movl	-1520(%rbp), %esi
	shll	$19, %edx
	andl	$-524289, %esi          # imm = 0xFFFFFFFFFFF7FFFF
	orl	%edx, %esi
	movl	%esi, -1520(%rbp)
	movl	-1520(%rbp), %edx
	shrl	$19, %edx
	andl	$1, %edx
	testl	$1, %edx
	jne	.LBB3_92
# BB#90:                                # %lor.lhs.false.246
                                        #   in Loop: Header=BB3_88 Depth=1
	movl	-1520(%rbp), %eax
	andl	$16383, %eax            # imm = 0x3FFF
	andl	$2048, %eax             # imm = 0x800
	cmpl	$0, %eax
	jne	.LBB3_92
# BB#91:                                # %lor.lhs.false.251
                                        #   in Loop: Header=BB3_88 Depth=1
	movl	-1520(%rbp), %eax
	shrl	$14, %eax
	andl	$31, %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB3_96
.LBB3_92:                               # %if.then.257
                                        #   in Loop: Header=BB3_88 Depth=1
	movq	-1608(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	STRING_MULTIBYTE
	testb	$1, %al
	jne	.LBB3_93
	jmp	.LBB3_94
.LBB3_93:                               # %cond.true.261
                                        #   in Loop: Header=BB3_88 Depth=1
	movq	-1608(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	movq	-1608(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	%rsi, -68120(%rbp)      # 8-byte Spill
	callq	SCHARS
	movq	-1608(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	(%rsi,%rcx,8), %rdi
	movq	%rax, -68128(%rbp)      # 8-byte Spill
	callq	SBYTES
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -68136(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	leaq	-1528(%rbp), %rdi
	xorl	%edx, %edx
	movl	%edx, %ecx
	subq	$16, %rsp
	movq	-68120(%rbp), %rsi      # 8-byte Reload
	movq	%rcx, %rdx
	movq	-68128(%rbp), %r8       # 8-byte Reload
	movq	-68136(%rbp), %r9       # 8-byte Reload
	movq	%rax, (%rsp)
	callq	encode_coding_object
	addq	$16, %rsp
	movq	-1040(%rbp), %rax
	movq	%rax, -68144(%rbp)      # 8-byte Spill
	jmp	.LBB3_95
.LBB3_94:                               # %cond.false.268
                                        #   in Loop: Header=BB3_88 Depth=1
	movq	-1608(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -68144(%rbp)      # 8-byte Spill
.LBB3_95:                               # %cond.end.270
                                        #   in Loop: Header=BB3_88 Depth=1
	movq	-68144(%rbp), %rax      # 8-byte Reload
	movq	-1608(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
.LBB3_96:                               # %if.end.273
                                        #   in Loop: Header=BB3_88 Depth=1
	jmp	.LBB3_97
.LBB3_97:                               # %for.inc.274
                                        #   in Loop: Header=BB3_88 Depth=1
	movq	-1608(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1608(%rbp)
	jmp	.LBB3_88
.LBB3_98:                               # %for.end.276
	movq	$4, -1608(%rbp)
.LBB3_99:                               # %for.cond.277
                                        # =>This Inner Loop Header: Depth=1
	movq	-1608(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jge	.LBB3_102
# BB#100:                               # %for.body.280
                                        #   in Loop: Header=BB3_99 Depth=1
	movq	-1608(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	SSDATA
	movq	-1608(%rbp), %rcx
	subq	$3, %rcx
	movq	-136(%rbp), %rdi
	movq	%rax, (%rdi,%rcx,8)
# BB#101:                               # %for.inc.285
                                        #   in Loop: Header=BB3_99 Depth=1
	movq	-1608(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1608(%rbp)
	jmp	.LBB3_99
.LBB3_102:                              # %for.end.287
	movq	-1608(%rbp), %rax
	subq	$3, %rax
	movq	-136(%rbp), %rcx
	movq	$0, (%rcx,%rax,8)
	jmp	.LBB3_104
.LBB3_103:                              # %if.else.290
	movq	-136(%rbp), %rax
	movq	$0, 8(%rax)
.LBB3_104:                              # %if.end.292
	movq	-64(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	SSDATA
	movb	$1, %cl
	movq	-136(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edx
	andl	$-5, %edx
	cmpl	$2, %edx
	movb	%cl, -68145(%rbp)       # 1-byte Spill
	je	.LBB3_108
# BB#105:                               # %lor.rhs
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -68160(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movb	%dil, %cl
	movq	-68160(%rbp), %rdx      # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -68161(%rbp)       # 1-byte Spill
	jne	.LBB3_107
# BB#106:                               # %land.rhs.304
	xorl	%edi, %edi
	movq	-152(%rbp), %rax
	movq	%rax, -68176(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68176(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	movb	%dl, -68161(%rbp)       # 1-byte Spill
.LBB3_107:                              # %land.end.308
	movb	-68161(%rbp), %al       # 1-byte Reload
	movb	%al, -68145(%rbp)       # 1-byte Spill
.LBB3_108:                              # %lor.end
	movb	-68145(%rbp), %al       # 1-byte Reload
	andb	$1, %al
	movb	%al, -1537(%rbp)
	testb	$1, -1537(%rbp)
	je	.LBB3_112
# BB#109:                               # %if.then.311
	movabsq	$.L.str.2, %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	emacs_open
	movl	%eax, -292(%rbp)
	cmpl	$0, -292(%rbp)
	jge	.LBB3_111
# BB#110:                               # %if.then.315
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$.L.str.4, %rdi
	movq	%rax, %rsi
	callq	report_file_error
.LBB3_111:                              # %if.end.317
	jmp	.LBB3_120
.LBB3_112:                              # %if.else.318
	movq	-152(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB3_113
	jmp	.LBB3_116
.LBB3_113:                              # %if.then.320
	movq	-152(%rbp), %rdi
	callq	SSDATA
	movl	$577, %esi              # imm = 0x241
	movl	$438, %edx              # imm = 0x1B6
	movq	%rax, %rdi
	callq	emacs_open
	movl	%eax, -292(%rbp)
	cmpl	$0, -292(%rbp)
	jge	.LBB3_115
# BB#114:                               # %if.then.325
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -1612(%rbp)
	movq	-152(%rbp), %rdi
	callq	decode_file_name
	movabsq	$.L.str.50, %rdi
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rsi
	movl	-1612(%rbp), %edx
	callq	report_file_errno
.LBB3_115:                              # %if.end.328
	jmp	.LBB3_119
.LBB3_116:                              # %if.else.329
	leaq	-1620(%rbp), %rdi
	callq	emacs_pipe
	cmpl	$0, %eax
	je	.LBB3_118
# BB#117:                               # %if.then.334
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$.L.str.51, %rdi
	movq	%rax, %rsi
	callq	report_file_error
.LBB3_118:                              # %if.end.336
	movl	-1620(%rbp), %eax
	movl	%eax, -76(%rbp)
	movl	-1616(%rbp), %eax
	movl	%eax, -292(%rbp)
.LBB3_119:                              # %if.end.340
	jmp	.LBB3_120
.LBB3_120:                              # %if.end.341
	movl	-292(%rbp), %eax
	movl	%eax, -84(%rbp)
	movl	-292(%rbp), %eax
	movl	%eax, -296(%rbp)
	movq	-144(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB3_123
# BB#121:                               # %lor.lhs.false.345
	xorl	%edi, %edi
	movq	-144(%rbp), %rax
	movq	%rax, -68184(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68184(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB3_132
# BB#122:                               # %land.lhs.true.349
	testb	$1, -1537(%rbp)
	jne	.LBB3_132
.LBB3_123:                              # %if.then.351
	movq	-144(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB3_124
	jmp	.LBB3_125
.LBB3_124:                              # %cond.true.354
	movq	-144(%rbp), %rdi
	callq	SSDATA
	movq	%rax, -68192(%rbp)      # 8-byte Spill
	jmp	.LBB3_126
.LBB3_125:                              # %cond.false.356
	movabsq	$.L.str.2, %rax
	movq	%rax, -68192(%rbp)      # 8-byte Spill
	jmp	.LBB3_126
.LBB3_126:                              # %cond.end.357
	movq	-68192(%rbp), %rax      # 8-byte Reload
	movl	$577, %esi              # imm = 0x241
	movl	$438, %edx              # imm = 0x1B6
	movq	%rax, %rdi
	callq	emacs_open
	movl	%eax, -296(%rbp)
	cmpl	$0, -296(%rbp)
	jge	.LBB3_131
# BB#127:                               # %if.then.362
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -1624(%rbp)
	movq	-144(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB3_128
	jmp	.LBB3_129
.LBB3_128:                              # %cond.true.367
	movq	-144(%rbp), %rdi
	callq	decode_file_name
	movq	%rax, -68200(%rbp)      # 8-byte Spill
	jmp	.LBB3_130
.LBB3_129:                              # %cond.false.369
	movabsq	$.L.str.2, %rdi
	callq	build_string
	movq	%rax, -68200(%rbp)      # 8-byte Spill
.LBB3_130:                              # %cond.end.371
	movq	-68200(%rbp), %rax      # 8-byte Reload
	movabsq	$.L.str.52, %rdi
	movl	-1624(%rbp), %edx
	movq	%rax, %rsi
	callq	report_file_errno
.LBB3_131:                              # %if.end.373
	movl	-296(%rbp), %eax
	movl	%eax, -80(%rbp)
.LBB3_132:                              # %if.end.375
	callq	Fcurrent_buffer
	movabsq	$call_process_cleanup, %rdi
	movq	%rax, %rsi
	callq	record_unwind_protect
	callq	block_input
	leaq	-280(%rbp), %rdi
	callq	block_child_signal
	movq	-48(%rbp), %rax
	movq	%rax, -1632(%rbp)
	movq	-1536(%rbp), %rax
	movq	%rax, -1640(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -1648(%rbp)
	movb	-65(%rbp), %cl
	andb	$1, %cl
	movb	%cl, -1649(%rbp)
	movb	-121(%rbp), %cl
	andb	$1, %cl
	movb	%cl, -1650(%rbp)
	movl	-296(%rbp), %edx
	movl	%edx, -1656(%rbp)
	movl	-28(%rbp), %edx
	movl	%edx, -1660(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -1672(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -1680(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -1688(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -1696(%rbp)
	movq	$0, -96(%rbp)
.LBB3_133:                              # %for.cond.381
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$3, -96(%rbp)
	jge	.LBB3_136
# BB#134:                               # %for.body.384
                                        #   in Loop: Header=BB3_133 Depth=1
	movq	-96(%rbp), %rax
	movl	-84(%rbp,%rax,4), %ecx
	movq	-96(%rbp), %rax
	movl	%ecx, -1708(%rbp,%rax,4)
# BB#135:                               # %for.inc.387
                                        #   in Loop: Header=BB3_133 Depth=1
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB3_133
.LBB3_136:                              # %for.end.389
	callq	vfork
	movl	%eax, -284(%rbp)
	movq	-1632(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movq	-1640(%rbp), %rcx
	movq	%rcx, -1536(%rbp)
	movq	-1648(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movb	-1649(%rbp), %dl
	andb	$1, %dl
	movb	%dl, -65(%rbp)
	movb	-1650(%rbp), %dl
	andb	$1, %dl
	movb	%dl, -121(%rbp)
	movl	-1656(%rbp), %eax
	movl	%eax, -296(%rbp)
	movl	-1660(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-1672(%rbp), %rcx
	movq	%rcx, -104(%rbp)
	movq	-1680(%rbp), %rcx
	movq	%rcx, -112(%rbp)
	movq	-1688(%rbp), %rcx
	movq	%rcx, -120(%rbp)
	movq	-1696(%rbp), %rcx
	movq	%rcx, -136(%rbp)
	movq	$0, -96(%rbp)
.LBB3_137:                              # %for.cond.395
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$3, -96(%rbp)
	jge	.LBB3_140
# BB#138:                               # %for.body.398
                                        #   in Loop: Header=BB3_137 Depth=1
	movq	-96(%rbp), %rax
	movl	-1708(%rbp,%rax,4), %ecx
	movq	-96(%rbp), %rax
	movl	%ecx, -84(%rbp,%rax,4)
# BB#139:                               # %for.inc.401
                                        #   in Loop: Header=BB3_137 Depth=1
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB3_137
.LBB3_140:                              # %for.end.403
	movl	-84(%rbp), %eax
	movl	%eax, -292(%rbp)
	cmpl	$0, -284(%rbp)
	jne	.LBB3_142
# BB#141:                               # %if.then.407
	leaq	-280(%rbp), %rdi
	callq	unblock_child_signal
	callq	setsid
	movl	$13, %edi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	%eax, -68204(%rbp)      # 4-byte Spill
	callq	signal
	movl	$27, %edi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -68216(%rbp)      # 8-byte Spill
	callq	signal
	xorl	%r8d, %r8d
	movl	-28(%rbp), %edi
	movl	-292(%rbp), %esi
	movl	-296(%rbp), %edx
	movq	-136(%rbp), %rcx
	movq	-56(%rbp), %r9
	movq	%rax, -68224(%rbp)      # 8-byte Spill
	callq	child_setup
	movl	%eax, -68228(%rbp)      # 4-byte Spill
.LBB3_142:                              # %if.end.411
	callq	__errno_location
	movl	(%rax), %ecx
	movl	%ecx, -288(%rbp)
	cmpl	$0, -284(%rbp)
	jle	.LBB3_149
# BB#143:                               # %if.then.415
	movl	-284(%rbp), %eax
	movl	%eax, synch_process_pid
	movq	-48(%rbp), %rcx
	andq	$7, %rcx
	movl	%ecx, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB3_148
# BB#144:                               # %if.then.421
	cmpq	$0, -40(%rbp)
	jge	.LBB3_146
# BB#145:                               # %if.then.424
	xorl	%edi, %edi
	movl	-284(%rbp), %eax
	movl	%eax, -68232(%rbp)      # 4-byte Spill
	callq	builtin_lisp_symbol
	movl	-68232(%rbp), %edi      # 4-byte Reload
	movq	%rax, %rsi
	callq	record_deleted_pid
	jmp	.LBB3_147
.LBB3_146:                              # %if.else.426
	movl	-284(%rbp), %edi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	callq	record_deleted_pid
	movq	-40(%rbp), %rdi
	callq	clear_unwind_protect
.LBB3_147:                              # %if.end.428
	movl	$0, synch_process_pid
.LBB3_148:                              # %if.end.429
	jmp	.LBB3_149
.LBB3_149:                              # %if.end.430
	leaq	-280(%rbp), %rdi
	callq	unblock_child_signal
	callq	unblock_input
	cmpl	$0, -284(%rbp)
	jge	.LBB3_151
# BB#150:                               # %if.then.433
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$.L.str.53, %rdi
	movl	-288(%rbp), %edx
	movq	%rax, %rsi
	callq	report_file_errno
.LBB3_151:                              # %if.end.435
	movq	$0, -96(%rbp)
.LBB3_152:                              # %for.cond.436
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$3, -96(%rbp)
	jge	.LBB3_158
# BB#153:                               # %for.body.439
                                        #   in Loop: Header=BB3_152 Depth=1
	cmpq	$2, -96(%rbp)
	je	.LBB3_156
# BB#154:                               # %land.lhs.true.442
                                        #   in Loop: Header=BB3_152 Depth=1
	xorl	%eax, %eax
	movq	-96(%rbp), %rcx
	cmpl	-84(%rbp,%rcx,4), %eax
	jg	.LBB3_156
# BB#155:                               # %if.then.446
                                        #   in Loop: Header=BB3_152 Depth=1
	movq	-96(%rbp), %rax
	movl	-84(%rbp,%rax,4), %edi
	callq	emacs_close
	movq	-96(%rbp), %rcx
	movl	$-1, -84(%rbp,%rcx,4)
	movl	%eax, -68236(%rbp)      # 4-byte Spill
.LBB3_156:                              # %if.end.450
                                        #   in Loop: Header=BB3_152 Depth=1
	jmp	.LBB3_157
.LBB3_157:                              # %for.inc.451
                                        #   in Loop: Header=BB3_152 Depth=1
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB3_152
.LBB3_158:                              # %for.end.453
	movl	-28(%rbp), %edi
	callq	emacs_close
	movq	-104(%rbp), %rcx
	subq	$1, %rcx
	movq	%rcx, %rdi
	movl	%eax, -68240(%rbp)      # 4-byte Spill
	callq	clear_unwind_protect
	movq	-48(%rbp), %rcx
	andq	$7, %rcx
	movl	%ecx, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB3_160
# BB#159:                               # %if.then.461
	xorl	%edi, %edi
	movq	-104(%rbp), %rax
	movq	%rax, -68248(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68248(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -8(%rbp)
	jmp	.LBB3_256
.LBB3_160:                              # %if.end.464
	movq	-48(%rbp), %rdi
	callq	BUFFERP
	testb	$1, %al
	jne	.LBB3_161
	jmp	.LBB3_162
.LBB3_161:                              # %if.then.466
	movq	-48(%rbp), %rdi
	callq	Fset_buffer
	movq	%rax, -68256(%rbp)      # 8-byte Spill
.LBB3_162:                              # %if.end.468
	xorl	%eax, %eax
	movl	-76(%rbp), %ecx
	movl	%ecx, -72(%rbp)
	cmpl	-72(%rbp), %eax
	jg	.LBB3_187
# BB#163:                               # %if.then.472
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -1720(%rbp)
	movq	globals+280, %rax
	movq	%rax, -68264(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68264(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB3_165
# BB#164:                               # %if.then.479
	movq	globals+280, %rax
	movq	%rax, -1720(%rbp)
	jmp	.LBB3_183
.LBB3_165:                              # %if.else.480
	movl	$901, %edi              # imm = 0x385
	movq	-1536(%rbp), %rax
	movq	%rax, -68272(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68272(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB3_176
# BB#166:                               # %if.then.484
	jmp	.LBB3_167
.LBB3_167:                              # %do.body.486
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	-112(%rbp), %rcx
	shrq	$3, %rcx
	shrq	$0, %rcx
	cmpq	%rcx, %rax
	ja	.LBB3_169
# BB#168:                               # %if.then.492
	movq	-16(%rbp), %rax
	leaq	8(,%rax,8), %rax
	movq	-112(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -112(%rbp)
	movq	-16(%rbp), %rax
	leaq	23(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -1728(%rbp)
	jmp	.LBB3_170
.LBB3_169:                              # %if.else.498
	movl	$8, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, %rdi
	callq	xnmalloc
	movabsq	$xfree, %rdi
	movq	%rax, -1728(%rbp)
	movb	$1, -121(%rbp)
	movq	-1728(%rbp), %rax
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
.LBB3_170:                              # %if.end.501
	jmp	.LBB3_171
.LBB3_171:                              # %do.end.502
	movl	$234, %edi
	callq	builtin_lisp_symbol
	movq	-1728(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$0, -1736(%rbp)
.LBB3_172:                              # %for.cond.505
                                        # =>This Inner Loop Header: Depth=1
	movq	-1736(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jge	.LBB3_175
# BB#173:                               # %for.body.508
                                        #   in Loop: Header=BB3_172 Depth=1
	movq	-1736(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-1736(%rbp), %rcx
	movq	-1728(%rbp), %rdx
	movq	%rax, 8(%rdx,%rcx,8)
# BB#174:                               # %for.inc.512
                                        #   in Loop: Header=BB3_172 Depth=1
	movq	-1736(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1736(%rbp)
	jmp	.LBB3_172
.LBB3_175:                              # %for.end.514
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	-1728(%rbp), %rsi
	movq	%rax, %rdi
	callq	Ffind_operation_coding_system
	movq	%rax, -1536(%rbp)
.LBB3_176:                              # %if.end.517
	movq	-1536(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB3_178
# BB#177:                               # %if.then.522
	movq	-1536(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -1720(%rbp)
	jmp	.LBB3_182
.LBB3_178:                              # %if.else.525
	movq	globals+496, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB3_180
# BB#179:                               # %if.then.530
	movq	globals+496, %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -1720(%rbp)
	jmp	.LBB3_181
.LBB3_180:                              # %if.else.533
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -1720(%rbp)
.LBB3_181:                              # %if.end.535
	jmp	.LBB3_182
.LBB3_182:                              # %if.end.536
	jmp	.LBB3_183
.LBB3_183:                              # %if.end.537
	movq	-1720(%rbp), %rdi
	callq	Fcheck_coding_system
	xorl	%edi, %edi
	movq	current_buffer, %rcx
	movq	312(%rcx), %rcx
	movq	%rax, -68280(%rbp)      # 8-byte Spill
	movq	%rcx, -68288(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68288(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB3_186
# BB#184:                               # %land.lhs.true.542
	xorl	%edi, %edi
	movq	-1720(%rbp), %rax
	movq	%rax, -68296(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68296(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB3_186
# BB#185:                               # %if.then.546
	movq	-1720(%rbp), %rdi
	callq	raw_text_coding_system
	movq	%rax, -1720(%rbp)
.LBB3_186:                              # %if.end.548
	leaq	-912(%rbp), %rsi
	movq	-1720(%rbp), %rdi
	callq	setup_coding_system
	xorl	%edi, %edi
	movq	current_buffer, %rsi
	movq	312(%rsi), %rsi
	movq	%rsi, -68304(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68304(%rbp), %rsi      # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %edi
	movl	-904(%rbp), %edx
	shll	$20, %edi
	andl	$-1048577, %edx         # imm = 0xFFFFFFFFFFEFFFFF
	orl	%edi, %edx
	movl	%edx, -904(%rbp)
	movl	-904(%rbp), %edx
	andl	$-524289, %edx          # imm = 0xFFFFFFFFFFF7FFFF
	movl	%edx, -904(%rbp)
.LBB3_187:                              # %if.end.564
	movb	$1, immediate_quit
# BB#188:                               # %do.body.565
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -68312(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68312(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB3_191
# BB#189:                               # %land.lhs.true.569
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -68320(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68320(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB3_191
# BB#190:                               # %if.then.573
	callq	process_quit_flag
	jmp	.LBB3_194
.LBB3_191:                              # %if.else.574
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB3_193
# BB#192:                               # %if.then.576
	callq	process_pending_signals
.LBB3_193:                              # %if.end.577
	jmp	.LBB3_194
.LBB3_194:                              # %if.end.578
	jmp	.LBB3_195
.LBB3_195:                              # %do.end.579
	xorl	%eax, %eax
	cmpl	-72(%rbp), %eax
	jg	.LBB3_247
# BB#196:                               # %if.then.582
	movl	$616, %eax              # imm = 0x268
	movl	%eax, %edx
	leaq	-912(%rbp), %rcx
	leaq	-67920(%rbp), %rsi
	movl	$16384, -67284(%rbp)    # imm = 0x4000
	movq	$0, -67296(%rbp)
	movl	$0, -67300(%rbp)
	movb	-65(%rbp), %dil
	andb	$1, %dil
	movb	%dil, -67301(%rbp)
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	memcpy
.LBB3_197:                              # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_198 Depth 2
	movl	-67300(%rbp), %eax
	movl	%eax, -67288(%rbp)
.LBB3_198:                              # %while.cond.585
                                        #   Parent Loop BB3_197 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-67288(%rbp), %eax
	movl	-67284(%rbp), %ecx
	subl	$1024, %ecx             # imm = 0x400
	cmpl	%ecx, %eax
	jge	.LBB3_206
# BB#199:                               # %while.body.589
                                        #   in Loop: Header=BB3_198 Depth=2
	leaq	-67280(%rbp), %rax
	movl	-72(%rbp), %edi
	movslq	-67288(%rbp), %rcx
	addq	%rcx, %rax
	movl	-67284(%rbp), %edx
	subl	-67288(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rax, %rsi
	callq	emacs_read
	movl	%eax, %edi
	movl	%edi, -67924(%rbp)
	cmpl	$0, -67924(%rbp)
	jge	.LBB3_201
# BB#200:                               # %if.then.597
	jmp	.LBB3_244
.LBB3_201:                              # %if.end.598
                                        #   in Loop: Header=BB3_198 Depth=2
	cmpl	$0, -67924(%rbp)
	jne	.LBB3_203
# BB#202:                               # %if.then.601
                                        #   in Loop: Header=BB3_197 Depth=1
	movl	-904(%rbp), %eax
	shrl	$14, %eax
	andl	$31, %eax
	orl	$1, %eax
	movl	-904(%rbp), %ecx
	andl	$31, %eax
	shll	$14, %eax
	andl	$-507905, %ecx          # imm = 0xFFFFFFFFFFF83FFF
	orl	%eax, %ecx
	movl	%ecx, -904(%rbp)
	jmp	.LBB3_206
.LBB3_203:                              # %if.end.610
                                        #   in Loop: Header=BB3_198 Depth=2
	movl	-67924(%rbp), %eax
	addl	-67288(%rbp), %eax
	movl	%eax, -67288(%rbp)
	movslq	-67924(%rbp), %rcx
	addq	-67296(%rbp), %rcx
	movq	%rcx, -67296(%rbp)
	testb	$1, -67301(%rbp)
	je	.LBB3_205
# BB#204:                               # %if.then.615
                                        #   in Loop: Header=BB3_197 Depth=1
	jmp	.LBB3_206
.LBB3_205:                              # %if.end.616
                                        #   in Loop: Header=BB3_198 Depth=2
	jmp	.LBB3_198
.LBB3_206:                              # %while.end
                                        #   in Loop: Header=BB3_197 Depth=1
	movb	$0, immediate_quit
	cmpl	$0, -67288(%rbp)
	jne	.LBB3_208
# BB#207:                               # %if.then.618
                                        #   in Loop: Header=BB3_197 Depth=1
	jmp	.LBB3_225
.LBB3_208:                              # %if.else.619
                                        #   in Loop: Header=BB3_197 Depth=1
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -68328(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68328(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB3_213
# BB#209:                               # %land.lhs.true.624
                                        #   in Loop: Header=BB3_197 Depth=1
	movl	-904(%rbp), %eax
	shrl	$20, %eax
	andl	$1, %eax
	testl	$1, %eax
	jne	.LBB3_213
# BB#210:                               # %lor.lhs.false.631
                                        #   in Loop: Header=BB3_197 Depth=1
	movl	-904(%rbp), %eax
	andl	$16383, %eax            # imm = 0x3FFF
	andl	$1024, %eax             # imm = 0x400
	cmpl	$0, %eax
	jne	.LBB3_213
# BB#211:                               # %lor.lhs.false.637
                                        #   in Loop: Header=BB3_197 Depth=1
	movl	-904(%rbp), %eax
	andl	$16383, %eax            # imm = 0x3FFF
	andl	$4096, %eax             # imm = 0x1000
	cmpl	$0, %eax
	jne	.LBB3_213
# BB#212:                               # %if.then.643
                                        #   in Loop: Header=BB3_197 Depth=1
	xorl	%eax, %eax
	movl	$1, %r8d
	leaq	-67280(%rbp), %rdi
	movslq	-67288(%rbp), %rsi
	movslq	-67288(%rbp), %rdx
	movl	%eax, %ecx
	movl	%eax, %r9d
	callq	insert_1_both
	jmp	.LBB3_224
.LBB3_213:                              # %if.else.647
                                        #   in Loop: Header=BB3_197 Depth=1
	callq	SPECPDL_INDEX
	movl	$5, %esi
	movq	%rax, -67944(%rbp)
	movq	current_buffer, %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	xorl	%esi, %esi
	movl	%esi, %edx
	movq	%rax, -67936(%rbp)
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	movq	current_buffer, %rdi
	movq	736(%rdi), %rdi
	addq	$0, %rdi
	movq	%rdi, -68336(%rbp)      # 8-byte Spill
	movq	%rax, %rdi
	movq	-68336(%rbp), %rsi      # 8-byte Reload
	callq	prepare_to_modify_buffer
	movl	$544, %edi              # imm = 0x220
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -68344(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68344(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
# BB#214:                               # %do.body.655
                                        #   in Loop: Header=BB3_197 Depth=1
	xorl	%edi, %edi
	leaq	-67280(%rbp), %rax
	movq	%rax, -456(%rbp)
	movslq	-67288(%rbp), %rax
	movq	%rax, -472(%rbp)
	movq	%rax, -480(%rbp)
	callq	builtin_lisp_symbol
	leaq	-912(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movslq	-67288(%rbp), %r8
	movslq	-67288(%rbp), %r9
	movq	-67936(%rbp), %rsi
	subq	$16, %rsp
	movq	%rsi, -68352(%rbp)      # 8-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -68360(%rbp)      # 8-byte Spill
	movq	-68360(%rbp), %rcx      # 8-byte Reload
	movq	-68352(%rbp), %rax      # 8-byte Reload
	movq	%rax, (%rsp)
	callq	decode_coding_object
	addq	$16, %rsp
# BB#215:                               # %do.end.661
                                        #   in Loop: Header=BB3_197 Depth=1
	xorl	%edi, %edi
	movq	-67944(%rbp), %rax
	movq	%rax, -68368(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68368(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	testb	$1, -67301(%rbp)
	movq	%rax, -68376(%rbp)      # 8-byte Spill
	je	.LBB3_221
# BB#216:                               # %land.lhs.true.666
                                        #   in Loop: Header=BB3_197 Depth=1
	movl	-67912(%rbp), %eax
	andl	$16383, %eax            # imm = 0x3FFF
	andl	$4096, %eax             # imm = 0x1000
	cmpl	$0, %eax
	je	.LBB3_221
# BB#217:                               # %land.lhs.true.672
                                        #   in Loop: Header=BB3_197 Depth=1
	movl	-904(%rbp), %eax
	andl	$16383, %eax            # imm = 0x3FFF
	andl	$4096, %eax             # imm = 0x1000
	cmpl	$0, %eax
	jne	.LBB3_221
# BB#218:                               # %if.then.678
                                        #   in Loop: Header=BB3_197 Depth=1
	cmpq	$0, -528(%rbp)
	jle	.LBB3_220
# BB#219:                               # %if.then.681
                                        #   in Loop: Header=BB3_197 Depth=1
	xorl	%r8d, %r8d
	movq	-448(%rbp), %rdi
	movq	-440(%rbp), %rsi
	movq	-448(%rbp), %rax
	addq	-520(%rbp), %rax
	movq	-440(%rbp), %rcx
	addq	-528(%rbp), %rcx
	movq	%rax, %rdx
	callq	del_range_2
	movq	%rax, -68384(%rbp)      # 8-byte Spill
.LBB3_220:                              # %if.end.688
                                        #   in Loop: Header=BB3_197 Depth=1
	movl	$616, %eax              # imm = 0x268
	movl	%eax, %edx
	leaq	-67920(%rbp), %rcx
	leaq	-912(%rbp), %rsi
	movb	$0, -67301(%rbp)
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movl	-67288(%rbp), %eax
	movl	%eax, -67300(%rbp)
	movl	-67912(%rbp), %eax
	andl	$16383, %eax            # imm = 0x3FFF
	andl	$-4097, %eax            # imm = 0xFFFFFFFFFFFFEFFF
	movl	-67912(%rbp), %r8d
	andl	$16383, %eax            # imm = 0x3FFF
	andl	$-16384, %r8d           # imm = 0xFFFFFFFFFFFFC000
	orl	%eax, %r8d
	movl	%r8d, -67912(%rbp)
	jmp	.LBB3_197
.LBB3_221:                              # %if.end.697
                                        #   in Loop: Header=BB3_197 Depth=1
	movq	current_buffer, %rdi
	movq	current_buffer, %rax
	movq	736(%rax), %rax
	addq	$0, %rax
	addq	-520(%rbp), %rax
	movq	current_buffer, %rcx
	movq	744(%rcx), %rcx
	addq	$0, %rcx
	addq	-528(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	temp_set_point_both
	movl	-328(%rbp), %r8d
	movl	%r8d, -67300(%rbp)
	cmpl	$0, -67300(%rbp)
	jle	.LBB3_223
# BB#222:                               # %if.then.707
                                        #   in Loop: Header=BB3_197 Depth=1
	leaq	-912(%rbp), %rax
	leaq	-67280(%rbp), %rcx
	addq	$520, %rax              # imm = 0x208
	movslq	-328(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	memcpy
.LBB3_223:                              # %if.end.711
                                        #   in Loop: Header=BB3_197 Depth=1
	jmp	.LBB3_224
.LBB3_224:                              # %if.end.712
                                        #   in Loop: Header=BB3_197 Depth=1
	jmp	.LBB3_225
.LBB3_225:                              # %if.end.713
                                        #   in Loop: Header=BB3_197 Depth=1
	movl	-904(%rbp), %eax
	shrl	$14, %eax
	andl	$31, %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB3_227
# BB#226:                               # %if.then.720
	jmp	.LBB3_243
.LBB3_227:                              # %if.end.721
                                        #   in Loop: Header=BB3_197 Depth=1
	cmpl	$65536, -67284(%rbp)    # imm = 0x10000
	jge	.LBB3_232
# BB#228:                               # %land.lhs.true.724
                                        #   in Loop: Header=BB3_197 Depth=1
	movq	-67296(%rbp), %rax
	movl	-67284(%rbp), %ecx
	shll	$5, %ecx
	movslq	%ecx, %rdx
	cmpq	%rdx, %rax
	jle	.LBB3_232
# BB#229:                               # %if.then.729
                                        #   in Loop: Header=BB3_197 Depth=1
	movl	-67284(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -67284(%rbp)
	cmpl	$65536, %eax            # imm = 0x10000
	jle	.LBB3_231
# BB#230:                               # %if.then.733
                                        #   in Loop: Header=BB3_197 Depth=1
	movl	$65536, -67284(%rbp)    # imm = 0x10000
.LBB3_231:                              # %if.end.734
                                        #   in Loop: Header=BB3_197 Depth=1
	jmp	.LBB3_232
.LBB3_232:                              # %if.end.735
                                        #   in Loop: Header=BB3_197 Depth=1
	testb	$1, -65(%rbp)
	je	.LBB3_234
# BB#233:                               # %if.then.737
                                        #   in Loop: Header=BB3_197 Depth=1
	movl	$1, %edi
	callq	redisplay_preserve_echo_area
	movb	$1, -67301(%rbp)
.LBB3_234:                              # %if.end.738
                                        #   in Loop: Header=BB3_197 Depth=1
	movb	$1, immediate_quit
# BB#235:                               # %do.body.739
                                        #   in Loop: Header=BB3_197 Depth=1
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -68392(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68392(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB3_238
# BB#236:                               # %land.lhs.true.743
                                        #   in Loop: Header=BB3_197 Depth=1
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -68400(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68400(%rbp), %rcx      # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB3_238
# BB#237:                               # %if.then.747
                                        #   in Loop: Header=BB3_197 Depth=1
	callq	process_quit_flag
	jmp	.LBB3_241
.LBB3_238:                              # %if.else.748
                                        #   in Loop: Header=BB3_197 Depth=1
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB3_240
# BB#239:                               # %if.then.750
                                        #   in Loop: Header=BB3_197 Depth=1
	callq	process_pending_signals
.LBB3_240:                              # %if.end.751
                                        #   in Loop: Header=BB3_197 Depth=1
	jmp	.LBB3_241
.LBB3_241:                              # %if.end.752
                                        #   in Loop: Header=BB3_197 Depth=1
	jmp	.LBB3_242
.LBB3_242:                              # %do.end.753
                                        #   in Loop: Header=BB3_197 Depth=1
	jmp	.LBB3_197
.LBB3_243:                              # %while.end.754
	jmp	.LBB3_244
.LBB3_244:                              # %give_up
	movq	Vcoding_system_hash_table, %rdi
	callq	XHASH_TABLE
	movq	-912(%rbp), %rsi
	movq	%rax, %rdi
	callq	HASH_KEY
	movq	%rax, globals+1240
	testb	$1, globals+3387
	je	.LBB3_246
# BB#245:                               # %if.then.759
	movabsq	$.L.str.54, %rdi
	callq	intern
	movq	-67296(%rbp), %rdi
	shlq	$2, %rdi
	addq	$2, %rdi
	movq	%rdi, -68408(%rbp)      # 8-byte Spill
	movq	%rax, %rdi
	movq	-68408(%rbp), %rsi      # 8-byte Reload
	callq	call1
	movq	%rax, -68416(%rbp)      # 8-byte Spill
.LBB3_246:                              # %if.end.763
	jmp	.LBB3_247
.LBB3_247:                              # %if.end.764
	leaq	-88(%rbp), %rax
	movl	-284(%rbp), %edi
	cmpl	$0, -72(%rbp)
	setl	%cl
	movzbl	%cl, %edx
	andl	$1, %edx
	leaq	-88(%rbp), %rsi
	movq	%rax, -68424(%rbp)      # 8-byte Spill
	callq	wait_for_termination
	movb	$0, immediate_quit
	movl	$0, synch_process_pid
# BB#248:                               # %do.body.767
	testb	$1, -121(%rbp)
	je	.LBB3_250
# BB#249:                               # %if.then.769
	xorl	%edi, %edi
	movb	$0, -121(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -68432(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68432(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -68440(%rbp)      # 8-byte Spill
.LBB3_250:                              # %if.end.772
	jmp	.LBB3_251
.LBB3_251:                              # %do.end.773
	xorl	%edi, %edi
	movq	-104(%rbp), %rax
	movq	%rax, -68448(%rbp)      # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-68448(%rbp), %rdi      # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movl	-88(%rbp), %ecx
	movl	%ecx, -67952(%rbp)
	movl	-67952(%rbp), %ecx
	andl	$127, %ecx
	addl	$1, %ecx
	movb	%cl, %dl
	movsbl	%dl, %ecx
	sarl	$1, %ecx
	cmpl	$0, %ecx
	movq	%rax, -68456(%rbp)      # 8-byte Spill
	jle	.LBB3_255
# BB#252:                               # %if.then.782
	callq	synchronize_system_messages_locale
	movl	-88(%rbp), %eax
	movl	%eax, -67968(%rbp)
	movl	-67968(%rbp), %eax
	andl	$127, %eax
	movl	%eax, %edi
	callq	strsignal
	movq	%rax, -67960(%rbp)
	cmpq	$0, -67960(%rbp)
	jne	.LBB3_254
# BB#253:                               # %if.then.790
	movabsq	$.L.str.55, %rax
	movq	%rax, -67960(%rbp)
.LBB3_254:                              # %if.end.791
	movq	-67960(%rbp), %rdi
	callq	build_string
	xorl	%edx, %edx
	movq	globals+1344, %rsi
	movq	%rax, %rdi
	callq	code_convert_string_norecord
	movq	%rax, -8(%rbp)
	jmp	.LBB3_256
.LBB3_255:                              # %if.end.794
	movl	-88(%rbp), %eax
	movl	%eax, -67976(%rbp)
	movl	-67976(%rbp), %eax
	andl	$65280, %eax            # imm = 0xFF00
	sarl	$8, %eax
	movslq	%eax, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -8(%rbp)
.LBB3_256:                              # %return
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	call_process, .Lfunc_end3-call_process
	.cfi_endproc

	.globl	Fcall_process_region
	.align	16, 0x90
	.type	Fcall_process_region,@function
Fcall_process_region:                   # @Fcall_process_region
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	SPECPDL_INDEX
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB4_1
	jmp	.LBB4_2
.LBB4_1:                                # %if.then
	movq	-48(%rbp), %rdi
	callq	SCHARS
	cmpq	$0, %rax
	sete	%cl
	andb	$1, %cl
	movb	%cl, -57(%rbp)
	jmp	.LBB4_6
.LBB4_2:                                # %if.else
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB4_4
# BB#3:                                 # %if.then.6
	movl	$1, %eax
	movl	%eax, %ecx
	movq	current_buffer, %rdx
	movq	720(%rdx), %rdx
	cmpq	16(%rdx), %rcx
	sete	%sil
	andb	$1, %sil
	movb	%sil, -57(%rbp)
	jmp	.LBB4_5
.LBB4_4:                                # %if.else.9
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rsi
	callq	validate_region
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	sarq	$2, %rax
	movq	-56(%rbp), %rsi
	sarq	$2, %rsi
	cmpq	%rsi, %rax
	sete	%cl
	andb	$1, %cl
	movb	%cl, -57(%rbp)
.LBB4_5:                                # %if.end
	jmp	.LBB4_6
.LBB4_6:                                # %if.end.17
	testb	$1, -57(%rbp)
	jne	.LBB4_8
# BB#7:                                 # %if.then.18
	leaq	-24(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	create_temp_file
	movl	%eax, -64(%rbp)
	jmp	.LBB4_11
.LBB4_8:                                # %if.else.20
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$.L.str.2, %rdi
	xorl	%ecx, %ecx
	movq	%rax, -24(%rbp)
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	emacs_open
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	jge	.LBB4_10
# BB#9:                                 # %if.then.24
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$.L.str.4, %rdi
	movq	%rax, %rsi
	callq	report_file_error
.LBB4_10:                               # %if.end.26
	movabsq	$close_file_unwind, %rdi
	movl	-64(%rbp), %esi
	callq	record_unwind_protect_int
.LBB4_11:                               # %if.end.27
	cmpq	$3, -8(%rbp)
	jle	.LBB4_14
# BB#12:                                # %land.lhs.true
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB4_14
# BB#13:                                # %if.then.32
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	Fdelete_region
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB4_14:                               # %if.end.34
	cmpq	$3, -8(%rbp)
	jle	.LBB4_16
# BB#15:                                # %if.then.36
	movq	-16(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	subq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_17
.LBB4_16:                               # %if.else.37
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	$2, -8(%rbp)
.LBB4_17:                               # %if.end.40
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-64(%rbp), %edx
	testb	$1, -57(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movl	%edx, -108(%rbp)        # 4-byte Spill
	je	.LBB4_19
# BB#18:                                # %cond.true
	movq	$-1, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB4_20
.LBB4_19:                               # %cond.false
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB4_20:                               # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movl	-108(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	callq	call_process
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	unbind_to
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	Fcall_process_region, .Lfunc_end4-Fcall_process_region
	.cfi_endproc

	.align	16, 0x90
	.type	create_temp_file,@function
create_temp_file:                       # @create_temp_file
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
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	globals+2312, %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB5_1
	jmp	.LBB5_2
.LBB5_1:                                # %if.then
	movq	globals+2312, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB5_6
.LBB5_2:                                # %if.else
	movabsq	$.L.str.58, %rdi
	callq	getenv
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB5_4
# BB#3:                                 # %cond.true
	movq	-80(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB5_5
.LBB5_4:                                # %cond.false
	movabsq	$.L.str.59, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB5_5
.LBB5_5:                                # %cond.end
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	callq	build_string
	movq	%rax, -72(%rbp)
.LBB5_6:                                # %if.end
	movq	Vtemp_file_name_pattern, %rdi
	movq	-72(%rbp), %rsi
	callq	Fexpand_file_name
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	encode_file_name
	movq	%rax, %rdi
	callq	Fcopy_sequence
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	SSDATA
	movq	%rax, -96(%rbp)
	callq	SPECPDL_INDEX
	movq	%rax, -104(%rbp)
	callq	record_unwind_protect_nothing
	movl	$524288, %esi           # imm = 0x80000
	movq	-96(%rbp), %rdi
	callq	mkostemp
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jge	.LBB5_8
# BB#7:                                 # %if.then.9
	movabsq	$.L.str.60, %rdi
	movq	-88(%rbp), %rsi
	callq	report_file_error
.LBB5_8:                                # %if.end.10
	movabsq	$delete_temp_file, %rsi
	movq	-104(%rbp), %rdi
	movq	-40(%rbp), %rdx
	callq	set_unwind_protect
	movabsq	$close_file_unwind, %rdi
	movl	-28(%rbp), %esi
	callq	record_unwind_protect_int
	xorl	%edi, %edi
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -56(%rbp)
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, -64(%rbp)
	movq	globals+288, %rdx
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB5_10
# BB#9:                                 # %if.then.14
	movq	globals+288, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB5_26
.LBB5_10:                               # %if.else.15
	xorl	%edi, %edi
	movq	current_buffer, %rax
	movq	312(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB5_12
# BB#11:                                # %if.then.18
	movl	$788, %edi              # imm = 0x314
	callq	builtin_lisp_symbol
	movq	%rax, -48(%rbp)
	jmp	.LBB5_25
.LBB5_12:                               # %if.else.20
	movq	$16384, -128(%rbp)      # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -136(%rbp)
	movb	$0, -137(%rbp)
# BB#13:                                # %do.body
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	-128(%rbp), %rcx
	shrq	$3, %rcx
	shrq	$0, %rcx
	cmpq	%rcx, %rax
	ja	.LBB5_15
# BB#14:                                # %if.then.24
	movq	-8(%rbp), %rax
	leaq	8(,%rax,8), %rax
	movq	-128(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -128(%rbp)
	movq	-8(%rbp), %rax
	leaq	23(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -120(%rbp)
	jmp	.LBB5_16
.LBB5_15:                               # %if.else.28
	movl	$8, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, %rdi
	callq	xnmalloc
	movabsq	$xfree, %rdi
	movq	%rax, -120(%rbp)
	movb	$1, -137(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
.LBB5_16:                               # %if.end.31
	jmp	.LBB5_17
.LBB5_17:                               # %do.end
	movl	$235, %edi
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-120(%rbp), %rax
	addq	$8, %rax
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	-120(%rbp), %rsi
	movq	%rax, %rdi
	callq	Ffind_operation_coding_system
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %r8d
	cmpl	$3, %r8d
	jne	.LBB5_19
# BB#18:                                # %cond.true.39
	movq	-112(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB5_20
.LBB5_19:                               # %cond.false.41
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB5_20:                               # %cond.end.43
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
# BB#21:                                # %do.body.45
	testb	$1, -137(%rbp)
	je	.LBB5_23
# BB#22:                                # %if.then.47
	xorl	%edi, %edi
	movb	$0, -137(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB5_23:                               # %if.end.50
	jmp	.LBB5_24
.LBB5_24:                               # %do.end.51
	jmp	.LBB5_25
.LBB5_25:                               # %if.end.52
	jmp	.LBB5_26
.LBB5_26:                               # %if.end.53
	movq	-48(%rbp), %rdi
	callq	complement_process_encoding_system
	movq	%rax, -48(%rbp)
	callq	SPECPDL_INDEX
	movabsq	$.L.str.61, %rdi
	movq	%rax, -152(%rbp)
	callq	intern
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	specbind
	movl	$419, %edi              # imm = 0x1A3
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	specbind
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$598, %edi              # imm = 0x256
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	-28(%rbp), %edi
	subq	$16, %rsp
	movq	-224(%rbp), %rdx        # 8-byte Reload
	movl	%edi, -260(%rbp)        # 4-byte Spill
	movq	%rdx, %rdi
	movq	-232(%rbp), %rsi        # 8-byte Reload
	movq	-216(%rbp), %rdx        # 8-byte Reload
	movq	-240(%rbp), %rcx        # 8-byte Reload
	movq	-248(%rbp), %r8         # 8-byte Reload
	movq	-256(%rbp), %r9         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	-260(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, 8(%rsp)
	callq	write_region
	addq	$16, %rsp
	xorl	%edi, %edi
	movq	-152(%rbp), %rcx
	movq	%rax, -272(%rbp)        # 8-byte Spill
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	xorl	%r10d, %r10d
	movl	%r10d, %esi
	xorl	%edx, %edx
	movl	-28(%rbp), %edi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	lseek
	cmpq	$0, %rax
	jge	.LBB5_28
# BB#27:                                # %if.then.69
	movabsq	$.L.str.62, %rdi
	movq	-40(%rbp), %rsi
	callq	report_file_error
.LBB5_28:                               # %if.end.70
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	-28(%rbp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	create_temp_file, .Lfunc_end5-create_temp_file
	.cfi_endproc

	.globl	child_setup
	.align	16, 0x90
	.type	child_setup,@function
child_setup:                            # @child_setup
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
	subq	$256, %rsp              # imm = 0x100
	movb	%r8b, %al
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	andb	$1, %al
	movb	%al, -25(%rbp)
	movq	%r9, -40(%rbp)
	callq	getpid
	movl	%eax, -60(%rbp)
	movq	-40(%rbp), %rdi
	callq	SBYTES
	movl	$16379, %edx            # imm = 0x3FFB
	movl	%edx, %ecx
	movq	%rax, -80(%rbp)
	cmpq	-80(%rbp), %rcx
	jge	.LBB6_2
# BB#1:                                 # %if.then
	movl	$12, %esi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	exec_failed
.LBB6_2:                                # %if.end
	movq	-80(%rbp), %rax
	addq	$20, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movl	.L.str.5, %edx
	movl	%edx, (%rax)
	movq	-72(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	lispstpcpy
	movq	-72(%rbp), %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	chdir
	cmpl	$0, %eax
	jge	.LBB6_4
# BB#3:                                 # %if.then.5
	movl	$125, %edi
	callq	_exit
.LBB6_4:                                # %if.end.6
	jmp	.LBB6_5
.LBB6_5:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$2, -80(%rbp)
	movb	%cl, -161(%rbp)         # 1-byte Spill
	jle	.LBB6_7
# BB#6:                                 # %land.rhs
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-80(%rbp), %rax
	subq	$1, %rax
	movq	-72(%rbp), %rcx
	movsbl	(%rcx,%rax), %edx
	cmpl	$47, %edx
	sete	%sil
	movb	%sil, -161(%rbp)        # 1-byte Spill
.LBB6_7:                                # %land.end
                                        #   in Loop: Header=BB6_5 Depth=1
	movb	-161(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_8
	jmp	.LBB6_9
.LBB6_8:                                # %while.body
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -80(%rbp)
	movq	-72(%rbp), %rcx
	movb	$0, -1(%rcx,%rax)
	jmp	.LBB6_5
.LBB6_9:                                # %while.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -128(%rbp)
	movl	$0, -116(%rbp)
	movq	globals+1912, %rax
	movq	%rax, -88(%rbp)
.LBB6_10:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-88(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -162(%rbp)         # 1-byte Spill
	jne	.LBB6_12
# BB#11:                                # %land.rhs.16
                                        #   in Loop: Header=BB6_10 Depth=1
	movq	-88(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	STRINGP
	movb	%al, -162(%rbp)         # 1-byte Spill
.LBB6_12:                               # %land.end.20
                                        #   in Loop: Header=BB6_10 Depth=1
	movb	-162(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_13
	jmp	.LBB6_19
.LBB6_13:                               # %for.body
                                        #   in Loop: Header=BB6_10 Depth=1
	movq	-88(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	SSDATA
	movabsq	$.L.str.6, %rsi
	movl	$7, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB6_17
# BB#14:                                # %land.lhs.true
                                        #   in Loop: Header=BB6_10 Depth=1
	movq	-88(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	SDATA
	movzbl	7(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB6_16
# BB#15:                                # %lor.lhs.false
                                        #   in Loop: Header=BB6_10 Depth=1
	movq	-88(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	SDATA
	movzbl	7(%rax), %ecx
	cmpl	$61, %ecx
	jne	.LBB6_17
.LBB6_16:                               # %if.then.41
                                        #   in Loop: Header=BB6_10 Depth=1
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -128(%rbp)
.LBB6_17:                               # %if.end.43
                                        #   in Loop: Header=BB6_10 Depth=1
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
# BB#18:                                # %for.inc
                                        #   in Loop: Header=BB6_10 Depth=1
	movq	-88(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB6_10
.LBB6_19:                               # %for.end
	xorl	%edi, %edi
	movq	-128(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_26
# BB#20:                                # %if.then.48
	movl	$344, %edi              # imm = 0x158
	movq	selected_frame, %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fframe_parameter
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB6_23
# BB#21:                                # %land.lhs.true.52
	movq	globals+1128, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB6_23
# BB#22:                                # %if.then.57
	movabsq	$.L.str.6, %rdi
	callq	build_string
	movq	globals+1128, %rsi
	movq	%rax, %rdi
	callq	Fgetenv_internal
	movq	%rax, -136(%rbp)
.LBB6_23:                               # %if.end.60
	movq	-136(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB6_24
	jmp	.LBB6_25
.LBB6_24:                               # %if.then.62
	movq	-136(%rbp), %rax
	movq	%rax, -128(%rbp)
	movl	-116(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -116(%rbp)
.LBB6_25:                               # %if.end.64
	jmp	.LBB6_26
.LBB6_26:                               # %if.end.65
	movl	$2046, %eax             # imm = 0x7FE
	movl	%eax, %ecx
	movslq	-116(%rbp), %rdx
	cmpq	%rdx, %rcx
	jae	.LBB6_28
# BB#27:                                # %if.then.69
	movl	$12, %esi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	exec_failed
.LBB6_28:                               # %if.end.71
	movabsq	$.L.str.7, %rdi
	movl	-116(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	leaq	15(,%rcx,8), %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
	movq	%rdx, %rsp
	movq	%rdx, -96(%rbp)
	movq	%rdx, -48(%rbp)
	callq	egetenv
	cmpq	$0, %rax
	je	.LBB6_30
# BB#29:                                # %if.then.75
	movq	-56(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$8, %rdx
	movq	%rdx, -96(%rbp)
	movq	%rax, (%rcx)
.LBB6_30:                               # %if.end.76
	movq	-128(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB6_31
	jmp	.LBB6_34
.LBB6_31:                               # %if.then.78
	movq	-128(%rbp), %rdi
	callq	SBYTES
	movl	$16375, %ecx            # imm = 0x3FF7
	movl	%ecx, %edi
	cmpq	%rax, %rdi
	jae	.LBB6_33
# BB#32:                                # %if.then.82
	movl	$12, %esi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	exec_failed
.LBB6_33:                               # %if.end.84
	movq	-128(%rbp), %rdi
	callq	SBYTES
	addq	$24, %rax
	andq	$-16, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rdi, -144(%rbp)
	movq	-144(%rbp), %rdi
	movl	$.L.str.8, %ecx
	movl	%ecx, %esi
	callq	stpcpy
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	callq	lispstpcpy
	movq	-48(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	-144(%rbp), %rdx
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	add_env
	movq	%rax, -96(%rbp)
.LBB6_34:                               # %if.end.91
	movq	globals+1912, %rax
	movq	%rax, -88(%rbp)
.LBB6_35:                               # %for.cond.92
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-88(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -193(%rbp)         # 1-byte Spill
	jne	.LBB6_37
# BB#36:                                # %land.rhs.97
                                        #   in Loop: Header=BB6_35 Depth=1
	movq	-88(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	STRINGP
	movb	%al, -193(%rbp)         # 1-byte Spill
.LBB6_37:                               # %land.end.102
                                        #   in Loop: Header=BB6_35 Depth=1
	movb	-193(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_38
	jmp	.LBB6_40
.LBB6_38:                               # %for.body.103
                                        #   in Loop: Header=BB6_35 Depth=1
	movq	-48(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	callq	SSDATA
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	-216(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	add_env
	movq	%rax, -96(%rbp)
# BB#39:                                # %for.inc.108
                                        #   in Loop: Header=BB6_35 Depth=1
	movq	-88(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB6_35
.LBB6_40:                               # %for.end.112
	movq	-96(%rbp), %rax
	movq	$0, (%rax)
	movq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	%rax, -104(%rbp)
.LBB6_41:                               # %while.cond.113
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_43 Depth 2
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_50
# BB#42:                                # %while.body.116
                                        #   in Loop: Header=BB6_41 Depth=1
	jmp	.LBB6_43
.LBB6_43:                               # %while.cond.117
                                        #   Parent Loop BB6_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-112(%rbp), %rdx
	cmpq	$0, (%rdx)
	movb	%cl, -217(%rbp)         # 1-byte Spill
	je	.LBB6_45
# BB#44:                                # %land.rhs.120
                                        #   in Loop: Header=BB6_43 Depth=2
	movl	$61, %esi
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	callq	strchr
	cmpq	$0, %rax
	sete	%cl
	movb	%cl, -217(%rbp)         # 1-byte Spill
.LBB6_45:                               # %land.end.124
                                        #   in Loop: Header=BB6_43 Depth=2
	movb	-217(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_46
	jmp	.LBB6_47
.LBB6_46:                               # %while.body.125
                                        #   in Loop: Header=BB6_43 Depth=2
	movq	-112(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -112(%rbp)
	jmp	.LBB6_43
.LBB6_47:                               # %while.end.127
                                        #   in Loop: Header=BB6_41 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -112(%rbp)
	movq	(%rax), %rax
	movq	-104(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_49
# BB#48:                                # %if.then.131
                                        #   in Loop: Header=BB6_41 Depth=1
	movq	-104(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -104(%rbp)
.LBB6_49:                               # %if.end.133
                                        #   in Loop: Header=BB6_41 Depth=1
	jmp	.LBB6_41
.LBB6_50:                               # %while.end.134
	movl	$3, %esi
	movl	-8(%rbp), %eax
	movl	%eax, -148(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -152(%rbp)
	movl	-8(%rbp), %edi
	callq	relocate_fd
	movl	%eax, -8(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-148(%rbp), %eax
	jne	.LBB6_52
# BB#51:                                # %if.then.140
	movl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB6_53
.LBB6_52:                               # %if.else
	movl	$3, %esi
	movl	-12(%rbp), %edi
	callq	relocate_fd
	movl	%eax, -12(%rbp)
.LBB6_53:                               # %if.end.142
	movl	-16(%rbp), %eax
	cmpl	-148(%rbp), %eax
	jne	.LBB6_55
# BB#54:                                # %if.then.145
	movl	-8(%rbp), %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB6_59
.LBB6_55:                               # %if.else.146
	movl	-16(%rbp), %eax
	cmpl	-152(%rbp), %eax
	jne	.LBB6_57
# BB#56:                                # %if.then.149
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB6_58
.LBB6_57:                               # %if.else.150
	movl	$3, %esi
	movl	-16(%rbp), %edi
	callq	relocate_fd
	movl	%eax, -16(%rbp)
.LBB6_58:                               # %if.end.152
	jmp	.LBB6_59
.LBB6_59:                               # %if.end.153
	xorl	%esi, %esi
	movl	-8(%rbp), %edi
	callq	dup2
	movl	$1, %esi
	movl	-12(%rbp), %edi
	movl	%eax, -224(%rbp)        # 4-byte Spill
	callq	dup2
	movl	$2, %esi
	movl	-16(%rbp), %edi
	movl	%eax, -228(%rbp)        # 4-byte Spill
	callq	dup2
	xorl	%esi, %esi
	movl	%esi, %edi
	movl	%eax, -232(%rbp)        # 4-byte Spill
	callq	setpgid
	xorl	%edi, %edi
	movl	-60(%rbp), %esi
	movl	%eax, -236(%rbp)        # 4-byte Spill
	callq	tcsetpgrp
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movl	%eax, -240(%rbp)        # 4-byte Spill
	callq	execve
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdi
	movl	%eax, -244(%rbp)        # 4-byte Spill
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %esi
	movq	-256(%rbp), %rdi        # 8-byte Reload
	callq	exec_failed
.Lfunc_end6:
	.size	child_setup, .Lfunc_end6-child_setup
	.cfi_endproc

	.align	16, 0x90
	.type	exec_failed,@function
exec_failed:                            # @exec_failed
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
	movl	$2, %eax
	movl	$4, %ecx
	movl	$2048, %edx             # imm = 0x800
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%eax, %edi
	movl	%ecx, %esi
	movb	$0, %al
	callq	rpl_fcntl
	movl	-12(%rbp), %ecx
	movl	%eax, -16(%rbp)         # 4-byte Spill
	movl	%ecx, -20(%rbp)         # 4-byte Spill
	callq	__errno_location
	movl	-20(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rdi
	callq	emacs_perror
	movl	$126, %ecx
	movl	$127, %edx
	cmpl	$2, -12(%rbp)
	cmovel	%edx, %ecx
	movl	%ecx, %edi
	callq	_exit
.Lfunc_end7:
	.size	exec_failed, .Lfunc_end7-exec_failed
	.cfi_endproc

	.globl	Fgetenv_internal
	.align	16, 0x90
	.type	Fgetenv_internal,@function
Fgetenv_internal:                       # @Fgetenv_internal
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	movq	-24(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	cmpl	$3, %eax
	jne	.LBB8_7
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	SSDATA
	movq	-16(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	SBYTES
	leaq	-32(%rbp), %rdx
	leaq	-40(%rbp), %rcx
	movq	-24(%rbp), %r8
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	getenv_internal_1
	testb	$1, %al
	jne	.LBB8_2
	jmp	.LBB8_6
.LBB8_2:                                # %if.then.4
	cmpq	$0, -32(%rbp)
	je	.LBB8_4
# BB#3:                                 # %cond.true
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	make_string
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB8_5
.LBB8_4:                                # %cond.false
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB8_5:                                # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB8_10
.LBB8_6:                                # %if.else
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB8_10
.LBB8_7:                                # %if.else.8
	movq	-16(%rbp), %rdi
	callq	SSDATA
	movq	-16(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	SBYTES
	leaq	-32(%rbp), %rdx
	leaq	-40(%rbp), %rcx
	movq	-24(%rbp), %r8
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	getenv_internal
	testb	$1, %al
	jne	.LBB8_8
	jmp	.LBB8_9
.LBB8_8:                                # %if.then.12
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	make_string
	movq	%rax, -8(%rbp)
	jmp	.LBB8_10
.LBB8_9:                                # %if.else.14
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB8_10:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	Fgetenv_internal, .Lfunc_end8-Fgetenv_internal
	.cfi_endproc

	.align	16, 0x90
	.type	add_env,@function
add_env:                                # @add_env
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movb	$1, -41(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB9_21
.LBB9_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB9_3:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_7 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, -41(%rbp)
	movb	%cl, -65(%rbp)          # 1-byte Spill
	je	.LBB9_5
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	-40(%rbp), %rax
	cmpq	-24(%rbp), %rax
	setne	%cl
	movb	%cl, -65(%rbp)          # 1-byte Spill
.LBB9_5:                                # %land.end
                                        #   in Loop: Header=BB9_3 Depth=1
	movb	-65(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB9_6
	jmp	.LBB9_18
.LBB9_6:                                # %for.body
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB9_7:                                # %while.cond
                                        #   Parent Loop BB9_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testb	$1, -41(%rbp)
	je	.LBB9_16
# BB#8:                                 # %while.body
                                        #   in Loop: Header=BB9_7 Depth=2
	movq	-56(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB9_11
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB9_7 Depth=2
	movq	-64(%rbp), %rax
	movsbl	(%rax), %ecx
	movq	-56(%rbp), %rax
	movsbl	(%rax), %edx
	cmpl	%edx, %ecx
	je	.LBB9_11
# BB#10:                                # %if.then.8
                                        #   in Loop: Header=BB9_3 Depth=1
	jmp	.LBB9_16
.LBB9_11:                               # %if.end.9
                                        #   in Loop: Header=BB9_7 Depth=2
	movq	-64(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB9_13
# BB#12:                                # %if.then.13
                                        #   in Loop: Header=BB9_3 Depth=1
	jmp	.LBB9_16
.LBB9_13:                               # %if.end.14
                                        #   in Loop: Header=BB9_7 Depth=2
	movq	-64(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$61, %ecx
	jne	.LBB9_15
# BB#14:                                # %if.then.18
                                        #   in Loop: Header=BB9_7 Depth=2
	movb	$0, -41(%rbp)
.LBB9_15:                               # %if.end.19
                                        #   in Loop: Header=BB9_7 Depth=2
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB9_7
.LBB9_16:                               # %while.end
                                        #   in Loop: Header=BB9_3 Depth=1
	jmp	.LBB9_17
.LBB9_17:                               # %for.inc
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB9_3
.LBB9_18:                               # %for.end
	testb	$1, -41(%rbp)
	je	.LBB9_20
# BB#19:                                # %if.then.23
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$8, %rdx
	movq	%rdx, -24(%rbp)
	movq	%rax, (%rcx)
.LBB9_20:                               # %if.end.25
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB9_21:                               # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end9:
	.size	add_env, .Lfunc_end9-add_env
	.cfi_endproc

	.align	16, 0x90
	.type	relocate_fd,@function
relocate_fd:                            # @relocate_fd
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
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-8(%rbp), %esi
	cmpl	-12(%rbp), %esi
	jl	.LBB10_2
# BB#1:                                 # %if.then
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB10_5
.LBB10_2:                               # %if.else
	movl	$1030, %esi             # imm = 0x406
	movl	-8(%rbp), %edi
	movl	-12(%rbp), %edx
	movb	$0, %al
	callq	rpl_fcntl
	movl	%eax, -16(%rbp)
	cmpl	$-1, -16(%rbp)
	jne	.LBB10_4
# BB#3:                                 # %if.then.2
	movabsq	$.L.str.63, %rdi
	callq	emacs_perror
	movl	$125, %edi
	callq	_exit
.LBB10_4:                               # %if.end
	movl	-16(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB10_5:                               # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	relocate_fd, .Lfunc_end10-relocate_fd
	.cfi_endproc

	.align	16, 0x90
	.type	getenv_internal_1,@function
getenv_internal_1:                      # @getenv_internal_1
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB11_14
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB11_3
	jmp	.LBB11_12
.LBB11_3:                               # %land.lhs.true
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-56(%rbp), %rdi
	callq	SBYTES
	cmpq	-24(%rbp), %rax
	jl	.LBB11_12
# BB#4:                                 # %land.lhs.true.7
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-56(%rbp), %rdi
	callq	SDATA
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	memcmp
	cmpl	$0, %eax
	jne	.LBB11_12
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-56(%rbp), %rdi
	callq	SBYTES
	cmpq	-24(%rbp), %rax
	jle	.LBB11_8
# BB#6:                                 # %land.lhs.true.13
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	SREF
	movzbl	%al, %ecx
	cmpl	$61, %ecx
	jne	.LBB11_8
# BB#7:                                 # %if.then.18
	movq	-56(%rbp), %rdi
	callq	SSDATA
	movq	-24(%rbp), %rdi
	addq	$1, %rdi
	addq	%rdi, %rax
	movq	-32(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-56(%rbp), %rdi
	callq	SBYTES
	movq	-24(%rbp), %rdi
	addq	$1, %rdi
	subq	%rdi, %rax
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
	movb	$1, -1(%rbp)
	jmp	.LBB11_15
.LBB11_8:                               # %if.else
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-56(%rbp), %rdi
	callq	SBYTES
	cmpq	-24(%rbp), %rax
	jne	.LBB11_10
# BB#9:                                 # %if.then.26
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movb	$1, -1(%rbp)
	jmp	.LBB11_15
.LBB11_10:                              # %if.end
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_11
.LBB11_11:                              # %if.end.27
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_12
.LBB11_12:                              # %if.end.28
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_13
.LBB11_13:                              # %for.inc
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-48(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB11_1
.LBB11_14:                              # %for.end
	movb	$0, -1(%rbp)
.LBB11_15:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	getenv_internal_1, .Lfunc_end11-getenv_internal_1
	.cfi_endproc

	.align	16, 0x90
	.type	getenv_internal,@function
getenv_internal:                        # @getenv_internal
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	globals+1912, %r8
	callq	getenv_internal_1
	testb	$1, %al
	jne	.LBB12_1
	jmp	.LBB12_2
.LBB12_1:                               # %if.then
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-32(%rbp), %rdx
	cmpq	$0, (%rdx)
	cmovnel	%ecx, %eax
	cmpl	$0, %eax
	setne	%sil
	andb	$1, %sil
	movb	%sil, -1(%rbp)
	jmp	.LBB12_12
.LBB12_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	$.L.str.6, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB12_11
# BB#3:                                 # %if.then.3
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB12_5
# BB#4:                                 # %cond.true
	movq	selected_frame, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB12_6
.LBB12_5:                               # %cond.false
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB12_6:                               # %cond.end
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	$344, %edi              # imm = 0x158
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fframe_parameter
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB12_7
	jmp	.LBB12_8
.LBB12_7:                               # %if.then.10
	movq	-56(%rbp), %rdi
	callq	SSDATA
	movq	-32(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-56(%rbp), %rdi
	callq	SBYTES
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
	movb	$1, -1(%rbp)
	jmp	.LBB12_12
.LBB12_8:                               # %if.end.13
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	globals+1128, %r8
	callq	getenv_internal_1
	testb	$1, %al
	jne	.LBB12_9
	jmp	.LBB12_10
.LBB12_9:                               # %if.then.15
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-32(%rbp), %rdx
	cmpq	$0, (%rdx)
	cmovnel	%ecx, %eax
	cmpl	$0, %eax
	setne	%sil
	andb	$1, %sil
	movb	%sil, -1(%rbp)
	jmp	.LBB12_12
.LBB12_10:                              # %if.end.19
	jmp	.LBB12_11
.LBB12_11:                              # %if.end.20
	movb	$0, -1(%rbp)
.LBB12_12:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	getenv_internal, .Lfunc_end12-getenv_internal
	.cfi_endproc

	.globl	egetenv_internal
	.align	16, 0x90
	.type	egetenv_internal,@function
egetenv_internal:                       # @egetenv_internal
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
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	leaq	-32(%rbp), %rdx
	leaq	-40(%rbp), %rcx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %r8
	callq	getenv_internal
	testb	$1, %al
	jne	.LBB13_1
	jmp	.LBB13_2
.LBB13_1:                               # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB13_3
.LBB13_2:                               # %if.else
	movq	$0, -8(%rbp)
.LBB13_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	egetenv_internal, .Lfunc_end13-egetenv_internal
	.cfi_endproc

	.globl	init_callproc_1
	.align	16, 0x90
	.type	init_callproc_1,@function
init_callproc_1:                        # @init_callproc_1
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
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.10, %rsi
	xorl	%edx, %edx
	callq	decode_env_path
	movq	%rax, globals+408
	movq	globals+408, %rdi
	callq	Fcar
	movq	%rax, %rdi
	callq	Ffile_name_as_directory
	movabsq	$.L.str.11, %rdi
	movabsq	$.L.str.10, %rsi
	xorl	%edx, %edx
	movq	%rax, globals+408
	callq	decode_env_path
	movq	%rax, globals+576
	movq	globals+576, %rdi
	callq	Fcar
	movq	%rax, %rdi
	callq	Ffile_name_as_directory
	movabsq	$.L.str.12, %rdi
	movabsq	$.L.str.13, %rsi
	xorl	%edx, %edx
	movq	%rax, globals+576
	callq	decode_env_path
	movq	%rax, globals+672
	movq	globals+672, %rdi
	callq	Fcar
	movq	%rax, %rdi
	callq	Ffile_name_as_directory
	movabsq	$.L.str.14, %rdi
	movabsq	$.L.str.15, %rsi
	xorl	%edx, %edx
	movq	%rax, globals+664
	callq	decode_env_path
	movq	globals+672, %rsi
	movq	%rax, %rdi
	callq	nconc2
	movq	%rax, globals+672
	popq	%rbp
	retq
.Lfunc_end14:
	.size	init_callproc_1, .Lfunc_end14-init_callproc_1
	.cfi_endproc

	.globl	init_callproc
	.align	16, 0x90
	.type	init_callproc,@function
init_callproc:                          # @init_callproc
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
	subq	$128, %rsp
	movabsq	$.L.str.9, %rdi
	callq	egetenv
	xorl	%edi, %edi
	cmpq	$0, %rax
	setne	%cl
	andb	$1, %cl
	movb	%cl, -1(%rbp)
	movq	globals+1160, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB15_6
# BB#1:                                 # %if.then
	movabsq	$.L.str.16, %rdi
	callq	build_string
	movq	globals+1160, %rsi
	movq	%rax, %rdi
	callq	Fexpand_file_name
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	globals+672, %rsi
	callq	Fmember
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB15_3
# BB#2:                                 # %if.then.8
	movq	-32(%rbp), %rdi
	callq	SSDATA
	movabsq	$.L.str.12, %rdi
	xorl	%edx, %edx
	movq	%rax, %rsi
	callq	decode_env_path
	movabsq	$.L.str.14, %rdi
	movabsq	$.L.str.15, %rsi
	xorl	%edx, %edx
	movq	%rax, globals+672
	callq	decode_env_path
	movq	globals+672, %rsi
	movq	%rax, %rdi
	callq	nconc2
	movq	%rax, globals+672
.LBB15_3:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	Ffile_name_as_directory
	movq	%rax, globals+664
	movb	-1(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB15_5
# BB#4:                                 # %if.then.16
	movabsq	$.L.str.17, %rdi
	callq	build_string
	movq	globals+1160, %rsi
	movq	%rax, %rdi
	callq	Fexpand_file_name
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	Ffile_name_as_directory
	movq	%rax, globals+576
.LBB15_5:                               # %if.end.20
	jmp	.LBB15_6
.LBB15_6:                               # %if.end.21
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	jne	.LBB15_13
# BB#7:                                 # %if.then.26
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.18, %rsi
	xorl	%edx, %edx
	callq	decode_env_path
	movq	%rax, %rdi
	callq	Fcar
	movabsq	$.L.str.19, %rdi
	movq	%rax, -64(%rbp)
	callq	build_string
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fexpand_file_name
	movabsq	$.L.str.20, %rdi
	movq	%rax, -56(%rbp)
	callq	build_string
	movq	globals+408, %rsi
	movq	%rax, %rdi
	callq	Fexpand_file_name
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	Ffile_exists_p
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rdi
	movq	globals+1184, %rsi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB15_9
# BB#8:                                 # %lor.lhs.false
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB15_12
.LBB15_9:                               # %if.then.42
	movabsq	$.L.str.21, %rdi
	callq	build_string
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fexpand_file_name
	movabsq	$.L.str.20, %rdi
	movq	%rax, -72(%rbp)
	callq	build_string
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fexpand_file_name
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	Ffile_exists_p
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB15_11
# BB#10:                                # %if.then.51
	movq	-72(%rbp), %rax
	movq	%rax, globals+408
.LBB15_11:                              # %if.end.52
	jmp	.LBB15_12
.LBB15_12:                              # %if.end.53
	jmp	.LBB15_13
.LBB15_13:                              # %if.end.54
	testb	$1, initialized
	je	.LBB15_17
# BB#14:                                # %if.then.56
	movq	globals+664, %rdi
	callq	Fdirectory_file_name
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	file_accessible_directory_p
	testb	$1, %al
	jne	.LBB15_16
# BB#15:                                # %if.then.59
	movabsq	$.L.str.22, %rdi
	movq	globals+664, %rsi
	callq	dir_warning
.LBB15_16:                              # %if.end.60
	jmp	.LBB15_17
.LBB15_17:                              # %if.end.61
	movq	globals+408, %rdi
	callq	Fdirectory_file_name
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	file_accessible_directory_p
	testb	$1, %al
	jne	.LBB15_19
# BB#18:                                # %if.then.64
	movabsq	$.L.str.23, %rdi
	movq	globals+408, %rsi
	callq	dir_warning
.LBB15_19:                              # %if.end.65
	movabsq	$.L.str.24, %rdi
	callq	getenv
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB15_21
# BB#20:                                # %cond.true
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB15_22
.LBB15_21:                              # %cond.false
	movabsq	$.L.str.25, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB15_22
.LBB15_22:                              # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	callq	build_string
	movabsq	$.L.str.26, %rdi
	movq	%rax, globals+2152
	callq	build_unibyte_string
	movq	%rax, globals+2144
	movq	globals+2144, %rdi
	callq	Ffile_accessible_directory_p
	xorl	%edi, %edi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB15_24
# BB#23:                                # %if.then.74
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2144
.LBB15_24:                              # %if.end.76
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	init_callproc, .Lfunc_end15-init_callproc
	.cfi_endproc

	.globl	set_initial_environment
	.align	16, 0x90
	.type	set_initial_environment,@function
set_initial_environment:                # @set_initial_environment
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
	movq	environ, %rax
	movq	%rax, -8(%rbp)
.LBB16_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	build_string
	movq	globals+1912, %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, globals+1912
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB16_1
.LBB16_4:                               # %for.end
	movq	globals+1912, %rdi
	callq	Fcopy_sequence
	movq	%rax, globals+1128
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	set_initial_environment, .Lfunc_end16-set_initial_environment
	.cfi_endproc

	.globl	syms_of_callproc
	.align	16, 0x90
	.type	syms_of_callproc,@function
syms_of_callproc:                       # @syms_of_callproc
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
	movabsq	$.L.str.27, %rdi
	callq	build_string
	movabsq	$Vtemp_file_name_pattern, %rdi
	movq	%rax, Vtemp_file_name_pattern
	callq	staticpro
# BB#1:                                 # %do.body
	movabsq	$syms_of_callproc.o_fwd, %rdi
	movabsq	$.L.str.28, %rsi
	movabsq	$globals, %rax
	addq	$2152, %rax             # imm = 0x868
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#2:                                 # %do.end
	jmp	.LBB17_3
.LBB17_3:                               # %do.body.1
	movabsq	$syms_of_callproc.o_fwd.29, %rdi
	movabsq	$.L.str.30, %rsi
	movabsq	$globals, %rax
	addq	$672, %rax              # imm = 0x2A0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#4:                                 # %do.end.2
	jmp	.LBB17_5
.LBB17_5:                               # %do.body.3
	movabsq	$syms_of_callproc.o_fwd.31, %rdi
	movabsq	$.L.str.32, %rsi
	movabsq	$globals, %rax
	addq	$680, %rax              # imm = 0x2A8
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#6:                                 # %do.end.4
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+680
# BB#7:                                 # %do.body.6
	movabsq	$syms_of_callproc.o_fwd.33, %rdi
	movabsq	$.L.str.34, %rsi
	movabsq	$globals, %rax
	addq	$664, %rax              # imm = 0x298
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#8:                                 # %do.end.7
	jmp	.LBB17_9
.LBB17_9:                               # %do.body.8
	movabsq	$syms_of_callproc.o_fwd.35, %rdi
	movabsq	$.L.str.36, %rsi
	movabsq	$globals, %rax
	addq	$408, %rax              # imm = 0x198
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#10:                                # %do.end.9
	jmp	.LBB17_11
.LBB17_11:                              # %do.body.10
	movabsq	$syms_of_callproc.o_fwd.37, %rdi
	movabsq	$.L.str.38, %rsi
	movabsq	$globals, %rax
	addq	$576, %rax              # imm = 0x240
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#12:                                # %do.end.11
	jmp	.LBB17_13
.LBB17_13:                              # %do.body.12
	movabsq	$syms_of_callproc.o_fwd.39, %rdi
	movabsq	$.L.str.40, %rsi
	movabsq	$globals, %rax
	addq	$376, %rax              # imm = 0x178
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#14:                                # %do.end.13
	movabsq	$.L.str.41, %rdi
	callq	build_string
	movq	%rax, globals+376
# BB#15:                                # %do.body.15
	movabsq	$syms_of_callproc.o_fwd.42, %rdi
	movabsq	$.L.str.43, %rsi
	movabsq	$globals, %rax
	addq	$2144, %rax             # imm = 0x860
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#16:                                # %do.end.16
	movabsq	$.L.str.26, %rdi
	callq	build_string
	movq	%rax, globals+2144
# BB#17:                                # %do.body.18
	movabsq	$syms_of_callproc.o_fwd.44, %rdi
	movabsq	$.L.str.45, %rsi
	movabsq	$globals, %rax
	addq	$1128, %rax             # imm = 0x468
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#18:                                # %do.end.19
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+1128
# BB#19:                                # %do.body.21
	movabsq	$syms_of_callproc.o_fwd.46, %rdi
	movabsq	$.L.str.47, %rsi
	movabsq	$globals, %rax
	addq	$1912, %rax             # imm = 0x778
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#20:                                # %do.end.22
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$Scall_process, %rcx
	movq	%rax, globals+1912
	movq	%rcx, %rdi
	callq	defsubr
	movabsq	$Sgetenv_internal, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Scall_process_region, %rax
	movq	%rax, %rdi
	callq	defsubr
	popq	%rbp
	retq
.Lfunc_end17:
	.size	syms_of_callproc, .Lfunc_end17-syms_of_callproc
	.cfi_endproc

	.align	16, 0x90
	.type	call_process_kill,@function
call_process_kill:                      # @call_process_kill
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
	subq	$336, %rsp              # imm = 0x150
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB18_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -20(%rbp)
	jge	.LBB18_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB18_1 Depth=1
	xorl	%eax, %eax
	movslq	-20(%rbp), %rcx
	movq	-16(%rbp), %rdx
	cmpl	(%rdx,%rcx,4), %eax
	jg	.LBB18_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB18_1 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	emacs_close
	movl	%eax, -324(%rbp)        # 4-byte Spill
.LBB18_4:                               # %if.end
                                        #   in Loop: Header=BB18_1 Depth=1
	jmp	.LBB18_5
.LBB18_5:                               # %for.inc
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB18_1
.LBB18_6:                               # %for.end
	cmpl	$0, synch_process_pid
	je	.LBB18_8
# BB#7:                                 # %if.then.4
	leaq	-320(%rbp), %rdi
	movl	$2, %eax
	movl	%eax, %esi
	movb	-96(%rbp), %cl
	andb	$-65, %cl
	orb	$64, %cl
	movb	%cl, -96(%rbp)
	movl	synch_process_pid, %eax
	movl	%eax, -160(%rbp)
	callq	record_kill_process
	movl	$0, synch_process_pid
	jmp	.LBB18_11
.LBB18_8:                               # %if.else
	movl	$2, %eax
	movl	%eax, %edi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB18_9
	jmp	.LBB18_10
.LBB18_9:                               # %if.then.6
	movl	$2, %eax
	movl	%eax, %edi
	callq	delete_temp_file
.LBB18_10:                              # %if.end.7
	jmp	.LBB18_11
.LBB18_11:                              # %if.end.8
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end18:
	.size	call_process_kill, .Lfunc_end18-call_process_kill
	.cfi_endproc

	.align	16, 0x90
	.type	call_process_cleanup,@function
call_process_cleanup:                   # @call_process_cleanup
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	Fset_buffer
	cmpl	$0, synch_process_pid
	movq	%rax, -16(%rbp)         # 8-byte Spill
	je	.LBB19_10
# BB#1:                                 # %if.then
	movl	$2, %esi
	xorl	%eax, %eax
	subl	synch_process_pid, %eax
	movl	%eax, %edi
	callq	kill
	movabsq	$.L.str.56, %rdi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	message1
	movb	$1, immediate_quit
# BB#2:                                 # %do.body
	xorl	%edi, %edi
	movq	globals+1928, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB19_5
# BB#3:                                 # %land.lhs.true
	xorl	%edi, %edi
	movq	globals+1104, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB19_5
# BB#4:                                 # %if.then.5
	callq	process_quit_flag
	jmp	.LBB19_8
.LBB19_5:                               # %if.else
	movb	pending_signals, %al
	testb	$1, %al
	je	.LBB19_7
# BB#6:                                 # %if.then.7
	callq	process_pending_signals
.LBB19_7:                               # %if.end
	jmp	.LBB19_8
.LBB19_8:                               # %if.end.8
	jmp	.LBB19_9
.LBB19_9:                               # %do.end
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$1, %edx
	movl	synch_process_pid, %edi
	callq	wait_for_termination
	movabsq	$.L.str.57, %rdi
	movl	$0, synch_process_pid
	movb	$0, immediate_quit
	callq	message1
.LBB19_10:                              # %if.end.9
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	call_process_cleanup, .Lfunc_end19-call_process_cleanup
	.cfi_endproc

	.align	16, 0x90
	.type	delete_temp_file,@function
delete_temp_file:                       # @delete_temp_file
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
	callq	SSDATA
	movq	%rax, %rdi
	callq	unlink
	movl	%eax, -12(%rbp)         # 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	delete_temp_file, .Lfunc_end20-delete_temp_file
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"~"
	.size	.L.str, 2

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Setting current directory"
	.size	.L.str.1, 26

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"/dev/null"
	.size	.L.str.2, 10

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Opening process input file"
	.size	.L.str.3, 27

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Opening null device"
	.size	.L.str.4, 20

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"PWD="
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"DISPLAY"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"PWD"
	.size	.L.str.7, 4

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"DISPLAY="
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"EMACSDATA"
	.size	.L.str.9, 10

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"/usr/local/share/emacs/25.1/etc"
	.size	.L.str.10, 32

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"EMACSDOC"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"EMACSPATH"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"/usr/local/libexec/emacs/25.1/x86_64-unknown-linux-gnu"
	.size	.L.str.13, 55

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"PATH"
	.size	.L.str.14, 5

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.zero	1
	.size	.L.str.15, 1

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"lib-src"
	.size	.L.str.16, 8

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"etc"
	.size	.L.str.17, 4

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"/home/yonghyun.kim/clean-tests/clean-emacs/emacs-25.1/lisp"
	.size	.L.str.18, 59

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"../src/"
	.size	.L.str.19, 8

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"NEWS"
	.size	.L.str.20, 5

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"../etc/"
	.size	.L.str.21, 8

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"arch-dependent data dir"
	.size	.L.str.22, 24

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"arch-independent data dir"
	.size	.L.str.23, 26

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"SHELL"
	.size	.L.str.24, 6

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"/bin/sh"
	.size	.L.str.25, 8

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"/usr/local/var/games/emacs"
	.size	.L.str.26, 27

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"emacsXXXXXX"
	.size	.L.str.27, 12

	.type	Vtemp_file_name_pattern,@object # @Vtemp_file_name_pattern
	.local	Vtemp_file_name_pattern
	.comm	Vtemp_file_name_pattern,8,8
	.type	syms_of_callproc.o_fwd,@object # @syms_of_callproc.o_fwd
	.local	syms_of_callproc.o_fwd
	.comm	syms_of_callproc.o_fwd,16,8
	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"shell-file-name"
	.size	.L.str.28, 16

	.type	syms_of_callproc.o_fwd.29,@object # @syms_of_callproc.o_fwd.29
	.local	syms_of_callproc.o_fwd.29
	.comm	syms_of_callproc.o_fwd.29,16,8
	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"exec-path"
	.size	.L.str.30, 10

	.type	syms_of_callproc.o_fwd.31,@object # @syms_of_callproc.o_fwd.31
	.local	syms_of_callproc.o_fwd.31
	.comm	syms_of_callproc.o_fwd.31,16,8
	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"exec-suffixes"
	.size	.L.str.32, 14

	.type	syms_of_callproc.o_fwd.33,@object # @syms_of_callproc.o_fwd.33
	.local	syms_of_callproc.o_fwd.33
	.comm	syms_of_callproc.o_fwd.33,16,8
	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"exec-directory"
	.size	.L.str.34, 15

	.type	syms_of_callproc.o_fwd.35,@object # @syms_of_callproc.o_fwd.35
	.local	syms_of_callproc.o_fwd.35
	.comm	syms_of_callproc.o_fwd.35,16,8
	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"data-directory"
	.size	.L.str.36, 15

	.type	syms_of_callproc.o_fwd.37,@object # @syms_of_callproc.o_fwd.37
	.local	syms_of_callproc.o_fwd.37
	.comm	syms_of_callproc.o_fwd.37,16,8
	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"doc-directory"
	.size	.L.str.38, 14

	.type	syms_of_callproc.o_fwd.39,@object # @syms_of_callproc.o_fwd.39
	.local	syms_of_callproc.o_fwd.39
	.comm	syms_of_callproc.o_fwd.39,16,8
	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"configure-info-directory"
	.size	.L.str.40, 25

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"/usr/local/share/info"
	.size	.L.str.41, 22

	.type	syms_of_callproc.o_fwd.42,@object # @syms_of_callproc.o_fwd.42
	.local	syms_of_callproc.o_fwd.42
	.comm	syms_of_callproc.o_fwd.42,16,8
	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"shared-game-score-directory"
	.size	.L.str.43, 28

	.type	syms_of_callproc.o_fwd.44,@object # @syms_of_callproc.o_fwd.44
	.local	syms_of_callproc.o_fwd.44
	.comm	syms_of_callproc.o_fwd.44,16,8
	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"initial-environment"
	.size	.L.str.45, 20

	.type	syms_of_callproc.o_fwd.46,@object # @syms_of_callproc.o_fwd.46
	.local	syms_of_callproc.o_fwd.46
	.comm	syms_of_callproc.o_fwd.46,16,8
	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"process-environment"
	.size	.L.str.47, 20

	.type	synch_process_pid,@object # @synch_process_pid
	.local	synch_process_pid
	.comm	synch_process_pid,4,4
	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"call-process invoked recursively"
	.size	.L.str.48, 33

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Searching for program"
	.size	.L.str.49, 22

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Opening process output file"
	.size	.L.str.50, 28

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Creating process pipe"
	.size	.L.str.51, 22

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Cannot redirect stderr"
	.size	.L.str.52, 23

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Doing vfork"
	.size	.L.str.53, 12

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"after-insert-file-set-buffer-file-coding-system"
	.size	.L.str.54, 48

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"unknown"
	.size	.L.str.55, 8

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Waiting for process to die...(type C-g again to kill it instantly)"
	.size	.L.str.56, 67

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Waiting for process to die...done"
	.size	.L.str.57, 34

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"TMPDIR"
	.size	.L.str.58, 7

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"/tmp/"
	.size	.L.str.59, 6

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Failed to open temporary file using pattern"
	.size	.L.str.60, 44

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"coding-system-for-write"
	.size	.L.str.61, 24

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Setting file position"
	.size	.L.str.62, 22

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"while setting up child"
	.size	.L.str.63, 23

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"call-process"
	.size	.L.str.64, 13

	.type	Scall_process,@object   # @Scall_process
	.data
	.align	8
Scall_process:
	.quad	167772160               # 0xa000000
	.quad	Fcall_process
	.short	1                       # 0x1
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.64
	.quad	0
	.quad	0
	.size	Scall_process, 48

	.type	.L.str.65,@object       # @.str.65
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.65:
	.asciz	"getenv-internal"
	.size	.L.str.65, 16

	.type	Sgetenv_internal,@object # @Sgetenv_internal
	.data
	.align	8
Sgetenv_internal:
	.quad	167772160               # 0xa000000
	.quad	Fgetenv_internal
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.65
	.quad	0
	.quad	0
	.size	Sgetenv_internal, 48

	.type	.L.str.66,@object       # @.str.66
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.66:
	.asciz	"call-process-region"
	.size	.L.str.66, 20

	.type	Scall_process_region,@object # @Scall_process_region
	.data
	.align	8
Scall_process_region:
	.quad	167772160               # 0xa000000
	.quad	Fcall_process_region
	.short	3                       # 0x3
	.short	65534                   # 0xfffe
	.zero	4
	.quad	.L.str.66
	.quad	0
	.quad	0
	.size	Scall_process_region, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
