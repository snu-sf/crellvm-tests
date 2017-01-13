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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$232, %rsp
.Ltmp3:
	.cfi_offset %rbx, -56
.Ltmp4:
	.cfi_offset %r12, -48
.Ltmp5:
	.cfi_offset %r13, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	$0, -44(%rbp)
	movl	%edi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	$0, -72(%rbp)
	movq	%rcx, %rdi
	callq	g_thread_init
	callq	gimp_init_malloc
	xorl	%edi, %edi
	callq	gimp_env_init
	callq	gimp_log_init
	callq	gimp_init_i18n
	movabsq	$.L.str, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	g_set_application_name
	movq	-56(%rbp), %rdi
	callq	g_strdupv
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_path_get_basename
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	g_set_prgname
	movq	-88(%rbp), %rdi
	callq	g_free
	movl	$1, -92(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-92(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB0_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movslq	-92(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movsbl	(%rax), %edx
	cmpl	$45, %edx
	je	.LBB0_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_8
.LBB0_4:                                # %if.end
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-104(%rbp), %rdi
	movl	$.L.str.1, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB0_6
# BB#5:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-104(%rbp), %rdi
	movl	$.L.str.2, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_7
.LBB0_6:                                # %if.then.13
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$1, be_verbose
.LBB0_7:                                # %if.end.14
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_8
.LBB0_8:                                # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB0_1
.LBB0_9:                                # %for.end
	movl	$1, -92(%rbp)
.LBB0_10:                               # %for.cond.15
                                        # =>This Inner Loop Header: Depth=1
	movl	-92(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB0_22
# BB#11:                                # %for.body.18
                                        #   in Loop: Header=BB0_10 Depth=1
	movslq	-92(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movsbl	(%rax), %edx
	cmpl	$45, %edx
	je	.LBB0_13
# BB#12:                                # %if.then.26
                                        #   in Loop: Header=BB0_10 Depth=1
	jmp	.LBB0_21
.LBB0_13:                               # %if.end.27
                                        #   in Loop: Header=BB0_10 Depth=1
	movq	-112(%rbp), %rdi
	movl	$.L.str.3, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB0_15
# BB#14:                                # %lor.lhs.false.31
                                        #   in Loop: Header=BB0_10 Depth=1
	movq	-112(%rbp), %rdi
	movl	$.L.str.4, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_16
.LBB0_15:                               # %if.then.35
                                        #   in Loop: Header=BB0_10 Depth=1
	movl	$1, no_interface
	jmp	.LBB0_20
.LBB0_16:                               # %if.else
                                        #   in Loop: Header=BB0_10 Depth=1
	movq	-112(%rbp), %rdi
	movl	$.L.str.5, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB0_18
# BB#17:                                # %lor.lhs.false.39
                                        #   in Loop: Header=BB0_10 Depth=1
	movq	-112(%rbp), %rdi
	movl	$.L.str.2, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB0_19
.LBB0_18:                               # %if.then.43
	callq	gimp_show_version_and_exit
.LBB0_19:                               # %if.end.44
                                        #   in Loop: Header=BB0_10 Depth=1
	jmp	.LBB0_20
.LBB0_20:                               # %if.end.45
                                        #   in Loop: Header=BB0_10 Depth=1
	jmp	.LBB0_21
.LBB0_21:                               # %for.inc.46
                                        #   in Loop: Header=BB0_10 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB0_10
.LBB0_22:                               # %for.end.48
	movabsq	$.L.str.6, %rdi
	movl	$1, no_interface
	callq	gettext
	movq	%rax, %rdi
	callq	g_option_context_new
	movabsq	$.L.str, %rdi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_option_context_set_summary
	movabsq	$main_entries, %rsi
	movabsq	$.L.str.7, %rdx
	movq	-64(%rbp), %rdi
	callq	g_option_context_add_main_entries
	movq	-64(%rbp), %rdi
	movl	no_interface, %esi
	callq	app_libs_init
	leaq	-56(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	-64(%rbp), %rdi
	callq	g_option_context_parse_strv
	cmpl	$0, %eax
	jne	.LBB0_27
# BB#23:                                # %if.then.53
	cmpq	$0, -72(%rbp)
	je	.LBB0_25
# BB#24:                                # %if.then.55
	movabsq	$.L.str.8, %rdi
	movq	-72(%rbp), %rax
	movq	8(%rax), %rsi
	movb	$0, %al
	callq	g_print
	movq	-72(%rbp), %rdi
	callq	g_error_free
	jmp	.LBB0_26
.LBB0_25:                               # %if.else.56
	movabsq	$.L.str.9, %rdi
	callq	gettext
	movabsq	$.L.str.8, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
.LBB0_26:                               # %if.end.58
	movl	$1, %edi
	callq	app_exit
.LBB0_27:                               # %if.end.59
	cmpl	$0, no_interface
	jne	.LBB0_31
# BB#28:                                # %lor.lhs.false.61
	cmpl	$0, be_verbose
	jne	.LBB0_31
# BB#29:                                # %lor.lhs.false.63
	cmpl	$0, console_messages
	jne	.LBB0_31
# BB#30:                                # %lor.lhs.false.65
	cmpq	$0, batch_commands
	je	.LBB0_32
.LBB0_31:                               # %if.then.68
	jmp	.LBB0_32
.LBB0_32:                               # %if.end.69
	cmpl	$0, no_interface
	je	.LBB0_34
# BB#33:                                # %if.then.71
	movl	$1, new_instance
.LBB0_34:                               # %if.end.72
	callq	sanity_check
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB0_36
# BB#35:                                # %if.then.75
	movl	no_interface, %edi
	movq	-80(%rbp), %rsi
	callq	app_abort
.LBB0_36:                               # %if.end.76
	movl	stack_trace_mode, %edi
	callq	gimp_init_signal_handlers
	movq	-56(%rbp), %rax
	movq	(%rax), %rdi
	movq	filenames, %rsi
	movq	system_gimprc, %rdx
	movq	user_gimprc, %rcx
	movq	session_name, %r8
	movq	batch_interpreter, %r9
	movq	batch_commands, %rax
	movl	as_new, %r10d
	movl	no_interface, %r11d
	movl	no_data, %ebx
	movl	no_fonts, %r14d
	movl	no_splash, %r15d
	movl	be_verbose, %r12d
	movl	use_shm, %r13d
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movl	use_cpu_accel, %esi
	movl	%esi, -132(%rbp)        # 4-byte Spill
	movl	console_messages, %esi
	movl	%esi, -136(%rbp)        # 4-byte Spill
	movl	use_debug_handler, %esi
	movl	%esi, -140(%rbp)        # 4-byte Spill
	movl	stack_trace_mode, %esi
	movl	%esi, -144(%rbp)        # 4-byte Spill
	movl	pdb_compat_mode, %esi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	-128(%rbp), %rax        # 8-byte Reload
	movl	%esi, -156(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%r11d, 16(%rsp)
	movl	%ebx, 24(%rsp)
	movl	%r14d, 32(%rsp)
	movl	%r15d, 40(%rsp)
	movl	%r12d, 48(%rsp)
	movl	%r13d, 56(%rsp)
	movl	-132(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, 64(%rsp)
	movl	-136(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, 72(%rsp)
	movl	-140(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, 80(%rsp)
	movl	-144(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, 88(%rsp)
	movl	-156(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, 96(%rsp)
	callq	app_run
	movq	-56(%rbp), %rdi
	callq	g_strfreev
	movq	-64(%rbp), %rdi
	callq	g_option_context_free
	xorl	%eax, %eax
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_init_malloc,@function
gimp_init_malloc:                       # @gimp_init_malloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp10:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$4294967293, %edi       # imm = 0xFFFFFFFD
	movl	$4096, %esi             # imm = 0x1000
	callq	mallopt
	movl	%eax, -4(%rbp)          # 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_init_malloc, .Lfunc_end1-gimp_init_malloc
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_init_i18n,@function
gimp_init_i18n:                         # @gimp_init_i18n
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp13:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$6, %edi
	movabsq	$.L.str.63, %rsi
	callq	setlocale
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	gimp_locale_directory
	movabsq	$.L.str.76, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.76, %rdi
	movabsq	$.L.str.77, %rsi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_locale_directory
	movabsq	$.L.str.7, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.7, %rdi
	movabsq	$.L.str.77, %rsi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.7, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -48(%rbp)         # 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_init_i18n, .Lfunc_end2-gimp_init_i18n
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_show_version_and_exit,@function
gimp_show_version_and_exit:             # @gimp_show_version_and_exit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
	.cfi_def_cfa_register %rbp
	movl	be_verbose, %edi
	callq	gimp_version_show
	xorl	%edi, %edi
	callq	app_exit
.Lfunc_end3:
	.size	gimp_show_version_and_exit, .Lfunc_end3-gimp_show_version_and_exit
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_show_license_and_exit,@function
gimp_show_license_and_exit:             # @gimp_show_license_and_exit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
	.cfi_def_cfa_register %rbp
	movl	be_verbose, %edi
	callq	gimp_version_show
	movabsq	$.L.str.64, %rdi
	movb	$0, %al
	callq	g_print
	movabsq	$.L.str.65, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_print
	movabsq	$.L.str.66, %rdi
	movb	$0, %al
	callq	g_print
	xorl	%edi, %edi
	callq	app_exit
.Lfunc_end4:
	.size	gimp_show_license_and_exit, .Lfunc_end4-gimp_show_license_and_exit
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_option_pdb_compat_mode,@function
gimp_option_pdb_compat_mode:            # @gimp_option_pdb_compat_mode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp22:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-24(%rbp), %rdi
	movl	$.L.str.67, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movl	$0, pdb_compat_mode
	jmp	.LBB5_9
.LBB5_2:                                # %if.else
	movq	-24(%rbp), %rdi
	movl	$.L.str.68, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB5_4
# BB#3:                                 # %if.then.3
	movl	$1, pdb_compat_mode
	jmp	.LBB5_8
.LBB5_4:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movl	$.L.str.69, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB5_6
# BB#5:                                 # %if.then.7
	movl	$2, pdb_compat_mode
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.8
	movl	$0, -4(%rbp)
	jmp	.LBB5_10
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.9
	jmp	.LBB5_9
.LBB5_9:                                # %if.end.10
	movl	$1, -4(%rbp)
.LBB5_10:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_option_pdb_compat_mode, .Lfunc_end5-gimp_option_pdb_compat_mode
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_option_stack_trace_mode,@function
gimp_option_stack_trace_mode:           # @gimp_option_stack_trace_mode
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-24(%rbp), %rdi
	movl	$.L.str.70, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movl	$0, stack_trace_mode
	jmp	.LBB6_9
.LBB6_2:                                # %if.else
	movq	-24(%rbp), %rdi
	movl	$.L.str.71, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB6_4
# BB#3:                                 # %if.then.3
	movl	$1, stack_trace_mode
	jmp	.LBB6_8
.LBB6_4:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movl	$.L.str.72, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB6_6
# BB#5:                                 # %if.then.7
	movl	$2, stack_trace_mode
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.8
	movl	$0, -4(%rbp)
	jmp	.LBB6_10
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.9
	jmp	.LBB6_9
.LBB6_9:                                # %if.end.10
	movl	$1, -4(%rbp)
.LBB6_10:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_option_stack_trace_mode, .Lfunc_end6-gimp_option_stack_trace_mode
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_option_fatal_warnings,@function
gimp_option_fatal_warnings:             # @gimp_option_fatal_warnings
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
	subq	$48, %rsp
	movl	$5, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%eax, %edi
	callq	g_log_set_always_fatal
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	orl	$24, %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %edi
	callq	g_log_set_always_fatal
	movl	$1, %edi
	movl	%eax, -40(%rbp)         # 4-byte Spill
	movl	%edi, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_option_fatal_warnings, .Lfunc_end7-gimp_option_fatal_warnings
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_option_dump_gimprc,@function
gimp_option_dump_gimprc:                # @gimp_option_dump_gimprc
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	-8(%rbp), %rdi
	movl	$.L.str.73, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movl	$1, -36(%rbp)
.LBB8_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	$.L.str.74, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB8_4
# BB#3:                                 # %if.then.3
	movl	$2, -36(%rbp)
	jmp	.LBB8_7
.LBB8_4:                                # %if.else
	movq	-8(%rbp), %rdi
	movl	$.L.str.75, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB8_6
# BB#5:                                 # %if.then.6
	movl	$3, -36(%rbp)
.LBB8_6:                                # %if.end.7
	jmp	.LBB8_7
.LBB8_7:                                # %if.end.8
	cmpl	$0, -36(%rbp)
	je	.LBB8_9
# BB#8:                                 # %if.then.9
	callq	gimp_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	units_init
	movl	-36(%rbp), %edi
	callq	gimp_config_dump
	movl	%eax, -52(%rbp)
	movq	-48(%rbp), %rsi
	movq	%rsi, %rdi
	callq	g_object_unref
	movl	$1, %eax
	xorl	%ecx, %ecx
	cmpl	$0, -52(%rbp)
	cmovnel	%ecx, %eax
	movl	%eax, %edi
	callq	app_exit
.LBB8_9:                                # %if.end.14
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_option_dump_gimprc, .Lfunc_end8-gimp_option_dump_gimprc
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_option_dump_pdb_procedures_deprecated,@function
gimp_option_dump_pdb_procedures_deprecated: # @gimp_option_dump_pdb_procedures_deprecated
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	callq	gimp_get_type
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	$1, 92(%rax)
	movq	-48(%rbp), %rax
	movq	520(%rax), %rdi
	callq	internal_procs_init
	movq	-48(%rbp), %rax
	movq	520(%rax), %rdi
	callq	gimp_pdb_get_deprecated_procedures
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB9_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_procedure_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rdi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	40(%rax), %rsi
	movb	$0, %al
	callq	g_print
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB9_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB9_6
.LBB9_5:                                # %cond.false
                                        #   in Loop: Header=BB9_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB9_6
.LBB9_6:                                # %cond.end
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -64(%rbp)
	jmp	.LBB9_1
.LBB9_7:                                # %for.end
	movq	-56(%rbp), %rdi
	callq	g_list_free
	movq	-48(%rbp), %rdi
	callq	g_object_unref
	xorl	%edi, %edi
	callq	app_exit
.Lfunc_end9:
	.size	gimp_option_dump_pdb_procedures_deprecated, .Lfunc_end9-gimp_option_dump_pdb_procedures_deprecated
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GNU Image Manipulation Program"
	.size	.L.str, 31

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"--verbose"
	.size	.L.str.1, 10

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"-v"
	.size	.L.str.2, 3

	.type	be_verbose,@object      # @be_verbose
	.local	be_verbose
	.comm	be_verbose,4,4
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"--no-interface"
	.size	.L.str.3, 15

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"-i"
	.size	.L.str.4, 3

	.type	no_interface,@object    # @no_interface
	.local	no_interface
	.comm	no_interface,4,4
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"--version"
	.size	.L.str.5, 10

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"[FILE|URI...]"
	.size	.L.str.6, 14

	.type	main_entries,@object    # @main_entries
	.section	.rodata,"a",@progbits
	.align	16
main_entries:
	.quad	.L.str.10
	.byte	118                     # 0x76
	.zero	3
	.long	8                       # 0x8
	.long	3                       # 0x3
	.zero	4
	.quad	gimp_show_version_and_exit
	.quad	.L.str.11
	.quad	0
	.quad	.L.str.12
	.byte	0                       # 0x0
	.zero	3
	.long	8                       # 0x8
	.long	3                       # 0x3
	.zero	4
	.quad	gimp_show_license_and_exit
	.quad	.L.str.13
	.quad	0
	.quad	.L.str.14
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	be_verbose
	.quad	.L.str.15
	.quad	0
	.quad	.L.str.16
	.byte	110                     # 0x6e
	.zero	3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	new_instance
	.quad	.L.str.17
	.quad	0
	.quad	.L.str.18
	.byte	97                      # 0x61
	.zero	3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	as_new
	.quad	.L.str.19
	.quad	0
	.quad	.L.str.20
	.byte	105                     # 0x69
	.zero	3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	no_interface
	.quad	.L.str.21
	.quad	0
	.quad	.L.str.22
	.byte	100                     # 0x64
	.zero	3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	no_data
	.quad	.L.str.23
	.quad	0
	.quad	.L.str.24
	.byte	102                     # 0x66
	.zero	3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	no_fonts
	.quad	.L.str.25
	.quad	0
	.quad	.L.str.26
	.byte	115                     # 0x73
	.zero	3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	no_splash
	.quad	.L.str.27
	.quad	0
	.quad	.L.str.28
	.byte	0                       # 0x0
	.zero	3
	.long	4                       # 0x4
	.long	0                       # 0x0
	.zero	4
	.quad	use_shm
	.quad	.L.str.29
	.quad	0
	.quad	.L.str.30
	.byte	0                       # 0x0
	.zero	3
	.long	4                       # 0x4
	.long	0                       # 0x0
	.zero	4
	.quad	use_cpu_accel
	.quad	.L.str.31
	.quad	0
	.quad	.L.str.32
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.long	4                       # 0x4
	.zero	4
	.quad	session_name
	.quad	.L.str.33
	.quad	.L.str.34
	.quad	.L.str.35
	.byte	103                     # 0x67
	.zero	3
	.long	0                       # 0x0
	.long	4                       # 0x4
	.zero	4
	.quad	user_gimprc
	.quad	.L.str.36
	.quad	.L.str.37
	.quad	.L.str.38
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.long	4                       # 0x4
	.zero	4
	.quad	system_gimprc
	.quad	.L.str.39
	.quad	.L.str.37
	.quad	.L.str.40
	.byte	98                      # 0x62
	.zero	3
	.long	0                       # 0x0
	.long	5                       # 0x5
	.zero	4
	.quad	batch_commands
	.quad	.L.str.41
	.quad	.L.str.42
	.quad	.L.str.43
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	batch_interpreter
	.quad	.L.str.44
	.quad	.L.str.45
	.quad	.L.str.46
	.byte	99                      # 0x63
	.zero	3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	console_messages
	.quad	.L.str.47
	.quad	0
	.quad	.L.str.48
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.long	3                       # 0x3
	.zero	4
	.quad	gimp_option_pdb_compat_mode
	.quad	.L.str.49
	.quad	.L.str.50
	.quad	.L.str.51
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.long	3                       # 0x3
	.zero	4
	.quad	gimp_option_stack_trace_mode
	.quad	.L.str.52
	.quad	.L.str.50
	.quad	.L.str.53
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	use_debug_handler
	.quad	.L.str.54
	.quad	0
	.quad	.L.str.55
	.byte	0                       # 0x0
	.zero	3
	.long	8                       # 0x8
	.long	3                       # 0x3
	.zero	4
	.quad	gimp_option_fatal_warnings
	.quad	.L.str.56
	.quad	0
	.quad	.L.str.57
	.byte	0                       # 0x0
	.zero	3
	.long	8                       # 0x8
	.long	3                       # 0x3
	.zero	4
	.quad	gimp_option_dump_gimprc
	.quad	.L.str.58
	.quad	0
	.quad	.L.str.59
	.byte	0                       # 0x0
	.zero	3
	.long	9                       # 0x9
	.long	3                       # 0x3
	.zero	4
	.quad	gimp_option_dump_gimprc
	.quad	0
	.quad	0
	.quad	.L.str.60
	.byte	0                       # 0x0
	.zero	3
	.long	9                       # 0x9
	.long	3                       # 0x3
	.zero	4
	.quad	gimp_option_dump_gimprc
	.quad	0
	.quad	0
	.quad	.L.str.61
	.byte	0                       # 0x0
	.zero	3
	.long	9                       # 0x9
	.long	3                       # 0x3
	.zero	4
	.quad	gimp_option_dump_pdb_procedures_deprecated
	.quad	.L.str.62
	.quad	0
	.quad	.L.str.63
	.byte	0                       # 0x0
	.zero	3
	.long	0                       # 0x0
	.long	6                       # 0x6
	.zero	4
	.quad	filenames
	.quad	0
	.quad	0
	.zero	48
	.size	main_entries, 1296

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"gimp20"
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%s\n"
	.size	.L.str.8, 4

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"GIMP could not initialize the graphical user interface.\nMake sure a proper setup for your display environment exists."
	.size	.L.str.9, 118

	.type	console_messages,@object # @console_messages
	.local	console_messages
	.comm	console_messages,4,4
	.type	batch_commands,@object  # @batch_commands
	.local	batch_commands
	.comm	batch_commands,8,8
	.type	new_instance,@object    # @new_instance
	.local	new_instance
	.comm	new_instance,4,4
	.type	stack_trace_mode,@object # @stack_trace_mode
	.local	stack_trace_mode
	.comm	stack_trace_mode,4,4
	.type	filenames,@object       # @filenames
	.local	filenames
	.comm	filenames,8,8
	.type	system_gimprc,@object   # @system_gimprc
	.local	system_gimprc
	.comm	system_gimprc,8,8
	.type	user_gimprc,@object     # @user_gimprc
	.local	user_gimprc
	.comm	user_gimprc,8,8
	.type	session_name,@object    # @session_name
	.local	session_name
	.comm	session_name,8,8
	.type	batch_interpreter,@object # @batch_interpreter
	.local	batch_interpreter
	.comm	batch_interpreter,8,8
	.type	as_new,@object          # @as_new
	.local	as_new
	.comm	as_new,4,4
	.type	no_data,@object         # @no_data
	.local	no_data
	.comm	no_data,4,4
	.type	no_fonts,@object        # @no_fonts
	.local	no_fonts
	.comm	no_fonts,4,4
	.type	no_splash,@object       # @no_splash
	.local	no_splash
	.comm	no_splash,4,4
	.type	use_shm,@object         # @use_shm
	.data
	.align	4
use_shm:
	.long	1                       # 0x1
	.size	use_shm, 4

	.type	use_cpu_accel,@object   # @use_cpu_accel
	.align	4
use_cpu_accel:
	.long	1                       # 0x1
	.size	use_cpu_accel, 4

	.type	use_debug_handler,@object # @use_debug_handler
	.local	use_debug_handler
	.comm	use_debug_handler,4,4
	.type	pdb_compat_mode,@object # @pdb_compat_mode
	.align	4
pdb_compat_mode:
	.long	1                       # 0x1
	.size	pdb_compat_mode, 4

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"version"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Show version information and exit"
	.size	.L.str.11, 34

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"license"
	.size	.L.str.12, 8

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Show license information and exit"
	.size	.L.str.13, 34

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"verbose"
	.size	.L.str.14, 8

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Be more verbose"
	.size	.L.str.15, 16

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"new-instance"
	.size	.L.str.16, 13

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Start a new GIMP instance"
	.size	.L.str.17, 26

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"as-new"
	.size	.L.str.18, 7

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Open images as new"
	.size	.L.str.19, 19

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"no-interface"
	.size	.L.str.20, 13

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Run without a user interface"
	.size	.L.str.21, 29

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"no-data"
	.size	.L.str.22, 8

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Do not load brushes, gradients, patterns, ..."
	.size	.L.str.23, 46

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"no-fonts"
	.size	.L.str.24, 9

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Do not load any fonts"
	.size	.L.str.25, 22

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"no-splash"
	.size	.L.str.26, 10

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Do not show a splash screen"
	.size	.L.str.27, 28

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"no-shm"
	.size	.L.str.28, 7

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Do not use shared memory between GIMP and plugins"
	.size	.L.str.29, 50

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"no-cpu-accel"
	.size	.L.str.30, 13

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Do not use special CPU acceleration functions"
	.size	.L.str.31, 46

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"session"
	.size	.L.str.32, 8

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Use an alternate sessionrc file"
	.size	.L.str.33, 32

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"<name>"
	.size	.L.str.34, 7

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"gimprc"
	.size	.L.str.35, 7

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Use an alternate user gimprc file"
	.size	.L.str.36, 34

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"<filename>"
	.size	.L.str.37, 11

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"system-gimprc"
	.size	.L.str.38, 14

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Use an alternate system gimprc file"
	.size	.L.str.39, 36

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"batch"
	.size	.L.str.40, 6

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Batch command to run (can be used multiple times)"
	.size	.L.str.41, 50

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"<command>"
	.size	.L.str.42, 10

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"batch-interpreter"
	.size	.L.str.43, 18

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"The procedure to process batch commands with"
	.size	.L.str.44, 45

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"<proc>"
	.size	.L.str.45, 7

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"console-messages"
	.size	.L.str.46, 17

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Send messages to console instead of using a dialog"
	.size	.L.str.47, 51

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"pdb-compat-mode"
	.size	.L.str.48, 16

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"PDB compatibility mode (off|on|warn)"
	.size	.L.str.49, 37

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"<mode>"
	.size	.L.str.50, 7

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"stack-trace-mode"
	.size	.L.str.51, 17

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Debug in case of a crash (never|query|always)"
	.size	.L.str.52, 46

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"debug-handlers"
	.size	.L.str.53, 15

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Enable non-fatal debugging signal handlers"
	.size	.L.str.54, 43

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"g-fatal-warnings"
	.size	.L.str.55, 17

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Make all warnings fatal"
	.size	.L.str.56, 24

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"dump-gimprc"
	.size	.L.str.57, 12

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Output a gimprc file with default settings"
	.size	.L.str.58, 43

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"dump-gimprc-system"
	.size	.L.str.59, 19

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"dump-gimprc-manpage"
	.size	.L.str.60, 20

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"dump-pdb-procedures-deprecated"
	.size	.L.str.61, 31

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Output a sorted list of deprecated procedures in the PDB"
	.size	.L.str.62, 57

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.zero	1
	.size	.L.str.63, 1

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"\n"
	.size	.L.str.64, 2

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"GIMP is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 3 of the License, or (at your option) any later version.\n\nGIMP is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.\n\nYou should have received a copy of the GNU General Public License along with GIMP. If not, see: http://www.gnu.org/licenses/"
	.size	.L.str.65, 585

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"\n\n"
	.size	.L.str.66, 3

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"off"
	.size	.L.str.67, 4

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"on"
	.size	.L.str.68, 3

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"warn"
	.size	.L.str.69, 5

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"never"
	.size	.L.str.70, 6

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"query"
	.size	.L.str.71, 6

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"always"
	.size	.L.str.72, 7

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"--dump-gimprc"
	.size	.L.str.73, 14

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"--dump-gimprc-system"
	.size	.L.str.74, 21

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"--dump-gimprc-manpage"
	.size	.L.str.75, 22

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"gimp20-libgimp"
	.size	.L.str.76, 15

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"UTF-8"
	.size	.L.str.77, 6


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
