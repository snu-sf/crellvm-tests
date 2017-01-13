	.text
	.file	"wind.bc"
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
	movabsq	$.L.str.16, %rdi
	movabsq	$.L.str.17, %rsi
	movabsq	$.L.str.18, %rdx
	movabsq	$.L.str.19, %rax
	movabsq	$.L.str.20, %r9
	movabsq	$.L.str.21, %rcx
	movabsq	$.L.str.22, %r8
	movl	$1, %r10d
	movl	$8, %r11d
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
	movl	$8, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.16, %rdi
	movabsq	$.L.str.23, %rsi
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
	movq	-24(%rbp), %rcx
	movl	88(%rcx), %edi
	callq	gimp_drawable_get
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	gimp_tile_width
	movl	-60(%rbp), %esi         # 4-byte Reload
	movl	%eax, -64(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	xorl	%edx, %edx
	movl	-64(%rbp), %edi         # 4-byte Reload
	divl	%edi
	addl	$1, %eax
	shll	$1, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.24, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.24, %rdi
	movabsq	$.L.str.25, %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.24, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -88(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movl	-52(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB1_9
	jmp	.LBB1_19
.LBB1_19:                               # %do.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_20
.LBB1_20:                               # %do.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB1_14
	jmp	.LBB1_18
.LBB1_3:                                # %sw.bb
	cmpl	$8, -12(%rbp)
	je	.LBB1_5
# BB#4:                                 # %if.then
	movl	$1, -56(%rbp)
	jmp	.LBB1_8
.LBB1_5:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movl	128(%rcx), %eax
	movl	%eax, config
	movq	-24(%rbp), %rcx
	movl	168(%rcx), %eax
	movl	%eax, config+4
	movq	-24(%rbp), %rcx
	movl	208(%rcx), %eax
	movl	%eax, config+8
	movq	-24(%rbp), %rcx
	movl	248(%rcx), %eax
	movl	%eax, config+12
	movq	-24(%rbp), %rcx
	movl	288(%rcx), %eax
	movl	%eax, config+16
	movq	-48(%rbp), %rdi
	callq	render_effect
	cmpl	$-1, %eax
	jne	.LBB1_7
# BB#6:                                 # %if.then.27
	movl	$0, -56(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.28
	jmp	.LBB1_18
.LBB1_9:                                # %sw.bb.29
	movabsq	$.L.str.16, %rdi
	movabsq	$config, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-48(%rbp), %rdi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	dialog_box
	cmpl	$0, %eax
	jne	.LBB1_11
# BB#10:                                # %if.then.32
	movl	$4, -56(%rbp)
	jmp	.LBB1_18
.LBB1_11:                               # %if.end.33
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	render_effect
	cmpl	$-1, %eax
	jne	.LBB1_13
# BB#12:                                # %if.then.37
	movl	$1, -56(%rbp)
	jmp	.LBB1_18
.LBB1_13:                               # %if.end.38
	movabsq	$.L.str.16, %rdi
	movabsq	$config, %rax
	movl	$20, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	gimp_displays_flush
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB1_18
.LBB1_14:                               # %sw.bb.41
	movabsq	$.L.str.16, %rdi
	movabsq	$config, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rdi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	render_effect
	cmpl	$-1, %eax
	jne	.LBB1_16
# BB#15:                                # %if.then.46
	movabsq	$.L.str.26, %rdi
	movl	$0, -56(%rbp)
	callq	gimp_message
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB1_17
.LBB1_16:                               # %if.else.48
	callq	gimp_displays_flush
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB1_17:                               # %if.end.50
	jmp	.LBB1_18
.LBB1_18:                               # %sw.epilog
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
	movabsq	$run.values, %rdi
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movq	-40(%rbp), %rax
	movq	%rdi, (%rax)
	movl	$21, run.values
	movl	-56(%rbp), %ecx
	movl	%ecx, run.values+8
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
	.type	render_effect,@function
render_effect:                          # @render_effect
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$0, config+12
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movl	config, %esi
	movl	config+8, %edx
	movl	config+4, %ecx
	movl	config+16, %r8d
	movq	-16(%rbp), %r9
	callq	render_wind
	jmp	.LBB3_5
.LBB3_2:                                # %if.else
	cmpl	$1, config+12
	jne	.LBB3_4
# BB#3:                                 # %if.then.2
	movq	-8(%rbp), %rdi
	movl	config, %esi
	movl	config+8, %edx
	movl	config+4, %ecx
	movl	config+16, %r8d
	movq	-16(%rbp), %r9
	callq	render_blast
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %if.end.3
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	render_effect, .Lfunc_end3-render_effect
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
.LCPI4_1:
	.quad	4636737291354636288     # double 100
.LCPI4_2:
	.quad	4621819117588971520     # double 10
.LCPI4_3:
	.quad	4632233691727265792     # double 50
	.text
	.align	16, 0x90
	.type	dialog_box,@function
dialog_box:                             # @dialog_box
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$824, %rsp              # imm = 0x338
.Ltmp20:
	.cfi_offset %rbx, -56
.Ltmp21:
	.cfi_offset %r12, -48
.Ltmp22:
	.cfi_offset %r13, -40
.Ltmp23:
	.cfi_offset %r14, -32
.Ltmp24:
	.cfi_offset %r15, -24
	movabsq	$.L.str.29, %rax
	movl	$1, %esi
	movq	%rdi, -48(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	movabsq	$.L.str.30, %rdi
	callq	gettext
	movabsq	$.L.str.31, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.16, %r9
	movabsq	$.L.str.32, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.33, %r11
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -172(%rbp)        # 4-byte Spill
	movl	%r10d, -176(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-56(%rbp), %rdi
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-56(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
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
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.34, %rsi
	movabsq	$render_effect, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-80(%rbp), %rdi
	movq	-48(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movl	$1, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_table_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-72(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-64(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -260(%rbp)        # 4-byte Spill
	movl	-260(%rbp), %ecx        # 4-byte Reload
	movl	-260(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movabsq	$.L.str.35, %rdi
	callq	gettext
	movabsq	$.L.str.36, %rdi
	movl	config+12, %r8d
	movq	%rax, -272(%rbp)        # 8-byte Spill
	movl	%r8d, -276(%rbp)        # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.37, %rdi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	movabsq	$gimp_radio_button_update, %rsi
	movabsq	$config, %r11
	addq	$12, %r11
	xorl	%ecx, %ecx
	leaq	-104(%rbp), %r14
	leaq	-112(%rbp), %r15
	xorl	%edx, %edx
	movl	%edx, %r12d
	movq	-272(%rbp), %r13        # 8-byte Reload
	movq	%rsi, -296(%rbp)        # 8-byte Spill
	movq	%r13, %rsi
	movq	-296(%rbp), %rdx        # 8-byte Reload
	movl	%ecx, -300(%rbp)        # 4-byte Spill
	movq	%r11, %rcx
	movl	-276(%rbp), %r8d        # 4-byte Reload
	movq	-288(%rbp), %r9         # 8-byte Reload
	movl	$0, (%rsp)
	movq	%r14, 8(%rsp)
	movq	%rax, 16(%rsp)
	movl	$1, 24(%rsp)
	movq	%r15, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	movq	%r12, -312(%rbp)        # 8-byte Spill
	callq	gimp_int_radio_group_new
	movabsq	$.L.str.38, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%edi, %edi
	movl	%edi, %r8d
	movl	$2, %r9d
	movq	%rax, -96(%rbp)
	movq	-104(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -320(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-320(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.38, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-112(%rbp), %rdx
	movq	-80(%rbp), %rdi
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-328(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -344(%rbp)        # 8-byte Spill
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movl	$1, %r10d
	movl	$5, %ebx
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r10d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$5, (%rsp)
	movl	$5, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%ebx, -356(%rbp)        # 4-byte Spill
	callq	gtk_table_attach
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.39, %rdi
	callq	gettext
	movabsq	$.L.str.40, %rdi
	movl	config+4, %r8d
	movq	%rax, -368(%rbp)        # 8-byte Spill
	movl	%r8d, -372(%rbp)        # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.41, %rdi
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	movabsq	$gimp_radio_button_update, %rsi
	movabsq	$config, %r11
	addq	$4, %r11
	xorl	%ecx, %ecx
	leaq	-120(%rbp), %r14
	leaq	-128(%rbp), %r15
	xorl	%edx, %edx
	movl	%edx, %r12d
	movq	-368(%rbp), %r13        # 8-byte Reload
	movq	%rsi, -392(%rbp)        # 8-byte Spill
	movq	%r13, %rsi
	movq	-392(%rbp), %rdx        # 8-byte Reload
	movl	%ecx, -396(%rbp)        # 4-byte Spill
	movq	%r11, %rcx
	movl	-372(%rbp), %r8d        # 4-byte Reload
	movq	-384(%rbp), %r9         # 8-byte Reload
	movl	$0, (%rsp)
	movq	%r14, 8(%rsp)
	movq	%rax, 16(%rsp)
	movl	$1, 24(%rsp)
	movq	%r15, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	movq	%r12, -408(%rbp)        # 8-byte Spill
	callq	gimp_int_radio_group_new
	movabsq	$.L.str.38, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%edi, %edi
	movl	%edi, %r8d
	movl	$2, %r9d
	movq	%rax, -96(%rbp)
	movq	-120(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -416(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-416(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.38, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-128(%rbp), %rdx
	movq	-80(%rbp), %rdi
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-424(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -440(%rbp)        # 8-byte Spill
	movq	%rcx, -448(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	movl	$2, %ecx
	xorl	%r8d, %r8d
	movl	$5, %r10d
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	$5, (%rsp)
	movl	$5, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -452(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.42, %rdi
	callq	gettext
	movabsq	$.L.str.43, %rdi
	movl	config+16, %r8d
	movq	%rax, -464(%rbp)        # 8-byte Spill
	movl	%r8d, -468(%rbp)        # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.44, %rdi
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.45, %rdi
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	movabsq	$gimp_radio_button_update, %rsi
	movabsq	$config, %r11
	addq	$16, %r11
	leaq	-136(%rbp), %r14
	movl	$2, %ecx
	leaq	-144(%rbp), %r15
	xorl	%edx, %edx
	leaq	-152(%rbp), %r12
	xorl	%r8d, %r8d
	movl	%r8d, %r13d
	movq	-464(%rbp), %r8         # 8-byte Reload
	movq	%rsi, -496(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movq	-496(%rbp), %r8         # 8-byte Reload
	movl	%edx, -500(%rbp)        # 4-byte Spill
	movq	%r8, %rdx
	movl	%ecx, -504(%rbp)        # 4-byte Spill
	movq	%r11, %rcx
	movl	-468(%rbp), %r8d        # 4-byte Reload
	movq	-480(%rbp), %r9         # 8-byte Reload
	movl	$1, (%rsp)
	movq	%r14, 8(%rsp)
	movq	-488(%rbp), %r11        # 8-byte Reload
	movq	%r11, 16(%rsp)
	movl	$2, 24(%rsp)
	movq	%r15, 32(%rsp)
	movq	%rax, 40(%rsp)
	movl	$0, 48(%rsp)
	movq	%r12, 56(%rsp)
	movq	$0, 64(%rsp)
	movb	$0, %al
	movq	%r13, -512(%rbp)        # 8-byte Spill
	callq	gimp_int_radio_group_new
	movabsq	$.L.str.38, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%edi, %edi
	movl	%edi, %r8d
	movl	$2, %r9d
	movq	%rax, -96(%rbp)
	movq	-136(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -520(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-520(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.38, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-144(%rbp), %rdx
	movq	-80(%rbp), %rdi
	movq	%rdi, -528(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-528(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.38, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-152(%rbp), %rdx
	movq	-80(%rbp), %rdi
	movq	%rdi, -544(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-544(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -560(%rbp)        # 8-byte Spill
	movq	%rcx, -568(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movl	$5, %r10d
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	$5, (%rsp)
	movl	$5, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -572(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movl	$2, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-72(%rbp), %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-64(%rbp), %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -604(%rbp)        # 4-byte Spill
	movl	-604(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.46, %rdi
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.47, %rdi
	cvtsi2sdl	config, %xmm0
	movq	%rax, -632(%rbp)        # 8-byte Spill
	movsd	%xmm0, -640(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$200, %r8d
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_3, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_0, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_2, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %edx
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -648(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -652(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	-632(%rbp), %r11        # 8-byte Reload
	movl	%ecx, -656(%rbp)        # 4-byte Spill
	movq	%r11, %rcx
	movl	-656(%rbp), %r9d        # 4-byte Reload
	movsd	-640(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -664(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-664(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-664(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-664(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.48, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$config, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rdi, -672(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-672(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.48, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rdi
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
	movabsq	$.L.str.50, %rdi
	cvtsi2sdl	config+8, %xmm0
	movq	%rax, -720(%rbp)        # 8-byte Spill
	movsd	%xmm0, -728(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	$1, %edx
	movl	$200, %r8d
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_2, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm1, %xmm1
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movq	-720(%rbp), %r11        # 8-byte Reload
	movq	%rcx, -736(%rbp)        # 8-byte Spill
	movq	%r11, %rcx
	movsd	-728(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm0, -744(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-744(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	%xmm1, -752(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm1
	movaps	%xmm5, %xmm3
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-752(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-752(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.48, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$config, %rdi
	addq	$8, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rdi, -760(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-760(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.48, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rdi
	movq	%rdi, -768(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-768(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-72(%rbp), %rdi
	movq	%rax, -784(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	movq	%rax, -792(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-792(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %r9d
	movl	%r9d, -156(%rbp)
	movq	-56(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-156(%rbp), %eax
	addq	$824, %rsp              # imm = 0x338
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	dialog_box, .Lfunc_end4-dialog_box
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	render_wind,@function
render_wind:                            # @render_wind
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
	subq	$240, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	%r9, -32(%rbp)
	movq	$0, -168(%rbp)
	movq	-8(%rbp), %rdi
	movl	12(%rdi), %ecx
	movl	%ecx, -140(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB5_2
# BB#1:                                 # %if.then
	leaq	-176(%rbp), %rsi
	leaq	-180(%rbp), %rdx
	movq	-32(%rbp), %rdi
	callq	gimp_preview_get_position
	leaq	-132(%rbp), %rsi
	leaq	-136(%rbp), %rdx
	movq	-32(%rbp), %rdi
	callq	gimp_preview_get_size
	movl	$1, %eax
	movl	%eax, %esi
	movl	-180(%rbp), %eax
	addl	-136(%rbp), %eax
	movl	%eax, -184(%rbp)
	movl	-132(%rbp), %eax
	imull	-136(%rbp), %eax
	imull	-140(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -168(%rbp)
	jmp	.LBB5_6
.LBB5_2:                                # %if.else
	leaq	-176(%rbp), %rsi
	leaq	-180(%rbp), %rdx
	leaq	-132(%rbp), %rcx
	leaq	-136(%rbp), %r8
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	je	.LBB5_4
# BB#3:                                 # %if.then.4
	movabsq	$.L.str.27, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	leaq	-128(%rbp), %rdi
	movl	$1, %ecx
	movl	-180(%rbp), %edx
	addl	-136(%rbp), %edx
	movl	%edx, -184(%rbp)
	movq	-8(%rbp), %rsi
	movl	-176(%rbp), %edx
	movl	-180(%rbp), %r8d
	movl	-132(%rbp), %r9d
	movl	-136(%rbp), %r10d
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -192(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	jmp	.LBB5_5
.LBB5_4:                                # %if.else.8
	jmp	.LBB5_22
.LBB5_5:                                # %if.end
	jmp	.LBB5_6
.LBB5_6:                                # %if.end.9
	leaq	-80(%rbp), %rdi
	xorl	%eax, %eax
	movq	-8(%rbp), %rsi
	movl	-176(%rbp), %edx
	movl	-180(%rbp), %ecx
	movl	-132(%rbp), %r8d
	movl	-136(%rbp), %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -196(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movl	$1, %eax
	movl	%eax, %esi
	movl	-132(%rbp), %eax
	imull	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	imull	$3, -140(%rbp), %eax
	movl	%eax, -148(%rbp)
	movl	-144(%rbp), %eax
	subl	-148(%rbp), %eax
	movl	%eax, -172(%rbp)
	movslq	-144(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -160(%rbp)
	movl	-180(%rbp), %ecx
	movl	%ecx, -152(%rbp)
.LBB5_7:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-152(%rbp), %eax
	cmpl	-184(%rbp), %eax
	jge	.LBB5_19
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB5_7 Depth=1
	leaq	-80(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movl	-176(%rbp), %edx
	movl	-152(%rbp), %ecx
	movl	-132(%rbp), %r8d
	callq	gimp_pixel_rgn_get_row
	cmpl	$1, -20(%rbp)
	jne	.LBB5_10
# BB#9:                                 # %if.then.17
                                        #   in Loop: Header=BB5_7 Depth=1
	movq	-160(%rbp), %rdi
	movl	-144(%rbp), %esi
	movl	-140(%rbp), %edx
	callq	reverse_buffer
.LBB5_10:                               # %if.end.18
                                        #   in Loop: Header=BB5_7 Depth=1
	movq	-160(%rbp), %rdi
	movl	-140(%rbp), %esi
	movl	-172(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %r8d
	movl	-24(%rbp), %r9d
	callq	render_wind_row
	cmpl	$1, -20(%rbp)
	jne	.LBB5_12
# BB#11:                                # %if.then.21
                                        #   in Loop: Header=BB5_7 Depth=1
	movq	-160(%rbp), %rdi
	movl	-144(%rbp), %esi
	movl	-140(%rbp), %edx
	callq	reverse_buffer
.LBB5_12:                               # %if.end.22
                                        #   in Loop: Header=BB5_7 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB5_14
# BB#13:                                # %if.then.24
                                        #   in Loop: Header=BB5_7 Depth=1
	movq	-168(%rbp), %rax
	movl	-152(%rbp), %ecx
	subl	-180(%rbp), %ecx
	imull	-144(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	-160(%rbp), %rsi
	movslq	-144(%rbp), %rdx
	movq	%rax, %rdi
	callq	memcpy
	jmp	.LBB5_17
.LBB5_14:                               # %if.else.28
                                        #   in Loop: Header=BB5_7 Depth=1
	leaq	-128(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movl	-176(%rbp), %edx
	movl	-152(%rbp), %ecx
	movl	-132(%rbp), %r8d
	callq	gimp_pixel_rgn_set_row
	movl	$8, %ecx
	movl	-152(%rbp), %eax
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB5_16
# BB#15:                                # %if.then.31
                                        #   in Loop: Header=BB5_7 Depth=1
	movl	-152(%rbp), %eax
	subl	-180(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	-136(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -200(%rbp)        # 4-byte Spill
.LBB5_16:                               # %if.end.36
                                        #   in Loop: Header=BB5_7 Depth=1
	jmp	.LBB5_17
.LBB5_17:                               # %if.end.37
                                        #   in Loop: Header=BB5_7 Depth=1
	jmp	.LBB5_18
.LBB5_18:                               # %for.inc
                                        #   in Loop: Header=BB5_7 Depth=1
	movl	-152(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -152(%rbp)
	jmp	.LBB5_7
.LBB5_19:                               # %for.end
	movq	-160(%rbp), %rdi
	callq	g_free
	cmpq	$0, -32(%rbp)
	je	.LBB5_21
# BB#20:                                # %if.then.39
	movq	-32(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movl	-132(%rbp), %eax
	imull	-140(%rbp), %eax
	movl	%eax, %edx
	callq	gimp_preview_draw_buffer
	movq	-168(%rbp), %rdi
	callq	g_free
	jmp	.LBB5_22
.LBB5_21:                               # %if.else.41
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-8(%rbp), %rdi
	movl	%eax, -204(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-176(%rbp), %esi
	movl	-180(%rbp), %edx
	movl	-132(%rbp), %ecx
	movl	-136(%rbp), %r8d
	movl	%eax, -208(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -212(%rbp)        # 4-byte Spill
.LBB5_22:                               # %if.end.47
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	render_wind, .Lfunc_end5-render_wind
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	render_blast,@function
render_blast:                           # @render_blast
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
	subq	$240, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	%r9, -32(%rbp)
	movq	-8(%rbp), %rdi
	movl	12(%rdi), %ecx
	movl	%ecx, -56(%rbp)
	movq	$0, -72(%rbp)
	movl	$0, -180(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB6_2
# BB#1:                                 # %if.then
	leaq	-36(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	movq	-32(%rbp), %rdi
	callq	gimp_preview_get_position
	leaq	-48(%rbp), %rsi
	leaq	-52(%rbp), %rdx
	movq	-32(%rbp), %rdi
	callq	gimp_preview_get_size
	movl	$1, %eax
	movl	%eax, %esi
	movl	-40(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-48(%rbp), %eax
	imull	-52(%rbp), %eax
	imull	-56(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -72(%rbp)
	jmp	.LBB6_6
.LBB6_2:                                # %if.else
	leaq	-36(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-52(%rbp), %r8
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	je	.LBB6_4
# BB#3:                                 # %if.then.4
	movabsq	$.L.str.28, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	leaq	-168(%rbp), %rdi
	movl	$1, %ecx
	movl	-40(%rbp), %edx
	addl	-52(%rbp), %edx
	movl	%edx, -44(%rbp)
	movq	-8(%rbp), %rsi
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %r8d
	movl	-48(%rbp), %r9d
	movl	-52(%rbp), %r10d
	movl	%ecx, -196(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -200(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	jmp	.LBB6_5
.LBB6_4:                                # %if.else.8
	jmp	.LBB6_35
.LBB6_5:                                # %if.end
	jmp	.LBB6_6
.LBB6_6:                                # %if.end.9
	leaq	-120(%rbp), %rdi
	xorl	%eax, %eax
	movq	-8(%rbp), %rsi
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	movl	-48(%rbp), %r8d
	movl	-52(%rbp), %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -204(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movl	$1, %eax
	movl	%eax, %esi
	movl	-48(%rbp), %eax
	imull	-56(%rbp), %eax
	movl	%eax, -176(%rbp)
	movl	-176(%rbp), %eax
	subl	-56(%rbp), %eax
	movl	%eax, -184(%rbp)
	movslq	-176(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -64(%rbp)
	movl	-40(%rbp), %ecx
	movl	%ecx, -172(%rbp)
.LBB6_7:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_19 Depth 2
	movl	-172(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB6_32
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB6_7 Depth=1
	leaq	-120(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	-36(%rbp), %edx
	movl	-172(%rbp), %ecx
	movl	-48(%rbp), %r8d
	callq	gimp_pixel_rgn_get_row
	cmpl	$1, -20(%rbp)
	jne	.LBB6_10
# BB#9:                                 # %if.then.16
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	-64(%rbp), %rdi
	movl	-176(%rbp), %esi
	movl	-56(%rbp), %edx
	callq	reverse_buffer
.LBB6_10:                               # %if.end.17
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	-64(%rbp), %rdi
	movl	-56(%rbp), %esi
	movl	-184(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %r8d
	movl	-24(%rbp), %r9d
	callq	render_blast_row
	movl	%eax, -180(%rbp)
	cmpl	$1, -20(%rbp)
	jne	.LBB6_12
# BB#11:                                # %if.then.21
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	-64(%rbp), %rdi
	movl	-176(%rbp), %esi
	movl	-56(%rbp), %edx
	callq	reverse_buffer
.LBB6_12:                               # %if.end.22
                                        #   in Loop: Header=BB6_7 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB6_14
# BB#13:                                # %if.then.24
                                        #   in Loop: Header=BB6_7 Depth=1
	movq	-72(%rbp), %rax
	movl	-172(%rbp), %ecx
	subl	-40(%rbp), %ecx
	imull	-176(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	-64(%rbp), %rsi
	movslq	-176(%rbp), %rdx
	movq	%rax, %rdi
	callq	memcpy
	jmp	.LBB6_17
.LBB6_14:                               # %if.else.28
                                        #   in Loop: Header=BB6_7 Depth=1
	leaq	-168(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	-36(%rbp), %edx
	movl	-172(%rbp), %ecx
	movl	-48(%rbp), %r8d
	callq	gimp_pixel_rgn_set_row
	movl	$8, %ecx
	movl	-172(%rbp), %eax
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB6_16
# BB#15:                                # %if.then.31
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	-172(%rbp), %eax
	subl	-40(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	-52(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -208(%rbp)        # 4-byte Spill
.LBB6_16:                               # %if.end.36
                                        #   in Loop: Header=BB6_7 Depth=1
	jmp	.LBB6_17
.LBB6_17:                               # %if.end.37
                                        #   in Loop: Header=BB6_7 Depth=1
	cmpl	$0, -180(%rbp)
	je	.LBB6_30
# BB#18:                                # %if.then.39
                                        #   in Loop: Header=BB6_7 Depth=1
	xorl	%edi, %edi
	movl	$2, %esi
	callq	g_random_int_range
	addl	$1, %eax
	movl	%eax, -192(%rbp)
	movl	$0, -188(%rbp)
.LBB6_19:                               # %for.cond.42
                                        #   Parent Loop BB6_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-188(%rbp), %eax
	cmpl	-192(%rbp), %eax
	movb	%cl, -209(%rbp)         # 1-byte Spill
	jge	.LBB6_21
# BB#20:                                # %land.rhs
                                        #   in Loop: Header=BB6_19 Depth=2
	movl	-172(%rbp), %eax
	cmpl	-44(%rbp), %eax
	setl	%cl
	movb	%cl, -209(%rbp)         # 1-byte Spill
.LBB6_21:                               # %land.end
                                        #   in Loop: Header=BB6_19 Depth=2
	movb	-209(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_22
	jmp	.LBB6_29
.LBB6_22:                               # %for.body.47
                                        #   in Loop: Header=BB6_19 Depth=2
	movl	-172(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -172(%rbp)
	movl	-172(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB6_27
# BB#23:                                # %if.then.50
                                        #   in Loop: Header=BB6_19 Depth=2
	leaq	-120(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	-36(%rbp), %edx
	movl	-172(%rbp), %ecx
	movl	-48(%rbp), %r8d
	callq	gimp_pixel_rgn_get_row
	cmpq	$0, -32(%rbp)
	je	.LBB6_25
# BB#24:                                # %if.then.52
                                        #   in Loop: Header=BB6_19 Depth=2
	movq	-72(%rbp), %rax
	movl	-172(%rbp), %ecx
	subl	-40(%rbp), %ecx
	imull	-176(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	-64(%rbp), %rsi
	movslq	-176(%rbp), %rdx
	movq	%rax, %rdi
	callq	memcpy
	jmp	.LBB6_26
.LBB6_25:                               # %if.else.58
                                        #   in Loop: Header=BB6_19 Depth=2
	leaq	-168(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	-36(%rbp), %edx
	movl	-172(%rbp), %ecx
	movl	-48(%rbp), %r8d
	callq	gimp_pixel_rgn_set_row
.LBB6_26:                               # %if.end.59
                                        #   in Loop: Header=BB6_19 Depth=2
	jmp	.LBB6_27
.LBB6_27:                               # %if.end.60
                                        #   in Loop: Header=BB6_19 Depth=2
	jmp	.LBB6_28
.LBB6_28:                               # %for.inc
                                        #   in Loop: Header=BB6_19 Depth=2
	movl	-188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -188(%rbp)
	jmp	.LBB6_19
.LBB6_29:                               # %for.end
                                        #   in Loop: Header=BB6_7 Depth=1
	jmp	.LBB6_30
.LBB6_30:                               # %if.end.62
                                        #   in Loop: Header=BB6_7 Depth=1
	jmp	.LBB6_31
.LBB6_31:                               # %for.inc.63
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	-172(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -172(%rbp)
	jmp	.LBB6_7
.LBB6_32:                               # %for.end.65
	movq	-64(%rbp), %rdi
	callq	g_free
	cmpq	$0, -32(%rbp)
	je	.LBB6_34
# BB#33:                                # %if.then.67
	movq	-32(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	-48(%rbp), %eax
	imull	-56(%rbp), %eax
	movl	%eax, %edx
	callq	gimp_preview_draw_buffer
	movq	-72(%rbp), %rdi
	callq	g_free
	jmp	.LBB6_35
.LBB6_34:                               # %if.else.69
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-8(%rbp), %rdi
	movl	%eax, -216(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-52(%rbp), %r8d
	movl	%eax, -220(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -224(%rbp)        # 4-byte Spill
.LBB6_35:                               # %if.end.75
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	render_blast, .Lfunc_end6-render_blast
	.cfi_endproc

	.align	16, 0x90
	.type	reverse_buffer,@function
reverse_buffer:                         # @reverse_buffer
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
	movl	$2, %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-12(%rbp), %edx
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-36(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movl	%eax, -32(%rbp)
	movl	$0, -20(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB7_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-12(%rbp), %eax
	subl	-16(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
	movslq	-20(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -28(%rbp)
	movslq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movslq	-20(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	movl	-28(%rbp), %eax
	movb	%al, %sil
	movslq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -28(%rbp)
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	movl	-28(%rbp), %eax
	movb	%al, %sil
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	movl	-20(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -28(%rbp)
	movl	-24(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-20(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	movl	-28(%rbp), %eax
	movb	%al, %sil
	movl	-24(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	cmpl	$3, -16(%rbp)
	jle	.LBB7_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -28(%rbp)
	movl	-24(%rbp), %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	(%rdx,%rcx), %sil
	movl	-20(%rbp), %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
	movl	-28(%rbp), %eax
	movb	%al, %sil
	movl	-24(%rbp), %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movb	%sil, (%rdx,%rcx)
.LBB7_4:                                # %if.end
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_5
.LBB7_5:                                # %for.inc
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-16(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB7_1
.LBB7_6:                                # %for.end
	popq	%rbp
	retq
.Lfunc_end7:
	.size	reverse_buffer, .Lfunc_end7-reverse_buffer
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	render_wind_row,@function
render_wind_row:                        # @render_wind_row
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -72(%rbp)
	movl	$0, -88(%rbp)
	imull	$3, -12(%rbp), %ecx
	movl	%ecx, -116(%rbp)
	movl	$0, -36(%rbp)
.LBB8_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_15 Depth 2
	movl	-36(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB8_54
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, -120(%rbp)
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	movl	-36(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -128(%rbp)
	movl	$0, -132(%rbp)
	cmpl	$3, -12(%rbp)
	jle	.LBB8_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -132(%rbp)
.LBB8_4:                                # %if.end
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-120(%rbp), %rcx
	addq	%rcx, %rax
	movq	-8(%rbp), %rcx
	movslq	-120(%rbp), %rdx
	addq	%rdx, %rcx
	movslq	-116(%rbp), %rdx
	addq	%rdx, %rcx
	movl	-28(%rbp), %edx
	movl	-20(%rbp), %esi
	cmpl	$3, -12(%rbp)
	setg	%dil
	andb	$1, %dil
	movzbl	%dil, %r8d
	movq	%rax, %rdi
	movl	%esi, -148(%rbp)        # 4-byte Spill
	movq	%rcx, %rsi
	movl	-148(%rbp), %ecx        # 4-byte Reload
	callq	threshold_exceeded
	cmpl	$0, %eax
	je	.LBB8_52
# BB#5:                                 # %if.then.9
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-120(%rbp), %eax
	addl	-116(%rbp), %eax
	movl	%eax, -100(%rbp)
	movslq	-120(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -60(%rbp)
	movslq	-124(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -64(%rbp)
	movslq	-128(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -68(%rbp)
	movslq	-100(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -76(%rbp)
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -80(%rbp)
	movl	-100(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -84(%rbp)
	cmpl	$3, -12(%rbp)
	jle	.LBB8_7
# BB#6:                                 # %if.then.31
                                        #   in Loop: Header=BB8_1 Depth=1
	movslq	-132(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -72(%rbp)
	movl	-100(%rbp), %edx
	addl	$3, %edx
	movslq	%edx, %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movl	%edx, -88(%rbp)
.LBB8_7:                                # %if.end.39
                                        #   in Loop: Header=BB8_1 Depth=1
	xorl	%edi, %edi
	movl	$3, %esi
	callq	g_random_int_range
	cmpl	$0, %eax
	je	.LBB8_9
# BB#8:                                 # %if.then.42
                                        #   in Loop: Header=BB8_1 Depth=1
	cvtsi2sdl	-24(%rbp), %xmm0
	movsd	%xmm0, -144(%rbp)
	jmp	.LBB8_10
.LBB8_9:                                # %if.else
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-24(%rbp), %eax
	shll	$2, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -144(%rbp)
.LBB8_10:                               # %if.end.46
                                        #   in Loop: Header=BB8_1 Depth=1
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	callq	g_random_double
	movsd	-160(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	movl	-100(%rbp), %eax
	movl	-92(%rbp), %ecx
	imull	-12(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -104(%rbp)
	movl	-104(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jle	.LBB8_12
# BB#11:                                # %if.then.55
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-16(%rbp), %eax
	movl	%eax, -104(%rbp)
.LBB8_12:                               # %if.end.56
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-92(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	-76(%rbp), %eax
	subl	-60(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-80(%rbp), %eax
	subl	-64(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-84(%rbp), %eax
	subl	-68(%rbp), %eax
	movl	%eax, -52(%rbp)
	cmpl	$3, -12(%rbp)
	jle	.LBB8_14
# BB#13:                                # %if.then.61
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-88(%rbp), %eax
	subl	-72(%rbp), %eax
	movl	%eax, -56(%rbp)
.LBB8_14:                               # %if.end.63
                                        #   in Loop: Header=BB8_1 Depth=1
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movl	-40(%rbp), %eax
	imull	-40(%rbp), %eax
	addl	-40(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	%xmm1, -112(%rbp)
	divsd	-112(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -96(%rbp)
	movl	-100(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB8_15:                               # %for.cond.67
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jge	.LBB8_51
# BB#16:                                # %for.body.70
                                        #   in Loop: Header=BB8_15 Depth=2
	movq	-8(%rbp), %rax
	movslq	-120(%rbp), %rcx
	addq	%rcx, %rax
	movq	-8(%rbp), %rcx
	movslq	-32(%rbp), %rdx
	addq	%rdx, %rcx
	movl	-28(%rbp), %edx
	movl	-20(%rbp), %esi
	cmpl	$3, -12(%rbp)
	setg	%dil
	andb	$1, %dil
	movzbl	%dil, %r8d
	movq	%rax, %rdi
	movl	%esi, -164(%rbp)        # 4-byte Spill
	movq	%rcx, %rsi
	movl	-164(%rbp), %ecx        # 4-byte Reload
	callq	threshold_exceeded
	cmpl	$0, %eax
	jne	.LBB8_19
# BB#17:                                # %land.lhs.true
                                        #   in Loop: Header=BB8_15 Depth=2
	callq	g_random_int
	andl	$32768, %eax            # imm = 0x8000
	cmpl	$0, %eax
	je	.LBB8_19
# BB#18:                                # %if.then.82
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_51
.LBB8_19:                               # %if.end.83
                                        #   in Loop: Header=BB8_15 Depth=2
	movl	-44(%rbp), %eax
	imull	-96(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	-112(%rbp), %xmm0
	cvtsi2sdl	-60(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -60(%rbp)
	movl	-48(%rbp), %eax
	imull	-96(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	-112(%rbp), %xmm0
	cvtsi2sdl	-64(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -64(%rbp)
	movl	-52(%rbp), %eax
	imull	-96(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	-112(%rbp), %xmm0
	cvtsi2sdl	-68(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -68(%rbp)
	cmpl	$3, -12(%rbp)
	jle	.LBB8_26
# BB#20:                                # %if.then.104
                                        #   in Loop: Header=BB8_15 Depth=2
	movl	-56(%rbp), %eax
	imull	-96(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	mulsd	-112(%rbp), %xmm0
	cvtsi2sdl	-72(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -72(%rbp)
	cmpl	$255, -72(%rbp)
	jle	.LBB8_22
# BB#21:                                # %if.then.113
                                        #   in Loop: Header=BB8_15 Depth=2
	movl	$255, -72(%rbp)
	jmp	.LBB8_25
.LBB8_22:                               # %if.else.114
                                        #   in Loop: Header=BB8_15 Depth=2
	cmpl	$0, -72(%rbp)
	jge	.LBB8_24
# BB#23:                                # %if.then.117
                                        #   in Loop: Header=BB8_15 Depth=2
	movl	$0, -72(%rbp)
.LBB8_24:                               # %if.end.118
                                        #   in Loop: Header=BB8_15 Depth=2
	jmp	.LBB8_25
.LBB8_25:                               # %if.end.119
                                        #   in Loop: Header=BB8_15 Depth=2
	jmp	.LBB8_26
.LBB8_26:                               # %if.end.120
                                        #   in Loop: Header=BB8_15 Depth=2
	cmpl	$255, -60(%rbp)
	jle	.LBB8_28
# BB#27:                                # %if.then.123
                                        #   in Loop: Header=BB8_15 Depth=2
	movl	$255, -60(%rbp)
	jmp	.LBB8_31
.LBB8_28:                               # %if.else.124
                                        #   in Loop: Header=BB8_15 Depth=2
	cmpl	$0, -60(%rbp)
	jge	.LBB8_30
# BB#29:                                # %if.then.127
                                        #   in Loop: Header=BB8_15 Depth=2
	movl	$0, -60(%rbp)
.LBB8_30:                               # %if.end.128
                                        #   in Loop: Header=BB8_15 Depth=2
	jmp	.LBB8_31
.LBB8_31:                               # %if.end.129
                                        #   in Loop: Header=BB8_15 Depth=2
	cmpl	$255, -64(%rbp)
	jle	.LBB8_33
# BB#32:                                # %if.then.132
                                        #   in Loop: Header=BB8_15 Depth=2
	movl	$255, -64(%rbp)
	jmp	.LBB8_36
.LBB8_33:                               # %if.else.133
                                        #   in Loop: Header=BB8_15 Depth=2
	cmpl	$0, -64(%rbp)
	jge	.LBB8_35
# BB#34:                                # %if.then.136
                                        #   in Loop: Header=BB8_15 Depth=2
	movl	$0, -64(%rbp)
.LBB8_35:                               # %if.end.137
                                        #   in Loop: Header=BB8_15 Depth=2
	jmp	.LBB8_36
.LBB8_36:                               # %if.end.138
                                        #   in Loop: Header=BB8_15 Depth=2
	cmpl	$255, -68(%rbp)
	jle	.LBB8_38
# BB#37:                                # %if.then.141
                                        #   in Loop: Header=BB8_15 Depth=2
	movl	$255, -68(%rbp)
	jmp	.LBB8_41
.LBB8_38:                               # %if.else.142
                                        #   in Loop: Header=BB8_15 Depth=2
	cmpl	$0, -68(%rbp)
	jge	.LBB8_40
# BB#39:                                # %if.then.145
                                        #   in Loop: Header=BB8_15 Depth=2
	movl	$0, -68(%rbp)
.LBB8_40:                               # %if.end.146
                                        #   in Loop: Header=BB8_15 Depth=2
	jmp	.LBB8_41
.LBB8_41:                               # %if.end.147
                                        #   in Loop: Header=BB8_15 Depth=2
	movl	$3, %eax
	movl	-60(%rbp), %ecx
	shll	$1, %ecx
	movl	-32(%rbp), %edx
	addl	$0, %edx
	movslq	%edx, %rsi
	movq	-8(%rbp), %rdi
	movzbl	(%rdi,%rsi), %edx
	addl	%edx, %ecx
	movl	%eax, -168(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-168(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movb	%al, %r8b
	movl	-32(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rsi
	movq	-8(%rbp), %rdi
	movb	%r8b, (%rdi,%rsi)
	movl	-64(%rbp), %eax
	shll	$1, %eax
	movl	-32(%rbp), %r9d
	addl	$1, %r9d
	movslq	%r9d, %rsi
	movq	-8(%rbp), %rdi
	movzbl	(%rdi,%rsi), %r9d
	addl	%r9d, %eax
	cltd
	idivl	%ecx
	movb	%al, %r8b
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	movq	-8(%rbp), %rdi
	movb	%r8b, (%rdi,%rsi)
	movl	-68(%rbp), %eax
	shll	$1, %eax
	movl	-32(%rbp), %r9d
	addl	$2, %r9d
	movslq	%r9d, %rsi
	movq	-8(%rbp), %rdi
	movzbl	(%rdi,%rsi), %r9d
	addl	%r9d, %eax
	cltd
	idivl	%ecx
	movb	%al, %r8b
	movl	-32(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rsi
	movq	-8(%rbp), %rdi
	movb	%r8b, (%rdi,%rsi)
	cmpl	$3, -12(%rbp)
	jle	.LBB8_43
# BB#42:                                # %if.then.183
                                        #   in Loop: Header=BB8_15 Depth=2
	movl	$3, %eax
	movl	-72(%rbp), %ecx
	shll	$1, %ecx
	movl	-32(%rbp), %edx
	addl	$3, %edx
	movslq	%edx, %rsi
	movq	-8(%rbp), %rdi
	movzbl	(%rdi,%rsi), %edx
	addl	%edx, %ecx
	movl	%eax, -172(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-172(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movb	%al, %r8b
	movl	-32(%rbp), %eax
	addl	$3, %eax
	movslq	%eax, %rsi
	movq	-8(%rbp), %rdi
	movb	%r8b, (%rdi,%rsi)
.LBB8_43:                               # %if.end.195
                                        #   in Loop: Header=BB8_15 Depth=2
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	addq	%rcx, %rax
	movq	-8(%rbp), %rcx
	movslq	-32(%rbp), %rsi
	addq	%rsi, %rcx
	movslq	-116(%rbp), %rsi
	addq	%rsi, %rcx
	movl	-20(%rbp), %edi
	cmpl	$3, -12(%rbp)
	setg	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %r8d
	movl	%edi, -176(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movl	-176(%rbp), %ecx        # 4-byte Reload
	callq	threshold_exceeded
	cmpl	$0, %eax
	je	.LBB8_49
# BB#44:                                # %if.then.206
                                        #   in Loop: Header=BB8_15 Depth=2
	movl	-32(%rbp), %eax
	addl	-116(%rbp), %eax
	addl	$0, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -76(%rbp)
	movl	-32(%rbp), %eax
	addl	-116(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -80(%rbp)
	movl	-32(%rbp), %eax
	addl	-116(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -84(%rbp)
	cmpl	$3, -12(%rbp)
	jle	.LBB8_46
# BB#45:                                # %if.then.224
                                        #   in Loop: Header=BB8_15 Depth=2
	movl	-32(%rbp), %eax
	addl	-116(%rbp), %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -88(%rbp)
.LBB8_46:                               # %if.end.230
                                        #   in Loop: Header=BB8_15 Depth=2
	movl	-76(%rbp), %eax
	subl	-60(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-80(%rbp), %eax
	subl	-64(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-84(%rbp), %eax
	subl	-68(%rbp), %eax
	movl	%eax, -52(%rbp)
	cmpl	$3, -12(%rbp)
	jle	.LBB8_48
# BB#47:                                # %if.then.236
                                        #   in Loop: Header=BB8_15 Depth=2
	movl	-88(%rbp), %eax
	subl	-72(%rbp), %eax
	movl	%eax, -56(%rbp)
.LBB8_48:                               # %if.end.238
                                        #   in Loop: Header=BB8_15 Depth=2
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movl	-96(%rbp), %eax
	imull	-96(%rbp), %eax
	addl	-96(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	%xmm1, -112(%rbp)
	divsd	-112(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
.LBB8_49:                               # %if.end.243
                                        #   in Loop: Header=BB8_15 Depth=2
	movl	-96(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -96(%rbp)
# BB#50:                                # %for.inc
                                        #   in Loop: Header=BB8_15 Depth=2
	movl	-12(%rbp), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB8_15
.LBB8_51:                               # %for.end
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_52
.LBB8_52:                               # %if.end.245
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_53
.LBB8_53:                               # %for.inc.246
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-12(%rbp), %eax
	addl	-36(%rbp), %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB8_1
.LBB8_54:                               # %for.end.248
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	render_wind_row, .Lfunc_end8-render_wind_row
	.cfi_endproc

	.align	16, 0x90
	.type	threshold_exceeded,@function
threshold_exceeded:                     # @threshold_exceeded
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$72, %rsp
.Ltmp40:
	.cfi_offset %rbx, -24
	leaq	-40(%rbp), %rax
	leaq	-44(%rbp), %r9
	leaq	-48(%rbp), %r10
	leaq	-52(%rbp), %r11
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movl	-36(%rbp), %ecx
	movq	%rax, %r8
	movq	%r10, (%rsp)
	movq	%r11, 8(%rsp)
	callq	get_derivative
	movl	$4, %ecx
	movl	-40(%rbp), %edx
	addl	-44(%rbp), %edx
	addl	-48(%rbp), %edx
	addl	-52(%rbp), %edx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	cmpl	-32(%rbp), %eax
	setg	%bl
	andb	$1, %bl
	movzbl	%bl, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end9:
	.size	threshold_exceeded, .Lfunc_end9-threshold_exceeded
	.cfi_endproc

	.align	16, 0x90
	.type	get_derivative,@function
get_derivative:                         # @get_derivative
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
	subq	$112, %rsp
	movq	24(%rbp), %rax
	movq	16(%rbp), %r10
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movq	%r10, -48(%rbp)
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -88(%rbp)
	cmpl	$0, -24(%rbp)
	je	.LBB10_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -96(%rbp)
	movq	-16(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-96(%rbp), %rax
	movzbl	(%rax), %edx
	subl	%edx, %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, (%rax)
	jmp	.LBB10_3
.LBB10_2:                               # %if.else
	movq	-56(%rbp), %rax
	movl	$0, (%rax)
.LBB10_3:                               # %if.end
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	subl	%edx, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-80(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-64(%rbp), %rax
	movzbl	(%rax), %edx
	subl	%edx, %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-88(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-72(%rbp), %rax
	movzbl	(%rax), %edx
	subl	%edx, %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, (%rax)
	cmpl	$0, -20(%rbp)
	jne	.LBB10_5
# BB#4:                                 # %if.then.17
	movq	-32(%rbp), %rax
	movl	(%rax), %edi
	callq	abs
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-40(%rbp), %rcx
	movl	(%rcx), %edi
	callq	abs
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-48(%rbp), %rcx
	movl	(%rcx), %edi
	callq	abs
	movq	-48(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-56(%rbp), %rcx
	movl	(%rcx), %edi
	callq	abs
	movq	-56(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB10_11
.LBB10_5:                               # %if.else.21
	cmpl	$1, -20(%rbp)
	jne	.LBB10_7
# BB#6:                                 # %if.then.24
	xorl	%eax, %eax
	movq	-32(%rbp), %rcx
	movl	%eax, %edx
	subl	(%rcx), %edx
	movq	-32(%rbp), %rcx
	movl	%edx, (%rcx)
	movq	-40(%rbp), %rcx
	movl	%eax, %edx
	subl	(%rcx), %edx
	movq	-40(%rbp), %rcx
	movl	%edx, (%rcx)
	movq	-48(%rbp), %rcx
	movl	%eax, %edx
	subl	(%rcx), %edx
	movq	-48(%rbp), %rcx
	movl	%edx, (%rcx)
	movq	-56(%rbp), %rcx
	subl	(%rcx), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB10_10
.LBB10_7:                               # %if.else.29
	cmpl	$2, -20(%rbp)
	jne	.LBB10_9
# BB#8:                                 # %if.then.32
	jmp	.LBB10_9
.LBB10_9:                               # %if.end.33
	jmp	.LBB10_10
.LBB10_10:                              # %if.end.34
	jmp	.LBB10_11
.LBB10_11:                              # %if.end.35
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	get_derivative, .Lfunc_end10-get_derivative
	.cfi_endproc

	.align	16, 0x90
	.type	render_blast_row,@function
render_blast_row:                       # @render_blast_row
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -64(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_19 Depth 2
	movl	-64(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB11_29
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movl	-64(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -40(%rbp)
	cmpl	$3, -12(%rbp)
	jle	.LBB11_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-64(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -44(%rbp)
.LBB11_4:                               # %if.end
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	addq	%rcx, %rax
	movq	-8(%rbp), %rcx
	movslq	-32(%rbp), %rdx
	addq	%rdx, %rcx
	movslq	-12(%rbp), %rdx
	addq	%rdx, %rcx
	movl	-28(%rbp), %edx
	movl	-20(%rbp), %esi
	cmpl	$3, -12(%rbp)
	setg	%dil
	andb	$1, %dil
	movzbl	%dil, %r8d
	movq	%rax, %rdi
	movl	%esi, -80(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	-80(%rbp), %ecx         # 4-byte Reload
	callq	threshold_exceeded
	cmpl	$0, %eax
	je	.LBB11_27
# BB#5:                                 # %if.then.9
                                        #   in Loop: Header=BB11_1 Depth=1
	xorl	%edi, %edi
	movl	$10, %esi
	movl	-32(%rbp), %eax
	movl	%eax, -48(%rbp)
	callq	g_random_int_range
	movl	%eax, -68(%rbp)
	cmpl	$5, -68(%rbp)
	jle	.LBB11_7
# BB#6:                                 # %if.then.13
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	$2, -72(%rbp)
	jmp	.LBB11_11
.LBB11_7:                               # %if.else
                                        #   in Loop: Header=BB11_1 Depth=1
	cmpl	$3, -68(%rbp)
	jle	.LBB11_9
# BB#8:                                 # %if.then.16
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	$3, -72(%rbp)
	jmp	.LBB11_10
.LBB11_9:                               # %if.else.17
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	$4, -72(%rbp)
.LBB11_10:                              # %if.end.18
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_11
.LBB11_11:                              # %if.end.19
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	$0, -56(%rbp)
	movl	-72(%rbp), %esi
	xorl	%edi, %edi
	callq	g_random_int_range
	movl	%eax, %esi
	movl	%esi, %ecx
	subl	$3, %eax
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movl	%eax, -92(%rbp)         # 4-byte Spill
	ja	.LBB11_16
# BB#30:                                # %if.end.19
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	.LJTI11_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB11_12:                              # %sw.bb
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-24(%rbp), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
.LBB11_13:                              # %sw.bb.22
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-24(%rbp), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
.LBB11_14:                              # %sw.bb.24
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-24(%rbp), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
.LBB11_15:                              # %sw.bb.26
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-24(%rbp), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
.LBB11_16:                              # %sw.epilog
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-48(%rbp), %eax
	movl	-12(%rbp), %ecx
	imull	-56(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jle	.LBB11_18
# BB#17:                                # %if.then.31
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-16(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB11_18:                              # %if.end.32
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-48(%rbp), %eax
	movl	%eax, -60(%rbp)
.LBB11_19:                              # %for.cond.33
                                        #   Parent Loop BB11_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-60(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB11_24
# BB#20:                                # %for.body.36
                                        #   in Loop: Header=BB11_19 Depth=2
	movslq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-60(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
	movslq	-36(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movl	-60(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rax
	movq	-8(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
	movslq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movl	-60(%rbp), %esi
	addl	$2, %esi
	movslq	%esi, %rax
	movq	-8(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
	cmpl	$3, -12(%rbp)
	jle	.LBB11_22
# BB#21:                                # %if.then.51
                                        #   in Loop: Header=BB11_19 Depth=2
	movslq	-44(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movl	-60(%rbp), %esi
	addl	$3, %esi
	movslq	%esi, %rax
	movq	-8(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
.LBB11_22:                              # %if.end.57
                                        #   in Loop: Header=BB11_19 Depth=2
	jmp	.LBB11_23
.LBB11_23:                              # %for.inc
                                        #   in Loop: Header=BB11_19 Depth=2
	movl	-12(%rbp), %eax
	addl	-60(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB11_19
.LBB11_24:                              # %for.end
                                        #   in Loop: Header=BB11_1 Depth=1
	xorl	%edi, %edi
	movl	$10, %esi
	movl	-52(%rbp), %eax
	subl	-12(%rbp), %eax
	movl	%eax, -64(%rbp)
	callq	g_random_int_range
	cmpl	$7, %eax
	jle	.LBB11_26
# BB#25:                                # %if.then.62
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	$1, -76(%rbp)
.LBB11_26:                              # %if.end.63
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_27
.LBB11_27:                              # %if.end.64
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_28
.LBB11_28:                              # %for.inc.65
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-12(%rbp), %eax
	addl	-64(%rbp), %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB11_1
.LBB11_29:                              # %for.end.67
	movl	-76(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	render_blast_row, .Lfunc_end11-render_blast_row
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI11_0:
	.quad	.LBB11_15
	.quad	.LBB11_14
	.quad	.LBB11_13
	.quad	.LBB11_12

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
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.10
	.quad	.L.str.11
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.12
	.quad	.L.str.13
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.14
	.quad	.L.str.15
	.size	query.args, 192

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
	.asciz	"threshold"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Controls where blending will be done >= 0"
	.size	.L.str.7, 42

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"direction"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Left or Right: 0 or 1"
	.size	.L.str.9, 22

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"strength"
	.size	.L.str.10, 9

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Controls the extent of the blending > 1"
	.size	.L.str.11, 40

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"algorithm"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Algorithm { WIND (0), BLAST (1) }"
	.size	.L.str.13, 34

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"edge"
	.size	.L.str.14, 5

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Edge behavior { BOTH (0), LEADING (1), TRAILING (2) }"
	.size	.L.str.15, 54

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"plug-in-wind"
	.size	.L.str.16, 13

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Smear image to give windblown effect"
	.size	.L.str.17, 37

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Renders a wind effect."
	.size	.L.str.18, 23

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Nigel Wetten"
	.size	.L.str.19, 13

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"May 2000"
	.size	.L.str.20, 9

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Wi_nd..."
	.size	.L.str.21, 9

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"RGB*"
	.size	.L.str.22, 5

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"<Image>/Filters/Distorts"
	.size	.L.str.23, 25

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.24, 20

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"UTF-8"
	.size	.L.str.25, 6

	.type	config,@object          # @config
	.data
	.align	4
config:
	.long	10                      # 0xa
	.long	0                       # 0x0
	.long	10                      # 0xa
	.long	0                       # 0x0
	.long	1                       # 0x1
	.size	config, 20

	.type	.L.str.26,@object       # @.str.26
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.26:
	.asciz	"An execution error occurred."
	.size	.L.str.26, 29

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Rendering wind"
	.size	.L.str.27, 15

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Rendering blast"
	.size	.L.str.28, 16

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"wind"
	.size	.L.str.29, 5

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Wind"
	.size	.L.str.30, 5

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gimp-wind"
	.size	.L.str.31, 10

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"gtk-cancel"
	.size	.L.str.32, 11

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"gtk-ok"
	.size	.L.str.33, 7

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"invalidated"
	.size	.L.str.34, 12

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Style"
	.size	.L.str.35, 6

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"_Wind"
	.size	.L.str.36, 6

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"_Blast"
	.size	.L.str.37, 7

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"toggled"
	.size	.L.str.38, 8

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Direction"
	.size	.L.str.39, 10

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"_Left"
	.size	.L.str.40, 6

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"_Right"
	.size	.L.str.41, 7

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Edge Affected"
	.size	.L.str.42, 14

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"L_eading"
	.size	.L.str.43, 9

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Tr_ailing"
	.size	.L.str.44, 10

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Bot_h"
	.size	.L.str.45, 6

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"_Threshold:"
	.size	.L.str.46, 12

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Higher values restrict the effect to fewer areas of the image"
	.size	.L.str.47, 62

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"value-changed"
	.size	.L.str.48, 14

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"_Strength:"
	.size	.L.str.49, 11

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Higher values increase the magnitude of the effect"
	.size	.L.str.50, 51


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
