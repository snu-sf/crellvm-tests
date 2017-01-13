	.text
	.file	"file-pat.bc"
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
	movabsq	$.L.str.13, %rdi
	movabsq	$.L.str.14, %rsi
	movabsq	$.L.str.15, %rdx
	movabsq	$.L.str.16, %rax
	movabsq	$.L.str.17, %r9
	movabsq	$.L.str.18, %rcx
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
	movabsq	$.L.str.13, %rdi
	xorl	%esi, %esi
	movabsq	$.L.str.19, %rdx
	callq	gimp_plugin_icon_register
	movabsq	$.L.str.13, %rdi
	movabsq	$.L.str.20, %rsi
	movl	%eax, -72(%rbp)         # 4-byte Spill
	callq	gimp_register_file_handler_mime
	movabsq	$.L.str.13, %rdi
	movabsq	$.L.str.21, %rsi
	movabsq	$.L.str.22, %rdx
	movabsq	$.L.str.23, %rcx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gimp_register_magic_load_handler
	movabsq	$.L.str.24, %rdi
	movabsq	$.L.str.25, %rsi
	movabsq	$.L.str.26, %rdx
	movabsq	$.L.str.16, %rcx
	movabsq	$.L.str.17, %r9
	movabsq	$.L.str.18, %r8
	movabsq	$.L.str.27, %r10
	movl	$1, %r11d
	movl	$6, %r15d
	xorl	%r12d, %r12d
	movabsq	$query.save_args, %rbx
	xorl	%r13d, %r13d
	movl	%r13d, %r14d
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movq	-88(%rbp), %r13         # 8-byte Reload
	movq	%r8, -96(%rbp)          # 8-byte Spill
	movq	%r13, %r8
	movq	-96(%rbp), %r13         # 8-byte Reload
	movq	%r13, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$6, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%rbx, 40(%rsp)
	movq	$0, 48(%rsp)
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movq	%r14, -112(%rbp)        # 8-byte Spill
	movl	%r12d, -116(%rbp)       # 4-byte Spill
	movl	%r15d, -120(%rbp)       # 4-byte Spill
	movl	%r11d, -124(%rbp)       # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.24, %rdi
	xorl	%esi, %esi
	movabsq	$.L.str.19, %rdx
	callq	gimp_plugin_icon_register
	movabsq	$.L.str.24, %rdi
	movabsq	$.L.str.20, %rsi
	movl	%eax, -128(%rbp)        # 4-byte Spill
	callq	gimp_register_file_handler_mime
	movabsq	$.L.str.24, %rdi
	movabsq	$.L.str.21, %rsi
	movabsq	$.L.str.22, %rdx
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	gimp_register_save_handler
	movl	%eax, -136(%rbp)        # 4-byte Spill
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
	subq	$208, %rsp
	movabsq	$run.values, %rax
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
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, run.values
	movl	$0, run.values+8
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.28, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.28, %rdi
	movabsq	$.L.str.29, %rsi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.28, %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	textdomain
	movq	%rax, -128(%rbp)        # 8-byte Spill
# BB#2:                                 # %do.end
	movq	-8(%rbp), %rdi
	movl	$.L.str.13, %eax
	movl	%eax, %esi
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
	jmp	.LBB1_37
.LBB1_7:                                # %if.else.10
	movq	-8(%rbp), %rdi
	movl	$.L.str.24, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_35
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
	movabsq	$.L.str.30, %rdi
	xorl	%esi, %esi
	callq	gimp_ui_init
	leaq	-52(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	movabsq	$.L.str.31, %rdx
	movl	$19, %ecx
	callq	gimp_export_image
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jne	.LBB1_11
# BB#10:                                # %if.then.22
	movl	$4, run.values+8
	jmp	.LBB1_41
.LBB1_11:                               # %if.end.23
	movabsq	$.L.str.24, %rdi
	movabsq	$description, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB1_13
.LBB1_12:                               # %sw.default
	jmp	.LBB1_13
.LBB1_13:                               # %sw.epilog
	movabsq	$.L.str.32, %rsi
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
	movabsq	$description, %rdi
	movl	$256, %ecx              # imm = 0x100
	movl	%ecx, %edx
	movq	-96(%rbp), %rsi
	callq	strncpy
	movb	$0, description+255
	movq	-96(%rbp), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	g_free
.LBB1_15:                               # %if.end.32
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
	je	.LBB1_16
	jmp	.LBB1_42
.LBB1_42:                               # %if.end.32
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
	cmpl	$6, -12(%rbp)
	je	.LBB1_21
# BB#20:                                # %if.then.40
	movl	$1, -48(%rbp)
	jmp	.LBB1_22
.LBB1_21:                               # %if.else.41
	movabsq	$description, %rdi
	movl	$256, %eax              # imm = 0x100
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movq	208(%rcx), %rsi
	callq	strncpy
	movb	$0, description+255
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB1_22:                               # %if.end.46
	jmp	.LBB1_24
.LBB1_23:                               # %sw.default.47
	jmp	.LBB1_24
.LBB1_24:                               # %sw.epilog.48
	cmpl	$3, -48(%rbp)
	jne	.LBB1_29
# BB#25:                                # %if.then.50
	leaq	-72(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edx
	callq	save_image
	cmpl	$0, %eax
	je	.LBB1_27
# BB#26:                                # %if.then.56
	movabsq	$.L.str.24, %rdi
	movabsq	$description, %rsi
	movl	$256, %edx              # imm = 0x100
	callq	gimp_procedural_db_set_data
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB1_28
.LBB1_27:                               # %if.else.58
	movl	$0, -48(%rbp)
.LBB1_28:                               # %if.end.59
	jmp	.LBB1_29
.LBB1_29:                               # %if.end.60
	cmpl	$2, -60(%rbp)
	jne	.LBB1_31
# BB#30:                                # %if.then.62
	movl	-52(%rbp), %edi
	callq	gimp_image_delete
	movl	%eax, -176(%rbp)        # 4-byte Spill
.LBB1_31:                               # %if.end.64
	movl	$description, %eax
	movl	%eax, %edi
	callq	strlen
	cmpq	$0, %rax
	je	.LBB1_33
# BB#32:                                # %if.then.67
	movabsq	$.L.str.32, %rdi
	movl	$1, %esi
	movabsq	$description, %rcx
	movl	$description, %eax
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
	jmp	.LBB1_34
.LBB1_33:                               # %if.else.72
	movabsq	$.L.str.32, %rsi
	movl	-84(%rbp), %edi
	callq	gimp_image_detach_parasite
	movl	%eax, -208(%rbp)        # 4-byte Spill
.LBB1_34:                               # %if.end.74
	jmp	.LBB1_36
.LBB1_35:                               # %if.else.75
	movl	$1, -48(%rbp)
.LBB1_36:                               # %if.end.76
	jmp	.LBB1_37
.LBB1_37:                               # %if.end.77
	cmpl	$3, -48(%rbp)
	je	.LBB1_40
# BB#38:                                # %land.lhs.true
	cmpq	$0, -72(%rbp)
	je	.LBB1_40
# BB#39:                                # %if.then.81
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$4, run.values+40
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, run.values+48
.LBB1_40:                               # %if.end.82
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
.LBB1_41:                               # %return
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
	.quad	4636737291354636288     # double 100
.LCPI3_1:
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
	subq	$368, %rsp              # imm = 0x170
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	movb	$0, %al
	callq	open
	movl	%eax, -28(%rbp)
	cmpl	$-1, -28(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -180(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.33, %rdi
	movl	%eax, -184(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movl	-180(%rbp), %esi        # 4-byte Reload
	movl	-184(%rbp), %edx        # 4-byte Reload
	movq	-192(%rbp), %rcx        # 8-byte Reload
	movq	-200(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB3_29
.LBB3_2:                                # %if.end
	movabsq	$.L.str.34, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_progress_init_printf
	movl	$24, %ecx
	movl	%ecx, %edx
	leaq	-56(%rbp), %rsi
	movl	-28(%rbp), %edi
	movl	%eax, -212(%rbp)        # 4-byte Spill
	callq	read
	cmpq	$24, %rax
	je	.LBB3_4
# BB#3:                                 # %if.then.13
	movl	-28(%rbp), %edi
	callq	close
	movl	$-1, -4(%rbp)
	movl	%eax, -216(%rbp)        # 4-byte Spill
	jmp	.LBB3_29
.LBB3_4:                                # %if.end.15
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
	movl	-36(%rbp), %eax
	andl	$255, %eax
	shll	$24, %eax
	movl	-36(%rbp), %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	-36(%rbp), %ecx
	andl	$16711680, %ecx         # imm = 0xFF0000
	shrl	$8, %ecx
	orl	%ecx, %eax
	movl	-36(%rbp), %ecx
	andl	$-16777216, %ecx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %ecx
	orl	%ecx, %eax
	movl	%eax, -36(%rbp)
	cmpl	$1196441940, -36(%rbp)  # imm = 0x47504154
	jne	.LBB3_7
# BB#5:                                 # %lor.lhs.false
	cmpl	$1, -52(%rbp)
	jne	.LBB3_7
# BB#6:                                 # %lor.lhs.false.106
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	cmpq	$24, %rcx
	ja	.LBB3_8
.LBB3_7:                                # %if.then.110
	movl	-28(%rbp), %edi
	callq	close
	movl	$-1, -4(%rbp)
	movl	%eax, -220(%rbp)        # 4-byte Spill
	jmp	.LBB3_29
.LBB3_8:                                # %if.end.112
	movl	$1, %eax
	movl	%eax, %esi
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	subq	$24, %rcx
	movq	%rcx, %rdi
	callq	g_malloc_n
	movq	%rax, -72(%rbp)
	movl	-28(%rbp), %edi
	movq	-72(%rbp), %rsi
	movl	-56(%rbp), %edx
	movl	%edx, %eax
	subq	$24, %rax
	movq	%rax, %rdx
	callq	read
	movl	-56(%rbp), %edi
	movl	%edi, %ecx
	subq	$24, %rcx
	cmpq	%rcx, %rax
	je	.LBB3_10
# BB#9:                                 # %if.then.125
	movq	-72(%rbp), %rdi
	callq	g_free
	movl	-28(%rbp), %edi
	callq	close
	movl	$-1, -4(%rbp)
	movl	%eax, -224(%rbp)        # 4-byte Spill
	jmp	.LBB3_29
.LBB3_10:                               # %if.end.127
	movq	-72(%rbp), %rdi
	movl	$.L.str.35, %eax
	movl	%eax, %ecx
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	xorl	%edx, %edx
	movb	%dl, %sil
	movq	$-1, %rcx
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movb	%sil, -241(%rbp)        # 1-byte Spill
	movq	%rcx, %rsi
	movq	-240(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	-241(%rbp), %al         # 1-byte Reload
	callq	gimp_any_to_utf8
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rdi
	callq	g_free
	movl	-40(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$3, %r8d
	movq	%rax, -256(%rbp)        # 8-byte Spill
	movl	%r8d, -260(%rbp)        # 4-byte Spill
	ja	.LBB3_15
# BB#30:                                # %if.end.127
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	.LJTI3_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB3_11:                               # %sw.bb
	movl	$1, -164(%rbp)
	movl	$2, -168(%rbp)
	jmp	.LBB3_16
.LBB3_12:                               # %sw.bb.132
	movl	$1, -164(%rbp)
	movl	$3, -168(%rbp)
	jmp	.LBB3_16
.LBB3_13:                               # %sw.bb.133
	movl	$0, -164(%rbp)
	movl	$0, -168(%rbp)
	jmp	.LBB3_16
.LBB3_14:                               # %sw.bb.134
	movl	$0, -164(%rbp)
	movl	$1, -168(%rbp)
	jmp	.LBB3_16
.LBB3_15:                               # %sw.default
	movabsq	$.L.str.36, %rdi
	movl	-40(%rbp), %esi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB3_29
.LBB3_16:                               # %sw.epilog
	cmpl	$0, -48(%rbp)
	je	.LBB3_21
# BB#17:                                # %lor.lhs.false.139
	cmpl	$262144, -48(%rbp)      # imm = 0x40000
	ja	.LBB3_21
# BB#18:                                # %lor.lhs.false.143
	cmpl	$0, -44(%rbp)
	je	.LBB3_21
# BB#19:                                # %lor.lhs.false.147
	cmpl	$262144, -44(%rbp)      # imm = 0x40000
	ja	.LBB3_21
# BB#20:                                # %lor.lhs.false.151
	movq	$-1, %rax
	movl	-48(%rbp), %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movq	%rdx, -272(%rbp)        # 8-byte Spill
	movl	%ecx, %edx
	movq	-272(%rbp), %rsi        # 8-byte Reload
	divq	%rsi
	movl	-40(%rbp), %ecx
	movl	%ecx, %edi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	%rdi
	cmpq	$1, %rax
	jae	.LBB3_22
.LBB3_21:                               # %if.then.159
	movq	-24(%rbp), %rdi
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.37, %rdi
	movl	%eax, -284(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$24, %edx
	movl	-48(%rbp), %ecx
	movl	%ecx, %r9d
	movl	-44(%rbp), %ecx
	movl	%ecx, %edi
	movl	-40(%rbp), %ecx
	movl	%ecx, %esi
	movq	-280(%rbp), %r8         # 8-byte Reload
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movl	-284(%rbp), %ecx        # 4-byte Reload
	movq	%rsi, -312(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movq	-296(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movq	-304(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB3_29
.LBB3_22:                               # %if.end.169
	movl	-48(%rbp), %edi
	movl	-44(%rbp), %esi
	movl	-164(%rbp), %edx
	callq	gimp_image_new
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	gimp_image_set_filename
	movabsq	$.L.str.32, %rdi
	movl	$1, %esi
	movq	-64(%rbp), %rcx
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movl	%eax, -324(%rbp)        # 4-byte Spill
	movl	%esi, -328(%rbp)        # 4-byte Spill
	callq	strlen
	addq	$1, %rax
	movl	%eax, %edx
	movq	-64(%rbp), %rcx
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movl	-328(%rbp), %esi        # 4-byte Reload
	callq	gimp_parasite_new
	movq	%rax, -96(%rbp)
	movl	-84(%rbp), %edi
	movq	-96(%rbp), %rsi
	callq	gimp_image_attach_parasite
	movq	-96(%rbp), %rdi
	movl	%eax, -332(%rbp)        # 4-byte Spill
	callq	gimp_parasite_free
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movl	-84(%rbp), %edi
	movq	-64(%rbp), %rsi
	movl	-48(%rbp), %edx
	movl	-44(%rbp), %ecx
	movl	-168(%rbp), %r8d
	callq	gimp_layer_new
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movl	%eax, -88(%rbp)
	movl	-84(%rbp), %edi
	movl	-88(%rbp), %esi
	callq	gimp_image_insert_layer
	movq	-64(%rbp), %rdi
	movl	%eax, -336(%rbp)        # 4-byte Spill
	callq	g_free
	movl	-88(%rbp), %edi
	callq	gimp_drawable_get
	leaq	-160(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rsi
	movq	-104(%rbp), %rax
	movl	4(%rax), %r8d
	movq	-104(%rbp), %rax
	movl	8(%rax), %r9d
	movl	%edx, -340(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	-48(%rbp), %ecx
	imull	-40(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edi
	callq	g_malloc
	movq	%rax, -80(%rbp)
	movl	$0, -108(%rbp)
.LBB3_23:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-108(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jae	.LBB3_28
# BB#24:                                # %for.body
                                        #   in Loop: Header=BB3_23 Depth=1
	movl	-28(%rbp), %edi
	movq	-80(%rbp), %rsi
	movl	-48(%rbp), %eax
	imull	-40(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %edx
	callq	read
	movl	-48(%rbp), %edi
	imull	-40(%rbp), %edi
	movl	%edi, %edi
	movl	%edi, %edx
	cmpq	%rdx, %rax
	je	.LBB3_26
# BB#25:                                # %if.then.203
	movl	-28(%rbp), %edi
	callq	close
	movq	-80(%rbp), %rdi
	movl	%eax, -344(%rbp)        # 4-byte Spill
	callq	g_free
	movl	$-1, -4(%rbp)
	jmp	.LBB3_29
.LBB3_26:                               # %if.end.205
                                        #   in Loop: Header=BB3_23 Depth=1
	movq	-80(%rbp), %rsi
	movl	-108(%rbp), %ecx
	movl	-48(%rbp), %r8d
	leaq	-160(%rbp), %rdi
	xorl	%edx, %edx
	callq	gimp_pixel_rgn_set_row
	cvtsi2sdl	-108(%rbp), %xmm0
	movl	-44(%rbp), %ecx
	movl	%ecx, %esi
	cvtsi2sdq	%rsi, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -348(%rbp)        # 4-byte Spill
# BB#27:                                # %for.inc
                                        #   in Loop: Header=BB3_23 Depth=1
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB3_23
.LBB3_28:                               # %for.end
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-104(%rbp), %rdi
	movl	%eax, -352(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	-84(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB3_29:                               # %return
	movl	-4(%rbp), %eax
	addq	$368, %rsp              # imm = 0x170
	popq	%rbp
	retq
.Lfunc_end3:
	.size	load_image, .Lfunc_end3-load_image
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI3_0:
	.quad	.LBB3_11
	.quad	.LBB3_12
	.quad	.LBB3_13
	.quad	.LBB3_14

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI4_0:
	.long	1065353216              # float 1
.LCPI4_1:
	.long	1056964608              # float 0.5
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
	subq	$144, %rsp
	movabsq	$.L.str.38, %rdi
	callq	gettext
	movabsq	$.L.str.30, %rsi
	movabsq	$.L.str.24, %rdx
	movq	%rax, %rdi
	callq	gimp_export_dialog_new
	movl	$1, %edi
	movl	$2, %esi
	xorl	%edx, %edx
	movq	%rax, -8(%rbp)
	callq	gtk_table_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-8(%rbp), %rdi
	callq	gimp_export_dialog_get_content_area
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -60(%rbp)         # 4-byte Spill
	movl	-60(%rbp), %ecx         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_entry_new
	movl	$200, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_set_size_request
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$description, %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_activates_default
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.39, %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movss	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-24(%rbp), %r8
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	-24(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-8(%rbp), %rdi
	callq	gtk_widget_show
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %eax
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movabsq	$description, %rdi
	movl	$256, %ecx              # imm = 0x100
	movl	%ecx, %edx
	movq	%rax, %rsi
	callq	strncpy
	movb	$0, description+255
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB4_2:                                # %if.end
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-28(%rbp), %eax
	addq	$144, %rsp
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
	subq	$288, %rsp              # imm = 0x120
	movl	$577, %eax              # imm = 0x241
	movl	$438, %r8d              # imm = 0x1B6
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	movl	%r8d, %edx
	movb	$0, %al
	callq	open
	movl	%eax, -36(%rbp)
	cmpl	$-1, -36(%rbp)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.40, %rdi
	movl	%eax, -152(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movl	-148(%rbp), %esi        # 4-byte Reload
	movl	-152(%rbp), %edx        # 4-byte Reload
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movq	-168(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_15
.LBB5_2:                                # %if.end
	movabsq	$.L.str.41, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_progress_init_printf
	movl	-24(%rbp), %edi
	movl	%eax, -180(%rbp)        # 4-byte Spill
	callq	gimp_drawable_get
	leaq	-136(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rsi
	movq	-80(%rbp), %rax
	movl	4(%rax), %r8d
	movq	-80(%rbp), %rax
	movl	8(%rax), %r9d
	movl	%ecx, %edx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$24, %ecx
	movl	%ecx, %edx
	leaq	-64(%rbp), %rax
	movl	$description, %ecx
	movl	%ecx, %edi
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	strlen
	addq	$24, %rax
	addq	$1, %rax
	movl	%eax, %ecx
	andl	$255, %ecx
	shll	$24, %ecx
	movl	$description, %r8d
	movl	%r8d, %edi
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	callq	strlen
	addq	$24, %rax
	addq	$1, %rax
	movl	%eax, %ecx
	andl	$65280, %ecx            # imm = 0xFF00
	shll	$8, %ecx
	movl	-204(%rbp), %r8d        # 4-byte Reload
	orl	%ecx, %r8d
	movl	$description, %ecx
	movl	%ecx, %edi
	movl	%r8d, -208(%rbp)        # 4-byte Spill
	callq	strlen
	addq	$24, %rax
	addq	$1, %rax
	movl	%eax, %ecx
	andl	$16711680, %ecx         # imm = 0xFF0000
	shrl	$8, %ecx
	movl	-208(%rbp), %r8d        # 4-byte Reload
	orl	%ecx, %r8d
	movl	$description, %ecx
	movl	%ecx, %edi
	movl	%r8d, -212(%rbp)        # 4-byte Spill
	callq	strlen
	addq	$24, %rax
	addq	$1, %rax
	movl	%eax, %ecx
	andl	$-16777216, %ecx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %ecx
	movl	-212(%rbp), %r8d        # 4-byte Reload
	orl	%ecx, %r8d
	movl	%r8d, -64(%rbp)
	movl	$16777216, -60(%rbp)    # imm = 0x1000000
	movq	-80(%rbp), %rax
	movl	4(%rax), %ecx
	andl	$255, %ecx
	shll	$24, %ecx
	movq	-80(%rbp), %rax
	movl	4(%rax), %r8d
	andl	$65280, %r8d            # imm = 0xFF00
	shll	$8, %r8d
	orl	%r8d, %ecx
	movq	-80(%rbp), %rax
	movl	4(%rax), %r8d
	andl	$16711680, %r8d         # imm = 0xFF0000
	shrl	$8, %r8d
	orl	%r8d, %ecx
	movq	-80(%rbp), %rax
	movl	4(%rax), %r8d
	andl	$-16777216, %r8d        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %r8d
	orl	%r8d, %ecx
	movl	%ecx, -56(%rbp)
	movq	-80(%rbp), %rax
	movl	8(%rax), %ecx
	andl	$255, %ecx
	shll	$24, %ecx
	movq	-80(%rbp), %rax
	movl	8(%rax), %r8d
	andl	$65280, %r8d            # imm = 0xFF00
	shll	$8, %r8d
	orl	%r8d, %ecx
	movq	-80(%rbp), %rax
	movl	8(%rax), %r8d
	andl	$16711680, %r8d         # imm = 0xFF0000
	shrl	$8, %r8d
	orl	%r8d, %ecx
	movq	-80(%rbp), %rax
	movl	8(%rax), %r8d
	andl	$-16777216, %r8d        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %r8d
	orl	%r8d, %ecx
	movl	%ecx, -52(%rbp)
	movq	-80(%rbp), %rax
	movl	12(%rax), %ecx
	andl	$255, %ecx
	shll	$24, %ecx
	movq	-80(%rbp), %rax
	movl	12(%rax), %r8d
	andl	$65280, %r8d            # imm = 0xFF00
	shll	$8, %r8d
	orl	%r8d, %ecx
	movq	-80(%rbp), %rax
	movl	12(%rax), %r8d
	andl	$16711680, %r8d         # imm = 0xFF0000
	shrl	$8, %r8d
	orl	%r8d, %ecx
	movq	-80(%rbp), %rax
	movl	12(%rax), %r8d
	andl	$-16777216, %r8d        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %r8d
	orl	%r8d, %ecx
	movl	%ecx, -48(%rbp)
	movl	$1413566535, -44(%rbp)  # imm = 0x54415047
	movl	-36(%rbp), %edi
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rsi
	movq	-192(%rbp), %rdx        # 8-byte Reload
	callq	write
	cmpq	$24, %rax
	je	.LBB5_4
# BB#3:                                 # %if.then.82
	movl	-36(%rbp), %edi
	callq	close
	movl	$0, -4(%rbp)
	movl	%eax, -216(%rbp)        # 4-byte Spill
	jmp	.LBB5_15
.LBB5_4:                                # %if.end.84
	movabsq	$description, %rsi
	movl	-36(%rbp), %edi
	movl	$description, %eax
	movl	%eax, %ecx
	movl	%edi, -220(%rbp)        # 4-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	callq	strlen
	addq	$1, %rax
	movl	-220(%rbp), %edi        # 4-byte Reload
	movq	-232(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	write
	movl	$description, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	strlen
	addq	$1, %rax
	movq	-240(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB5_6
# BB#5:                                 # %if.then.92
	movl	-36(%rbp), %edi
	callq	close
	movl	$0, -4(%rbp)
	movl	%eax, -244(%rbp)        # 4-byte Spill
	jmp	.LBB5_15
.LBB5_6:                                # %if.end.94
	movq	-80(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-80(%rbp), %rax
	imull	12(%rax), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edi
	callq	g_malloc
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB5_8
# BB#7:                                 # %if.then.101
	movl	-36(%rbp), %edi
	callq	close
	movl	$0, -4(%rbp)
	movl	%eax, -248(%rbp)        # 4-byte Spill
	jmp	.LBB5_15
.LBB5_8:                                # %if.end.103
	movl	$0, -84(%rbp)
.LBB5_9:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	movq	-80(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB5_14
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB5_9 Depth=1
	leaq	-136(%rbp), %rdi
	xorl	%edx, %edx
	movq	-72(%rbp), %rsi
	movl	-84(%rbp), %ecx
	movq	-80(%rbp), %rax
	movl	4(%rax), %r8d
	callq	gimp_pixel_rgn_get_row
	movl	-36(%rbp), %edi
	movq	-72(%rbp), %rsi
	movq	-80(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-80(%rbp), %rax
	imull	12(%rax), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	callq	write
	movq	-80(%rbp), %rdx
	movl	4(%rdx), %ecx
	movq	-80(%rbp), %rdx
	imull	12(%rdx), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	cmpq	%rdx, %rax
	je	.LBB5_12
# BB#11:                                # %if.then.119
	movl	-36(%rbp), %edi
	callq	close
	movl	$0, -4(%rbp)
	movl	%eax, -252(%rbp)        # 4-byte Spill
	jmp	.LBB5_15
.LBB5_12:                               # %if.end.121
                                        #   in Loop: Header=BB5_9 Depth=1
	cvtsi2sdl	-84(%rbp), %xmm0
	movq	-80(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -256(%rbp)        # 4-byte Spill
# BB#13:                                # %for.inc
                                        #   in Loop: Header=BB5_9 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB5_9
.LBB5_14:                               # %for.end
	movq	-72(%rbp), %rdi
	callq	g_free
	movl	-36(%rbp), %edi
	callq	close
	movl	$1, -4(%rbp)
	movl	%eax, -260(%rbp)        # 4-byte Spill
.LBB5_15:                               # %return
	movl	-4(%rbp), %eax
	addq	$288, %rsp              # imm = 0x120
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
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.11
	.quad	.L.str.12
	.size	query.save_args, 144

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
	.asciz	"description"
	.size	.L.str.11, 12

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Short description of the pattern"
	.size	.L.str.12, 33

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"file-pat-load"
	.size	.L.str.13, 14

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Loads Gimp's .PAT pattern files"
	.size	.L.str.14, 32

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"The images in the pattern dialog can be loaded directly with this plug-in"
	.size	.L.str.15, 74

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Tim Newsome"
	.size	.L.str.16, 12

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"1997"
	.size	.L.str.17, 5

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"GIMP pattern"
	.size	.L.str.18, 13

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp-tool-bucket-fill"
	.size	.L.str.19, 22

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"image/x-gimp-pat"
	.size	.L.str.20, 17

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"pat"
	.size	.L.str.21, 4

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.zero	1
	.size	.L.str.22, 1

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"20,string,GPAT"
	.size	.L.str.23, 15

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"file-pat-save"
	.size	.L.str.24, 14

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Saves Gimp pattern file (.PAT)"
	.size	.L.str.25, 31

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"New Gimp patterns can be created by saving them in the appropriate place with this plug-in."
	.size	.L.str.26, 92

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.27, 12

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,80,16
	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.28, 20

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"UTF-8"
	.size	.L.str.29, 6

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"file-pat"
	.size	.L.str.30, 9

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"PAT"
	.size	.L.str.31, 4

	.type	description,@object     # @description
	.data
	.align	16
description:
	.asciz	"GIMP Pattern\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.size	description, 256

	.type	.L.str.32,@object       # @.str.32
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.32:
	.asciz	"gimp-pattern-name"
	.size	.L.str.32, 18

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Could not open '%s' for reading: %s"
	.size	.L.str.33, 36

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Opening '%s'"
	.size	.L.str.34, 13

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Invalid UTF-8 string in pattern file '%s'."
	.size	.L.str.35, 43

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Unsupported pattern depth: %d\nGIMP Patterns must be GRAY or RGB"
	.size	.L.str.36, 64

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Invalid header data in '%s': width=%lu, height=%lu, bytes=%lu"
	.size	.L.str.37, 62

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Pattern"
	.size	.L.str.38, 8

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Description:"
	.size	.L.str.39, 13

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Could not open '%s' for writing: %s"
	.size	.L.str.40, 36

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Saving '%s'"
	.size	.L.str.41, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
