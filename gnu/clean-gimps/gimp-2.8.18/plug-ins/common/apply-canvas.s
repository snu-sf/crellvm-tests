	.text
	.file	"apply-canvas.bc"
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
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.12, %rdx
	movabsq	$.L.str.13, %rax
	movabsq	$.L.str.14, %r9
	movabsq	$.L.str.15, %rcx
	movabsq	$.L.str.16, %r8
	movl	$1, %r10d
	movl	$5, %r11d
	xorl	%ebx, %ebx
	movabsq	$query.args, %r14
	xorl	%r15d, %r15d
	movl	%r15d, %r12d
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	%r8, -56(%rbp)          # 8-byte Spill
	movq	%rax, %r8
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-56(%rbp), %r13         # 8-byte Reload
	movq	%r13, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$5, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.17, %rsi
	callq	gimp_plugin_menu_register
	movl	%eax, -80(%rbp)         # 4-byte Spill
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
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -52(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.18, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.18, %rdi
	movabsq	$.L.str.19, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.18, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -80(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movq	-40(%rbp), %rax
	movq	$run.values, (%rax)
	movl	$21, run.values(%rip)
	movl	-56(%rbp), %ecx
	movl	%ecx, run.values+8(%rip)
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -48(%rbp)
	movl	-52(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_30
.LBB1_30:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_31
.LBB1_31:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB1_16
	jmp	.LBB1_17
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.10, %rdi
	movabsq	$svals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-48(%rbp), %rdi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	struc_dialog
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
	jmp	.LBB1_29
.LBB1_5:                                # %if.end
	jmp	.LBB1_18
.LBB1_6:                                # %sw.bb.9
	cmpl	$5, -12(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then.10
	movl	$1, -56(%rbp)
	jmp	.LBB1_15
.LBB1_8:                                # %if.else
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, svals
	movq	-24(%rbp), %rax
	movl	168(%rax), %ecx
	movl	%ecx, svals+4
	cmpl	$0, svals
	jl	.LBB1_10
# BB#9:                                 # %lor.lhs.false
	cmpl	$4, svals
	jle	.LBB1_11
.LBB1_10:                               # %if.then.19
	movl	$1, -56(%rbp)
.LBB1_11:                               # %if.end.20
	cmpl	$1, svals+4
	jl	.LBB1_13
# BB#12:                                # %lor.lhs.false.22
	cmpl	$50, svals+4
	jle	.LBB1_14
.LBB1_13:                               # %if.then.24
	movl	$1, -56(%rbp)
.LBB1_14:                               # %if.end.25
	jmp	.LBB1_15
.LBB1_15:                               # %if.end.26
	jmp	.LBB1_18
.LBB1_16:                               # %sw.bb.27
	movabsq	$.L.str.10, %rdi
	movabsq	$svals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB1_18
.LBB1_17:                               # %sw.default
	jmp	.LBB1_18
.LBB1_18:                               # %sw.epilog
	cmpl	$3, -56(%rbp)
	jne	.LBB1_28
# BB#19:                                # %if.then.30
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_21
# BB#20:                                # %lor.lhs.false.33
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB1_26
.LBB1_21:                               # %if.then.37
	movabsq	$.L.str.20, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movq	-48(%rbp), %rdi
	movl	4(%rdi), %ecx
	movl	%eax, -104(%rbp)        # 4-byte Spill
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	movl	-108(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -112(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-112(%rbp), %esi        # 4-byte Reload
	divl	%esi
	addl	$1, %eax
	shll	$1, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	strucpi
	cmpl	$1, -52(%rbp)
	je	.LBB1_23
# BB#22:                                # %if.then.43
	callq	gimp_displays_flush
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB1_23:                               # %if.end.45
	cmpl	$0, -52(%rbp)
	jne	.LBB1_25
# BB#24:                                # %if.then.48
	movabsq	$.L.str.10, %rdi
	movabsq	$svals, %rax
	movl	$8, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB1_25:                               # %if.end.50
	jmp	.LBB1_27
.LBB1_26:                               # %if.else.51
	movl	$0, -56(%rbp)
.LBB1_27:                               # %if.end.52
	jmp	.LBB1_28
.LBB1_28:                               # %if.end.53
	movl	-56(%rbp), %eax
	movl	%eax, run.values+8
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB1_29:                               # %return
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
.LCPI3_1:
	.quad	4632233691727265792     # double 50
.LCPI3_2:
	.quad	4617315517961601024     # double 5
	.text
	.align	16, 0x90
	.type	struc_dialog,@function
struc_dialog:                           # @struc_dialog
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
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$520, %rsp              # imm = 0x208
.Ltmp17:
	.cfi_offset %rbx, -56
.Ltmp18:
	.cfi_offset %r12, -48
.Ltmp19:
	.cfi_offset %r13, -40
.Ltmp20:
	.cfi_offset %r14, -32
.Ltmp21:
	.cfi_offset %r15, -24
	movabsq	$.L.str.21, %rax
	xorl	%esi, %esi
	movq	%rdi, -48(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	movabsq	$.L.str.22, %rdi
	callq	gettext
	movabsq	$.L.str.23, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.10, %r9
	movabsq	$.L.str.24, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.25, %r11
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -148(%rbp)        # 4-byte Spill
	movl	%r10d, -152(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-56(%rbp), %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-56(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_preview_new
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.26, %rsi
	movabsq	$strucpi, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.27, %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.28, %rdi
	movl	svals, %r8d
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movl	%r8d, -220(%rbp)        # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.29, %rdi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.30, %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.31, %rdi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	movabsq	$gimp_radio_button_update, %rcx
	movabsq	$svals, %rdx
	xorl	%r8d, %r8d
	leaq	-96(%rbp), %rsi
	leaq	-104(%rbp), %r11
	movl	$2, %r9d
	leaq	-112(%rbp), %r14
	movl	$3, %r10d
	leaq	-120(%rbp), %r15
	xorl	%ebx, %ebx
	movl	%ebx, %r12d
	movq	-216(%rbp), %r13        # 8-byte Reload
	movq	%rsi, -256(%rbp)        # 8-byte Spill
	movq	%r13, %rsi
	movq	%rdx, -264(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-264(%rbp), %rcx        # 8-byte Reload
	movl	-220(%rbp), %ebx        # 4-byte Reload
	movl	%r8d, -268(%rbp)        # 4-byte Spill
	movl	%ebx, %r8d
	movq	-232(%rbp), %r13        # 8-byte Reload
	movl	%r9d, -272(%rbp)        # 4-byte Spill
	movq	%r13, %r9
	movl	$0, (%rsp)
	movq	-256(%rbp), %r13        # 8-byte Reload
	movq	%r13, 8(%rsp)
	movq	-240(%rbp), %r13        # 8-byte Reload
	movq	%r13, 16(%rsp)
	movl	$1, 24(%rsp)
	movq	%r11, 32(%rsp)
	movq	-248(%rbp), %r11        # 8-byte Reload
	movq	%r11, 40(%rsp)
	movl	$2, 48(%rsp)
	movq	%r14, 56(%rsp)
	movq	%rax, 64(%rsp)
	movl	$3, 72(%rsp)
	movq	%r15, 80(%rsp)
	movq	$0, 88(%rsp)
	movb	$0, %al
	movq	%r12, -280(%rbp)        # 8-byte Spill
	movl	%r10d, -284(%rbp)       # 4-byte Spill
	callq	gimp_int_radio_group_new
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.32, %rsi
	movabsq	$gimp_preview_invalidate, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-96(%rbp), %rdi
	movq	-72(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.32, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-104(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-304(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.32, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-320(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.32, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-120(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-336(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movl	$1, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_table_new
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-64(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -372(%rbp)        # 4-byte Spill
	movl	-372(%rbp), %ecx        # 4-byte Reload
	movl	-372(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movq	-88(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.33, %rdi
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$100, %r8d
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %edx
	xorps	%xmm1, %xmm1
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	cvtsi2sdl	svals+4, %xmm3
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -400(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -404(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	%ecx, -408(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-408(%rbp), %r9d        # 4-byte Reload
	movsd	%xmm0, -416(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-416(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -424(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-424(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-424(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.34, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$svals, %rdi
	addq	$4, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rdi, -432(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-432(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.34, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-128(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-440(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rdi
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %r9d
	movl	%r9d, -132(%rbp)
	movq	-56(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-132(%rbp), %eax
	addq	$520, %rsp              # imm = 0x208
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	struc_dialog, .Lfunc_end3-struc_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4598175219545276416     # double 0.25
.LCPI4_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	strucpi,@function
strucpi:                                # @strucpi
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
	.cfi_def_cfa_register %rbp
	subq	$320, %rsp              # imm = 0x140
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -208(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	leaq	-172(%rbp), %rsi
	leaq	-176(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_preview_get_position
	leaq	-116(%rbp), %rsi
	leaq	-120(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_preview_get_size
	movl	-176(%rbp), %eax
	addl	-120(%rbp), %eax
	movl	%eax, -180(%rbp)
	jmp	.LBB4_5
.LBB4_2:                                # %if.else
	leaq	-172(%rbp), %rsi
	leaq	-176(%rbp), %rdx
	leaq	-116(%rbp), %rcx
	leaq	-120(%rbp), %r8
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	jne	.LBB4_4
# BB#3:                                 # %if.then.2
	jmp	.LBB4_72
.LBB4_4:                                # %if.end
	movl	-176(%rbp), %eax
	addl	-120(%rbp), %eax
	movl	%eax, -180(%rbp)
.LBB4_5:                                # %if.end.4
	movl	$1, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movl	12(%rcx), %eax
	movl	%eax, -124(%rbp)
	movl	-116(%rbp), %eax
	imull	-124(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movl	$1, %edx
	movl	%edx, %esi
	movq	%rax, -152(%rbp)
	movl	-116(%rbp), %edx
	imull	-124(%rbp), %edx
	movslq	%edx, %rdi
	callq	g_malloc_n
	leaq	-64(%rbp), %rdi
	xorl	%edx, %edx
	movq	%rax, -136(%rbp)
	movq	-8(%rbp), %rsi
	movl	-172(%rbp), %r8d
	movl	-176(%rbp), %ecx
	movl	-116(%rbp), %r9d
	movl	-120(%rbp), %r10d
	movl	%edx, -212(%rbp)        # 4-byte Spill
	movl	%r8d, %edx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	cmpq	$0, -16(%rbp)
	je	.LBB4_7
# BB#6:                                 # %if.then.10
	movl	$1, %eax
	movl	%eax, %esi
	movl	-116(%rbp), %eax
	imull	-120(%rbp), %eax
	imull	-124(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -208(%rbp)
	jmp	.LBB4_8
.LBB4_7:                                # %if.else.15
	leaq	-112(%rbp), %rdi
	movl	$1, %eax
	movq	-8(%rbp), %rsi
	movl	-172(%rbp), %edx
	movl	-176(%rbp), %ecx
	movl	-116(%rbp), %r8d
	movl	-120(%rbp), %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -216(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
.LBB4_8:                                # %if.end.16
	cvtsi2ssl	svals+4(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI4_0(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -200(%rbp)
	movl	svals(%rip), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$3, %rdx
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	movq	%rdx, -232(%rbp)        # 8-byte Spill
	ja	.LBB4_13
# BB#73:                                # %if.end.16
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	.LJTI4_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB4_9:                                # %sw.bb
	movl	$1, -188(%rbp)
	movl	$128, -192(%rbp)
	movl	$0, -196(%rbp)
	jmp	.LBB4_14
.LBB4_10:                               # %sw.bb.21
	movl	$-1, -188(%rbp)
	movl	$128, -192(%rbp)
	movl	$127, -196(%rbp)
	jmp	.LBB4_14
.LBB4_11:                               # %sw.bb.22
	movl	$128, -188(%rbp)
	movl	$1, -192(%rbp)
	movl	$0, -196(%rbp)
	jmp	.LBB4_14
.LBB4_12:                               # %sw.bb.23
	movl	$128, -188(%rbp)
	movl	$-1, -192(%rbp)
	movl	$127, -196(%rbp)
	jmp	.LBB4_14
.LBB4_13:                               # %sw.default
	movl	$1, -188(%rbp)
	movl	$128, -192(%rbp)
	movl	$0, -196(%rbp)
.LBB4_14:                               # %sw.epilog
	movl	$0, -164(%rbp)
	movl	-176(%rbp), %eax
	movl	%eax, -156(%rbp)
.LBB4_15:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_33 Depth 2
                                        #     Child Loop BB4_18 Depth 2
	movl	-156(%rbp), %eax
	cmpl	-180(%rbp), %eax
	jge	.LBB4_68
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB4_15 Depth=1
	movq	-152(%rbp), %rsi
	movl	-172(%rbp), %edx
	movl	-156(%rbp), %ecx
	movl	-116(%rbp), %r8d
	leaq	-64(%rbp), %rdi
	callq	gimp_pixel_rgn_get_row
	movq	-136(%rbp), %rsi
	movq	%rsi, -144(%rbp)
	movl	$0, -168(%rbp)
	movl	-124(%rbp), %ecx
	movl	%ecx, %edx
	decl	%edx
	subl	$2, %edx
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	movl	%edx, -240(%rbp)        # 4-byte Spill
	jb	.LBB4_17
	jmp	.LBB4_74
.LBB4_74:                               # %for.body
                                        #   in Loop: Header=BB4_15 Depth=1
	movl	-236(%rbp), %eax        # 4-byte Reload
	addl	$-3, %eax
	subl	$2, %eax
	movl	%eax, -244(%rbp)        # 4-byte Spill
	jb	.LBB4_32
	jmp	.LBB4_59
.LBB4_17:                               # %sw.bb.25
                                        #   in Loop: Header=BB4_15 Depth=1
	movl	$0, -160(%rbp)
.LBB4_18:                               # %for.cond.26
                                        #   Parent Loop BB4_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-160(%rbp), %eax
	movl	-116(%rbp), %ecx
	imull	-124(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_31
# BB#19:                                # %for.body.30
                                        #   in Loop: Header=BB4_18 Depth=2
	movslq	-160(%rbp), %rax
	movq	-152(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2ssl	%edx, %xmm0
	movss	-200(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movl	-168(%rbp), %edx
	imull	-188(%rbp), %edx
	movl	-164(%rbp), %esi
	imull	-192(%rbp), %esi
	addl	%esi, %edx
	addl	-196(%rbp), %edx
	movslq	%edx, %rax
	movsbl	sdata(,%rax), %edx
	cvtsi2ssl	%edx, %xmm2
	mulss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %edx
	movl	%edx, -184(%rbp)
	cmpl	$255, -184(%rbp)
	jle	.LBB4_21
# BB#20:                                # %cond.true
                                        #   in Loop: Header=BB4_18 Depth=2
	movl	$255, %eax
	movl	%eax, -248(%rbp)        # 4-byte Spill
	jmp	.LBB4_25
.LBB4_21:                               # %cond.false
                                        #   in Loop: Header=BB4_18 Depth=2
	cmpl	$0, -184(%rbp)
	jge	.LBB4_23
# BB#22:                                # %cond.true.48
                                        #   in Loop: Header=BB4_18 Depth=2
	xorl	%eax, %eax
	movl	%eax, -252(%rbp)        # 4-byte Spill
	jmp	.LBB4_24
.LBB4_23:                               # %cond.false.49
                                        #   in Loop: Header=BB4_18 Depth=2
	movl	-184(%rbp), %eax
	movl	%eax, -252(%rbp)        # 4-byte Spill
.LBB4_24:                               # %cond.end
                                        #   in Loop: Header=BB4_18 Depth=2
	movl	-252(%rbp), %eax        # 4-byte Reload
	movl	%eax, -248(%rbp)        # 4-byte Spill
.LBB4_25:                               # %cond.end.50
                                        #   in Loop: Header=BB4_18 Depth=2
	movl	-248(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movq	-144(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -144(%rbp)
	movb	%cl, (%rdx)
	cmpl	$2, -124(%rbp)
	jne	.LBB4_27
# BB#26:                                # %if.then.55
                                        #   in Loop: Header=BB4_18 Depth=2
	movl	-160(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-152(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movq	-144(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -144(%rbp)
	movb	%sil, (%rcx)
.LBB4_27:                               # %if.end.60
                                        #   in Loop: Header=BB4_18 Depth=2
	movl	-168(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -168(%rbp)
	cmpl	$128, -168(%rbp)
	jne	.LBB4_29
# BB#28:                                # %if.then.63
                                        #   in Loop: Header=BB4_18 Depth=2
	movl	$0, -168(%rbp)
.LBB4_29:                               # %if.end.64
                                        #   in Loop: Header=BB4_18 Depth=2
	jmp	.LBB4_30
.LBB4_30:                               # %for.inc
                                        #   in Loop: Header=BB4_18 Depth=2
	movl	-124(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -160(%rbp)
	jmp	.LBB4_18
.LBB4_31:                               # %for.end
                                        #   in Loop: Header=BB4_15 Depth=1
	jmp	.LBB4_59
.LBB4_32:                               # %sw.bb.66
                                        #   in Loop: Header=BB4_15 Depth=1
	movl	$0, -160(%rbp)
.LBB4_33:                               # %for.cond.67
                                        #   Parent Loop BB4_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-160(%rbp), %eax
	movl	-116(%rbp), %ecx
	imull	-124(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB4_58
# BB#34:                                # %for.body.71
                                        #   in Loop: Header=BB4_33 Depth=2
	movl	-160(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-152(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2ssl	%eax, %xmm0
	movss	-200(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movl	-168(%rbp), %eax
	imull	-188(%rbp), %eax
	movl	-164(%rbp), %esi
	imull	-192(%rbp), %esi
	addl	%esi, %eax
	addl	-196(%rbp), %eax
	movslq	%eax, %rcx
	movsbl	sdata(,%rcx), %eax
	cvtsi2ssl	%eax, %xmm2
	mulss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -184(%rbp)
	cmpl	$255, -184(%rbp)
	jle	.LBB4_36
# BB#35:                                # %cond.true.90
                                        #   in Loop: Header=BB4_33 Depth=2
	movl	$255, %eax
	movl	%eax, -256(%rbp)        # 4-byte Spill
	jmp	.LBB4_40
.LBB4_36:                               # %cond.false.91
                                        #   in Loop: Header=BB4_33 Depth=2
	cmpl	$0, -184(%rbp)
	jge	.LBB4_38
# BB#37:                                # %cond.true.94
                                        #   in Loop: Header=BB4_33 Depth=2
	xorl	%eax, %eax
	movl	%eax, -260(%rbp)        # 4-byte Spill
	jmp	.LBB4_39
.LBB4_38:                               # %cond.false.95
                                        #   in Loop: Header=BB4_33 Depth=2
	movl	-184(%rbp), %eax
	movl	%eax, -260(%rbp)        # 4-byte Spill
.LBB4_39:                               # %cond.end.96
                                        #   in Loop: Header=BB4_33 Depth=2
	movl	-260(%rbp), %eax        # 4-byte Reload
	movl	%eax, -256(%rbp)        # 4-byte Spill
.LBB4_40:                               # %cond.end.98
                                        #   in Loop: Header=BB4_33 Depth=2
	movl	-256(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movq	-144(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -144(%rbp)
	movb	%cl, (%rdx)
	movl	-160(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-152(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2ssl	%eax, %xmm0
	movss	-200(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movl	-168(%rbp), %eax
	imull	-188(%rbp), %eax
	movl	-164(%rbp), %edi
	imull	-192(%rbp), %edi
	addl	%edi, %eax
	addl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movsbl	sdata(,%rdx), %eax
	cvtsi2ssl	%eax, %xmm2
	mulss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -184(%rbp)
	cmpl	$255, -184(%rbp)
	jle	.LBB4_42
# BB#41:                                # %cond.true.120
                                        #   in Loop: Header=BB4_33 Depth=2
	movl	$255, %eax
	movl	%eax, -264(%rbp)        # 4-byte Spill
	jmp	.LBB4_46
.LBB4_42:                               # %cond.false.121
                                        #   in Loop: Header=BB4_33 Depth=2
	cmpl	$0, -184(%rbp)
	jge	.LBB4_44
# BB#43:                                # %cond.true.124
                                        #   in Loop: Header=BB4_33 Depth=2
	xorl	%eax, %eax
	movl	%eax, -268(%rbp)        # 4-byte Spill
	jmp	.LBB4_45
.LBB4_44:                               # %cond.false.125
                                        #   in Loop: Header=BB4_33 Depth=2
	movl	-184(%rbp), %eax
	movl	%eax, -268(%rbp)        # 4-byte Spill
.LBB4_45:                               # %cond.end.126
                                        #   in Loop: Header=BB4_33 Depth=2
	movl	-268(%rbp), %eax        # 4-byte Reload
	movl	%eax, -264(%rbp)        # 4-byte Spill
.LBB4_46:                               # %cond.end.128
                                        #   in Loop: Header=BB4_33 Depth=2
	movl	-264(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movq	-144(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -144(%rbp)
	movb	%cl, (%rdx)
	movl	-160(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-152(%rbp), %rsi
	movzbl	(%rsi,%rdx), %eax
	cvtsi2ssl	%eax, %xmm0
	movss	-200(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movl	-168(%rbp), %eax
	imull	-188(%rbp), %eax
	movl	-164(%rbp), %edi
	imull	-192(%rbp), %edi
	addl	%edi, %eax
	addl	-196(%rbp), %eax
	movslq	%eax, %rdx
	movsbl	sdata(,%rdx), %eax
	cvtsi2ssl	%eax, %xmm2
	mulss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -184(%rbp)
	cmpl	$255, -184(%rbp)
	jle	.LBB4_48
# BB#47:                                # %cond.true.150
                                        #   in Loop: Header=BB4_33 Depth=2
	movl	$255, %eax
	movl	%eax, -272(%rbp)        # 4-byte Spill
	jmp	.LBB4_52
.LBB4_48:                               # %cond.false.151
                                        #   in Loop: Header=BB4_33 Depth=2
	cmpl	$0, -184(%rbp)
	jge	.LBB4_50
# BB#49:                                # %cond.true.154
                                        #   in Loop: Header=BB4_33 Depth=2
	xorl	%eax, %eax
	movl	%eax, -276(%rbp)        # 4-byte Spill
	jmp	.LBB4_51
.LBB4_50:                               # %cond.false.155
                                        #   in Loop: Header=BB4_33 Depth=2
	movl	-184(%rbp), %eax
	movl	%eax, -276(%rbp)        # 4-byte Spill
.LBB4_51:                               # %cond.end.156
                                        #   in Loop: Header=BB4_33 Depth=2
	movl	-276(%rbp), %eax        # 4-byte Reload
	movl	%eax, -272(%rbp)        # 4-byte Spill
.LBB4_52:                               # %cond.end.158
                                        #   in Loop: Header=BB4_33 Depth=2
	movl	-272(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movq	-144(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -144(%rbp)
	movb	%cl, (%rdx)
	cmpl	$4, -124(%rbp)
	jne	.LBB4_54
# BB#53:                                # %if.then.164
                                        #   in Loop: Header=BB4_33 Depth=2
	movl	-160(%rbp), %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	movq	-152(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movq	-144(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -144(%rbp)
	movb	%sil, (%rcx)
.LBB4_54:                               # %if.end.169
                                        #   in Loop: Header=BB4_33 Depth=2
	movl	-168(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -168(%rbp)
	cmpl	$128, -168(%rbp)
	jne	.LBB4_56
# BB#55:                                # %if.then.173
                                        #   in Loop: Header=BB4_33 Depth=2
	movl	$0, -168(%rbp)
.LBB4_56:                               # %if.end.174
                                        #   in Loop: Header=BB4_33 Depth=2
	jmp	.LBB4_57
.LBB4_57:                               # %for.inc.175
                                        #   in Loop: Header=BB4_33 Depth=2
	movl	-124(%rbp), %eax
	addl	-160(%rbp), %eax
	movl	%eax, -160(%rbp)
	jmp	.LBB4_33
.LBB4_58:                               # %for.end.177
                                        #   in Loop: Header=BB4_15 Depth=1
	jmp	.LBB4_59
.LBB4_59:                               # %sw.epilog.178
                                        #   in Loop: Header=BB4_15 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB4_61
# BB#60:                                # %if.then.180
                                        #   in Loop: Header=BB4_15 Depth=1
	movq	-208(%rbp), %rax
	movl	-156(%rbp), %ecx
	subl	-176(%rbp), %ecx
	imull	-116(%rbp), %ecx
	imull	-124(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	-136(%rbp), %rsi
	movl	-116(%rbp), %ecx
	imull	-124(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	%rax, %rdi
	callq	memcpy
	jmp	.LBB4_64
.LBB4_61:                               # %if.else.185
                                        #   in Loop: Header=BB4_15 Depth=1
	leaq	-112(%rbp), %rdi
	movq	-136(%rbp), %rsi
	movl	-172(%rbp), %edx
	movl	-156(%rbp), %ecx
	movl	-116(%rbp), %r8d
	callq	gimp_pixel_rgn_set_row
	movl	$5, %ecx
	movl	-156(%rbp), %eax
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB4_63
# BB#62:                                # %if.then.188
                                        #   in Loop: Header=BB4_15 Depth=1
	cvtsi2sdl	-156(%rbp), %xmm0
	cvtsi2sdl	-120(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -280(%rbp)        # 4-byte Spill
.LBB4_63:                               # %if.end.192
                                        #   in Loop: Header=BB4_15 Depth=1
	jmp	.LBB4_64
.LBB4_64:                               # %if.end.193
                                        #   in Loop: Header=BB4_15 Depth=1
	movl	-164(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -164(%rbp)
	cmpl	$128, -164(%rbp)
	jne	.LBB4_66
# BB#65:                                # %if.then.197
                                        #   in Loop: Header=BB4_15 Depth=1
	movl	$0, -164(%rbp)
.LBB4_66:                               # %if.end.198
                                        #   in Loop: Header=BB4_15 Depth=1
	jmp	.LBB4_67
.LBB4_67:                               # %for.inc.199
                                        #   in Loop: Header=BB4_15 Depth=1
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	jmp	.LBB4_15
.LBB4_68:                               # %for.end.201
	cmpq	$0, -16(%rbp)
	je	.LBB4_70
# BB#69:                                # %if.then.203
	movq	-16(%rbp), %rdi
	movq	-208(%rbp), %rsi
	movl	-116(%rbp), %eax
	imull	-124(%rbp), %eax
	movl	%eax, %edx
	callq	gimp_preview_draw_buffer
	movq	-208(%rbp), %rdi
	callq	g_free
	jmp	.LBB4_71
.LBB4_70:                               # %if.else.205
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-8(%rbp), %rdi
	movl	%eax, -284(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-172(%rbp), %esi
	movl	-176(%rbp), %edx
	movl	-116(%rbp), %ecx
	movl	-120(%rbp), %r8d
	movl	%eax, -288(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -292(%rbp)        # 4-byte Spill
.LBB4_71:                               # %if.end.211
	movq	-152(%rbp), %rdi
	callq	g_free
	movq	-136(%rbp), %rdi
	callq	g_free
.LBB4_72:                               # %return
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end4:
	.size	strucpi, .Lfunc_end4-strucpi
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI4_0:
	.quad	.LBB4_9
	.quad	.LBB4_10
	.quad	.LBB4_11
	.quad	.LBB4_12

	.type	PLUG_IN_INFO,@object    # @PLUG_IN_INFO
	.globl	PLUG_IN_INFO
	.align	8
PLUG_IN_INFO:
	.quad	0
	.quad	0
	.quad	query
	.quad	run
	.size	PLUG_IN_INFO, 32

	.type	query.args,@object      # @query.args
	.align	16
query.args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.3
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.5
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.9
	.size	query.args, 120

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
	.asciz	"image"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Input image (unused)"
	.size	.L.str.3, 21

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"drawable"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Input drawable"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"direction"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Light direction (0 - 3)"
	.size	.L.str.7, 24

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"depth"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Texture depth (1 - 50)"
	.size	.L.str.9, 23

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"plug-in-apply-canvas"
	.size	.L.str.10, 21

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Add a canvas texture to the image"
	.size	.L.str.11, 34

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"This function applies a canvas texture map to the drawable."
	.size	.L.str.12, 60

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Karl-Johan Andersson"
	.size	.L.str.13, 21

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"1997"
	.size	.L.str.14, 5

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"_Apply Canvas..."
	.size	.L.str.15, 17

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.16, 12

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"<Image>/Filters/Artistic"
	.size	.L.str.17, 25

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.18, 20

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"UTF-8"
	.size	.L.str.19, 6

	.type	svals,@object           # @svals
	.data
	.align	4
svals:
	.long	0                       # 0x0
	.long	4                       # 0x4
	.size	svals, 8

	.type	.L.str.20,@object       # @.str.20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"Applying canvas"
	.size	.L.str.20, 16

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"apply-canvas"
	.size	.L.str.21, 13

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Apply Canvas"
	.size	.L.str.22, 13

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gimp-apply-canvas"
	.size	.L.str.23, 18

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gtk-cancel"
	.size	.L.str.24, 11

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gtk-ok"
	.size	.L.str.25, 7

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"invalidated"
	.size	.L.str.26, 12

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Direction"
	.size	.L.str.27, 10

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"_Top-right"
	.size	.L.str.28, 11

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Top-_left"
	.size	.L.str.29, 10

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"_Bottom-left"
	.size	.L.str.30, 13

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Bottom-_right"
	.size	.L.str.31, 14

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"toggled"
	.size	.L.str.32, 8

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"_Depth:"
	.size	.L.str.33, 8

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"value-changed"
	.size	.L.str.34, 14

	.type	sdata,@object           # @sdata
	.section	.rodata,"a",@progbits
	.align	16
sdata:
	.asciz	"\000\005\375\363\r\n\365\006\365\362\035+\356\330\030\004\340\032'\336\360\031\352\f\002\330\t.\363\321\021\023\353\0033\352\322\017\000\361\005\b\000\033\373\342\003\373\374\030\000\354\017\b\356\0053\363\315\020\027\353\375\035\356\352\020\020\375\b\376\341\007\033\360\363\036\367\340\033\025\003\033\365\342\022\b\332\370\006\371\371\375\b\376\023\023\342\364*\360\340\t\366\366\n\r\002\373\370\374\033\002\343\n\f\363\370\000)\000\325\005\003\006\004\370\000\366\373\350\321\367\371\331\375\357\340\030)\347\276\364\357\321\r\035\320\341\030\344\002\003\306\371.\363\317\006\363\314\355\035\342\313\365\325\316\370\365\345\025\360\315\361\326\327\f\352\310\370\356\313\343(\370\303\006\033\365\002)\354\316\b\021\013\023\354\321\375\021\340\352\024\356\352\t\370\355\030\007\355\033\035\354\370\006\364\362\366\361\344\r\b\320\353\033\344\332\001\341\350\002\373\363\367\352\342\020\355\274\370\004\325\330\343\005\350\315\375\357\370\013\357\332\374\013\r\365\f\r\342\016\002\340\020*\013\372\022\377\330\021D\005\362+\013\016\035\340\373&\357\331 \022\332\352\013\360\360\020\366\323\375\t\326\023\017\342\030\004\342#\030\331\013\034\363\356+\f\306\370\017\334\340-\020\331\004\370\365'\372\342\013\n\340\372\035\346\374\036\004\002/\020\352\036#\345\351\006\340\342\374\357\343\033\023\345\004\025\353\363\024\350\353\017\370\367\030\376\312\022#\314\365\032\335\327\355\376\345\333\f\355\344\020\002\340\344\354\350\356\023\370\323\004\365\342\r\f\355\005\036\000\330\363*\376\343\006\375\r\030\346\0011\366\343&%\007\035\020\353\r%\020\345\370\036\377\035\034\355\022\006\337\026.\372\020&\013\006-\035\352\000\030\363\342\032\023\360\032\032\b6\372\322\035 \370\017+\375\373+\026\361#\002\315\000 \371\364+\002\337\f\016\375)\030\353\027&\372\003%\375\355\033\013\365\030\036\352\b2\342\360@#\0200/\360\345$\r\000.3#\026\031\375\373)\b\350\020\351\335#'\327\354&\b\322\340\033\360\335\374\350\374\004\316\335\026\355\317\r\t\354 \027\313\357\033\000\337\335\335\345\023\006\332\003\005\321\370\020\332\365\005\323\350\n\352\342\000\000\352\360\374\332\304\342\353\342\r\360\277\352\355\321\354\370\343\315\337\342\333\026\365\275\332\360\333\312\363\376\340\344\342\341\367\355\324\342\006\343\340\004\352\332\366\350\355\r\370\327\3700\355\313\000\370\362\0360\352\315\365\332\335\023\007\377!&\025\0203&\024;\035\361\034D\363\3428C\013\377-\030\n\"\021\034+\004\375\033\371\344\036\037\367\0343\335\347-*\036\037\342\312\027\023\345\r0\005\f\036\320\354#\335\364+\376\367 \017\320\352\033\n\351\370\366\355\033\036\005\016\003\337\371\004\004\r\374\347\372(\n\347\377\016\363\354\n\016\t\000\342\372\031\022\375\354\033\n\373\037\005\365\024\376\0000\023\315\344:\020\362\f\346\334\r$\355\315\345\331\343\036\375\347\360\365\324\320\371\373\363\020\375\322\335\022\351\315\376\374\342\354\365\335\353\b\377\r\021\362\0165\371\332\375\363\353\006\021\332\345\025\005\024C\007\315\033\027\343\366\016\373\0006\370\3538\007\375.\005\360&+\372\376+&\b&(\0250$\03564\024+3\02318\t\t8$\375 I$\000$\"#A\030\006'(\020\005\"\037\024,\006\363 \030\364\030>\360\337'\375\366)\000\352\034>$\030\007\354\373/& \361\021\355\337\372\355\343\f\000\352\361\017\360\351\006\345\313\364\001\312\314\370\340\365\024\313\337+\370\316\355\317\333\025\005\307\324\377\320\332%\375\272\373\000\320\347\355\334\350\031\356\342\034\373\355\026\346\300\021\026\341\346\016\370\320\364\353\337\367\332\332\367\354\345\000\035\352\345\t\351\323\021\024\324\350\020\003\317\343\353\336\016\375\320\360\360\313\346\375\345\357\024\343\325\001\000\325\346#\345\333\032\346\311\355\325\311\005\037\n(\036\322\340\002\357\013\n+\376\371\036\377\356 \030\020%.\004\t(\b\354\r>\023\361\023\377\3777\b\3550\033\372,\001\3523\"\343\363#\345\3428(\357\023\016\336\376\f\000\f*\347\327\b\332\325+\031\330\034+\335\321\033\032\361\020\364\355\027\355\355\n\335\317\350 \377\330\013\006\345\030\034\342\370\020\025\360\370\002\347\021\020\354\030\r\303\342\024\350\360+\363\334\025\035\347\364\"\347\360#\t\t\025\350\275\365\022\331\3631\000\371\022\335\367\377\030\342\337#\363\340\025\373\327\371\n\333\361-\034\335\345\027\375\360\374\362\360\370\355\327\031\033\3551\r\315\033\032\342\0054\355\302\374\006\000.\016\342\025\031\376\0135\364\336-\n\333\031%\351\b)\002\357\037(\020-\030\373&\r\0066\006\347\376*\025\340\024(\363\026%\370\r\031\030\r\026\t\362\031\r\370. \332\335\023\003\001&\355\306\r+\370\r)\345\366*\021\037;\020\315\000(\352\343\b\000\0201\375\366\b&\n\3612\021\361&.\364\002 \372\360!,\345\345\030\000\007\b\350\007\r\351\317\013\004\312\037!\317\020 \320\360-\013\333\360\340\307\027\032\340\001\367\321\362\033\357\344!\n\347\017\r\334\365\023\345\336\005\372\325\356\367\325\365\353\343-\b\311\360\n\375\330\362\021\345\363\375\335\354\354\322\353\024\347\330\016\353\336+\035\350\341\363\342\333\004\370\326\001\023\350\021%\336\342\016\355\326\376\373\321\005\036\332\357\377\325\355#\375\361\373\b\363\347\031\022\354\006\017\356\371\036\t\350\0326\375\363\037\013\n-\020\026=\017\360. \346 A\371\021.\345\36717\022%/\360\025(\350\t\036\365\020\023\343\362\035\360\333\035\035\356\005+\346\321\020\013\350\005\023\375\032\021\362##\342\005)\031\377\t\"\020\037\035\t\033&\370\3673\033\374 \n\364%\036\007\017\035\373\346\030\030\373\030 \366\032$\357\360\033\032\005\037\027\355\030>\371\0078\005\364/\036\037\360\375\344\313\357\365\310\345\347\317\317\362\347\307\355\375\340\331\002\353\303\336\340\342\025\360\323\026\r\337\352\000\352\001\026\327\325\377\023\003\000\r\355\373\020\340\370\037\372\037\034\332\364-\000\324\024\035\350\373+\372\342($\b\"\037\013! \006\f\026\362\367#\017\352\374\b\365\024\027\371\030+\004\371\027\005\002\026\r\n\030\375\350\b0\020\365\031\361\333\n\t\360\007\377\327\357\032\025\f%\n\331\361\035\372\336\002\372\361\016\370\376\031,\035\367\020(\004\0260\036\b\035\021\004\b\366\362\365$#\370\370\366\370\"\366\320\005\370\345\366\354\315\357\b\340\330\335\322\361\002\332\312\356\b\335\345\r\344\352\372\312\324\372\346\303\366\013\320\356\017\330\320\023\000\327\366\351\316\352\344\360\373\350\330\310\367\362\305\316\334\306\363\375\275\340\365\312\325\373\325\303\325\313\344\035\374\304\347\r\346\325\013\343\315\375\350\342\b\007\333\345\377\325\320\t\371\300\314\345\337\324\352\330\342\377\333\361\362\007\372\352\n\n\363\003\036\013\003\020\365\005(\030\372\352\020&\023\"(\0319\020\351%#\01608\n\026&\003\025+\352\353'\n\352\022(\372\374/*\030\020\346\362\025\003\334\000+\377\024)\357\314\f\r\327\007\017\345\b\356\365%\013\007\370\0375\021\020\021\364\0365\355\b)\370\356& \367\355\320\313\036 \352\013\033\005\0000\023\366!\031\026&/\023\0302\f\370#3\020\025#\021\t+\n\373(\021 \321\351\336\320\373\355\277\312\375\345\322\347\320\315\353\362\330\315\331\350\324\340\360\345\006\357\312\373\t\337\342\000\364\000#\364\354\030\366\332\035\033\342\005\020\350\354\025#06\366\371>.\377\f\020\351\0176\026\362\026\021\317\370\033\375!\n\353*'\000\363\025#\006\005\376\342\377\016\352\374\026\370\356\027\"*;\007\307\360\002\362\031\"\013\367\b\372\350\025\033\007\000\006\000\025$\001\000\005\000\370\003#\003\364 \020\343\346\350\355 %\034\004&*\365\361*4\035 \003\360\016!\000\377\020\005\353\365\357\325\366\007\356\372\021\367\362\004\357\337\025\373\323\373\370\321\001\020\317\360\372\325\321\362\355\365#\350\306\023\006\342\020\002\305\350\026\356\342\032\020\315\341\362\315\341\354\311\355\035\346\315\376\377\346\371\375\336\344\341\327\360\374\322\313\360\334\343\037\r\337\352\350\330\343\005\372\322\340\347\325\365\b\335\311\323\320\350\006\340\370\r\345\322\320\373\333\311\377\003\343\322\326\326\030\024\031\0330,\360\367\030+8A \t+K&\025;.\f ,\016\023+$\"*\023\0300)\r-\034\3744+\366\033\036\340\n&\r\365\005\f\f8\002\320\033\021\347(+\342\363/\373\335);\t\007\t\371\373\006\357\355.\020\354&\027\367\035.#)\013\363\035=\022\373#\021\002+.\035\033\022\005\356\031+\016\036\030\371\374%$\016\016\000\001+\026\031A,\020\b+\000\341\036+\023\034+\"\360\362\315\325\377\023\325\340\356\316\334\364\344\343\005\024\374\360\367\352\370\023\032\013\374\354\354\020\016\350\356\355\362\b5(\363\022\013\364#!\337\366\t\364\000\016\b\n=\b\324\r\375\347\"\032\332\3561\027\352\026\037\026+#+1\025\376\005*\020\340\024\030\345\364\002\0132\037\354\0013!\377\026\025\003$$\026 \r\363\345\017\"\026'\375\350\376\016\033\023\000\355\365\013\003\n#\r\355\0037\017\345 -\006\016\037\013\002\033\341\317\376*\375\001\f\345\362\377\315\303\003\017\344\371\t\317\345\022\354\353\000\331\323\007\002\355\024\361\275\336\030\026\345\342\315\305\374\032\335\351\377\305\312\340\316\336/\001\322\017\344\272\000\003\306\342\r\360\314\360\347\330\021\376\355\r\346\305\350\371\360\332\365\r\351\335\323\314\363\003\311\323\374\357\315\347\355\310\363\365\323\355\355\317\313\337\327\331\024\362\275\327\332\325\335\336\305\306\323\300\337\b\352\271\341\031\363\303\366\001\337\353\355\325\355\034\026\350\375\023\362\023\036\374\034/\356\277\370\030\361\f?\355\331\"\013\n1\016\377\023\370\3653+\332\332\023\"\020\031\n\356\b&\363\0069\370\355\016\366\3564\035\35423\364\025$\325\353%\377\340\023\f\320\001\373\331\027\023\344\001\033\022\b\022\027\t\023\020\376\022\036\344\360\034\017\363\025'\364\023(\b\025\025\366\004\023\357\343)8\002\376\013\020\0300\016\357\b\360\3725\"\331\364/\021\340\013\026\375\026\024\016\n\0250\363\365\001\327\025.\352\3760\002\306\327\350\307\3502\370\302\373\366\345\374\347\373\030\345\325\023(\342\316\016\026\377\033\021\360\022'\354\3720\375\371#\376\350\033\016\346\022)\r\0351\342\347=\013\340\036\030\343\033\032\343\t\t\335\350\030\013\361\036\023\360\032)\022\037\036\345\352\024\002\355\017\"\367\372\036\0315(\341\350\036\026\365\b\024\020%\"\r\0208#\356\r\005\3641+\345\341\033\031\347\013\016\005&\f\b\032\b#\026\027+\000\0235\b\00383\007\006\030\343\3401&\342\376\020\000\002\345\361!\000\322\005$\361\326\021\004\325\n\375\277\363\025\330\362\032\337\325\r\346\313\r\372\310\364\372\333\000\030\335\3300\b\310\013\001\311\t\032\343\002\017\361\343\001\354\300\025\"\331\355\000\352\003\006\350\344\355\322\307\345\360\325\315\353\336\b\036\355\335\361\375\343\357\345\305\372\n\315\336+$\333\335\354\325\n\032\352\342\017\013\315\367\372\360&\b\363\000\371\367\352\344\367\350\343\360\362\346\003. #6\024\361\033\026\356\n\021\023\033\373\345\030/\005\0321\016\367\030\003\317\025&\323\002/\370\0262\352\3423\032\344 +\361\022 \374 .\360\335*1\363\035\031\320\005'\363\r7'\023*\035\342\013-\377\006\032\b\037&\037*3\021\375\030\"\r\000\005\345\0168\033\f\013\023\366\023.\365\013+\336\332&>!\005\023\370\t1\003\3730-\357\f\030\00214!\370\370\000\340\326\345\345\345\333\340\332\343\370\333\360\370\340\325\001\360\322\365\333\331\363\342\323\366\373\337\357\n\350\363(\n\305\000%\323\373(\362\007*\336\320\032\026\364\002\002\355\003\016\370\021#\361\340\006\f\355\030 \327\375(\346\330\372\342\365\031\022\360\373\000\342\374\b\350\002\016\360\n0\016\356\031\033\002\033 \337\356\"\366\337\n/\375\000\030\372\0307\004\332\357\007\030\017\017\364\370\035\356\333\024\036\351\362\370\350\n\025\003\370\375-\n\013\030\022$%\033\b\023\034\357\f\035\372\343\030\b\352&\035\021.\000\335\013\376\334\337\013\351\33341\345\022(\321\346\f\326\3603\351\313\360\334\341\373\340\305\332\335\315\361\025\343\347\375\335\312\365\007\316\356#\354\336\002\315\325\375\346\317\371\003\320\346\365\310\354\023\315\310\372\351\275\356\365\301\000'\332\323\021\355\316\367\021\334\351\355\306\353\374\364\332\331\340\322\336\356\347\361\360\320\305\341\365\332\353\350\303\353\363\334\337\332\b\350\375\r\340\002%\n\355\006\013\342\371(\026\371#\377\332\021\027\0236\376\311\b\037\026\n.\"\352 3\360\0261\332\364\035\345\366E\017\350\023\373\377./\017\027\035\370\002'\350\3656\023\004\034 \370\b6\021\f8\003\351\031\035\370\023.\t\025$\373\000*\357\331\023\037\361\021\034\317\0008\375\3663\b\353\020\005\340\022\031\347\376\020\023\373\b\026\350\361\b\020.+\025\r\013\000\361\032(\365\021'\032\023\n\027\360\000+\367\353\002\357\347\f\377\322\337\000\345\342&\016\332\340\340\330\373\364\317\352\373\353\347\376\364\327\373\024\326\3722\337\375(\335\342'\006\340\021\001\363\016\005\003\".\000\355\020\333\335'\b\375\033\006\341\360\027\001\376\027\365\365\033\020\357\366\n\372\006\025\000\006\033\363\343\031\036\371\037#\325\366)\007\364\r\345\347,\005\320\t\036\355\b9&\376\024!\363\357\375\373\027\030\373\0134\023\327\373%\003\372\004\013\033\035;\022\371\n\365\003\b\347\353(1\374\r\035\365\365*3\035\021\020\002\f#\016\b\030\360\350\016\371\331\371\031\333\362;\003\b.\335\333#\b\326\001\365\334\006\351\325\373\026\355\355!\354\311\006\362\317\376\364\310\322\370\333\355\020\327\340\013\350\315\343\362\323\333\001\373\023+\007\345\r\000\315\f \333\352\004\357\000\024\333\3376#\313\361(\354\346\"\000\333\030#\372\343\354\347\373\000\325\334\031*\341\325\t\003\356\327\335\351\326\000\351\352\343\303\350\006\335\302\003\"\360\022\024\335\320\371\006\377\030+\033\016\027\n\0167\032\375.#\357\0238\376\373'\000\0008\003\3655\035\352\026 \002+\020\341\004:\r\375@-\375% \350\037@\r\352\023\020\r5\t\3733\036\364\0236\022\000\036\025\035 \366\342 \036\336\0221\364\374%\r\035A\b\353'D\013\004/\005\360-\036\353\".\025\023\023\b%'\351\344\013\"\366\347\032+1\030\033\023\000\"\007\0341\016\000&(\360\005\r\335\022+\357\307\375\375\322\355\370\343\326\325\302\340\020\365\312\000\022\314\350\027\350\342\005\335\343\023\350\335!\020\332\000\372\346\033\005\305\343+\002\326\006\021\006\"%\361\372\035 \377\372\025\022\b\366\352\037(\350\374(\000\335\364\370\022\025\331\325\035\026\335\002\037\350\357\032\000\354\372\345\336\004\003\355\370\013\350\320\005\021\362\020\006\335\363\362\334\0261\342\311\t\n\317\332\367\375 \007\364\020\0213\022\021+\021\360\374\017\002 \023\321\372C\031\345\037\034\365\023\035\020\022\032\361\370&\020\320\3671\350\337\025\362\357\037\365\367\b\317\275\016\020\316\006\375\315\013\023\315\332\036\000\315\327\305\335\b\372\345\362\370\366\007\352\326\004\373\334\337\020!\327\325\016\360\275\326\331\3741\000\356\032\002\316\370\020\323\342\005\370\374\367\313\320\r\365\316\364\030\371\335\376\354\327\b\t\325\362\007\333\003A\020\332#9\353\360\000\346\023\023\343\346\340\016\345\345\026\370\326\315\301\315\030\030\310\315\032\372\322\b\367\326\002\036\022\023\021\365\361\032%\353\370*\362\356%\r\n%\002\027A\t\323\023.\335\377#\361\0329\004\00212\034\034\353\353\037\b\332\373 \347\003#\356\0233\006\366 ;\b\365%\027\362\022\370\360\026\361\3723\f\326\021-\332\337\023\f\036/\374\351'\026\346\0045 \007,\n\355\"*\373\013(\376\3762\035\344\020+\373\b\035\357\0022\f\002\346\"\366\3523)\021\026\364\315\020'\360\356\036\363\341\020\002\345\365\373\337\362\360\332\316\366\013\337\003\030\322\344\006\333\347\366\325\340*\031\322\360\021\335\342\n\347\004\024\342\350\024\035%-\365\325\020&\331\331\023\335\330\375\333\340\370\336\311\347\000\357\376\033\363\342\037\005\355\t\314\313-\022\307\b+\340\320\361\345\362\007\347\325\020\005\315\353\005\342\336\035\003\335\004\000\325\342\360\314\317\013\007\306\350\372\312\344\003\333\325\376\362\035\0065\033\370\030\016\0061'\357\0337\031\034;\374\3632\036\000\026(\t\0363+\b\027\017\334\0308\367\376\033\335\362\037\002\344\030\034\337\000\035\361\371\030\351\000\r\331\333\000\353\333\371\366\340\004\036\333\330\013\373\361\354\324\346\362\343\341\355\344\275\3673\371\333\025\375\365.\371\321\037\035\302\375;\027\020\030\351\354\030\002\341\023#\330\350\013\340\332\003\357\334\005\016\357\000\t\325\314\020$\342\362\027\334\356 \366\373\033\005\323\321\352\345\365\020\341\325\023\021\333\346\363\343\364'\365\312\t\013\323\343\t\371\375\016\035\030#\000\335\000\r\002\0308\376\376.\033\b,8\013\"3\b\f\031\000 &\364\360\035 \006\025\020\366#D\004\374\036\0315.\005#/\020\01625\367\005=\006\354*\030\0130\005\345'8\356\000%\005\rA#\374+#\360\371,\027\0173\b\006/\030\017+\"\002\031A\022\357#/\n\0249\023\tA\020\nF-\365\361\376\336\373=\016\352\033\033\352\345\347\330\361\035\002\315\366\023\323\324\360\340\335\322\306\370\031\344\322\337\305\300\352\021\350\341\b\336\327\004\006\374\020\374\335\374\347\312\000\007\321\325\371\r\021!\375\317\375*\000\374\006\333\0171\003\027 \353\320\363\006\337\342$\374\310\000\374\363\024\352\275\000$\363\372\000\320\327\016\020\363\020\t\335\322\366\002\370\006\333\340\031\376\353\t\363\317\350&\r\335\017\005\342\377\r\365\344\026\372\342\022\367\b\375(\032\003\037\002\343\0211\023\032$\005\0309)\003\037=\b\b \022\031\016\330\0026\023\f\034\006\342\346\007\356\353#\357\321\375\333\330\035\024\350\027\026\350\b\027\345\352\374\335\325\025\f\331\365\005\350\003\023\313\350\t\340\005#\377\357\370\362\325\327&\025\315\360\360\364\016\360\304\354\f\332\003+\343\350\003\330\340 \035\363\352\347\325\342\000\335\311\003\362\325\020\017\324\334\007\361\321\372\364\277\346\002\347\350\001\345\357\023\352\341\303\355\370\330\340\325\307\360\r\352\370\001\331\345\373\355\355\013\022\363\376\013\370\0330\356\333\030\"\016#'\013\t\034\002\3706\"\376(\r\355\034!\000\0353\030!$\362\377$\t\353 \032\355\034\035\342\b>\003\002\n\321\3753\032\03681\005\357+\035\341\001\376\030<\030\362\t+\366\rH\n\0052\361\331!\030\355\r\r\361\020:\016\347&\"\364*A\352\343\024\373\000!\023\341\0066\027\032(\374\372*\033\031\355\r\035\007\024\026\372\r\033\351\363\000\346\366\375\312\322\002\362\330\373\003\311\343\031\376\323\370\373\324\360\000\342\345\r\350\330\002\363\336\000\377\332\375\364\306\332\366\345\350\377\332\326\372\357\347\021\377\322\003\026\331\347\r\345\376\032\327\327\370\342\326\377\031\345\334\030\006\332\346\323\364\036\363\323\373\035\345\353 \373\352\033\371\340!\b\315\013#\351\362\033\364\315\t\f\334\376)\346\326\013\356\362*\023\325\362 \371\367\023\376\365\t\367\037\370\021*&%\023\373\0363\033#,\r\031F\f\354(!\361\0208\370\354 \020\366(+\005\032+\372\320\016\377\323\363\355\303\343\n\322\372#\362\351\r\013\003\035\017\001\026\356\342 \020\330\376\036\346\364\t\330\353\035\372\350\373\362\334\366\020\320\337(\030\364\362\332\371\030\347\312\367\032\323\325\026\371\335\f\363\3501(\362\r.\363\355\027\367\305\345\374\334\373&\000\350\023\376\346\037\034\340\343\025\355\330\004\362\366\017\342\366\347\005\360\325\353\344\301\362\377\354\000\035\354\325\035\n\346\032\023\326\335 \030\b\036\360\342\037#\f\032@,\363\0350\r%4\373\0008\004\001%\016\r+\036\0243\036\001)\033\360*\"\365\"0\364\b> \0171 \007-#\370\036@\373\3667+\023!\013\036D\013\341\022>\b\357-\035\366&\030\375+\037\372\001+\027\r8+\005\f\037\013\t\"\017\373&\031\376#\035\364\3755\033\360 \020\016<&\005\354 \032\355\b\027\327\355\006\312\324#\000\323\n\357\311\t \342\325\373\355\363\026\345\331\377\343\310\345\033\006\347\376\373\374\025\b\355\000\017\352\372\365\322\360\t\334\324\376\353\322\372\005\324\001\370\322\t\017\330\343\f\000\376\f\366\322\005\n\323\004#\354\343!\r\357\376\345\3759\376\301\364\b\342\342\021\373\333\366\345\325\370\352\326\345\372\355\320\005\022\360\007\007\360\347\375\355\332\373\342\331\r\367\276\335\007\365\322\363\365\370$\013\364\325\013\033\000\030-\003\r+\340\3252\033\355(\r\332\024>\376\364$\005\000$\375\361\034\377\313\346(\b\365\032\363\360#\375\334\022\027\350\023\026\342\n#\337\331\021\366\355\t\002\352\017\365\305\364\377\327\351\007\337\365\021\364\332\f\013\324\374\001\312\330\026\361\334\364\306\3335\016\315\000\b\316\333\031\005\365\003\336\337\007\372\346\006\020\374\332\003\020\323\365\377\353\001&\020\374\r\350\351&\"\330\360\022\360\313\363\352\330\025\352\355\323\b\000\316\360\363\343\025:\351\301\030\024\331\034\022\334\000\023\333\312\373\370\361\000\343\335(\037\335\343\007\373\363 \b\356)\025\343\020\020\350\026\033\360\033C\376\3627\017\375(\036\0256*\007!(\002\n(\000\023;\000\350-&\362\0374\362\3705\020\365\"\367\3300\031\330\0255\365\355\033\372\0006\"\0327&\370\0203+\r\027\030\350\n\036\375\005\021\373\0236\r\374)4\371\000:+\367\033\006\334\036\016#\376%+\352\002\006\344\016G\037\331\021'\354\031\016\325\006\020\347\352\373\352\343\370\355\336\033\021\337\367\361\340\332\000\362\310\005\b\325\006\000\305\363\364\312\3703\371\344\033\367\335\006\375\342\t\r\373\035\026\347\362\005\335\355\031\342\273\372\003\330\0001\363\347#\030\345\f\t\315\003\377\302\365&\345\340\006\330\320\013\000\354\023\013\335\332\002\373\345\360\355\343\n\023\334\327\344\305\315\013\375\325\370\003\337\315\375\004\346\001\355\314\370\373\n\366\013(\n\f\016\352\373(-\376\r\017\347\0320\000(1\371\022;(\031\"\016\366#+\n*&\013\373\035\032\350\005\025\362!)\326\347\371\325\3652\363\340\034\365\323\003\372\320\002\361\321\005\016\323\352\030\367\365\016\362\315\372\023\342\352\036\357\325\b\024\356\006#\006\023\017\346\3741\360\3645\003\320\377\365\305\000\n\350\335\370\013\t\031\023\n%(\367\002%\374\305\373\005\323\002\034\r\363\b\371\330\362\361\353\016\b\330\322\332\344\336\350\344\311\340\353\342\320\367\360\266\341\003\351\013\"\332\337\020\366\003\013\350\347\005\b\345\003\020\353\361\036\033\007\n\365\362\032&\f\b\372\324\345*\013\3733\377\321 \030\354-\t\340\0339\374\362+\027\030=*\005\023\035\006\371\r\352\350' \000\363\0130=\036\376\017@\002\357D-\371&1\360\0307\033\022\021#,0\020\367 ? \0246\026\347 \035\354\031(\023\02017\036\030\363\353\035\034\013\006\025\020\362\006\005\344\r\030\006\350\022 \325\325\350\323\363\034\331\335\026\335\364\025\334\347\007\360\303\344\020\332\323\003\350\363\037\333\332\n\362\016/\001\325\335\373\346\362)\366\307\027\003\310\026\365\307\366\023\353\335\f\345\343\017\363\353\b\355\360\032\016\324\317\006\363\353\335\302\346\022\362\322\367#\353\313\020\377\350\005\013\362\001\002\340\372\002\343\330\376\345\273\353\375\347\337\t\363\314\003\366\326\013\005\313\327\007\016\013)\372\313\366\375\031\023-5\f \020\332\0206$\005)8\003\n%\n\016;\361\3458\364\366;\365\3522\034\361\007;\031\361\023\375\3739\006\3722\376\373#\024\376\362\372\342\361(\372\341)\035\337\031\b\314\376\037\350\344\035\351\340\003\333\332\033\006\337)3\341\315\013\003\363\016\343\307\006\002\315\370\033\356\350\034\350\316\005\364\322\370\372\315\355\025\374\332\025\033\340\373\364\342\374$\016\356\f\345\317\034*\330\316\013\000\320\020%\346\336\327\350\326\006\005\352\r\371\306\340\b\350\311\013!\356\000\035\365\3723\365\315\033\355\333#\360\3428\020\342\376\004\001\b\n\360\373\035\372\354\033\377\b\033\365\365\363\026\020\007\036\335\312\013 \b,4\367\n3\023\016;\000\3658\025\356 \032\324\rC\n\355&\033\350\0373\376\035+\372\013\"\374\366+\002\323\035\032\337\0240\371\360\b\027\005\035%\365'#\352\004\037\016\0239\373\327\035+\363\342(1\343\366(\037\024\f\f\351\016\013\003$\030\366\375\030\375\343\030(\325\330\020\335\340&\370\341\025\360\352\033\360\345,\373\316\377\357\334\007\003\311\355\023\355\333\006\346\360 \375\355\355\023\375\005#\340\315\357\347\340\n\017\345\355\t\360\352\030\363\333\017\356\324\016\020\312\360-\370\345\033\n\312\355\025\353\344\353\347\362\002\343\342\021\362\300\376\016\333\366\372\340\340\327\340\337\343\362\312\376\030\311\343\001\327\323\020\357\322\006\377\337\307\b#\333\335\363\360\000\000\362\354\343\333\355\023\020\352\013%\370\360\033(\346\343-\003\363)\363\3765\n\013(\371\3658\007\334\031\035\373\r+\370\361%\032\377(\025\373.5\003\347 \375\000A\017\364\033\366\327\020\025\342\362\032\350\330\021\b\361\373\331\320\023\032\317\352%\342\326&\033\313\341\013\355\356\372\350\361\024\350\3726\032\354\022\023\346\003\007\001\023\020\377\373\363\360\335\377)\347\376'\362\350\026\362\343#\030\001\343\013&\350\346\355\312\342\357\360\007\375\345\327\347\376\322\370\032\331\314\r\033\351\353\007\343\334\001\325\310\356\334\353\000\320\335#\371\312\375\t\352\357\t\357\323\353\360\353\022\n\350\375\t\355\346\035\367\332&\t\325\016\r\342\030*\357\3729\033\002%&+/\370\342);\375\bE\030\3623>\365\003;-$.\375\375=\021\n;6\022%\"\370\033*\004\0050089\033\r\0306\000\tB\035\0263\016\3732-\013\000\024\026\013&9\000\005*#)6(\r\t+\004\f4\020\353\0360\366\r\033\376\003\022\376\354\355\317\357#\360\366$\004\323\365\033\362\363\r\367\345\367\354\342\375\357\330\352\351\311\356\"\362\317\020\t\317\357\363\310\375\r\314\353#\374\337\350\337\370\027\361\303\365\006\352\375 \000\325\n\033\336\346\375\376\016\b\332\345\023\354\324\367\377\330\366\b\347\003\f\316\315\003\370\377!\005\367\373\000\340\345\035\374\357\003\370\357\r\005\312\321\b\365\345\021:\372\322\367\350\343\r\b\350\000\022\350\343\032\032\340\353\000\352\020\036\n(,\025\0335\372\352+\f\0176\035\335\3637\027\0164\036\375 \030\373\032\016\375$0\366\013G\037\372-6\013\025\035\363\027'\317\350\031\345\355\b\353\360\024\013\325\364\363\305\357\n\345\313\362\000\314\347\363\355\025\000\331\366\021\355\323\360\373\342\004\375\345 -\340\336\t\345\331\013\356\345\026\023\355\334\002\355\355\362\326\340\025!\340\314\020\016\315\351\031\361\307\320\370\332\t\026\320\355\030\351\275\356\r\345\347\343\312\345\360\314\366\f\341\345%\001\313\354\327\333\022\023\317\327\001\350\337\030\020\316\352\362\332\f\031\353\005\026\345\341\r\367\340\001\005\357\356\366\364\033)\332\356(\355\0076\035\0263%\345\017\030\320\002,\370\366!2\377\000\b\3761 \367\0256\036\t&\024\377.\026\365(+\330\3505\026\366&\023\356\b\025\001\373\035\376\017'\375\360\036=\n\347\0313\356\375)\r\017\021 \372\0308\013\bA\035\343\023&\021)+\016\024\030\331\3721\f\347\030\032\375\r\356\354\030#\347\353\003\363\343\024(\347\362\f\363\003\033\336\350\016\346\344\372\335\325\362\355\347\362\327\316\375\f\331\342\033\337\340\005\340\323\013\021\312\353\002\305\357-\353\333\031 \352\347\360\331\n\b\335\375\030\360\357\036\361\320\t\375\340 (\334\345\031\363\345\020\001\372\376\347\315\355&\362\365,\007\333\007)\361\335\r!\343\363\034\364\026\036\004\364\366\354\347\355,\013\322\025\031\367\024\034\r):\000\005#\021\363\013\034\"3\004\373+0\013\034(\006\371\0263(!#\030\0337\t\0021\027\0368$\0330\037\0131\024\373\"-\016\002-\372\371)\000\323\b&\353\n.\005\002.\377\315\t\036\367\001!\370\377\000\310\355%\373\361%\374\327\013\003\337#5\364\370\034\343\320\016\003\r7\"\332\337!\364\343\035\024\341\007;\005\335\b \347\002/\370\b\004\365\370\016\335\310\333\037\377\321\001\370\310\360\373\306\360\r\336\360\372\335\315\321\330\343\f\352\303\357\362\335\370\036\351\331\363\343\360\365\336\322\337\003\377\000\b\335\342\377\007\013\033\375\345\034\f\370#&\023\0238\034\016>5\005\036@\023\022\026\007\027=\036\332\007'\373\347\b\025'%\325\343+\013\3733\007\320\f\036\372\032\017\322\355>\035\350\026\007\373\024\025\355\347\022\354\350\037\037\365\005$\002\330\r1\371\362\003\373\026\005\b\006@0\005\000-\373\332\026\033\353\0135\361\373\013\307\363,\r\377\002\363\333\r\033\330\335\357\333\326\033\016\352\372\326\330\367\363\335\333\333\310\364\013\324\320\330\320\334\372\333\312\003\360\306\365\360\312\334\356\342\323\355\365\361\373\371\343\371\353\303\353\020\005\317\341\b\352\305\277\327\024!\315\317\n\342\322\017\370\307\350\351\317\b\016\305\323\020\375\322\345\323\364\030\371\332\345\r\331\301\355\347\320\355\013\357\310\370\b\345\340\302\306\001\350\363\347\033&\363\356+\374\300\371\037\006\005!\004\0256\352\357-\027\r.+\004\032;\"\035\034\b\370\0330#,%\033+:#\025\023\341\003D\032\026%\374\376.\376\340\033\b\313\005\034\332\330\353\341\346\375\342\360\005\350\327\017\035\334\366\005\373\361\005,\022\005\363\303\003/\330\340\033\350\337#\020\345\f\016\346\033,\345\370\033\370\357\023\366\tA+\003\000(\373\330\002\362\340\002/\022\327\007\027\000\036\000\340\032\b\363\326\000 \003\366\031\r\355\370\353\335\372\003\334\373)\355\350\030\000\321\370\376\333\000\005\376&\032\344\340\372\002\r\t\366\370\r\017\373\373\035\363\352$\375\375A\023\353\035\370\321\025 \340\000+\023\024'\037 5\013\r8\022\335\376\013\330\r1\r\356\nB\006\000.\342\373<\351\3629\375\345)\013\320\004\023\365((\352\r;\n\370)\020\n0!\005\f3\020\363+\013\345\0070\021\335\0303\003\031%\371\023\026%\374\f \025\"'\370\376/\022\334\0030\353\353)\001\372'%\365\023\b\331\025\r\345\003#\354\323\b\003\b\f\326\275\373\026\000\003#\375\334\020\357\3330\023\345\021\003\335\005\030\347\376\006\365\026\020\345\360\020\360\336\"\030\317\350\375\317\353\025\372\312\342!\353\342.\376\343\023\337\3459\003\332\024\004\336\004\360\316\t\000\323\375/\365\307\370\350\342\030\004\322\361+\002\320\n\013\310\340$\t\340\r\035\331\335\026\354\330\356\364\344\360\345\310\0062\342\325\017\t\325\352,\372\320\376\362\347\005\373\350\020\377\330\022\n\370\005#\031\364\023\376\rE/\333\357!\375\0003!\001\035\372\322\033)\0250\035\005\037+\b#\026\337\013(\336\325\022\375\325\0302\372\017.\b\000!\023\331\370.\005\371*&\021\036\345\3301\030\3730\005\3603#\373 \r\311\3559\032\356\024\366\332\033\035\325\3604#\375\017.\376\361.\024\340\n6\374\342 \022\356\002\374\367\020\f\334\376$\344\350\025\000\336\365 \n\343\333\315\336\005\333\307\360\336\272\367\360\323\370\366\343\327\355\316\327\r\026\352\326\375\324\327\005\361\370\b\343\272\351\003\367\023\360\335\b\020\365\023\023\332\350)\020\326\016\026\352\030-\b\022\037\366\37161\360\006(\364\340\001\003\0233\357\320\033\027\363+\375\315\022\031\363\020&\332\340\030\001\363\033\373\330\020\034\331\332\t\371\374\375\002\376\375\024\370\312\344\031\366\346\022\002\370\006\t\005&0\003\026.\376\b8\032\355\020/#+\037\370\006;+\f\"\033\351\021\036\343\000\r\360\354\016\000\371\022\000\362\375\"\000\374\023\342\3775\033\343\366\362\332\033\372\306\365\366\307\367\021\333\310\357\005\323\352\365\314\345\360\322\333\361\312\321\000\370\350\002\024\340\315\003\340\332\031\351\313\000\375\321\013\002\273\353\004\325\361#\341\354\b\337\325\t\373\337\b\b\335\323\357\322\350\n\352\326\371\032\375\336\356\003\323\340\b\323\317\335\332\322\361\003\336\005\020\340\340\017\376\314\362\002\345\020\030\353\370\031\035\r\"\036\375\027\"\000\0221\035\020\036\r\025B \373\023\036\006\024:\004\3723 \363#\025\336'.\364\025,\360\n:\r\376\037+\002\013$\017\n\003\372\016'\346\353!\353\320\002;\031\370(\020\366*\374\327\030\013\345 \035\337\013&\352\003!\336\3763\023\360\027\032\003,-\026\030'\n\360\033%\355\0002\033\003\0364\360\3708\023\b\r\022\370\377\013\316\367\030\345\341\000\363\306\340\362\303\352\376\305\330\372\350\310\357\353\330\372\361\327\341\017\355\342\361\316\323\037\r\325\353\337\312\330\013\355\325\376\344\303\013\013\315\373\n\337\372\025\353\001*\370\357(-\n\r\020\023\"\016\n\033.\352\342.\002\304\350\031\365\354\b\004\005 \362\305\023\001\342\022\370\322\017+\353\006\020\314\335\n\371\342\003\001\335\r$\377\017\021\371\322\326\033\360\351\024\353\325\003.\360\357&\b\003\035\026\005\f0\371\n=\026\025/#\023 ,\363\0056\f\002\036\016\334\006\025\005\025\002\353\362\034\343\345\030\363\330\023 \367\016\001\340\322\373\366\376\035\356\324\017\n\315\367\377\317\356\377\315\374%\340\270\370\375\332\375\341\325\376\344\317\353\006\337\337\031\002\314\357\020\327\331\377\345\357\027\361\313\373\350\344\026\363\312\376\026\345\026\033\335\353\375\333\311\376\005\302\341\022\324\346\022\000\347\313\021\003\356\025\352\313\370 \333\324\n\352\325\366\327\325\325\366\346\362\013\353\360\"\033\n\0327\375\360\023\006\020.\036\336\355\374\0163(\n\0229\372\367/#\376\375\030\034.;+\026\"\b\016(\372\36320\372\0366\006\0354\376\025;\005\302\361\030\370\033\030\b,\036\360\020/\357\3657\020\343\024;\024\001(\027\n8\027\373%\025\020=,\377\031$\367&;\020&@\f\354(E\005\002;\017\006@7\023\365!$\0250\032\373\024@\f\370+\035\003\f\365\370\332\326\307\315\000\376\313\350\t\340\310\016\365\327\364\331\335\030\024\323\315\323\327\000\025\342\331\032\007\340\362\003\360\303\312\334\333\361\363\352\b\370\353\377\324\310\t\025\357\016\036\353\350\003\360\363&0\354\323\006\030\017\003\367\0239\b\3736\373\330\030\000\325\370\023\370\342\375\r\0079\034\336\375\007\360\n\013\342\375\b\345\375\033\363\357'\037\366\n\036\000\360\b\365\340\375\013\365\360\016\b\n\023\356\345\006\033\377\372\004\355\356\353\375\022\370\n\r\352\004.\365\344++\356\030\036\374%\025\351\031@%\025\032\366\360&\r\332\375\034\346\342\026\031\000\376\375\346\360\362\331\b \020!\002\316\367\n\317\355\031\365\333\350\350\316\3703\023\315\333\000\363\000\353\342 \026\322\377\027\360\001\020\367\343\355\335\310\330\355\343\034*\336\312\331\311\355\022\333\326\360\332\317\005\370\300\317\367\362\323\354\361\332\345\347\320\335\370\320\302\365\353\343\b\342\302\367\376\314\352\375\315\325\335\367\r\356\366\006\350\347\031\b\321\365\021\367\021\035\353\f!\361\000*\025\n\037\374\343 7\372\353\036\355\345(% 83\022\037)\013$1\017'8\005\005*\345\337-(\b\0314\357\347.2\002\005\023\370\035\036\362\0178\n\375,\036\372\027#\016\036-\030\f\025\376\027>.\036\036\374\000;)\b  \370!>\020\356\005 \352\3763\036!3\002\372+\004\322\006\036\0050\033\330\0130\350\001=\032\021 (0\025\006\020\375\367\023\006\315\332\356\325\371\025\315\337\030\351\334\020\350\316\366\335\300\360\036\361\337\022\346\302\364\370\360\020\b\334\335\340\336\013\n\317\340\024\n\350\375\342\307\n\024\345\3720\355\320\031\025\361\006\007\332\353\020\352\355\025\005\376\n\362\335\n\016\353\002#\013\374\001\341\340\f\022\030\035\354\330\020#\374\372\004\362\005.\035\367\376\035\353\325\023!\0269\020\3660\033\343\376 \375\r\013\332\0067\367\345\"\035\020#*2-&5 \021,5\022\022\033\365\b:\370\347+\017\356-\026\366&\033\353\370+\023\0054*\361\352\337\337\035\027\373\001\335\316\022-\355\337\363\367\372\023\n\345\017\034\326\346(\373\275\365\003\332\001\020\330\330\026\371\367\007\340\003\023\332\317\024\033\342\341\b\343\335\r\356\325\000\350\335\n\360\342\376\375\330\345\345\311\334\020\013\326\335\007\361\301\335\365\340\016\374\332\020\003\321\345\366\336\365\372\316\362\"\372\320\372\370\333\371\363\372\350\350\375\353\352\0370\031\035\n\332\353\"\023\372\021\362\340\037$\006\027\035\366\3700\036\b%2&'\n\354*\030\005.\020\360\0216\024\020\027\376\r+\017\356\"<\005\007;+\335\367'\003\034B\016\363$\026\031*\000\037J\023\346\0334\r\0070\025\377. \000)\033\005.\026\000!/\013\036+\353\332\030;\033\01633\371\000\030\370\030\004\335\027\030\360\020'\035\026\t\327\350-%\374\b\367\326\000\370\f\342\307\353\351\325\375\357\320\t\020\313\310\335\335\365\027\334\300\367\376\341\335\366\331\324\007\351\331\376\360\350\r\001\326\017\002\320\350\333\317\352\373\341\r)\355\323\000\350\315\002\013\353\345\022\037\357\371\020\364\362\006\372\356\360\335\362\023\356\356)&\376\b\024\346\340\022\013\366\000\352\350\n\006\003\031\373\340\022)\370\361+\375\325\013%\024\b\036\027\363\006\035\367\030\025\355 \036\376\027&1\036\032\360\326\026\016\000$\021\350\000\0227,\003\027\024\347\017\020\335\0210\371\375\000\320\3559\006\331\367\375\345\355\036\356\331\030\346\313\025\373\327\002\005\335\006 \f\026\005\337\361\373\276\337\022\364\333\023\373\334\007\361\326\334\020\004\332\356\366\340\323\327\326\364\360\275\310\021\366\305\351\353\316\332\007\346\300\333\330\324\360\326\333\355\306\311\005\004\325\363\001\336\316\026\375\312\360\347\316\312\350\335\311\343\366\317\340\355\304\335\340\310\330\332\363\363\003\372\273\360\346\307\370\373\323\345\370\r\002\004\022\371\320\005 \343\0176\370\0000\362\346(\002\345\023,\365\340.\002\3271\003\314%!\361\031(\016\026\024\013)8\013\032,\350\353 \020\3722\023\353$(\005\0023\016\343\000\033\035\r\020\004%;\b\350&+\364\013\013\336\347)\037\375\030\032\003\035\020\016+\001\345\023\033\347\0203\033\373' \371\035\007\344\362\025\370\346\b\033\f\t\r\360\362\374\352\373\366\002\004\f \353\025#\343\352\375\341\000\373\027\342\355\016\370\340\003\030\313\341#\355\335#\367\353%\375\324\3703\376\323\036\007\322\037\002\305\006\006\322\365\005\347\000\363\313\356\013\352\016;\370\332\020\366\326\025\005\317\366\r\346\363\037\376\350\365\004\013\013\016\356\000'\r\350\007\021\371#.\354\350\036\007\376 \025\365\000\002\000/)\005\t\005\336\370#\013\362\022\005\36323\365\0163\366\345\026%\033&-\033$\030\371 \033\013\033%!\004\036+\020\035(\003\027\0205\013\0136\026\363\023E\013\355'\026\373,\023\006?$\343\3543\f\352(\032\370+\037\356\026\033\345\374 \352\000\035\360\002\b\322\3652\021\352\025\005\327\016\035\366\005\013\320\356\020\343\332\343\350\313\330\003\337\305\363\353\305\344\343\322\r2\342\325\033\360\344\016\365\315\343\353\330\373\013\005\004\377\355\341\005\362\322\003\372\330\0220\343\3651\376\314\345\016\373\002\013\352\024\f\307\353\376\333\356\030\362\326\016\376\335\005\020\341\364\001\026\365\347\035\005\317\357#\n\370\031\376\355\023\002\353\030\023\340\351\025\365\350\016\357\354!\037\365\017+\363\360&\007\n\033\371\036)\357\001(\024\t.\"\355\017&\030-6\357\b-\371\355\f.\371\3630)\376\0363\020\035\023\354\tG\013\335#\376\35365\003\023\031\366\377\020\"(\033\n\375#\"\364\030\034\365\0223\377\3750&\000\365\030\016\024\033\356\031@\373\366\031\367\354(\023\351%\035\330\365 \343\362\352\013\361\335\r\004\322\365\020\335\315\376\340\317\t\365\326\372\366\337\000\013\327\335\013\327\300\363\373\322\325\b\340\332\007\342\363\366\310\372!\356\365\016\331\326\020\n\340\350\337\334\017 \344\000?\021\336\373+\375\360\023\b\374\030!\023\016\377\342\343\017\374\325\023\367\312\022\"\363\374\000\351\363\361\352\375\r\355\350\373\363\345\004\002\340\002\n\341\343\375\363\366\375\355\335\000\013\353\375\032\004\360\370\340\340\026\026\372\036(\354\360'\355\370\363\031\003\372('\365\024;\007\322\020\027\355#&\021(\033\001%=\b\3736#\353\007%\002\366*\016\005(\370\f-\373\366\024\350\356(\363\336\031\022\363\016\355\311\b\033\335\361>&\340\365\032\342\312\376\354\330\371\343\332\351\347\320\337\007\357\323\033\021\315\374\020\335\361\373\342\356\353\326\346\004\335\363\021\350\317\377\r\317\342\355\311\330\370\323\302\374\375\303\345\364\335\362\347\334\342\353\327\335\365\334\312\373\021\327\345\021\335\374\366\001\366\345\000\000\325\355$\026\342\363\367\330\000\004\370\026\003\335\365(\025\371\026\021\365\016-\r\006\033\374\365\026\370\375\"\375\372(\002\3675\017\332\f\027\374%\r\306\0024\374\37053\361\0006\030\340\017\030\375% \025$3\035\032;\030\352!+\356\f0\b\020 \016 !\b\023+\375\0017,\000\0162\023\021)\036\0310\037\367\033C\020\021\036\020.&\r\027+\020\r$\017\351\n#\344\0039\002\026\370\356\002\352\371\356\324\353\026\375\335\375\365\313\340\332\300\366\376\305\305\003\362\321\374\346\300\336\372\322\336\362\315\302\350\326\333\004\315\323\023\355\322\372\362\305\345\366\331\004\005\305\317\370\335\337\005\t\330\317\024 \342\350\357\330\366\t\377\n\026\000\372\020\372\335\006\004\322\342\017\373\345\350\343\372\003\343\371\025\352\317\353\016\373\370\005\377\007\017\004\t\027\002\341\340\016\n\001\b\367\025%\000\377\016\360\355\023\026\361\003\016\327\354\030\357\373 \023\030\373('\000\013;%\356\033>%&\013\334\016=\370\321\031\033\364&&\355\374\030\356\003$\f\365\020\354\352/\001\362!\001\362\034'\006\016\024\370\"+\b\367\360\320\330\356\355\343\320\007\025\334\360\000\345\332\340\311\345\004\325\337\375\333\310\004\006\317\315\372\363\345\370\347\343\362\315\352\024\371\352\350\000\347\362\r\345\355\376\331\337\365\343\331\311\356\365\325\336\320\347\375\311\315\004\367\315\342\364\340\373\000\326\345\007\325\345\020\032\022\332\373\035\360\332\016#\366\374\b\0161\024\341\002/\367\333\020\035\000\033:\030!7\032\"3\030\r7\026\001,\025\n/!\013%\036\r%*\017#+ 3=\021\023,\b\365\365$>\020\03682()\003\b=\003\002=\n\336#@\021\000'\037\0244)&5\006\013:&\023\017+\030\0220\021\0346\033\03500.\b\022.\036\031\b\0266\t\360!;\024\023*#31\020\025B\025\025\361\f\035\323\310\017\013\325\356\365\321\356\341\310\377\367\315\375.\345\334\001\372\342\352\373\347\375\370\331\332\365\335\322\016\t\373\r\353\340\374\362\336\365\331\311\375\003\344\360\002\344\364\023\360\370; \326\340\022\027\365\363\372\005\036\"\371\3631\376\3505\f\341\027\027\365\377\036\b\365\017\001\005\030\365\335\000\361\340\375\017\007\n\373\331\367\005\364\371\021\026\b\006\365\361\013\b\353\0010\r\347\000\030\003\000\001\365\t\033\377\344\005\b\016\373\021;\013\357\034+\362\r\030\335\n\030\344\022\027\350\013E\372\336\030\021\360\000\002\345\013\n\356\366\031\017\360\004\360\351\032\373\340\r\001\365#\005\307\346\370\330\357\025\343\347\016\337\310\0238\352\327\003\363\314\337\335\315\370\t\337\340\023\340\335\026\345\300\373\375\305\342\005\335\321\373\343\320\355\351\325\000\370\323\350\332\312\356\362\305\346\374\335\277\331\375\336\003\026\332\325\370\332\323\000\343\305\350\366\321\332\342\301\310\365\360\312\322\325\340\007\013)\001\352\f\030\342\362\025\360\027.\350\b \343\355&\364\305\013\016\335\b\023\347\020.\t\t\"\r\373\017\370\331\025\023\350\017\b\365*1\001\026\030\350\371)\005\3728\r\325\001(\361\322\023,\000\020\r\324\372+\376\b2\357\3723\007\304\362 \345\365&\001\353\036\032\006 #\013%%\020 \027\013\034+\357\36641\005\375!\007\021E3\022-\033\004+ \375\022+\021\035'\004\367%9 \035\020\022\001\373\020\002\323\372+\020\001\365\337\020=\375\372\036\343\344#\013\335\r\n\306\366\023\340\362\032\337\325\001\353\333\002\004\315\362\376\321\343\327\311\373\003\355#+\347\351\021\364\326 \020\307\365\r\345\310\375(\372\r\030\316\321\373\342\352\033\355\326\n\026\347\365\017\335\331\r\375\334\365\363\365\020\005\354\373\363\360\n\030\013\001\036\357\314\374\005\376\000\367\335\334\371\n\000\000\361\363\036\024\355\004\026\002\030-\b\377\037\030\001\b\026\037\360\362\004\032\350\363\020\0268\035\361\005-\b\3765\025\001-\"\372\"$\342\005*\004\0076\020\371& \376\025&\361\016)\020!\002\337\013\372\307\3745\370\345\036\005\336\035\024\315\n;&\377\000\032\333\363(\362\345\006\005\366\020\013\372\020\t\356\022\"\376\331\372\002\342\360\327\273\354\364\341\377\353\320\310\344\353\343\020\006\335\352\340\314\373\373\314\316\340\331\345\373\340\305\365\370\303\343\360\307\312\366\335\325\013\366\315\305\330\350\356\352\370\362\320\335\333\307\352\357\323\321\374\347\332\000\347\322\373\001\331\017\036\325\351\b\357\365\007\355\350\b\r\355\370\002\336\372\016\376)\036\342\033#\327\3521\023\360,\017\357.%\350\373\022\374\350\370.\364\3425/\033(%\033+(#C/\000\032:.\366\b5(=\036\344\r\"\f3\035\013\022\030!\030..\035(#\341\nG!\023\"\023\0222+\374\035$\352\020-\016\371\031\362\320#7\r\372\005\013\r\003'\024\007\017\005\340\351\360\333\310\003\375\336\375\340\277\362\n\320\363\n\313\323\376\343\362\361\302\276\341\372\344\353\355\322\337\352\325\366\t\322\002&\330\335\016\360\330\030\365\323\016\000\333\335\345\320\300\333\026\370\302\340\363\363\355\327\322\357\351\334\006\n\334\337\016\022\353\364\005\362\034\032\325\363\013\3731\026\353\024\030\004\360\t\000\362\b#\373\356%\016\355\003\025\005\001\373\365#$\362\0220\026\0165\001\320\023#\370\375\013\370\013\0071#\03665\033.-\017\371 %\0168\027\341\0271\001\020+\365\351\033\003\036>\035\376\b.,.#\024\037\035\017\035+\376\013/\367\373%\006\350\"\021\365#\023\005\0324\030\343\377(\035\007\345\323\366\006\361\337\361\346\307\376\023\331\307\020\035\376\004\370\336\t(\343\340\346\313\025\035\317\345\007\346\323\013\367\327\372\033\006\321\346\352\305\332\375\373\003\344\335\r\000\322\340\004\353\356+\003\332\030\030\330\355\b\335\330\311\365\372\331\355\370\352\026\026\340\332\356\360\3676\016\321\b\017\357\0049\000\344\034\372\375#\020\375\b\007\373\024\034\005\n\376\347\370\013\361\365\b\345\352\035\033\377\020\373\355%'\005\025@ \323\366)\030%!\375\f'\033\t#\037\353\0139\004\333\023\f\360\027\036\372\376%\n\017\013\323\003+\355\350\"\376\324\035-\371\370\033*\016\033\033\341\354\020\006#\025\376%\t\335\360\026\b\005-\003\347(:\375\0036 \007\343\003&\017\013\350\323\0311\350\334\377\355\344+\023\322\003\024\355\353(\375\330\033\004\346\013\354\322\007\005\330\351\b\343\352\002\350\355\375\342\345\366\330\324\361\336\337\003\347\275\352\t\315\310\002\003\322\322\003\357\325\352\342\336\361\360\332\352\367\333\345\030\365\303\341\341\313\372\023\337\312\337\333\372\007\330\355\005\342\335&\027\321\360\004\342\305\354\n\016)\026\323\312\000\364\361\367\334# \326\352\377\343\340\006\347\325\013$\372\354\024\017\020\361\b\027\017;\033\335\013A\r\367(\020\346\017\032\343\005$\005\0034\036\362\036 \b.$\373#8\007\001*\021\0230\035\0378'\0353\377\355$\b\372+.\365\0006\t\350\r!\021\370\035$\001\f\013\002\016\034\016\005\002\343\353$\n\346\005\021\356\375%\t\002\n\002\023\016\350\005\037\005\363#,\004\n\013\005\355\370\341\333\034$\t\334\370\t\013\026\345\0303\325\330\005\355\347\024\375\331\371\034\r\367\000\346\363\327\000\365\312\013\033\323\352$\365\340\016\372\340\357\007\342\357\000\313\340\022\005\335\360\355\345\013\002\345\000\025\345\350\020\371\000\b\351\363\026\b\3703\b\325\033\027\375\033(\376\376&*\016\020\021\363\361\036+\030(0&(!\027)6\002\374;/\0362'\374\b2\036%0&88\017\0220\023\372\025\027\001\031.(\0355\033\376)%\030\016\r\022 .\016\034K\034\0063 \b) \371\371\020\032\025$\f#\373&/\365\r2\000\0068\377\350&\037\022\025\037\007\r-\353\340\f\373\321\363\356\334\t\365\300\342\007\323\342\004\325\345\r\343\335\003\356\325\034\020\313\366\360\314\365\005\317\320\345\360\342\362\013\317\277\340\343\320\343\360\350\366\343\302\362\034\335\327\r\370\332\365\003\327\333\367\326\334\360\340\363\005\346\322\364\345\320\377\366\315\317\336\326\340\364\347\325\004\013\330\332\333\315\352\356\325\356\013\364\341\r\373\331\375\366\337\320\310\330\363\376\346\355\332\366\013\375\002\r\365\357!\373\325\026\024\375\016\017\366\b+\004\353#!\357\027\022\336\016+\362\b0\343\3552\003\363(\023\002'\031\373+.\371\030#\361\n3\b\002\025\373\335\006D\023\354\003\371\333\370\360\355\034\020\333\375/\351\335\013\357\306\361\033\375\005\017\340\344\000\330\350\016\374\360\023\000\330\026\036\370\373\375\345\372\b\364\331\0011\365\347\375\334\366\004\324\364\t\357\333\n\n\340\000\362\350\375\353\330\376\f\354\340\326\357\344\345\375\355\340\320\007\001\305\374\373\314\337\340\277\334\365\327\302\003\020\327\373\003\313\330\373\342\374)\341\324\031\370\334\365\346\345\022\375\340\b\003\335\365\033\376\375\030\375\bF \335\3713\034\372.\032\345\030\005\357-:\000\0076\377\344\033\016\336\013\036\362\007&\373\375%\346\352#\023\013&\007\325\b)\b\030-\373\00300\000\365%\025\f/\025\032*\373\016(\016\370\022\023\364!\031\370&0\005\0320\036#\005\026\020\003#&\034\000!%\340\f0\020\032\035\362\003\034\n\351\013\"\352\r+\374\371\001\315\337\036\365\342\033\007\365\020\366\324\005\377\342\016\002\344\353\373\336\365\025\330\324*\034\312\325\003\364\327\r\374\317\000\361\303\344\022\350\351\034\377\347\020\376\307\370\013\331\352\023\342\3551\371\320\342\323\350\031\t\345\355\026\362\356\037\355\322\372\020\362\341\357\343\324\361\370\350\350\325\363\n\336\313\345\350\313\007\020\305\352\b\337\370\n\365\020\000\377\376\356\366\023\032\b\"$\360\377\033\n\"7\016\031*\020\005\035(\374\030?\025\034F\021\0030\002\355''\003\033+\005\037$\n1&\000\020+\t\025C\020\353\024&\377\377\b\370\377'\032\000#&\375\355\030\002\373*\036\0243+\364\0230\b\0176\013\377:3\027\r\366\000(&\025\b\034\b\0013 \366\003\036\035\036\033\366\332\373\022\n\013\365\b-\016\363\017\036\360\r(\331\360 \343\365'\005\350\351\000\360\331\311\320\316\306\341\355\320\321\345\313\345\007\326\340\020\345\312\002\005\320\356\024\346\361 \374\352\036\362\321\367\372\347\355\365\350\005\373\351\022\017\322\345\030\375\365\022\365\363\016\017\023-\r\330\356\035\030\003!0#\003\r\002\360\030\003\360\023!\371\372\027\363\365\036\016\372\n\020\036!\371\355\013\375\350\373\365\335\351\f\377\354\004\001\373\031?\024\347\024\036\034!\002\b87\033&0\021 ?\000\375@\025\374.\035\354\325\026+\026\021\016\373\356\373\375\371\t\n\335\370\033\364\341\037\r\310\b!\342\372\030\321\343 \353\305\026\000\334\007\371\341\001\360\317\005\366\315\367\031\340\335\004\340\336\t\334\340\n\344\335\037'\331\303\353\352\312\355\354\347\336\325\325\302\370\353\274\314\344\333\312\355\325\314\343\320\315\333\313\330\370\327\277\340\333\275\341\344\301\301\335\315\272\345\335\274\304\007\373\277\340\332\324\352\316\310\343\337\322\342\342\327\365\005\331\312\360\346\342\354\335\000\330\003\r\355\0167\"\0234\025\3733.\337\357#\031\000\030\020\344\021\033\362\023<\370\3463#\355\"\034\377.+\373\036\"\364 )\370\n1\000\375)\020\0036\020\362#\022\357\025A\r\335\b\376\323\013\022\371\016\025\007\360\037\031\360\005\023\027\n#\017\376\r\370\002\030\002\001.\037\004\032\033\362\t-\025\n \033\b\026\023\373\344\f\r\335\372\002\372\031\370\333\360\343\340\002\357\314\371\r\364\353\365\333\365\022\000\r\351\376\356\312\341\026\374\350%\001\302\0024\372\317\370\362\362\013\345\345\013\355\303\335\003\351\315\003\007\341\003\372\331\361\004\365\370\356\325\357\006\361\001\022\335\356\032\374\370$\003\336\032\033\353\3777\023\335 \025\316\n3\003\t1\027\366\025\006\3730!\001\013\"\n\026.\016\031*\020\013.*\0335<\022\022:\031\0232\"#76#\025,\"\n%.\037:'\0204(\b+\025\332\b(\026\0307\375\3632.\035\017-!\007\003%\n\355,.\354\37173\362\t\005\004#\356\003. \367\366\004\353\335\013\375\320\002\016\353\362\365\363\005\370\352\370\003\331\357\032\352\360\020\326\324\031\370\311\003\005\301\3342\034\317\013 \305\345*\365\307\371\373\342\000\341\323\002\361\302\340\n\343\364\020\326\333\363\322\310\372\372\330\374\005\341\350 \357\313\365\332\313\362\024\363\370$\374\336\370\360\340\022\007\350\025\030\340\006\033\330\337\366\337\350$\362\321\b\365\370\373\035\017\363\365\032\375\312\000\036\355\355\021\021\374\034 \",\372\003+,\007\030C!\005--\370\023*\r\031$\025,&\t\0277\r\001'\366\3647\373\325-\022\323\023;\370\340\037)\363\016@\375\36352\374\020\"\0302\374\361&#\352\363*\377\375+\364\355\"\020\352\013\035\375\034\000\316\3512\023\344\025\022\352\360\034\374\371.\006\315\364\376\334\021\000\307\372&\353\3753\f\013\032\342\340+\n\350\031\001\346\327\360\005\351\334\020\021\320\343\363\313\347\020\340\333\363\333\360\021\340\320\013\023\324\330\023\367\352\024\t\335\372\377\322\356\006\343\373\001\322\341\377\355\362\026\337\323(\376\317#\020\273\355%\005\354\t\n\345\3750\r\363\025\027\t\026\007\373\"\372\340\0331\000\356\020\352\355,\006\360! \007\b\020\022?\034\326\354% \370\032\031\364\375\035\007\370\031\024\362\022!\365#\026\321\372@\021\002\031\006#@\005\345!\030\375\020\374\033\376\370\037\002\343\0263\021\033\n\317\3628\013\376\026\345\344$\n\340\0335\352\324\016\354\337\035\020\341\r\023\326\363\030\356\003\"\370\003\f\343\3603\000\330\031\001\336\025\023\320\345\370\335\323\374\375\277\330\013\352\305\337\322\340\000\332\315\b\375\272\307\345\330\333\003\330\326\023\360\323\370\343\337\351\310\310\b\020\312\326\006\374\335\005\367\315\363\371\327\325\353\335\332\r\t\331\025\027\316\353\030\362\375\002\325\347\001\355\320\365\355\331\341\320\353\343\334\020\375\313\332\345\360-/\325\334\032\003\371\020\355\332\023\023\340\t9\372\342&\t\350!\031\354\035!\344\374\023\366\004\017\375\027\036\365\3631\032\370\"\003\366,(\371\023 \365\324\n6\355\343 \031\363\370\330\3739\017\363(9\016\b\b\375\0075\t\360%\017\360\031\022\b#\002\324\365)\372\357\035\r\355#\036\352\024&\013\020%\377\330\013$\366 (\322\345\031\335\363'\013\030\037\006\346\013\002\360\026\b\362\354\344\027\022\357\370\345\317\0067\345\307\374\363\355\002\344\300\355\375\311\355\030\335\322\b\351\321\020\002\310\003\023\334\373\370\313\357\355\325\357\354\305\323\b\370\335\006\360\323\022\013\336\023>\r\344\370\b\340\312\376#-#\331\325\025\005\350\016\016\r6*\002\005\035\001\356\005\365\353\021\r\370\f!\002\373 \004\365\013\371\354\026\020\355\002$\033\022.\"\360\355\370\363\0320\370\3658\370\333\031\026\026&\030\373*\025\355 \033\030\b\37210\03483\003\b@\013\336\032%\033</\370\023\036\351\b\033\342\345\037\366\315\030.\367\016&\376\0341\376\017\"\013\037\031\342\350\030\006\352\026\027\325\373\021\345\n6\375\353\016\002\370\341\355\353\0060\002\333\360\344\322\375\335\272\370\023\322\343\005\343\342\373\335\306\355\354\343\350\367\350\354\365\330\332\352\313\320\364\341\324\315\355\354\315\353\367\345\335\307\302\352\373\340\327\005\345\265\327\341\322\351\343\321\020\000\312\360\001\365\352\326 \007\337\000\027\366\372+\n\344\f\020\364\022\034\366\034\036\355\030(\366\3663\r\320\007$\r\022 \t\017(\032\027\027\t+6\002\366(!\363\030=\t\020\023\346\013.\365\36341\032\b#\377\352& \0210\032\005.$\360\0001\354\3632\035\0211\022\345\023#\033\034\023\355\n(\025\031-\375\353\035\025\b\370\026\035\375\022\035\030\"\034\375\b\023\364\363\031\006\335\370\023\377\021\001\341\036/\b\r\020\021\013\340\034\n\321\351\376\331\357\024\360\332\002\000\326\366\003\335\013\023\350\t\f\327\320\034\020\312\353\360\325\353\370\340\353\365\333\360\000\333\362\000\335\320\370\000\310\345\006\345\005\374\270\363(\356\336\t\013\340\332'\025\323\004\375\342\025\007\355\006\013\364\0073\363\342\035\025\006& \000\021\023\f\035 \360\003-\016\0065\021\345\0346'\020\023\025\020%- \0373'%0\027\030@9\025\035$\r+3\f! \365\003\r\375\370\336\034-\372\n\013\332\002.\003\344\026&\366\r\r\325\363\025\003\027*\002\345 3\366\n\026\340\362\032\364\373\033\357\365&\b\r\034\000\362\021\023\341\001\021\350\0323\331\355+\364\325\b\030\331\312\036'\330\005\004\310\362\362\323\342\340\275\325\006\343\322\371\347\317\342\343\340\371\353\343\020\016\320\335\025\347\315\027\b\300\335\370\354\371\353\313\343\f\371\335\356\372\340\363\006\332\341\016\376\337\360\353\337\b\002\325\357\377\325\337\343\333\323\301\370\003\336\017\007\302\353&\373\315\370\005\325\376\023\332\320\340\335\352\037\013\344\370\373\353\006$\355\345\033\375\347\032\020\372\020\000\006)\023\365%\023\333\013\033\377\035C\013\371.\013\341\033F\005\332\032<\356\b-\374\030+\031#-\000\376\034\005\373\035\"\b\377\365\360\031\023\337\005+\367\361(\375\344(&\341\355\n\362\021%\353\343\035\024\341\373\032\356\000-\360\352\030\364\327\017\000\327\r\016\344\003#\362\365\003 \030\356\r\023\356$)\345\353%\004\317\377\030\343\375/\007\370\375\342\332\013\366\325\373\340\276\336\023\346\312\360\340\305\357\356\340\354\323\316\375\375\325\017\000\277\344\350\311\363\r\343\324\372\363\312\362\032\360\306\344\034\356\345\007\350\367\r\005\024\033\370\366\377\351\370\t\b\006\020\003\356\017\023\337\342\023\366\372\031\333\307\023&\365\375\t\342\340\025\b\354\n\376\322\346\026\370\376\036\346\356'\374\346\034\006\320\t\035\351\000\"\355\346\022\037\036\005\033!\n\036/\016\356#5\000\032=\030\b8!\0266 \b0\036\361,1\374\3735\022\365\034\t\346\r\025\r\037\367\345\026\037\370&3\000\006\023\333\366 \374\373\016\001\316\363!\005\345\344\016\373\350\363\347\364\373\350\b\030\363\370\370\303\332\007\372\364\013\351\305\005(\b\361\007\350\0003\003\332\005\f\341\000\007\361\343\365\355\360\022\373\340\363\r\325\351\025\325\362*\341\335\031\b\337\t\030\324\362)\000\336\000\356\356\343\000\363\362\373\002\000\355\003\022\356\372\t\370\366\034\034\b\b\367\363&#\366\032%\003\0032'\026;\024\355\020\032%C\013\350\033\"\b\036)\t\367\036\016\t5\036#E<\005\f=&\013\030+$ \b\375\034 \007\037; )F\004\360($\030:(\360\0205%\023(\016\r;+\007 '\000\034*\025\020\"\374\3779 \003\031@\016\r=\b\021;\372\3632(\004\037=\020\020)\t\374\023\016\017\366\017\370\345\366\003\360\364\013\356\316\370\t\343\325\365\t\017\013\335\325\016\n\340\002\003\315\326\013\375\356$\373\315\356\333\357'\363\325\007\377\352\000\375\355\350\361\350\354\005\331\342\032\025\350\355\035\370\320\372\b\000!\371\315\361\363\345\370\r\350\350+\031\361\003\362\347\020\025\362\366\004\371\372\372\335\350\020\361\325\372\005\347\354\000\346\351\030\355\332\035\001\323\347\376\362\353\000\352\350\f\370\340\003\374\346\361\357\340\375\020\351\343\356\361\364\337\375\020\343\372\021\332\323\025\003\325\013#\004\352\355\343\345\024\005\327\376\004\321\3770\001\340\001\355\331*\037\361\025\370\363-\373\332\f\363\321\022\037\003\025\007\323\360\036\326\310\r\b\313\336.\n\273\346\006\343\024\033\357\374\341\302\335\t\336\313\000\360\327\372\365\335\370\360\313\342\001\355\000\b\325\345 \374\323\355\363\350\350\005\350\345\016\345\315\016\013\330\347\355\345\347\363\344\322\352\375\350\374\370\350\375\342\305\351\023\370\352\337\350\363\330\353\f\340\003\026\325\313\022\006\305\370\r\356\363\b\345\310\344\363\316\365\030\320\344\f\365\335\353\340\325\022\016\350\375\366\356\027\364\276\370\367\320\020\021\336\n+\002\t1\360\270\004&\345\35110\345\362\033\375\017\023\376%\030\342\3653\025\371!\005\344\021\026\364\025\035\343\352\031\002\027*\363\3653#\001#)\034\025,\005\352\033\021\366!-\376\n\036\026\0335.\013\371\372\372\036%\035:%\366\373\026\024\033\016\000\025\346\360\026\351\016)\360\335\022\016\323\005\035\353\363+\020\355\373\013\345\372#\337\360\026\b\n\006\347\335\016\025\374\372\371\376\033\r\352\023\000\325\r\020\350\002\b\356\t+\006\320\b\036\332\351% \347\354\000\356\b\017\372\034\026\335\350\024\373\362 \003\335\001\b\363\024\034\345\345\020\370\n\016\343\362\"\b\355\n\376\360\367\034\032\371\372\357\352\025!\365\361\000\364\376\026\013\374\002\362\346\003\003\002\034\r\345\356\005\005\r"
	.size	sdata, 16384


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
