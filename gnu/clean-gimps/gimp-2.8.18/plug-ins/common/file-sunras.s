	.text
	.file	"file-sunras.bc"
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
	movabsq	$.L.str.14, %rax
	movabsq	$.L.str.15, %rcx
	movabsq	$.L.str.16, %r9
	movabsq	$.L.str.17, %rdx
	xorl	%esi, %esi
	movl	%esi, %r8d
	movl	$1, %esi
	movl	$3, %r10d
	movabsq	$query.load_args, %r11
	movabsq	$query.load_return_vals, %rbx
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%r8, -72(%rbp)          # 8-byte Spill
	movq	%rax, %r8
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$1, 32(%rsp)
	movq	%r11, 40(%rsp)
	movq	%rbx, 48(%rsp)
	movl	%r10d, -76(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.13, %rdi
	movabsq	$.L.str.18, %rsi
	callq	gimp_register_file_handler_mime
	movabsq	$.L.str.13, %rdi
	movabsq	$.L.str.19, %rsi
	movabsq	$.L.str.20, %rdx
	movabsq	$.L.str.21, %rcx
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	gimp_register_magic_load_handler
	movabsq	$.L.str.22, %rdi
	movabsq	$.L.str.23, %rsi
	movabsq	$.L.str.24, %rdx
	movabsq	$.L.str.15, %rcx
	movabsq	$.L.str.16, %r9
	movabsq	$.L.str.17, %r8
	movabsq	$.L.str.25, %r11
	movl	$1, %r10d
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
	movq	%r11, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$6, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%rbx, 40(%rsp)
	movq	$0, 48(%rsp)
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movq	%r14, -112(%rbp)        # 8-byte Spill
	movl	%r12d, -116(%rbp)       # 4-byte Spill
	movl	%r15d, -120(%rbp)       # 4-byte Spill
	movl	%r10d, -124(%rbp)       # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.22, %rdi
	movabsq	$.L.str.18, %rsi
	callq	gimp_register_file_handler_mime
	movabsq	$.L.str.22, %rdi
	movabsq	$.L.str.19, %rsi
	movabsq	$.L.str.20, %rdx
	movl	%eax, -128(%rbp)        # 4-byte Spill
	callq	gimp_register_save_handler
	movl	%eax, -132(%rbp)        # 4-byte Spill
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
	movabsq	$.L.str.26, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.26, %rdi
	movabsq	$.L.str.27, %rsi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.26, %rdi
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
	movl	$.L.str.13, %edx
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
	movl	$.L.str.22, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_31
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
	movabsq	$.L.str.28, %rdi
	xorl	%esi, %esi
	callq	gimp_ui_init
	leaq	-52(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	movabsq	$.L.str.29, %rdx
	movl	$7, %ecx
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
	movabsq	$.L.str.22, %rdi
	movabsq	$psvals, %rax
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
	cmpl	$6, -12(%rbp)
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
	movl	%eax, psvals
.LBB1_20:                               # %if.end.37
	jmp	.LBB1_23
.LBB1_21:                               # %sw.bb.38
	movabsq	$.L.str.22, %rdi
	movabsq	$psvals, %rax
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
	movabsq	$.L.str.22, %rdi
	movabsq	$psvals, %rax
	movl	$4, %edx
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
	subq	$336, %rsp              # imm = 0x150
	movabsq	$.L.str.30, %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	$0, -112(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	fopen
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.31, %rdi
	movl	%eax, -128(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	-124(%rbp), %esi        # 4-byte Reload
	movl	-128(%rbp), %edx        # 4-byte Reload
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	-144(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB3_35
.LBB3_2:                                # %if.end
	leaq	-104(%rbp), %rsi
	movl	$1, read_msb_first
	movq	-40(%rbp), %rdi
	callq	read_sun_header
	cmpq	$1504078485, -104(%rbp) # imm = 0x59A66A95
	je	.LBB3_4
# BB#3:                                 # %if.then.8
	movq	-24(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.32, %rdi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$24, %edx
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movl	-156(%rbp), %esi        # 4-byte Reload
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movq	-40(%rbp), %rdi
	callq	fclose
	movl	$-1, -4(%rbp)
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB3_35
.LBB3_4:                                # %if.end.13
	cmpq	$0, -64(%rbp)
	jb	.LBB3_6
# BB#5:                                 # %lor.lhs.false
	cmpq	$5, -64(%rbp)
	jbe	.LBB3_7
.LBB3_6:                                # %if.then.17
	movq	-24(%rbp), %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.34, %rdi
	movl	%eax, -188(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$24, %edx
	movabsq	$.L.str.33, %rcx
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movl	-188(%rbp), %esi        # 4-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movq	-40(%rbp), %rdi
	callq	fclose
	movl	$-1, -4(%rbp)
	movl	%eax, -192(%rbp)        # 4-byte Spill
	jmp	.LBB3_35
.LBB3_7:                                # %if.end.21
	cmpq	$0, -48(%rbp)
	jb	.LBB3_9
# BB#8:                                 # %lor.lhs.false.23
	cmpq	$768, -48(%rbp)         # imm = 0x300
	jbe	.LBB3_10
.LBB3_9:                                # %if.then.26
	movabsq	$.L.str.35, %rdi
	movb	$0, %al
	callq	g_message
	callq	gimp_quit
.LBB3_10:                               # %if.end.27
	cmpq	$1, -56(%rbp)
	jne	.LBB3_15
# BB#11:                                # %land.lhs.true
	cmpq	$0, -48(%rbp)
	jbe	.LBB3_15
# BB#12:                                # %if.then.31
	movl	$1, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	g_malloc_n
	leaq	-104(%rbp), %rsi
	movq	%rax, -112(%rbp)
	movq	-40(%rbp), %rdi
	movq	-112(%rbp), %rdx
	callq	read_sun_cols
	cmpq	$1504078485, -104(%rbp) # imm = 0x59A66A95
	je	.LBB3_14
# BB#13:                                # %if.then.36
	movabsq	$.L.str.36, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	movq	-40(%rbp), %rdi
	callq	fclose
	movq	-112(%rbp), %rdi
	movl	%eax, -204(%rbp)        # 4-byte Spill
	callq	g_free
	movl	$-1, -4(%rbp)
	jmp	.LBB3_35
.LBB3_14:                               # %if.end.40
	jmp	.LBB3_18
.LBB3_15:                               # %if.else
	cmpq	$0, -48(%rbp)
	jbe	.LBB3_17
# BB#16:                                # %if.then.43
	movabsq	$.L.str.37, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	xorl	%edx, %edx
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rcx
	addq	$32, %rcx
	movq	%rcx, %rsi
	callq	fseek
	movl	%eax, -208(%rbp)        # 4-byte Spill
.LBB3_17:                               # %if.end.47
	jmp	.LBB3_18
.LBB3_18:                               # %if.end.48
	cmpq	$0, -96(%rbp)
	ja	.LBB3_20
# BB#19:                                # %if.then.50
	movabsq	$.L.str.38, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	movq	-40(%rbp), %rdi
	callq	fclose
	movl	$-1, -4(%rbp)
	movl	%eax, -220(%rbp)        # 4-byte Spill
	jmp	.LBB3_35
.LBB3_20:                               # %if.end.54
	cmpq	$262144, -96(%rbp)      # imm = 0x40000
	jbe	.LBB3_22
# BB#21:                                # %if.then.57
	movabsq	$.L.str.39, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	movq	-40(%rbp), %rdi
	callq	fclose
	movl	$-1, -4(%rbp)
	movl	%eax, -236(%rbp)        # 4-byte Spill
	jmp	.LBB3_35
.LBB3_22:                               # %if.end.61
	cmpq	$0, -88(%rbp)
	ja	.LBB3_24
# BB#23:                                # %if.then.63
	movabsq	$.L.str.40, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	movq	-40(%rbp), %rdi
	callq	fclose
	movl	$-1, -4(%rbp)
	movl	%eax, -252(%rbp)        # 4-byte Spill
	jmp	.LBB3_35
.LBB3_24:                               # %if.end.67
	cmpq	$262144, -88(%rbp)      # imm = 0x40000
	jbe	.LBB3_26
# BB#25:                                # %if.then.70
	movabsq	$.L.str.41, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	movq	-40(%rbp), %rdi
	callq	fclose
	movl	$-1, -4(%rbp)
	movl	%eax, -268(%rbp)        # 4-byte Spill
	jmp	.LBB3_35
.LBB3_26:                               # %if.end.74
	movl	$.L.str.42, %eax
	movl	%eax, %edi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	%dl, %al
	callq	gimp_progress_init_printf
	movq	-80(%rbp), %rsi
	movq	%rsi, %rdi
	subq	$1, %rdi
	movl	%eax, -284(%rbp)        # 4-byte Spill
	movq	%rsi, -296(%rbp)        # 8-byte Spill
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	je	.LBB3_27
	jmp	.LBB3_36
.LBB3_36:                               # %if.end.74
	movq	-296(%rbp), %rax        # 8-byte Reload
	subq	$8, %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	je	.LBB3_28
	jmp	.LBB3_37
.LBB3_37:                               # %if.end.74
	movq	-296(%rbp), %rax        # 8-byte Reload
	subq	$24, %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	je	.LBB3_29
	jmp	.LBB3_38
.LBB3_38:                               # %if.end.74
	movq	-296(%rbp), %rax        # 8-byte Reload
	subq	$32, %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	je	.LBB3_30
	jmp	.LBB3_31
.LBB3_27:                               # %sw.bb
	leaq	-104(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-112(%rbp), %rcx
	callq	load_sun_d1
	movl	%eax, -28(%rbp)
	jmp	.LBB3_32
.LBB3_28:                               # %sw.bb.79
	leaq	-104(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-112(%rbp), %rcx
	callq	load_sun_d8
	movl	%eax, -28(%rbp)
	jmp	.LBB3_32
.LBB3_29:                               # %sw.bb.81
	leaq	-104(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-112(%rbp), %rcx
	callq	load_sun_d24
	movl	%eax, -28(%rbp)
	jmp	.LBB3_32
.LBB3_30:                               # %sw.bb.83
	leaq	-104(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-112(%rbp), %rcx
	callq	load_sun_d32
	movl	%eax, -28(%rbp)
	jmp	.LBB3_32
.LBB3_31:                               # %sw.default
	movl	$-1, -28(%rbp)
.LBB3_32:                               # %sw.epilog
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-40(%rbp), %rdi
	movl	%eax, -332(%rbp)        # 4-byte Spill
	callq	fclose
	movq	-112(%rbp), %rdi
	movl	%eax, -336(%rbp)        # 4-byte Spill
	callq	g_free
	cmpl	$-1, -28(%rbp)
	jne	.LBB3_34
# BB#33:                                # %if.then.88
	movabsq	$.L.str.43, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$-1, -4(%rbp)
	jmp	.LBB3_35
.LBB3_34:                               # %if.end.90
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB3_35:                               # %return
	movl	-4(%rbp), %eax
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end3:
	.size	load_image, .Lfunc_end3-load_image
	.cfi_endproc

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
	pushq	%rbx
	subq	$152, %rsp
.Ltmp20:
	.cfi_offset %rbx, -24
	movabsq	$.L.str.29, %rdi
	callq	gettext
	movabsq	$.L.str.28, %rsi
	movabsq	$.L.str.22, %rdx
	movq	%rax, %rdi
	callq	gimp_export_dialog_new
	movabsq	$.L.str.47, %rdi
	movq	%rax, -16(%rbp)
	callq	gettext
	movabsq	$.L.str.48, %rdi
	movl	psvals, %r8d
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movl	%r8d, -44(%rbp)         # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.49, %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	movabsq	$gimp_radio_button_update, %rdx
	movabsq	$psvals, %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	xorl	%r8d, %r8d
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%r9, %rsi
	movq	-64(%rbp), %r10         # 8-byte Reload
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	%r10, %rcx
	movl	-44(%rbp), %r11d        # 4-byte Reload
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r11d, %r8d
	movq	-56(%rbp), %r9          # 8-byte Reload
	movl	$1, (%rsp)
	movq	$0, 8(%rsp)
	movq	%rax, 16(%rsp)
	movl	$0, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	callq	gimp_int_radio_group_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-16(%rbp), %rdi
	callq	gimp_export_dialog_get_content_area
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r8d
	xorl	%r11d, %r11d
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	movl	%r11d, %r8d
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-28(%rbp), %eax
	addq	$152, %rsp
	popq	%rbx
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
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp23:
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
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.50, %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	gettext
	movl	$24, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	-60(%rbp), %esi         # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_17
.LBB5_2:                                # %if.end
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB5_3
	jmp	.LBB5_18
.LBB5_18:                               # %if.end
	movl	-64(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB5_3
	jmp	.LBB5_19
.LBB5_19:                               # %if.end
	movl	-64(%rbp), %eax         # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jne	.LBB5_4
	jmp	.LBB5_3
.LBB5_3:                                # %sw.bb
	jmp	.LBB5_5
.LBB5_4:                                # %sw.default
	movabsq	$.L.str.51, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$0, -4(%rbp)
	jmp	.LBB5_17
.LBB5_5:                                # %sw.epilog
	movabsq	$.L.str.52, %rsi
	movq	-16(%rbp), %rdi
	callq	fopen
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB5_7
# BB#6:                                 # %if.then.8
	movq	-32(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.53, %rdi
	movl	%eax, -88(%rbp)         # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movl	-84(%rbp), %esi         # 4-byte Reload
	movl	-88(%rbp), %edx         # 4-byte Reload
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	-104(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB5_17
.LBB5_7:                                # %if.end.16
	movabsq	$.L.str.54, %rdi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_progress_init_printf
	cmpl	$4, -44(%rbp)
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jne	.LBB5_9
# BB#8:                                 # %if.then.20
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	psvals, %r8d
	callq	save_index
	movl	%eax, -48(%rbp)
	jmp	.LBB5_16
.LBB5_9:                                # %if.else
	cmpl	$2, -44(%rbp)
	jne	.LBB5_11
# BB#10:                                # %if.then.23
	movl	$1, %ecx
	movq	-40(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	psvals, %r8d
	callq	save_index
	movl	%eax, -48(%rbp)
	jmp	.LBB5_15
.LBB5_11:                               # %if.else.25
	cmpl	$0, -44(%rbp)
	jne	.LBB5_13
# BB#12:                                # %if.then.27
	movq	-40(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	psvals, %ecx
	callq	save_rgb
	movl	%eax, -48(%rbp)
	jmp	.LBB5_14
.LBB5_13:                               # %if.else.29
	movl	$0, -48(%rbp)
.LBB5_14:                               # %if.end.30
	jmp	.LBB5_15
.LBB5_15:                               # %if.end.31
	jmp	.LBB5_16
.LBB5_16:                               # %if.end.32
	movq	-40(%rbp), %rdi
	callq	fclose
	movl	-48(%rbp), %ecx
	movl	%ecx, -4(%rbp)
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB5_17:                               # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	save_image, .Lfunc_end5-save_image
	.cfi_endproc

	.align	16, 0x90
	.type	read_sun_header,@function
read_sun_header:                        # @read_sun_header
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
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movl	$0, -20(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-20(%rbp), %rax
	cmpq	$8, %rax
	jae	.LBB6_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	leaq	-24(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	read_card32
	movq	-32(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$8, %rdi
	movq	%rdi, -32(%rbp)
	movq	%rax, (%rsi)
	cmpl	$0, -24(%rbp)
	je	.LBB6_4
# BB#3:                                 # %if.then
	jmp	.LBB6_6
.LBB6_4:                                # %if.end
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_5
.LBB6_5:                                # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB6_1
.LBB6_6:                                # %for.end
	cmpl	$0, -24(%rbp)
	je	.LBB6_8
# BB#7:                                 # %if.then.3
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
.LBB6_8:                                # %if.end.4
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	read_sun_header, .Lfunc_end6-read_sun_header
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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

	.align	16, 0x90
	.type	read_sun_cols,@function
read_sun_cols:                          # @read_sun_cols
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
	subq	$32, %rsp
	movl	$3, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	56(%rdx), %rax
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	divq	%rcx
	movl	%eax, %r8d
	movl	%r8d, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jg	.LBB8_2
# BB#1:                                 # %if.then
	movl	$1, -32(%rbp)
	jmp	.LBB8_3
.LBB8_2:                                # %if.else
	movl	$3, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	movslq	-28(%rbp), %rdx
	movq	-8(%rbp), %rcx
	callq	fread
	movslq	-28(%rbp), %rcx
	cmpq	%rcx, %rax
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %r9d
	movl	%r9d, -32(%rbp)
.LBB8_3:                                # %if.end
	cmpl	$0, -32(%rbp)
	je	.LBB8_5
# BB#4:                                 # %if.then.6
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
.LBB8_5:                                # %if.end.7
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	read_sun_cols, .Lfunc_end8-read_sun_cols
	.cfi_endproc

	.align	16, 0x90
	.type	load_sun_d1,@function
load_sun_d1:                            # @load_sun_d1
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
	pushq	%r14
	pushq	%rbx
	subq	$2352, %rsp             # imm = 0x930
.Ltmp36:
	.cfi_offset %rbx, -32
.Ltmp37:
	.cfi_offset %r14, -24
	movl	$2, %eax
	leaq	-100(%rbp), %r8
	leaq	-160(%rbp), %r9
	leaq	-152(%rbp), %r10
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	.Lload_sun_d1.sun_bwcolmap, %r11d
	movl	%r11d, -2278(%rbp)
	movw	.Lload_sun_d1.sun_bwcolmap+4, %bx
	movw	%bx, -2274(%rbp)
	movl	$0, -2284(%rbp)
	movq	-40(%rbp), %rcx
	cmpq	$2, 40(%rcx)
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %r11d
	movl	%r11d, -2288(%rbp)
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	movl	%ecx, %r11d
	movl	%r11d, -56(%rbp)
	movq	-40(%rbp), %rcx
	movq	16(%rcx), %rcx
	movl	%ecx, %r11d
	movl	%r11d, -60(%rbp)
	movq	-24(%rbp), %rdi
	movl	-56(%rbp), %esi
	movl	-60(%rbp), %edx
	movl	%eax, %ecx
	movq	%r10, (%rsp)
	callq	create_new_image
	movl	%eax, -104(%rbp)
	callq	gimp_tile_height
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %eax
	imull	-56(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc
	movq	%rax, -96(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movl	-104(%rbp), %edi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	set_color_table
	jmp	.LBB9_3
.LBB9_2:                                # %if.else
	leaq	-2272(%rbp), %rax
	leaq	-2278(%rbp), %rdx
	movl	$64, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movq	-40(%rbp), %r8
	movq	%rsi, -2296(%rbp)       # 8-byte Spill
	movq	%r8, %rsi
	movq	-2296(%rbp), %r8        # 8-byte Reload
	movq	%rdx, -2304(%rbp)       # 8-byte Spill
	movq	%r8, %rdx
	movq	%rax, -2312(%rbp)       # 8-byte Spill
	callq	memcpy
	movq	$2, -2224(%rbp)
	movq	$6, -2216(%rbp)
	movl	-104(%rbp), %edi
	movq	-2312(%rbp), %rsi       # 8-byte Reload
	movq	-2304(%rbp), %rdx       # 8-byte Reload
	callq	set_color_table
.LBB9_3:                                # %if.end
	leaq	-2208(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	$0, -80(%rbp)
.LBB9_4:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_6 Depth 2
	cmpl	$256, -80(%rbp)         # imm = 0x100
	jge	.LBB9_11
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB9_4 Depth=1
	movl	$7, -76(%rbp)
.LBB9_6:                                # %for.cond.11
                                        #   Parent Loop BB9_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -76(%rbp)
	jl	.LBB9_9
# BB#7:                                 # %for.body.14
                                        #   in Loop: Header=BB9_6 Depth=2
	movl	$1, %eax
	movl	-80(%rbp), %ecx
	movl	-76(%rbp), %edx
	movl	%ecx, -2316(%rbp)       # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	-2316(%rbp), %edx       # 4-byte Reload
	andl	%eax, %edx
	cmpl	$0, %edx
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movb	%al, %cl
	movq	-88(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, -88(%rbp)
	movb	%cl, (%rsi)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB9_6 Depth=2
	movl	-76(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB9_6
.LBB9_9:                                # %for.end
                                        #   in Loop: Header=BB9_4 Depth=1
	jmp	.LBB9_10
.LBB9_10:                               # %for.inc.18
                                        #   in Loop: Header=BB9_4 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB9_4
.LBB9_11:                               # %for.end.19
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	addq	$7, %rax
	shrq	$3, %rax
	andq	$1, %rax
	movl	%eax, %ecx
	movl	%ecx, -64(%rbp)
	cmpl	$0, -2288(%rbp)
	je	.LBB9_13
# BB#12:                                # %if.then.22
	movq	-32(%rbp), %rdi
	callq	rle_startread
.LBB9_13:                               # %if.end.23
	movq	-96(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -76(%rbp)
.LBB9_14:                               # %for.cond.24
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_16 Depth 2
	movl	-76(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB9_51
# BB#15:                                # %for.body.27
                                        #   in Loop: Header=BB9_14 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, -80(%rbp)
.LBB9_16:                               # %while.cond
                                        #   Parent Loop BB9_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$8, -80(%rbp)
	jl	.LBB9_26
# BB#17:                                # %while.body
                                        #   in Loop: Header=BB9_16 Depth=2
	cmpl	$0, -2288(%rbp)
	je	.LBB9_22
# BB#18:                                # %cond.true
                                        #   in Loop: Header=BB9_16 Depth=2
	cmpl	$0, rlebuf+4
	jle	.LBB9_20
# BB#19:                                # %cond.true.33
                                        #   in Loop: Header=BB9_16 Depth=2
	movl	rlebuf+4, %eax
	addl	$-1, %eax
	movl	%eax, rlebuf+4
	movl	rlebuf, %eax
	movl	%eax, -2320(%rbp)       # 4-byte Spill
	jmp	.LBB9_21
.LBB9_20:                               # %cond.false
                                        #   in Loop: Header=BB9_16 Depth=2
	movq	-32(%rbp), %rdi
	callq	rle_fgetc
	movl	%eax, -2320(%rbp)       # 4-byte Spill
.LBB9_21:                               # %cond.end
                                        #   in Loop: Header=BB9_16 Depth=2
	movl	-2320(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2324(%rbp)       # 4-byte Spill
	jmp	.LBB9_23
.LBB9_22:                               # %cond.false.36
                                        #   in Loop: Header=BB9_16 Depth=2
	movq	-32(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -2324(%rbp)       # 4-byte Spill
.LBB9_23:                               # %cond.end.38
                                        #   in Loop: Header=BB9_16 Depth=2
	movl	-2324(%rbp), %eax       # 4-byte Reload
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jge	.LBB9_25
# BB#24:                                # %if.then.42
                                        #   in Loop: Header=BB9_16 Depth=2
	movl	$1, -2284(%rbp)
	movl	$0, -52(%rbp)
.LBB9_25:                               # %if.end.43
                                        #   in Loop: Header=BB9_16 Depth=2
	movq	-88(%rbp), %rax
	movl	-52(%rbp), %ecx
	shll	$3, %ecx
	movslq	%ecx, %rdx
	movq	-2208(%rbp,%rdx), %rdx
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -88(%rbp)
	movl	-80(%rbp), %ecx
	subl	$8, %ecx
	movl	%ecx, -80(%rbp)
	jmp	.LBB9_16
.LBB9_26:                               # %while.end
                                        #   in Loop: Header=BB9_14 Depth=1
	cmpl	$0, -80(%rbp)
	jle	.LBB9_36
# BB#27:                                # %if.then.49
                                        #   in Loop: Header=BB9_14 Depth=1
	cmpl	$0, -2288(%rbp)
	je	.LBB9_32
# BB#28:                                # %cond.true.51
                                        #   in Loop: Header=BB9_14 Depth=1
	cmpl	$0, rlebuf+4
	jle	.LBB9_30
# BB#29:                                # %cond.true.54
                                        #   in Loop: Header=BB9_14 Depth=1
	movl	rlebuf+4, %eax
	addl	$-1, %eax
	movl	%eax, rlebuf+4
	movl	rlebuf, %eax
	movl	%eax, -2328(%rbp)       # 4-byte Spill
	jmp	.LBB9_31
.LBB9_30:                               # %cond.false.56
                                        #   in Loop: Header=BB9_14 Depth=1
	movq	-32(%rbp), %rdi
	callq	rle_fgetc
	movl	%eax, -2328(%rbp)       # 4-byte Spill
.LBB9_31:                               # %cond.end.58
                                        #   in Loop: Header=BB9_14 Depth=1
	movl	-2328(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2332(%rbp)       # 4-byte Spill
	jmp	.LBB9_33
.LBB9_32:                               # %cond.false.60
                                        #   in Loop: Header=BB9_14 Depth=1
	movq	-32(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -2332(%rbp)       # 4-byte Spill
.LBB9_33:                               # %cond.end.62
                                        #   in Loop: Header=BB9_14 Depth=1
	movl	-2332(%rbp), %eax       # 4-byte Reload
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	jge	.LBB9_35
# BB#34:                                # %if.then.66
                                        #   in Loop: Header=BB9_14 Depth=1
	movl	$1, -2284(%rbp)
	movl	$0, -52(%rbp)
.LBB9_35:                               # %if.end.67
                                        #   in Loop: Header=BB9_14 Depth=1
	leaq	-2208(%rbp), %rax
	movq	-88(%rbp), %rdi
	movl	-52(%rbp), %ecx
	shll	$3, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movslq	-80(%rbp), %rdx
	movq	%rax, %rsi
	callq	memcpy
	movl	-80(%rbp), %ecx
	movq	-88(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
.LBB9_36:                               # %if.end.75
                                        #   in Loop: Header=BB9_14 Depth=1
	cmpl	$0, -64(%rbp)
	je	.LBB9_44
# BB#37:                                # %if.then.77
                                        #   in Loop: Header=BB9_14 Depth=1
	cmpl	$0, -2288(%rbp)
	je	.LBB9_42
# BB#38:                                # %cond.true.79
                                        #   in Loop: Header=BB9_14 Depth=1
	cmpl	$0, rlebuf+4
	jle	.LBB9_40
# BB#39:                                # %cond.true.82
                                        #   in Loop: Header=BB9_14 Depth=1
	movl	rlebuf+4, %eax
	addl	$-1, %eax
	movl	%eax, rlebuf+4
	movl	rlebuf, %eax
	movl	%eax, -2336(%rbp)       # 4-byte Spill
	jmp	.LBB9_41
.LBB9_40:                               # %cond.false.84
                                        #   in Loop: Header=BB9_14 Depth=1
	movq	-32(%rbp), %rdi
	callq	rle_fgetc
	movl	%eax, -2336(%rbp)       # 4-byte Spill
.LBB9_41:                               # %cond.end.86
                                        #   in Loop: Header=BB9_14 Depth=1
	movl	-2336(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2340(%rbp)       # 4-byte Spill
	jmp	.LBB9_43
.LBB9_42:                               # %cond.false.88
                                        #   in Loop: Header=BB9_14 Depth=1
	movq	-32(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -2340(%rbp)       # 4-byte Spill
.LBB9_43:                               # %cond.end.90
                                        #   in Loop: Header=BB9_14 Depth=1
	movl	-2340(%rbp), %eax       # 4-byte Reload
	cmpl	$0, %eax
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	orl	-2284(%rbp), %eax
	movl	%eax, -2284(%rbp)
.LBB9_44:                               # %if.end.94
                                        #   in Loop: Header=BB9_14 Depth=1
	movl	$20, %eax
	movl	-68(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -68(%rbp)
	movl	-76(%rbp), %ecx
	movl	%eax, -2344(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-2344(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB9_46
# BB#45:                                # %if.then.99
                                        #   in Loop: Header=BB9_14 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	-60(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -2348(%rbp)       # 4-byte Spill
.LBB9_46:                               # %if.end.105
                                        #   in Loop: Header=BB9_14 Depth=1
	movl	-68(%rbp), %eax
	cmpl	-72(%rbp), %eax
	je	.LBB9_48
# BB#47:                                # %lor.lhs.false
                                        #   in Loop: Header=BB9_14 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	cmpl	-60(%rbp), %eax
	jne	.LBB9_49
.LBB9_48:                               # %if.then.111
                                        #   in Loop: Header=BB9_14 Depth=1
	leaq	-152(%rbp), %rdi
	xorl	%edx, %edx
	movq	-96(%rbp), %rsi
	movl	-76(%rbp), %eax
	subl	-68(%rbp), %eax
	addl	$1, %eax
	movl	-56(%rbp), %r8d
	movl	-68(%rbp), %r9d
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_set_rect
	movl	$0, -68(%rbp)
	movq	-96(%rbp), %rsi
	movq	%rsi, -88(%rbp)
.LBB9_49:                               # %if.end.114
                                        #   in Loop: Header=BB9_14 Depth=1
	jmp	.LBB9_50
.LBB9_50:                               # %for.inc.115
                                        #   in Loop: Header=BB9_14 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB9_14
.LBB9_51:                               # %for.end.117
	movq	-96(%rbp), %rdi
	callq	g_free
	cmpl	$0, -2284(%rbp)
	je	.LBB9_53
# BB#52:                                # %if.then.119
	movabsq	$.L.str.44, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
.LBB9_53:                               # %if.end.121
	movq	-160(%rbp), %rdi
	callq	gimp_drawable_flush
	movl	-104(%rbp), %eax
	addq	$2352, %rsp             # imm = 0x930
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end9:
	.size	load_sun_d1, .Lfunc_end9-load_sun_d1
	.cfi_endproc

	.align	16, 0x90
	.type	load_sun_d8,@function
load_sun_d8:                            # @load_sun_d8
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
	subq	$192, %rsp
	movl	$3, %eax
	movl	%eax, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	$0, -156(%rbp)
	movq	-24(%rbp), %rcx
	cmpq	$2, 40(%rcx)
	sete	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %eax
	movl	%eax, -160(%rbp)
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movl	%ecx, %eax
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rcx
	movl	%ecx, %eax
	movl	%eax, -40(%rbp)
	movq	-24(%rbp), %rcx
	movq	56(%rcx), %rax
	xorl	%r10d, %r10d
	movl	%r10d, %edx
	divq	%r8
	movl	%eax, %r10d
	movl	%r10d, -60(%rbp)
	movl	$1, -56(%rbp)
	cmpl	$0, -60(%rbp)
	jle	.LBB10_11
# BB#1:                                 # %land.lhs.true
	cmpq	$0, -32(%rbp)
	je	.LBB10_11
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
.LBB10_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	.LBB10_10
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB10_3 Depth=1
	movslq	-52(%rbp), %rax
	movq	-32(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	-52(%rbp), %edx
	jne	.LBB10_7
# BB#5:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	-52(%rbp), %eax
	addl	-60(%rbp), %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	-52(%rbp), %eax
	jne	.LBB10_7
# BB#6:                                 # %lor.lhs.false.18
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	-52(%rbp), %eax
	movl	-60(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cmpl	-52(%rbp), %eax
	je	.LBB10_8
.LBB10_7:                               # %if.then.25
	movl	$0, -56(%rbp)
	jmp	.LBB10_10
.LBB10_8:                               # %if.end
                                        #   in Loop: Header=BB10_3 Depth=1
	jmp	.LBB10_9
.LBB10_9:                               # %for.inc
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB10_3
.LBB10_10:                              # %for.end
	jmp	.LBB10_11
.LBB10_11:                              # %if.end.26
	leaq	-92(%rbp), %r8
	leaq	-152(%rbp), %r9
	leaq	-144(%rbp), %rax
	movl	$2, %ecx
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %r10d
	cmpl	$0, -56(%rbp)
	cmovnel	%edx, %ecx
	movl	%r10d, %edx
	movq	%rax, (%rsp)
	callq	create_new_image
	movl	%eax, -96(%rbp)
	callq	gimp_tile_height
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	imull	-36(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc
	movq	%rax, -88(%rbp)
	cmpl	$0, -56(%rbp)
	jne	.LBB10_13
# BB#12:                                # %if.then.32
	movl	-96(%rbp), %edi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	set_color_table
.LBB10_13:                              # %if.end.33
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	andq	$1, %rax
	movl	%eax, %ecx
	movl	%ecx, -44(%rbp)
	cmpl	$0, -160(%rbp)
	je	.LBB10_15
# BB#14:                                # %if.then.37
	movq	-16(%rbp), %rdi
	callq	rle_startread
.LBB10_15:                              # %if.end.38
	movq	-88(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	$0, -64(%rbp)
	movl	$0, -48(%rbp)
.LBB10_16:                              # %for.cond.39
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB10_35
# BB#17:                                # %for.body.42
                                        #   in Loop: Header=BB10_16 Depth=1
	xorl	%esi, %esi
	movq	-80(%rbp), %rdi
	movslq	-36(%rbp), %rdx
	callq	memset
	cmpl	$0, -160(%rbp)
	je	.LBB10_19
# BB#18:                                # %cond.true
                                        #   in Loop: Header=BB10_16 Depth=1
	movl	$1, %esi
	movq	-80(%rbp), %rdi
	movl	-36(%rbp), %edx
	movq	-16(%rbp), %rcx
	callq	rle_fread
	movslq	%eax, %rcx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB10_20
.LBB10_19:                              # %cond.false
                                        #   in Loop: Header=BB10_16 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movq	-80(%rbp), %rdi
	movslq	-36(%rbp), %rdx
	movq	-16(%rbp), %rcx
	callq	fread
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB10_20:                              # %cond.end
                                        #   in Loop: Header=BB10_16 Depth=1
	movq	-168(%rbp), %rax        # 8-byte Reload
	movslq	-36(%rbp), %rcx
	cmpq	%rcx, %rax
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	orl	-156(%rbp), %esi
	movl	%esi, -156(%rbp)
	cmpl	$0, -44(%rbp)
	je	.LBB10_28
# BB#21:                                # %if.then.54
                                        #   in Loop: Header=BB10_16 Depth=1
	cmpl	$0, -160(%rbp)
	je	.LBB10_26
# BB#22:                                # %cond.true.56
                                        #   in Loop: Header=BB10_16 Depth=1
	cmpl	$0, rlebuf+4
	jle	.LBB10_24
# BB#23:                                # %cond.true.59
                                        #   in Loop: Header=BB10_16 Depth=1
	movl	rlebuf+4, %eax
	addl	$-1, %eax
	movl	%eax, rlebuf+4
	movl	rlebuf, %eax
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB10_25
.LBB10_24:                              # %cond.false.60
                                        #   in Loop: Header=BB10_16 Depth=1
	movq	-16(%rbp), %rdi
	callq	rle_fgetc
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB10_25:                              # %cond.end.62
                                        #   in Loop: Header=BB10_16 Depth=1
	movl	-172(%rbp), %eax        # 4-byte Reload
	movl	%eax, -176(%rbp)        # 4-byte Spill
	jmp	.LBB10_27
.LBB10_26:                              # %cond.false.64
                                        #   in Loop: Header=BB10_16 Depth=1
	movq	-16(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -176(%rbp)        # 4-byte Spill
.LBB10_27:                              # %cond.end.66
                                        #   in Loop: Header=BB10_16 Depth=1
	movl	-176(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	orl	-156(%rbp), %eax
	movl	%eax, -156(%rbp)
.LBB10_28:                              # %if.end.71
                                        #   in Loop: Header=BB10_16 Depth=1
	movl	$20, %eax
	movl	-36(%rbp), %ecx
	movq	-80(%rbp), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -80(%rbp)
	movl	-64(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -64(%rbp)
	movl	-48(%rbp), %ecx
	movl	%eax, -180(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-180(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB10_30
# BB#29:                                # %if.then.76
                                        #   in Loop: Header=BB10_16 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	-40(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -184(%rbp)        # 4-byte Spill
.LBB10_30:                              # %if.end.82
                                        #   in Loop: Header=BB10_16 Depth=1
	movl	-64(%rbp), %eax
	cmpl	-68(%rbp), %eax
	je	.LBB10_32
# BB#31:                                # %lor.lhs.false.85
                                        #   in Loop: Header=BB10_16 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	cmpl	-40(%rbp), %eax
	jne	.LBB10_33
.LBB10_32:                              # %if.then.89
                                        #   in Loop: Header=BB10_16 Depth=1
	leaq	-144(%rbp), %rdi
	xorl	%edx, %edx
	movq	-88(%rbp), %rsi
	movl	-48(%rbp), %eax
	subl	-64(%rbp), %eax
	addl	$1, %eax
	movl	-36(%rbp), %r8d
	movl	-64(%rbp), %r9d
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_set_rect
	movl	$0, -64(%rbp)
	movq	-88(%rbp), %rsi
	movq	%rsi, -80(%rbp)
.LBB10_33:                              # %if.end.91
                                        #   in Loop: Header=BB10_16 Depth=1
	jmp	.LBB10_34
.LBB10_34:                              # %for.inc.92
                                        #   in Loop: Header=BB10_16 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB10_16
.LBB10_35:                              # %for.end.94
	movq	-88(%rbp), %rdi
	callq	g_free
	cmpl	$0, -156(%rbp)
	je	.LBB10_37
# BB#36:                                # %if.then.96
	movabsq	$.L.str.44, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
.LBB10_37:                              # %if.end.98
	movq	-152(%rbp), %rdi
	callq	gimp_drawable_flush
	movl	-96(%rbp), %eax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	load_sun_d8, .Lfunc_end10-load_sun_d8
	.cfi_endproc

	.align	16, 0x90
	.type	load_sun_d24,@function
load_sun_d24:                           # @load_sun_d24
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
	pushq	%rbx
	subq	$200, %rsp
.Ltmp44:
	.cfi_offset %rbx, -24
	xorl	%eax, %eax
	leaq	-96(%rbp), %r8
	leaq	-160(%rbp), %r9
	leaq	-152(%rbp), %r10
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	$0, -164(%rbp)
	movq	-32(%rbp), %rcx
	cmpq	$2, 40(%rcx)
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %ebx
	movl	%ebx, -168(%rbp)
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rcx
	movl	%ecx, %ebx
	movl	%ebx, -68(%rbp)
	movq	-32(%rbp), %rcx
	movq	16(%rcx), %rcx
	movl	%ecx, %ebx
	movl	%ebx, -72(%rbp)
	movq	-16(%rbp), %rdi
	movl	-68(%rbp), %esi
	movl	-72(%rbp), %edx
	movl	%eax, %ecx
	movq	%r10, (%rsp)
	callq	create_new_image
	movl	%eax, -100(%rbp)
	callq	gimp_tile_height
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %eax
	imull	-68(%rbp), %eax
	imull	$3, %eax, %eax
	movslq	%eax, %rdi
	callq	g_malloc
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	imulq	$3, 8(%rax), %rax
	andq	$1, %rax
	movl	%eax, %ecx
	movl	%ecx, -76(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	rle_startread
.LBB11_2:                               # %if.end
	movq	-64(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -84(%rbp)
	movl	$0, -88(%rbp)
.LBB11_3:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_18 Depth 2
	movl	-88(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jge	.LBB11_29
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB11_3 Depth=1
	xorl	%esi, %esi
	movq	-48(%rbp), %rdi
	imull	$3, -68(%rbp), %eax
	movslq	%eax, %rdx
	callq	memset
	cmpl	$0, -168(%rbp)
	je	.LBB11_6
# BB#5:                                 # %cond.true
                                        #   in Loop: Header=BB11_3 Depth=1
	movl	$3, %esi
	movq	-48(%rbp), %rdi
	movl	-68(%rbp), %edx
	movq	-24(%rbp), %rcx
	callq	rle_fread
	movslq	%eax, %rcx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB11_7
.LBB11_6:                               # %cond.false
                                        #   in Loop: Header=BB11_3 Depth=1
	movl	$3, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	movslq	-68(%rbp), %rdx
	movq	-24(%rbp), %rcx
	callq	fread
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB11_7:                               # %cond.end
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-176(%rbp), %rax        # 8-byte Reload
	movslq	-68(%rbp), %rcx
	cmpq	%rcx, %rax
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	orl	-164(%rbp), %esi
	movl	%esi, -164(%rbp)
	cmpl	$0, -76(%rbp)
	je	.LBB11_15
# BB#8:                                 # %if.then.23
                                        #   in Loop: Header=BB11_3 Depth=1
	cmpl	$0, -168(%rbp)
	je	.LBB11_13
# BB#9:                                 # %cond.true.25
                                        #   in Loop: Header=BB11_3 Depth=1
	cmpl	$0, rlebuf+4
	jle	.LBB11_11
# BB#10:                                # %cond.true.28
                                        #   in Loop: Header=BB11_3 Depth=1
	movl	rlebuf+4, %eax
	addl	$-1, %eax
	movl	%eax, rlebuf+4
	movl	rlebuf, %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jmp	.LBB11_12
.LBB11_11:                              # %cond.false.29
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-24(%rbp), %rdi
	callq	rle_fgetc
	movl	%eax, -180(%rbp)        # 4-byte Spill
.LBB11_12:                              # %cond.end.31
                                        #   in Loop: Header=BB11_3 Depth=1
	movl	-180(%rbp), %eax        # 4-byte Reload
	movl	%eax, -184(%rbp)        # 4-byte Spill
	jmp	.LBB11_14
.LBB11_13:                              # %cond.false.33
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-24(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -184(%rbp)        # 4-byte Spill
.LBB11_14:                              # %cond.end.35
                                        #   in Loop: Header=BB11_3 Depth=1
	movl	-184(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	orl	-164(%rbp), %eax
	movl	%eax, -164(%rbp)
.LBB11_15:                              # %if.end.40
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-32(%rbp), %rax
	cmpq	$3, 40(%rax)
	jne	.LBB11_17
# BB#16:                                # %if.then.44
                                        #   in Loop: Header=BB11_3 Depth=1
	imull	$3, -68(%rbp), %eax
	movq	-48(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -48(%rbp)
	jmp	.LBB11_22
.LBB11_17:                              # %if.else
                                        #   in Loop: Header=BB11_3 Depth=1
	movl	$0, -92(%rbp)
.LBB11_18:                              # %for.cond.46
                                        #   Parent Loop BB11_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-92(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB11_21
# BB#19:                                # %for.body.49
                                        #   in Loop: Header=BB11_18 Depth=2
	movq	-48(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -49(%rbp)
	movq	-48(%rbp), %rax
	movb	2(%rax), %cl
	movq	-48(%rbp), %rax
	movb	%cl, (%rax)
	movb	-49(%rbp), %cl
	movq	-48(%rbp), %rax
	movb	%cl, 2(%rax)
	movq	-48(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -48(%rbp)
# BB#20:                                # %for.inc
                                        #   in Loop: Header=BB11_18 Depth=2
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB11_18
.LBB11_21:                              # %for.end
                                        #   in Loop: Header=BB11_3 Depth=1
	jmp	.LBB11_22
.LBB11_22:                              # %if.end.53
                                        #   in Loop: Header=BB11_3 Depth=1
	movl	$20, %eax
	movl	-84(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -84(%rbp)
	movl	-88(%rbp), %ecx
	movl	%eax, -188(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-188(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB11_24
# BB#23:                                # %if.then.58
                                        #   in Loop: Header=BB11_3 Depth=1
	movl	-88(%rbp), %eax
	addl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	-72(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -192(%rbp)        # 4-byte Spill
.LBB11_24:                              # %if.end.62
                                        #   in Loop: Header=BB11_3 Depth=1
	movl	-84(%rbp), %eax
	cmpl	-80(%rbp), %eax
	je	.LBB11_26
# BB#25:                                # %lor.lhs.false
                                        #   in Loop: Header=BB11_3 Depth=1
	movl	-88(%rbp), %eax
	addl	$1, %eax
	cmpl	-72(%rbp), %eax
	jne	.LBB11_27
.LBB11_26:                              # %if.then.68
                                        #   in Loop: Header=BB11_3 Depth=1
	leaq	-152(%rbp), %rdi
	xorl	%edx, %edx
	movq	-64(%rbp), %rsi
	movl	-88(%rbp), %eax
	subl	-84(%rbp), %eax
	addl	$1, %eax
	movl	-68(%rbp), %r8d
	movl	-84(%rbp), %r9d
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_set_rect
	movl	$0, -84(%rbp)
	movq	-64(%rbp), %rsi
	movq	%rsi, -48(%rbp)
.LBB11_27:                              # %if.end.70
                                        #   in Loop: Header=BB11_3 Depth=1
	jmp	.LBB11_28
.LBB11_28:                              # %for.inc.71
                                        #   in Loop: Header=BB11_3 Depth=1
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB11_3
.LBB11_29:                              # %for.end.73
	movq	-64(%rbp), %rdi
	callq	g_free
	cmpl	$0, -164(%rbp)
	je	.LBB11_31
# BB#30:                                # %if.then.75
	movabsq	$.L.str.44, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
.LBB11_31:                              # %if.end.77
	movq	-160(%rbp), %rdi
	callq	gimp_drawable_flush
	movl	-100(%rbp), %eax
	addq	$200, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end11:
	.size	load_sun_d24, .Lfunc_end11-load_sun_d24
	.cfi_endproc

	.align	16, 0x90
	.type	load_sun_d32,@function
load_sun_d32:                           # @load_sun_d32
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
	pushq	%rbx
	subq	$200, %rsp
.Ltmp48:
	.cfi_offset %rbx, -24
	xorl	%eax, %eax
	leaq	-92(%rbp), %r8
	leaq	-152(%rbp), %r9
	leaq	-144(%rbp), %r10
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	$0, -156(%rbp)
	movq	-32(%rbp), %rcx
	cmpq	$2, 40(%rcx)
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %ebx
	movl	%ebx, -164(%rbp)
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rcx
	movl	%ecx, %ebx
	movl	%ebx, -68(%rbp)
	movq	-32(%rbp), %rcx
	movq	16(%rcx), %rcx
	movl	%ecx, %ebx
	movl	%ebx, -72(%rbp)
	movl	$0, -160(%rbp)
	movq	-16(%rbp), %rdi
	movl	-68(%rbp), %esi
	movl	-72(%rbp), %edx
	movl	%eax, %ecx
	movq	%r10, (%rsp)
	callq	create_new_image
	movl	%eax, -96(%rbp)
	callq	gimp_tile_height
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	imull	-68(%rbp), %eax
	imull	$3, %eax, %eax
	movslq	%eax, %rdi
	callq	g_malloc
	movq	%rax, -64(%rbp)
	cmpl	$0, -164(%rbp)
	je	.LBB12_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	rle_startread
.LBB12_2:                               # %if.end
	movq	-64(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -80(%rbp)
	movl	$0, -84(%rbp)
.LBB12_3:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_6 Depth 2
                                        #     Child Loop BB12_23 Depth 2
                                        #     Child Loop BB12_29 Depth 2
	movl	-84(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jge	.LBB12_40
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB12_3 Depth=1
	cmpl	$0, -164(%rbp)
	je	.LBB12_22
# BB#5:                                 # %if.then.10
                                        #   in Loop: Header=BB12_3 Depth=1
	movl	$0, -88(%rbp)
.LBB12_6:                               # %for.cond.11
                                        #   Parent Loop BB12_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-88(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB12_21
# BB#7:                                 # %for.body.14
                                        #   in Loop: Header=BB12_6 Depth=2
	cmpl	$0, rlebuf+4
	jle	.LBB12_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB12_6 Depth=2
	movl	rlebuf+4, %eax
	addl	$-1, %eax
	movl	%eax, rlebuf+4
	movl	rlebuf, %eax
	movl	%eax, -168(%rbp)        # 4-byte Spill
	jmp	.LBB12_10
.LBB12_9:                               # %cond.false
                                        #   in Loop: Header=BB12_6 Depth=2
	movq	-24(%rbp), %rdi
	callq	rle_fgetc
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB12_10:                              # %cond.end
                                        #   in Loop: Header=BB12_6 Depth=2
	cmpl	$0, rlebuf+4
	jle	.LBB12_12
# BB#11:                                # %cond.true.20
                                        #   in Loop: Header=BB12_6 Depth=2
	movl	rlebuf+4, %eax
	addl	$-1, %eax
	movl	%eax, rlebuf+4
	movl	rlebuf, %eax
	movl	%eax, -176(%rbp)        # 4-byte Spill
	jmp	.LBB12_13
.LBB12_12:                              # %cond.false.22
                                        #   in Loop: Header=BB12_6 Depth=2
	movq	-24(%rbp), %rdi
	callq	rle_fgetc
	movl	%eax, -176(%rbp)        # 4-byte Spill
.LBB12_13:                              # %cond.end.24
                                        #   in Loop: Header=BB12_6 Depth=2
	movl	-176(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -48(%rbp)
	movb	%cl, (%rdx)
	cmpl	$0, rlebuf+4
	jle	.LBB12_15
# BB#14:                                # %cond.true.29
                                        #   in Loop: Header=BB12_6 Depth=2
	movl	rlebuf+4, %eax
	addl	$-1, %eax
	movl	%eax, rlebuf+4
	movl	rlebuf, %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jmp	.LBB12_16
.LBB12_15:                              # %cond.false.31
                                        #   in Loop: Header=BB12_6 Depth=2
	movq	-24(%rbp), %rdi
	callq	rle_fgetc
	movl	%eax, -180(%rbp)        # 4-byte Spill
.LBB12_16:                              # %cond.end.33
                                        #   in Loop: Header=BB12_6 Depth=2
	movl	-180(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -48(%rbp)
	movb	%cl, (%rdx)
	cmpl	$0, rlebuf+4
	jle	.LBB12_18
# BB#17:                                # %cond.true.39
                                        #   in Loop: Header=BB12_6 Depth=2
	movl	rlebuf+4, %eax
	addl	$-1, %eax
	movl	%eax, rlebuf+4
	movl	rlebuf, %eax
	movl	%eax, -184(%rbp)        # 4-byte Spill
	jmp	.LBB12_19
.LBB12_18:                              # %cond.false.41
                                        #   in Loop: Header=BB12_6 Depth=2
	movq	-24(%rbp), %rdi
	callq	rle_fgetc
	movl	%eax, -184(%rbp)        # 4-byte Spill
.LBB12_19:                              # %cond.end.43
                                        #   in Loop: Header=BB12_6 Depth=2
	movl	-184(%rbp), %eax        # 4-byte Reload
	movl	%eax, -160(%rbp)
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -48(%rbp)
	movb	%cl, (%rdx)
# BB#20:                                # %for.inc
                                        #   in Loop: Header=BB12_6 Depth=2
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB12_6
.LBB12_21:                              # %for.end
                                        #   in Loop: Header=BB12_3 Depth=1
	jmp	.LBB12_27
.LBB12_22:                              # %if.else
                                        #   in Loop: Header=BB12_3 Depth=1
	movl	$0, -88(%rbp)
.LBB12_23:                              # %for.cond.47
                                        #   Parent Loop BB12_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-88(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB12_26
# BB#24:                                # %for.body.50
                                        #   in Loop: Header=BB12_23 Depth=2
	movq	-24(%rbp), %rdi
	callq	_IO_getc
	movq	-24(%rbp), %rdi
	movl	%eax, -188(%rbp)        # 4-byte Spill
	callq	_IO_getc
	movb	%al, %cl
	movq	-48(%rbp), %rdi
	movq	%rdi, %rdx
	addq	$1, %rdx
	movq	%rdx, -48(%rbp)
	movb	%cl, (%rdi)
	movq	-24(%rbp), %rdi
	callq	_IO_getc
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movq	%rdx, %rdi
	addq	$1, %rdi
	movq	%rdi, -48(%rbp)
	movb	%cl, (%rdx)
	movq	-24(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -160(%rbp)
	movb	%al, %cl
	movq	-48(%rbp), %rdx
	movq	%rdx, %rdi
	addq	$1, %rdi
	movq	%rdi, -48(%rbp)
	movb	%cl, (%rdx)
# BB#25:                                # %for.inc.61
                                        #   in Loop: Header=BB12_23 Depth=2
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB12_23
.LBB12_26:                              # %for.end.63
                                        #   in Loop: Header=BB12_3 Depth=1
	jmp	.LBB12_27
.LBB12_27:                              # %if.end.64
                                        #   in Loop: Header=BB12_3 Depth=1
	cmpl	$0, -160(%rbp)
	setl	%al
	andb	$1, %al
	movzbl	%al, %ecx
	orl	-156(%rbp), %ecx
	movl	%ecx, -156(%rbp)
	movq	-32(%rbp), %rdx
	cmpq	$3, 40(%rdx)
	je	.LBB12_33
# BB#28:                                # %if.then.70
                                        #   in Loop: Header=BB12_3 Depth=1
	movl	$0, -88(%rbp)
.LBB12_29:                              # %for.cond.71
                                        #   Parent Loop BB12_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-88(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB12_32
# BB#30:                                # %for.body.74
                                        #   in Loop: Header=BB12_29 Depth=2
	movq	-48(%rbp), %rax
	addq	$-3, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -49(%rbp)
	movq	-48(%rbp), %rax
	movb	2(%rax), %cl
	movq	-48(%rbp), %rax
	movb	%cl, (%rax)
	movb	-49(%rbp), %cl
	movq	-48(%rbp), %rax
	movb	%cl, 2(%rax)
# BB#31:                                # %for.inc.77
                                        #   in Loop: Header=BB12_29 Depth=2
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB12_29
.LBB12_32:                              # %for.end.79
                                        #   in Loop: Header=BB12_3 Depth=1
	imull	$3, -68(%rbp), %eax
	movq	-48(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -48(%rbp)
.LBB12_33:                              # %if.end.82
                                        #   in Loop: Header=BB12_3 Depth=1
	movl	$20, %eax
	movl	-80(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -80(%rbp)
	movl	-84(%rbp), %ecx
	movl	%eax, -192(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-192(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB12_35
# BB#34:                                # %if.then.86
                                        #   in Loop: Header=BB12_3 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	-72(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -196(%rbp)        # 4-byte Spill
.LBB12_35:                              # %if.end.90
                                        #   in Loop: Header=BB12_3 Depth=1
	movl	-80(%rbp), %eax
	cmpl	-76(%rbp), %eax
	je	.LBB12_37
# BB#36:                                # %lor.lhs.false
                                        #   in Loop: Header=BB12_3 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	cmpl	-72(%rbp), %eax
	jne	.LBB12_38
.LBB12_37:                              # %if.then.96
                                        #   in Loop: Header=BB12_3 Depth=1
	leaq	-144(%rbp), %rdi
	xorl	%edx, %edx
	movq	-64(%rbp), %rsi
	movl	-84(%rbp), %eax
	subl	-80(%rbp), %eax
	addl	$1, %eax
	movl	-68(%rbp), %r8d
	movl	-80(%rbp), %r9d
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_set_rect
	movl	$0, -80(%rbp)
	movq	-64(%rbp), %rsi
	movq	%rsi, -48(%rbp)
.LBB12_38:                              # %if.end.98
                                        #   in Loop: Header=BB12_3 Depth=1
	jmp	.LBB12_39
.LBB12_39:                              # %for.inc.99
                                        #   in Loop: Header=BB12_3 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB12_3
.LBB12_40:                              # %for.end.101
	movq	-64(%rbp), %rdi
	callq	g_free
	cmpl	$0, -156(%rbp)
	je	.LBB12_42
# BB#41:                                # %if.then.103
	movabsq	$.L.str.44, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
.LBB12_42:                              # %if.end.105
	movq	-152(%rbp), %rdi
	callq	gimp_drawable_flush
	movl	-96(%rbp), %eax
	addq	$200, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end12:
	.size	load_sun_d32, .Lfunc_end12-load_sun_d32
	.cfi_endproc

	.align	16, 0x90
	.type	read_card32,@function
read_card32:                            # @read_card32
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp51:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$0, read_msb_first
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movslq	%eax, %rdi
	shlq	$24, %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movslq	%eax, %rdi
	shlq	$16, %rdi
	orq	-24(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movslq	%eax, %rdi
	shlq	$8, %rdi
	orq	-24(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movq	-16(%rbp), %rdi
	movl	%eax, (%rdi)
	movslq	%eax, %rdi
	orq	-24(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	jmp	.LBB13_3
.LBB13_2:                               # %if.else
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movslq	%eax, %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movslq	%eax, %rdi
	shlq	$8, %rdi
	orq	-24(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movslq	%eax, %rdi
	shlq	$16, %rdi
	orq	-24(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	_IO_getc
	movq	-16(%rbp), %rdi
	movl	%eax, (%rdi)
	movslq	%eax, %rdi
	shlq	$24, %rdi
	orq	-24(%rbp), %rdi
	movq	%rdi, -24(%rbp)
.LBB13_3:                               # %if.end
	movq	-16(%rbp), %rax
	cmpl	$0, (%rax)
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	read_card32, .Lfunc_end13-read_card32
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	create_new_image,@function
create_new_image:                       # @create_new_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp54:
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
	je	.LBB14_1
	jmp	.LBB14_7
.LBB14_7:                               # %entry
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB14_2
	jmp	.LBB14_8
.LBB14_8:                               # %entry
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB14_3
	jmp	.LBB14_4
.LBB14_1:                               # %sw.bb
	movl	$0, -64(%rbp)
	jmp	.LBB14_5
.LBB14_2:                               # %sw.bb.1
	movl	$2, -64(%rbp)
	jmp	.LBB14_5
.LBB14_3:                               # %sw.bb.2
	movl	$4, -64(%rbp)
	jmp	.LBB14_5
.LBB14_4:                               # %sw.default
	movabsq	$.L.str.45, %rdi
	movb	$0, %al
	callq	g_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB14_6
.LBB14_5:                               # %sw.epilog
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	callq	gimp_image_new
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	gimp_image_set_filename
	movabsq	$.L.str.46, %rdi
	movl	-60(%rbp), %edx
	movl	%eax, -80(%rbp)         # 4-byte Spill
	movl	%edx, -84(%rbp)         # 4-byte Spill
	callq	gettext
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-64(%rbp), %r8d
	movl	-84(%rbp), %edi         # 4-byte Reload
	movq	%rax, %rsi
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
	movl	%eax, -88(%rbp)         # 4-byte Spill
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
	movl	%edx, -92(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	-60(%rbp), %ecx
	movl	%ecx, -4(%rbp)
.LBB14_6:                               # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	create_new_image, .Lfunc_end14-create_new_image
	.cfi_endproc

	.align	16, 0x90
	.type	set_color_table,@function
set_color_table:                        # @set_color_table
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	subq	$832, %rsp              # imm = 0x340
	movl	$3, %eax
	movl	%eax, %ecx
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	56(%rdx), %rax
	xorl	%edi, %edi
	movl	%edi, %edx
	divq	%rcx
	movl	%eax, %edi
	movl	%edi, -804(%rbp)
	cmpl	$0, -804(%rbp)
	jg	.LBB15_2
# BB#1:                                 # %if.then
	jmp	.LBB15_10
.LBB15_2:                               # %if.end
	movl	$0, -808(%rbp)
.LBB15_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-808(%rbp), %eax
	cmpl	$256, -804(%rbp)        # imm = 0x100
	movl	%eax, -812(%rbp)        # 4-byte Spill
	jge	.LBB15_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB15_3 Depth=1
	movl	-804(%rbp), %eax
	movl	%eax, -816(%rbp)        # 4-byte Spill
	jmp	.LBB15_6
.LBB15_5:                               # %cond.false
                                        #   in Loop: Header=BB15_3 Depth=1
	movl	$256, %eax              # imm = 0x100
	movl	%eax, -816(%rbp)        # 4-byte Spill
	jmp	.LBB15_6
.LBB15_6:                               # %cond.end
                                        #   in Loop: Header=BB15_3 Depth=1
	movl	-816(%rbp), %eax        # 4-byte Reload
	movl	-812(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB15_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB15_3 Depth=1
	movslq	-808(%rbp), %rax
	movq	-24(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	imull	$3, -808(%rbp), %esi
	addl	$0, %esi
	movslq	%esi, %rax
	movb	%dl, -800(%rbp,%rax)
	movl	-808(%rbp), %esi
	addl	-804(%rbp), %esi
	movslq	%esi, %rax
	movq	-24(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	imull	$3, -808(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rax
	movb	%dl, -800(%rbp,%rax)
	movl	-808(%rbp), %esi
	movl	-804(%rbp), %edi
	shll	$1, %edi
	addl	%edi, %esi
	movslq	%esi, %rax
	movq	-24(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	imull	$3, -808(%rbp), %esi
	addl	$2, %esi
	movslq	%esi, %rax
	movb	%dl, -800(%rbp,%rax)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB15_3 Depth=1
	movl	-808(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -808(%rbp)
	jmp	.LBB15_3
.LBB15_9:                               # %for.end
	leaq	-800(%rbp), %rsi
	movl	-4(%rbp), %edi
	movl	-804(%rbp), %edx
	callq	gimp_image_set_colormap
	movl	%eax, -820(%rbp)        # 4-byte Spill
.LBB15_10:                              # %return
	addq	$832, %rsp              # imm = 0x340
	popq	%rbp
	retq
.Lfunc_end15:
	.size	set_color_table, .Lfunc_end15-set_color_table
	.cfi_endproc

	.align	16, 0x90
	.type	rle_startread,@function
rle_startread:                          # @rle_startread
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp60:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	$0, rlebuf+4
	movl	$0, rlebuf
	popq	%rbp
	retq
.Lfunc_end16:
	.size	rle_startread, .Lfunc_end16-rle_startread
	.cfi_endproc

	.align	16, 0x90
	.type	rle_fgetc,@function
rle_fgetc:                              # @rle_fgetc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp63:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	cmpl	$0, rlebuf+4
	jle	.LBB17_2
# BB#1:                                 # %if.then
	movl	rlebuf+4, %eax
	addl	$-1, %eax
	movl	%eax, rlebuf+4
	movl	rlebuf, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB17_13
.LBB17_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -20(%rbp)
	cmpl	$0, %eax
	jge	.LBB17_4
# BB#3:                                 # %if.then.2
	movl	$-1, -4(%rbp)
	jmp	.LBB17_13
.LBB17_4:                               # %if.end.3
	cmpl	$128, -20(%rbp)
	je	.LBB17_6
# BB#5:                                 # %if.then.5
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB17_13
.LBB17_6:                               # %if.end.6
	movq	-16(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -24(%rbp)
	cmpl	$0, %eax
	jge	.LBB17_8
# BB#7:                                 # %if.then.9
	movl	$-1, -4(%rbp)
	jmp	.LBB17_13
.LBB17_8:                               # %if.end.10
	cmpl	$0, -24(%rbp)
	jne	.LBB17_10
# BB#9:                                 # %if.then.12
	movl	$128, -4(%rbp)
	jmp	.LBB17_13
.LBB17_10:                              # %if.end.13
	movq	-16(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -28(%rbp)
	cmpl	$0, %eax
	jge	.LBB17_12
# BB#11:                                # %if.then.16
	movl	$-1, -4(%rbp)
	jmp	.LBB17_13
.LBB17_12:                              # %if.end.17
	movl	-24(%rbp), %eax
	movl	%eax, rlebuf+4
	movl	-28(%rbp), %eax
	movl	%eax, rlebuf
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB17_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	rle_fgetc, .Lfunc_end17-rle_fgetc
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
.Ltmp65:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp66:
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
	je	.LBB18_2
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
.LBB18_2:                               # %entry
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
.Lfunc_end18:
	.size	g_warning, .Lfunc_end18-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	rle_fread,@function
rle_fread:                              # @rle_fread
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp69:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -28(%rbp)
.LBB19_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_3 Depth 2
	movl	-28(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB19_15
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB19_1 Depth=1
	movl	$0, -32(%rbp)
.LBB19_3:                               # %for.cond.1
                                        #   Parent Loop BB19_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB19_11
# BB#4:                                 # %for.body.3
                                        #   in Loop: Header=BB19_3 Depth=2
	cmpl	$0, rlebuf+4
	jle	.LBB19_6
# BB#5:                                 # %cond.true
                                        #   in Loop: Header=BB19_3 Depth=2
	movl	rlebuf+4, %eax
	addl	$-1, %eax
	movl	%eax, rlebuf+4
	movl	rlebuf, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB19_7
.LBB19_6:                               # %cond.false
                                        #   in Loop: Header=BB19_3 Depth=2
	movq	-24(%rbp), %rdi
	callq	rle_fgetc
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB19_7:                               # %cond.end
                                        #   in Loop: Header=BB19_3 Depth=2
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jge	.LBB19_9
# BB#8:                                 # %if.then
                                        #   in Loop: Header=BB19_1 Depth=1
	movl	$1, -40(%rbp)
	jmp	.LBB19_11
.LBB19_9:                               # %if.end
                                        #   in Loop: Header=BB19_3 Depth=2
	movl	-36(%rbp), %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -8(%rbp)
	movb	%cl, (%rdx)
# BB#10:                                # %for.inc
                                        #   in Loop: Header=BB19_3 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB19_3
.LBB19_11:                              # %for.end
                                        #   in Loop: Header=BB19_1 Depth=1
	cmpl	$0, -40(%rbp)
	je	.LBB19_13
# BB#12:                                # %if.then.6
	jmp	.LBB19_15
.LBB19_13:                              # %if.end.7
                                        #   in Loop: Header=BB19_1 Depth=1
	jmp	.LBB19_14
.LBB19_14:                              # %for.inc.8
                                        #   in Loop: Header=BB19_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB19_1
.LBB19_15:                              # %for.end.10
	movl	-28(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	rle_fread, .Lfunc_end19-rle_fread
	.cfi_endproc

	.align	16, 0x90
	.type	save_index,@function
save_index:                             # @save_index
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp72:
	.cfi_def_cfa_register %rbp
	subq	$1184, %rsp             # imm = 0x4A0
	leaq	-960(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -104(%rbp)
	movq	%rax, -968(%rbp)
	movl	-24(%rbp), %edi
	callq	gimp_drawable_get
	movq	%rax, -1024(%rbp)
	movq	-1024(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -40(%rbp)
	movq	-1024(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -36(%rbp)
	callq	gimp_tile_height
	leaq	-1016(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%eax, -76(%rbp)
	movq	-1024(%rbp), %rsi
	movl	-40(%rbp), %r8d
	movl	-36(%rbp), %r9d
	movl	%ecx, %edx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	-76(%rbp), %eax
	imull	-40(%rbp), %eax
	movq	-1024(%rbp), %rsi
	imull	12(%rsi), %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	g_malloc
	movq	%rax, -112(%rbp)
	movq	%rax, -120(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB20_6
# BB#1:                                 # %if.then
	movl	$256, -56(%rbp)         # imm = 0x100
	movl	$0, -52(%rbp)
.LBB20_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB20_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB20_2 Depth=1
	movl	-52(%rbp), %eax
	movb	%al, %cl
	movslq	-52(%rbp), %rdx
	movq	-968(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-52(%rbp), %eax
	movb	%al, %cl
	movl	-52(%rbp), %eax
	addl	-56(%rbp), %eax
	movslq	%eax, %rdx
	movq	-968(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movl	-52(%rbp), %eax
	movb	%al, %cl
	movl	-52(%rbp), %eax
	movl	-56(%rbp), %edi
	shll	$1, %edi
	addl	%edi, %eax
	movslq	%eax, %rdx
	movq	-968(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB20_2 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB20_2
.LBB20_5:                               # %for.end
	jmp	.LBB20_11
.LBB20_6:                               # %if.else
	leaq	-56(%rbp), %rsi
	movl	-20(%rbp), %edi
	callq	gimp_image_get_colormap
	movq	%rax, -96(%rbp)
	movl	$0, -52(%rbp)
.LBB20_7:                               # %for.cond.27
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB20_10
# BB#8:                                 # %for.body.30
                                        #   in Loop: Header=BB20_7 Depth=1
	movq	-96(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -96(%rbp)
	movb	(%rax), %dl
	movslq	-52(%rbp), %rax
	movq	-968(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
	movq	-96(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -96(%rbp)
	movb	(%rax), %dl
	movl	-52(%rbp), %esi
	addl	-56(%rbp), %esi
	movslq	%esi, %rax
	movq	-968(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
	movq	-96(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -96(%rbp)
	movb	(%rax), %dl
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edi
	shll	$1, %edi
	addl	%edi, %esi
	movslq	%esi, %rax
	movq	-968(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
# BB#9:                                 # %for.inc.42
                                        #   in Loop: Header=BB20_7 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB20_7
.LBB20_10:                              # %for.end.44
	jmp	.LBB20_11
.LBB20_11:                              # %if.end
	cmpl	$2, -56(%rbp)
	sete	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -60(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB20_15
# BB#12:                                # %if.then.48
	movl	$8, %eax
	movl	-40(%rbp), %ecx
	addl	$7, %ecx
	movl	%eax, -1044(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-1044(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	movslq	%eax, %rdi
	callq	g_malloc
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB20_14
# BB#13:                                # %if.then.54
	movl	$0, -60(%rbp)
.LBB20_14:                              # %if.end.55
	jmp	.LBB20_15
.LBB20_15:                              # %if.end.56
	movl	$0, -68(%rbp)
	movl	$0, -64(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB20_17
# BB#16:                                # %if.then.58
	movq	-968(%rbp), %rdi
	movl	$save_index.sun_bwmap, %eax
	movl	%eax, %esi
	movl	$6, %eax
	movl	%eax, %edx
	callq	memcmp
	cmpl	$0, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -64(%rbp)
	movq	-968(%rbp), %rdi
	movl	$save_index.sun_wbmap, %eax
	movl	%eax, %esi
	movl	$6, %eax
	movl	%eax, %edx
	callq	memcmp
	cmpl	$0, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -68(%rbp)
.LBB20_17:                              # %if.end.65
	cmpl	$0, -60(%rbp)
	je	.LBB20_19
# BB#18:                                # %cond.true
	movl	$8, %eax
	movl	-40(%rbp), %ecx
	addl	$7, %ecx
	movl	%eax, -1048(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-1048(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	movl	%eax, -1052(%rbp)       # 4-byte Spill
	jmp	.LBB20_20
.LBB20_19:                              # %cond.false
	movl	-40(%rbp), %eax
	movl	%eax, -1052(%rbp)       # 4-byte Spill
.LBB20_20:                              # %cond.end
	movl	-1052(%rbp), %eax       # 4-byte Reload
	movl	$1, %ecx
	movl	$2, %edx
	movl	$8, %esi
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %eax
	movl	%edx, -1056(%rbp)       # 4-byte Spill
	cltd
	movl	-1056(%rbp), %edi       # 4-byte Reload
	idivl	%edi
	movl	%edx, -44(%rbp)
	movq	$1504078485, -184(%rbp) # imm = 0x59A66A95
	movslq	-40(%rbp), %r8
	movq	%r8, -176(%rbp)
	movslq	-36(%rbp), %r8
	movq	%r8, -168(%rbp)
	cmpl	$0, -60(%rbp)
	cmovnel	%ecx, %esi
	movslq	%esi, %r8
	movq	%r8, -160(%rbp)
	movl	-72(%rbp), %edx
	addl	-44(%rbp), %edx
	imull	-36(%rbp), %edx
	movslq	%edx, %r8
	movq	%r8, -152(%rbp)
	cmpl	$0, -32(%rbp)
	cmovnel	%edi, %ecx
	movslq	%ecx, %r8
	movq	%r8, -144(%rbp)
	cmpl	$0, -64(%rbp)
	jne	.LBB20_22
# BB#21:                                # %lor.lhs.false
	cmpl	$0, -68(%rbp)
	je	.LBB20_23
.LBB20_22:                              # %if.then.82
	movq	$0, -136(%rbp)
	movq	$0, -128(%rbp)
	jmp	.LBB20_24
.LBB20_23:                              # %if.else.83
	movq	$1, -136(%rbp)
	imull	$3, -56(%rbp), %eax
	movslq	%eax, %rcx
	movq	%rcx, -128(%rbp)
.LBB20_24:                              # %if.end.88
	leaq	-184(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	write_sun_header
	cmpq	$0, -128(%rbp)
	jbe	.LBB20_26
# BB#25:                                # %if.then.92
	leaq	-184(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	-968(%rbp), %rdx
	callq	write_sun_cols
.LBB20_26:                              # %if.end.93
	cmpl	$0, -32(%rbp)
	je	.LBB20_28
# BB#27:                                # %if.then.95
	movabsq	$rle_fwrite, %rax
	movq	%rax, -1032(%rbp)
	movq	-16(%rbp), %rdi
	callq	rle_startwrite
	jmp	.LBB20_29
.LBB20_28:                              # %if.else.96
	movabsq	$my_fwrite, %rax
	movq	%rax, -1032(%rbp)
.LBB20_29:                              # %if.end.97
	cmpl	$0, -60(%rbp)
	je	.LBB20_44
# BB#30:                                # %if.then.99
	movl	$0, -48(%rbp)
.LBB20_31:                              # %for.cond.100
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB20_43
# BB#32:                                # %for.body.103
                                        #   in Loop: Header=BB20_31 Depth=1
	movl	-48(%rbp), %eax
	cltd
	idivl	-76(%rbp)
	cmpl	$0, %edx
	jne	.LBB20_37
# BB#33:                                # %if.then.107
                                        #   in Loop: Header=BB20_31 Depth=1
	movl	-48(%rbp), %eax
	addl	-76(%rbp), %eax
	subl	$1, %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB20_35
# BB#34:                                # %cond.true.112
                                        #   in Loop: Header=BB20_31 Depth=1
	movl	-76(%rbp), %eax
	movl	%eax, -1060(%rbp)       # 4-byte Spill
	jmp	.LBB20_36
.LBB20_35:                              # %cond.false.113
                                        #   in Loop: Header=BB20_31 Depth=1
	movl	-36(%rbp), %eax
	subl	-48(%rbp), %eax
	movl	%eax, -1060(%rbp)       # 4-byte Spill
.LBB20_36:                              # %cond.end.115
                                        #   in Loop: Header=BB20_31 Depth=1
	movl	-1060(%rbp), %eax       # 4-byte Reload
	leaq	-1016(%rbp), %rdi
	xorl	%edx, %edx
	movl	%eax, -1036(%rbp)
	movq	-112(%rbp), %rsi
	movl	-48(%rbp), %ecx
	movl	-40(%rbp), %r8d
	movl	-1036(%rbp), %r9d
	callq	gimp_pixel_rgn_get_rect
	movq	-112(%rbp), %rsi
	movq	%rsi, -120(%rbp)
.LBB20_37:                              # %if.end.117
                                        #   in Loop: Header=BB20_31 Depth=1
	movq	-120(%rbp), %rdi
	movl	-40(%rbp), %esi
	movq	-104(%rbp), %rdx
	movl	-64(%rbp), %ecx
	callq	byte2bit
	movl	$1, %ecx
	movl	%ecx, %edx
	movq	-1032(%rbp), %rdi
	movq	-104(%rbp), %rax
	movslq	-72(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movq	%rdi, -1072(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	movq	-1072(%rbp), %rax       # 8-byte Reload
	callq	*%rax
	cmpl	$0, -44(%rbp)
	movl	%eax, -1076(%rbp)       # 4-byte Spill
	je	.LBB20_39
# BB#38:                                # %if.then.121
                                        #   in Loop: Header=BB20_31 Depth=1
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-88(%rbp), %rcx
	movq	-1032(%rbp), %rsi
	movslq	-44(%rbp), %rdi
	movq	-16(%rbp), %r8
	movq	%rdi, -1088(%rbp)       # 8-byte Spill
	movq	%rcx, %rdi
	movq	-1088(%rbp), %rcx       # 8-byte Reload
	movq	%rsi, -1096(%rbp)       # 8-byte Spill
	movq	%rcx, %rsi
	movq	%r8, %rcx
	movq	-1096(%rbp), %r8        # 8-byte Reload
	callq	*%r8
	movl	%eax, -1100(%rbp)       # 4-byte Spill
.LBB20_39:                              # %if.end.124
                                        #   in Loop: Header=BB20_31 Depth=1
	movl	$20, %eax
	movl	-40(%rbp), %ecx
	movq	-120(%rbp), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -120(%rbp)
	movl	-48(%rbp), %ecx
	movl	%eax, -1104(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-1104(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB20_41
# BB#40:                                # %if.then.128
                                        #   in Loop: Header=BB20_31 Depth=1
	cvtsi2sdl	-48(%rbp), %xmm0
	cvtsi2sdl	-36(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -1108(%rbp)       # 4-byte Spill
.LBB20_41:                              # %if.end.133
                                        #   in Loop: Header=BB20_31 Depth=1
	jmp	.LBB20_42
.LBB20_42:                              # %for.inc.134
                                        #   in Loop: Header=BB20_31 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB20_31
.LBB20_43:                              # %for.end.136
	jmp	.LBB20_58
.LBB20_44:                              # %if.else.137
	movl	$0, -48(%rbp)
.LBB20_45:                              # %for.cond.138
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB20_57
# BB#46:                                # %for.body.141
                                        #   in Loop: Header=BB20_45 Depth=1
	movl	-48(%rbp), %eax
	cltd
	idivl	-76(%rbp)
	cmpl	$0, %edx
	jne	.LBB20_51
# BB#47:                                # %if.then.145
                                        #   in Loop: Header=BB20_45 Depth=1
	movl	-48(%rbp), %eax
	addl	-76(%rbp), %eax
	subl	$1, %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB20_49
# BB#48:                                # %cond.true.152
                                        #   in Loop: Header=BB20_45 Depth=1
	movl	-76(%rbp), %eax
	movl	%eax, -1112(%rbp)       # 4-byte Spill
	jmp	.LBB20_50
.LBB20_49:                              # %cond.false.153
                                        #   in Loop: Header=BB20_45 Depth=1
	movl	-36(%rbp), %eax
	subl	-48(%rbp), %eax
	movl	%eax, -1112(%rbp)       # 4-byte Spill
.LBB20_50:                              # %cond.end.155
                                        #   in Loop: Header=BB20_45 Depth=1
	movl	-1112(%rbp), %eax       # 4-byte Reload
	leaq	-1016(%rbp), %rdi
	xorl	%edx, %edx
	movl	%eax, -1040(%rbp)
	movq	-112(%rbp), %rsi
	movl	-48(%rbp), %ecx
	movl	-40(%rbp), %r8d
	movl	-1040(%rbp), %r9d
	callq	gimp_pixel_rgn_get_rect
	movq	-112(%rbp), %rsi
	movq	%rsi, -120(%rbp)
.LBB20_51:                              # %if.end.157
                                        #   in Loop: Header=BB20_45 Depth=1
	movl	$1, %eax
	movl	%eax, %edx
	movq	-1032(%rbp), %rcx
	movq	-120(%rbp), %rdi
	movslq	-40(%rbp), %rsi
	movq	-16(%rbp), %r8
	movq	%rcx, -1120(%rbp)       # 8-byte Spill
	movq	%r8, %rcx
	movq	-1120(%rbp), %r8        # 8-byte Reload
	callq	*%r8
	cmpl	$0, -44(%rbp)
	movl	%eax, -1124(%rbp)       # 4-byte Spill
	je	.LBB20_53
# BB#52:                                # %if.then.161
                                        #   in Loop: Header=BB20_45 Depth=1
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-88(%rbp), %rcx
	movq	-1032(%rbp), %rsi
	movslq	-44(%rbp), %rdi
	movq	-16(%rbp), %r8
	movq	%rdi, -1136(%rbp)       # 8-byte Spill
	movq	%rcx, %rdi
	movq	-1136(%rbp), %rcx       # 8-byte Reload
	movq	%rsi, -1144(%rbp)       # 8-byte Spill
	movq	%rcx, %rsi
	movq	%r8, %rcx
	movq	-1144(%rbp), %r8        # 8-byte Reload
	callq	*%r8
	movl	%eax, -1148(%rbp)       # 4-byte Spill
.LBB20_53:                              # %if.end.164
                                        #   in Loop: Header=BB20_45 Depth=1
	movl	$20, %eax
	movl	-40(%rbp), %ecx
	movq	-120(%rbp), %rdx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -120(%rbp)
	movl	-48(%rbp), %ecx
	movl	%eax, -1152(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-1152(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB20_55
# BB#54:                                # %if.then.170
                                        #   in Loop: Header=BB20_45 Depth=1
	cvtsi2sdl	-48(%rbp), %xmm0
	cvtsi2sdl	-36(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -1156(%rbp)       # 4-byte Spill
.LBB20_55:                              # %if.end.175
                                        #   in Loop: Header=BB20_45 Depth=1
	jmp	.LBB20_56
.LBB20_56:                              # %for.inc.176
                                        #   in Loop: Header=BB20_45 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB20_45
.LBB20_57:                              # %for.end.178
	jmp	.LBB20_58
.LBB20_58:                              # %if.end.179
	cmpl	$0, -32(%rbp)
	je	.LBB20_60
# BB#59:                                # %if.then.181
	movq	-16(%rbp), %rdi
	callq	rle_endwrite
.LBB20_60:                              # %if.end.182
	movq	-112(%rbp), %rdi
	callq	g_free
	cmpq	$0, -104(%rbp)
	je	.LBB20_62
# BB#61:                                # %if.then.184
	movq	-104(%rbp), %rdi
	callq	g_free
.LBB20_62:                              # %if.end.185
	movq	-1024(%rbp), %rdi
	callq	gimp_drawable_detach
	movq	-16(%rbp), %rdi
	callq	ferror
	cmpl	$0, %eax
	je	.LBB20_64
# BB#63:                                # %if.then.188
	movabsq	$.L.str.55, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$0, -4(%rbp)
	jmp	.LBB20_65
.LBB20_64:                              # %if.end.190
	movl	$1, -4(%rbp)
.LBB20_65:                              # %return
	movl	-4(%rbp), %eax
	addq	$1184, %rsp             # imm = 0x4A0
	popq	%rbp
	retq
.Lfunc_end20:
	.size	save_index, .Lfunc_end20-save_index
	.cfi_endproc

	.align	16, 0x90
	.type	save_rgb,@function
save_rgb:                               # @save_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp73:
	.cfi_def_cfa_offset 16
.Ltmp74:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp75:
	.cfi_def_cfa_register %rbp
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	-24(%rbp), %edi
	callq	gimp_drawable_get
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movq	-192(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -32(%rbp)
	callq	gimp_tile_height
	leaq	-184(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%eax, -40(%rbp)
	movq	-192(%rbp), %rsi
	movl	-36(%rbp), %r8d
	movl	-32(%rbp), %r9d
	movl	%ecx, %edx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	-40(%rbp), %eax
	imull	-36(%rbp), %eax
	movq	-192(%rbp), %rsi
	imull	12(%rsi), %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	g_malloc
	leaq	-136(%rbp), %rsi
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, -64(%rbp)
	movq	%rax, -72(%rbp)
	movl	$3, -56(%rbp)
	movl	-36(%rbp), %r8d
	imull	-56(%rbp), %r8d
	movl	%r8d, %eax
	movl	%edx, -204(%rbp)        # 4-byte Spill
	cltd
	movl	-204(%rbp), %r8d        # 4-byte Reload
	idivl	%r8d
	movl	%edx, -44(%rbp)
	movq	$1504078485, -136(%rbp) # imm = 0x59A66A95
	movslq	-36(%rbp), %rdi
	movq	%rdi, -128(%rbp)
	movslq	-32(%rbp), %rdi
	movq	%rdi, -120(%rbp)
	movl	-56(%rbp), %edx
	shll	$3, %edx
	movslq	%edx, %rdi
	movq	%rdi, -112(%rbp)
	movl	-36(%rbp), %edx
	imull	-56(%rbp), %edx
	addl	-44(%rbp), %edx
	imull	-32(%rbp), %edx
	movslq	%edx, %rdi
	movq	%rdi, -104(%rbp)
	cmpl	$0, -28(%rbp)
	cmovnel	%r8d, %ecx
	movslq	%ecx, %rdi
	movq	%rdi, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	-16(%rbp), %rdi
	callq	write_sun_header
	cmpl	$0, -28(%rbp)
	jne	.LBB21_23
# BB#1:                                 # %if.then
	movl	$0, -48(%rbp)
.LBB21_2:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_9 Depth 2
                                        #     Child Loop BB21_15 Depth 2
	movl	-48(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB21_22
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB21_2 Depth=1
	movl	-48(%rbp), %eax
	cltd
	idivl	-40(%rbp)
	cmpl	$0, %edx
	jne	.LBB21_8
# BB#4:                                 # %if.then.21
                                        #   in Loop: Header=BB21_2 Depth=1
	movl	-48(%rbp), %eax
	addl	-40(%rbp), %eax
	subl	$1, %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB21_6
# BB#5:                                 # %cond.true
                                        #   in Loop: Header=BB21_2 Depth=1
	movl	-40(%rbp), %eax
	movl	%eax, -208(%rbp)        # 4-byte Spill
	jmp	.LBB21_7
.LBB21_6:                               # %cond.false
                                        #   in Loop: Header=BB21_2 Depth=1
	movl	-32(%rbp), %eax
	subl	-48(%rbp), %eax
	movl	%eax, -208(%rbp)        # 4-byte Spill
.LBB21_7:                               # %cond.end
                                        #   in Loop: Header=BB21_2 Depth=1
	movl	-208(%rbp), %eax        # 4-byte Reload
	leaq	-184(%rbp), %rdi
	xorl	%edx, %edx
	movl	%eax, -196(%rbp)
	movq	-64(%rbp), %rsi
	movl	-48(%rbp), %ecx
	movl	-36(%rbp), %r8d
	movl	-196(%rbp), %r9d
	callq	gimp_pixel_rgn_get_rect
	movq	-64(%rbp), %rsi
	movq	%rsi, -72(%rbp)
.LBB21_8:                               # %if.end
                                        #   in Loop: Header=BB21_2 Depth=1
	movl	$0, -52(%rbp)
.LBB21_9:                               # %for.cond.27
                                        #   Parent Loop BB21_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-52(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB21_14
# BB#10:                                # %for.body.30
                                        #   in Loop: Header=BB21_9 Depth=2
	cmpl	$4, -56(%rbp)
	jne	.LBB21_12
# BB#11:                                # %if.then.33
                                        #   in Loop: Header=BB21_9 Depth=2
	xorl	%edi, %edi
	movq	-16(%rbp), %rsi
	callq	_IO_putc
	movl	%eax, -212(%rbp)        # 4-byte Spill
.LBB21_12:                              # %if.end.35
                                        #   in Loop: Header=BB21_9 Depth=2
	movq	-72(%rbp), %rax
	movzbl	2(%rax), %edi
	movq	-16(%rbp), %rsi
	callq	_IO_putc
	movq	-72(%rbp), %rsi
	movzbl	1(%rsi), %edi
	movq	-16(%rbp), %rsi
	movl	%eax, -216(%rbp)        # 4-byte Spill
	callq	_IO_putc
	movq	-72(%rbp), %rsi
	movzbl	(%rsi), %edi
	movq	-16(%rbp), %rsi
	movl	%eax, -220(%rbp)        # 4-byte Spill
	callq	_IO_putc
	movq	-72(%rbp), %rsi
	addq	$3, %rsi
	movq	%rsi, -72(%rbp)
	movl	%eax, -224(%rbp)        # 4-byte Spill
# BB#13:                                # %for.inc
                                        #   in Loop: Header=BB21_9 Depth=2
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB21_9
.LBB21_14:                              # %for.end
                                        #   in Loop: Header=BB21_2 Depth=1
	movl	$0, -52(%rbp)
.LBB21_15:                              # %for.cond.44
                                        #   Parent Loop BB21_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-52(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB21_18
# BB#16:                                # %for.body.47
                                        #   in Loop: Header=BB21_15 Depth=2
	xorl	%edi, %edi
	movq	-16(%rbp), %rsi
	callq	_IO_putc
	movl	%eax, -228(%rbp)        # 4-byte Spill
# BB#17:                                # %for.inc.49
                                        #   in Loop: Header=BB21_15 Depth=2
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB21_15
.LBB21_18:                              # %for.end.51
                                        #   in Loop: Header=BB21_2 Depth=1
	movl	$20, %eax
	movl	-48(%rbp), %ecx
	movl	%eax, -232(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-232(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB21_20
# BB#19:                                # %if.then.55
                                        #   in Loop: Header=BB21_2 Depth=1
	cvtsi2sdl	-48(%rbp), %xmm0
	cvtsi2sdl	-32(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -236(%rbp)        # 4-byte Spill
.LBB21_20:                              # %if.end.59
                                        #   in Loop: Header=BB21_2 Depth=1
	jmp	.LBB21_21
.LBB21_21:                              # %for.inc.60
                                        #   in Loop: Header=BB21_2 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB21_2
.LBB21_22:                              # %for.end.62
	jmp	.LBB21_45
.LBB21_23:                              # %if.else
	movq	-16(%rbp), %rdi
	callq	rle_startwrite
	movl	$0, -48(%rbp)
.LBB21_24:                              # %for.cond.63
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_31 Depth 2
                                        #     Child Loop BB21_37 Depth 2
	movl	-48(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB21_44
# BB#25:                                # %for.body.66
                                        #   in Loop: Header=BB21_24 Depth=1
	movl	-48(%rbp), %eax
	cltd
	idivl	-40(%rbp)
	cmpl	$0, %edx
	jne	.LBB21_30
# BB#26:                                # %if.then.70
                                        #   in Loop: Header=BB21_24 Depth=1
	movl	-48(%rbp), %eax
	addl	-40(%rbp), %eax
	subl	$1, %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB21_28
# BB#27:                                # %cond.true.76
                                        #   in Loop: Header=BB21_24 Depth=1
	movl	-40(%rbp), %eax
	movl	%eax, -240(%rbp)        # 4-byte Spill
	jmp	.LBB21_29
.LBB21_28:                              # %cond.false.77
                                        #   in Loop: Header=BB21_24 Depth=1
	movl	-32(%rbp), %eax
	subl	-48(%rbp), %eax
	movl	%eax, -240(%rbp)        # 4-byte Spill
.LBB21_29:                              # %cond.end.79
                                        #   in Loop: Header=BB21_24 Depth=1
	movl	-240(%rbp), %eax        # 4-byte Reload
	leaq	-184(%rbp), %rdi
	xorl	%edx, %edx
	movl	%eax, -200(%rbp)
	movq	-64(%rbp), %rsi
	movl	-48(%rbp), %ecx
	movl	-36(%rbp), %r8d
	movl	-200(%rbp), %r9d
	callq	gimp_pixel_rgn_get_rect
	movq	-64(%rbp), %rsi
	movq	%rsi, -72(%rbp)
.LBB21_30:                              # %if.end.81
                                        #   in Loop: Header=BB21_24 Depth=1
	movl	$0, -52(%rbp)
.LBB21_31:                              # %for.cond.82
                                        #   Parent Loop BB21_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-52(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB21_36
# BB#32:                                # %for.body.85
                                        #   in Loop: Header=BB21_31 Depth=2
	cmpl	$4, -56(%rbp)
	jne	.LBB21_34
# BB#33:                                # %if.then.88
                                        #   in Loop: Header=BB21_31 Depth=2
	xorl	%edi, %edi
	movq	-16(%rbp), %rsi
	callq	rle_fputc
	movl	%eax, -244(%rbp)        # 4-byte Spill
.LBB21_34:                              # %if.end.90
                                        #   in Loop: Header=BB21_31 Depth=2
	movq	-72(%rbp), %rax
	movzbl	2(%rax), %edi
	movq	-16(%rbp), %rsi
	callq	rle_fputc
	movq	-72(%rbp), %rsi
	movzbl	1(%rsi), %edi
	movq	-16(%rbp), %rsi
	movl	%eax, -248(%rbp)        # 4-byte Spill
	callq	rle_fputc
	movq	-72(%rbp), %rsi
	movzbl	(%rsi), %edi
	movq	-16(%rbp), %rsi
	movl	%eax, -252(%rbp)        # 4-byte Spill
	callq	rle_fputc
	movq	-72(%rbp), %rsi
	addq	$3, %rsi
	movq	%rsi, -72(%rbp)
	movl	%eax, -256(%rbp)        # 4-byte Spill
# BB#35:                                # %for.inc.100
                                        #   in Loop: Header=BB21_31 Depth=2
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB21_31
.LBB21_36:                              # %for.end.102
                                        #   in Loop: Header=BB21_24 Depth=1
	movl	$0, -52(%rbp)
.LBB21_37:                              # %for.cond.103
                                        #   Parent Loop BB21_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-52(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB21_40
# BB#38:                                # %for.body.106
                                        #   in Loop: Header=BB21_37 Depth=2
	xorl	%edi, %edi
	movq	-16(%rbp), %rsi
	callq	rle_fputc
	movl	%eax, -260(%rbp)        # 4-byte Spill
# BB#39:                                # %for.inc.108
                                        #   in Loop: Header=BB21_37 Depth=2
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB21_37
.LBB21_40:                              # %for.end.110
                                        #   in Loop: Header=BB21_24 Depth=1
	movl	$20, %eax
	movl	-48(%rbp), %ecx
	movl	%eax, -264(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-264(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB21_42
# BB#41:                                # %if.then.114
                                        #   in Loop: Header=BB21_24 Depth=1
	cvtsi2sdl	-48(%rbp), %xmm0
	cvtsi2sdl	-32(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -268(%rbp)        # 4-byte Spill
.LBB21_42:                              # %if.end.119
                                        #   in Loop: Header=BB21_24 Depth=1
	jmp	.LBB21_43
.LBB21_43:                              # %for.inc.120
                                        #   in Loop: Header=BB21_24 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB21_24
.LBB21_44:                              # %for.end.122
	movq	-16(%rbp), %rdi
	callq	rle_endwrite
.LBB21_45:                              # %if.end.123
	movq	-64(%rbp), %rdi
	callq	g_free
	movq	-192(%rbp), %rdi
	callq	gimp_drawable_detach
	movq	-16(%rbp), %rdi
	callq	ferror
	cmpl	$0, %eax
	je	.LBB21_47
# BB#46:                                # %if.then.126
	movabsq	$.L.str.55, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movl	$0, -4(%rbp)
	jmp	.LBB21_48
.LBB21_47:                              # %if.end.128
	movl	$1, -4(%rbp)
.LBB21_48:                              # %return
	movl	-4(%rbp), %eax
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end21:
	.size	save_rgb, .Lfunc_end21-save_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	write_sun_header,@function
write_sun_header:                       # @write_sun_header
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
.Ltmp77:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp78:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$8, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movl	$0, -20(%rbp)
.LBB22_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB22_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -32(%rbp)
	movq	(%rax), %rsi
	callq	write_card32
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB22_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB22_1
.LBB22_4:                               # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	write_sun_header, .Lfunc_end22-write_sun_header
	.cfi_endproc

	.align	16, 0x90
	.type	write_sun_cols,@function
write_sun_cols:                         # @write_sun_cols
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
.Ltmp80:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp81:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$3, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	56(%rdx), %rax
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	divq	%rcx
	movl	%eax, %r8d
	movl	%r8d, -28(%rbp)
	movq	-24(%rbp), %rdi
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rax, %rdx
	movq	-40(%rbp), %rcx         # 8-byte Reload
	callq	fwrite
	movq	%rax, -48(%rbp)         # 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	write_sun_cols, .Lfunc_end23-write_sun_cols
	.cfi_endproc

	.align	16, 0x90
	.type	rle_fwrite,@function
rle_fwrite:                             # @rle_fwrite
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	$0, -40(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movl	$0, -28(%rbp)
.LBB24_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_3 Depth 2
	movl	-28(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB24_12
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB24_1 Depth=1
	movl	$0, -32(%rbp)
.LBB24_3:                               # %for.cond.1
                                        #   Parent Loop BB24_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB24_8
# BB#4:                                 # %for.body.3
                                        #   in Loop: Header=BB24_3 Depth=2
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movzbl	(%rax), %edi
	movq	-24(%rbp), %rsi
	callq	rle_fputc
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jge	.LBB24_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB24_1 Depth=1
	movl	$1, -40(%rbp)
	jmp	.LBB24_8
.LBB24_6:                               # %if.end
                                        #   in Loop: Header=BB24_3 Depth=2
	jmp	.LBB24_7
.LBB24_7:                               # %for.inc
                                        #   in Loop: Header=BB24_3 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB24_3
.LBB24_8:                               # %for.end
                                        #   in Loop: Header=BB24_1 Depth=1
	cmpl	$0, -40(%rbp)
	je	.LBB24_10
# BB#9:                                 # %if.then.6
	jmp	.LBB24_12
.LBB24_10:                              # %if.end.7
                                        #   in Loop: Header=BB24_1 Depth=1
	jmp	.LBB24_11
.LBB24_11:                              # %for.inc.8
                                        #   in Loop: Header=BB24_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB24_1
.LBB24_12:                              # %for.end.10
	movl	-28(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	rle_fwrite, .Lfunc_end24-rle_fwrite
	.cfi_endproc

	.align	16, 0x90
	.type	rle_startwrite,@function
rle_startwrite:                         # @rle_startwrite
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
	movq	%rdi, -8(%rbp)
	movl	$0, rlebuf+4
	movl	$0, rlebuf
	popq	%rbp
	retq
.Lfunc_end25:
	.size	rle_startwrite, .Lfunc_end25-rle_startwrite
	.cfi_endproc

	.align	16, 0x90
	.type	my_fwrite,@function
my_fwrite:                              # @my_fwrite
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp88:
	.cfi_def_cfa_offset 16
.Ltmp89:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp90:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movslq	-12(%rbp), %rsi
	movslq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	callq	fwrite
	movl	%eax, %r8d
	movl	%r8d, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	my_fwrite, .Lfunc_end26-my_fwrite
	.cfi_endproc

	.align	16, 0x90
	.type	byte2bit,@function
byte2bit:                               # @byte2bit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp91:
	.cfi_def_cfa_offset 16
.Ltmp92:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp93:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
.LBB27_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -12(%rbp)
	jl	.LBB27_22
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB27_1 Depth=1
	movb	$0, -29(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	cmpb	$0, (%rax)
	je	.LBB27_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB27_1 Depth=1
	movzbl	-29(%rbp), %eax
	orl	$128, %eax
	movb	%al, %cl
	movb	%cl, -29(%rbp)
.LBB27_4:                               # %if.end
                                        #   in Loop: Header=BB27_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	cmpb	$0, (%rax)
	je	.LBB27_6
# BB#5:                                 # %if.then.4
                                        #   in Loop: Header=BB27_1 Depth=1
	movzbl	-29(%rbp), %eax
	orl	$64, %eax
	movb	%al, %cl
	movb	%cl, -29(%rbp)
.LBB27_6:                               # %if.end.8
                                        #   in Loop: Header=BB27_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	cmpb	$0, (%rax)
	je	.LBB27_8
# BB#7:                                 # %if.then.11
                                        #   in Loop: Header=BB27_1 Depth=1
	movzbl	-29(%rbp), %eax
	orl	$32, %eax
	movb	%al, %cl
	movb	%cl, -29(%rbp)
.LBB27_8:                               # %if.end.15
                                        #   in Loop: Header=BB27_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	cmpb	$0, (%rax)
	je	.LBB27_10
# BB#9:                                 # %if.then.18
                                        #   in Loop: Header=BB27_1 Depth=1
	movzbl	-29(%rbp), %eax
	orl	$16, %eax
	movb	%al, %cl
	movb	%cl, -29(%rbp)
.LBB27_10:                              # %if.end.22
                                        #   in Loop: Header=BB27_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	cmpb	$0, (%rax)
	je	.LBB27_12
# BB#11:                                # %if.then.25
                                        #   in Loop: Header=BB27_1 Depth=1
	movzbl	-29(%rbp), %eax
	orl	$8, %eax
	movb	%al, %cl
	movb	%cl, -29(%rbp)
.LBB27_12:                              # %if.end.29
                                        #   in Loop: Header=BB27_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	cmpb	$0, (%rax)
	je	.LBB27_14
# BB#13:                                # %if.then.32
                                        #   in Loop: Header=BB27_1 Depth=1
	movzbl	-29(%rbp), %eax
	orl	$4, %eax
	movb	%al, %cl
	movb	%cl, -29(%rbp)
.LBB27_14:                              # %if.end.36
                                        #   in Loop: Header=BB27_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	cmpb	$0, (%rax)
	je	.LBB27_16
# BB#15:                                # %if.then.39
                                        #   in Loop: Header=BB27_1 Depth=1
	movzbl	-29(%rbp), %eax
	orl	$2, %eax
	movb	%al, %cl
	movb	%cl, -29(%rbp)
.LBB27_16:                              # %if.end.43
                                        #   in Loop: Header=BB27_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	cmpb	$0, (%rax)
	je	.LBB27_18
# BB#17:                                # %if.then.46
                                        #   in Loop: Header=BB27_1 Depth=1
	movzbl	-29(%rbp), %eax
	orl	$1, %eax
	movb	%al, %cl
	movb	%cl, -29(%rbp)
.LBB27_18:                              # %if.end.50
                                        #   in Loop: Header=BB27_1 Depth=1
	cmpl	$0, -28(%rbp)
	je	.LBB27_20
# BB#19:                                # %cond.true
                                        #   in Loop: Header=BB27_1 Depth=1
	movzbl	-29(%rbp), %eax
	xorl	$-1, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB27_21
.LBB27_20:                              # %cond.false
                                        #   in Loop: Header=BB27_1 Depth=1
	movzbl	-29(%rbp), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB27_21:                              # %cond.end
                                        #   in Loop: Header=BB27_1 Depth=1
	movl	-44(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -24(%rbp)
	movb	%cl, (%rdx)
	movl	-12(%rbp), %eax
	subl	$8, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB27_1
.LBB27_22:                              # %while.end
	cmpl	$0, -12(%rbp)
	jle	.LBB27_41
# BB#23:                                # %if.then.58
	leaq	-37(%rbp), %rax
	xorl	%esi, %esi
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	memset
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	-8(%rbp), %rsi
	movslq	-12(%rbp), %rdx
	movq	%rax, %rdi
	callq	memcpy
	movb	$0, -29(%rbp)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -8(%rbp)
	cmpb	$0, (%rdx)
	je	.LBB27_25
# BB#24:                                # %if.then.62
	movzbl	-29(%rbp), %eax
	orl	$128, %eax
	movb	%al, %cl
	movb	%cl, -29(%rbp)
.LBB27_25:                              # %if.end.66
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	cmpb	$0, (%rax)
	je	.LBB27_27
# BB#26:                                # %if.then.69
	movzbl	-29(%rbp), %eax
	orl	$64, %eax
	movb	%al, %cl
	movb	%cl, -29(%rbp)
.LBB27_27:                              # %if.end.73
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	cmpb	$0, (%rax)
	je	.LBB27_29
# BB#28:                                # %if.then.76
	movzbl	-29(%rbp), %eax
	orl	$32, %eax
	movb	%al, %cl
	movb	%cl, -29(%rbp)
.LBB27_29:                              # %if.end.80
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	cmpb	$0, (%rax)
	je	.LBB27_31
# BB#30:                                # %if.then.83
	movzbl	-29(%rbp), %eax
	orl	$16, %eax
	movb	%al, %cl
	movb	%cl, -29(%rbp)
.LBB27_31:                              # %if.end.87
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	cmpb	$0, (%rax)
	je	.LBB27_33
# BB#32:                                # %if.then.90
	movzbl	-29(%rbp), %eax
	orl	$8, %eax
	movb	%al, %cl
	movb	%cl, -29(%rbp)
.LBB27_33:                              # %if.end.94
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	cmpb	$0, (%rax)
	je	.LBB27_35
# BB#34:                                # %if.then.97
	movzbl	-29(%rbp), %eax
	orl	$4, %eax
	movb	%al, %cl
	movb	%cl, -29(%rbp)
.LBB27_35:                              # %if.end.101
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	cmpb	$0, (%rax)
	je	.LBB27_37
# BB#36:                                # %if.then.104
	movzbl	-29(%rbp), %eax
	orl	$2, %eax
	movb	%al, %cl
	movb	%cl, -29(%rbp)
.LBB27_37:                              # %if.end.108
	cmpl	$0, -28(%rbp)
	je	.LBB27_39
# BB#38:                                # %cond.true.110
	movzbl	-29(%rbp), %eax
	xorl	$-1, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB27_40
.LBB27_39:                              # %cond.false.113
	movzbl	-29(%rbp), %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB27_40:                              # %cond.end.115
	movl	-60(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movb	%cl, (%rdx)
.LBB27_41:                              # %if.end.118
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	byte2bit, .Lfunc_end27-byte2bit
	.cfi_endproc

	.align	16, 0x90
	.type	rle_endwrite,@function
rle_endwrite:                           # @rle_endwrite
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp94:
	.cfi_def_cfa_offset 16
.Ltmp95:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp96:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpl	$0, rlebuf+4
	jle	.LBB28_2
# BB#1:                                 # %if.then
	movl	rlebuf+4, %edi
	movl	rlebuf, %esi
	movq	-8(%rbp), %rdx
	callq	rle_putrun
	movl	$0, rlebuf+4
	movl	$0, rlebuf
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB28_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	rle_endwrite, .Lfunc_end28-rle_endwrite
	.cfi_endproc

	.align	16, 0x90
	.type	write_card32,@function
write_card32:                           # @write_card32
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp97:
	.cfi_def_cfa_offset 16
.Ltmp98:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp99:
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
.Lfunc_end29:
	.size	write_card32, .Lfunc_end29-write_card32
	.cfi_endproc

	.align	16, 0x90
	.type	rle_fputc,@function
rle_fputc:                              # @rle_fputc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp100:
	.cfi_def_cfa_offset 16
.Ltmp101:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp102:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$0, rlebuf+4
	jne	.LBB30_2
# BB#1:                                 # %if.then
	movl	$1, rlebuf+4
	movl	-8(%rbp), %eax
	movl	%eax, rlebuf
	movl	%eax, -4(%rbp)
	jmp	.LBB30_11
.LBB30_2:                               # %if.end
	movl	rlebuf, %eax
	cmpl	-8(%rbp), %eax
	jne	.LBB30_8
# BB#3:                                 # %if.then.3
	movl	rlebuf+4, %eax
	addl	$1, %eax
	movl	%eax, rlebuf+4
	cmpl	$257, rlebuf+4          # imm = 0x101
	jne	.LBB30_7
# BB#4:                                 # %if.then.5
	movl	$256, %edi              # imm = 0x100
	movl	rlebuf, %esi
	movq	-16(%rbp), %rdx
	callq	rle_putrun
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jge	.LBB30_6
# BB#5:                                 # %if.then.7
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB30_11
.LBB30_6:                               # %if.end.8
	movl	rlebuf+4, %eax
	subl	$256, %eax              # imm = 0x100
	movl	%eax, rlebuf+4
.LBB30_7:                               # %if.end.9
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB30_11
.LBB30_8:                               # %if.end.10
	movl	rlebuf+4, %edi
	movl	rlebuf, %esi
	movq	-16(%rbp), %rdx
	callq	rle_putrun
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jge	.LBB30_10
# BB#9:                                 # %if.then.13
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB30_11
.LBB30_10:                              # %if.end.14
	movl	$1, rlebuf+4
	movl	-8(%rbp), %eax
	movl	%eax, rlebuf
	movl	%eax, -4(%rbp)
.LBB30_11:                              # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	rle_fputc, .Lfunc_end30-rle_fputc
	.cfi_endproc

	.align	16, 0x90
	.type	rle_putrun,@function
rle_putrun:                             # @rle_putrun
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp103:
	.cfi_def_cfa_offset 16
.Ltmp104:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp105:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	$128, -24(%rbp)
	cmpl	$2, -4(%rbp)
	jg	.LBB31_3
# BB#1:                                 # %lor.lhs.false
	cmpl	$2, -4(%rbp)
	jne	.LBB31_4
# BB#2:                                 # %land.lhs.true
	movl	-8(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jne	.LBB31_4
.LBB31_3:                               # %if.then
	movl	-24(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	_IO_putc
	movl	-4(%rbp), %edi
	subl	$1, %edi
	movq	-16(%rbp), %rsi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	_IO_putc
	movl	-8(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	%eax, -32(%rbp)         # 4-byte Spill
	callq	_IO_putc
	movl	%eax, -20(%rbp)
	jmp	.LBB31_11
.LBB31_4:                               # %if.else
	cmpl	$2, -4(%rbp)
	jne	.LBB31_6
# BB#5:                                 # %if.then.7
	movl	-8(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	_IO_putc
	movl	-8(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	_IO_putc
	movl	%eax, -20(%rbp)
	jmp	.LBB31_10
.LBB31_6:                               # %if.else.10
	movl	-8(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jne	.LBB31_8
# BB#7:                                 # %if.then.12
	movl	-24(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	_IO_putc
	xorl	%edi, %edi
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rsi
	callq	_IO_putc
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB31_9
.LBB31_8:                               # %if.else.15
	movl	-8(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	_IO_putc
	movl	%eax, -20(%rbp)
.LBB31_9:                               # %if.end
	jmp	.LBB31_10
.LBB31_10:                              # %if.end.17
	jmp	.LBB31_11
.LBB31_11:                              # %if.end.18
	cmpl	$0, -20(%rbp)
	jge	.LBB31_13
# BB#12:                                # %cond.true
	movl	-20(%rbp), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB31_14
.LBB31_13:                              # %cond.false
	movl	-8(%rbp), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB31_14:                              # %cond.end
	movl	-44(%rbp), %eax         # 4-byte Reload
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	rle_putrun, .Lfunc_end31-rle_putrun
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
	.asciz	"rle"
	.size	.L.str.11, 4

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Specify non-zero for rle output, zero for standard output"
	.size	.L.str.12, 58

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"file-sunras-load"
	.size	.L.str.13, 17

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"load file of the SunRaster file format"
	.size	.L.str.14, 39

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Peter Kirchgessner"
	.size	.L.str.15, 19

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"1996"
	.size	.L.str.16, 5

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"SUN Rasterfile image"
	.size	.L.str.17, 21

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"image/x-sun-raster"
	.size	.L.str.18, 19

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"im1,im8,im24,im32,rs,ras"
	.size	.L.str.19, 25

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.zero	1
	.size	.L.str.20, 1

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"0,long,0x59a66a95"
	.size	.L.str.21, 18

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"file-sunras-save"
	.size	.L.str.22, 17

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"save file in the SunRaster file format"
	.size	.L.str.23, 39

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"SUNRAS saving handles all image types except those with alpha channels."
	.size	.L.str.24, 72

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"RGB, GRAY, INDEXED"
	.size	.L.str.25, 19

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,80,16
	.type	l_run_mode,@object      # @l_run_mode
	.local	l_run_mode
	.comm	l_run_mode,4,4
	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.26, 20

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"UTF-8"
	.size	.L.str.27, 6

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"file-sunras"
	.size	.L.str.28, 12

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"SUNRAS"
	.size	.L.str.29, 7

	.type	psvals,@object          # @psvals
	.data
	.align	4
psvals:
	.long	1                       # 0x1
	.size	psvals, 4

	.type	.L.str.30,@object       # @.str.30
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.30:
	.asciz	"rb"
	.size	.L.str.30, 3

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Could not open '%s' for reading: %s"
	.size	.L.str.31, 36

	.type	read_msb_first,@object  # @read_msb_first
	.data
	.align	4
read_msb_first:
	.long	1                       # 0x1
	.size	read_msb_first, 4

	.type	.L.str.32,@object       # @.str.32
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.32:
	.asciz	"Could not open '%s' as SUN-raster-file"
	.size	.L.str.32, 39

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"%s"
	.size	.L.str.33, 3

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"The type of this SUN-rasterfile is not supported"
	.size	.L.str.34, 49

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Map lengths greater than 256 entries are unsupported by GIMP."
	.size	.L.str.35, 62

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Could not read color entries from '%s'"
	.size	.L.str.36, 39

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Type of colormap not supported"
	.size	.L.str.37, 31

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"'%s':\nNo image width specified"
	.size	.L.str.38, 31

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"'%s':\nImage width is larger than GIMP can handle"
	.size	.L.str.39, 49

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"'%s':\nNo image height specified"
	.size	.L.str.40, 32

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"'%s':\nImage height is larger than GIMP can handle"
	.size	.L.str.41, 50

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Opening '%s'"
	.size	.L.str.42, 13

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"This image depth is not supported"
	.size	.L.str.43, 34

	.type	.Lload_sun_d1.sun_bwcolmap,@object # @load_sun_d1.sun_bwcolmap
	.section	.rodata,"a",@progbits
.Lload_sun_d1.sun_bwcolmap:
	.asciz	"\377\000\377\000\377"
	.size	.Lload_sun_d1.sun_bwcolmap, 6

	.type	rlebuf,@object          # @rlebuf
	.local	rlebuf
	.comm	rlebuf,8,4
	.type	.L.str.44,@object       # @.str.44
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.44:
	.asciz	"EOF encountered on reading"
	.size	.L.str.44, 27

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Unsupported image type"
	.size	.L.str.45, 23

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Background"
	.size	.L.str.46, 11

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Data Formatting"
	.size	.L.str.47, 16

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"RunLength Encoded"
	.size	.L.str.48, 18

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Standard"
	.size	.L.str.49, 9

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"SUNRAS save cannot handle images with alpha channels"
	.size	.L.str.50, 53

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Can't operate on unknown image types"
	.size	.L.str.51, 37

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"wb"
	.size	.L.str.52, 3

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Could not open '%s' for writing: %s"
	.size	.L.str.53, 36

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Saving '%s'"
	.size	.L.str.54, 12

	.type	save_index.sun_bwmap,@object # @save_index.sun_bwmap
	.data
save_index.sun_bwmap:
	.ascii	"\000\377\000\377\000\377"
	.size	save_index.sun_bwmap, 6

	.type	save_index.sun_wbmap,@object # @save_index.sun_wbmap
save_index.sun_wbmap:
	.asciz	"\377\000\377\000\377"
	.size	save_index.sun_wbmap, 6

	.type	.L.str.55,@object       # @.str.55
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.55:
	.asciz	"Write error occurred"
	.size	.L.str.55, 21


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
