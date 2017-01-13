	.text
	.file	"main.bc"
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
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
	subq	$208, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rdi
	callq	base_name
	movq	%rax, program_name
	movq	program_name, %rdi
	callq	xstrdup
	movl	$2, %edi
	movabsq	$.L.str.1, %rsi
	movabsq	$.L.str, %rcx
	movq	%rax, program_invocation_name
	movq	%rcx, version_etc_copyright
	callq	setlocale
	xorl	%edi, %edi
	movabsq	$.L.str.1, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	setlocale
	movabsq	$.L.str.2, %rdi
	movabsq	$.L.str.3, %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	bindtextdomain
	movabsq	$.L.str.2, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	textdomain
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movabsq	$.L.str.4, %rcx
	movabsq	$.L.str.5, %r8
	movabsq	$.L.str.6, %r9
	movabsq	$usage, %rsi
	movl	-8(%rbp), %edi
	movq	-16(%rbp), %r10
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%r10, %rsi
	movq	-88(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	parse_long_options
	movabsq	$exit_handler, %rdi
	callq	atexit
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	signame_init
# BB#1:                                 # %do.body
	movl	$2, %edi
	movabsq	$signal_handler, %rsi
	callq	signal
	movl	$1, %edi
	movl	%edi, %esi
	cmpq	%rsi, %rax
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$2, %edi
	movl	$1, %eax
	movl	%eax, %esi
	callq	signal
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB0_3:                                # %if.end
	jmp	.LBB0_4
.LBB0_4:                                # %do.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.body.9
	movl	$1, %edi
	movabsq	$signal_handler, %rsi
	callq	signal
	movl	$1, %edi
	movl	%edi, %esi
	cmpq	%rsi, %rax
	jne	.LBB0_7
# BB#6:                                 # %if.then.12
	movl	$1, %edi
	movl	$1, %eax
	movl	%eax, %esi
	callq	signal
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB0_7:                                # %if.end.14
	jmp	.LBB0_8
.LBB0_8:                                # %do.end.15
	jmp	.LBB0_9
.LBB0_9:                                # %do.body.16
	movl	$15, %edi
	movabsq	$signal_handler, %rsi
	callq	signal
	movl	$1, %edi
	movl	%edi, %esi
	cmpq	%rsi, %rax
	jne	.LBB0_11
# BB#10:                                # %if.then.19
	movl	$15, %edi
	movl	$1, %eax
	movl	%eax, %esi
	callq	signal
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB0_11:                               # %if.end.21
	jmp	.LBB0_12
.LBB0_12:                               # %do.end.22
	movl	$13, %edi
	movabsq	$signal_handler, %rsi
	callq	signal
	movabsq	$handle_a2ps_option, %rsi
	movabsq	$add_delegation, %rcx
	movq	%rcx, delegation_hook
	movq	%rsi, handle_option_hook
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	delegation_table_new
	movl	$111140, %edi           # imm = 0x1B224
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, delegation_table
	callq	re_set_syntax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	a2ps_job_new
	movq	%rax, job
	movq	job, %rdi
	callq	a2_read_sys_config
	movabsq	$.L.str.7, %rdi
	callq	getenv
	cmpq	$0, %rax
	jne	.LBB0_14
# BB#13:                                # %if.then.28
	movabsq	$.L.str.8, %rsi
	movq	job, %rdi
	movq	job, %rax
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	macro_meta_sequence_get
	movabsq	$.L.str.9, %rdx
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	a2_read_config
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB0_14:                               # %if.end.31
	movabsq	$.L.str.10, %rsi
	movabsq	$.L.str.11, %rdx
	movq	job, %rdi
	callq	a2_read_config
	movl	%eax, -160(%rbp)        # 4-byte Spill
	callq	sheets_map_new
	movq	%rax, sheets_map
	callq	new_style_sheets
	movq	%rax, style_sheets
	movq	job, %rdi
	movl	-8(%rbp), %esi
	movq	-16(%rbp), %rdx
	callq	a2ps_handle_options
	movl	%eax, -20(%rbp)
	movq	job, %rdi
	callq	a2ps_job_finalize
	movq	job, %rdx
	testb	$1, 324(%rdx)
	je	.LBB0_16
# BB#15:                                # %if.then.37
	movabsq	$spy_user, %rax
	movq	%rax, ps_comment_hook
.LBB0_16:                               # %if.end.38
	movq	-16(%rbp), %rax
	movq	job(%rip), %rcx
	movq	%rax, (%rcx)
	movslq	-8(%rbp), %rax
	movq	job(%rip), %rcx
	movq	%rax, 8(%rcx)
	movl	behavior(%rip), %edx
	movl	%edx, %eax
	movq	%rax, %rcx
	subq	$21, %rcx
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	ja	.LBB0_81
# BB#83:                                # %if.end.38
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	.LJTI0_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB0_17:                               # %sw.bb
	movl	-20(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB0_23
# BB#18:                                # %if.then.43
	jmp	.LBB0_19
.LBB0_19:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB0_22
# BB#20:                                # %for.body
                                        #   in Loop: Header=BB0_19 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	guess
# BB#21:                                # %for.inc
                                        #   in Loop: Header=BB0_19 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_19
.LBB0_22:                               # %for.end
	jmp	.LBB0_24
.LBB0_23:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	guess
.LBB0_24:                               # %if.end.47
	jmp	.LBB0_82
.LBB0_25:                               # %sw.bb.48
	jmp	.LBB0_26
.LBB0_26:                               # %for.cond.49
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB0_29
# BB#27:                                # %for.body.52
                                        #   in Loop: Header=BB0_26 Depth=1
	movabsq	$.L.str.12, %rdx
	movq	job, %rdi
	movq	job, %rax
	movq	1632(%rax), %rax
	movq	48(%rax), %rax
	movq	(%rax), %rax
	movslq	-20(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	(%rsi,%rcx,8), %rcx
	movq	%rax, %rsi
	callq	expand_user_string
	movq	stdout, %rsi
	movq	%rax, %rdi
	callq	fputs
	movl	$10, %edi
	movq	stdout, %rsi
	movl	%eax, -180(%rbp)        # 4-byte Spill
	callq	_IO_putc
	movl	%eax, -184(%rbp)        # 4-byte Spill
# BB#28:                                # %for.inc.59
                                        #   in Loop: Header=BB0_26 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_26
.LBB0_29:                               # %for.end.61
	jmp	.LBB0_82
.LBB0_30:                               # %sw.bb.62
	jmp	.LBB0_31
.LBB0_31:                               # %for.cond.63
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB0_36
# BB#32:                                # %for.body.66
                                        #   in Loop: Header=BB0_31 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	job, %rcx
	movq	16(%rcx), %rdi
	movslq	-20(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	(%rsi,%rcx,8), %rsi
	callq	pw_find_file
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB0_34
# BB#33:                                # %if.then.71
                                        #   in Loop: Header=BB0_31 Depth=1
	movq	-32(%rbp), %rdi
	movq	stdout, %rsi
	callq	fputs
	movl	$10, %edi
	movq	stdout, %rsi
	movl	%eax, -188(%rbp)        # 4-byte Spill
	callq	_IO_putc
	movl	%eax, -192(%rbp)        # 4-byte Spill
.LBB0_34:                               # %if.end.74
                                        #   in Loop: Header=BB0_31 Depth=1
	jmp	.LBB0_35
.LBB0_35:                               # %for.inc.75
                                        #   in Loop: Header=BB0_31 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_31
.LBB0_36:                               # %for.end.77
	jmp	.LBB0_82
.LBB0_37:                               # %sw.bb.78
	jmp	.LBB0_38
.LBB0_38:                               # %for.cond.79
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB0_41
# BB#39:                                # %for.body.82
                                        #   in Loop: Header=BB0_38 Depth=1
	movq	job, %rax
	movq	16(%rax), %rdi
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	movq	stdout, %rdx
	callq	pw_glob_print
# BB#40:                                # %for.inc.87
                                        #   in Loop: Header=BB0_38 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_38
.LBB0_41:                               # %for.end.89
	jmp	.LBB0_82
.LBB0_42:                               # %sw.bb.90
	xorl	%eax, %eax
	movl	%eax, %esi
	movabsq	$.L.str.4, %rdx
	movabsq	$.L.str.5, %rcx
	movabsq	$.L.str.6, %r8
	movq	stdout, %rdi
	callq	version_etc
	jmp	.LBB0_82
.LBB0_43:                               # %sw.bb.91
	xorl	%edi, %edi
	callq	usage
	jmp	.LBB0_82
.LBB0_44:                               # %sw.bb.92
	movq	job, %rdi
	movq	stdout, %rsi
	callq	list_options
	jmp	.LBB0_82
.LBB0_45:                               # %sw.bb.93
	movq	job, %rdi
	movq	stdout, %rsi
	callq	list_features
	jmp	.LBB0_82
.LBB0_46:                               # %sw.bb.94
	movq	job, %rdi
	movq	stdout, %rsi
	callq	list_media_long
	jmp	.LBB0_82
.LBB0_47:                               # %sw.bb.95
	movq	stdout, %rdi
	callq	list_style_sheets_long
	jmp	.LBB0_82
.LBB0_48:                               # %sw.bb.96
	movq	stdout, %rdi
	callq	list_style_sheets_html
	jmp	.LBB0_82
.LBB0_49:                               # %sw.bb.97
	movq	stdout, %rdi
	callq	list_style_sheets_texinfo
	jmp	.LBB0_82
.LBB0_50:                               # %sw.bb.98
	movq	job, %rdi
	movq	stdout, %rsi
	callq	a2ps_printers_list_long
	jmp	.LBB0_82
.LBB0_51:                               # %sw.bb.99
	movq	delegation_table, %rdi
	movq	stdout, %rsi
	callq	delegations_list_long
	jmp	.LBB0_82
.LBB0_52:                               # %sw.bb.100
	movq	job, %rdi
	movq	stdout, %rsi
	callq	macro_meta_sequences_list_long
	jmp	.LBB0_82
.LBB0_53:                               # %sw.bb.101
	movq	job, %rdi
	movq	stdout, %rsi
	callq	list_encodings_long
	jmp	.LBB0_82
.LBB0_54:                               # %sw.bb.102
	movq	job, %rdi
	movq	stdout, %rsi
	callq	list_texinfo_encodings_long
	jmp	.LBB0_82
.LBB0_55:                               # %sw.bb.103
	movq	job, %rdi
	movq	stdout, %rsi
	callq	user_options_list_long
	jmp	.LBB0_82
.LBB0_56:                               # %sw.bb.104
	movq	job, %rdi
	movq	stdout, %rsi
	callq	prologues_list_long
	jmp	.LBB0_82
.LBB0_57:                               # %sw.bb.105
	movq	job, %rdi
	movq	stdout, %rsi
	callq	prologues_list_texinfo
	jmp	.LBB0_82
.LBB0_58:                               # %sw.bb.106
	movq	job, %rdi
	movq	stdout, %rsi
	callq	a2ps_ppd_list_long
	jmp	.LBB0_82
.LBB0_59:                               # %sw.bb.107
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	movq	job, %rdi
	callq	a2ps_open_output_session
	movl	-20(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	.LBB0_61
# BB#60:                                # %if.then.110
	xorl	%eax, %eax
	movl	%eax, %edi
	leaq	-40(%rbp), %rsi
	leaq	-36(%rbp), %rdx
	callq	print
	jmp	.LBB0_66
.LBB0_61:                               # %if.else.111
	jmp	.LBB0_62
.LBB0_62:                               # %for.cond.112
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB0_65
# BB#63:                                # %for.body.115
                                        #   in Loop: Header=BB0_62 Depth=1
	leaq	-40(%rbp), %rsi
	leaq	-36(%rbp), %rdx
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	print
# BB#64:                                # %for.inc.118
                                        #   in Loop: Header=BB0_62 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_62
.LBB0_65:                               # %for.end.120
	jmp	.LBB0_66
.LBB0_66:                               # %if.end.121
	cmpq	$0, toc
	je	.LBB0_69
# BB#67:                                # %lor.lhs.false
	movq	toc, %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB0_69
# BB#68:                                # %if.then.127
	movabsq	$.L.str.13, %rdi
	callq	gettext
	leaq	-40(%rbp), %rdx
	movq	toc, %rsi
	movq	%rax, %rdi
	callq	print_toc
.LBB0_69:                               # %if.end.129
	cmpl	$0, -40(%rbp)
	jne	.LBB0_75
# BB#70:                                # %land.lhs.true
	cmpl	$1, -36(%rbp)
	jne	.LBB0_75
# BB#71:                                # %if.then.134
	movq	job, %rax
	movq	1632(%rax), %rax
	movq	40(%rax), %rax
	subq	$1, %rax
	movq	job, %rcx
	movq	1632(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -48(%rbp)
	movq	job, %rax
	movq	1632(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB0_72:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	cmpq	$0, 8(%rax)
	setne	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB0_73
	jmp	.LBB0_74
.LBB0_73:                               # %while.body
                                        #   in Loop: Header=BB0_72 Depth=1
	movq	-56(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	subq	$1, %rax
	movq	job, %rcx
	movq	1632(%rcx), %rcx
	movq	48(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB0_72
.LBB0_74:                               # %while.end
	movq	job, %rdi
	callq	a2ps_open_output_stream
	movq	job, %rdi
	movq	288(%rdi), %rdi
	movq	8(%rdi), %rdi
	movq	-48(%rbp), %rax
	movq	8(%rax), %rsi
	callq	pslex_dump
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdi
	callq	unlink
	movq	job, %rdi
	movl	%eax, -196(%rbp)        # 4-byte Spill
	callq	a2ps_close_output_stream
	movq	job, %rdi
	callq	msg_job_pages_printed
	jmp	.LBB0_80
.LBB0_75:                               # %if.else.150
	cmpl	$0, -40(%rbp)
	jne	.LBB0_77
# BB#76:                                # %lor.lhs.false.152
	cmpl	$0, -36(%rbp)
	je	.LBB0_78
.LBB0_77:                               # %if.then.154
	movq	job, %rdi
	callq	a2ps_close_output_session
	movq	job, %rdi
	callq	msg_job_pages_printed
	jmp	.LBB0_79
.LBB0_78:                               # %if.else.155
	callq	msg_nothing_printed
.LBB0_79:                               # %if.end.156
	jmp	.LBB0_80
.LBB0_80:                               # %if.end.157
	jmp	.LBB0_82
.LBB0_81:                               # %sw.default
	callq	abort
.LBB0_82:                               # %sw.epilog
	movq	job, %rdi
	callq	a2ps_job_free
	xorl	%eax, %eax
	movq	$0, job
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_59
	.quad	.LBB0_17
	.quad	.LBB0_43
	.quad	.LBB0_42
	.quad	.LBB0_25
	.quad	.LBB0_30
	.quad	.LBB0_37
	.quad	.LBB0_44
	.quad	.LBB0_45
	.quad	.LBB0_46
	.quad	.LBB0_47
	.quad	.LBB0_48
	.quad	.LBB0_49
	.quad	.LBB0_50
	.quad	.LBB0_51
	.quad	.LBB0_52
	.quad	.LBB0_53
	.quad	.LBB0_54
	.quad	.LBB0_55
	.quad	.LBB0_56
	.quad	.LBB0_57
	.quad	.LBB0_58

	.text
	.align	16, 0x90
	.type	usage,@function
usage:                                  # @usage
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
	subq	$192, %rsp
	movabsq	$.L.str.14, %rax
	movl	%edi, -4(%rbp)
	movq	stdout, %rcx
	movq	%rcx, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gettext
	movq	program_invocation_name, %rdx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	fprintf
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	_IO_putc
	movabsq	$.L.str.15, %rdi
	movl	%eax, -32(%rbp)         # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movabsq	$.L.str.16, %rdi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	movl	%eax, -40(%rbp)         # 4-byte Spill
	callq	_IO_putc
	movabsq	$.L.str.17, %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	_IO_putc
	movabsq	$.L.str.18, %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movabsq	$.L.str.19, %rdi
	movl	%eax, -56(%rbp)         # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	_IO_putc
	movabsq	$.L.str.20, %rdi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movabsq	$.L.str.21, %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	movl	%eax, -72(%rbp)         # 4-byte Spill
	callq	_IO_putc
	movabsq	$.L.str.22, %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	_IO_putc
	movabsq	$.L.str.23, %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movabsq	$.L.str.24, %rdi
	movl	%eax, -88(%rbp)         # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	_IO_putc
	movabsq	$.L.str.25, %rdi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movabsq	$.L.str.26, %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	_IO_putc
	movabsq	$.L.str.27, %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	_IO_putc
	movabsq	$.L.str.28, %rdi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movabsq	$.L.str.29, %rdi
	movl	%eax, -120(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	_IO_putc
	movabsq	$.L.str.30, %rdi
	movl	%eax, -128(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	_IO_putc
	movabsq	$.L.str.31, %rdi
	movl	%eax, -136(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movabsq	$.L.str.32, %rdi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	movl	%eax, -144(%rbp)        # 4-byte Spill
	callq	_IO_putc
	movabsq	$.L.str.33, %rdi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movabsq	$.L.str.34, %rdi
	movl	%eax, -152(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	_IO_putc
	movabsq	$.L.str.35, %rdi
	movl	%eax, -160(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movabsq	$.L.str.36, %rdi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	movl	%eax, -168(%rbp)        # 4-byte Spill
	callq	_IO_putc
	movabsq	$.L.str.37, %rdi
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	movl	%eax, -176(%rbp)        # 4-byte Spill
	callq	_IO_putc
	movabsq	$.L.str.38, %rdi
	movl	%eax, -180(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movabsq	$.L.str.39, %rdi
	movl	%eax, -184(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movl	-4(%rbp), %edi
	movl	%eax, -188(%rbp)        # 4-byte Spill
	callq	exit
.Lfunc_end1:
	.size	usage, .Lfunc_end1-usage
	.cfi_endproc

	.align	16, 0x90
	.type	exit_handler,@function
exit_handler:                           # @exit_handler
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
	cmpq	$0, job
	je	.LBB2_2
# BB#1:                                 # %if.then
	movq	job, %rdi
	callq	a2ps_job_unlink_tmpfiles
.LBB2_2:                                # %if.end
	cmpq	$0, sample_tmpname
	je	.LBB2_4
# BB#3:                                 # %if.then.2
	movq	sample_tmpname, %rdi
	callq	unlink
	movl	%eax, -4(%rbp)          # 4-byte Spill
.LBB2_4:                                # %if.end.3
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	exit_handler, .Lfunc_end2-exit_handler
	.cfi_endproc

	.align	16, 0x90
	.type	signal_handler,@function
signal_handler:                         # @signal_handler
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
	subq	$32, %rsp
	movabsq	$.L.str.40, %rax
	movl	%edi, -4(%rbp)
	movq	%rax, %rdi
	callq	gettext
	movl	-4(%rbp), %ecx
	movl	-4(%rbp), %edi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	movl	%ecx, -20(%rbp)         # 4-byte Spill
	callq	strsignal
	movl	$1, %edi
	xorl	%esi, %esi
	movq	-16(%rbp), %rdx         # 8-byte Reload
	movl	-20(%rbp), %ecx         # 4-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	error
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	signal_handler, .Lfunc_end3-signal_handler
	.cfi_endproc

	.align	16, 0x90
	.type	handle_a2ps_option,@function
handle_a2ps_option:                     # @handle_a2ps_option
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
	subq	$144, %rsp
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-8(%rbp), %edi
	movl	%edi, %eax
	subl	$69, %eax
	movl	%edi, -36(%rbp)         # 4-byte Spill
	movl	%eax, -40(%rbp)         # 4-byte Spill
	je	.LBB4_1
	jmp	.LBB4_45
.LBB4_45:                               # %entry
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$86, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	je	.LBB4_16
	jmp	.LBB4_46
.LBB4_46:                               # %entry
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$90, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB4_17
	jmp	.LBB4_47
.LBB4_47:                               # %entry
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$103, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB4_12
	jmp	.LBB4_48
.LBB4_48:                               # %entry
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$104, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB4_15
	jmp	.LBB4_49
.LBB4_49:                               # %entry
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$137, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB4_19
	jmp	.LBB4_50
.LBB4_50:                               # %entry
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$138, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB4_18
	jmp	.LBB4_51
.LBB4_51:                               # %entry
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$139, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB4_21
	jmp	.LBB4_52
.LBB4_52:                               # %entry
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$145, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB4_22
	jmp	.LBB4_53
.LBB4_53:                               # %entry
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$148, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB4_23
	jmp	.LBB4_54
.LBB4_54:                               # %entry
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$150, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB4_20
	jmp	.LBB4_55
.LBB4_55:                               # %entry
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$154, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB4_13
	jmp	.LBB4_56
.LBB4_56:                               # %entry
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$160, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB4_24
	jmp	.LBB4_57
.LBB4_57:                               # %entry
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$161, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB4_25
	jmp	.LBB4_58
.LBB4_58:                               # %entry
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$162, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB4_26
	jmp	.LBB4_59
.LBB4_59:                               # %entry
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$167, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB4_27
	jmp	.LBB4_60
.LBB4_60:                               # %entry
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$169, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB4_41
	jmp	.LBB4_61
.LBB4_61:                               # %entry
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$173, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB4_14
	jmp	.LBB4_42
.LBB4_1:                                # %sw.bb
	jmp	.LBB4_2
.LBB4_2:                                # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
# BB#3:                                 # %do.body.1
	cmpq	$0, style_request
	je	.LBB4_5
# BB#4:                                 # %if.then
	movq	style_request, %rdi
	callq	free
.LBB4_5:                                # %if.end
	jmp	.LBB4_6
.LBB4_6:                                # %do.end
	cmpq	$0, -24(%rbp)
	je	.LBB4_9
# BB#7:                                 # %lor.lhs.false
	movq	-24(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB4_9
# BB#8:                                 # %cond.true
	movq	-24(%rbp), %rdi
	callq	xstrdup
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB4_10
.LBB4_9:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB4_10
.LBB4_10:                               # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, style_request
# BB#11:                                # %do.end.4
	jmp	.LBB4_43
.LBB4_12:                               # %sw.bb.5
	movl	$2, highlight_level
	jmp	.LBB4_43
.LBB4_13:                               # %sw.bb.6
	movabsq	$.L.str.41, %rdi
	movq	-16(%rbp), %rsi
	callq	a2ps_get_bool
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, highlight_level
	jmp	.LBB4_43
.LBB4_14:                               # %sw.bb.9
	movabsq	$.L.str.42, %rdi
	movq	-16(%rbp), %rsi
	callq	get_highlight_level
	movl	%eax, highlight_level
	jmp	.LBB4_43
.LBB4_15:                               # %sw.bb.11
	movl	$2, behavior
	jmp	.LBB4_43
.LBB4_16:                               # %sw.bb.12
	movl	$3, behavior
	jmp	.LBB4_43
.LBB4_17:                               # %sw.bb.13
	movb	$1, delegate_p
	jmp	.LBB4_43
.LBB4_18:                               # %sw.bb.14
	movl	$1, behavior
	jmp	.LBB4_43
.LBB4_19:                               # %sw.bb.15
	movl	$5, behavior
	jmp	.LBB4_43
.LBB4_20:                               # %sw.bb.16
	movl	$6, behavior
	jmp	.LBB4_43
.LBB4_21:                               # %sw.bb.17
	movl	$7, behavior
	jmp	.LBB4_43
.LBB4_22:                               # %sw.bb.18
	movabsq	$.L.str.43, %rdi
	movabsq	$behavior_args, %rdx
	movabsq	$behavior_types, %rax
	movl	$4, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rsi
	movq	argmatch_die, %r10
	movq	%rax, %rcx
	movq	%r10, (%rsp)
	callq	__xargmatch_internal
	movslq	%eax, %rcx
	movl	behavior_types(,%rcx,4), %eax
	movl	%eax, behavior
	jmp	.LBB4_43
.LBB4_23:                               # %sw.bb.20
	movabsq	$.L.str.44, %rdi
	xorl	%edx, %edx
	movl	$3, %ecx
	movl	$5, %r8d
	movq	-16(%rbp), %rsi
	callq	get_integer_in_range
	movl	%eax, strip_level
	jmp	.LBB4_43
.LBB4_24:                               # %sw.bb.22
	movabsq	$.L.str.45, %rdi
	movq	-16(%rbp), %rsi
	callq	a2ps_get_bool
	andb	$1, %al
	movb	%al, delegate_p
	jmp	.LBB4_43
.LBB4_25:                               # %sw.bb.24
	movl	$9, behavior
	jmp	.LBB4_43
.LBB4_26:                               # %sw.bb.25
	movl	$10, behavior
	jmp	.LBB4_43
.LBB4_27:                               # %sw.bb.26
	jmp	.LBB4_28
.LBB4_28:                               # %do.body.27
	cmpq	$0, -16(%rbp)
	je	.LBB4_30
# BB#29:                                # %cond.true.30
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB4_31
.LBB4_30:                               # %cond.false.31
	movabsq	$.L.str.46, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB4_31
.LBB4_31:                               # %cond.end.32
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
# BB#32:                                # %do.body.34
	cmpq	$0, toc
	je	.LBB4_34
# BB#33:                                # %if.then.36
	movq	toc, %rdi
	callq	free
.LBB4_34:                               # %if.end.37
	jmp	.LBB4_35
.LBB4_35:                               # %do.end.38
	cmpq	$0, -32(%rbp)
	je	.LBB4_38
# BB#36:                                # %lor.lhs.false.41
	movq	-32(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB4_38
# BB#37:                                # %cond.true.45
	movq	-32(%rbp), %rdi
	callq	xstrdup
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB4_39
.LBB4_38:                               # %cond.false.47
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB4_39
.LBB4_39:                               # %cond.end.48
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, toc
# BB#40:                                # %do.end.50
	jmp	.LBB4_43
.LBB4_41:                               # %sw.bb.51
	movabsq	$.L.str.47, %rdi
	movq	-16(%rbp), %rsi
	callq	option_string_to_eol
	movl	%eax, end_of_line
	jmp	.LBB4_43
.LBB4_42:                               # %sw.default
	movl	$0, -4(%rbp)
	jmp	.LBB4_44
.LBB4_43:                               # %sw.epilog
	movl	$1, -4(%rbp)
.LBB4_44:                               # %return
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	handle_a2ps_option, .Lfunc_end4-handle_a2ps_option
	.cfi_endproc

	.align	16, 0x90
	.type	spy_user,@function
spy_user:                               # @spy_user
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
	subq	$8320, %rsp             # imm = 0x2080
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	job, %rax
	cmpq	$0, 1544(%rax)
	je	.LBB5_3
# BB#2:                                 # %cond.true
	movq	job, %rax
	movq	1544(%rax), %rax
	movq	%rax, -8232(%rbp)       # 8-byte Spill
	jmp	.LBB5_4
.LBB5_3:                                # %cond.false
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.93, %rsi
	callq	tempnam
	movq	%rax, -8232(%rbp)       # 8-byte Spill
.LBB5_4:                                # %cond.end
	movq	-8232(%rbp), %rax       # 8-byte Reload
	movq	job, %rcx
	movq	%rax, 1544(%rcx)
# BB#5:                                 # %do.end
	movabsq	$.L.str.94, %rsi
	movq	job, %rax
	movq	1544(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	fopen
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB5_7
# BB#6:                                 # %if.then
	callq	__errno_location
	movabsq	$.L.str.95, %rdi
	movl	(%rax), %esi
	movl	%esi, -8236(%rbp)       # 4-byte Spill
	callq	gettext
	movq	-32(%rbp), %rdi
	movq	%rax, -8248(%rbp)       # 8-byte Spill
	callq	quotearg
	movl	$1, %edi
	movl	-8236(%rbp), %esi       # 4-byte Reload
	movq	-8248(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	error
.LBB5_7:                                # %if.end
	movabsq	$.L.str.96, %rdi
	movq	-24(%rbp), %rsi
	callq	fputs
	movabsq	$.L.str.97, %rdx
	movabsq	$.L.str.98, %rcx
	movq	job, %rdi
	movq	job, %rsi
	movq	1632(%rsi), %rsi
	movq	40(%rsi), %rsi
	subq	$1, %rsi
	movq	job, %r8
	movq	1632(%r8), %r8
	movq	48(%r8), %r8
	movq	(%r8,%rsi,8), %rsi
	movl	%eax, -8252(%rbp)       # 4-byte Spill
	callq	expand_user_string
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	fputs
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	%eax, -8256(%rbp)       # 4-byte Spill
	callq	list_options
	movl	$10, %edi
	movq	-24(%rbp), %rsi
	callq	_IO_putc
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	%eax, -8260(%rbp)       # 4-byte Spill
	callq	macro_meta_sequences_list_long
	movabsq	$.L.str.99, %rdi
	movq	-24(%rbp), %rsi
	callq	fputs
	movq	-24(%rbp), %rdi
	movl	%eax, -8264(%rbp)       # 4-byte Spill
	callq	fclose
	movabsq	$.L.str.100, %rsi
	movq	-32(%rbp), %rdi
	movl	%eax, -8268(%rbp)       # 4-byte Spill
	callq	fopen
	cmpq	$0, -24(%rbp)
	movq	%rax, -8280(%rbp)       # 8-byte Spill
	jne	.LBB5_9
# BB#8:                                 # %if.then.22
	callq	__errno_location
	movabsq	$.L.str.95, %rdi
	movl	(%rax), %esi
	movl	%esi, -8284(%rbp)       # 4-byte Spill
	callq	gettext
	movq	-32(%rbp), %rdi
	movq	%rax, -8296(%rbp)       # 8-byte Spill
	callq	quotearg
	movl	$1, %edi
	movl	-8284(%rbp), %esi       # 4-byte Reload
	movq	-8296(%rbp), %rdx       # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	error
.LBB5_9:                                # %if.end.26
	jmp	.LBB5_10
.LBB5_10:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$8192, %esi             # imm = 0x2000
	leaq	-8224(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	je	.LBB5_12
# BB#11:                                # %while.body
                                        #   in Loop: Header=BB5_10 Depth=1
	movabsq	$.L.str.101, %rdi
	movq	-16(%rbp), %rsi
	callq	fputs
	leaq	-8224(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, -8300(%rbp)       # 4-byte Spill
	callq	fputs
	movl	%eax, -8304(%rbp)       # 4-byte Spill
	jmp	.LBB5_10
.LBB5_12:                               # %while.end
	movabsq	$.L.str.101, %rdi
	movq	-16(%rbp), %rsi
	callq	fputs
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	movl	%eax, -8308(%rbp)       # 4-byte Spill
	callq	_IO_putc
	movq	-24(%rbp), %rdi
	movl	%eax, -8312(%rbp)       # 4-byte Spill
	callq	fclose
	movq	-32(%rbp), %rdi
	movl	%eax, -8316(%rbp)       # 4-byte Spill
	callq	unlink
	movl	%eax, -8320(%rbp)       # 4-byte Spill
	addq	$8320, %rsp             # imm = 0x2080
	popq	%rbp
	retq
.Lfunc_end5:
	.size	spy_user, .Lfunc_end5-spy_user
	.cfi_endproc

	.align	16, 0x90
	.type	list_options,@function
list_options:                           # @list_options
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
	pushq	%r14
	pushq	%rbx
	subq	$1424, %rsp             # imm = 0x590
.Ltmp21:
	.cfi_offset %rbx, -32
.Ltmp22:
	.cfi_offset %r14, -24
	movabsq	$.L.str.102, %rax
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -552(%rbp)
	movq	$0, -560(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -568(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gettext
	movl	$61, %esi
	movl	$1, %edx
	movabsq	$.L.str.5, %r9
	movq	program_invocation_name, %r8
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	title
	movl	$10, %edi
	movq	-32(%rbp), %rsi
	callq	_IO_putc
	movabsq	$.L.str.20, %rdi
	movq	-32(%rbp), %rcx
	movl	%eax, -572(%rbp)        # 4-byte Spill
	movq	%rcx, -584(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$45, %esi
	xorl	%edx, %edx
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	title
	movabsq	$.L.str.103, %rdi
	movq	-32(%rbp), %rcx
	movq	%rcx, -592(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-24(%rbp), %rcx
	movq	336(%rcx), %rcx
	movq	(%rcx), %rdx
	movq	job, %rdi
	movq	job, %rcx
	movq	344(%rcx), %rsi
	movq	%rax, -600(%rbp)        # 8-byte Spill
	movq	%rdx, -608(%rbp)        # 8-byte Spill
	callq	a2ps_medium_libpaper_p
	movabsq	$.L.str.1, %rcx
	movabsq	$.L.str.104, %rdx
	testb	$1, %al
	cmovneq	%rdx, %rcx
	movq	-24(%rbp), %rdx
	cmpl	$0, 124(%rdx)
	movq	%rcx, -616(%rbp)        # 8-byte Spill
	jne	.LBB6_2
# BB#1:                                 # %cond.true
	movabsq	$.L.str.105, %rdi
	callq	gettext
	movq	%rax, -624(%rbp)        # 8-byte Spill
	jmp	.LBB6_3
.LBB6_2:                                # %cond.false
	movabsq	$.L.str.106, %rdi
	callq	gettext
	movq	%rax, -624(%rbp)        # 8-byte Spill
.LBB6_3:                                # %cond.end
	movq	-624(%rbp), %rax        # 8-byte Reload
	movq	-24(%rbp), %rcx
	movl	132(%rcx), %r9d
	movq	-24(%rbp), %rcx
	movl	136(%rcx), %edx
	movq	-24(%rbp), %rcx
	movl	140(%rcx), %edi
	movq	%rax, -632(%rbp)        # 8-byte Spill
	movl	%r9d, -636(%rbp)        # 4-byte Spill
	movl	%edx, -640(%rbp)        # 4-byte Spill
	callq	madir_to_string
	movq	-24(%rbp), %rcx
	cmpl	$0, 320(%rcx)
	movq	%rax, -648(%rbp)        # 8-byte Spill
	je	.LBB6_5
# BB#4:                                 # %cond.true.9
	movabsq	$.L.str.107, %rdi
	callq	gettext
	movq	%rax, -656(%rbp)        # 8-byte Spill
	jmp	.LBB6_6
.LBB6_5:                                # %cond.false.11
	movabsq	$.L.str.108, %rdi
	callq	gettext
	movq	%rax, -656(%rbp)        # 8-byte Spill
.LBB6_6:                                # %cond.end.13
	movq	-656(%rbp), %rax        # 8-byte Reload
	movq	-24(%rbp), %rcx
	movl	316(%rcx), %edi
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	file_align_to_string
	movq	-24(%rbp), %rcx
	movl	152(%rcx), %edi
	movq	-592(%rbp), %rcx        # 8-byte Reload
	movl	%edi, -668(%rbp)        # 4-byte Spill
	movq	%rcx, %rdi
	movq	-600(%rbp), %rsi        # 8-byte Reload
	movq	-608(%rbp), %rdx        # 8-byte Reload
	movq	-616(%rbp), %rcx        # 8-byte Reload
	movq	-632(%rbp), %r8         # 8-byte Reload
	movl	-636(%rbp), %r9d        # 4-byte Reload
	movl	-640(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, (%rsp)
	movq	-648(%rbp), %r11        # 8-byte Reload
	movq	%r11, 8(%rsp)
	movq	-664(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 16(%rsp)
	movq	%rax, 24(%rsp)
	movl	-668(%rbp), %r14d       # 4-byte Reload
	movl	%r14d, 32(%rsp)
	movb	$0, %al
	callq	fprintf
	movl	$10, %edi
	movq	-32(%rbp), %rsi
	movl	%eax, -672(%rbp)        # 4-byte Spill
	callq	_IO_putc
	movq	-24(%rbp), %rcx
	cmpl	$0, 360(%rcx)
	movl	%eax, -676(%rbp)        # 4-byte Spill
	jle	.LBB6_8
# BB#7:                                 # %if.then
	movabsq	$.L.str.109, %rdi
	leaq	-288(%rbp), %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movl	360(%rdi), %edx
	movq	-688(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	sprintf
	movl	%eax, -692(%rbp)        # 4-byte Spill
	jmp	.LBB6_12
.LBB6_8:                                # %if.else
	movq	-24(%rbp), %rax
	cmpl	$0, 356(%rax)
	jle	.LBB6_10
# BB#9:                                 # %if.then.23
	movabsq	$.L.str.110, %rdi
	leaq	-288(%rbp), %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movl	356(%rdi), %edx
	movq	-704(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	sprintf
	movl	%eax, -708(%rbp)        # 4-byte Spill
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.28
	movabsq	$.L.str.111, %rdi
	leaq	-288(%rbp), %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	cvtss2sd	364(%rdi), %xmm0
	movq	-720(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$1, %al
	callq	sprintf
	movl	%eax, -724(%rbp)        # 4-byte Spill
.LBB6_11:                               # %if.end
	jmp	.LBB6_12
.LBB6_12:                               # %if.end.32
	movq	-24(%rbp), %rax
	movl	300(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -728(%rbp)        # 4-byte Spill
	je	.LBB6_13
	jmp	.LBB6_74
.LBB6_74:                               # %if.end.32
	movl	-728(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -732(%rbp)        # 4-byte Spill
	je	.LBB6_14
	jmp	.LBB6_15
.LBB6_13:                               # %sw.bb
	movabsq	$.L.str.108, %rdi
	leaq	-544(%rbp), %rax
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-744(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	strcpy
	movq	%rax, -752(%rbp)        # 8-byte Spill
	jmp	.LBB6_16
.LBB6_14:                               # %sw.bb.36
	movabsq	$.L.str.112, %rdi
	leaq	-544(%rbp), %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-760(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	strcpy
	movq	%rax, -768(%rbp)        # 8-byte Spill
	jmp	.LBB6_16
.LBB6_15:                               # %sw.default
	movabsq	$.L.str.113, %rdi
	leaq	-544(%rbp), %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movl	300(%rdi), %edx
	movq	-776(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	sprintf
	movl	%eax, -780(%rbp)        # 4-byte Spill
.LBB6_16:                               # %sw.epilog
	movabsq	$.L.str.23, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -792(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$45, %esi
	xorl	%edx, %edx
	movq	-792(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	title
	movabsq	$.L.str.114, %rdi
	movq	-32(%rbp), %rcx
	movq	%rcx, -800(%rbp)        # 8-byte Spill
	callq	gettext
	leaq	-288(%rbp), %rcx
	leaq	-544(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movl	352(%rdi), %r8d
	movq	-24(%rbp), %rdi
	movl	304(%rdi), %edi
	movq	%rax, -808(%rbp)        # 8-byte Spill
	movq	%rcx, -816(%rbp)        # 8-byte Spill
	movq	%rdx, -824(%rbp)        # 8-byte Spill
	movl	%r8d, -828(%rbp)        # 4-byte Spill
	callq	unprintable_format_to_string
	movq	-800(%rbp), %rdi        # 8-byte Reload
	movq	-808(%rbp), %rsi        # 8-byte Reload
	movq	-824(%rbp), %rdx        # 8-byte Reload
	movq	-816(%rbp), %rcx        # 8-byte Reload
	movl	-828(%rbp), %r8d        # 4-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	fprintf
	movl	$10, %edi
	movq	-32(%rbp), %rsi
	movl	%eax, -832(%rbp)        # 4-byte Spill
	callq	_IO_putc
	movabsq	$.L.str.115, %rdi
	movq	-32(%rbp), %rcx
	movl	%eax, -836(%rbp)        # 4-byte Spill
	movq	%rcx, -848(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$45, %esi
	xorl	%edx, %edx
	movq	-848(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	title
	movabsq	$.L.str.116, %rdi
	movq	-32(%rbp), %rcx
	movq	%rcx, -856(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-24(%rbp), %rcx
	cmpq	$0, 432(%rcx)
	movq	%rax, -864(%rbp)        # 8-byte Spill
	jne	.LBB6_18
# BB#17:                                # %cond.true.55
	movabsq	$.L.str.1, %rax
	movq	%rax, -872(%rbp)        # 8-byte Spill
	jmp	.LBB6_19
.LBB6_18:                               # %cond.false.56
	movq	-24(%rbp), %rax
	movq	432(%rax), %rax
	movq	%rax, -872(%rbp)        # 8-byte Spill
.LBB6_19:                               # %cond.end.58
	movq	-872(%rbp), %rax        # 8-byte Reload
	movq	-24(%rbp), %rcx
	cmpq	$0, 464(%rcx)
	movq	%rax, -880(%rbp)        # 8-byte Spill
	jne	.LBB6_21
# BB#20:                                # %cond.true.62
	movabsq	$.L.str.1, %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
	jmp	.LBB6_22
.LBB6_21:                               # %cond.false.63
	movq	-24(%rbp), %rax
	movq	464(%rax), %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
.LBB6_22:                               # %cond.end.65
	movq	-888(%rbp), %rax        # 8-byte Reload
	movq	-24(%rbp), %rcx
	cmpq	$0, 472(%rcx)
	movq	%rax, -896(%rbp)        # 8-byte Spill
	jne	.LBB6_24
# BB#23:                                # %cond.true.69
	movabsq	$.L.str.1, %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
	jmp	.LBB6_25
.LBB6_24:                               # %cond.false.70
	movq	-24(%rbp), %rax
	movq	472(%rax), %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
.LBB6_25:                               # %cond.end.72
	movq	-904(%rbp), %rax        # 8-byte Reload
	movq	-24(%rbp), %rcx
	cmpq	$0, 480(%rcx)
	movq	%rax, -912(%rbp)        # 8-byte Spill
	jne	.LBB6_27
# BB#26:                                # %cond.true.76
	movabsq	$.L.str.1, %rax
	movq	%rax, -920(%rbp)        # 8-byte Spill
	jmp	.LBB6_28
.LBB6_27:                               # %cond.false.77
	movq	-24(%rbp), %rax
	movq	480(%rax), %rax
	movq	%rax, -920(%rbp)        # 8-byte Spill
.LBB6_28:                               # %cond.end.79
	movq	-920(%rbp), %rax        # 8-byte Reload
	movq	-24(%rbp), %rcx
	cmpq	$0, 448(%rcx)
	movq	%rax, -928(%rbp)        # 8-byte Spill
	jne	.LBB6_30
# BB#29:                                # %cond.true.83
	movabsq	$.L.str.1, %rax
	movq	%rax, -936(%rbp)        # 8-byte Spill
	jmp	.LBB6_31
.LBB6_30:                               # %cond.false.84
	movq	-24(%rbp), %rax
	movq	448(%rax), %rax
	movq	%rax, -936(%rbp)        # 8-byte Spill
.LBB6_31:                               # %cond.end.86
	movq	-936(%rbp), %rax        # 8-byte Reload
	movq	-24(%rbp), %rcx
	cmpq	$0, 440(%rcx)
	movq	%rax, -944(%rbp)        # 8-byte Spill
	jne	.LBB6_33
# BB#32:                                # %cond.true.90
	movabsq	$.L.str.1, %rax
	movq	%rax, -952(%rbp)        # 8-byte Spill
	jmp	.LBB6_34
.LBB6_33:                               # %cond.false.91
	movq	-24(%rbp), %rax
	movq	440(%rax), %rax
	movq	%rax, -952(%rbp)        # 8-byte Spill
.LBB6_34:                               # %cond.end.93
	movq	-952(%rbp), %rax        # 8-byte Reload
	movq	-24(%rbp), %rcx
	cmpq	$0, 456(%rcx)
	movq	%rax, -960(%rbp)        # 8-byte Spill
	jne	.LBB6_36
# BB#35:                                # %cond.true.97
	movabsq	$.L.str.1, %rax
	movq	%rax, -968(%rbp)        # 8-byte Spill
	jmp	.LBB6_37
.LBB6_36:                               # %cond.false.98
	movq	-24(%rbp), %rax
	movq	456(%rax), %rax
	movq	%rax, -968(%rbp)        # 8-byte Spill
.LBB6_37:                               # %cond.end.100
	movq	-968(%rbp), %rax        # 8-byte Reload
	movq	-24(%rbp), %rcx
	cmpq	$0, 488(%rcx)
	movq	%rax, -976(%rbp)        # 8-byte Spill
	jne	.LBB6_39
# BB#38:                                # %cond.true.104
	movabsq	$.L.str.1, %rax
	movq	%rax, -984(%rbp)        # 8-byte Spill
	jmp	.LBB6_40
.LBB6_39:                               # %cond.false.105
	movq	-24(%rbp), %rax
	movq	488(%rax), %rax
	movq	%rax, -984(%rbp)        # 8-byte Spill
.LBB6_40:                               # %cond.end.107
	movq	-984(%rbp), %rax        # 8-byte Reload
	movq	-856(%rbp), %rdi        # 8-byte Reload
	movq	-864(%rbp), %rsi        # 8-byte Reload
	movq	-880(%rbp), %rdx        # 8-byte Reload
	movq	-896(%rbp), %rcx        # 8-byte Reload
	movq	-912(%rbp), %r8         # 8-byte Reload
	movq	-928(%rbp), %r9         # 8-byte Reload
	movq	-944(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	-960(%rbp), %r11        # 8-byte Reload
	movq	%r11, 8(%rsp)
	movq	-976(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	callq	fprintf
	movl	$10, %edi
	movq	-32(%rbp), %rsi
	movl	%eax, -988(%rbp)        # 4-byte Spill
	callq	_IO_putc
	movabsq	$.L.str.28, %rdi
	movq	-32(%rbp), %rcx
	movl	%eax, -992(%rbp)        # 4-byte Spill
	movq	%rcx, -1000(%rbp)       # 8-byte Spill
	callq	gettext
	movl	$45, %esi
	xorl	%edx, %edx
	movq	-1000(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	title
	movabsq	$.L.str.117, %rdi
	movq	-32(%rbp), %rcx
	movq	%rcx, -1008(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-24(%rbp), %rcx
	testb	$1, 296(%rcx)
	movq	%rax, -1016(%rbp)       # 8-byte Spill
	jne	.LBB6_42
# BB#41:                                # %cond.true.114
	movabsq	$.L.str.107, %rdi
	callq	gettext
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	jmp	.LBB6_43
.LBB6_42:                               # %cond.false.116
	movabsq	$.L.str.108, %rdi
	callq	gettext
	movq	%rax, -1024(%rbp)       # 8-byte Spill
.LBB6_43:                               # %cond.end.118
	movq	-1024(%rbp), %rax       # 8-byte Reload
	movq	-24(%rbp), %rcx
	cmpl	$0, 308(%rcx)
	movq	%rax, -1032(%rbp)       # 8-byte Spill
	je	.LBB6_45
# BB#44:                                # %cond.true.121
	movabsq	$.L.str.107, %rdi
	callq	gettext
	movq	%rax, -1040(%rbp)       # 8-byte Spill
	jmp	.LBB6_46
.LBB6_45:                               # %cond.false.123
	movabsq	$.L.str.108, %rdi
	callq	gettext
	movq	%rax, -1040(%rbp)       # 8-byte Spill
.LBB6_46:                               # %cond.end.125
	movq	-1040(%rbp), %rax       # 8-byte Reload
	movl	end_of_line, %edi
	movq	%rax, -1048(%rbp)       # 8-byte Spill
	callq	eol_to_string
	movq	-24(%rbp), %rcx
	movq	384(%rcx), %rdi
	movq	%rax, -1056(%rbp)       # 8-byte Spill
	callq	encoding_get_name
	movq	-24(%rbp), %rcx
	movq	424(%rcx), %rcx
	movq	-24(%rbp), %rdi
	movq	328(%rdi), %rdi
	movq	-24(%rbp), %rdx
	cmpl	$0, 312(%rdx)
	movq	%rax, -1064(%rbp)       # 8-byte Spill
	movq	%rcx, -1072(%rbp)       # 8-byte Spill
	movq	%rdi, -1080(%rbp)       # 8-byte Spill
	je	.LBB6_48
# BB#47:                                # %cond.true.130
	movabsq	$.L.str.107, %rdi
	callq	gettext
	movq	%rax, -1088(%rbp)       # 8-byte Spill
	jmp	.LBB6_49
.LBB6_48:                               # %cond.false.132
	movabsq	$.L.str.108, %rdi
	callq	gettext
	movq	%rax, -1088(%rbp)       # 8-byte Spill
.LBB6_49:                               # %cond.end.134
	movq	-1088(%rbp), %rax       # 8-byte Reload
	testb	$1, delegate_p
	movq	%rax, -1096(%rbp)       # 8-byte Spill
	je	.LBB6_51
# BB#50:                                # %cond.true.138
	movabsq	$.L.str.107, %rdi
	callq	gettext
	movq	%rax, -1104(%rbp)       # 8-byte Spill
	jmp	.LBB6_52
.LBB6_51:                               # %cond.false.140
	movabsq	$.L.str.108, %rdi
	callq	gettext
	movq	%rax, -1104(%rbp)       # 8-byte Spill
.LBB6_52:                               # %cond.end.142
	movq	-1104(%rbp), %rax       # 8-byte Reload
	movq	-1008(%rbp), %rdi       # 8-byte Reload
	movq	-1016(%rbp), %rsi       # 8-byte Reload
	movq	-1032(%rbp), %rdx       # 8-byte Reload
	movq	-1048(%rbp), %rcx       # 8-byte Reload
	movq	-1056(%rbp), %r8        # 8-byte Reload
	movq	-1064(%rbp), %r9        # 8-byte Reload
	movq	-1072(%rbp), %r10       # 8-byte Reload
	movq	%r10, (%rsp)
	movq	-1080(%rbp), %r11       # 8-byte Reload
	movq	%r11, 8(%rsp)
	movq	-1096(%rbp), %rbx       # 8-byte Reload
	movq	%rbx, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	callq	fprintf
	movl	$10, %edi
	movq	-32(%rbp), %rsi
	movl	%eax, -1108(%rbp)       # 4-byte Spill
	callq	_IO_putc
	cmpq	$0, style_request
	movl	%eax, -1112(%rbp)       # 4-byte Spill
	je	.LBB6_54
# BB#53:                                # %lor.lhs.false
	movq	style_request, %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB6_55
.LBB6_54:                               # %if.then.151
	movabsq	$.L.str.118, %rdi
	leaq	-288(%rbp), %rax
	movq	%rax, -1120(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-1120(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	strcpy
	movq	%rax, -1128(%rbp)       # 8-byte Spill
	jmp	.LBB6_56
.LBB6_55:                               # %if.else.155
	leaq	-288(%rbp), %rdi
	movq	style_request, %rsi
	callq	strcpy
	movq	%rax, -1136(%rbp)       # 8-byte Spill
.LBB6_56:                               # %if.end.158
	movq	-32(%rbp), %rdi
	movl	$.L.str.31, %eax
	movl	%eax, %ecx
	movq	%rdi, -1144(%rbp)       # 8-byte Spill
	movq	%rcx, %rdi
	callq	gettext
	xorl	%edx, %edx
	movb	%dl, %sil
	movl	$45, %r8d
	movq	-1144(%rbp), %rdi       # 8-byte Reload
	movb	%sil, -1145(%rbp)       # 1-byte Spill
	movl	%r8d, %esi
	movq	%rax, %rcx
	movb	-1145(%rbp), %al        # 1-byte Reload
	callq	title
	movq	-32(%rbp), %rdi
	movl	$.L.str.119, %edx
	movl	%edx, %ecx
	movq	%rdi, -1160(%rbp)       # 8-byte Spill
	movq	%rcx, %rdi
	callq	gettext
	movl	highlight_level(%rip), %edi
	movq	%rax, -1168(%rbp)       # 8-byte Spill
	callq	highlight_level_to_string
	movl	strip_level(%rip), %r8d
	leaq	-288(%rbp), %rdx
	movq	-1160(%rbp), %rdi       # 8-byte Reload
	movq	-1168(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rcx
	movb	-1145(%rbp), %al        # 1-byte Reload
	callq	fprintf
	movq	-32(%rbp), %rsi
	movl	$10, %edi
	movl	%eax, -1172(%rbp)       # 4-byte Spill
	callq	_IO_putc
	movq	-24(%rbp), %rdi
	movl	%eax, -1176(%rbp)       # 4-byte Spill
	callq	a2ps_flag_destination_to_string
	movq	%rax, -560(%rbp)
	movq	-24(%rbp), %rax
	movl	104(%rax), %r8d
	movl	%r8d, %eax
	movq	%rax, %rcx
	subq	$3, %rcx
	movq	%rax, -1184(%rbp)       # 8-byte Spill
	movq	%rcx, -1192(%rbp)       # 8-byte Spill
	ja	.LBB6_61
# BB#75:                                # %if.end.158
	movq	-1184(%rbp), %rax       # 8-byte Reload
	movq	.LJTI6_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB6_57:                               # %sw.bb.166
	movabsq	$.L.str.120, %rdi
	callq	gettext
	movq	%rax, -552(%rbp)
	jmp	.LBB6_61
.LBB6_58:                               # %sw.bb.168
	movabsq	$.L.str.121, %rdi
	callq	gettext
	movq	%rax, -552(%rbp)
	jmp	.LBB6_61
.LBB6_59:                               # %sw.bb.170
	movabsq	$.L.str.122, %rdi
	callq	gettext
	movq	%rax, -552(%rbp)
	jmp	.LBB6_61
.LBB6_60:                               # %sw.bb.172
	movabsq	$.L.str.123, %rdi
	callq	gettext
	movq	%rax, -552(%rbp)
.LBB6_61:                               # %sw.epilog.174
	movabsq	$.L.str.33, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -1200(%rbp)       # 8-byte Spill
	callq	gettext
	movl	$45, %esi
	xorl	%edx, %edx
	movq	-1200(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	title
	movabsq	$.L.str.124, %rdi
	movq	-32(%rbp), %rcx
	movq	%rcx, -1208(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-560(%rbp), %rdx
	movq	-552(%rbp), %rcx
	movq	simple_backup_suffix, %r8
	movq	-1208(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	fprintf
	movl	$10, %edi
	movq	-32(%rbp), %rsi
	movl	%eax, -1212(%rbp)       # 4-byte Spill
	callq	_IO_putc
	movq	-560(%rbp), %rdi
	movl	%eax, -1216(%rbp)       # 4-byte Spill
	callq	free
	movq	-24(%rbp), %rcx
	movq	272(%rcx), %rdi
	callq	a2ps_printers_request_ppdkey_get
	movabsq	$.L.str.35, %rdi
	movq	%rax, -552(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1224(%rbp)       # 8-byte Spill
	callq	gettext
	movl	$45, %esi
	xorl	%edx, %edx
	movq	-1224(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	title
	movabsq	$.L.str.125, %rdi
	movq	-32(%rbp), %rcx
	movq	%rcx, -1232(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-24(%rbp), %rcx
	movq	1528(%rcx), %rcx
	movq	32(%rcx), %rdx
	cmpq	$0, -552(%rbp)
	movq	%rax, -1240(%rbp)       # 8-byte Spill
	movq	%rdx, -1248(%rbp)       # 8-byte Spill
	je	.LBB6_63
# BB#62:                                # %cond.true.183
	movq	-552(%rbp), %rax
	movq	%rax, -1256(%rbp)       # 8-byte Spill
	jmp	.LBB6_64
.LBB6_63:                               # %cond.false.184
	movabsq	$.L.str.118, %rdi
	callq	gettext
	movq	%rax, -1256(%rbp)       # 8-byte Spill
.LBB6_64:                               # %cond.end.186
	movq	-1256(%rbp), %rax       # 8-byte Reload
	movq	-24(%rbp), %rcx
	movq	272(%rcx), %rdi
	movq	%rax, -1264(%rbp)       # 8-byte Spill
	callq	a2ps_printers_default_ppdkey_get
	movq	-24(%rbp), %rcx
	movq	1528(%rcx), %rcx
	movq	40(%rcx), %r9
	movq	-24(%rbp), %rcx
	movl	148(%rcx), %edx
	movq	-24(%rbp), %rcx
	cmpl	$0, 128(%rcx)
	movq	%rax, -1272(%rbp)       # 8-byte Spill
	movq	%r9, -1280(%rbp)        # 8-byte Spill
	movl	%edx, -1284(%rbp)       # 4-byte Spill
	jne	.LBB6_66
# BB#65:                                # %cond.true.193
	movabsq	$.L.str.126, %rax
	movq	%rax, -1296(%rbp)       # 8-byte Spill
	jmp	.LBB6_67
.LBB6_66:                               # %cond.false.194
	movabsq	$.L.str.128, %rax
	movabsq	$.L.str.127, %rcx
	movq	-24(%rbp), %rdx
	cmpl	$1, 128(%rdx)
	cmoveq	%rcx, %rax
	movq	%rax, -1296(%rbp)       # 8-byte Spill
.LBB6_67:                               # %cond.end.199
	movq	-1296(%rbp), %rax       # 8-byte Reload
	movq	-1232(%rbp), %rdi       # 8-byte Reload
	movq	-1240(%rbp), %rsi       # 8-byte Reload
	movq	-1248(%rbp), %rdx       # 8-byte Reload
	movq	-1264(%rbp), %rcx       # 8-byte Reload
	movq	-1272(%rbp), %r8        # 8-byte Reload
	movq	-1280(%rbp), %r9        # 8-byte Reload
	movl	-1284(%rbp), %r10d      # 4-byte Reload
	movl	%r10d, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	fprintf
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	%eax, -1300(%rbp)       # 4-byte Spill
	callq	list_pagedevice
	movabsq	$.L.str.129, %rdi
	movq	-32(%rbp), %rcx
	movq	%rcx, -1312(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-1312(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	fprintf
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	%eax, -1316(%rbp)       # 4-byte Spill
	callq	list_statusdict
	movabsq	$.L.str.130, %rdi
	movq	-32(%rbp), %rcx
	movq	%rcx, -1328(%rbp)       # 8-byte Spill
	callq	gettext
	movq	-24(%rbp), %rcx
	cmpl	$0, 176(%rcx)
	movq	%rax, -1336(%rbp)       # 8-byte Spill
	je	.LBB6_69
# BB#68:                                # %cond.true.206
	movabsq	$.L.str.107, %rdi
	callq	gettext
	movq	%rax, -1344(%rbp)       # 8-byte Spill
	jmp	.LBB6_70
.LBB6_69:                               # %cond.false.208
	movabsq	$.L.str.108, %rdi
	callq	gettext
	movq	%rax, -1344(%rbp)       # 8-byte Spill
.LBB6_70:                               # %cond.end.210
	movq	-1344(%rbp), %rax       # 8-byte Reload
	movq	-1328(%rbp), %rdi       # 8-byte Reload
	movq	-1336(%rbp), %rsi       # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	$10, %edi
	movq	-32(%rbp), %rsi
	movl	%eax, -1348(%rbp)       # 4-byte Spill
	callq	_IO_putc
	movabsq	$.L.str.131, %rdi
	movq	-32(%rbp), %rdx
	movl	%eax, -1352(%rbp)       # 4-byte Spill
	movq	%rdx, -1360(%rbp)       # 8-byte Spill
	callq	gettext
	movl	$45, %esi
	xorl	%edx, %edx
	movq	-1360(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	title
	movabsq	$.L.str.132, %rdi
	movq	-32(%rbp), %rcx
	movq	%rcx, -1368(%rbp)       # 8-byte Spill
	callq	gettext
	movl	msg_verbosity, %edx
	movq	-24(%rbp), %rcx
	cmpq	$0, 24(%rcx)
	movq	%rax, -1376(%rbp)       # 8-byte Spill
	movl	%edx, -1380(%rbp)       # 4-byte Spill
	jne	.LBB6_72
# BB#71:                                # %cond.true.218
	movabsq	$.L.str.1, %rax
	movq	%rax, -1392(%rbp)       # 8-byte Spill
	jmp	.LBB6_73
.LBB6_72:                               # %cond.false.219
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -1392(%rbp)       # 8-byte Spill
.LBB6_73:                               # %cond.end.221
	movq	-1392(%rbp), %rax       # 8-byte Reload
	movq	-1368(%rbp), %rdi       # 8-byte Reload
	movq	-1376(%rbp), %rsi       # 8-byte Reload
	movl	-1380(%rbp), %edx       # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.133, %rsi
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rdx
	movl	%eax, -1396(%rbp)       # 4-byte Spill
	callq	pw_fprintf_path
	addq	$1424, %rsp             # imm = 0x590
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end6:
	.size	list_options, .Lfunc_end6-list_options
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_57
	.quad	.LBB6_58
	.quad	.LBB6_59
	.quad	.LBB6_60

	.text
	.align	16, 0x90
	.type	list_features,@function
list_features:                          # @list_features
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	list_style_sheets_short
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	callq	_IO_putc
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	list_encodings_short
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	callq	_IO_putc
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	callq	list_media_short
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	callq	_IO_putc
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	prologues_list_short
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	callq	_IO_putc
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, -32(%rbp)         # 4-byte Spill
	callq	a2ps_ppd_list_short
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	callq	_IO_putc
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	a2ps_printers_list_short
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	callq	_IO_putc
	movq	delegation_table, %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, -40(%rbp)         # 4-byte Spill
	callq	delegations_list_short
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	callq	_IO_putc
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	user_options_list_short
	movl	$10, %edi
	movq	-16(%rbp), %rsi
	callq	_IO_putc
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	macro_meta_sequences_list_short
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	list_features, .Lfunc_end7-list_features
	.cfi_endproc

	.align	16, 0x90
	.type	get_highlight_level,@function
get_highlight_level:                    # @get_highlight_level
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp28:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movabsq	$highlight_level_args, %rdx
	movabsq	$highlight_level_types, %rax
	movl	$4, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	argmatch_die, %r10
	movq	%rax, %rcx
	movq	%r10, (%rsp)
	callq	__xargmatch_internal
	movslq	%eax, %rcx
	movl	highlight_level_types(,%rcx,4), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	get_highlight_level, .Lfunc_end8-get_highlight_level
	.cfi_endproc

	.align	16, 0x90
	.type	highlight_level_to_string,@function
highlight_level_to_string:              # @highlight_level_to_string
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -12(%rbp)
	movl	%edi, %eax
	testl	%edi, %edi
	movl	%eax, -16(%rbp)         # 4-byte Spill
	je	.LBB9_3
	jmp	.LBB9_6
.LBB9_6:                                # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -20(%rbp)         # 4-byte Spill
	je	.LBB9_2
	jmp	.LBB9_7
.LBB9_7:                                # %entry
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	jne	.LBB9_4
	jmp	.LBB9_1
.LBB9_1:                                # %sw.bb
	movabsq	$.L.str.54, %rdi
	callq	gettext
	movq	%rax, -8(%rbp)
	jmp	.LBB9_5
.LBB9_2:                                # %sw.bb.1
	movabsq	$.L.str.51, %rdi
	callq	gettext
	movq	%rax, -8(%rbp)
	jmp	.LBB9_5
.LBB9_3:                                # %sw.bb.3
	movabsq	$.L.str.48, %rdi
	callq	gettext
	movq	%rax, -8(%rbp)
	jmp	.LBB9_5
.LBB9_4:                                # %sw.epilog
	movq	$0, -8(%rbp)
.LBB9_5:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	highlight_level_to_string, .Lfunc_end9-highlight_level_to_string
	.cfi_endproc

	.type	behavior,@object        # @behavior
	.bss
	.globl	behavior
	.align	4
behavior:
	.long	0                       # 0x0
	.size	behavior, 4

	.type	job,@object             # @job
	.globl	job
	.align	8
job:
	.quad	0
	.size	job, 8

	.type	re_syntax_table,@object # @re_syntax_table
	.globl	re_syntax_table
	.align	8
re_syntax_table:
	.quad	0
	.size	re_syntax_table, 8

	.type	sheets_map,@object      # @sheets_map
	.globl	sheets_map
	.align	8
sheets_map:
	.quad	0
	.size	sheets_map, 8

	.type	style_sheets,@object    # @style_sheets
	.globl	style_sheets
	.align	8
style_sheets:
	.quad	0
	.size	style_sheets, 8

	.type	delegate_p,@object      # @delegate_p
	.data
	.globl	delegate_p
delegate_p:
	.byte	1                       # 0x1
	.size	delegate_p, 1

	.type	toc,@object             # @toc
	.bss
	.globl	toc
	.align	8
toc:
	.quad	0
	.size	toc, 8

	.type	style_request,@object   # @style_request
	.globl	style_request
	.align	8
style_request:
	.quad	0
	.size	style_request, 8

	.type	highlight_level,@object # @highlight_level
	.data
	.globl	highlight_level
	.align	4
highlight_level:
	.long	1                       # 0x1
	.size	highlight_level, 4

	.type	strip_level,@object     # @strip_level
	.bss
	.globl	strip_level
	.align	4
strip_level:
	.long	0                       # 0x0
	.size	strip_level, 4

	.type	end_of_line,@object     # @end_of_line
	.data
	.globl	end_of_line
	.align	4
end_of_line:
	.long	4                       # 0x4
	.size	end_of_line, 4

	.type	program_name,@object    # @program_name
	.comm	program_name,8,8
	.type	program_invocation_name,@object # @program_invocation_name
	.comm	program_invocation_name,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Copyright (c) 1988-1993 Miguel Santana\nCopyright (c) 1995-2000 Akim Demaille, Miguel Santana\nCopyright (c) 2007- Akim Demaille, Miguel Santana and Masayuki Hatta"
	.size	.L.str, 162

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.zero	1
	.size	.L.str.1, 1

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"a2ps"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"/usr/local/share/locale"
	.size	.L.str.3, 24

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GNU a2ps"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"4.14"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Akim Demaille, Miguel Santana"
	.size	.L.str.6, 30

	.type	delegation_table,@object # @delegation_table
	.comm	delegation_table,8,8
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"NO_HOME_CONF"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"user.home"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	".a2ps/a2psrc"
	.size	.L.str.9, 13

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"."
	.size	.L.str.10, 2

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	".a2psrc"
	.size	.L.str.11, 8

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"--list=expand"
	.size	.L.str.12, 14

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Table of Content"
	.size	.L.str.13, 17

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Usage: %s [OPTION]... [FILE]...\n\nConvert FILE(s) or standard input to PostScript.  By default, the output\nis sent to the default printer.  An output file may be specified with -o.\n\nMandatory arguments to long options are mandatory for short options too.\nLong options marked with * require a yes/no argument, corresponding\nshort options stand for `yes'.\n"
	.size	.L.str.14, 354

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Tasks:\n"
	.size	.L.str.15, 8

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"  --version        display version\n  --help           display this help\n  --guess          report guessed types of FILES\n  --which          report the full path of library files named FILES\n  --glob           report the full path of library files matching FILES\n  --list=defaults  display default settings and parameters\n  --list=TOPIC     detailed list on TOPIC (delegations, encodings, features,\n                   variables, media, ppd, printers, prologues, style-sheets,\n                   user-options)\n"
	.size	.L.str.16, 509

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"After having performed the task, exit successfully.  Detailed lists may\nprovide additional help on specific features.\n"
	.size	.L.str.17, 119

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Global:\n"
	.size	.L.str.18, 9

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"  -q, --quiet, --silent      be really quiet\n  -v, --verbose[=LEVEL]      set verbosity on, or to LEVEL\n  -=, --user-option=OPTION   use the user defined shortcut OPTION\n      --debug                enable debugging features\n  -D, --define=KEY[:VALUE]   unset variable KEY or set to VALUE\n"
	.size	.L.str.19, 290

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Sheets:\n"
	.size	.L.str.20, 9

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"  -M, --medium=NAME      use output medium NAME\n  -r, --landscape        print in landscape mode\n  -R, --portrait         print in portrait mode\n      --columns=NUM      number of columns per sheet\n      --rows=NUM         number of rows per sheet\n      --major=DIRECTION  first fill (DIRECTION=) rows, or columns\n  -1, -2, ..., -9        predefined font sizes and layouts for 1.. 9 virtuals\n  -A, --file-align=MODE  align separate files according to MODE (fill, rank\n                         page, sheet, or a number)\n  -j, --borders*         print borders around columns\n      --margin[=NUM]     define an interior margin of size NUM\n"
	.size	.L.str.21, 637

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"The options -1.. -9 affect several primitive parameters to set up predefined\nlayouts with 80 columns.  Therefore the order matters: `-R -f40 -2' is\nequivalent to `-2'.  To modify the layout, use `-2Rf40', or compose primitive\noptions (`--columns', `--font-size' etc.).\n"
	.size	.L.str.22, 270

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Virtual pages:\n"
	.size	.L.str.23, 16

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"      --line-numbers=NUM     precede each NUM lines with its line number\n  -C                         alias for --line-numbers=5\n  -f, --font-size=SIZE       use font SIZE (float) for the body text\n  -L, --lines-per-page=NUM   scale the font to print NUM lines per virtual\n  -l, --chars-per-line=NUM   scale the font to print NUM columns per virtual\n  -m, --catman               process FILE as a man page (same as -L66)\n  -T, --tabsize=NUM          set tabulator size to NUM\n  --non-printable-format=FMT specify how non-printable chars are printed\n"
	.size	.L.str.24, 550

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Headings:\n"
	.size	.L.str.25, 11

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"  -B, --no-header        no page headers at all\n  -b, --header[=TEXT]    set page header\n  -u, --underlay[=TEXT]  print TEXT under every page\n  --center-title[=TEXT]  set page title to TITLE\n  --left-title[=TEXT]    set left and right page title to TEXT\n  --right-title[=TEXT]\n  --left-footer[=TEXT]   set sheet footers to TEXT\n  --footer[=TEXT]\n  --right-footer[=TEXT]\n"
	.size	.L.str.26, 371

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"The TEXTs may use special escapes.\n"
	.size	.L.str.27, 36

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Input:\n"
	.size	.L.str.28, 8

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"  -a, --pages[=RANGE]        select the pages to print\n  -c, --truncate-lines*      cut long lines\n  -i, --interpret*           interpret tab, bs and ff chars\n      --end-of-line=TYPE     specify the eol char (TYPE: r, n, nr, rn, any)\n  -X, --encoding=NAME        use input encoding NAME\n  -t, --title=NAME           set the name of the job\n      --stdin=NAME           set the name of the input file stdin\n      --print-anyway*        force binary printing\n  -Z, --delegate*            delegate files to another application\n      --toc[=TEXT]           generate a table of content\n"
	.size	.L.str.29, 583

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"When delegations are enabled, a2ps may use other applications to handle the\nprocessing of files that should not be printed as raw information, e.g., HTML\nPostScript, PDF etc.\n"
	.size	.L.str.30, 176

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Pretty-printing:\n"
	.size	.L.str.31, 18

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"  -E, --pretty-print[=LANG]  enable pretty-printing (set style to LANG)\n  --highlight-level=LEVEL    set pretty printing highlight LEVEL\n                             LEVEL can be none, normal or heavy\n  -g                         alias for --highlight-level=heavy\n  --strip-level=NUM          level of comments stripping\n"
	.size	.L.str.32, 322

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Output:\n"
	.size	.L.str.33, 9

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"  -o, --output=FILE          leave output to file FILE.  If FILE is `-',\n                             leave output to stdout.\n  --version-control=WORD     override the usual version control\n  --suffix=SUFFIX            override the usual backup suffix\n  -P, --printer=NAME         send output to printer NAME\n  -d                         send output to the default printer\n                             (this is the default behavior)\n"
	.size	.L.str.34, 434

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"PostScript:\n"
	.size	.L.str.35, 13

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"      --prologue=FILE        include FILE.pro as PostScript prologue\n      --ppd[=KEY]            automatic PPD selection or set to KEY\n  -n, --copies=NUM           print NUM copies of each page\n  -s, --sides=MODE           set the duplex MODE (`1' or `simplex',\n                             `2' or `duplex', `tumble')\n  -S, --setpagedevice=K[:V]  pass a page device definition to output\n      --statusdict=K[:[:]V]  pass a statusdict definition to the output\n  -k, --page-prefeed         enable page prefeed\n  -K, --no-page-prefeed      disable page prefeed\n"
	.size	.L.str.36, 560

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"By default a2ps is tuned to do what you want to, so trust it.  To pretty\nprint the content of the `src' directory and a table of content, and send the\nresult to the printer `lw',\n\n    $ a2ps -P lw --toc src/*\n\nTo process the files `sample.ps' and `sample.html' and display the result,\n\n    $ a2ps -P display sample.ps sample.html\n\nTo process a mailbox in 4 up,\n\n    $ a2ps -=mail -4 mailbox\n\nTo print as a booklet on the default printer, which is Duplex capable,\n\n    $ a2ps -=book paper.dvi.gz -d\n"
	.size	.L.str.37, 499

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"News, updates and documentation: visit http://www.gnu.org/software/a2ps/.\n"
	.size	.L.str.38, 75

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Report bugs to <bug-a2ps@gnu.org>.\n"
	.size	.L.str.39, 36

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"received signal %d: %s"
	.size	.L.str.40, 23

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"--graphic-symbols"
	.size	.L.str.41, 18

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"--highlight-level"
	.size	.L.str.42, 18

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"--list"
	.size	.L.str.43, 7

	.type	behavior_args,@object   # @behavior_args
	.section	.rodata,"a",@progbits
	.align	16
behavior_args:
	.quad	.L.str.57
	.quad	.L.str.58
	.quad	.L.str.59
	.quad	.L.str.60
	.quad	.L.str.61
	.quad	.L.str.62
	.quad	.L.str.63
	.quad	.L.str.64
	.quad	.L.str.65
	.quad	.L.str.66
	.quad	.L.str.67
	.quad	.L.str.68
	.quad	.L.str.69
	.quad	.L.str.70
	.quad	.L.str.71
	.quad	.L.str.72
	.quad	.L.str.73
	.quad	.L.str.74
	.quad	.L.str.75
	.quad	.L.str.76
	.quad	.L.str.77
	.quad	.L.str.78
	.quad	.L.str.79
	.quad	.L.str.80
	.quad	.L.str.81
	.quad	.L.str.82
	.quad	.L.str.83
	.quad	.L.str.84
	.quad	.L.str.85
	.quad	.L.str.86
	.quad	.L.str.87
	.quad	.L.str.88
	.quad	.L.str.89
	.quad	.L.str.90
	.quad	.L.str.91
	.quad	.L.str.92
	.quad	0
	.size	behavior_args, 296

	.type	behavior_types,@object  # @behavior_types
	.align	16
behavior_types:
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	8                       # 0x8
	.long	8                       # 0x8
	.long	14                      # 0xe
	.long	16                      # 0x10
	.long	16                      # 0x10
	.long	15                      # 0xf
	.long	15                      # 0xf
	.long	9                       # 0x9
	.long	13                      # 0xd
	.long	13                      # 0xd
	.long	10                      # 0xa
	.long	10                      # 0xa
	.long	18                      # 0x12
	.long	18                      # 0x12
	.long	19                      # 0x13
	.long	12                      # 0xc
	.long	12                      # 0xc
	.long	11                      # 0xb
	.long	11                      # 0xb
	.long	17                      # 0x11
	.long	17                      # 0x11
	.long	20                      # 0x14
	.long	20                      # 0x14
	.long	21                      # 0x15
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	4                       # 0x4
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	6                       # 0x6
	.long	0                       # 0x0
	.size	behavior_types, 144

	.type	.L.str.44,@object       # @.str.44
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.44:
	.asciz	"--strip-level"
	.size	.L.str.44, 14

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"--delegate"
	.size	.L.str.45, 11

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"#{toc}"
	.size	.L.str.46, 7

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"--end-of-line"
	.size	.L.str.47, 14

	.type	highlight_level_args,@object # @highlight_level_args
	.section	.rodata,"a",@progbits
	.align	16
highlight_level_args:
	.quad	.L.str.48
	.quad	.L.str.49
	.quad	.L.str.50
	.quad	.L.str.51
	.quad	.L.str.52
	.quad	.L.str.53
	.quad	.L.str.54
	.quad	.L.str.55
	.quad	.L.str.56
	.quad	0
	.size	highlight_level_args, 80

	.type	highlight_level_types,@object # @highlight_level_types
	.align	16
highlight_level_types:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.size	highlight_level_types, 36

	.type	.L.str.48,@object       # @.str.48
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.48:
	.asciz	"none"
	.size	.L.str.48, 5

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"off"
	.size	.L.str.49, 4

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"0"
	.size	.L.str.50, 2

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"normal"
	.size	.L.str.51, 7

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"light"
	.size	.L.str.52, 6

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"1"
	.size	.L.str.53, 2

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"heavy"
	.size	.L.str.54, 6

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"symbols"
	.size	.L.str.55, 8

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"2"
	.size	.L.str.56, 2

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"defaults"
	.size	.L.str.57, 9

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"options"
	.size	.L.str.58, 8

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"settings"
	.size	.L.str.59, 9

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"features"
	.size	.L.str.60, 9

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"plugins"
	.size	.L.str.61, 8

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"delegations"
	.size	.L.str.62, 12

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"encodings"
	.size	.L.str.63, 10

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"charsets"
	.size	.L.str.64, 9

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"variables"
	.size	.L.str.65, 10

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"macro-meta-sequences"
	.size	.L.str.66, 21

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"media"
	.size	.L.str.67, 6

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"printers"
	.size	.L.str.68, 9

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"outputs"
	.size	.L.str.69, 8

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"style-sheets"
	.size	.L.str.70, 13

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"languages"
	.size	.L.str.71, 10

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"user-options"
	.size	.L.str.72, 13

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"shortcuts"
	.size	.L.str.73, 10

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"prologues"
	.size	.L.str.74, 10

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"texinfo-style-sheets"
	.size	.L.str.75, 21

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"ssh-texi"
	.size	.L.str.76, 9

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"html-style-sheets"
	.size	.L.str.77, 18

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"ssh-html"
	.size	.L.str.78, 9

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"texinfo-encodings"
	.size	.L.str.79, 18

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"edf-texi"
	.size	.L.str.80, 9

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"texinfo-prologues"
	.size	.L.str.81, 18

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"pro-texi"
	.size	.L.str.82, 9

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"ppd"
	.size	.L.str.83, 4

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"version"
	.size	.L.str.84, 8

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"release"
	.size	.L.str.85, 8

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"help"
	.size	.L.str.86, 5

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"usage"
	.size	.L.str.87, 6

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"expand"
	.size	.L.str.88, 7

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"which"
	.size	.L.str.89, 6

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"find"
	.size	.L.str.90, 5

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"glob"
	.size	.L.str.91, 5

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"ps"
	.size	.L.str.92, 3

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"a2_"
	.size	.L.str.93, 4

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"w"
	.size	.L.str.94, 2

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"cannot open file `%s'"
	.size	.L.str.95, 22

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"SPY-BEGIN\n"
	.size	.L.str.96, 11

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"Debugging info"
	.size	.L.str.97, 15

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"%V was called with #!$|| |\n\n"
	.size	.L.str.98, 29

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"SPY-END\n"
	.size	.L.str.99, 9

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"r"
	.size	.L.str.100, 2

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"% "
	.size	.L.str.101, 3

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"Configuration status of %s %s\n"
	.size	.L.str.102, 31

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"  medium          = %s%s, %s\n  page layout     = %d x %d, %s\n  borders         = %s\n  file alignment  = %s\n  interior margin = %d\n"
	.size	.L.str.103, 131

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	" (libpaper)"
	.size	.L.str.104, 12

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"portrait"
	.size	.L.str.105, 9

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"landscape"
	.size	.L.str.106, 10

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"yes"
	.size	.L.str.107, 4

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"no"
	.size	.L.str.108, 3

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"%d characters per line"
	.size	.L.str.109, 23

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"%d lines per page"
	.size	.L.str.110, 18

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"font size is %gpt"
	.size	.L.str.111, 18

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"each line"
	.size	.L.str.112, 10

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"each %d lines"
	.size	.L.str.113, 14

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"  number lines         = %s\n  format               = %s\n  tabulation size      = %d\n  non printable format = %s\n"
	.size	.L.str.114, 113

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"Headers:\n"
	.size	.L.str.115, 10

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"  header       = %s\n  left footer  = %s\n  footer       = %s\n  right footer = %s\n  left title   = %s\n  center title = %s\n  right title  = %s\n  under lay    = %s\n"
	.size	.L.str.116, 161

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"  truncate lines = %s\n  interpret      = %s\n  end of line    = %s\n  encoding       = %s\n  document title = %s\n  prologue       = %s\n  print anyway   = %s\n  delegating     = %s\n"
	.size	.L.str.117, 177

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"selected automatically"
	.size	.L.str.118, 23

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"  style sheet     = %s\n  highlight level = %s\n  strip level     = %d\n"
	.size	.L.str.119, 70

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"never make backups"
	.size	.L.str.120, 19

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"simple backups of every file"
	.size	.L.str.121, 29

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"numbered backups of files already numbered,\n                            and simple of others"
	.size	.L.str.122, 93

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"numbered backups of every file"
	.size	.L.str.123, 31

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"  destination     = %s\n  version control = %s\n  backup suffix   = %s\n"
	.size	.L.str.124, 70

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"  magic number              = %s\n  Printer Description (PPD) = %s\n  default PPD               = %s\n  page label format         = %s\n  number of copies          = %d\n  sides per sheet           = %s\n  page device definitions   = "
	.size	.L.str.125, 229

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"Simplex"
	.size	.L.str.126, 8

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"Duplex"
	.size	.L.str.127, 7

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"DuplexTumble"
	.size	.L.str.128, 13

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"  statusdict definitions    = "
	.size	.L.str.129, 31

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"  page prefeed              = %s\n"
	.size	.L.str.130, 34

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"Internals:\n"
	.size	.L.str.131, 12

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"  verbosity level     = %d\n  file command        = %s\n  library path        = \n"
	.size	.L.str.132, 80

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"\t%s\n"
	.size	.L.str.133, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
