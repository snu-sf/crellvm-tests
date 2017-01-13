	.text
	.file	"blinds.bc"
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
	movabsq	$.L.str.14, %rdi
	movabsq	$.L.str.15, %rsi
	movabsq	$.L.str.16, %rdx
	movabsq	$.L.str.17, %rax
	movabsq	$.L.str.18, %r9
	movabsq	$.L.str.19, %rcx
	movabsq	$.L.str.20, %r8
	movl	$1, %r10d
	movl	$7, %r11d
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
	movl	$7, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.14, %rdi
	movabsq	$.L.str.21, %rsi
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
	subq	$112, %rsp
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
	movabsq	$.L.str.22, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.22, %rdi
	movabsq	$.L.str.23, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.22, %rdi
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
	jmp	.LBB1_23
.LBB1_23:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_24
.LBB1_24:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB1_11
	jmp	.LBB1_12
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.14, %rdi
	movabsq	$bvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-48(%rbp), %rdi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	blinds_dialog
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
	jmp	.LBB1_22
.LBB1_5:                                # %if.end
	jmp	.LBB1_13
.LBB1_6:                                # %sw.bb.9
	cmpl	$7, -12(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then.10
	movl	$1, -56(%rbp)
.LBB1_8:                                # %if.end.11
	cmpl	$3, -56(%rbp)
	jne	.LBB1_10
# BB#9:                                 # %if.then.13
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, bvals
	movq	-24(%rbp), %rax
	movl	168(%rax), %ecx
	movl	%ecx, bvals+4
	movq	-24(%rbp), %rax
	movl	208(%rax), %ecx
	movl	%ecx, bvals+8
	movq	-24(%rbp), %rax
	movl	248(%rax), %ecx
	movl	%ecx, bvals+12
.LBB1_10:                               # %if.end.26
	jmp	.LBB1_13
.LBB1_11:                               # %sw.bb.27
	movabsq	$.L.str.14, %rdi
	movabsq	$bvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB1_13
.LBB1_12:                               # %sw.default
	jmp	.LBB1_13
.LBB1_13:                               # %sw.epilog
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_15
# BB#14:                                # %lor.lhs.false
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB1_20
.LBB1_15:                               # %if.then.34
	movabsq	$.L.str.24, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movq	-48(%rbp), %rdi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	apply_blinds
	cmpl	$1, -52(%rbp)
	je	.LBB1_17
# BB#16:                                # %if.then.38
	callq	gimp_displays_flush
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB1_17:                               # %if.end.40
	cmpl	$0, -52(%rbp)
	jne	.LBB1_19
# BB#18:                                # %if.then.42
	movabsq	$.L.str.14, %rdi
	movabsq	$bvals, %rax
	movl	$16, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB1_19:                               # %if.end.44
	jmp	.LBB1_21
.LBB1_20:                               # %if.else
	movl	$0, -56(%rbp)
.LBB1_21:                               # %if.end.45
	movl	-56(%rbp), %eax
	movl	%eax, run.values+8
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB1_22:                               # %return
	addq	$112, %rsp
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
	.quad	4636737291354636288     # double 100
.LCPI3_2:
	.quad	4611686018427387904     # double 2
.LCPI3_3:
	.quad	4636033603912859648     # double 90
.LCPI3_4:
	.quad	4624633867356078080     # double 15
	.text
	.align	16, 0x90
	.type	blinds_dialog,@function
blinds_dialog:                          # @blinds_dialog
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
	subq	$568, %rsp              # imm = 0x238
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
	movabsq	$.L.str.25, %rax
	movl	$1, %esi
	movq	%rdi, -48(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	movabsq	$.L.str.26, %rdi
	callq	gettext
	movabsq	$.L.str.27, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.14, %r9
	movabsq	$.L.str.28, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.29, %r11
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
	callq	gimp_aspect_preview_new
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
	movabsq	$.L.str.30, %rsi
	movabsq	$dialog_update_preview, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	xorl	%edi, %edi
	movl	$12, %esi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
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
	movabsq	$.L.str.31, %rdi
	callq	gettext
	movabsq	$.L.str.32, %rdi
	movl	bvals+8, %r8d
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movl	%r8d, -228(%rbp)        # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.33, %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	movabsq	$gimp_radio_button_update, %rsi
	movabsq	$bvals, %r11
	addq	$8, %r11
	xorl	%ecx, %ecx
	leaq	-120(%rbp), %r14
	leaq	-128(%rbp), %r15
	xorl	%edx, %edx
	movl	%edx, %r12d
	movq	-224(%rbp), %r13        # 8-byte Reload
	movq	%rsi, -248(%rbp)        # 8-byte Spill
	movq	%r13, %rsi
	movq	-248(%rbp), %rdx        # 8-byte Reload
	movl	%ecx, -252(%rbp)        # 4-byte Spill
	movq	%r11, %rcx
	movl	-228(%rbp), %r8d        # 4-byte Reload
	movq	-240(%rbp), %r9         # 8-byte Reload
	movl	$0, (%rsp)
	movq	%r14, 8(%rsp)
	movq	%rax, 16(%rsp)
	movl	$1, 24(%rsp)
	movq	%r15, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	movq	%r12, -264(%rbp)        # 8-byte Spill
	callq	gimp_int_radio_group_new
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.34, %rsi
	movabsq	$gimp_preview_invalidate, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-120(%rbp), %rdi
	movq	-72(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.34, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-128(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-280(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.35, %rdi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.36, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -112(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.34, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$bvals, %rdi
	addq	$12, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-112(%rbp), %r11
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-320(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.34, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-328(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-112(%rbp), %rcx
	movq	%rax, -344(%rbp)        # 8-byte Spill
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	bvals+12, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	jne	.LBB3_2
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movq	-112(%rbp), %rdi
	callq	gtk_widget_set_sensitive
	movq	-112(%rbp), %rdi
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
.LBB3_2:                                # %if.end
	movl	$2, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-96(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-64(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -388(%rbp)        # 4-byte Spill
	movl	-388(%rbp), %ecx        # 4-byte Reload
	movl	-388(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movq	-96(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.37, %rdi
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$150, %r8d
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_3, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_4, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %edx
	xorps	%xmm1, %xmm1
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	cvtsi2sdl	bvals, %xmm3
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -416(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -420(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	%ecx, -424(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-424(%rbp), %r9d        # 4-byte Reload
	movsd	%xmm0, -432(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-432(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -440(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-440(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-440(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.38, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$bvals, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-448(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.38, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-104(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -456(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-456(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-96(%rbp), %rcx
	movq	%rax, -472(%rbp)        # 8-byte Spill
	movq	%rcx, -480(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.39, %rdi
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	$1, %edx
	movl	$150, %r8d
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm1, %xmm1
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	cvtsi2sdl	bvals+4, %xmm3
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movq	%rcx, -496(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -504(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-504(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -512(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-512(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-512(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.38, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$bvals, %rdi
	addq	$4, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rdi, -520(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-520(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.38, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-104(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -528(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-528(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rdi
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %eax
	movl	%eax, -132(%rbp)
	movq	-56(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-132(%rbp), %eax
	addq	$568, %rsp              # imm = 0x238
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	blinds_dialog, .Lfunc_end3-blinds_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	apply_blinds,@function
apply_blinds:                           # @apply_blinds
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
	leaq	-160(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	gimp_context_get_background
	cmpl	$0, bvals+12
	movl	%eax, -252(%rbp)        # 4-byte Spill
	je	.LBB4_2
# BB#1:                                 # %if.then
	leaq	-160(%rbp), %rdi
	xorps	%xmm0, %xmm0
	callq	gimp_rgb_set_alpha
.LBB4_2:                                # %if.end
	leaq	-160(%rbp), %rsi
	leaq	-164(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_get_color_uchar
	leaq	-168(%rbp), %rsi
	leaq	-172(%rbp), %rdx
	leaq	-176(%rbp), %rcx
	leaq	-180(%rbp), %r8
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	jne	.LBB4_4
# BB#3:                                 # %if.then.4
	jmp	.LBB4_51
.LBB4_4:                                # %if.end.5
	leaq	-104(%rbp), %rdi
	xorl	%eax, %eax
	movq	-8(%rbp), %rsi
	movl	-168(%rbp), %edx
	movl	-172(%rbp), %ecx
	movl	-176(%rbp), %r8d
	movl	-180(%rbp), %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -256(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	leaq	-56(%rbp), %rdi
	movl	$1, %eax
	movq	-8(%rbp), %rsi
	movl	-168(%rbp), %edx
	movl	-172(%rbp), %ecx
	movl	-176(%rbp), %r8d
	movl	-180(%rbp), %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -260(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movl	-176(%rbp), %eax
	cmpl	-180(%rbp), %eax
	jle	.LBB4_6
# BB#5:                                 # %cond.true
	movl	-176(%rbp), %eax
	movl	%eax, -264(%rbp)        # 4-byte Spill
	jmp	.LBB4_7
.LBB4_6:                                # %cond.false
	movl	-180(%rbp), %eax
	movl	%eax, -264(%rbp)        # 4-byte Spill
.LBB4_7:                                # %cond.end
	movl	-264(%rbp), %eax        # 4-byte Reload
	movl	$1, %ecx
	movl	%ecx, %esi
	shll	$2, %eax
	imull	$40, %eax, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -112(%rbp)
	movl	-176(%rbp), %ecx
	cmpl	-180(%rbp), %ecx
	jle	.LBB4_9
# BB#8:                                 # %cond.true.10
	movl	-176(%rbp), %eax
	movl	%eax, -268(%rbp)        # 4-byte Spill
	jmp	.LBB4_10
.LBB4_9:                                # %cond.false.11
	movl	-180(%rbp), %eax
	movl	%eax, -268(%rbp)        # 4-byte Spill
.LBB4_10:                               # %cond.end.12
	movl	-268(%rbp), %eax        # 4-byte Reload
	movl	$1, %ecx
	movl	%ecx, %esi
	shll	$2, %eax
	imull	$40, %eax, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -120(%rbp)
	cmpl	$1, bvals+8
	jne	.LBB4_23
# BB#11:                                # %if.then.20
	movl	$0, -128(%rbp)
.LBB4_12:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_17 Depth 2
	movl	-128(%rbp), %eax
	cmpl	-180(%rbp), %eax
	jge	.LBB4_22
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB4_12 Depth=1
	movl	-128(%rbp), %eax
	addl	$40, %eax
	cmpl	-180(%rbp), %eax
	jle	.LBB4_15
# BB#14:                                # %if.then.25
                                        #   in Loop: Header=BB4_12 Depth=1
	movl	-180(%rbp), %eax
	subl	-128(%rbp), %eax
	movl	%eax, -188(%rbp)
	jmp	.LBB4_16
.LBB4_15:                               # %if.else
                                        #   in Loop: Header=BB4_12 Depth=1
	movl	$40, -188(%rbp)
.LBB4_16:                               # %if.end.26
                                        #   in Loop: Header=BB4_12 Depth=1
	leaq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movl	-168(%rbp), %edx
	movl	-172(%rbp), %eax
	addl	-128(%rbp), %eax
	movl	-176(%rbp), %r8d
	movl	-188(%rbp), %r9d
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_get_rect
	movl	$0, -184(%rbp)
.LBB4_17:                               # %for.cond.28
                                        #   Parent Loop BB4_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$40, -184(%rbp)
	jge	.LBB4_20
# BB#18:                                # %for.body.31
                                        #   in Loop: Header=BB4_17 Depth=2
	leaq	-164(%rbp), %r8
	movq	-112(%rbp), %rax
	movl	-176(%rbp), %ecx
	imull	-184(%rbp), %ecx
	imull	-88(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	-120(%rbp), %rdx
	movl	-176(%rbp), %ecx
	imull	-184(%rbp), %ecx
	imull	-88(%rbp), %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movl	-176(%rbp), %ecx
	movl	-88(%rbp), %edi
	movl	%edi, -272(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movl	%ecx, %edx
	movl	-272(%rbp), %ecx        # 4-byte Reload
	callq	blindsapply
# BB#19:                                # %for.inc
                                        #   in Loop: Header=BB4_17 Depth=2
	movl	-184(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -184(%rbp)
	jmp	.LBB4_17
.LBB4_20:                               # %for.end
                                        #   in Loop: Header=BB4_12 Depth=1
	leaq	-56(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movl	-168(%rbp), %edx
	movl	-172(%rbp), %eax
	addl	-128(%rbp), %eax
	movl	-176(%rbp), %r8d
	movl	-188(%rbp), %r9d
	movl	%eax, %ecx
	callq	gimp_pixel_rgn_set_rect
	cvtsi2sdl	-128(%rbp), %xmm0
	cvtsi2sdl	-180(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -276(%rbp)        # 4-byte Spill
# BB#21:                                # %for.inc.45
                                        #   in Loop: Header=BB4_12 Depth=1
	movl	-128(%rbp), %eax
	addl	$40, %eax
	movl	%eax, -128(%rbp)
	jmp	.LBB4_12
.LBB4_22:                               # %for.end.47
	jmp	.LBB4_50
.LBB4_23:                               # %if.else.48
	movl	$4, %eax
	movl	%eax, %esi
	movl	-180(%rbp), %eax
	shll	$2, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, -200(%rbp)
	movl	-180(%rbp), %ecx
	shll	$2, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$160, %ecx
	movl	%ecx, %edi
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -208(%rbp)
	callq	g_malloc_n
	xorl	%ecx, %ecx
	movl	$4, %edx
                                        # kill: RDX<def> EDX<kill>
	leaq	-220(%rbp), %rsi
	movq	%rax, -216(%rbp)
	movq	%rsi, %rdi
	movl	%ecx, %esi
	movl	%ecx, -280(%rbp)        # 4-byte Spill
	callq	memset
	movq	-208(%rbp), %rax
	movl	-180(%rbp), %ecx
	shll	$2, %ecx
	movslq	%ecx, %rdx
	movq	%rax, %rdi
	movl	-280(%rbp), %esi        # 4-byte Reload
	callq	memset
	movl	$0, -128(%rbp)
.LBB4_24:                               # %for.cond.58
                                        # =>This Inner Loop Header: Depth=1
	movl	-128(%rbp), %eax
	cmpl	-180(%rbp), %eax
	jge	.LBB4_27
# BB#25:                                # %for.body.61
                                        #   in Loop: Header=BB4_24 Depth=1
	movl	-128(%rbp), %eax
	addl	$1, %eax
	movslq	-128(%rbp), %rcx
	movq	-200(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
# BB#26:                                # %for.inc.63
                                        #   in Loop: Header=BB4_24 Depth=1
	movl	-128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -128(%rbp)
	jmp	.LBB4_24
.LBB4_27:                               # %for.end.65
	movl	$4, %ecx
	leaq	-220(%rbp), %r8
	movq	-200(%rbp), %rax
	movq	-208(%rbp), %rdx
	movl	-180(%rbp), %esi
	movq	%rax, %rdi
	movl	%esi, -284(%rbp)        # 4-byte Spill
	movq	%rdx, %rsi
	movl	-284(%rbp), %edx        # 4-byte Reload
	callq	blindsapply
	movl	$0, -192(%rbp)
.LBB4_28:                               # %for.cond.67
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_30 Depth 2
	cmpl	$40, -192(%rbp)
	jge	.LBB4_35
# BB#29:                                # %for.body.70
                                        #   in Loop: Header=BB4_28 Depth=1
	movl	-192(%rbp), %eax
	imull	-88(%rbp), %eax
	movslq	%eax, %rcx
	addq	-216(%rbp), %rcx
	movq	%rcx, -232(%rbp)
	movl	$0, -224(%rbp)
.LBB4_30:                               # %for.cond.75
                                        #   Parent Loop BB4_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-224(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jge	.LBB4_33
# BB#31:                                # %for.body.79
                                        #   in Loop: Header=BB4_30 Depth=2
	movslq	-224(%rbp), %rax
	movb	-164(%rbp,%rax), %cl
	movslq	-224(%rbp), %rax
	movq	-232(%rbp), %rdx
	movb	%cl, (%rdx,%rax)
# BB#32:                                # %for.inc.84
                                        #   in Loop: Header=BB4_30 Depth=2
	movl	-224(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -224(%rbp)
	jmp	.LBB4_30
.LBB4_33:                               # %for.end.86
                                        #   in Loop: Header=BB4_28 Depth=1
	jmp	.LBB4_34
.LBB4_34:                               # %for.inc.87
                                        #   in Loop: Header=BB4_28 Depth=1
	movl	-192(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -192(%rbp)
	jmp	.LBB4_28
.LBB4_35:                               # %for.end.89
	movl	$0, -124(%rbp)
.LBB4_36:                               # %for.cond.90
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_41 Depth 2
	movl	-124(%rbp), %eax
	cmpl	-176(%rbp), %eax
	jge	.LBB4_49
# BB#37:                                # %for.body.93
                                        #   in Loop: Header=BB4_36 Depth=1
	movl	-124(%rbp), %eax
	addl	$40, %eax
	cmpl	-176(%rbp), %eax
	jle	.LBB4_39
# BB#38:                                # %if.then.99
                                        #   in Loop: Header=BB4_36 Depth=1
	movl	-176(%rbp), %eax
	subl	-124(%rbp), %eax
	movl	%eax, -240(%rbp)
	jmp	.LBB4_40
.LBB4_39:                               # %if.else.101
                                        #   in Loop: Header=BB4_36 Depth=1
	movl	$40, -240(%rbp)
.LBB4_40:                               # %if.end.102
                                        #   in Loop: Header=BB4_36 Depth=1
	leaq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movl	-168(%rbp), %eax
	addl	-124(%rbp), %eax
	movl	-172(%rbp), %ecx
	movl	-240(%rbp), %r8d
	movl	-180(%rbp), %r9d
	movl	%eax, %edx
	callq	gimp_pixel_rgn_get_rect
	movl	$0, -236(%rbp)
.LBB4_41:                               # %for.cond.104
                                        #   Parent Loop BB4_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-236(%rbp), %eax
	cmpl	-180(%rbp), %eax
	jge	.LBB4_47
# BB#42:                                # %for.body.107
                                        #   in Loop: Header=BB4_41 Depth=2
	movslq	-236(%rbp), %rax
	movq	-208(%rbp), %rcx
	cmpl	$0, (%rcx,%rax,4)
	jne	.LBB4_44
# BB#43:                                # %if.then.112
                                        #   in Loop: Header=BB4_41 Depth=2
	movq	-216(%rbp), %rax
	movq	%rax, -248(%rbp)
	jmp	.LBB4_45
.LBB4_44:                               # %if.else.113
                                        #   in Loop: Header=BB4_41 Depth=2
	movq	-112(%rbp), %rax
	movl	-240(%rbp), %ecx
	imull	-88(%rbp), %ecx
	movslq	-236(%rbp), %rdx
	movq	-208(%rbp), %rsi
	movl	(%rsi,%rdx,4), %edi
	subl	$1, %edi
	imull	%edi, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -248(%rbp)
.LBB4_45:                               # %if.end.122
                                        #   in Loop: Header=BB4_41 Depth=2
	movq	-120(%rbp), %rax
	movl	-236(%rbp), %ecx
	imull	-240(%rbp), %ecx
	imull	-88(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	-248(%rbp), %rsi
	movl	-240(%rbp), %ecx
	imull	-88(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	%rax, %rdi
	callq	memcpy
# BB#46:                                # %for.inc.131
                                        #   in Loop: Header=BB4_41 Depth=2
	movl	-236(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -236(%rbp)
	jmp	.LBB4_41
.LBB4_47:                               # %for.end.133
                                        #   in Loop: Header=BB4_36 Depth=1
	leaq	-56(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movl	-168(%rbp), %eax
	addl	-124(%rbp), %eax
	movl	-172(%rbp), %ecx
	movl	-240(%rbp), %r8d
	movl	-180(%rbp), %r9d
	movl	%eax, %edx
	callq	gimp_pixel_rgn_set_rect
	cvtsi2sdl	-124(%rbp), %xmm0
	cvtsi2sdl	-176(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -288(%rbp)        # 4-byte Spill
# BB#48:                                # %for.inc.139
                                        #   in Loop: Header=BB4_36 Depth=1
	movl	-124(%rbp), %eax
	addl	$40, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB4_36
.LBB4_49:                               # %for.end.141
	movq	-216(%rbp), %rdi
	callq	g_free
	movq	-200(%rbp), %rdi
	callq	g_free
	movq	-208(%rbp), %rdi
	callq	g_free
.LBB4_50:                               # %if.end.142
	movq	-112(%rbp), %rdi
	callq	g_free
	movq	-120(%rbp), %rdi
	callq	g_free
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-8(%rbp), %rdi
	movl	%eax, -292(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-168(%rbp), %esi
	movl	-172(%rbp), %edx
	movl	-176(%rbp), %ecx
	movl	-180(%rbp), %r8d
	movl	%eax, -296(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -300(%rbp)        # 4-byte Spill
.LBB4_51:                               # %return
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end4:
	.size	apply_blinds, .Lfunc_end4-apply_blinds
	.cfi_endproc

	.align	16, 0x90
	.type	dialog_update_preview,@function
dialog_update_preview:                  # @dialog_update_preview
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
	subq	$160, %rsp
	leaq	-88(%rbp), %rax
	leaq	-92(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_preview_get_size
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_bpp
	leaq	-88(%rbp), %rsi
	leaq	-92(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	movl	%eax, -96(%rbp)
	movq	-8(%rbp), %r8
	movl	(%r8), %edi
	callq	gimp_drawable_get_thumbnail_data
	leaq	-80(%rbp), %rdi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_context_get_background
	cmpl	$0, bvals+12
	movl	%eax, -148(%rbp)        # 4-byte Spill
	je	.LBB5_2
# BB#1:                                 # %if.then
	leaq	-80(%rbp), %rdi
	xorps	%xmm0, %xmm0
	callq	gimp_rgb_set_alpha
.LBB5_2:                                # %if.end
	leaq	-80(%rbp), %rsi
	leaq	-84(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_get_color_uchar
	movl	$1, %edi
	movl	%edi, %esi
	movl	-88(%rbp), %edi
	imull	-92(%rbp), %edi
	imull	-96(%rbp), %edi
	movslq	%edi, %rdi
	callq	g_malloc_n
	movq	%rax, -40(%rbp)
	cmpl	$1, bvals+8
	jne	.LBB5_8
# BB#3:                                 # %if.then.8
	movl	$0, -20(%rbp)
.LBB5_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB5_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB5_4 Depth=1
	leaq	-84(%rbp), %r8
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	-88(%rbp), %ecx
	imull	-96(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movl	-88(%rbp), %edx
	movl	-96(%rbp), %ecx
	movq	%rax, %rsi
	callq	blindsapply
	movl	-88(%rbp), %ecx
	imull	-96(%rbp), %ecx
	movq	-32(%rbp), %rax
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movq	%rax, -32(%rbp)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB5_4 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB5_4
.LBB5_7:                                # %for.end
	jmp	.LBB5_28
.LBB5_8:                                # %if.else
	movl	$1, %eax
	movl	%eax, %esi
	movl	-92(%rbp), %eax
	shll	$2, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -112(%rbp)
	movl	-92(%rbp), %ecx
	shll	$2, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc0_n
	xorl	%esi, %esi
	movl	$4, %ecx
	movl	%ecx, %edx
	leaq	-124(%rbp), %rdi
	movq	%rax, -120(%rbp)
	callq	memset
	movl	$0, -100(%rbp)
.LBB5_9:                                # %for.cond.23
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_11 Depth 2
	movl	-100(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jge	.LBB5_16
# BB#10:                                # %for.body.26
                                        #   in Loop: Header=BB5_9 Depth=1
	movl	-96(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-100(%rbp), %eax
	imull	-132(%rbp), %eax
	movslq	%eax, %rcx
	addq	-40(%rbp), %rcx
	movq	%rcx, -144(%rbp)
	movl	$0, -128(%rbp)
.LBB5_11:                               # %for.cond.28
                                        #   Parent Loop BB5_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-128(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jge	.LBB5_14
# BB#12:                                # %for.body.31
                                        #   in Loop: Header=BB5_11 Depth=2
	movslq	-128(%rbp), %rax
	movb	-84(%rbp,%rax), %cl
	movslq	-128(%rbp), %rax
	movq	-144(%rbp), %rdx
	movb	%cl, (%rdx,%rax)
# BB#13:                                # %for.inc.36
                                        #   in Loop: Header=BB5_11 Depth=2
	movl	-128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -128(%rbp)
	jmp	.LBB5_11
.LBB5_14:                               # %for.end.38
                                        #   in Loop: Header=BB5_9 Depth=1
	jmp	.LBB5_15
.LBB5_15:                               # %for.inc.39
                                        #   in Loop: Header=BB5_9 Depth=1
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB5_9
.LBB5_16:                               # %for.end.41
	movl	$0, -20(%rbp)
.LBB5_17:                               # %for.cond.42
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB5_20
# BB#18:                                # %for.body.45
                                        #   in Loop: Header=BB5_17 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movb	%al, %cl
	movslq	-20(%rbp), %rdx
	movq	-112(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#19:                                # %for.inc.49
                                        #   in Loop: Header=BB5_17 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB5_17
.LBB5_20:                               # %for.end.51
	movl	$1, %ecx
	leaq	-124(%rbp), %r8
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movl	-92(%rbp), %edx
	callq	blindsapply
	movl	$0, -20(%rbp)
.LBB5_21:                               # %for.cond.53
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jge	.LBB5_27
# BB#22:                                # %for.body.56
                                        #   in Loop: Header=BB5_21 Depth=1
	movslq	-20(%rbp), %rax
	movq	-120(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$0, %edx
	jne	.LBB5_24
# BB#23:                                # %if.then.62
                                        #   in Loop: Header=BB5_21 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB5_25
.LBB5_24:                               # %if.else.63
                                        #   in Loop: Header=BB5_21 Depth=1
	movq	-48(%rbp), %rax
	movl	-88(%rbp), %ecx
	imull	-96(%rbp), %ecx
	movslq	-20(%rbp), %rdx
	movq	-120(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edi
	subl	$1, %edi
	imull	%edi, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
.LBB5_25:                               # %if.end.71
                                        #   in Loop: Header=BB5_21 Depth=1
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	imull	-88(%rbp), %ecx
	imull	-96(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	-32(%rbp), %rsi
	movl	-88(%rbp), %ecx
	imull	-96(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	%rax, %rdi
	callq	memcpy
# BB#26:                                # %for.inc.78
                                        #   in Loop: Header=BB5_21 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB5_21
.LBB5_27:                               # %for.end.80
	movq	-112(%rbp), %rdi
	callq	g_free
	movq	-120(%rbp), %rdi
	callq	g_free
.LBB5_28:                               # %if.end.81
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-88(%rbp), %eax
	imull	-96(%rbp), %eax
	movl	%eax, %edx
	callq	gimp_preview_draw_buffer
	movq	-40(%rbp), %rdi
	callq	g_free
	movq	-48(%rbp), %rdi
	callq	g_free
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	dialog_update_preview, .Lfunc_end5-dialog_update_preview
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
.LCPI6_2:
	.quad	4645040803167600640     # double 360
.LCPI6_3:
	.quad	4614256656552045848     # double 3.1415926535897931
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI6_1:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	blindsapply,@function
blindsapply:                            # @blindsapply
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movl	$0, -52(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
	movl	-52(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB6_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-52(%rbp), %eax
	imull	-24(%rbp), %eax
	movslq	%eax, %rcx
	addq	-16(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movl	$0, -56(%rbp)
.LBB6_3:                                # %for.cond.1
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-56(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB6_6
# BB#4:                                 # %for.body.3
                                        #   in Loop: Header=BB6_3 Depth=2
	movslq	-56(%rbp), %rax
	movq	-32(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB6_3
.LBB6_6:                                # %for.end
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_7
.LBB6_7:                                # %for.inc.8
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB6_1
.LBB6_8:                                # %for.end.10
	movl	-20(%rbp), %eax
	movl	%eax, -76(%rbp)
	movl	$0, -52(%rbp)
.LBB6_9:                                # %for.cond.11
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	bvals+4, %eax
	jge	.LBB6_12
# BB#10:                                # %for.body.13
                                        #   in Loop: Header=BB6_9 Depth=1
	movl	-76(%rbp), %eax
	movl	bvals+4, %ecx
	subl	-52(%rbp), %ecx
	cltd
	idivl	%ecx
	movslq	-52(%rbp), %rsi
	movl	%eax, fanwidths(,%rsi,4)
	movslq	-52(%rbp), %rsi
	movl	fanwidths(,%rsi,4), %eax
	movl	-76(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -76(%rbp)
# BB#11:                                # %for.inc.19
                                        #   in Loop: Header=BB6_9 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB6_9
.LBB6_12:                               # %for.end.21
	movl	$0, -76(%rbp)
	movl	$1, -60(%rbp)
.LBB6_13:                               # %for.cond.22
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_15 Depth 2
	movl	-60(%rbp), %eax
	cmpl	bvals+4, %eax
	jg	.LBB6_20
# BB#14:                                # %for.body.24
                                        #   in Loop: Header=BB6_13 Depth=1
	movl	$2, %eax
	movl	-76(%rbp), %ecx
	movl	-60(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rsi
	movl	fanwidths(,%rsi,4), %edx
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-92(%rbp), %edi         # 4-byte Reload
	idivl	%edi
	addl	%eax, %ecx
	movl	%ecx, -80(%rbp)
	movl	-60(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rsi
	movl	fanwidths(,%rsi,4), %eax
	addl	-76(%rbp), %eax
	movl	%eax, -76(%rbp)
	movl	-80(%rbp), %eax
	imull	-24(%rbp), %eax
	movslq	%eax, %rsi
	addq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movl	-80(%rbp), %eax
	imull	-24(%rbp), %eax
	movslq	%eax, %rsi
	addq	-16(%rbp), %rsi
	movq	%rsi, -48(%rbp)
	movl	$0, -56(%rbp)
.LBB6_15:                               # %for.cond.39
                                        #   Parent Loop BB6_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-56(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB6_18
# BB#16:                                # %for.body.41
                                        #   in Loop: Header=BB6_15 Depth=2
	movslq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
# BB#17:                                # %for.inc.46
                                        #   in Loop: Header=BB6_15 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB6_15
.LBB6_18:                               # %for.end.48
                                        #   in Loop: Header=BB6_13 Depth=1
	jmp	.LBB6_19
.LBB6_19:                               # %for.inc.49
                                        #   in Loop: Header=BB6_13 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB6_13
.LBB6_20:                               # %for.end.51
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI6_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI6_3, %xmm2         # xmm2 = mem[0],zero
	movl	bvals, %eax
	shll	$1, %eax
	cvtsi2sdl	%eax, %xmm3
	mulsd	%xmm2, %xmm3
	divsd	%xmm1, %xmm3
	movsd	%xmm3, -72(%rbp)
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	cos
	movapd	.LCPI6_1(%rip), %xmm1   # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -72(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -60(%rbp)
.LBB6_21:                               # %for.cond.57
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_23 Depth 2
                                        #       Child Loop BB6_25 Depth 3
                                        #       Child Loop BB6_29 Depth 3
	movl	-60(%rbp), %eax
	cmpl	bvals+4, %eax
	jge	.LBB6_36
# BB#22:                                # %for.body.60
                                        #   in Loop: Header=BB6_21 Depth=1
	movl	$0, -52(%rbp)
.LBB6_23:                               # %for.cond.61
                                        #   Parent Loop BB6_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_25 Depth 3
                                        #       Child Loop BB6_29 Depth 3
	movl	$2, %eax
	movl	-52(%rbp), %ecx
	movslq	-60(%rbp), %rdx
	movl	fanwidths(,%rdx,4), %esi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-108(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	%eax, %ecx
	jge	.LBB6_34
# BB#24:                                # %for.body.67
                                        #   in Loop: Header=BB6_23 Depth=2
	movl	$2, %eax
	movslq	-60(%rbp), %rcx
	movl	fanwidths(,%rcx,4), %edx
	movl	%eax, -112(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-112(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movl	%eax, -88(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-88(%rbp), %xmm1
	movl	-52(%rbp), %eax
	cltd
	idivl	-88(%rbp)
	cvtsi2sdl	%edx, %xmm2
	subsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movl	%edx, -84(%rbp)
	movl	-76(%rbp), %edx
	addl	-52(%rbp), %edx
	imull	-24(%rbp), %edx
	movslq	%edx, %rcx
	addq	-8(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movl	-76(%rbp), %edx
	addl	-52(%rbp), %edx
	addl	-84(%rbp), %edx
	imull	-24(%rbp), %edx
	movslq	%edx, %rcx
	addq	-16(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movl	$0, -56(%rbp)
.LBB6_25:                               # %for.cond.85
                                        #   Parent Loop BB6_21 Depth=1
                                        #     Parent Loop BB6_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-56(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB6_28
# BB#26:                                # %for.body.88
                                        #   in Loop: Header=BB6_25 Depth=3
	movslq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
# BB#27:                                # %for.inc.93
                                        #   in Loop: Header=BB6_25 Depth=3
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB6_25
.LBB6_28:                               # %for.end.95
                                        #   in Loop: Header=BB6_23 Depth=2
	movl	$2, %eax
	movl	-52(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -56(%rbp)
	movl	-76(%rbp), %ecx
	movslq	-60(%rbp), %rdx
	addl	fanwidths(,%rdx,4), %ecx
	subl	-56(%rbp), %ecx
	movslq	-60(%rbp), %rdx
	movl	fanwidths(,%rdx,4), %esi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-116(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	subl	%edx, %ecx
	imull	-24(%rbp), %ecx
	movslq	%ecx, %rdi
	addq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)
	movl	-76(%rbp), %ecx
	movslq	-60(%rbp), %rdi
	addl	fanwidths(,%rdi,4), %ecx
	subl	-56(%rbp), %ecx
	movslq	-60(%rbp), %rdi
	movl	fanwidths(,%rdi,4), %edx
	movl	%edx, %eax
	cltd
	idivl	%esi
	subl	%edx, %ecx
	subl	-84(%rbp), %ecx
	imull	-24(%rbp), %ecx
	movslq	%ecx, %rdi
	addq	-16(%rbp), %rdi
	movq	%rdi, -48(%rbp)
	movl	$0, -56(%rbp)
.LBB6_29:                               # %for.cond.120
                                        #   Parent Loop BB6_21 Depth=1
                                        #     Parent Loop BB6_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-56(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB6_32
# BB#30:                                # %for.body.123
                                        #   in Loop: Header=BB6_29 Depth=3
	movslq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
# BB#31:                                # %for.inc.128
                                        #   in Loop: Header=BB6_29 Depth=3
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB6_29
.LBB6_32:                               # %for.end.130
                                        #   in Loop: Header=BB6_23 Depth=2
	jmp	.LBB6_33
.LBB6_33:                               # %for.inc.131
                                        #   in Loop: Header=BB6_23 Depth=2
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB6_23
.LBB6_34:                               # %for.end.133
                                        #   in Loop: Header=BB6_21 Depth=1
	movslq	-60(%rbp), %rax
	movl	fanwidths(,%rax,4), %ecx
	addl	-76(%rbp), %ecx
	movl	%ecx, -76(%rbp)
# BB#35:                                # %for.inc.137
                                        #   in Loop: Header=BB6_21 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB6_21
.LBB6_36:                               # %for.end.139
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	blindsapply, .Lfunc_end6-blindsapply
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
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.10
	.quad	.L.str.11
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.12
	.quad	.L.str.13
	.size	query.args, 168

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
	.asciz	"angle-dsp"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Angle of Displacement"
	.size	.L.str.7, 22

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"num-segments"
	.size	.L.str.8, 13

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Number of segments in blinds"
	.size	.L.str.9, 29

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"orientation"
	.size	.L.str.10, 12

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"The orientation { ORIENTATION-HORIZONTAL (0), ORIENTATION-VERTICAL (1) }"
	.size	.L.str.11, 73

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"bg-transparent"
	.size	.L.str.12, 15

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Background transparent { FALSE, TRUE }"
	.size	.L.str.13, 39

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"plug-in-blinds"
	.size	.L.str.14, 15

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Simulate an image painted on window blinds"
	.size	.L.str.15, 43

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"More here later"
	.size	.L.str.16, 16

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Andy Thomas"
	.size	.L.str.17, 12

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"1997"
	.size	.L.str.18, 5

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"_Blinds..."
	.size	.L.str.19, 11

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.20, 12

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"<Image>/Filters/Distorts"
	.size	.L.str.21, 25

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.22, 20

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"UTF-8"
	.size	.L.str.23, 6

	.type	bvals,@object           # @bvals
	.data
	.align	4
bvals:
	.long	30                      # 0x1e
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	bvals, 16

	.type	.L.str.24,@object       # @.str.24
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.24:
	.asciz	"Adding blinds"
	.size	.L.str.24, 14

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"blinds"
	.size	.L.str.25, 7

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Blinds"
	.size	.L.str.26, 7

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gimp-blinds"
	.size	.L.str.27, 12

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gtk-cancel"
	.size	.L.str.28, 11

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gtk-ok"
	.size	.L.str.29, 7

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"invalidated"
	.size	.L.str.30, 12

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Orientation"
	.size	.L.str.31, 12

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"_Horizontal"
	.size	.L.str.32, 12

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"_Vertical"
	.size	.L.str.33, 10

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"toggled"
	.size	.L.str.34, 8

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Background"
	.size	.L.str.35, 11

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"_Transparent"
	.size	.L.str.36, 13

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"_Displacement:"
	.size	.L.str.37, 15

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"value-changed"
	.size	.L.str.38, 14

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"_Number of segments:"
	.size	.L.str.39, 21

	.type	fanwidths,@object       # @fanwidths
	.local	fanwidths
	.comm	fanwidths,400,16

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
