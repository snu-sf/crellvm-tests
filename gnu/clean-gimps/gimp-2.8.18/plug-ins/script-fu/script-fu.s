	.text
	.file	"script-fu.bc"
	.align	16, 0x90
	.type	script_fu_query,@function
script_fu_query:                        # @script_fu_query
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
	movabsq	$.L.str.11, %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	gimp_plugin_domain_register
	movabsq	$.L.str.12, %rdi
	movabsq	$.L.str.13, %rsi
	movabsq	$.L.str.14, %rdx
	movabsq	$.L.str.15, %rcx
	movabsq	$.L.str.16, %r9
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movl	$2, %r8d
	xorl	%r11d, %r11d
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movl	%r8d, -52(%rbp)         # 4-byte Spill
	movq	%rbx, %r8
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movl	$2, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 48(%rsp)
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movl	%r11d, -60(%rbp)        # 4-byte Spill
	movq	%r10, -72(%rbp)         # 8-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.17, %rdi
	movabsq	$.L.str.18, %rsi
	movabsq	$.L.str.19, %rdx
	movabsq	$.L.str.15, %rcx
	movabsq	$.L.str.16, %r9
	movabsq	$.L.str.20, %r8
	xorl	%eax, %eax
	movl	%eax, %r10d
	movl	$1, %eax
	xorl	%r11d, %r11d
	movabsq	$script_fu_query.console_args, %rbx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movq	-80(%rbp), %r14         # 8-byte Reload
	movq	%r8, -88(%rbp)          # 8-byte Spill
	movq	%r14, %r8
	movq	-88(%rbp), %r15         # 8-byte Reload
	movq	%r15, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$1, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%rbx, 40(%rsp)
	movq	$0, 48(%rsp)
	movl	%r11d, -92(%rbp)        # 4-byte Spill
	movl	%eax, -96(%rbp)         # 4-byte Spill
	movq	%r10, -104(%rbp)        # 8-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.17, %rdi
	movabsq	$.L.str.21, %rsi
	callq	gimp_plugin_menu_register
	movabsq	$.L.str.22, %rdi
	movabsq	$.L.str.23, %rsi
	movabsq	$.L.str.19, %rdx
	movabsq	$.L.str.15, %rcx
	movabsq	$.L.str.16, %r9
	xorl	%r11d, %r11d
	movl	%r11d, %r8d
	movl	$1, %r11d
	xorl	%r12d, %r12d
	movabsq	$script_fu_query.textconsole_args, %r10
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movq	-112(%rbp), %rbx        # 8-byte Reload
	movq	%r8, -120(%rbp)         # 8-byte Spill
	movq	%rbx, %r8
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$1, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r10, 40(%rsp)
	movq	$0, 48(%rsp)
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movl	%r12d, -128(%rbp)       # 4-byte Spill
	movl	%r11d, -132(%rbp)       # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.24, %rdi
	movabsq	$.L.str.25, %rsi
	movabsq	$.L.str.26, %rdx
	movabsq	$.L.str.15, %rcx
	movabsq	$.L.str.16, %r9
	movabsq	$.L.str.27, %r8
	xorl	%eax, %eax
	movl	%eax, %r10d
	movl	$1, %eax
	movl	$4, %r11d
	xorl	%r12d, %r12d
	movabsq	$script_fu_query.server_args, %rbx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movq	-144(%rbp), %r14        # 8-byte Reload
	movq	%r8, -152(%rbp)         # 8-byte Spill
	movq	%r14, %r8
	movq	-152(%rbp), %r15        # 8-byte Reload
	movq	%r15, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$4, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%rbx, 40(%rsp)
	movq	$0, 48(%rsp)
	movl	%r12d, -156(%rbp)       # 4-byte Spill
	movl	%r11d, -160(%rbp)       # 4-byte Spill
	movl	%eax, -164(%rbp)        # 4-byte Spill
	movq	%r10, -176(%rbp)        # 8-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.24, %rdi
	movabsq	$.L.str.21, %rsi
	callq	gimp_plugin_menu_register
	movabsq	$.L.str.28, %rdi
	movabsq	$.L.str.29, %rsi
	movabsq	$.L.str.30, %rdx
	movabsq	$.L.str.31, %rcx
	movabsq	$.L.str.32, %r9
	xorl	%r11d, %r11d
	movl	%r11d, %r8d
	movl	$1, %r11d
	movl	$2, %r12d
	xorl	%r13d, %r13d
	movabsq	$script_fu_query.eval_args, %r10
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	movq	-184(%rbp), %rbx        # 8-byte Reload
	movq	%r8, -192(%rbp)         # 8-byte Spill
	movq	%rbx, %r8
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$2, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r10, 40(%rsp)
	movq	$0, 48(%rsp)
	movl	%eax, -196(%rbp)        # 4-byte Spill
	movl	%r13d, -200(%rbp)       # 4-byte Spill
	movl	%r12d, -204(%rbp)       # 4-byte Spill
	movl	%r11d, -208(%rbp)       # 4-byte Spill
	callq	gimp_install_procedure
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	script_fu_query, .Lfunc_end0-script_fu_query
	.cfi_endproc

	.align	16, 0x90
	.type	script_fu_run,@function
script_fu_run:                          # @script_fu_run
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.11, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.11, %rdi
	movabsq	$.L.str.33, %rsi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.11, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -72(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	callq	script_fu_search_path
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movl	$.L.str.12, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_4
# BB#3:                                 # %if.then
	callq	script_fu_extension_init
	movl	$1, %esi
	movq	-48(%rbp), %rdi
	callq	tinyscheme_init
	jmp	.LBB1_5
.LBB1_4:                                # %if.else
	xorl	%esi, %esi
	movq	-48(%rbp), %rdi
	callq	tinyscheme_init
.LBB1_5:                                # %if.end
	cmpq	$0, -24(%rbp)
	je	.LBB1_7
# BB#6:                                 # %if.then.7
	movq	-24(%rbp), %rax
	movl	8(%rax), %edi
	callq	ts_set_run_mode
.LBB1_7:                                # %if.end.8
	movq	-48(%rbp), %rdi
	callq	script_fu_find_scripts
	movq	-48(%rbp), %rdi
	callq	g_free
	movq	-8(%rbp), %rdi
	movl	$.L.str.12, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_10
# BB#8:                                 # %if.then.11
	callq	gimp_extension_ack
.LBB1_9:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	callq	gimp_extension_process
	jmp	.LBB1_9
.LBB1_10:                               # %if.else.12
	movq	-8(%rbp), %rdi
	movl	$.L.str.22, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_12
# BB#11:                                # %if.then.15
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	callq	script_fu_text_console_run
	jmp	.LBB1_21
.LBB1_12:                               # %if.else.16
	movq	-8(%rbp), %rdi
	movl	$.L.str.17, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_14
# BB#13:                                # %if.then.19
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	callq	script_fu_console_run
	jmp	.LBB1_20
.LBB1_14:                               # %if.else.20
	movq	-8(%rbp), %rdi
	movl	$.L.str.24, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_16
# BB#15:                                # %if.then.23
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	callq	script_fu_server_run
	jmp	.LBB1_19
.LBB1_16:                               # %if.else.24
	movq	-8(%rbp), %rdi
	movl	$.L.str.28, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_18
# BB#17:                                # %if.then.27
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %r8
	callq	script_fu_eval_run
.LBB1_18:                               # %if.end.28
	jmp	.LBB1_19
.LBB1_19:                               # %if.end.29
	jmp	.LBB1_20
.LBB1_20:                               # %if.end.30
	jmp	.LBB1_21
.LBB1_21:                               # %if.end.31
	jmp	.LBB1_22
.LBB1_22:                               # %if.end.32
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	script_fu_run, .Lfunc_end1-script_fu_run
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
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
	subq	$16, %rsp
	movabsq	$PLUG_IN_INFO, %rax
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-8(%rbp), %esi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_main
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc

	.align	16, 0x90
	.type	script_fu_search_path,@function
script_fu_search_path:                  # @script_fu_search_path
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
	subq	$32, %rsp
	movabsq	$.L.str.34, %rdi
	movq	$0, -16(%rbp)
	callq	gimp_gimprc_query
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB3_4
# BB#1:                                 # %if.then
	movq	$-1, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	leaq	-24(%rbp), %r8
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rcx, %rdx
	callq	g_filename_from_utf8
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_free
	cmpq	$0, -16(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then.3
	movabsq	$.L.str.35, %rdi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	movb	$0, %al
	callq	g_warning
	movq	-24(%rbp), %rdi
	callq	g_error_free
.LBB3_3:                                # %if.end
	jmp	.LBB3_4
.LBB3_4:                                # %if.end.4
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	script_fu_search_path, .Lfunc_end3-script_fu_search_path
	.cfi_endproc

	.align	16, 0x90
	.type	script_fu_extension_init,@function
script_fu_extension_init:               # @script_fu_extension_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$168, %rsp
.Ltmp20:
	.cfi_offset %rbx, -56
.Ltmp21:
	.cfi_offset %r12, -48
.Ltmp22:
	.cfi_offset %r13, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
	movabsq	$.L.str.37, %rdi
	movabsq	$.L.str.38, %rsi
	callq	gimp_plugin_menu_branch_register
	movabsq	$.L.str.37, %rdi
	movabsq	$.L.str.39, %rsi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gimp_plugin_menu_branch_register
	movabsq	$.L.str.40, %rdi
	movabsq	$.L.str.41, %rsi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	gimp_plugin_menu_branch_register
	movabsq	$.L.str.21, %rdi
	movabsq	$.L.str.42, %rsi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	gimp_plugin_menu_branch_register
	movabsq	$.L.str.43, %rdi
	movabsq	$.L.str.44, %rsi
	movl	%eax, -56(%rbp)         # 4-byte Spill
	callq	gimp_plugin_menu_branch_register
	movabsq	$.L.str.43, %rdi
	movabsq	$.L.str.45, %rsi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	gimp_plugin_menu_branch_register
	movabsq	$.L.str.43, %rdi
	movabsq	$.L.str.46, %rsi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	gimp_plugin_menu_branch_register
	movabsq	$.L.str.43, %rdi
	movabsq	$.L.str.47, %rsi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	gimp_plugin_menu_branch_register
	movabsq	$.L.str.48, %rdi
	movabsq	$.L.str.49, %rsi
	movl	%eax, -72(%rbp)         # 4-byte Spill
	callq	gimp_plugin_menu_branch_register
	movabsq	$.L.str.48, %rdi
	movabsq	$.L.str.50, %rsi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gimp_plugin_menu_branch_register
	movabsq	$.L.str.48, %rdi
	movabsq	$.L.str.51, %rsi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	gimp_plugin_menu_branch_register
	movabsq	$.L.str.52, %rdi
	movabsq	$.L.str.53, %rsi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gimp_plugin_menu_branch_register
	movabsq	$.L.str.54, %rdi
	movabsq	$.L.str.55, %rsi
	movabsq	$.L.str.15, %rcx
	movabsq	$.L.str.16, %r9
	movabsq	$.L.str.56, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movl	$3, %r8d
	movl	$1, %r11d
	xorl	%ebx, %ebx
	movabsq	$script_fu_extension_init.args, %r14
	movabsq	$script_fu_refresh_proc, %r15
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	-96(%rbp), %r12         # 8-byte Reload
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%r12, %rdx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movq	-112(%rbp), %r13        # 8-byte Reload
	movl	%r8d, -116(%rbp)        # 4-byte Spill
	movq	%r13, %r8
	movq	-104(%rbp), %r12        # 8-byte Reload
	movq	%r12, (%rsp)
	movq	$0, 8(%rsp)
	movl	$3, 16(%rsp)
	movl	$1, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r15, 56(%rsp)
	movl	%eax, -120(%rbp)        # 4-byte Spill
	movq	%r10, -128(%rbp)        # 8-byte Spill
	movl	%ebx, -132(%rbp)        # 4-byte Spill
	movl	%r11d, -136(%rbp)       # 4-byte Spill
	callq	gimp_install_temp_proc
	movabsq	$.L.str.54, %rdi
	movabsq	$.L.str.21, %rsi
	callq	gimp_plugin_menu_register
	movl	%eax, -140(%rbp)        # 4-byte Spill
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	script_fu_extension_init, .Lfunc_end4-script_fu_extension_init
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
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
	je	.LBB5_2
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
.LBB5_2:                                # %entry
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
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end5:
	.size	g_warning, .Lfunc_end5-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	script_fu_refresh_proc,@function
script_fu_refresh_proc:                 # @script_fu_refresh_proc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	callq	script_fu_interface_is_active
	cmpl	$0, %eax
	je	.LBB6_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.57, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$0, -44(%rbp)
	jmp	.LBB6_3
.LBB6_2:                                # %if.else
	callq	script_fu_search_path
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	script_fu_find_scripts
	movq	-56(%rbp), %rdi
	callq	g_free
	movl	$3, -44(%rbp)
.LBB6_3:                                # %if.end
	movabsq	$script_fu_refresh_proc.values, %rax
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, script_fu_refresh_proc.values
	movl	-44(%rbp), %edx
	movl	%edx, script_fu_refresh_proc.values+8
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	script_fu_refresh_proc, .Lfunc_end6-script_fu_refresh_proc
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
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
	je	.LBB7_2
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
.LBB7_2:                                # %entry
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
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	$32, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end7:
	.size	g_message, .Lfunc_end7-g_message
	.cfi_endproc

	.type	PLUG_IN_INFO,@object    # @PLUG_IN_INFO
	.section	.rodata,"a",@progbits
	.globl	PLUG_IN_INFO
	.align	8
PLUG_IN_INFO:
	.quad	0
	.quad	0
	.quad	script_fu_query
	.quad	script_fu_run
	.size	PLUG_IN_INFO, 32

	.type	script_fu_query.console_args,@object # @script_fu_query.console_args
	.align	16
script_fu_query.console_args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.size	script_fu_query.console_args, 24

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"run-mode"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"The run mode { RUN-INTERACTIVE (0) }"
	.size	.L.str.1, 37

	.type	script_fu_query.textconsole_args,@object # @script_fu_query.textconsole_args
	.section	.rodata,"a",@progbits
	.align	16
script_fu_query.textconsole_args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.size	script_fu_query.textconsole_args, 24

	.type	script_fu_query.eval_args,@object # @script_fu_query.eval_args
	.align	16
script_fu_query.eval_args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.2
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.3
	.quad	.L.str.4
	.size	script_fu_query.eval_args, 48

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"The run mode { RUN-NONINTERACTIVE (1) }"
	.size	.L.str.2, 40

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"code"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"The code to evaluate"
	.size	.L.str.4, 21

	.type	script_fu_query.server_args,@object # @script_fu_query.server_args
	.section	.rodata,"a",@progbits
	.align	16
script_fu_query.server_args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.2
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.5
	.quad	.L.str.6
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.7
	.quad	.L.str.8
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.9
	.quad	.L.str.10
	.size	script_fu_query.server_args, 96

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"ip"
	.size	.L.str.5, 3

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"The ip on which to listen for requests"
	.size	.L.str.6, 39

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"port"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"The port on which to listen for requests"
	.size	.L.str.8, 41

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"logfile"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"The file to log server activity to"
	.size	.L.str.10, 35

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp20-script-fu"
	.size	.L.str.11, 17

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"extension-script-fu"
	.size	.L.str.12, 20

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"A scheme interpreter for scripting GIMP operations"
	.size	.L.str.13, 51

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"More help here later"
	.size	.L.str.14, 21

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Spencer Kimball & Peter Mattis"
	.size	.L.str.15, 31

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"1997"
	.size	.L.str.16, 5

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"plug-in-script-fu-console"
	.size	.L.str.17, 26

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Interactive console for Script-Fu development"
	.size	.L.str.18, 46

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Provides an interface which allows interactive scheme development."
	.size	.L.str.19, 67

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"_Console"
	.size	.L.str.20, 9

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"<Image>/Filters/Languages/Script-Fu"
	.size	.L.str.21, 36

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"plug-in-script-fu-text-console"
	.size	.L.str.22, 31

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Provides a text console mode for script-fu development"
	.size	.L.str.23, 55

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"plug-in-script-fu-server"
	.size	.L.str.24, 25

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Server for remote Script-Fu operation"
	.size	.L.str.25, 38

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Provides a server for remote script-fu operation. NOTE that for security reasons this procedure's API was changed in an incompatible way since GIMP 2.8.12. You now have to pass the IP to listen on as first parameter. Calling this procedure with the old API will fail on purpose."
	.size	.L.str.26, 279

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"_Start Server..."
	.size	.L.str.27, 17

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"plug-in-script-fu-eval"
	.size	.L.str.28, 23

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Evaluate scheme code"
	.size	.L.str.29, 21

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Evaluate the code under the scheme interpreter (primarily for batch mode)"
	.size	.L.str.30, 74

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Manish Singh"
	.size	.L.str.31, 13

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"1998"
	.size	.L.str.32, 5

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"UTF-8"
	.size	.L.str.33, 6

	.type	script_fu_run.values,@object # @script_fu_run.values
	.local	script_fu_run.values
	.comm	script_fu_run.values,40,16
	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"script-fu-path"
	.size	.L.str.34, 15

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Can't convert script-fu-path to filesystem encoding: %s"
	.size	.L.str.35, 56

	.type	script_fu_extension_init.args,@object # @script_fu_extension_init.args
	.section	.rodata,"a",@progbits
	.align	16
script_fu_extension_init.args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.36
	.size	script_fu_extension_init.args, 24

	.type	.L.str.36,@object       # @.str.36
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.36:
	.asciz	"[Interactive], non-interactive"
	.size	.L.str.36, 31

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"<Image>/Help"
	.size	.L.str.37, 13

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"_GIMP Online"
	.size	.L.str.38, 13

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"_User Manual"
	.size	.L.str.39, 13

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"<Image>/Filters/Languages"
	.size	.L.str.40, 26

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"_Script-Fu"
	.size	.L.str.41, 11

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"_Test"
	.size	.L.str.42, 6

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"<Image>/File/Create"
	.size	.L.str.43, 20

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"_Buttons"
	.size	.L.str.44, 9

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"_Logos"
	.size	.L.str.45, 7

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"_Patterns"
	.size	.L.str.46, 10

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"_Web Page Themes"
	.size	.L.str.47, 17

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"<Image>/File/Create/Web Page Themes"
	.size	.L.str.48, 36

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"_Alien Glow"
	.size	.L.str.49, 12

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"_Beveled Pattern"
	.size	.L.str.50, 17

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"_Classic.Gimp.Org"
	.size	.L.str.51, 18

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"<Image>/Filters"
	.size	.L.str.52, 16

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Alpha to _Logo"
	.size	.L.str.53, 15

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"script-fu-refresh"
	.size	.L.str.54, 18

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Re-read all available Script-Fu scripts"
	.size	.L.str.55, 40

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"_Refresh Scripts"
	.size	.L.str.56, 17

	.type	script_fu_refresh_proc.values,@object # @script_fu_refresh_proc.values
	.local	script_fu_refresh_proc.values
	.comm	script_fu_refresh_proc.values,40,16
	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"You can not use \"Refresh Scripts\" while a Script-Fu dialog box is open.  Please close all Script-Fu windows and try again."
	.size	.L.str.57, 123


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
