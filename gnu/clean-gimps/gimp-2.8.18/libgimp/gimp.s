	.text
	.file	"gimp.bc"
	.globl	gimp_main
	.align	16, 0x90
	.type	gimp_main,@function
gimp_main:                              # @gimp_main
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
	subq	$376, %rsp              # imm = 0x178
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
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -56(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$351, %edx              # imm = 0x15F
	leaq	.L__func__.gimp_main(%rip), %rcx
	leaq	.L.str.2(%rip), %r8
	callq	g_assertion_message_expr@PLT
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, PLUG_IN_INFO(%rip)
	movq	8(%rax), %rcx
	movq	%rcx, PLUG_IN_INFO+8(%rip)
	movq	16(%rax), %rcx
	movq	%rcx, PLUG_IN_INFO+16(%rip)
	movq	24(%rax), %rax
	movq	%rax, PLUG_IN_INFO+24(%rip)
	cmpl	$6, -60(%rbp)
	jne	.LBB0_7
# BB#6:                                 # %lor.lhs.false
	movq	-72(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	.L.str.3(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	je	.LBB0_8
.LBB0_7:                                # %if.then.3
	leaq	.L.str.4(%rip), %rdi
	movq	-72(%rbp), %rax
	movq	(%rax), %rsi
	movb	$0, %al
	callq	g_printerr@PLT
	movl	$1, -44(%rbp)
	jmp	.LBB0_49
.LBB0_8:                                # %if.end.5
	movl	$1, %edi
	callq	gimp_env_init@PLT
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, progname(%rip)
	movq	progname(%rip), %rdi
	callq	g_path_get_basename@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	g_set_prgname@PLT
	leaq	.L.str.5(%rip), %rdi
	callq	g_getenv@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB0_21
# BB#9:                                 # %if.then.9
	movl	$44, %esi
	movq	-88(%rbp), %rdi
	callq	strchr@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB0_14
# BB#10:                                # %if.then.12
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -108(%rbp)
	movq	-80(%rbp), %rdi
	callq	strlen@PLT
	movslq	-108(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_13
# BB#11:                                # %land.lhs.true
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movslq	-108(%rbp), %rdx
	callq	strncmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_13
# BB#12:                                # %if.then.21
	leaq	gimp_debug_keys(%rip), %rsi
	movl	$8, %edx
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	g_parse_debug_string@PLT
	movl	%eax, gimp_debug_flags(%rip)
.LBB0_13:                               # %if.end.23
	jmp	.LBB0_17
.LBB0_14:                               # %if.else.24
	movq	-88(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_16
# BB#15:                                # %if.then.28
	movl	$18, gimp_debug_flags(%rip)
.LBB0_16:                               # %if.end.29
	jmp	.LBB0_17
.LBB0_17:                               # %if.end.30
	leaq	.L.str.6(%rip), %rdi
	callq	g_getenv@PLT
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB0_19
# BB#18:                                # %if.then.33
	leaq	.L.str.7(%rip), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-104(%rbp), %rdi
	movb	$0, %al
	callq	g_strconcat@PLT
	leaq	.L.str.6(%rip), %rdi
	movl	$1, %edx
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rsi
	callq	g_setenv@PLT
	movq	-120(%rbp), %rdi
	movl	%eax, -256(%rbp)        # 4-byte Spill
	callq	g_free@PLT
	jmp	.LBB0_20
.LBB0_19:                               # %if.else.36
	leaq	.L.str.6(%rip), %rdi
	leaq	.L.str(%rip), %rsi
	movl	$1, %edx
	callq	g_setenv@PLT
	movl	%eax, -260(%rbp)        # 4-byte Spill
.LBB0_20:                               # %if.end.38
	jmp	.LBB0_21
.LBB0_21:                               # %if.end.39
	movq	-80(%rbp), %rdi
	callq	g_free@PLT
	movq	-72(%rbp), %rdi
	movq	40(%rdi), %rdi
	callq	atoi@PLT
	cmpl	$2, %eax
	jle	.LBB0_23
# BB#22:                                # %cond.true
	movl	$2, %eax
	movl	%eax, -264(%rbp)        # 4-byte Spill
	jmp	.LBB0_27
.LBB0_23:                               # %cond.false
	movq	-72(%rbp), %rax
	movq	40(%rax), %rdi
	callq	atoi@PLT
	cmpl	$0, %eax
	jge	.LBB0_25
# BB#24:                                # %cond.true.48
	xorl	%eax, %eax
	movl	%eax, -268(%rbp)        # 4-byte Spill
	jmp	.LBB0_26
.LBB0_25:                               # %cond.false.49
	movq	-72(%rbp), %rax
	movq	40(%rax), %rdi
	callq	atoi@PLT
	movl	%eax, -268(%rbp)        # 4-byte Spill
.LBB0_26:                               # %cond.end
	movl	-268(%rbp), %eax        # 4-byte Reload
	movl	%eax, -264(%rbp)        # 4-byte Spill
.LBB0_27:                               # %cond.end.52
	movl	-264(%rbp), %eax        # 4-byte Reload
	movl	$1, %edi
	leaq	gimp_plugin_sigfatal_handler(%rip), %rsi
	xorl	%edx, %edx
	movl	%eax, stack_trace_mode(%rip)
	callq	gimp_signal_private@PLT
	movl	$2, %edi
	leaq	gimp_plugin_sigfatal_handler(%rip), %rsi
	xorl	%edx, %edx
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_signal_private@PLT
	movl	$3, %edi
	leaq	gimp_plugin_sigfatal_handler(%rip), %rsi
	xorl	%edx, %edx
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_signal_private@PLT
	movl	$7, %edi
	leaq	gimp_plugin_sigfatal_handler(%rip), %rsi
	xorl	%edx, %edx
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_signal_private@PLT
	movl	$11, %edi
	leaq	gimp_plugin_sigfatal_handler(%rip), %rsi
	xorl	%edx, %edx
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_signal_private@PLT
	movl	$15, %edi
	leaq	gimp_plugin_sigfatal_handler(%rip), %rsi
	xorl	%edx, %edx
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_signal_private@PLT
	movl	$8, %edi
	leaq	gimp_plugin_sigfatal_handler(%rip), %rsi
	xorl	%edx, %edx
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gimp_signal_private@PLT
	movl	$13, %edi
	movl	$1, %edx
	movl	%edx, %esi
	xorl	%edx, %edx
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gimp_signal_private@PLT
	movl	$17, %edi
	xorl	%edx, %edx
	movl	%edx, %esi
	movl	$268435456, %edx        # imm = 0x10000000
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gimp_signal_private@PLT
	movq	-72(%rbp), %rsi
	movq	16(%rsi), %rdi
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	atoi@PLT
	movl	%eax, %edi
	callq	g_io_channel_unix_new@PLT
	movq	%rax, _readchannel(%rip)
	movq	-72(%rbp), %rax
	movq	24(%rax), %rdi
	callq	atoi@PLT
	movl	%eax, %edi
	callq	g_io_channel_unix_new@PLT
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	_writechannel@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movq	_readchannel(%rip), %rdi
	movq	%rsi, -352(%rbp)        # 8-byte Spill
	movq	-352(%rbp), %rdx        # 8-byte Reload
	callq	g_io_channel_set_encoding@PLT
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	_writechannel@GOTPCREL(%rip), %rdx
	movq	(%rdx), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movl	%eax, -356(%rbp)        # 4-byte Spill
	callq	g_io_channel_set_encoding@PLT
	xorl	%esi, %esi
	movq	_readchannel(%rip), %rdi
	movl	%eax, -360(%rbp)        # 4-byte Spill
	callq	g_io_channel_set_buffered@PLT
	xorl	%esi, %esi
	movq	_writechannel@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rdi
	callq	g_io_channel_set_buffered@PLT
	movl	$1, %esi
	movq	_readchannel(%rip), %rdi
	callq	g_io_channel_set_close_on_unref@PLT
	movl	$1, %esi
	movq	_writechannel@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rdi
	callq	g_io_channel_set_close_on_unref@PLT
	callq	gp_init@PLT
	leaq	gimp_write(%rip), %rdi
	callq	gimp_wire_set_writer@PLT
	leaq	gimp_flush(%rip), %rdi
	callq	gimp_wire_set_flusher@PLT
	callq	g_type_init@PLT
	callq	gimp_enums_init@PLT
	leaq	-248(%rbp), %rdi
	leaq	_gimp_unit_cache_get_plural(%rip), %rcx
	leaq	_gimp_unit_cache_get_singular(%rip), %rdx
	leaq	_gimp_unit_cache_get_abbreviation(%rip), %r9
	leaq	_gimp_unit_cache_get_symbol(%rip), %r10
	leaq	_gimp_unit_cache_get_identifier(%rip), %r11
	leaq	_gimp_unit_cache_get_digits(%rip), %rbx
	leaq	_gimp_unit_cache_get_factor(%rip), %r14
	leaq	_gimp_unit_cache_set_deletion_flag(%rip), %r15
	leaq	_gimp_unit_cache_get_deletion_flag(%rip), %r12
	leaq	_gimp_unit_cache_new(%rip), %r13
	leaq	_gimp_unit_cache_get_number_of_built_in_units(%rip), %rsi
	leaq	_gimp_unit_cache_get_number_of_units(%rip), %r8
	movq	%r8, -248(%rbp)
	movq	%rsi, -240(%rbp)
	movq	%r13, -232(%rbp)
	movq	%r12, -224(%rbp)
	movq	%r15, -216(%rbp)
	movq	%r14, -208(%rbp)
	movq	%rbx, -200(%rbp)
	movq	%r11, -192(%rbp)
	movq	%r10, -184(%rbp)
	movq	%r9, -176(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%rcx, -160(%rbp)
	callq	gimp_base_init@PLT
	movl	$6, %edi
	leaq	.L.str.8(%rip), %rsi
	callq	setlocale@PLT
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gimp_locale_directory@PLT
	leaq	.L.str.9(%rip), %rdi
	movq	%rax, %rsi
	callq	bindtextdomain@PLT
	leaq	.L.str.9(%rip), %rdi
	leaq	.L.str.10(%rip), %rsi
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	bind_textdomain_codeset@PLT
	leaq	.L.str(%rip), %rdi
	movl	$32, %esi
	leaq	gimp_message_func(%rip), %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	g_log_set_handler@PLT
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$32, %esi
	leaq	gimp_message_func(%rip), %rdx
	movq	%rcx, %rdi
	movl	%eax, -388(%rbp)        # 4-byte Spill
	callq	g_log_set_handler@PLT
	movl	gimp_debug_flags(%rip), %esi
	andl	$2, %esi
	cmpl	$0, %esi
	movl	%eax, -392(%rbp)        # 4-byte Spill
	je	.LBB0_29
# BB#28:                                # %if.then.79
	movl	$5, %edi
	callq	g_log_set_always_fatal@PLT
	movl	%eax, -252(%rbp)
	movl	-252(%rbp), %eax
	orl	$24, %eax
	movl	%eax, -252(%rbp)
	movl	-252(%rbp), %edi
	callq	g_log_set_always_fatal@PLT
	movl	%eax, -396(%rbp)        # 4-byte Spill
.LBB0_29:                               # %if.end.83
	movq	-72(%rbp), %rax
	movq	32(%rax), %rdi
	leaq	.L.str.11(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_37
# BB#30:                                # %if.then.88
	cmpq	$0, PLUG_IN_INFO(%rip)
	je	.LBB0_32
# BB#31:                                # %if.then.90
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	_writechannel@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rdi
	callq	gp_has_init_write@PLT
	movl	%eax, -400(%rbp)        # 4-byte Spill
.LBB0_32:                               # %if.end.92
	movl	gimp_debug_flags(%rip), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB0_34
# BB#33:                                # %if.then.95
	callq	gimp_debug_stop
.LBB0_34:                               # %if.end.96
	cmpq	$0, PLUG_IN_INFO+16(%rip)
	je	.LBB0_36
# BB#35:                                # %if.then.98
	callq	*PLUG_IN_INFO+16(%rip)
.LBB0_36:                               # %if.end.99
	callq	gimp_close
	movl	$0, -44(%rbp)
	jmp	.LBB0_49
.LBB0_37:                               # %if.end.100
	movq	-72(%rbp), %rax
	movq	32(%rax), %rdi
	leaq	.L.str.12(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_43
# BB#38:                                # %if.then.105
	movl	gimp_debug_flags(%rip), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB0_40
# BB#39:                                # %if.then.108
	callq	gimp_debug_stop
.LBB0_40:                               # %if.end.109
	cmpq	$0, PLUG_IN_INFO(%rip)
	je	.LBB0_42
# BB#41:                                # %if.then.111
	callq	*PLUG_IN_INFO(%rip)
.LBB0_42:                               # %if.end.112
	callq	gimp_close
	movl	$0, -44(%rbp)
	jmp	.LBB0_49
.LBB0_43:                               # %if.end.113
	movl	gimp_debug_flags(%rip), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB0_45
# BB#44:                                # %if.then.116
	callq	gimp_debug_stop
	jmp	.LBB0_48
.LBB0_45:                               # %if.else.117
	movl	gimp_debug_flags(%rip), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB0_47
# BB#46:                                # %if.then.120
	leaq	.L.str(%rip), %rdi
	movl	$128, %esi
	leaq	.L.str.13(%rip), %rdx
	movb	$0, %al
	callq	g_log@PLT
.LBB0_47:                               # %if.end.121
	jmp	.LBB0_48
.LBB0_48:                               # %if.end.122
	movq	g_str_hash@GOTPCREL(%rip), %rdi
	movq	g_str_equal@GOTPCREL(%rip), %rsi
	callq	g_hash_table_new@PLT
	movl	$24, %esi
	leaq	gimp_plugin_io_error_handler(%rip), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, temp_proc_ht(%rip)
	movq	_readchannel(%rip), %rdi
	callq	g_io_add_watch@PLT
	movl	%eax, -404(%rbp)        # 4-byte Spill
	callq	gimp_loop
	movl	$0, -44(%rbp)
.LBB0_49:                               # %return
	movl	-44(%rbp), %eax
	addq	$376, %rsp              # imm = 0x178
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_main, .Lfunc_end0-gimp_main
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plugin_sigfatal_handler,@function
gimp_plugin_sigfatal_handler:           # @gimp_plugin_sigfatal_handler
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
	subq	$352, %rsp              # imm = 0x160
	movl	%edi, -4(%rbp)
	movl	%edi, %eax
	decl	%eax
	subl	$3, %eax
	movl	%edi, -268(%rbp)        # 4-byte Spill
	movl	%eax, -272(%rbp)        # 4-byte Spill
	jb	.LBB1_1
	jmp	.LBB1_9
.LBB1_9:                                # %entry
	movl	-268(%rbp), %eax        # 4-byte Reload
	subl	$6, %eax
	movl	%eax, -276(%rbp)        # 4-byte Spill
	je	.LBB1_1
	jmp	.LBB1_10
.LBB1_10:                               # %entry
	movl	-268(%rbp), %eax        # 4-byte Reload
	addl	$-7, %eax
	subl	$2, %eax
	movl	%eax, -280(%rbp)        # 4-byte Spill
	jb	.LBB1_2
	jmp	.LBB1_11
.LBB1_11:                               # %entry
	movl	-268(%rbp), %eax        # 4-byte Reload
	subl	$11, %eax
	movl	%eax, -284(%rbp)        # 4-byte Spill
	je	.LBB1_2
	jmp	.LBB1_12
.LBB1_12:                               # %entry
	movl	-268(%rbp), %eax        # 4-byte Reload
	subl	$13, %eax
	movl	%eax, -288(%rbp)        # 4-byte Spill
	je	.LBB1_2
	jmp	.LBB1_13
.LBB1_13:                               # %entry
	movl	-268(%rbp), %eax        # 4-byte Reload
	subl	$15, %eax
	movl	%eax, -292(%rbp)        # 4-byte Spill
	jne	.LBB1_3
	jmp	.LBB1_1
.LBB1_1:                                # %sw.bb
	movq	progname(%rip), %rsi
	movl	-4(%rbp), %edi
	movq	%rsi, -304(%rbp)        # 8-byte Spill
	callq	g_strsignal@PLT
	leaq	.L.str.37(%rip), %rdi
	movq	-304(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_printerr@PLT
	jmp	.LBB1_8
.LBB1_2:                                # %sw.bb.1
	jmp	.LBB1_3
.LBB1_3:                                # %sw.default
	movq	progname(%rip), %rsi
	movl	-4(%rbp), %edi
	movq	%rsi, -312(%rbp)        # 8-byte Spill
	callq	g_strsignal@PLT
	leaq	.L.str.38(%rip), %rdi
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	-312(%rbp), %rsi        # 8-byte Reload
	movb	%dl, -313(%rbp)         # 1-byte Spill
	movq	%rax, %rdx
	movb	-313(%rbp), %al         # 1-byte Reload
	callq	g_printerr@PLT
	movl	stack_trace_mode(%rip), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -320(%rbp)        # 4-byte Spill
	je	.LBB1_4
	jmp	.LBB1_14
.LBB1_14:                               # %sw.default
	movl	-320(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -324(%rbp)        # 4-byte Spill
	je	.LBB1_5
	jmp	.LBB1_15
.LBB1_15:                               # %sw.default
	movl	-320(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -328(%rbp)        # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_7
.LBB1_4:                                # %sw.bb.3
	jmp	.LBB1_7
.LBB1_5:                                # %sw.bb.4
	leaq	-136(%rbp), %rdi
	callq	sigemptyset@PLT
	movl	$2, %edi
	leaq	-136(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	%eax, -332(%rbp)        # 4-byte Spill
	callq	sigprocmask@PLT
	movq	progname(%rip), %rdi
	movl	%eax, -336(%rbp)        # 4-byte Spill
	callq	g_on_error_query@PLT
	jmp	.LBB1_7
.LBB1_6:                                # %sw.bb.7
	leaq	-264(%rbp), %rdi
	callq	sigemptyset@PLT
	movl	$2, %edi
	leaq	-264(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	%eax, -340(%rbp)        # 4-byte Spill
	callq	sigprocmask@PLT
	movq	progname(%rip), %rdi
	movl	%eax, -344(%rbp)        # 4-byte Spill
	callq	g_on_error_stack_trace@PLT
.LBB1_7:                                # %sw.epilog
	jmp	.LBB1_8
.LBB1_8:                                # %sw.epilog.11
	callq	gimp_quit@PLT
.Lfunc_end1:
	.size	gimp_plugin_sigfatal_handler, .Lfunc_end1-gimp_plugin_sigfatal_handler
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_write,@function
gimp_write:                             # @gimp_write
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
.LBB2_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	jbe	.LBB2_8
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	write_buffer_index(%rip), %rax
	addq	-32(%rbp), %rax
	cmpq	$1024, %rax             # imm = 0x400
	jb	.LBB2_6
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	write_buffer(%rip), %rcx
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %edx
	subq	write_buffer_index(%rip), %rdx
	movq	%rdx, -48(%rbp)
	addq	write_buffer_index(%rip), %rcx
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rdx, %rsi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	memcpy@PLT
	movq	-48(%rbp), %rcx
	addq	write_buffer_index(%rip), %rcx
	movq	%rcx, write_buffer_index(%rip)
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	gimp_wire_flush@PLT
	cmpl	$0, %eax
	jne	.LBB2_5
# BB#4:                                 # %if.then.3
	movl	$0, -4(%rbp)
	jmp	.LBB2_9
.LBB2_5:                                # %if.end
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_7
.LBB2_6:                                # %if.else
                                        #   in Loop: Header=BB2_1 Depth=1
	leaq	write_buffer(%rip), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	addq	write_buffer_index(%rip), %rax
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	callq	memcpy@PLT
	movq	-48(%rbp), %rax
	addq	write_buffer_index(%rip), %rax
	movq	%rax, write_buffer_index(%rip)
.LBB2_7:                                # %if.end.6
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-48(%rbp), %rax
	addq	-24(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB2_1
.LBB2_8:                                # %while.end
	movl	$1, -4(%rbp)
.LBB2_9:                                # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_write, .Lfunc_end2-gimp_write
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_flush,@function
gimp_flush:                             # @gimp_flush
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	$0, -40(%rbp)
	cmpq	$0, write_buffer_index(%rip)
	jbe	.LBB3_13
# BB#1:                                 # %if.then
	movq	$0, -48(%rbp)
.LBB3_2:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_4 Depth 2
	movq	-48(%rbp), %rax
	cmpq	write_buffer_index(%rip), %rax
	je	.LBB3_12
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB3_2 Depth=1
	jmp	.LBB3_4
.LBB3_4:                                # %do.body
                                        #   Parent Loop BB3_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	-56(%rbp), %rcx
	leaq	-40(%rbp), %r8
	leaq	write_buffer(%rip), %rax
	movq	$0, -56(%rbp)
	movq	-16(%rbp), %rdi
	addq	-48(%rbp), %rax
	movq	write_buffer_index(%rip), %rdx
	subq	-48(%rbp), %rdx
	movq	%rax, %rsi
	callq	g_io_channel_write_chars@PLT
	movl	%eax, -28(%rbp)
# BB#5:                                 # %do.cond
                                        #   in Loop: Header=BB3_4 Depth=2
	cmpl	$3, -28(%rbp)
	je	.LBB3_4
# BB#6:                                 # %do.end
                                        #   in Loop: Header=BB3_2 Depth=1
	cmpl	$1, -28(%rbp)
	je	.LBB3_11
# BB#7:                                 # %if.then.4
	cmpq	$0, -40(%rbp)
	je	.LBB3_9
# BB#8:                                 # %if.then.5
	callq	g_get_prgname@PLT
	leaq	.L.str.40(%rip), %rdi
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_warning
	movq	-40(%rbp), %rdi
	callq	g_error_free@PLT
	jmp	.LBB3_10
.LBB3_9:                                # %if.else
	callq	g_get_prgname@PLT
	leaq	.L.str.41(%rip), %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_warning
.LBB3_10:                               # %if.end
	movl	$0, -4(%rbp)
	jmp	.LBB3_14
.LBB3_11:                               # %if.end.8
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	-56(%rbp), %rax
	addq	-48(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB3_2
.LBB3_12:                               # %while.end
	movq	$0, write_buffer_index(%rip)
.LBB3_13:                               # %if.end.9
	movl	$1, -4(%rbp)
.LBB3_14:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_flush, .Lfunc_end3-gimp_flush
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_message_func,@function
gimp_message_func:                      # @gimp_message_func
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_message@PLT
	movl	%eax, -36(%rbp)         # 4-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_message_func, .Lfunc_end4-gimp_message_func
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_debug_stop,@function
gimp_debug_stop:                        # @gimp_debug_stop
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
	subq	$16, %rsp
	leaq	.L.str(%rip), %rdi
	movl	$128, %esi
	leaq	.L.str.36(%rip), %rdx
	movb	$0, %al
	callq	g_log@PLT
	movl	$19, %edi
	callq	raise@PLT
	movl	%eax, -4(%rbp)          # 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_debug_stop, .Lfunc_end5-gimp_debug_stop
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_close,@function
gimp_close:                             # @gimp_close
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
	subq	$16, %rsp
	movl	gimp_debug_flags(%rip), %eax
	andl	$32, %eax
	cmpl	$0, %eax
	je	.LBB6_2
# BB#1:                                 # %if.then
	callq	gimp_debug_stop
.LBB6_2:                                # %if.end
	cmpq	$0, PLUG_IN_INFO+8(%rip)
	je	.LBB6_4
# BB#3:                                 # %if.then.2
	callq	*PLUG_IN_INFO+8(%rip)
.LBB6_4:                                # %if.end.3
	cmpl	$-1, _shm_ID(%rip)
	je	.LBB6_7
# BB#5:                                 # %land.lhs.true
	cmpq	$0, _shm_addr(%rip)
	je	.LBB6_7
# BB#6:                                 # %if.then.5
	movq	_shm_addr(%rip), %rdi
	callq	shmdt@PLT
	movl	%eax, -4(%rbp)          # 4-byte Spill
.LBB6_7:                                # %if.end.6
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	_writechannel@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rdi
	callq	gp_quit_write@PLT
	movl	%eax, -8(%rbp)          # 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_close, .Lfunc_end6-gimp_close
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plugin_io_error_handler,@function
gimp_plugin_io_error_handler:           # @gimp_plugin_io_error_handler
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
	leaq	.L.str.39(%rip), %rax
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	progname(%rip), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_printerr@PLT
	callq	gimp_quit@PLT
.Lfunc_end7:
	.size	gimp_plugin_io_error_handler, .Lfunc_end7-gimp_plugin_io_error_handler
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_loop,@function
gimp_loop:                              # @gimp_loop
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
.LBB8_1:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	leaq	-16(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	_readchannel(%rip), %rdi
	callq	gimp_wire_read_msg@PLT
	cmpl	$0, %eax
	jne	.LBB8_3
# BB#2:                                 # %if.then
	callq	gimp_close
	jmp	.LBB8_14
.LBB8_3:                                # %if.end
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-16(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$12, %rdx
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	ja	.LBB8_13
# BB#15:                                # %if.end
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	.LJTI8_0(%rip), %rax
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB8_4:                                # %sw.bb
	leaq	-16(%rbp), %rdi
	callq	gimp_wire_destroy@PLT
	callq	gimp_close
	jmp	.LBB8_14
.LBB8_5:                                # %sw.bb.1
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_config
	jmp	.LBB8_13
.LBB8_6:                                # %sw.bb.2
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	.L.str.42(%rip), %rdi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB8_13
.LBB8_7:                                # %sw.bb.3
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_proc_run
	leaq	-16(%rbp), %rdi
	callq	gimp_wire_destroy@PLT
	callq	gimp_close
	jmp	.LBB8_14
.LBB8_8:                                # %sw.bb.5
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	.L.str.43(%rip), %rdi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB8_13
.LBB8_9:                                # %sw.bb.6
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	.L.str.44(%rip), %rdi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB8_13
.LBB8_10:                               # %sw.bb.7
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	.L.str.45(%rip), %rdi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB8_13
.LBB8_11:                               # %sw.bb.8
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	.L.str.46(%rip), %rdi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB8_13
.LBB8_12:                               # %sw.bb.9
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	.L.str.47(%rip), %rdi
	movb	$0, %al
	callq	g_warning
.LBB8_13:                               # %sw.epilog
                                        #   in Loop: Header=BB8_1 Depth=1
	leaq	-16(%rbp), %rdi
	callq	gimp_wire_destroy@PLT
	jmp	.LBB8_1
.LBB8_14:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_loop, .Lfunc_end8-gimp_loop
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI8_0:
	.long	.LBB8_4-.LJTI8_0
	.long	.LBB8_5-.LJTI8_0
	.long	.LBB8_6-.LJTI8_0
	.long	.LBB8_6-.LJTI8_0
	.long	.LBB8_6-.LJTI8_0
	.long	.LBB8_7-.LJTI8_0
	.long	.LBB8_8-.LJTI8_0
	.long	.LBB8_9-.LJTI8_0
	.long	.LBB8_10-.LJTI8_0
	.long	.LBB8_11-.LJTI8_0
	.long	.LBB8_13-.LJTI8_0
	.long	.LBB8_13-.LJTI8_0
	.long	.LBB8_12-.LJTI8_0

	.text
	.globl	gimp_quit
	.align	16, 0x90
	.type	gimp_quit,@function
gimp_quit:                              # @gimp_quit
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
	callq	gimp_close
	xorl	%edi, %edi
	callq	exit@PLT
.Lfunc_end9:
	.size	gimp_quit, .Lfunc_end9-gimp_quit
	.cfi_endproc

	.globl	gimp_install_procedure
	.align	16, 0x90
	.type	gimp_install_procedure,@function
gimp_install_procedure:                 # @gimp_install_procedure
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp37:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$192, %rsp
.Ltmp38:
	.cfi_offset %rbx, -48
.Ltmp39:
	.cfi_offset %r12, -40
.Ltmp40:
	.cfi_offset %r14, -32
.Ltmp41:
	.cfi_offset %r15, -24
	movq	64(%rbp), %rax
	movq	56(%rbp), %r10
	movl	48(%rbp), %r11d
	movl	40(%rbp), %ebx
	movl	32(%rbp), %r14d
	movq	24(%rbp), %r15
	movq	16(%rbp), %r12
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	%r12, -88(%rbp)
	movq	%r15, -96(%rbp)
	movl	%r14d, -100(%rbp)
	movl	%ebx, -104(%rbp)
	movl	%r11d, -108(%rbp)
	movq	%r10, -120(%rbp)
	movq	%rax, -128(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -40(%rbp)
	je	.LBB10_3
# BB#2:                                 # %if.then
	jmp	.LBB10_4
.LBB10_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_install_procedure(%rip), %rsi
	leaq	.L.str.14(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB10_28
.LBB10_4:                               # %if.end
	jmp	.LBB10_5
.LBB10_5:                               # %do.end
	jmp	.LBB10_6
.LBB10_6:                               # %do.body.1
	cmpl	$0, -100(%rbp)
	je	.LBB10_8
# BB#7:                                 # %if.then.3
	jmp	.LBB10_9
.LBB10_8:                               # %if.else.4
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_install_procedure(%rip), %rsi
	leaq	.L.str.15(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB10_28
.LBB10_9:                               # %if.end.5
	jmp	.LBB10_10
.LBB10_10:                              # %do.end.6
	jmp	.LBB10_11
.LBB10_11:                              # %do.body.7
	cmpl	$0, -104(%rbp)
	jne	.LBB10_13
# BB#12:                                # %land.lhs.true
	cmpq	$0, -120(%rbp)
	je	.LBB10_15
.LBB10_13:                              # %lor.lhs.false
	cmpl	$0, -104(%rbp)
	jle	.LBB10_16
# BB#14:                                # %land.lhs.true.11
	cmpq	$0, -120(%rbp)
	je	.LBB10_16
.LBB10_15:                              # %if.then.13
	jmp	.LBB10_17
.LBB10_16:                              # %if.else.14
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_install_procedure(%rip), %rsi
	leaq	.L.str.16(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB10_28
.LBB10_17:                              # %if.end.15
	jmp	.LBB10_18
.LBB10_18:                              # %do.end.16
	jmp	.LBB10_19
.LBB10_19:                              # %do.body.17
	cmpl	$0, -108(%rbp)
	jne	.LBB10_21
# BB#20:                                # %land.lhs.true.19
	cmpq	$0, -128(%rbp)
	je	.LBB10_23
.LBB10_21:                              # %lor.lhs.false.21
	cmpl	$0, -108(%rbp)
	jle	.LBB10_24
# BB#22:                                # %land.lhs.true.23
	cmpq	$0, -128(%rbp)
	je	.LBB10_24
.LBB10_23:                              # %if.then.25
	jmp	.LBB10_25
.LBB10_24:                              # %if.else.26
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_install_procedure(%rip), %rsi
	leaq	.L.str.17(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB10_28
.LBB10_25:                              # %if.end.27
	jmp	.LBB10_26
.LBB10_26:                              # %do.end.28
	leaq	-224(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	_writechannel@GOTPCREL(%rip), %rcx
	movq	-40(%rbp), %rdi
	movq	%rdi, -224(%rbp)
	movq	-48(%rbp), %rdi
	movq	%rdi, -216(%rbp)
	movq	-56(%rbp), %rdi
	movq	%rdi, -208(%rbp)
	movq	-64(%rbp), %rdi
	movq	%rdi, -200(%rbp)
	movq	-72(%rbp), %rdi
	movq	%rdi, -192(%rbp)
	movq	-80(%rbp), %rdi
	movq	%rdi, -184(%rbp)
	movq	-88(%rbp), %rdi
	movq	%rdi, -176(%rbp)
	movq	-96(%rbp), %rdi
	movq	%rdi, -168(%rbp)
	movl	-100(%rbp), %eax
	movl	%eax, -160(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, -156(%rbp)
	movl	-108(%rbp), %eax
	movl	%eax, -152(%rbp)
	movq	-120(%rbp), %rdi
	movq	%rdi, -144(%rbp)
	movq	-128(%rbp), %rdi
	movq	%rdi, -136(%rbp)
	movq	(%rcx), %rdi
	callq	gp_proc_install_write@PLT
	cmpl	$0, %eax
	jne	.LBB10_28
# BB#27:                                # %if.then.39
	callq	gimp_quit@PLT
.LBB10_28:                              # %if.end.40
	addq	$192, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_install_procedure, .Lfunc_end10-gimp_install_procedure
	.cfi_endproc

	.globl	gimp_install_temp_proc
	.align	16, 0x90
	.type	gimp_install_temp_proc,@function
gimp_install_temp_proc:                 # @gimp_install_temp_proc
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$184, %rsp
.Ltmp45:
	.cfi_offset %rbx, -56
.Ltmp46:
	.cfi_offset %r12, -48
.Ltmp47:
	.cfi_offset %r13, -40
.Ltmp48:
	.cfi_offset %r14, -32
.Ltmp49:
	.cfi_offset %r15, -24
	movq	72(%rbp), %rax
	movq	64(%rbp), %r10
	movq	56(%rbp), %r11
	movl	48(%rbp), %ebx
	movl	40(%rbp), %r14d
	movl	32(%rbp), %r15d
	movq	24(%rbp), %r12
	movq	16(%rbp), %r13
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movq	%r8, -80(%rbp)
	movq	%r9, -88(%rbp)
	movq	%r13, -96(%rbp)
	movq	%r12, -104(%rbp)
	movl	%r15d, -108(%rbp)
	movl	%r14d, -112(%rbp)
	movl	%ebx, -116(%rbp)
	movq	%r11, -128(%rbp)
	movq	%r10, -136(%rbp)
	movq	%rax, -144(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -48(%rbp)
	je	.LBB11_3
# BB#2:                                 # %if.then
	jmp	.LBB11_4
.LBB11_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_install_temp_proc(%rip), %rsi
	leaq	.L.str.14(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB11_32
.LBB11_4:                               # %if.end
	jmp	.LBB11_5
.LBB11_5:                               # %do.end
	jmp	.LBB11_6
.LBB11_6:                               # %do.body.1
	cmpl	$0, -112(%rbp)
	jne	.LBB11_8
# BB#7:                                 # %land.lhs.true
	cmpq	$0, -128(%rbp)
	je	.LBB11_10
.LBB11_8:                               # %lor.lhs.false
	cmpl	$0, -112(%rbp)
	jle	.LBB11_11
# BB#9:                                 # %land.lhs.true.5
	cmpq	$0, -128(%rbp)
	je	.LBB11_11
.LBB11_10:                              # %if.then.7
	jmp	.LBB11_12
.LBB11_11:                              # %if.else.8
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_install_temp_proc(%rip), %rsi
	leaq	.L.str.16(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB11_32
.LBB11_12:                              # %if.end.9
	jmp	.LBB11_13
.LBB11_13:                              # %do.end.10
	jmp	.LBB11_14
.LBB11_14:                              # %do.body.11
	cmpl	$0, -116(%rbp)
	jne	.LBB11_16
# BB#15:                                # %land.lhs.true.13
	cmpq	$0, -136(%rbp)
	je	.LBB11_18
.LBB11_16:                              # %lor.lhs.false.15
	cmpl	$0, -116(%rbp)
	jle	.LBB11_19
# BB#17:                                # %land.lhs.true.17
	cmpq	$0, -136(%rbp)
	je	.LBB11_19
.LBB11_18:                              # %if.then.19
	jmp	.LBB11_20
.LBB11_19:                              # %if.else.20
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_install_temp_proc(%rip), %rsi
	leaq	.L.str.17(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB11_32
.LBB11_20:                              # %if.end.21
	jmp	.LBB11_21
.LBB11_21:                              # %do.end.22
	jmp	.LBB11_22
.LBB11_22:                              # %do.body.23
	cmpl	$3, -108(%rbp)
	jne	.LBB11_24
# BB#23:                                # %if.then.25
	jmp	.LBB11_25
.LBB11_24:                              # %if.else.26
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_install_temp_proc(%rip), %rsi
	leaq	.L.str.18(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB11_32
.LBB11_25:                              # %if.end.27
	jmp	.LBB11_26
.LBB11_26:                              # %do.end.28
	jmp	.LBB11_27
.LBB11_27:                              # %do.body.29
	cmpq	$0, -144(%rbp)
	je	.LBB11_29
# BB#28:                                # %if.then.31
	jmp	.LBB11_30
.LBB11_29:                              # %if.else.32
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_install_temp_proc(%rip), %rsi
	leaq	.L.str.19(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB11_32
.LBB11_30:                              # %if.end.33
	jmp	.LBB11_31
.LBB11_31:                              # %do.end.34
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %rcx
	movq	-80(%rbp), %r8
	movq	-88(%rbp), %r9
	movq	-96(%rbp), %rax
	movq	-104(%rbp), %r10
	movl	-108(%rbp), %r11d
	movl	-112(%rbp), %ebx
	movl	-116(%rbp), %r14d
	movq	-128(%rbp), %r15
	movq	-136(%rbp), %r12
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movl	%r11d, 16(%rsp)
	movl	%ebx, 24(%rsp)
	movl	%r14d, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	%r12, 48(%rsp)
	callq	gimp_install_procedure@PLT
	movq	temp_proc_ht(%rip), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_strdup@PLT
	movq	-144(%rbp), %rcx
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	g_hash_table_insert@PLT
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB11_32:                              # %return
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_install_temp_proc, .Lfunc_end11-gimp_install_temp_proc
	.cfi_endproc

	.globl	gimp_uninstall_temp_proc
	.align	16, 0x90
	.type	gimp_uninstall_temp_proc,@function
gimp_uninstall_temp_proc:               # @gimp_uninstall_temp_proc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB12_3
# BB#2:                                 # %if.then
	jmp	.LBB12_4
.LBB12_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_uninstall_temp_proc(%rip), %rsi
	leaq	.L.str.14(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB12_9
.LBB12_4:                               # %if.end
	jmp	.LBB12_5
.LBB12_5:                               # %do.end
	leaq	-16(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	_writechannel@GOTPCREL(%rip), %rcx
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	(%rcx), %rdi
	callq	gp_proc_uninstall_write@PLT
	cmpl	$0, %eax
	jne	.LBB12_7
# BB#6:                                 # %if.then.2
	callq	gimp_quit@PLT
.LBB12_7:                               # %if.end.3
	leaq	-24(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	temp_proc_ht(%rip), %rdi
	movq	-8(%rbp), %rsi
	callq	g_hash_table_lookup_extended@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB12_9
# BB#8:                                 # %if.then.6
	movq	temp_proc_ht(%rip), %rdi
	movq	-8(%rbp), %rsi
	callq	g_hash_table_remove@PLT
	movq	-24(%rbp), %rdi
	movl	%eax, -32(%rbp)         # 4-byte Spill
	callq	g_free@PLT
.LBB12_9:                               # %if.end.8
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_uninstall_temp_proc, .Lfunc_end12-gimp_uninstall_temp_proc
	.cfi_endproc

	.globl	gimp_run_procedure
	.align	16, 0x90
	.type	gimp_run_procedure,@function
gimp_run_procedure:                     # @gimp_run_procedure
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp55:
	.cfi_def_cfa_register %rbp
	subq	$1504, %rsp             # imm = 0x5E0
	testb	%al, %al
	movaps	%xmm7, -288(%rbp)       # 16-byte Spill
	movaps	%xmm6, -304(%rbp)       # 16-byte Spill
	movaps	%xmm5, -320(%rbp)       # 16-byte Spill
	movaps	%xmm4, -336(%rbp)       # 16-byte Spill
	movaps	%xmm3, -352(%rbp)       # 16-byte Spill
	movaps	%xmm2, -368(%rbp)       # 16-byte Spill
	movaps	%xmm1, -384(%rbp)       # 16-byte Spill
	movaps	%xmm0, -400(%rbp)       # 16-byte Spill
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movq	%r9, -416(%rbp)         # 8-byte Spill
	movq	%r8, -424(%rbp)         # 8-byte Spill
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	movq	%rdx, -440(%rbp)        # 8-byte Spill
	movq	%rsi, -448(%rbp)        # 8-byte Spill
	je	.LBB13_174
# BB#173:                               # %entry
	movaps	-400(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -224(%rbp)
	movaps	-384(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -208(%rbp)
	movaps	-368(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -192(%rbp)
	movaps	-352(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -176(%rbp)
	movaps	-336(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -160(%rbp)
	movaps	-320(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -144(%rbp)
	movaps	-304(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -128(%rbp)
	movaps	-288(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -112(%rbp)
.LBB13_174:                             # %entry
	movq	-416(%rbp), %rax        # 8-byte Reload
	movq	%rax, -232(%rbp)
	movq	-424(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -240(%rbp)
	movq	-432(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -248(%rbp)
	movq	-440(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -256(%rbp)
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	-408(%rbp), %r8         # 8-byte Reload
	movq	%r8, -16(%rbp)
	movq	%rdi, -24(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -52(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB13_3
# BB#2:                                 # %if.then
	jmp	.LBB13_4
.LBB13_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_run_procedure(%rip), %rsi
	leaq	.L.str.14(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB13_170
.LBB13_4:                               # %if.end
	jmp	.LBB13_5
.LBB13_5:                               # %do.end
	jmp	.LBB13_6
.LBB13_6:                               # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB13_8
# BB#7:                                 # %if.then.3
	jmp	.LBB13_9
.LBB13_8:                               # %if.else.4
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_run_procedure(%rip), %rsi
	leaq	.L.str.20(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB13_170
.LBB13_9:                               # %if.end.5
	jmp	.LBB13_10
.LBB13_10:                              # %do.end.6
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	leaq	-272(%rbp), %rdx
	movq	%rdx, 16(%rcx)
	leaq	16(%rbp), %rdx
	movq	%rdx, 8(%rcx)
	movl	$48, 4(%rcx)
	movl	$16, (%rcx)
	movl	-80(%rbp), %esi
	cmpl	$40, %esi
	movq	%rax, -456(%rbp)        # 8-byte Spill
	movl	%esi, -460(%rbp)        # 4-byte Spill
	ja	.LBB13_12
# BB#11:                                # %vaarg.in_reg
	movl	-460(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-456(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -472(%rbp)        # 8-byte Spill
	jmp	.LBB13_13
.LBB13_12:                              # %vaarg.in_mem
	movq	-456(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -472(%rbp)        # 8-byte Spill
.LBB13_13:                              # %vaarg.end
	movq	-472(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %ecx
	movl	%ecx, -28(%rbp)
.LBB13_14:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$22, -28(%rbp)
	je	.LBB13_69
# BB#15:                                # %while.body
                                        #   in Loop: Header=BB13_14 Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$22, %rdx
	movq	%rcx, -480(%rbp)        # 8-byte Spill
	movq	%rdx, -488(%rbp)        # 8-byte Spill
	ja	.LBB13_65
# BB#172:                               # %while.body
                                        #   in Loop: Header=BB13_14 Depth=1
	leaq	.LJTI13_1(%rip), %rax
	movq	-480(%rbp), %rcx        # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB13_16:                              # %sw.bb
                                        #   in Loop: Header=BB13_14 Depth=1
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -496(%rbp)        # 8-byte Spill
	movl	%ecx, -500(%rbp)        # 4-byte Spill
	ja	.LBB13_18
# BB#17:                                # %vaarg.in_reg.14
                                        #   in Loop: Header=BB13_14 Depth=1
	movl	-500(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-496(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -512(%rbp)        # 8-byte Spill
	jmp	.LBB13_19
.LBB13_18:                              # %vaarg.in_mem.16
                                        #   in Loop: Header=BB13_14 Depth=1
	movq	-496(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -512(%rbp)        # 8-byte Spill
.LBB13_19:                              # %vaarg.end.20
                                        #   in Loop: Header=BB13_14 Depth=1
	movq	-512(%rbp), %rax        # 8-byte Reload
	movq	%rax, -520(%rbp)        # 8-byte Spill
	jmp	.LBB13_65
.LBB13_20:                              # %sw.bb.22
                                        #   in Loop: Header=BB13_14 Depth=1
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -528(%rbp)        # 8-byte Spill
	movl	%ecx, -532(%rbp)        # 4-byte Spill
	ja	.LBB13_22
# BB#21:                                # %vaarg.in_reg.27
                                        #   in Loop: Header=BB13_14 Depth=1
	movl	-532(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-528(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -544(%rbp)        # 8-byte Spill
	jmp	.LBB13_23
.LBB13_22:                              # %vaarg.in_mem.29
                                        #   in Loop: Header=BB13_14 Depth=1
	movq	-528(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -544(%rbp)        # 8-byte Spill
.LBB13_23:                              # %vaarg.end.33
                                        #   in Loop: Header=BB13_14 Depth=1
	movq	-544(%rbp), %rax        # 8-byte Reload
	movq	%rax, -552(%rbp)        # 8-byte Spill
	jmp	.LBB13_65
.LBB13_24:                              # %sw.bb.35
                                        #   in Loop: Header=BB13_14 Depth=1
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -560(%rbp)        # 8-byte Spill
	movl	%ecx, -564(%rbp)        # 4-byte Spill
	ja	.LBB13_26
# BB#25:                                # %vaarg.in_reg.40
                                        #   in Loop: Header=BB13_14 Depth=1
	movl	-564(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-560(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -576(%rbp)        # 8-byte Spill
	jmp	.LBB13_27
.LBB13_26:                              # %vaarg.in_mem.42
                                        #   in Loop: Header=BB13_14 Depth=1
	movq	-560(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -576(%rbp)        # 8-byte Spill
.LBB13_27:                              # %vaarg.end.46
                                        #   in Loop: Header=BB13_14 Depth=1
	movq	-576(%rbp), %rax        # 8-byte Reload
	movq	%rax, -584(%rbp)        # 8-byte Spill
	jmp	.LBB13_65
.LBB13_28:                              # %sw.bb.48
                                        #   in Loop: Header=BB13_14 Depth=1
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movl	-76(%rbp), %edx
	cmpl	$160, %edx
	movq	%rax, -592(%rbp)        # 8-byte Spill
	movq	%rcx, -600(%rbp)        # 8-byte Spill
	movl	%edx, -604(%rbp)        # 4-byte Spill
	ja	.LBB13_30
# BB#29:                                # %vaarg.in_reg.50
                                        #   in Loop: Header=BB13_14 Depth=1
	movl	-604(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-592(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$16, %eax
	movq	-600(%rbp), %rsi        # 8-byte Reload
	movl	%eax, (%rsi)
	movq	%rcx, -616(%rbp)        # 8-byte Spill
	jmp	.LBB13_31
.LBB13_30:                              # %vaarg.in_mem.52
                                        #   in Loop: Header=BB13_14 Depth=1
	movq	-592(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -616(%rbp)        # 8-byte Spill
.LBB13_31:                              # %vaarg.end.56
                                        #   in Loop: Header=BB13_14 Depth=1
	movq	-616(%rbp), %rax        # 8-byte Reload
	movq	%rax, -624(%rbp)        # 8-byte Spill
	jmp	.LBB13_65
.LBB13_32:                              # %sw.bb.58
                                        #   in Loop: Header=BB13_14 Depth=1
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -632(%rbp)        # 8-byte Spill
	movl	%ecx, -636(%rbp)        # 4-byte Spill
	ja	.LBB13_34
# BB#33:                                # %vaarg.in_reg.63
                                        #   in Loop: Header=BB13_14 Depth=1
	movl	-636(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-632(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -648(%rbp)        # 8-byte Spill
	jmp	.LBB13_35
.LBB13_34:                              # %vaarg.in_mem.65
                                        #   in Loop: Header=BB13_14 Depth=1
	movq	-632(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -648(%rbp)        # 8-byte Spill
.LBB13_35:                              # %vaarg.end.69
                                        #   in Loop: Header=BB13_14 Depth=1
	movq	-648(%rbp), %rax        # 8-byte Reload
	movq	%rax, -656(%rbp)        # 8-byte Spill
	jmp	.LBB13_65
.LBB13_36:                              # %sw.bb.71
                                        #   in Loop: Header=BB13_14 Depth=1
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -664(%rbp)        # 8-byte Spill
	movl	%ecx, -668(%rbp)        # 4-byte Spill
	ja	.LBB13_38
# BB#37:                                # %vaarg.in_reg.76
                                        #   in Loop: Header=BB13_14 Depth=1
	movl	-668(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-664(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -680(%rbp)        # 8-byte Spill
	jmp	.LBB13_39
.LBB13_38:                              # %vaarg.in_mem.78
                                        #   in Loop: Header=BB13_14 Depth=1
	movq	-664(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -680(%rbp)        # 8-byte Spill
.LBB13_39:                              # %vaarg.end.82
                                        #   in Loop: Header=BB13_14 Depth=1
	movq	-680(%rbp), %rax        # 8-byte Reload
	movq	%rax, -688(%rbp)        # 8-byte Spill
	jmp	.LBB13_65
.LBB13_40:                              # %sw.bb.84
                                        #   in Loop: Header=BB13_14 Depth=1
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -696(%rbp)        # 8-byte Spill
	movl	%ecx, -700(%rbp)        # 4-byte Spill
	ja	.LBB13_42
# BB#41:                                # %vaarg.in_reg.89
                                        #   in Loop: Header=BB13_14 Depth=1
	movl	-700(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-696(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -712(%rbp)        # 8-byte Spill
	jmp	.LBB13_43
.LBB13_42:                              # %vaarg.in_mem.91
                                        #   in Loop: Header=BB13_14 Depth=1
	movq	-696(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -712(%rbp)        # 8-byte Spill
.LBB13_43:                              # %vaarg.end.95
                                        #   in Loop: Header=BB13_14 Depth=1
	movq	-712(%rbp), %rax        # 8-byte Reload
	movq	%rax, -720(%rbp)        # 8-byte Spill
	jmp	.LBB13_65
.LBB13_44:                              # %sw.bb.97
                                        #   in Loop: Header=BB13_14 Depth=1
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -728(%rbp)        # 8-byte Spill
	movl	%ecx, -732(%rbp)        # 4-byte Spill
	ja	.LBB13_46
# BB#45:                                # %vaarg.in_reg.102
                                        #   in Loop: Header=BB13_14 Depth=1
	movl	-732(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-728(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -744(%rbp)        # 8-byte Spill
	jmp	.LBB13_47
.LBB13_46:                              # %vaarg.in_mem.104
                                        #   in Loop: Header=BB13_14 Depth=1
	movq	-728(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -744(%rbp)        # 8-byte Spill
.LBB13_47:                              # %vaarg.end.108
                                        #   in Loop: Header=BB13_14 Depth=1
	movq	-744(%rbp), %rax        # 8-byte Reload
	movq	%rax, -752(%rbp)        # 8-byte Spill
	jmp	.LBB13_65
.LBB13_48:                              # %sw.bb.110
                                        #   in Loop: Header=BB13_14 Depth=1
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -760(%rbp)        # 8-byte Spill
	movl	%ecx, -764(%rbp)        # 4-byte Spill
	ja	.LBB13_50
# BB#49:                                # %vaarg.in_reg.115
                                        #   in Loop: Header=BB13_14 Depth=1
	movl	-764(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-760(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -776(%rbp)        # 8-byte Spill
	jmp	.LBB13_51
.LBB13_50:                              # %vaarg.in_mem.117
                                        #   in Loop: Header=BB13_14 Depth=1
	movq	-760(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -776(%rbp)        # 8-byte Spill
.LBB13_51:                              # %vaarg.end.121
                                        #   in Loop: Header=BB13_14 Depth=1
	movq	-776(%rbp), %rax        # 8-byte Reload
	movq	%rax, -784(%rbp)        # 8-byte Spill
	jmp	.LBB13_65
.LBB13_52:                              # %sw.bb.123
                                        #   in Loop: Header=BB13_14 Depth=1
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -792(%rbp)        # 8-byte Spill
	movl	%ecx, -796(%rbp)        # 4-byte Spill
	ja	.LBB13_54
# BB#53:                                # %vaarg.in_reg.128
                                        #   in Loop: Header=BB13_14 Depth=1
	movl	-796(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-792(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -808(%rbp)        # 8-byte Spill
	jmp	.LBB13_55
.LBB13_54:                              # %vaarg.in_mem.130
                                        #   in Loop: Header=BB13_14 Depth=1
	movq	-792(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -808(%rbp)        # 8-byte Spill
.LBB13_55:                              # %vaarg.end.134
                                        #   in Loop: Header=BB13_14 Depth=1
	movq	-808(%rbp), %rax        # 8-byte Reload
	movq	%rax, -816(%rbp)        # 8-byte Spill
	jmp	.LBB13_65
.LBB13_56:                              # %sw.bb.136
                                        #   in Loop: Header=BB13_14 Depth=1
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -824(%rbp)        # 8-byte Spill
	movl	%ecx, -828(%rbp)        # 4-byte Spill
	ja	.LBB13_58
# BB#57:                                # %vaarg.in_reg.141
                                        #   in Loop: Header=BB13_14 Depth=1
	movl	-828(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-824(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -840(%rbp)        # 8-byte Spill
	jmp	.LBB13_59
.LBB13_58:                              # %vaarg.in_mem.143
                                        #   in Loop: Header=BB13_14 Depth=1
	movq	-824(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -840(%rbp)        # 8-byte Spill
.LBB13_59:                              # %vaarg.end.147
                                        #   in Loop: Header=BB13_14 Depth=1
	movq	-840(%rbp), %rax        # 8-byte Reload
	movq	%rax, -848(%rbp)        # 8-byte Spill
	jmp	.LBB13_65
.LBB13_60:                              # %sw.bb.149
                                        #   in Loop: Header=BB13_14 Depth=1
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -856(%rbp)        # 8-byte Spill
	movl	%ecx, -860(%rbp)        # 4-byte Spill
	ja	.LBB13_62
# BB#61:                                # %vaarg.in_reg.154
                                        #   in Loop: Header=BB13_14 Depth=1
	movl	-860(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-856(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -872(%rbp)        # 8-byte Spill
	jmp	.LBB13_63
.LBB13_62:                              # %vaarg.in_mem.156
                                        #   in Loop: Header=BB13_14 Depth=1
	movq	-856(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -872(%rbp)        # 8-byte Spill
.LBB13_63:                              # %vaarg.end.160
                                        #   in Loop: Header=BB13_14 Depth=1
	movq	-872(%rbp), %rax        # 8-byte Reload
	movq	%rax, -880(%rbp)        # 8-byte Spill
	jmp	.LBB13_65
.LBB13_64:                              # %sw.bb.162
                                        #   in Loop: Header=BB13_14 Depth=1
	jmp	.LBB13_65
.LBB13_65:                              # %sw.epilog
                                        #   in Loop: Header=BB13_14 Depth=1
	leaq	-80(%rbp), %rax
	movl	-52(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -52(%rbp)
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -888(%rbp)        # 8-byte Spill
	movl	%ecx, -892(%rbp)        # 4-byte Spill
	ja	.LBB13_67
# BB#66:                                # %vaarg.in_reg.167
                                        #   in Loop: Header=BB13_14 Depth=1
	movl	-892(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-888(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -904(%rbp)        # 8-byte Spill
	jmp	.LBB13_68
.LBB13_67:                              # %vaarg.in_mem.169
                                        #   in Loop: Header=BB13_14 Depth=1
	movq	-888(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -904(%rbp)        # 8-byte Spill
.LBB13_68:                              # %vaarg.end.173
                                        #   in Loop: Header=BB13_14 Depth=1
	movq	-904(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %ecx
	movl	%ecx, -28(%rbp)
	jmp	.LBB13_14
.LBB13_69:                              # %while.end
	movl	$40, %eax
	movl	%eax, %esi
	leaq	-80(%rbp), %rcx
	movslq	-52(%rbp), %rdi
	movq	%rcx, -912(%rbp)        # 8-byte Spill
	callq	g_malloc0_n@PLT
	leaq	-80(%rbp), %rcx
	movq	%rax, -48(%rbp)
	leaq	-272(%rbp), %rax
	movq	%rax, 16(%rcx)
	leaq	16(%rbp), %rax
	movq	%rax, 8(%rcx)
	movl	$48, 4(%rcx)
	movl	$16, (%rcx)
	movl	$0, -84(%rbp)
.LBB13_70:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB13_169
# BB#71:                                # %for.body
                                        #   in Loop: Header=BB13_70 Depth=1
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -920(%rbp)        # 8-byte Spill
	movl	%ecx, -924(%rbp)        # 4-byte Spill
	ja	.LBB13_73
# BB#72:                                # %vaarg.in_reg.185
                                        #   in Loop: Header=BB13_70 Depth=1
	movl	-924(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-920(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -936(%rbp)        # 8-byte Spill
	jmp	.LBB13_74
.LBB13_73:                              # %vaarg.in_mem.187
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	-920(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -936(%rbp)        # 8-byte Spill
.LBB13_74:                              # %vaarg.end.191
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	-936(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %ecx
	movslq	-84(%rbp), %rax
	movq	-48(%rbp), %rdx
	leaq	(%rax,%rax,4), %rax
	movl	%ecx, (%rdx,%rax,8)
	movslq	-84(%rbp), %rax
	movq	-48(%rbp), %rdx
	leaq	(%rax,%rax,4), %rax
	movl	(%rdx,%rax,8), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdx
	subq	$22, %rdx
	movq	%rax, -944(%rbp)        # 8-byte Spill
	movq	%rdx, -952(%rbp)        # 8-byte Spill
	ja	.LBB13_167
# BB#171:                               # %vaarg.end.191
                                        #   in Loop: Header=BB13_70 Depth=1
	leaq	.LJTI13_0(%rip), %rax
	movq	-944(%rbp), %rcx        # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB13_75:                              # %sw.bb.196
                                        #   in Loop: Header=BB13_70 Depth=1
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -960(%rbp)        # 8-byte Spill
	movl	%ecx, -964(%rbp)        # 4-byte Spill
	ja	.LBB13_77
# BB#76:                                # %vaarg.in_reg.201
                                        #   in Loop: Header=BB13_70 Depth=1
	movl	-964(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-960(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -976(%rbp)        # 8-byte Spill
	jmp	.LBB13_78
.LBB13_77:                              # %vaarg.in_mem.203
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	-960(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -976(%rbp)        # 8-byte Spill
.LBB13_78:                              # %vaarg.end.207
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	-976(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %ecx
	movslq	-84(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-48(%rbp), %rax
	movl	%ecx, 8(%rax)
	jmp	.LBB13_167
.LBB13_79:                              # %sw.bb.211
                                        #   in Loop: Header=BB13_70 Depth=1
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -984(%rbp)        # 8-byte Spill
	movl	%ecx, -988(%rbp)        # 4-byte Spill
	ja	.LBB13_81
# BB#80:                                # %vaarg.in_reg.216
                                        #   in Loop: Header=BB13_70 Depth=1
	movl	-988(%rbp), %eax        # 4-byte Reload
	movslq	%eax, %rcx
	movq	-984(%rbp), %rdx        # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1000(%rbp)       # 8-byte Spill
	jmp	.LBB13_82
.LBB13_81:                              # %vaarg.in_mem.218
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	-984(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1000(%rbp)       # 8-byte Spill
.LBB13_82:                              # %vaarg.end.222
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	-1000(%rbp), %rax       # 8-byte Reload
	movl	(%rax), %ecx
	movw	%cx, %dx
	movslq	-84(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-48(%rbp), %rax
	movw	%dx, 8(%rax)
	jmp	.LBB13_167
.LBB13_83:                              # %sw.bb.228
                                        #   in Loop: Header=BB13_70 Depth=1
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	movl	%ecx, -1012(%rbp)       # 4-byte Spill
	ja	.LBB13_85
# BB#84:                                # %vaarg.in_reg.233
                                        #   in Loop: Header=BB13_70 Depth=1
	movl	-1012(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1008(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1024(%rbp)       # 8-byte Spill
	jmp	.LBB13_86
.LBB13_85:                              # %vaarg.in_mem.235
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	-1008(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1024(%rbp)       # 8-byte Spill
.LBB13_86:                              # %vaarg.end.239
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	-1024(%rbp), %rax       # 8-byte Reload
	movl	(%rax), %ecx
	movb	%cl, %dl
	movslq	-84(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-48(%rbp), %rax
	movb	%dl, 8(%rax)
	jmp	.LBB13_167
.LBB13_87:                              # %sw.bb.245
                                        #   in Loop: Header=BB13_70 Depth=1
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movl	-76(%rbp), %edx
	cmpl	$160, %edx
	movq	%rax, -1032(%rbp)       # 8-byte Spill
	movq	%rcx, -1040(%rbp)       # 8-byte Spill
	movl	%edx, -1044(%rbp)       # 4-byte Spill
	ja	.LBB13_89
# BB#88:                                # %vaarg.in_reg.250
                                        #   in Loop: Header=BB13_70 Depth=1
	movl	-1044(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1032(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$16, %eax
	movq	-1040(%rbp), %rsi       # 8-byte Reload
	movl	%eax, (%rsi)
	movq	%rcx, -1056(%rbp)       # 8-byte Spill
	jmp	.LBB13_90
.LBB13_89:                              # %vaarg.in_mem.252
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	-1032(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1056(%rbp)       # 8-byte Spill
.LBB13_90:                              # %vaarg.end.256
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	-1056(%rbp), %rax       # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movslq	-84(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-48(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	jmp	.LBB13_167
.LBB13_91:                              # %sw.bb.261
                                        #   in Loop: Header=BB13_70 Depth=1
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -1064(%rbp)       # 8-byte Spill
	movl	%ecx, -1068(%rbp)       # 4-byte Spill
	ja	.LBB13_93
# BB#92:                                # %vaarg.in_reg.266
                                        #   in Loop: Header=BB13_70 Depth=1
	movl	-1068(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1064(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1080(%rbp)       # 8-byte Spill
	jmp	.LBB13_94
.LBB13_93:                              # %vaarg.in_mem.268
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	-1064(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1080(%rbp)       # 8-byte Spill
.LBB13_94:                              # %vaarg.end.272
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	-1080(%rbp), %rax       # 8-byte Reload
	movq	(%rax), %rax
	movslq	-84(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	-48(%rbp), %rcx
	movq	%rax, 8(%rcx)
	jmp	.LBB13_167
.LBB13_95:                              # %sw.bb.277
                                        #   in Loop: Header=BB13_70 Depth=1
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -1088(%rbp)       # 8-byte Spill
	movl	%ecx, -1092(%rbp)       # 4-byte Spill
	ja	.LBB13_97
# BB#96:                                # %vaarg.in_reg.282
                                        #   in Loop: Header=BB13_70 Depth=1
	movl	-1092(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1088(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1104(%rbp)       # 8-byte Spill
	jmp	.LBB13_98
.LBB13_97:                              # %vaarg.in_mem.284
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	-1088(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1104(%rbp)       # 8-byte Spill
.LBB13_98:                              # %vaarg.end.288
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	-1104(%rbp), %rax       # 8-byte Reload
	movq	(%rax), %rax
	movslq	-84(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	-48(%rbp), %rcx
	movq	%rax, 8(%rcx)
	jmp	.LBB13_167
.LBB13_99:                              # %sw.bb.293
                                        #   in Loop: Header=BB13_70 Depth=1
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -1112(%rbp)       # 8-byte Spill
	movl	%ecx, -1116(%rbp)       # 4-byte Spill
	ja	.LBB13_101
# BB#100:                               # %vaarg.in_reg.298
                                        #   in Loop: Header=BB13_70 Depth=1
	movl	-1116(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1112(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1128(%rbp)       # 8-byte Spill
	jmp	.LBB13_102
.LBB13_101:                             # %vaarg.in_mem.300
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	-1112(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1128(%rbp)       # 8-byte Spill
.LBB13_102:                             # %vaarg.end.304
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	-1128(%rbp), %rax       # 8-byte Reload
	movq	(%rax), %rax
	movslq	-84(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	-48(%rbp), %rcx
	movq	%rax, 8(%rcx)
	jmp	.LBB13_167
.LBB13_103:                             # %sw.bb.309
                                        #   in Loop: Header=BB13_70 Depth=1
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -1136(%rbp)       # 8-byte Spill
	movl	%ecx, -1140(%rbp)       # 4-byte Spill
	ja	.LBB13_105
# BB#104:                               # %vaarg.in_reg.314
                                        #   in Loop: Header=BB13_70 Depth=1
	movl	-1140(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1136(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1152(%rbp)       # 8-byte Spill
	jmp	.LBB13_106
.LBB13_105:                             # %vaarg.in_mem.316
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	-1136(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1152(%rbp)       # 8-byte Spill
.LBB13_106:                             # %vaarg.end.320
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	-1152(%rbp), %rax       # 8-byte Reload
	movq	(%rax), %rax
	movslq	-84(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	-48(%rbp), %rcx
	movq	%rax, 8(%rcx)
	jmp	.LBB13_167
.LBB13_107:                             # %sw.bb.325
                                        #   in Loop: Header=BB13_70 Depth=1
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -1160(%rbp)       # 8-byte Spill
	movl	%ecx, -1164(%rbp)       # 4-byte Spill
	ja	.LBB13_109
# BB#108:                               # %vaarg.in_reg.330
                                        #   in Loop: Header=BB13_70 Depth=1
	movl	-1164(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1160(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1176(%rbp)       # 8-byte Spill
	jmp	.LBB13_110
.LBB13_109:                             # %vaarg.in_mem.332
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	-1160(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1176(%rbp)       # 8-byte Spill
.LBB13_110:                             # %vaarg.end.336
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	-1176(%rbp), %rax       # 8-byte Reload
	movq	(%rax), %rax
	movslq	-84(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	-48(%rbp), %rcx
	movq	%rax, 8(%rcx)
	jmp	.LBB13_167
.LBB13_111:                             # %sw.bb.341
                                        #   in Loop: Header=BB13_70 Depth=1
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -1184(%rbp)       # 8-byte Spill
	movl	%ecx, -1188(%rbp)       # 4-byte Spill
	ja	.LBB13_113
# BB#112:                               # %vaarg.in_reg.346
                                        #   in Loop: Header=BB13_70 Depth=1
	movl	-1188(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1184(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1200(%rbp)       # 8-byte Spill
	jmp	.LBB13_114
.LBB13_113:                             # %vaarg.in_mem.348
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	-1184(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1200(%rbp)       # 8-byte Spill
.LBB13_114:                             # %vaarg.end.352
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	-1200(%rbp), %rax       # 8-byte Reload
	movq	(%rax), %rax
	movslq	-84(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	-48(%rbp), %rcx
	movq	%rax, 8(%rcx)
	jmp	.LBB13_167
.LBB13_115:                             # %sw.bb.357
                                        #   in Loop: Header=BB13_70 Depth=1
	leaq	-80(%rbp), %rax
	movslq	-84(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	-48(%rbp), %rcx
	addq	$8, %rcx
	movl	-80(%rbp), %edx
	cmpl	$40, %edx
	movq	%rax, -1208(%rbp)       # 8-byte Spill
	movq	%rcx, -1216(%rbp)       # 8-byte Spill
	movl	%edx, -1220(%rbp)       # 4-byte Spill
	ja	.LBB13_117
# BB#116:                               # %vaarg.in_reg.365
                                        #   in Loop: Header=BB13_70 Depth=1
	movl	-1220(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1208(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1232(%rbp)       # 8-byte Spill
	jmp	.LBB13_118
.LBB13_117:                             # %vaarg.in_mem.367
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	-1208(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1232(%rbp)       # 8-byte Spill
.LBB13_118:                             # %vaarg.end.371
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	-1232(%rbp), %rax       # 8-byte Reload
	movq	(%rax), %rax
	movq	(%rax), %rcx
	movq	-1216(%rbp), %rdx       # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rdx)
	movq	16(%rax), %rcx
	movq	%rcx, 16(%rdx)
	movq	24(%rax), %rax
	movq	%rax, 24(%rdx)
	jmp	.LBB13_167
.LBB13_119:                             # %sw.bb.373
                                        #   in Loop: Header=BB13_70 Depth=1
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -1240(%rbp)       # 8-byte Spill
	movl	%ecx, -1244(%rbp)       # 4-byte Spill
	ja	.LBB13_121
# BB#120:                               # %vaarg.in_reg.378
                                        #   in Loop: Header=BB13_70 Depth=1
	movl	-1244(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1240(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1256(%rbp)       # 8-byte Spill
	jmp	.LBB13_122
.LBB13_121:                             # %vaarg.in_mem.380
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	-1240(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1256(%rbp)       # 8-byte Spill
.LBB13_122:                             # %vaarg.end.384
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	-1256(%rbp), %rax       # 8-byte Reload
	movl	(%rax), %ecx
	movslq	-84(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-48(%rbp), %rax
	movl	%ecx, 8(%rax)
	jmp	.LBB13_167
.LBB13_123:                             # %sw.bb.389
                                        #   in Loop: Header=BB13_70 Depth=1
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -1264(%rbp)       # 8-byte Spill
	movl	%ecx, -1268(%rbp)       # 4-byte Spill
	ja	.LBB13_125
# BB#124:                               # %vaarg.in_reg.394
                                        #   in Loop: Header=BB13_70 Depth=1
	movl	-1268(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1264(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1280(%rbp)       # 8-byte Spill
	jmp	.LBB13_126
.LBB13_125:                             # %vaarg.in_mem.396
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	-1264(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1280(%rbp)       # 8-byte Spill
.LBB13_126:                             # %vaarg.end.400
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	-1280(%rbp), %rax       # 8-byte Reload
	movl	(%rax), %ecx
	movslq	-84(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-48(%rbp), %rax
	movl	%ecx, 8(%rax)
	jmp	.LBB13_167
.LBB13_127:                             # %sw.bb.405
                                        #   in Loop: Header=BB13_70 Depth=1
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -1288(%rbp)       # 8-byte Spill
	movl	%ecx, -1292(%rbp)       # 4-byte Spill
	ja	.LBB13_129
# BB#128:                               # %vaarg.in_reg.410
                                        #   in Loop: Header=BB13_70 Depth=1
	movl	-1292(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1288(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1304(%rbp)       # 8-byte Spill
	jmp	.LBB13_130
.LBB13_129:                             # %vaarg.in_mem.412
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	-1288(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1304(%rbp)       # 8-byte Spill
.LBB13_130:                             # %vaarg.end.416
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	-1304(%rbp), %rax       # 8-byte Reload
	movl	(%rax), %ecx
	movslq	-84(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-48(%rbp), %rax
	movl	%ecx, 8(%rax)
	jmp	.LBB13_167
.LBB13_131:                             # %sw.bb.421
                                        #   in Loop: Header=BB13_70 Depth=1
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -1312(%rbp)       # 8-byte Spill
	movl	%ecx, -1316(%rbp)       # 4-byte Spill
	ja	.LBB13_133
# BB#132:                               # %vaarg.in_reg.426
                                        #   in Loop: Header=BB13_70 Depth=1
	movl	-1316(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1312(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1328(%rbp)       # 8-byte Spill
	jmp	.LBB13_134
.LBB13_133:                             # %vaarg.in_mem.428
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	-1312(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1328(%rbp)       # 8-byte Spill
.LBB13_134:                             # %vaarg.end.432
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	-1328(%rbp), %rax       # 8-byte Reload
	movl	(%rax), %ecx
	movslq	-84(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-48(%rbp), %rax
	movl	%ecx, 8(%rax)
	jmp	.LBB13_167
.LBB13_135:                             # %sw.bb.437
                                        #   in Loop: Header=BB13_70 Depth=1
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -1336(%rbp)       # 8-byte Spill
	movl	%ecx, -1340(%rbp)       # 4-byte Spill
	ja	.LBB13_137
# BB#136:                               # %vaarg.in_reg.442
                                        #   in Loop: Header=BB13_70 Depth=1
	movl	-1340(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1336(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1352(%rbp)       # 8-byte Spill
	jmp	.LBB13_138
.LBB13_137:                             # %vaarg.in_mem.444
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	-1336(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1352(%rbp)       # 8-byte Spill
.LBB13_138:                             # %vaarg.end.448
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	-1352(%rbp), %rax       # 8-byte Reload
	movl	(%rax), %ecx
	movslq	-84(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-48(%rbp), %rax
	movl	%ecx, 8(%rax)
	jmp	.LBB13_167
.LBB13_139:                             # %sw.bb.453
                                        #   in Loop: Header=BB13_70 Depth=1
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -1360(%rbp)       # 8-byte Spill
	movl	%ecx, -1364(%rbp)       # 4-byte Spill
	ja	.LBB13_141
# BB#140:                               # %vaarg.in_reg.458
                                        #   in Loop: Header=BB13_70 Depth=1
	movl	-1364(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1360(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1376(%rbp)       # 8-byte Spill
	jmp	.LBB13_142
.LBB13_141:                             # %vaarg.in_mem.460
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	-1360(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1376(%rbp)       # 8-byte Spill
.LBB13_142:                             # %vaarg.end.464
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	-1376(%rbp), %rax       # 8-byte Reload
	movl	(%rax), %ecx
	movslq	-84(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-48(%rbp), %rax
	movl	%ecx, 8(%rax)
	jmp	.LBB13_167
.LBB13_143:                             # %sw.bb.469
                                        #   in Loop: Header=BB13_70 Depth=1
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -1384(%rbp)       # 8-byte Spill
	movl	%ecx, -1388(%rbp)       # 4-byte Spill
	ja	.LBB13_145
# BB#144:                               # %vaarg.in_reg.474
                                        #   in Loop: Header=BB13_70 Depth=1
	movl	-1388(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1384(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1400(%rbp)       # 8-byte Spill
	jmp	.LBB13_146
.LBB13_145:                             # %vaarg.in_mem.476
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	-1384(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1400(%rbp)       # 8-byte Spill
.LBB13_146:                             # %vaarg.end.480
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	-1400(%rbp), %rax       # 8-byte Reload
	movl	(%rax), %ecx
	movslq	-84(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-48(%rbp), %rax
	movl	%ecx, 8(%rax)
	jmp	.LBB13_167
.LBB13_147:                             # %sw.bb.485
                                        #   in Loop: Header=BB13_70 Depth=1
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -1408(%rbp)       # 8-byte Spill
	movl	%ecx, -1412(%rbp)       # 4-byte Spill
	ja	.LBB13_149
# BB#148:                               # %vaarg.in_reg.490
                                        #   in Loop: Header=BB13_70 Depth=1
	movl	-1412(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1408(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1424(%rbp)       # 8-byte Spill
	jmp	.LBB13_150
.LBB13_149:                             # %vaarg.in_mem.492
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	-1408(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1424(%rbp)       # 8-byte Spill
.LBB13_150:                             # %vaarg.end.496
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	-1424(%rbp), %rax       # 8-byte Reload
	movq	(%rax), %rax
	movslq	-84(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	-48(%rbp), %rcx
	movq	%rax, 8(%rcx)
	jmp	.LBB13_167
.LBB13_151:                             # %sw.bb.501
                                        #   in Loop: Header=BB13_70 Depth=1
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -1432(%rbp)       # 8-byte Spill
	movl	%ecx, -1436(%rbp)       # 4-byte Spill
	ja	.LBB13_153
# BB#152:                               # %vaarg.in_reg.506
                                        #   in Loop: Header=BB13_70 Depth=1
	movl	-1436(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1432(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1448(%rbp)       # 8-byte Spill
	jmp	.LBB13_154
.LBB13_153:                             # %vaarg.in_mem.508
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	-1432(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1448(%rbp)       # 8-byte Spill
.LBB13_154:                             # %vaarg.end.512
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	-1448(%rbp), %rax       # 8-byte Reload
	movl	(%rax), %ecx
	movslq	-84(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-48(%rbp), %rax
	movl	%ecx, 8(%rax)
	jmp	.LBB13_167
.LBB13_155:                             # %sw.bb.517
                                        #   in Loop: Header=BB13_70 Depth=1
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -1456(%rbp)       # 8-byte Spill
	movl	%ecx, -1460(%rbp)       # 4-byte Spill
	ja	.LBB13_157
# BB#156:                               # %vaarg.in_reg.522
                                        #   in Loop: Header=BB13_70 Depth=1
	movl	-1460(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1456(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1472(%rbp)       # 8-byte Spill
	jmp	.LBB13_158
.LBB13_157:                             # %vaarg.in_mem.524
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	-1456(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1472(%rbp)       # 8-byte Spill
.LBB13_158:                             # %vaarg.end.528
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	-1472(%rbp), %rax       # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB13_160
# BB#159:                               # %if.then.532
                                        #   in Loop: Header=BB13_70 Depth=1
	movslq	-84(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-48(%rbp), %rax
	movq	$0, 8(%rax)
	movslq	-84(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-48(%rbp), %rax
	movq	$0, 24(%rax)
	jmp	.LBB13_161
.LBB13_160:                             # %if.else.542
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movslq	-84(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	-48(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-96(%rbp), %rax
	movl	8(%rax), %edx
	movslq	-84(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-48(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-96(%rbp), %rax
	movl	12(%rax), %edx
	movslq	-84(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-48(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-84(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	-48(%rbp), %rcx
	movq	%rax, 24(%rcx)
.LBB13_161:                             # %if.end.565
                                        #   in Loop: Header=BB13_70 Depth=1
	jmp	.LBB13_167
.LBB13_162:                             # %sw.bb.566
                                        #   in Loop: Header=BB13_70 Depth=1
	leaq	-80(%rbp), %rax
	movl	-80(%rbp), %ecx
	cmpl	$40, %ecx
	movq	%rax, -1480(%rbp)       # 8-byte Spill
	movl	%ecx, -1484(%rbp)       # 4-byte Spill
	ja	.LBB13_164
# BB#163:                               # %vaarg.in_reg.571
                                        #   in Loop: Header=BB13_70 Depth=1
	movl	-1484(%rbp), %eax       # 4-byte Reload
	movslq	%eax, %rcx
	movq	-1480(%rbp), %rdx       # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	movq	%rcx, -1496(%rbp)       # 8-byte Spill
	jmp	.LBB13_165
.LBB13_164:                             # %vaarg.in_mem.573
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	-1480(%rbp), %rax       # 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rdx
	addq	$8, %rcx
	movq	%rcx, 8(%rax)
	movq	%rdx, -1496(%rbp)       # 8-byte Spill
.LBB13_165:                             # %vaarg.end.577
                                        #   in Loop: Header=BB13_70 Depth=1
	movq	-1496(%rbp), %rax       # 8-byte Reload
	movl	(%rax), %ecx
	movslq	-84(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-48(%rbp), %rax
	movl	%ecx, 8(%rax)
	jmp	.LBB13_167
.LBB13_166:                             # %sw.bb.582
                                        #   in Loop: Header=BB13_70 Depth=1
	jmp	.LBB13_167
.LBB13_167:                             # %sw.epilog.583
                                        #   in Loop: Header=BB13_70 Depth=1
	jmp	.LBB13_168
.LBB13_168:                             # %for.inc
                                        #   in Loop: Header=BB13_70 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB13_70
.LBB13_169:                             # %for.end
	leaq	-80(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-52(%rbp), %edx
	movq	-48(%rbp), %rcx
	movq	%rax, -1504(%rbp)       # 8-byte Spill
	callq	gimp_run_procedure2@PLT
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB13_170:                             # %return
	movq	-8(%rbp), %rax
	addq	$1504, %rsp             # imm = 0x5E0
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_run_procedure, .Lfunc_end13-gimp_run_procedure
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI13_0:
	.long	.LBB13_75-.LJTI13_0
	.long	.LBB13_79-.LJTI13_0
	.long	.LBB13_83-.LJTI13_0
	.long	.LBB13_87-.LJTI13_0
	.long	.LBB13_91-.LJTI13_0
	.long	.LBB13_95-.LJTI13_0
	.long	.LBB13_99-.LJTI13_0
	.long	.LBB13_103-.LJTI13_0
	.long	.LBB13_107-.LJTI13_0
	.long	.LBB13_111-.LJTI13_0
	.long	.LBB13_115-.LJTI13_0
	.long	.LBB13_119-.LJTI13_0
	.long	.LBB13_123-.LJTI13_0
	.long	.LBB13_127-.LJTI13_0
	.long	.LBB13_131-.LJTI13_0
	.long	.LBB13_135-.LJTI13_0
	.long	.LBB13_139-.LJTI13_0
	.long	.LBB13_143-.LJTI13_0
	.long	.LBB13_147-.LJTI13_0
	.long	.LBB13_151-.LJTI13_0
	.long	.LBB13_155-.LJTI13_0
	.long	.LBB13_162-.LJTI13_0
	.long	.LBB13_166-.LJTI13_0
.LJTI13_1:
	.long	.LBB13_16-.LJTI13_1
	.long	.LBB13_20-.LJTI13_1
	.long	.LBB13_24-.LJTI13_1
	.long	.LBB13_28-.LJTI13_1
	.long	.LBB13_32-.LJTI13_1
	.long	.LBB13_36-.LJTI13_1
	.long	.LBB13_40-.LJTI13_1
	.long	.LBB13_44-.LJTI13_1
	.long	.LBB13_48-.LJTI13_1
	.long	.LBB13_52-.LJTI13_1
	.long	.LBB13_56-.LJTI13_1
	.long	.LBB13_16-.LJTI13_1
	.long	.LBB13_16-.LJTI13_1
	.long	.LBB13_16-.LJTI13_1
	.long	.LBB13_16-.LJTI13_1
	.long	.LBB13_16-.LJTI13_1
	.long	.LBB13_16-.LJTI13_1
	.long	.LBB13_16-.LJTI13_1
	.long	.LBB13_56-.LJTI13_1
	.long	.LBB13_16-.LJTI13_1
	.long	.LBB13_60-.LJTI13_1
	.long	.LBB13_16-.LJTI13_1
	.long	.LBB13_64-.LJTI13_1

	.text
	.globl	gimp_run_procedure2
	.align	16, 0x90
	.type	gimp_run_procedure2,@function
gimp_run_procedure2:                    # @gimp_run_procedure2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp58:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB14_3
# BB#2:                                 # %if.then
	jmp	.LBB14_4
.LBB14_3:                               # %if.else
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_run_procedure2(%rip), %rsi
	leaq	.L.str.14(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB14_13
.LBB14_4:                               # %if.end
	jmp	.LBB14_5
.LBB14_5:                               # %do.end
	jmp	.LBB14_6
.LBB14_6:                               # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB14_8
# BB#7:                                 # %if.then.3
	jmp	.LBB14_9
.LBB14_8:                               # %if.else.4
	leaq	.L.str(%rip), %rdi
	leaq	.L__func__.gimp_run_procedure2(%rip), %rsi
	leaq	.L.str.20(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB14_13
.LBB14_9:                               # %if.end.5
	jmp	.LBB14_10
.LBB14_10:                              # %do.end.6
	leaq	-64(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	_writechannel@GOTPCREL(%rip), %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -64(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -56(%rbp)
	movq	-40(%rbp), %rdi
	movq	%rdi, -48(%rbp)
	movq	(%rcx), %rdi
	callq	gp_proc_run_write@PLT
	cmpl	$0, %eax
	jne	.LBB14_12
# BB#11:                                # %if.then.9
	callq	gimp_quit@PLT
.LBB14_12:                              # %if.end.10
	leaq	-88(%rbp), %rdi
	movl	$6, %esi
	callq	gimp_read_expect_msg@PLT
	leaq	-88(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	8(%rax), %esi
	movq	-24(%rbp), %rax
	movl	%esi, (%rax)
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-72(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 16(%rax)
	callq	gimp_wire_destroy@PLT
	movq	-96(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	(%rax), %esi
	callq	gimp_set_pdb_error
	movq	-96(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB14_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_run_procedure2, .Lfunc_end14-gimp_run_procedure2
	.cfi_endproc

	.globl	gimp_read_expect_msg
	.align	16, 0x90
	.type	gimp_read_expect_msg,@function
gimp_read_expect_msg:                   # @gimp_read_expect_msg
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp61:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
.LBB15_1:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	_readchannel(%rip), %rdi
	movq	-8(%rbp), %rsi
	callq	gimp_wire_read_msg@PLT
	cmpl	$0, %eax
	jne	.LBB15_3
# BB#2:                                 # %if.then
	callq	gimp_quit@PLT
.LBB15_3:                               # %if.end
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	jne	.LBB15_5
# BB#4:                                 # %if.then.2
	addq	$16, %rsp
	popq	%rbp
	retq
.LBB15_5:                               # %if.end.3
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$7, (%rax)
	je	.LBB15_7
# BB#6:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB15_8
.LBB15_7:                               # %if.then.8
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	gimp_process_message
	jmp	.LBB15_9
.LBB15_8:                               # %if.else
                                        #   in Loop: Header=BB15_1 Depth=1
	leaq	.L.str.21(%rip), %rdi
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	movb	$0, %al
	callq	g_error
.LBB15_9:                               # %if.end.10
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	gimp_wire_destroy@PLT
	jmp	.LBB15_1
.Lfunc_end15:
	.size	gimp_read_expect_msg, .Lfunc_end15-gimp_read_expect_msg
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_process_message,@function
gimp_process_message:                   # @gimp_process_message
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	(%rdi), %eax
	movl	%eax, %edi
	movq	%rdi, %rcx
	subq	$12, %rcx
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	ja	.LBB16_10
# BB#11:                                # %entry
	leaq	.LJTI16_0(%rip), %rax
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB16_1:                               # %sw.bb
	callq	gimp_quit@PLT
.LBB16_2:                               # %sw.bb.1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	gimp_config
	jmp	.LBB16_10
.LBB16_3:                               # %sw.bb.2
	leaq	.L.str.42(%rip), %rdi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB16_10
.LBB16_4:                               # %sw.bb.3
	leaq	.L.str.51(%rip), %rdi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB16_10
.LBB16_5:                               # %sw.bb.4
	leaq	.L.str.43(%rip), %rdi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB16_10
.LBB16_6:                               # %sw.bb.5
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	gimp_temp_proc_run
	jmp	.LBB16_10
.LBB16_7:                               # %sw.bb.7
	leaq	.L.str.52(%rip), %rdi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB16_10
.LBB16_8:                               # %sw.bb.8
	leaq	.L.str.46(%rip), %rdi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB16_10
.LBB16_9:                               # %sw.bb.9
	leaq	.L.str.47(%rip), %rdi
	movb	$0, %al
	callq	g_warning
.LBB16_10:                              # %sw.epilog
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_process_message, .Lfunc_end16-gimp_process_message
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI16_0:
	.long	.LBB16_1-.LJTI16_0
	.long	.LBB16_2-.LJTI16_0
	.long	.LBB16_3-.LJTI16_0
	.long	.LBB16_3-.LJTI16_0
	.long	.LBB16_3-.LJTI16_0
	.long	.LBB16_4-.LJTI16_0
	.long	.LBB16_5-.LJTI16_0
	.long	.LBB16_6-.LJTI16_0
	.long	.LBB16_7-.LJTI16_0
	.long	.LBB16_8-.LJTI16_0
	.long	.LBB16_10-.LJTI16_0
	.long	.LBB16_10-.LJTI16_0
	.long	.LBB16_9-.LJTI16_0

	.text
	.align	16, 0x90
	.type	g_error,@function
g_error:                                # @g_error
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp67:
	.cfi_def_cfa_register %rbp
	subq	$400, %rsp              # imm = 0x190
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
	je	.LBB17_3
# BB#2:                                 # %entry
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
.LBB17_3:                               # %entry
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
	leaq	.L.str(%rip), %rdi
	movl	$4, %esi
	leaq	-32(%rbp), %r9
	movq	%r8, -8(%rbp)
	movq	%r9, %r8
	leaq	-208(%rbp), %r10
	movq	%r10, 16(%r8)
	leaq	16(%rbp), %r10
	movq	%r10, 8(%r8)
	movl	$48, 4(%r8)
	movl	$8, (%r8)
	movq	-8(%rbp), %rdx
	movq	%r9, %rcx
	callq	g_logv@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
.LBB17_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB17_1
.Lfunc_end17:
	.size	g_error, .Lfunc_end17-g_error
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_set_pdb_error,@function
gimp_set_pdb_error:                     # @gimp_set_pdb_error
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp68:
	.cfi_def_cfa_offset 16
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp70:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, pdb_error_message(%rip)
	je	.LBB18_2
# BB#1:                                 # %if.then
	movq	pdb_error_message(%rip), %rdi
	callq	g_free@PLT
	movq	$0, pdb_error_message(%rip)
.LBB18_2:                               # %if.end
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, pdb_error_status(%rip)
	movl	%ecx, %edx
	subl	$2, %edx
	movl	%ecx, -16(%rbp)         # 4-byte Spill
	movl	%edx, -20(%rbp)         # 4-byte Spill
	jb	.LBB18_4
	jmp	.LBB18_9
.LBB18_9:                               # %if.end
	movl	-16(%rbp), %eax         # 4-byte Reload
	addl	$-2, %eax
	subl	$2, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	jb	.LBB18_3
	jmp	.LBB18_10
.LBB18_10:                              # %if.end
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB18_4
	jmp	.LBB18_8
.LBB18_3:                               # %sw.bb
	jmp	.LBB18_8
.LBB18_4:                               # %sw.bb.1
	cmpl	$1, -12(%rbp)
	jle	.LBB18_7
# BB#5:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpl	$4, 40(%rax)
	jne	.LBB18_7
# BB#6:                                 # %if.then.4
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup@PLT
	movq	%rax, pdb_error_message(%rip)
.LBB18_7:                               # %if.end.7
	jmp	.LBB18_8
.LBB18_8:                               # %sw.epilog
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_set_pdb_error, .Lfunc_end18-gimp_set_pdb_error
	.cfi_endproc

	.globl	gimp_destroy_params
	.align	16, 0x90
	.type	gimp_destroy_params,@function
gimp_destroy_params:                    # @gimp_destroy_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
.Ltmp72:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp73:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gp_params_destroy@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_destroy_params, .Lfunc_end19-gimp_destroy_params
	.cfi_endproc

	.globl	gimp_destroy_paramdefs
	.align	16, 0x90
	.type	gimp_destroy_paramdefs,@function
gimp_destroy_paramdefs:                 # @gimp_destroy_paramdefs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp76:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
.LBB20_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -12(%rbp)
	cmpl	$0, %eax
	je	.LBB20_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB20_1 Depth=1
	movslq	-12(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_free@PLT
	movslq	-12(%rbp), %rax
	imulq	$24, %rax, %rax
	addq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_free@PLT
	jmp	.LBB20_1
.LBB20_3:                               # %while.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_destroy_paramdefs, .Lfunc_end20-gimp_destroy_paramdefs
	.cfi_endproc

	.globl	gimp_get_pdb_error
	.align	16, 0x90
	.type	gimp_get_pdb_error,@function
gimp_get_pdb_error:                     # @gimp_get_pdb_error
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
.Ltmp78:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp79:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	cmpq	$0, pdb_error_message(%rip)
	je	.LBB21_3
# BB#1:                                 # %land.lhs.true
	movq	pdb_error_message(%rip), %rdi
	callq	strlen@PLT
	cmpq	$0, %rax
	je	.LBB21_3
# BB#2:                                 # %if.then
	movq	pdb_error_message(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB21_9
.LBB21_3:                               # %if.end
	movl	pdb_error_status(%rip), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$4, %rdx
	movq	%rcx, -16(%rbp)         # 8-byte Spill
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	ja	.LBB21_8
# BB#10:                                # %if.end
	leaq	.LJTI21_0(%rip), %rax
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movslq	(%rax,%rcx,4), %rdx
	addq	%rax, %rdx
	jmpq	*%rdx
.LBB21_4:                               # %sw.bb
	leaq	.L.str.9(%rip), %rdi
	leaq	.L.str.22(%rip), %rsi
	callq	dgettext@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB21_9
.LBB21_5:                               # %sw.bb.3
	leaq	.L.str.9(%rip), %rdi
	leaq	.L.str.23(%rip), %rsi
	callq	dgettext@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB21_9
.LBB21_6:                               # %sw.bb.5
	leaq	.L.str.9(%rip), %rdi
	leaq	.L.str.24(%rip), %rsi
	callq	dgettext@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB21_9
.LBB21_7:                               # %sw.bb.7
	leaq	.L.str.9(%rip), %rdi
	leaq	.L.str.25(%rip), %rsi
	callq	dgettext@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB21_9
.LBB21_8:                               # %sw.default
	leaq	.L.str.26(%rip), %rax
	movq	%rax, -8(%rbp)
.LBB21_9:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_get_pdb_error, .Lfunc_end21-gimp_get_pdb_error
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	4
.LJTI21_0:
	.long	.LBB21_5-.LJTI21_0
	.long	.LBB21_6-.LJTI21_0
	.long	.LBB21_8-.LJTI21_0
	.long	.LBB21_4-.LJTI21_0
	.long	.LBB21_7-.LJTI21_0

	.text
	.globl	gimp_tile_width
	.align	16, 0x90
	.type	gimp_tile_width,@function
gimp_tile_width:                        # @gimp_tile_width
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
.Ltmp81:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp82:
	.cfi_def_cfa_register %rbp
	movl	_tile_width(%rip), %eax
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_tile_width, .Lfunc_end22-gimp_tile_width
	.cfi_endproc

	.globl	gimp_tile_height
	.align	16, 0x90
	.type	gimp_tile_height,@function
gimp_tile_height:                       # @gimp_tile_height
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp83:
	.cfi_def_cfa_offset 16
.Ltmp84:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp85:
	.cfi_def_cfa_register %rbp
	movl	_tile_height(%rip), %eax
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_tile_height, .Lfunc_end23-gimp_tile_height
	.cfi_endproc

	.globl	gimp_shm_ID
	.align	16, 0x90
	.type	gimp_shm_ID,@function
gimp_shm_ID:                            # @gimp_shm_ID
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp86:
	.cfi_def_cfa_offset 16
.Ltmp87:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp88:
	.cfi_def_cfa_register %rbp
	movl	_shm_ID(%rip), %eax
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_shm_ID, .Lfunc_end24-gimp_shm_ID
	.cfi_endproc

	.globl	gimp_shm_addr
	.align	16, 0x90
	.type	gimp_shm_addr,@function
gimp_shm_addr:                          # @gimp_shm_addr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp89:
	.cfi_def_cfa_offset 16
.Ltmp90:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp91:
	.cfi_def_cfa_register %rbp
	movq	_shm_addr(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_shm_addr, .Lfunc_end25-gimp_shm_addr
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI26_0:
	.quad	4612136378390124954     # double 2.2000000000000002
	.text
	.globl	gimp_gamma
	.align	16, 0x90
	.type	gimp_gamma,@function
gimp_gamma:                             # @gimp_gamma
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp92:
	.cfi_def_cfa_offset 16
.Ltmp93:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp94:
	.cfi_def_cfa_register %rbp
	movsd	.LCPI26_0(%rip), %xmm0  # xmm0 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_gamma, .Lfunc_end26-gimp_gamma
	.cfi_endproc

	.globl	gimp_install_cmap
	.align	16, 0x90
	.type	gimp_install_cmap,@function
gimp_install_cmap:                      # @gimp_install_cmap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp95:
	.cfi_def_cfa_offset 16
.Ltmp96:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp97:
	.cfi_def_cfa_register %rbp
	movl	_install_cmap(%rip), %eax
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_install_cmap, .Lfunc_end27-gimp_install_cmap
	.cfi_endproc

	.globl	gimp_min_colors
	.align	16, 0x90
	.type	gimp_min_colors,@function
gimp_min_colors:                        # @gimp_min_colors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp98:
	.cfi_def_cfa_offset 16
.Ltmp99:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp100:
	.cfi_def_cfa_register %rbp
	movl	_min_colors(%rip), %eax
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_min_colors, .Lfunc_end28-gimp_min_colors
	.cfi_endproc

	.globl	gimp_show_tool_tips
	.align	16, 0x90
	.type	gimp_show_tool_tips,@function
gimp_show_tool_tips:                    # @gimp_show_tool_tips
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp101:
	.cfi_def_cfa_offset 16
.Ltmp102:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp103:
	.cfi_def_cfa_register %rbp
	movl	_show_tool_tips(%rip), %eax
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_show_tool_tips, .Lfunc_end29-gimp_show_tool_tips
	.cfi_endproc

	.globl	gimp_show_help_button
	.align	16, 0x90
	.type	gimp_show_help_button,@function
gimp_show_help_button:                  # @gimp_show_help_button
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp104:
	.cfi_def_cfa_offset 16
.Ltmp105:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp106:
	.cfi_def_cfa_register %rbp
	movl	_show_help_button(%rip), %eax
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_show_help_button, .Lfunc_end30-gimp_show_help_button
	.cfi_endproc

	.globl	gimp_check_size
	.align	16, 0x90
	.type	gimp_check_size,@function
gimp_check_size:                        # @gimp_check_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp107:
	.cfi_def_cfa_offset 16
.Ltmp108:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp109:
	.cfi_def_cfa_register %rbp
	movl	_check_size(%rip), %eax
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_check_size, .Lfunc_end31-gimp_check_size
	.cfi_endproc

	.globl	gimp_check_type
	.align	16, 0x90
	.type	gimp_check_type,@function
gimp_check_type:                        # @gimp_check_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp110:
	.cfi_def_cfa_offset 16
.Ltmp111:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp112:
	.cfi_def_cfa_register %rbp
	movl	_check_type(%rip), %eax
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_check_type, .Lfunc_end32-gimp_check_type
	.cfi_endproc

	.globl	gimp_default_display
	.align	16, 0x90
	.type	gimp_default_display,@function
gimp_default_display:                   # @gimp_default_display
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp113:
	.cfi_def_cfa_offset 16
.Ltmp114:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp115:
	.cfi_def_cfa_register %rbp
	movl	_gdisp_ID(%rip), %eax
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_default_display, .Lfunc_end33-gimp_default_display
	.cfi_endproc

	.globl	gimp_wm_class
	.align	16, 0x90
	.type	gimp_wm_class,@function
gimp_wm_class:                          # @gimp_wm_class
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp116:
	.cfi_def_cfa_offset 16
.Ltmp117:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp118:
	.cfi_def_cfa_register %rbp
	movq	_wm_class(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_wm_class, .Lfunc_end34-gimp_wm_class
	.cfi_endproc

	.globl	gimp_display_name
	.align	16, 0x90
	.type	gimp_display_name,@function
gimp_display_name:                      # @gimp_display_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp119:
	.cfi_def_cfa_offset 16
.Ltmp120:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp121:
	.cfi_def_cfa_register %rbp
	movq	_display_name(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_display_name, .Lfunc_end35-gimp_display_name
	.cfi_endproc

	.globl	gimp_monitor_number
	.align	16, 0x90
	.type	gimp_monitor_number,@function
gimp_monitor_number:                    # @gimp_monitor_number
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp122:
	.cfi_def_cfa_offset 16
.Ltmp123:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp124:
	.cfi_def_cfa_register %rbp
	movl	_monitor_number(%rip), %eax
	popq	%rbp
	retq
.Lfunc_end36:
	.size	gimp_monitor_number, .Lfunc_end36-gimp_monitor_number
	.cfi_endproc

	.globl	gimp_user_time
	.align	16, 0x90
	.type	gimp_user_time,@function
gimp_user_time:                         # @gimp_user_time
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp125:
	.cfi_def_cfa_offset 16
.Ltmp126:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp127:
	.cfi_def_cfa_register %rbp
	movl	_timestamp(%rip), %eax
	popq	%rbp
	retq
.Lfunc_end37:
	.size	gimp_user_time, .Lfunc_end37-gimp_user_time
	.cfi_endproc

	.globl	gimp_get_progname
	.align	16, 0x90
	.type	gimp_get_progname,@function
gimp_get_progname:                      # @gimp_get_progname
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp128:
	.cfi_def_cfa_offset 16
.Ltmp129:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp130:
	.cfi_def_cfa_register %rbp
	movq	progname(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end38:
	.size	gimp_get_progname, .Lfunc_end38-gimp_get_progname
	.cfi_endproc

	.globl	gimp_extension_ack
	.align	16, 0x90
	.type	gimp_extension_ack,@function
gimp_extension_ack:                     # @gimp_extension_ack
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp131:
	.cfi_def_cfa_offset 16
.Ltmp132:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp133:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	_writechannel@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rdi
	callq	gp_extension_ack_write@PLT
	cmpl	$0, %eax
	jne	.LBB39_2
# BB#1:                                 # %if.then
	callq	gimp_quit@PLT
.LBB39_2:                               # %if.end
	popq	%rbp
	retq
.Lfunc_end39:
	.size	gimp_extension_ack, .Lfunc_end39-gimp_extension_ack
	.cfi_endproc

	.globl	gimp_extension_enable
	.align	16, 0x90
	.type	gimp_extension_enable,@function
gimp_extension_enable:                  # @gimp_extension_enable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp134:
	.cfi_def_cfa_offset 16
.Ltmp135:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp136:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	cmpl	$0, gimp_extension_enable.callback_added(%rip)
	jne	.LBB40_2
# BB#1:                                 # %if.then
	movl	$3, %esi
	leaq	gimp_extension_read(%rip), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	_readchannel(%rip), %rdi
	callq	g_io_add_watch@PLT
	movl	$1, gimp_extension_enable.callback_added(%rip)
	movl	%eax, -4(%rbp)          # 4-byte Spill
.LBB40_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	gimp_extension_enable, .Lfunc_end40-gimp_extension_enable
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_extension_read,@function
gimp_extension_read:                    # @gimp_extension_read
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	callq	gimp_single_message
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	gimp_extension_read, .Lfunc_end41-gimp_extension_read
	.cfi_endproc

	.globl	gimp_extension_process
	.align	16, 0x90
	.type	gimp_extension_process,@function
gimp_extension_process:                 # @gimp_extension_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp140:
	.cfi_def_cfa_offset 16
.Ltmp141:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp142:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movl	%edi, -4(%rbp)
.LBB42_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -4(%rbp)
	je	.LBB42_3
# BB#2:                                 # %if.then
                                        #   in Loop: Header=BB42_1 Depth=1
	leaq	-152(%rbp), %rax
	movl	$1000, %ecx             # imm = 0x3E8
	movl	-4(%rbp), %edx
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movl	%edx, %eax
	xorl	%edx, %edx
	divl	%ecx
	movl	%eax, %eax
	movl	%eax, %esi
	movq	%rsi, -152(%rbp)
	movl	-4(%rbp), %eax
	xorl	%edi, %edi
	movl	%edi, %edx
	divl	%ecx
	imull	$1000, %edx, %ecx       # imm = 0x3E8
	movl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rsi, -144(%rbp)
	movq	-176(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -160(%rbp)
	jmp	.LBB42_4
.LBB42_3:                               # %if.else
                                        #   in Loop: Header=BB42_1 Depth=1
	movq	$0, -160(%rbp)
.LBB42_4:                               # %if.end
                                        #   in Loop: Header=BB42_1 Depth=1
	jmp	.LBB42_5
.LBB42_5:                               # %do.body.2
                                        #   in Loop: Header=BB42_1 Depth=1
	leaq	-136(%rbp), %rax
	movl	$16, %ecx
                                        # kill: RCX<def> ECX<kill>
	xorl	%edx, %edx
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movl	%edx, %eax
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, %rdi
	#APP
	cld
	rep
	stosq	%rax, %es:(%rdi)
	#NO_APP
	movl	%ecx, %eax
	movl	%eax, -164(%rbp)
	movl	%edi, %eax
	movl	%eax, -168(%rbp)
# BB#6:                                 # %do.end
                                        #   in Loop: Header=BB42_1 Depth=1
	movq	_readchannel(%rip), %rdi
	callq	g_io_channel_unix_get_fd@PLT
	movl	$1, %ecx
	movl	%ecx, %edi
	movl	$64, %ecx
	cltd
	idivl	%ecx
	movl	%edx, %ecx
                                        # kill: RCX<def> ECX<kill>
                                        # kill: CL<def> RCX<kill>
	shlq	%cl, %rdi
	movq	_readchannel(%rip), %rsi
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	callq	g_io_channel_unix_get_fd@PLT
	movl	$1024, %edi             # imm = 0x400
	leaq	-136(%rbp), %rsi
	xorl	%edx, %edx
	movl	%edx, %r8d
	movl	$64, %edx
	movl	%edx, -196(%rbp)        # 4-byte Spill
	cltd
	movl	-196(%rbp), %r9d        # 4-byte Reload
	idivl	%r9d
	movslq	%eax, %r10
	movq	-192(%rbp), %r11        # 8-byte Reload
	orq	-136(%rbp,%r10,8), %r11
	movq	%r11, -136(%rbp,%r10,8)
	movq	-160(%rbp), %r10
	movq	%r8, %rdx
	movq	%r8, %rcx
	movq	%r10, %r8
	callq	select@PLT
	movl	%eax, -8(%rbp)
	cmpl	$0, %eax
	jle	.LBB42_8
# BB#7:                                 # %if.then.11
                                        #   in Loop: Header=BB42_1 Depth=1
	callq	gimp_single_message
	jmp	.LBB42_12
.LBB42_8:                               # %if.else.12
                                        #   in Loop: Header=BB42_1 Depth=1
	cmpl	$-1, -8(%rbp)
	jne	.LBB42_11
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB42_1 Depth=1
	callq	__errno_location@PLT
	cmpl	$4, (%rax)
	je	.LBB42_11
# BB#10:                                # %if.then.18
	leaq	.L.str.27(%rip), %rdi
	callq	perror@PLT
	callq	gimp_quit@PLT
.LBB42_11:                              # %if.end.19
                                        #   in Loop: Header=BB42_1 Depth=1
	jmp	.LBB42_12
.LBB42_12:                              # %if.end.20
                                        #   in Loop: Header=BB42_1 Depth=1
	jmp	.LBB42_13
.LBB42_13:                              # %do.cond
                                        #   in Loop: Header=BB42_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$-1, -8(%rbp)
	movb	%cl, -197(%rbp)         # 1-byte Spill
	jne	.LBB42_15
# BB#14:                                # %land.rhs
                                        #   in Loop: Header=BB42_1 Depth=1
	callq	__errno_location@PLT
	cmpl	$4, (%rax)
	sete	%cl
	movb	%cl, -197(%rbp)         # 1-byte Spill
.LBB42_15:                              # %land.end
                                        #   in Loop: Header=BB42_1 Depth=1
	movb	-197(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB42_1
# BB#16:                                # %do.end.26
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	gimp_extension_process, .Lfunc_end42-gimp_extension_process
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_single_message,@function
gimp_single_message:                    # @gimp_single_message
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp143:
	.cfi_def_cfa_offset 16
.Ltmp144:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp145:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	-16(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	_readchannel(%rip), %rdi
	callq	gimp_wire_read_msg@PLT
	cmpl	$0, %eax
	jne	.LBB43_2
# BB#1:                                 # %if.then
	callq	gimp_quit@PLT
.LBB43_2:                               # %if.end
	leaq	-16(%rbp), %rdi
	callq	gimp_process_message
	leaq	-16(%rbp), %rdi
	callq	gimp_wire_destroy@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	gimp_single_message, .Lfunc_end43-gimp_single_message
	.cfi_endproc

	.globl	gimp_parasite_find
	.align	16, 0x90
	.type	gimp_parasite_find,@function
gimp_parasite_find:                     # @gimp_parasite_find
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp146:
	.cfi_def_cfa_offset 16
.Ltmp147:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp148:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_get_parasite@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	gimp_parasite_find, .Lfunc_end44-gimp_parasite_find
	.cfi_endproc

	.globl	gimp_parasite_attach
	.align	16, 0x90
	.type	gimp_parasite_attach,@function
gimp_parasite_attach:                   # @gimp_parasite_attach
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp149:
	.cfi_def_cfa_offset 16
.Ltmp150:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp151:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_attach_parasite@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	gimp_parasite_attach, .Lfunc_end45-gimp_parasite_attach
	.cfi_endproc

	.globl	gimp_parasite_detach
	.align	16, 0x90
	.type	gimp_parasite_detach,@function
gimp_parasite_detach:                   # @gimp_parasite_detach
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp152:
	.cfi_def_cfa_offset 16
.Ltmp153:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp154:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_detach_parasite@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	gimp_parasite_detach, .Lfunc_end46-gimp_parasite_detach
	.cfi_endproc

	.globl	gimp_parasite_list
	.align	16, 0x90
	.type	gimp_parasite_list,@function
gimp_parasite_list:                     # @gimp_parasite_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp155:
	.cfi_def_cfa_offset 16
.Ltmp156:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp157:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_get_parasite_list@PLT
	movq	-16(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	gimp_parasite_list, .Lfunc_end47-gimp_parasite_list
	.cfi_endproc

	.globl	gimp_attach_new_parasite
	.align	16, 0x90
	.type	gimp_attach_new_parasite,@function
gimp_attach_new_parasite:               # @gimp_attach_new_parasite
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp158:
	.cfi_def_cfa_offset 16
.Ltmp159:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp160:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movq	-24(%rbp), %rcx
	callq	gimp_parasite_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_attach_parasite@PLT
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_parasite_free@PLT
	movl	-36(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	gimp_attach_new_parasite, .Lfunc_end48-gimp_attach_new_parasite
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp161:
	.cfi_def_cfa_offset 16
.Ltmp162:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp163:
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
	je	.LBB49_2
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
.LBB49_2:                               # %entry
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
	movq	%r8, -8(%rbp)
	leaq	-208(%rbp), %r8
	movq	%r8, -16(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rdx
	leaq	.L.str(%rip), %rdi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv@PLT
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end49:
	.size	g_warning, .Lfunc_end49-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_config,@function
gimp_config:                            # @gimp_config
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp164:
	.cfi_def_cfa_offset 16
.Ltmp165:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp166:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$20, (%rdi)
	jae	.LBB50_2
# BB#1:                                 # %if.then
	callq	g_get_prgname@PLT
	movq	%rax, %rdi
	callq	gimp_filename_to_utf8@PLT
	movq	progname(%rip), %rdi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8@PLT
	leaq	.L.str.48(%rip), %rdi
	movq	-16(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_message
	callq	gimp_quit@PLT
.LBB50_2:                               # %if.else
	movq	-8(%rbp), %rax
	cmpl	$20, (%rax)
	jbe	.LBB50_4
# BB#3:                                 # %if.then.5
	callq	g_get_prgname@PLT
	movq	%rax, %rdi
	callq	gimp_filename_to_utf8@PLT
	movq	progname(%rip), %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8@PLT
	leaq	.L.str.49(%rip), %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_message
	callq	gimp_quit@PLT
.LBB50_4:                               # %if.end
	jmp	.LBB50_5
.LBB50_5:                               # %if.end.9
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-8(%rbp), %rdx
	movl	4(%rdx), %esi
	movl	%esi, _tile_width(%rip)
	movq	-8(%rbp), %rdx
	movl	8(%rdx), %esi
	movl	%esi, _tile_height(%rip)
	movq	-8(%rbp), %rdx
	movl	12(%rdx), %esi
	movl	%esi, _shm_ID(%rip)
	movq	-8(%rbp), %rdx
	movsbl	16(%rdx), %esi
	movl	%esi, _check_size(%rip)
	movq	-8(%rbp), %rdx
	movsbl	17(%rdx), %esi
	movl	%esi, _check_type(%rip)
	movq	-8(%rbp), %rdx
	movsbl	24(%rdx), %esi
	cmpl	$0, %esi
	movl	%eax, %esi
	cmovnel	%ecx, %esi
	movl	%esi, _install_cmap(%rip)
	movq	-8(%rbp), %rdx
	movsbl	25(%rdx), %esi
	cmpl	$0, %esi
	movl	%eax, %esi
	cmovnel	%ecx, %esi
	movl	%esi, _show_tool_tips(%rip)
	movq	-8(%rbp), %rdx
	movsbl	18(%rdx), %esi
	cmpl	$0, %esi
	cmovnel	%ecx, %eax
	movl	%eax, _show_help_button(%rip)
	movq	-8(%rbp), %rdx
	movl	28(%rdx), %eax
	movl	%eax, _min_colors(%rip)
	movq	-8(%rbp), %rdx
	movl	32(%rdx), %eax
	movl	%eax, _gdisp_ID(%rip)
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdi
	callq	g_strdup@PLT
	movq	%rax, _wm_class(%rip)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	callq	g_strdup@PLT
	movq	%rax, _display_name(%rip)
	movq	-8(%rbp), %rax
	movl	64(%rax), %ecx
	movl	%ecx, _monitor_number(%rip)
	movq	-8(%rbp), %rax
	movl	68(%rax), %ecx
	movl	%ecx, _timestamp(%rip)
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB50_7
# BB#6:                                 # %if.then.21
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_set_application_name@PLT
.LBB50_7:                               # %if.end.23
	movq	-8(%rbp), %rax
	movsbl	19(%rax), %edi
	callq	gimp_cpu_accel_set_use@PLT
	cmpl	$-1, _shm_ID(%rip)
	je	.LBB50_11
# BB#8:                                 # %if.then.27
	xorl	%eax, %eax
	movl	%eax, %esi
	xorl	%edx, %edx
	movl	_shm_ID(%rip), %edi
	callq	shmat@PLT
	movq	$-1, %rsi
	movq	%rax, _shm_addr(%rip)
	cmpq	%rsi, _shm_addr(%rip)
	jne	.LBB50_10
# BB#9:                                 # %if.then.31
	callq	__errno_location@PLT
	movl	(%rax), %edi
	callq	g_strerror@PLT
	leaq	.L.str.50(%rip), %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_error
.LBB50_10:                              # %if.end.34
	jmp	.LBB50_11
.LBB50_11:                              # %if.end.35
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	gimp_config, .Lfunc_end50-gimp_config
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_proc_run,@function
gimp_proc_run:                          # @gimp_proc_run
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp167:
	.cfi_def_cfa_offset 16
.Ltmp168:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp169:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, PLUG_IN_INFO+24(%rip)
	je	.LBB51_4
# BB#1:                                 # %if.then
	leaq	-44(%rbp), %rcx
	leaq	-40(%rbp), %r8
	movq	PLUG_IN_INFO+24(%rip), %rax
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdi
	movq	-8(%rbp), %rdx
	movl	8(%rdx), %esi
	movq	-8(%rbp), %rdx
	movq	16(%rdx), %rdx
	callq	*%rax
	leaq	-32(%rbp), %rsi
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	_writechannel@GOTPCREL(%rip), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -32(%rbp)
	movl	-44(%rbp), %r9d
	movl	%r9d, -24(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -16(%rbp)
	movq	(%rax), %rdi
	callq	gp_proc_return_write@PLT
	cmpl	$0, %eax
	jne	.LBB51_3
# BB#2:                                 # %if.then.6
	callq	gimp_quit@PLT
.LBB51_3:                               # %if.end
	jmp	.LBB51_4
.LBB51_4:                               # %if.end.7
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	gimp_proc_run, .Lfunc_end51-gimp_proc_run
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp170:
	.cfi_def_cfa_offset 16
.Ltmp171:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp172:
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
	je	.LBB52_2
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
.LBB52_2:                               # %entry
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
	movq	%r8, -8(%rbp)
	leaq	-208(%rbp), %r8
	movq	%r8, -16(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rdx
	leaq	.L.str(%rip), %rdi
	movl	$32, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv@PLT
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end52:
	.size	g_message, .Lfunc_end52-g_message
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_temp_proc_run,@function
gimp_temp_proc_run:                     # @gimp_temp_proc_run
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp173:
	.cfi_def_cfa_offset 16
.Ltmp174:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp175:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	temp_proc_ht(%rip), %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rsi
	callq	g_hash_table_lookup@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB53_4
# BB#1:                                 # %if.then
	leaq	-52(%rbp), %rcx
	leaq	-48(%rbp), %r8
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdi
	movq	-8(%rbp), %rdx
	movl	8(%rdx), %esi
	movq	-8(%rbp), %rdx
	movq	16(%rdx), %rdx
	callq	*%rax
	leaq	-40(%rbp), %rsi
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	_writechannel@GOTPCREL(%rip), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movl	-52(%rbp), %r9d
	movl	%r9d, -32(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, -24(%rbp)
	movq	(%rax), %rdi
	callq	gp_temp_proc_return_write@PLT
	cmpl	$0, %eax
	jne	.LBB53_3
# BB#2:                                 # %if.then.8
	callq	gimp_quit@PLT
.LBB53_3:                               # %if.end
	jmp	.LBB53_4
.LBB53_4:                               # %if.end.9
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	gimp_temp_proc_run, .Lfunc_end53-gimp_temp_proc_run
	.cfi_endproc

	.type	_writechannel,@object   # @_writechannel
	.bss
	.globl	_writechannel
	.align	8
_writechannel:
	.quad	0
	.size	_writechannel, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LibGimp"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp.c"
	.size	.L.str.1, 7

	.type	.L__func__.gimp_main,@object # @__func__.gimp_main
.L__func__.gimp_main:
	.asciz	"gimp_main"
	.size	.L__func__.gimp_main, 10

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"info != NULL"
	.size	.L.str.2, 13

	.type	PLUG_IN_INFO,@object    # @PLUG_IN_INFO
	.local	PLUG_IN_INFO
	.comm	PLUG_IN_INFO,32,8
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"-gimp"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%s is a GIMP plug-in and must be run by GIMP to be used\n"
	.size	.L.str.4, 57

	.type	progname,@object        # @progname
	.local	progname
	.comm	progname,8,8
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP_PLUGIN_DEBUG"
	.size	.L.str.5, 18

	.type	gimp_debug_keys,@object # @gimp_debug_keys
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_debug_keys:
	.quad	.L.str.28
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.29
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.30
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.31
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.32
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.33
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.34
	.long	32                      # 0x20
	.zero	4
	.quad	.L.str.35
	.long	18                      # 0x12
	.zero	4
	.size	gimp_debug_keys, 128

	.type	gimp_debug_flags,@object # @gimp_debug_flags
	.local	gimp_debug_flags
	.comm	gimp_debug_flags,4,4
	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"G_MESSAGES_DEBUG"
	.size	.L.str.6, 17

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	",LibGimp"
	.size	.L.str.7, 9

	.type	stack_trace_mode,@object # @stack_trace_mode
	.local	stack_trace_mode
	.comm	stack_trace_mode,4,4
	.type	_readchannel,@object    # @_readchannel
	.local	_readchannel
	.comm	_readchannel,8,8
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.zero	1
	.size	.L.str.8, 1

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp20-libgimp"
	.size	.L.str.9, 15

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"UTF-8"
	.size	.L.str.10, 6

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"-query"
	.size	.L.str.11, 7

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"-init"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Here I am!"
	.size	.L.str.13, 11

	.type	temp_proc_ht,@object    # @temp_proc_ht
	.local	temp_proc_ht
	.comm	temp_proc_ht,8,8
	.type	.L__func__.gimp_install_procedure,@object # @__func__.gimp_install_procedure
.L__func__.gimp_install_procedure:
	.asciz	"gimp_install_procedure"
	.size	.L__func__.gimp_install_procedure, 23

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"name != NULL"
	.size	.L.str.14, 13

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"type != GIMP_INTERNAL"
	.size	.L.str.15, 22

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"(n_params == 0 && params == NULL) || (n_params > 0 && params != NULL)"
	.size	.L.str.16, 70

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"(n_return_vals == 0 && return_vals == NULL) || (n_return_vals > 0 && return_vals != NULL)"
	.size	.L.str.17, 90

	.type	.L__func__.gimp_install_temp_proc,@object # @__func__.gimp_install_temp_proc
.L__func__.gimp_install_temp_proc:
	.asciz	"gimp_install_temp_proc"
	.size	.L__func__.gimp_install_temp_proc, 23

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"type == GIMP_TEMPORARY"
	.size	.L.str.18, 23

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"run_proc != NULL"
	.size	.L.str.19, 17

	.type	.L__func__.gimp_uninstall_temp_proc,@object # @__func__.gimp_uninstall_temp_proc
.L__func__.gimp_uninstall_temp_proc:
	.asciz	"gimp_uninstall_temp_proc"
	.size	.L__func__.gimp_uninstall_temp_proc, 25

	.type	.L__func__.gimp_run_procedure,@object # @__func__.gimp_run_procedure
.L__func__.gimp_run_procedure:
	.asciz	"gimp_run_procedure"
	.size	.L__func__.gimp_run_procedure, 19

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"n_return_vals != NULL"
	.size	.L.str.20, 22

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"unexpected message: %d"
	.size	.L.str.21, 23

	.type	.L__func__.gimp_run_procedure2,@object # @__func__.gimp_run_procedure2
.L__func__.gimp_run_procedure2:
	.asciz	"gimp_run_procedure2"
	.size	.L__func__.gimp_run_procedure2, 20

	.type	pdb_error_message,@object # @pdb_error_message
	.local	pdb_error_message
	.comm	pdb_error_message,8,8
	.type	pdb_error_status,@object # @pdb_error_status
	.data
	.align	4
pdb_error_status:
	.long	3                       # 0x3
	.size	pdb_error_status, 4

	.type	.L.str.22,@object       # @.str.22
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.22:
	.asciz	"success"
	.size	.L.str.22, 8

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"execution error"
	.size	.L.str.23, 16

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"calling error"
	.size	.L.str.24, 14

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"cancelled"
	.size	.L.str.25, 10

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"invalid return status"
	.size	.L.str.26, 22

	.type	_tile_width,@object     # @_tile_width
	.data
	.align	4
_tile_width:
	.long	4294967295              # 0xffffffff
	.size	_tile_width, 4

	.type	_tile_height,@object    # @_tile_height
	.align	4
_tile_height:
	.long	4294967295              # 0xffffffff
	.size	_tile_height, 4

	.type	_shm_ID,@object         # @_shm_ID
	.align	4
_shm_ID:
	.long	4294967295              # 0xffffffff
	.size	_shm_ID, 4

	.type	_shm_addr,@object       # @_shm_addr
	.local	_shm_addr
	.comm	_shm_addr,8,8
	.type	_install_cmap,@object   # @_install_cmap
	.local	_install_cmap
	.comm	_install_cmap,4,4
	.type	_min_colors,@object     # @_min_colors
	.align	4
_min_colors:
	.long	144                     # 0x90
	.size	_min_colors, 4

	.type	_show_tool_tips,@object # @_show_tool_tips
	.align	4
_show_tool_tips:
	.long	1                       # 0x1
	.size	_show_tool_tips, 4

	.type	_show_help_button,@object # @_show_help_button
	.align	4
_show_help_button:
	.long	1                       # 0x1
	.size	_show_help_button, 4

	.type	_check_size,@object     # @_check_size
	.align	4
_check_size:
	.long	1                       # 0x1
	.size	_check_size, 4

	.type	_check_type,@object     # @_check_type
	.align	4
_check_type:
	.long	1                       # 0x1
	.size	_check_type, 4

	.type	_gdisp_ID,@object       # @_gdisp_ID
	.align	4
_gdisp_ID:
	.long	4294967295              # 0xffffffff
	.size	_gdisp_ID, 4

	.type	_wm_class,@object       # @_wm_class
	.local	_wm_class
	.comm	_wm_class,8,8
	.type	_display_name,@object   # @_display_name
	.local	_display_name
	.comm	_display_name,8,8
	.type	_monitor_number,@object # @_monitor_number
	.local	_monitor_number
	.comm	_monitor_number,4,4
	.type	_timestamp,@object      # @_timestamp
	.local	_timestamp
	.comm	_timestamp,4,4
	.type	gimp_extension_enable.callback_added,@object # @gimp_extension_enable.callback_added
	.local	gimp_extension_enable.callback_added
	.comm	gimp_extension_enable.callback_added,4,4
	.type	.L.str.27,@object       # @.str.27
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.27:
	.asciz	"gimp_extension_process"
	.size	.L.str.27, 23

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"pid"
	.size	.L.str.28, 4

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"fatal-warnings"
	.size	.L.str.29, 15

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"fw"
	.size	.L.str.30, 3

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"query"
	.size	.L.str.31, 6

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"init"
	.size	.L.str.32, 5

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"run"
	.size	.L.str.33, 4

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"quit"
	.size	.L.str.34, 5

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"on"
	.size	.L.str.35, 3

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Waiting for debugger..."
	.size	.L.str.36, 24

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"%s terminated: %s\n"
	.size	.L.str.37, 19

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"%s: fatal error: %s\n"
	.size	.L.str.38, 21

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"%s: fatal error: GIMP crashed\n"
	.size	.L.str.39, 31

	.type	write_buffer_index,@object # @write_buffer_index
	.local	write_buffer_index
	.comm	write_buffer_index,8,8
	.type	write_buffer,@object    # @write_buffer
	.local	write_buffer
	.comm	write_buffer,1024,16
	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"%s: gimp_flush(): error: %s"
	.size	.L.str.40, 28

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"%s: gimp_flush(): error"
	.size	.L.str.41, 24

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"unexpected tile message received (should not happen)"
	.size	.L.str.42, 53

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"unexpected proc return message received (should not happen)"
	.size	.L.str.43, 60

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"unexpected temp proc run message received (should not happen"
	.size	.L.str.44, 61

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"unexpected temp proc return message received (should not happen"
	.size	.L.str.45, 64

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"unexpected proc install message received (should not happen)"
	.size	.L.str.46, 61

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"unexpected has init message received (should not happen)"
	.size	.L.str.47, 57

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Could not execute plug-in \"%s\"\n(%s)\nbecause GIMP is using an older version of the plug-in protocol."
	.size	.L.str.48, 100

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Could not execute plug-in \"%s\"\n(%s)\nbecause it uses an obsolete version of the plug-in protocol."
	.size	.L.str.49, 97

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"shmat() failed: %s\nCould not attach to gimp shared memory segment"
	.size	.L.str.50, 66

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"unexpected proc run message received (should not happen)"
	.size	.L.str.51, 57

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"unexpected temp proc return message received (should not happen)"
	.size	.L.str.52, 65

	.hidden	_gimp_unit_cache_get_number_of_units
	.hidden	_gimp_unit_cache_get_number_of_built_in_units
	.hidden	_gimp_unit_cache_new
	.hidden	_gimp_unit_cache_get_deletion_flag
	.hidden	_gimp_unit_cache_set_deletion_flag
	.hidden	_gimp_unit_cache_get_factor
	.hidden	_gimp_unit_cache_get_digits
	.hidden	_gimp_unit_cache_get_identifier
	.hidden	_gimp_unit_cache_get_symbol
	.hidden	_gimp_unit_cache_get_abbreviation
	.hidden	_gimp_unit_cache_get_singular
	.hidden	_gimp_unit_cache_get_plural

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
