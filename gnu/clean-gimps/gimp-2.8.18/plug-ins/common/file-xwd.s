	.text
	.file	"file-xwd.bc"
	.align	16, 0x90
	.type	query,@function
query:                                  # @query
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
	subq	$152, %rsp
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
	movabsq	$.L.str.12, %rsi
	movabsq	$.L.str.13, %rdx
	movabsq	$.L.str.14, %rax
	movabsq	$.L.str.15, %r9
	movabsq	$.L.str.16, %rcx
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movl	$1, %r8d
	movl	$3, %r11d
	movabsq	$query.load_args, %rbx
	movabsq	$query.load_return_vals, %r14
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movl	%r8d, -52(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$1, 32(%rsp)
	movq	%rbx, 40(%rsp)
	movq	%r14, 48(%rsp)
	movq	%r10, -64(%rbp)         # 8-byte Spill
	movl	%r11d, -68(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.11, %rdi
	movabsq	$.L.str.17, %rsi
	callq	gimp_register_file_handler_mime
	movabsq	$.L.str.11, %rdi
	movabsq	$.L.str.18, %rsi
	movabsq	$.L.str.19, %rdx
	movabsq	$.L.str.20, %rcx
	movl	%eax, -72(%rbp)         # 4-byte Spill
	callq	gimp_register_magic_load_handler
	movabsq	$.L.str.21, %rdi
	movabsq	$.L.str.22, %rsi
	movabsq	$.L.str.23, %rdx
	movabsq	$.L.str.14, %rcx
	movabsq	$.L.str.15, %r9
	movabsq	$.L.str.16, %r8
	movabsq	$.L.str.24, %r10
	movl	$1, %r11d
	movl	$5, %r15d
	xorl	%r12d, %r12d
	movabsq	$query.save_args, %rbx
	xorl	%r13d, %r13d
	movl	%r13d, %r14d
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movq	-80(%rbp), %r13         # 8-byte Reload
	movq	%r8, -88(%rbp)          # 8-byte Spill
	movq	%r13, %r8
	movq	-88(%rbp), %r13         # 8-byte Reload
	movq	%r13, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$5, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%rbx, 40(%rsp)
	movq	$0, 48(%rsp)
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movq	%r14, -104(%rbp)        # 8-byte Spill
	movl	%r12d, -108(%rbp)       # 4-byte Spill
	movl	%r15d, -112(%rbp)       # 4-byte Spill
	movl	%r11d, -116(%rbp)       # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.21, %rdi
	movabsq	$.L.str.17, %rsi
	callq	gimp_register_file_handler_mime
	movabsq	$.L.str.21, %rdi
	movabsq	$.L.str.18, %rsi
	movabsq	$.L.str.19, %rdx
	movl	%eax, -120(%rbp)        # 4-byte Spill
	callq	gimp_register_save_handler
	movl	%eax, -124(%rbp)        # 4-byte Spill
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	query, .Lfunc_end0-query
	.cfi_endproc

	.align	16, 0x90
	.type	run,@function
run:                                    # @run
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -48(%rbp)
	movl	$0, -60(%rbp)
	movq	$0, -72(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -44(%rbp)
	movl	%esi, l_run_mode
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.25, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.25, %rdi
	movabsq	$.L.str.26, %rsi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.25, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -96(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movabsq	$run.values, %rax
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, run.values
	movl	$0, run.values+8
	movq	-8(%rbp), %rdi
	movl	$.L.str.11, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_7
# BB#3:                                 # %if.then
	leaq	-72(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	load_image
	movl	%eax, -52(%rbp)
	cmpl	$-1, -52(%rbp)
	je	.LBB1_5
# BB#4:                                 # %if.then.9
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$13, run.values+40
	movl	-52(%rbp), %ecx
	movl	%ecx, run.values+48
	jmp	.LBB1_6
.LBB1_5:                                # %if.else
	movl	$0, -48(%rbp)
.LBB1_6:                                # %if.end
	jmp	.LBB1_28
.LBB1_7:                                # %if.else.10
	movq	-8(%rbp), %rdi
	movl	$.L.str.21, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_26
# BB#8:                                 # %if.then.13
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movq	-24(%rbp), %rax
	movl	88(%rax), %ecx
	movl	%ecx, -56(%rbp)
	movl	-44(%rbp), %ecx
	orl	$2, %ecx
	subl	$2, %ecx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	je	.LBB1_9
	jmp	.LBB1_12
.LBB1_9:                                # %sw.bb
	movabsq	$.L.str.27, %rdi
	xorl	%esi, %esi
	callq	gimp_ui_init
	leaq	-52(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	movabsq	$.L.str.28, %rdx
	movl	$7, %ecx
	callq	gimp_export_image
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jne	.LBB1_11
# BB#10:                                # %if.then.22
	movl	$4, run.values+8
	jmp	.LBB1_32
.LBB1_11:                               # %if.end.23
	jmp	.LBB1_13
.LBB1_12:                               # %sw.default
	jmp	.LBB1_13
.LBB1_13:                               # %sw.epilog
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB1_14
	jmp	.LBB1_33
.LBB1_33:                               # %sw.epilog
	movl	-104(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB1_15
	jmp	.LBB1_34
.LBB1_34:                               # %sw.epilog
	movl	-104(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jne	.LBB1_18
	jmp	.LBB1_14
.LBB1_14:                               # %sw.bb.24
	jmp	.LBB1_19
.LBB1_15:                               # %sw.bb.25
	cmpl	$5, -12(%rbp)
	je	.LBB1_17
# BB#16:                                # %if.then.27
	movl	$1, -48(%rbp)
.LBB1_17:                               # %if.end.28
	jmp	.LBB1_19
.LBB1_18:                               # %sw.default.29
	jmp	.LBB1_19
.LBB1_19:                               # %sw.epilog.30
	cmpl	$3, -48(%rbp)
	jne	.LBB1_23
# BB#20:                                # %if.then.32
	leaq	-72(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edx
	callq	save_image
	cmpl	$0, %eax
	jne	.LBB1_22
# BB#21:                                # %if.then.37
	movl	$0, -48(%rbp)
.LBB1_22:                               # %if.end.38
	jmp	.LBB1_23
.LBB1_23:                               # %if.end.39
	cmpl	$2, -60(%rbp)
	jne	.LBB1_25
# BB#24:                                # %if.then.41
	movl	-52(%rbp), %edi
	callq	gimp_image_delete
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB1_25:                               # %if.end.43
	jmp	.LBB1_27
.LBB1_26:                               # %if.else.44
	movl	$4, -48(%rbp)
.LBB1_27:                               # %if.end.45
	jmp	.LBB1_28
.LBB1_28:                               # %if.end.46
	cmpl	$3, -48(%rbp)
	je	.LBB1_31
# BB#29:                                # %land.lhs.true
	cmpq	$0, -72(%rbp)
	je	.LBB1_31
# BB#30:                                # %if.then.49
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$4, run.values+40
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, run.values+48
.LBB1_31:                               # %if.end.50
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
.LBB1_32:                               # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	run, .Lfunc_end1-run
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

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	load_image,@function
load_image:                             # @load_image
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
	subq	$464, %rsp              # imm = 0x1D0
	movabsq	$.L.str.29, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$-1, -36(%rbp)
	movq	$0, -248(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	fopen
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -260(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.30, %rdi
	movl	%eax, -264(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-8(%rbp), %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movl	-260(%rbp), %esi        # 4-byte Reload
	movl	-264(%rbp), %edx        # 4-byte Reload
	movq	-272(%rbp), %rcx        # 8-byte Reload
	movq	-280(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	jmp	.LBB3_52
.LBB3_2:                                # %if.end
	leaq	-240(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	read_xwd_header
	cmpq	$7, -232(%rbp)
	je	.LBB3_4
# BB#3:                                 # %if.then.8
	movq	-16(%rbp), %rdi
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.31, %rdi
	movl	%eax, -292(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-8(%rbp), %rdi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$24, %edx
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movl	-292(%rbp), %esi        # 4-byte Reload
	movq	-304(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	jmp	.LBB3_52
.LBB3_4:                                # %if.end.12
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi
	movq	-240(%rbp), %rsi
	callq	fseek
	cmpq	$256, -96(%rbp)         # imm = 0x100
	movl	%eax, -308(%rbp)        # 4-byte Spill
	jbe	.LBB3_6
# BB#5:                                 # %if.then.15
	movabsq	$.L.str.32, %rdi
	callq	gettext
	movq	-8(%rbp), %rdi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-96(%rbp), %rdx
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	jmp	.LBB3_52
.LBB3_6:                                # %if.end.19
	cmpq	$0, -96(%rbp)
	jbe	.LBB3_12
# BB#7:                                 # %if.then.22
	movq	-96(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jae	.LBB3_9
# BB#8:                                 # %if.then.25
	movabsq	$.L.str.33, %rdi
	callq	gettext
	movq	-8(%rbp), %rdi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	jmp	.LBB3_52
.LBB3_9:                                # %if.end.28
	movl	$16, %eax
	movl	%eax, %esi
	movq	-96(%rbp), %rdi
	callq	g_malloc_n
	leaq	-240(%rbp), %rsi
	movq	%rax, -248(%rbp)
	movq	-24(%rbp), %rdi
	movq	-248(%rbp), %rdx
	callq	read_xwd_cols
	cmpq	$7, -232(%rbp)
	je	.LBB3_11
# BB#10:                                # %if.then.33
	movabsq	$.L.str.34, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	jmp	.LBB3_52
.LBB3_11:                               # %if.end.35
	jmp	.LBB3_12
.LBB3_12:                               # %if.end.36
	cmpq	$0, -208(%rbp)
	ja	.LBB3_14
# BB#13:                                # %if.then.38
	movabsq	$.L.str.35, %rdi
	callq	gettext
	movq	-8(%rbp), %rdi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	jmp	.LBB3_52
.LBB3_14:                               # %if.end.41
	cmpq	$262144, -208(%rbp)     # imm = 0x40000
	ja	.LBB3_16
# BB#15:                                # %lor.lhs.false
	cmpq	$786432, -144(%rbp)     # imm = 0xC0000
	jbe	.LBB3_17
.LBB3_16:                               # %if.then.45
	movabsq	$.L.str.36, %rdi
	callq	gettext
	movq	-8(%rbp), %rdi
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	jmp	.LBB3_52
.LBB3_17:                               # %if.end.48
	cmpq	$0, -200(%rbp)
	ja	.LBB3_19
# BB#18:                                # %if.then.50
	movabsq	$.L.str.37, %rdi
	callq	gettext
	movq	-8(%rbp), %rdi
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	jmp	.LBB3_52
.LBB3_19:                               # %if.end.53
	cmpq	$262144, -200(%rbp)     # imm = 0x40000
	jbe	.LBB3_21
# BB#20:                                # %if.then.56
	movabsq	$.L.str.38, %rdi
	callq	gettext
	movq	-8(%rbp), %rdi
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	jmp	.LBB3_52
.LBB3_21:                               # %if.end.59
	movl	$.L.str.39, %eax
	movl	%eax, %edi
	callq	gettext
	movq	-8(%rbp), %rdi
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	%dl, %al
	callq	gimp_progress_init_printf
	movl	-216(%rbp), %ecx
	movl	%ecx, -28(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -32(%rbp)
	movl	$-1, -36(%rbp)
	movq	-224(%rbp), %rsi
	testq	%rsi, %rsi
	movl	%eax, -372(%rbp)        # 4-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	je	.LBB3_22
	jmp	.LBB3_57
.LBB3_57:                               # %if.end.59
	movq	-384(%rbp), %rax        # 8-byte Reload
	subq	$1, %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	je	.LBB3_26
	jmp	.LBB3_58
.LBB3_58:                               # %if.end.59
	movq	-384(%rbp), %rax        # 8-byte Reload
	subq	$2, %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	je	.LBB3_30
	jmp	.LBB3_47
.LBB3_22:                               # %sw.bb
	cmpl	$1, -28(%rbp)
	jne	.LBB3_25
# BB#23:                                # %land.lhs.true
	cmpl	$1, -32(%rbp)
	jne	.LBB3_25
# BB#24:                                # %if.then.68
	leaq	-240(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-248(%rbp), %rcx
	callq	load_xwd_f2_d1_b1
	movl	%eax, -36(%rbp)
.LBB3_25:                               # %if.end.70
	jmp	.LBB3_47
.LBB3_26:                               # %sw.bb.71
	cmpl	$24, -28(%rbp)
	jg	.LBB3_29
# BB#27:                                # %land.lhs.true.74
	cmpl	$1, -32(%rbp)
	jne	.LBB3_29
# BB#28:                                # %if.then.77
	leaq	-240(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-248(%rbp), %rcx
	movq	-16(%rbp), %r8
	callq	load_xwd_f1_d24_b1
	movl	%eax, -36(%rbp)
.LBB3_29:                               # %if.end.79
	jmp	.LBB3_47
.LBB3_30:                               # %sw.bb.80
	cmpl	$1, -28(%rbp)
	jne	.LBB3_33
# BB#31:                                # %land.lhs.true.83
	cmpl	$1, -32(%rbp)
	jne	.LBB3_33
# BB#32:                                # %if.then.86
	leaq	-240(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-248(%rbp), %rcx
	callq	load_xwd_f2_d1_b1
	movl	%eax, -36(%rbp)
	jmp	.LBB3_46
.LBB3_33:                               # %if.else
	cmpl	$8, -28(%rbp)
	jg	.LBB3_36
# BB#34:                                # %land.lhs.true.90
	cmpl	$8, -32(%rbp)
	jne	.LBB3_36
# BB#35:                                # %if.then.93
	leaq	-240(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-248(%rbp), %rcx
	callq	load_xwd_f2_d8_b8
	movl	%eax, -36(%rbp)
	jmp	.LBB3_45
.LBB3_36:                               # %if.else.95
	cmpl	$16, -28(%rbp)
	jg	.LBB3_39
# BB#37:                                # %land.lhs.true.98
	cmpl	$16, -32(%rbp)
	jne	.LBB3_39
# BB#38:                                # %if.then.101
	leaq	-240(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-248(%rbp), %rcx
	callq	load_xwd_f2_d16_b16
	movl	%eax, -36(%rbp)
	jmp	.LBB3_44
.LBB3_39:                               # %if.else.103
	cmpl	$24, -28(%rbp)
	jg	.LBB3_43
# BB#40:                                # %land.lhs.true.106
	cmpl	$24, -32(%rbp)
	je	.LBB3_42
# BB#41:                                # %lor.lhs.false.109
	cmpl	$32, -32(%rbp)
	jne	.LBB3_43
.LBB3_42:                               # %if.then.112
	leaq	-240(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-248(%rbp), %rcx
	movq	-16(%rbp), %r8
	callq	load_xwd_f2_d24_b32
	movl	%eax, -36(%rbp)
.LBB3_43:                               # %if.end.114
	jmp	.LBB3_44
.LBB3_44:                               # %if.end.115
	jmp	.LBB3_45
.LBB3_45:                               # %if.end.116
	jmp	.LBB3_46
.LBB3_46:                               # %if.end.117
	jmp	.LBB3_47
.LBB3_47:                               # %sw.epilog
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	cmpl	$-1, -36(%rbp)
	movl	%eax, -404(%rbp)        # 4-byte Spill
	jne	.LBB3_51
# BB#48:                                # %land.lhs.true.121
	cmpq	$0, -16(%rbp)
	je	.LBB3_50
# BB#49:                                # %land.lhs.true.123
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB3_51
.LBB3_50:                               # %if.then.125
	movq	-16(%rbp), %rdi
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.40, %rdi
	movl	%eax, -420(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-8(%rbp), %rdi
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$24, %edx
	movq	-224(%rbp), %rdi
	movl	%edi, %ecx
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %r8d
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movl	-420(%rbp), %r9d        # 4-byte Reload
	movl	%esi, -436(%rbp)        # 4-byte Spill
	movl	%r9d, %esi
	movq	-432(%rbp), %r10        # 8-byte Reload
	movl	%ecx, -440(%rbp)        # 4-byte Spill
	movq	%r10, %rcx
	movl	%r8d, -444(%rbp)        # 4-byte Spill
	movq	%rax, %r8
	movl	-440(%rbp), %r9d        # 4-byte Reload
	movl	-436(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, (%rsp)
	movl	-444(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 8(%rsp)
	movb	$0, %al
	callq	g_set_error
.LBB3_51:                               # %if.end.131
	jmp	.LBB3_52
.LBB3_52:                               # %out
	cmpq	$0, -24(%rbp)
	je	.LBB3_54
# BB#53:                                # %if.then.133
	movq	-24(%rbp), %rdi
	callq	fclose
	movl	%eax, -448(%rbp)        # 4-byte Spill
.LBB3_54:                               # %if.end.135
	cmpq	$0, -248(%rbp)
	je	.LBB3_56
# BB#55:                                # %if.then.137
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB3_56:                               # %if.end.138
	movl	-36(%rbp), %eax
	addq	$464, %rsp              # imm = 0x1D0
	popq	%rbp
	retq
.Lfunc_end3:
	.size	load_image, .Lfunc_end3-load_image
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	save_image,@function
save_image:                             # @save_image
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	-24(%rbp), %edi
	callq	gimp_drawable_type
	movl	%eax, -44(%rbp)
	movl	-24(%rbp), %edi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB4_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.49, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$0, -4(%rbp)
	jmp	.LBB4_13
.LBB4_2:                                # %if.end
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB4_3
	jmp	.LBB4_14
.LBB4_14:                               # %if.end
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	je	.LBB4_3
	jmp	.LBB4_15
.LBB4_15:                               # %if.end
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jne	.LBB4_4
	jmp	.LBB4_3
.LBB4_3:                                # %sw.bb
	jmp	.LBB4_5
.LBB4_4:                                # %sw.default
	movabsq	$.L.str.50, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$0, -4(%rbp)
	jmp	.LBB4_13
.LBB4_5:                                # %sw.epilog
	movabsq	$.L.str.51, %rsi
	movq	-16(%rbp), %rdi
	callq	fopen
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB4_7
# BB#6:                                 # %if.then.7
	movq	-32(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.52, %rdi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movl	-80(%rbp), %edx         # 4-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	-96(%rbp), %r8          # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB4_13
.LBB4_7:                                # %if.end.15
	movl	$.L.str.53, %eax
	movl	%eax, %edi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	%dl, %al
	callq	gimp_progress_init_printf
	movl	-44(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movl	%ecx, -112(%rbp)        # 4-byte Spill
	je	.LBB4_10
	jmp	.LBB4_16
.LBB4_16:                               # %if.end.15
	movl	-112(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB4_9
	jmp	.LBB4_17
.LBB4_17:                               # %if.end.15
	movl	-112(%rbp), %eax        # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jne	.LBB4_11
	jmp	.LBB4_8
.LBB4_8:                                # %sw.bb.19
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	save_index
	movl	%eax, -48(%rbp)
	jmp	.LBB4_12
.LBB4_9:                                # %sw.bb.21
	movl	$1, %ecx
	movq	-40(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	save_index
	movl	%eax, -48(%rbp)
	jmp	.LBB4_12
.LBB4_10:                               # %sw.bb.23
	movq	-40(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	save_rgb
	movl	%eax, -48(%rbp)
	jmp	.LBB4_12
.LBB4_11:                               # %sw.default.25
	movl	$0, -48(%rbp)
.LBB4_12:                               # %sw.epilog.26
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-40(%rbp), %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	fclose
	movl	-48(%rbp), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB4_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	save_image, .Lfunc_end4-save_image
	.cfi_endproc

	.align	16, 0x90
	.type	read_xwd_header,@function
read_xwd_header:                        # @read_xwd_header
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movl	$0, -20(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-20(%rbp), %rax
	cmpq	$25, %rax
	jae	.LBB5_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	leaq	-24(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	read_card32
	movq	-32(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$8, %rdi
	movq	%rdi, -32(%rbp)
	movq	%rax, (%rsi)
	cmpl	$0, -24(%rbp)
	je	.LBB5_4
# BB#3:                                 # %if.then
	jmp	.LBB5_6
.LBB5_4:                                # %if.end
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_5
.LBB5_5:                                # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB5_1
.LBB5_6:                                # %for.end
	cmpl	$0, -24(%rbp)
	je	.LBB5_8
# BB#7:                                 # %if.then.3
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
.LBB5_8:                                # %if.end.4
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	read_xwd_header, .Lfunc_end5-read_xwd_header
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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
	je	.LBB6_2
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
.LBB6_2:                                # %entry
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
.Lfunc_end6:
	.size	g_message, .Lfunc_end6-g_message
	.cfi_endproc

	.align	16, 0x90
	.type	read_xwd_cols,@function
read_xwd_cols:                          # @read_xwd_cols
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -32(%rbp)
	movq	-16(%rbp), %rdx
	cmpq	$8, 24(%rdx)
	setbe	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -44(%rbp)
	movq	-8(%rbp), %rdi
	callq	ftell
	movq	%rax, -56(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -28(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	152(%rcx), %rax
	jae	.LBB7_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	leaq	-32(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	read_card32
	leaq	-32(%rbp), %rsi
	movslq	-28(%rbp), %rdi
	shlq	$4, %rdi
	addq	-24(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-8(%rbp), %rdi
	callq	read_card16
	leaq	-32(%rbp), %rsi
	movslq	-28(%rbp), %rdi
	shlq	$4, %rdi
	addq	-24(%rbp), %rdi
	movw	%ax, 8(%rdi)
	movq	-8(%rbp), %rdi
	callq	read_card16
	leaq	-32(%rbp), %rsi
	movslq	-28(%rbp), %rdi
	shlq	$4, %rdi
	addq	-24(%rbp), %rdi
	movw	%ax, 10(%rdi)
	movq	-8(%rbp), %rdi
	callq	read_card16
	leaq	-32(%rbp), %rsi
	movslq	-28(%rbp), %rdi
	shlq	$4, %rdi
	addq	-24(%rbp), %rdi
	movw	%ax, 12(%rdi)
	movq	-8(%rbp), %rdi
	callq	read_card8
	leaq	-32(%rbp), %rsi
	movslq	-28(%rbp), %rdi
	shlq	$4, %rdi
	addq	-24(%rbp), %rdi
	movb	%al, 14(%rdi)
	movq	-8(%rbp), %rdi
	callq	read_card8
	movslq	-28(%rbp), %rsi
	shlq	$4, %rsi
	addq	-24(%rbp), %rsi
	movb	%al, 15(%rsi)
	cmpl	$0, -44(%rbp)
	je	.LBB7_5
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB7_1 Depth=1
	movslq	-28(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	cmpq	$255, (%rax)
	jbe	.LBB7_5
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
.LBB7_5:                                # %if.end
                                        #   in Loop: Header=BB7_1 Depth=1
	cmpl	$0, -32(%rbp)
	je	.LBB7_7
# BB#6:                                 # %if.then.26
	jmp	.LBB7_9
.LBB7_7:                                # %if.end.27
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_8
.LBB7_8:                                # %for.inc
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB7_1
.LBB7_9:                                # %for.end
	cmpl	$0, -32(%rbp)
	je	.LBB7_11
# BB#10:                                # %if.then.30
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
.LBB7_11:                               # %if.end.31
	cmpl	$0, -32(%rbp)
	jne	.LBB7_14
# BB#12:                                # %lor.lhs.false
	cmpl	$0, -36(%rbp)
	jne	.LBB7_15
# BB#13:                                # %land.lhs.true.35
	cmpl	$0, -40(%rbp)
	jne	.LBB7_15
.LBB7_14:                               # %if.then.38
	jmp	.LBB7_63
.LBB7_15:                               # %if.end.39
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	fseek
	movl	$0, -40(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -28(%rbp)
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB7_16:                               # %for.cond.41
                                        # =>This Inner Loop Header: Depth=1
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	152(%rcx), %rax
	jae	.LBB7_24
# BB#17:                                # %for.body.46
                                        #   in Loop: Header=BB7_16 Depth=1
	leaq	-32(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	read_card32
	leaq	-32(%rbp), %rsi
	movslq	-28(%rbp), %rdi
	shlq	$4, %rdi
	addq	-24(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-8(%rbp), %rdi
	callq	read_card32
	leaq	-32(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	read_card16
	leaq	-32(%rbp), %rsi
	movslq	-28(%rbp), %rdi
	shlq	$4, %rdi
	addq	-24(%rbp), %rdi
	movw	%ax, 8(%rdi)
	movq	-8(%rbp), %rdi
	callq	read_card16
	leaq	-32(%rbp), %rsi
	movslq	-28(%rbp), %rdi
	shlq	$4, %rdi
	addq	-24(%rbp), %rdi
	movw	%ax, 10(%rdi)
	movq	-8(%rbp), %rdi
	callq	read_card16
	leaq	-32(%rbp), %rsi
	movslq	-28(%rbp), %rdi
	shlq	$4, %rdi
	addq	-24(%rbp), %rdi
	movw	%ax, 12(%rdi)
	movq	-8(%rbp), %rdi
	callq	read_card8
	leaq	-32(%rbp), %rsi
	movslq	-28(%rbp), %rdi
	shlq	$4, %rdi
	addq	-24(%rbp), %rdi
	movb	%al, 14(%rdi)
	movq	-8(%rbp), %rdi
	callq	read_card8
	movslq	-28(%rbp), %rsi
	shlq	$4, %rsi
	addq	-24(%rbp), %rsi
	movb	%al, 15(%rsi)
	cmpl	$0, -44(%rbp)
	je	.LBB7_20
# BB#18:                                # %land.lhs.true.73
                                        #   in Loop: Header=BB7_16 Depth=1
	movslq	-28(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	cmpq	$255, (%rax)
	jbe	.LBB7_20
# BB#19:                                # %if.then.79
                                        #   in Loop: Header=BB7_16 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
.LBB7_20:                               # %if.end.81
                                        #   in Loop: Header=BB7_16 Depth=1
	cmpl	$0, -32(%rbp)
	je	.LBB7_22
# BB#21:                                # %if.then.83
	jmp	.LBB7_24
.LBB7_22:                               # %if.end.84
                                        #   in Loop: Header=BB7_16 Depth=1
	jmp	.LBB7_23
.LBB7_23:                               # %for.inc.85
                                        #   in Loop: Header=BB7_16 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB7_16
.LBB7_24:                               # %for.end.87
	cmpl	$0, -32(%rbp)
	je	.LBB7_26
# BB#25:                                # %if.then.89
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
.LBB7_26:                               # %if.end.91
	cmpl	$0, -32(%rbp)
	jne	.LBB7_29
# BB#27:                                # %lor.lhs.false.93
	cmpl	$0, -36(%rbp)
	jne	.LBB7_30
# BB#28:                                # %land.lhs.true.96
	cmpl	$0, -40(%rbp)
	jne	.LBB7_30
.LBB7_29:                               # %if.then.99
	jmp	.LBB7_63
.LBB7_30:                               # %if.end.100
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	fseek
	movl	$0, -40(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -28(%rbp)
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB7_31:                               # %for.cond.102
                                        # =>This Inner Loop Header: Depth=1
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	152(%rcx), %rax
	jae	.LBB7_39
# BB#32:                                # %for.body.107
                                        #   in Loop: Header=BB7_31 Depth=1
	leaq	-32(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	read_card32
	leaq	-32(%rbp), %rsi
	movslq	-28(%rbp), %rdi
	shlq	$4, %rdi
	addq	-24(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-8(%rbp), %rdi
	callq	read_card16
	leaq	-32(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movw	%ax, -78(%rbp)          # 2-byte Spill
	callq	read_card16
	leaq	-32(%rbp), %rsi
	movslq	-28(%rbp), %rdi
	shlq	$4, %rdi
	addq	-24(%rbp), %rdi
	movw	%ax, 8(%rdi)
	movq	-8(%rbp), %rdi
	callq	read_card16
	leaq	-32(%rbp), %rsi
	movslq	-28(%rbp), %rdi
	shlq	$4, %rdi
	addq	-24(%rbp), %rdi
	movw	%ax, 10(%rdi)
	movq	-8(%rbp), %rdi
	callq	read_card16
	leaq	-32(%rbp), %rsi
	movslq	-28(%rbp), %rdi
	shlq	$4, %rdi
	addq	-24(%rbp), %rdi
	movw	%ax, 12(%rdi)
	movq	-8(%rbp), %rdi
	callq	read_card8
	leaq	-32(%rbp), %rsi
	movslq	-28(%rbp), %rdi
	shlq	$4, %rdi
	addq	-24(%rbp), %rdi
	movb	%al, 14(%rdi)
	movq	-8(%rbp), %rdi
	callq	read_card8
	movslq	-28(%rbp), %rsi
	shlq	$4, %rsi
	addq	-24(%rbp), %rsi
	movb	%al, 15(%rsi)
	cmpl	$0, -44(%rbp)
	je	.LBB7_35
# BB#33:                                # %land.lhs.true.134
                                        #   in Loop: Header=BB7_31 Depth=1
	movslq	-28(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	cmpq	$255, (%rax)
	jbe	.LBB7_35
# BB#34:                                # %if.then.140
                                        #   in Loop: Header=BB7_31 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
.LBB7_35:                               # %if.end.142
                                        #   in Loop: Header=BB7_31 Depth=1
	cmpl	$0, -32(%rbp)
	je	.LBB7_37
# BB#36:                                # %if.then.144
	jmp	.LBB7_39
.LBB7_37:                               # %if.end.145
                                        #   in Loop: Header=BB7_31 Depth=1
	jmp	.LBB7_38
.LBB7_38:                               # %for.inc.146
                                        #   in Loop: Header=BB7_31 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB7_31
.LBB7_39:                               # %for.end.148
	cmpl	$0, -32(%rbp)
	je	.LBB7_41
# BB#40:                                # %if.then.150
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
.LBB7_41:                               # %if.end.152
	cmpl	$0, -32(%rbp)
	jne	.LBB7_44
# BB#42:                                # %lor.lhs.false.154
	cmpl	$0, -36(%rbp)
	jne	.LBB7_45
# BB#43:                                # %land.lhs.true.157
	cmpl	$0, -40(%rbp)
	jne	.LBB7_45
.LBB7_44:                               # %if.then.160
	jmp	.LBB7_63
.LBB7_45:                               # %if.end.161
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	fseek
	movl	$0, -40(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -28(%rbp)
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB7_46:                               # %for.cond.163
                                        # =>This Inner Loop Header: Depth=1
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	152(%rcx), %rax
	jae	.LBB7_54
# BB#47:                                # %for.body.168
                                        #   in Loop: Header=BB7_46 Depth=1
	leaq	-32(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	read_card32
	leaq	-32(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	read_card32
	leaq	-32(%rbp), %rsi
	movslq	-28(%rbp), %rdi
	shlq	$4, %rdi
	addq	-24(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-8(%rbp), %rdi
	callq	read_card32
	leaq	-32(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	read_card32
	leaq	-32(%rbp), %rsi
	movw	%ax, %cx
	movslq	-28(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	movw	%cx, 8(%rax)
	movq	-8(%rbp), %rdi
	callq	read_card32
	leaq	-32(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	read_card32
	leaq	-32(%rbp), %rsi
	movw	%ax, %cx
	movslq	-28(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	movw	%cx, 10(%rax)
	movq	-8(%rbp), %rdi
	callq	read_card32
	leaq	-32(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	read_card32
	leaq	-32(%rbp), %rsi
	movw	%ax, %cx
	movslq	-28(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	movw	%cx, 12(%rax)
	movq	-8(%rbp), %rdi
	callq	read_card8
	leaq	-32(%rbp), %rsi
	movslq	-28(%rbp), %rdi
	shlq	$4, %rdi
	addq	-24(%rbp), %rdi
	movb	%al, 14(%rdi)
	movq	-8(%rbp), %rdi
	callq	read_card8
	leaq	-32(%rbp), %rsi
	movslq	-28(%rbp), %rdi
	shlq	$4, %rdi
	addq	-24(%rbp), %rdi
	movb	%al, 15(%rdi)
	movq	-8(%rbp), %rdi
	callq	read_card16
	leaq	-32(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movw	%ax, -122(%rbp)         # 2-byte Spill
	callq	read_card32
	cmpl	$0, -44(%rbp)
	movq	%rax, -136(%rbp)        # 8-byte Spill
	je	.LBB7_50
# BB#48:                                # %land.lhs.true.203
                                        #   in Loop: Header=BB7_46 Depth=1
	movslq	-28(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	cmpq	$255, (%rax)
	jbe	.LBB7_50
# BB#49:                                # %if.then.209
                                        #   in Loop: Header=BB7_46 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
.LBB7_50:                               # %if.end.211
                                        #   in Loop: Header=BB7_46 Depth=1
	cmpl	$0, -32(%rbp)
	je	.LBB7_52
# BB#51:                                # %if.then.213
	jmp	.LBB7_54
.LBB7_52:                               # %if.end.214
                                        #   in Loop: Header=BB7_46 Depth=1
	jmp	.LBB7_53
.LBB7_53:                               # %for.inc.215
                                        #   in Loop: Header=BB7_46 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB7_46
.LBB7_54:                               # %for.end.217
	cmpl	$0, -36(%rbp)
	jne	.LBB7_56
# BB#55:                                # %lor.lhs.false.219
	cmpl	$0, -40(%rbp)
	je	.LBB7_61
.LBB7_56:                               # %if.then.221
	movabsq	$.L.str.41, %rdi
	movb	$0, %al
	callq	printf
	cmpl	$0, -36(%rbp)
	movl	%eax, -140(%rbp)        # 4-byte Spill
	je	.LBB7_58
# BB#57:                                # %if.then.224
	movabsq	$.L.str.42, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -144(%rbp)        # 4-byte Spill
.LBB7_58:                               # %if.end.226
	cmpl	$0, -40(%rbp)
	je	.LBB7_60
# BB#59:                                # %if.then.228
	movabsq	$.L.str.43, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB7_60:                               # %if.end.230
	movabsq	$.L.str.44, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -152(%rbp)        # 4-byte Spill
.LBB7_61:                               # %if.end.232
	cmpl	$0, -32(%rbp)
	je	.LBB7_63
# BB#62:                                # %if.then.234
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
.LBB7_63:                               # %if.end.236
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	read_xwd_cols, .Lfunc_end7-read_xwd_cols
	.cfi_endproc

	.align	16, 0x90
	.type	load_xwd_f2_d1_b1,@function
load_xwd_f2_d1_b1:                      # @load_xwd_f2_d1_b1
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
	subq	$2288, %rsp             # imm = 0x8F0
	movl	$2, %eax
	leaq	-2168(%rbp), %r8
	leaq	-2232(%rbp), %r9
	leaq	-2224(%rbp), %r10
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	$0, -2164(%rbp)
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movl	%ecx, %r11d
	movl	%r11d, -64(%rbp)
	movq	-24(%rbp), %rcx
	movq	40(%rcx), %rcx
	movl	%ecx, %r11d
	movl	%r11d, -68(%rbp)
	movq	-8(%rbp), %rdi
	movl	-64(%rbp), %esi
	movl	-68(%rbp), %edx
	movl	%eax, %ecx
	movq	%r10, (%rsp)
	callq	create_new_image
	movl	%eax, -2172(%rbp)
	callq	gimp_tile_height
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	imull	-64(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -2152(%rbp)
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	callq	g_malloc_n
	movq	%rax, -2160(%rbp)
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, -88(%rbp)
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movslq	-88(%rbp), %rsi
	cmpq	%rsi, %rax
	jae	.LBB8_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, -88(%rbp)
.LBB8_2:                                # %if.end
	cmpl	$2, -88(%rbp)
	jge	.LBB8_4
# BB#3:                                 # %if.then.13
	movl	-2172(%rbp), %edi
	callq	set_bw_color_table
	jmp	.LBB8_5
.LBB8_4:                                # %if.else
	movl	-2172(%rbp), %edi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	set_color_table
.LBB8_5:                                # %if.end.14
	leaq	-2144(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 72(%rax)
	jne	.LBB8_15
# BB#6:                                 # %if.then.15
	movl	$0, -84(%rbp)
.LBB8_7:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_9 Depth 2
	cmpl	$256, -84(%rbp)         # imm = 0x100
	jge	.LBB8_14
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB8_7 Depth=1
	movl	$0, -80(%rbp)
.LBB8_9:                                # %for.cond.18
                                        #   Parent Loop BB8_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$8, -80(%rbp)
	jge	.LBB8_12
# BB#10:                                # %for.body.21
                                        #   in Loop: Header=BB8_9 Depth=2
	movl	$1, %eax
	movl	-84(%rbp), %ecx
	movl	-80(%rbp), %edx
	movl	%ecx, -2236(%rbp)       # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	-2236(%rbp), %edx       # 4-byte Reload
	andl	%eax, %edx
	cmpl	$0, %edx
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movb	%al, %cl
	movq	-96(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, -96(%rbp)
	movb	%cl, (%rsi)
# BB#11:                                # %for.inc
                                        #   in Loop: Header=BB8_9 Depth=2
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB8_9
.LBB8_12:                               # %for.end
                                        #   in Loop: Header=BB8_7 Depth=1
	jmp	.LBB8_13
.LBB8_13:                               # %for.inc.25
                                        #   in Loop: Header=BB8_7 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB8_7
.LBB8_14:                               # %for.end.27
	jmp	.LBB8_24
.LBB8_15:                               # %if.else.28
	movl	$0, -84(%rbp)
.LBB8_16:                               # %for.cond.29
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_18 Depth 2
	cmpl	$256, -84(%rbp)         # imm = 0x100
	jge	.LBB8_23
# BB#17:                                # %for.body.32
                                        #   in Loop: Header=BB8_16 Depth=1
	movl	$7, -80(%rbp)
.LBB8_18:                               # %for.cond.33
                                        #   Parent Loop BB8_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -80(%rbp)
	jl	.LBB8_21
# BB#19:                                # %for.body.36
                                        #   in Loop: Header=BB8_18 Depth=2
	movl	$1, %eax
	movl	-84(%rbp), %ecx
	movl	-80(%rbp), %edx
	movl	%ecx, -2240(%rbp)       # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	-2240(%rbp), %edx       # 4-byte Reload
	andl	%eax, %edx
	cmpl	$0, %edx
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movb	%al, %cl
	movq	-96(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, -96(%rbp)
	movb	%cl, (%rsi)
# BB#20:                                # %for.inc.43
                                        #   in Loop: Header=BB8_18 Depth=2
	movl	-80(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB8_18
.LBB8_21:                               # %for.end.44
                                        #   in Loop: Header=BB8_16 Depth=1
	jmp	.LBB8_22
.LBB8_22:                               # %for.inc.45
                                        #   in Loop: Header=BB8_16 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB8_16
.LBB8_23:                               # %for.end.47
	jmp	.LBB8_24
.LBB8_24:                               # %if.end.48
	movq	-2152(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -72(%rbp)
	movl	$0, -80(%rbp)
.LBB8_25:                               # %for.cond.49
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_35 Depth 2
                                        #     Child Loop BB8_31 Depth 2
                                        #     Child Loop BB8_40 Depth 2
	movl	-80(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB8_53
# BB#26:                                # %for.body.52
                                        #   in Loop: Header=BB8_25 Depth=1
	movl	$1, %eax
	movl	%eax, %edx
	movq	-2160(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movq	96(%rcx), %rsi
	movq	-16(%rbp), %rcx
	callq	fread
	cmpq	$1, %rax
	je	.LBB8_28
# BB#27:                                # %if.then.57
	movl	$1, -2164(%rbp)
	jmp	.LBB8_53
.LBB8_28:                               # %if.end.58
                                        #   in Loop: Header=BB8_25 Depth=1
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	-24(%rbp), %rcx
	cmpq	56(%rcx), %rax
	je	.LBB8_39
# BB#29:                                # %if.then.62
                                        #   in Loop: Header=BB8_25 Depth=1
	movq	-2160(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rcx
	subq	$16, %rcx
	movq	%rax, -2248(%rbp)       # 8-byte Spill
	movq	%rcx, -2256(%rbp)       # 8-byte Spill
	je	.LBB8_30
	jmp	.LBB8_59
.LBB8_59:                               # %if.then.62
                                        #   in Loop: Header=BB8_25 Depth=1
	movq	-2248(%rbp), %rax       # 8-byte Reload
	subq	$32, %rax
	movq	%rax, -2264(%rbp)       # 8-byte Spill
	je	.LBB8_34
	jmp	.LBB8_38
.LBB8_30:                               # %sw.bb
                                        #   in Loop: Header=BB8_25 Depth=1
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, -84(%rbp)
.LBB8_31:                               # %while.cond
                                        #   Parent Loop BB8_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -84(%rbp)
	jle	.LBB8_33
# BB#32:                                # %while.body
                                        #   in Loop: Header=BB8_31 Depth=2
	movq	-56(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -57(%rbp)
	movq	-56(%rbp), %rax
	movb	1(%rax), %cl
	movb	%cl, -58(%rbp)
	movb	-58(%rbp), %cl
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -56(%rbp)
	movb	%cl, (%rax)
	movb	-57(%rbp), %cl
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -56(%rbp)
	movb	%cl, (%rax)
	movl	-84(%rbp), %esi
	subl	$2, %esi
	movl	%esi, -84(%rbp)
	jmp	.LBB8_31
.LBB8_33:                               # %while.end
                                        #   in Loop: Header=BB8_25 Depth=1
	jmp	.LBB8_38
.LBB8_34:                               # %sw.bb.70
                                        #   in Loop: Header=BB8_25 Depth=1
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, -84(%rbp)
.LBB8_35:                               # %while.cond.73
                                        #   Parent Loop BB8_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -84(%rbp)
	jle	.LBB8_37
# BB#36:                                # %while.body.76
                                        #   in Loop: Header=BB8_35 Depth=2
	movq	-56(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -57(%rbp)
	movq	-56(%rbp), %rax
	movb	1(%rax), %cl
	movb	%cl, -58(%rbp)
	movq	-56(%rbp), %rax
	movb	2(%rax), %cl
	movb	%cl, -59(%rbp)
	movq	-56(%rbp), %rax
	movb	3(%rax), %cl
	movb	%cl, -60(%rbp)
	movb	-60(%rbp), %cl
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -56(%rbp)
	movb	%cl, (%rax)
	movb	-59(%rbp), %cl
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -56(%rbp)
	movb	%cl, (%rax)
	movb	-58(%rbp), %cl
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -56(%rbp)
	movb	%cl, (%rax)
	movb	-57(%rbp), %cl
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -56(%rbp)
	movb	%cl, (%rax)
	movl	-84(%rbp), %esi
	subl	$4, %esi
	movl	%esi, -84(%rbp)
	jmp	.LBB8_35
.LBB8_37:                               # %while.end.86
                                        #   in Loop: Header=BB8_25 Depth=1
	jmp	.LBB8_38
.LBB8_38:                               # %sw.epilog
                                        #   in Loop: Header=BB8_25 Depth=1
	jmp	.LBB8_39
.LBB8_39:                               # %if.end.87
                                        #   in Loop: Header=BB8_25 Depth=1
	movq	-2160(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-64(%rbp), %ecx
	movl	%ecx, -84(%rbp)
.LBB8_40:                               # %while.cond.88
                                        #   Parent Loop BB8_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$8, -84(%rbp)
	jl	.LBB8_42
# BB#41:                                # %while.body.91
                                        #   in Loop: Header=BB8_40 Depth=2
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, -36(%rbp)
	movq	-48(%rbp), %rax
	movl	-36(%rbp), %edx
	shll	$3, %edx
	movslq	%edx, %rcx
	movq	-2144(%rbp,%rcx), %rcx
	movq	%rcx, (%rax)
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -48(%rbp)
	movl	-84(%rbp), %edx
	subl	$8, %edx
	movl	%edx, -84(%rbp)
	jmp	.LBB8_40
.LBB8_42:                               # %while.end.98
                                        #   in Loop: Header=BB8_25 Depth=1
	cmpl	$0, -84(%rbp)
	jle	.LBB8_44
# BB#43:                                # %if.then.101
                                        #   in Loop: Header=BB8_25 Depth=1
	leaq	-2144(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rcx), %esi
	movl	%esi, -36(%rbp)
	movq	-48(%rbp), %rdi
	movl	-36(%rbp), %esi
	shll	$3, %esi
	movslq	%esi, %rcx
	addq	%rcx, %rax
	movslq	-84(%rbp), %rdx
	movq	%rax, %rsi
	callq	memcpy
	movl	-84(%rbp), %r8d
	movq	-48(%rbp), %rax
	movslq	%r8d, %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
.LBB8_44:                               # %if.end.111
                                        #   in Loop: Header=BB8_25 Depth=1
	movl	$20, %eax
	movl	-72(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -72(%rbp)
	movl	-80(%rbp), %ecx
	movl	%eax, -2268(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-2268(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB8_46
# BB#45:                                # %if.then.115
                                        #   in Loop: Header=BB8_25 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	-68(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -2272(%rbp)       # 4-byte Spill
.LBB8_46:                               # %if.end.120
                                        #   in Loop: Header=BB8_25 Depth=1
	movl	-72(%rbp), %eax
	cmpl	-76(%rbp), %eax
	je	.LBB8_48
# BB#47:                                # %lor.lhs.false
                                        #   in Loop: Header=BB8_25 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	cmpl	-68(%rbp), %eax
	jne	.LBB8_49
.LBB8_48:                               # %if.then.126
                                        #   in Loop: Header=BB8_25 Depth=1
	leaq	-2224(%rbp), %rdi
	xorl	%edx, %edx
	movq	-2152(%rbp), %rsi
	movl	-80(%rbp), %eax
	subl	-72(%rbp), %eax
	addl	$1, %eax
	movl	-64(%rbp), %r8d
	movl	-72(%rbp), %r9d
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_set_rect
	movl	$0, -72(%rbp)
	movq	-2152(%rbp), %rsi
	movq	%rsi, -48(%rbp)
.LBB8_49:                               # %if.end.129
                                        #   in Loop: Header=BB8_25 Depth=1
	cmpl	$0, -2164(%rbp)
	je	.LBB8_51
# BB#50:                                # %if.then.131
	jmp	.LBB8_53
.LBB8_51:                               # %if.end.132
                                        #   in Loop: Header=BB8_25 Depth=1
	jmp	.LBB8_52
.LBB8_52:                               # %for.inc.133
                                        #   in Loop: Header=BB8_25 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB8_25
.LBB8_53:                               # %for.end.135
	movq	-2152(%rbp), %rdi
	callq	g_free
	movq	-2160(%rbp), %rdi
	callq	g_free
	cmpl	$0, -2164(%rbp)
	je	.LBB8_55
# BB#54:                                # %if.then.137
	movabsq	$.L.str.45, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
.LBB8_55:                               # %if.end.139
	movq	-2232(%rbp), %rdi
	callq	gimp_drawable_flush
	cmpl	$0, -2164(%rbp)
	je	.LBB8_57
# BB#56:                                # %cond.true
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -2276(%rbp)       # 4-byte Spill
	jmp	.LBB8_58
.LBB8_57:                               # %cond.false
	movl	-2172(%rbp), %eax
	movl	%eax, -2276(%rbp)       # 4-byte Spill
.LBB8_58:                               # %cond.end
	movl	-2276(%rbp), %eax       # 4-byte Reload
	addq	$2288, %rsp             # imm = 0x8F0
	popq	%rbp
	retq
.Lfunc_end8:
	.size	load_xwd_f2_d1_b1, .Lfunc_end8-load_xwd_f2_d1_b1
	.cfi_endproc

	.align	16, 0x90
	.type	load_xwd_f1_d24_b1,@function
load_xwd_f1_d24_b1:                     # @load_xwd_f1_d24_b1
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
	subq	$9600, %rsp             # imm = 0x2580
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	$0, -9468(%rbp)
	movq	-32(%rbp), %rcx
	movq	96(%rcx), %rdi
	callq	g_malloc
	movq	%rax, -1240(%rbp)
	cmpq	$0, -1240(%rbp)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB9_129
.LBB9_2:                                # %if.end
	movl	$3, %eax
	movl	$1, %ecx
	movq	-32(%rbp), %rdx
	movq	32(%rdx), %rdx
	movl	%edx, %esi
	movl	%esi, -64(%rbp)
	movq	-32(%rbp), %rdx
	movq	40(%rdx), %rdx
	movl	%edx, %esi
	movl	%esi, -68(%rbp)
	movq	-32(%rbp), %rdx
	cmpq	$8, 24(%rdx)
	setbe	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	movl	%esi, -100(%rbp)
	cmpl	$0, -100(%rbp)
	cmovnel	%ecx, %eax
	movl	%eax, -104(%rbp)
	movl	$0, -76(%rbp)
.LBB9_3:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_5 Depth 2
	cmpl	$256, -76(%rbp)         # imm = 0x100
	jge	.LBB9_12
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB9_3 Depth=1
	movb	$0, -58(%rbp)
	movl	$0, -72(%rbp)
.LBB9_5:                                # %for.cond.6
                                        #   Parent Loop BB9_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$8, -72(%rbp)
	jge	.LBB9_10
# BB#6:                                 # %for.body.9
                                        #   in Loop: Header=BB9_5 Depth=2
	movl	$1, %eax
	movzbl	-58(%rbp), %ecx
	shll	$1, %ecx
	movb	%cl, %dl
	movb	%dl, -58(%rbp)
	movl	-76(%rbp), %ecx
	movl	-72(%rbp), %esi
	movl	%ecx, -9540(%rbp)       # 4-byte Spill
	movl	%esi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	-9540(%rbp), %esi       # 4-byte Reload
	andl	%eax, %esi
	cmpl	$0, %esi
	je	.LBB9_8
# BB#7:                                 # %if.then.14
                                        #   in Loop: Header=BB9_5 Depth=2
	movzbl	-58(%rbp), %eax
	orl	$1, %eax
	movb	%al, %cl
	movb	%cl, -58(%rbp)
.LBB9_8:                                # %if.end.17
                                        #   in Loop: Header=BB9_5 Depth=2
	jmp	.LBB9_9
.LBB9_9:                                # %for.inc
                                        #   in Loop: Header=BB9_5 Depth=2
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB9_5
.LBB9_10:                               # %for.end
                                        #   in Loop: Header=BB9_3 Depth=1
	movb	-58(%rbp), %al
	movslq	-76(%rbp), %rcx
	movb	%al, -1232(%rbp,%rcx)
# BB#11:                                # %for.inc.18
                                        #   in Loop: Header=BB9_3 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB9_3
.LBB9_12:                               # %for.end.20
	movq	-32(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-32(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-32(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -184(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.LBB9_14
# BB#13:                                # %if.then.23
	movq	$16711680, -168(%rbp)   # imm = 0xFF0000
.LBB9_14:                               # %if.end.24
	cmpq	$0, -176(%rbp)
	jne	.LBB9_16
# BB#15:                                # %if.then.27
	movq	$65280, -176(%rbp)      # imm = 0xFF00
.LBB9_16:                               # %if.end.28
	cmpq	$0, -184(%rbp)
	jne	.LBB9_18
# BB#17:                                # %if.then.31
	movq	$255, -184(%rbp)
.LBB9_18:                               # %if.end.32
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$16711680, -168(%rbp)   # imm = 0xFF0000
	movb	%cl, -9541(%rbp)        # 1-byte Spill
	jne	.LBB9_21
# BB#19:                                # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$65280, -176(%rbp)      # imm = 0xFF00
	movb	%cl, -9541(%rbp)        # 1-byte Spill
	jne	.LBB9_21
# BB#20:                                # %land.rhs
	cmpq	$255, -184(%rbp)
	sete	%al
	movb	%al, -9541(%rbp)        # 1-byte Spill
.LBB9_21:                               # %land.end
	movb	-9541(%rbp), %al        # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -136(%rbp)
	movl	$0, -196(%rbp)
	movl	$0, -192(%rbp)
	movl	$0, -188(%rbp)
	cmpl	$0, -136(%rbp)
	jne	.LBB9_57
# BB#22:                                # %if.then.40
	jmp	.LBB9_23
.LBB9_23:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %eax
	movl	-188(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movslq	%eax, %rdx
	andq	-168(%rbp), %rdx
	cmpq	$0, %rdx
	jne	.LBB9_25
# BB#24:                                # %while.body
                                        #   in Loop: Header=BB9_23 Depth=1
	movl	-188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -188(%rbp)
	jmp	.LBB9_23
.LBB9_25:                               # %while.end
	jmp	.LBB9_26
.LBB9_26:                               # %while.cond.47
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %eax
	movl	-192(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movslq	%eax, %rdx
	andq	-176(%rbp), %rdx
	cmpq	$0, %rdx
	jne	.LBB9_28
# BB#27:                                # %while.body.53
                                        #   in Loop: Header=BB9_26 Depth=1
	movl	-192(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -192(%rbp)
	jmp	.LBB9_26
.LBB9_28:                               # %while.end.55
	jmp	.LBB9_29
.LBB9_29:                               # %while.cond.56
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %eax
	movl	-196(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movslq	%eax, %rdx
	andq	-184(%rbp), %rdx
	cmpq	$0, %rdx
	jne	.LBB9_31
# BB#30:                                # %while.body.62
                                        #   in Loop: Header=BB9_29 Depth=1
	movl	-196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB9_29
.LBB9_31:                               # %while.end.64
	movl	$0, -108(%rbp)
.LBB9_32:                               # %while.cond.65
                                        # =>This Inner Loop Header: Depth=1
	movq	-168(%rbp), %rax
	movl	-188(%rbp), %ecx
	addl	-108(%rbp), %ecx
	movl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
                                        # kill: CL<def> RCX<kill>
	shrq	%cl, %rax
	cmpq	$0, %rax
	je	.LBB9_34
# BB#33:                                # %while.body.67
                                        #   in Loop: Header=BB9_32 Depth=1
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB9_32
.LBB9_34:                               # %while.end.69
	movl	$1, %eax
	movl	-108(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	subl	$1, %eax
	movl	%eax, -108(%rbp)
	movl	$0, -112(%rbp)
.LBB9_35:                               # %while.cond.71
                                        # =>This Inner Loop Header: Depth=1
	movq	-176(%rbp), %rax
	movl	-192(%rbp), %ecx
	addl	-112(%rbp), %ecx
	movl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
                                        # kill: CL<def> RCX<kill>
	shrq	%cl, %rax
	cmpq	$0, %rax
	je	.LBB9_37
# BB#36:                                # %while.body.76
                                        #   in Loop: Header=BB9_35 Depth=1
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB9_35
.LBB9_37:                               # %while.end.78
	movl	$1, %eax
	movl	-112(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	subl	$1, %eax
	movl	%eax, -112(%rbp)
	movl	$0, -116(%rbp)
.LBB9_38:                               # %while.cond.81
                                        # =>This Inner Loop Header: Depth=1
	movq	-184(%rbp), %rax
	movl	-196(%rbp), %ecx
	addl	-116(%rbp), %ecx
	movl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
                                        # kill: CL<def> RCX<kill>
	shrq	%cl, %rax
	cmpq	$0, %rax
	je	.LBB9_40
# BB#39:                                # %while.body.86
                                        #   in Loop: Header=BB9_38 Depth=1
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB9_38
.LBB9_40:                               # %while.end.88
	movl	$1, %eax
	movl	-116(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	subl	$1, %eax
	movl	%eax, -116(%rbp)
	movslq	-108(%rbp), %rdx
	cmpq	$256, %rdx              # imm = 0x100
	ja	.LBB9_43
# BB#41:                                # %lor.lhs.false
	movslq	-112(%rbp), %rax
	cmpq	$256, %rax              # imm = 0x100
	ja	.LBB9_43
# BB#42:                                # %lor.lhs.false.97
	movslq	-116(%rbp), %rax
	cmpq	$256, %rax              # imm = 0x100
	jbe	.LBB9_44
.LBB9_43:                               # %if.then.101
	movq	-48(%rbp), %rdi
	movq	%rdi, -9552(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.48, %rdi
	movl	%eax, -9556(%rbp)       # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -9568(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$24, %edx
	movq	-9552(%rbp), %rdi       # 8-byte Reload
	movl	-9556(%rbp), %esi       # 4-byte Reload
	movq	-9568(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB9_129
.LBB9_44:                               # %if.end.105
	movl	$0, -120(%rbp)
.LBB9_45:                               # %for.cond.106
                                        # =>This Inner Loop Header: Depth=1
	movl	-120(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jg	.LBB9_48
# BB#46:                                # %for.body.109
                                        #   in Loop: Header=BB9_45 Depth=1
	imull	$255, -120(%rbp), %eax
	cltd
	idivl	-108(%rbp)
	movb	%al, %cl
	movslq	-120(%rbp), %rsi
	movb	%cl, -464(%rbp,%rsi)
# BB#47:                                # %for.inc.113
                                        #   in Loop: Header=BB9_45 Depth=1
	movl	-120(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -120(%rbp)
	jmp	.LBB9_45
.LBB9_48:                               # %for.end.115
	movl	$0, -124(%rbp)
.LBB9_49:                               # %for.cond.116
                                        # =>This Inner Loop Header: Depth=1
	movl	-124(%rbp), %eax
	cmpl	-112(%rbp), %eax
	jg	.LBB9_52
# BB#50:                                # %for.body.119
                                        #   in Loop: Header=BB9_49 Depth=1
	imull	$255, -124(%rbp), %eax
	cltd
	idivl	-112(%rbp)
	movb	%al, %cl
	movslq	-124(%rbp), %rsi
	movb	%cl, -720(%rbp,%rsi)
# BB#51:                                # %for.inc.125
                                        #   in Loop: Header=BB9_49 Depth=1
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB9_49
.LBB9_52:                               # %for.end.127
	movl	$0, -128(%rbp)
.LBB9_53:                               # %for.cond.128
                                        # =>This Inner Loop Header: Depth=1
	movl	-128(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jg	.LBB9_56
# BB#54:                                # %for.body.131
                                        #   in Loop: Header=BB9_53 Depth=1
	imull	$255, -128(%rbp), %eax
	cltd
	idivl	-116(%rbp)
	movb	%al, %cl
	movslq	-128(%rbp), %rsi
	movb	%cl, -976(%rbp,%rsi)
# BB#55:                                # %for.inc.137
                                        #   in Loop: Header=BB9_53 Depth=1
	movl	-128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -128(%rbp)
	jmp	.LBB9_53
.LBB9_56:                               # %for.end.139
	jmp	.LBB9_57
.LBB9_57:                               # %if.end.140
	leaq	-9472(%rbp), %r8
	leaq	-9536(%rbp), %r9
	leaq	-9528(%rbp), %rax
	xorl	%ecx, %ecx
	movl	$2, %edx
	movq	-16(%rbp), %rdi
	movl	-64(%rbp), %esi
	movl	-68(%rbp), %r10d
	cmpl	$0, -100(%rbp)
	cmovnel	%edx, %ecx
	movl	%r10d, %edx
	movq	%rax, (%rsp)
	callq	create_new_image
	movl	%eax, -9476(%rbp)
	callq	gimp_tile_height
	movl	%eax, -88(%rbp)
	movl	-88(%rbp), %eax
	imull	-64(%rbp), %eax
	imull	-104(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc
	movq	%rax, -1256(%rbp)
	movq	-32(%rbp), %rax
	movq	144(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, -132(%rbp)
	movq	-32(%rbp), %rax
	movq	152(%rax), %rax
	movslq	-132(%rbp), %rdi
	cmpq	%rdi, %rax
	jae	.LBB9_59
# BB#58:                                # %if.then.153
	movq	-32(%rbp), %rax
	movq	152(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, -132(%rbp)
.LBB9_59:                               # %if.end.156
	cmpl	$0, -100(%rbp)
	je	.LBB9_64
# BB#60:                                # %if.then.158
	cmpl	$2, -132(%rbp)
	jge	.LBB9_62
# BB#61:                                # %if.then.161
	movl	-9476(%rbp), %edi
	callq	set_bw_color_table
	jmp	.LBB9_63
.LBB9_62:                               # %if.else
	movl	-9476(%rbp), %edi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	set_color_table
.LBB9_63:                               # %if.end.162
	jmp	.LBB9_65
.LBB9_64:                               # %if.else.163
	leaq	-9464(%rbp), %rdx
	movl	-132(%rbp), %edi
	movq	-40(%rbp), %rsi
	callq	set_pixelmap
	movl	%eax, -9572(%rbp)       # 4-byte Spill
.LBB9_65:                               # %if.end.165
	movq	-32(%rbp), %rax
	cmpq	$0, 72(%rax)
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movb	%dl, %cl
	movb	%cl, -59(%rbp)
	movq	-24(%rbp), %rdi
	callq	ftell
	movq	%rax, -144(%rbp)
	movl	$0, -92(%rbp)
.LBB9_66:                               # %for.cond.169
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_70 Depth 2
                                        #       Child Loop BB9_75 Depth 3
                                        #         Child Loop BB9_81 Depth 4
                                        #         Child Loop BB9_88 Depth 4
                                        #         Child Loop BB9_94 Depth 4
                                        #     Child Loop BB9_109 Depth 2
                                        #       Child Loop BB9_111 Depth 3
	movl	-92(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB9_123
# BB#67:                                # %for.body.172
                                        #   in Loop: Header=BB9_66 Depth=1
	xorl	%esi, %esi
	movq	-1256(%rbp), %rdi
	movl	-64(%rbp), %eax
	imull	-88(%rbp), %eax
	imull	-104(%rbp), %eax
	movslq	%eax, %rdx
	callq	memset
	movl	-92(%rbp), %eax
	addl	-88(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -96(%rbp)
	movl	-96(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jl	.LBB9_69
# BB#68:                                # %if.then.180
                                        #   in Loop: Header=BB9_66 Depth=1
	movl	-68(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -96(%rbp)
.LBB9_69:                               # %if.end.182
                                        #   in Loop: Header=BB9_66 Depth=1
	movl	$0, -80(%rbp)
.LBB9_70:                               # %for.cond.183
                                        #   Parent Loop BB9_66 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_75 Depth 3
                                        #         Child Loop BB9_81 Depth 4
                                        #         Child Loop BB9_88 Depth 4
                                        #         Child Loop BB9_94 Depth 4
	movslq	-80(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	24(%rcx), %rax
	jae	.LBB9_107
# BB#71:                                # %for.body.188
                                        #   in Loop: Header=BB9_70 Depth=2
	xorl	%edx, %edx
	movq	-1256(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-144(%rbp), %rax
	movl	-80(%rbp), %ecx
	imull	-68(%rbp), %ecx
	movslq	%ecx, %rsi
	movq	-32(%rbp), %rdi
	imulq	96(%rdi), %rsi
	addq	%rsi, %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movslq	-92(%rbp), %rsi
	movq	-32(%rbp), %rdi
	imulq	96(%rdi), %rsi
	addq	%rsi, %rax
	movq	%rax, -160(%rbp)
	movq	-24(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	fseek
	cmpl	$0, -100(%rbp)
	movl	%eax, -9576(%rbp)       # 4-byte Spill
	je	.LBB9_73
# BB#72:                                # %if.then.200
                                        #   in Loop: Header=BB9_70 Depth=2
	movl	$1, %eax
	movq	-32(%rbp), %rcx
	movq	24(%rcx), %rcx
	subq	$1, %rcx
	movslq	-80(%rbp), %rdx
	subq	%rdx, %rcx
	movl	%ecx, %esi
	movl	%esi, -84(%rbp)
	movl	-84(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movb	%al, %cl
	movb	%cl, -57(%rbp)
	jmp	.LBB9_74
.LBB9_73:                               # %if.else.208
                                        #   in Loop: Header=BB9_70 Depth=2
	movl	$1, %eax
	movl	$8, %ecx
	movl	$2, %edx
	movq	-32(%rbp), %rsi
	movq	24(%rsi), %rsi
	subq	$1, %rsi
	movslq	-80(%rbp), %rdi
	subq	%rdi, %rsi
	movl	%esi, %r8d
	movl	%r8d, -84(%rbp)
	movl	-84(%rbp), %r8d
	movl	%eax, -9580(%rbp)       # 4-byte Spill
	movl	%r8d, %eax
	movl	%edx, -9584(%rbp)       # 4-byte Spill
	cltd
	idivl	%ecx
	movl	-9584(%rbp), %r8d       # 4-byte Reload
	subl	%eax, %r8d
	movq	-56(%rbp), %rsi
	movslq	%r8d, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -56(%rbp)
	movl	-84(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-9580(%rbp), %edx       # 4-byte Reload
	shll	%cl, %edx
	movb	%dl, %cl
	movb	%cl, -57(%rbp)
.LBB9_74:                               # %if.end.218
                                        #   in Loop: Header=BB9_70 Depth=2
	movl	-92(%rbp), %eax
	movl	%eax, -72(%rbp)
.LBB9_75:                               # %for.cond.219
                                        #   Parent Loop BB9_66 Depth=1
                                        #     Parent Loop BB9_70 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_81 Depth 4
                                        #         Child Loop BB9_88 Depth 4
                                        #         Child Loop BB9_94 Depth 4
	movl	-72(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jg	.LBB9_105
# BB#76:                                # %for.body.222
                                        #   in Loop: Header=BB9_75 Depth=3
	movl	$1, %eax
	movl	%eax, %edx
	movq	-1240(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	96(%rcx), %rsi
	movq	-24(%rbp), %rcx
	callq	fread
	cmpq	$1, %rax
	je	.LBB9_78
# BB#77:                                # %if.then.227
                                        #   in Loop: Header=BB9_70 Depth=2
	movl	$1, -9468(%rbp)
	jmp	.LBB9_105
.LBB9_78:                               # %if.end.228
                                        #   in Loop: Header=BB9_75 Depth=3
	movq	-1240(%rbp), %rax
	movq	%rax, -1248(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$16, 64(%rax)
	jne	.LBB9_85
# BB#79:                                # %if.then.231
                                        #   in Loop: Header=BB9_75 Depth=3
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movq	-32(%rbp), %rcx
	cmpq	56(%rcx), %rax
	je	.LBB9_84
# BB#80:                                # %if.then.235
                                        #   in Loop: Header=BB9_75 Depth=3
	movq	-32(%rbp), %rax
	movq	96(%rax), %rax
	shrq	$1, %rax
	movl	%eax, %ecx
	movl	%ecx, -76(%rbp)
.LBB9_81:                               # %while.cond.239
                                        #   Parent Loop BB9_66 Depth=1
                                        #     Parent Loop BB9_70 Depth=2
                                        #       Parent Loop BB9_75 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -76(%rbp)
	cmpl	$0, %eax
	je	.LBB9_83
# BB#82:                                # %while.body.241
                                        #   in Loop: Header=BB9_81 Depth=4
	movq	-1248(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -58(%rbp)
	movq	-1248(%rbp), %rax
	movb	1(%rax), %cl
	movq	-1248(%rbp), %rax
	movb	%cl, (%rax)
	movb	-58(%rbp), %cl
	movq	-1248(%rbp), %rax
	movb	%cl, 1(%rax)
	movq	-1248(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -1248(%rbp)
	jmp	.LBB9_81
.LBB9_83:                               # %while.end.247
                                        #   in Loop: Header=BB9_75 Depth=3
	movq	-1240(%rbp), %rax
	movq	%rax, -1248(%rbp)
.LBB9_84:                               # %if.end.248
                                        #   in Loop: Header=BB9_75 Depth=3
	jmp	.LBB9_93
.LBB9_85:                               # %if.else.249
                                        #   in Loop: Header=BB9_75 Depth=3
	movq	-32(%rbp), %rax
	cmpq	$32, 64(%rax)
	jne	.LBB9_92
# BB#86:                                # %if.then.253
                                        #   in Loop: Header=BB9_75 Depth=3
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movq	-32(%rbp), %rcx
	cmpq	56(%rcx), %rax
	je	.LBB9_91
# BB#87:                                # %if.then.258
                                        #   in Loop: Header=BB9_75 Depth=3
	movq	-32(%rbp), %rax
	movq	96(%rax), %rax
	shrq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -76(%rbp)
.LBB9_88:                               # %while.cond.262
                                        #   Parent Loop BB9_66 Depth=1
                                        #     Parent Loop BB9_70 Depth=2
                                        #       Parent Loop BB9_75 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -76(%rbp)
	cmpl	$0, %eax
	je	.LBB9_90
# BB#89:                                # %while.body.265
                                        #   in Loop: Header=BB9_88 Depth=4
	movq	-1248(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -58(%rbp)
	movq	-1248(%rbp), %rax
	movb	3(%rax), %cl
	movq	-1248(%rbp), %rax
	movb	%cl, (%rax)
	movb	-58(%rbp), %cl
	movq	-1248(%rbp), %rax
	movb	%cl, 3(%rax)
	movq	-1248(%rbp), %rax
	movb	1(%rax), %cl
	movb	%cl, -58(%rbp)
	movq	-1248(%rbp), %rax
	movb	2(%rax), %cl
	movq	-1248(%rbp), %rax
	movb	%cl, 1(%rax)
	movb	-58(%rbp), %cl
	movq	-1248(%rbp), %rax
	movb	%cl, 2(%rax)
	movq	-1248(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -1248(%rbp)
	jmp	.LBB9_88
.LBB9_90:                               # %while.end.275
                                        #   in Loop: Header=BB9_75 Depth=3
	movq	-1240(%rbp), %rax
	movq	%rax, -1248(%rbp)
.LBB9_91:                               # %if.end.276
                                        #   in Loop: Header=BB9_75 Depth=3
	jmp	.LBB9_92
.LBB9_92:                               # %if.end.277
                                        #   in Loop: Header=BB9_75 Depth=3
	jmp	.LBB9_93
.LBB9_93:                               # %if.end.278
                                        #   in Loop: Header=BB9_75 Depth=3
	movb	$0, -58(%rbp)
	movq	$0, -208(%rbp)
	movl	$0, -76(%rbp)
.LBB9_94:                               # %for.cond.279
                                        #   Parent Loop BB9_66 Depth=1
                                        #     Parent Loop BB9_70 Depth=2
                                        #       Parent Loop BB9_75 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-76(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB9_103
# BB#95:                                # %for.body.282
                                        #   in Loop: Header=BB9_94 Depth=4
	cmpb	$0, -58(%rbp)
	jne	.LBB9_99
# BB#96:                                # %if.then.284
                                        #   in Loop: Header=BB9_94 Depth=4
	movq	-1248(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -1248(%rbp)
	movzbl	(%rax), %edx
	movl	%edx, %eax
	movq	%rax, -208(%rbp)
	cmpb	$0, -59(%rbp)
	je	.LBB9_98
# BB#97:                                # %if.then.287
                                        #   in Loop: Header=BB9_94 Depth=4
	movq	-208(%rbp), %rax
	movzbl	-1232(%rbp,%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, -208(%rbp)
.LBB9_98:                               # %if.end.290
                                        #   in Loop: Header=BB9_94 Depth=4
	movb	$-128, -58(%rbp)
.LBB9_99:                               # %if.end.291
                                        #   in Loop: Header=BB9_94 Depth=4
	movq	-208(%rbp), %rax
	movzbl	-58(%rbp), %ecx
	movl	%ecx, %edx
	andq	%rdx, %rax
	cmpq	$0, %rax
	je	.LBB9_101
# BB#100:                               # %if.then.295
                                        #   in Loop: Header=BB9_94 Depth=4
	movzbl	-57(%rbp), %eax
	movq	-56(%rbp), %rcx
	movzbl	(%rcx), %edx
	orl	%eax, %edx
	movb	%dl, %sil
	movb	%sil, (%rcx)
.LBB9_101:                              # %if.end.300
                                        #   in Loop: Header=BB9_94 Depth=4
	movl	-104(%rbp), %eax
	movq	-56(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -56(%rbp)
	movzbl	-58(%rbp), %eax
	sarl	$1, %eax
	movb	%al, %sil
	movb	%sil, -58(%rbp)
# BB#102:                               # %for.inc.306
                                        #   in Loop: Header=BB9_94 Depth=4
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB9_94
.LBB9_103:                              # %for.end.308
                                        #   in Loop: Header=BB9_75 Depth=3
	jmp	.LBB9_104
.LBB9_104:                              # %for.inc.309
                                        #   in Loop: Header=BB9_75 Depth=3
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB9_75
.LBB9_105:                              # %for.end.311
                                        #   in Loop: Header=BB9_70 Depth=2
	jmp	.LBB9_106
.LBB9_106:                              # %for.inc.312
                                        #   in Loop: Header=BB9_70 Depth=2
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB9_70
.LBB9_107:                              # %for.end.314
                                        #   in Loop: Header=BB9_66 Depth=1
	cmpl	$0, -100(%rbp)
	jne	.LBB9_121
# BB#108:                               # %if.then.316
                                        #   in Loop: Header=BB9_66 Depth=1
	movq	-1256(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-92(%rbp), %ecx
	movl	%ecx, -72(%rbp)
.LBB9_109:                              # %for.cond.317
                                        #   Parent Loop BB9_66 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_111 Depth 3
	movl	-72(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jg	.LBB9_120
# BB#110:                               # %for.body.320
                                        #   in Loop: Header=BB9_109 Depth=2
	movl	$0, -76(%rbp)
.LBB9_111:                              # %for.cond.321
                                        #   Parent Loop BB9_66 Depth=1
                                        #     Parent Loop BB9_109 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-76(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB9_118
# BB#112:                               # %for.body.324
                                        #   in Loop: Header=BB9_111 Depth=3
	leaq	-9464(%rbp), %rsi
	movq	-56(%rbp), %rax
	movzbl	(%rax), %ecx
	shll	$16, %ecx
	movq	-56(%rbp), %rax
	movzbl	1(%rax), %edx
	shll	$8, %edx
	orl	%edx, %ecx
	movq	-56(%rbp), %rax
	movzbl	2(%rax), %edx
	orl	%edx, %ecx
	movslq	%ecx, %rax
	movq	%rax, -1264(%rbp)
	movq	-1264(%rbp), %rdi
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	-56(%rbp), %r8
	addq	$2, %r8
	movq	%rax, %rcx
	callq	get_pixelmap
	cmpl	$0, %eax
	jne	.LBB9_114
# BB#113:                               # %lor.lhs.false.339
                                        #   in Loop: Header=BB9_111 Depth=3
	cmpl	$0, -136(%rbp)
	je	.LBB9_115
.LBB9_114:                              # %if.then.341
                                        #   in Loop: Header=BB9_111 Depth=3
	movq	-56(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB9_116
.LBB9_115:                              # %if.else.343
                                        #   in Loop: Header=BB9_111 Depth=3
	movq	-1264(%rbp), %rax
	andq	-168(%rbp), %rax
	movl	-188(%rbp), %ecx
                                        # kill: RCX<def> ECX<kill>
                                        # kill: CL<def> RCX<kill>
	shrq	%cl, %rax
	movb	-464(%rbp,%rax), %cl
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -56(%rbp)
	movb	%cl, (%rax)
	movq	-1264(%rbp), %rax
	andq	-176(%rbp), %rax
	movl	-192(%rbp), %esi
	movl	%esi, %ecx
                                        # kill: CL<def> RCX<kill>
	shrq	%cl, %rax
	movb	-720(%rbp,%rax), %cl
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -56(%rbp)
	movb	%cl, (%rax)
	movq	-1264(%rbp), %rax
	andq	-184(%rbp), %rax
	movl	-196(%rbp), %esi
	movl	%esi, %ecx
                                        # kill: CL<def> RCX<kill>
	shrq	%cl, %rax
	movb	-976(%rbp,%rax), %cl
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -56(%rbp)
	movb	%cl, (%rax)
.LBB9_116:                              # %if.end.359
                                        #   in Loop: Header=BB9_111 Depth=3
	jmp	.LBB9_117
.LBB9_117:                              # %for.inc.360
                                        #   in Loop: Header=BB9_111 Depth=3
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB9_111
.LBB9_118:                              # %for.end.362
                                        #   in Loop: Header=BB9_109 Depth=2
	jmp	.LBB9_119
.LBB9_119:                              # %for.inc.363
                                        #   in Loop: Header=BB9_109 Depth=2
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB9_109
.LBB9_120:                              # %for.end.365
                                        #   in Loop: Header=BB9_66 Depth=1
	jmp	.LBB9_121
.LBB9_121:                              # %if.end.366
                                        #   in Loop: Header=BB9_66 Depth=1
	cvtsi2sdl	-96(%rbp), %xmm0
	cvtsi2sdl	-68(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	leaq	-9528(%rbp), %rdi
	xorl	%edx, %edx
	movq	-1256(%rbp), %rsi
	movl	-92(%rbp), %ecx
	movl	-64(%rbp), %r8d
	movl	-96(%rbp), %r9d
	subl	-92(%rbp), %r9d
	addl	$1, %r9d
	movl	%eax, -9588(%rbp)       # 4-byte Spill
	callq	gimp_pixel_rgn_set_rect
# BB#122:                               # %for.inc.373
                                        #   in Loop: Header=BB9_66 Depth=1
	movl	-88(%rbp), %eax
	addl	-92(%rbp), %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB9_66
.LBB9_123:                              # %for.end.375
	movq	-1256(%rbp), %rdi
	callq	g_free
	movq	-1240(%rbp), %rdi
	callq	g_free
	cmpl	$0, -9468(%rbp)
	je	.LBB9_125
# BB#124:                               # %if.then.377
	movabsq	$.L.str.45, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
.LBB9_125:                              # %if.end.379
	movq	-9536(%rbp), %rdi
	callq	gimp_drawable_flush
	cmpl	$0, -9468(%rbp)
	je	.LBB9_127
# BB#126:                               # %cond.true
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -9592(%rbp)       # 4-byte Spill
	jmp	.LBB9_128
.LBB9_127:                              # %cond.false
	movl	-9476(%rbp), %eax
	movl	%eax, -9592(%rbp)       # 4-byte Spill
.LBB9_128:                              # %cond.end
	movl	-9592(%rbp), %eax       # 4-byte Reload
	movl	%eax, -4(%rbp)
.LBB9_129:                              # %return
	movl	-4(%rbp), %eax
	addq	$9600, %rsp             # imm = 0x2580
	popq	%rbp
	retq
.Lfunc_end9:
	.size	load_xwd_f1_d24_b1, .Lfunc_end9-load_xwd_f1_d24_b1
	.cfi_endproc

	.align	16, 0x90
	.type	load_xwd_f2_d8_b8,@function
load_xwd_f2_d8_b8:                      # @load_xwd_f2_d8_b8
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	$0, -92(%rbp)
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movl	%ecx, %eax
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rcx
	movq	40(%rcx), %rcx
	movl	%ecx, %eax
	movl	%eax, -40(%rbp)
	movl	$0, -68(%rbp)
	movq	-24(%rbp), %rcx
	cmpq	$256, 152(%rcx)         # imm = 0x100
	jne	.LBB10_12
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpq	$256, 144(%rax)         # imm = 0x100
	jne	.LBB10_12
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
.LBB10_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -60(%rbp)         # imm = 0x100
	jge	.LBB10_11
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB10_3 Depth=1
	movslq	-60(%rbp), %rax
	shlq	$4, %rax
	addq	-32(%rbp), %rax
	movq	(%rax), %rax
	movslq	-60(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB10_8
# BB#5:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB10_3 Depth=1
	movslq	-60(%rbp), %rax
	shlq	$4, %rax
	addq	-32(%rbp), %rax
	movzwl	8(%rax), %ecx
	sarl	$8, %ecx
	cmpl	-60(%rbp), %ecx
	jne	.LBB10_8
# BB#6:                                 # %lor.lhs.false.15
                                        #   in Loop: Header=BB10_3 Depth=1
	movslq	-60(%rbp), %rax
	shlq	$4, %rax
	addq	-32(%rbp), %rax
	movzwl	10(%rax), %ecx
	sarl	$8, %ecx
	cmpl	-60(%rbp), %ecx
	jne	.LBB10_8
# BB#7:                                 # %lor.lhs.false.22
                                        #   in Loop: Header=BB10_3 Depth=1
	movslq	-60(%rbp), %rax
	shlq	$4, %rax
	addq	-32(%rbp), %rax
	movzwl	12(%rax), %ecx
	sarl	$8, %ecx
	cmpl	-60(%rbp), %ecx
	je	.LBB10_9
.LBB10_8:                               # %if.then.29
	jmp	.LBB10_11
.LBB10_9:                               # %if.end
                                        #   in Loop: Header=BB10_3 Depth=1
	jmp	.LBB10_10
.LBB10_10:                              # %for.inc
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB10_3
.LBB10_11:                              # %for.end
	cmpl	$256, -60(%rbp)         # imm = 0x100
	sete	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -68(%rbp)
.LBB10_12:                              # %if.end.32
	leaq	-96(%rbp), %r8
	leaq	-160(%rbp), %r9
	leaq	-152(%rbp), %rax
	movl	$2, %ecx
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %r10d
	cmpl	$0, -68(%rbp)
	cmovnel	%edx, %ecx
	movl	%r10d, %edx
	movq	%rax, (%rsp)
	callq	create_new_image
	movl	%eax, -100(%rbp)
	callq	gimp_tile_height
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %eax
	imull	-36(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc
	movq	%rax, -88(%rbp)
	cmpl	$0, -68(%rbp)
	jne	.LBB10_19
# BB#13:                                # %if.then.37
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movslq	-64(%rbp), %rdx
	cmpq	%rdx, %rax
	jae	.LBB10_15
# BB#14:                                # %if.then.44
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, -64(%rbp)
.LBB10_15:                              # %if.end.47
	cmpl	$2, -64(%rbp)
	jge	.LBB10_17
# BB#16:                                # %if.then.50
	movl	-100(%rbp), %edi
	callq	set_bw_color_table
	jmp	.LBB10_18
.LBB10_17:                              # %if.else
	movl	-100(%rbp), %edi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	set_color_table
.LBB10_18:                              # %if.end.51
	jmp	.LBB10_19
.LBB10_19:                              # %if.end.52
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	-24(%rbp), %rcx
	subq	32(%rcx), %rax
	movl	%eax, %edx
	movl	%edx, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jge	.LBB10_21
# BB#20:                                # %if.then.57
	movl	$0, -44(%rbp)
.LBB10_21:                              # %if.end.58
	movq	-88(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -56(%rbp)
.LBB10_22:                              # %for.cond.59
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_26 Depth 2
	movl	-56(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB10_36
# BB#23:                                # %for.body.62
                                        #   in Loop: Header=BB10_22 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movq	-80(%rbp), %rdi
	movslq	-36(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	fread
	movslq	-36(%rbp), %rcx
	cmpq	%rcx, %rax
	je	.LBB10_25
# BB#24:                                # %if.then.68
	movl	$1, -92(%rbp)
	jmp	.LBB10_36
.LBB10_25:                              # %if.end.69
                                        #   in Loop: Header=BB10_22 Depth=1
	movl	-36(%rbp), %eax
	movq	-80(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -80(%rbp)
	movl	$0, -60(%rbp)
.LBB10_26:                              # %for.cond.70
                                        #   Parent Loop BB10_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-60(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB10_29
# BB#27:                                # %for.body.73
                                        #   in Loop: Header=BB10_26 Depth=2
	movq	-16(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -164(%rbp)        # 4-byte Spill
# BB#28:                                # %for.inc.75
                                        #   in Loop: Header=BB10_26 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB10_26
.LBB10_29:                              # %for.end.77
                                        #   in Loop: Header=BB10_22 Depth=1
	movl	$20, %eax
	movl	-52(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -52(%rbp)
	movl	-56(%rbp), %ecx
	movl	%eax, -168(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-168(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB10_31
# BB#30:                                # %if.then.81
                                        #   in Loop: Header=BB10_22 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	-40(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB10_31:                              # %if.end.85
                                        #   in Loop: Header=BB10_22 Depth=1
	movl	-52(%rbp), %eax
	cmpl	-48(%rbp), %eax
	je	.LBB10_33
# BB#32:                                # %lor.lhs.false.88
                                        #   in Loop: Header=BB10_22 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	cmpl	-40(%rbp), %eax
	jne	.LBB10_34
.LBB10_33:                              # %if.then.92
                                        #   in Loop: Header=BB10_22 Depth=1
	leaq	-152(%rbp), %rdi
	xorl	%edx, %edx
	movq	-88(%rbp), %rsi
	movl	-56(%rbp), %eax
	subl	-52(%rbp), %eax
	addl	$1, %eax
	movl	-36(%rbp), %r8d
	movl	-52(%rbp), %r9d
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_set_rect
	movl	$0, -52(%rbp)
	movq	-88(%rbp), %rsi
	movq	%rsi, -80(%rbp)
.LBB10_34:                              # %if.end.95
                                        #   in Loop: Header=BB10_22 Depth=1
	jmp	.LBB10_35
.LBB10_35:                              # %for.inc.96
                                        #   in Loop: Header=BB10_22 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB10_22
.LBB10_36:                              # %for.end.98
	movq	-88(%rbp), %rdi
	callq	g_free
	cmpl	$0, -92(%rbp)
	je	.LBB10_38
# BB#37:                                # %if.then.100
	movabsq	$.L.str.45, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
.LBB10_38:                              # %if.end.102
	movq	-160(%rbp), %rdi
	callq	gimp_drawable_flush
	cmpl	$0, -92(%rbp)
	je	.LBB10_40
# BB#39:                                # %cond.true
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -176(%rbp)        # 4-byte Spill
	jmp	.LBB10_41
.LBB10_40:                              # %cond.false
	movl	-100(%rbp), %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
.LBB10_41:                              # %cond.end
	movl	-176(%rbp), %eax        # 4-byte Reload
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	load_xwd_f2_d8_b8, .Lfunc_end10-load_xwd_f2_d8_b8
	.cfi_endproc

	.align	16, 0x90
	.type	load_xwd_f2_d16_b16,@function
load_xwd_f2_d16_b16:                    # @load_xwd_f2_d16_b16
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp40:
	.cfi_def_cfa_register %rbp
	subq	$304, %rsp              # imm = 0x130
	xorl	%eax, %eax
	leaq	-200(%rbp), %r8
	leaq	-264(%rbp), %r9
	leaq	-256(%rbp), %r10
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	$0, -196(%rbp)
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movl	%ecx, %r11d
	movl	%r11d, -48(%rbp)
	movq	-24(%rbp), %rcx
	movq	40(%rcx), %rcx
	movl	%ecx, %r11d
	movl	%r11d, -52(%rbp)
	movq	-8(%rbp), %rdi
	movl	-48(%rbp), %esi
	movl	-52(%rbp), %edx
	movl	%eax, %ecx
	movq	%r10, (%rsp)
	callq	create_new_image
	movl	%eax, -204(%rbp)
	callq	gimp_tile_height
	movl	%eax, -116(%rbp)
	movl	-116(%rbp), %eax
	imull	-48(%rbp), %eax
	imull	$3, %eax, %eax
	movslq	%eax, %rdi
	callq	g_malloc
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -192(%rbp)
	movq	$196608, -168(%rbp)     # imm = 0x30000
	movq	-168(%rbp), %rdi
	callq	g_malloc0_n
	movq	%rax, -176(%rbp)
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -144(%rbp)
	movl	$0, -156(%rbp)
	movl	$0, -152(%rbp)
	movl	$0, -148(%rbp)
.LBB11_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %eax
	movl	-148(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movslq	%eax, %rdx
	andq	-128(%rbp), %rdx
	cmpq	$0, %rdx
	jne	.LBB11_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB11_1
.LBB11_3:                               # %while.end
	jmp	.LBB11_4
.LBB11_4:                               # %while.cond.9
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %eax
	movl	-152(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movslq	%eax, %rdx
	andq	-136(%rbp), %rdx
	cmpq	$0, %rdx
	jne	.LBB11_6
# BB#5:                                 # %while.body.15
                                        #   in Loop: Header=BB11_4 Depth=1
	movl	-152(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -152(%rbp)
	jmp	.LBB11_4
.LBB11_6:                               # %while.end.17
	jmp	.LBB11_7
.LBB11_7:                               # %while.cond.18
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %eax
	movl	-156(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movslq	%eax, %rdx
	andq	-144(%rbp), %rdx
	cmpq	$0, %rdx
	jne	.LBB11_9
# BB#8:                                 # %while.body.24
                                        #   in Loop: Header=BB11_7 Depth=1
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	jmp	.LBB11_7
.LBB11_9:                               # %while.end.26
	movl	$0, -104(%rbp)
.LBB11_10:                              # %while.cond.27
                                        # =>This Inner Loop Header: Depth=1
	movq	-128(%rbp), %rax
	movl	-148(%rbp), %ecx
	addl	-104(%rbp), %ecx
	movl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
                                        # kill: CL<def> RCX<kill>
	shrq	%cl, %rax
	cmpq	$0, %rax
	je	.LBB11_12
# BB#11:                                # %while.body.28
                                        #   in Loop: Header=BB11_10 Depth=1
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB11_10
.LBB11_12:                              # %while.end.30
	movl	$1, %eax
	movl	-104(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	subl	$1, %eax
	movl	%eax, -104(%rbp)
	movl	$0, -108(%rbp)
.LBB11_13:                              # %while.cond.32
                                        # =>This Inner Loop Header: Depth=1
	movq	-136(%rbp), %rax
	movl	-152(%rbp), %ecx
	addl	-108(%rbp), %ecx
	movl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
                                        # kill: CL<def> RCX<kill>
	shrq	%cl, %rax
	cmpq	$0, %rax
	je	.LBB11_15
# BB#14:                                # %while.body.37
                                        #   in Loop: Header=BB11_13 Depth=1
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB11_13
.LBB11_15:                              # %while.end.39
	movl	$1, %eax
	movl	-108(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	subl	$1, %eax
	movl	%eax, -108(%rbp)
	movl	$0, -112(%rbp)
.LBB11_16:                              # %while.cond.42
                                        # =>This Inner Loop Header: Depth=1
	movq	-144(%rbp), %rax
	movl	-156(%rbp), %ecx
	addl	-112(%rbp), %ecx
	movl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
                                        # kill: CL<def> RCX<kill>
	shrq	%cl, %rax
	cmpq	$0, %rax
	je	.LBB11_18
# BB#17:                                # %while.body.47
                                        #   in Loop: Header=BB11_16 Depth=1
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB11_16
.LBB11_18:                              # %while.end.49
	movl	$1, %eax
	movl	-112(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	subl	$1, %eax
	movl	%eax, -112(%rbp)
	movl	$0, -80(%rbp)
.LBB11_19:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_21 Depth 2
                                        #       Child Loop BB11_23 Depth 3
	movl	-80(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jg	.LBB11_30
# BB#20:                                # %for.body
                                        #   in Loop: Header=BB11_19 Depth=1
	imull	$255, -80(%rbp), %eax
	cltd
	idivl	-104(%rbp)
	movl	%eax, -92(%rbp)
	movl	$0, -84(%rbp)
.LBB11_21:                              # %for.cond.55
                                        #   Parent Loop BB11_19 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_23 Depth 3
	movl	-84(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jg	.LBB11_28
# BB#22:                                # %for.body.58
                                        #   in Loop: Header=BB11_21 Depth=2
	imull	$255, -84(%rbp), %eax
	cltd
	idivl	-108(%rbp)
	movl	%eax, -96(%rbp)
	movl	$0, -88(%rbp)
.LBB11_23:                              # %for.cond.61
                                        #   Parent Loop BB11_19 Depth=1
                                        #     Parent Loop BB11_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-88(%rbp), %eax
	cmpl	-112(%rbp), %eax
	jg	.LBB11_26
# BB#24:                                # %for.body.64
                                        #   in Loop: Header=BB11_23 Depth=3
	imull	$255, -88(%rbp), %eax
	cltd
	idivl	-112(%rbp)
	movl	%eax, -100(%rbp)
	movq	-176(%rbp), %rcx
	movl	-80(%rbp), %eax
	movl	-148(%rbp), %esi
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	movl	%esi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	-84(%rbp), %esi
	movl	-152(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	addl	%esi, %eax
	movl	-88(%rbp), %esi
	movl	-156(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	addl	%esi, %eax
	imull	$3, %eax, %eax
	movslq	%eax, %rdi
	movq	-272(%rbp), %r8         # 8-byte Reload
	addq	%rdi, %r8
	movq	%r8, -184(%rbp)
	movl	-92(%rbp), %eax
	movb	%al, %cl
	movq	-184(%rbp), %rdi
	movq	%rdi, %r8
	addq	$1, %r8
	movq	%r8, -184(%rbp)
	movb	%cl, (%rdi)
	movl	-96(%rbp), %eax
	movb	%al, %cl
	movq	-184(%rbp), %rdi
	movq	%rdi, %r8
	addq	$1, %r8
	movq	%r8, -184(%rbp)
	movb	%cl, (%rdi)
	movl	-100(%rbp), %eax
	movb	%al, %cl
	movq	-184(%rbp), %rdi
	movb	%cl, (%rdi)
# BB#25:                                # %for.inc
                                        #   in Loop: Header=BB11_23 Depth=3
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB11_23
.LBB11_26:                              # %for.end
                                        #   in Loop: Header=BB11_21 Depth=2
	jmp	.LBB11_27
.LBB11_27:                              # %for.inc.78
                                        #   in Loop: Header=BB11_21 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB11_21
.LBB11_28:                              # %for.end.80
                                        #   in Loop: Header=BB11_19 Depth=1
	jmp	.LBB11_29
.LBB11_29:                              # %for.inc.81
                                        #   in Loop: Header=BB11_19 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB11_19
.LBB11_30:                              # %for.end.83
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, -76(%rbp)
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movslq	-76(%rbp), %rdx
	cmpq	%rdx, %rax
	jae	.LBB11_32
# BB#31:                                # %if.then
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, -76(%rbp)
.LBB11_32:                              # %if.end
	movl	$0, -64(%rbp)
.LBB11_33:                              # %for.cond.90
                                        # =>This Inner Loop Header: Depth=1
	movl	-64(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB11_36
# BB#34:                                # %for.body.93
                                        #   in Loop: Header=BB11_33 Depth=1
	movq	-176(%rbp), %rax
	movslq	-64(%rbp), %rcx
	shlq	$4, %rcx
	addq	-32(%rbp), %rcx
	imulq	$3, (%rcx), %rcx
	addq	%rcx, %rax
	movq	%rax, -184(%rbp)
	movslq	-64(%rbp), %rax
	shlq	$4, %rax
	addq	-32(%rbp), %rax
	movzwl	8(%rax), %edx
	sarl	$8, %edx
	movb	%dl, %sil
	movq	-184(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -184(%rbp)
	movb	%sil, (%rax)
	movslq	-64(%rbp), %rax
	shlq	$4, %rax
	addq	-32(%rbp), %rax
	movzwl	10(%rax), %edx
	sarl	$8, %edx
	movb	%dl, %sil
	movq	-184(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -184(%rbp)
	movb	%sil, (%rax)
	movslq	-64(%rbp), %rax
	shlq	$4, %rax
	addq	-32(%rbp), %rax
	movzwl	12(%rax), %edx
	sarl	$8, %edx
	movb	%dl, %sil
	movq	-184(%rbp), %rax
	movb	%sil, (%rax)
# BB#35:                                # %for.inc.113
                                        #   in Loop: Header=BB11_33 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB11_33
.LBB11_36:                              # %for.end.115
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	-24(%rbp), %rdx
	imulq	88(%rdx), %rcx
	shrq	$3, %rcx
	subq	%rcx, %rax
	movl	%eax, %esi
	movl	%esi, -56(%rbp)
	cmpl	$0, -56(%rbp)
	jge	.LBB11_38
# BB#37:                                # %if.then.123
	movl	$0, -56(%rbp)
.LBB11_38:                              # %if.end.124
	movq	-24(%rbp), %rax
	cmpq	$0, 56(%rax)
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movb	%dl, %cl
	movb	%cl, -41(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -120(%rbp)
	movl	$0, -60(%rbp)
.LBB11_39:                              # %for.cond.128
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_41 Depth 2
                                        #     Child Loop BB11_52 Depth 2
	movl	-60(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB11_62
# BB#40:                                # %for.body.131
                                        #   in Loop: Header=BB11_39 Depth=1
	movl	$0, -64(%rbp)
.LBB11_41:                              # %for.cond.132
                                        #   Parent Loop BB11_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-64(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB11_49
# BB#42:                                # %for.body.135
                                        #   in Loop: Header=BB11_41 Depth=2
	movq	-16(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -68(%rbp)
	movq	-16(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	jge	.LBB11_44
# BB#43:                                # %if.then.140
                                        #   in Loop: Header=BB11_39 Depth=1
	movl	$1, -196(%rbp)
	jmp	.LBB11_49
.LBB11_44:                              # %if.end.141
                                        #   in Loop: Header=BB11_41 Depth=2
	cmpb	$0, -41(%rbp)
	je	.LBB11_46
# BB#45:                                # %if.then.143
                                        #   in Loop: Header=BB11_41 Depth=2
	movl	-68(%rbp), %eax
	movl	-72(%rbp), %ecx
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB11_47
.LBB11_46:                              # %if.else
                                        #   in Loop: Header=BB11_41 Depth=2
	movl	-68(%rbp), %eax
	shll	$8, %eax
	orl	-72(%rbp), %eax
	movl	%eax, -68(%rbp)
.LBB11_47:                              # %if.end.147
                                        #   in Loop: Header=BB11_41 Depth=2
	movq	-176(%rbp), %rax
	imull	$3, -68(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -184(%rbp)
	movb	(%rax), %sil
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -40(%rbp)
	movb	%sil, (%rax)
	movq	-184(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -184(%rbp)
	movb	(%rax), %sil
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -40(%rbp)
	movb	%sil, (%rax)
	movq	-184(%rbp), %rax
	movb	(%rax), %sil
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -40(%rbp)
	movb	%sil, (%rax)
# BB#48:                                # %for.inc.156
                                        #   in Loop: Header=BB11_41 Depth=2
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB11_41
.LBB11_49:                              # %for.end.158
                                        #   in Loop: Header=BB11_39 Depth=1
	cmpl	$0, -196(%rbp)
	je	.LBB11_51
# BB#50:                                # %if.then.160
	jmp	.LBB11_62
.LBB11_51:                              # %if.end.161
                                        #   in Loop: Header=BB11_39 Depth=1
	movl	$0, -64(%rbp)
.LBB11_52:                              # %for.cond.162
                                        #   Parent Loop BB11_39 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-64(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB11_55
# BB#53:                                # %for.body.165
                                        #   in Loop: Header=BB11_52 Depth=2
	movq	-16(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -276(%rbp)        # 4-byte Spill
# BB#54:                                # %for.inc.167
                                        #   in Loop: Header=BB11_52 Depth=2
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB11_52
.LBB11_55:                              # %for.end.169
                                        #   in Loop: Header=BB11_39 Depth=1
	movl	$20, %eax
	movl	-120(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -120(%rbp)
	movl	-60(%rbp), %ecx
	movl	%eax, -280(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-280(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB11_57
# BB#56:                                # %if.then.173
                                        #   in Loop: Header=BB11_39 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	-52(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -284(%rbp)        # 4-byte Spill
.LBB11_57:                              # %if.end.179
                                        #   in Loop: Header=BB11_39 Depth=1
	movl	-120(%rbp), %eax
	cmpl	-116(%rbp), %eax
	je	.LBB11_59
# BB#58:                                # %lor.lhs.false
                                        #   in Loop: Header=BB11_39 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	cmpl	-52(%rbp), %eax
	jne	.LBB11_60
.LBB11_59:                              # %if.then.185
                                        #   in Loop: Header=BB11_39 Depth=1
	leaq	-256(%rbp), %rdi
	xorl	%edx, %edx
	movq	-192(%rbp), %rsi
	movl	-60(%rbp), %eax
	subl	-120(%rbp), %eax
	addl	$1, %eax
	movl	-48(%rbp), %r8d
	movl	-120(%rbp), %r9d
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_set_rect
	movl	$0, -120(%rbp)
	movq	-192(%rbp), %rsi
	movq	%rsi, -40(%rbp)
.LBB11_60:                              # %if.end.188
                                        #   in Loop: Header=BB11_39 Depth=1
	jmp	.LBB11_61
.LBB11_61:                              # %for.inc.189
                                        #   in Loop: Header=BB11_39 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB11_39
.LBB11_62:                              # %for.end.191
	movq	-192(%rbp), %rdi
	callq	g_free
	movq	-176(%rbp), %rdi
	callq	g_free
	cmpl	$0, -196(%rbp)
	je	.LBB11_64
# BB#63:                                # %if.then.193
	movabsq	$.L.str.45, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
.LBB11_64:                              # %if.end.195
	movq	-264(%rbp), %rdi
	callq	gimp_drawable_flush
	cmpl	$0, -196(%rbp)
	je	.LBB11_66
# BB#65:                                # %cond.true
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -288(%rbp)        # 4-byte Spill
	jmp	.LBB11_67
.LBB11_66:                              # %cond.false
	movl	-204(%rbp), %eax
	movl	%eax, -288(%rbp)        # 4-byte Spill
.LBB11_67:                              # %cond.end
	movl	-288(%rbp), %eax        # 4-byte Reload
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end11:
	.size	load_xwd_f2_d16_b16, .Lfunc_end11-load_xwd_f2_d16_b16
	.cfi_endproc

	.align	16, 0x90
	.type	load_xwd_f2_d24_b32,@function
load_xwd_f2_d24_b32:                    # @load_xwd_f2_d24_b32
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp43:
	.cfi_def_cfa_register %rbp
	subq	$9328, %rsp             # imm = 0x2470
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	$0, -9172(%rbp)
	movq	-32(%rbp), %rcx
	movq	32(%rcx), %rcx
	movl	%ecx, %eax
	movl	%eax, -64(%rbp)
	movq	-32(%rbp), %rcx
	movq	40(%rcx), %rcx
	movl	%ecx, %eax
	movl	%eax, -68(%rbp)
	movq	-32(%rbp), %rcx
	movq	112(%rcx), %rcx
	movq	%rcx, -152(%rbp)
	movq	-32(%rbp), %rcx
	movq	120(%rcx), %rcx
	movq	%rcx, -160(%rbp)
	movq	-32(%rbp), %rcx
	movq	128(%rcx), %rcx
	movq	%rcx, -168(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB12_2
# BB#1:                                 # %if.then
	movq	$16711680, -152(%rbp)   # imm = 0xFF0000
.LBB12_2:                               # %if.end
	cmpq	$0, -160(%rbp)
	jne	.LBB12_4
# BB#3:                                 # %if.then.5
	movq	$65280, -160(%rbp)      # imm = 0xFF00
.LBB12_4:                               # %if.end.6
	cmpq	$0, -168(%rbp)
	jne	.LBB12_6
# BB#5:                                 # %if.then.9
	movq	$255, -168(%rbp)
.LBB12_6:                               # %if.end.10
	movl	$0, -180(%rbp)
	movl	$0, -176(%rbp)
	movl	$0, -172(%rbp)
.LBB12_7:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %eax
	movl	-172(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movslq	%eax, %rdx
	andq	-152(%rbp), %rdx
	cmpq	$0, %rdx
	jne	.LBB12_9
# BB#8:                                 # %while.body
                                        #   in Loop: Header=BB12_7 Depth=1
	movl	-172(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -172(%rbp)
	jmp	.LBB12_7
.LBB12_9:                               # %while.end
	jmp	.LBB12_10
.LBB12_10:                              # %while.cond.14
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %eax
	movl	-176(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movslq	%eax, %rdx
	andq	-160(%rbp), %rdx
	cmpq	$0, %rdx
	jne	.LBB12_12
# BB#11:                                # %while.body.20
                                        #   in Loop: Header=BB12_10 Depth=1
	movl	-176(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -176(%rbp)
	jmp	.LBB12_10
.LBB12_12:                              # %while.end.22
	jmp	.LBB12_13
.LBB12_13:                              # %while.cond.23
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %eax
	movl	-180(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movslq	%eax, %rdx
	andq	-168(%rbp), %rdx
	cmpq	$0, %rdx
	jne	.LBB12_15
# BB#14:                                # %while.body.29
                                        #   in Loop: Header=BB12_13 Depth=1
	movl	-180(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -180(%rbp)
	jmp	.LBB12_13
.LBB12_15:                              # %while.end.31
	movl	$0, -132(%rbp)
.LBB12_16:                              # %while.cond.32
                                        # =>This Inner Loop Header: Depth=1
	movq	-152(%rbp), %rax
	movl	-172(%rbp), %ecx
	addl	-132(%rbp), %ecx
	movl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
                                        # kill: CL<def> RCX<kill>
	shrq	%cl, %rax
	cmpq	$0, %rax
	je	.LBB12_18
# BB#17:                                # %while.body.33
                                        #   in Loop: Header=BB12_16 Depth=1
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB12_16
.LBB12_18:                              # %while.end.35
	movl	$1, %eax
	movl	-132(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	subl	$1, %eax
	movl	%eax, -132(%rbp)
	movl	$0, -136(%rbp)
.LBB12_19:                              # %while.cond.37
                                        # =>This Inner Loop Header: Depth=1
	movq	-160(%rbp), %rax
	movl	-176(%rbp), %ecx
	addl	-136(%rbp), %ecx
	movl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
                                        # kill: CL<def> RCX<kill>
	shrq	%cl, %rax
	cmpq	$0, %rax
	je	.LBB12_21
# BB#20:                                # %while.body.42
                                        #   in Loop: Header=BB12_19 Depth=1
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	jmp	.LBB12_19
.LBB12_21:                              # %while.end.44
	movl	$1, %eax
	movl	-136(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	subl	$1, %eax
	movl	%eax, -136(%rbp)
	movl	$0, -140(%rbp)
.LBB12_22:                              # %while.cond.47
                                        # =>This Inner Loop Header: Depth=1
	movq	-168(%rbp), %rax
	movl	-180(%rbp), %ecx
	addl	-140(%rbp), %ecx
	movl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
                                        # kill: CL<def> RCX<kill>
	shrq	%cl, %rax
	cmpq	$0, %rax
	je	.LBB12_24
# BB#23:                                # %while.body.52
                                        #   in Loop: Header=BB12_22 Depth=1
	movl	-140(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -140(%rbp)
	jmp	.LBB12_22
.LBB12_24:                              # %while.end.54
	movl	$1, %eax
	movl	-140(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	subl	$1, %eax
	movl	%eax, -140(%rbp)
	movslq	-132(%rbp), %rdx
	cmpq	$256, %rdx              # imm = 0x100
	ja	.LBB12_27
# BB#25:                                # %lor.lhs.false
	movslq	-136(%rbp), %rax
	cmpq	$256, %rax              # imm = 0x100
	ja	.LBB12_27
# BB#26:                                # %lor.lhs.false.63
	movslq	-140(%rbp), %rax
	cmpq	$256, %rax              # imm = 0x100
	jbe	.LBB12_28
.LBB12_27:                              # %if.then.67
	movq	-48(%rbp), %rdi
	movq	%rdi, -9248(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.48, %rdi
	movl	%eax, -9252(%rbp)       # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -9264(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$24, %edx
	movq	-9248(%rbp), %rdi       # 8-byte Reload
	movl	-9252(%rbp), %esi       # 4-byte Reload
	movq	-9264(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB12_107
.LBB12_28:                              # %if.end.70
	xorl	%ecx, %ecx
	leaq	-9176(%rbp), %r8
	leaq	-9240(%rbp), %r9
	leaq	-9232(%rbp), %rax
	movq	-16(%rbp), %rdi
	movl	-64(%rbp), %esi
	movl	-68(%rbp), %edx
	movq	%rax, (%rsp)
	callq	create_new_image
	movl	%eax, -9180(%rbp)
	callq	gimp_tile_height
	movl	%eax, -100(%rbp)
	movl	-100(%rbp), %eax
	imull	-64(%rbp), %eax
	imull	$3, %eax, %eax
	movslq	%eax, %rdi
	callq	g_malloc
	movq	%rax, -968(%rbp)
	movl	$0, -116(%rbp)
.LBB12_29:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-116(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jg	.LBB12_32
# BB#30:                                # %for.body
                                        #   in Loop: Header=BB12_29 Depth=1
	imull	$255, -116(%rbp), %eax
	cltd
	idivl	-132(%rbp)
	movb	%al, %cl
	movslq	-116(%rbp), %rsi
	movb	%cl, -448(%rbp,%rsi)
# BB#31:                                # %for.inc
                                        #   in Loop: Header=BB12_29 Depth=1
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB12_29
.LBB12_32:                              # %for.end
	movl	$0, -120(%rbp)
.LBB12_33:                              # %for.cond.81
                                        # =>This Inner Loop Header: Depth=1
	movl	-120(%rbp), %eax
	cmpl	-136(%rbp), %eax
	jg	.LBB12_36
# BB#34:                                # %for.body.84
                                        #   in Loop: Header=BB12_33 Depth=1
	imull	$255, -120(%rbp), %eax
	cltd
	idivl	-136(%rbp)
	movb	%al, %cl
	movslq	-120(%rbp), %rsi
	movb	%cl, -704(%rbp,%rsi)
# BB#35:                                # %for.inc.90
                                        #   in Loop: Header=BB12_33 Depth=1
	movl	-120(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -120(%rbp)
	jmp	.LBB12_33
.LBB12_36:                              # %for.end.92
	movl	$0, -124(%rbp)
.LBB12_37:                              # %for.cond.93
                                        # =>This Inner Loop Header: Depth=1
	movl	-124(%rbp), %eax
	cmpl	-140(%rbp), %eax
	jg	.LBB12_40
# BB#38:                                # %for.body.96
                                        #   in Loop: Header=BB12_37 Depth=1
	imull	$255, -124(%rbp), %eax
	cltd
	idivl	-140(%rbp)
	movb	%al, %cl
	movslq	-124(%rbp), %rsi
	movb	%cl, -960(%rbp,%rsi)
# BB#39:                                # %for.inc.102
                                        #   in Loop: Header=BB12_37 Depth=1
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB12_37
.LBB12_40:                              # %for.end.104
	movq	-32(%rbp), %rax
	movq	144(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, -128(%rbp)
	movq	-32(%rbp), %rax
	movq	152(%rax), %rax
	movslq	-128(%rbp), %rdx
	cmpq	%rdx, %rax
	jae	.LBB12_42
# BB#41:                                # %if.then.109
	movq	-32(%rbp), %rax
	movq	152(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, -128(%rbp)
.LBB12_42:                              # %if.end.112
	leaq	-9168(%rbp), %rdx
	movl	-128(%rbp), %edi
	movq	-40(%rbp), %rsi
	callq	set_pixelmap
	movq	-32(%rbp), %rdx
	movq	96(%rdx), %rdx
	movq	-32(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	-32(%rbp), %rcx
	imulq	88(%rcx), %rsi
	shrq	$3, %rsi
	subq	%rsi, %rdx
	movl	%edx, %edi
	movl	%edi, -72(%rbp)
	cmpl	$0, -72(%rbp)
	movl	%eax, -9268(%rbp)       # 4-byte Spill
	jge	.LBB12_44
# BB#43:                                # %if.then.121
	movl	$0, -72(%rbp)
.LBB12_44:                              # %if.end.122
	movq	-32(%rbp), %rax
	cmpq	$0, 56(%rax)
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movb	%dl, %cl
	movb	%cl, -57(%rbp)
	movq	-968(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	$0, -104(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$32, 88(%rax)
	jne	.LBB12_73
# BB#45:                                # %if.then.129
	movl	$0, -76(%rbp)
.LBB12_46:                              # %for.cond.130
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_48 Depth 2
                                        #     Child Loop BB12_62 Depth 2
	movl	-76(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB12_72
# BB#47:                                # %for.body.133
                                        #   in Loop: Header=BB12_46 Depth=1
	movl	$0, -80(%rbp)
.LBB12_48:                              # %for.cond.134
                                        #   Parent Loop BB12_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-80(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB12_59
# BB#49:                                # %for.body.137
                                        #   in Loop: Header=BB12_48 Depth=2
	movq	-24(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -84(%rbp)
	movq	-24(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -88(%rbp)
	movq	-24(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -92(%rbp)
	movq	-24(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	jge	.LBB12_51
# BB#50:                                # %if.then.144
                                        #   in Loop: Header=BB12_46 Depth=1
	movl	$1, -9172(%rbp)
	jmp	.LBB12_59
.LBB12_51:                              # %if.end.145
                                        #   in Loop: Header=BB12_48 Depth=2
	cmpb	$0, -57(%rbp)
	je	.LBB12_53
# BB#52:                                # %if.then.147
                                        #   in Loop: Header=BB12_48 Depth=2
	movl	-84(%rbp), %eax
	movl	-88(%rbp), %ecx
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	-92(%rbp), %ecx
	shll	$16, %ecx
	orl	%ecx, %eax
	movl	-96(%rbp), %ecx
	shll	$24, %ecx
	orl	%ecx, %eax
	movslq	%eax, %rdx
	movq	%rdx, -112(%rbp)
	jmp	.LBB12_54
.LBB12_53:                              # %if.else
                                        #   in Loop: Header=BB12_48 Depth=2
	movl	-84(%rbp), %eax
	shll	$24, %eax
	movl	-88(%rbp), %ecx
	shll	$16, %ecx
	orl	%ecx, %eax
	movl	-92(%rbp), %ecx
	shll	$8, %ecx
	orl	%ecx, %eax
	orl	-96(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, -112(%rbp)
.LBB12_54:                              # %if.end.161
                                        #   in Loop: Header=BB12_48 Depth=2
	leaq	-9168(%rbp), %rsi
	movq	-112(%rbp), %rdi
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	-56(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -9280(%rbp)       # 8-byte Spill
	movq	%rax, %rcx
	movq	-9280(%rbp), %r8        # 8-byte Reload
	callq	get_pixelmap
	cmpl	$0, %eax
	je	.LBB12_56
# BB#55:                                # %if.then.165
                                        #   in Loop: Header=BB12_48 Depth=2
	movq	-56(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB12_57
.LBB12_56:                              # %if.else.167
                                        #   in Loop: Header=BB12_48 Depth=2
	movq	-112(%rbp), %rax
	andq	-152(%rbp), %rax
	movl	-172(%rbp), %ecx
                                        # kill: RCX<def> ECX<kill>
                                        # kill: CL<def> RCX<kill>
	shrq	%cl, %rax
	movb	-448(%rbp,%rax), %cl
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -56(%rbp)
	movb	%cl, (%rax)
	movq	-112(%rbp), %rax
	andq	-160(%rbp), %rax
	movl	-176(%rbp), %esi
	movl	%esi, %ecx
                                        # kill: CL<def> RCX<kill>
	shrq	%cl, %rax
	movb	-704(%rbp,%rax), %cl
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -56(%rbp)
	movb	%cl, (%rax)
	movq	-112(%rbp), %rax
	andq	-168(%rbp), %rax
	movl	-180(%rbp), %esi
	movl	%esi, %ecx
                                        # kill: CL<def> RCX<kill>
	shrq	%cl, %rax
	movb	-960(%rbp,%rax), %cl
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -56(%rbp)
	movb	%cl, (%rax)
.LBB12_57:                              # %if.end.182
                                        #   in Loop: Header=BB12_48 Depth=2
	jmp	.LBB12_58
.LBB12_58:                              # %for.inc.183
                                        #   in Loop: Header=BB12_48 Depth=2
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB12_48
.LBB12_59:                              # %for.end.185
                                        #   in Loop: Header=BB12_46 Depth=1
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -9172(%rbp)
	je	.LBB12_61
# BB#60:                                # %if.then.188
	jmp	.LBB12_72
.LBB12_61:                              # %if.end.189
                                        #   in Loop: Header=BB12_46 Depth=1
	movl	$0, -80(%rbp)
.LBB12_62:                              # %for.cond.190
                                        #   Parent Loop BB12_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-80(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jge	.LBB12_65
# BB#63:                                # %for.body.193
                                        #   in Loop: Header=BB12_62 Depth=2
	movq	-24(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -9284(%rbp)       # 4-byte Spill
# BB#64:                                # %for.inc.195
                                        #   in Loop: Header=BB12_62 Depth=2
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB12_62
.LBB12_65:                              # %for.end.197
                                        #   in Loop: Header=BB12_46 Depth=1
	movl	$20, %eax
	movl	-76(%rbp), %ecx
	movl	%eax, -9288(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-9288(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB12_67
# BB#66:                                # %if.then.200
                                        #   in Loop: Header=BB12_46 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	-68(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -9292(%rbp)       # 4-byte Spill
.LBB12_67:                              # %if.end.206
                                        #   in Loop: Header=BB12_46 Depth=1
	movl	-104(%rbp), %eax
	cmpl	-100(%rbp), %eax
	je	.LBB12_69
# BB#68:                                # %lor.lhs.false.209
                                        #   in Loop: Header=BB12_46 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	cmpl	-68(%rbp), %eax
	jne	.LBB12_70
.LBB12_69:                              # %if.then.213
                                        #   in Loop: Header=BB12_46 Depth=1
	leaq	-9232(%rbp), %rdi
	xorl	%edx, %edx
	movq	-968(%rbp), %rsi
	movl	-76(%rbp), %eax
	subl	-104(%rbp), %eax
	addl	$1, %eax
	movl	-64(%rbp), %r8d
	movl	-104(%rbp), %r9d
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_set_rect
	movl	$0, -104(%rbp)
	movq	-968(%rbp), %rsi
	movq	%rsi, -56(%rbp)
.LBB12_70:                              # %if.end.216
                                        #   in Loop: Header=BB12_46 Depth=1
	jmp	.LBB12_71
.LBB12_71:                              # %for.inc.217
                                        #   in Loop: Header=BB12_46 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB12_46
.LBB12_72:                              # %for.end.219
	jmp	.LBB12_101
.LBB12_73:                              # %if.else.220
	movl	$0, -76(%rbp)
.LBB12_74:                              # %for.cond.221
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_76 Depth 2
                                        #     Child Loop BB12_90 Depth 2
	movl	-76(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB12_100
# BB#75:                                # %for.body.224
                                        #   in Loop: Header=BB12_74 Depth=1
	movl	$0, -80(%rbp)
.LBB12_76:                              # %for.cond.225
                                        #   Parent Loop BB12_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-80(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB12_87
# BB#77:                                # %for.body.228
                                        #   in Loop: Header=BB12_76 Depth=2
	movq	-24(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -84(%rbp)
	movq	-24(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -88(%rbp)
	movq	-24(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -92(%rbp)
	cmpl	$0, -92(%rbp)
	jge	.LBB12_79
# BB#78:                                # %if.then.234
                                        #   in Loop: Header=BB12_74 Depth=1
	movl	$1, -9172(%rbp)
	jmp	.LBB12_87
.LBB12_79:                              # %if.end.235
                                        #   in Loop: Header=BB12_76 Depth=2
	cmpb	$0, -57(%rbp)
	je	.LBB12_81
# BB#80:                                # %if.then.237
                                        #   in Loop: Header=BB12_76 Depth=2
	movl	-84(%rbp), %eax
	movl	-88(%rbp), %ecx
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	-92(%rbp), %ecx
	shll	$16, %ecx
	orl	%ecx, %eax
	movslq	%eax, %rdx
	movq	%rdx, -112(%rbp)
	jmp	.LBB12_82
.LBB12_81:                              # %if.else.243
                                        #   in Loop: Header=BB12_76 Depth=2
	movl	-84(%rbp), %eax
	shll	$16, %eax
	movl	-88(%rbp), %ecx
	shll	$8, %ecx
	orl	%ecx, %eax
	orl	-92(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, -112(%rbp)
.LBB12_82:                              # %if.end.249
                                        #   in Loop: Header=BB12_76 Depth=2
	leaq	-9168(%rbp), %rsi
	movq	-112(%rbp), %rdi
	movq	-56(%rbp), %rdx
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	-56(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -9304(%rbp)       # 8-byte Spill
	movq	%rax, %rcx
	movq	-9304(%rbp), %r8        # 8-byte Reload
	callq	get_pixelmap
	cmpl	$0, %eax
	je	.LBB12_84
# BB#83:                                # %if.then.254
                                        #   in Loop: Header=BB12_76 Depth=2
	movq	-56(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB12_85
.LBB12_84:                              # %if.else.256
                                        #   in Loop: Header=BB12_76 Depth=2
	movq	-112(%rbp), %rax
	andq	-152(%rbp), %rax
	movl	-172(%rbp), %ecx
                                        # kill: RCX<def> ECX<kill>
                                        # kill: CL<def> RCX<kill>
	shrq	%cl, %rax
	movb	-448(%rbp,%rax), %cl
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -56(%rbp)
	movb	%cl, (%rax)
	movq	-112(%rbp), %rax
	andq	-160(%rbp), %rax
	movl	-176(%rbp), %esi
	movl	%esi, %ecx
                                        # kill: CL<def> RCX<kill>
	shrq	%cl, %rax
	movb	-704(%rbp,%rax), %cl
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -56(%rbp)
	movb	%cl, (%rax)
	movq	-112(%rbp), %rax
	andq	-168(%rbp), %rax
	movl	-180(%rbp), %esi
	movl	%esi, %ecx
                                        # kill: CL<def> RCX<kill>
	shrq	%cl, %rax
	movb	-960(%rbp,%rax), %cl
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -56(%rbp)
	movb	%cl, (%rax)
.LBB12_85:                              # %if.end.272
                                        #   in Loop: Header=BB12_76 Depth=2
	jmp	.LBB12_86
.LBB12_86:                              # %for.inc.273
                                        #   in Loop: Header=BB12_76 Depth=2
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB12_76
.LBB12_87:                              # %for.end.275
                                        #   in Loop: Header=BB12_74 Depth=1
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -9172(%rbp)
	je	.LBB12_89
# BB#88:                                # %if.then.278
	jmp	.LBB12_100
.LBB12_89:                              # %if.end.279
                                        #   in Loop: Header=BB12_74 Depth=1
	movl	$0, -80(%rbp)
.LBB12_90:                              # %for.cond.280
                                        #   Parent Loop BB12_74 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-80(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jge	.LBB12_93
# BB#91:                                # %for.body.283
                                        #   in Loop: Header=BB12_90 Depth=2
	movq	-24(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -9308(%rbp)       # 4-byte Spill
# BB#92:                                # %for.inc.285
                                        #   in Loop: Header=BB12_90 Depth=2
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB12_90
.LBB12_93:                              # %for.end.287
                                        #   in Loop: Header=BB12_74 Depth=1
	movl	$20, %eax
	movl	-76(%rbp), %ecx
	movl	%eax, -9312(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-9312(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB12_95
# BB#94:                                # %if.then.291
                                        #   in Loop: Header=BB12_74 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	-68(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -9316(%rbp)       # 4-byte Spill
.LBB12_95:                              # %if.end.297
                                        #   in Loop: Header=BB12_74 Depth=1
	movl	-104(%rbp), %eax
	cmpl	-100(%rbp), %eax
	je	.LBB12_97
# BB#96:                                # %lor.lhs.false.300
                                        #   in Loop: Header=BB12_74 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	cmpl	-68(%rbp), %eax
	jne	.LBB12_98
.LBB12_97:                              # %if.then.304
                                        #   in Loop: Header=BB12_74 Depth=1
	leaq	-9232(%rbp), %rdi
	xorl	%edx, %edx
	movq	-968(%rbp), %rsi
	movl	-76(%rbp), %eax
	subl	-104(%rbp), %eax
	addl	$1, %eax
	movl	-64(%rbp), %r8d
	movl	-104(%rbp), %r9d
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_set_rect
	movl	$0, -104(%rbp)
	movq	-968(%rbp), %rsi
	movq	%rsi, -56(%rbp)
.LBB12_98:                              # %if.end.307
                                        #   in Loop: Header=BB12_74 Depth=1
	jmp	.LBB12_99
.LBB12_99:                              # %for.inc.308
                                        #   in Loop: Header=BB12_74 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB12_74
.LBB12_100:                             # %for.end.310
	jmp	.LBB12_101
.LBB12_101:                             # %if.end.311
	movq	-968(%rbp), %rdi
	callq	g_free
	cmpl	$0, -9172(%rbp)
	je	.LBB12_103
# BB#102:                               # %if.then.313
	movabsq	$.L.str.45, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
.LBB12_103:                             # %if.end.315
	movq	-9240(%rbp), %rdi
	callq	gimp_drawable_flush
	cmpl	$0, -9172(%rbp)
	je	.LBB12_105
# BB#104:                               # %cond.true
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -9320(%rbp)       # 4-byte Spill
	jmp	.LBB12_106
.LBB12_105:                             # %cond.false
	movl	-9180(%rbp), %eax
	movl	%eax, -9320(%rbp)       # 4-byte Spill
.LBB12_106:                             # %cond.end
	movl	-9320(%rbp), %eax       # 4-byte Reload
	movl	%eax, -4(%rbp)
.LBB12_107:                             # %return
	movl	-4(%rbp), %eax
	addq	$9328, %rsp             # imm = 0x2470
	popq	%rbp
	retq
.Lfunc_end12:
	.size	load_xwd_f2_d24_b32, .Lfunc_end12-load_xwd_f2_d24_b32
	.cfi_endproc

	.align	16, 0x90
	.type	read_card32,@function
read_card32:                            # @read_card32
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp46:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movslq	%eax, %rsi
	shlq	$24, %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movslq	%eax, %rsi
	shlq	$16, %rsi
	orq	-24(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movslq	%eax, %rsi
	shlq	$8, %rsi
	orq	-24(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movq	-16(%rbp), %rsi
	movl	%eax, (%rsi)
	movslq	%eax, %rsi
	orq	-24(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$0, (%rsi)
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movq	-16(%rbp), %rsi
	movl	%eax, (%rsi)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	read_card32, .Lfunc_end13-read_card32
	.cfi_endproc

	.align	16, 0x90
	.type	read_card16,@function
read_card16:                            # @read_card16
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp49:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movw	%ax, %cx
	movzwl	%cx, %eax
	shll	$8, %eax
	movw	%ax, %cx
	movw	%cx, -18(%rbp)
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movq	-16(%rbp), %rsi
	movl	%eax, (%rsi)
	movw	%ax, %cx
	movzwl	%cx, %eax
	movzwl	-18(%rbp), %edx
	orl	%eax, %edx
	movw	%dx, %cx
	movw	%cx, -18(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$0, (%rsi)
	setl	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %eax
	movq	-16(%rbp), %rsi
	movl	%eax, (%rsi)
	movzwl	-18(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	read_card16, .Lfunc_end14-read_card16
	.cfi_endproc

	.align	16, 0x90
	.type	read_card8,@function
read_card8:                             # @read_card8
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movq	-16(%rbp), %rsi
	movl	%eax, (%rsi)
	movb	%al, %cl
	movb	%cl, -17(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$0, (%rsi)
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movq	-16(%rbp), %rsi
	movl	%eax, (%rsi)
	movzbl	-17(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	read_card8, .Lfunc_end15-read_card8
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	create_new_image,@function
create_new_image:                       # @create_new_image
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
	subq	$112, %rsp
	movq	16(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	%rax, -56(%rbp)
	movl	-28(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	je	.LBB16_3
	jmp	.LBB16_7
.LBB16_7:                               # %entry
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB16_1
	jmp	.LBB16_8
.LBB16_8:                               # %entry
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB16_2
	jmp	.LBB16_4
.LBB16_1:                               # %sw.bb
	movl	$2, -64(%rbp)
	jmp	.LBB16_5
.LBB16_2:                               # %sw.bb.1
	movl	$4, -64(%rbp)
	jmp	.LBB16_5
.LBB16_3:                               # %sw.bb.2
	movl	$0, -64(%rbp)
	jmp	.LBB16_5
.LBB16_4:                               # %sw.default
	movabsq	$.L.str.46, %rdi
	movb	$0, %al
	callq	g_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB16_6
.LBB16_5:                               # %sw.epilog
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	callq	gimp_image_new
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	gimp_image_set_filename
	movabsq	$.L.str.47, %rsi
	movsd	.LCPI16_0, %xmm0        # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movl	-60(%rbp), %edi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-64(%rbp), %r8d
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	gimp_layer_new
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movl	%eax, (%rsi)
	movl	-60(%rbp), %edi
	movq	-40(%rbp), %rsi
	movl	(%rsi), %esi
	callq	gimp_image_insert_layer
	movq	-40(%rbp), %r10
	movl	(%r10), %edi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gimp_drawable_get
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-48(%rbp), %r10
	movq	%rax, (%r10)
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	(%rax), %rsi
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	4(%rax), %r8d
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %r9d
	movl	%edx, -88(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	-60(%rbp), %ecx
	movl	%ecx, -4(%rbp)
.LBB16_6:                               # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	create_new_image, .Lfunc_end16-create_new_image
	.cfi_endproc

	.align	16, 0x90
	.type	set_bw_color_table,@function
set_bw_color_table:                     # @set_bw_color_table
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
	subq	$16, %rsp
	movabsq	$set_bw_color_table.BWColorMap, %rsi
	movl	$2, %edx
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_image_set_colormap
	movl	%eax, -8(%rbp)          # 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	set_bw_color_table, .Lfunc_end17-set_bw_color_table
	.cfi_endproc

	.align	16, 0x90
	.type	set_color_table,@function
set_color_table:                        # @set_color_table
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
	subq	$832, %rsp              # imm = 0x340
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	144(%rdx), %rdx
	movl	%edx, %edi
	movl	%edi, -28(%rbp)
	movq	-16(%rbp), %rdx
	movq	152(%rdx), %rdx
	movslq	-28(%rbp), %rsi
	cmpq	%rsi, %rdx
	jae	.LBB18_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	152(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
.LBB18_2:                               # %if.end
	cmpl	$0, -28(%rbp)
	jg	.LBB18_4
# BB#3:                                 # %if.then.7
	jmp	.LBB18_14
.LBB18_4:                               # %if.end.8
	cmpl	$256, -28(%rbp)         # imm = 0x100
	jle	.LBB18_6
# BB#5:                                 # %if.then.11
	movl	$256, -28(%rbp)         # imm = 0x100
.LBB18_6:                               # %if.end.12
	leaq	-816(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	init_color_table256
	movl	$0, -36(%rbp)
.LBB18_7:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB18_13
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB18_7 Depth=1
	movslq	-36(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, -32(%rbp)
	cmpl	$0, -32(%rbp)
	jl	.LBB18_11
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB18_7 Depth=1
	cmpl	$256, -32(%rbp)         # imm = 0x100
	jge	.LBB18_11
# BB#10:                                # %if.then.20
                                        #   in Loop: Header=BB18_7 Depth=1
	movslq	-36(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	movzwl	8(%rax), %ecx
	sarl	$8, %ecx
	movb	%cl, %dl
	imull	$3, -32(%rbp), %ecx
	movslq	%ecx, %rax
	movb	%dl, -816(%rbp,%rax)
	movslq	-36(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	movzwl	10(%rax), %ecx
	sarl	$8, %ecx
	movb	%cl, %dl
	imull	$3, -32(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	movb	%dl, -816(%rbp,%rax)
	movslq	-36(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	movzwl	12(%rax), %ecx
	sarl	$8, %ecx
	movb	%cl, %dl
	imull	$3, -32(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rax
	movb	%dl, -816(%rbp,%rax)
.LBB18_11:                              # %if.end.44
                                        #   in Loop: Header=BB18_7 Depth=1
	jmp	.LBB18_12
.LBB18_12:                              # %for.inc
                                        #   in Loop: Header=BB18_7 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB18_7
.LBB18_13:                              # %for.end
	movl	$256, %edx              # imm = 0x100
	leaq	-816(%rbp), %rsi
	movl	-4(%rbp), %edi
	callq	gimp_image_set_colormap
	movl	%eax, -820(%rbp)        # 4-byte Spill
.LBB18_14:                              # %return
	addq	$832, %rsp              # imm = 0x340
	popq	%rbp
	retq
.Lfunc_end18:
	.size	set_color_table, .Lfunc_end18-set_color_table
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB19_2
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
.LBB19_2:                               # %entry
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
.Lfunc_end19:
	.size	g_warning, .Lfunc_end19-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	init_color_table256,@function
init_color_table256:                    # @init_color_table256
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -36(%rbp)
	movq	-8(%rbp), %rsi
	movq	112(%rsi), %rsi
	movl	%esi, %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, %eax
	jne	.LBB20_2
# BB#1:                                 # %if.then
	jmp	.LBB20_29
.LBB20_2:                               # %if.end
	jmp	.LBB20_3
.LBB20_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB20_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB20_3 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movl	-48(%rbp), %eax
	sarl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB20_3
.LBB20_5:                               # %while.end
	movq	-8(%rbp), %rax
	movq	120(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, -52(%rbp)
	cmpl	$0, %ecx
	jne	.LBB20_7
# BB#6:                                 # %if.then.7
	jmp	.LBB20_29
.LBB20_7:                               # %if.end.8
	jmp	.LBB20_8
.LBB20_8:                               # %while.cond.9
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB20_10
# BB#9:                                 # %while.body.13
                                        #   in Loop: Header=BB20_8 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-52(%rbp), %eax
	sarl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB20_8
.LBB20_10:                              # %while.end.16
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movl	%eax, %ecx
	movl	%ecx, -56(%rbp)
	cmpl	$0, %ecx
	jne	.LBB20_12
# BB#11:                                # %if.then.20
	jmp	.LBB20_29
.LBB20_12:                              # %if.end.21
	jmp	.LBB20_13
.LBB20_13:                              # %while.cond.22
                                        # =>This Inner Loop Header: Depth=1
	movl	-56(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB20_15
# BB#14:                                # %while.body.26
                                        #   in Loop: Header=BB20_13 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	-56(%rbp), %eax
	sarl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB20_13
.LBB20_15:                              # %while.end.29
	xorl	%esi, %esi
	movl	$768, %eax              # imm = 0x300
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	callq	memset
	movl	$0, -20(%rbp)
.LBB20_16:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_18 Depth 2
                                        #       Child Loop BB20_20 Depth 3
	movl	-20(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jg	.LBB20_29
# BB#17:                                # %for.body
                                        #   in Loop: Header=BB20_16 Depth=1
	movl	$0, -24(%rbp)
.LBB20_18:                              # %for.cond.32
                                        #   Parent Loop BB20_16 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB20_20 Depth 3
	movl	-24(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jg	.LBB20_27
# BB#19:                                # %for.body.35
                                        #   in Loop: Header=BB20_18 Depth=2
	movl	$0, -28(%rbp)
.LBB20_20:                              # %for.cond.36
                                        #   Parent Loop BB20_16 Depth=1
                                        #     Parent Loop BB20_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-28(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jg	.LBB20_25
# BB#21:                                # %for.body.39
                                        #   in Loop: Header=BB20_20 Depth=3
	movl	-20(%rbp), %eax
	movl	-36(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	-24(%rbp), %edx
	movl	-40(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edx
	orl	%edx, %eax
	movl	-28(%rbp), %edx
	movl	-44(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edx
	orl	%edx, %eax
	movl	%eax, -32(%rbp)
	cmpl	$256, -32(%rbp)         # imm = 0x100
	jge	.LBB20_23
# BB#22:                                # %if.then.45
                                        #   in Loop: Header=BB20_20 Depth=3
	imull	$255, -20(%rbp), %eax
	cltd
	idivl	-48(%rbp)
	movb	%al, %cl
	imull	$3, -32(%rbp), %eax
	movslq	%eax, %rsi
	movq	-16(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
	imull	$255, -24(%rbp), %eax
	cltd
	idivl	-52(%rbp)
	movb	%al, %cl
	imull	$3, -32(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	movq	-16(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
	imull	$255, -28(%rbp), %eax
	cltd
	idivl	-56(%rbp)
	movb	%al, %cl
	imull	$3, -32(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rsi
	movq	-16(%rbp), %rdi
	movb	%cl, (%rdi,%rsi)
.LBB20_23:                              # %if.end.61
                                        #   in Loop: Header=BB20_20 Depth=3
	jmp	.LBB20_24
.LBB20_24:                              # %for.inc
                                        #   in Loop: Header=BB20_20 Depth=3
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB20_20
.LBB20_25:                              # %for.end
                                        #   in Loop: Header=BB20_18 Depth=2
	jmp	.LBB20_26
.LBB20_26:                              # %for.inc.63
                                        #   in Loop: Header=BB20_18 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB20_18
.LBB20_27:                              # %for.end.65
                                        #   in Loop: Header=BB20_16 Depth=1
	jmp	.LBB20_28
.LBB20_28:                              # %for.inc.66
                                        #   in Loop: Header=BB20_16 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB20_16
.LBB20_29:                              # %for.end.68
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	init_color_table256, .Lfunc_end20-init_color_table256
	.cfi_endproc

	.align	16, 0x90
	.type	set_pixelmap,@function
set_pixelmap:                           # @set_pixelmap
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
	subq	$48, %rsp
	xorl	%eax, %eax
	movl	$8200, %ecx             # imm = 0x2008
	movl	%ecx, %r8d
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, %rdi
	movl	%eax, %esi
	movq	%r8, %rdx
	callq	memset
	movl	$0, -40(%rbp)
	movl	$0, -32(%rbp)
.LBB21_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_3 Depth 2
                                        #     Child Loop BB21_15 Depth 2
	movl	-32(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB21_21
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB21_1 Depth=1
	movslq	-32(%rbp), %rax
	shlq	$4, %rax
	addq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -36(%rbp)
.LBB21_3:                               # %for.cond.1
                                        #   Parent Loop BB21_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB21_8
# BB#4:                                 # %for.body.3
                                        #   in Loop: Header=BB21_3 Depth=2
	movq	-48(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	-24(%rbp), %rdx
	addq	$4104, %rdx             # imm = 0x1008
	shlq	$4, %rcx
	addq	%rcx, %rdx
	cmpq	(%rdx), %rax
	ja	.LBB21_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB21_1 Depth=1
	jmp	.LBB21_8
.LBB21_6:                               # %if.end
                                        #   in Loop: Header=BB21_3 Depth=2
	jmp	.LBB21_7
.LBB21_7:                               # %for.inc
                                        #   in Loop: Header=BB21_3 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB21_3
.LBB21_8:                               # %for.end
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB21_11
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-48(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	-24(%rbp), %rdx
	addq	$4104, %rdx             # imm = 0x1008
	shlq	$4, %rcx
	addq	%rcx, %rdx
	cmpq	(%rdx), %rax
	jne	.LBB21_11
# BB#10:                                # %if.then.14
	jmp	.LBB21_21
.LBB21_11:                              # %if.end.15
                                        #   in Loop: Header=BB21_1 Depth=1
	cmpl	$256, -36(%rbp)         # imm = 0x100
	jl	.LBB21_13
# BB#12:                                # %if.then.17
	jmp	.LBB21_21
.LBB21_13:                              # %if.end.18
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB21_19
# BB#14:                                # %if.then.20
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	-40(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -28(%rbp)
.LBB21_15:                              # %for.cond.21
                                        #   Parent Loop BB21_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-28(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.LBB21_18
# BB#16:                                # %for.body.23
                                        #   in Loop: Header=BB21_15 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	addq	$4104, %rdx             # imm = 0x1008
	shlq	$4, %rcx
	addq	%rcx, %rdx
	movslq	-28(%rbp), %rcx
	movq	-24(%rbp), %rsi
	addq	$4104, %rsi             # imm = 0x1008
	shlq	$4, %rcx
	addq	%rcx, %rsi
	movq	(%rsi), %rcx
	movq	%rcx, (%rdx)
	movq	8(%rsi), %rcx
	movq	%rcx, 8(%rdx)
# BB#17:                                # %for.inc.30
                                        #   in Loop: Header=BB21_15 Depth=2
	movl	-28(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB21_15
.LBB21_18:                              # %for.end.31
                                        #   in Loop: Header=BB21_1 Depth=1
	jmp	.LBB21_19
.LBB21_19:                              # %if.end.32
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-48(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	-24(%rbp), %rdx
	addq	$4104, %rdx             # imm = 0x1008
	shlq	$4, %rcx
	addq	%rcx, %rdx
	movq	%rax, (%rdx)
	movslq	-32(%rbp), %rax
	shlq	$4, %rax
	addq	-16(%rbp), %rax
	movzwl	8(%rax), %esi
	sarl	$8, %esi
	movb	%sil, %dil
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	$4104, %rcx             # imm = 0x1008
	shlq	$4, %rax
	addq	%rax, %rcx
	movb	%dil, 8(%rcx)
	movslq	-32(%rbp), %rax
	shlq	$4, %rax
	addq	-16(%rbp), %rax
	movzwl	10(%rax), %esi
	sarl	$8, %esi
	movb	%sil, %dil
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	$4104, %rcx             # imm = 0x1008
	shlq	$4, %rax
	addq	%rax, %rcx
	movb	%dil, 9(%rcx)
	movslq	-32(%rbp), %rax
	shlq	$4, %rax
	addq	-16(%rbp), %rax
	movzwl	12(%rax), %esi
	sarl	$8, %esi
	movb	%sil, %dil
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	$4104, %rcx             # imm = 0x1008
	shlq	$4, %rax
	addq	%rax, %rcx
	movb	%dil, 10(%rcx)
	movq	-48(%rbp), %rax
	andq	$4095, %rax             # imm = 0xFFF
	movq	-24(%rbp), %rcx
	movb	$1, 4(%rcx,%rax)
	movl	-40(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -40(%rbp)
# BB#20:                                # %for.inc.61
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB21_1
.LBB21_21:                              # %for.end.63
	movl	-40(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-24(%rbp), %rcx
	movl	(%rcx), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	set_pixelmap, .Lfunc_end21-set_pixelmap
	.cfi_endproc

	.align	16, 0x90
	.type	get_pixelmap,@function
get_pixelmap:                           # @get_pixelmap
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-24(%rbp), %rcx
	cmpl	$0, (%rcx)
	jne	.LBB22_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB22_13
.LBB22_2:                               # %if.end
	movq	-16(%rbp), %rax
	andq	$4095, %rax             # imm = 0xFFF
	movq	-24(%rbp), %rcx
	cmpb	$0, 4(%rcx,%rax)
	jne	.LBB22_4
# BB#3:                                 # %if.then.1
	movl	$0, -4(%rbp)
	jmp	.LBB22_13
.LBB22_4:                               # %if.end.2
	movq	-24(%rbp), %rax
	addq	$4104, %rax             # imm = 0x1008
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-24(%rbp), %rdx
	addq	$4104, %rdx             # imm = 0x1008
	shlq	$4, %rax
	addq	%rax, %rdx
	movq	%rdx, -64(%rbp)
.LBB22_5:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	cmpq	-64(%rbp), %rax
	jae	.LBB22_10
# BB#6:                                 # %while.body
                                        #   in Loop: Header=BB22_5 Depth=1
	movl	$2, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rdi
	subq	%rdi, %rsi
	sarq	$4, %rsi
	movq	%rsi, %rax
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	cqto
	idivq	%rcx
	shlq	$4, %rax
	movq	-80(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	-72(%rbp), %rcx
	cmpq	(%rcx), %rax
	ja	.LBB22_8
# BB#7:                                 # %if.then.9
                                        #   in Loop: Header=BB22_5 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB22_9
.LBB22_8:                               # %if.else
                                        #   in Loop: Header=BB22_5 Depth=1
	movq	-72(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -56(%rbp)
.LBB22_9:                               # %if.end.11
                                        #   in Loop: Header=BB22_5 Depth=1
	jmp	.LBB22_5
.LBB22_10:                              # %while.end
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rcx
	cmpq	(%rcx), %rax
	jne	.LBB22_12
# BB#11:                                # %if.then.14
	movq	-56(%rbp), %rax
	movb	8(%rax), %cl
	movq	-32(%rbp), %rax
	movb	%cl, (%rax)
	movq	-56(%rbp), %rax
	movb	9(%rax), %cl
	movq	-40(%rbp), %rax
	movb	%cl, (%rax)
	movq	-56(%rbp), %rax
	movb	10(%rax), %cl
	movq	-48(%rbp), %rax
	movb	%cl, (%rax)
	movl	$1, -4(%rbp)
	jmp	.LBB22_13
.LBB22_12:                              # %if.end.18
	movl	$0, -4(%rbp)
.LBB22_13:                              # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end22:
	.size	get_pixelmap, .Lfunc_end22-get_pixelmap
	.cfi_endproc

	.align	16, 0x90
	.type	save_index,@function
save_index:                             # @save_index
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
	subq	$4512, %rsp             # imm = 0x11A0
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	$0, -72(%rbp)
	movl	-24(%rbp), %edi
	callq	gimp_drawable_get
	movq	%rax, -4456(%rbp)
	movq	-4456(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movq	-4456(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -32(%rbp)
	callq	gimp_tile_height
	leaq	-4448(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%eax, -44(%rbp)
	movq	-4456(%rbp), %rsi
	movl	-36(%rbp), %r8d
	movl	-32(%rbp), %r9d
	movl	%ecx, %edx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$1, %eax
	movl	%eax, %esi
	movl	-44(%rbp), %eax
	imull	-36(%rbp), %eax
	movq	-4456(%rbp), %rdi
	imull	12(%rdi), %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	g_malloc_n
	movl	$4, %ecx
	movq	%rax, -80(%rbp)
	movq	%rax, -88(%rbp)
	movl	-36(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%edx, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB23_2
# BB#1:                                 # %if.then
	movl	$4, %eax
	subl	-40(%rbp), %eax
	movl	%eax, -40(%rbp)
.LBB23_2:                               # %if.end
	cmpl	$0, -28(%rbp)
	je	.LBB23_8
# BB#3:                                 # %if.then.14
	movl	$0, -60(%rbp)
	movl	$256, -56(%rbp)         # imm = 0x100
	movl	$0, -52(%rbp)
.LBB23_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB23_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB23_4 Depth=1
	leaq	-4400(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movslq	-52(%rbp), %rdx
	shlq	$4, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movq	%rcx, (%rsi)
	movl	-52(%rbp), %edi
	shll	$8, %edi
	orl	-52(%rbp), %edi
	movw	%di, %r8w
	movslq	-52(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movw	%r8w, 8(%rdx)
	movl	-52(%rbp), %edi
	shll	$8, %edi
	orl	-52(%rbp), %edi
	movw	%di, %r8w
	movslq	-52(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movw	%r8w, 10(%rdx)
	movl	-52(%rbp), %edi
	shll	$8, %edi
	orl	-52(%rbp), %edi
	movw	%di, %r8w
	movslq	-52(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movw	%r8w, 12(%rdx)
	movslq	-52(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movb	$7, 14(%rdx)
	movslq	-52(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movb	$0, 15(%rax)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB23_4 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB23_4
.LBB23_7:                               # %for.end
	jmp	.LBB23_13
.LBB23_8:                               # %if.else
	leaq	-56(%rbp), %rsi
	movl	$3, -60(%rbp)
	movl	-20(%rbp), %edi
	callq	gimp_image_get_colormap
	movq	%rax, -96(%rbp)
	movl	$0, -52(%rbp)
.LBB23_9:                               # %for.cond.35
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB23_12
# BB#10:                                # %for.body.38
                                        #   in Loop: Header=BB23_9 Depth=1
	leaq	-4400(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movslq	-52(%rbp), %rdx
	shlq	$4, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movq	%rcx, (%rsi)
	movq	-96(%rbp), %rcx
	movzbl	(%rcx), %edi
	shll	$8, %edi
	movq	-96(%rbp), %rcx
	movzbl	(%rcx), %r8d
	orl	%r8d, %edi
	movw	%di, %r9w
	movslq	-52(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movw	%r9w, 8(%rdx)
	movq	-96(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -96(%rbp)
	movq	-96(%rbp), %rcx
	movzbl	(%rcx), %edi
	shll	$8, %edi
	movq	-96(%rbp), %rcx
	movzbl	(%rcx), %r8d
	orl	%r8d, %edi
	movw	%di, %r9w
	movslq	-52(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movw	%r9w, 10(%rdx)
	movq	-96(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -96(%rbp)
	movq	-96(%rbp), %rcx
	movzbl	(%rcx), %edi
	shll	$8, %edi
	movq	-96(%rbp), %rcx
	movzbl	(%rcx), %r8d
	orl	%r8d, %edi
	movw	%di, %r9w
	movslq	-52(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movw	%r9w, 12(%rdx)
	movq	-96(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -96(%rbp)
	movslq	-52(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movb	$7, 14(%rdx)
	movslq	-52(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movb	$0, 15(%rax)
# BB#11:                                # %for.inc.75
                                        #   in Loop: Header=BB23_9 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB23_9
.LBB23_12:                              # %for.end.77
	jmp	.LBB23_13
.LBB23_13:                              # %if.end.78
	leaq	-296(%rbp), %rsi
	movq	$0, -296(%rbp)
	movq	$7, -288(%rbp)
	movq	$2, -280(%rbp)
	movq	$8, -272(%rbp)
	movslq	-36(%rbp), %rax
	movq	%rax, -264(%rbp)
	movslq	-32(%rbp), %rax
	movq	%rax, -256(%rbp)
	movq	$0, -248(%rbp)
	movq	$1, -240(%rbp)
	movq	$32, -232(%rbp)
	movq	$1, -224(%rbp)
	movq	$32, -216(%rbp)
	movq	$8, -208(%rbp)
	movl	-36(%rbp), %ecx
	addl	-40(%rbp), %ecx
	movslq	%ecx, %rax
	movq	%rax, -200(%rbp)
	movslq	-60(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	$0, -184(%rbp)
	movq	$0, -176(%rbp)
	movq	$0, -168(%rbp)
	movq	$8, -160(%rbp)
	movslq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)
	movslq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)
	movslq	-36(%rbp), %rax
	movq	%rax, -136(%rbp)
	movslq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	$64, -120(%rbp)
	movq	$64, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	-16(%rbp), %rdi
	callq	write_xwd_header
	leaq	-296(%rbp), %rsi
	leaq	-4400(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	write_xwd_cols
	movl	$0, -48(%rbp)
.LBB23_14:                              # %for.cond.87
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB23_26
# BB#15:                                # %for.body.90
                                        #   in Loop: Header=BB23_14 Depth=1
	movl	-48(%rbp), %eax
	cltd
	idivl	-44(%rbp)
	cmpl	$0, %edx
	jne	.LBB23_20
# BB#16:                                # %if.then.94
                                        #   in Loop: Header=BB23_14 Depth=1
	movl	-48(%rbp), %eax
	addl	-44(%rbp), %eax
	subl	$1, %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB23_18
# BB#17:                                # %cond.true
                                        #   in Loop: Header=BB23_14 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, -4464(%rbp)       # 4-byte Spill
	jmp	.LBB23_19
.LBB23_18:                              # %cond.false
                                        #   in Loop: Header=BB23_14 Depth=1
	movl	-32(%rbp), %eax
	subl	-48(%rbp), %eax
	movl	%eax, -4464(%rbp)       # 4-byte Spill
.LBB23_19:                              # %cond.end
                                        #   in Loop: Header=BB23_14 Depth=1
	movl	-4464(%rbp), %eax       # 4-byte Reload
	leaq	-4448(%rbp), %rdi
	xorl	%edx, %edx
	movl	%eax, -4460(%rbp)
	movq	-80(%rbp), %rsi
	movl	-48(%rbp), %ecx
	movl	-36(%rbp), %r8d
	movl	-4460(%rbp), %r9d
	callq	gimp_pixel_rgn_get_rect
	movq	-80(%rbp), %rsi
	movq	%rsi, -88(%rbp)
.LBB23_20:                              # %if.end.101
                                        #   in Loop: Header=BB23_14 Depth=1
	movl	$1, %eax
	movl	%eax, %edx
	movq	-88(%rbp), %rdi
	movslq	-36(%rbp), %rsi
	movq	-16(%rbp), %rcx
	callq	fwrite
	cmpl	$0, -40(%rbp)
	movq	%rax, -4472(%rbp)       # 8-byte Spill
	je	.LBB23_22
# BB#21:                                # %if.then.105
                                        #   in Loop: Header=BB23_14 Depth=1
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-72(%rbp), %rcx
	movslq	-40(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -4480(%rbp)       # 8-byte Spill
	movq	%rcx, %rdi
	movq	-4480(%rbp), %rcx       # 8-byte Reload
	callq	fwrite
	movq	%rax, -4488(%rbp)       # 8-byte Spill
.LBB23_22:                              # %if.end.108
                                        #   in Loop: Header=BB23_14 Depth=1
	movl	$20, %eax
	movl	-36(%rbp), %ecx
	movq	-88(%rbp), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -88(%rbp)
	movl	-48(%rbp), %ecx
	movl	%eax, -4492(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-4492(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB23_24
# BB#23:                                # %if.then.112
                                        #   in Loop: Header=BB23_14 Depth=1
	cvtsi2sdl	-48(%rbp), %xmm0
	cvtsi2sdl	-32(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -4496(%rbp)       # 4-byte Spill
.LBB23_24:                              # %if.end.116
                                        #   in Loop: Header=BB23_14 Depth=1
	jmp	.LBB23_25
.LBB23_25:                              # %for.inc.117
                                        #   in Loop: Header=BB23_14 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB23_14
.LBB23_26:                              # %for.end.119
	movq	-80(%rbp), %rdi
	callq	g_free
	movq	-4456(%rbp), %rdi
	callq	gimp_drawable_detach
	movq	-16(%rbp), %rdi
	callq	ferror
	cmpl	$0, %eax
	je	.LBB23_28
# BB#27:                                # %if.then.122
	movabsq	$.L.str.54, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$0, -4(%rbp)
	jmp	.LBB23_29
.LBB23_28:                              # %if.end.124
	movl	$1, -4(%rbp)
.LBB23_29:                              # %return
	movl	-4(%rbp), %eax
	addq	$4512, %rsp             # imm = 0x11A0
	popq	%rbp
	retq
.Lfunc_end23:
	.size	save_index, .Lfunc_end23-save_index
	.cfi_endproc

	.align	16, 0x90
	.type	save_rgb,@function
save_rgb:                               # @save_rgb
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
	subq	$400, %rsp              # imm = 0x190
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	$0, -56(%rbp)
	movl	-24(%rbp), %edi
	callq	gimp_drawable_get
	movq	%rax, -328(%rbp)
	movq	-328(%rbp), %rax
	movl	4(%rax), %edx
	movl	%edx, -32(%rbp)
	movq	-328(%rbp), %rax
	movl	8(%rax), %edx
	movl	%edx, -28(%rbp)
	callq	gimp_tile_height
	leaq	-320(%rbp), %rdi
	xorl	%edx, %edx
	movl	%eax, -40(%rbp)
	movq	-328(%rbp), %rsi
	movl	-32(%rbp), %r8d
	movl	-28(%rbp), %r9d
	movl	%edx, -336(%rbp)        # 4-byte Spill
	movl	-336(%rbp), %ecx        # 4-byte Reload
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$1, %eax
	movl	%eax, %esi
	movl	-40(%rbp), %eax
	imull	-32(%rbp), %eax
	movq	-328(%rbp), %rdi
	imull	12(%rdi), %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	g_malloc_n
	movl	$4, %ecx
	movq	%rax, -64(%rbp)
	movq	%rax, -72(%rbp)
	imull	$3, -32(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%edx, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB24_2
# BB#1:                                 # %if.then
	movl	$4, %eax
	subl	-36(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB24_2:                               # %if.end
	leaq	-272(%rbp), %rsi
	movq	$0, -272(%rbp)
	movq	$7, -264(%rbp)
	movq	$2, -256(%rbp)
	movq	$24, -248(%rbp)
	movslq	-32(%rbp), %rax
	movq	%rax, -240(%rbp)
	movslq	-28(%rbp), %rax
	movq	%rax, -232(%rbp)
	movq	$0, -224(%rbp)
	movq	$1, -216(%rbp)
	movq	$32, -208(%rbp)
	movq	$1, -200(%rbp)
	movq	$32, -192(%rbp)
	movq	$24, -184(%rbp)
	imull	$3, -32(%rbp), %ecx
	addl	-36(%rbp), %ecx
	movslq	%ecx, %rax
	movq	%rax, -176(%rbp)
	movq	$5, -168(%rbp)
	movq	$16711680, -160(%rbp)   # imm = 0xFF0000
	movq	$65280, -152(%rbp)      # imm = 0xFF00
	movq	$255, -144(%rbp)
	movq	$8, -136(%rbp)
	movq	$0, -128(%rbp)
	movq	$0, -120(%rbp)
	movslq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)
	movslq	-28(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	$64, -96(%rbp)
	movq	$64, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	-16(%rbp), %rdi
	callq	write_xwd_header
	movl	$0, -44(%rbp)
.LBB24_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB24_15
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB24_3 Depth=1
	movl	-44(%rbp), %eax
	cltd
	idivl	-40(%rbp)
	cmpl	$0, %edx
	jne	.LBB24_9
# BB#5:                                 # %if.then.22
                                        #   in Loop: Header=BB24_3 Depth=1
	movl	-44(%rbp), %eax
	addl	-40(%rbp), %eax
	subl	$1, %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB24_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB24_3 Depth=1
	movl	-40(%rbp), %eax
	movl	%eax, -340(%rbp)        # 4-byte Spill
	jmp	.LBB24_8
.LBB24_7:                               # %cond.false
                                        #   in Loop: Header=BB24_3 Depth=1
	movl	-28(%rbp), %eax
	subl	-44(%rbp), %eax
	movl	%eax, -340(%rbp)        # 4-byte Spill
.LBB24_8:                               # %cond.end
                                        #   in Loop: Header=BB24_3 Depth=1
	movl	-340(%rbp), %eax        # 4-byte Reload
	leaq	-320(%rbp), %rdi
	xorl	%edx, %edx
	movl	%eax, -332(%rbp)
	movq	-64(%rbp), %rsi
	movl	-44(%rbp), %ecx
	movl	-32(%rbp), %r8d
	movl	-332(%rbp), %r9d
	callq	gimp_pixel_rgn_get_rect
	movq	-64(%rbp), %rsi
	movq	%rsi, -72(%rbp)
.LBB24_9:                               # %if.end.29
                                        #   in Loop: Header=BB24_3 Depth=1
	movl	$1, %eax
	movl	%eax, %edx
	movq	-72(%rbp), %rdi
	imull	$3, -32(%rbp), %eax
	movslq	%eax, %rsi
	movq	-16(%rbp), %rcx
	callq	fwrite
	cmpl	$0, -36(%rbp)
	movq	%rax, -352(%rbp)        # 8-byte Spill
	je	.LBB24_11
# BB#10:                                # %if.then.34
                                        #   in Loop: Header=BB24_3 Depth=1
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-56(%rbp), %rcx
	movslq	-36(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-360(%rbp), %rcx        # 8-byte Reload
	callq	fwrite
	movq	%rax, -368(%rbp)        # 8-byte Spill
.LBB24_11:                              # %if.end.37
                                        #   in Loop: Header=BB24_3 Depth=1
	movl	$20, %eax
	imull	$3, -32(%rbp), %ecx
	movq	-72(%rbp), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -72(%rbp)
	movl	-44(%rbp), %ecx
	movl	%eax, -372(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-372(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB24_13
# BB#12:                                # %if.then.42
                                        #   in Loop: Header=BB24_3 Depth=1
	cvtsi2sdl	-44(%rbp), %xmm0
	cvtsi2sdl	-28(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -376(%rbp)        # 4-byte Spill
.LBB24_13:                              # %if.end.46
                                        #   in Loop: Header=BB24_3 Depth=1
	jmp	.LBB24_14
.LBB24_14:                              # %for.inc
                                        #   in Loop: Header=BB24_3 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB24_3
.LBB24_15:                              # %for.end
	movq	-64(%rbp), %rdi
	callq	g_free
	movq	-328(%rbp), %rdi
	callq	gimp_drawable_detach
	movq	-16(%rbp), %rdi
	callq	ferror
	cmpl	$0, %eax
	je	.LBB24_17
# BB#16:                                # %if.then.49
	movabsq	$.L.str.55, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$0, -4(%rbp)
	jmp	.LBB24_18
.LBB24_17:                              # %if.end.51
	movl	$1, -4(%rbp)
.LBB24_18:                              # %return
	movl	-4(%rbp), %eax
	addq	$400, %rsp              # imm = 0x190
	popq	%rbp
	retq
.Lfunc_end24:
	.size	save_rgb, .Lfunc_end24-save_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	write_xwd_header,@function
write_xwd_header:                       # @write_xwd_header
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -24(%rbp)
	movl	$25, -28(%rbp)
	movl	-28(%rbp), %eax
	shll	$2, %eax
	addl	-24(%rbp), %eax
	movslq	%eax, %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, (%rdi)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movl	$0, -20(%rbp)
.LBB25_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-20(%rbp), %rax
	cmpq	$25, %rax
	jae	.LBB25_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB25_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -40(%rbp)
	movq	(%rax), %rsi
	callq	write_card32
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB25_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB25_1
.LBB25_4:                               # %for.end
	movl	$0, -20(%rbp)
.LBB25_5:                               # %for.cond.3
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB25_8
# BB#6:                                 # %for.body.6
                                        #   in Loop: Header=BB25_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	write_card8
# BB#7:                                 # %for.inc.7
                                        #   in Loop: Header=BB25_5 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB25_5
.LBB25_8:                               # %for.end.9
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	write_xwd_header, .Lfunc_end25-write_xwd_header
	.cfi_endproc

	.align	16, 0x90
	.type	write_xwd_cols,@function
write_xwd_cols:                         # @write_xwd_cols
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB26_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	144(%rcx), %rax
	jae	.LBB26_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	-8(%rbp), %rdi
	movslq	-28(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	movq	(%rax), %rsi
	callq	write_card32
	movq	-8(%rbp), %rdi
	movslq	-28(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	movzwl	8(%rax), %ecx
	movl	%ecx, %esi
	callq	write_card16
	movq	-8(%rbp), %rdi
	movslq	-28(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	movzwl	10(%rax), %ecx
	movl	%ecx, %esi
	callq	write_card16
	movq	-8(%rbp), %rdi
	movslq	-28(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	movzwl	12(%rax), %ecx
	movl	%ecx, %esi
	callq	write_card16
	movq	-8(%rbp), %rdi
	movslq	-28(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	movzbl	14(%rax), %ecx
	movl	%ecx, %esi
	callq	write_card8
	movq	-8(%rbp), %rdi
	movslq	-28(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	movzbl	15(%rax), %ecx
	movl	%ecx, %esi
	callq	write_card8
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB26_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB26_1
.LBB26_4:                               # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	write_xwd_cols, .Lfunc_end26-write_xwd_cols
	.cfi_endproc

	.align	16, 0x90
	.type	write_card32,@function
write_card32:                           # @write_card32
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	shrq	$24, %rsi
	andq	$255, %rsi
	movl	%esi, %eax
	movq	-8(%rbp), %rsi
	movl	%eax, %edi
	callq	_IO_putc
	movq	-16(%rbp), %rsi
	shrq	$16, %rsi
	andq	$255, %rsi
	movl	%esi, %edi
	movq	-8(%rbp), %rsi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	_IO_putc
	movq	-16(%rbp), %rsi
	shrq	$8, %rsi
	andq	$255, %rsi
	movl	%esi, %edi
	movq	-8(%rbp), %rsi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	callq	_IO_putc
	movq	-16(%rbp), %rsi
	andq	$255, %rsi
	movl	%esi, %edi
	movq	-8(%rbp), %rsi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	_IO_putc
	movl	%eax, -32(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	write_card32, .Lfunc_end27-write_card32
	.cfi_endproc

	.align	16, 0x90
	.type	write_card8,@function
write_card8:                            # @write_card8
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	andq	$255, %rsi
	movl	%esi, %eax
	movq	-8(%rbp), %rsi
	movl	%eax, %edi
	callq	_IO_putc
	movl	%eax, -20(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	write_card8, .Lfunc_end28-write_card8
	.cfi_endproc

	.align	16, 0x90
	.type	write_card16,@function
write_card16:                           # @write_card16
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	shrq	$8, %rsi
	andq	$255, %rsi
	movl	%esi, %eax
	movq	-8(%rbp), %rsi
	movl	%eax, %edi
	callq	_IO_putc
	movq	-16(%rbp), %rsi
	andq	$255, %rsi
	movl	%esi, %edi
	movq	-8(%rbp), %rsi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	_IO_putc
	movl	%eax, -24(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	write_card16, .Lfunc_end29-write_card16
	.cfi_endproc

	.type	PLUG_IN_INFO,@object    # @PLUG_IN_INFO
	.section	.rodata,"a",@progbits
	.globl	PLUG_IN_INFO
	.align	8
PLUG_IN_INFO:
	.quad	0
	.quad	0
	.quad	query
	.quad	run
	.size	PLUG_IN_INFO, 32

	.type	query.load_args,@object # @query.load_args
	.align	16
query.load_args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.3
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.3
	.size	query.load_args, 72

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"run-mode"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }"
	.size	.L.str.1, 61

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"filename"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"The name of the file to load"
	.size	.L.str.3, 29

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"raw-filename"
	.size	.L.str.4, 13

	.type	query.load_return_vals,@object # @query.load_return_vals
	.section	.rodata,"a",@progbits
	.align	16
query.load_return_vals:
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.5
	.quad	.L.str.6
	.size	query.load_return_vals, 24

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"image"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Output image"
	.size	.L.str.6, 13

	.type	query.save_args,@object # @query.save_args
	.section	.rodata,"a",@progbits
	.align	16
query.save_args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.5
	.quad	.L.str.7
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.9
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.10
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.10
	.size	query.save_args, 120

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"Input image"
	.size	.L.str.7, 12

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"drawable"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Drawable to save"
	.size	.L.str.9, 17

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"The name of the file to save the image in"
	.size	.L.str.10, 42

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"file-xwd-load"
	.size	.L.str.11, 14

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Loads files in the XWD (X Window Dump) format"
	.size	.L.str.12, 46

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Loads files in the XWD (X Window Dump) format. XWD image files are produced by the program xwd. Xwd is an X Window System window dumping utility."
	.size	.L.str.13, 146

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Peter Kirchgessner"
	.size	.L.str.14, 19

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"1996"
	.size	.L.str.15, 5

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"X window dump"
	.size	.L.str.16, 14

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"image/x-xwindowdump"
	.size	.L.str.17, 20

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"xwd"
	.size	.L.str.18, 4

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.zero	1
	.size	.L.str.19, 1

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"4,long,0x00000007"
	.size	.L.str.20, 18

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"file-xwd-save"
	.size	.L.str.21, 14

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Saves files in the XWD (X Window Dump) format"
	.size	.L.str.22, 46

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"XWD saving handles all image types except those with alpha channels."
	.size	.L.str.23, 69

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"RGB, GRAY, INDEXED"
	.size	.L.str.24, 19

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,80,16
	.type	l_run_mode,@object      # @l_run_mode
	.local	l_run_mode
	.comm	l_run_mode,4,4
	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.25, 20

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"UTF-8"
	.size	.L.str.26, 6

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"file-xwd"
	.size	.L.str.27, 9

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"XWD"
	.size	.L.str.28, 4

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"rb"
	.size	.L.str.29, 3

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Could not open '%s' for reading: %s"
	.size	.L.str.30, 36

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Could not read XWD header from '%s'"
	.size	.L.str.31, 36

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"'%s':\nIllegal number of colormap entries: %ld"
	.size	.L.str.32, 46

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"'%s':\nNumber of colormap entries < number of colors"
	.size	.L.str.33, 52

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Can't read color entries"
	.size	.L.str.34, 25

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"'%s':\nNo image width specified"
	.size	.L.str.35, 31

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"'%s':\nImage width is larger than GIMP can handle"
	.size	.L.str.36, 49

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"'%s':\nNo image height specified"
	.size	.L.str.37, 32

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"'%s':\nImage height is larger than GIMP can handle"
	.size	.L.str.38, 50

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Opening '%s'"
	.size	.L.str.39, 13

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"XWD-file %s has format %d, depth %d and bits per pixel %d. Currently this is not supported."
	.size	.L.str.40, 92

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"xwd: Warning. Error in XWD-color-structure ("
	.size	.L.str.41, 45

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"flag"
	.size	.L.str.42, 5

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"index"
	.size	.L.str.43, 6

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	")\n"
	.size	.L.str.44, 3

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"EOF encountered on reading"
	.size	.L.str.45, 27

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Unknown image type"
	.size	.L.str.46, 19

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Background"
	.size	.L.str.47, 11

	.type	set_bw_color_table.BWColorMap,@object # @set_bw_color_table.BWColorMap
	.data
set_bw_color_table.BWColorMap:
	.asciz	"\377\377\377\000\000"
	.size	set_bw_color_table.BWColorMap, 6

	.type	.L.str.48,@object       # @.str.48
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.48:
	.asciz	"XWD-file %s is corrupt."
	.size	.L.str.48, 24

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Cannot save images with alpha channels."
	.size	.L.str.49, 40

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Cannot operate on unknown image types."
	.size	.L.str.50, 39

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"wb"
	.size	.L.str.51, 3

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Could not open '%s' for writing: %s"
	.size	.L.str.52, 36

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Saving '%s'"
	.size	.L.str.53, 12

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Error during writing indexed/gray image"
	.size	.L.str.54, 40

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Error during writing rgb image"
	.size	.L.str.55, 31


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
