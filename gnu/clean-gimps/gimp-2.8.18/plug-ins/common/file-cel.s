	.text
	.file	"file-cel.bc"
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
	subq	$104, %rsp
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
	movabsq	$.L.str.18, %rcx
	movabsq	$.L.str.19, %r8
	movabsq	$.L.str.20, %r9
	movabsq	$.L.str.21, %rax
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	movl	$1, %r10d
	movl	$4, %ebx
	movabsq	$query.load_args, %r14
	movabsq	$query.load_return_vals, %r15
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$4, 24(%rsp)
	movl	$1, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	%r15, 48(%rsp)
	movl	%r10d, -44(%rbp)        # 4-byte Spill
	movq	%r11, -56(%rbp)         # 8-byte Spill
	movl	%ebx, -60(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.22, %rsi
	movabsq	$.L.str.23, %rdx
	movabsq	$.L.str.24, %rcx
	callq	gimp_register_magic_load_handler
	movabsq	$.L.str.25, %rdi
	movabsq	$.L.str.26, %rsi
	movabsq	$.L.str.27, %rdx
	movabsq	$.L.str.18, %rcx
	movabsq	$.L.str.19, %r8
	movabsq	$.L.str.20, %r9
	movabsq	$.L.str.21, %r11
	movabsq	$.L.str.28, %r14
	movl	$1, %r10d
	movl	$6, %ebx
	xorl	%r12d, %r12d
	movabsq	$query.save_args, %r15
	xorl	%r13d, %r13d
                                        # kill: R13<def> R13D<kill>
	movq	%r11, (%rsp)
	movq	%r14, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$6, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	movl	%eax, -64(%rbp)         # 4-byte Spill
	movq	%r13, -72(%rbp)         # 8-byte Spill
	movl	%r10d, -76(%rbp)        # 4-byte Spill
	movl	%r12d, -80(%rbp)        # 4-byte Spill
	movl	%ebx, -84(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.25, %rdi
	movabsq	$.L.str.22, %rsi
	movabsq	$.L.str.23, %rdx
	callq	gimp_register_save_handler
	movl	%eax, -88(%rbp)         # 4-byte Spill
	addq	$104, %rsp
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
	movl	$3, -56(%rbp)
	movl	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movl	$0, -76(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -44(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.29, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.29, %rdi
	movabsq	$.L.str.30, %rsi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.29, %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -104(%rbp)        # 8-byte Spill
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
	jne	.LBB1_27
# BB#3:                                 # %if.then
	cmpl	$1, -44(%rbp)
	je	.LBB1_8
# BB#4:                                 # %if.then.6
	movabsq	$.L.str.25, %rdi
	callq	gimp_procedural_db_get_data_size
	movslq	%eax, %rdi
	movq	%rdi, data_length
	cmpq	$0, data_length
	jbe	.LBB1_6
# BB#5:                                 # %if.then.10
	movq	data_length, %rdi
	callq	g_malloc
	movabsq	$.L.str.25, %rdi
	movq	%rax, palette_file
	movq	palette_file, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB1_7
.LBB1_6:                                # %if.else
	movabsq	$.L.str.31, %rdi
	callq	g_strdup
	movq	%rax, palette_file
	movq	palette_file, %rdi
	callq	strlen
	addq	$1, %rax
	movq	%rax, data_length
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.15
	cmpl	$1, -44(%rbp)
	jne	.LBB1_13
# BB#9:                                 # %if.then.18
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, palette_file
	cmpq	$0, palette_file
	je	.LBB1_11
# BB#10:                                # %if.then.21
	movq	palette_file, %rdi
	callq	strlen
	addq	$1, %rax
	movq	%rax, data_length
	jmp	.LBB1_12
.LBB1_11:                               # %if.else.24
	movq	$0, data_length
.LBB1_12:                               # %if.end.25
	jmp	.LBB1_20
.LBB1_13:                               # %if.else.26
	cmpl	$0, -44(%rbp)
	jne	.LBB1_19
# BB#14:                                # %if.then.29
	leaq	-72(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	need_palette
	movl	%eax, -76(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB1_18
# BB#15:                                # %if.then.35
	cmpl	$0, -76(%rbp)
	je	.LBB1_17
# BB#16:                                # %if.then.37
	movabsq	$.L.str.32, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	palette_dialog
.LBB1_17:                               # %if.end.39
	movabsq	$.L.str.25, %rdi
	movq	palette_file, %rsi
	movq	data_length, %rax
	movl	%eax, %ecx
	movl	%ecx, %edx
	callq	gimp_procedural_db_set_data
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB1_18:                               # %if.end.42
	jmp	.LBB1_19
.LBB1_19:                               # %if.end.43
	jmp	.LBB1_20
.LBB1_20:                               # %if.end.44
	cmpq	$0, -72(%rbp)
	jne	.LBB1_25
# BB#21:                                # %if.then.46
	leaq	-72(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	88(%rax), %rsi
	callq	load_image
	movl	%eax, -60(%rbp)
	cmpl	$-1, -60(%rbp)
	je	.LBB1_23
# BB#22:                                # %if.then.56
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$13, run.values+40
	movl	-60(%rbp), %ecx
	movl	%ecx, run.values+48
	jmp	.LBB1_24
.LBB1_23:                               # %if.else.57
	movl	$0, -56(%rbp)
.LBB1_24:                               # %if.end.58
	jmp	.LBB1_26
.LBB1_25:                               # %if.else.59
	movl	$0, -56(%rbp)
.LBB1_26:                               # %if.end.60
	jmp	.LBB1_43
.LBB1_27:                               # %if.else.61
	movq	-8(%rbp), %rdi
	movl	$.L.str.25, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_41
# BB#28:                                # %if.then.65
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	88(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movl	-44(%rbp), %ecx
	orl	$2, %ecx
	subl	$2, %ecx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	je	.LBB1_29
	jmp	.LBB1_32
.LBB1_29:                               # %sw.bb
	movabsq	$.L.str.33, %rdi
	xorl	%esi, %esi
	callq	gimp_ui_init
	leaq	-48(%rbp), %rdi
	leaq	-52(%rbp), %rsi
	movabsq	$.L.str.34, %rdx
	movl	$21, %ecx
	callq	gimp_export_image
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	jne	.LBB1_31
# BB#30:                                # %if.then.75
	movl	$4, run.values+8
	jmp	.LBB1_47
.LBB1_31:                               # %if.end.76
	jmp	.LBB1_33
.LBB1_32:                               # %sw.default
	jmp	.LBB1_33
.LBB1_33:                               # %sw.epilog
	leaq	-72(%rbp), %r8
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	168(%rax), %rsi
	movl	-48(%rbp), %edx
	movl	-52(%rbp), %ecx
	callq	save_image
	cmpl	$0, %eax
	je	.LBB1_37
# BB#34:                                # %if.then.85
	cmpq	$0, data_length
	je	.LBB1_36
# BB#35:                                # %if.then.87
	movabsq	$.L.str.25, %rdi
	movq	palette_file, %rsi
	movq	data_length, %rax
	movl	%eax, %ecx
	movl	%ecx, %edx
	callq	gimp_procedural_db_set_data
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB1_36:                               # %if.end.90
	jmp	.LBB1_38
.LBB1_37:                               # %if.else.91
	movl	$0, -56(%rbp)
.LBB1_38:                               # %if.end.92
	cmpl	$2, -64(%rbp)
	jne	.LBB1_40
# BB#39:                                # %if.then.95
	movl	-48(%rbp), %edi
	callq	gimp_image_delete
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB1_40:                               # %if.end.97
	jmp	.LBB1_42
.LBB1_41:                               # %if.else.98
	movl	$1, -56(%rbp)
.LBB1_42:                               # %if.end.99
	jmp	.LBB1_43
.LBB1_43:                               # %if.end.100
	cmpl	$3, -56(%rbp)
	je	.LBB1_46
# BB#44:                                # %land.lhs.true
	cmpq	$0, -72(%rbp)
	je	.LBB1_46
# BB#45:                                # %if.then.104
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$4, run.values+40
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, run.values+48
.LBB1_46:                               # %if.end.105
	movl	-56(%rbp), %eax
	movl	%eax, run.values+8
.LBB1_47:                               # %return
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
	.type	need_palette,@function
need_palette:                           # @need_palette
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
	subq	$128, %rsp
	movabsq	$.L.str.35, %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	fopen
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.36, %rdi
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
	jmp	.LBB3_5
.LBB3_2:                                # %if.end
	movl	$32, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-64(%rbp), %rdi
	movq	-32(%rbp), %rcx
	callq	fread
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	callq	fclose
	cmpq	$1, -72(%rbp)
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jae	.LBB3_4
# BB#3:                                 # %if.then.11
	movq	-24(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.37, %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	gettext
	movl	$24, %edx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	-124(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB3_5
.LBB3_4:                                # %if.end.14
	movzbl	-59(%rbp), %eax
	cmpl	$32, %eax
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -4(%rbp)
.LBB3_5:                                # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	need_palette, .Lfunc_end3-need_palette
	.cfi_endproc

	.align	16, 0x90
	.type	palette_dialog,@function
palette_dialog:                         # @palette_dialog
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
	subq	$96, %rsp
	movabsq	$.L.str.33, %rax
	xorl	%esi, %esi
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	xorl	%edx, %edx
	movabsq	$.L.str.38, %rcx
	movl	$4294967290, %r8d       # imm = 0xFFFFFFFA
	movabsq	$.L.str.39, %r9
	movl	$4294967291, %r10d      # imm = 0xFFFFFFFB
	movq	-8(%rbp), %rdi
	movl	$-5, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	movl	%r10d, -20(%rbp)        # 4-byte Spill
	callq	gtk_file_chooser_dialog_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	palette_file, %rsi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_filename
	movq	-16(%rbp), %rsi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movq	%rax, %rdi
	callq	gtk_dialog_set_default_response
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_run
	cmpl	$-5, %eax
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movq	palette_file, %rdi
	callq	g_free
	movq	-16(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_file_chooser_get_filename
	movq	%rax, palette_file
	movq	palette_file, %rdi
	callq	strlen
	addq	$1, %rax
	movq	%rax, data_length
.LBB4_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	gtk_widget_destroy
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	palette_dialog, .Lfunc_end4-palette_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4636737291354636288     # double 100
.LCPI5_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	load_image,@function
load_image:                             # @load_image
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
	subq	$1360, %rsp             # imm = 0x550
	movabsq	$.L.str.40, %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	fopen
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	movq	%rdi, -1000(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -1004(%rbp)       # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.36, %rdi
	movl	%eax, -1008(%rbp)       # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
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
	movl	$-1, -4(%rbp)
	jmp	.LBB5_84
.LBB5_2:                                # %if.end
	movabsq	$.L.str.41, %rdi
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -1032(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-1032(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_progress_init_printf
	movl	$4, %ecx
	movl	%ecx, %esi
	movl	$1, %ecx
	movl	%ecx, %edx
	leaq	-80(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movl	%eax, -1036(%rbp)       # 4-byte Spill
	callq	fread
	movq	%rax, -216(%rbp)
	cmpq	$1, -216(%rbp)
	jae	.LBB5_4
# BB#3:                                 # %if.then.13
	movq	-32(%rbp), %rdi
	movq	%rdi, -1048(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.37, %rdi
	movl	%eax, -1052(%rbp)       # 4-byte Spill
	callq	gettext
	movl	$24, %edx
	movq	-1048(%rbp), %rdi       # 8-byte Reload
	movl	-1052(%rbp), %esi       # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB5_84
.LBB5_4:                                # %if.end.16
	movabsq	$.L.str.42, %rsi
	movl	$4, %eax
	movl	%eax, %edx
	leaq	-80(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	je	.LBB5_6
# BB#5:                                 # %if.then.19
	movl	$16, -104(%rbp)
	movb	$4, -82(%rbp)
	movzbl	-80(%rbp), %eax
	movzbl	-79(%rbp), %ecx
	shll	$8, %ecx
	addl	%ecx, %eax
	movl	%eax, -92(%rbp)
	movzbl	-78(%rbp), %eax
	movzbl	-77(%rbp), %ecx
	shll	$8, %ecx
	addl	%ecx, %eax
	movl	%eax, -88(%rbp)
	movl	$0, -96(%rbp)
	movl	$0, -100(%rbp)
	jmp	.LBB5_15
.LBB5_6:                                # %if.else
	movl	$28, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-80(%rbp), %rdi
	movq	-40(%rbp), %rcx
	callq	fread
	movq	%rax, -216(%rbp)
	cmpq	$1, -216(%rbp)
	jae	.LBB5_8
# BB#7:                                 # %if.then.32
	movq	-32(%rbp), %rdi
	movq	%rdi, -1064(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.37, %rdi
	movl	%eax, -1068(%rbp)       # 4-byte Spill
	callq	gettext
	movl	$24, %edx
	movq	-1064(%rbp), %rdi       # 8-byte Reload
	movl	-1068(%rbp), %esi       # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB5_84
.LBB5_8:                                # %if.end.35
	movb	-80(%rbp), %al
	movb	%al, -81(%rbp)
	movzbl	-81(%rbp), %ecx
	cmpl	$32, %ecx
	je	.LBB5_11
# BB#9:                                 # %land.lhs.true
	movzbl	-81(%rbp), %eax
	cmpl	$33, %eax
	je	.LBB5_11
# BB#10:                                # %if.then.43
	movq	-32(%rbp), %rdi
	movq	%rdi, -1080(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.43, %rdi
	movl	%eax, -1084(%rbp)       # 4-byte Spill
	callq	gettext
	movl	$24, %edx
	movq	-1080(%rbp), %rdi       # 8-byte Reload
	movl	-1084(%rbp), %esi       # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB5_84
.LBB5_11:                               # %if.end.46
	movb	-79(%rbp), %al
	movb	%al, -82(%rbp)
	movzbl	-82(%rbp), %ecx
	movl	%ecx, %edx
	subl	$4, %edx
	movl	%ecx, -1088(%rbp)       # 4-byte Spill
	movl	%edx, -1092(%rbp)       # 4-byte Spill
	je	.LBB5_12
	jmp	.LBB5_85
.LBB5_85:                               # %if.end.46
	movl	-1088(%rbp), %eax       # 4-byte Reload
	subl	$8, %eax
	movl	%eax, -1096(%rbp)       # 4-byte Spill
	je	.LBB5_12
	jmp	.LBB5_86
.LBB5_86:                               # %if.end.46
	movl	-1088(%rbp), %eax       # 4-byte Reload
	subl	$32, %eax
	movl	%eax, -1100(%rbp)       # 4-byte Spill
	jne	.LBB5_13
	jmp	.LBB5_12
.LBB5_12:                               # %sw.bb
	movl	$1, %eax
	movzbl	-82(%rbp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB5_14
.LBB5_13:                               # %sw.default
	movq	-32(%rbp), %rdi
	movq	%rdi, -1112(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.44, %rdi
	movl	%eax, -1116(%rbp)       # 4-byte Spill
	callq	gettext
	movl	$24, %edx
	movzbl	-82(%rbp), %r8d
	movq	-1112(%rbp), %rdi       # 8-byte Reload
	movl	-1116(%rbp), %esi       # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB5_84
.LBB5_14:                               # %sw.epilog
	movzbl	-76(%rbp), %eax
	movzbl	-75(%rbp), %ecx
	shll	$8, %ecx
	addl	%ecx, %eax
	movl	%eax, -92(%rbp)
	movzbl	-74(%rbp), %eax
	movzbl	-73(%rbp), %ecx
	shll	$8, %ecx
	addl	%ecx, %eax
	movl	%eax, -88(%rbp)
	movzbl	-72(%rbp), %eax
	movzbl	-71(%rbp), %ecx
	shll	$8, %ecx
	addl	%ecx, %eax
	movl	%eax, -96(%rbp)
	movzbl	-70(%rbp), %eax
	movzbl	-69(%rbp), %ecx
	shll	$8, %ecx
	addl	%ecx, %eax
	movl	%eax, -100(%rbp)
.LBB5_15:                               # %if.end.77
	cmpl	$0, -92(%rbp)
	je	.LBB5_19
# BB#16:                                # %lor.lhs.false
	cmpl	$0, -88(%rbp)
	je	.LBB5_19
# BB#17:                                # %lor.lhs.false.82
	movl	-92(%rbp), %eax
	addl	-96(%rbp), %eax
	cmpl	$262144, %eax           # imm = 0x40000
	jg	.LBB5_19
# BB#18:                                # %lor.lhs.false.86
	movl	-88(%rbp), %eax
	addl	-100(%rbp), %eax
	cmpl	$262144, %eax           # imm = 0x40000
	jle	.LBB5_20
.LBB5_19:                               # %if.then.90
	movq	-32(%rbp), %rdi
	movq	%rdi, -1128(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.45, %rdi
	movl	%eax, -1132(%rbp)       # 4-byte Spill
	callq	gettext
	movl	$24, %edx
	movl	-92(%rbp), %r8d
	movl	-96(%rbp), %r9d
	movl	-88(%rbp), %ecx
	movl	-100(%rbp), %esi
	movq	-1128(%rbp), %rdi       # 8-byte Reload
	movl	-1132(%rbp), %r10d      # 4-byte Reload
	movl	%esi, -1136(%rbp)       # 4-byte Spill
	movl	%r10d, %esi
	movl	%ecx, -1140(%rbp)       # 4-byte Spill
	movq	%rax, %rcx
	movl	-1140(%rbp), %r11d      # 4-byte Reload
	movl	%r11d, (%rsp)
	movl	-1136(%rbp), %r11d      # 4-byte Reload
	movl	%r11d, 8(%rsp)
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB5_84
.LBB5_20:                               # %if.end.93
	movzbl	-82(%rbp), %eax
	cmpl	$32, %eax
	jne	.LBB5_22
# BB#21:                                # %if.then.97
	xorl	%edx, %edx
	movl	-92(%rbp), %eax
	addl	-96(%rbp), %eax
	movl	-88(%rbp), %ecx
	addl	-100(%rbp), %ecx
	movl	%eax, %edi
	movl	%ecx, %esi
	callq	gimp_image_new
	movl	%eax, -108(%rbp)
	jmp	.LBB5_23
.LBB5_22:                               # %if.else.101
	movl	$2, %edx
	movl	-92(%rbp), %eax
	addl	-96(%rbp), %eax
	movl	-88(%rbp), %ecx
	addl	-100(%rbp), %ecx
	movl	%eax, %edi
	movl	%ecx, %esi
	callq	gimp_image_new
	movl	%eax, -108(%rbp)
.LBB5_23:                               # %if.end.105
	cmpl	$-1, -108(%rbp)
	jne	.LBB5_25
# BB#24:                                # %if.then.108
	movabsq	$.L.str.46, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -1152(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movq	-1152(%rbp), %rdi       # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error
	movq	-40(%rbp), %rdi
	callq	fclose
	movl	$-1, -4(%rbp)
	movl	%eax, -1156(%rbp)       # 4-byte Spill
	jmp	.LBB5_84
.LBB5_25:                               # %if.end.111
	movl	-108(%rbp), %edi
	movq	-16(%rbp), %rsi
	callq	gimp_image_set_filename
	movzbl	-82(%rbp), %edi
	cmpl	$32, %edi
	movl	%eax, -1160(%rbp)       # 4-byte Spill
	jne	.LBB5_27
# BB#26:                                # %if.then.116
	movabsq	$.L.str.47, %rdi
	movl	-108(%rbp), %eax
	movl	%eax, -1164(%rbp)       # 4-byte Spill
	callq	gettext
	movl	$1, %r8d
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movl	-92(%rbp), %edx
	movl	-88(%rbp), %ecx
	movl	-1164(%rbp), %edi       # 4-byte Reload
	movq	%rax, %rsi
	callq	gimp_layer_new
	movl	%eax, -112(%rbp)
	jmp	.LBB5_28
.LBB5_27:                               # %if.else.119
	movabsq	$.L.str.47, %rdi
	movl	-108(%rbp), %eax
	movl	%eax, -1168(%rbp)       # 4-byte Spill
	callq	gettext
	movl	$5, %r8d
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movl	-92(%rbp), %edx
	movl	-88(%rbp), %ecx
	movl	-1168(%rbp), %edi       # 4-byte Reload
	movq	%rax, %rsi
	callq	gimp_layer_new
	movl	%eax, -112(%rbp)
.LBB5_28:                               # %if.end.122
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movl	-108(%rbp), %edi
	movl	-112(%rbp), %esi
	callq	gimp_image_insert_layer
	movl	-112(%rbp), %edi
	movl	-96(%rbp), %esi
	movl	-100(%rbp), %edx
	movl	%eax, -1172(%rbp)       # 4-byte Spill
	callq	gimp_layer_set_offsets
	movl	-112(%rbp), %edi
	movl	%eax, -1176(%rbp)       # 4-byte Spill
	callq	gimp_drawable_get
	leaq	-192(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rsi
	movq	-144(%rbp), %rax
	movl	4(%rax), %r8d
	movq	-144(%rbp), %rax
	movl	8(%rax), %r9d
	movl	%edx, -1180(%rbp)       # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$1, %ecx
	movl	%ecx, %esi
	movl	-92(%rbp), %ecx
	shll	$2, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -128(%rbp)
	movl	-92(%rbp), %ecx
	addl	$1, %ecx
	shll	$2, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movq	%rax, -136(%rbp)
	movl	$0, -196(%rbp)
.LBB5_29:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_59 Depth 2
                                        #     Child Loop BB5_49 Depth 2
                                        #     Child Loop BB5_36 Depth 2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-196(%rbp), %eax
	cmpl	-88(%rbp), %eax
	movb	%cl, -1181(%rbp)        # 1-byte Spill
	jge	.LBB5_31
# BB#30:                                # %land.rhs
                                        #   in Loop: Header=BB5_29 Depth=1
	movq	-40(%rbp), %rdi
	callq	feof
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	movb	%cl, -1181(%rbp)        # 1-byte Spill
.LBB5_31:                               # %land.end
                                        #   in Loop: Header=BB5_29 Depth=1
	movb	-1181(%rbp), %al        # 1-byte Reload
	testb	$1, %al
	jne	.LBB5_32
	jmp	.LBB5_66
.LBB5_32:                               # %for.body
                                        #   in Loop: Header=BB5_29 Depth=1
	movzbl	-82(%rbp), %eax
	movl	%eax, %ecx
	subl	$4, %ecx
	movl	%eax, -1188(%rbp)       # 4-byte Spill
	movl	%ecx, -1192(%rbp)       # 4-byte Spill
	je	.LBB5_33
	jmp	.LBB5_87
.LBB5_87:                               # %for.body
                                        #   in Loop: Header=BB5_29 Depth=1
	movl	-1188(%rbp), %eax       # 4-byte Reload
	subl	$8, %eax
	movl	%eax, -1196(%rbp)       # 4-byte Spill
	je	.LBB5_46
	jmp	.LBB5_88
.LBB5_88:                               # %for.body
                                        #   in Loop: Header=BB5_29 Depth=1
	movl	-1188(%rbp), %eax       # 4-byte Reload
	subl	$32, %eax
	movl	%eax, -1200(%rbp)       # 4-byte Spill
	je	.LBB5_56
	jmp	.LBB5_63
.LBB5_33:                               # %sw.bb.140
                                        #   in Loop: Header=BB5_29 Depth=1
	movl	$1, %eax
	movl	%eax, %edx
	movl	$2, %eax
	movq	-128(%rbp), %rdi
	movl	-92(%rbp), %ecx
	addl	$1, %ecx
	movl	%eax, -1204(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	movq	%rdx, -1216(%rbp)       # 8-byte Spill
	cltd
	movl	-1204(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	movslq	%eax, %rsi
	movq	-40(%rbp), %rcx
	movq	-1216(%rbp), %r8        # 8-byte Reload
	movq	%r8, %rdx
	callq	fread
	movq	%rax, -216(%rbp)
	cmpq	$1, -216(%rbp)
	jae	.LBB5_35
# BB#34:                                # %if.then.146
	movq	-32(%rbp), %rdi
	movq	%rdi, -1224(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.48, %rdi
	movl	%eax, -1228(%rbp)       # 4-byte Spill
	callq	gettext
	movl	$24, %edx
	movq	-1224(%rbp), %rdi       # 8-byte Reload
	movl	-1228(%rbp), %esi       # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB5_84
.LBB5_35:                               # %if.end.149
                                        #   in Loop: Header=BB5_29 Depth=1
	movl	$0, -200(%rbp)
	movl	$0, -204(%rbp)
.LBB5_36:                               # %for.cond.150
                                        #   Parent Loop BB5_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-200(%rbp), %eax
	movl	-92(%rbp), %ecx
	shll	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB5_45
# BB#37:                                # %for.body.154
                                        #   in Loop: Header=BB5_36 Depth=2
	movl	$16, %eax
	movslq	-204(%rbp), %rcx
	movq	-128(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	movl	%eax, -1232(%rbp)       # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-1232(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	cmpl	$0, %eax
	jne	.LBB5_39
# BB#38:                                # %if.then.160
                                        #   in Loop: Header=BB5_36 Depth=2
	movslq	-200(%rbp), %rax
	movq	-136(%rbp), %rcx
	movb	$16, (%rcx,%rax)
	movl	-200(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-136(%rbp), %rcx
	movb	$0, (%rcx,%rax)
	jmp	.LBB5_40
.LBB5_39:                               # %if.else.166
                                        #   in Loop: Header=BB5_36 Depth=2
	movl	$16, %eax
	movslq	-204(%rbp), %rcx
	movq	-128(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	movl	%eax, -1236(%rbp)       # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-1236(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	subl	$1, %eax
	movb	%al, %dil
	movslq	-200(%rbp), %rcx
	movq	-136(%rbp), %r8
	movb	%dil, (%r8,%rcx)
	movl	-200(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-136(%rbp), %r8
	movb	$-1, (%r8,%rcx)
.LBB5_40:                               # %if.end.177
                                        #   in Loop: Header=BB5_36 Depth=2
	movl	$16, %eax
	movslq	-204(%rbp), %rcx
	movq	-128(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	movl	%eax, -1240(%rbp)       # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-1240(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB5_42
# BB#41:                                # %if.then.183
                                        #   in Loop: Header=BB5_36 Depth=2
	movl	-200(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-136(%rbp), %rdx
	movb	$16, (%rdx,%rcx)
	movl	-200(%rbp), %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	movq	-136(%rbp), %rdx
	movb	$0, (%rdx,%rcx)
	jmp	.LBB5_43
.LBB5_42:                               # %if.else.190
                                        #   in Loop: Header=BB5_36 Depth=2
	movl	$16, %eax
	movslq	-204(%rbp), %rcx
	movq	-128(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	movl	%eax, -1244(%rbp)       # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-1244(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	subl	$1, %edx
	movb	%dl, %dil
	movl	-200(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rcx
	movq	-136(%rbp), %r8
	movb	%dil, (%r8,%rcx)
	movl	-200(%rbp), %edx
	addl	$3, %edx
	movslq	%edx, %rcx
	movq	-136(%rbp), %r8
	movb	$-1, (%r8,%rcx)
.LBB5_43:                               # %if.end.203
                                        #   in Loop: Header=BB5_36 Depth=2
	jmp	.LBB5_44
.LBB5_44:                               # %for.inc
                                        #   in Loop: Header=BB5_36 Depth=2
	movl	-200(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -200(%rbp)
	movl	-204(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -204(%rbp)
	jmp	.LBB5_36
.LBB5_45:                               # %for.end
                                        #   in Loop: Header=BB5_29 Depth=1
	jmp	.LBB5_64
.LBB5_46:                               # %sw.bb.205
                                        #   in Loop: Header=BB5_29 Depth=1
	movl	$1, %eax
	movl	%eax, %edx
	movq	-128(%rbp), %rdi
	movslq	-92(%rbp), %rsi
	movq	-40(%rbp), %rcx
	callq	fread
	movq	%rax, -216(%rbp)
	cmpq	$1, -216(%rbp)
	jae	.LBB5_48
# BB#47:                                # %if.then.210
	movq	-32(%rbp), %rdi
	movq	%rdi, -1256(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.48, %rdi
	movl	%eax, -1260(%rbp)       # 4-byte Spill
	callq	gettext
	movl	$24, %edx
	movq	-1256(%rbp), %rdi       # 8-byte Reload
	movl	-1260(%rbp), %esi       # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB5_84
.LBB5_48:                               # %if.end.213
                                        #   in Loop: Header=BB5_29 Depth=1
	movl	$0, -200(%rbp)
	movl	$0, -204(%rbp)
.LBB5_49:                               # %for.cond.214
                                        #   Parent Loop BB5_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-200(%rbp), %eax
	movl	-92(%rbp), %ecx
	shll	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB5_55
# BB#50:                                # %for.body.218
                                        #   in Loop: Header=BB5_49 Depth=2
	movslq	-204(%rbp), %rax
	movq	-128(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$0, %edx
	jne	.LBB5_52
# BB#51:                                # %if.then.224
                                        #   in Loop: Header=BB5_49 Depth=2
	movslq	-200(%rbp), %rax
	movq	-136(%rbp), %rcx
	movb	$-1, (%rcx,%rax)
	movl	-200(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-136(%rbp), %rcx
	movb	$0, (%rcx,%rax)
	jmp	.LBB5_53
.LBB5_52:                               # %if.else.230
                                        #   in Loop: Header=BB5_49 Depth=2
	movslq	-204(%rbp), %rax
	movq	-128(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	subl	$1, %edx
	movb	%dl, %sil
	movslq	-200(%rbp), %rax
	movq	-136(%rbp), %rcx
	movb	%sil, (%rcx,%rax)
	movl	-200(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-136(%rbp), %rcx
	movb	$-1, (%rcx,%rax)
.LBB5_53:                               # %if.end.241
                                        #   in Loop: Header=BB5_49 Depth=2
	jmp	.LBB5_54
.LBB5_54:                               # %for.inc.242
                                        #   in Loop: Header=BB5_49 Depth=2
	movl	-200(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -200(%rbp)
	movl	-204(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -204(%rbp)
	jmp	.LBB5_49
.LBB5_55:                               # %for.end.245
                                        #   in Loop: Header=BB5_29 Depth=1
	jmp	.LBB5_64
.LBB5_56:                               # %sw.bb.246
                                        #   in Loop: Header=BB5_29 Depth=1
	movl	$1, %eax
	movl	%eax, %edx
	movq	-136(%rbp), %rdi
	movl	-92(%rbp), %eax
	shll	$2, %eax
	movslq	%eax, %rsi
	movq	-40(%rbp), %rcx
	callq	fread
	movq	%rax, -216(%rbp)
	cmpq	$1, -216(%rbp)
	jae	.LBB5_58
# BB#57:                                # %if.then.252
	movq	-32(%rbp), %rdi
	movq	%rdi, -1272(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.48, %rdi
	movl	%eax, -1276(%rbp)       # 4-byte Spill
	callq	gettext
	movl	$24, %edx
	movq	-1272(%rbp), %rdi       # 8-byte Reload
	movl	-1276(%rbp), %esi       # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB5_84
.LBB5_58:                               # %if.end.255
                                        #   in Loop: Header=BB5_29 Depth=1
	movl	$0, -200(%rbp)
.LBB5_59:                               # %for.cond.256
                                        #   Parent Loop BB5_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-200(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB5_62
# BB#60:                                # %for.body.259
                                        #   in Loop: Header=BB5_59 Depth=2
	movl	-200(%rbp), %eax
	shll	$2, %eax
	movslq	%eax, %rcx
	movq	-136(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movb	%sil, -217(%rbp)
	movl	-200(%rbp), %eax
	shll	$2, %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-136(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-200(%rbp), %eax
	shll	$2, %eax
	movslq	%eax, %rcx
	movq	-136(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	movb	-217(%rbp), %sil
	movl	-200(%rbp), %eax
	shll	$2, %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-136(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
# BB#61:                                # %for.inc.274
                                        #   in Loop: Header=BB5_59 Depth=2
	movl	-200(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -200(%rbp)
	jmp	.LBB5_59
.LBB5_62:                               # %for.end.276
                                        #   in Loop: Header=BB5_29 Depth=1
	jmp	.LBB5_64
.LBB5_63:                               # %sw.default.277
	movq	-32(%rbp), %rdi
	movq	%rdi, -1288(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.49, %rdi
	movl	%eax, -1292(%rbp)       # 4-byte Spill
	callq	gettext
	movl	$24, %edx
	movzbl	-82(%rbp), %r8d
	movq	-1288(%rbp), %rdi       # 8-byte Reload
	movl	-1292(%rbp), %esi       # 4-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB5_84
.LBB5_64:                               # %sw.epilog.281
                                        #   in Loop: Header=BB5_29 Depth=1
	leaq	-192(%rbp), %rdi
	xorl	%edx, %edx
	movl	$1, %r9d
	movq	-136(%rbp), %rsi
	movl	-196(%rbp), %ecx
	movq	-144(%rbp), %rax
	movl	4(%rax), %r8d
	callq	gimp_pixel_rgn_set_rect
	cvtsi2ssl	-196(%rbp), %xmm0
	cvtsi2ssl	-88(%rbp), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	gimp_progress_update
	movl	%eax, -1296(%rbp)       # 4-byte Spill
# BB#65:                                # %for.inc.288
                                        #   in Loop: Header=BB5_29 Depth=1
	movl	-196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB5_29
.LBB5_66:                               # %for.end.290
	movsd	.LCPI5_1, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-40(%rbp), %rdi
	movl	%eax, -1300(%rbp)       # 4-byte Spill
	callq	fclose
	movq	-128(%rbp), %rdi
	movl	%eax, -1304(%rbp)       # 4-byte Spill
	callq	g_free
	movq	-136(%rbp), %rdi
	callq	g_free
	movzbl	-82(%rbp), %eax
	cmpl	$32, %eax
	je	.LBB5_83
# BB#67:                                # %if.then.296
	cmpq	$0, palette_file
	jne	.LBB5_69
# BB#68:                                # %if.then.301
	movq	$0, -40(%rbp)
	jmp	.LBB5_72
.LBB5_69:                               # %if.else.302
	movabsq	$.L.str.40, %rsi
	movq	palette_file, %rdi
	callq	fopen
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB5_71
# BB#70:                                # %if.then.306
	movq	-32(%rbp), %rdi
	movq	%rdi, -1312(%rbp)       # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -1316(%rbp)       # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.36, %rdi
	movl	%eax, -1320(%rbp)       # 4-byte Spill
	callq	gettext
	movq	palette_file, %rdi
	movq	%rax, -1328(%rbp)       # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -1336(%rbp)       # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-1312(%rbp), %rdi       # 8-byte Reload
	movl	-1316(%rbp), %esi       # 4-byte Reload
	movl	-1320(%rbp), %edx       # 4-byte Reload
	movq	-1328(%rbp), %rcx       # 8-byte Reload
	movq	-1336(%rbp), %r8        # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB5_84
.LBB5_71:                               # %if.end.314
	jmp	.LBB5_72
.LBB5_72:                               # %if.end.315
	cmpq	$0, -40(%rbp)
	je	.LBB5_77
# BB#73:                                # %if.then.318
	leaq	-992(%rbp), %rdx
	movq	palette_file, %rdi
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rcx
	callq	load_palette
	movl	%eax, -104(%rbp)
	movq	-40(%rbp), %rdi
	callq	fclose
	cmpl	$0, -104(%rbp)
	movl	%eax, -1340(%rbp)       # 4-byte Spill
	jl	.LBB5_75
# BB#74:                                # %lor.lhs.false.324
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_76
.LBB5_75:                               # %if.then.326
	movl	$-1, -4(%rbp)
	jmp	.LBB5_84
.LBB5_76:                               # %if.end.327
	jmp	.LBB5_82
.LBB5_77:                               # %if.else.328
	movl	$0, -196(%rbp)
.LBB5_78:                               # %for.cond.329
                                        # =>This Inner Loop Header: Depth=1
	movl	-196(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jge	.LBB5_81
# BB#79:                                # %for.body.332
                                        #   in Loop: Header=BB5_78 Depth=1
	movl	-196(%rbp), %eax
	shll	$8, %eax
	cltd
	idivl	-104(%rbp)
	movb	%al, %cl
	imull	$3, -196(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rsi
	movb	%cl, -992(%rbp,%rsi)
	imull	$3, -196(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	movb	%cl, -992(%rbp,%rsi)
	imull	$3, -196(%rbp), %eax
	movslq	%eax, %rsi
	movb	%cl, -992(%rbp,%rsi)
# BB#80:                                # %for.inc.347
                                        #   in Loop: Header=BB5_78 Depth=1
	movl	-196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB5_78
.LBB5_81:                               # %for.end.349
	jmp	.LBB5_82
.LBB5_82:                               # %if.end.350
	leaq	-992(%rbp), %rax
	movl	-108(%rbp), %edi
	addq	$3, %rax
	movl	-104(%rbp), %ecx
	subl	$1, %ecx
	movq	%rax, %rsi
	movl	%ecx, %edx
	callq	gimp_image_set_colormap
	movl	%eax, -1344(%rbp)       # 4-byte Spill
.LBB5_83:                               # %if.end.354
	movq	-144(%rbp), %rdi
	callq	gimp_drawable_flush
	movq	-144(%rbp), %rdi
	callq	gimp_drawable_detach
	movl	-108(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB5_84:                               # %return
	movl	-4(%rbp), %eax
	addq	$1360, %rsp             # imm = 0x550
	popq	%rbp
	retq
.Lfunc_end5:
	.size	load_image, .Lfunc_end5-load_image
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	save_image,@function
save_image:                             # @save_image
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
	pushq	%rbx
	subq	$360, %rsp              # imm = 0x168
.Ltmp26:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	-40(%rbp), %edi
	callq	gimp_drawable_type
	movl	%eax, -108(%rbp)
	cmpl	$5, -108(%rbp)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movl	$32, -100(%rbp)
	jmp	.LBB6_3
.LBB6_2:                                # %if.else
	movl	$4, -100(%rbp)
.LBB6_3:                                # %if.end
	leaq	-112(%rbp), %rsi
	leaq	-116(%rbp), %rdx
	movl	-40(%rbp), %edi
	callq	gimp_drawable_offsets
	movl	-40(%rbp), %edi
	movl	%eax, -208(%rbp)        # 4-byte Spill
	callq	gimp_drawable_get
	movabsq	$.L.str.56, %rsi
	movq	%rax, -144(%rbp)
	movq	-24(%rbp), %rdi
	callq	fopen
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB6_5
# BB#4:                                 # %if.then.5
	movq	-48(%rbp), %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -220(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.57, %rdi
	movl	%eax, -224(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movl	-220(%rbp), %esi        # 4-byte Reload
	movl	-224(%rbp), %edx        # 4-byte Reload
	movq	-232(%rbp), %rcx        # 8-byte Reload
	movq	-240(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$0, -12(%rbp)
	jmp	.LBB6_40
.LBB6_5:                                # %if.end.13
	movabsq	$.L.str.58, %rdi
	callq	gettext
	movq	-32(%rbp), %rdi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_progress_init_printf
	leaq	-96(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	$32, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rsi, %rdi
	movq	%rsi, -256(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%eax, -260(%rbp)        # 4-byte Spill
	callq	memset
	movl	$.L.str.42, %eax
	movl	%eax, %esi
	movq	-256(%rbp), %rdi        # 8-byte Reload
	callq	strcpy
	movb	$32, -92(%rbp)
	cmpl	$32, -100(%rbp)
	movq	%rax, -272(%rbp)        # 8-byte Spill
	jge	.LBB6_10
# BB#6:                                 # %if.then.19
	leaq	-104(%rbp), %rsi
	movl	-36(%rbp), %edi
	callq	gimp_image_get_colormap
	movq	%rax, %rdi
	callq	g_free
	cmpl	$15, -104(%rbp)
	jle	.LBB6_8
# BB#7:                                 # %if.then.22
	movb	$8, -91(%rbp)
	jmp	.LBB6_9
.LBB6_8:                                # %if.else.24
	movb	$4, -91(%rbp)
.LBB6_9:                                # %if.end.26
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.27
	movb	$32, -91(%rbp)
.LBB6_11:                               # %if.end.29
	movl	$32, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-96(%rbp), %rdi
	movl	$256, %eax              # imm = 0x100
	movq	-144(%rbp), %rcx
	movl	4(%rcx), %r8d
	andl	$255, %r8d
	movb	%r8b, %r9b
	movb	%r9b, -88(%rbp)
	movq	-144(%rbp), %rcx
	movl	4(%rcx), %r8d
	shrl	$8, %r8d
	movb	%r8b, %r9b
	movb	%r9b, -87(%rbp)
	movq	-144(%rbp), %rcx
	movl	8(%rcx), %r8d
	andl	$255, %r8d
	movb	%r8b, %r9b
	movb	%r9b, -86(%rbp)
	movq	-144(%rbp), %rcx
	movl	8(%rcx), %r8d
	shrl	$8, %r8d
	movb	%r8b, %r9b
	movb	%r9b, -85(%rbp)
	movl	-112(%rbp), %r8d
	movl	%eax, -276(%rbp)        # 4-byte Spill
	movl	%r8d, %eax
	movq	%rdx, -288(%rbp)        # 8-byte Spill
	cltd
	movl	-276(%rbp), %r8d        # 4-byte Reload
	idivl	%r8d
	movb	%dl, %r9b
	movb	%r9b, -84(%rbp)
	movl	-112(%rbp), %edx
	movl	%edx, %eax
	cltd
	idivl	%r8d
	movb	%al, %r9b
	movb	%r9b, -83(%rbp)
	movl	-116(%rbp), %eax
	cltd
	idivl	%r8d
	movb	%dl, %r9b
	movb	%r9b, -82(%rbp)
	movl	-116(%rbp), %edx
	movl	%edx, %eax
	cltd
	idivl	%r8d
	movb	%al, %r9b
	movb	%r9b, -81(%rbp)
	movq	-56(%rbp), %rcx
	movq	-288(%rbp), %r10        # 8-byte Reload
	movq	%r10, %rdx
	callq	fwrite
	leaq	-192(%rbp), %rdi
	xorl	%r8d, %r8d
	movl	$1, %r11d
	movq	-144(%rbp), %rsi
	movq	-144(%rbp), %rcx
	movl	4(%rcx), %ebx
	movq	-144(%rbp), %rcx
	movl	8(%rcx), %r9d
	movl	%r8d, %edx
	movl	%r8d, %ecx
	movl	%ebx, %r8d
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	movq	%rax, -296(%rbp)        # 8-byte Spill
	movl	%r11d, -300(%rbp)       # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-144(%rbp), %rax
	movl	4(%rax), %ecx
	shll	$2, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -128(%rbp)
	movq	-144(%rbp), %rax
	movl	4(%rax), %ecx
	addl	$1, %ecx
	shll	$2, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edi
	callq	g_malloc_n
	movq	%rax, -136(%rbp)
	movl	$0, -196(%rbp)
.LBB6_12:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_15 Depth 2
                                        #     Child Loop BB6_21 Depth 2
                                        #     Child Loop BB6_28 Depth 2
	movl	-196(%rbp), %eax
	movq	-144(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB6_39
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB6_12 Depth=1
	leaq	-192(%rbp), %rdi
	xorl	%edx, %edx
	movl	$1, %r9d
	movq	-136(%rbp), %rsi
	movl	-196(%rbp), %ecx
	movq	-144(%rbp), %rax
	movl	4(%rax), %r8d
	callq	gimp_pixel_rgn_get_rect
	xorl	%esi, %esi
	movq	-128(%rbp), %rdi
	movq	-144(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, %edx
	callq	memset
	cmpl	$32, -100(%rbp)
	jne	.LBB6_19
# BB#14:                                # %if.then.72
                                        #   in Loop: Header=BB6_12 Depth=1
	movl	$0, -200(%rbp)
.LBB6_15:                               # %for.cond.73
                                        #   Parent Loop BB6_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-200(%rbp), %eax
	movq	-144(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jae	.LBB6_18
# BB#16:                                # %for.body.77
                                        #   in Loop: Header=BB6_15 Depth=2
	movl	-200(%rbp), %eax
	shll	$2, %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-136(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-200(%rbp), %eax
	shll	$2, %eax
	movslq	%eax, %rcx
	movq	-128(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	movl	-200(%rbp), %eax
	shll	$2, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-136(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-200(%rbp), %eax
	shll	$2, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-128(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	movl	-200(%rbp), %eax
	shll	$2, %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-136(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-200(%rbp), %eax
	shll	$2, %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-128(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	movl	-200(%rbp), %eax
	shll	$2, %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	movq	-136(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-200(%rbp), %eax
	shll	$2, %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	movq	-128(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
# BB#17:                                # %for.inc
                                        #   in Loop: Header=BB6_15 Depth=2
	movl	-200(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -200(%rbp)
	jmp	.LBB6_15
.LBB6_18:                               # %for.end
                                        #   in Loop: Header=BB6_12 Depth=1
	movl	$4, %eax
	movl	%eax, %edx
	movq	-128(%rbp), %rdi
	movq	-144(%rbp), %rcx
	movl	4(%rcx), %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rcx
	callq	fwrite
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jmp	.LBB6_37
.LBB6_19:                               # %if.else.111
                                        #   in Loop: Header=BB6_12 Depth=1
	cmpl	$16, -104(%rbp)
	jle	.LBB6_27
# BB#20:                                # %if.then.114
                                        #   in Loop: Header=BB6_12 Depth=1
	movl	$0, -200(%rbp)
	movl	$0, -204(%rbp)
.LBB6_21:                               # %for.cond.115
                                        #   Parent Loop BB6_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-200(%rbp), %eax
	movq	-144(%rbp), %rcx
	movl	4(%rcx), %edx
	shll	$1, %edx
	cmpl	%edx, %eax
	jae	.LBB6_26
# BB#22:                                # %for.body.120
                                        #   in Loop: Header=BB6_21 Depth=2
	movl	-200(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-136(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$127, %eax
	jle	.LBB6_24
# BB#23:                                # %if.then.127
                                        #   in Loop: Header=BB6_21 Depth=2
	movslq	-200(%rbp), %rax
	movq	-136(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	addl	$1, %edx
	movb	%dl, %sil
	movslq	-204(%rbp), %rax
	movq	-128(%rbp), %rcx
	movb	%sil, (%rcx,%rax)
.LBB6_24:                               # %if.end.135
                                        #   in Loop: Header=BB6_21 Depth=2
	jmp	.LBB6_25
.LBB6_25:                               # %for.inc.136
                                        #   in Loop: Header=BB6_21 Depth=2
	movl	-200(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -200(%rbp)
	movl	-204(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -204(%rbp)
	jmp	.LBB6_21
.LBB6_26:                               # %for.end.139
                                        #   in Loop: Header=BB6_12 Depth=1
	movl	$1, %eax
	movl	%eax, %edx
	movq	-128(%rbp), %rdi
	movq	-144(%rbp), %rcx
	movl	4(%rcx), %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rcx
	callq	fwrite
	movq	%rax, -320(%rbp)        # 8-byte Spill
	jmp	.LBB6_36
.LBB6_27:                               # %if.else.143
                                        #   in Loop: Header=BB6_12 Depth=1
	movl	$0, -200(%rbp)
	movl	$0, -204(%rbp)
.LBB6_28:                               # %for.cond.144
                                        #   Parent Loop BB6_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-200(%rbp), %eax
	movq	-144(%rbp), %rcx
	movl	4(%rcx), %edx
	shll	$1, %edx
	cmpl	%edx, %eax
	jae	.LBB6_35
# BB#29:                                # %for.body.149
                                        #   in Loop: Header=BB6_28 Depth=2
	movslq	-204(%rbp), %rax
	movq	-128(%rbp), %rcx
	movb	$0, (%rcx,%rax)
	movl	-200(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-136(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$127, %edx
	jle	.LBB6_31
# BB#30:                                # %if.then.158
                                        #   in Loop: Header=BB6_28 Depth=2
	movslq	-200(%rbp), %rax
	movq	-136(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	addl	$1, %edx
	shll	$4, %edx
	movslq	-204(%rbp), %rax
	movq	-128(%rbp), %rcx
	movzbl	(%rcx,%rax), %esi
	addl	%edx, %esi
	movb	%sil, %dil
	movb	%dil, (%rcx,%rax)
.LBB6_31:                               # %if.end.168
                                        #   in Loop: Header=BB6_28 Depth=2
	movl	-200(%rbp), %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	movq	-136(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$127, %eax
	jle	.LBB6_33
# BB#32:                                # %if.then.175
                                        #   in Loop: Header=BB6_28 Depth=2
	movl	-200(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-136(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	addl	$1, %eax
	movslq	-204(%rbp), %rcx
	movq	-128(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	addl	%eax, %esi
	movb	%sil, %dil
	movb	%dil, (%rdx,%rcx)
.LBB6_33:                               # %if.end.186
                                        #   in Loop: Header=BB6_28 Depth=2
	jmp	.LBB6_34
.LBB6_34:                               # %for.inc.187
                                        #   in Loop: Header=BB6_28 Depth=2
	movl	-200(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -200(%rbp)
	movl	-204(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -204(%rbp)
	jmp	.LBB6_28
.LBB6_35:                               # %for.end.190
                                        #   in Loop: Header=BB6_12 Depth=1
	movl	$1, %eax
	movl	%eax, %edx
	movq	-128(%rbp), %rdi
	movq	-144(%rbp), %rcx
	movl	4(%rcx), %eax
	addl	$1, %eax
	shrl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rcx
	callq	fwrite
	movq	%rax, -328(%rbp)        # 8-byte Spill
.LBB6_36:                               # %if.end.196
                                        #   in Loop: Header=BB6_12 Depth=1
	jmp	.LBB6_37
.LBB6_37:                               # %if.end.197
                                        #   in Loop: Header=BB6_12 Depth=1
	cvtsi2ssl	-196(%rbp), %xmm0
	movq	-144(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, %eax
	cvtsi2ssq	%rax, %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	gimp_progress_update
	movl	%eax, -332(%rbp)        # 4-byte Spill
# BB#38:                                # %for.inc.204
                                        #   in Loop: Header=BB6_12 Depth=1
	movl	-196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB6_12
.LBB6_39:                               # %for.end.206
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-56(%rbp), %rdi
	movl	%eax, -336(%rbp)        # 4-byte Spill
	callq	fclose
	movq	-128(%rbp), %rdi
	movl	%eax, -340(%rbp)        # 4-byte Spill
	callq	g_free
	movq	-136(%rbp), %rdi
	callq	g_free
	movl	$1, -12(%rbp)
.LBB6_40:                               # %return
	movl	-12(%rbp), %eax
	addq	$360, %rsp              # imm = 0x168
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end6:
	.size	save_image, .Lfunc_end6-save_image
	.cfi_endproc

	.align	16, 0x90
	.type	load_palette,@function
load_palette:                           # @load_palette
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
	subq	$352, %rsp              # imm = 0x160
	movl	$4, %eax
	movl	%eax, %r8d
	movl	$1, %eax
	movl	%eax, %r9d
	leaq	-80(%rbp), %r10
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	$0, -92(%rbp)
	movq	-24(%rbp), %rcx
	movq	%r10, %rdi
	movq	%r8, %rsi
	movq	%r9, %rdx
	callq	fread
	movq	%rax, -104(%rbp)
	cmpq	$1, -104(%rbp)
	jae	.LBB7_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.50, %rdi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$24, %edx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	-116(%rbp), %esi        # 4-byte Reload
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB7_35
.LBB7_2:                                # %if.end
	movabsq	$.L.str.42, %rsi
	movl	$4, %eax
	movl	%eax, %edx
	leaq	-80(%rbp), %rdi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB7_27
# BB#3:                                 # %if.then.6
	movl	$28, %eax
	movl	%eax, %esi
	movl	$1, %eax
	movl	%eax, %edx
	leaq	-80(%rbp), %rcx
	addq	$4, %rcx
	movq	-24(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-136(%rbp), %rcx        # 8-byte Reload
	callq	fread
	movq	%rax, -104(%rbp)
	cmpq	$1, -104(%rbp)
	jae	.LBB7_5
# BB#4:                                 # %if.then.10
	movq	-40(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.50, %rdi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$24, %edx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movl	-148(%rbp), %esi        # 4-byte Reload
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB7_35
.LBB7_5:                                # %if.end.14
	movb	-76(%rbp), %al
	movb	%al, -83(%rbp)
	movzbl	-83(%rbp), %ecx
	cmpl	$16, %ecx
	je	.LBB7_7
# BB#6:                                 # %if.then.17
	movq	-40(%rbp), %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.51, %rdi
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$24, %edx
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movl	-172(%rbp), %esi        # 4-byte Reload
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB7_35
.LBB7_7:                                # %if.end.21
	movb	-75(%rbp), %al
	movb	%al, -84(%rbp)
	movzbl	-84(%rbp), %ecx
	cmpl	$12, %ecx
	je	.LBB7_10
# BB#8:                                 # %land.lhs.true
	movzbl	-84(%rbp), %eax
	cmpl	$24, %eax
	je	.LBB7_10
# BB#9:                                 # %if.then.29
	movq	-40(%rbp), %rdi
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.52, %rdi
	movl	%eax, -196(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$24, %edx
	movzbl	-84(%rbp), %r9d
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movl	-196(%rbp), %esi        # 4-byte Reload
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB7_35
.LBB7_10:                               # %if.end.34
	movzbl	-72(%rbp), %eax
	movzbl	-71(%rbp), %ecx
	shll	$8, %ecx
	addl	%ecx, %eax
	movl	%eax, -92(%rbp)
	cmpl	$16, -92(%rbp)
	je	.LBB7_13
# BB#11:                                # %land.lhs.true.41
	cmpl	$256, -92(%rbp)         # imm = 0x100
	je	.LBB7_13
# BB#12:                                # %if.then.44
	movq	-40(%rbp), %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.53, %rdi
	movl	%eax, -220(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$24, %edx
	movl	-92(%rbp), %r9d
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movl	-220(%rbp), %esi        # 4-byte Reload
	movq	-232(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB7_35
.LBB7_13:                               # %if.end.48
	movzbl	-84(%rbp), %eax
	movl	%eax, %ecx
	subl	$12, %ecx
	movl	%eax, -236(%rbp)        # 4-byte Spill
	movl	%ecx, -240(%rbp)        # 4-byte Spill
	je	.LBB7_14
	jmp	.LBB7_36
.LBB7_36:                               # %if.end.48
	movl	-236(%rbp), %eax        # 4-byte Reload
	subl	$24, %eax
	movl	%eax, -244(%rbp)        # 4-byte Spill
	je	.LBB7_21
	jmp	.LBB7_24
.LBB7_14:                               # %sw.bb
	movl	$0, -88(%rbp)
.LBB7_15:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-88(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB7_20
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB7_15 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movl	$2, %eax
	movl	%eax, %edx
	leaq	-82(%rbp), %rdi
	movq	-24(%rbp), %rcx
	callq	fread
	movq	%rax, -104(%rbp)
	cmpq	$2, -104(%rbp)
	jae	.LBB7_18
# BB#17:                                # %if.then.56
	movq	-40(%rbp), %rdi
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.54, %rdi
	movl	%eax, -260(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$24, %edx
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movl	-260(%rbp), %esi        # 4-byte Reload
	movq	-272(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB7_35
.LBB7_18:                               # %if.end.60
                                        #   in Loop: Header=BB7_15 Depth=1
	movzbl	-82(%rbp), %eax
	andl	$240, %eax
	movb	%al, %cl
	imull	$3, -88(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movzbl	-81(%rbp), %eax
	andl	$15, %eax
	shll	$4, %eax
	movb	%al, %cl
	imull	$3, -88(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movzbl	-82(%rbp), %eax
	andl	$15, %eax
	shll	$4, %eax
	movb	%al, %cl
	imull	$3, -88(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#19:                                # %for.inc
                                        #   in Loop: Header=BB7_15 Depth=1
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB7_15
.LBB7_20:                               # %for.end
	jmp	.LBB7_26
.LBB7_21:                               # %sw.bb.84
	movl	$3, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	movslq	-92(%rbp), %rsi
	movq	-24(%rbp), %rcx
	callq	fread
	movq	%rax, -104(%rbp)
	cmpq	$3, -104(%rbp)
	jae	.LBB7_23
# BB#22:                                # %if.then.89
	movq	-40(%rbp), %rdi
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.54, %rdi
	movl	%eax, -284(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$24, %edx
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movl	-284(%rbp), %esi        # 4-byte Reload
	movq	-296(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB7_35
.LBB7_23:                               # %if.end.93
	jmp	.LBB7_26
.LBB7_24:                               # %sw.default
	jmp	.LBB7_25
.LBB7_25:                               # %do.body
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$.L.str.55, %rsi
	movl	$710, %edx              # imm = 0x2C6
	movabsq	$.L__func__.load_palette, %rdi
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-304(%rbp), %r8         # 8-byte Reload
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movq	-312(%rbp), %r8         # 8-byte Reload
	callq	g_assertion_message_expr
.LBB7_26:                               # %sw.epilog
	jmp	.LBB7_34
.LBB7_27:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %esi
	xorl	%edx, %edx
	movl	$16, -92(%rbp)
	movq	-24(%rbp), %rdi
	callq	fseek
	movl	$0, -88(%rbp)
	movl	%eax, -316(%rbp)        # 4-byte Spill
.LBB7_28:                               # %for.cond.95
                                        # =>This Inner Loop Header: Depth=1
	movl	-88(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB7_33
# BB#29:                                # %for.body.98
                                        #   in Loop: Header=BB7_28 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movl	$2, %eax
	movl	%eax, %edx
	leaq	-82(%rbp), %rdi
	movq	-24(%rbp), %rcx
	callq	fread
	movq	%rax, -104(%rbp)
	cmpq	$2, -104(%rbp)
	jae	.LBB7_31
# BB#30:                                # %if.then.103
	movq	-40(%rbp), %rdi
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movabsq	$.L.str.54, %rdi
	movl	%eax, -332(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$24, %edx
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movl	-332(%rbp), %esi        # 4-byte Reload
	movq	-344(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_set_error
	movl	$-1, -4(%rbp)
	jmp	.LBB7_35
.LBB7_31:                               # %if.end.107
                                        #   in Loop: Header=BB7_28 Depth=1
	movzbl	-82(%rbp), %eax
	andl	$240, %eax
	movb	%al, %cl
	imull	$3, -88(%rbp), %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movzbl	-81(%rbp), %eax
	andl	$15, %eax
	shll	$4, %eax
	movb	%al, %cl
	imull	$3, -88(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	movzbl	-82(%rbp), %eax
	andl	$15, %eax
	shll	$4, %eax
	movb	%al, %cl
	imull	$3, -88(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-32(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#32:                                # %for.inc.133
                                        #   in Loop: Header=BB7_28 Depth=1
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB7_28
.LBB7_33:                               # %for.end.135
	jmp	.LBB7_34
.LBB7_34:                               # %if.end.136
	movl	-92(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB7_35:                               # %return
	movl	-4(%rbp), %eax
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end7:
	.size	load_palette, .Lfunc_end7-load_palette
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
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.size	query.load_args, 96

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
	.asciz	"Filename to load image from"
	.size	.L.str.3, 28

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"raw-filename"
	.size	.L.str.4, 13

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Name entered"
	.size	.L.str.5, 13

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"palette-filename"
	.size	.L.str.6, 17

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Filename to load palette from"
	.size	.L.str.7, 30

	.type	query.load_return_vals,@object # @query.load_return_vals
	.section	.rodata,"a",@progbits
	.align	16
query.load_return_vals:
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.9
	.size	query.load_return_vals, 24

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"image"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Output image"
	.size	.L.str.9, 13

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
	.quad	.L.str.8
	.quad	.L.str.10
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.11
	.quad	.L.str.12
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.13
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.5
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.14
	.size	query.save_args, 144

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"Input image"
	.size	.L.str.10, 12

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"drawable"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Drawable to save"
	.size	.L.str.12, 17

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Filename to save image to"
	.size	.L.str.13, 26

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Filename to save palette to"
	.size	.L.str.14, 28

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"file-cel-load"
	.size	.L.str.15, 14

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Loads files in KISS CEL file format"
	.size	.L.str.16, 36

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"This plug-in loads individual KISS cell files."
	.size	.L.str.17, 47

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Nick Lamb"
	.size	.L.str.18, 10

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Nick Lamb <njl195@zepler.org.uk>"
	.size	.L.str.19, 33

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"May 1998"
	.size	.L.str.20, 9

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"KISS CEL"
	.size	.L.str.21, 9

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"cel"
	.size	.L.str.22, 4

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.zero	1
	.size	.L.str.23, 1

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"0,string,KiSS\\040"
	.size	.L.str.24, 18

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"file-cel-save"
	.size	.L.str.25, 14

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Saves files in KISS CEL file format"
	.size	.L.str.26, 36

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"This plug-in saves individual KISS cell files."
	.size	.L.str.27, 47

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"RGB*, INDEXED*"
	.size	.L.str.28, 15

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,80,16
	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.29, 20

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"UTF-8"
	.size	.L.str.30, 6

	.type	data_length,@object     # @data_length
	.local	data_length
	.comm	data_length,8,8
	.type	palette_file,@object    # @palette_file
	.local	palette_file
	.comm	palette_file,8,8
	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"*.kcf"
	.size	.L.str.31, 6

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Load KISS Palette"
	.size	.L.str.32, 18

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"file-cel"
	.size	.L.str.33, 9

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"CEL"
	.size	.L.str.34, 4

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"rb"
	.size	.L.str.35, 3

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Could not open '%s' for reading: %s"
	.size	.L.str.36, 36

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"EOF or error while reading image header"
	.size	.L.str.37, 40

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"gtk-cancel"
	.size	.L.str.38, 11

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"gtk-open"
	.size	.L.str.39, 9

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"r"
	.size	.L.str.40, 2

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Opening '%s'"
	.size	.L.str.41, 13

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"KiSS"
	.size	.L.str.42, 5

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"is not a CEL image file"
	.size	.L.str.43, 24

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"illegal bpp value in image: %hhu"
	.size	.L.str.44, 33

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"illegal image dimensions: width: %d, horizontal offset: %d, height: %d, vertical offset: %d"
	.size	.L.str.45, 92

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Can't create a new image"
	.size	.L.str.46, 25

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Background"
	.size	.L.str.47, 11

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"EOF or error while reading image data"
	.size	.L.str.48, 38

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Unsupported bit depth (%d)!"
	.size	.L.str.49, 28

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"'%s': EOF or error while reading palette header"
	.size	.L.str.50, 48

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"'%s': is not a KCF palette file"
	.size	.L.str.51, 32

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"'%s': illegal bpp value in palette: %hhu"
	.size	.L.str.52, 41

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"'%s': illegal number of colors: %u"
	.size	.L.str.53, 35

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"'%s': EOF or error while reading palette data"
	.size	.L.str.54, 46

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"file-cel.c"
	.size	.L.str.55, 11

	.type	.L__func__.load_palette,@object # @__func__.load_palette
.L__func__.load_palette:
	.asciz	"load_palette"
	.size	.L__func__.load_palette, 13

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"w"
	.size	.L.str.56, 2

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
