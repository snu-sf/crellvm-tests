	.text
	.file	"hot.bc"
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
	movabsq	$.L.str.12, %rdi
	movabsq	$.L.str.13, %rsi
	movabsq	$.L.str.14, %rdx
	movabsq	$.L.str.15, %rcx
	movabsq	$.L.str.16, %r8
	movabsq	$.L.str.17, %r9
	movabsq	$.L.str.18, %rax
	movabsq	$.L.str.19, %r10
	movl	$1, %r11d
	movl	$6, %ebx
	xorl	%r14d, %r14d
	movabsq	$query.args, %r15
	xorl	%r12d, %r12d
	movl	%r12d, %r13d
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$6, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r13, -48(%rbp)         # 8-byte Spill
	movl	%r11d, -52(%rbp)        # 4-byte Spill
	movl	%r14d, -56(%rbp)        # 4-byte Spill
	movl	%ebx, -60(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.12, %rdi
	movabsq	$.L.str.20, %rsi
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
	subq	$112, %rsp
	movabsq	$run.rvals, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.21, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.21, %rdi
	movabsq	$.L.str.22, %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.21, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -88(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movl	$0, -48(%rbp)
	movl	$-1, -56(%rbp)
	movl	$.L.str.12, %eax
	movl	%eax, %edi
	leaq	-64(%rbp), %rsi
	callq	gimp_procedural_db_get_data
	movq	-24(%rbp), %rsi
	movl	48(%rsi), %ecx
	movl	%ecx, -64(%rbp)
	movq	-24(%rbp), %rsi
	movl	88(%rsi), %ecx
	movl	%ecx, -60(%rbp)
	movl	$21, run.rvals(%rip)
	movl	$3, run.rvals+8(%rip)
	movq	-24(%rbp), %rsi
	movl	8(%rsi), %ecx
	testl	%ecx, %ecx
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movl	%ecx, -96(%rbp)         # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_20
.LBB1_20:                               # %do.end
	movl	-96(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB1_11
	jmp	.LBB1_21
.LBB1_21:                               # %do.end
	movl	-96(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB1_16
	jmp	.LBB1_19
.LBB1_3:                                # %sw.bb
	cmpl	$-1, -56(%rbp)
	jne	.LBB1_5
# BB#4:                                 # %if.then
	movl	$0, -56(%rbp)
	movl	$0, -52(%rbp)
	movl	$1, -48(%rbp)
.LBB1_5:                                # %if.end
	leaq	-64(%rbp), %rdi
	callq	plugin_dialog
	cmpl	$0, %eax
	je	.LBB1_9
# BB#6:                                 # %if.then.12
	leaq	-64(%rbp), %rdi
	callq	pluginCore
	cmpl	$0, %eax
	jne	.LBB1_8
# BB#7:                                 # %if.then.15
	movl	$0, run.rvals+8
.LBB1_8:                                # %if.end.16
	jmp	.LBB1_10
.LBB1_9:                                # %if.else
	movl	$4, run.rvals+8
.LBB1_10:                               # %if.end.17
	movabsq	$.L.str.12, %rdi
	movl	$20, %edx
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB1_19
.LBB1_11:                               # %sw.bb.19
	cmpl	$6, -12(%rbp)
	je	.LBB1_13
# BB#12:                                # %if.then.21
	movl	$1, run.rvals+8
	jmp	.LBB1_19
.LBB1_13:                               # %if.end.22
	leaq	-64(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -56(%rbp)
	movq	-24(%rbp), %rax
	movl	168(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movq	-24(%rbp), %rax
	movl	208(%rax), %ecx
	movl	%ecx, -48(%rbp)
	callq	pluginCore
	cmpl	$0, %eax
	jne	.LBB1_15
# BB#14:                                # %if.then.37
	movl	$0, run.rvals+8
	jmp	.LBB1_19
.LBB1_15:                               # %if.end.38
	jmp	.LBB1_19
.LBB1_16:                               # %sw.bb.39
	leaq	-64(%rbp), %rdi
	callq	pluginCore
	cmpl	$0, %eax
	jne	.LBB1_18
# BB#17:                                # %if.then.42
	movl	$0, run.rvals+8
.LBB1_18:                               # %if.end.43
	jmp	.LBB1_19
.LBB1_19:                               # %sw.epilog
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

	.align	16, 0x90
	.type	plugin_dialog,@function
plugin_dialog:                          # @plugin_dialog
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
	subq	$328, %rsp              # imm = 0x148
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
	movabsq	$.L.str.23, %rax
	xorl	%esi, %esi
	movq	%rdi, -48(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	movabsq	$.L.str.24, %rdi
	callq	gettext
	movabsq	$.L.str.25, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.12, %r9
	movabsq	$.L.str.26, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.27, %r11
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -108(%rbp)        # 4-byte Spill
	movl	%r10d, -112(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-56(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	xorl	%edi, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
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
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.28, %rdi
	callq	gettext
	movl	$1, %edi
	movabsq	$gimp_radio_button_update, %rsi
	movabsq	$.L.str.29, %r9
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r11d
	movabsq	$.L.str.30, %r14
	movq	-48(%rbp), %r15
	addq	$8, %r15
	movq	-48(%rbp), %r12
	movl	8(%r12), %r8d
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-168(%rbp), %rdx        # 8-byte Reload
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	movq	%r15, %rcx
	movl	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	%r14, 16(%rsp)
	movl	$1, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	movq	%r11, -184(%rbp)        # 8-byte Spill
	callq	gimp_int_radio_group_new
	movq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.31, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movl	16(%rsi), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-72(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -212(%rbp)        # 4-byte Spill
	movl	-212(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.32, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %rdi
	movq	-48(%rbp), %r11
	addq	$16, %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.33, %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.34, %rdi
	movq	-48(%rbp), %rcx
	addq	$12, %rcx
	movq	-48(%rbp), %rdx
	movl	12(%rdx), %r8d
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movl	%r8d, -236(%rbp)        # 4-byte Spill
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.35, %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.36, %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	movabsq	$gimp_radio_button_update, %rcx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movl	$2, %r9d
	movq	-232(%rbp), %rsi        # 8-byte Reload
	movq	%rdx, -272(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-248(%rbp), %rcx        # 8-byte Reload
	movl	-236(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -276(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movq	-256(%rbp), %r11        # 8-byte Reload
	movl	%r9d, -280(%rbp)        # 4-byte Spill
	movq	%r11, %r9
	movl	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	-264(%rbp), %r14        # 8-byte Reload
	movq	%r14, 16(%rsp)
	movl	$1, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	%rax, 40(%rsp)
	movl	$2, 48(%rsp)
	movq	$0, 56(%rsp)
	movq	$0, 64(%rsp)
	movb	$0, %al
	callq	gimp_int_radio_group_new
	movq	%rax, -88(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
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
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r13b
	andb	$1, %r13b
	movzbl	%r13b, %eax
	movl	%eax, -92(%rbp)
	movq	-56(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-92(%rbp), %eax
	addq	$328, %rsp              # imm = 0x148
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	plugin_dialog, .Lfunc_end3-plugin_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4636737291354636288     # double 100
.LCPI4_1:
	.quad	4607182418800017408     # double 1
.LCPI4_2:
	.quad	4643176031446892544     # double 255
.LCPI4_3:
	.quad	4665729213955833856     # double 8192
.LCPI4_4:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	pluginCore,@function
pluginCore:                             # @pluginCore
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
	subq	$496, %rsp              # imm = 0x1F0
	movq	%rdi, -8(%rbp)
	movq	$0, -24(%rbp)
	movl	$1, -124(%rbp)
	movl	$0, -128(%rbp)
	movb	$0, -218(%rbp)
	movb	$0, -219(%rbp)
	movb	$0, -221(%rbp)
	movb	$0, -222(%rbp)
	movb	$0, -224(%rbp)
	movb	$0, -225(%rbp)
	movq	-8(%rbp), %rdi
	movl	4(%rdi), %edi
	callq	gimp_drawable_get
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	4(%rax), %edi
	movl	%edi, -152(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %edi
	movl	%edi, -156(%rbp)
	movq	-16(%rbp), %rax
	movl	12(%rax), %edi
	movl	%edi, -160(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 16(%rax)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movl	$40, %eax
	movl	%eax, %esi
	movabsq	$.L.str.42, %rdx
	leaq	-336(%rbp), %rdi
	movq	.LpluginCore.mode_names, %rcx
	movq	%rcx, -352(%rbp)
	movq	.LpluginCore.mode_names+8, %rcx
	movq	%rcx, -344(%rbp)
	movq	.LpluginCore.action_names, %rcx
	movq	%rcx, -384(%rbp)
	movq	.LpluginCore.action_names+8, %rcx
	movq	%rcx, -376(%rbp)
	movq	.LpluginCore.action_names+16, %rcx
	movq	%rcx, -368(%rbp)
	movq	-8(%rbp), %rcx
	movslq	8(%rcx), %rcx
	movq	-352(%rbp,%rcx,8), %rcx
	movq	-8(%rbp), %r8
	movslq	12(%r8), %r8
	movq	-384(%rbp,%r8,8), %r8
	movb	$0, %al
	callq	g_snprintf
	movl	$1, %r8d
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	leaq	-336(%rbp), %rsi
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-152(%rbp), %edx
	movl	-156(%rbp), %ecx
	movl	%eax, -392(%rbp)        # 4-byte Spill
	callq	gimp_layer_new
	movl	%eax, -128(%rbp)
	movl	-128(%rbp), %edi
	callq	gimp_drawable_get
	movl	$3, %esi
	movq	%rax, -24(%rbp)
	movl	-128(%rbp), %edi
	callq	gimp_drawable_fill
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movq	-8(%rbp), %r10
	movl	(%r10), %edi
	movl	-128(%rbp), %esi
	movl	%eax, -396(%rbp)        # 4-byte Spill
	callq	gimp_image_insert_layer
	movl	%eax, -400(%rbp)        # 4-byte Spill
.LBB4_2:                                # %if.end
	leaq	-164(%rbp), %rsi
	leaq	-172(%rbp), %rdx
	leaq	-168(%rbp), %rcx
	leaq	-176(%rbp), %r8
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_bounds
	movl	$1, %edi
	movl	%edi, %esi
	movl	-168(%rbp), %edi
	subl	-164(%rbp), %edi
	movl	%edi, -152(%rbp)
	movl	-176(%rbp), %edi
	subl	-172(%rbp), %edi
	movl	%edi, -156(%rbp)
	movl	-152(%rbp), %edi
	imull	-156(%rbp), %edi
	imull	-160(%rbp), %edi
	movl	%edi, %edi
                                        # kill: RDI<def> EDI<kill>
	movl	%eax, -404(%rbp)        # 4-byte Spill
	callq	g_malloc_n
	movl	$1, %r9d
	movl	%r9d, %esi
	movq	%rax, -192(%rbp)
	movl	-152(%rbp), %r9d
	imull	-156(%rbp), %r9d
	shll	$2, %r9d
	movl	%r9d, %r9d
	movl	%r9d, %edi
	callq	g_malloc_n
	leaq	-72(%rbp), %rdi
	xorl	%r9d, %r9d
	movq	%rax, -208(%rbp)
	movq	-16(%rbp), %rsi
	movl	-164(%rbp), %edx
	movl	-172(%rbp), %ecx
	movl	-152(%rbp), %r8d
	movl	-156(%rbp), %r10d
	movl	%r9d, -408(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movq	-8(%rbp), %rax
	cmpl	$0, 16(%rax)
	je	.LBB4_4
# BB#3:                                 # %if.then.23
	leaq	-120(%rbp), %rdi
	xorl	%eax, %eax
	movq	-24(%rbp), %rsi
	movl	-164(%rbp), %edx
	movl	-172(%rbp), %ecx
	movl	-152(%rbp), %r8d
	movl	-156(%rbp), %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -412(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	jmp	.LBB4_5
.LBB4_4:                                # %if.else
	leaq	-120(%rbp), %rdi
	movl	$1, %eax
	movq	-16(%rbp), %rsi
	movl	-164(%rbp), %edx
	movl	-172(%rbp), %ecx
	movl	-152(%rbp), %r8d
	movl	-156(%rbp), %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -416(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
.LBB4_5:                                # %if.end.24
	leaq	-72(%rbp), %rdi
	movq	-192(%rbp), %rsi
	movl	-164(%rbp), %edx
	movl	-172(%rbp), %ecx
	movl	-152(%rbp), %r8d
	movl	-156(%rbp), %r9d
	callq	gimp_pixel_rgn_get_rect
	movq	-192(%rbp), %rsi
	movq	%rsi, -200(%rbp)
	movq	-208(%rbp), %rsi
	movq	%rsi, -216(%rbp)
	movq	-8(%rbp), %rsi
	movl	8(%rsi), %edi
	callq	build_tab
	movabsq	$.L.str.24, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	$10, %ecx
	movl	-156(%rbp), %edx
	movl	%eax, -420(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	xorl	%edx, %edx
	divl	%ecx
	movl	%eax, -180(%rbp)
	movl	-172(%rbp), %eax
	movl	%eax, -132(%rbp)
.LBB4_6:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_10 Depth 2
                                        #       Child Loop BB4_14 Depth 3
                                        #       Child Loop BB4_49 Depth 3
	movl	-132(%rbp), %eax
	cmpl	-176(%rbp), %eax
	jge	.LBB4_59
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB4_6 Depth=1
	movl	-132(%rbp), %eax
	cltd
	idivl	-180(%rbp)
	cmpl	$0, %edx
	jne	.LBB4_9
# BB#8:                                 # %if.then.31
                                        #   in Loop: Header=BB4_6 Depth=1
	cvtsi2sdl	-132(%rbp), %xmm0
	movl	-176(%rbp), %eax
	subl	-172(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -424(%rbp)        # 4-byte Spill
.LBB4_9:                                # %if.end.37
                                        #   in Loop: Header=BB4_6 Depth=1
	movl	-164(%rbp), %eax
	movl	%eax, -388(%rbp)
.LBB4_10:                               # %for.cond.38
                                        #   Parent Loop BB4_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_14 Depth 3
                                        #       Child Loop BB4_49 Depth 3
	movl	-388(%rbp), %eax
	cmpl	-168(%rbp), %eax
	jge	.LBB4_57
# BB#11:                                # %for.body.41
                                        #   in Loop: Header=BB4_10 Depth=2
	movq	-200(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -217(%rbp)
	movq	-200(%rbp), %rax
	movb	1(%rax), %dl
	movb	%dl, -220(%rbp)
	movq	-200(%rbp), %rax
	movb	2(%rax), %sil
	movb	%sil, -223(%rbp)
	movzbl	%cl, %edi
	movzbl	%dl, %r8d
	movb	%sil, -425(%rbp)        # 1-byte Spill
	movl	%r8d, %esi
	movb	-425(%rbp), %cl         # 1-byte Reload
	movzbl	%cl, %edx
	callq	hotp
	cmpl	$0, %eax
	je	.LBB4_47
# BB#12:                                # %if.then.46
                                        #   in Loop: Header=BB4_10 Depth=2
	movq	-8(%rbp), %rax
	cmpl	$2, 12(%rax)
	jne	.LBB4_23
# BB#13:                                # %if.then.50
                                        #   in Loop: Header=BB4_10 Depth=2
	movl	$0, -136(%rbp)
.LBB4_14:                               # %for.cond.51
                                        #   Parent Loop BB4_6 Depth=1
                                        #     Parent Loop BB4_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$3, -136(%rbp)
	jge	.LBB4_17
# BB#15:                                # %for.body.54
                                        #   in Loop: Header=BB4_14 Depth=3
	movq	-216(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -216(%rbp)
	movb	$0, (%rax)
# BB#16:                                # %for.inc
                                        #   in Loop: Header=BB4_14 Depth=3
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	jmp	.LBB4_14
.LBB4_17:                               # %for.end
                                        #   in Loop: Header=BB4_10 Depth=2
	movq	-200(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -200(%rbp)
	cmpl	$4, -160(%rbp)
	jne	.LBB4_19
# BB#18:                                # %if.then.58
                                        #   in Loop: Header=BB4_10 Depth=2
	movq	-200(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -200(%rbp)
	movb	(%rax), %dl
	movq	-216(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -216(%rbp)
	movb	%dl, (%rax)
	jmp	.LBB4_22
.LBB4_19:                               # %if.else.61
                                        #   in Loop: Header=BB4_10 Depth=2
	movq	-8(%rbp), %rax
	cmpl	$0, 16(%rax)
	je	.LBB4_21
# BB#20:                                # %if.then.64
                                        #   in Loop: Header=BB4_10 Depth=2
	movq	-216(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -216(%rbp)
	movb	$-1, (%rax)
.LBB4_21:                               # %if.end.66
                                        #   in Loop: Header=BB4_10 Depth=2
	jmp	.LBB4_22
.LBB4_22:                               # %if.end.67
                                        #   in Loop: Header=BB4_10 Depth=2
	jmp	.LBB4_46
.LBB4_23:                               # %if.else.68
                                        #   in Loop: Header=BB4_10 Depth=2
	movzbl	-217(%rbp), %eax
	movzbl	-218(%rbp), %ecx
	cmpl	%ecx, %eax
	jne	.LBB4_32
# BB#24:                                # %land.lhs.true
                                        #   in Loop: Header=BB4_10 Depth=2
	movzbl	-220(%rbp), %eax
	movzbl	-221(%rbp), %ecx
	cmpl	%ecx, %eax
	jne	.LBB4_32
# BB#25:                                # %land.lhs.true.77
                                        #   in Loop: Header=BB4_10 Depth=2
	movzbl	-223(%rbp), %eax
	movzbl	-224(%rbp), %ecx
	cmpl	%ecx, %eax
	jne	.LBB4_32
# BB#26:                                # %if.then.82
                                        #   in Loop: Header=BB4_10 Depth=2
	movb	-219(%rbp), %al
	movq	-216(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -216(%rbp)
	movb	%al, (%rcx)
	movb	-222(%rbp), %al
	movq	-216(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -216(%rbp)
	movb	%al, (%rcx)
	movb	-225(%rbp), %al
	movq	-216(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -216(%rbp)
	movb	%al, (%rcx)
	movq	-200(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -200(%rbp)
	cmpl	$4, -160(%rbp)
	jne	.LBB4_28
# BB#27:                                # %if.then.89
                                        #   in Loop: Header=BB4_10 Depth=2
	movq	-200(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -200(%rbp)
	movb	(%rax), %dl
	movq	-216(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -216(%rbp)
	movb	%dl, (%rax)
	jmp	.LBB4_31
.LBB4_28:                               # %if.else.92
                                        #   in Loop: Header=BB4_10 Depth=2
	movq	-8(%rbp), %rax
	cmpl	$0, 16(%rax)
	je	.LBB4_30
# BB#29:                                # %if.then.95
                                        #   in Loop: Header=BB4_10 Depth=2
	movq	-216(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -216(%rbp)
	movb	$-1, (%rax)
.LBB4_30:                               # %if.end.97
                                        #   in Loop: Header=BB4_10 Depth=2
	jmp	.LBB4_31
.LBB4_31:                               # %if.end.98
                                        #   in Loop: Header=BB4_10 Depth=2
	jmp	.LBB4_45
.LBB4_32:                               # %if.else.99
                                        #   in Loop: Header=BB4_10 Depth=2
	movsd	.LCPI4_2, %xmm0         # xmm0 = mem[0],zero
	movzbl	-217(%rbp), %eax
	movl	%eax, %ecx
	movl	tab(,%rcx,4), %eax
	movzbl	-220(%rbp), %edx
	movl	%edx, %ecx
	movl	tab+1024(,%rcx,4), %edx
	addl	%edx, %eax
	movzbl	-223(%rbp), %edx
	movl	%edx, %ecx
	movl	tab+2048(,%rcx,4), %edx
	addl	%edx, %eax
	movl	%eax, -140(%rbp)
	movzbl	-217(%rbp), %eax
	movl	%eax, %ecx
	movl	tab+3072(,%rcx,4), %eax
	movzbl	-220(%rbp), %edx
	movl	%edx, %ecx
	movl	tab+4096(,%rcx,4), %edx
	addl	%edx, %eax
	movzbl	-223(%rbp), %edx
	movl	%edx, %ecx
	movl	tab+5120(,%rcx,4), %edx
	addl	%edx, %eax
	movl	%eax, -144(%rbp)
	movzbl	-217(%rbp), %eax
	movl	%eax, %ecx
	movl	tab+6144(,%rcx,4), %eax
	movzbl	-220(%rbp), %edx
	movl	%edx, %ecx
	movl	tab+7168(,%rcx,4), %edx
	addl	%edx, %eax
	movzbl	-223(%rbp), %edx
	movl	%edx, %ecx
	movl	tab+8192(,%rcx,4), %edx
	addl	%edx, %eax
	movl	%eax, -148(%rbp)
	movb	-217(%rbp), %sil
	movb	%sil, -218(%rbp)
	movb	-220(%rbp), %sil
	movb	%sil, -221(%rbp)
	movb	-223(%rbp), %sil
	movb	%sil, -224(%rbp)
	cvtsi2sdl	-140(%rbp), %xmm1
	movsd	.LCPI4_3(%rip), %xmm2   # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -240(%rbp)
	cvtsi2sdl	-144(%rbp), %xmm1
	divsd	%xmm2, %xmm1
	cvtsi2sdl	-148(%rbp), %xmm3
	divsd	%xmm2, %xmm3
	movsd	%xmm0, -440(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm3, %xmm1
	callq	hypot
	movsd	%xmm0, -248(%rbp)
	movzbl	-217(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	.LCPI4_2(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -272(%rbp)
	movzbl	-220(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -280(%rbp)
	movzbl	-223(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	-440(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -288(%rbp)
	movq	-8(%rbp), %rcx
	cmpl	$0, 12(%rcx)
	jne	.LBB4_36
# BB#33:                                # %if.then.139
                                        #   in Loop: Header=BB4_10 Depth=2
	movsd	chroma_lim, %xmm0       # xmm0 = mem[0],zero
	divsd	-248(%rbp), %xmm0
	movsd	%xmm0, -264(%rbp)
	movsd	compos_lim, %xmm0       # xmm0 = mem[0],zero
	movsd	-240(%rbp), %xmm1       # xmm1 = mem[0],zero
	addsd	-248(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -256(%rbp)
	movsd	-256(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-264(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_35
# BB#34:                                # %if.then.145
                                        #   in Loop: Header=BB4_10 Depth=2
	movsd	-256(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -264(%rbp)
.LBB4_35:                               # %if.end.146
                                        #   in Loop: Header=BB4_10 Depth=2
	movabsq	$mode, %rax
	movsd	-264(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-8(%rbp), %rcx
	movslq	8(%rcx), %rcx
	imulq	$88, %rcx, %rcx
	addq	%rcx, %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	pow
	movsd	.LCPI4_4, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_2, %xmm2         # xmm2 = mem[0],zero
	movsd	%xmm0, -264(%rbp)
	movsd	-264(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-272(%rbp), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movb	%dl, %sil
	movb	%sil, -217(%rbp)
	movsd	-264(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-280(%rbp), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movb	%dl, %sil
	movb	%sil, -220(%rbp)
	movsd	-264(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-288(%rbp), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movb	%dl, %sil
	movb	%sil, -223(%rbp)
	jmp	.LBB4_39
.LBB4_36:                               # %if.else.166
                                        #   in Loop: Header=BB4_10 Depth=2
	movsd	chroma_lim, %xmm0       # xmm0 = mem[0],zero
	divsd	-248(%rbp), %xmm0
	movsd	%xmm0, -264(%rbp)
	movsd	compos_lim, %xmm0       # xmm0 = mem[0],zero
	subsd	-240(%rbp), %xmm0
	divsd	-248(%rbp), %xmm0
	movsd	%xmm0, -256(%rbp)
	movsd	-256(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-264(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_38
# BB#37:                                # %if.then.172
                                        #   in Loop: Header=BB4_10 Depth=2
	movsd	-256(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -264(%rbp)
.LBB4_38:                               # %if.end.173
                                        #   in Loop: Header=BB4_10 Depth=2
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movabsq	$mode, %rax
	movsd	-272(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	-8(%rbp), %rcx
	movslq	8(%rcx), %rcx
	imulq	$88, %rcx, %rcx
	addq	%rcx, %rax
	divsd	8(%rax), %xmm0
	movsd	%xmm0, -448(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-448(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	pow
	movsd	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero
	movabsq	$mode, %rax
	movsd	%xmm0, -272(%rbp)
	movsd	-280(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-8(%rbp), %rcx
	movslq	8(%rcx), %rcx
	imulq	$88, %rcx, %rcx
	addq	%rcx, %rax
	divsd	8(%rax), %xmm1
	callq	pow
	movsd	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero
	movabsq	$mode, %rax
	movsd	%xmm0, -280(%rbp)
	movsd	-288(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-8(%rbp), %rcx
	movslq	8(%rcx), %rcx
	imulq	$88, %rcx, %rcx
	addq	%rcx, %rax
	divsd	8(%rax), %xmm1
	callq	pow
	movabsq	$mode, %rax
	movsd	%xmm0, -288(%rbp)
	movsd	-272(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-8(%rbp), %rcx
	movslq	8(%rcx), %rcx
	imulq	$88, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	mulsd	16(%rdx), %xmm0
	movsd	-280(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	-8(%rbp), %rcx
	movslq	8(%rcx), %rcx
	imulq	$88, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	mulsd	24(%rdx), %xmm1
	addsd	%xmm1, %xmm0
	movsd	-288(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	-8(%rbp), %rcx
	movslq	8(%rcx), %rcx
	imulq	$88, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	mulsd	32(%rdx), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -296(%rbp)
	movsd	-296(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-264(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-272(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	-296(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rcx
	movslq	8(%rcx), %rcx
	imulq	$88, %rcx, %rcx
	addq	%rcx, %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	pow
	movabsq	$mode, %rax
	movsd	.LCPI4_4, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_2, %xmm2         # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %esi
	movb	%sil, %dil
	movb	%dil, -217(%rbp)
	movsd	-296(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-264(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-280(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	-296(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rcx
	movslq	8(%rcx), %rcx
	imulq	$88, %rcx, %rcx
	addq	%rcx, %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	pow
	movabsq	$mode, %rax
	movsd	.LCPI4_4, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_2, %xmm2         # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %esi
	movb	%sil, %dil
	movb	%dil, -220(%rbp)
	movsd	-296(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-264(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-288(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	-296(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rcx
	movslq	8(%rcx), %rcx
	imulq	$88, %rcx, %rcx
	addq	%rcx, %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	pow
	movsd	.LCPI4_4, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_2, %xmm2         # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %esi
	movb	%sil, %dil
	movb	%dil, -223(%rbp)
.LBB4_39:                               # %if.end.250
                                        #   in Loop: Header=BB4_10 Depth=2
	movb	-217(%rbp), %al
	movb	%al, -219(%rbp)
	movq	-216(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -216(%rbp)
	movb	%al, (%rcx)
	movb	-220(%rbp), %al
	movb	%al, -222(%rbp)
	movq	-216(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -216(%rbp)
	movb	%al, (%rcx)
	movb	-223(%rbp), %al
	movb	%al, -225(%rbp)
	movq	-216(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -216(%rbp)
	movb	%al, (%rcx)
	movq	-200(%rbp), %rcx
	addq	$3, %rcx
	movq	%rcx, -200(%rbp)
	cmpl	$4, -160(%rbp)
	jne	.LBB4_41
# BB#40:                                # %if.then.257
                                        #   in Loop: Header=BB4_10 Depth=2
	movq	-200(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -200(%rbp)
	movb	(%rax), %dl
	movq	-216(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -216(%rbp)
	movb	%dl, (%rax)
	jmp	.LBB4_44
.LBB4_41:                               # %if.else.260
                                        #   in Loop: Header=BB4_10 Depth=2
	movq	-8(%rbp), %rax
	cmpl	$0, 16(%rax)
	je	.LBB4_43
# BB#42:                                # %if.then.263
                                        #   in Loop: Header=BB4_10 Depth=2
	movq	-216(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -216(%rbp)
	movb	$-1, (%rax)
.LBB4_43:                               # %if.end.265
                                        #   in Loop: Header=BB4_10 Depth=2
	jmp	.LBB4_44
.LBB4_44:                               # %if.end.266
                                        #   in Loop: Header=BB4_10 Depth=2
	jmp	.LBB4_45
.LBB4_45:                               # %if.end.267
                                        #   in Loop: Header=BB4_10 Depth=2
	jmp	.LBB4_46
.LBB4_46:                               # %if.end.268
                                        #   in Loop: Header=BB4_10 Depth=2
	jmp	.LBB4_55
.LBB4_47:                               # %if.else.269
                                        #   in Loop: Header=BB4_10 Depth=2
	movq	-8(%rbp), %rax
	cmpl	$0, 16(%rax)
	jne	.LBB4_53
# BB#48:                                # %if.then.272
                                        #   in Loop: Header=BB4_10 Depth=2
	movl	$0, -136(%rbp)
.LBB4_49:                               # %for.cond.273
                                        #   Parent Loop BB4_6 Depth=1
                                        #     Parent Loop BB4_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-136(%rbp), %eax
	cmpl	-160(%rbp), %eax
	jae	.LBB4_52
# BB#50:                                # %for.body.276
                                        #   in Loop: Header=BB4_49 Depth=3
	movq	-200(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -200(%rbp)
	movb	(%rax), %dl
	movq	-216(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -216(%rbp)
	movb	%dl, (%rax)
# BB#51:                                # %for.inc.279
                                        #   in Loop: Header=BB4_49 Depth=3
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	jmp	.LBB4_49
.LBB4_52:                               # %for.end.281
                                        #   in Loop: Header=BB4_10 Depth=2
	jmp	.LBB4_54
.LBB4_53:                               # %if.else.282
                                        #   in Loop: Header=BB4_10 Depth=2
	movl	-160(%rbp), %eax
	movq	-200(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -200(%rbp)
	movq	-216(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -216(%rbp)
.LBB4_54:                               # %if.end.285
                                        #   in Loop: Header=BB4_10 Depth=2
	jmp	.LBB4_55
.LBB4_55:                               # %if.end.286
                                        #   in Loop: Header=BB4_10 Depth=2
	jmp	.LBB4_56
.LBB4_56:                               # %for.inc.287
                                        #   in Loop: Header=BB4_10 Depth=2
	movl	-388(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -388(%rbp)
	jmp	.LBB4_10
.LBB4_57:                               # %for.end.289
                                        #   in Loop: Header=BB4_6 Depth=1
	jmp	.LBB4_58
.LBB4_58:                               # %for.inc.290
                                        #   in Loop: Header=BB4_6 Depth=1
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB4_6
.LBB4_59:                               # %for.end.292
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	leaq	-120(%rbp), %rdi
	movq	-208(%rbp), %rsi
	movl	-164(%rbp), %edx
	movl	-172(%rbp), %ecx
	movl	-152(%rbp), %r8d
	movl	-156(%rbp), %r9d
	movl	%eax, -452(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_set_rect
	movq	-192(%rbp), %rdi
	callq	g_free
	movq	-208(%rbp), %rdi
	callq	g_free
	movq	-8(%rbp), %rsi
	cmpl	$0, 16(%rsi)
	je	.LBB4_61
# BB#60:                                # %if.then.296
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_flush
	movl	-128(%rbp), %edi
	movl	-164(%rbp), %esi
	movl	-172(%rbp), %edx
	movl	-152(%rbp), %ecx
	movl	-156(%rbp), %r8d
	callq	gimp_drawable_update
	movl	%eax, -456(%rbp)        # 4-byte Spill
	jmp	.LBB4_62
.LBB4_61:                               # %if.else.298
	movq	-16(%rbp), %rdi
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-164(%rbp), %esi
	movl	-172(%rbp), %edx
	movl	-152(%rbp), %ecx
	movl	-156(%rbp), %r8d
	movl	%eax, -460(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -464(%rbp)        # 4-byte Spill
.LBB4_62:                               # %if.end.303
	callq	gimp_displays_flush
	movl	-124(%rbp), %ecx
	movl	%eax, -468(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	addq	$496, %rsp              # imm = 0x1F0
	popq	%rbp
	retq
.Lfunc_end4:
	.size	pluginCore, .Lfunc_end4-pluginCore
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4602678819172646912     # double 0.5
.LCPI5_1:
	.quad	4665729213955833856     # double 8192
.LCPI5_2:
	.quad	4636737291354636288     # double 100
.LCPI5_3:
	.quad	4637440978796412928     # double 110
.LCPI5_4:
	.quad	4632233691727265792     # double 50
.LCPI5_5:
	.quad	4607182418800017408     # double 1
.LCPI5_6:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	build_tab,@function
build_tab:                              # @build_tab
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
	movl	%edi, -4(%rbp)
	movl	$0, -20(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$255, -20(%rbp)
	jg	.LBB5_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movsd	.LCPI5_5, %xmm0         # xmm0 = mem[0],zero
	movabsq	$mode, %rax
	movsd	.LCPI5_6, %xmm1         # xmm1 = mem[0],zero
	cvtsi2sdl	-20(%rbp), %xmm2
	divsd	%xmm1, %xmm2
	movslq	-4(%rbp), %rcx
	imulq	$88, %rcx, %rcx
	addq	%rcx, %rax
	divsd	8(%rax), %xmm0
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	-32(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	pow
	movsd	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero
	movabsq	$mode, %rax
	movsd	.LCPI5_1, %xmm2         # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-4(%rbp), %rcx
	imulq	$88, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	mulsd	16(%rdx), %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %esi
	movslq	-20(%rbp), %rcx
	movl	%esi, tab(,%rcx,4)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-4(%rbp), %rcx
	imulq	$88, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	mulsd	24(%rdx), %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %esi
	movslq	-20(%rbp), %rcx
	movl	%esi, tab+1024(,%rcx,4)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-4(%rbp), %rcx
	imulq	$88, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	mulsd	32(%rdx), %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %esi
	movslq	-20(%rbp), %rcx
	movl	%esi, tab+2048(,%rcx,4)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-4(%rbp), %rcx
	imulq	$88, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	mulsd	40(%rdx), %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %esi
	movslq	-20(%rbp), %rcx
	movl	%esi, tab+3072(,%rcx,4)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-4(%rbp), %rcx
	imulq	$88, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	mulsd	48(%rdx), %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %esi
	movslq	-20(%rbp), %rcx
	movl	%esi, tab+4096(,%rcx,4)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-4(%rbp), %rcx
	imulq	$88, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	mulsd	56(%rdx), %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %esi
	movslq	-20(%rbp), %rcx
	movl	%esi, tab+5120(,%rcx,4)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-4(%rbp), %rcx
	imulq	$88, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	mulsd	64(%rdx), %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %esi
	movslq	-20(%rbp), %rcx
	movl	%esi, tab+6144(,%rcx,4)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-4(%rbp), %rcx
	imulq	$88, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	mulsd	72(%rdx), %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %esi
	movslq	-20(%rbp), %rcx
	movl	%esi, tab+7168(,%rcx,4)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-4(%rbp), %rcx
	imulq	$88, %rcx, %rcx
	addq	%rcx, %rax
	mulsd	80(%rax), %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %esi
	movslq	-20(%rbp), %rax
	movl	%esi, tab+8192(,%rax,4)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB5_1
.LBB5_4:                                # %for.end
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI5_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI5_2, %xmm2         # xmm2 = mem[0],zero
	movabsq	$mode, %rax
	movsd	.LCPI5_3, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI5_4, %xmm4         # xmm4 = mem[0],zero
	movslq	-4(%rbp), %rcx
	imulq	$88, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movaps	%xmm2, %xmm5
	subsd	(%rdx), %xmm5
	divsd	%xmm5, %xmm4
	movsd	%xmm4, chroma_lim
	movslq	-4(%rbp), %rcx
	imulq	$88, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	subsd	(%rdx), %xmm3
	movslq	-4(%rbp), %rcx
	imulq	$88, %rcx, %rcx
	addq	%rcx, %rax
	subsd	(%rax), %xmm2
	divsd	%xmm2, %xmm3
	movsd	%xmm3, compos_lim
	movaps	%xmm1, %xmm2
	mulsd	chroma_lim, %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %esi
	movslq	%esi, %rax
	movq	%rax, ichroma_lim2
	movq	ichroma_lim2, %rax
	imulq	ichroma_lim2, %rax
	movq	%rax, ichroma_lim2
	mulsd	compos_lim, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %esi
	movl	%esi, icompos_lim
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	build_tab, .Lfunc_end5-build_tab
	.cfi_endproc

	.align	16, 0x90
	.type	hotp,@function
hotp:                                   # @hotp
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
	movb	%dl, %al
	movb	%sil, %cl
	movb	%dil, %r8b
	movb	%r8b, -5(%rbp)
	movb	%cl, -6(%rbp)
	movb	%al, -7(%rbp)
	movzbl	-5(%rbp), %edx
	movl	%edx, %r9d
	movl	tab(,%r9,4), %edx
	movzbl	-6(%rbp), %esi
	movl	%esi, %r9d
	addl	tab+1024(,%r9,4), %edx
	movzbl	-7(%rbp), %esi
	movl	%esi, %r9d
	addl	tab+2048(,%r9,4), %edx
	movl	%edx, -12(%rbp)
	movzbl	-5(%rbp), %edx
	movl	%edx, %r9d
	movl	tab+3072(,%r9,4), %edx
	movzbl	-6(%rbp), %esi
	movl	%esi, %r9d
	addl	tab+4096(,%r9,4), %edx
	movzbl	-7(%rbp), %esi
	movl	%esi, %r9d
	addl	tab+5120(,%r9,4), %edx
	movl	%edx, -16(%rbp)
	movzbl	-5(%rbp), %edx
	movl	%edx, %r9d
	movl	tab+6144(,%r9,4), %edx
	movzbl	-6(%rbp), %esi
	movl	%esi, %r9d
	addl	tab+7168(,%r9,4), %edx
	movzbl	-7(%rbp), %esi
	movl	%esi, %r9d
	addl	tab+8192(,%r9,4), %edx
	movl	%edx, -20(%rbp)
	movslq	-16(%rbp), %r9
	movslq	-16(%rbp), %r10
	imulq	%r10, %r9
	movslq	-20(%rbp), %r10
	movslq	-20(%rbp), %r11
	imulq	%r11, %r10
	addq	%r10, %r9
	movq	%r9, -40(%rbp)
	movslq	icompos_lim, %r9
	movslq	-12(%rbp), %r10
	subq	%r10, %r9
	movq	%r9, -32(%rbp)
	movq	-32(%rbp), %r9
	imulq	-32(%rbp), %r9
	movq	%r9, -32(%rbp)
	movq	-40(%rbp), %r9
	cmpq	ichroma_lim2, %r9
	jg	.LBB6_3
# BB#1:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jg	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB6_4
.LBB6_3:                                # %if.end
	movl	$1, -4(%rbp)
.LBB6_4:                                # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end6:
	.size	hotp, .Lfunc_end6-hotp
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
	.size	query.args, 144

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
	.asciz	"The Image"
	.size	.L.str.3, 10

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"drawable"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"The Drawable"
	.size	.L.str.5, 13

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"mode"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Mode { NTSC (0), PAL (1) }"
	.size	.L.str.7, 27

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"action"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"The action to perform"
	.size	.L.str.9, 22

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"new-layer"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Create a new layer { TRUE, FALSE }"
	.size	.L.str.11, 35

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"plug-in-hot"
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Find and fix pixels that may be unsafely bright"
	.size	.L.str.13, 48

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"hot scans an image for pixels that will give unsave values of chrominance or composite signale amplitude when encoded into an NTSC or PAL signal.  Three actions can be performed on these ``hot'' pixels. (0) reduce luminance, (1) reduce saturation, or (2) Blacken."
	.size	.L.str.14, 264

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Eric L. Hernes, Alan Wm Paeth"
	.size	.L.str.15, 30

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Eric L. Hernes"
	.size	.L.str.16, 15

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"1997"
	.size	.L.str.17, 5

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"_Hot..."
	.size	.L.str.18, 8

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"RGB"
	.size	.L.str.19, 4

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"<Image>/Colors/Modify"
	.size	.L.str.20, 22

	.type	run.rvals,@object       # @run.rvals
	.local	run.rvals
	.comm	run.rvals,40,16
	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.21, 20

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"UTF-8"
	.size	.L.str.22, 6

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"hot"
	.size	.L.str.23, 4

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Hot"
	.size	.L.str.24, 4

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gimp-hot"
	.size	.L.str.25, 9

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"gtk-cancel"
	.size	.L.str.26, 11

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gtk-ok"
	.size	.L.str.27, 7

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Mode"
	.size	.L.str.28, 5

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"N_TSC"
	.size	.L.str.29, 6

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"_PAL"
	.size	.L.str.30, 5

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Create _new layer"
	.size	.L.str.31, 18

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"toggled"
	.size	.L.str.32, 8

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Action"
	.size	.L.str.33, 7

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Reduce _Luminance"
	.size	.L.str.34, 18

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Reduce _Saturation"
	.size	.L.str.35, 19

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"_Blacken"
	.size	.L.str.36, 9

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"ntsc"
	.size	.L.str.37, 5

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"pal"
	.size	.L.str.38, 4

	.type	.LpluginCore.mode_names,@object # @pluginCore.mode_names
	.section	.rodata,"a",@progbits
	.align	16
.LpluginCore.mode_names:
	.quad	.L.str.37
	.quad	.L.str.38
	.size	.LpluginCore.mode_names, 16

	.type	.L.str.39,@object       # @.str.39
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.39:
	.asciz	"lum redux"
	.size	.L.str.39, 10

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"sat redux"
	.size	.L.str.40, 10

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"flag"
	.size	.L.str.41, 5

	.type	.LpluginCore.action_names,@object # @pluginCore.action_names
	.section	.rodata,"a",@progbits
	.align	16
.LpluginCore.action_names:
	.quad	.L.str.39
	.quad	.L.str.40
	.quad	.L.str.41
	.size	.LpluginCore.action_names, 24

	.type	.L.str.42,@object       # @.str.42
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.42:
	.asciz	"hot mask (%s, %s)"
	.size	.L.str.42, 18

	.type	tab,@object             # @tab
	.local	tab
	.comm	tab,9216,16
	.type	chroma_lim,@object      # @chroma_lim
	.local	chroma_lim
	.comm	chroma_lim,8,8
	.type	compos_lim,@object      # @compos_lim
	.local	compos_lim
	.comm	compos_lim,8,8
	.type	mode,@object            # @mode
	.data
	.align	16
mode:
	.quad	4620130267728707584     # double 7.5
	.quad	4612136378390124954     # double 2.2000000000000002
	.quad	4599056123632390085     # double 2.989000e-01
	.quad	4603458842628107482     # double 5.866000e-01
	.quad	4592907809421103884     # double 1.144000e-01
	.quad	4603542609581176573     # double 5.959000e-01
	.quad	-4624762670305420876    # double -2.741000e-01
	.quad	-4623903383496518586    # double -3.218000e-01
	.quad	4596780905100642510     # double 2.113000e-01
	.quad	-4620488754259046275    # double -5.227000e-01
	.quad	4599279502173907662     # double 3.113000e-01
	.quad	0                       # double 0
	.quad	4613487458278336102     # double 2.7999999999999998
	.quad	4599056123632390085     # double 2.989000e-01
	.quad	4603458842628107482     # double 5.866000e-01
	.quad	4592907809421103884     # double 1.144000e-01
	.quad	-4628896974763346992    # double -1.473000e-01
	.quad	-4624492454327778646    # double -2.891000e-01
	.quad	4601533103427443858     # double 4.364000e-01
	.quad	4603713746367016652     # double 6.149000e-01
	.quad	-4620562613292935152    # double -5.145000e-01
	.quad	-4631473033750202915    # double -1.004000e-01
	.size	mode, 176

	.type	ichroma_lim2,@object    # @ichroma_lim2
	.local	ichroma_lim2
	.comm	ichroma_lim2,8,8
	.type	icompos_lim,@object     # @icompos_lim
	.local	icompos_lim
	.comm	icompos_lim,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
