	.text
	.file	"file-raw.bc"
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
	movabsq	$.L.str.19, %rdx
	callq	gimp_register_load_handler
	movabsq	$.L.str.20, %rdi
	movabsq	$.L.str.21, %rcx
	movabsq	$.L.str.15, %rdx
	movabsq	$.L.str.16, %r9
	movabsq	$.L.str.17, %rsi
	movabsq	$.L.str.22, %r8
	movl	$1, %r10d
	movl	$5, %r15d
	xorl	%r12d, %r12d
	movabsq	$query.save_args, %r11
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
	movl	$5, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r11, 40(%rsp)
	movq	$0, 48(%rsp)
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movq	%rbx, -120(%rbp)        # 8-byte Spill
	movl	%r12d, -124(%rbp)       # 4-byte Spill
	movl	%r15d, -128(%rbp)       # 4-byte Spill
	movl	%r10d, -132(%rbp)       # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.20, %rdi
	movabsq	$.L.str.18, %rsi
	movabsq	$.L.str.19, %rdx
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -48(%rbp)
	movq	$0, -56(%rbp)
	movl	$0, -68(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.23, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.23, %rdi
	movabsq	$.L.str.24, %rsi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.23, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -96(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movl	$1, %eax
	movl	%eax, %edi
	movl	$24, %eax
	movl	%eax, %esi
	movabsq	$run.values, %rcx
	movq	-24(%rbp), %rdx
	movl	8(%rdx), %eax
	movl	%eax, -44(%rbp)
	movq	-32(%rbp), %rdx
	movl	$1, (%rdx)
	movq	-40(%rbp), %rdx
	movq	%rcx, (%rdx)
	movl	$21, run.values
	movl	$0, run.values+8
	callq	g_malloc0_n
	movq	%rax, runtime
	movq	runtime, %rax
	movl	$0, (%rax)
	movq	runtime, %rax
	movl	$350, 4(%rax)           # imm = 0x15E
	movq	runtime, %rax
	movl	$350, 8(%rax)           # imm = 0x15E
	movq	runtime, %rax
	movl	$0, 16(%rax)
	movq	runtime, %rax
	movl	$0, 20(%rax)
	movq	-8(%rbp), %rdi
	movl	$.L.str.13, %r8d
	movl	%r8d, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_17
# BB#3:                                 # %if.then
	cmpl	$0, -44(%rbp)
	jne	.LBB1_10
# BB#4:                                 # %if.then.7
	movabsq	$.L.str.13, %rdi
	movq	runtime, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	48(%rsi), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	open
	movl	%eax, preview_fd
	cmpl	$0, preview_fd
	jge	.LBB1_6
# BB#5:                                 # %if.then.13
	callq	g_file_error_quark
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.25, %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	48(%rdi), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	leaq	-56(%rbp), %rdi
	movl	-104(%rbp), %esi        # 4-byte Reload
	movl	-108(%rbp), %edx        # 4-byte Reload
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-128(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$0, -48(%rbp)
	jmp	.LBB1_9
.LBB1_6:                                # %if.else
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	load_dialog
	cmpl	$0, %eax
	jne	.LBB1_8
# BB#7:                                 # %if.then.28
	movl	$4, -48(%rbp)
.LBB1_8:                                # %if.end
	movl	preview_fd, %edi
	callq	close
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB1_9:                                # %if.end.30
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.31
	movl	$1, -48(%rbp)
.LBB1_11:                               # %if.end.32
	cmpl	$3, -48(%rbp)
	jne	.LBB1_16
# BB#12:                                # %if.then.34
	leaq	-56(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	load_image
	movl	%eax, -60(%rbp)
	cmpl	$-1, -60(%rbp)
	je	.LBB1_14
# BB#13:                                # %if.then.40
	movabsq	$.L.str.13, %rdi
	movl	$24, %edx
	movq	runtime, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movq	-32(%rbp), %rsi
	movl	$2, (%rsi)
	movl	$13, run.values+40
	movl	-60(%rbp), %edx
	movl	%edx, run.values+48
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB1_15
.LBB1_14:                               # %if.else.42
	movl	$0, -48(%rbp)
.LBB1_15:                               # %if.end.43
	jmp	.LBB1_16
.LBB1_16:                               # %if.end.44
	jmp	.LBB1_34
.LBB1_17:                               # %if.else.45
	movq	-8(%rbp), %rdi
	movl	$.L.str.20, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB1_33
# BB#18:                                # %if.then.48
	leaq	-60(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movl	$23, %ecx
	movq	-24(%rbp), %r8
	movl	48(%r8), %eax
	movl	%eax, -60(%rbp)
	movq	-24(%rbp), %r8
	movl	88(%r8), %eax
	movl	%eax, -64(%rbp)
	callq	gimp_export_image
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jne	.LBB1_20
# BB#19:                                # %if.then.57
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movl	$4, run.values+8
	jmp	.LBB1_38
.LBB1_20:                               # %if.end.58
	cmpl	$0, -44(%rbp)
	jne	.LBB1_27
# BB#21:                                # %if.then.60
	movabsq	$.L.str.20, %rdi
	movq	runtime, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	cmpl	$5, -12(%rbp)
	movl	%eax, -140(%rbp)        # 4-byte Spill
	je	.LBB1_23
# BB#22:                                # %if.then.63
	movl	$1, -48(%rbp)
	jmp	.LBB1_26
.LBB1_23:                               # %if.else.64
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	movl	-60(%rbp), %esi
	movl	-64(%rbp), %edx
	callq	save_dialog
	cmpl	$0, %eax
	jne	.LBB1_25
# BB#24:                                # %if.then.70
	movl	$4, -48(%rbp)
.LBB1_25:                               # %if.end.71
	jmp	.LBB1_26
.LBB1_26:                               # %if.end.72
	jmp	.LBB1_28
.LBB1_27:                               # %if.else.73
	movl	$1, -48(%rbp)
.LBB1_28:                               # %if.end.74
	cmpl	$3, -48(%rbp)
	jne	.LBB1_30
# BB#29:                                # %if.then.76
	leaq	-56(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	movl	-60(%rbp), %esi
	movl	-64(%rbp), %edx
	callq	save_image
	movl	%eax, -48(%rbp)
.LBB1_30:                               # %if.end.81
	cmpl	$2, -68(%rbp)
	jne	.LBB1_32
# BB#31:                                # %if.then.83
	movl	-60(%rbp), %edi
	callq	gimp_image_delete
	movl	%eax, -144(%rbp)        # 4-byte Spill
.LBB1_32:                               # %if.end.85
	jmp	.LBB1_33
.LBB1_33:                               # %if.end.86
	jmp	.LBB1_34
.LBB1_34:                               # %if.end.87
	movq	runtime, %rax
	movq	%rax, %rdi
	callq	g_free
	cmpl	$3, -48(%rbp)
	je	.LBB1_37
# BB#35:                                # %land.lhs.true
	cmpq	$0, -56(%rbp)
	je	.LBB1_37
# BB#36:                                # %if.then.90
	movq	-32(%rbp), %rax
	movl	$2, (%rax)
	movl	$4, run.values+40
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, run.values+48
.LBB1_37:                               # %if.end.91
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
.LBB1_38:                               # %return
	addq	$144, %rsp
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
	.quad	4715268809856909312     # double 16777216
.LCPI3_1:
	.quad	4607182418800017408     # double 1
.LCPI3_2:
	.quad	4649966615260037120     # double 768
.LCPI3_4:
	.quad	4621819117588971520     # double 10
.LCPI3_5:
	.quad	4652007308841189376     # double 1000
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI3_3:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	load_dialog,@function
load_dialog:                            # @load_dialog
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$848, %rsp              # imm = 0x350
.Ltmp17:
	.cfi_offset %rbx, -48
.Ltmp18:
	.cfi_offset %r12, -40
.Ltmp19:
	.cfi_offset %r14, -32
.Ltmp20:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	get_file_info
	movabsq	$.L.str.26, %rdi
	movl	$1, %esi
	movq	%rax, -112(%rbp)
	callq	gimp_ui_init
	movabsq	$.L.str.27, %rdi
	callq	gettext
	movabsq	$.L.str.28, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.13, %r9
	movabsq	$.L.str.29, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.30, %r11
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -132(%rbp)        # 4-byte Spill
	movl	%r10d, -136(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-48(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_frame_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-56(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_preview_area_new
	movl	$350, %ecx              # imm = 0x15E
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_widget_set_size_request
	movq	-80(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.31, %rsi
	movabsq	$preview_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	$1, %r9d
	movq	-64(%rbp), %r11
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-200(%rbp), %rcx        # 8-byte Reload
	movq	-200(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.32, %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movl	$4, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-72(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-80(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.33, %rdi
	callq	gettext
	movabsq	$.L.str.34, %rdi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.35, %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.36, %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.37, %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.38, %rdi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %ecx
	movl	$2, %r9d
	movl	$3, %edx
	movl	$4, %r8d
	movl	$5, %r10d
	xorl	%ebx, %ebx
	movl	%ebx, %edi
	movq	-248(%rbp), %r11        # 8-byte Reload
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	-256(%rbp), %r14        # 8-byte Reload
	movl	%edx, -292(%rbp)        # 4-byte Spill
	movq	%r14, %rdx
	movq	-264(%rbp), %r15        # 8-byte Reload
	movl	%r8d, -296(%rbp)        # 4-byte Spill
	movq	%r15, %r8
	movq	-272(%rbp), %r12        # 8-byte Reload
	movq	%r12, (%rsp)
	movl	$3, 8(%rsp)
	movq	-280(%rbp), %r12        # 8-byte Reload
	movq	%r12, 16(%rsp)
	movl	$4, 24(%rsp)
	movq	%rax, 32(%rsp)
	movl	$5, 40(%rsp)
	movq	$0, 48(%rsp)
	movb	$0, %al
	movl	%r10d, -300(%rbp)       # 4-byte Spill
	callq	gimp_int_combo_box_new
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	runtime, %rdx
	movl	12(%rdx), %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movq	-72(%rbp), %rdx
	movl	%eax, -316(%rbp)        # 4-byte Spill
	movq	%rdx, -328(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.39, %rdi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movss	.LCPI3_3, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$2, %r9d
	movq	-88(%rbp), %r8
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.40, %rsi
	movabsq	$gimp_int_combo_box_get_active, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rdi
	movq	runtime, %r11
	addq	$12, %r11
	movq	%rcx, %rdx
	movq	%r11, %rcx
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.40, %rsi
	movabsq	$preview_update, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-352(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -368(%rbp)        # 8-byte Spill
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.41, %rdi
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movl	$9, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_5, %xmm4         # xmm4 = mem[0],zero
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movq	runtime, %rdi
	cvtsi2sdl	(%rdi), %xmm1
	cvtsi2sdq	-112(%rbp), %xmm2
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -400(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-400(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-400(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-400(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.42, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	runtime, %rdi
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-408(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.42, %rsi
	movabsq	$preview_update, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-104(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-416(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -432(%rbp)        # 8-byte Spill
	movq	%rcx, -440(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.43, %rdi
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movl	$9, %r9d
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_4, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %r10d
	xorps	%xmm1, %xmm1
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movq	runtime, %rdi
	cvtsi2sdl	4(%rdi), %xmm2
	cvtsi2sdq	-112(%rbp), %xmm3
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -456(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -464(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	-464(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm1, -472(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	movsd	-464(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-472(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-472(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -476(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.42, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	runtime, %rdi
	addq	$4, %rdi
	movq	%rdi, -488(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-488(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.42, %rsi
	movabsq	$preview_update, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-104(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -496(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-496(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -512(%rbp)        # 8-byte Spill
	movq	%rcx, -520(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.44, %rdi
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$3, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movl	$9, %r9d
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_4, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %r10d
	xorps	%xmm1, %xmm1
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movq	runtime, %rdi
	cvtsi2sdl	8(%rdi), %xmm2
	cvtsi2sdq	-112(%rbp), %xmm3
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -536(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -544(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	-544(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm1, -552(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm1
	movaps	%xmm3, %xmm2
	movsd	-544(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-552(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-552(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -556(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.42, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	runtime, %rdi
	addq	$8, %rdi
	movq	%rdi, -568(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-568(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.42, %rsi
	movabsq	$preview_update, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-104(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -576(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-576(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.45, %rdi
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movl	$3, %ecx
	xorl	%edx, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-72(%rbp), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-80(%rbp), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.46, %rdi
	callq	gettext
	movabsq	$.L.str.47, %rdi
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	gimp_int_combo_box_new
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-640(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	runtime, %rdx
	movl	20(%rdx), %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movq	-72(%rbp), %rdx
	movl	%eax, -644(%rbp)        # 4-byte Spill
	movq	%rdx, -656(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-656(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.48, %rdi
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movss	.LCPI3_3, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$2, %r9d
	movq	-88(%rbp), %r8
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.40, %rsi
	movabsq	$gimp_int_combo_box_get_active, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rdi
	movq	runtime, %r11
	addq	$20, %r11
	movq	%rcx, %rdx
	movq	%r11, %rcx
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.40, %rsi
	movabsq	$palette_update, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-88(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -680(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-680(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -696(%rbp)        # 8-byte Spill
	movq	%rcx, -704(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-704(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.49, %rdi
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	$1, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_2, %xmm4         # xmm4 = mem[0],zero
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movq	runtime, %rsi
	cvtsi2sdl	16(%rsi), %xmm1
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movq	%rcx, -720(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -728(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-728(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-728(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-728(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.42, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	runtime, %rdi
	addq	$16, %rdi
	movq	%rdi, -736(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-736(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.42, %rsi
	movabsq	$palette_update, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-104(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -744(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-744(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -752(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.50, %rdi
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_file_chooser_button_new
	movq	%rax, -96(%rbp)
	cmpq	$0, palfile
	je	.LBB3_2
# BB#1:                                 # %if.then
	movq	-96(%rbp), %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-768(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	palfile, %rsi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_filename
	movl	%eax, -772(%rbp)        # 4-byte Spill
.LBB3_2:                                # %if.end
	movq	-72(%rbp), %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-784(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.51, %rdi
	movq	%rax, -792(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %ecx
	xorps	%xmm0, %xmm0
	movss	.LCPI3_3, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-96(%rbp), %r8
	movq	-792(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %edx
	movl	%ecx, -796(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-796(%rbp), %r9d        # 4-byte Reload
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.52, %rsi
	movabsq	$palette_callback, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rdi
	movq	-64(%rbp), %r10
	movq	%rcx, %rdx
	movq	%r10, %rcx
	movq	%rax, -808(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-48(%rbp), %rdi
	movq	%rax, -816(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-48(%rbp), %rax
	movq	%rax, -824(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-824(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %eax
	movl	%eax, -116(%rbp)
	movq	-48(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-116(%rbp), %eax
	addq	$848, %rsp              # imm = 0x350
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	load_dialog, .Lfunc_end3-load_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	load_image,@function
load_image:                             # @load_image
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
	subq	$224, %rsp
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$840, %eax              # imm = 0x348
	movl	%eax, %edx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$-1, -36(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -60(%rbp)
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	callq	g_malloc0_n
	movabsq	$.L.str.54, %rsi
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	fopen
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.25, %rdi
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
	movl	$-1, -4(%rbp)
	jmp	.LBB4_16
.LBB4_2:                                # %if.end
	movl	$.L.str.55, %eax
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
	movq	-16(%rbp), %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	get_file_info
	movq	%rax, -56(%rbp)
	movq	runtime(%rip), %rax
	movl	12(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rsi
	subq	$5, %rsi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	ja	.LBB4_8
# BB#17:                                # %if.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	.LJTI4_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB4_3:                                # %sw.bb
	movl	$3, -60(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	jmp	.LBB4_8
.LBB4_4:                                # %sw.bb.14
	movl	$2, -60(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	jmp	.LBB4_8
.LBB4_5:                                # %sw.bb.15
	movl	$4, -60(%rbp)
	movl	$1, -40(%rbp)
	movl	$0, -44(%rbp)
	jmp	.LBB4_8
.LBB4_6:                                # %sw.bb.16
	movl	$1, -60(%rbp)
	movl	$4, -40(%rbp)
	movl	$2, -44(%rbp)
	jmp	.LBB4_8
.LBB4_7:                                # %sw.bb.17
	movl	$2, -60(%rbp)
	movl	$5, -40(%rbp)
	movl	$2, -44(%rbp)
.LBB4_8:                                # %sw.epilog
	movq	runtime, %rax
	movslq	8(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	runtime, %rdx
	movslq	4(%rdx), %rdx
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%rcx, %rax
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	cqto
	movq	-144(%rbp), %rcx        # 8-byte Reload
	idivq	%rcx
	movslq	-60(%rbp), %rsi
	cqto
	idivq	%rsi
	movq	-136(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jle	.LBB4_10
# BB#9:                                 # %if.then.22
	movq	-56(%rbp), %rax
	movq	runtime, %rcx
	movslq	4(%rcx), %rcx
	cqto
	idivq	%rcx
	movslq	-60(%rbp), %rcx
	cqto
	idivq	%rcx
	movl	%eax, %esi
	movq	runtime, %rax
	movl	%esi, 8(%rax)
.LBB4_10:                               # %if.end.30
	movq	runtime(%rip), %rax
	movl	4(%rax), %edi
	movl	8(%rax), %esi
	movl	-44(%rbp), %edx
	callq	gimp_image_new
	movq	-32(%rbp), %rcx
	movl	%eax, 64(%rcx)
	movq	-32(%rbp), %rcx
	movl	64(%rcx), %edi
	movq	-16(%rbp), %rsi
	callq	gimp_image_set_filename
	movq	-32(%rbp), %rcx
	movl	64(%rcx), %edi
	movl	$.L.str.56, %edx
	movl	%edx, %ecx
	movl	%edi, -148(%rbp)        # 4-byte Spill
	movq	%rcx, %rdi
	movl	%eax, -152(%rbp)        # 4-byte Spill
	callq	gettext
	movq	runtime(%rip), %rcx
	movl	4(%rcx), %edx
	movl	8(%rcx), %ecx
	movl	-40(%rbp), %r8d
	movsd	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movl	-148(%rbp), %edi        # 4-byte Reload
	movq	%rax, %rsi
	movl	%r9d, -156(%rbp)        # 4-byte Spill
	callq	gimp_layer_new
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rsi
	movl	64(%rsi), %edi
	movl	$-1, %edx
	movl	%eax, %esi
	movl	-156(%rbp), %ecx        # 4-byte Reload
	callq	gimp_image_insert_layer
	movl	-36(%rbp), %edi
	movl	%eax, -160(%rbp)        # 4-byte Spill
	callq	gimp_drawable_get
	movq	-32(%rbp), %r10
	movq	%rax, 8(%r10)
	movq	-32(%rbp), %rax
	movq	%rax, %r10
	addq	$16, %r10
	movq	8(%rax), %rsi
	movq	runtime(%rip), %rax
	movl	4(%rax), %r8d
	movl	8(%rax), %r9d
	movq	%rsp, %rax
	movl	$0, 8(%rax)
	movl	$1, (%rax)
	movq	%r10, %rdi
	movl	-156(%rbp), %edx        # 4-byte Reload
	movl	-156(%rbp), %ecx        # 4-byte Reload
	callq	gimp_pixel_rgn_init
	movq	runtime(%rip), %rax
	movl	12(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rsi
	subq	$5, %rsi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	ja	.LBB4_15
# BB#18:                                # %if.end.30
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	.LJTI4_1(,%rax,8), %rcx
	jmpq	*%rcx
.LBB4_11:                               # %sw.bb.48
	movq	-32(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	raw_load_standard
	movl	%eax, -180(%rbp)        # 4-byte Spill
	jmp	.LBB4_15
.LBB4_12:                               # %sw.bb.50
	movq	-32(%rbp), %rdi
	callq	raw_load_rgb565
	movl	%eax, -184(%rbp)        # 4-byte Spill
	jmp	.LBB4_15
.LBB4_13:                               # %sw.bb.52
	movq	-32(%rbp), %rdi
	callq	raw_load_planar
	movl	%eax, -188(%rbp)        # 4-byte Spill
	jmp	.LBB4_15
.LBB4_14:                               # %sw.bb.54
	movq	-32(%rbp), %rdi
	movq	palfile, %rsi
	callq	raw_load_palette
	movq	-32(%rbp), %rdi
	movl	-60(%rbp), %esi
	movl	%eax, -192(%rbp)        # 4-byte Spill
	callq	raw_load_standard
	movl	%eax, -196(%rbp)        # 4-byte Spill
.LBB4_15:                               # %sw.epilog.57
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	fclose
	movq	-32(%rbp), %rdi
	movq	8(%rdi), %rdi
	movl	%eax, -200(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movq	-32(%rbp), %rdi
	movq	8(%rdi), %rdi
	callq	gimp_drawable_detach
	movq	-32(%rbp), %rdi
	movl	64(%rdi), %eax
	movl	%eax, -4(%rbp)
.LBB4_16:                               # %return
	movl	-4(%rbp), %eax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	load_image, .Lfunc_end4-load_image
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI4_0:
	.quad	.LBB4_3
	.quad	.LBB4_5
	.quad	.LBB4_4
	.quad	.LBB4_3
	.quad	.LBB4_6
	.quad	.LBB4_7
.LJTI4_1:
	.quad	.LBB4_11
	.quad	.LBB4_11
	.quad	.LBB4_12
	.quad	.LBB4_13
	.quad	.LBB4_14
	.quad	.LBB4_14

	.text
	.align	16, 0x90
	.type	save_dialog,@function
save_dialog:                            # @save_dialog
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
.Ltmp27:
	.cfi_offset %rbx, -40
.Ltmp28:
	.cfi_offset %r14, -32
.Ltmp29:
	.cfi_offset %r15, -24
	movabsq	$.L.str.26, %rax
	movl	$1, %ecx
	movq	%rdi, -32(%rbp)
	movl	%esi, -36(%rbp)
	movl	%edx, -40(%rbp)
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gimp_ui_init
	movabsq	$.L.str.58, %rdi
	callq	gettext
	movabsq	$.L.str.26, %rsi
	movabsq	$.L.str.20, %rdx
	movq	%rax, %rdi
	callq	gimp_export_dialog_new
	movl	$1, %edi
	movl	$12, %esi
	movq	%rax, -48(%rbp)
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-48(%rbp), %rdi
	callq	gimp_export_dialog_get_content_area
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movl	-92(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.59, %rdi
	callq	gettext
	movabsq	$.L.str.60, %rdi
	movq	runtime, %rsi
	addq	$12, %rsi
	movq	runtime, %r9
	movl	12(%r9), %r8d
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movl	%r8d, -108(%rbp)        # 4-byte Spill
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.61, %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	movabsq	$gimp_radio_button_update, %rsi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movl	$3, %edx
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-136(%rbp), %r11        # 8-byte Reload
	movl	%edx, -140(%rbp)        # 4-byte Spill
	movq	%r11, %rdx
	movq	-120(%rbp), %rbx        # 8-byte Reload
	movl	%ecx, -144(%rbp)        # 4-byte Spill
	movq	%rbx, %rcx
	movl	-108(%rbp), %r8d        # 4-byte Reload
	movq	-128(%rbp), %r14        # 8-byte Reload
	movq	%r9, -152(%rbp)         # 8-byte Spill
	movq	%r14, %r9
	movl	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	%rax, 16(%rsp)
	movl	$3, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	callq	gimp_int_radio_group_new
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.62, %rdi
	callq	gettext
	movabsq	$.L.str.46, %rdi
	movq	runtime, %rsi
	addq	$20, %rsi
	movq	runtime, %r9
	movl	20(%r9), %r8d
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movl	%r8d, -172(%rbp)        # 4-byte Spill
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.47, %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	movabsq	$gimp_radio_button_update, %rsi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	-168(%rbp), %r10        # 8-byte Reload
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	-200(%rbp), %rdx        # 8-byte Reload
	movq	-184(%rbp), %r11        # 8-byte Reload
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	movq	%r11, %rcx
	movl	-172(%rbp), %r8d        # 4-byte Reload
	movq	-192(%rbp), %rbx        # 8-byte Reload
	movq	%r9, -216(%rbp)         # 8-byte Spill
	movq	%rbx, %r9
	movl	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	%rax, 16(%rsp)
	movl	$1, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	callq	gimp_int_radio_group_new
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movq	-48(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r15b
	andb	$1, %r15b
	movzbl	%r15b, %eax
	movl	%eax, -68(%rbp)
	movq	-48(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-68(%rbp), %eax
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	save_dialog, .Lfunc_end5-save_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	save_image,@function
save_image:                             # @save_image
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
	subq	$336, %rsp              # imm = 0x150
	xorl	%eax, %eax
	movl	$32, %r8d
	movl	%r8d, %r9d
	leaq	-144(%rbp), %r10
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	$0, -96(%rbp)
	movq	%r10, %rdi
	movl	%eax, %esi
	movq	%r9, %rdx
	callq	memset
	movl	$0, -184(%rbp)
	movl	$0, -188(%rbp)
	movl	-24(%rbp), %edi
	callq	gimp_drawable_get
	movq	%rax, -40(%rbp)
	movl	-24(%rbp), %edi
	callq	gimp_drawable_bpp
	movl	%eax, -160(%rbp)
	movl	-160(%rbp), %eax
	movl	%eax, -148(%rbp)
	movl	-24(%rbp), %edi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	je	.LBB6_2
# BB#1:                                 # %if.then
	leaq	-184(%rbp), %rsi
	movl	-20(%rbp), %edi
	callq	gimp_image_get_colormap
	movq	%rax, -96(%rbp)
.LBB6_2:                                # %if.end
	leaq	-88(%rbp), %rdi
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	movl	4(%rcx), %edx
	movl	%edx, -152(%rbp)
	movq	-40(%rbp), %rcx
	movl	8(%rcx), %edx
	movl	%edx, -156(%rbp)
	movq	-40(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movl	4(%rcx), %r8d
	movq	-40(%rbp), %rcx
	movl	8(%rcx), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$1, %eax
	movl	%eax, %esi
	movl	-152(%rbp), %eax
	imull	-156(%rbp), %eax
	imull	-160(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	leaq	-88(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rsi
	movl	-152(%rbp), %r8d
	movl	-156(%rbp), %r9d
	movl	%ecx, %edx
	callq	gimp_pixel_rgn_get_rect
	movabsq	$.L.str.63, %rsi
	movq	-16(%rbp), %rdi
	callq	fopen
	movq	%rax, -168(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.LBB6_4
# BB#3:                                 # %if.then.12
	movq	-32(%rbp), %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -220(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.64, %rdi
	movl	%eax, -224(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi
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
	movl	$0, -4(%rbp)
	jmp	.LBB6_44
.LBB6_4:                                # %if.end.20
	movl	$3, -188(%rbp)
	movq	runtime(%rip), %rax
	movl	12(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -244(%rbp)        # 4-byte Spill
	je	.LBB6_5
	jmp	.LBB6_45
.LBB6_45:                               # %if.end.20
	movl	-244(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -248(%rbp)        # 4-byte Spill
	je	.LBB6_23
	jmp	.LBB6_42
.LBB6_5:                                # %sw.bb
	movl	$1, %eax
	movl	%eax, %edx
	movq	-104(%rbp), %rdi
	movl	-152(%rbp), %eax
	imull	-156(%rbp), %eax
	imull	-160(%rbp), %eax
	movslq	%eax, %rsi
	movq	-168(%rbp), %rcx
	callq	fwrite
	cmpq	$0, %rax
	jne	.LBB6_7
# BB#6:                                 # %if.then.26
	movl	$0, -4(%rbp)
	jmp	.LBB6_44
.LBB6_7:                                # %if.end.27
	movq	-168(%rbp), %rdi
	callq	fclose
	cmpq	$0, -96(%rbp)
	movl	%eax, -252(%rbp)        # 4-byte Spill
	je	.LBB6_22
# BB#8:                                 # %if.then.30
	movabsq	$.L.str.65, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	g_strconcat
	movabsq	$.L.str.63, %rsi
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rdi
	callq	fopen
	movq	%rax, -168(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.LBB6_10
# BB#9:                                 # %if.then.34
	movq	-32(%rbp), %rdi
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	callq	g_file_error_quark
	movl	%eax, -268(%rbp)        # 4-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_file_error_from_errno
	movabsq	$.L.str.64, %rdi
	movl	%eax, -272(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-200(%rbp), %rdi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movl	-268(%rbp), %esi        # 4-byte Reload
	movl	-272(%rbp), %edx        # 4-byte Reload
	movq	-280(%rbp), %rcx        # 8-byte Reload
	movq	-288(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	g_set_error
	movl	$0, -4(%rbp)
	jmp	.LBB6_44
.LBB6_10:                               # %if.end.42
	movq	runtime(%rip), %rax
	movl	20(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -292(%rbp)        # 4-byte Spill
	je	.LBB6_11
	jmp	.LBB6_46
.LBB6_46:                               # %if.end.42
	movl	-292(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -296(%rbp)        # 4-byte Spill
	je	.LBB6_14
	jmp	.LBB6_21
.LBB6_11:                               # %sw.bb.43
	movl	$1, %eax
	movl	%eax, %edx
	movq	-96(%rbp), %rdi
	imull	$3, -184(%rbp), %eax
	movslq	%eax, %rsi
	movq	-168(%rbp), %rcx
	callq	fwrite
	cmpq	$0, %rax
	jne	.LBB6_13
# BB#12:                                # %if.then.48
	movl	$0, -188(%rbp)
.LBB6_13:                               # %if.end.49
	movq	-168(%rbp), %rdi
	callq	fclose
	movl	%eax, -300(%rbp)        # 4-byte Spill
	jmp	.LBB6_21
.LBB6_14:                               # %sw.bb.51
	movl	-184(%rbp), %eax
	shll	$2, %eax
	movslq	%eax, %rdi
	callq	g_malloc0
	movq	%rax, -208(%rbp)
	movl	$0, -172(%rbp)
	movl	$0, -176(%rbp)
.LBB6_15:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-172(%rbp), %eax
	imull	$3, -184(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB6_18
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB6_15 Depth=1
	movl	-172(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-96(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-176(%rbp), %eax
	movl	%eax, %edi
	addl	$1, %edi
	movl	%edi, -176(%rbp)
	movslq	%eax, %rcx
	movq	-208(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	movl	-172(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-96(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-176(%rbp), %eax
	movl	%eax, %edi
	addl	$1, %edi
	movl	%edi, -176(%rbp)
	movslq	%eax, %rcx
	movq	-208(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	movl	-172(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-96(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-176(%rbp), %eax
	movl	%eax, %edi
	addl	$1, %edi
	movl	%edi, -176(%rbp)
	movslq	%eax, %rcx
	movq	-208(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	movl	-176(%rbp), %eax
	movl	%eax, %edi
	addl	$1, %edi
	movl	%edi, -176(%rbp)
	movslq	%eax, %rcx
	movq	-208(%rbp), %rdx
	movb	$0, (%rdx,%rcx)
# BB#17:                                # %for.inc
                                        #   in Loop: Header=BB6_15 Depth=1
	movl	-172(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -172(%rbp)
	jmp	.LBB6_15
.LBB6_18:                               # %for.end
	movl	$1, %eax
	movl	%eax, %edx
	movq	-208(%rbp), %rdi
	movl	-184(%rbp), %eax
	shll	$2, %eax
	movslq	%eax, %rsi
	movq	-168(%rbp), %rcx
	callq	fwrite
	cmpq	$0, %rax
	jne	.LBB6_20
# BB#19:                                # %if.then.79
	movl	$0, -188(%rbp)
.LBB6_20:                               # %if.end.80
	movq	-168(%rbp), %rdi
	callq	fclose
	movq	-208(%rbp), %rdi
	movl	%eax, -304(%rbp)        # 4-byte Spill
	callq	g_free
.LBB6_21:                               # %sw.epilog
	jmp	.LBB6_22
.LBB6_22:                               # %if.end.82
	jmp	.LBB6_43
.LBB6_23:                               # %sw.bb.83
	movl	$0, -180(%rbp)
.LBB6_24:                               # %for.cond.84
                                        # =>This Inner Loop Header: Depth=1
	movl	-180(%rbp), %eax
	cmpl	-148(%rbp), %eax
	jge	.LBB6_27
# BB#25:                                # %for.body.87
                                        #   in Loop: Header=BB6_24 Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movl	-152(%rbp), %eax
	imull	-156(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movslq	-180(%rbp), %rsi
	movq	%rax, -144(%rbp,%rsi,8)
# BB#26:                                # %for.inc.93
                                        #   in Loop: Header=BB6_24 Depth=1
	movl	-180(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -180(%rbp)
	jmp	.LBB6_24
.LBB6_27:                               # %for.end.95
	movl	$0, -172(%rbp)
	movl	$0, -176(%rbp)
.LBB6_28:                               # %for.cond.96
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_30 Depth 2
	movl	-172(%rbp), %eax
	movl	-152(%rbp), %ecx
	imull	-156(%rbp), %ecx
	imull	-160(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB6_35
# BB#29:                                # %for.body.101
                                        #   in Loop: Header=BB6_28 Depth=1
	movl	$0, -180(%rbp)
.LBB6_30:                               # %for.cond.102
                                        #   Parent Loop BB6_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-180(%rbp), %eax
	cmpl	-148(%rbp), %eax
	jge	.LBB6_33
# BB#31:                                # %for.body.105
                                        #   in Loop: Header=BB6_30 Depth=2
	movl	-172(%rbp), %eax
	addl	-180(%rbp), %eax
	movslq	%eax, %rcx
	movq	-104(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movslq	-176(%rbp), %rcx
	movslq	-180(%rbp), %rdx
	movq	-144(%rbp,%rdx,8), %rdx
	movb	%sil, (%rdx,%rcx)
# BB#32:                                # %for.inc.113
                                        #   in Loop: Header=BB6_30 Depth=2
	movl	-180(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -180(%rbp)
	jmp	.LBB6_30
.LBB6_33:                               # %for.end.115
                                        #   in Loop: Header=BB6_28 Depth=1
	jmp	.LBB6_34
.LBB6_34:                               # %for.inc.116
                                        #   in Loop: Header=BB6_28 Depth=1
	movl	-160(%rbp), %eax
	addl	-172(%rbp), %eax
	movl	%eax, -172(%rbp)
	movl	-176(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -176(%rbp)
	jmp	.LBB6_28
.LBB6_35:                               # %for.end.119
	movl	$3, -188(%rbp)
	movl	$0, -180(%rbp)
.LBB6_36:                               # %for.cond.120
                                        # =>This Inner Loop Header: Depth=1
	movl	-180(%rbp), %eax
	cmpl	-148(%rbp), %eax
	jge	.LBB6_41
# BB#37:                                # %for.body.123
                                        #   in Loop: Header=BB6_36 Depth=1
	movl	$1, %eax
	movl	%eax, %edx
	movslq	-180(%rbp), %rcx
	movq	-144(%rbp,%rcx,8), %rdi
	movl	-152(%rbp), %eax
	imull	-156(%rbp), %eax
	movslq	%eax, %rsi
	movq	-168(%rbp), %rcx
	callq	fwrite
	cmpq	$0, %rax
	jne	.LBB6_39
# BB#38:                                # %if.then.130
                                        #   in Loop: Header=BB6_36 Depth=1
	movl	$0, -188(%rbp)
.LBB6_39:                               # %if.end.131
                                        #   in Loop: Header=BB6_36 Depth=1
	movslq	-180(%rbp), %rax
	movq	-144(%rbp,%rax,8), %rdi
	callq	g_free
# BB#40:                                # %for.inc.134
                                        #   in Loop: Header=BB6_36 Depth=1
	movl	-180(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -180(%rbp)
	jmp	.LBB6_36
.LBB6_41:                               # %for.end.136
	movq	-168(%rbp), %rdi
	callq	fclose
	movl	%eax, -308(%rbp)        # 4-byte Spill
	jmp	.LBB6_43
.LBB6_42:                               # %sw.default
	jmp	.LBB6_43
.LBB6_43:                               # %sw.epilog.138
	movl	-188(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB6_44:                               # %return
	movl	-4(%rbp), %eax
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end6:
	.size	save_image, .Lfunc_end6-save_image
	.cfi_endproc

	.align	16, 0x90
	.type	get_file_info,@function
get_file_info:                          # @get_file_info
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_file_new_for_path
	movabsq	$.L.str.53, %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -16(%rbp)
	movq	$0, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movq	-40(%rbp), %r8          # 8-byte Reload
	callq	g_file_query_info
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	g_file_info_get_size
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB7_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-32(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	get_file_info, .Lfunc_end7-get_file_info
	.cfi_endproc

	.align	16, 0x90
	.type	preview_update,@function
preview_update:                         # @preview_update
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
	pushq	%rbx
	subq	$376, %rsp              # imm = 0x178
.Ltmp39:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	runtime, %rdi
	movl	4(%rdi), %eax
	movq	-16(%rbp), %rdi
	cmpl	112(%rdi), %eax
	jge	.LBB8_2
# BB#1:                                 # %cond.true
	movq	runtime, %rax
	movl	4(%rax), %ecx
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	jmp	.LBB8_3
.LBB8_2:                                # %cond.false
	movq	-16(%rbp), %rax
	movl	112(%rax), %ecx
	movl	%ecx, -156(%rbp)        # 4-byte Spill
.LBB8_3:                                # %cond.end
	movl	-156(%rbp), %eax        # 4-byte Reload
	movl	%eax, -20(%rbp)
	movq	runtime, %rcx
	movl	8(%rcx), %eax
	movq	-16(%rbp), %rcx
	cmpl	116(%rcx), %eax
	jge	.LBB8_5
# BB#4:                                 # %cond.true.6
	movq	runtime, %rax
	movl	8(%rax), %ecx
	movl	%ecx, -160(%rbp)        # 4-byte Spill
	jmp	.LBB8_6
.LBB8_5:                                # %cond.false.8
	movq	-16(%rbp), %rax
	movl	116(%rax), %ecx
	movl	%ecx, -160(%rbp)        # 4-byte Spill
.LBB8_6:                                # %cond.end.10
	movl	-160(%rbp), %eax        # 4-byte Reload
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rcx
	movl	112(%rcx), %eax
	movl	116(%rcx), %r8d
	movq	%rsp, %rdx
	movl	$255, 8(%rdx)
	movl	$255, (%rdx)
	xorl	%esi, %esi
	movl	$255, %r9d
	movq	%rcx, %rdi
	movl	%esi, -164(%rbp)        # 4-byte Spill
	movl	-164(%rbp), %edx        # 4-byte Reload
	movl	%eax, %ecx
	callq	gimp_preview_area_fill
	movq	runtime(%rip), %rdi
	movl	12(%rdi), %eax
	movl	%eax, %edi
	movq	%rdi, %r10
	subq	$5, %r10
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%r10, -184(%rbp)        # 8-byte Spill
	ja	.LBB8_65
# BB#66:                                # %cond.end.10
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	.LJTI8_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB8_7:                                # %sw.bb
	imull	$3, -20(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc0
	movq	%rax, -48(%rbp)
	movl	$0, -36(%rbp)
.LBB8_8:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB8_11
# BB#9:                                 # %for.body
                                        #   in Loop: Header=BB8_8 Depth=1
	movq	runtime, %rax
	movl	(%rax), %ecx
	movq	runtime, %rax
	movl	4(%rax), %edx
	imull	-36(%rbp), %edx
	imull	$3, %edx, %edx
	addl	%edx, %ecx
	movl	%ecx, -28(%rbp)
	movl	preview_fd, %edi
	movq	-48(%rbp), %rsi
	imull	$3, -20(%rbp), %edx
	movl	-28(%rbp), %ecx
	imull	$3, -20(%rbp), %r8d
	callq	mmap_read
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	-16(%rbp), %rdi
	movl	-36(%rbp), %edx
	movl	-20(%rbp), %r9d
	movq	-48(%rbp), %rsi
	imull	$3, -20(%rbp), %r10d
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%ecx, -196(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	-196(%rbp), %r9d        # 4-byte Reload
	movq	-192(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%eax, -200(%rbp)        # 4-byte Spill
	callq	gimp_preview_area_draw
# BB#10:                                # %for.inc
                                        #   in Loop: Header=BB8_8 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB8_8
.LBB8_11:                               # %for.end
	movq	-48(%rbp), %rdi
	callq	g_free
	jmp	.LBB8_65
.LBB8_12:                               # %sw.bb.23
	movslq	-20(%rbp), %rdi
	callq	g_malloc0
	movq	%rax, -56(%rbp)
	movslq	-20(%rbp), %rdi
	callq	g_malloc0
	movq	%rax, -64(%rbp)
	movslq	-20(%rbp), %rdi
	callq	g_malloc0
	movq	%rax, -72(%rbp)
	imull	$3, -20(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc0
	movq	%rax, -80(%rbp)
	movl	$0, -36(%rbp)
.LBB8_13:                               # %for.cond.34
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_15 Depth 2
	movl	-36(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB8_20
# BB#14:                                # %for.body.37
                                        #   in Loop: Header=BB8_13 Depth=1
	movq	runtime, %rax
	movl	(%rax), %ecx
	movl	-36(%rbp), %edx
	movq	runtime, %rax
	imull	4(%rax), %edx
	addl	%edx, %ecx
	movl	%ecx, -28(%rbp)
	movl	preview_fd, %edi
	movq	-56(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-28(%rbp), %ecx
	movl	-20(%rbp), %r8d
	callq	mmap_read
	movq	runtime, %rsi
	movl	(%rsi), %ecx
	movq	runtime, %rsi
	movl	4(%rsi), %edx
	movq	runtime, %rsi
	movl	8(%rsi), %edi
	addl	-36(%rbp), %edi
	imull	%edi, %edx
	addl	%edx, %ecx
	movl	%ecx, -28(%rbp)
	movl	preview_fd, %edi
	movq	-64(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-28(%rbp), %ecx
	movl	-20(%rbp), %r8d
	movl	%eax, -204(%rbp)        # 4-byte Spill
	callq	mmap_read
	movq	runtime, %rsi
	movl	(%rsi), %ecx
	movq	runtime, %rsi
	movl	4(%rsi), %edx
	movq	runtime, %rsi
	movl	8(%rsi), %edi
	shll	$1, %edi
	addl	-36(%rbp), %edi
	imull	%edi, %edx
	addl	%edx, %ecx
	movl	%ecx, -28(%rbp)
	movl	preview_fd, %edi
	movq	-72(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-28(%rbp), %ecx
	movl	-20(%rbp), %r8d
	movl	%eax, -208(%rbp)        # 4-byte Spill
	callq	mmap_read
	movl	$0, -84(%rbp)
	movl	$0, -88(%rbp)
	movl	%eax, -212(%rbp)        # 4-byte Spill
.LBB8_15:                               # %for.cond.58
                                        #   Parent Loop BB8_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-84(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB8_18
# BB#16:                                # %for.body.61
                                        #   in Loop: Header=BB8_15 Depth=2
	movslq	-84(%rbp), %rax
	movq	-56(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movl	-88(%rbp), %esi
	movl	%esi, %edi
	addl	$1, %edi
	movl	%edi, -88(%rbp)
	movslq	%esi, %rax
	movq	-80(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
	movslq	-84(%rbp), %rax
	movq	-64(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movl	-88(%rbp), %esi
	movl	%esi, %edi
	addl	$1, %edi
	movl	%edi, -88(%rbp)
	movslq	%esi, %rax
	movq	-80(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
	movslq	-84(%rbp), %rax
	movq	-72(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movl	-88(%rbp), %esi
	movl	%esi, %edi
	addl	$1, %edi
	movl	%edi, -88(%rbp)
	movslq	%esi, %rax
	movq	-80(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
# BB#17:                                # %for.inc.75
                                        #   in Loop: Header=BB8_15 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB8_15
.LBB8_18:                               # %for.end.77
                                        #   in Loop: Header=BB8_13 Depth=1
	xorl	%eax, %eax
	movl	$1, %r8d
	movq	-16(%rbp), %rdi
	movl	-36(%rbp), %edx
	movl	-20(%rbp), %ecx
	movq	-80(%rbp), %rsi
	imull	$3, -20(%rbp), %r9d
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movl	%r9d, -228(%rbp)        # 4-byte Spill
	movl	%eax, %r9d
	movq	-224(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movl	-228(%rbp), %eax        # 4-byte Reload
	movl	%eax, 8(%rsp)
	callq	gimp_preview_area_draw
# BB#19:                                # %for.inc.79
                                        #   in Loop: Header=BB8_13 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB8_13
.LBB8_20:                               # %for.end.81
	movq	-72(%rbp), %rdi
	callq	g_free
	movq	-64(%rbp), %rdi
	callq	g_free
	movq	-56(%rbp), %rdi
	callq	g_free
	movq	-80(%rbp), %rdi
	callq	g_free
	jmp	.LBB8_65
.LBB8_21:                               # %sw.bb.82
	movl	-20(%rbp), %eax
	shll	$2, %eax
	movslq	%eax, %rdi
	callq	g_malloc0
	movq	%rax, -96(%rbp)
	movl	$0, -36(%rbp)
.LBB8_22:                               # %for.cond.87
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB8_25
# BB#23:                                # %for.body.90
                                        #   in Loop: Header=BB8_22 Depth=1
	movq	runtime, %rax
	movl	(%rax), %ecx
	movq	runtime, %rax
	movl	4(%rax), %edx
	imull	-36(%rbp), %edx
	shll	$2, %edx
	addl	%edx, %ecx
	movl	%ecx, -28(%rbp)
	movl	preview_fd, %edi
	movq	-96(%rbp), %rsi
	movl	-20(%rbp), %ecx
	shll	$2, %ecx
	movl	-28(%rbp), %edx
	movl	-20(%rbp), %r8d
	shll	$2, %r8d
	movl	%edx, -232(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-232(%rbp), %ecx        # 4-byte Reload
	callq	mmap_read
	xorl	%esi, %esi
	movl	$1, %ecx
	movq	-16(%rbp), %rdi
	movl	-36(%rbp), %edx
	movl	-20(%rbp), %r8d
	movq	-96(%rbp), %r9
	movl	-20(%rbp), %r10d
	shll	$2, %r10d
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-236(%rbp), %r8d        # 4-byte Reload
	movl	-236(%rbp), %r11d       # 4-byte Reload
	movq	%r9, -248(%rbp)         # 8-byte Spill
	movl	%r11d, %r9d
	movq	-248(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%eax, -252(%rbp)        # 4-byte Spill
	callq	gimp_preview_area_draw
# BB#24:                                # %for.inc.100
                                        #   in Loop: Header=BB8_22 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB8_22
.LBB8_25:                               # %for.end.102
	movq	-96(%rbp), %rdi
	callq	g_free
	jmp	.LBB8_65
.LBB8_26:                               # %sw.bb.103
	movl	-20(%rbp), %eax
	shll	$1, %eax
	movslq	%eax, %rdi
	callq	g_malloc0
	movq	%rax, -104(%rbp)
	imull	$3, -20(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc0
	movq	%rax, -112(%rbp)
	movl	$0, -36(%rbp)
.LBB8_27:                               # %for.cond.111
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB8_30
# BB#28:                                # %for.body.114
                                        #   in Loop: Header=BB8_27 Depth=1
	movq	runtime, %rax
	movl	(%rax), %ecx
	movq	runtime, %rax
	movl	4(%rax), %edx
	imull	-36(%rbp), %edx
	shll	$1, %edx
	addl	%edx, %ecx
	movl	%ecx, -28(%rbp)
	movl	preview_fd, %edi
	movq	-104(%rbp), %rax
	movl	-20(%rbp), %ecx
	shll	$1, %ecx
	movl	-28(%rbp), %edx
	movl	-20(%rbp), %esi
	shll	$1, %esi
	movl	%esi, -256(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movl	%edx, -260(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-260(%rbp), %ecx        # 4-byte Reload
	movl	-256(%rbp), %r8d        # 4-byte Reload
	callq	mmap_read
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	%eax, -264(%rbp)        # 4-byte Spill
	callq	rgb_565_to_888
	xorl	%eax, %eax
	movl	$1, %r8d
	movq	-16(%rbp), %rdi
	movl	-36(%rbp), %edx
	movl	-20(%rbp), %ecx
	movq	-112(%rbp), %rsi
	imull	$3, -20(%rbp), %r9d
	movq	%rsi, -272(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movl	%r9d, -276(%rbp)        # 4-byte Spill
	movl	%eax, %r9d
	movq	-272(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movl	-276(%rbp), %eax        # 4-byte Reload
	movl	%eax, 8(%rsp)
	callq	gimp_preview_area_draw
# BB#29:                                # %for.inc.124
                                        #   in Loop: Header=BB8_27 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB8_27
.LBB8_30:                               # %for.end.126
	movq	-112(%rbp), %rdi
	callq	g_free
	movq	-104(%rbp), %rdi
	callq	g_free
	jmp	.LBB8_65
.LBB8_31:                               # %sw.bb.127
	movl	$1, %eax
	movl	$2, %ecx
	movq	runtime, %rdx
	cmpl	$5, 12(%rdx)
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edi
	movl	%edi, -116(%rbp)
	movl	-20(%rbp), %edi
	cmpl	$0, -116(%rbp)
	cmovnel	%ecx, %eax
	imull	%eax, %edi
	movslq	%edi, %rdi
	callq	g_malloc0
	movl	$3, %ecx
	movl	$4, %r8d
	movq	%rax, -128(%rbp)
	movl	-20(%rbp), %r9d
	cmpl	$0, -116(%rbp)
	cmovnel	%r8d, %ecx
	imull	%ecx, %r9d
	movslq	%r9d, %rdi
	callq	g_malloc0
	movq	%rax, -136(%rbp)
	cmpl	$0, preview_cmap_update
	je	.LBB8_43
# BB#32:                                # %if.then
	cmpq	$0, palfile
	je	.LBB8_34
# BB#33:                                # %if.then.143
	xorl	%eax, %eax
	movq	palfile, %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	movb	$0, %al
	callq	open
	xorl	%edx, %edx
	movl	%eax, -140(%rbp)
	movl	-140(%rbp), %edi
	movq	runtime, %rcx
	movslq	16(%rcx), %rsi
	callq	lseek
	movabsq	$preview_cmap, %rsi
	movl	$1024, %edx             # imm = 0x400
	movl	$768, %edi              # imm = 0x300
	movl	-140(%rbp), %r8d
	movq	runtime, %rcx
	cmpl	$0, 20(%rcx)
	cmovel	%edi, %edx
	movslq	%edx, %rdx
	movl	%r8d, %edi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	read
	movl	-140(%rbp), %edi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	close
	movl	%eax, -300(%rbp)        # 4-byte Spill
	jmp	.LBB8_42
.LBB8_34:                               # %if.else
	movl	$0, -36(%rbp)
	movl	$0, -32(%rbp)
.LBB8_35:                               # %for.cond.153
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -36(%rbp)         # imm = 0x100
	jge	.LBB8_41
# BB#36:                                # %for.body.156
                                        #   in Loop: Header=BB8_35 Depth=1
	movl	-36(%rbp), %eax
	movb	%al, %cl
	movl	-32(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -32(%rbp)
	movslq	%eax, %rsi
	movb	%cl, preview_cmap(,%rsi)
	movl	-36(%rbp), %eax
	movb	%al, %cl
	movl	-32(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -32(%rbp)
	movslq	%eax, %rsi
	movb	%cl, preview_cmap(,%rsi)
	movq	runtime, %rsi
	cmpl	$0, 20(%rsi)
	jne	.LBB8_38
# BB#37:                                # %if.then.168
                                        #   in Loop: Header=BB8_35 Depth=1
	movl	-36(%rbp), %eax
	movb	%al, %cl
	movl	-32(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -32(%rbp)
	movslq	%eax, %rsi
	movb	%cl, preview_cmap(,%rsi)
	jmp	.LBB8_39
.LBB8_38:                               # %if.else.173
                                        #   in Loop: Header=BB8_35 Depth=1
	movl	-36(%rbp), %eax
	movb	%al, %cl
	movl	-32(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -32(%rbp)
	movslq	%eax, %rsi
	movb	%cl, preview_cmap(,%rsi)
	movl	-32(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -32(%rbp)
	movslq	%eax, %rsi
	movb	$0, preview_cmap(,%rsi)
.LBB8_39:                               # %if.end
                                        #   in Loop: Header=BB8_35 Depth=1
	jmp	.LBB8_40
.LBB8_40:                               # %for.inc.181
                                        #   in Loop: Header=BB8_35 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB8_35
.LBB8_41:                               # %for.end.183
	jmp	.LBB8_42
.LBB8_42:                               # %if.end.184
	movl	$0, preview_cmap_update
.LBB8_43:                               # %if.end.185
	movl	$0, -36(%rbp)
.LBB8_44:                               # %for.cond.186
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_47 Depth 2
                                        #     Child Loop BB8_55 Depth 2
	movl	-36(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB8_64
# BB#45:                                # %for.body.189
                                        #   in Loop: Header=BB8_44 Depth=1
	movq	-136(%rbp), %rax
	movq	%rax, -152(%rbp)
	cmpl	$0, -116(%rbp)
	je	.LBB8_54
# BB#46:                                # %if.then.191
                                        #   in Loop: Header=BB8_44 Depth=1
	movq	runtime, %rax
	movl	(%rax), %ecx
	movq	runtime, %rax
	movl	4(%rax), %edx
	shll	$1, %edx
	imull	-36(%rbp), %edx
	addl	%edx, %ecx
	movl	%ecx, -28(%rbp)
	movl	preview_fd, %edi
	movq	-128(%rbp), %rsi
	movl	-20(%rbp), %ecx
	shll	$1, %ecx
	movl	-28(%rbp), %edx
	movl	-20(%rbp), %r8d
	movl	%edx, -304(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-304(%rbp), %ecx        # 4-byte Reload
	callq	mmap_read
	movl	$0, -32(%rbp)
	movl	%eax, -308(%rbp)        # 4-byte Spill
.LBB8_47:                               # %for.cond.199
                                        #   Parent Loop BB8_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB8_53
# BB#48:                                # %for.body.202
                                        #   in Loop: Header=BB8_47 Depth=2
	movq	runtime(%rip), %rax
	movl	20(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -312(%rbp)        # 4-byte Spill
	je	.LBB8_49
	jmp	.LBB8_68
.LBB8_68:                               # %for.body.202
                                        #   in Loop: Header=BB8_47 Depth=2
	movl	-312(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -316(%rbp)        # 4-byte Spill
	je	.LBB8_50
	jmp	.LBB8_51
.LBB8_49:                               # %sw.bb.204
                                        #   in Loop: Header=BB8_47 Depth=2
	movl	-32(%rbp), %eax
	shll	$1, %eax
	movslq	%eax, %rcx
	movq	-128(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	imull	$3, %eax, %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movb	preview_cmap(,%rcx), %sil
	movq	-152(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -152(%rbp)
	movb	%sil, (%rcx)
	movl	-32(%rbp), %eax
	shll	$1, %eax
	movslq	%eax, %rcx
	movq	-128(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	imull	$3, %eax, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movb	preview_cmap(,%rcx), %sil
	movq	-152(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -152(%rbp)
	movb	%sil, (%rcx)
	movl	-32(%rbp), %eax
	shll	$1, %eax
	movslq	%eax, %rcx
	movq	-128(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	imull	$3, %eax, %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movb	preview_cmap(,%rcx), %sil
	movq	-152(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -152(%rbp)
	movb	%sil, (%rcx)
	movl	-32(%rbp), %eax
	shll	$1, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-128(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movq	-152(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -152(%rbp)
	movb	%sil, (%rcx)
	jmp	.LBB8_51
.LBB8_50:                               # %sw.bb.236
                                        #   in Loop: Header=BB8_47 Depth=2
	movl	-32(%rbp), %eax
	shll	$1, %eax
	movslq	%eax, %rcx
	movq	-128(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	shll	$2, %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movb	preview_cmap(,%rcx), %sil
	movq	-152(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -152(%rbp)
	movb	%sil, (%rcx)
	movl	-32(%rbp), %eax
	shll	$1, %eax
	movslq	%eax, %rcx
	movq	-128(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	shll	$2, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movb	preview_cmap(,%rcx), %sil
	movq	-152(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -152(%rbp)
	movb	%sil, (%rcx)
	movl	-32(%rbp), %eax
	shll	$1, %eax
	movslq	%eax, %rcx
	movq	-128(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	shll	$2, %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movb	preview_cmap(,%rcx), %sil
	movq	-152(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -152(%rbp)
	movb	%sil, (%rcx)
	movl	-32(%rbp), %eax
	shll	$1, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-128(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movq	-152(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -152(%rbp)
	movb	%sil, (%rcx)
.LBB8_51:                               # %sw.epilog
                                        #   in Loop: Header=BB8_47 Depth=2
	jmp	.LBB8_52
.LBB8_52:                               # %for.inc.269
                                        #   in Loop: Header=BB8_47 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB8_47
.LBB8_53:                               # %for.end.271
                                        #   in Loop: Header=BB8_44 Depth=1
	xorl	%esi, %esi
	movl	$1, %eax
	movq	-16(%rbp), %rdi
	movl	-36(%rbp), %edx
	movl	-20(%rbp), %ecx
	movq	-136(%rbp), %r8
	movl	-20(%rbp), %r9d
	shll	$2, %r9d
	movq	%r8, -328(%rbp)         # 8-byte Spill
	movl	%eax, %r8d
	movl	%r9d, -332(%rbp)        # 4-byte Spill
	movl	%eax, %r9d
	movq	-328(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movl	-332(%rbp), %eax        # 4-byte Reload
	movl	%eax, 8(%rsp)
	callq	gimp_preview_area_draw
	jmp	.LBB8_62
.LBB8_54:                               # %if.else.273
                                        #   in Loop: Header=BB8_44 Depth=1
	movq	runtime, %rax
	movl	(%rax), %ecx
	movq	runtime, %rax
	movl	4(%rax), %edx
	imull	-36(%rbp), %edx
	addl	%edx, %ecx
	movl	%ecx, -28(%rbp)
	movl	preview_fd, %edi
	movq	-128(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-28(%rbp), %ecx
	movl	-20(%rbp), %r8d
	callq	mmap_read
	movl	$0, -32(%rbp)
	movl	%eax, -336(%rbp)        # 4-byte Spill
.LBB8_55:                               # %for.cond.279
                                        #   Parent Loop BB8_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB8_61
# BB#56:                                # %for.body.282
                                        #   in Loop: Header=BB8_55 Depth=2
	movq	runtime(%rip), %rax
	movl	20(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -340(%rbp)        # 4-byte Spill
	je	.LBB8_57
	jmp	.LBB8_67
.LBB8_67:                               # %for.body.282
                                        #   in Loop: Header=BB8_55 Depth=2
	movl	-340(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -344(%rbp)        # 4-byte Spill
	je	.LBB8_58
	jmp	.LBB8_59
.LBB8_57:                               # %sw.bb.284
                                        #   in Loop: Header=BB8_55 Depth=2
	movslq	-32(%rbp), %rax
	movq	-128(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	imull	$3, %edx, %edx
	addl	$0, %edx
	movslq	%edx, %rax
	movb	preview_cmap(,%rax), %sil
	movq	-152(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -152(%rbp)
	movb	%sil, (%rax)
	movslq	-32(%rbp), %rax
	movq	-128(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	imull	$3, %edx, %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movb	preview_cmap(,%rax), %sil
	movq	-152(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -152(%rbp)
	movb	%sil, (%rax)
	movslq	-32(%rbp), %rax
	movq	-128(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	imull	$3, %edx, %edx
	addl	$2, %edx
	movslq	%edx, %rax
	movb	preview_cmap(,%rax), %sil
	movq	-152(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -152(%rbp)
	movb	%sil, (%rax)
	jmp	.LBB8_59
.LBB8_58:                               # %sw.bb.309
                                        #   in Loop: Header=BB8_55 Depth=2
	movslq	-32(%rbp), %rax
	movq	-128(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	shll	$2, %edx
	addl	$2, %edx
	movslq	%edx, %rax
	movb	preview_cmap(,%rax), %sil
	movq	-152(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -152(%rbp)
	movb	%sil, (%rax)
	movslq	-32(%rbp), %rax
	movq	-128(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	shll	$2, %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movb	preview_cmap(,%rax), %sil
	movq	-152(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -152(%rbp)
	movb	%sil, (%rax)
	movslq	-32(%rbp), %rax
	movq	-128(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	shll	$2, %edx
	addl	$0, %edx
	movslq	%edx, %rax
	movb	preview_cmap(,%rax), %sil
	movq	-152(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -152(%rbp)
	movb	%sil, (%rax)
.LBB8_59:                               # %sw.epilog.334
                                        #   in Loop: Header=BB8_55 Depth=2
	jmp	.LBB8_60
.LBB8_60:                               # %for.inc.335
                                        #   in Loop: Header=BB8_55 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB8_55
.LBB8_61:                               # %for.end.337
                                        #   in Loop: Header=BB8_44 Depth=1
	xorl	%eax, %eax
	movl	$1, %r8d
	movq	-16(%rbp), %rdi
	movl	-36(%rbp), %edx
	movl	-20(%rbp), %ecx
	movq	-136(%rbp), %rsi
	imull	$3, -20(%rbp), %r9d
	movq	%rsi, -352(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movl	%r9d, -356(%rbp)        # 4-byte Spill
	movl	%eax, %r9d
	movq	-352(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movl	-356(%rbp), %eax        # 4-byte Reload
	movl	%eax, 8(%rsp)
	callq	gimp_preview_area_draw
.LBB8_62:                               # %if.end.339
                                        #   in Loop: Header=BB8_44 Depth=1
	jmp	.LBB8_63
.LBB8_63:                               # %for.inc.340
                                        #   in Loop: Header=BB8_44 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB8_44
.LBB8_64:                               # %for.end.342
	movq	-136(%rbp), %rdi
	callq	g_free
	movq	-128(%rbp), %rdi
	callq	g_free
.LBB8_65:                               # %sw.epilog.343
	addq	$376, %rsp              # imm = 0x178
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end8:
	.size	preview_update, .Lfunc_end8-preview_update
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI8_0:
	.quad	.LBB8_7
	.quad	.LBB8_21
	.quad	.LBB8_26
	.quad	.LBB8_12
	.quad	.LBB8_31
	.quad	.LBB8_31

	.text
	.align	16, 0x90
	.type	palette_update,@function
palette_update:                         # @palette_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$1, preview_cmap_update
	movq	-8(%rbp), %rdi
	callq	preview_update
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	palette_update, .Lfunc_end9-palette_update
	.cfi_endproc

	.align	16, 0x90
	.type	palette_callback,@function
palette_callback:                       # @palette_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, palfile
	je	.LBB10_2
# BB#1:                                 # %if.then
	movq	palfile, %rdi
	callq	g_free
.LBB10_2:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	gtk_file_chooser_get_filename
	movq	%rax, palfile
	movq	-16(%rbp), %rdi
	callq	palette_update
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	palette_callback, .Lfunc_end10-palette_callback
	.cfi_endproc

	.align	16, 0x90
	.type	mmap_read,@function
mmap_read:                              # @mmap_read
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	xorl	%eax, %eax
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	-4(%rbp), %edi
	movslq	-24(%rbp), %rsi
	movl	%eax, %edx
	callq	lseek
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	movslq	-20(%rbp), %rdx
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	read
	cmpq	$0, %rax
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movl	$255, %esi
	movq	-16(%rbp), %rdi
	movslq	-28(%rbp), %rdx
	callq	memset
.LBB11_2:                               # %if.end
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	mmap_read, .Lfunc_end11-mmap_read
	.cfi_endproc

	.align	16, 0x90
	.type	rgb_565_to_888,@function
rgb_565_to_888:                         # @rgb_565_to_888
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jae	.LBB12_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzwl	(%rdx,%rcx,2), %eax
	sarl	$11, %eax
	andl	$31, %eax
	imull	$33, %eax, %eax
	sarl	$2, %eax
	movb	%al, %sil
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	addl	$1, %edi
	movl	%edi, -28(%rbp)
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzwl	(%rdx,%rcx,2), %eax
	sarl	$5, %eax
	andl	$63, %eax
	imull	$65, %eax, %eax
	sarl	$4, %eax
	movb	%al, %sil
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	addl	$1, %edi
	movl	%edi, -28(%rbp)
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	movl	-24(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movzwl	(%rdx,%rcx,2), %eax
	sarl	$0, %eax
	andl	$31, %eax
	imull	$33, %eax, %eax
	sarl	$2, %eax
	movb	%al, %sil
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	addl	$1, %edi
	movl	%edi, -28(%rbp)
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB12_1
.LBB12_4:                               # %for.end
	popq	%rbp
	retq
.Lfunc_end12:
	.size	rgb_565_to_888, .Lfunc_end12-rgb_565_to_888
	.cfi_endproc

	.align	16, 0x90
	.type	raw_load_standard,@function
raw_load_standard:                      # @raw_load_standard
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	$0, -32(%rbp)
	movq	runtime, %rdi
	movl	4(%rdi), %esi
	movq	runtime, %rdi
	imull	8(%rdi), %esi
	imull	-20(%rbp), %esi
	movslq	%esi, %rdi
	callq	g_try_malloc
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB13_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB13_3
.LBB13_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-32(%rbp), %rsi
	movq	runtime, %rax
	movl	(%rax), %edx
	movq	runtime, %rax
	movl	4(%rax), %ecx
	movq	runtime, %rax
	imull	8(%rax), %ecx
	imull	-20(%rbp), %ecx
	callq	raw_read_row
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rax
	addq	$16, %rax
	movq	-32(%rbp), %rsi
	movq	runtime, %rdi
	movl	4(%rdi), %r8d
	movq	runtime, %rdi
	movl	8(%rdi), %r9d
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gimp_pixel_rgn_set_rect
	movq	-32(%rbp), %rdi
	callq	g_free
	movl	$1, -4(%rbp)
.LBB13_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	raw_load_standard, .Lfunc_end13-raw_load_standard
	.cfi_endproc

	.align	16, 0x90
	.type	raw_load_rgb565,@function
raw_load_rgb565:                        # @raw_load_rgb565
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	runtime, %rdi
	movl	4(%rdi), %eax
	movq	runtime, %rdi
	imull	8(%rdi), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	shll	$1, %eax
	movslq	%eax, %rdi
	callq	g_malloc
	movq	%rax, -24(%rbp)
	imull	$3, -12(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	runtime, %rdx
	movl	(%rdx), %edx
	movl	-12(%rbp), %ecx
	shll	$1, %ecx
	movq	%rax, %rsi
	callq	raw_read_row
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-12(%rbp), %edx
	callq	rgb_565_to_888
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	-32(%rbp), %rsi
	movq	runtime, %rdi
	movl	4(%rdi), %r8d
	movq	runtime, %rdi
	movl	8(%rdi), %r9d
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gimp_pixel_rgn_set_rect
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-32(%rbp), %rdi
	callq	g_free
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	raw_load_rgb565, .Lfunc_end14-raw_load_rgb565
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	raw_load_planar,@function
raw_load_planar:                        # @raw_load_planar
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	$3, -68(%rbp)
	movq	runtime, %rdi
	movslq	4(%rdi), %rdi
	callq	g_malloc
	movq	%rax, -40(%rbp)
	movq	runtime, %rax
	movslq	4(%rax), %rdi
	callq	g_malloc
	movq	%rax, -56(%rbp)
	movq	runtime, %rax
	movslq	4(%rax), %rdi
	callq	g_malloc
	movq	%rax, -48(%rbp)
	movq	runtime, %rax
	movl	4(%rax), %ecx
	imull	-68(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc
	movq	%rax, -64(%rbp)
	movq	runtime, %rax
	movl	(%rax), %ecx
	movl	%ecx, -12(%rbp)
	movl	-12(%rbp), %ecx
	movq	runtime, %rax
	movl	4(%rax), %edx
	movq	runtime, %rax
	imull	8(%rax), %edx
	addl	%edx, %ecx
	movl	%ecx, -16(%rbp)
	movl	-16(%rbp), %ecx
	movq	runtime, %rax
	movl	4(%rax), %edx
	movq	runtime, %rax
	imull	8(%rax), %edx
	addl	%edx, %ecx
	movl	%ecx, -20(%rbp)
	movl	$0, -24(%rbp)
.LBB15_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_3 Depth 2
	movl	-24(%rbp), %eax
	movq	runtime, %rcx
	cmpl	8(%rcx), %eax
	jge	.LBB15_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rsi
	movl	-12(%rbp), %ecx
	movq	runtime, %rax
	movl	4(%rax), %edx
	imull	-24(%rbp), %edx
	addl	%edx, %ecx
	movq	runtime, %rax
	movl	4(%rax), %edx
	movl	%edx, -72(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-72(%rbp), %ecx         # 4-byte Reload
	callq	raw_read_row
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	-56(%rbp), %rsi
	movl	-16(%rbp), %ecx
	movq	runtime, %rax
	movl	4(%rax), %edx
	imull	-24(%rbp), %edx
	addl	%edx, %ecx
	movq	runtime, %rax
	movl	4(%rax), %edx
	movl	%edx, -76(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-76(%rbp), %ecx         # 4-byte Reload
	callq	raw_read_row
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	-48(%rbp), %rsi
	movl	-20(%rbp), %ecx
	movq	runtime, %rax
	movl	4(%rax), %edx
	imull	-24(%rbp), %edx
	addl	%edx, %ecx
	movq	runtime, %rax
	movl	4(%rax), %edx
	movl	%edx, -80(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-80(%rbp), %ecx         # 4-byte Reload
	callq	raw_read_row
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
.LBB15_3:                               # %for.cond.32
                                        #   Parent Loop BB15_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-28(%rbp), %eax
	movq	runtime, %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB15_6
# BB#4:                                 # %for.body.36
                                        #   in Loop: Header=BB15_3 Depth=2
	movslq	-28(%rbp), %rax
	movq	-40(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movl	-32(%rbp), %esi
	movl	%esi, %edi
	addl	$1, %edi
	movl	%edi, -32(%rbp)
	movslq	%esi, %rax
	movq	-64(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
	movslq	-28(%rbp), %rax
	movq	-56(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movl	-32(%rbp), %esi
	movl	%esi, %edi
	addl	$1, %edi
	movl	%edi, -32(%rbp)
	movslq	%esi, %rax
	movq	-64(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
	movslq	-28(%rbp), %rax
	movq	-48(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movl	-32(%rbp), %esi
	movl	%esi, %edi
	addl	$1, %edi
	movl	%edi, -32(%rbp)
	movslq	%esi, %rax
	movq	-64(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB15_3 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB15_3
.LBB15_6:                               # %for.end
                                        #   in Loop: Header=BB15_1 Depth=1
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	-64(%rbp), %rsi
	movl	-24(%rbp), %ecx
	movq	runtime, %rdi
	movl	4(%rdi), %r8d
	movq	%rax, %rdi
	callq	gimp_pixel_rgn_set_row
	cvtsi2ssl	-24(%rbp), %xmm0
	movq	runtime, %rax
	cvtsi2ssl	8(%rax), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	gimp_progress_update
	movl	%eax, -84(%rbp)         # 4-byte Spill
# BB#7:                                 # %for.inc.56
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB15_1
.LBB15_8:                               # %for.end.58
	movsd	.LCPI15_0, %xmm0        # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-64(%rbp), %rdi
	movl	%eax, -88(%rbp)         # 4-byte Spill
	callq	g_free
	movq	-40(%rbp), %rdi
	callq	g_free
	movq	-56(%rbp), %rdi
	callq	g_free
	movq	-48(%rbp), %rdi
	callq	g_free
	movl	$1, %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	raw_load_planar, .Lfunc_end15-raw_load_planar
	.cfi_endproc

	.align	16, 0x90
	.type	raw_load_palette,@function
raw_load_palette:                       # @raw_load_palette
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
	subq	$1120, %rsp             # imm = 0x460
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB16_11
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movq	-24(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	movb	$0, %al
	callq	open
	movl	%eax, -1060(%rbp)
	cmpl	$0, -1060(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then.2
	movl	$0, -4(%rbp)
	jmp	.LBB16_17
.LBB16_3:                               # %if.end
	movl	-1060(%rbp), %edi
	movq	runtime(%rip), %rax
	movslq	16(%rax), %rsi
	xorl	%edx, %edx
	callq	lseek
	movq	runtime(%rip), %rsi
	movl	20(%rsi), %edx
	testl	%edx, %edx
	movq	%rax, -1080(%rbp)       # 8-byte Spill
	movl	%edx, -1084(%rbp)       # 4-byte Spill
	je	.LBB16_4
	jmp	.LBB16_18
.LBB16_18:                              # %if.end
	movl	-1084(%rbp), %eax       # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -1088(%rbp)       # 4-byte Spill
	je	.LBB16_5
	jmp	.LBB16_10
.LBB16_4:                               # %sw.bb
	movl	$768, %eax              # imm = 0x300
	movl	%eax, %edx
	movl	-1060(%rbp), %edi
	movq	-16(%rbp), %rcx
	addq	$68, %rcx
	movq	%rcx, %rsi
	callq	read
	movq	%rax, -1096(%rbp)       # 8-byte Spill
	jmp	.LBB16_10
.LBB16_5:                               # %sw.bb.5
	movl	$1024, %eax             # imm = 0x400
	movl	%eax, %edx
	leaq	-1056(%rbp), %rsi
	movl	-1060(%rbp), %edi
	callq	read
	movl	$0, -1064(%rbp)
	movl	$0, -1068(%rbp)
	movq	%rax, -1104(%rbp)       # 8-byte Spill
.LBB16_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -1064(%rbp)       # imm = 0x100
	jge	.LBB16_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB16_6 Depth=1
	movl	-1064(%rbp), %eax
	shll	$2, %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movb	-1056(%rbp,%rcx), %dl
	movl	-1068(%rbp), %eax
	movl	%eax, %esi
	addl	$1, %esi
	movl	%esi, -1068(%rbp)
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdi
	movb	%dl, 68(%rdi,%rcx)
	movl	-1064(%rbp), %eax
	shll	$2, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movb	-1056(%rbp,%rcx), %dl
	movl	-1068(%rbp), %eax
	movl	%eax, %esi
	addl	$1, %esi
	movl	%esi, -1068(%rbp)
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdi
	movb	%dl, 68(%rdi,%rcx)
	movl	-1064(%rbp), %eax
	shll	$2, %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movb	-1056(%rbp,%rcx), %dl
	movl	-1068(%rbp), %eax
	movl	%eax, %esi
	addl	$1, %esi
	movl	%esi, -1068(%rbp)
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdi
	movb	%dl, 68(%rdi,%rcx)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB16_6 Depth=1
	movl	-1064(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1064(%rbp)
	jmp	.LBB16_6
.LBB16_9:                               # %for.end
	jmp	.LBB16_10
.LBB16_10:                              # %sw.epilog
	movl	-1060(%rbp), %edi
	callq	close
	movl	%eax, -1108(%rbp)       # 4-byte Spill
	jmp	.LBB16_16
.LBB16_11:                              # %if.else
	movl	$0, -1064(%rbp)
	movl	$0, -1068(%rbp)
.LBB16_12:                              # %for.cond.30
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -1064(%rbp)       # imm = 0x100
	jge	.LBB16_15
# BB#13:                                # %for.body.33
                                        #   in Loop: Header=BB16_12 Depth=1
	movl	-1064(%rbp), %eax
	movb	%al, %cl
	movl	-1068(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -1068(%rbp)
	movslq	%eax, %rsi
	movq	-16(%rbp), %rdi
	movb	%cl, 68(%rdi,%rsi)
	movl	-1064(%rbp), %eax
	movb	%al, %cl
	movl	-1068(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -1068(%rbp)
	movslq	%eax, %rsi
	movq	-16(%rbp), %rdi
	movb	%cl, 68(%rdi,%rsi)
	movl	-1064(%rbp), %eax
	movb	%al, %cl
	movl	-1068(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -1068(%rbp)
	movslq	%eax, %rsi
	movq	-16(%rbp), %rdi
	movb	%cl, 68(%rdi,%rsi)
# BB#14:                                # %for.inc.49
                                        #   in Loop: Header=BB16_12 Depth=1
	movl	-1064(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1064(%rbp)
	jmp	.LBB16_12
.LBB16_15:                              # %for.end.51
	jmp	.LBB16_16
.LBB16_16:                              # %if.end.52
	movl	$256, %edx              # imm = 0x100
	movq	-16(%rbp), %rax
	movl	64(%rax), %edi
	movq	-16(%rbp), %rax
	addq	$68, %rax
	movq	%rax, %rsi
	callq	gimp_image_set_colormap
	movl	$1, -4(%rbp)
	movl	%eax, -1112(%rbp)       # 4-byte Spill
.LBB16_17:                              # %return
	movl	-4(%rbp), %eax
	addq	$1120, %rsp             # imm = 0x460
	popq	%rbp
	retq
.Lfunc_end16:
	.size	raw_load_palette, .Lfunc_end16-raw_load_palette
	.cfi_endproc

	.align	16, 0x90
	.type	raw_read_row,@function
raw_read_row:                           # @raw_read_row
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
	subq	$32, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movslq	-20(%rbp), %rsi
	movl	%eax, %edx
	callq	fseek
	movl	$1, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rdi
	movslq	-24(%rbp), %rsi
	movq	-8(%rbp), %rcx
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	fread
	cmpq	$0, %rax
	jne	.LBB17_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.57, %rdi
	movb	$0, %al
	callq	g_printerr
	movl	$255, %esi
	movq	-16(%rbp), %rdi
	movslq	-24(%rbp), %rdx
	callq	memset
.LBB17_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	raw_read_row, .Lfunc_end17-raw_read_row
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
	.asciz	"The run mode { RUN-INTERACTIVE (0) }"
	.size	.L.str.1, 37

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
	.quad	.L.str.8
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.9
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.10
	.quad	.L.str.11
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.12
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.5
	.size	query.save_args, 120

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }"
	.size	.L.str.8, 61

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Input image"
	.size	.L.str.9, 12

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"drawable"
	.size	.L.str.10, 9

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Drawable to save"
	.size	.L.str.11, 17

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"The name of the file to save the image in"
	.size	.L.str.12, 42

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"file-raw-load"
	.size	.L.str.13, 14

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Load raw images, specifying image information"
	.size	.L.str.14, 46

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"timecop, pg@futureware.at"
	.size	.L.str.15, 26

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Aug 2004"
	.size	.L.str.16, 9

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Raw image data"
	.size	.L.str.17, 15

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"data"
	.size	.L.str.18, 5

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.zero	1
	.size	.L.str.19, 1

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"file-raw-save"
	.size	.L.str.20, 14

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Dump images to disk in raw format"
	.size	.L.str.21, 34

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"INDEXED, GRAY, RGB, RGBA"
	.size	.L.str.22, 25

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,80,16
	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.23, 20

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"UTF-8"
	.size	.L.str.24, 6

	.type	runtime,@object         # @runtime
	.local	runtime
	.comm	runtime,8,8
	.type	preview_fd,@object      # @preview_fd
	.data
	.align	4
preview_fd:
	.long	4294967295              # 0xffffffff
	.size	preview_fd, 4

	.type	.L.str.25,@object       # @.str.25
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.25:
	.asciz	"Could not open '%s' for reading: %s"
	.size	.L.str.25, 36

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"file-raw"
	.size	.L.str.26, 9

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Load Image from Raw Data"
	.size	.L.str.27, 25

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gimp-file-raw"
	.size	.L.str.28, 14

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gtk-cancel"
	.size	.L.str.29, 11

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"gtk-open"
	.size	.L.str.30, 9

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"size-allocate"
	.size	.L.str.31, 14

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Image"
	.size	.L.str.32, 6

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"RGB"
	.size	.L.str.33, 4

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"RGB Alpha"
	.size	.L.str.34, 10

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"RGB565"
	.size	.L.str.35, 7

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Planar RGB"
	.size	.L.str.36, 11

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Indexed"
	.size	.L.str.37, 8

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Indexed Alpha"
	.size	.L.str.38, 14

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Image _Type:"
	.size	.L.str.39, 13

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"changed"
	.size	.L.str.40, 8

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"O_ffset:"
	.size	.L.str.41, 9

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"value-changed"
	.size	.L.str.42, 14

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"_Width:"
	.size	.L.str.43, 8

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"_Height:"
	.size	.L.str.44, 9

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Palette"
	.size	.L.str.45, 8

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"R, G, B (normal)"
	.size	.L.str.46, 17

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"B, G, R, X (BMP style)"
	.size	.L.str.47, 23

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"_Palette Type:"
	.size	.L.str.48, 15

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Off_set:"
	.size	.L.str.49, 9

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Select Palette File"
	.size	.L.str.50, 20

	.type	palfile,@object         # @palfile
	.local	palfile
	.comm	palfile,8,8
	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Pal_ette File:"
	.size	.L.str.51, 15

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"selection-changed"
	.size	.L.str.52, 18

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"standard::size"
	.size	.L.str.53, 15

	.type	preview_cmap_update,@object # @preview_cmap_update
	.data
	.align	4
preview_cmap_update:
	.long	1                       # 0x1
	.size	preview_cmap_update, 4

	.type	preview_cmap,@object    # @preview_cmap
	.local	preview_cmap
	.comm	preview_cmap,1024,16
	.type	.L.str.54,@object       # @.str.54
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.54:
	.asciz	"rb"
	.size	.L.str.54, 3

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Opening '%s'"
	.size	.L.str.55, 13

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Background"
	.size	.L.str.56, 11

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"fread failed\n"
	.size	.L.str.57, 14

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Raw Image"
	.size	.L.str.58, 10

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"RGB Save Type"
	.size	.L.str.59, 14

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Standard (R,G,B)"
	.size	.L.str.60, 17

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"Planar (RRR,GGG,BBB)"
	.size	.L.str.61, 21

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Indexed Palette Type"
	.size	.L.str.62, 21

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"wb"
	.size	.L.str.63, 3

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"Could not open '%s' for writing: %s"
	.size	.L.str.64, 36

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	".pal"
	.size	.L.str.65, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
