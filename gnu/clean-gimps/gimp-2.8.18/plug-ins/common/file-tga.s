	.text
	.file	"file-tga.bc"
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
	movabsq	$.L.str.16, %rdi
	movabsq	$.L.str.17, %rsi
	movabsq	$.L.str.18, %rdx
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.20, %r9
	movabsq	$.L.str.21, %rcx
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
	movabsq	$.L.str.16, %rdi
	movabsq	$.L.str.22, %rsi
	callq	gimp_register_file_handler_mime
	movabsq	$.L.str.16, %rdi
	movabsq	$.L.str.23, %rsi
	movabsq	$.L.str.24, %rdx
	movabsq	$.L.str.25, %rcx
	movl	%eax, -72(%rbp)         # 4-byte Spill
	callq	gimp_register_magic_load_handler
	movabsq	$.L.str.26, %rdi
	movabsq	$.L.str.27, %rsi
	movabsq	$.L.str.28, %rdx
	movabsq	$.L.str.19, %rcx
	movabsq	$.L.str.29, %r9
	movabsq	$.L.str.21, %r8
	movabsq	$.L.str.30, %r10
	movl	$1, %r11d
	movl	$7, %r15d
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
	movl	$7, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%rbx, 40(%rsp)
	movq	$0, 48(%rsp)
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movq	%r14, -104(%rbp)        # 8-byte Spill
	movl	%r12d, -108(%rbp)       # 4-byte Spill
	movl	%r15d, -112(%rbp)       # 4-byte Spill
	movl	%r11d, -116(%rbp)       # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.26, %rdi
	movabsq	$.L.str.22, %rsi
	callq	gimp_register_file_handler_mime
	movabsq	$.L.str.26, %rdi
	movabsq	$.L.str.31, %rsi
	movabsq	$.L.str.24, %rdx
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
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.32, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.32, %rdi
	movabsq	$.L.str.33, %rsi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.32, %rdi
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
	movl	$.L.str.16, %edx
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
	jmp	.LBB1_33
.LBB1_7:                                # %if.else.10
	movq	-8(%rbp), %rdi
	movl	$.L.str.26, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_31
# BB#8:                                 # %if.then.13
	movl	$.L.str.34, %eax
	movl	%eax, %edi
	xorl	%esi, %esi
	callq	gimp_ui_init
	movq	-24(%rbp), %rdi
	movl	48(%rdi), %eax
	movl	%eax, -52(%rbp)
	movq	-24(%rbp), %rdi
	movl	88(%rdi), %eax
	movl	%eax, -56(%rbp)
	movl	-44(%rbp), %eax
	orl	$2, %eax
	subl	$2, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB1_9
	jmp	.LBB1_12
.LBB1_9:                                # %sw.bb
	leaq	-52(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	movabsq	$.L.str.35, %rdx
	movl	$23, %ecx
	callq	gimp_export_image
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jne	.LBB1_11
# BB#10:                                # %if.then.22
	movl	$4, run.values+8
	jmp	.LBB1_37
.LBB1_11:                               # %if.end.23
	jmp	.LBB1_13
.LBB1_12:                               # %sw.default
	jmp	.LBB1_13
.LBB1_13:                               # %sw.epilog
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB1_14
	jmp	.LBB1_38
.LBB1_38:                               # %sw.epilog
	movl	-104(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB1_17
	jmp	.LBB1_39
.LBB1_39:                               # %sw.epilog
	movl	-104(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB1_21
	jmp	.LBB1_22
.LBB1_14:                               # %sw.bb.24
	movabsq	$.L.str.26, %rdi
	movabsq	$tsvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	save_dialog
	cmpl	$0, %eax
	jne	.LBB1_16
# BB#15:                                # %if.then.27
	movl	$4, -48(%rbp)
.LBB1_16:                               # %if.end.28
	jmp	.LBB1_23
.LBB1_17:                               # %sw.bb.29
	cmpl	$7, -12(%rbp)
	je	.LBB1_19
# BB#18:                                # %if.then.31
	movl	$1, -48(%rbp)
	jmp	.LBB1_20
.LBB1_19:                               # %if.else.32
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-24(%rbp), %rdx
	cmpl	$0, 208(%rdx)
	cmovnel	%ecx, %eax
	movl	%eax, tsvals
.LBB1_20:                               # %if.end.37
	jmp	.LBB1_23
.LBB1_21:                               # %sw.bb.38
	movabsq	$.L.str.26, %rdi
	movabsq	$tsvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB1_23
.LBB1_22:                               # %sw.default.40
	jmp	.LBB1_23
.LBB1_23:                               # %sw.epilog.41
	cmpl	$3, -48(%rbp)
	jne	.LBB1_28
# BB#24:                                # %if.then.43
	leaq	-72(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edx
	callq	save_image
	cmpl	$0, %eax
	je	.LBB1_26
# BB#25:                                # %if.then.49
	movabsq	$.L.str.26, %rdi
	movabsq	$tsvals, %rax
	movl	$8, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB1_27
.LBB1_26:                               # %if.else.51
	movl	$0, -48(%rbp)
.LBB1_27:                               # %if.end.52
	jmp	.LBB1_28
.LBB1_28:                               # %if.end.53
	cmpl	$2, -60(%rbp)
	jne	.LBB1_30
# BB#29:                                # %if.then.55
	movl	-52(%rbp), %edi
	callq	gimp_image_delete
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB1_30:                               # %if.end.57
	jmp	.LBB1_32
.LBB1_31:                               # %if.else.58
	movl	$1, -48(%rbp)
.LBB1_32:                               # %if.end.59
	jmp	.LBB1_33
.LBB1_33:                               # %if.end.60
	cmpl	$3, -48(%rbp)
	je	.LBB1_36
# BB#34:                                # %land.lhs.true
	cmpq	$0, -72(%rbp)
	je	.LBB1_36
# BB#35:                                # %if.then.63
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$4, run.values+40
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, run.values+48
.LBB1_36:                               # %if.end.64
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
.LBB1_37:                               # %return
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
	subq	$1248, %rsp             # imm = 0x4E0
	movabsq	$.L.str.36, %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$-1, -1116(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	fopen
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	%rdi, -1128(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -1132(%rbp)       # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.37, %rdi
	movl	%eax, -1136(%rbp)       # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -1144(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -1152(%rbp)       # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-1128(%rbp), %rdi       # 8-byte Reload
	movl	-1132(%rbp), %esi       # 4-byte Reload
	movl	-1136(%rbp), %edx       # 4-byte Reload
	movq	-1144(%rbp), %rcx       # 8-byte Reload
	movq	-1152(%rbp), %r8        # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB3_66
.LBB3_2:                                # %if.end
	movabsq	$.L.str.38, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -1160(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-1160(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_progress_init_printf
	movq	$-26, %rsi
	movl	$2, %edx
	movq	-32(%rbp), %rdi
	movl	%eax, -1164(%rbp)       # 4-byte Spill
	callq	fseek
	cmpl	$0, %eax
	jne	.LBB3_14
# BB#3:                                 # %if.then.13
	movl	$26, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-608(%rbp), %rdi
	movq	-32(%rbp), %rcx
	callq	fread
	cmpq	$1, %rax
	je	.LBB3_5
# BB#4:                                 # %if.then.15
	movabsq	$.L.str.39, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -1176(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-1176(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB3_66
.LBB3_5:                                # %if.else
	leaq	-608(%rbp), %rax
	addq	$8, %rax
	movl	$magic, %ecx
	movl	%ecx, %esi
	movl	$18, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	memcmp
	cmpl	$0, %eax
	jne	.LBB3_12
# BB#6:                                 # %if.then.21
	movzbl	-608(%rbp), %eax
	movl	%eax, %ecx
	movzbl	-607(%rbp), %eax
	movl	%eax, %edx
	shlq	$8, %rdx
	addq	%rdx, %rcx
	movzbl	-606(%rbp), %eax
	movl	%eax, %edx
	shlq	$16, %rdx
	addq	%rdx, %rcx
	movzbl	-605(%rbp), %eax
	movl	%eax, %edx
	shlq	$24, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -1112(%rbp)
	cmpq	$0, -1112(%rbp)
	je	.LBB3_11
# BB#7:                                 # %if.then.34
	xorl	%edx, %edx
	movq	-32(%rbp), %rdi
	movq	-1112(%rbp), %rsi
	callq	fseek
	cmpl	$0, %eax
	jne	.LBB3_9
# BB#8:                                 # %lor.lhs.false
	movl	$495, %eax              # imm = 0x1EF
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-1104(%rbp), %rdi
	movq	-32(%rbp), %rcx
	callq	fread
	cmpq	$1, %rax
	je	.LBB3_10
.LBB3_9:                                # %if.then.41
	movabsq	$.L.str.40, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -1184(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-1184(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB3_66
.LBB3_10:                               # %if.end.44
	jmp	.LBB3_11
.LBB3_11:                               # %if.end.45
	jmp	.LBB3_12
.LBB3_12:                               # %if.end.46
	jmp	.LBB3_13
.LBB3_13:                               # %if.end.47
	jmp	.LBB3_14
.LBB3_14:                               # %if.end.48
	xorl	%eax, %eax
	movl	%eax, %esi
	xorl	%edx, %edx
	movq	-32(%rbp), %rdi
	callq	fseek
	cmpl	$0, %eax
	jne	.LBB3_16
# BB#15:                                # %lor.lhs.false.51
	movl	$18, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-576(%rbp), %rdi
	movq	-32(%rbp), %rcx
	callq	fread
	cmpq	$1, %rax
	je	.LBB3_17
.LBB3_16:                               # %if.then.56
	movabsq	$.L.str.41, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -1192(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-1192(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB3_66
.LBB3_17:                               # %if.end.59
	movzbl	-574(%rbp), %eax
	decl	%eax
	movl	%eax, %ecx
	subl	$10, %eax
	movq	%rcx, -1200(%rbp)       # 8-byte Spill
	movl	%eax, -1204(%rbp)       # 4-byte Spill
	ja	.LBB3_24
# BB#67:                                # %if.end.59
	movq	-1200(%rbp), %rax       # 8-byte Reload
	movq	.LJTI3_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB3_18:                               # %sw.bb
	movb	$1, -542(%rbp)
	movb	$0, -541(%rbp)
	jmp	.LBB3_25
.LBB3_19:                               # %sw.bb.62
	movb	$2, -542(%rbp)
	movb	$0, -541(%rbp)
	jmp	.LBB3_25
.LBB3_20:                               # %sw.bb.65
	movb	$3, -542(%rbp)
	movb	$0, -541(%rbp)
	jmp	.LBB3_25
.LBB3_21:                               # %sw.bb.68
	movb	$1, -542(%rbp)
	movb	$1, -541(%rbp)
	jmp	.LBB3_25
.LBB3_22:                               # %sw.bb.71
	movb	$2, -542(%rbp)
	movb	$1, -541(%rbp)
	jmp	.LBB3_25
.LBB3_23:                               # %sw.bb.74
	movb	$3, -542(%rbp)
	movb	$1, -541(%rbp)
	jmp	.LBB3_25
.LBB3_24:                               # %sw.default
	movb	$0, -542(%rbp)
.LBB3_25:                               # %sw.epilog
	movl	$1, %eax
	xorl	%ecx, %ecx
	movl	$8, %edx
	movb	-576(%rbp), %sil
	movb	%sil, -544(%rbp)
	movb	-575(%rbp), %sil
	movb	%sil, -543(%rbp)
	movzbl	-573(%rbp), %edi
	movzbl	-572(%rbp), %r8d
	shll	$8, %r8d
	addl	%r8d, %edi
	movw	%di, %r9w
	movw	%r9w, -540(%rbp)
	movzbl	-571(%rbp), %edi
	movzbl	-570(%rbp), %r8d
	shll	$8, %r8d
	addl	%r8d, %edi
	movw	%di, %r9w
	movw	%r9w, -538(%rbp)
	movb	-569(%rbp), %sil
	movb	%sil, -536(%rbp)
	movzbl	-568(%rbp), %edi
	movzbl	-567(%rbp), %r8d
	shll	$8, %r8d
	addl	%r8d, %edi
	movw	%di, %r9w
	movw	%r9w, -534(%rbp)
	movzbl	-566(%rbp), %edi
	movzbl	-565(%rbp), %r8d
	shll	$8, %r8d
	addl	%r8d, %edi
	movw	%di, %r9w
	movw	%r9w, -532(%rbp)
	movzbl	-564(%rbp), %edi
	movzbl	-563(%rbp), %r8d
	shll	$8, %r8d
	addl	%r8d, %edi
	movw	%di, %r9w
	movw	%r9w, -530(%rbp)
	movzbl	-562(%rbp), %edi
	movzbl	-561(%rbp), %r8d
	shll	$8, %r8d
	addl	%r8d, %edi
	movw	%di, %r9w
	movw	%r9w, -528(%rbp)
	movb	-560(%rbp), %sil
	movb	%sil, -526(%rbp)
	movzbl	-526(%rbp), %edi
	addl	$7, %edi
	movl	%eax, -1208(%rbp)       # 4-byte Spill
	movl	%edi, %eax
	movl	%edx, -1212(%rbp)       # 4-byte Spill
	cltd
	movl	-1212(%rbp), %edi       # 4-byte Reload
	idivl	%edi
	movb	%al, %sil
	movb	%sil, -525(%rbp)
	movzbl	-559(%rbp), %eax
	andl	$15, %eax
	movb	%al, %sil
	movb	%sil, -524(%rbp)
	movzbl	-559(%rbp), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	movl	%ecx, %eax
	movl	-1208(%rbp), %r8d       # 4-byte Reload
	cmovnel	%r8d, %eax
	movb	%al, %sil
	movb	%sil, -523(%rbp)
	movzbl	-559(%rbp), %eax
	andl	$32, %eax
	cmpl	$0, %eax
	cmovnel	%ecx, %r8d
	movb	%r8b, %sil
	movb	%sil, -522(%rbp)
	movzbl	-524(%rbp), %eax
	movzbl	-526(%rbp), %ecx
	cmpl	%ecx, %eax
	jne	.LBB3_27
# BB#26:                                # %if.then.148
	movb	$0, -524(%rbp)
.LBB3_27:                               # %if.end.150
	movzbl	-524(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB3_35
# BB#28:                                # %if.then.155
	movzbl	-542(%rbp), %eax
	cmpl	$2, %eax
	jne	.LBB3_31
# BB#29:                                # %land.lhs.true
	movzbl	-526(%rbp), %eax
	cmpl	$32, %eax
	jne	.LBB3_31
# BB#30:                                # %if.then.164
	movb	$8, -524(%rbp)
.LBB3_31:                               # %if.end.166
	movzbl	-542(%rbp), %eax
	cmpl	$3, %eax
	jne	.LBB3_34
# BB#32:                                # %land.lhs.true.171
	movzbl	-526(%rbp), %eax
	cmpl	$16, %eax
	jne	.LBB3_34
# BB#33:                                # %if.then.176
	movb	$8, -524(%rbp)
.LBB3_34:                               # %if.end.178
	jmp	.LBB3_35
.LBB3_35:                               # %if.end.179
	movzbl	-542(%rbp), %eax
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%eax, -1216(%rbp)       # 4-byte Spill
	movl	%ecx, -1220(%rbp)       # 4-byte Spill
	je	.LBB3_36
	jmp	.LBB3_68
.LBB3_68:                               # %if.end.179
	movl	-1216(%rbp), %eax       # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -1224(%rbp)       # 4-byte Spill
	je	.LBB3_39
	jmp	.LBB3_69
.LBB3_69:                               # %if.end.179
	movl	-1216(%rbp), %eax       # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -1228(%rbp)       # 4-byte Spill
	je	.LBB3_45
	jmp	.LBB3_51
.LBB3_36:                               # %sw.bb.182
	movzbl	-526(%rbp), %eax
	cmpl	$8, %eax
	je	.LBB3_38
# BB#37:                                # %if.then.187
	movq	-16(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.42, %rdi
	movzbl	-542(%rbp), %edx
	movzbl	-526(%rbp), %ecx
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB3_66
.LBB3_38:                               # %if.end.193
	jmp	.LBB3_52
.LBB3_39:                               # %sw.bb.194
	movzbl	-526(%rbp), %eax
	cmpl	$15, %eax
	je	.LBB3_44
# BB#40:                                # %land.lhs.true.199
	movzbl	-526(%rbp), %eax
	cmpl	$16, %eax
	je	.LBB3_44
# BB#41:                                # %land.lhs.true.204
	movzbl	-526(%rbp), %eax
	cmpl	$24, %eax
	je	.LBB3_44
# BB#42:                                # %land.lhs.true.209
	movzbl	-526(%rbp), %eax
	cmpl	$32, %eax
	je	.LBB3_44
# BB#43:                                # %if.then.214
	movq	-16(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.42, %rdi
	movzbl	-542(%rbp), %edx
	movzbl	-526(%rbp), %ecx
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB3_66
.LBB3_44:                               # %if.end.220
	jmp	.LBB3_52
.LBB3_45:                               # %sw.bb.221
	movzbl	-526(%rbp), %eax
	cmpl	$8, %eax
	je	.LBB3_50
# BB#46:                                # %land.lhs.true.226
	movzbl	-524(%rbp), %eax
	cmpl	$8, %eax
	jne	.LBB3_49
# BB#47:                                # %lor.lhs.false.231
	movzbl	-526(%rbp), %eax
	cmpl	$16, %eax
	je	.LBB3_50
# BB#48:                                # %land.lhs.true.236
	movzbl	-526(%rbp), %eax
	cmpl	$15, %eax
	je	.LBB3_50
.LBB3_49:                               # %if.then.241
	movq	-16(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.42, %rdi
	movzbl	-542(%rbp), %edx
	movzbl	-526(%rbp), %ecx
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB3_66
.LBB3_50:                               # %if.end.247
	jmp	.LBB3_52
.LBB3_51:                               # %sw.default.248
	movzbl	-542(%rbp), %esi
	movq	-16(%rbp), %rdi
	movl	%esi, -1232(%rbp)       # 4-byte Spill
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.43, %rdi
	movl	-1232(%rbp), %esi       # 4-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB3_66
.LBB3_52:                               # %sw.epilog.252
	movzbl	-525(%rbp), %eax
	shll	$3, %eax
	movzbl	-526(%rbp), %ecx
	cmpl	%ecx, %eax
	je	.LBB3_55
# BB#53:                                # %land.lhs.true.260
	movzbl	-526(%rbp), %eax
	cmpl	$15, %eax
	je	.LBB3_55
# BB#54:                                # %if.then.265
	movq	-16(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.42, %rdi
	movzbl	-542(%rbp), %edx
	movzbl	-526(%rbp), %ecx
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB3_66
.LBB3_55:                               # %if.end.271
	movzbl	-542(%rbp), %eax
	cmpl	$1, %eax
	jne	.LBB3_58
# BB#56:                                # %land.lhs.true.276
	movzbl	-543(%rbp), %eax
	cmpl	$1, %eax
	je	.LBB3_58
# BB#57:                                # %if.then.281
	movabsq	$.L.str.44, %rdi
	movzbl	-543(%rbp), %esi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB3_66
.LBB3_58:                               # %if.else.284
	movzbl	-542(%rbp), %eax
	cmpl	$1, %eax
	je	.LBB3_61
# BB#59:                                # %land.lhs.true.289
	movzbl	-543(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB3_61
# BB#60:                                # %if.then.294
	movabsq	$.L.str.45, %rdi
	movzbl	-543(%rbp), %esi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB3_66
.LBB3_61:                               # %if.end.297
	jmp	.LBB3_62
.LBB3_62:                               # %if.end.298
	movzbl	-544(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB3_65
# BB#63:                                # %land.lhs.true.302
	movl	$1, %edx
	movq	-32(%rbp), %rdi
	movzbl	-544(%rbp), %eax
	movl	%eax, %esi
	callq	fseek
	cmpl	$0, %eax
	je	.LBB3_65
# BB#64:                                # %if.then.307
	movq	-16(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.46, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB3_66
.LBB3_65:                               # %if.end.309
	leaq	-544(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rdx
	callq	ReadImage
	movl	%eax, -1116(%rbp)
	movq	-32(%rbp), %rdi
	callq	fclose
	movl	-1116(%rbp), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -1236(%rbp)       # 4-byte Spill
.LBB3_66:                               # %return
	movl	-4(%rbp), %eax
	addq	$1248, %rsp             # imm = 0x4E0
	popq	%rbp
	retq
.Lfunc_end3:
	.size	load_image, .Lfunc_end3-load_image
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI3_0:
	.quad	.LBB3_18
	.quad	.LBB3_19
	.quad	.LBB3_20
	.quad	.LBB3_24
	.quad	.LBB3_24
	.quad	.LBB3_24
	.quad	.LBB3_24
	.quad	.LBB3_24
	.quad	.LBB3_21
	.quad	.LBB3_22
	.quad	.LBB3_23

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
	subq	$208, %rsp
	movabsq	$.L.str.35, %rdi
	callq	gettext
	movabsq	$.L.str.34, %rsi
	movabsq	$.L.str.26, %rdx
	movq	%rax, %rdi
	callq	gimp_export_dialog_new
	movl	$1, %edi
	movl	$12, %esi
	movq	%rax, -8(%rbp)
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-8(%rbp), %rdi
	callq	gimp_export_dialog_get_content_area
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.51, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	movl	-84(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	tsvals, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.52, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$tsvals, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %r10
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	xorl	%edi, %edi
	movl	$6, %esi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.53, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	movl	-132(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.54, %rdi
	callq	gettext
	movabsq	$.L.str.55, %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	gimp_int_combo_box_new
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movq	-32(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_int_combo_box_get_active, %rsi
	movabsq	$tsvals, %rdi
	addq	$4, %rdi
	movl	tsvals+4, %ecx
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movq	-184(%rbp), %rdx        # 8-byte Reload
	movq	-176(%rbp), %rcx        # 8-byte Reload
	callq	gimp_int_combo_box_connect
	movq	-8(%rbp), %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-8(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %eax
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-52(%rbp), %eax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	save_dialog, .Lfunc_end4-save_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4607182418800017408     # double 1
	.text
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
	subq	$448, %rsp              # imm = 0x1C0
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	$0, -116(%rbp)
	movl	$1, -120(%rbp)
	movq	$0, -224(%rbp)
	movl	-24(%rbp), %edi
	callq	gimp_drawable_get
	movq	%rax, -88(%rbp)
	movl	-24(%rbp), %edi
	callq	gimp_drawable_type
	movabsq	$.L.str.56, %rsi
	movl	%eax, -92(%rbp)
	movq	-88(%rbp), %rcx
	movl	4(%rcx), %eax
	movl	%eax, -96(%rbp)
	movq	-88(%rbp), %rcx
	movl	8(%rcx), %eax
	movl	%eax, -100(%rbp)
	movq	-16(%rbp), %rdi
	callq	fopen
	movq	%rax, -112(%rbp)
	cmpq	$0, %rax
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -236(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.57, %rdi
	movl	%eax, -240(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movl	-236(%rbp), %esi        # 4-byte Reload
	movl	-240(%rbp), %edx        # 4-byte Reload
	movq	-248(%rbp), %rcx        # 8-byte Reload
	movq	-256(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_65
.LBB5_2:                                # %if.end
	movabsq	$.L.str.58, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_progress_init_printf
	movb	$0, -160(%rbp)
	cmpl	$4, -92(%rbp)
	movl	%eax, -268(%rbp)        # 4-byte Spill
	jne	.LBB5_4
# BB#3:                                 # %if.then.16
	leaq	-212(%rbp), %rsi
	movl	-20(%rbp), %edi
	callq	gimp_image_get_colormap
	movl	$256, %edi              # imm = 0x100
	movl	$1, %ecx
	movl	$9, %edx
	movq	%rax, -224(%rbp)
	movb	$1, -159(%rbp)
	cmpl	$0, tsvals
	cmovnel	%edx, %ecx
	movb	%cl, %r8b
	movb	%r8b, -158(%rbp)
	movb	$0, -156(%rbp)
	movb	$0, -157(%rbp)
	movl	-212(%rbp), %eax
	cltd
	idivl	%edi
	movb	%dl, %r8b
	movb	%r8b, -155(%rbp)
	movl	-212(%rbp), %ecx
	movl	%ecx, %eax
	cltd
	idivl	%edi
	movb	%al, %r8b
	movb	%r8b, -154(%rbp)
	movb	$24, -153(%rbp)
	jmp	.LBB5_12
.LBB5_4:                                # %if.else
	cmpl	$5, -92(%rbp)
	jne	.LBB5_6
# BB#5:                                 # %if.then.29
	leaq	-212(%rbp), %rsi
	movl	-20(%rbp), %edi
	callq	gimp_image_get_colormap
	movl	$256, %edi              # imm = 0x100
	movl	$1, %ecx
	movl	$9, %edx
	movq	%rax, -224(%rbp)
	movb	$1, -159(%rbp)
	cmpl	$0, tsvals
	cmovnel	%edx, %ecx
	movb	%cl, %r8b
	movb	%r8b, -158(%rbp)
	movb	$0, -156(%rbp)
	movb	$0, -157(%rbp)
	movl	-212(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, %eax
	cltd
	idivl	%edi
	movb	%dl, %r8b
	movb	%r8b, -155(%rbp)
	movl	-212(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, %eax
	cltd
	idivl	%edi
	movb	%al, %r8b
	movb	%r8b, -154(%rbp)
	movb	$32, -153(%rbp)
	jmp	.LBB5_11
.LBB5_6:                                # %if.else.46
	movb	$0, -159(%rbp)
	cmpl	$0, -92(%rbp)
	je	.LBB5_8
# BB#7:                                 # %lor.lhs.false
	cmpl	$1, -92(%rbp)
	jne	.LBB5_9
.LBB5_8:                                # %if.then.52
	movl	$2, %eax
	movl	$10, %ecx
	cmpl	$0, tsvals
	cmovnel	%ecx, %eax
	movb	%al, %dl
	movb	%dl, -158(%rbp)
	jmp	.LBB5_10
.LBB5_9:                                # %if.else.57
	movl	$3, %eax
	movl	$11, %ecx
	cmpl	$0, tsvals
	cmovnel	%ecx, %eax
	movb	%al, %dl
	movb	%dl, -158(%rbp)
.LBB5_10:                               # %if.end.62
	movb	$0, -153(%rbp)
	movb	$0, -154(%rbp)
	movb	$0, -155(%rbp)
	movb	$0, -156(%rbp)
	movb	$0, -157(%rbp)
.LBB5_11:                               # %if.end.68
	jmp	.LBB5_12
.LBB5_12:                               # %if.end.69
	movb	$0, -151(%rbp)
	movb	$0, -152(%rbp)
	cmpl	$0, tsvals+4
	je	.LBB5_14
# BB#13:                                # %cond.true
	xorl	%eax, %eax
	movl	%eax, -272(%rbp)        # 4-byte Spill
	jmp	.LBB5_15
.LBB5_14:                               # %cond.false
	movl	$256, %eax              # imm = 0x100
	movl	-100(%rbp), %ecx
	movl	%eax, -276(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-276(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%edx, -272(%rbp)        # 4-byte Spill
.LBB5_15:                               # %cond.end
	movl	-272(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movb	%cl, -150(%rbp)
	cmpl	$0, tsvals+4
	je	.LBB5_17
# BB#16:                                # %cond.true.78
	xorl	%eax, %eax
	movl	%eax, -280(%rbp)        # 4-byte Spill
	jmp	.LBB5_18
.LBB5_17:                               # %cond.false.79
	movl	$256, %eax              # imm = 0x100
	movl	-100(%rbp), %ecx
	movl	%eax, -284(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-284(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -280(%rbp)        # 4-byte Spill
.LBB5_18:                               # %cond.end.81
	movl	-280(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movb	%cl, -149(%rbp)
	movb	-96(%rbp), %cl
	movb	%cl, -148(%rbp)
	movl	-96(%rbp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	shrl	$24, %edx
	addl	%edx, %eax
	movb	%ah, %cl  # NOREX
	movb	%cl, -147(%rbp)  # NOREX
	movb	-100(%rbp), %cl
	movb	%cl, -146(%rbp)
	movl	-100(%rbp), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	shrl	$24, %edx
	addl	%edx, %eax
	movb	%ah, %cl  # NOREX
	movb	%cl, -145(%rbp)  # NOREX
	movl	-92(%rbp), %eax
	movl	%eax, %esi
	movq	%rsi, %rdi
	subq	$5, %rdi
	movq	%rsi, -296(%rbp)        # 8-byte Spill
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	ja	.LBB5_23
# BB#66:                                # %cond.end.81
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	.LJTI5_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB5_19:                               # %sw.bb
	movl	$32, %eax
	xorl	%ecx, %ecx
	movl	$1, -116(%rbp)
	movb	$8, -144(%rbp)
	cmpl	$0, tsvals+4
	cmovnel	%ecx, %eax
	movb	%al, %dl
	movb	%dl, -143(%rbp)
	jmp	.LBB5_23
.LBB5_20:                               # %sw.bb.102
	movl	$40, %eax
	movl	$8, %ecx
	movl	$2, -116(%rbp)
	movb	$16, -144(%rbp)
	cmpl	$0, tsvals+4
	cmovnel	%ecx, %eax
	movb	%al, %dl
	movb	%dl, -143(%rbp)
	jmp	.LBB5_23
.LBB5_21:                               # %sw.bb.108
	movl	$32, %eax
	xorl	%ecx, %ecx
	movl	$3, -116(%rbp)
	movb	$24, -144(%rbp)
	cmpl	$0, tsvals+4
	cmovnel	%ecx, %eax
	movb	%al, %dl
	movb	%dl, -143(%rbp)
	jmp	.LBB5_23
.LBB5_22:                               # %sw.bb.114
	movl	$40, %eax
	movl	$8, %ecx
	movl	$4, -116(%rbp)
	movb	$32, -144(%rbp)
	cmpl	$0, tsvals+4
	cmovnel	%ecx, %eax
	movb	%al, %dl
	movb	%dl, -143(%rbp)
.LBB5_23:                               # %sw.epilog
	movl	$18, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-160(%rbp), %rdi
	movq	-112(%rbp), %rcx
	callq	fwrite
	cmpl	$4, -92(%rbp)
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jne	.LBB5_29
# BB#24:                                # %if.then.123
	movl	$0, -124(%rbp)
.LBB5_25:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-124(%rbp), %eax
	cmpl	-212(%rbp), %eax
	jge	.LBB5_28
# BB#26:                                # %for.body
                                        #   in Loop: Header=BB5_25 Depth=1
	imull	$3, -124(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-224(%rbp), %rdx
	movzbl	(%rdx,%rcx), %edi
	movq	-112(%rbp), %rsi
	callq	fputc
	imull	$3, -124(%rbp), %edi
	addl	$1, %edi
	movslq	%edi, %rcx
	movq	-224(%rbp), %rdx
	movzbl	(%rdx,%rcx), %edi
	movq	-112(%rbp), %rsi
	movl	%eax, -316(%rbp)        # 4-byte Spill
	callq	fputc
	imull	$3, -124(%rbp), %edi
	addl	$0, %edi
	movslq	%edi, %rcx
	movq	-224(%rbp), %rdx
	movzbl	(%rdx,%rcx), %edi
	movq	-112(%rbp), %rsi
	movl	%eax, -320(%rbp)        # 4-byte Spill
	callq	fputc
	movl	%eax, -324(%rbp)        # 4-byte Spill
# BB#27:                                # %for.inc
                                        #   in Loop: Header=BB5_25 Depth=1
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB5_25
.LBB5_28:                               # %for.end
	jmp	.LBB5_36
.LBB5_29:                               # %if.else.142
	cmpl	$5, -92(%rbp)
	jne	.LBB5_35
# BB#30:                                # %if.then.145
	movl	$0, -124(%rbp)
.LBB5_31:                               # %for.cond.146
                                        # =>This Inner Loop Header: Depth=1
	movl	-124(%rbp), %eax
	cmpl	-212(%rbp), %eax
	jge	.LBB5_34
# BB#32:                                # %for.body.149
                                        #   in Loop: Header=BB5_31 Depth=1
	imull	$3, -124(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-224(%rbp), %rdx
	movzbl	(%rdx,%rcx), %edi
	movq	-112(%rbp), %rsi
	callq	fputc
	imull	$3, -124(%rbp), %edi
	addl	$1, %edi
	movslq	%edi, %rcx
	movq	-224(%rbp), %rdx
	movzbl	(%rdx,%rcx), %edi
	movq	-112(%rbp), %rsi
	movl	%eax, -328(%rbp)        # 4-byte Spill
	callq	fputc
	imull	$3, -124(%rbp), %edi
	addl	$0, %edi
	movslq	%edi, %rcx
	movq	-224(%rbp), %rdx
	movzbl	(%rdx,%rcx), %edi
	movq	-112(%rbp), %rsi
	movl	%eax, -332(%rbp)        # 4-byte Spill
	callq	fputc
	movl	$255, %edi
	movq	-112(%rbp), %rsi
	movl	%eax, -336(%rbp)        # 4-byte Spill
	callq	fputc
	movl	%eax, -340(%rbp)        # 4-byte Spill
# BB#33:                                # %for.inc.169
                                        #   in Loop: Header=BB5_31 Depth=1
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB5_31
.LBB5_34:                               # %for.end.171
	xorl	%edi, %edi
	movq	-112(%rbp), %rsi
	callq	fputc
	xorl	%edi, %edi
	movq	-112(%rbp), %rsi
	movl	%eax, -344(%rbp)        # 4-byte Spill
	callq	fputc
	xorl	%edi, %edi
	movq	-112(%rbp), %rsi
	movl	%eax, -348(%rbp)        # 4-byte Spill
	callq	fputc
	xorl	%edi, %edi
	movq	-112(%rbp), %rsi
	movl	%eax, -352(%rbp)        # 4-byte Spill
	callq	fputc
	movl	%eax, -356(%rbp)        # 4-byte Spill
.LBB5_35:                               # %if.end.176
	jmp	.LBB5_36
.LBB5_36:                               # %if.end.177
	movl	-96(%rbp), %eax
	movl	%eax, -360(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	movl	-360(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -364(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-364(%rbp), %esi        # 4-byte Reload
	divl	%esi
	addl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	leaq	-80(%rbp), %rdi
	xorl	%eax, %eax
	movq	-88(%rbp), %rsi
	movl	-96(%rbp), %r8d
	movl	-100(%rbp), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$1, %eax
	movl	%eax, %esi
	movl	-96(%rbp), %eax
	movq	-88(%rbp), %rdi
	imull	12(%rdi), %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -200(%rbp)
	movl	-96(%rbp), %ecx
	imull	-116(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movq	%rax, -208(%rbp)
	movl	$0, -128(%rbp)
.LBB5_37:                               # %for.cond.188
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_47 Depth 2
	movl	-128(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB5_64
# BB#38:                                # %for.body.191
                                        #   in Loop: Header=BB5_37 Depth=1
	cmpl	$0, tsvals+4
	je	.LBB5_40
# BB#39:                                # %if.then.193
                                        #   in Loop: Header=BB5_37 Depth=1
	leaq	-80(%rbp), %rdi
	xorl	%edx, %edx
	movq	-200(%rbp), %rsi
	movl	-100(%rbp), %eax
	movl	-128(%rbp), %ecx
	addl	$1, %ecx
	subl	%ecx, %eax
	movl	-96(%rbp), %r8d
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_get_row
	jmp	.LBB5_41
.LBB5_40:                               # %if.else.195
                                        #   in Loop: Header=BB5_37 Depth=1
	leaq	-80(%rbp), %rdi
	xorl	%edx, %edx
	movq	-200(%rbp), %rsi
	movl	-128(%rbp), %ecx
	movl	-96(%rbp), %r8d
	callq	gimp_pixel_rgn_get_row
.LBB5_41:                               # %if.end.196
                                        #   in Loop: Header=BB5_37 Depth=1
	cmpl	$0, -92(%rbp)
	jne	.LBB5_43
# BB#42:                                # %if.then.199
                                        #   in Loop: Header=BB5_37 Depth=1
	xorl	%r8d, %r8d
	movq	-208(%rbp), %rdi
	movq	-200(%rbp), %rsi
	movl	-96(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	12(%rax), %ecx
	callq	bgr2rgb
	jmp	.LBB5_57
.LBB5_43:                               # %if.else.201
                                        #   in Loop: Header=BB5_37 Depth=1
	cmpl	$1, -92(%rbp)
	jne	.LBB5_45
# BB#44:                                # %if.then.204
                                        #   in Loop: Header=BB5_37 Depth=1
	movl	$1, %r8d
	movq	-208(%rbp), %rdi
	movq	-200(%rbp), %rsi
	movl	-96(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	12(%rax), %ecx
	callq	bgr2rgb
	jmp	.LBB5_56
.LBB5_45:                               # %if.else.206
                                        #   in Loop: Header=BB5_37 Depth=1
	cmpl	$5, -92(%rbp)
	jne	.LBB5_54
# BB#46:                                # %if.then.209
                                        #   in Loop: Header=BB5_37 Depth=1
	movl	$0, -124(%rbp)
.LBB5_47:                               # %for.cond.210
                                        #   Parent Loop BB5_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-124(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jge	.LBB5_53
# BB#48:                                # %for.body.213
                                        #   in Loop: Header=BB5_47 Depth=2
	movl	-124(%rbp), %eax
	shll	$1, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-200(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$127, %eax
	jle	.LBB5_50
# BB#49:                                # %if.then.221
                                        #   in Loop: Header=BB5_47 Depth=2
	movl	-124(%rbp), %eax
	shll	$1, %eax
	movslq	%eax, %rcx
	movq	-200(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movslq	-124(%rbp), %rcx
	movq	-208(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	jmp	.LBB5_51
.LBB5_50:                               # %if.else.227
                                        #   in Loop: Header=BB5_47 Depth=2
	movl	-212(%rbp), %eax
	movb	%al, %cl
	movslq	-124(%rbp), %rdx
	movq	-208(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB5_51:                               # %if.end.231
                                        #   in Loop: Header=BB5_47 Depth=2
	jmp	.LBB5_52
.LBB5_52:                               # %for.inc.232
                                        #   in Loop: Header=BB5_47 Depth=2
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB5_47
.LBB5_53:                               # %for.end.234
                                        #   in Loop: Header=BB5_37 Depth=1
	jmp	.LBB5_55
.LBB5_54:                               # %if.else.235
                                        #   in Loop: Header=BB5_37 Depth=1
	movq	-208(%rbp), %rdi
	movq	-200(%rbp), %rsi
	movl	-96(%rbp), %eax
	movq	-88(%rbp), %rcx
	imull	12(%rcx), %eax
	movl	%eax, %eax
	movl	%eax, %edx
	callq	memcpy
.LBB5_55:                               # %if.end.239
                                        #   in Loop: Header=BB5_37 Depth=1
	jmp	.LBB5_56
.LBB5_56:                               # %if.end.240
                                        #   in Loop: Header=BB5_37 Depth=1
	jmp	.LBB5_57
.LBB5_57:                               # %if.end.241
                                        #   in Loop: Header=BB5_37 Depth=1
	cmpl	$0, tsvals
	je	.LBB5_59
# BB#58:                                # %if.then.243
                                        #   in Loop: Header=BB5_37 Depth=1
	movq	-112(%rbp), %rdi
	movq	-208(%rbp), %rsi
	movl	-96(%rbp), %edx
	movl	-116(%rbp), %ecx
	callq	rle_write
	jmp	.LBB5_60
.LBB5_59:                               # %if.else.244
                                        #   in Loop: Header=BB5_37 Depth=1
	movl	$1, %eax
	movl	%eax, %edx
	movq	-208(%rbp), %rdi
	movl	-96(%rbp), %eax
	imull	-116(%rbp), %eax
	movslq	%eax, %rsi
	movq	-112(%rbp), %rcx
	callq	fwrite
	movq	%rax, -376(%rbp)        # 8-byte Spill
.LBB5_60:                               # %if.end.248
                                        #   in Loop: Header=BB5_37 Depth=1
	movl	$16, %eax
	movl	-128(%rbp), %ecx
	movl	%eax, -380(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-380(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB5_62
# BB#61:                                # %if.then.252
                                        #   in Loop: Header=BB5_37 Depth=1
	cvtsi2sdl	-128(%rbp), %xmm0
	cvtsi2sdl	-100(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -384(%rbp)        # 4-byte Spill
.LBB5_62:                               # %if.end.257
                                        #   in Loop: Header=BB5_37 Depth=1
	jmp	.LBB5_63
.LBB5_63:                               # %for.inc.258
                                        #   in Loop: Header=BB5_37 Depth=1
	movl	-128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -128(%rbp)
	jmp	.LBB5_37
.LBB5_64:                               # %for.end.260
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-88(%rbp), %rdi
	movl	%eax, -388(%rbp)        # 4-byte Spill
	callq	gimp_drawable_detach
	movq	-208(%rbp), %rdi
	callq	g_free
	movq	-200(%rbp), %rdi
	callq	g_free
	movl	$26, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-192(%rbp), %rdi
	xorl	%eax, %eax
	movl	$8, %ecx
	movl	%ecx, %r8d
	movq	%rdi, %r9
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	%rsi, -408(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movq	%rdx, -416(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	callq	memset
	movq	magic, %rdx
	movq	%rdx, -184(%rbp)
	movq	magic+8, %rdx
	movq	%rdx, -176(%rbp)
	movw	magic+16, %r10w
	movw	%r10w, -168(%rbp)
	movq	-112(%rbp), %rcx
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	-408(%rbp), %rsi        # 8-byte Reload
	movq	-416(%rbp), %rdx        # 8-byte Reload
	callq	fwrite
	movq	-112(%rbp), %rdi
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	fclose
	movl	-120(%rbp), %r11d
	movl	%r11d, -4(%rbp)
	movl	%eax, -428(%rbp)        # 4-byte Spill
.LBB5_65:                               # %return
	movl	-4(%rbp), %eax
	addq	$448, %rsp              # imm = 0x1C0
	popq	%rbp
	retq
.Lfunc_end5:
	.size	save_image, .Lfunc_end5-save_image
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_21
	.quad	.LBB5_22
	.quad	.LBB5_19
	.quad	.LBB5_20
	.quad	.LBB5_19
	.quad	.LBB5_19

	.text
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

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4636737291354636288     # double 100
.LCPI7_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	ReadImage,@function
ReadImage:                              # @ReadImage
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$0, -124(%rbp)
	movl	$0, -128(%rbp)
	movl	$0, -148(%rbp)
	movq	$0, -160(%rbp)
	movq	$0, -168(%rbp)
	movq	$0, -176(%rbp)
	movq	-24(%rbp), %rdx
	movzbl	2(%rdx), %eax
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%eax, -180(%rbp)        # 4-byte Spill
	movl	%ecx, -184(%rbp)        # 4-byte Spill
	je	.LBB7_1
	jmp	.LBB7_76
.LBB7_76:                               # %entry
	movl	-180(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -188(%rbp)        # 4-byte Spill
	je	.LBB7_15
	jmp	.LBB7_77
.LBB7_77:                               # %entry
	movl	-180(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
	je	.LBB7_11
	jmp	.LBB7_19
.LBB7_1:                                # %sw.bb
	movl	$1, %eax
	movl	%eax, %esi
	movl	$8, %eax
	movq	-24(%rbp), %rcx
	movzbl	8(%rcx), %edx
	addl	$7, %edx
	movl	%eax, -196(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-196(%rbp), %edi        # 4-byte Reload
	idivl	%edi
	movl	%eax, -148(%rbp)
	movq	-24(%rbp), %rcx
	movzwl	6(%rcx), %eax
	imull	-148(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	g_malloc_n
	movq	%rax, -160(%rbp)
	movq	-24(%rbp), %rax
	movzbl	8(%rax), %r8d
	cmpl	$24, %r8d
	jle	.LBB7_3
# BB#2:                                 # %if.then
	movl	$1, %eax
	movl	%eax, %esi
	movl	$0, -128(%rbp)
	movl	$1, -124(%rbp)
	movq	-24(%rbp), %rcx
	movzwl	6(%rcx), %eax
	shll	$2, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -176(%rbp)
	jmp	.LBB7_10
.LBB7_3:                                # %if.else
	movq	-24(%rbp), %rax
	movzwl	4(%rax), %ecx
	movq	-24(%rbp), %rax
	movzwl	6(%rax), %edx
	addl	%edx, %ecx
	cmpl	$256, %ecx              # imm = 0x100
	jle	.LBB7_5
# BB#4:                                 # %if.then.18
	movl	$1, %eax
	movl	%eax, %esi
	movl	$0, -128(%rbp)
	movl	$0, -124(%rbp)
	movq	-24(%rbp), %rcx
	movzwl	6(%rcx), %eax
	imull	$3, %eax, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -176(%rbp)
	jmp	.LBB7_9
.LBB7_5:                                # %if.else.24
	movq	-24(%rbp), %rax
	movzbl	20(%rax), %ecx
	cmpl	$0, %ecx
	jle	.LBB7_7
# BB#6:                                 # %if.then.28
	movl	$1, %eax
	movl	%eax, %esi
	movl	$0, -128(%rbp)
	movl	$1, -124(%rbp)
	movq	-24(%rbp), %rcx
	movzwl	6(%rcx), %eax
	shll	$2, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -176(%rbp)
	jmp	.LBB7_8
.LBB7_7:                                # %if.else.34
	movl	$1, %eax
	movl	%eax, %esi
	movl	$2, -128(%rbp)
	movl	$4, -124(%rbp)
	movq	-24(%rbp), %rcx
	movzwl	6(%rcx), %eax
	imull	$3, %eax, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -168(%rbp)
.LBB7_8:                                # %if.end
	jmp	.LBB7_9
.LBB7_9:                                # %if.end.40
	jmp	.LBB7_10
.LBB7_10:                               # %if.end.41
	jmp	.LBB7_19
.LBB7_11:                               # %sw.bb.42
	movl	$1, -128(%rbp)
	movq	-24(%rbp), %rax
	cmpb	$0, 20(%rax)
	je	.LBB7_13
# BB#12:                                # %if.then.44
	movl	$3, -124(%rbp)
	jmp	.LBB7_14
.LBB7_13:                               # %if.else.45
	movl	$2, -124(%rbp)
.LBB7_14:                               # %if.end.46
	jmp	.LBB7_19
.LBB7_15:                               # %sw.bb.47
	movl	$0, -128(%rbp)
	movq	-24(%rbp), %rax
	cmpb	$0, 20(%rax)
	je	.LBB7_17
# BB#16:                                # %if.then.50
	movl	$1, -124(%rbp)
	jmp	.LBB7_18
.LBB7_17:                               # %if.else.51
	movl	$0, -124(%rbp)
.LBB7_18:                               # %if.end.52
	jmp	.LBB7_19
.LBB7_19:                               # %sw.epilog
	movq	-24(%rbp), %rax
	movzbl	2(%rax), %ecx
	cmpl	$1, %ecx
	jne	.LBB7_45
# BB#20:                                # %if.then.57
	cmpl	$4, -148(%rbp)
	ja	.LBB7_43
# BB#21:                                # %land.lhs.true
	movl	$1, %eax
	movl	%eax, %edx
	movq	-160(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movzwl	6(%rcx), %eax
	imull	-148(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	callq	fread
	cmpq	$1, %rax
	jne	.LBB7_43
# BB#22:                                # %if.then.67
	cmpq	$0, -176(%rbp)
	je	.LBB7_34
# BB#23:                                # %if.then.69
	movq	-24(%rbp), %rax
	movzbl	8(%rax), %ecx
	cmpl	$32, %ecx
	jne	.LBB7_25
# BB#24:                                # %if.then.74
	movl	$1, %r8d
	movq	-176(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movq	-24(%rbp), %rax
	movzwl	6(%rax), %edx
	movl	-148(%rbp), %ecx
	callq	bgr2rgb
	jmp	.LBB7_33
.LBB7_25:                               # %if.else.77
	movq	-24(%rbp), %rax
	movzbl	8(%rax), %ecx
	cmpl	$24, %ecx
	jne	.LBB7_27
# BB#26:                                # %if.then.82
	xorl	%r8d, %r8d
	movq	-176(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movq	-24(%rbp), %rax
	movzwl	6(%rax), %edx
	movl	-148(%rbp), %ecx
	callq	bgr2rgb
	jmp	.LBB7_32
.LBB7_27:                               # %if.else.85
	movq	-24(%rbp), %rax
	movzbl	8(%rax), %ecx
	cmpl	$16, %ecx
	je	.LBB7_29
# BB#28:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movzbl	8(%rax), %ecx
	cmpl	$15, %ecx
	jne	.LBB7_30
.LBB7_29:                               # %if.then.94
	movq	-176(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movq	-24(%rbp), %rax
	movzwl	6(%rax), %edx
	movl	-148(%rbp), %ecx
	movq	-24(%rbp), %rax
	movzbl	20(%rax), %r8d
	callq	upsample
	jmp	.LBB7_31
.LBB7_30:                               # %if.else.99
	movabsq	$.L.str.47, %rdi
	movq	-24(%rbp), %rax
	movzbl	8(%rax), %esi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB7_75
.LBB7_31:                               # %if.end.102
	jmp	.LBB7_32
.LBB7_32:                               # %if.end.103
	jmp	.LBB7_33
.LBB7_33:                               # %if.end.104
	jmp	.LBB7_42
.LBB7_34:                               # %if.else.105
	movq	-24(%rbp), %rax
	movzbl	8(%rax), %ecx
	cmpl	$24, %ecx
	jne	.LBB7_36
# BB#35:                                # %if.then.110
	xorl	%r8d, %r8d
	movq	-168(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movq	-24(%rbp), %rax
	movzwl	6(%rax), %edx
	movl	-148(%rbp), %ecx
	callq	bgr2rgb
	jmp	.LBB7_41
.LBB7_36:                               # %if.else.113
	movq	-24(%rbp), %rax
	movzbl	8(%rax), %ecx
	cmpl	$16, %ecx
	je	.LBB7_38
# BB#37:                                # %lor.lhs.false.118
	movq	-24(%rbp), %rax
	movzbl	8(%rax), %ecx
	cmpl	$15, %ecx
	jne	.LBB7_39
.LBB7_38:                               # %if.then.123
	movq	-168(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movq	-24(%rbp), %rax
	movzwl	6(%rax), %edx
	movl	-148(%rbp), %ecx
	movq	-24(%rbp), %rax
	movzbl	20(%rax), %r8d
	callq	upsample
	jmp	.LBB7_40
.LBB7_39:                               # %if.else.128
	movabsq	$.L.str.47, %rdi
	movq	-24(%rbp), %rax
	movzbl	8(%rax), %esi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB7_75
.LBB7_40:                               # %if.end.131
	jmp	.LBB7_41
.LBB7_41:                               # %if.end.132
	jmp	.LBB7_42
.LBB7_42:                               # %if.end.133
	jmp	.LBB7_44
.LBB7_43:                               # %if.else.134
	movq	-32(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.46, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB7_75
.LBB7_44:                               # %if.end.136
	jmp	.LBB7_45
.LBB7_45:                               # %if.end.137
	movq	-24(%rbp), %rax
	movzwl	14(%rax), %edi
	movq	-24(%rbp), %rax
	movzwl	16(%rax), %esi
	movl	-128(%rbp), %edx
	callq	gimp_image_new
	movl	%eax, ReadImage.image_ID
	movl	ReadImage.image_ID, %edi
	movq	-32(%rbp), %rsi
	callq	gimp_image_set_filename
	cmpq	$0, -168(%rbp)
	movl	%eax, -200(%rbp)        # 4-byte Spill
	je	.LBB7_47
# BB#46:                                # %if.then.143
	movl	ReadImage.image_ID, %edi
	movq	-168(%rbp), %rsi
	movq	-24(%rbp), %rax
	movzwl	6(%rax), %edx
	callq	gimp_image_set_colormap
	movl	%eax, -204(%rbp)        # 4-byte Spill
.LBB7_47:                               # %if.end.147
	movabsq	$.L.str.48, %rdi
	movl	ReadImage.image_ID, %eax
	movl	%eax, -208(%rbp)        # 4-byte Spill
	callq	gettext
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movzwl	14(%rdi), %edx
	movq	-24(%rbp), %rdi
	movzwl	16(%rdi), %ecx
	movl	-124(%rbp), %r8d
	movl	-208(%rbp), %edi        # 4-byte Reload
	movq	%rax, %rsi
	callq	gimp_layer_new
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movl	%eax, -36(%rbp)
	movl	ReadImage.image_ID, %edi
	movl	-36(%rbp), %esi
	callq	gimp_image_insert_layer
	movl	-36(%rbp), %edi
	movl	%eax, -212(%rbp)        # 4-byte Spill
	callq	gimp_drawable_get
	leaq	-88(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rsi
	movq	-24(%rbp), %rax
	movzwl	14(%rax), %r8d
	movq	-24(%rbp), %rax
	movzwl	16(%rax), %r9d
	movl	%edx, -216(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	callq	gimp_tile_height
	movl	$1, %ecx
	movl	%ecx, %esi
	movl	%eax, -140(%rbp)
	movq	-24(%rbp), %rdi
	movzwl	14(%rdi), %eax
	imull	-140(%rbp), %eax
	movq	-96(%rbp), %rdi
	imull	12(%rdi), %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -104(%rbp)
	movq	-24(%rbp), %rax
	movzwl	14(%rax), %ecx
	movq	-24(%rbp), %rax
	movzbl	19(%rax), %edx
	imull	%edx, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movq	%rax, -112(%rbp)
	movq	-24(%rbp), %rax
	cmpb	$0, 22(%rax)
	je	.LBB7_62
# BB#48:                                # %if.then.174
	movl	$0, -132(%rbp)
.LBB7_49:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_56 Depth 2
	movl	-132(%rbp), %eax
	movq	-24(%rbp), %rcx
	movzwl	16(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB7_61
# BB#50:                                # %for.body
                                        #   in Loop: Header=BB7_49 Depth=1
	cmpl	$0, -132(%rbp)
	je	.LBB7_52
# BB#51:                                # %cond.true
                                        #   in Loop: Header=BB7_49 Depth=1
	movl	-140(%rbp), %eax
	movl	%eax, -220(%rbp)        # 4-byte Spill
	jmp	.LBB7_53
.LBB7_52:                               # %cond.false
                                        #   in Loop: Header=BB7_49 Depth=1
	movq	-24(%rbp), %rax
	movzwl	16(%rax), %eax
	cltd
	idivl	-140(%rbp)
	movl	%edx, -220(%rbp)        # 4-byte Spill
.LBB7_53:                               # %cond.end
                                        #   in Loop: Header=BB7_49 Depth=1
	movl	-220(%rbp), %eax        # 4-byte Reload
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	jne	.LBB7_55
# BB#54:                                # %if.then.184
                                        #   in Loop: Header=BB7_49 Depth=1
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
.LBB7_55:                               # %if.end.185
                                        #   in Loop: Header=BB7_49 Depth=1
	movl	$1, -136(%rbp)
.LBB7_56:                               # %for.cond.186
                                        #   Parent Loop BB7_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-136(%rbp), %eax
	cmpl	-144(%rbp), %eax
	jg	.LBB7_59
# BB#57:                                # %for.body.189
                                        #   in Loop: Header=BB7_56 Depth=2
	movq	-104(%rbp), %rax
	movq	-24(%rbp), %rcx
	movzwl	14(%rcx), %edx
	movq	-96(%rbp), %rcx
	imull	12(%rcx), %edx
	movl	-144(%rbp), %esi
	subl	-136(%rbp), %esi
	imull	%esi, %edx
	movl	%edx, %edx
	movl	%edx, %ecx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
	movq	-16(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movq	-112(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-96(%rbp), %r8
	movq	-176(%rbp), %r9
	callq	read_line
# BB#58:                                # %for.inc
                                        #   in Loop: Header=BB7_56 Depth=2
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	jmp	.LBB7_56
.LBB7_59:                               # %for.end
                                        #   in Loop: Header=BB7_49 Depth=1
	movl	-132(%rbp), %eax
	movl	-144(%rbp), %ecx
	addl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm0
	movq	-24(%rbp), %rdx
	movzwl	16(%rdx), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	leaq	-88(%rbp), %rdi
	xorl	%edx, %edx
	movq	-104(%rbp), %rsi
	movq	-24(%rbp), %r8
	movzwl	16(%r8), %ecx
	subl	-132(%rbp), %ecx
	subl	-144(%rbp), %ecx
	movq	-24(%rbp), %r8
	movzwl	14(%r8), %r8d
	movl	-144(%rbp), %r9d
	movl	%eax, -224(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_set_rect
# BB#60:                                # %for.inc.207
                                        #   in Loop: Header=BB7_49 Depth=1
	movl	-144(%rbp), %eax
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB7_49
.LBB7_61:                               # %for.end.209
	jmp	.LBB7_74
.LBB7_62:                               # %if.else.210
	movl	$0, -132(%rbp)
.LBB7_63:                               # %for.cond.211
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_68 Depth 2
	movl	-132(%rbp), %eax
	movq	-24(%rbp), %rcx
	movzwl	16(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB7_73
# BB#64:                                # %for.body.216
                                        #   in Loop: Header=BB7_63 Depth=1
	movl	-140(%rbp), %eax
	movq	-24(%rbp), %rcx
	movzwl	16(%rcx), %edx
	subl	-132(%rbp), %edx
	cmpl	%edx, %eax
	jge	.LBB7_66
# BB#65:                                # %cond.true.222
                                        #   in Loop: Header=BB7_63 Depth=1
	movl	-140(%rbp), %eax
	movl	%eax, -228(%rbp)        # 4-byte Spill
	jmp	.LBB7_67
.LBB7_66:                               # %cond.false.223
                                        #   in Loop: Header=BB7_63 Depth=1
	movq	-24(%rbp), %rax
	movzwl	16(%rax), %ecx
	subl	-132(%rbp), %ecx
	movl	%ecx, -228(%rbp)        # 4-byte Spill
.LBB7_67:                               # %cond.end.227
                                        #   in Loop: Header=BB7_63 Depth=1
	movl	-228(%rbp), %eax        # 4-byte Reload
	movl	%eax, -144(%rbp)
	movl	$0, -136(%rbp)
.LBB7_68:                               # %for.cond.229
                                        #   Parent Loop BB7_63 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-136(%rbp), %eax
	cmpl	-144(%rbp), %eax
	jge	.LBB7_71
# BB#69:                                # %for.body.232
                                        #   in Loop: Header=BB7_68 Depth=2
	movq	-104(%rbp), %rax
	movq	-24(%rbp), %rcx
	movzwl	14(%rcx), %edx
	movq	-96(%rbp), %rcx
	imull	12(%rcx), %edx
	imull	-136(%rbp), %edx
	movl	%edx, %edx
	movl	%edx, %ecx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
	movq	-16(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movq	-112(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	-96(%rbp), %r8
	movq	-176(%rbp), %r9
	callq	read_line
# BB#70:                                # %for.inc.240
                                        #   in Loop: Header=BB7_68 Depth=2
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	jmp	.LBB7_68
.LBB7_71:                               # %for.end.242
                                        #   in Loop: Header=BB7_63 Depth=1
	movl	-132(%rbp), %eax
	movl	-144(%rbp), %ecx
	addl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm0
	movq	-24(%rbp), %rdx
	movzwl	16(%rdx), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	leaq	-88(%rbp), %rdi
	xorl	%edx, %edx
	movq	-104(%rbp), %rsi
	movl	-132(%rbp), %ecx
	movq	-24(%rbp), %r8
	movzwl	14(%r8), %r8d
	movl	-144(%rbp), %r9d
	movl	%eax, -232(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_set_rect
# BB#72:                                # %for.inc.251
                                        #   in Loop: Header=BB7_63 Depth=1
	movl	-140(%rbp), %eax
	addl	-132(%rbp), %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB7_63
.LBB7_73:                               # %for.end.253
	jmp	.LBB7_74
.LBB7_74:                               # %if.end.254
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-104(%rbp), %rdi
	movl	%eax, -236(%rbp)        # 4-byte Spill
	callq	g_free
	movq	-112(%rbp), %rdi
	callq	g_free
	movq	-176(%rbp), %rdi
	callq	g_free
	movq	-168(%rbp), %rdi
	callq	g_free
	movq	-160(%rbp), %rdi
	callq	g_free
	movq	-96(%rbp), %rdi
	callq	gimp_drawable_flush
	movq	-96(%rbp), %rdi
	callq	gimp_drawable_detach
	movl	ReadImage.image_ID, %eax
	movl	%eax, -4(%rbp)
.LBB7_75:                               # %return
	movl	-4(%rbp), %eax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end7:
	.size	ReadImage, .Lfunc_end7-ReadImage
	.cfi_endproc

	.align	16, 0x90
	.type	bgr2rgb,@function
bgr2rgb:                                # @bgr2rgb
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB8_6
# BB#1:                                 # %if.then
	movl	$0, -32(%rbp)
.LBB8_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jae	.LBB8_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	-16(%rbp), %rax
	movb	2(%rax), %cl
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -8(%rbp)
	movb	%cl, (%rax)
	movq	-16(%rbp), %rax
	movb	1(%rax), %cl
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -8(%rbp)
	movb	%cl, (%rax)
	movq	-16(%rbp), %rax
	movb	(%rax), %cl
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -8(%rbp)
	movb	%cl, (%rax)
	movq	-16(%rbp), %rax
	movb	3(%rax), %cl
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -8(%rbp)
	movb	%cl, (%rax)
	movl	-24(%rbp), %esi
	movq	-16(%rbp), %rax
	movl	%esi, %esi
	movl	%esi, %edx
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB8_2
.LBB8_5:                                # %for.end
	jmp	.LBB8_11
.LBB8_6:                                # %if.else
	movl	$0, -32(%rbp)
.LBB8_7:                                # %for.cond.7
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jae	.LBB8_10
# BB#8:                                 # %for.body.9
                                        #   in Loop: Header=BB8_7 Depth=1
	movq	-16(%rbp), %rax
	movb	2(%rax), %cl
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -8(%rbp)
	movb	%cl, (%rax)
	movq	-16(%rbp), %rax
	movb	1(%rax), %cl
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -8(%rbp)
	movb	%cl, (%rax)
	movq	-16(%rbp), %rax
	movb	(%rax), %cl
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -8(%rbp)
	movb	%cl, (%rax)
	movl	-24(%rbp), %esi
	movq	-16(%rbp), %rax
	movl	%esi, %esi
	movl	%esi, %edx
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
# BB#9:                                 # %for.inc.18
                                        #   in Loop: Header=BB8_7 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB8_7
.LBB8_10:                               # %for.end.20
	jmp	.LBB8_11
.LBB8_11:                               # %if.end
	popq	%rbp
	retq
.Lfunc_end8:
	.size	bgr2rgb, .Lfunc_end8-bgr2rgb
	.cfi_endproc

	.align	16, 0x90
	.type	upsample,@function
upsample:                               # @upsample
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	$0, -32(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jae	.LBB9_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %ecx
	shll	$1, %ecx
	andl	$248, %ecx
	movb	%cl, %dl
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	sarl	$5, %ecx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %esi
	addl	%ecx, %esi
	movb	%sil, %dl
	movb	%dl, (%rax)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	andl	$224, %ecx
	sarl	$2, %ecx
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %esi
	andl	$3, %esi
	shll	$6, %esi
	addl	%esi, %ecx
	movb	%cl, %dl
	movq	-8(%rbp), %rax
	movb	%dl, 1(%rax)
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %ecx
	sarl	$5, %ecx
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %esi
	addl	%ecx, %esi
	movb	%sil, %dl
	movb	%dl, 1(%rax)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	shll	$3, %ecx
	andl	$248, %ecx
	movb	%cl, %dl
	movq	-8(%rbp), %rax
	movb	%dl, 2(%rax)
	movq	-8(%rbp), %rax
	movzbl	2(%rax), %ecx
	sarl	$5, %ecx
	movq	-8(%rbp), %rax
	movzbl	2(%rax), %esi
	addl	%ecx, %esi
	movb	%sil, %dl
	movb	%dl, 2(%rax)
	cmpl	$0, -28(%rbp)
	je	.LBB9_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB9_1 Depth=1
	xorl	%eax, %eax
	movl	$255, %ecx
	movq	-16(%rbp), %rdx
	movzbl	1(%rdx), %esi
	andl	$128, %esi
	cmpl	$0, %esi
	cmovnel	%ecx, %eax
	movb	%al, %dil
	movq	-8(%rbp), %rdx
	movb	%dil, 3(%rdx)
	movq	-8(%rbp), %rdx
	addq	$4, %rdx
	movq	%rdx, -8(%rbp)
	jmp	.LBB9_5
.LBB9_4:                                # %if.else
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -8(%rbp)
.LBB9_5:                                # %if.end
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB9_1
.LBB9_7:                                # %for.end
	popq	%rbp
	retq
.Lfunc_end9:
	.size	upsample, .Lfunc_end9-upsample
	.cfi_endproc

	.align	16, 0x90
	.type	read_line,@function
read_line:                              # @read_line
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-32(%rbp), %rcx
	movzbl	3(%rcx), %eax
	cmpl	$1, %eax
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	rle_read
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB10_3
.LBB10_2:                               # %if.else
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movzbl	19(%rax), %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rax
	movzwl	14(%rax), %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rcx
	callq	fread
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB10_3:                               # %if.end
	movq	-32(%rbp), %rax
	cmpb	$0, 21(%rax)
	je	.LBB10_5
# BB#4:                                 # %if.then.5
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	flip_line
.LBB10_5:                               # %if.end.6
	movq	-32(%rbp), %rax
	movzbl	2(%rax), %ecx
	cmpl	$2, %ecx
	jne	.LBB10_11
# BB#6:                                 # %if.then.10
	movq	-32(%rbp), %rax
	movzbl	18(%rax), %ecx
	cmpl	$16, %ecx
	je	.LBB10_8
# BB#7:                                 # %lor.lhs.false
	movq	-32(%rbp), %rax
	movzbl	18(%rax), %ecx
	cmpl	$15, %ecx
	jne	.LBB10_9
.LBB10_8:                               # %if.then.18
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	movzwl	14(%rax), %edx
	movq	-32(%rbp), %rax
	movzbl	19(%rax), %ecx
	movq	-32(%rbp), %rax
	movzbl	20(%rax), %r8d
	callq	upsample
	jmp	.LBB10_10
.LBB10_9:                               # %if.else.24
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	movzwl	14(%rax), %edx
	movq	-32(%rbp), %rax
	movzbl	19(%rax), %ecx
	movq	-32(%rbp), %rax
	movzbl	20(%rax), %r8d
	callq	bgr2rgb
.LBB10_10:                              # %if.end.31
	jmp	.LBB10_23
.LBB10_11:                              # %if.else.32
	cmpq	$0, -48(%rbp)
	je	.LBB10_13
# BB#12:                                # %if.then.34
	movq	-32(%rbp), %rax
	movzbl	20(%rax), %ecx
	cmpl	$0, %ecx
	setg	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movl	%ecx, -52(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	movzwl	14(%rax), %edx
	movq	-48(%rbp), %rcx
	movl	-52(%rbp), %r8d
	movq	-32(%rbp), %rax
	movzwl	4(%rax), %r9d
	callq	apply_colormap
	jmp	.LBB10_22
.LBB10_13:                              # %if.else.41
	movq	-32(%rbp), %rax
	movzbl	2(%rax), %ecx
	cmpl	$1, %ecx
	jne	.LBB10_20
# BB#14:                                # %if.then.46
	jmp	.LBB10_15
.LBB10_15:                              # %do.body
	movq	-40(%rbp), %rax
	cmpl	$1, 12(%rax)
	jne	.LBB10_17
# BB#16:                                # %if.then.50
	jmp	.LBB10_18
.LBB10_17:                              # %if.else.51
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.49, %rsi
	movl	$953, %edx              # imm = 0x3B9
	movabsq	$.L__func__.read_line, %rcx
	movabsq	$.L.str.50, %r8
	callq	g_assertion_message_expr
.LBB10_18:                              # %if.end.52
	jmp	.LBB10_19
.LBB10_19:                              # %do.end
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	movzwl	14(%rax), %edx
	movq	-32(%rbp), %rax
	movzwl	4(%rax), %ecx
	callq	apply_index
	jmp	.LBB10_21
.LBB10_20:                              # %if.else.56
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rax
	movzwl	14(%rax), %ecx
	movq	-40(%rbp), %rax
	imull	12(%rax), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	callq	memcpy
.LBB10_21:                              # %if.end.61
	jmp	.LBB10_22
.LBB10_22:                              # %if.end.62
	jmp	.LBB10_23
.LBB10_23:                              # %if.end.63
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	read_line, .Lfunc_end10-read_line
	.cfi_endproc

	.align	16, 0x90
	.type	rle_read,@function
rle_read:                               # @rle_read
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$0, -40(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_15 Depth 2
	movl	-40(%rbp), %eax
	movq	-32(%rbp), %rcx
	movzwl	14(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB11_24
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$0, rle_read.repeat
	jne	.LBB11_13
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$0, rle_read.direct
	jne	.LBB11_13
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -36(%rbp)
	cmpl	$-1, -36(%rbp)
	jne	.LBB11_6
# BB#5:                                 # %if.then.8
	movl	$-1, -4(%rbp)
	jmp	.LBB11_25
.LBB11_6:                               # %if.else
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$128, -36(%rbp)
	jl	.LBB11_10
# BB#7:                                 # %if.then.11
                                        #   in Loop: Header=BB11_1 Depth=1
	movabsq	$rle_read.sample, %rdi
	movl	$1, %eax
	movl	%eax, %edx
	movl	-36(%rbp), %eax
	subl	$127, %eax
	movl	%eax, rle_read.repeat
	movq	-32(%rbp), %rcx
	movzbl	19(%rcx), %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	callq	fread
	cmpq	$1, %rax
	jae	.LBB11_9
# BB#8:                                 # %if.then.16
	movl	$-1, -4(%rbp)
	jmp	.LBB11_25
.LBB11_9:                               # %if.end
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.17
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, rle_read.direct
.LBB11_11:                              # %if.end.18
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_12
.LBB11_12:                              # %if.end.19
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_13
.LBB11_13:                              # %if.end.20
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$0, rle_read.repeat
	jle	.LBB11_19
# BB#14:                                # %if.then.23
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	$0, -44(%rbp)
.LBB11_15:                              # %for.cond.24
                                        #   Parent Loop BB11_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	movzbl	19(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB11_18
# BB#16:                                # %for.body.29
                                        #   in Loop: Header=BB11_15 Depth=2
	movslq	-44(%rbp), %rax
	movb	rle_read.sample(,%rax), %cl
	movslq	-44(%rbp), %rax
	movq	-24(%rbp), %rdx
	movb	%cl, (%rdx,%rax)
# BB#17:                                # %for.inc
                                        #   in Loop: Header=BB11_15 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB11_15
.LBB11_18:                              # %for.end
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	rle_read.repeat, %eax
	addl	$-1, %eax
	movl	%eax, rle_read.repeat
	jmp	.LBB11_22
.LBB11_19:                              # %if.else.32
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	$1, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movzbl	19(%rcx), %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	callq	fread
	cmpq	$1, %rax
	jae	.LBB11_21
# BB#20:                                # %if.then.38
	movl	$-1, -4(%rbp)
	jmp	.LBB11_25
.LBB11_21:                              # %if.end.39
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	rle_read.direct, %eax
	addl	$-1, %eax
	movl	%eax, rle_read.direct
.LBB11_22:                              # %if.end.41
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-32(%rbp), %rax
	movzbl	19(%rax), %ecx
	movq	-24(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
# BB#23:                                # %for.inc.44
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB11_1
.LBB11_24:                              # %for.end.46
	movl	$0, -4(%rbp)
.LBB11_25:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	rle_read, .Lfunc_end11-rle_read
	.cfi_endproc

	.align	16, 0x90
	.type	flip_line,@function
flip_line:                              # @flip_line
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movzbl	19(%rdi), %eax
	movq	-16(%rbp), %rdi
	movzwl	14(%rdi), %ecx
	subl	$1, %ecx
	imull	%ecx, %eax
	movslq	%eax, %rdi
	addq	%rdi, %rsi
	movq	%rsi, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_3 Depth 2
	movl	-36(%rbp), %eax
	shll	$1, %eax
	movq	-16(%rbp), %rcx
	movzwl	14(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB12_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	$0, -40(%rbp)
.LBB12_3:                               # %for.cond.6
                                        #   Parent Loop BB12_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	movq	-16(%rbp), %rcx
	movzbl	19(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB12_6
# BB#4:                                 # %for.body.11
                                        #   in Loop: Header=BB12_3 Depth=2
	movslq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, -17(%rbp)
	movslq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
	movb	-17(%rbp), %dl
	movslq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB12_3 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB12_3
.LBB12_6:                               # %for.end
                                        #   in Loop: Header=BB12_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movzbl	19(%rdx), %eax
	movq	-8(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -8(%rbp)
	movq	-16(%rbp), %rdx
	movzbl	19(%rdx), %eax
	movq	-32(%rbp), %rdx
	movslq	%eax, %rsi
	subq	%rsi, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -32(%rbp)
# BB#7:                                 # %for.inc.26
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB12_1
.LBB12_8:                               # %for.end.28
	popq	%rbp
	retq
.Lfunc_end12:
	.size	flip_line, .Lfunc_end12-flip_line
	.cfi_endproc

	.align	16, 0x90
	.type	apply_colormap,@function
apply_colormap:                         # @apply_colormap
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
	movw	%r9w, %ax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movw	%ax, -38(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB13_6
# BB#1:                                 # %if.then
	movl	$0, -44(%rbp)
.LBB13_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jae	.LBB13_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB13_2 Depth=1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movzwl	-38(%rbp), %edx
	subl	%edx, %ecx
	shll	$2, %ecx
	movslq	%ecx, %rax
	movq	-32(%rbp), %rsi
	movb	(%rsi,%rax), %dil
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -8(%rbp)
	movb	%dil, (%rax)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movzwl	-38(%rbp), %edx
	subl	%edx, %ecx
	shll	$2, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	movq	-32(%rbp), %rsi
	movb	(%rsi,%rax), %dil
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -8(%rbp)
	movb	%dil, (%rax)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movzwl	-38(%rbp), %edx
	subl	%edx, %ecx
	shll	$2, %ecx
	addl	$2, %ecx
	movslq	%ecx, %rax
	movq	-32(%rbp), %rsi
	movb	(%rsi,%rax), %dil
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -8(%rbp)
	movb	%dil, (%rax)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movzwl	-38(%rbp), %edx
	subl	%edx, %ecx
	shll	$2, %ecx
	addl	$3, %ecx
	movslq	%ecx, %rax
	movq	-32(%rbp), %rsi
	movb	(%rsi,%rax), %dil
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -8(%rbp)
	movb	%dil, (%rax)
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB13_2 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB13_2
.LBB13_5:                               # %for.end
	jmp	.LBB13_11
.LBB13_6:                               # %if.else
	movl	$0, -44(%rbp)
.LBB13_7:                               # %for.cond.26
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jae	.LBB13_10
# BB#8:                                 # %for.body.29
                                        #   in Loop: Header=BB13_7 Depth=1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movzwl	-38(%rbp), %edx
	subl	%edx, %ecx
	imull	$3, %ecx, %ecx
	movslq	%ecx, %rax
	movq	-32(%rbp), %rsi
	movb	(%rsi,%rax), %dil
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -8(%rbp)
	movb	%dil, (%rax)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movzwl	-38(%rbp), %edx
	subl	%edx, %ecx
	imull	$3, %ecx, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	movq	-32(%rbp), %rsi
	movb	(%rsi,%rax), %dil
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -8(%rbp)
	movb	%dil, (%rax)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movzwl	-38(%rbp), %edx
	subl	%edx, %ecx
	imull	$3, %ecx, %ecx
	addl	$2, %ecx
	movslq	%ecx, %rax
	movq	-32(%rbp), %rsi
	movb	(%rsi,%rax), %dil
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	addq	$1, %rsi
	movq	%rsi, -8(%rbp)
	movb	%dil, (%rax)
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
# BB#9:                                 # %for.inc.54
                                        #   in Loop: Header=BB13_7 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB13_7
.LBB13_10:                              # %for.end.56
	jmp	.LBB13_11
.LBB13_11:                              # %if.end
	popq	%rbp
	retq
.Lfunc_end13:
	.size	apply_colormap, .Lfunc_end13-apply_colormap
	.cfi_endproc

	.align	16, 0x90
	.type	apply_index,@function
apply_index:                            # @apply_index
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
	movw	%cx, %ax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movw	%ax, -22(%rbp)
	movl	$0, -28(%rbp)
.LBB14_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jae	.LBB14_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movzbl	(%rax), %edx
	movzwl	-22(%rbp), %esi
	subl	%esi, %edx
	movb	%dl, %dil
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	movb	%dil, (%rax)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB14_1
.LBB14_4:                               # %for.end
	popq	%rbp
	retq
.Lfunc_end14:
	.size	apply_index, .Lfunc_end14-apply_index
	.cfi_endproc

	.align	16, 0x90
	.type	rle_write,@function
rle_write:                              # @rle_write
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movl	$1, -44(%rbp)
.LBB15_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jae	.LBB15_18
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	-24(%rbp), %ecx
	movl	%ecx, %edx
	addq	%rdx, %rax
	movl	-24(%rbp), %ecx
	movl	%ecx, %edx
	movq	%rax, %rsi
	callq	memcmp
	cmpl	$0, %eax
	je	.LBB15_7
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB15_1 Depth=1
	cmpl	$0, -28(%rbp)
	je	.LBB15_5
# BB#4:                                 # %if.then.2
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$128, %eax
	movq	-8(%rbp), %rsi
	movl	%eax, %edi
	callq	_IO_putc
	movl	$1, %edi
	movl	%edi, %edx
	movq	-40(%rbp), %rdi
	movl	-24(%rbp), %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rcx
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	fwrite
	movq	-16(%rbp), %rcx
	movl	-24(%rbp), %r8d
	movl	%r8d, %edx
	addq	%rdx, %rcx
	movq	%rcx, -40(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB15_6
.LBB15_5:                               # %if.else
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
.LBB15_6:                               # %if.end
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_11
.LBB15_7:                               # %if.else.9
                                        #   in Loop: Header=BB15_1 Depth=1
	cmpl	$0, -32(%rbp)
	je	.LBB15_9
# BB#8:                                 # %if.then.11
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-32(%rbp), %eax
	subl	$1, %eax
	movq	-8(%rbp), %rsi
	movl	%eax, %edi
	callq	_IO_putc
	movq	-40(%rbp), %rdi
	movl	-24(%rbp), %ecx
	movl	%ecx, %esi
	movslq	-32(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	fwrite
	movq	-16(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movl	$0, -32(%rbp)
	movl	$1, -28(%rbp)
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB15_10
.LBB15_9:                               # %if.else.16
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
.LBB15_10:                              # %if.end.18
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_11
.LBB15_11:                              # %if.end.19
                                        #   in Loop: Header=BB15_1 Depth=1
	cmpl	$128, -28(%rbp)
	jne	.LBB15_13
# BB#12:                                # %if.then.22
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	$255, %edi
	movq	-8(%rbp), %rsi
	callq	_IO_putc
	movl	$1, %edi
	movl	%edi, %edx
	movq	-40(%rbp), %rdi
	movl	-24(%rbp), %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rcx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	fwrite
	movq	-16(%rbp), %rcx
	movl	-24(%rbp), %r8d
	movl	%r8d, %edx
	addq	%rdx, %rcx
	movq	%rcx, -40(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -28(%rbp)
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB15_16
.LBB15_13:                              # %if.else.28
                                        #   in Loop: Header=BB15_1 Depth=1
	cmpl	$128, -32(%rbp)
	jne	.LBB15_15
# BB#14:                                # %if.then.31
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	$127, %edi
	movq	-8(%rbp), %rsi
	callq	_IO_putc
	movq	-40(%rbp), %rdi
	movl	-24(%rbp), %ecx
	movl	%ecx, %esi
	movslq	-32(%rbp), %rdx
	movq	-8(%rbp), %rcx
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	fwrite
	movq	-16(%rbp), %rcx
	movl	-24(%rbp), %r8d
	movl	%r8d, %edx
	addq	%rdx, %rcx
	movq	%rcx, -40(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -28(%rbp)
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB15_15:                              # %if.end.38
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_16
.LBB15_16:                              # %if.end.39
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
# BB#17:                                # %for.inc
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB15_1
.LBB15_18:                              # %for.end
	cmpl	$0, -28(%rbp)
	jle	.LBB15_20
# BB#19:                                # %if.then.44
	movl	-28(%rbp), %eax
	addl	$128, %eax
	movq	-8(%rbp), %rsi
	movl	%eax, %edi
	callq	_IO_putc
	movl	$1, %edi
	movl	%edi, %edx
	movq	-40(%rbp), %rdi
	movl	-24(%rbp), %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rcx
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	fwrite
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB15_21
.LBB15_20:                              # %if.else.49
	movl	-32(%rbp), %edi
	movq	-8(%rbp), %rsi
	callq	_IO_putc
	movq	-40(%rbp), %rdi
	movl	-24(%rbp), %ecx
	movl	%ecx, %esi
	movl	-32(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-8(%rbp), %rcx
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	fwrite
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB15_21:                              # %if.end.55
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	rle_write, .Lfunc_end15-rle_write
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
	.quad	.L.str.5
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

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"The name entered"
	.size	.L.str.5, 17

	.type	query.load_return_vals,@object # @query.load_return_vals
	.section	.rodata,"a",@progbits
	.align	16
query.load_return_vals:
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.size	query.load_return_vals, 24

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"image"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Output image"
	.size	.L.str.7, 13

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
	.quad	.L.str.6
	.quad	.L.str.8
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.9
	.quad	.L.str.10
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.11
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.11
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.12
	.quad	.L.str.13
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.14
	.quad	.L.str.15
	.size	query.save_args, 168

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"Input image"
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"drawable"
	.size	.L.str.9, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Drawable to save"
	.size	.L.str.10, 17

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"The name of the file to save the image in"
	.size	.L.str.11, 42

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"rle"
	.size	.L.str.12, 4

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Use RLE compression"
	.size	.L.str.13, 20

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"origin"
	.size	.L.str.14, 7

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Image origin (0 = top-left, 1 = bottom-left)"
	.size	.L.str.15, 45

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"file-tga-load"
	.size	.L.str.16, 14

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Loads files of Targa file format"
	.size	.L.str.17, 33

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"FIXME: write help for tga_load"
	.size	.L.str.18, 31

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Raphael FRANCOIS, Gordon Matzigkeit"
	.size	.L.str.19, 36

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"1997,2000,2007"
	.size	.L.str.20, 15

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"TarGA image"
	.size	.L.str.21, 12

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"image/x-tga"
	.size	.L.str.22, 12

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"tga,vda,icb,vst"
	.size	.L.str.23, 16

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.zero	1
	.size	.L.str.24, 1

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"-18&,string,TRUEVISION-XFILE.,-1,byte,0"
	.size	.L.str.25, 40

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"file-tga-save"
	.size	.L.str.26, 14

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"saves files in the Targa file format"
	.size	.L.str.27, 37

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"FIXME: write help for tga_save"
	.size	.L.str.28, 31

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"1997,2000"
	.size	.L.str.29, 10

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"RGB*, GRAY*, INDEXED*"
	.size	.L.str.30, 22

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"tga"
	.size	.L.str.31, 4

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,80,16
	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.32, 20

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"UTF-8"
	.size	.L.str.33, 6

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"file-tga"
	.size	.L.str.34, 9

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"TGA"
	.size	.L.str.35, 4

	.type	tsvals,@object          # @tsvals
	.data
	.align	4
tsvals:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.size	tsvals, 8

	.type	.L.str.36,@object       # @.str.36
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.36:
	.asciz	"rb"
	.size	.L.str.36, 3

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Could not open '%s' for reading: %s"
	.size	.L.str.37, 36

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Opening '%s'"
	.size	.L.str.38, 13

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Cannot read footer from '%s'"
	.size	.L.str.39, 29

	.type	magic,@object           # @magic
	.data
	.align	16
magic:
	.asciz	"TRUEVISION-XFILE."
	.size	magic, 18

	.type	.L.str.40,@object       # @.str.40
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.40:
	.asciz	"Cannot read extension from '%s'"
	.size	.L.str.40, 32

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Cannot read header from '%s'"
	.size	.L.str.41, 29

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Unhandled sub-format in '%s' (type = %u, bpp = %u)"
	.size	.L.str.42, 51

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Unknown image type %u for '%s'"
	.size	.L.str.43, 31

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Indexed image has invalid color map type %u"
	.size	.L.str.44, 44

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Non-indexed image has invalid color map type %u"
	.size	.L.str.45, 48

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"File '%s' is truncated or corrupted"
	.size	.L.str.46, 36

	.type	ReadImage.image_ID,@object # @ReadImage.image_ID
	.local	ReadImage.image_ID
	.comm	ReadImage.image_ID,4,4
	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Unsupported colormap depth: %u"
	.size	.L.str.47, 31

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Background"
	.size	.L.str.48, 11

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"file-tga.c"
	.size	.L.str.49, 11

	.type	.L__func__.read_line,@object # @__func__.read_line
.L__func__.read_line:
	.asciz	"read_line"
	.size	.L__func__.read_line, 10

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"drawable->bpp == 1"
	.size	.L.str.50, 19

	.type	rle_read.repeat,@object # @rle_read.repeat
	.local	rle_read.repeat
	.comm	rle_read.repeat,4,4
	.type	rle_read.direct,@object # @rle_read.direct
	.local	rle_read.direct
	.comm	rle_read.direct,4,4
	.type	rle_read.sample,@object # @rle_read.sample
	.local	rle_read.sample
	.comm	rle_read.sample,4,1
	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"_RLE compression"
	.size	.L.str.51, 17

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"toggled"
	.size	.L.str.52, 8

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Or_igin:"
	.size	.L.str.53, 9

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Bottom left"
	.size	.L.str.54, 12

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Top left"
	.size	.L.str.55, 9

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"wb"
	.size	.L.str.56, 3

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Could not open '%s' for writing: %s"
	.size	.L.str.57, 36

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Saving '%s'"
	.size	.L.str.58, 12


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
