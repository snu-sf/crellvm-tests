	.text
	.file	"file-dicom.bc"
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
	subq	$120, %rsp
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
	movabsq	$.L.str.14, %rcx
	movabsq	$.L.str.15, %r8
	movabsq	$.L.str.16, %r9
	movabsq	$.L.str.17, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	movl	$1, %r10d
	movl	$3, %ebx
	movabsq	$query.load_args, %r14
	movabsq	$query.load_return_vals, %r15
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$1, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	%r15, 48(%rsp)
	movl	%r10d, -44(%rbp)        # 4-byte Spill
	movq	%r11, -56(%rbp)         # 8-byte Spill
	movl	%ebx, -60(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.11, %rdi
	movabsq	$.L.str.18, %rsi
	callq	gimp_register_file_handler_mime
	movabsq	$.L.str.11, %rdi
	movabsq	$.L.str.19, %rsi
	movabsq	$.L.str.20, %rdx
	movabsq	$.L.str.21, %rcx
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	gimp_register_magic_load_handler
	movabsq	$.L.str.22, %rdi
	movabsq	$.L.str.23, %rsi
	movabsq	$.L.str.24, %rdx
	movabsq	$.L.str.14, %rcx
	movabsq	$.L.str.15, %r8
	movabsq	$.L.str.16, %r9
	movabsq	$.L.str.25, %r11
	movabsq	$.L.str.26, %r14
	movl	$1, %r10d
	movl	$5, %ebx
	xorl	%r12d, %r12d
	movabsq	$query.save_args, %r15
	xorl	%r13d, %r13d
                                        # kill: R13<def> R13D<kill>
	movq	%r11, (%rsp)
	movq	%r14, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$5, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movq	%r13, -80(%rbp)         # 8-byte Spill
	movl	%r10d, -84(%rbp)        # 4-byte Spill
	movl	%r12d, -88(%rbp)        # 4-byte Spill
	movl	%ebx, -92(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.22, %rdi
	movabsq	$.L.str.18, %rsi
	callq	gimp_register_file_handler_mime
	movabsq	$.L.str.22, %rdi
	movabsq	$.L.str.19, %rsi
	movabsq	$.L.str.20, %rdx
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	gimp_register_save_handler
	movl	%eax, -100(%rbp)        # 4-byte Spill
	addq	$120, %rsp
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
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.27, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.27, %rdi
	movabsq	$.L.str.28, %rsi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.27, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -96(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movabsq	$run.values, %rax
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %edx
	movl	%edx, -44(%rbp)
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
	jne	.LBB1_9
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
	jmp	.LBB1_8
.LBB1_5:                                # %if.else
	movl	$0, -48(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB1_7
# BB#6:                                 # %if.then.10
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$4, run.values+40
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, run.values+48
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.11
	jmp	.LBB1_33
.LBB1_9:                                # %if.else.12
	movq	-8(%rbp), %rdi
	movl	$.L.str.22, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_31
# BB#10:                                # %if.then.15
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
	je	.LBB1_11
	jmp	.LBB1_14
.LBB1_11:                               # %sw.bb
	movabsq	$.L.str.29, %rdi
	xorl	%esi, %esi
	callq	gimp_ui_init
	leaq	-52(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	movabsq	$.L.str.30, %rdx
	movl	$3, %ecx
	callq	gimp_export_image
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jne	.LBB1_13
# BB#12:                                # %if.then.24
	movl	$4, run.values+8
	jmp	.LBB1_34
.LBB1_13:                               # %if.end.25
	jmp	.LBB1_15
.LBB1_14:                               # %sw.default
	jmp	.LBB1_15
.LBB1_15:                               # %sw.epilog
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB1_16
	jmp	.LBB1_35
.LBB1_35:                               # %sw.epilog
	movl	-104(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB1_17
	jmp	.LBB1_36
.LBB1_36:                               # %sw.epilog
	movl	-104(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB1_20
	jmp	.LBB1_21
.LBB1_16:                               # %sw.bb.26
	jmp	.LBB1_22
.LBB1_17:                               # %sw.bb.27
	cmpl	$5, -12(%rbp)
	je	.LBB1_19
# BB#18:                                # %if.then.29
	movl	$1, -48(%rbp)
.LBB1_19:                               # %if.end.30
	jmp	.LBB1_22
.LBB1_20:                               # %sw.bb.31
	jmp	.LBB1_22
.LBB1_21:                               # %sw.default.32
	jmp	.LBB1_22
.LBB1_22:                               # %sw.epilog.33
	cmpl	$3, -48(%rbp)
	jne	.LBB1_28
# BB#23:                                # %if.then.35
	leaq	-72(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edx
	callq	save_image
	cmpl	$0, %eax
	jne	.LBB1_27
# BB#24:                                # %if.then.41
	movl	$0, -48(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB1_26
# BB#25:                                # %if.then.43
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$4, run.values+40
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, run.values+48
.LBB1_26:                               # %if.end.45
	jmp	.LBB1_27
.LBB1_27:                               # %if.end.46
	jmp	.LBB1_28
.LBB1_28:                               # %if.end.47
	cmpl	$2, -60(%rbp)
	jne	.LBB1_30
# BB#29:                                # %if.then.49
	movl	-52(%rbp), %edi
	callq	gimp_image_delete
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB1_30:                               # %if.end.51
	jmp	.LBB1_32
.LBB1_31:                               # %if.else.52
	movl	$1, -48(%rbp)
.LBB1_32:                               # %if.end.53
	jmp	.LBB1_33
.LBB1_33:                               # %if.end.54
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
.LBB1_34:                               # %return
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
	.quad	4636737291354636288     # double 100
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
	pushq	%rbx
	subq	$1320, %rsp             # imm = 0x528
.Ltmp17:
	.cfi_offset %rbx, -24
	movabsq	$.L.str.31, %rax
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$-1, -84(%rbp)
	movq	$0, -104(%rbp)
	movl	$0, -636(%rbp)
	movl	$0, -640(%rbp)
	movl	$0, -644(%rbp)
	movl	$0, -648(%rbp)
	movl	$0, -652(%rbp)
	movl	$0, -656(%rbp)
	movq	$0, -664(%rbp)
	movl	$0, -668(%rbp)
	movb	$0, -669(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rax, %rsi
	callq	fopen
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	movq	%rdi, -1000(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -1004(%rbp)       # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.32, %rdi
	movl	%eax, -1008(%rbp)       # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -1016(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-1000(%rbp), %rdi       # 8-byte Reload
	movl	-1004(%rbp), %esi       # 4-byte Reload
	movl	-1008(%rbp), %edx       # 4-byte Reload
	movq	-1016(%rbp), %rcx       # 8-byte Reload
	movq	-1024(%rbp), %r8        # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -12(%rbp)
	jmp	.LBB3_79
.LBB3_2:                                # %if.end
	movabsq	$.L.str.33, %rdi
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -1032(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-1032(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_progress_init_printf
	movl	$1, %ecx
	movl	%ecx, %edi
	movl	$32, %ecx
	movl	%ecx, %esi
	movl	%eax, -1036(%rbp)       # 4-byte Spill
	callq	g_malloc0_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movl	$128, %ecx
	movl	%ecx, %edx
	leaq	-624(%rbp), %rdi
	movq	%rax, -632(%rbp)
	movq	-112(%rbp), %rcx
	callq	fread
	movabsq	$.L.str.34, %rsi
	movl	$7, %r8d
	movl	%r8d, %edx
	leaq	-624(%rbp), %rdi
	movq	%rax, -1048(%rbp)       # 8-byte Spill
	callq	g_ascii_strncasecmp
	cmpl	$0, %eax
	jne	.LBB3_4
# BB#3:                                 # %if.then.15
	movq	-24(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.35, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	movq	-632(%rbp), %rsi
	movq	%rsi, %rdi
	callq	g_free
	movq	-112(%rbp), %rdi
	callq	fclose
	movl	$-1, -12(%rbp)
	movl	%eax, -1052(%rbp)       # 4-byte Spill
	jmp	.LBB3_79
.LBB3_4:                                # %if.end.18
	movl	$1, %eax
	movl	%eax, %esi
	movl	$4, %eax
	movl	%eax, %edx
	leaq	-624(%rbp), %rdi
	movq	-112(%rbp), %rcx
	callq	fread
	movabsq	$.L.str.36, %rsi
	movl	$4, %r8d
	movl	%r8d, %edx
	leaq	-624(%rbp), %rdi
	movq	%rax, -1064(%rbp)       # 8-byte Spill
	callq	g_ascii_strncasecmp
	cmpl	$0, %eax
	je	.LBB3_6
# BB#5:                                 # %if.then.24
	movq	-32(%rbp), %rdi
	movq	%rdi, -1072(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.37, %rdi
	movl	%eax, -1076(%rbp)       # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -1088(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$24, %edx
	movq	-1072(%rbp), %rdi       # 8-byte Reload
	movl	-1076(%rbp), %esi       # 4-byte Reload
	movq	-1088(%rbp), %rcx       # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movq	-632(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_free
	movq	-112(%rbp), %rdi
	callq	fclose
	movl	$-1, -12(%rbp)
	movl	%eax, -1092(%rbp)       # 4-byte Spill
	jmp	.LBB3_79
.LBB3_6:                                # %if.end.29
	jmp	.LBB3_7
.LBB3_7:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-112(%rbp), %rdi
	callq	feof
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB3_8
	jmp	.LBB3_66
.LBB3_8:                                # %while.body
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movl	$2, %eax
	movl	%eax, %edx
	leaq	-672(%rbp), %rcx
	movl	$0, -704(%rbp)
	movl	$0, -708(%rbp)
	movq	-112(%rbp), %rdi
	movq	%rdi, -1104(%rbp)       # 8-byte Spill
	movq	%rcx, %rdi
	movq	-1104(%rbp), %rcx       # 8-byte Reload
	callq	fread
	cmpq	$0, %rax
	jne	.LBB3_10
# BB#9:                                 # %if.then.34
	jmp	.LBB3_66
.LBB3_10:                               # %if.end.35
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movl	$2, %eax
	movl	%eax, %edx
	leaq	-674(%rbp), %rcx
	movzwl	-672(%rbp), %eax
	sarl	$8, %eax
	movw	%ax, %di
	movzwl	%di, %eax
	movzwl	-672(%rbp), %r8d
	shll	$8, %r8d
	movw	%r8w, %di
	movzwl	%di, %r8d
	orl	%r8d, %eax
	movw	%ax, %di
	movzwl	%di, %eax
	sarl	$8, %eax
	movw	%ax, %di
	movzwl	%di, %eax
	movzwl	-672(%rbp), %r8d
	sarl	$8, %r8d
	movw	%r8w, %di
	movzwl	%di, %r8d
	movzwl	-672(%rbp), %r9d
	shll	$8, %r9d
	movw	%r9w, %di
	movzwl	%di, %r9d
	orl	%r9d, %r8d
	movw	%r8w, %di
	movzwl	%di, %r8d
	shll	$8, %r8d
	movw	%r8w, %di
	movzwl	%di, %r8d
	orl	%r8d, %eax
	movw	%ax, %di
	movw	%di, -672(%rbp)
	movq	-112(%rbp), %r10
	movq	%rcx, %rdi
	movq	%r10, %rcx
	callq	fread
	movl	$2, %r8d
	movl	%r8d, %esi
	movl	$1, %r8d
	movl	%r8d, %edx
	leaq	-677(%rbp), %rdi
	movzwl	-674(%rbp), %r8d
	sarl	$8, %r8d
	movw	%r8w, %r11w
	movzwl	%r11w, %r8d
	movzwl	-674(%rbp), %r9d
	shll	$8, %r9d
	movw	%r9w, %r11w
	movzwl	%r11w, %r9d
	orl	%r9d, %r8d
	movw	%r8w, %r11w
	movzwl	%r11w, %r8d
	sarl	$8, %r8d
	movw	%r8w, %r11w
	movzwl	%r11w, %r8d
	movzwl	-674(%rbp), %r9d
	sarl	$8, %r9d
	movw	%r9w, %r11w
	movzwl	%r11w, %r9d
	movzwl	-674(%rbp), %ebx
	shll	$8, %ebx
	movw	%bx, %r11w
	movzwl	%r11w, %ebx
	orl	%ebx, %r9d
	movw	%r9w, %r11w
	movzwl	%r11w, %r9d
	shll	$8, %r9d
	movw	%r9w, %r11w
	movzwl	%r11w, %r9d
	orl	%r9d, %r8d
	movw	%r8w, %r11w
	movw	%r11w, -674(%rbp)
	movzwl	-672(%rbp), %r8d
	shll	$16, %r8d
	movzwl	-674(%rbp), %r9d
	orl	%r9d, %r8d
	movl	%r8d, -700(%rbp)
	movq	-112(%rbp), %rcx
	movq	%rax, -1112(%rbp)       # 8-byte Spill
	callq	fread
	movb	$0, -675(%rbp)
	cmpl	$196607, -700(%rbp)     # imm = 0x2FFFF
	movq	%rax, -1120(%rbp)       # 8-byte Spill
	jbe	.LBB3_12
# BB#11:                                # %land.lhs.true
                                        #   in Loop: Header=BB3_7 Depth=1
	cmpl	$0, -708(%rbp)
	jne	.LBB3_18
.LBB3_12:                               # %lor.lhs.false
                                        #   in Loop: Header=BB3_7 Depth=1
	movsbl	-677(%rbp), %eax
	cmpl	$65, %eax
	jl	.LBB3_16
# BB#13:                                # %lor.lhs.false.106
                                        #   in Loop: Header=BB3_7 Depth=1
	movsbl	-677(%rbp), %eax
	cmpl	$90, %eax
	jg	.LBB3_16
# BB#14:                                # %lor.lhs.false.111
                                        #   in Loop: Header=BB3_7 Depth=1
	movsbl	-676(%rbp), %eax
	cmpl	$65, %eax
	jl	.LBB3_16
# BB#15:                                # %lor.lhs.false.116
                                        #   in Loop: Header=BB3_7 Depth=1
	movsbl	-676(%rbp), %eax
	cmpl	$90, %eax
	jle	.LBB3_19
.LBB3_16:                               # %land.lhs.true.121
                                        #   in Loop: Header=BB3_7 Depth=1
	movsbl	-677(%rbp), %eax
	cmpl	$32, %eax
	jne	.LBB3_18
# BB#17:                                # %land.lhs.true.126
                                        #   in Loop: Header=BB3_7 Depth=1
	movsbl	-676(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB3_19
.LBB3_18:                               # %if.then.130
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movl	$2, %eax
	movl	%eax, %edx
	leaq	-712(%rbp), %rcx
	leaq	-677(%rbp), %rdi
	movb	-677(%rbp), %r8b
	movb	%r8b, -712(%rbp)
	movb	-676(%rbp), %r8b
	movb	%r8b, -711(%rbp)
	movl	$.L.str.38, %eax
	movl	%eax, %r9d
	movq	%rsi, -1128(%rbp)       # 8-byte Spill
	movq	%r9, %rsi
	movq	%rcx, -1136(%rbp)       # 8-byte Spill
	movq	%rdx, -1144(%rbp)       # 8-byte Spill
	callq	strcpy
	movq	-1136(%rbp), %rcx       # 8-byte Reload
	addq	$2, %rcx
	movq	-112(%rbp), %rdx
	movq	%rcx, %rdi
	movq	-1128(%rbp), %rsi       # 8-byte Reload
	movq	-1144(%rbp), %rcx       # 8-byte Reload
	movq	%rdx, -1152(%rbp)       # 8-byte Spill
	movq	%rcx, %rdx
	movq	-1152(%rbp), %rcx       # 8-byte Reload
	movq	%rax, -1160(%rbp)       # 8-byte Spill
	callq	fread
	movl	-712(%rbp), %r10d
	andl	$255, %r10d
	shll	$24, %r10d
	movl	-712(%rbp), %r11d
	andl	$65280, %r11d           # imm = 0xFF00
	shll	$8, %r11d
	orl	%r11d, %r10d
	movl	-712(%rbp), %r11d
	andl	$16711680, %r11d        # imm = 0xFF0000
	shrl	$8, %r11d
	orl	%r11d, %r10d
	movl	-712(%rbp), %r11d
	andl	$-16777216, %r11d       # imm = 0xFFFFFFFFFF000000
	shrl	$24, %r11d
	orl	%r11d, %r10d
	andl	$255, %r10d
	shll	$24, %r10d
	movl	-712(%rbp), %r11d
	andl	$255, %r11d
	shll	$24, %r11d
	movl	-712(%rbp), %ebx
	andl	$65280, %ebx            # imm = 0xFF00
	shll	$8, %ebx
	orl	%ebx, %r11d
	movl	-712(%rbp), %ebx
	andl	$16711680, %ebx         # imm = 0xFF0000
	shrl	$8, %ebx
	orl	%ebx, %r11d
	movl	-712(%rbp), %ebx
	andl	$-16777216, %ebx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %ebx
	orl	%ebx, %r11d
	andl	$65280, %r11d           # imm = 0xFF00
	shll	$8, %r11d
	orl	%r11d, %r10d
	movl	-712(%rbp), %r11d
	andl	$255, %r11d
	shll	$24, %r11d
	movl	-712(%rbp), %ebx
	andl	$65280, %ebx            # imm = 0xFF00
	shll	$8, %ebx
	orl	%ebx, %r11d
	movl	-712(%rbp), %ebx
	andl	$16711680, %ebx         # imm = 0xFF0000
	shrl	$8, %ebx
	orl	%ebx, %r11d
	movl	-712(%rbp), %ebx
	andl	$-16777216, %ebx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %ebx
	orl	%ebx, %r11d
	andl	$16711680, %r11d        # imm = 0xFF0000
	shrl	$8, %r11d
	orl	%r11d, %r10d
	movl	-712(%rbp), %r11d
	andl	$255, %r11d
	shll	$24, %r11d
	movl	-712(%rbp), %ebx
	andl	$65280, %ebx            # imm = 0xFF00
	shll	$8, %ebx
	orl	%ebx, %r11d
	movl	-712(%rbp), %ebx
	andl	$16711680, %ebx         # imm = 0xFF0000
	shrl	$8, %ebx
	orl	%ebx, %r11d
	movl	-712(%rbp), %ebx
	andl	$-16777216, %ebx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %ebx
	orl	%ebx, %r11d
	andl	$-16777216, %r11d       # imm = 0xFFFFFFFFFF000000
	shrl	$24, %r11d
	orl	%r11d, %r10d
	movl	%r10d, -684(%rbp)
	movq	%rax, -1168(%rbp)       # 8-byte Spill
	jmp	.LBB3_26
.LBB3_19:                               # %if.else
                                        #   in Loop: Header=BB3_7 Depth=1
	movabsq	$.L.str.39, %rsi
	movl	$2, %eax
	movl	%eax, %edx
	leaq	-677(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	je	.LBB3_23
# BB#20:                                # %lor.lhs.false.213
                                        #   in Loop: Header=BB3_7 Depth=1
	movabsq	$.L.str.40, %rsi
	movl	$2, %eax
	movl	%eax, %edx
	leaq	-677(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	je	.LBB3_23
# BB#21:                                # %lor.lhs.false.218
                                        #   in Loop: Header=BB3_7 Depth=1
	movabsq	$.L.str.41, %rsi
	movl	$2, %eax
	movl	%eax, %edx
	leaq	-677(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	je	.LBB3_23
# BB#22:                                # %lor.lhs.false.223
                                        #   in Loop: Header=BB3_7 Depth=1
	movabsq	$.L.str.42, %rsi
	movl	$2, %eax
	movl	%eax, %edx
	leaq	-677(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB3_24
.LBB3_23:                               # %if.then.228
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movl	$2, %eax
	movl	%eax, %edx
	leaq	-684(%rbp), %rcx
	movq	-112(%rbp), %rdi
	movq	%rdi, -1176(%rbp)       # 8-byte Spill
	movq	%rcx, %rdi
	movq	-1176(%rbp), %rcx       # 8-byte Reload
	callq	fread
	movl	$1, %r8d
	movl	%r8d, %esi
	movl	$4, %r8d
	movl	%r8d, %edx
	leaq	-684(%rbp), %rcx
	movq	-112(%rbp), %rdi
	movq	%rdi, -1184(%rbp)       # 8-byte Spill
	movq	%rcx, %rdi
	movq	-1184(%rbp), %rcx       # 8-byte Reload
	movq	%rax, -1192(%rbp)       # 8-byte Spill
	callq	fread
	movl	-684(%rbp), %r8d
	andl	$255, %r8d
	shll	$24, %r8d
	movl	-684(%rbp), %r9d
	andl	$65280, %r9d            # imm = 0xFF00
	shll	$8, %r9d
	orl	%r9d, %r8d
	movl	-684(%rbp), %r9d
	andl	$16711680, %r9d         # imm = 0xFF0000
	shrl	$8, %r9d
	orl	%r9d, %r8d
	movl	-684(%rbp), %r9d
	andl	$-16777216, %r9d        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %r9d
	orl	%r9d, %r8d
	andl	$255, %r8d
	shll	$24, %r8d
	movl	-684(%rbp), %r9d
	andl	$255, %r9d
	shll	$24, %r9d
	movl	-684(%rbp), %r10d
	andl	$65280, %r10d           # imm = 0xFF00
	shll	$8, %r10d
	orl	%r10d, %r9d
	movl	-684(%rbp), %r10d
	andl	$16711680, %r10d        # imm = 0xFF0000
	shrl	$8, %r10d
	orl	%r10d, %r9d
	movl	-684(%rbp), %r10d
	andl	$-16777216, %r10d       # imm = 0xFFFFFFFFFF000000
	shrl	$24, %r10d
	orl	%r10d, %r9d
	andl	$65280, %r9d            # imm = 0xFF00
	shll	$8, %r9d
	orl	%r9d, %r8d
	movl	-684(%rbp), %r9d
	andl	$255, %r9d
	shll	$24, %r9d
	movl	-684(%rbp), %r10d
	andl	$65280, %r10d           # imm = 0xFF00
	shll	$8, %r10d
	orl	%r10d, %r9d
	movl	-684(%rbp), %r10d
	andl	$16711680, %r10d        # imm = 0xFF0000
	shrl	$8, %r10d
	orl	%r10d, %r9d
	movl	-684(%rbp), %r10d
	andl	$-16777216, %r10d       # imm = 0xFFFFFFFFFF000000
	shrl	$24, %r10d
	orl	%r10d, %r9d
	andl	$16711680, %r9d         # imm = 0xFF0000
	shrl	$8, %r9d
	orl	%r9d, %r8d
	movl	-684(%rbp), %r9d
	andl	$255, %r9d
	shll	$24, %r9d
	movl	-684(%rbp), %r10d
	andl	$65280, %r10d           # imm = 0xFF00
	shll	$8, %r10d
	orl	%r10d, %r9d
	movl	-684(%rbp), %r10d
	andl	$16711680, %r10d        # imm = 0xFF0000
	shrl	$8, %r10d
	orl	%r10d, %r9d
	movl	-684(%rbp), %r10d
	andl	$-16777216, %r10d       # imm = 0xFFFFFFFFFF000000
	shrl	$24, %r10d
	orl	%r10d, %r9d
	andl	$-16777216, %r9d        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %r9d
	orl	%r9d, %r8d
	movl	%r8d, -684(%rbp)
	movq	%rax, -1200(%rbp)       # 8-byte Spill
	jmp	.LBB3_25
.LBB3_24:                               # %if.else.286
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movl	$2, %eax
	movl	%eax, %edx
	leaq	-714(%rbp), %rcx
	movq	-112(%rbp), %rdi
	movq	%rdi, -1208(%rbp)       # 8-byte Spill
	movq	%rcx, %rdi
	movq	-1208(%rbp), %rcx       # 8-byte Reload
	callq	fread
	movzwl	-714(%rbp), %r8d
	sarl	$8, %r8d
	movw	%r8w, %r9w
	movzwl	%r9w, %r8d
	movzwl	-714(%rbp), %r10d
	shll	$8, %r10d
	movw	%r10w, %r9w
	movzwl	%r9w, %r10d
	orl	%r10d, %r8d
	movw	%r8w, %r9w
	movzwl	%r9w, %r8d
	sarl	$8, %r8d
	movw	%r8w, %r9w
	movzwl	%r9w, %r8d
	movzwl	-714(%rbp), %r10d
	sarl	$8, %r10d
	movw	%r10w, %r9w
	movzwl	%r9w, %r10d
	movzwl	-714(%rbp), %r11d
	shll	$8, %r11d
	movw	%r11w, %r9w
	movzwl	%r9w, %r11d
	orl	%r11d, %r10d
	movw	%r10w, %r9w
	movzwl	%r9w, %r10d
	shll	$8, %r10d
	movw	%r10w, %r9w
	movzwl	%r9w, %r10d
	orl	%r10d, %r8d
	movw	%r8w, %r9w
	movzwl	%r9w, %r8d
	movl	%r8d, -684(%rbp)
	movq	%rax, -1216(%rbp)       # 8-byte Spill
.LBB3_25:                               # %if.end.319
                                        #   in Loop: Header=BB3_7 Depth=1
	jmp	.LBB3_26
.LBB3_26:                               # %if.end.320
                                        #   in Loop: Header=BB3_7 Depth=1
	cmpl	$-1, -684(%rbp)
	jne	.LBB3_28
# BB#27:                                # %if.then.323
                                        #   in Loop: Header=BB3_7 Depth=1
	movb	$1, -669(%rbp)
	jmp	.LBB3_7
.LBB3_28:                               # %if.end.324
                                        #   in Loop: Header=BB3_7 Depth=1
	cmpl	$-73507, -700(%rbp)     # imm = 0xFFFFFFFFFFFEE0DD
	jne	.LBB3_30
# BB#29:                                # %if.then.327
                                        #   in Loop: Header=BB3_7 Depth=1
	movb	$0, -669(%rbp)
	jmp	.LBB3_7
.LBB3_30:                               # %if.end.328
                                        #   in Loop: Header=BB3_7 Depth=1
	cmpl	$-73728, -700(%rbp)     # imm = 0xFFFFFFFFFFFEE000
	jne	.LBB3_32
# BB#31:                                # %if.then.331
                                        #   in Loop: Header=BB3_7 Depth=1
	jmp	.LBB3_7
.LBB3_32:                               # %if.end.332
                                        #   in Loop: Header=BB3_7 Depth=1
	cmpl	$-7, -684(%rbp)
	jb	.LBB3_34
# BB#33:                                # %if.then.335
	movq	-24(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.43, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	callq	gimp_quit
.LBB3_34:                               # %if.end.337
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movl	-684(%rbp), %eax
	addl	$4, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	g_malloc0_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -696(%rbp)
	movq	-696(%rbp), %rdi
	movl	-684(%rbp), %ecx
	movl	%ecx, %edx
	movq	-112(%rbp), %rcx
	callq	fread
	cmpb	$0, -669(%rbp)
	movq	%rax, -1224(%rbp)       # 8-byte Spill
	je	.LBB3_36
# BB#35:                                # %if.then.343
                                        #   in Loop: Header=BB3_7 Depth=1
	movq	-696(%rbp), %rdi
	callq	g_free
	jmp	.LBB3_7
.LBB3_36:                               # %if.end.344
                                        #   in Loop: Header=BB3_7 Depth=1
	movq	-696(%rbp), %rax
	movw	(%rax), %cx
	movw	%cx, -686(%rbp)
	movzwl	-672(%rbp), %edx
	cmpl	$2, %edx
	jne	.LBB3_48
# BB#37:                                # %if.then.348
                                        #   in Loop: Header=BB3_7 Depth=1
	movzwl	-674(%rbp), %eax
	subl	$16, %eax
	movl	%eax, -1228(%rbp)       # 4-byte Spill
	jne	.LBB3_47
	jmp	.LBB3_38
.LBB3_38:                               # %sw.bb
                                        #   in Loop: Header=BB3_7 Depth=1
	movq	-696(%rbp), %rsi
	movl	$.L.str.44, %eax
	movl	%eax, %edi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB3_40
# BB#39:                                # %if.then.353
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	$0, -704(%rbp)
	movl	$1, -708(%rbp)
	jmp	.LBB3_46
.LBB3_40:                               # %if.else.354
                                        #   in Loop: Header=BB3_7 Depth=1
	movq	-696(%rbp), %rsi
	movl	$.L.str.45, %eax
	movl	%eax, %edi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB3_42
# BB#41:                                # %if.then.358
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	$0, -704(%rbp)
	jmp	.LBB3_45
.LBB3_42:                               # %if.else.359
                                        #   in Loop: Header=BB3_7 Depth=1
	movq	-696(%rbp), %rsi
	movl	$.L.str.46, %eax
	movl	%eax, %edi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB3_44
# BB#43:                                # %if.then.363
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	$1, -704(%rbp)
.LBB3_44:                               # %if.end.364
                                        #   in Loop: Header=BB3_7 Depth=1
	jmp	.LBB3_45
.LBB3_45:                               # %if.end.365
                                        #   in Loop: Header=BB3_7 Depth=1
	jmp	.LBB3_46
.LBB3_46:                               # %if.end.366
                                        #   in Loop: Header=BB3_7 Depth=1
	jmp	.LBB3_47
.LBB3_47:                               # %sw.epilog
                                        #   in Loop: Header=BB3_7 Depth=1
	jmp	.LBB3_59
.LBB3_48:                               # %if.else.367
                                        #   in Loop: Header=BB3_7 Depth=1
	movzwl	-672(%rbp), %eax
	cmpl	$40, %eax
	jne	.LBB3_58
# BB#49:                                # %if.then.371
                                        #   in Loop: Header=BB3_7 Depth=1
	movzwl	-674(%rbp), %eax
	movl	%eax, %ecx
	subl	$2, %ecx
	movl	%eax, -1232(%rbp)       # 4-byte Spill
	movl	%ecx, -1236(%rbp)       # 4-byte Spill
	je	.LBB3_50
	jmp	.LBB3_80
.LBB3_80:                               # %if.then.371
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	-1232(%rbp), %eax       # 4-byte Reload
	subl	$16, %eax
	movl	%eax, -1240(%rbp)       # 4-byte Spill
	je	.LBB3_51
	jmp	.LBB3_81
.LBB3_81:                               # %if.then.371
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	-1232(%rbp), %eax       # 4-byte Reload
	subl	$17, %eax
	movl	%eax, -1244(%rbp)       # 4-byte Spill
	je	.LBB3_52
	jmp	.LBB3_82
.LBB3_82:                               # %if.then.371
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	-1232(%rbp), %eax       # 4-byte Reload
	subl	$256, %eax              # imm = 0x100
	movl	%eax, -1248(%rbp)       # 4-byte Spill
	je	.LBB3_53
	jmp	.LBB3_83
.LBB3_83:                               # %if.then.371
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	-1232(%rbp), %eax       # 4-byte Reload
	subl	$257, %eax              # imm = 0x101
	movl	%eax, -1252(%rbp)       # 4-byte Spill
	je	.LBB3_54
	jmp	.LBB3_84
.LBB3_84:                               # %if.then.371
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	-1232(%rbp), %eax       # 4-byte Reload
	subl	$258, %eax              # imm = 0x102
	movl	%eax, -1256(%rbp)       # 4-byte Spill
	je	.LBB3_55
	jmp	.LBB3_85
.LBB3_85:                               # %if.then.371
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	-1232(%rbp), %eax       # 4-byte Reload
	subl	$259, %eax              # imm = 0x103
	movl	%eax, -1260(%rbp)       # 4-byte Spill
	je	.LBB3_56
	jmp	.LBB3_57
.LBB3_50:                               # %sw.bb.373
                                        #   in Loop: Header=BB3_7 Depth=1
	movzwl	-686(%rbp), %eax
	movl	%eax, -644(%rbp)
	jmp	.LBB3_57
.LBB3_51:                               # %sw.bb.375
                                        #   in Loop: Header=BB3_7 Depth=1
	movzwl	-686(%rbp), %eax
	movl	%eax, -640(%rbp)
	jmp	.LBB3_57
.LBB3_52:                               # %sw.bb.377
                                        #   in Loop: Header=BB3_7 Depth=1
	movzwl	-686(%rbp), %eax
	movl	%eax, -636(%rbp)
	jmp	.LBB3_57
.LBB3_53:                               # %sw.bb.379
                                        #   in Loop: Header=BB3_7 Depth=1
	movzwl	-686(%rbp), %eax
	movl	%eax, -648(%rbp)
	jmp	.LBB3_57
.LBB3_54:                               # %sw.bb.381
                                        #   in Loop: Header=BB3_7 Depth=1
	movzwl	-686(%rbp), %eax
	movl	%eax, -652(%rbp)
	jmp	.LBB3_57
.LBB3_55:                               # %sw.bb.383
                                        #   in Loop: Header=BB3_7 Depth=1
	movzwl	-686(%rbp), %eax
	movl	%eax, -656(%rbp)
	jmp	.LBB3_57
.LBB3_56:                               # %sw.bb.385
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	$1, %eax
	xorl	%ecx, %ecx
	movzwl	-686(%rbp), %edx
	cmpl	$0, %edx
	cmovel	%ecx, %eax
	movl	%eax, -668(%rbp)
.LBB3_57:                               # %sw.epilog.389
                                        #   in Loop: Header=BB3_7 Depth=1
	jmp	.LBB3_58
.LBB3_58:                               # %if.end.390
                                        #   in Loop: Header=BB3_7 Depth=1
	jmp	.LBB3_59
.LBB3_59:                               # %if.end.391
                                        #   in Loop: Header=BB3_7 Depth=1
	movzwl	-672(%rbp), %eax
	cmpl	$32736, %eax            # imm = 0x7FE0
	jne	.LBB3_62
# BB#60:                                # %land.lhs.true.395
                                        #   in Loop: Header=BB3_7 Depth=1
	movzwl	-674(%rbp), %eax
	cmpl	$16, %eax
	jne	.LBB3_62
# BB#61:                                # %if.then.399
                                        #   in Loop: Header=BB3_7 Depth=1
	movq	-696(%rbp), %rax
	movq	%rax, -664(%rbp)
	jmp	.LBB3_65
.LBB3_62:                               # %if.else.400
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	$255, %eax
	movl	%eax, %esi
	movabsq	$.L.str.47, %rdx
	leaq	-677(%rbp), %r9
	leaq	-992(%rbp), %rdi
	movzwl	-672(%rbp), %ecx
	movzwl	-674(%rbp), %r8d
	movb	$0, %al
	callq	g_snprintf
	movl	$1, %esi
	leaq	-992(%rbp), %rdi
	movl	-684(%rbp), %edx
	movq	-696(%rbp), %rcx
	movl	%eax, -1264(%rbp)       # 4-byte Spill
	callq	gimp_parasite_new
	movq	%rax, -728(%rbp)
	cmpq	$0, %rax
	je	.LBB3_64
# BB#63:                                # %if.then.409
                                        #   in Loop: Header=BB3_7 Depth=1
	movq	-104(%rbp), %rdi
	movq	-728(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_prepend
	movq	%rax, -104(%rbp)
.LBB3_64:                               # %if.end.411
                                        #   in Loop: Header=BB3_7 Depth=1
	movq	-696(%rbp), %rdi
	callq	g_free
.LBB3_65:                               # %if.end.412
                                        #   in Loop: Header=BB3_7 Depth=1
	jmp	.LBB3_7
.LBB3_66:                               # %while.end
	cmpl	$8, -648(%rbp)
	je	.LBB3_69
# BB#67:                                # %land.lhs.true.415
	cmpl	$16, -648(%rbp)
	je	.LBB3_69
# BB#68:                                # %if.then.418
	movq	-24(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.48, %rdi
	movl	-648(%rbp), %edx
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	callq	gimp_quit
.LBB3_69:                               # %if.end.420
	cmpl	$262144, -636(%rbp)     # imm = 0x40000
	ja	.LBB3_71
# BB#70:                                # %lor.lhs.false.423
	cmpl	$262144, -640(%rbp)     # imm = 0x40000
	jbe	.LBB3_72
.LBB3_71:                               # %if.then.426
	movq	-24(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.49, %rdi
	movl	-636(%rbp), %edx
	movl	-640(%rbp), %ecx
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	callq	gimp_quit
.LBB3_72:                               # %if.end.428
	cmpl	$3, -644(%rbp)
	jle	.LBB3_74
# BB#73:                                # %if.then.431
	movq	-24(%rbp), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.50, %rdi
	movl	-644(%rbp), %edx
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	callq	gimp_quit
.LBB3_74:                               # %if.end.433
	movl	$1, %eax
	xorl	%ecx, %ecx
	movl	-636(%rbp), %edx
	movq	-632(%rbp), %rsi
	movl	%edx, (%rsi)
	movl	-640(%rbp), %edx
	movq	-632(%rbp), %rsi
	movl	%edx, 4(%rsi)
	movl	-648(%rbp), %edx
	movq	-632(%rbp), %rsi
	movl	%edx, 16(%rsi)
	movl	-652(%rbp), %edx
	movq	-632(%rbp), %rsi
	movl	%edx, 20(%rsi)
	movl	-656(%rbp), %edx
	movq	-632(%rbp), %rsi
	movl	%edx, 24(%rsi)
	movl	-668(%rbp), %edx
	movq	-632(%rbp), %rsi
	movl	%edx, 28(%rsi)
	movl	-644(%rbp), %edx
	movq	-632(%rbp), %rsi
	movl	%edx, 12(%rsi)
	movq	-632(%rbp), %rsi
	movl	$-1, 8(%rsi)
	movq	-632(%rbp), %rsi
	movl	(%rsi), %edi
	movq	-632(%rbp), %rsi
	movl	4(%rsi), %esi
	movq	-632(%rbp), %r8
	cmpl	$3, 12(%r8)
	cmovgel	%ecx, %eax
	movl	%eax, %edx
	callq	gimp_image_new
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %edi
	movq	-24(%rbp), %rsi
	callq	gimp_image_set_filename
	movabsq	$.L.str.51, %rdi
	movl	-84(%rbp), %ecx
	movl	%eax, -1268(%rbp)       # 4-byte Spill
	movl	%ecx, -1272(%rbp)       # 4-byte Spill
	callq	gettext
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%ecx, %ecx
	movl	$2, %edx
	movq	-632(%rbp), %rsi
	movl	(%rsi), %r9d
	movq	-632(%rbp), %rsi
	movl	4(%rsi), %r10d
	movq	-632(%rbp), %rsi
	cmpl	$3, 12(%rsi)
	cmovgel	%ecx, %edx
	movl	-1272(%rbp), %edi       # 4-byte Reload
	movq	%rax, %rsi
	movl	%edx, -1276(%rbp)       # 4-byte Spill
	movl	%r9d, %edx
	movl	%ecx, -1280(%rbp)       # 4-byte Spill
	movl	%r10d, %ecx
	movl	-1276(%rbp), %r8d       # 4-byte Reload
	movl	-1280(%rbp), %r9d       # 4-byte Reload
	callq	gimp_layer_new
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movl	%eax, -88(%rbp)
	movl	-84(%rbp), %edi
	movl	-88(%rbp), %esi
	callq	gimp_image_insert_layer
	movl	-88(%rbp), %edi
	movl	%eax, -1284(%rbp)       # 4-byte Spill
	callq	gimp_drawable_get
	leaq	-80(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rsi
	movq	-96(%rbp), %rax
	movl	4(%rax), %r8d
	movq	-96(%rbp), %rax
	movl	8(%rax), %r9d
	movl	%edx, -1288(%rbp)       # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	cmpl	$16, -648(%rbp)
	jne	.LBB3_76
# BB#75:                                # %if.then.463
	movq	-664(%rbp), %rax
	movl	-636(%rbp), %ecx
	imull	-640(%rbp), %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	guess_and_set_endian2
.LBB3_76:                               # %if.end.464
	leaq	-80(%rbp), %rdx
	movq	-664(%rbp), %rdi
	movq	-632(%rbp), %rsi
	callq	dicom_loader
	cmpq	$0, -104(%rbp)
	je	.LBB3_78
# BB#77:                                # %if.then.466
	movq	-104(%rbp), %rdi
	callq	g_slist_reverse
	movabsq	$add_parasites_to_image, %rsi
	leaq	-84(%rbp), %rdi
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rdi, -1296(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	-1296(%rbp), %rdx       # 8-byte Reload
	callq	g_slist_foreach
	movq	-104(%rbp), %rdi
	callq	g_slist_free
.LBB3_78:                               # %if.end.468
	movq	-664(%rbp), %rdi
	callq	g_free
	movq	-632(%rbp), %rdi
	callq	g_free
	movq	-112(%rbp), %rdi
	callq	fclose
	movq	-96(%rbp), %rdi
	movl	%eax, -1300(%rbp)       # 4-byte Spill
	callq	gimp_drawable_detach
	movl	-84(%rbp), %eax
	movl	%eax, -12(%rbp)
.LBB3_79:                               # %return
	movl	-12(%rbp), %eax
	addq	$1320, %rsp             # imm = 0x528
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	load_image, .Lfunc_end3-load_image
	.cfi_endproc

	.align	16, 0x90
	.type	save_image,@function
save_image:                             # @save_image
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
	subq	$384, %rsp              # imm = 0x180
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	$0, -120(%rbp)
	movl	$1, -176(%rbp)
	movw	$0, -178(%rbp)
	movw	$7, -180(%rbp)
	movw	$8, -182(%rbp)
	movq	$0, -192(%rbp)
	movl	-24(%rbp), %edi
	callq	gimp_drawable_type
	movl	%eax, -44(%rbp)
	movl	-24(%rbp), %edi
	callq	gimp_drawable_get
	movq	%rax, -56(%rbp)
	movl	-24(%rbp), %edi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB4_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.52, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$0, -4(%rbp)
	jmp	.LBB4_18
.LBB4_2:                                # %if.end
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
	je	.LBB4_4
	jmp	.LBB4_19
.LBB4_19:                               # %if.end
	movl	-204(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -208(%rbp)        # 4-byte Spill
	jne	.LBB4_5
	jmp	.LBB4_3
.LBB4_3:                                # %sw.bb
	movabsq	$.L.str.53, %rax
	movl	$1, -172(%rbp)
	movq	%rax, -168(%rbp)
	jmp	.LBB4_6
.LBB4_4:                                # %sw.bb.5
	movabsq	$.L.str.54, %rax
	movl	$3, -172(%rbp)
	movq	%rax, -168(%rbp)
	jmp	.LBB4_6
.LBB4_5:                                # %sw.default
	movabsq	$.L.str.55, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$0, -4(%rbp)
	jmp	.LBB4_18
.LBB4_6:                                # %sw.epilog
	callq	g_date_new
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	time
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_date_set_time_t
	movl	$16, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.56, %rdx
	leaq	-160(%rbp), %rdi
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	shrq	$44, %rax
	andq	$65535, %rax            # imm = 0xFFFF
	movl	%eax, %ecx
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	shrq	$40, %rax
	andq	$15, %rax
	movl	%eax, %r8d
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	shrq	$34, %rax
	andq	$63, %rax
	movl	%eax, %r9d
	movb	$0, %al
	callq	g_snprintf
	movq	-136(%rbp), %rdi
	movl	%eax, -220(%rbp)        # 4-byte Spill
	callq	g_date_free
	movabsq	$.L.str.57, %rsi
	movq	-16(%rbp), %rdi
	callq	fopen
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB4_8
# BB#7:                                 # %if.then.20
	movq	-56(%rbp), %rdi
	callq	gimp_drawable_detach
	movq	-32(%rbp), %rdi
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -236(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.58, %rdi
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
	jmp	.LBB4_18
.LBB4_8:                                # %if.end.28
	movb	$0, -193(%rbp)
	movl	$0, -200(%rbp)
.LBB4_9:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$128, -200(%rbp)
	jge	.LBB4_12
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB4_9 Depth=1
	leaq	-193(%rbp), %rdi
	movl	$1, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, -264(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-264(%rbp), %rcx        # 8-byte Reload
	callq	fwrite
	movq	%rax, -272(%rbp)        # 8-byte Spill
# BB#11:                                # %for.inc
                                        #   in Loop: Header=BB4_9 Depth=1
	movl	-200(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -200(%rbp)
	jmp	.LBB4_9
.LBB4_12:                               # %for.end
	movabsq	$.L.str.36, %rsi
	movq	-40(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -276(%rbp)        # 4-byte Spill
	callq	g_byte_array_new
	movq	%rax, -112(%rbp)
	movl	-20(%rbp), %edi
	callq	dicom_get_elements_list
	leaq	-160(%rbp), %rsi
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rdi
	callq	dicom_ensure_required_elements_present
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rdi
	movl	-172(%rbp), %esi
	callq	dicom_remove_gimp_specified_elements
	movl	$2, %edx
	movabsq	$.L.str.59, %rcx
	leaq	-172(%rbp), %rdi
	movq	%rax, -120(%rbp)
	movl	$40, -124(%rbp)
	movq	-120(%rbp), %rax
	movl	-124(%rbp), %esi
	movw	%si, %r8w
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movzwl	%r8w, %esi
	movq	-288(%rbp), %r8         # 8-byte Reload
	callq	dicom_add_element_int
	movl	$4, %edx
	movabsq	$.L.str.60, %rcx
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rdi
	movl	-124(%rbp), %esi
	movw	%si, %r9w
	movq	-168(%rbp), %rax
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	movl	%edx, -308(%rbp)        # 4-byte Spill
	movw	%r9w, -310(%rbp)        # 2-byte Spill
	callq	strlen
	movl	%eax, %edx
	movq	-168(%rbp), %r9
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movw	-310(%rbp), %r10w       # 2-byte Reload
	movzwl	%r10w, %esi
	movl	-308(%rbp), %r11d       # 4-byte Reload
	movl	%edx, -316(%rbp)        # 4-byte Spill
	movl	%r11d, %edx
	movq	-304(%rbp), %rcx        # 8-byte Reload
	movl	-316(%rbp), %r8d        # 4-byte Reload
	callq	dicom_add_element
	movq	%rax, -120(%rbp)
	cmpl	$3, -172(%rbp)
	jne	.LBB4_14
# BB#13:                                # %if.then.43
	movl	$6, %edx
	movabsq	$.L.str.59, %rcx
	leaq	-178(%rbp), %rax
	movq	-120(%rbp), %rdi
	movl	-124(%rbp), %esi
	movw	%si, %r8w
	movzwl	%r8w, %esi
	movq	%rax, %r8
	callq	dicom_add_element_int
	movq	%rax, -120(%rbp)
.LBB4_14:                               # %if.end.46
	movl	$16, %edx
	movabsq	$.L.str.59, %rcx
	movq	-120(%rbp), %rdi
	movl	-124(%rbp), %eax
	movw	%ax, %si
	movq	-56(%rbp), %r8
	addq	$8, %r8
	movzwl	%si, %esi
	callq	dicom_add_element_int
	movl	$17, %edx
	movabsq	$.L.str.59, %rcx
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rdi
	movl	-124(%rbp), %esi
	movw	%si, %r9w
	movq	-56(%rbp), %rax
	addq	$4, %rax
	movzwl	%r9w, %esi
	movq	%rax, %r8
	callq	dicom_add_element_int
	movl	$256, %edx              # imm = 0x100
	movabsq	$.L.str.59, %rcx
	leaq	-182(%rbp), %rdi
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movl	-124(%rbp), %esi
	movw	%si, %r9w
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movzwl	%r9w, %esi
	movq	-328(%rbp), %r8         # 8-byte Reload
	callq	dicom_add_element_int
	movl	$257, %edx              # imm = 0x101
	movabsq	$.L.str.59, %rcx
	leaq	-182(%rbp), %rdi
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movl	-124(%rbp), %esi
	movw	%si, %r9w
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movzwl	%r9w, %esi
	movq	-336(%rbp), %r8         # 8-byte Reload
	callq	dicom_add_element_int
	movl	$258, %edx              # imm = 0x102
	movabsq	$.L.str.59, %rcx
	leaq	-180(%rbp), %rdi
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movl	-124(%rbp), %esi
	movw	%si, %r9w
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movzwl	%r9w, %esi
	movq	-344(%rbp), %r8         # 8-byte Reload
	callq	dicom_add_element_int
	movl	$259, %edx              # imm = 0x103
	movabsq	$.L.str.59, %rcx
	leaq	-178(%rbp), %rdi
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movl	-124(%rbp), %esi
	movw	%si, %r9w
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movzwl	%r9w, %esi
	movq	-352(%rbp), %r8         # 8-byte Reload
	callq	dicom_add_element_int
	movl	$1, %edx
	movl	%edx, %esi
	movq	%rax, -120(%rbp)
	movl	$32736, -124(%rbp)      # imm = 0x7FE0
	movq	-56(%rbp), %rax
	movl	8(%rax), %edx
	movq	-56(%rbp), %rax
	imull	4(%rax), %edx
	imull	-172(%rbp), %edx
	movl	%edx, %edx
	movl	%edx, %edi
	callq	g_malloc_n
	movq	%rax, -192(%rbp)
	cmpq	$0, -192(%rbp)
	je	.LBB4_16
# BB#15:                                # %if.then.65
	leaq	-104(%rbp), %rdi
	xorl	%eax, %eax
	movq	-56(%rbp), %rsi
	movq	-56(%rbp), %rcx
	movl	4(%rcx), %r8d
	movq	-56(%rbp), %rcx
	movl	8(%rcx), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-104(%rbp), %rdi
	xorl	%eax, %eax
	movq	-192(%rbp), %rsi
	movq	-56(%rbp), %r10
	movl	4(%r10), %r8d
	movq	-56(%rbp), %r10
	movl	8(%r10), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_get_rect
	movl	$16, %edx
	movabsq	$.L.str.40, %rcx
	movq	-120(%rbp), %rdi
	movl	-124(%rbp), %eax
	movw	%ax, %r11w
	movq	-56(%rbp), %rsi
	movl	4(%rsi), %eax
	movq	-56(%rbp), %rsi
	imull	8(%rsi), %eax
	imull	-172(%rbp), %eax
	movq	-192(%rbp), %r9
	movzwl	%r11w, %esi
	movl	%eax, %r8d
	callq	dicom_add_element
	movq	%rax, -120(%rbp)
	movq	-40(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movq	-120(%rbp), %rdx
	callq	dicom_add_tags
	movq	%rax, -120(%rbp)
	movq	-192(%rbp), %rdi
	callq	g_free
	jmp	.LBB4_17
.LBB4_16:                               # %if.else
	movl	$0, -176(%rbp)
.LBB4_17:                               # %if.end.77
	movq	-40(%rbp), %rdi
	callq	fclose
	movq	-120(%rbp), %rdi
	movl	%eax, -356(%rbp)        # 4-byte Spill
	callq	dicom_elements_destroy
	movl	$1, %esi
	movq	-112(%rbp), %rdi
	callq	g_byte_array_free
	movq	-56(%rbp), %rdi
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gimp_drawable_detach
	movl	-176(%rbp), %esi
	movl	%esi, -4(%rbp)
.LBB4_18:                               # %return
	movl	-4(%rbp), %eax
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end4:
	.size	save_image, .Lfunc_end4-save_image
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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
	movl	$32, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end5:
	.size	g_message, .Lfunc_end5-g_message
	.cfi_endproc

	.align	16, 0x90
	.type	guess_and_set_endian2,@function
guess_and_set_endian2:                  # @guess_and_set_endian2
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movl	$-1, -28(%rbp)
	movl	$-1, -32(%rbp)
.LBB6_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movslq	-12(%rbp), %rdx
	shlq	$1, %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jae	.LBB6_7
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	cmpl	-28(%rbp), %ecx
	jle	.LBB6_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -28(%rbp)
.LBB6_4:                                # %if.end
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %ecx
	cmpl	-32(%rbp), %ecx
	jle	.LBB6_6
# BB#5:                                 # %if.then.7
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-24(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, -32(%rbp)
.LBB6_6:                                # %if.end.10
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB6_1
.LBB6_7:                                # %while.end
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jg	.LBB6_10
# BB#8:                                 # %lor.lhs.false
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB6_11
# BB#9:                                 # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB6_10
	jmp	.LBB6_11
.LBB6_10:                               # %if.then.15
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	toggle_endian2
.LBB6_11:                               # %if.end.16
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	guess_and_set_endian2, .Lfunc_end6-guess_and_set_endian2
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	dicom_loader,@function
dicom_loader:                           # @dicom_loader
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movl	(%rdx), %eax
	movl	%eax, -40(%rbp)
	movq	-16(%rbp), %rdx
	movl	4(%rdx), %eax
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rdx
	movl	12(%rdx), %eax
	movl	%eax, -48(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -56(%rbp)
	movq	-16(%rbp), %rdx
	cmpl	$16, 16(%rdx)
	jne	.LBB7_6
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	24(%rax), %ecx
	addl	$1, %ecx
	movq	-16(%rbp), %rax
	subl	20(%rax), %ecx
	movl	%ecx, -68(%rbp)
	movq	$0, -64(%rbp)
.LBB7_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	movl	-40(%rbp), %ecx
	imull	-44(%rbp), %ecx
	imull	-48(%rbp), %ecx
	movslq	%ecx, %rdx
	cmpq	%rdx, %rax
	jae	.LBB7_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB7_2 Depth=1
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	movzwl	(%rcx,%rax,2), %edx
	sarl	$8, %edx
	movw	%dx, %si
	movzwl	%si, %edx
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	movzwl	(%rcx,%rax,2), %edi
	shll	$8, %edi
	movw	%di, %si
	movzwl	%si, %edi
	orl	%edi, %edx
	movw	%dx, %si
	movzwl	%si, %edx
	movl	-68(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %edx
	movw	%dx, %si
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %r8
	movw	%si, (%r8,%rax,2)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB7_2 Depth=1
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB7_2
.LBB7_5:                                # %for.end
	jmp	.LBB7_6
.LBB7_6:                                # %if.end
	callq	gimp_tile_height
	imull	-40(%rbp), %eax
	imull	-48(%rbp), %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	g_malloc
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB7_7:                                # %for.cond.23
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_12 Depth 2
                                        #       Child Loop BB7_15 Depth 3
                                        #       Child Loop BB7_26 Depth 3
	movl	-36(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB7_39
# BB#8:                                 # %for.body.26
                                        #   in Loop: Header=BB7_7 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	-36(%rbp), %ecx
	movl	%ecx, -84(%rbp)
	movl	-36(%rbp), %ecx
	movl	%ecx, -128(%rbp)        # 4-byte Spill
	callq	gimp_tile_height
	movl	-128(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -88(%rbp)
	movl	-88(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB7_10
# BB#9:                                 # %cond.true
                                        #   in Loop: Header=BB7_7 Depth=1
	movl	-88(%rbp), %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB7_11
.LBB7_10:                               # %cond.false
                                        #   in Loop: Header=BB7_7 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB7_11:                               # %cond.end
                                        #   in Loop: Header=BB7_7 Depth=1
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	%eax, -88(%rbp)
	movl	-88(%rbp), %eax
	subl	-84(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
.LBB7_12:                               # %for.cond.32
                                        #   Parent Loop BB7_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_15 Depth 3
                                        #       Child Loop BB7_26 Depth 3
	movl	-96(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB7_38
# BB#13:                                # %for.body.35
                                        #   in Loop: Header=BB7_12 Depth=2
	movq	-16(%rbp), %rax
	cmpl	$16, 16(%rax)
	jne	.LBB7_24
# BB#14:                                # %if.then.39
                                        #   in Loop: Header=BB7_12 Depth=2
	movq	-56(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	-96(%rbp), %ecx
	imull	-40(%rbp), %ecx
	imull	-48(%rbp), %ecx
	movslq	%ecx, %rdx
	shlq	$1, %rdx
	addq	%rdx, %rax
	movq	%rax, -104(%rbp)
	movl	$0, -108(%rbp)
.LBB7_15:                               # %for.cond.43
                                        #   Parent Loop BB7_7 Depth=1
                                        #     Parent Loop BB7_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-108(%rbp), %eax
	movl	-40(%rbp), %ecx
	imull	-48(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB7_23
# BB#16:                                # %for.body.47
                                        #   in Loop: Header=BB7_15 Depth=3
	movslq	-108(%rbp), %rax
	movq	-104(%rbp), %rcx
	movzwl	(%rcx,%rax,2), %edx
	movq	-16(%rbp), %rax
	movl	20(%rax), %esi
	subl	$8, %esi
	movl	%esi, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %edx
	movb	%dl, %cl
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rdi
	movb	%cl, (%rdi,%rax)
	movq	-16(%rbp), %rax
	cmpl	$0, 28(%rax)
	je	.LBB7_21
# BB#17:                                # %if.then.56
                                        #   in Loop: Header=BB7_15 Depth=3
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$127, %edx
	jle	.LBB7_19
# BB#18:                                # %if.then.62
                                        #   in Loop: Header=BB7_15 Depth=3
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movb	$0, (%rcx,%rax)
	jmp	.LBB7_20
.LBB7_19:                               # %if.else
                                        #   in Loop: Header=BB7_15 Depth=3
	movslq	-108(%rbp), %rax
	movq	-80(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	shll	$1, %edx
	movb	%dl, %sil
	movb	%sil, (%rcx,%rax)
.LBB7_20:                               # %if.end.70
                                        #   in Loop: Header=BB7_15 Depth=3
	jmp	.LBB7_21
.LBB7_21:                               # %if.end.71
                                        #   in Loop: Header=BB7_15 Depth=3
	jmp	.LBB7_22
.LBB7_22:                               # %for.inc.72
                                        #   in Loop: Header=BB7_15 Depth=3
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB7_15
.LBB7_23:                               # %for.end.74
                                        #   in Loop: Header=BB7_12 Depth=2
	jmp	.LBB7_36
.LBB7_24:                               # %if.else.75
                                        #   in Loop: Header=BB7_12 Depth=2
	movq	-16(%rbp), %rax
	cmpl	$8, 16(%rax)
	jne	.LBB7_35
# BB#25:                                # %if.then.79
                                        #   in Loop: Header=BB7_12 Depth=2
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	-96(%rbp), %ecx
	imull	-40(%rbp), %ecx
	imull	-48(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -120(%rbp)
	movl	$0, -124(%rbp)
.LBB7_26:                               # %for.cond.87
                                        #   Parent Loop BB7_7 Depth=1
                                        #     Parent Loop BB7_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-124(%rbp), %eax
	movl	-40(%rbp), %ecx
	imull	-48(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB7_34
# BB#27:                                # %for.body.91
                                        #   in Loop: Header=BB7_26 Depth=3
	movl	$8, %eax
	movslq	-124(%rbp), %rcx
	movq	-120(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	movq	-16(%rbp), %rcx
	subl	20(%rcx), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	movb	%sil, %cl
	movslq	-124(%rbp), %rdx
	movq	-80(%rbp), %rdi
	movb	%cl, (%rdi,%rdx)
	movq	-16(%rbp), %rdx
	cmpl	$0, 28(%rdx)
	je	.LBB7_32
# BB#28:                                # %if.then.103
                                        #   in Loop: Header=BB7_26 Depth=3
	movslq	-124(%rbp), %rax
	movq	-80(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$127, %edx
	jle	.LBB7_30
# BB#29:                                # %if.then.109
                                        #   in Loop: Header=BB7_26 Depth=3
	movslq	-124(%rbp), %rax
	movq	-80(%rbp), %rcx
	movb	$0, (%rcx,%rax)
	jmp	.LBB7_31
.LBB7_30:                               # %if.else.112
                                        #   in Loop: Header=BB7_26 Depth=3
	movslq	-124(%rbp), %rax
	movq	-80(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	shll	$1, %edx
	movb	%dl, %sil
	movb	%sil, (%rcx,%rax)
.LBB7_31:                               # %if.end.118
                                        #   in Loop: Header=BB7_26 Depth=3
	jmp	.LBB7_32
.LBB7_32:                               # %if.end.119
                                        #   in Loop: Header=BB7_26 Depth=3
	jmp	.LBB7_33
.LBB7_33:                               # %for.inc.120
                                        #   in Loop: Header=BB7_26 Depth=3
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB7_26
.LBB7_34:                               # %for.end.122
                                        #   in Loop: Header=BB7_12 Depth=2
	jmp	.LBB7_35
.LBB7_35:                               # %if.end.123
                                        #   in Loop: Header=BB7_12 Depth=2
	jmp	.LBB7_36
.LBB7_36:                               # %if.end.124
                                        #   in Loop: Header=BB7_12 Depth=2
	movl	-40(%rbp), %eax
	imull	-48(%rbp), %eax
	movq	-80(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -80(%rbp)
# BB#37:                                # %for.inc.128
                                        #   in Loop: Header=BB7_12 Depth=2
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB7_12
.LBB7_38:                               # %for.end.130
                                        #   in Loop: Header=BB7_7 Depth=1
	cvtsi2sdl	-36(%rbp), %xmm0
	cvtsi2sdl	-44(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	xorl	%edx, %edx
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-36(%rbp), %ecx
	movl	-40(%rbp), %r8d
	movl	-92(%rbp), %r9d
	movl	%eax, -136(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_set_rect
	movl	-92(%rbp), %eax
	addl	-36(%rbp), %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB7_7
.LBB7_39:                               # %for.end.135
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-32(%rbp), %rdi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	g_free
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	dicom_loader, .Lfunc_end7-dicom_loader
	.cfi_endproc

	.align	16, 0x90
	.type	add_parasites_to_image,@function
add_parasites_to_image:                 # @add_parasites_to_image
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rsi
	movl	(%rsi), %edi
	movq	-24(%rbp), %rsi
	callq	gimp_image_attach_parasite
	movq	-24(%rbp), %rdi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	gimp_parasite_free
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	add_parasites_to_image, .Lfunc_end8-add_parasites_to_image
	.cfi_endproc

	.align	16, 0x90
	.type	toggle_endian2,@function
toggle_endian2:                         # @toggle_endian2
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)
.LBB9_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movslq	-12(%rbp), %rdx
	shlq	$1, %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jae	.LBB9_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-24(%rbp), %rax
	movzwl	(%rax), %ecx
	andl	$255, %ecx
	shll	$8, %ecx
	movq	-24(%rbp), %rax
	movzwl	(%rax), %edx
	sarl	$8, %edx
	orl	%edx, %ecx
	movw	%cx, %si
	movq	-24(%rbp), %rax
	movw	%si, (%rax)
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB9_1
.LBB9_3:                                # %while.end
	popq	%rbp
	retq
.Lfunc_end9:
	.size	toggle_endian2, .Lfunc_end9-toggle_endian2
	.cfi_endproc

	.align	16, 0x90
	.type	dicom_get_elements_list,@function
dicom_get_elements_list:                # @dicom_get_elements_list
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
	subq	$1200, %rsp             # imm = 0x4B0
	leaq	-36(%rbp), %rsi
	movl	%edi, -4(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_image_get_parasite_list
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB10_24
# BB#1:                                 # %land.lhs.true
	cmpl	$0, -36(%rbp)
	jle	.LBB10_24
# BB#2:                                 # %if.then
	movl	$0, -40(%rbp)
.LBB10_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB10_23
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB10_3 Depth=1
	movabsq	$.L.str.61, %rsi
	movl	$3, %eax
	movl	%eax, %edx
	movslq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdi
	movq	(%rdi,%rcx,8), %rdi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB10_21
# BB#5:                                 # %if.then.4
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	-4(%rbp), %edi
	movslq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	gimp_image_get_parasite
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB10_20
# BB#6:                                 # %if.then.9
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %edx
	leaq	-1072(%rbp), %rdi
	xorl	%esi, %esi
	movl	$3, %eax
	movl	%eax, %ecx
	leaq	-1091(%rbp), %r8
	movq	%rdi, -1152(%rbp)       # 8-byte Spill
	movq	%r8, %rdi
	movq	%rdx, -1160(%rbp)       # 8-byte Spill
	movq	%rcx, %rdx
	callq	memset
	movw	$0, -1094(%rbp)
	movw	$0, -1096(%rbp)
	movslq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rsi
	movq	-1152(%rbp), %rdi       # 8-byte Reload
	movq	-1160(%rbp), %rdx       # 8-byte Reload
	callq	strncpy
	movl	$47, %esi
	leaq	-1072(%rbp), %rdi
	movq	%rax, -1168(%rbp)       # 8-byte Spill
	callq	strchr
	movq	%rax, -1080(%rbp)
	cmpq	$0, -1080(%rbp)
	je	.LBB10_10
# BB#7:                                 # %if.then.16
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	$45, %esi
	movq	-1080(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1080(%rbp)
	movq	-1080(%rbp), %rdi
	callq	strchr
	movq	%rax, -1088(%rbp)
	cmpq	$0, -1088(%rbp)
	je	.LBB10_9
# BB#8:                                 # %if.then.19
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-1088(%rbp), %rax
	movb	$0, (%rax)
.LBB10_9:                               # %if.end
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	$15, %eax
	movl	%eax, %esi
	movabsq	$.L.str.62, %rdx
	leaq	-1111(%rbp), %rdi
	movq	-1080(%rbp), %rcx
	movb	$0, %al
	callq	g_snprintf
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movl	$16, %edx
	leaq	-1111(%rbp), %rdi
	movl	%eax, -1172(%rbp)       # 4-byte Spill
	callq	g_ascii_strtoull
	movw	%ax, %r9w
	movw	%r9w, -1094(%rbp)
	movq	-1088(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1080(%rbp)
.LBB10_10:                              # %if.end.24
                                        #   in Loop: Header=BB10_3 Depth=1
	cmpq	$0, -1080(%rbp)
	je	.LBB10_14
# BB#11:                                # %if.then.26
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	$45, %esi
	movq	-1080(%rbp), %rdi
	callq	strchr
	movq	%rax, -1088(%rbp)
	cmpq	$0, -1088(%rbp)
	je	.LBB10_13
# BB#12:                                # %if.then.30
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-1088(%rbp), %rax
	movb	$0, (%rax)
.LBB10_13:                              # %if.end.31
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	$15, %eax
	movl	%eax, %esi
	movabsq	$.L.str.62, %rdx
	leaq	-1126(%rbp), %rdi
	movq	-1080(%rbp), %rcx
	movb	$0, %al
	callq	g_snprintf
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movl	$16, %edx
	leaq	-1126(%rbp), %rdi
	movl	%eax, -1176(%rbp)       # 4-byte Spill
	callq	g_ascii_strtoull
	movw	%ax, %r9w
	movw	%r9w, -1096(%rbp)
	movq	-1088(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -1080(%rbp)
.LBB10_14:                              # %if.end.38
                                        #   in Loop: Header=BB10_3 Depth=1
	cmpq	$0, -1080(%rbp)
	je	.LBB10_16
# BB#15:                                # %if.then.40
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	$3, %eax
	movl	%eax, %edx
	leaq	-1091(%rbp), %rdi
	movq	-1080(%rbp), %rsi
	callq	strncpy
	movq	%rax, -1184(%rbp)       # 8-byte Spill
.LBB10_16:                              # %if.end.43
                                        #   in Loop: Header=BB10_3 Depth=1
	movzwl	-1094(%rbp), %eax
	cmpl	$0, %eax
	jle	.LBB10_19
# BB#17:                                # %land.lhs.true.47
                                        #   in Loop: Header=BB10_3 Depth=1
	movzwl	-1096(%rbp), %eax
	cmpl	$0, %eax
	jle	.LBB10_19
# BB#18:                                # %if.then.51
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-24(%rbp), %rdi
	callq	gimp_parasite_data
	movq	%rax, -1136(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_parasite_data_size
	leaq	-1091(%rbp), %rcx
	movl	%eax, %edx
	movl	%edx, -1140(%rbp)
	movq	-16(%rbp), %rdi
	movw	-1094(%rbp), %si
	movw	-1096(%rbp), %r8w
	movl	-1140(%rbp), %edx
	movq	-1136(%rbp), %r9
	movzwl	%si, %esi
	movzwl	%r8w, %r10d
	movl	%edx, -1188(%rbp)       # 4-byte Spill
	movl	%r10d, %edx
	movl	-1188(%rbp), %r8d       # 4-byte Reload
	callq	dicom_add_element_copy
	movq	%rax, -16(%rbp)
.LBB10_19:                              # %if.end.57
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-24(%rbp), %rdi
	callq	gimp_parasite_free
.LBB10_20:                              # %if.end.58
                                        #   in Loop: Header=BB10_3 Depth=1
	jmp	.LBB10_21
.LBB10_21:                              # %if.end.59
                                        #   in Loop: Header=BB10_3 Depth=1
	movslq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	g_free
# BB#22:                                # %for.inc
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB10_3
.LBB10_23:                              # %for.end
	jmp	.LBB10_24
.LBB10_24:                              # %if.end.62
	cmpq	$0, -32(%rbp)
	je	.LBB10_26
# BB#25:                                # %if.then.64
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB10_26:                              # %if.end.65
	movq	-16(%rbp), %rax
	addq	$1200, %rsp             # imm = 0x4B0
	popq	%rbp
	retq
.Lfunc_end10:
	.size	dicom_get_elements_list, .Lfunc_end10-dicom_get_elements_list
	.cfi_endproc

	.align	16, 0x90
	.type	dicom_ensure_required_elements_present,@function
dicom_ensure_required_elements_present: # @dicom_ensure_required_elements_present
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$840, %rsp              # imm = 0x348
.Ltmp42:
	.cfi_offset %rbx, -56
.Ltmp43:
	.cfi_offset %r12, -48
.Ltmp44:
	.cfi_offset %r13, -40
.Ltmp45:
	.cfi_offset %r14, -32
.Ltmp46:
	.cfi_offset %r15, -24
	movabsq	$.L.str.79, %rax
	movabsq	$.L.str.20, %rcx
	movabsq	$.L.str.77, %rdx
	movabsq	$.L.str.75, %r8
	movabsq	$.L.str.73, %r9
	movabsq	$.L.str.72, %r10
	movabsq	$.L.str.71, %r11
	movabsq	$.L.str.68, %rbx
	movabsq	$.L.str.67, %r14
	movabsq	$.L.str.66, %r15
	movabsq	$.L.str.45, %r12
	movabsq	$.L.str.63, %r13
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movw	$2, -800(%rbp)
	movw	$1, -798(%rbp)
	movw	.L.str.39, %si
	movw	%si, -796(%rbp)
	movb	.L.str.39+2, %sil
	movb	%sil, -794(%rbp)
	movl	$2, -792(%rbp)
	movq	%r13, -784(%rbp)
	movl	$0, -776(%rbp)
	movw	$2, -768(%rbp)
	movw	$16, -766(%rbp)
	movw	.L.str.64, %si
	movw	%si, -764(%rbp)
	movb	.L.str.64+2, %sil
	movb	%sil, -762(%rbp)
	movl	$19, -760(%rbp)
	movq	%r12, -752(%rbp)
	movl	$0, -744(%rbp)
	movw	$2, -736(%rbp)
	movw	$19, -734(%rbp)
	movw	.L.str.65, %si
	movw	%si, -732(%rbp)
	movb	.L.str.65+2, %sil
	movb	%sil, -730(%rbp)
	movl	$21, -728(%rbp)
	movq	%r15, -720(%rbp)
	movl	$0, -712(%rbp)
	movw	$8, -704(%rbp)
	movw	$8, -702(%rbp)
	movw	.L.str.60, %si
	movw	%si, -700(%rbp)
	movb	.L.str.60+2, %sil
	movb	%sil, -698(%rbp)
	movl	$16, -696(%rbp)
	movq	%r14, -688(%rbp)
	movl	$0, -680(%rbp)
	movw	$8, -672(%rbp)
	movw	$22, -670(%rbp)
	movw	.L.str.64, %si
	movw	%si, -668(%rbp)
	movb	.L.str.64+2, %sil
	movb	%sil, -666(%rbp)
	movl	$25, -664(%rbp)
	movq	%rbx, -656(%rbp)
	movl	$0, -648(%rbp)
	movw	$8, -640(%rbp)
	movw	$32, -638(%rbp)
	movw	.L.str.69, %si
	movw	%si, -636(%rbp)
	movb	.L.str.69+2, %sil
	movb	%sil, -634(%rbp)
	movq	-56(%rbp), %rdi
	movq	%r10, -816(%rbp)        # 8-byte Spill
	movq	%r11, -824(%rbp)        # 8-byte Spill
	movq	%rax, -832(%rbp)        # 8-byte Spill
	movq	%rcx, -840(%rbp)        # 8-byte Spill
	movq	%rdx, -848(%rbp)        # 8-byte Spill
	movq	%r8, -856(%rbp)         # 8-byte Spill
	movq	%r9, -864(%rbp)         # 8-byte Spill
	callq	strlen
	movl	%eax, %esi
	movl	%esi, -632(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -624(%rbp)
	movl	$0, -616(%rbp)
	movw	$8, -608(%rbp)
	movw	$33, -606(%rbp)
	movw	.L.str.69, %si
	movw	%si, -604(%rbp)
	movb	.L.str.69+2, %al
	movb	%al, -602(%rbp)
	movq	-56(%rbp), %rdi
	callq	strlen
	movl	%eax, %esi
	movl	%esi, -600(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -592(%rbp)
	movl	$0, -584(%rbp)
	movw	$8, -576(%rbp)
	movw	$34, -574(%rbp)
	movw	.L.str.69, %si
	movw	%si, -572(%rbp)
	movb	.L.str.69+2, %al
	movb	%al, -570(%rbp)
	movq	-56(%rbp), %rdi
	callq	strlen
	movl	%eax, %esi
	movl	%esi, -568(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -560(%rbp)
	movl	$0, -552(%rbp)
	movw	$8, -544(%rbp)
	movw	$35, -542(%rbp)
	movw	.L.str.69, %si
	movw	%si, -540(%rbp)
	movb	.L.str.69+2, %al
	movb	%al, -538(%rbp)
	movq	-56(%rbp), %rdi
	callq	strlen
	movl	%eax, %esi
	movl	%esi, -536(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -528(%rbp)
	movl	$0, -520(%rbp)
	movw	$8, -512(%rbp)
	movw	$48, -510(%rbp)
	movw	.L.str.70, %si
	movw	%si, -508(%rbp)
	movb	.L.str.70+2, %al
	movb	%al, -506(%rbp)
	movl	$13, -504(%rbp)
	movq	-824(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -496(%rbp)
	movl	$0, -488(%rbp)
	movw	$8, -480(%rbp)
	movw	$80, -478(%rbp)
	movw	.L.str.65, %si
	movw	%si, -476(%rbp)
	movb	.L.str.65+2, %al
	movb	%al, -474(%rbp)
	movl	$0, -472(%rbp)
	movq	-840(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -464(%rbp)
	movl	$0, -456(%rbp)
	movw	$8, -448(%rbp)
	movw	$96, -446(%rbp)
	movw	.L.str.60, %si
	movw	%si, -444(%rbp)
	movb	.L.str.60+2, %al
	movb	%al, -442(%rbp)
	movl	$2, -440(%rbp)
	movq	-816(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -432(%rbp)
	movl	$0, -424(%rbp)
	movw	$8, -416(%rbp)
	movw	$100, -414(%rbp)
	movw	.L.str.60, %si
	movw	%si, -412(%rbp)
	movb	.L.str.60+2, %al
	movb	%al, -410(%rbp)
	movl	$3, -408(%rbp)
	movq	-864(%rbp), %r8         # 8-byte Reload
	movq	%r8, -400(%rbp)
	movl	$0, -392(%rbp)
	movw	$8, -384(%rbp)
	movw	$144, -382(%rbp)
	movw	.L.str.74, %si
	movw	%si, -380(%rbp)
	movb	.L.str.74+2, %al
	movb	%al, -378(%rbp)
	movl	$0, -376(%rbp)
	movq	%rdx, -368(%rbp)
	movl	$0, -360(%rbp)
	movw	$16, -352(%rbp)
	movw	$16, -350(%rbp)
	movw	.L.str.74, %si
	movw	%si, -348(%rbp)
	movb	.L.str.74+2, %al
	movb	%al, -346(%rbp)
	movl	$10, -344(%rbp)
	movq	-856(%rbp), %r9         # 8-byte Reload
	movq	%r9, -336(%rbp)
	movl	$0, -328(%rbp)
	movw	$16, -320(%rbp)
	movw	$32, -318(%rbp)
	movw	.L.str.76, %si
	movw	%si, -316(%rbp)
	movb	.L.str.76+2, %al
	movb	%al, -314(%rbp)
	movl	$9, -312(%rbp)
	movq	-848(%rbp), %r10        # 8-byte Reload
	movq	%r10, -304(%rbp)
	movl	$0, -296(%rbp)
	movw	$16, -288(%rbp)
	movw	$48, -286(%rbp)
	movw	.L.str.69, %si
	movw	%si, -284(%rbp)
	movb	.L.str.69+2, %al
	movb	%al, -282(%rbp)
	movq	-56(%rbp), %rdi
	callq	strlen
	movl	%eax, %esi
	movl	%esi, -280(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -272(%rbp)
	movl	$0, -264(%rbp)
	movw	$16, -256(%rbp)
	movw	$64, -254(%rbp)
	movw	.L.str.60, %si
	movw	%si, -252(%rbp)
	movb	.L.str.60+2, %al
	movb	%al, -250(%rbp)
	movl	$0, -248(%rbp)
	movq	-840(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -240(%rbp)
	movl	$0, -232(%rbp)
	movw	$32, -224(%rbp)
	movw	$16, -222(%rbp)
	movw	.L.str.78, %si
	movw	%si, -220(%rbp)
	movb	.L.str.78+2, %al
	movb	%al, -218(%rbp)
	movl	$1, -216(%rbp)
	movq	-832(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -208(%rbp)
	movl	$0, -200(%rbp)
	movw	$32, -192(%rbp)
	movw	$17, -190(%rbp)
	movw	.L.str.78, %si
	movw	%si, -188(%rbp)
	movb	.L.str.78+2, %al
	movb	%al, -186(%rbp)
	movl	$1, -184(%rbp)
	movq	%rdx, -176(%rbp)
	movl	$0, -168(%rbp)
	movw	$32, -160(%rbp)
	movw	$18, -158(%rbp)
	movw	.L.str.78, %si
	movw	%si, -156(%rbp)
	movb	.L.str.78+2, %al
	movb	%al, -154(%rbp)
	movl	$1, -152(%rbp)
	movq	%rdx, -144(%rbp)
	movl	$0, -136(%rbp)
	movw	$32, -128(%rbp)
	movw	$19, -126(%rbp)
	movw	.L.str.78, %si
	movw	%si, -124(%rbp)
	movb	.L.str.78+2, %al
	movb	%al, -122(%rbp)
	movl	$1, -120(%rbp)
	movq	%rdx, -112(%rbp)
	movl	$0, -104(%rbp)
	movw	$0, -96(%rbp)
	movw	$0, -94(%rbp)
	movw	.L.str.80, %si
	movw	%si, -92(%rbp)
	movb	.L.str.80+2, %al
	movb	%al, -90(%rbp)
	movl	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	movl	$0, -72(%rbp)
	movl	$0, -804(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	leaq	-800(%rbp), %rax
	movslq	-804(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movzwl	(%rax), %edx
	cmpl	$0, %edx
	jle	.LBB11_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	leaq	-800(%rbp), %rax
	movq	-48(%rbp), %rdi
	movslq	-804(%rbp), %rcx
	shlq	$5, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movw	(%rdx), %si
	movslq	-804(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movzwl	%si, %esi
	movzwl	2(%rax), %edx
	callq	dicom_element_find_by_num
	cmpq	$0, %rax
	jne	.LBB11_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB11_1 Depth=1
	leaq	-800(%rbp), %rax
	movq	-48(%rbp), %rdi
	movslq	-804(%rbp), %rcx
	shlq	$5, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movw	(%rdx), %si
	movslq	-804(%rbp), %rcx
	shlq	$5, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movw	2(%rdx), %r8w
	movslq	-804(%rbp), %rcx
	shlq	$5, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	addq	$4, %rdx
	movslq	-804(%rbp), %rcx
	shlq	$5, %rcx
	movq	%rax, %r9
	addq	%rcx, %r9
	movl	8(%r9), %r10d
	movslq	-804(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	16(%rax), %r9
	movzwl	%si, %esi
	movzwl	%r8w, %r11d
	movq	%rdx, -872(%rbp)        # 8-byte Spill
	movl	%r11d, %edx
	movq	-872(%rbp), %rcx        # 8-byte Reload
	movl	%r10d, %r8d
	callq	dicom_add_element
	movq	%rax, -48(%rbp)
.LBB11_4:                               # %if.end
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_5
.LBB11_5:                               # %for.inc
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-804(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -804(%rbp)
	jmp	.LBB11_1
.LBB11_6:                               # %for.end
	movq	-48(%rbp), %rax
	addq	$840, %rsp              # imm = 0x348
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	dicom_ensure_required_elements_present, .Lfunc_end11-dicom_ensure_required_elements_present
	.cfi_endproc

	.align	16, 0x90
	.type	dicom_remove_gimp_specified_elements,@function
dicom_remove_gimp_specified_elements:   # @dicom_remove_gimp_specified_elements
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
	subq	$320, %rsp              # imm = 0x140
	movabsq	$.Ldicom_remove_gimp_specified_elements.remove, %rax
	movl	$288, %ecx              # imm = 0x120
	movl	%ecx, %edx
	leaq	-304(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%r8, %rdi
	movq	%rax, %rsi
	callq	memcpy
	movl	$0, -316(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	leaq	-304(%rbp), %rax
	movslq	-316(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movzwl	(%rax), %edx
	cmpl	$0, %edx
	jle	.LBB12_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	leaq	-304(%rbp), %rax
	movq	-8(%rbp), %rdi
	movslq	-316(%rbp), %rcx
	shlq	$5, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movw	(%rdx), %si
	movslq	-316(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movzwl	%si, %esi
	movzwl	2(%rax), %edx
	callq	dicom_element_find_by_num
	movq	%rax, -312(%rbp)
	cmpq	$0, %rax
	je	.LBB12_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-312(%rbp), %rsi
	callq	dicom_destroy_element
	movq	%rax, -8(%rbp)
.LBB12_4:                               # %if.end
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_5
.LBB12_5:                               # %for.inc
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-316(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -316(%rbp)
	jmp	.LBB12_1
.LBB12_6:                               # %for.end
	cmpl	$3, -12(%rbp)
	jne	.LBB12_10
# BB#7:                                 # %if.then.10
	movl	$40, %esi
	movl	$6, %edx
	movq	-8(%rbp), %rdi
	callq	dicom_element_find_by_num
	movq	%rax, -312(%rbp)
	cmpq	$0, %rax
	je	.LBB12_9
# BB#8:                                 # %if.then.13
	movq	-8(%rbp), %rdi
	movq	-312(%rbp), %rsi
	callq	dicom_destroy_element
	movq	%rax, -8(%rbp)
.LBB12_9:                               # %if.end.15
	jmp	.LBB12_10
.LBB12_10:                              # %if.end.16
	movq	-8(%rbp), %rax
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end12:
	.size	dicom_remove_gimp_specified_elements, .Lfunc_end12-dicom_remove_gimp_specified_elements
	.cfi_endproc

	.align	16, 0x90
	.type	dicom_add_element_int,@function
dicom_add_element_int:                  # @dicom_add_element_int
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
	subq	$48, %rsp
	movw	%dx, %ax
	movw	%si, %r9w
	movq	%rdi, -8(%rbp)
	movw	%r9w, -10(%rbp)
	movw	%ax, -12(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-24(%rbp), %rdi
	movl	$.L.str.59, %edx
	movl	%edx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_2
# BB#1:                                 # %if.then
	movl	$2, -36(%rbp)
	jmp	.LBB13_3
.LBB13_2:                               # %if.else
	movl	$4, -36(%rbp)
.LBB13_3:                               # %if.end
	movq	-8(%rbp), %rdi
	movw	-10(%rbp), %ax
	movw	-12(%rbp), %cx
	movq	-24(%rbp), %rdx
	movl	-36(%rbp), %r8d
	movq	-32(%rbp), %r9
	movzwl	%ax, %esi
	movzwl	%cx, %r10d
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%r10d, %edx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	callq	dicom_add_element
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	dicom_add_element_int, .Lfunc_end13-dicom_add_element_int
	.cfi_endproc

	.align	16, 0x90
	.type	dicom_add_element,@function
dicom_add_element:                      # @dicom_add_element
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
	subq	$64, %rsp
	movw	%dx, %ax
	movw	%si, %r10w
	movl	$32, %edx
	movl	%edx, %r11d
	movq	%rdi, -8(%rbp)
	movw	%r10w, -10(%rbp)
	movw	%ax, -12(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	%r11, %rdi
	callq	g_slice_alloc0
	movl	$3, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, -48(%rbp)
	movw	-10(%rbp), %r10w
	movq	-48(%rbp), %rax
	movw	%r10w, (%rax)
	movw	-12(%rbp), %r10w
	movq	-48(%rbp), %rax
	movw	%r10w, 2(%rax)
	movq	-48(%rbp), %rax
	addq	$4, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	strncpy
	movl	-28(%rbp), %r8d
	movq	-48(%rbp), %rcx
	movl	%r8d, 8(%rcx)
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	%rcx, 16(%rdx)
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	g_slist_prepend
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	dicom_add_element, .Lfunc_end14-dicom_add_element
	.cfi_endproc

	.align	16, 0x90
	.type	dicom_add_tags,@function
dicom_add_tags:                         # @dicom_add_tags
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
	subq	$64, %rsp
	movabsq	$dicom_elements_compare, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movl	$-1, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_slist_sort
	movabsq	$dicom_print_tags, %rsi
	leaq	-48(%rbp), %rdx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_slist_foreach
	movq	-48(%rbp), %rdi
	movl	-32(%rbp), %esi
	movq	-40(%rbp), %rdx
	callq	write_group_to_file
	movq	-24(%rbp), %rdx
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movq	%rdx, %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	dicom_add_tags, .Lfunc_end15-dicom_add_tags
	.cfi_endproc

	.align	16, 0x90
	.type	dicom_elements_destroy,@function
dicom_elements_destroy:                 # @dicom_elements_destroy
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
	cmpq	$0, -8(%rbp)
	je	.LBB16_2
# BB#1:                                 # %if.then
	movabsq	$dicom_element_done, %rsi
	movq	-8(%rbp), %rdi
	callq	g_slist_free_full
.LBB16_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	dicom_elements_destroy, .Lfunc_end16-dicom_elements_destroy
	.cfi_endproc

	.align	16, 0x90
	.type	dicom_add_element_copy,@function
dicom_add_element_copy:                 # @dicom_add_element_copy
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
	subq	$64, %rsp
	movw	%dx, %ax
	movw	%si, %r10w
	movq	%rdi, -8(%rbp)
	movw	%r10w, -10(%rbp)
	movw	%ax, -12(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rdi
	movw	-10(%rbp), %ax
	movw	-12(%rbp), %r10w
	movq	-24(%rbp), %rcx
	movl	-28(%rbp), %r8d
	movq	-40(%rbp), %r9
	movl	-28(%rbp), %esi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%r8d, -52(%rbp)         # 4-byte Spill
	movw	%ax, -54(%rbp)          # 2-byte Spill
	movw	%r10w, -56(%rbp)        # 2-byte Spill
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	g_memdup
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movw	-54(%rbp), %r10w        # 2-byte Reload
	movzwl	%r10w, %esi
	movw	-56(%rbp), %r11w        # 2-byte Reload
	movzwl	%r11w, %edx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movl	-52(%rbp), %r8d         # 4-byte Reload
	movq	%rax, %r9
	callq	dicom_add_element
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, 24(%rax)
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	dicom_add_element_copy, .Lfunc_end17-dicom_add_element_copy
	.cfi_endproc

	.align	16, 0x90
	.type	dicom_element_find_by_num,@function
dicom_element_find_by_num:              # @dicom_element_find_by_num
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
	movw	%dx, %ax
	movw	%si, %cx
	movabsq	$dicom_elements_compare, %rdx
	leaq	-48(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movw	%cx, -10(%rbp)
	movw	%ax, -12(%rbp)
	movw	-10(%rbp), %ax
	movw	%ax, -48(%rbp)
	movw	-12(%rbp), %ax
	movw	%ax, -46(%rbp)
	movw	.L.str.80, %ax
	movw	%ax, -44(%rbp)
	movb	.L.str.80+2, %r9b
	movb	%r9b, -42(%rbp)
	movl	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%r8, %rsi
	callq	g_slist_find_custom
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB18_2
# BB#1:                                 # %cond.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB18_3
.LBB18_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB18_3
.LBB18_3:                               # %cond.end
	movq	-64(%rbp), %rax         # 8-byte Reload
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	dicom_element_find_by_num, .Lfunc_end18-dicom_element_find_by_num
	.cfi_endproc

	.align	16, 0x90
	.type	dicom_elements_compare,@function
dicom_elements_compare:                 # @dicom_elements_compare
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movq	-32(%rbp), %rsi
	movzwl	(%rsi), %eax
	movq	-40(%rbp), %rsi
	movzwl	(%rsi), %ecx
	cmpl	%ecx, %eax
	jne	.LBB19_6
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movzwl	2(%rax), %ecx
	movq	-40(%rbp), %rax
	movzwl	2(%rax), %edx
	cmpl	%edx, %ecx
	jne	.LBB19_3
# BB#2:                                 # %if.then.9
	movl	$0, -4(%rbp)
	jmp	.LBB19_10
.LBB19_3:                               # %if.else
	movq	-32(%rbp), %rax
	movzwl	2(%rax), %ecx
	movq	-40(%rbp), %rax
	movzwl	2(%rax), %edx
	cmpl	%edx, %ecx
	jle	.LBB19_5
# BB#4:                                 # %if.then.16
	movl	$1, -4(%rbp)
	jmp	.LBB19_10
.LBB19_5:                               # %if.else.17
	movl	$-1, -4(%rbp)
	jmp	.LBB19_10
.LBB19_6:                               # %if.else.18
	movq	-32(%rbp), %rax
	movzwl	(%rax), %ecx
	movq	-40(%rbp), %rax
	movzwl	(%rax), %edx
	cmpl	%edx, %ecx
	jge	.LBB19_8
# BB#7:                                 # %if.then.25
	movl	$-1, -4(%rbp)
	jmp	.LBB19_10
.LBB19_8:                               # %if.end
	jmp	.LBB19_9
.LBB19_9:                               # %if.end.26
	movl	$1, -4(%rbp)
.LBB19_10:                              # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end19:
	.size	dicom_elements_compare, .Lfunc_end19-dicom_elements_compare
	.cfi_endproc

	.align	16, 0x90
	.type	dicom_destroy_element,@function
dicom_destroy_element:                  # @dicom_destroy_element
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
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB20_6
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_remove_all
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 24(%rax)
	je	.LBB20_3
# BB#2:                                 # %if.then.2
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_free
.LBB20_3:                               # %if.end
	jmp	.LBB20_4
.LBB20_4:                               # %do.body
	movl	$32, %eax
	movl	%eax, %edi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#5:                                 # %do.end
	jmp	.LBB20_6
.LBB20_6:                               # %if.end.3
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	dicom_destroy_element, .Lfunc_end20-dicom_destroy_element
	.cfi_endproc

	.align	16, 0x90
	.type	dicom_print_tags,@function
dicom_print_tags:                       # @dicom_print_tags
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	cmpl	$0, 16(%rsi)
	jl	.LBB21_3
# BB#1:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movzwl	(%rax), %ecx
	movq	-24(%rbp), %rax
	cmpl	16(%rax), %ecx
	je	.LBB21_3
# BB#2:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rax
	movl	16(%rax), %esi
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	callq	write_group_to_file
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB21_3:                               # %if.end
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-32(%rbp), %rax
	movzwl	(%rax), %esi
	movq	-32(%rbp), %rax
	movzwl	2(%rax), %edx
	movq	-32(%rbp), %rax
	addq	$4, %rax
	movq	-32(%rbp), %rcx
	movq	16(%rcx), %r8
	movq	-32(%rbp), %rcx
	movl	8(%rcx), %r9d
	movq	%rax, %rcx
	callq	add_tag_pointer
	movq	-32(%rbp), %rax
	movzwl	(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 16(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	dicom_print_tags, .Lfunc_end21-dicom_print_tags
	.cfi_endproc

	.align	16, 0x90
	.type	write_group_to_file,@function
write_group_to_file:                    # @write_group_to_file
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
	pushq	%r14
	pushq	%rbx
	subq	$112, %rsp
.Ltmp80:
	.cfi_offset %rbx, -32
.Ltmp81:
	.cfi_offset %r14, -24
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$2, %eax
	movl	%eax, %r8d
	leaq	-46(%rbp), %r9
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$1, -44(%rbp)
	movl	-28(%rbp), %eax
	movw	%ax, %r10w
	movzwl	%r10w, %eax
	sarl	$8, %eax
	movw	%ax, %r10w
	movzwl	%r10w, %eax
	movl	-28(%rbp), %esi
	movw	%si, %r10w
	movzwl	%r10w, %esi
	shll	$8, %esi
	movw	%si, %r10w
	movzwl	%r10w, %esi
	orl	%esi, %eax
	movw	%ax, %r10w
	movzwl	%r10w, %eax
	sarl	$8, %eax
	movw	%ax, %r10w
	movzwl	%r10w, %eax
	movl	-28(%rbp), %esi
	movw	%si, %r10w
	movzwl	%r10w, %esi
	sarl	$8, %esi
	movw	%si, %r10w
	movzwl	%r10w, %esi
	movl	-28(%rbp), %r11d
	movw	%r11w, %r10w
	movzwl	%r10w, %r11d
	shll	$8, %r11d
	movw	%r11w, %r10w
	movzwl	%r10w, %r11d
	orl	%r11d, %esi
	movw	%si, %r10w
	movzwl	%r10w, %esi
	shll	$8, %esi
	movw	%si, %r10w
	movzwl	%r10w, %esi
	orl	%esi, %eax
	movw	%ax, %r10w
	movw	%r10w, -46(%rbp)
	movq	-24(%rbp), %rdx
	movq	%r9, %rdi
	movq	%rcx, %rsi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%r8, %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	callq	fwrite
	xorl	%edi, %edi
	movq	-24(%rbp), %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	fputc
	xorl	%edi, %edi
	movq	-24(%rbp), %rsi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	fputc
	movl	$85, %edi
	movq	-24(%rbp), %rsi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	fputc
	movl	$76, %edi
	movq	-24(%rbp), %rsi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	fputc
	movl	$1, %edi
	movl	%edi, %esi
	movl	$2, %edi
	movl	%edi, %edx
	leaq	-46(%rbp), %rcx
	movw	$4, -46(%rbp)
	movq	-24(%rbp), %r8
	movq	%rcx, %rdi
	movq	%r8, %rcx
	movl	%eax, -88(%rbp)         # 4-byte Spill
	callq	fwrite
	movl	$1, %r11d
	movl	%r11d, %esi
	movl	$4, %r11d
	movl	%r11d, %edx
	leaq	-52(%rbp), %rcx
	movq	-40(%rbp), %rdi
	movl	8(%rdi), %r11d
	andl	$255, %r11d
	shll	$24, %r11d
	movq	-40(%rbp), %rdi
	movl	8(%rdi), %ebx
	andl	$65280, %ebx            # imm = 0xFF00
	shll	$8, %ebx
	orl	%ebx, %r11d
	movq	-40(%rbp), %rdi
	movl	8(%rdi), %ebx
	andl	$16711680, %ebx         # imm = 0xFF0000
	shrl	$8, %ebx
	orl	%ebx, %r11d
	movq	-40(%rbp), %rdi
	movl	8(%rdi), %ebx
	andl	$-16777216, %ebx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %ebx
	orl	%ebx, %r11d
	andl	$255, %r11d
	shll	$24, %r11d
	movq	-40(%rbp), %rdi
	movl	8(%rdi), %ebx
	andl	$255, %ebx
	shll	$24, %ebx
	movq	-40(%rbp), %rdi
	movl	8(%rdi), %r14d
	andl	$65280, %r14d           # imm = 0xFF00
	shll	$8, %r14d
	orl	%r14d, %ebx
	movq	-40(%rbp), %rdi
	movl	8(%rdi), %r14d
	andl	$16711680, %r14d        # imm = 0xFF0000
	shrl	$8, %r14d
	orl	%r14d, %ebx
	movq	-40(%rbp), %rdi
	movl	8(%rdi), %r14d
	andl	$-16777216, %r14d       # imm = 0xFFFFFFFFFF000000
	shrl	$24, %r14d
	orl	%r14d, %ebx
	andl	$65280, %ebx            # imm = 0xFF00
	shll	$8, %ebx
	orl	%ebx, %r11d
	movq	-40(%rbp), %rdi
	movl	8(%rdi), %ebx
	andl	$255, %ebx
	shll	$24, %ebx
	movq	-40(%rbp), %rdi
	movl	8(%rdi), %r14d
	andl	$65280, %r14d           # imm = 0xFF00
	shll	$8, %r14d
	orl	%r14d, %ebx
	movq	-40(%rbp), %rdi
	movl	8(%rdi), %r14d
	andl	$16711680, %r14d        # imm = 0xFF0000
	shrl	$8, %r14d
	orl	%r14d, %ebx
	movq	-40(%rbp), %rdi
	movl	8(%rdi), %r14d
	andl	$-16777216, %r14d       # imm = 0xFFFFFFFFFF000000
	shrl	$24, %r14d
	orl	%r14d, %ebx
	andl	$16711680, %ebx         # imm = 0xFF0000
	shrl	$8, %ebx
	orl	%ebx, %r11d
	movq	-40(%rbp), %rdi
	movl	8(%rdi), %ebx
	andl	$255, %ebx
	shll	$24, %ebx
	movq	-40(%rbp), %rdi
	movl	8(%rdi), %r14d
	andl	$65280, %r14d           # imm = 0xFF00
	shll	$8, %r14d
	orl	%r14d, %ebx
	movq	-40(%rbp), %rdi
	movl	8(%rdi), %r14d
	andl	$16711680, %r14d        # imm = 0xFF0000
	shrl	$8, %r14d
	orl	%r14d, %ebx
	movq	-40(%rbp), %rdi
	movl	8(%rdi), %r14d
	andl	$-16777216, %r14d       # imm = 0xFFFFFFFFFF000000
	shrl	$24, %r14d
	orl	%r14d, %ebx
	andl	$-16777216, %ebx        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %ebx
	orl	%ebx, %r11d
	movl	%r11d, -52(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	fwrite
	movl	$1, %r11d
	movl	%r11d, %esi
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	-40(%rbp), %rcx
	movl	8(%rcx), %r11d
	movl	%r11d, %edx
	movq	-24(%rbp), %rcx
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	fwrite
	movq	-40(%rbp), %rcx
	movl	8(%rcx), %r11d
	movl	%r11d, %ecx
	cmpq	%rcx, %rax
	je	.LBB22_2
# BB#1:                                 # %if.then
	movl	$0, -44(%rbp)
.LBB22_2:                               # %if.end
	xorl	%esi, %esi
	movq	-40(%rbp), %rdi
	callq	g_byte_array_set_size
	movl	-44(%rbp), %esi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	%esi, %eax
	addq	$112, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end22:
	.size	write_group_to_file, .Lfunc_end22-write_group_to_file
	.cfi_endproc

	.align	16, 0x90
	.type	add_tag_pointer,@function
add_tag_pointer:                        # @add_tag_pointer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp82:
	.cfi_def_cfa_offset 16
.Ltmp83:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp84:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movabsq	$.L.str.81, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movl	$0, -52(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	strstr
	movb	$1, %r10b
	cmpq	$0, %rax
	movb	%r10b, -53(%rbp)        # 1-byte Spill
	jne	.LBB23_2
# BB#1:                                 # %lor.rhs
	cmpl	$65535, -36(%rbp)       # imm = 0xFFFF
	setg	%al
	movb	%al, -53(%rbp)          # 1-byte Spill
.LBB23_2:                               # %lor.end
	movb	-53(%rbp), %al          # 1-byte Reload
	movl	$2, %edx
	leaq	-42(%rbp), %rcx
	andb	$1, %al
	movzbl	%al, %esi
	movl	%esi, -40(%rbp)
	movl	-12(%rbp), %esi
	movw	%si, %di
	movzwl	%di, %esi
	sarl	$8, %esi
	movw	%si, %di
	movzwl	%di, %esi
	movl	-12(%rbp), %r8d
	movw	%r8w, %di
	movzwl	%di, %r8d
	shll	$8, %r8d
	movw	%r8w, %di
	movzwl	%di, %r8d
	orl	%r8d, %esi
	movw	%si, %di
	movzwl	%di, %esi
	sarl	$8, %esi
	movw	%si, %di
	movzwl	%di, %esi
	movl	-12(%rbp), %r8d
	movw	%r8w, %di
	movzwl	%di, %r8d
	sarl	$8, %r8d
	movw	%r8w, %di
	movzwl	%di, %r8d
	movl	-12(%rbp), %r9d
	movw	%r9w, %di
	movzwl	%di, %r9d
	shll	$8, %r9d
	movw	%r9w, %di
	movzwl	%di, %r9d
	orl	%r9d, %r8d
	movw	%r8w, %di
	movzwl	%di, %r8d
	shll	$8, %r8d
	movw	%r8w, %di
	movzwl	%di, %r8d
	orl	%r8d, %esi
	movw	%si, %di
	movw	%di, -42(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rcx, %rsi
	callq	g_byte_array_append
	movl	$2, %edx
	leaq	-42(%rbp), %rcx
	movl	-16(%rbp), %r8d
	movw	%r8w, %r10w
	movzwl	%r10w, %r8d
	sarl	$8, %r8d
	movw	%r8w, %r10w
	movzwl	%r10w, %r8d
	movl	-16(%rbp), %r9d
	movw	%r9w, %r10w
	movzwl	%r10w, %r9d
	shll	$8, %r9d
	movw	%r9w, %r10w
	movzwl	%r10w, %r9d
	orl	%r9d, %r8d
	movw	%r8w, %r10w
	movzwl	%r10w, %r8d
	sarl	$8, %r8d
	movw	%r8w, %r10w
	movzwl	%r10w, %r8d
	movl	-16(%rbp), %r9d
	movw	%r9w, %r10w
	movzwl	%r10w, %r9d
	sarl	$8, %r9d
	movw	%r9w, %r10w
	movzwl	%r10w, %r9d
	movl	-16(%rbp), %r11d
	movw	%r11w, %r10w
	movzwl	%r10w, %r11d
	shll	$8, %r11d
	movw	%r11w, %r10w
	movzwl	%r10w, %r11d
	orl	%r11d, %r9d
	movw	%r9w, %r10w
	movzwl	%r10w, %r9d
	shll	$8, %r9d
	movw	%r9w, %r10w
	movzwl	%r10w, %r9d
	orl	%r9d, %r8d
	movw	%r8w, %r10w
	movw	%r10w, -42(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	g_byte_array_append
	movl	$2, %edx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_byte_array_append
	movl	$2, %edx
	movl	-36(%rbp), %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, %eax
	movl	%edx, -84(%rbp)         # 4-byte Spill
	cltd
	movl	-84(%rbp), %r8d         # 4-byte Reload
	idivl	%r8d
	cmpl	$0, %edx
	je	.LBB23_4
# BB#3:                                 # %if.then
	movl	$1, -52(%rbp)
.LBB23_4:                               # %if.end
	cmpl	$0, -40(%rbp)
	je	.LBB23_6
# BB#5:                                 # %if.then.71
	movabsq	$.L.str.80, %rsi
	movl	$2, %edx
	movq	-8(%rbp), %rdi
	callq	g_byte_array_append
	movl	$4, %edx
	leaq	-48(%rbp), %rsi
	movl	-36(%rbp), %ecx
	addl	-52(%rbp), %ecx
	andl	$255, %ecx
	shll	$24, %ecx
	movl	-36(%rbp), %r8d
	addl	-52(%rbp), %r8d
	andl	$65280, %r8d            # imm = 0xFF00
	shll	$8, %r8d
	orl	%r8d, %ecx
	movl	-36(%rbp), %r8d
	addl	-52(%rbp), %r8d
	andl	$16711680, %r8d         # imm = 0xFF0000
	shrl	$8, %r8d
	orl	%r8d, %ecx
	movl	-36(%rbp), %r8d
	addl	-52(%rbp), %r8d
	andl	$-16777216, %r8d        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %r8d
	orl	%r8d, %ecx
	andl	$255, %ecx
	shll	$24, %ecx
	movl	-36(%rbp), %r8d
	addl	-52(%rbp), %r8d
	andl	$255, %r8d
	shll	$24, %r8d
	movl	-36(%rbp), %r9d
	addl	-52(%rbp), %r9d
	andl	$65280, %r9d            # imm = 0xFF00
	shll	$8, %r9d
	orl	%r9d, %r8d
	movl	-36(%rbp), %r9d
	addl	-52(%rbp), %r9d
	andl	$16711680, %r9d         # imm = 0xFF0000
	shrl	$8, %r9d
	orl	%r9d, %r8d
	movl	-36(%rbp), %r9d
	addl	-52(%rbp), %r9d
	andl	$-16777216, %r9d        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %r9d
	orl	%r9d, %r8d
	andl	$65280, %r8d            # imm = 0xFF00
	shll	$8, %r8d
	orl	%r8d, %ecx
	movl	-36(%rbp), %r8d
	addl	-52(%rbp), %r8d
	andl	$255, %r8d
	shll	$24, %r8d
	movl	-36(%rbp), %r9d
	addl	-52(%rbp), %r9d
	andl	$65280, %r9d            # imm = 0xFF00
	shll	$8, %r9d
	orl	%r9d, %r8d
	movl	-36(%rbp), %r9d
	addl	-52(%rbp), %r9d
	andl	$16711680, %r9d         # imm = 0xFF0000
	shrl	$8, %r9d
	orl	%r9d, %r8d
	movl	-36(%rbp), %r9d
	addl	-52(%rbp), %r9d
	andl	$-16777216, %r9d        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %r9d
	orl	%r9d, %r8d
	andl	$16711680, %r8d         # imm = 0xFF0000
	shrl	$8, %r8d
	orl	%r8d, %ecx
	movl	-36(%rbp), %r8d
	addl	-52(%rbp), %r8d
	andl	$255, %r8d
	shll	$24, %r8d
	movl	-36(%rbp), %r9d
	addl	-52(%rbp), %r9d
	andl	$65280, %r9d            # imm = 0xFF00
	shll	$8, %r9d
	orl	%r9d, %r8d
	movl	-36(%rbp), %r9d
	addl	-52(%rbp), %r9d
	andl	$16711680, %r9d         # imm = 0xFF0000
	shrl	$8, %r9d
	orl	%r9d, %r8d
	movl	-36(%rbp), %r9d
	addl	-52(%rbp), %r9d
	andl	$-16777216, %r9d        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %r9d
	orl	%r9d, %r8d
	andl	$-16777216, %r8d        # imm = 0xFFFFFFFFFF000000
	shrl	$24, %r8d
	orl	%r8d, %ecx
	movl	%ecx, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_byte_array_append
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB23_7
.LBB23_6:                               # %if.else
	movl	$2, %edx
	leaq	-42(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	-52(%rbp), %ecx
	movw	%cx, %si
	movzwl	%si, %ecx
	sarl	$8, %ecx
	movw	%cx, %si
	movzwl	%si, %ecx
	movl	-36(%rbp), %edi
	addl	-52(%rbp), %edi
	movw	%di, %si
	movzwl	%si, %edi
	shll	$8, %edi
	movw	%di, %si
	movzwl	%si, %edi
	orl	%edi, %ecx
	movw	%cx, %si
	movzwl	%si, %ecx
	sarl	$8, %ecx
	movw	%cx, %si
	movzwl	%si, %ecx
	movl	-36(%rbp), %edi
	addl	-52(%rbp), %edi
	movw	%di, %si
	movzwl	%si, %edi
	sarl	$8, %edi
	movw	%di, %si
	movzwl	%si, %edi
	movl	-36(%rbp), %r8d
	addl	-52(%rbp), %r8d
	movw	%r8w, %si
	movzwl	%si, %r8d
	shll	$8, %r8d
	movw	%r8w, %si
	movzwl	%si, %r8d
	orl	%r8d, %edi
	movw	%di, %si
	movzwl	%si, %edi
	shll	$8, %edi
	movw	%di, %si
	movzwl	%si, %edi
	orl	%edi, %ecx
	movw	%cx, %si
	movw	%si, -42(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_byte_array_append
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB23_7:                               # %if.end.182
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-36(%rbp), %edx
	callq	g_byte_array_append
	cmpl	$0, -52(%rbp)
	movq	%rax, -120(%rbp)        # 8-byte Spill
	je	.LBB23_12
# BB#8:                                 # %if.then.185
	movabsq	$.L.str.82, %rdi
	movq	-24(%rbp), %rsi
	callq	strstr
	cmpq	$0, %rax
	je	.LBB23_10
# BB#9:                                 # %if.then.189
	movabsq	$.L.str.83, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	g_byte_array_append
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB23_11
.LBB23_10:                              # %if.else.191
	movabsq	$.L.str.84, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	g_byte_array_append
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB23_11:                              # %if.end.193
	jmp	.LBB23_12
.LBB23_12:                              # %if.end.194
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	add_tag_pointer, .Lfunc_end23-add_tag_pointer
	.cfi_endproc

	.align	16, 0x90
	.type	dicom_element_done,@function
dicom_element_done:                     # @dicom_element_done
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp85:
	.cfi_def_cfa_offset 16
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp87:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB24_6
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 24(%rax)
	je	.LBB24_3
# BB#2:                                 # %if.then.2
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_free
.LBB24_3:                               # %if.end
	jmp	.LBB24_4
.LBB24_4:                               # %do.body
	movl	$32, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rsi
	callq	g_slice_free1
# BB#5:                                 # %do.end
	jmp	.LBB24_6
.LBB24_6:                               # %if.end.3
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	dicom_element_done, .Lfunc_end24-dicom_element_done
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
	.asciz	"The name of the file to save"
	.size	.L.str.10, 29

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"file-dicom-load"
	.size	.L.str.11, 16

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"loads files of the dicom file format"
	.size	.L.str.12, 37

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Load a file in the DICOM standard format.The standard is defined at http://medical.nema.org/. The plug-in currently only supports reading images with uncompressed pixel sections."
	.size	.L.str.13, 179

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Dov Grobgeld"
	.size	.L.str.14, 13

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Dov Grobgeld <dov@imagic.weizmann.ac.il>"
	.size	.L.str.15, 41

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"2003"
	.size	.L.str.16, 5

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"DICOM image"
	.size	.L.str.17, 12

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"image/x-dcm"
	.size	.L.str.18, 12

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"dcm,dicom"
	.size	.L.str.19, 10

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.zero	1
	.size	.L.str.20, 1

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"128,string,DICM"
	.size	.L.str.21, 16

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"file-dicom-save"
	.size	.L.str.22, 16

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Save file in the DICOM file format"
	.size	.L.str.23, 35

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Save an image in the medical standard DICOM image formats. The standard is defined at http://medical.nema.org/. The file format is defined in section 10 of the standard. The files are saved uncompressed and the compulsory DICOM tags are filled with default dummy values."
	.size	.L.str.24, 271

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Digital Imaging and Communications in Medicine image"
	.size	.L.str.25, 53

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"RGB, GRAY"
	.size	.L.str.26, 10

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,80,16
	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.27, 20

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"UTF-8"
	.size	.L.str.28, 6

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"file-dicom"
	.size	.L.str.29, 11

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"DICOM"
	.size	.L.str.30, 6

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"rb"
	.size	.L.str.31, 3

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Could not open '%s' for reading: %s"
	.size	.L.str.32, 36

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Opening '%s'"
	.size	.L.str.33, 13

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"PAPYRUS"
	.size	.L.str.34, 8

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"'%s' is a PAPYRUS DICOM file.\nThis plug-in does not support this type yet."
	.size	.L.str.35, 75

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"DICM"
	.size	.L.str.36, 5

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"'%s' is not a DICOM file."
	.size	.L.str.37, 26

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"??"
	.size	.L.str.38, 3

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"OB"
	.size	.L.str.39, 3

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"OW"
	.size	.L.str.40, 3

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"SQ"
	.size	.L.str.41, 3

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"UN"
	.size	.L.str.42, 3

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"'%s' seems to have an incorrect value field length."
	.size	.L.str.43, 52

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"1.2.840.10008.1.2"
	.size	.L.str.44, 18

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"1.2.840.10008.1.2.1"
	.size	.L.str.45, 20

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"1.2.840.10008.1.2.2"
	.size	.L.str.46, 20

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"dcm/%04x-%04x-%s"
	.size	.L.str.47, 17

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"'%s' has a bpp of %d which GIMP cannot handle."
	.size	.L.str.48, 47

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"'%s' has a larger image size (%d x %d) than GIMP can handle."
	.size	.L.str.49, 61

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"'%s' has samples per pixel of %d which GIMP cannot handle."
	.size	.L.str.50, 59

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Background"
	.size	.L.str.51, 11

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Cannot save images with alpha channel."
	.size	.L.str.52, 39

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"MONOCHROME2"
	.size	.L.str.53, 12

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"RGB"
	.size	.L.str.54, 4

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Cannot operate on unknown image types."
	.size	.L.str.55, 39

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"%04d%02d%02d"
	.size	.L.str.56, 13

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"wb"
	.size	.L.str.57, 3

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Could not open '%s' for writing: %s"
	.size	.L.str.58, 36

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"US"
	.size	.L.str.59, 3

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"CS"
	.size	.L.str.60, 3

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"dcm"
	.size	.L.str.61, 4

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"0x%s"
	.size	.L.str.62, 5

	.type	.L.str.63,@object       # @.str.63
	.section	.rodata,"a",@progbits
.L.str.63:
	.asciz	"\000\001"
	.size	.L.str.63, 3

	.type	.L.str.64,@object       # @.str.64
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.64:
	.asciz	"UI"
	.size	.L.str.64, 3

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"SH"
	.size	.L.str.65, 3

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"GIMP Dicom Plugin 1.0"
	.size	.L.str.66, 22

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"ORIGINAL\\PRIMARY"
	.size	.L.str.67, 17

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"1.2.840.10008.5.1.4.1.1.7"
	.size	.L.str.68, 26

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"DA"
	.size	.L.str.69, 3

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"TM"
	.size	.L.str.70, 3

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"000000.000000"
	.size	.L.str.71, 14

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"MR"
	.size	.L.str.72, 3

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"WSD"
	.size	.L.str.73, 4

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"PN"
	.size	.L.str.74, 3

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"DOE^WILBER"
	.size	.L.str.75, 11

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"LO"
	.size	.L.str.76, 3

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"314159265"
	.size	.L.str.77, 10

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"IS"
	.size	.L.str.78, 3

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"1"
	.size	.L.str.79, 2

	.type	.L.str.80,@object       # @.str.80
	.section	.rodata,"a",@progbits
.L.str.80:
	.zero	3
	.size	.L.str.80, 3

	.type	.Ldicom_remove_gimp_specified_elements.remove,@object # @dicom_remove_gimp_specified_elements.remove
	.align	16
.Ldicom_remove_gimp_specified_elements.remove:
	.short	40                      # 0x28
	.short	2                       # 0x2
	.zero	3
	.zero	1
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.short	40                      # 0x28
	.short	4                       # 0x4
	.zero	3
	.zero	1
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.short	40                      # 0x28
	.short	16                      # 0x10
	.zero	3
	.zero	1
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.short	40                      # 0x28
	.short	17                      # 0x11
	.zero	3
	.zero	1
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.short	40                      # 0x28
	.short	256                     # 0x100
	.zero	3
	.zero	1
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.short	40                      # 0x28
	.short	257                     # 0x101
	.zero	3
	.zero	1
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.short	40                      # 0x28
	.short	258                     # 0x102
	.zero	3
	.zero	1
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.short	40                      # 0x28
	.short	259                     # 0x103
	.zero	3
	.zero	1
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.zero	32
	.size	.Ldicom_remove_gimp_specified_elements.remove, 288

	.type	.L.str.81,@object       # @.str.81
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.81:
	.asciz	"OB|OW|SQ|UN"
	.size	.L.str.81, 12

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"UI|OB"
	.size	.L.str.82, 6

	.type	.L.str.83,@object       # @.str.83
	.section	.rodata,"a",@progbits
.L.str.83:
	.zero	2
	.size	.L.str.83, 2

	.type	.L.str.84,@object       # @.str.84
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.84:
	.asciz	" "
	.size	.L.str.84, 2


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
