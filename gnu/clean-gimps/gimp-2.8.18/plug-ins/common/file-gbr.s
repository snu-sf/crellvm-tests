	.text
	.file	"file-gbr.bc"
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
	subq	$168, %rsp
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
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.16, %rsi
	movabsq	$.L.str.17, %rdx
	movabsq	$.L.str.18, %rax
	movabsq	$.L.str.19, %r9
	movabsq	$.L.str.20, %rcx
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
	movabsq	$.L.str.15, %rdi
	xorl	%esi, %esi
	movabsq	$.L.str.21, %rdx
	callq	gimp_plugin_icon_register
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.22, %rsi
	movl	%eax, -72(%rbp)         # 4-byte Spill
	callq	gimp_register_file_handler_mime
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.23, %rsi
	movabsq	$.L.str.24, %rdx
	movabsq	$.L.str.25, %rcx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gimp_register_magic_load_handler
	movabsq	$.L.str.26, %rdi
	movabsq	$.L.str.27, %rcx
	movabsq	$.L.str.18, %rdx
	movabsq	$.L.str.28, %r9
	movabsq	$.L.str.20, %rsi
	movabsq	$.L.str.29, %r8
	movl	$1, %r11d
	movl	$7, %r15d
	xorl	%r12d, %r12d
	movabsq	$query.save_args, %r10
	xorl	%r13d, %r13d
	movl	%r13d, %ebx
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	-96(%rbp), %r14         # 8-byte Reload
	movq	%r8, -104(%rbp)         # 8-byte Spill
	movq	%r14, %r8
	movq	-88(%rbp), %r14         # 8-byte Reload
	movq	%r14, (%rsp)
	movq	-104(%rbp), %r14        # 8-byte Reload
	movq	%r14, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$7, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r10, 40(%rsp)
	movq	$0, 48(%rsp)
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movq	%rbx, -120(%rbp)        # 8-byte Spill
	movl	%r12d, -124(%rbp)       # 4-byte Spill
	movl	%r15d, -128(%rbp)       # 4-byte Spill
	movl	%r11d, -132(%rbp)       # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.26, %rdi
	xorl	%esi, %esi
	movabsq	$.L.str.21, %rdx
	callq	gimp_plugin_icon_register
	movabsq	$.L.str.26, %rdi
	movabsq	$.L.str.22, %rsi
	movl	%eax, -136(%rbp)        # 4-byte Spill
	callq	gimp_register_file_handler_mime
	movabsq	$.L.str.26, %rdi
	movabsq	$.L.str.30, %rsi
	movabsq	$.L.str.24, %rdx
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	gimp_register_save_handler
	movl	%eax, -144(%rbp)        # 4-byte Spill
	addq	$168, %rsp
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
	subq	$208, %rsp
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
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.31, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.31, %rdi
	movabsq	$.L.str.32, %rsi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.31, %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	textdomain
	movq	%rax, -128(%rbp)        # 8-byte Spill
# BB#2:                                 # %do.end
	movabsq	$run.values, %rax
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, run.values
	movl	$0, run.values+8
	movq	-8(%rbp), %rdi
	movl	$.L.str.15, %edx
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
	jmp	.LBB1_38
.LBB1_7:                                # %if.else.10
	movq	-8(%rbp), %rdi
	movl	$.L.str.26, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_36
# BB#8:                                 # %if.then.13
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movq	-24(%rbp), %rax
	movl	88(%rax), %ecx
	movl	%ecx, -56(%rbp)
	movl	-52(%rbp), %ecx
	movl	%ecx, -84(%rbp)
	movl	-44(%rbp), %ecx
	orl	$2, %ecx
	subl	$2, %ecx
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	je	.LBB1_9
	jmp	.LBB1_12
.LBB1_9:                                # %sw.bb
	movabsq	$.L.str.33, %rdi
	xorl	%esi, %esi
	callq	gimp_ui_init
	leaq	-52(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	movabsq	$.L.str.34, %rdx
	movl	$19, %ecx
	callq	gimp_export_image
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jne	.LBB1_11
# BB#10:                                # %if.then.22
	movl	$4, run.values+8
	jmp	.LBB1_42
.LBB1_11:                               # %if.end.23
	movabsq	$.L.str.26, %rdi
	movabsq	$info, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB1_13
.LBB1_12:                               # %sw.default
	jmp	.LBB1_13
.LBB1_13:                               # %sw.epilog
	movabsq	$.L.str.35, %rsi
	movl	-84(%rbp), %edi
	callq	gimp_image_get_parasite
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB1_15
# BB#14:                                # %if.then.26
	movq	-80(%rbp), %rdi
	callq	gimp_parasite_data
	movq	-80(%rbp), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_parasite_data_size
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_strndup
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rdi
	callq	gimp_parasite_free
	movabsq	$info, %rdi
	movl	$256, %ecx              # imm = 0x100
	movl	%ecx, %edx
	movq	-96(%rbp), %rsi
	callq	strncpy
	movb	$0, info+255
	movq	-96(%rbp), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	g_free
.LBB1_15:                               # %if.end.32
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
	je	.LBB1_16
	jmp	.LBB1_43
.LBB1_43:                               # %if.end.32
	movl	-156(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
	je	.LBB1_19
	jmp	.LBB1_23
.LBB1_16:                               # %sw.bb.33
	callq	save_dialog
	cmpl	$0, %eax
	jne	.LBB1_18
# BB#17:                                # %if.then.36
	movl	$4, -48(%rbp)
.LBB1_18:                               # %if.end.37
	jmp	.LBB1_24
.LBB1_19:                               # %sw.bb.38
	cmpl	$7, -12(%rbp)
	je	.LBB1_21
# BB#20:                                # %if.then.40
	movl	$1, -48(%rbp)
	jmp	.LBB1_22
.LBB1_21:                               # %if.else.41
	movabsq	$info, %rdi
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movl	208(%rcx), %eax
	movl	%eax, info+256
	movq	-24(%rbp), %rcx
	movq	248(%rcx), %rsi
	callq	strncpy
	movb	$0, info+255
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB1_22:                               # %if.end.49
	jmp	.LBB1_24
.LBB1_23:                               # %sw.default.50
	jmp	.LBB1_24
.LBB1_24:                               # %sw.epilog.51
	cmpl	$3, -48(%rbp)
	jne	.LBB1_29
# BB#25:                                # %if.then.53
	leaq	-72(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edx
	callq	save_image
	cmpl	$0, %eax
	je	.LBB1_27
# BB#26:                                # %if.then.59
	movabsq	$.L.str.26, %rdi
	movabsq	$info, %rsi
	movl	$260, %edx              # imm = 0x104
	callq	gimp_procedural_db_set_data
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB1_28
.LBB1_27:                               # %if.else.61
	movl	$0, -48(%rbp)
.LBB1_28:                               # %if.end.62
	jmp	.LBB1_29
.LBB1_29:                               # %if.end.63
	cmpl	$2, -60(%rbp)
	jne	.LBB1_31
# BB#30:                                # %if.then.65
	movl	-52(%rbp), %edi
	callq	gimp_image_delete
	movl	%eax, -176(%rbp)        # 4-byte Spill
.LBB1_31:                               # %if.end.67
	movb	$1, %al
	testb	$1, %al
	jne	.LBB1_32
	jmp	.LBB1_34
.LBB1_32:                               # %land.lhs.true
	movl	$info, %eax
	movl	%eax, %edi
	callq	strlen
	cmpq	$0, %rax
	je	.LBB1_34
# BB#33:                                # %if.then.70
	movabsq	$.L.str.35, %rdi
	movl	$1, %esi
	movabsq	$info, %rcx
	movl	$info, %eax
	movl	%eax, %edx
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	movl	%esi, -196(%rbp)        # 4-byte Spill
	callq	strlen
	addq	$1, %rax
	movl	%eax, %esi
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movl	-196(%rbp), %r8d        # 4-byte Reload
	movl	%esi, -200(%rbp)        # 4-byte Spill
	movl	%r8d, %esi
	movl	-200(%rbp), %edx        # 4-byte Reload
	movq	-192(%rbp), %rcx        # 8-byte Reload
	callq	gimp_parasite_new
	movq	%rax, -104(%rbp)
	movl	-84(%rbp), %edi
	movq	-104(%rbp), %rsi
	callq	gimp_image_attach_parasite
	movq	-104(%rbp), %rdi
	movl	%eax, -204(%rbp)        # 4-byte Spill
	callq	gimp_parasite_free
	jmp	.LBB1_35
.LBB1_34:                               # %if.else.75
	movabsq	$.L.str.35, %rsi
	movl	-84(%rbp), %edi
	callq	gimp_image_detach_parasite
	movl	%eax, -208(%rbp)        # 4-byte Spill
.LBB1_35:                               # %if.end.77
	jmp	.LBB1_37
.LBB1_36:                               # %if.else.78
	movl	$1, -48(%rbp)
.LBB1_37:                               # %if.end.79
	jmp	.LBB1_38
.LBB1_38:                               # %if.end.80
	cmpl	$3, -48(%rbp)
	je	.LBB1_41
# BB#39:                                # %land.lhs.true.83
	cmpq	$0, -72(%rbp)
	je	.LBB1_41
# BB#40:                                # %if.then.85
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$4, run.values+40
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, run.values+48
.LBB1_41:                               # %if.end.86
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
.LBB1_42:                               # %return
	addq	$208, %rsp
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
	.quad	4643176031446892544     # double 255
.LCPI3_1:
	.quad	4602678819172646912     # double 0.5
.LCPI3_2:
	.quad	4636737291354636288     # double 100
.LCPI3_3:
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
	subq	$496, %rsp              # imm = 0x1F0
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	$0, -72(%rbp)
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	movb	$0, %al
	callq	open
	movl	%eax, -36(%rbp)
	cmpl	$-1, -36(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -244(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.36, %rdi
	movl	%eax, -248(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movl	-244(%rbp), %esi        # 4-byte Reload
	movl	-248(%rbp), %edx        # 4-byte Reload
	movq	-256(%rbp), %rcx        # 8-byte Reload
	movq	-264(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB3_63
.LBB3_2:                                # %if.end
	movabsq	$.L.str.37, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_progress_init_printf
	movl	$28, %ecx
	movl	%ecx, %edx
	leaq	-64(%rbp), %rsi
	movl	-36(%rbp), %edi
	movl	%eax, -276(%rbp)        # 4-byte Spill
	callq	read
	cmpq	$28, %rax
	je	.LBB3_4
# BB#3:                                 # %if.then.13
	movl	-36(%rbp), %edi
	callq	close
	movl	$-1, -4(%rbp)
	movl	%eax, -280(%rbp)        # 4-byte Spill
	jmp	.LBB3_63
.LBB3_4:                                # %if.end.15
	movl	-64(%rbp), %eax
	andl	$255, %eax
	shll	$24, %eax
	movl	-64(%rbp), %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	-64(%rbp), %ecx
	andl	$16711680, %ecx         # imm = 0xFF0000
	shrl	$8, %ecx
	orl	%ecx, %eax
	movl	-64(%rbp), %ecx
	andl	$-16777216, %ecx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %ecx
	orl	%ecx, %eax
	movl	%eax, -64(%rbp)
	movl	-60(%rbp), %eax
	andl	$255, %eax
	shll	$24, %eax
	movl	-60(%rbp), %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	-60(%rbp), %ecx
	andl	$16711680, %ecx         # imm = 0xFF0000
	shrl	$8, %ecx
	orl	%ecx, %eax
	movl	-60(%rbp), %ecx
	andl	$-16777216, %ecx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %ecx
	orl	%ecx, %eax
	movl	%eax, -60(%rbp)
	movl	-56(%rbp), %eax
	andl	$255, %eax
	shll	$24, %eax
	movl	-56(%rbp), %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	-56(%rbp), %ecx
	andl	$16711680, %ecx         # imm = 0xFF0000
	shrl	$8, %ecx
	orl	%ecx, %eax
	movl	-56(%rbp), %ecx
	andl	$-16777216, %ecx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %ecx
	orl	%ecx, %eax
	movl	%eax, -56(%rbp)
	movl	-52(%rbp), %eax
	andl	$255, %eax
	shll	$24, %eax
	movl	-52(%rbp), %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	-52(%rbp), %ecx
	andl	$16711680, %ecx         # imm = 0xFF0000
	shrl	$8, %ecx
	orl	%ecx, %eax
	movl	-52(%rbp), %ecx
	andl	$-16777216, %ecx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %ecx
	orl	%ecx, %eax
	movl	%eax, -52(%rbp)
	movl	-48(%rbp), %eax
	andl	$255, %eax
	shll	$24, %eax
	movl	-48(%rbp), %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	-48(%rbp), %ecx
	andl	$16711680, %ecx         # imm = 0xFF0000
	shrl	$8, %ecx
	orl	%ecx, %eax
	movl	-48(%rbp), %ecx
	andl	$-16777216, %ecx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %ecx
	orl	%ecx, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	andl	$255, %eax
	shll	$24, %eax
	movl	-44(%rbp), %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	-44(%rbp), %ecx
	andl	$16711680, %ecx         # imm = 0xFF0000
	shrl	$8, %ecx
	orl	%ecx, %eax
	movl	-44(%rbp), %ecx
	andl	$-16777216, %ecx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %ecx
	orl	%ecx, %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	andl	$255, %eax
	shll	$24, %eax
	movl	-40(%rbp), %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	-40(%rbp), %ecx
	andl	$16711680, %ecx         # imm = 0xFF0000
	shrl	$8, %ecx
	orl	%ecx, %eax
	movl	-40(%rbp), %ecx
	andl	$-16777216, %ecx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %ecx
	orl	%ecx, %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB3_13
# BB#5:                                 # %lor.lhs.false
	cmpl	$262144, -56(%rbp)      # imm = 0x40000
	ja	.LBB3_13
# BB#6:                                 # %lor.lhs.false.121
	cmpl	$0, -52(%rbp)
	je	.LBB3_13
# BB#7:                                 # %lor.lhs.false.124
	cmpl	$262144, -52(%rbp)      # imm = 0x40000
	ja	.LBB3_13
# BB#8:                                 # %lor.lhs.false.127
	cmpl	$1, -48(%rbp)
	je	.LBB3_12
# BB#9:                                 # %land.lhs.true
	cmpl	$2, -48(%rbp)
	je	.LBB3_12
# BB#10:                                # %land.lhs.true.132
	cmpl	$4, -48(%rbp)
	je	.LBB3_12
# BB#11:                                # %land.lhs.true.135
	cmpl	$18, -48(%rbp)
	jne	.LBB3_13
.LBB3_12:                               # %lor.lhs.false.138
	movq	$-1, %rax
	movl	-56(%rbp), %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movq	%rdx, -288(%rbp)        # 8-byte Spill
	movl	%ecx, %edx
	movq	-288(%rbp), %rsi        # 8-byte Reload
	divq	%rsi
	movl	-52(%rbp), %ecx
	movl	%ecx, %edi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	%rdi
	movl	-48(%rbp), %ecx
	movl	%ecx, %edi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	%rdi
	cmpq	$1, %rax
	jae	.LBB3_14
.LBB3_13:                               # %if.then.148
	movq	-24(%rbp), %rdi
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.38, %rdi
	movl	%eax, -300(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$24, %edx
	movl	-56(%rbp), %ecx
	movl	%ecx, %r9d
	movl	-52(%rbp), %ecx
	movl	%ecx, %edi
	movl	-48(%rbp), %ecx
	movl	%ecx, %esi
	movq	-296(%rbp), %r8         # 8-byte Reload
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movl	-300(%rbp), %ecx        # 4-byte Reload
	movq	%rsi, -328(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movq	-312(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-328(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB3_63
.LBB3_14:                               # %if.end.158
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%eax, -332(%rbp)        # 4-byte Spill
	movl	%ecx, -336(%rbp)        # 4-byte Spill
	je	.LBB3_15
	jmp	.LBB3_64
.LBB3_64:                               # %if.end.158
	movl	-332(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -340(%rbp)        # 4-byte Spill
	je	.LBB3_20
	jmp	.LBB3_65
.LBB3_65:                               # %if.end.158
	movl	-332(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -344(%rbp)        # 4-byte Spill
	je	.LBB3_16
	jmp	.LBB3_24
.LBB3_15:                               # %sw.bb
	movq	$-8, %rsi
	movl	$1, %edx
	movl	$25, -40(%rbp)
	movl	-36(%rbp), %edi
	callq	lseek
	movl	-64(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -64(%rbp)
	movq	%rax, -352(%rbp)        # 8-byte Spill
	jmp	.LBB3_25
.LBB3_16:                               # %sw.bb.163
	cmpl	$18, -48(%rbp)
	jne	.LBB3_18
# BB#17:                                # %if.then.167
	movl	$2, -48(%rbp)
	jmp	.LBB3_19
.LBB3_18:                               # %if.else
	movabsq	$.L.str.39, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	-36(%rbp), %edi
	callq	close
	movl	$-1, -4(%rbp)
	movl	%eax, -356(%rbp)        # 4-byte Spill
	jmp	.LBB3_63
.LBB3_19:                               # %if.end.171
	jmp	.LBB3_20
.LBB3_20:                               # %sw.bb.172
	cmpl	$1195986256, -44(%rbp)  # imm = 0x47494D50
	jne	.LBB3_23
# BB#21:                                # %land.lhs.true.176
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	cmpq	$28, %rcx
	jbe	.LBB3_23
# BB#22:                                # %if.then.181
	jmp	.LBB3_25
.LBB3_23:                               # %if.end.182
	jmp	.LBB3_24
.LBB3_24:                               # %sw.default
	movabsq	$.L.str.39, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	-36(%rbp), %edi
	callq	close
	movl	$-1, -4(%rbp)
	movl	%eax, -360(%rbp)        # 4-byte Spill
	jmp	.LBB3_63
.LBB3_25:                               # %sw.epilog
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	subq	$28, %rcx
	movl	%ecx, %eax
	movl	%eax, -148(%rbp)
	cmpl	$0, %eax
	jle	.LBB3_29
# BB#26:                                # %if.then.190
	movl	$1, %eax
	movl	%eax, %esi
	movslq	-148(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -176(%rbp)
	movl	-36(%rbp), %edi
	movq	-176(%rbp), %rsi
	movslq	-148(%rbp), %rdx
	callq	read
	movslq	-148(%rbp), %rdx
	cmpq	%rdx, %rax
	jge	.LBB3_28
# BB#27:                                # %if.then.198
	movq	-24(%rbp), %rdi
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.40, %rdi
	movl	%eax, -372(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$24, %edx
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movl	-372(%rbp), %esi        # 4-byte Reload
	movq	-384(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movl	-36(%rbp), %edi
	callq	close
	movq	-176(%rbp), %rdi
	movl	%eax, -388(%rbp)        # 4-byte Spill
	callq	g_free
	movl	$-1, -4(%rbp)
	jmp	.LBB3_63
.LBB3_28:                               # %if.end.203
	movabsq	$.L.str.41, %rdi
	movq	-176(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	$-1, %rsi
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	-408(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	gimp_any_to_utf8
	movq	%rax, -32(%rbp)
	movq	-176(%rbp), %rdi
	callq	g_free
	jmp	.LBB3_30
.LBB3_29:                               # %if.else.207
	movabsq	$.L.str.42, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -32(%rbp)
.LBB3_30:                               # %if.end.210
	movl	-56(%rbp), %eax
	imull	-52(%rbp), %eax
	imull	-48(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)
	movq	-168(%rbp), %rdi
	callq	g_malloc
	movq	%rax, -72(%rbp)
	movl	-36(%rbp), %edi
	movq	-72(%rbp), %rsi
	movq	-168(%rbp), %rdx
	callq	read
	cmpq	-168(%rbp), %rax
	je	.LBB3_32
# BB#31:                                # %if.then.220
	movl	-36(%rbp), %edi
	callq	close
	movq	-72(%rbp), %rdi
	movl	%eax, -412(%rbp)        # 4-byte Spill
	callq	g_free
	movq	-32(%rbp), %rdi
	callq	g_free
	movl	$-1, -4(%rbp)
	jmp	.LBB3_63
.LBB3_32:                               # %if.end.222
	movl	-48(%rbp), %eax
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%eax, -416(%rbp)        # 4-byte Spill
	movl	%ecx, -420(%rbp)        # 4-byte Spill
	je	.LBB3_33
	jmp	.LBB3_66
.LBB3_66:                               # %if.end.222
	movl	-416(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -424(%rbp)        # 4-byte Spill
	je	.LBB3_50
	jmp	.LBB3_55
.LBB3_33:                               # %sw.bb.224
	movl	$24, %eax
	movl	%eax, %edx
	leaq	-200(%rbp), %rcx
	movl	-36(%rbp), %edi
	movq	%rcx, %rsi
	callq	read
	cmpq	$24, %rax
	jne	.LBB3_49
# BB#34:                                # %if.then.228
	movl	-200(%rbp), %eax
	andl	$255, %eax
	shll	$24, %eax
	movl	-200(%rbp), %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	-200(%rbp), %ecx
	andl	$16711680, %ecx         # imm = 0xFF0000
	shrl	$8, %ecx
	orl	%ecx, %eax
	movl	-200(%rbp), %ecx
	andl	$-16777216, %ecx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %ecx
	orl	%ecx, %eax
	movl	%eax, -200(%rbp)
	movl	-196(%rbp), %eax
	andl	$255, %eax
	shll	$24, %eax
	movl	-196(%rbp), %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	-196(%rbp), %ecx
	andl	$16711680, %ecx         # imm = 0xFF0000
	shrl	$8, %ecx
	orl	%ecx, %eax
	movl	-196(%rbp), %ecx
	andl	$-16777216, %ecx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %ecx
	orl	%ecx, %eax
	movl	%eax, -196(%rbp)
	movl	-192(%rbp), %eax
	andl	$255, %eax
	shll	$24, %eax
	movl	-192(%rbp), %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	-192(%rbp), %ecx
	andl	$16711680, %ecx         # imm = 0xFF0000
	shrl	$8, %ecx
	orl	%ecx, %eax
	movl	-192(%rbp), %ecx
	andl	$-16777216, %ecx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %ecx
	orl	%ecx, %eax
	movl	%eax, -192(%rbp)
	movl	-188(%rbp), %eax
	andl	$255, %eax
	shll	$24, %eax
	movl	-188(%rbp), %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	-188(%rbp), %ecx
	andl	$16711680, %ecx         # imm = 0xFF0000
	shrl	$8, %ecx
	orl	%ecx, %eax
	movl	-188(%rbp), %ecx
	andl	$-16777216, %ecx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %ecx
	orl	%ecx, %eax
	movl	%eax, -188(%rbp)
	movl	-184(%rbp), %eax
	andl	$255, %eax
	shll	$24, %eax
	movl	-184(%rbp), %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	-184(%rbp), %ecx
	andl	$16711680, %ecx         # imm = 0xFF0000
	shrl	$8, %ecx
	orl	%ecx, %eax
	movl	-184(%rbp), %ecx
	andl	$-16777216, %ecx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %ecx
	orl	%ecx, %eax
	movl	%eax, -184(%rbp)
	movl	-180(%rbp), %eax
	andl	$255, %eax
	shll	$24, %eax
	movl	-180(%rbp), %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	-180(%rbp), %ecx
	andl	$16711680, %ecx         # imm = 0xFF0000
	shrl	$8, %ecx
	orl	%ecx, %eax
	movl	-180(%rbp), %ecx
	andl	$-16777216, %ecx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %ecx
	orl	%ecx, %eax
	movl	%eax, -180(%rbp)
	cmpl	$1196441940, -180(%rbp) # imm = 0x47504154
	jne	.LBB3_48
# BB#35:                                # %land.lhs.true.328
	cmpl	$1, -196(%rbp)
	jne	.LBB3_48
# BB#36:                                # %land.lhs.true.332
	movl	-200(%rbp), %eax
	movl	%eax, %ecx
	cmpq	$24, %rcx
	jbe	.LBB3_48
# BB#37:                                # %land.lhs.true.337
	cmpl	$3, -184(%rbp)
	jne	.LBB3_48
# BB#38:                                # %land.lhs.true.341
	movl	-192(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jne	.LBB3_48
# BB#39:                                # %land.lhs.true.346
	movl	-188(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jne	.LBB3_48
# BB#40:                                # %land.lhs.true.351
	movl	$1, %edx
	movl	-36(%rbp), %edi
	movl	-200(%rbp), %eax
	movl	%eax, %ecx
	subq	$24, %rcx
	movq	%rcx, %rsi
	callq	lseek
	cmpq	$0, %rax
	jle	.LBB3_48
# BB#41:                                # %if.then.358
	movq	-72(%rbp), %rax
	movq	%rax, -208(%rbp)
	movl	$4, -48(%rbp)
	movl	-56(%rbp), %ecx
	shll	$2, %ecx
	imull	-52(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edi
	callq	g_malloc
	movq	%rax, -72(%rbp)
	movl	$0, -212(%rbp)
.LBB3_42:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-212(%rbp), %eax
	movl	-192(%rbp), %ecx
	imull	-188(%rbp), %ecx
	cmpl	%ecx, %eax
	jae	.LBB3_47
# BB#43:                                # %for.body
                                        #   in Loop: Header=BB3_42 Depth=1
	movl	$3, %eax
	movl	%eax, %edx
	movl	-36(%rbp), %edi
	movq	-72(%rbp), %rcx
	movl	-212(%rbp), %eax
	shll	$2, %eax
	movslq	%eax, %rsi
	addq	%rsi, %rcx
	movq	%rcx, %rsi
	callq	read
	cmpq	$3, %rax
	je	.LBB3_45
# BB#44:                                # %if.then.375
	movl	-36(%rbp), %edi
	callq	close
	movq	-32(%rbp), %rdi
	movl	%eax, -428(%rbp)        # 4-byte Spill
	callq	g_free
	movq	-208(%rbp), %rdi
	callq	g_free
	movq	-72(%rbp), %rdi
	callq	g_free
	movl	$-1, -4(%rbp)
	jmp	.LBB3_63
.LBB3_45:                               # %if.end.377
                                        #   in Loop: Header=BB3_42 Depth=1
	movslq	-212(%rbp), %rax
	movq	-208(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movl	-212(%rbp), %esi
	shll	$2, %esi
	addl	$3, %esi
	movslq	%esi, %rax
	movq	-72(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
# BB#46:                                # %for.inc
                                        #   in Loop: Header=BB3_42 Depth=1
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -212(%rbp)
	jmp	.LBB3_42
.LBB3_47:                               # %for.end
	movq	-208(%rbp), %rdi
	callq	g_free
.LBB3_48:                               # %if.end.382
	jmp	.LBB3_49
.LBB3_49:                               # %if.end.383
	jmp	.LBB3_56
.LBB3_50:                               # %sw.bb.384
	movq	-72(%rbp), %rax
	movq	%rax, -224(%rbp)
	movl	$0, -228(%rbp)
.LBB3_51:                               # %for.cond.386
                                        # =>This Inner Loop Header: Depth=1
	movl	-228(%rbp), %eax
	movl	-56(%rbp), %ecx
	imull	-52(%rbp), %ecx
	cmpl	%ecx, %eax
	jae	.LBB3_54
# BB#52:                                # %for.body.392
                                        #   in Loop: Header=BB3_51 Depth=1
	movw	$0, -232(%rbp)
	movq	-224(%rbp), %rax
	movzwl	(%rax), %ecx
	movl	%ecx, %edx
	shrl	$8, %edx
	shll	$8, %ecx
	orl	%ecx, %edx
	movw	%dx, %si
	movw	%si, -230(%rbp)
	movss	-232(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI3_0(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	.LCPI3_1(%rip), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %dil
	movslq	-228(%rbp), %rax
	movq	-72(%rbp), %r8
	movb	%dil, (%r8,%rax)
# BB#53:                                # %for.inc.412
                                        #   in Loop: Header=BB3_51 Depth=1
	movl	-228(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -228(%rbp)
	movq	-224(%rbp), %rcx
	addq	$2, %rcx
	movq	%rcx, -224(%rbp)
	jmp	.LBB3_51
.LBB3_54:                               # %for.end.414
	movl	$1, -48(%rbp)
	jmp	.LBB3_56
.LBB3_55:                               # %sw.default.416
	jmp	.LBB3_56
.LBB3_56:                               # %sw.epilog.417
	movl	-48(%rbp), %eax
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%eax, -432(%rbp)        # 4-byte Spill
	movl	%ecx, -436(%rbp)        # 4-byte Spill
	je	.LBB3_57
	jmp	.LBB3_67
.LBB3_67:                               # %sw.epilog.417
	movl	-432(%rbp), %eax        # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -440(%rbp)        # 4-byte Spill
	je	.LBB3_58
	jmp	.LBB3_59
.LBB3_57:                               # %sw.bb.419
	movl	$1, -152(%rbp)
	movl	$2, -156(%rbp)
	jmp	.LBB3_60
.LBB3_58:                               # %sw.bb.420
	movl	$0, -152(%rbp)
	movl	$1, -156(%rbp)
	jmp	.LBB3_60
.LBB3_59:                               # %sw.default.421
	movabsq	$.L.str.43, %rdi
	movl	-48(%rbp), %esi
	movb	$0, %al
	callq	g_message
	movq	-32(%rbp), %rdi
	callq	g_free
	movl	$-1, -4(%rbp)
	jmp	.LBB3_63
.LBB3_60:                               # %sw.epilog.423
	movl	-56(%rbp), %edi
	movl	-52(%rbp), %esi
	movl	-152(%rbp), %edx
	callq	gimp_image_new
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	gimp_image_set_filename
	movabsq	$.L.str.35, %rdi
	movl	$1, %esi
	movq	-32(%rbp), %rcx
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movl	%eax, -452(%rbp)        # 4-byte Spill
	movl	%esi, -456(%rbp)        # 4-byte Spill
	callq	strlen
	addq	$1, %rax
	movl	%eax, %edx
	movq	-32(%rbp), %rcx
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movl	-456(%rbp), %esi        # 4-byte Reload
	callq	gimp_parasite_new
	movq	%rax, -88(%rbp)
	movl	-76(%rbp), %edi
	movq	-88(%rbp), %rsi
	callq	gimp_image_attach_parasite
	movq	-88(%rbp), %rdi
	movl	%eax, -460(%rbp)        # 4-byte Spill
	callq	gimp_parasite_free
	movsd	.LCPI3_2, %xmm0         # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movl	-76(%rbp), %edi
	movq	-32(%rbp), %rsi
	movl	-56(%rbp), %edx
	movl	-52(%rbp), %ecx
	movl	-156(%rbp), %r8d
	callq	gimp_layer_new
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movl	%eax, -80(%rbp)
	movl	-76(%rbp), %edi
	movl	-80(%rbp), %esi
	callq	gimp_image_insert_layer
	movq	-32(%rbp), %rdi
	movl	%eax, -464(%rbp)        # 4-byte Spill
	callq	g_free
	movl	-80(%rbp), %edi
	callq	gimp_drawable_get
	leaq	-144(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rsi
	movq	-96(%rbp), %rax
	movl	4(%rax), %r8d
	movq	-96(%rbp), %rax
	movl	8(%rax), %r9d
	movl	%edx, -468(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-144(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movl	-56(%rbp), %r8d
	movl	-52(%rbp), %r9d
	movl	%ecx, %edx
	callq	gimp_pixel_rgn_set_rect
	movq	-72(%rbp), %rdi
	callq	g_free
	cmpl	$2, -156(%rbp)
	jne	.LBB3_62
# BB#61:                                # %if.then.444
	movl	-80(%rbp), %edi
	callq	gimp_invert
	movl	%eax, -472(%rbp)        # 4-byte Spill
.LBB3_62:                               # %if.end.446
	movl	-36(%rbp), %edi
	callq	close
	movq	-96(%rbp), %rdi
	movl	%eax, -476(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movsd	.LCPI3_3, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movl	-76(%rbp), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -480(%rbp)        # 4-byte Spill
.LBB3_63:                               # %return
	movl	-4(%rbp), %eax
	addq	$496, %rsp              # imm = 0x1F0
	popq	%rbp
	retq
.Lfunc_end3:
	.size	load_image, .Lfunc_end3-load_image
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI4_0:
	.long	1065353216              # float 1
.LCPI4_1:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_2:
	.quad	4607182418800017408     # double 1
.LCPI4_3:
	.quad	4652007308841189376     # double 1000
.LCPI4_4:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	save_dialog,@function
save_dialog:                            # @save_dialog
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
	subq	$224, %rsp
	movabsq	$.L.str.44, %rdi
	callq	gettext
	movabsq	$.L.str.33, %rsi
	movabsq	$.L.str.26, %rdx
	movq	%rax, %rdi
	callq	gimp_export_dialog_new
	movl	$2, %ecx
	xorl	%edx, %edx
	movq	%rax, -8(%rbp)
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-8(%rbp), %rdi
	callq	gimp_export_dialog_get_content_area
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	leaq	-40(%rbp), %rdi
	movsd	.LCPI4_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_3, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_4, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	xorl	%esi, %esi
	cvtsi2sdl	info+256, %xmm1
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-88(%rbp), %xmm6        # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_activates_default
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.45, %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movss	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-32(%rbp), %r8
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.46, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$info, %rdi
	addq	$256, %rdi              # imm = 0x100
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %r10
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rcx, %rdx
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_entry_new
	movl	$200, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_set_size_request
	movq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$info, %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	movq	-24(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_activates_default
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.47, %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	movss	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-24(%rbp), %r8
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movl	%edx, -172(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-172(%rbp), %r9d        # 4-byte Reload
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.48, %rsi
	movabsq	$entry_callback, %rcx
	movabsq	$info, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %r10
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rcx, %rdx
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-8(%rbp), %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-8(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %eax
	movl	%eax, -44(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-44(%rbp), %eax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	save_dialog, .Lfunc_end4-save_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	save_image,@function
save_image:                             # @save_image
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
	pushq	%rbx
	subq	$424, %rsp              # imm = 0x1A8
.Ltmp23:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	leaq	-216(%rbp), %rdi
	movl	$255, %edx
	movl	%edx, %esi
	movl	%edx, -220(%rbp)        # 4-byte Spill
	movl	-220(%rbp), %ecx        # 4-byte Reload
	movl	-220(%rbp), %r8d        # 4-byte Reload
	callq	gimp_rgba_set_uchar
	movl	-32(%rbp), %edi
	callq	gimp_drawable_type
	movl	%eax, %ecx
	subl	$2, %eax
	movl	%ecx, -224(%rbp)        # 4-byte Spill
	movl	%eax, -228(%rbp)        # 4-byte Spill
	jb	.LBB5_1
	jmp	.LBB5_37
.LBB5_37:                               # %entry
	movl	-224(%rbp), %eax        # 4-byte Reload
	addl	$-2, %eax
	subl	$2, %eax
	movl	%eax, -232(%rbp)        # 4-byte Spill
	jb	.LBB5_2
	jmp	.LBB5_3
.LBB5_1:                                # %sw.bb
	movl	$4, -100(%rbp)
	jmp	.LBB5_4
.LBB5_2:                                # %sw.bb.1
	movl	$1, -100(%rbp)
	jmp	.LBB5_4
.LBB5_3:                                # %sw.default
	movabsq	$.L.str.49, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$0, -12(%rbp)
	jmp	.LBB5_36
.LBB5_4:                                # %sw.epilog
	movl	$577, %esi              # imm = 0x241
	movl	$438, %edx              # imm = 0x1B6
	movq	-24(%rbp), %rdi
	movb	$0, %al
	callq	open
	movl	%eax, -44(%rbp)
	cmpl	$-1, -44(%rbp)
	jne	.LBB5_6
# BB#5:                                 # %if.then
	movq	-40(%rbp), %rdi
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -244(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.50, %rdi
	movl	%eax, -248(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movl	-244(%rbp), %esi        # 4-byte Reload
	movl	-248(%rbp), %edx        # 4-byte Reload
	movq	-256(%rbp), %rcx        # 8-byte Reload
	movq	-264(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$0, -12(%rbp)
	jmp	.LBB5_36
.LBB5_6:                                # %if.end
	movabsq	$.L.str.51, %rdi
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_progress_init_printf
	movl	-32(%rbp), %edi
	movl	%eax, -276(%rbp)        # 4-byte Spill
	callq	gimp_drawable_get
	movl	$28, %edi
	movl	%edi, %edx
	leaq	-72(%rbp), %rsi
	movq	%rax, -88(%rbp)
	movl	$info, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	%rsi, -288(%rbp)        # 8-byte Spill
	movq	%rdx, -296(%rbp)        # 8-byte Spill
	callq	strlen
	addq	$28, %rax
	addq	$1, %rax
	movl	%eax, %ecx
	andl	$255, %ecx
	shll	$24, %ecx
	movl	$info, %r8d
	movl	%r8d, %edi
	movl	%ecx, -300(%rbp)        # 4-byte Spill
	callq	strlen
	addq	$28, %rax
	addq	$1, %rax
	movl	%eax, %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	movl	-300(%rbp), %r8d        # 4-byte Reload
	orl	%ecx, %r8d
	movl	$info, %ecx
	movl	%ecx, %edi
	movl	%r8d, -304(%rbp)        # 4-byte Spill
	callq	strlen
	addq	$28, %rax
	addq	$1, %rax
	movl	%eax, %ecx
	andl	$16711680, %ecx         # imm = 0xFF0000
	shrl	$8, %ecx
	movl	-304(%rbp), %r8d        # 4-byte Reload
	orl	%ecx, %r8d
	movl	$info, %ecx
	movl	%ecx, %edi
	movl	%r8d, -308(%rbp)        # 4-byte Spill
	callq	strlen
	addq	$28, %rax
	addq	$1, %rax
	movl	%eax, %ecx
	andl	$-16777216, %ecx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %ecx
	movl	-308(%rbp), %r8d        # 4-byte Reload
	orl	%ecx, %r8d
	movl	%r8d, -72(%rbp)
	movl	$33554432, -68(%rbp)    # imm = 0x2000000
	movq	-88(%rbp), %rax
	movl	4(%rax), %ecx
	andl	$255, %ecx
	shll	$24, %ecx
	movq	-88(%rbp), %rax
	movl	4(%rax), %r8d
	andl	$65280, %r8d            # imm = 0xFF00
	shll	$8, %r8d
	orl	%r8d, %ecx
	movq	-88(%rbp), %rax
	movl	4(%rax), %r8d
	andl	$16711680, %r8d         # imm = 0xFF0000
	shrl	$8, %r8d
	orl	%r8d, %ecx
	movq	-88(%rbp), %rax
	movl	4(%rax), %r8d
	andl	$-16777216, %r8d        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %r8d
	orl	%r8d, %ecx
	movl	%ecx, -64(%rbp)
	movq	-88(%rbp), %rax
	movl	8(%rax), %ecx
	andl	$255, %ecx
	shll	$24, %ecx
	movq	-88(%rbp), %rax
	movl	8(%rax), %r8d
	andl	$65280, %r8d            # imm = 0xFF00
	shll	$8, %r8d
	orl	%r8d, %ecx
	movq	-88(%rbp), %rax
	movl	8(%rax), %r8d
	andl	$16711680, %r8d         # imm = 0xFF0000
	shrl	$8, %r8d
	orl	%r8d, %ecx
	movq	-88(%rbp), %rax
	movl	8(%rax), %r8d
	andl	$-16777216, %r8d        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %r8d
	orl	%r8d, %ecx
	movl	%ecx, -60(%rbp)
	movl	-100(%rbp), %ecx
	andl	$255, %ecx
	shll	$24, %ecx
	movl	-100(%rbp), %r8d
	andl	$65280, %r8d            # imm = 0xFF00
	shll	$8, %r8d
	orl	%r8d, %ecx
	movl	-100(%rbp), %r8d
	andl	$16711680, %r8d         # imm = 0xFF0000
	shrl	$8, %r8d
	orl	%r8d, %ecx
	movl	-100(%rbp), %r8d
	andl	$-16777216, %r8d        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %r8d
	orl	%r8d, %ecx
	movl	%ecx, -56(%rbp)
	movl	$1347242311, -52(%rbp)  # imm = 0x504D4947
	movl	info+256, %ecx
	andl	$255, %ecx
	shll	$24, %ecx
	movl	info+256, %r8d
	andl	$65280, %r8d            # imm = 0xFF00
	shll	$8, %r8d
	orl	%r8d, %ecx
	movl	info+256, %r8d
	andl	$16711680, %r8d         # imm = 0xFF0000
	shrl	$8, %r8d
	orl	%r8d, %ecx
	movl	info+256, %r8d
	andl	$-16777216, %r8d        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %r8d
	orl	%r8d, %ecx
	movl	%ecx, -48(%rbp)
	movl	-44(%rbp), %edi
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rsi
	movq	-296(%rbp), %rdx        # 8-byte Reload
	callq	write
	cmpq	$28, %rax
	je	.LBB5_8
# BB#7:                                 # %if.then.91
	movl	-44(%rbp), %edi
	callq	close
	movl	$0, -12(%rbp)
	movl	%eax, -312(%rbp)        # 4-byte Spill
	jmp	.LBB5_36
.LBB5_8:                                # %if.end.93
	movabsq	$info, %rsi
	movl	-44(%rbp), %edi
	movl	$info, %eax
	movl	%eax, %ecx
	movl	%edi, -316(%rbp)        # 4-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -328(%rbp)        # 8-byte Spill
	callq	strlen
	addq	$1, %rax
	movl	-316(%rbp), %edi        # 4-byte Reload
	movq	-328(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	write
	movl	$info, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	strlen
	addq	$1, %rax
	movq	-336(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB5_10
# BB#9:                                 # %if.then.101
	movl	-44(%rbp), %edi
	callq	close
	movl	$0, -12(%rbp)
	movl	%eax, -340(%rbp)        # 4-byte Spill
	jmp	.LBB5_36
.LBB5_10:                               # %if.end.103
	leaq	-152(%rbp), %rdi
	xorl	%eax, %eax
	movq	-88(%rbp), %rsi
	movq	-88(%rbp), %rcx
	movl	4(%rcx), %r8d
	movq	-88(%rbp), %rcx
	movl	8(%rcx), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movq	-88(%rbp), %rsi
	movl	4(%rsi), %eax
	movl	-100(%rbp), %ecx
	movq	-88(%rbp), %rsi
	cmpl	12(%rsi), %ecx
	movl	%eax, -344(%rbp)        # 4-byte Spill
	jbe	.LBB5_12
# BB#11:                                # %cond.true
	movl	-100(%rbp), %eax
	movl	%eax, -348(%rbp)        # 4-byte Spill
	jmp	.LBB5_13
.LBB5_12:                               # %cond.false
	movq	-88(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -348(%rbp)        # 4-byte Spill
.LBB5_13:                               # %cond.end
	movl	-348(%rbp), %eax        # 4-byte Reload
	movl	$1, %ecx
	movl	%ecx, %esi
	movl	-344(%rbp), %ecx        # 4-byte Reload
	imull	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %edi
	callq	g_malloc_n
	movq	%rax, -80(%rbp)
	movl	$0, -92(%rbp)
.LBB5_14:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_27 Depth 2
                                        #     Child Loop BB5_22 Depth 2
                                        #     Child Loop BB5_17 Depth 2
	movl	-92(%rbp), %eax
	movq	-88(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB5_35
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB5_14 Depth=1
	movq	-80(%rbp), %rsi
	movl	-92(%rbp), %ecx
	movq	-88(%rbp), %rax
	movl	4(%rax), %r8d
	leaq	-152(%rbp), %rdi
	xorl	%edx, %edx
	callq	gimp_pixel_rgn_get_row
	movq	-88(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, %edx
	subl	$1, %edx
	movl	%ecx, -352(%rbp)        # 4-byte Spill
	movl	%edx, -356(%rbp)        # 4-byte Spill
	je	.LBB5_16
	jmp	.LBB5_38
.LBB5_38:                               # %for.body
                                        #   in Loop: Header=BB5_14 Depth=1
	movl	-352(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -360(%rbp)        # 4-byte Spill
	je	.LBB5_21
	jmp	.LBB5_39
.LBB5_39:                               # %for.body
                                        #   in Loop: Header=BB5_14 Depth=1
	movl	-352(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -364(%rbp)        # 4-byte Spill
	je	.LBB5_26
	jmp	.LBB5_31
.LBB5_16:                               # %sw.bb.118
                                        #   in Loop: Header=BB5_14 Depth=1
	movl	$0, -96(%rbp)
.LBB5_17:                               # %for.cond.119
                                        #   Parent Loop BB5_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-96(%rbp), %eax
	movq	-88(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jae	.LBB5_20
# BB#18:                                # %for.body.123
                                        #   in Loop: Header=BB5_17 Depth=2
	movl	$255, %eax
	movslq	-96(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	subl	%esi, %eax
	movb	%al, %dil
	movslq	-96(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movb	%dil, (%rdx,%rcx)
# BB#19:                                # %for.inc
                                        #   in Loop: Header=BB5_17 Depth=2
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB5_17
.LBB5_20:                               # %for.end
                                        #   in Loop: Header=BB5_14 Depth=1
	jmp	.LBB5_31
.LBB5_21:                               # %sw.bb.128
                                        #   in Loop: Header=BB5_14 Depth=1
	movl	$0, -96(%rbp)
.LBB5_22:                               # %for.cond.129
                                        #   Parent Loop BB5_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-96(%rbp), %eax
	movq	-88(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jae	.LBB5_25
# BB#23:                                # %for.body.133
                                        #   in Loop: Header=BB5_22 Depth=2
	leaq	-184(%rbp), %rdi
	movl	-96(%rbp), %eax
	shll	$1, %eax
	movslq	%eax, %rcx
	movq	-80(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-96(%rbp), %eax
	shll	$1, %eax
	movslq	%eax, %rcx
	movq	-80(%rbp), %rdx
	movb	(%rdx,%rcx), %r8b
	movl	-96(%rbp), %eax
	shll	$1, %eax
	movslq	%eax, %rcx
	movq	-80(%rbp), %rdx
	movb	(%rdx,%rcx), %r9b
	movl	-96(%rbp), %eax
	shll	$1, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-80(%rbp), %rdx
	movzbl	%sil, %esi
	movzbl	%r8b, %eax
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movzbl	%r9b, %eax
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	movl	%eax, %ecx
	movq	-376(%rbp), %r10        # 8-byte Reload
	movq	-384(%rbp), %r11        # 8-byte Reload
	movzbl	(%r10,%r11), %r8d
	callq	gimp_rgba_set_uchar
	leaq	-184(%rbp), %rdi
	leaq	-216(%rbp), %rsi
	movl	$2, %edx
	callq	gimp_rgb_composite
	leaq	-184(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	movslq	-96(%rbp), %r10
	addq	-80(%rbp), %r10
	movq	%rsi, -392(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-392(%rbp), %rdx        # 8-byte Reload
	movq	-392(%rbp), %rcx        # 8-byte Reload
	movq	-392(%rbp), %r8         # 8-byte Reload
	callq	gimp_rgba_get_uchar
	movl	$255, %eax
	movslq	-96(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movzbl	(%rdx,%rcx), %ebx
	subl	%ebx, %eax
	movb	%al, %r9b
	movslq	-96(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movb	%r9b, (%rdx,%rcx)
# BB#24:                                # %for.inc.156
                                        #   in Loop: Header=BB5_22 Depth=2
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB5_22
.LBB5_25:                               # %for.end.158
                                        #   in Loop: Header=BB5_14 Depth=1
	jmp	.LBB5_31
.LBB5_26:                               # %sw.bb.159
                                        #   in Loop: Header=BB5_14 Depth=1
	movq	-88(%rbp), %rax
	movl	4(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -96(%rbp)
.LBB5_27:                               # %for.cond.162
                                        #   Parent Loop BB5_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -96(%rbp)
	jl	.LBB5_30
# BB#28:                                # %for.body.165
                                        #   in Loop: Header=BB5_27 Depth=2
	movl	-96(%rbp), %eax
	shll	$2, %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	movq	-80(%rbp), %rdx
	movb	$-1, (%rdx,%rcx)
	imull	$3, -96(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-80(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-96(%rbp), %eax
	shll	$2, %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-80(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	imull	$3, -96(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-80(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-96(%rbp), %eax
	shll	$2, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-80(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	imull	$3, -96(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-80(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-96(%rbp), %eax
	shll	$2, %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-80(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
# BB#29:                                # %for.inc.194
                                        #   in Loop: Header=BB5_27 Depth=2
	movl	-96(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB5_27
.LBB5_30:                               # %for.end.195
                                        #   in Loop: Header=BB5_14 Depth=1
	jmp	.LBB5_31
.LBB5_31:                               # %sw.epilog.196
                                        #   in Loop: Header=BB5_14 Depth=1
	movl	-44(%rbp), %edi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	4(%rax), %ecx
	imull	-100(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	callq	write
	movq	-88(%rbp), %rdx
	movl	4(%rdx), %ecx
	imull	-100(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	je	.LBB5_33
# BB#32:                                # %if.then.206
	movq	-80(%rbp), %rdi
	callq	g_free
	movl	-44(%rbp), %edi
	callq	close
	movl	$0, -12(%rbp)
	movl	%eax, -396(%rbp)        # 4-byte Spill
	jmp	.LBB5_36
.LBB5_33:                               # %if.end.208
                                        #   in Loop: Header=BB5_14 Depth=1
	cvtsi2sdl	-92(%rbp), %xmm0
	movq	-88(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -400(%rbp)        # 4-byte Spill
# BB#34:                                # %for.inc.213
                                        #   in Loop: Header=BB5_14 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB5_14
.LBB5_35:                               # %for.end.215
	movq	-80(%rbp), %rdi
	callq	g_free
	movq	-88(%rbp), %rdi
	callq	gimp_drawable_detach
	movl	-44(%rbp), %edi
	callq	close
	movl	$1, -12(%rbp)
	movl	%eax, -404(%rbp)        # 4-byte Spill
.LBB5_36:                               # %return
	movl	-12(%rbp), %eax
	addq	$424, %rsp              # imm = 0x1A8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	save_image, .Lfunc_end5-save_image
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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
	.type	entry_callback,@function
entry_callback:                         # @entry_callback
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movabsq	$info, %rdi
	movl	$256, %ecx              # imm = 0x100
	movl	%ecx, %edx
	movq	%rax, %rsi
	callq	strncpy
	movb	$0, info+255
	movq	%rax, -32(%rbp)         # 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	entry_callback, .Lfunc_end7-entry_callback
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
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.11
	.quad	.L.str.12
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.13
	.quad	.L.str.14
	.size	query.save_args, 168

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
	.asciz	"spacing"
	.size	.L.str.11, 8

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Spacing of the brush"
	.size	.L.str.12, 21

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"description"
	.size	.L.str.13, 12

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Short description of the brush"
	.size	.L.str.14, 31

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"file-gbr-load"
	.size	.L.str.15, 14

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Loads GIMP brushes"
	.size	.L.str.16, 19

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Loads GIMP brushes (1 or 4 bpp and old .gpb format)"
	.size	.L.str.17, 52

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Tim Newsome, Jens Lautenbacher, Sven Neumann"
	.size	.L.str.18, 45

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"1997-2005"
	.size	.L.str.19, 10

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"GIMP brush"
	.size	.L.str.20, 11

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimp-tool-paintbrush"
	.size	.L.str.21, 21

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"image/x-gimp-gbr"
	.size	.L.str.22, 17

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gbr, gpb"
	.size	.L.str.23, 9

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.zero	1
	.size	.L.str.24, 1

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"20, string, GIMP"
	.size	.L.str.25, 17

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"file-gbr-save"
	.size	.L.str.26, 14

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Saves files in the GIMP brush file format"
	.size	.L.str.27, 42

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"1997-2000"
	.size	.L.str.28, 10

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.29, 12

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"gbr"
	.size	.L.str.30, 4

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,80,16
	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.31, 20

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"UTF-8"
	.size	.L.str.32, 6

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"file-gbr"
	.size	.L.str.33, 9

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"GBR"
	.size	.L.str.34, 4

	.type	info,@object            # @info
	.data
	.align	4
info:
	.asciz	"GIMP Brush\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.long	10                      # 0xa
	.size	info, 260

	.type	.L.str.35,@object       # @.str.35
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.35:
	.asciz	"gimp-brush-name"
	.size	.L.str.35, 16

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Could not open '%s' for reading: %s"
	.size	.L.str.36, 36

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Opening '%s'"
	.size	.L.str.37, 13

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Invalid header data in '%s': width=%lu, height=%lu, bytes=%lu"
	.size	.L.str.38, 62

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Unsupported brush format"
	.size	.L.str.39, 25

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Error in GIMP brush file '%s'"
	.size	.L.str.40, 30

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Invalid UTF-8 string in brush file '%s'."
	.size	.L.str.41, 41

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Unnamed"
	.size	.L.str.42, 8

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Unsupported brush depth: %d\nGIMP Brushes must be GRAY or RGBA\n"
	.size	.L.str.43, 63

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Brush"
	.size	.L.str.44, 6

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Spacing:"
	.size	.L.str.45, 9

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"value-changed"
	.size	.L.str.46, 14

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Description:"
	.size	.L.str.47, 13

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"changed"
	.size	.L.str.48, 8

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"GIMP brushes are either GRAYSCALE or RGBA"
	.size	.L.str.49, 42

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Could not open '%s' for writing: %s"
	.size	.L.str.50, 36

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Saving '%s'"
	.size	.L.str.51, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
