	.text
	.file	"despeckle.bc"
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
	subq	$88, %rsp
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
	movabsq	$.L.str.17, %rcx
	movabsq	$.L.str.18, %r8
	movabsq	$.L.str.19, %r9
	movabsq	$.L.str.20, %rax
	movabsq	$.L.str.21, %r10
	movl	$1, %r11d
	movl	$7, %ebx
	xorl	%r14d, %r14d
	movabsq	$query.args, %r15
	xorl	%r12d, %r12d
	movl	%r12d, %r13d
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$7, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r13, -48(%rbp)         # 8-byte Spill
	movl	%r11d, -52(%rbp)        # 4-byte Spill
	movl	%r14d, -56(%rbp)        # 4-byte Spill
	movl	%ebx, -60(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.14, %rdi
	movabsq	$.L.str.22, %rsi
	callq	gimp_plugin_menu_register
	movl	%eax, -64(%rbp)         # 4-byte Spill
	addq	$88, %rsp
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
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.23, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.23, %rdi
	movabsq	$.L.str.24, %rsi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.23, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -72(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movl	$3, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movl	$21, run.values(%rip)
	movl	-48(%rbp), %ecx
	movl	%ecx, run.values+8(%rip)
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movq	-40(%rbp), %rax
	movq	$run.values, (%rax)
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, drawable(%rip)
	movl	-44(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_39
.LBB1_39:                               # %do.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB1_9
	jmp	.LBB1_40
.LBB1_40:                               # %do.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB1_23
	jmp	.LBB1_26
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.14, %rdi
	movabsq	$despeckle_vals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	drawable, %rsi
	movl	(%rsi), %edi
	movl	%eax, -88(%rbp)         # 4-byte Spill
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %lor.lhs.false
	movq	drawable, %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB1_8
.LBB1_5:                                # %if.then
	callq	despeckle_dialog
	cmpl	$0, %eax
	jne	.LBB1_7
# BB#6:                                 # %if.then.14
	jmp	.LBB1_38
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.15
	jmp	.LBB1_27
.LBB1_9:                                # %sw.bb.16
	cmpl	$4, -12(%rbp)
	jl	.LBB1_11
# BB#10:                                # %lor.lhs.false.17
	cmpl	$9, -12(%rbp)
	jle	.LBB1_12
.LBB1_11:                               # %if.then.19
	movl	$1, -48(%rbp)
	jmp	.LBB1_22
.LBB1_12:                               # %if.else
	cmpl	$4, -12(%rbp)
	jne	.LBB1_14
# BB#13:                                # %if.then.21
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, despeckle_vals
	movl	$1, despeckle_vals+4
	movl	$7, despeckle_vals+8
	movl	$248, despeckle_vals+12
	jmp	.LBB1_21
.LBB1_14:                               # %if.else.25
	cmpl	$5, -12(%rbp)
	jne	.LBB1_16
# BB#15:                                # %if.then.27
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, despeckle_vals
	movq	-24(%rbp), %rax
	movl	168(%rax), %ecx
	movl	%ecx, despeckle_vals+4
	movl	$7, despeckle_vals+8
	movl	$248, despeckle_vals+12
	jmp	.LBB1_20
.LBB1_16:                               # %if.else.34
	cmpl	$6, -12(%rbp)
	jne	.LBB1_18
# BB#17:                                # %if.then.36
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, despeckle_vals
	movq	-24(%rbp), %rax
	movl	168(%rax), %ecx
	movl	%ecx, despeckle_vals+4
	movq	-24(%rbp), %rax
	movl	208(%rax), %ecx
	movl	%ecx, despeckle_vals+8
	movl	$248, despeckle_vals+12
	jmp	.LBB1_19
.LBB1_18:                               # %if.else.46
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, despeckle_vals
	movq	-24(%rbp), %rax
	movl	168(%rax), %ecx
	movl	%ecx, despeckle_vals+4
	movq	-24(%rbp), %rax
	movl	208(%rax), %ecx
	movl	%ecx, despeckle_vals+8
	movq	-24(%rbp), %rax
	movl	248(%rax), %ecx
	movl	%ecx, despeckle_vals+12
.LBB1_19:                               # %if.end.59
	jmp	.LBB1_20
.LBB1_20:                               # %if.end.60
	jmp	.LBB1_21
.LBB1_21:                               # %if.end.61
	jmp	.LBB1_22
.LBB1_22:                               # %if.end.62
	jmp	.LBB1_27
.LBB1_23:                               # %sw.bb.63
	jmp	.LBB1_24
.LBB1_24:                               # %do.body.64
	callq	gimp_locale_directory
	movabsq	$.L.str.23, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.23, %rdi
	movabsq	$.L.str.24, %rsi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.23, %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	textdomain
	movq	%rax, -112(%rbp)        # 8-byte Spill
# BB#25:                                # %do.end.69
	movabsq	$.L.str.14, %rdi
	movabsq	$despeckle_vals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB1_27
.LBB1_26:                               # %sw.default
	movl	$1, -48(%rbp)
.LBB1_27:                               # %sw.epilog
	cmpl	$3, -48(%rbp)
	jne	.LBB1_37
# BB#28:                                # %if.then.72
	movq	drawable, %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_30
# BB#29:                                # %lor.lhs.false.76
	movq	drawable, %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB1_35
.LBB1_30:                               # %if.then.80
	callq	despeckle
	cmpl	$1, -44(%rbp)
	je	.LBB1_32
# BB#31:                                # %if.then.82
	callq	gimp_displays_flush
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB1_32:                               # %if.end.84
	cmpl	$0, -44(%rbp)
	jne	.LBB1_34
# BB#33:                                # %if.then.86
	movabsq	$.L.str.14, %rdi
	movabsq	$despeckle_vals, %rax
	movl	$16, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB1_34:                               # %if.end.88
	jmp	.LBB1_36
.LBB1_35:                               # %if.else.89
	movl	$0, -48(%rbp)
.LBB1_36:                               # %if.end.90
	jmp	.LBB1_37
.LBB1_37:                               # %if.end.91
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
	movq	drawable, %rdi
	callq	gimp_drawable_detach
.LBB1_38:                               # %return
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
	.quad	4643211215818981376     # double 256
.LCPI3_1:
	.quad	4607182418800017408     # double 1
.LCPI3_2:
	.quad	4620693217682128896     # double 8
.LCPI3_3:
	.quad	-4616189618054758400    # double -1
.LCPI3_4:
	.quad	4643176031446892544     # double 255
.LCPI3_5:
	.quad	4629137466983448576     # double 30
.LCPI3_6:
	.quad	4617315517961601024     # double 5
	.text
	.align	16, 0x90
	.type	despeckle_dialog,@function
despeckle_dialog:                       # @despeckle_dialog
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
	pushq	%r14
	pushq	%rbx
	subq	$528, %rsp              # imm = 0x210
.Ltmp17:
	.cfi_offset %rbx, -32
.Ltmp18:
	.cfi_offset %r14, -24
	movabsq	$.L.str.25, %rdi
	movl	$1, %esi
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
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -92(%rbp)         # 4-byte Spill
	movl	%r10d, -96(%rbp)        # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-24(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
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
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	drawable, %rdi
	callq	gimp_drawable_preview_new
	movq	%rax, preview
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	preview, %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	preview, %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.30, %rsi
	movabsq	$preview_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	preview, %r11
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	-152(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.31, %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.32, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	movl	-188(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	despeckle_vals+4, %ecx
	andl	$1, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gtk_toggle_button_set_active
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.33, %rsi
	movabsq	$dialog_adaptive_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-64(%rbp), %r11
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movq	-208(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.34, %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	despeckle_vals+4, %ecx
	andl	$2, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gtk_toggle_button_set_active
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.33, %rsi
	movabsq	$dialog_recursive_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-64(%rbp), %r11
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-240(%rbp), %rcx        # 8-byte Reload
	movq	-240(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movl	$4, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_table_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-48(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-32(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -276(%rbp)        # 4-byte Spill
	movl	-276(%rbp), %ecx        # 4-byte Reload
	movl	-276(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movq	-48(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.35, %rdi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$100, %r8d
	movl	$3, %r9d
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_5, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_6, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %edx
	xorps	%xmm1, %xmm1
	xorl	%r10d, %r10d
	movl	%r10d, %esi
	cvtsi2sdl	despeckle_vals, %xmm3
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -304(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -308(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	%rax, %rcx
	movsd	%xmm0, -320(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-320(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -328(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-328(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-328(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.36, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$despeckle_vals, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-336(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.36, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdx
	movq	preview, %rdi
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-344(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-48(%rbp), %rcx
	movq	%rax, -360(%rbp)        # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.37, %rdi
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	movl	$100, %r8d
	movl	$3, %r9d
	movsd	.LCPI3_3, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI3_4, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_2, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm0, %xmm0
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	cvtsi2sdl	despeckle_vals+8, %xmm5
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -392(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-392(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-392(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.36, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$despeckle_vals, %rdi
	addq	$8, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-400(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.36, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdx
	movq	preview, %rdi
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-408(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-48(%rbp), %rcx
	movq	%rax, -424(%rbp)        # 8-byte Spill
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.38, %rdi
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	movl	$100, %r8d
	movl	$3, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_2, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %r10d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	cvtsi2sdl	despeckle_vals+12, %xmm1
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -448(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -456(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-456(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-456(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-456(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -460(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.36, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$despeckle_vals, %rdi
	addq	$12, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rdi, -472(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-472(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.36, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdx
	movq	preview, %rdi
	movq	%rdi, -480(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-480(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-24(%rbp), %rdi
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %eax
	movl	%eax, -76(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-76(%rbp), %eax
	addq	$528, %rsp              # imm = 0x210
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	despeckle_dialog, .Lfunc_end3-despeckle_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	despeckle,@function
despeckle:                              # @despeckle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	drawable, %rax
	movl	(%rax), %edi
	callq	gimp_drawable_bpp
	leaq	-120(%rbp), %rsi
	leaq	-124(%rbp), %rdx
	leaq	-128(%rbp), %rcx
	leaq	-132(%rbp), %r8
	movl	%eax, -116(%rbp)
	movq	drawable, %r9
	movl	(%r9), %edi
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	jne	.LBB4_2
# BB#1:                                 # %if.then
	jmp	.LBB4_3
.LBB4_2:                                # %if.end
	leaq	-48(%rbp), %rdi
	xorl	%eax, %eax
	movq	drawable, %rsi
	movl	-120(%rbp), %edx
	movl	-124(%rbp), %ecx
	movl	-128(%rbp), %r8d
	movl	-132(%rbp), %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -136(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	leaq	-96(%rbp), %rdi
	movl	$1, %eax
	movq	drawable, %rsi
	movl	-120(%rbp), %edx
	movl	-124(%rbp), %ecx
	movl	-128(%rbp), %r8d
	movl	-132(%rbp), %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movl	$1, %eax
	movl	%eax, %esi
	movl	-128(%rbp), %eax
	imull	-132(%rbp), %eax
	imull	-116(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -104(%rbp)
	movl	-128(%rbp), %ecx
	imull	-132(%rbp), %ecx
	imull	-116(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	leaq	-48(%rbp), %rdi
	movq	%rax, -112(%rbp)
	movq	-104(%rbp), %rsi
	movl	-120(%rbp), %edx
	movl	-124(%rbp), %ecx
	movl	-128(%rbp), %r8d
	movl	-132(%rbp), %r9d
	callq	gimp_pixel_rgn_get_rect
	xorl	%ecx, %ecx
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movl	-128(%rbp), %edx
	movl	-132(%rbp), %r8d
	movl	-116(%rbp), %r9d
	movl	despeckle_vals, %r10d
	movl	%ecx, -144(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	callq	despeckle_median
	leaq	-96(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movl	-120(%rbp), %edx
	movl	-124(%rbp), %ecx
	movl	-128(%rbp), %r8d
	movl	-132(%rbp), %r9d
	callq	gimp_pixel_rgn_set_rect
	movq	drawable, %rdi
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	drawable, %rax
	movl	(%rax), %edi
	callq	gimp_drawable_merge_shadow
	movq	drawable, %r11
	movl	(%r11), %edi
	movl	-120(%rbp), %esi
	movl	-124(%rbp), %edx
	movl	-128(%rbp), %ecx
	movl	-132(%rbp), %r8d
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movq	-112(%rbp), %rdi
	movl	%eax, -152(%rbp)        # 4-byte Spill
	callq	g_free
	movq	-104(%rbp), %rdi
	callq	g_free
.LBB4_3:                                # %return
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	despeckle, .Lfunc_end4-despeckle
	.cfi_endproc

	.align	16, 0x90
	.type	preview_update,@function
preview_update:                         # @preview_update
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_preview_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	movq	drawable, %rax
	movl	(%rax), %edi
	callq	gimp_drawable_bpp
	leaq	-88(%rbp), %rsi
	leaq	-92(%rbp), %rdx
	movl	%eax, -84(%rbp)
	movq	-72(%rbp), %rcx
	movl	208(%rcx), %eax
	movl	%eax, -96(%rbp)
	movq	-72(%rbp), %rcx
	movl	212(%rcx), %eax
	movl	%eax, -100(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_preview_get_position
	leaq	-56(%rbp), %rdi
	xorl	%eax, %eax
	movq	drawable, %rsi
	movl	-88(%rbp), %edx
	movl	-92(%rbp), %ecx
	movl	-96(%rbp), %r8d
	movl	-100(%rbp), %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movl	$1, %eax
	movl	%eax, %esi
	movl	-96(%rbp), %eax
	imull	-100(%rbp), %eax
	imull	-84(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -64(%rbp)
	movl	-96(%rbp), %ecx
	imull	-100(%rbp), %ecx
	imull	-84(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	leaq	-56(%rbp), %rdi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rsi
	movl	-88(%rbp), %edx
	movl	-92(%rbp), %ecx
	movl	-96(%rbp), %r8d
	movl	-100(%rbp), %r9d
	callq	gimp_pixel_rgn_get_rect
	movl	$1, %ecx
	movq	-80(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	-96(%rbp), %edx
	movl	-100(%rbp), %r8d
	movl	-84(%rbp), %r9d
	movl	despeckle_vals, %r10d
	movl	%ecx, -120(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	callq	despeckle_median
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	-96(%rbp), %ecx
	imull	-84(%rbp), %ecx
	movl	%ecx, %edx
	callq	gimp_preview_draw_buffer
	movq	-80(%rbp), %rdi
	callq	g_free
	movq	-64(%rbp), %rdi
	callq	g_free
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	preview_update, .Lfunc_end5-preview_update
	.cfi_endproc

	.align	16, 0x90
	.type	dialog_adaptive_callback,@function
dialog_adaptive_callback:               # @dialog_adaptive_callback
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	cmpl	$0, %eax
	je	.LBB6_2
# BB#1:                                 # %if.then
	movl	despeckle_vals+4, %eax
	orl	$1, %eax
	movl	%eax, despeckle_vals+4
	jmp	.LBB6_3
.LBB6_2:                                # %if.else
	movl	despeckle_vals+4, %eax
	andl	$-2, %eax
	movl	%eax, despeckle_vals+4
.LBB6_3:                                # %if.end
	movq	preview, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_preview_invalidate
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	dialog_adaptive_callback, .Lfunc_end6-dialog_adaptive_callback
	.cfi_endproc

	.align	16, 0x90
	.type	dialog_recursive_callback,@function
dialog_recursive_callback:              # @dialog_recursive_callback
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	cmpl	$0, %eax
	je	.LBB7_2
# BB#1:                                 # %if.then
	movl	despeckle_vals+4, %eax
	orl	$2, %eax
	movl	%eax, despeckle_vals+4
	jmp	.LBB7_3
.LBB7_2:                                # %if.else
	movl	despeckle_vals+4, %eax
	andl	$-3, %eax
	movl	%eax, despeckle_vals+4
.LBB7_3:                                # %if.end
	movq	preview, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_preview_invalidate
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	dialog_recursive_callback, .Lfunc_end7-dialog_recursive_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	despeckle_median,@function
despeckle_median:                       # @despeckle_median
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$176, %rsp
.Ltmp34:
	.cfi_offset %rbx, -32
.Ltmp35:
	.cfi_offset %r14, -24
	movl	16(%rbp), %eax
	movabsq	$histogram, %r10
	xorl	%r11d, %r11d
	movl	$7623696, %ebx          # imm = 0x745410
	movl	%ebx, %r14d
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	%r9d, -48(%rbp)
	movl	%eax, -52(%rbp)
	movq	%r10, %rdi
	movl	%r11d, %esi
	movq	%r14, %rdx
	callq	memset
	movl	$0, -56(%rbp)
	movl	-36(%rbp), %eax
	imull	-40(%rbp), %eax
	movl	%eax, -60(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.26, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB8_2:                                # %if.end
	movl	-48(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	$0, -68(%rbp)
.LBB8_3:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_17 Depth 2
	movl	-68(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB8_49
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB8_3 Depth=1
	xorl	%eax, %eax
	movl	$0, -64(%rbp)
	movl	-68(%rbp), %ecx
	subl	-72(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB8_6
# BB#5:                                 # %cond.true
                                        #   in Loop: Header=BB8_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB8_7
.LBB8_6:                                # %cond.false
                                        #   in Loop: Header=BB8_3 Depth=1
	movl	-68(%rbp), %eax
	subl	-72(%rbp), %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB8_7:                                # %cond.end
                                        #   in Loop: Header=BB8_3 Depth=1
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, -80(%rbp)
	movl	-40(%rbp), %eax
	subl	$1, %eax
	movl	-68(%rbp), %ecx
	addl	-72(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB8_9
# BB#8:                                 # %cond.true.6
                                        #   in Loop: Header=BB8_3 Depth=1
	movl	-40(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB8_10
.LBB8_9:                                # %cond.false.8
                                        #   in Loop: Header=BB8_3 Depth=1
	movl	-68(%rbp), %eax
	addl	-72(%rbp), %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB8_10:                               # %cond.end.10
                                        #   in Loop: Header=BB8_3 Depth=1
	movl	-116(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movl	%eax, -84(%rbp)
	movl	-64(%rbp), %eax
	subl	-72(%rbp), %eax
	cmpl	%eax, %ecx
	jle	.LBB8_12
# BB#11:                                # %cond.true.14
                                        #   in Loop: Header=BB8_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB8_13
.LBB8_12:                               # %cond.false.15
                                        #   in Loop: Header=BB8_3 Depth=1
	movl	-64(%rbp), %eax
	subl	-72(%rbp), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB8_13:                               # %cond.end.17
                                        #   in Loop: Header=BB8_3 Depth=1
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	%eax, -88(%rbp)
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movl	-64(%rbp), %ecx
	addl	-72(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB8_15
# BB#14:                                # %cond.true.22
                                        #   in Loop: Header=BB8_3 Depth=1
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB8_16
.LBB8_15:                               # %cond.false.24
                                        #   in Loop: Header=BB8_3 Depth=1
	movl	-64(%rbp), %eax
	addl	-72(%rbp), %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB8_16:                               # %cond.end.26
                                        #   in Loop: Header=BB8_3 Depth=1
	movl	-124(%rbp), %eax        # 4-byte Reload
	movabsq	$histogram, %rdi
	movl	%eax, -92(%rbp)
	movl	$0, hist0
	movl	$0, histrest
	movl	$0, hist255
	callq	histogram_clean
	movabsq	$histogram, %rdi
	movl	-88(%rbp), %eax
	movl	%eax, histogram+7623680
	movl	-80(%rbp), %eax
	movl	%eax, histogram+7623684
	movl	-92(%rbp), %eax
	movl	%eax, histogram+7623688
	movl	-84(%rbp), %eax
	movl	%eax, histogram+7623692
	movq	-24(%rbp), %rsi
	movl	-36(%rbp), %edx
	movl	-44(%rbp), %ecx
	movl	histogram+7623680, %r8d
	movl	histogram+7623684, %r9d
	movl	histogram+7623688, %eax
	movl	histogram+7623692, %r10d
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	add_vals
	movl	$0, -64(%rbp)
.LBB8_17:                               # %for.cond.28
                                        #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-64(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB8_44
# BB#18:                                # %for.body.30
                                        #   in Loop: Header=BB8_17 Depth=2
	xorl	%eax, %eax
	movl	-68(%rbp), %ecx
	subl	-72(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB8_20
# BB#19:                                # %cond.true.33
                                        #   in Loop: Header=BB8_17 Depth=2
	xorl	%eax, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB8_21
.LBB8_20:                               # %cond.false.34
                                        #   in Loop: Header=BB8_17 Depth=2
	movl	-68(%rbp), %eax
	subl	-72(%rbp), %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB8_21:                               # %cond.end.36
                                        #   in Loop: Header=BB8_17 Depth=2
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	%eax, -80(%rbp)
	movl	-40(%rbp), %eax
	subl	$1, %eax
	movl	-68(%rbp), %ecx
	addl	-72(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB8_23
# BB#22:                                # %cond.true.41
                                        #   in Loop: Header=BB8_17 Depth=2
	movl	-40(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB8_24
.LBB8_23:                               # %cond.false.43
                                        #   in Loop: Header=BB8_17 Depth=2
	movl	-68(%rbp), %eax
	addl	-72(%rbp), %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB8_24:                               # %cond.end.45
                                        #   in Loop: Header=BB8_17 Depth=2
	movl	-132(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movl	%eax, -84(%rbp)
	movl	-64(%rbp), %eax
	subl	-72(%rbp), %eax
	cmpl	%eax, %ecx
	jle	.LBB8_26
# BB#25:                                # %cond.true.49
                                        #   in Loop: Header=BB8_17 Depth=2
	xorl	%eax, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB8_27
.LBB8_26:                               # %cond.false.50
                                        #   in Loop: Header=BB8_17 Depth=2
	movl	-64(%rbp), %eax
	subl	-72(%rbp), %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB8_27:                               # %cond.end.52
                                        #   in Loop: Header=BB8_17 Depth=2
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	%eax, -88(%rbp)
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movl	-64(%rbp), %ecx
	addl	-72(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB8_29
# BB#28:                                # %cond.true.57
                                        #   in Loop: Header=BB8_17 Depth=2
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB8_30
.LBB8_29:                               # %cond.false.59
                                        #   in Loop: Header=BB8_17 Depth=2
	movl	-64(%rbp), %eax
	addl	-72(%rbp), %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB8_30:                               # %cond.end.61
                                        #   in Loop: Header=BB8_17 Depth=2
	movl	-140(%rbp), %eax        # 4-byte Reload
	movabsq	$histogram, %rdi
	movl	%eax, -92(%rbp)
	movq	-24(%rbp), %rsi
	movl	-36(%rbp), %edx
	movl	-44(%rbp), %ecx
	movl	-88(%rbp), %r8d
	movl	-80(%rbp), %r9d
	movl	-92(%rbp), %eax
	movl	-84(%rbp), %r10d
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	update_histogram
	movabsq	$histogram, %rdi
	movl	-64(%rbp), %eax
	movl	-68(%rbp), %ecx
	imull	-36(%rbp), %ecx
	addl	%ecx, %eax
	imull	-44(%rbp), %eax
	movl	%eax, -76(%rbp)
	movq	-24(%rbp), %rsi
	movslq	-76(%rbp), %r11
	addq	%r11, %rsi
	callq	histogram_get_median
	movq	%rax, -104(%rbp)
	movl	despeckle_vals+4, %ecx
	andl	$2, %ecx
	cmpl	$0, %ecx
	je	.LBB8_32
# BB#31:                                # %if.then.68
                                        #   in Loop: Header=BB8_17 Depth=2
	movabsq	$histogram, %rdi
	movq	-24(%rbp), %rsi
	movl	-36(%rbp), %edx
	movl	-44(%rbp), %ecx
	movl	-64(%rbp), %r8d
	movl	-68(%rbp), %r9d
	callq	del_val
	movq	-24(%rbp), %rsi
	movslq	-76(%rbp), %rdi
	addq	%rdi, %rsi
	movq	-104(%rbp), %rdi
	movl	-44(%rbp), %edx
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-152(%rbp), %rsi        # 8-byte Reload
	callq	pixel_copy
	movabsq	$histogram, %rdi
	movq	-24(%rbp), %rsi
	movl	-36(%rbp), %edx
	movl	-44(%rbp), %ecx
	movl	-64(%rbp), %r8d
	movl	-68(%rbp), %r9d
	callq	add_val
.LBB8_32:                               # %if.end.71
                                        #   in Loop: Header=BB8_17 Depth=2
	movq	-32(%rbp), %rax
	movslq	-76(%rbp), %rcx
	addq	%rcx, %rax
	movq	-104(%rbp), %rsi
	movl	-44(%rbp), %edx
	movq	%rax, %rdi
	callq	pixel_copy
	movl	despeckle_vals+4, %edx
	andl	$1, %edx
	cmpl	$0, %edx
	je	.LBB8_42
# BB#33:                                # %if.then.76
                                        #   in Loop: Header=BB8_17 Depth=2
	movl	hist0, %eax
	cmpl	-72(%rbp), %eax
	jge	.LBB8_35
# BB#34:                                # %lor.lhs.false
                                        #   in Loop: Header=BB8_17 Depth=2
	movl	hist255, %eax
	cmpl	-72(%rbp), %eax
	jl	.LBB8_38
.LBB8_35:                               # %if.then.79
                                        #   in Loop: Header=BB8_17 Depth=2
	movl	-72(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB8_37
# BB#36:                                # %if.then.81
                                        #   in Loop: Header=BB8_17 Depth=2
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
.LBB8_37:                               # %if.end.82
                                        #   in Loop: Header=BB8_17 Depth=2
	jmp	.LBB8_41
.LBB8_38:                               # %if.else
                                        #   in Loop: Header=BB8_17 Depth=2
	cmpl	$1, -72(%rbp)
	jle	.LBB8_40
# BB#39:                                # %if.then.84
                                        #   in Loop: Header=BB8_17 Depth=2
	movl	-72(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -72(%rbp)
.LBB8_40:                               # %if.end.85
                                        #   in Loop: Header=BB8_17 Depth=2
	jmp	.LBB8_41
.LBB8_41:                               # %if.end.86
                                        #   in Loop: Header=BB8_17 Depth=2
	jmp	.LBB8_42
.LBB8_42:                               # %if.end.87
                                        #   in Loop: Header=BB8_17 Depth=2
	jmp	.LBB8_43
.LBB8_43:                               # %for.inc
                                        #   in Loop: Header=BB8_17 Depth=2
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB8_17
.LBB8_44:                               # %for.end
                                        #   in Loop: Header=BB8_3 Depth=1
	movl	-36(%rbp), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -52(%rbp)
	jne	.LBB8_47
# BB#45:                                # %land.lhs.true
                                        #   in Loop: Header=BB8_3 Depth=1
	movl	$32, %eax
	movl	-68(%rbp), %ecx
	movl	%eax, -156(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-156(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB8_47
# BB#46:                                # %if.then.92
                                        #   in Loop: Header=BB8_3 Depth=1
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm0
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -160(%rbp)        # 4-byte Spill
.LBB8_47:                               # %if.end.95
                                        #   in Loop: Header=BB8_3 Depth=1
	jmp	.LBB8_48
.LBB8_48:                               # %for.inc.96
                                        #   in Loop: Header=BB8_3 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB8_3
.LBB8_49:                               # %for.end.98
	cmpl	$0, -52(%rbp)
	jne	.LBB8_51
# BB#50:                                # %if.then.100
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB8_51:                               # %if.end.102
	addq	$176, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end8:
	.size	despeckle_median, .Lfunc_end8-despeckle_median
	.cfi_endproc

	.align	16, 0x90
	.type	histogram_clean,@function
histogram_clean:                        # @histogram_clean
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
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -12(%rbp)         # imm = 0x100
	jge	.LBB9_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	$0, (%rcx,%rax,4)
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$1024, %rcx             # imm = 0x400
	imulq	$29776, %rax, %rax      # imm = 0x7450
	addq	%rax, %rcx
	movl	$0, 29772(%rcx)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB9_1
.LBB9_4:                                # %for.end
	popq	%rbp
	retq
.Lfunc_end9:
	.size	histogram_clean, .Lfunc_end9-histogram_clean
	.cfi_endproc

	.align	16, 0x90
	.type	add_vals,@function
add_vals:                               # @add_vals
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
	subq	$48, %rsp
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movl	%r10d, -36(%rbp)
	movl	%eax, -40(%rbp)
	movl	-28(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jle	.LBB10_2
# BB#1:                                 # %if.then
	jmp	.LBB10_10
.LBB10_2:                               # %if.end
	movl	-32(%rbp), %eax
	movl	%eax, -48(%rbp)
.LBB10_3:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_5 Depth 2
	movl	-48(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jg	.LBB10_10
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB10_5:                               # %for.cond.2
                                        #   Parent Loop BB10_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jg	.LBB10_8
# BB#6:                                 # %for.body.4
                                        #   in Loop: Header=BB10_5 Depth=2
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-44(%rbp), %r8d
	movl	-48(%rbp), %r9d
	callq	add_val
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB10_5 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB10_5
.LBB10_8:                               # %for.end
                                        #   in Loop: Header=BB10_3 Depth=1
	jmp	.LBB10_9
.LBB10_9:                               # %for.inc.5
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB10_3
.LBB10_10:                              # %for.end.7
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	add_vals, .Lfunc_end10-add_vals
	.cfi_endproc

	.align	16, 0x90
	.type	update_histogram,@function
update_histogram:                       # @update_histogram
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movl	%r10d, -36(%rbp)
	movl	%eax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	-8(%rbp), %r11
	movl	7623680(%r11), %r8d
	movq	-8(%rbp), %r11
	movl	7623684(%r11), %r9d
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movq	-8(%rbp), %r11
	movl	7623692(%r11), %r10d
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	del_vals
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movq	-8(%rbp), %r11
	movl	7623684(%r11), %r9d
	movl	-36(%rbp), %eax
	movl	-32(%rbp), %r10d
	subl	$1, %r10d
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	del_vals
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	-36(%rbp), %r9d
	movq	-8(%rbp), %r11
	movl	7623692(%r11), %r10d
	movl	%r9d, -44(%rbp)         # 4-byte Spill
	movl	%eax, %r9d
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	del_vals
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	-8(%rbp), %r11
	movl	7623688(%r11), %eax
	addl	$1, %eax
	movl	-32(%rbp), %r9d
	movl	-36(%rbp), %r8d
	movl	-40(%rbp), %r10d
	movl	%r8d, -48(%rbp)         # 4-byte Spill
	movl	%eax, %r8d
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	add_vals
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movl	-32(%rbp), %r9d
	movq	-8(%rbp), %r11
	movl	7623688(%r11), %eax
	movq	-8(%rbp), %r11
	movl	7623684(%r11), %r10d
	subl	$1, %r10d
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	add_vals
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	-8(%rbp), %r11
	movl	7623680(%r11), %r8d
	movq	-8(%rbp), %r11
	movl	7623692(%r11), %eax
	addl	$1, %eax
	movq	-8(%rbp), %r11
	movl	7623688(%r11), %r9d
	movl	-40(%rbp), %r10d
	movl	%r9d, -52(%rbp)         # 4-byte Spill
	movl	%eax, %r9d
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	add_vals
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rsi
	movl	%eax, 7623680(%rsi)
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rsi
	movl	%eax, 7623684(%rsi)
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rsi
	movl	%eax, 7623688(%rsi)
	movl	-40(%rbp), %eax
	movq	-8(%rbp), %rsi
	movl	%eax, 7623692(%rsi)
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	update_histogram, .Lfunc_end11-update_histogram
	.cfi_endproc

	.align	16, 0x90
	.type	histogram_get_median,@function
histogram_get_median:                   # @histogram_get_median
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	histrest, %eax
	movl	%eax, -28(%rbp)
	movl	$0, -36(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.LBB12_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB12_6
.LBB12_2:                               # %if.end
	movl	$2, %eax
	movl	-28(%rbp), %ecx
	addl	$1, %ecx
	movl	%eax, -40(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-40(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -28(%rbp)
	movl	$0, -32(%rbp)
.LBB12_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	addl	-36(%rbp), %edx
	movl	%edx, -36(%rbp)
	cmpl	-28(%rbp), %edx
	jge	.LBB12_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB12_3 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB12_3
.LBB12_5:                               # %while.end
	movslq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	addq	$1024, %rcx             # imm = 0x400
	imulq	$29776, %rax, %rax      # imm = 0x7450
	addq	%rax, %rcx
	movq	%rcx, %rdi
	callq	list_get_random_elem
	movq	%rax, -8(%rbp)
.LBB12_6:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	histogram_get_median, .Lfunc_end12-histogram_get_median
	.cfi_endproc

	.align	16, 0x90
	.type	del_val,@function
del_val:                                # @del_val
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %edx
	imull	-20(%rbp), %edx
	addl	%edx, %ecx
	imull	-24(%rbp), %ecx
	movl	%ecx, -36(%rbp)
	movq	-16(%rbp), %rsi
	movslq	-36(%rbp), %rdi
	addq	%rdi, %rsi
	movl	-24(%rbp), %ecx
	movq	%rsi, %rdi
	movl	%ecx, %esi
	callq	pixel_luminance
	movzbl	%al, %ecx
	movl	%ecx, -40(%rbp)
	movl	-40(%rbp), %ecx
	cmpl	despeckle_vals+8, %ecx
	jle	.LBB13_3
# BB#1:                                 # %land.lhs.true
	movl	-40(%rbp), %eax
	cmpl	despeckle_vals+12, %eax
	jge	.LBB13_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rdi
	movl	-40(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %esi
	callq	histogram_remove
	movl	histrest, %eax
	addl	$-1, %eax
	movl	%eax, histrest
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movl	-40(%rbp), %eax
	cmpl	despeckle_vals+8, %eax
	jg	.LBB13_5
# BB#4:                                 # %if.then.8
	movl	hist0, %eax
	addl	$-1, %eax
	movl	%eax, hist0
.LBB13_5:                               # %if.end
	movl	-40(%rbp), %eax
	cmpl	despeckle_vals+12, %eax
	jl	.LBB13_7
# BB#6:                                 # %if.then.12
	movl	hist255, %eax
	addl	$-1, %eax
	movl	%eax, hist255
.LBB13_7:                               # %if.end.14
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.15
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	del_val, .Lfunc_end13-del_val
	.cfi_endproc

	.align	16, 0x90
	.type	pixel_copy,@function
pixel_copy:                             # @pixel_copy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	decl	%edx
	movl	%edx, %esi
	subl	$3, %edx
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movl	%edx, -36(%rbp)         # 4-byte Spill
	ja	.LBB14_5
# BB#6:                                 # %entry
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	.LJTI14_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB14_1:                               # %sw.bb
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	(%rax), %dl
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	movb	%dl, (%rax)
.LBB14_2:                               # %sw.bb.2
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	(%rax), %dl
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	movb	%dl, (%rax)
.LBB14_3:                               # %sw.bb.5
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	(%rax), %dl
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	movb	%dl, (%rax)
.LBB14_4:                               # %sw.bb.8
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movb	(%rax), %dl
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	movb	%dl, (%rax)
.LBB14_5:                               # %sw.epilog
	popq	%rbp
	retq
.Lfunc_end14:
	.size	pixel_copy, .Lfunc_end14-pixel_copy
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI14_0:
	.quad	.LBB14_4
	.quad	.LBB14_3
	.quad	.LBB14_2
	.quad	.LBB14_1

	.text
	.align	16, 0x90
	.type	add_val,@function
add_val:                                # @add_val
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %edx
	imull	-20(%rbp), %edx
	addl	%edx, %ecx
	imull	-24(%rbp), %ecx
	movl	%ecx, -36(%rbp)
	movq	-16(%rbp), %rsi
	movslq	-36(%rbp), %rdi
	addq	%rdi, %rsi
	movl	-24(%rbp), %ecx
	movq	%rsi, %rdi
	movl	%ecx, %esi
	callq	pixel_luminance
	movzbl	%al, %ecx
	movl	%ecx, -40(%rbp)
	movl	-40(%rbp), %ecx
	cmpl	despeckle_vals+8, %ecx
	jle	.LBB15_3
# BB#1:                                 # %land.lhs.true
	movl	-40(%rbp), %eax
	cmpl	despeckle_vals+12, %eax
	jge	.LBB15_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rdi
	movl	-40(%rbp), %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	movslq	-36(%rbp), %rsi
	addq	%rsi, %rdx
	movzbl	%cl, %esi
	callq	histogram_add
	movl	histrest, %eax
	addl	$1, %eax
	movl	%eax, histrest
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movl	-40(%rbp), %eax
	cmpl	despeckle_vals+8, %eax
	jg	.LBB15_5
# BB#4:                                 # %if.then.10
	movl	hist0, %eax
	addl	$1, %eax
	movl	%eax, hist0
.LBB15_5:                               # %if.end
	movl	-40(%rbp), %eax
	cmpl	despeckle_vals+12, %eax
	jl	.LBB15_7
# BB#6:                                 # %if.then.14
	movl	hist255, %eax
	addl	$1, %eax
	movl	%eax, hist255
.LBB15_7:                               # %if.end.16
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.17
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	add_val, .Lfunc_end15-add_val
	.cfi_endproc

	.align	16, 0x90
	.type	del_vals,@function
del_vals:                               # @del_vals
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movl	%r10d, -36(%rbp)
	movl	%eax, -40(%rbp)
	movl	-28(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jle	.LBB16_2
# BB#1:                                 # %if.then
	jmp	.LBB16_10
.LBB16_2:                               # %if.end
	movl	-32(%rbp), %eax
	movl	%eax, -48(%rbp)
.LBB16_3:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_5 Depth 2
	movl	-48(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jg	.LBB16_10
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB16_5:                               # %for.cond.2
                                        #   Parent Loop BB16_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jg	.LBB16_8
# BB#6:                                 # %for.body.4
                                        #   in Loop: Header=BB16_5 Depth=2
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-44(%rbp), %r8d
	movl	-48(%rbp), %r9d
	callq	del_val
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB16_5 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB16_5
.LBB16_8:                               # %for.end
                                        #   in Loop: Header=BB16_3 Depth=1
	jmp	.LBB16_9
.LBB16_9:                               # %for.inc.5
                                        #   in Loop: Header=BB16_3 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB16_3
.LBB16_10:                              # %for.end.7
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	del_vals, .Lfunc_end16-del_vals
	.cfi_endproc

	.align	16, 0x90
	.type	list_get_random_elem,@function
list_get_random_elem:                   # @list_get_random_elem
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	29768(%rdi), %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	callq	rand
	movq	-16(%rbp), %rdi
	cltd
	idivl	29772(%rdi)
	movl	-24(%rbp), %ecx         # 4-byte Reload
	addl	%edx, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$3721, -20(%rbp)        # imm = 0xE89
	jl	.LBB17_2
# BB#1:                                 # %if.then
	movl	-20(%rbp), %eax
	subl	$3721, %eax             # imm = 0xE89
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -8(%rbp)
	jmp	.LBB17_3
.LBB17_2:                               # %if.end
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -8(%rbp)
.LBB17_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	list_get_random_elem, .Lfunc_end17-list_get_random_elem
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4596827742536767164     # double 0.21260000000000001
.LCPI18_1:
	.quad	4604617168452267173     # double 0.71519999999999995
.LCPI18_2:
	.quad	4589866978952703325     # double 0.0722
	.text
	.align	16, 0x90
	.type	pixel_luminance,@function
pixel_luminance:                        # @pixel_luminance
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%esi, %eax
	decl	%eax
	subl	$2, %eax
	movl	%esi, -24(%rbp)         # 4-byte Spill
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jb	.LBB18_1
	jmp	.LBB18_5
.LBB18_5:                               # %entry
	movl	-24(%rbp), %eax         # 4-byte Reload
	addl	$-3, %eax
	subl	$2, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jb	.LBB18_2
	jmp	.LBB18_3
.LBB18_1:                               # %sw.bb
	movq	-16(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -1(%rbp)
	jmp	.LBB18_4
.LBB18_2:                               # %sw.bb.1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	.LCPI18_0(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movzbl	1(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movsd	.LCPI18_1(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movzbl	2(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	movsd	.LCPI18_2(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %dl
	movb	%dl, -1(%rbp)
	jmp	.LBB18_4
.LBB18_3:                               # %sw.default
	movb	$0, -1(%rbp)
.LBB18_4:                               # %return
	movzbl	-1(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end18:
	.size	pixel_luminance, .Lfunc_end18-pixel_luminance
	.cfi_endproc

	.align	16, 0x90
	.type	histogram_remove,@function
histogram_remove:                       # @histogram_remove
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movzbl	-9(%rbp), %esi
	movl	%esi, %edi
	movq	-8(%rbp), %rcx
	movl	(%rcx,%rdi,4), %esi
	addl	$-1, %esi
	movl	%esi, (%rcx,%rdi,4)
	movzbl	-9(%rbp), %esi
	movl	%esi, %ecx
	movq	-8(%rbp), %rdi
	addq	$1024, %rdi             # imm = 0x400
	imulq	$29776, %rcx, %rcx      # imm = 0x7450
	addq	%rcx, %rdi
	callq	list_del_elem
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	histogram_remove, .Lfunc_end19-histogram_remove
	.cfi_endproc

	.align	16, 0x90
	.type	list_del_elem,@function
list_del_elem:                          # @list_del_elem
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	29772(%rdi), %eax
	addl	$-1, %eax
	movl	%eax, 29772(%rdi)
	movq	-8(%rbp), %rdi
	movl	29768(%rdi), %eax
	addl	$1, %eax
	movl	%eax, 29768(%rdi)
	movq	-8(%rbp), %rdi
	cmpl	$3721, 29768(%rdi)      # imm = 0xE89
	jl	.LBB20_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	$0, 29768(%rax)
.LBB20_2:                               # %if.end
	popq	%rbp
	retq
.Lfunc_end20:
	.size	list_del_elem, .Lfunc_end20-list_del_elem
	.cfi_endproc

	.align	16, 0x90
	.type	histogram_add,@function
histogram_add:                          # @histogram_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	%rdx, -24(%rbp)
	movzbl	-9(%rbp), %esi
	movl	%esi, %edx
	movq	-8(%rbp), %rdi
	movl	(%rdi,%rdx,4), %esi
	addl	$1, %esi
	movl	%esi, (%rdi,%rdx,4)
	movzbl	-9(%rbp), %esi
	movl	%esi, %edx
	movq	-8(%rbp), %rdi
	addq	$1024, %rdi             # imm = 0x400
	imulq	$29776, %rdx, %rdx      # imm = 0x7450
	addq	%rdx, %rdi
	movq	-24(%rbp), %rsi
	callq	list_add_elem
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	histogram_add, .Lfunc_end21-histogram_add
	.cfi_endproc

	.align	16, 0x90
	.type	list_add_elem,@function
list_add_elem:                          # @list_add_elem
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movl	29768(%rsi), %eax
	movq	-8(%rbp), %rsi
	movl	29772(%rsi), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, 29772(%rsi)
	addl	%ecx, %eax
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rsi
	cmpl	$3721, -20(%rbp)        # imm = 0xE89
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	jl	.LBB22_2
# BB#1:                                 # %cond.true
	movl	-20(%rbp), %eax
	subl	$3721, %eax             # imm = 0xE89
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB22_3
.LBB22_2:                               # %cond.false
	movl	-20(%rbp), %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB22_3:                               # %cond.end
	movl	-36(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	%rsi, (%rdx,%rcx,8)
	popq	%rbp
	retq
.Lfunc_end22:
	.size	list_add_elem, .Lfunc_end22-list_add_elem
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
	.asciz	"Input image"
	.size	.L.str.3, 12

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
	.asciz	"radius"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Filter box radius (default = 3)"
	.size	.L.str.7, 32

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"type"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Filter type { MEDIAN (0), ADAPTIVE (1), RECURSIVE-MEDIAN (2), RECURSIVE-ADAPTIVE (3) }"
	.size	.L.str.9, 87

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"black"
	.size	.L.str.10, 6

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Black level (-1 to 255)"
	.size	.L.str.11, 24

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"white"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"White level (0 to 256)"
	.size	.L.str.13, 23

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"plug-in-despeckle"
	.size	.L.str.14, 18

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Remove speckle noise from the image"
	.size	.L.str.15, 36

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"This plug-in selectively performs a median or adaptive box filter on an image."
	.size	.L.str.16, 79

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Michael Sweet <mike@easysw.com>"
	.size	.L.str.17, 32

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Copyright 1997-1998 by Michael Sweet"
	.size	.L.str.18, 37

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"May 2010"
	.size	.L.str.19, 9

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Des_peckle..."
	.size	.L.str.20, 14

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.21, 12

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"<Image>/Filters/Enhance"
	.size	.L.str.22, 24

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.23, 20

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"UTF-8"
	.size	.L.str.24, 6

	.type	drawable,@object        # @drawable
	.local	drawable
	.comm	drawable,8,8
	.type	despeckle_vals,@object  # @despeckle_vals
	.data
	.align	16
despeckle_vals:
	.long	3                       # 0x3
	.long	1                       # 0x1
	.long	7                       # 0x7
	.long	248                     # 0xf8
	.size	despeckle_vals, 16

	.type	.L.str.25,@object       # @.str.25
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.25:
	.asciz	"despeckle"
	.size	.L.str.25, 10

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Despeckle"
	.size	.L.str.26, 10

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gimp-despeckle"
	.size	.L.str.27, 15

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gtk-cancel"
	.size	.L.str.28, 11

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gtk-ok"
	.size	.L.str.29, 7

	.type	preview,@object         # @preview
	.local	preview
	.comm	preview,8,8
	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"invalidated"
	.size	.L.str.30, 12

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Median"
	.size	.L.str.31, 7

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"_Adaptive"
	.size	.L.str.32, 10

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"toggled"
	.size	.L.str.33, 8

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"R_ecursive"
	.size	.L.str.34, 11

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"_Radius:"
	.size	.L.str.35, 9

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"value-changed"
	.size	.L.str.36, 14

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"_Black level:"
	.size	.L.str.37, 14

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"_White level:"
	.size	.L.str.38, 14

	.type	histogram,@object       # @histogram
	.local	histogram
	.comm	histogram,7623696,8
	.type	hist0,@object           # @hist0
	.local	hist0
	.comm	hist0,4,4
	.type	histrest,@object        # @histrest
	.local	histrest
	.comm	histrest,4,4
	.type	hist255,@object         # @hist255
	.local	hist255
	.comm	hist255,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
