	.text
	.file	"waves.bc"
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
	movabsq	$.L.str.16, %rdi
	movabsq	$.L.str.17, %rsi
	movabsq	$.L.str.18, %rdx
	movabsq	$.L.str.19, %rcx
	movabsq	$.L.str.20, %r8
	movabsq	$.L.str.21, %r9
	movabsq	$.L.str.22, %rax
	movabsq	$.L.str.23, %r10
	movl	$1, %r11d
	movl	$8, %ebx
	xorl	%r14d, %r14d
	movabsq	$query.args, %r15
	xorl	%r12d, %r12d
	movl	%r12d, %r13d
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$8, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r13, -48(%rbp)         # 8-byte Spill
	movl	%r11d, -52(%rbp)        # 4-byte Spill
	movl	%r14d, -56(%rbp)        # 4-byte Spill
	movl	%ebx, -60(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.16, %rdi
	movabsq	$.L.str.24, %rsi
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
	movabsq	$run.values, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -44(%rbp)
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, run.values
	movl	-44(%rbp), %esi
	movl	%esi, run.values+8
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.25, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.25, %rdi
	movabsq	$.L.str.26, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.25, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -80(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %edi
	testl	%edi, %edi
	movl	%edi, -84(%rbp)         # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_15
.LBB1_15:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_16
.LBB1_16:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB1_10
	jmp	.LBB1_11
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.16, %rdi
	movabsq	$wvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-56(%rbp), %rdi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	waves_dialog
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	jmp	.LBB1_14
.LBB1_5:                                # %if.end
	jmp	.LBB1_12
.LBB1_6:                                # %sw.bb.9
	cmpl	$8, -12(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then.10
	movl	$1, -44(%rbp)
	jmp	.LBB1_9
.LBB1_8:                                # %if.else
	movq	-24(%rbp), %rax
	movsd	128(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, wvals
	movq	-24(%rbp), %rax
	movsd	168(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, wvals+8
	movq	-24(%rbp), %rax
	movsd	208(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, wvals+16
	movq	-24(%rbp), %rax
	movl	248(%rax), %ecx
	movl	%ecx, wvals+24
	movq	-24(%rbp), %rax
	movl	288(%rax), %ecx
	movl	%ecx, wvals+28
.LBB1_9:                                # %if.end.25
	jmp	.LBB1_12
.LBB1_10:                               # %sw.bb.26
	movabsq	$.L.str.16, %rdi
	movabsq	$wvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB1_12
.LBB1_11:                               # %sw.default
	jmp	.LBB1_12
.LBB1_12:                               # %sw.epilog
	cmpl	$3, -44(%rbp)
	jne	.LBB1_14
# BB#13:                                # %if.then.29
	movq	-56(%rbp), %rdi
	callq	waves
	movabsq	$.L.str.16, %rdi
	movabsq	$wvals, %rax
	movl	$32, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	-44(%rbp), %edx
	movl	%edx, run.values+8
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB1_14:                               # %if.end.31
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
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI3_1:
	.quad	4632233691727265792     # double 50
.LCPI3_2:
	.quad	4607182418800017408     # double 1
.LCPI3_3:
	.quad	4617315517961601024     # double 5
.LCPI3_4:
	.quad	4645040803167600640     # double 360
.LCPI3_5:
	.quad	4611686018427387904     # double 2
.LCPI3_6:
	.quad	4636807660098813952     # double 101
	.text
	.align	16, 0x90
	.type	waves_dialog,@function
waves_dialog:                           # @waves_dialog
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
	subq	$616, %rsp              # imm = 0x268
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
	movabsq	$.L.str.27, %rax
	movl	$1, %esi
	movq	%rdi, -48(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	movabsq	$.L.str.28, %rdi
	callq	gettext
	movabsq	$.L.str.29, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.16, %r9
	movabsq	$.L.str.30, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.31, %r11
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -140(%rbp)        # 4-byte Spill
	movl	%r10d, -144(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-56(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-56(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
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
	movq	-48(%rbp), %rdi
	callq	gimp_zoom_preview_new
	movq	%rax, -104(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.32, %rsi
	movabsq	$waves_preview, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-104(%rbp), %rdi
	movq	-48(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.33, %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.34, %rdi
	movl	wvals+24, %r8d
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movl	%r8d, -212(%rbp)        # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.35, %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	movabsq	$gimp_radio_button_update, %rcx
	movabsq	$wvals, %rdx
	addq	$24, %rdx
	xorl	%r8d, %r8d
	leaq	-80(%rbp), %rsi
	leaq	-88(%rbp), %r11
	xorl	%r9d, %r9d
	movl	%r9d, %r14d
	movq	-208(%rbp), %r15        # 8-byte Reload
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	movq	%r15, %rsi
	movq	%rdx, -240(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-240(%rbp), %rcx        # 8-byte Reload
	movl	-212(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -244(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	-224(%rbp), %r9         # 8-byte Reload
	movl	$0, (%rsp)
	movq	-232(%rbp), %r12        # 8-byte Reload
	movq	%r12, 8(%rsp)
	movq	%rax, 16(%rsp)
	movl	$1, 24(%rsp)
	movq	%r11, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	movq	%r14, -256(%rbp)        # 8-byte Spill
	callq	gimp_int_radio_group_new
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.36, %rsi
	movabsq	$gimp_preview_invalidate, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-80(%rbp), %rdi
	movq	-104(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.36, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-88(%rbp), %rdx
	movq	-104(%rbp), %rdi
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-272(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.37, %rdi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	wvals+28, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-64(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.36, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$wvals, %rdi
	addq	$28, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-112(%rbp), %r11
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-312(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.36, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-112(%rbp), %rdx
	movq	-104(%rbp), %rdi
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-320(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movl	$3, %r9d
	xorl	%edx, %edx
	movl	%r9d, %edi
	movl	%r9d, %esi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_table_new
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-96(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-64(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -364(%rbp)        # 4-byte Spill
	movl	-364(%rbp), %ecx        # 4-byte Reload
	movl	-364(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movq	-96(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.38, %rdi
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$140, %r8d
	movl	$6, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_6, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_3, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %edx
	movl	$1, %r10d
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movsd	wvals, %xmm1            # xmm1 = mem[0],zero
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -392(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -396(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	%rax, %rcx
	movsd	%xmm0, -408(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-408(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-408(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-408(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -412(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$wvals, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-424(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-120(%rbp), %rdx
	movq	-104(%rbp), %rdi
	movq	%rdi, -432(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-432(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-96(%rbp), %rcx
	movq	%rax, -448(%rbp)        # 8-byte Spill
	movq	%rcx, -456(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.40, %rdi
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	movl	$140, %r8d
	movl	$6, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_4, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_5, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_3, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %r10d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movsd	wvals+8, %xmm1          # xmm1 = mem[0],zero
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -472(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -480(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-480(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-480(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-480(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -484(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$wvals, %rdi
	addq	$8, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rdi, -496(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-496(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-120(%rbp), %rdx
	movq	-104(%rbp), %rdi
	movq	%rdi, -504(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-504(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-96(%rbp), %rcx
	movq	%rax, -520(%rbp)        # 8-byte Spill
	movq	%rcx, -528(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.41, %rdi
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	movl	$140, %r8d
	movl	$6, %r9d
	movsd	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI3_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_3, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %r10d
	xorps	%xmm0, %xmm0
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movsd	wvals+16, %xmm5         # xmm5 = mem[0],zero
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -544(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -552(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-552(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-552(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -556(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$wvals, %rdi
	addq	$16, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rdi, -568(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-568(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-120(%rbp), %rdx
	movq	-104(%rbp), %rdi
	movq	%rdi, -576(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-576(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rdi
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r13b
	andb	$1, %r13b
	movzbl	%r13b, %eax
	movl	%eax, -124(%rbp)
	movq	-56(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-124(%rbp), %eax
	addq	$616, %rsp              # imm = 0x268
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	waves_dialog, .Lfunc_end3-waves_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	waves,@function
waves:                                  # @waves
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
	pushq	%r14
	pushq	%rbx
	subq	$224, %rsp
.Ltmp25:
	.cfi_offset %rbx, -32
.Ltmp26:
	.cfi_offset %r14, -24
	movl	$1, %eax
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rdi, -24(%rbp)
	movl	4(%rdi), %ecx
	movl	%ecx, -140(%rbp)
	movq	-24(%rbp), %rdi
	movl	8(%rdi), %ecx
	movl	%ecx, -144(%rbp)
	movq	-24(%rbp), %rdi
	movl	12(%rdi), %ecx
	movl	%ecx, -148(%rbp)
	movq	-24(%rbp), %rdi
	movl	(%rdi), %edi
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	gimp_drawable_has_alpha
	movl	%eax, -152(%rbp)
	movl	-140(%rbp), %eax
	movl	-144(%rbp), %ecx
	imull	%ecx, %eax
	movl	-148(%rbp), %ecx
	imull	%ecx, %eax
	movl	%eax, %edi
	movl	$1, %eax
	movl	%eax, %edx
	movq	%rdx, %rsi
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	callq	g_malloc_n
	movq	%rax, -128(%rbp)
	movl	-140(%rbp), %ecx
	movl	-144(%rbp), %r8d
	imull	%r8d, %ecx
	movl	-148(%rbp), %r8d
	imull	%r8d, %ecx
	movl	%ecx, %edi
	movq	-176(%rbp), %rsi        # 8-byte Reload
	callq	g_malloc_n
	movq	%rax, -136(%rbp)
	movq	-24(%rbp), %rsi
	movl	-140(%rbp), %r8d
	movl	-144(%rbp), %r9d
	movq	%rsp, %rax
	movl	$0, 8(%rax)
	movl	$0, (%rax)
	leaq	-72(%rbp), %rax
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_pixel_rgn_init
	movq	-24(%rbp), %rsi
	movl	-140(%rbp), %r8d
	movl	-144(%rbp), %r9d
	movq	%rsp, %rax
	movl	$1, 8(%rax)
	movl	$1, (%rax)
	leaq	-120(%rbp), %rdi
	movl	-180(%rbp), %edx        # 4-byte Reload
	movl	-180(%rbp), %ecx        # 4-byte Reload
	callq	gimp_pixel_rgn_init
	movq	-128(%rbp), %rsi
	movl	-140(%rbp), %r8d
	movl	-144(%rbp), %r9d
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movl	-180(%rbp), %edx        # 4-byte Reload
	movl	-180(%rbp), %ecx        # 4-byte Reload
	callq	gimp_pixel_rgn_get_rect
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	movl	-140(%rbp), %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	movl	-144(%rbp), %edx
	movl	%edx, %r10d
	movl	%r10d, %edx
	movl	-148(%rbp), %r8d
	movl	-152(%rbp), %r9d
	cvtsi2sdq	%rax, %xmm0
	movsd	.LCPI4_0(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvtsi2sdq	%r10, %xmm1
	movsd	-160(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	movsd	wvals, %xmm2            # xmm2 = mem[0],zero
	movsd	wvals+16, %xmm3         # xmm3 = mem[0],zero
	movsd	wvals+8, %xmm4          # xmm4 = mem[0],zero
	cmpl	$0, wvals+24
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %ebx
	movl	wvals+28, %r14d
	movl	%edx, -196(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-196(%rbp), %ecx        # 4-byte Reload
	movl	%ebx, (%rsp)
	movl	%r14d, 8(%rsp)
	movl	$1, 16(%rsp)
	callq	wave
	leaq	-120(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-136(%rbp), %rsi
	movl	-140(%rbp), %r8d
	movl	-144(%rbp), %r9d
	movl	%ecx, %edx
	callq	gimp_pixel_rgn_set_rect
	movq	-128(%rbp), %rdi
	callq	g_free
	movq	-136(%rbp), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-24(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_merge_shadow
	xorl	%ecx, %ecx
	movq	-24(%rbp), %r10
	movl	(%r10), %edi
	movl	-140(%rbp), %edx
	movl	-144(%rbp), %r8d
	movl	%ecx, %esi
	movl	%edx, -200(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-200(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -204(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -208(%rbp)        # 4-byte Spill
	callq	gimp_displays_flush
	movl	%eax, -212(%rbp)        # 4-byte Spill
	addq	$224, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	waves, .Lfunc_end4-waves
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	waves_preview,@function
waves_preview:                          # @waves_preview
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
	pushq	%rbx
	subq	$184, %rsp
.Ltmp30:
	.cfi_offset %rbx, -24
	leaq	-68(%rbp), %rcx
	leaq	-72(%rbp), %r8
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movq	%r8, -104(%rbp)         # 8-byte Spill
	callq	gimp_zoom_preview_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-44(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	leaq	-52(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_zoom_preview_get_source
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_zoom_preview_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_zoom_preview_get_factor
	movsd	%xmm0, -64(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	4(%rax), %r9d
	movl	8(%rax), %r10d
	movl	%r9d, %eax
	cvtsi2sdq	%rax, %xmm0
	movsd	.LCPI5_0(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %esi
	movl	%r10d, %eax
	cvtsi2sdq	%rax, %xmm0
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	-104(%rbp), %r8         # 8-byte Reload
	callq	gimp_preview_transform
	movl	$1, %edx
	movl	%edx, %esi
	movl	-44(%rbp), %edx
	imull	-48(%rbp), %edx
	imull	-52(%rbp), %edx
	movslq	%edx, %rdi
	callq	g_malloc_n
	movb	$1, %r11b
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-52(%rbp), %r8d
	cmpl	$2, -52(%rbp)
	movl	%r8d, -116(%rbp)        # 4-byte Spill
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movl	%edx, -140(%rbp)        # 4-byte Spill
	movl	%ecx, -144(%rbp)        # 4-byte Spill
	movb	%r11b, -145(%rbp)       # 1-byte Spill
	je	.LBB5_2
# BB#1:                                 # %lor.rhs
	cmpl	$4, -52(%rbp)
	sete	%al
	movb	%al, -145(%rbp)         # 1-byte Spill
.LBB5_2:                                # %lor.end
	movb	-145(%rbp), %al         # 1-byte Reload
	xorl	%ecx, %ecx
	movzbl	%al, %edx
	andl	$1, %edx
	cvtsi2sdl	-68(%rbp), %xmm0
	cvtsi2sdl	-72(%rbp), %xmm1
	movsd	wvals(%rip), %xmm2      # xmm2 = mem[0],zero
	cvtsi2sdl	-44(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	movq	-16(%rbp), %rsi
	movl	4(%rsi), %edi
	movl	8(%rsi), %r8d
	movl	%edi, %esi
	cvtsi2sdq	%rsi, %xmm3
	divsd	%xmm3, %xmm2
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm2
	movsd	wvals+16(%rip), %xmm3   # xmm3 = mem[0],zero
	cvtsi2sdl	-48(%rbp), %xmm4
	mulsd	%xmm4, %xmm3
	movl	%r8d, %esi
	cvtsi2sdq	%rsi, %xmm4
	divsd	%xmm4, %xmm3
	mulsd	-64(%rbp), %xmm3
	movsd	wvals+8, %xmm4          # xmm4 = mem[0],zero
	cmpl	$0, wvals+24
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	movl	wvals+28, %r8d
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movl	%edi, -152(%rbp)        # 4-byte Spill
	movq	%rsi, %rdi
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movl	-140(%rbp), %r9d        # 4-byte Reload
	movl	%edx, -156(%rbp)        # 4-byte Spill
	movl	%r9d, %edx
	movl	-144(%rbp), %r10d       # 4-byte Reload
	movl	%ecx, -160(%rbp)        # 4-byte Spill
	movl	%r10d, %ecx
	movl	-116(%rbp), %r11d       # 4-byte Reload
	movl	%r8d, -164(%rbp)        # 4-byte Spill
	movl	%r11d, %r8d
	movl	-156(%rbp), %r9d        # 4-byte Reload
	movl	-152(%rbp), %ebx        # 4-byte Reload
	movl	%ebx, (%rsp)
	movl	-164(%rbp), %ebx        # 4-byte Reload
	movl	%ebx, 8(%rsp)
	movl	$0, 16(%rsp)
	callq	wave
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-44(%rbp), %ecx
	imull	-52(%rbp), %ecx
	movl	%ecx, %edx
	callq	gimp_preview_draw_buffer
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rdi
	callq	g_free
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	waves_preview, .Lfunc_end5-waves_preview
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4640537203540230144     # double 180
.LCPI6_1:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI6_2:
	.quad	4611686018427387904     # double 2
.LCPI6_3:
	.quad	4607182418800017408     # double 1
.LCPI6_4:
	.quad	4618760256179416344     # double 6.2831853071795862
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI6_5:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	wave,@function
wave:                                   # @wave
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$384, %rsp              # imm = 0x180
.Ltmp34:
	.cfi_offset %rbx, -48
.Ltmp35:
	.cfi_offset %r12, -40
.Ltmp36:
	.cfi_offset %r14, -32
.Ltmp37:
	.cfi_offset %r15, -24
	movl	32(%rbp), %eax
	movl	24(%rbp), %r10d
	movl	16(%rbp), %r11d
	movsd	.LCPI6_0, %xmm5         # xmm5 = mem[0],zero
	movsd	.LCPI6_1, %xmm6         # xmm6 = mem[0],zero
	xorl	%ebx, %ebx
	movl	$4, %r14d
	movl	%r14d, %r15d
	leaq	-324(%rbp), %r12
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	%ecx, -56(%rbp)
	movl	%r8d, -60(%rbp)
	movl	%r9d, -64(%rbp)
	movsd	%xmm0, -72(%rbp)
	movsd	%xmm1, -80(%rbp)
	movsd	%xmm2, -88(%rbp)
	movsd	%xmm3, -96(%rbp)
	movsd	%xmm4, -104(%rbp)
	movl	%r11d, -108(%rbp)
	movl	%r10d, -112(%rbp)
	movl	%eax, -116(%rbp)
	movl	$0, -172(%rbp)
	movq	%r12, %rdi
	movl	%ebx, %esi
	movq	%r15, %rdx
	movsd	%xmm5, -336(%rbp)       # 8-byte Spill
	movsd	%xmm6, -344(%rbp)       # 8-byte Spill
	callq	memset
	movsd	-344(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-104(%rbp), %xmm0
	movsd	-336(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -104(%rbp)
	movl	-52(%rbp), %eax
	imull	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, -128(%rbp)
	cmpl	$0, -116(%rbp)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.42, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	$10, %ecx
	movl	-56(%rbp), %edx
	movl	%eax, -348(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	%eax, -172(%rbp)
.LBB6_2:                                # %if.end
	movsd	.LCPI6_2, %xmm0         # xmm0 = mem[0],zero
	movl	$0, -152(%rbp)
	movl	$0, -148(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -156(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, -160(%rbp)
	movl	-156(%rbp), %eax
	subl	-148(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -200(%rbp)
	movl	-160(%rbp), %eax
	subl	-152(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -208(%rbp)
	movsd	-200(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-208(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB6_4
# BB#3:                                 # %if.then.10
	movsd	.LCPI6_3, %xmm0         # xmm0 = mem[0],zero
	movsd	-208(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	-200(%rbp), %xmm1
	movsd	%xmm1, -264(%rbp)
	movsd	%xmm0, -272(%rbp)
	jmp	.LBB6_8
.LBB6_4:                                # %if.else
	movsd	-200(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-208(%rbp), %xmm0
	jbe	.LBB6_6
# BB#5:                                 # %if.then.14
	movsd	.LCPI6_3, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -264(%rbp)
	movsd	-200(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-208(%rbp), %xmm0
	movsd	%xmm0, -272(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.16
	movsd	.LCPI6_3, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -264(%rbp)
	movsd	%xmm0, -272(%rbp)
.LBB6_7:                                # %if.end.17
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.18
	movsd	.LCPI6_2, %xmm0         # xmm0 = mem[0],zero
	movslq	-152(%rbp), %rax
	imulq	-128(%rbp), %rax
	movl	-148(%rbp), %ecx
	imull	-60(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	addq	-48(%rbp), %rax
	movq	%rax, -48(%rbp)
	mulsd	-96(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)
	movl	-152(%rbp), %ecx
	movl	%ecx, -168(%rbp)
.LBB6_9:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_14 Depth 2
	movl	-168(%rbp), %eax
	cmpl	-160(%rbp), %eax
	jge	.LBB6_61
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB6_9 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -144(%rbp)
	cmpl	$0, -116(%rbp)
	je	.LBB6_13
# BB#11:                                # %land.lhs.true
                                        #   in Loop: Header=BB6_9 Depth=1
	movl	-168(%rbp), %eax
	cltd
	idivl	-172(%rbp)
	cmpl	$0, %edx
	jne	.LBB6_13
# BB#12:                                # %if.then.29
                                        #   in Loop: Header=BB6_9 Depth=1
	cvtsi2sdl	-168(%rbp), %xmm0
	cvtsi2sdl	-56(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -352(%rbp)        # 4-byte Spill
.LBB6_13:                               # %if.end.34
                                        #   in Loop: Header=BB6_9 Depth=1
	movl	-148(%rbp), %eax
	movl	%eax, -164(%rbp)
.LBB6_14:                               # %for.cond.35
                                        #   Parent Loop BB6_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-164(%rbp), %eax
	cmpl	-156(%rbp), %eax
	jge	.LBB6_59
# BB#15:                                # %for.body.38
                                        #   in Loop: Header=BB6_14 Depth=2
	cvtsi2sdl	-164(%rbp), %xmm0
	subsd	-72(%rbp), %xmm0
	mulsd	-264(%rbp), %xmm0
	movsd	%xmm0, -248(%rbp)
	cvtsi2sdl	-168(%rbp), %xmm0
	subsd	-80(%rbp), %xmm0
	mulsd	-272(%rbp), %xmm0
	movsd	%xmm0, -256(%rbp)
	movsd	-248(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-248(%rbp), %xmm0
	movsd	-256(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-256(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt
	movsd	%xmm0, -224(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB6_17
# BB#16:                                # %if.then.50
                                        #   in Loop: Header=BB6_14 Depth=2
	movsd	.LCPI6_4, %xmm0         # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-224(%rbp), %xmm2       # xmm2 = mem[0],zero
	divsd	-96(%rbp), %xmm2
	mulsd	%xmm0, %xmm2
	addsd	-104(%rbp), %xmm2
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -360(%rbp)       # 8-byte Spill
	callq	sin
	movapd	.LCPI6_5(%rip), %xmm1   # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	-360(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -216(%rbp)
	movsd	-216(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-248(%rbp), %xmm0
	divsd	-264(%rbp), %xmm0
	addsd	-72(%rbp), %xmm0
	movsd	%xmm0, -232(%rbp)
	movsd	-216(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-256(%rbp), %xmm0
	divsd	-272(%rbp), %xmm0
	addsd	-80(%rbp), %xmm0
	movsd	%xmm0, -240(%rbp)
	jmp	.LBB6_18
.LBB6_17:                               # %if.else.63
                                        #   in Loop: Header=BB6_14 Depth=2
	movsd	.LCPI6_4, %xmm0         # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-224(%rbp), %xmm2       # xmm2 = mem[0],zero
	divsd	-96(%rbp), %xmm2
	mulsd	%xmm0, %xmm2
	addsd	-104(%rbp), %xmm2
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -368(%rbp)       # 8-byte Spill
	callq	sin
	movsd	-368(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -216(%rbp)
	movsd	-216(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-248(%rbp), %xmm0
	divsd	-264(%rbp), %xmm0
	addsd	-72(%rbp), %xmm0
	movsd	%xmm0, -232(%rbp)
	movsd	-216(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-256(%rbp), %xmm0
	divsd	-272(%rbp), %xmm0
	addsd	-80(%rbp), %xmm0
	movsd	%xmm0, -240(%rbp)
.LBB6_18:                               # %if.end.75
                                        #   in Loop: Header=BB6_14 Depth=2
	cmpl	$0, -108(%rbp)
	je	.LBB6_32
# BB#19:                                # %if.then.77
                                        #   in Loop: Header=BB6_14 Depth=2
	movsd	-232(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-52(%rbp), %eax
	subl	$2, %eax
	cvtsi2sdl	%eax, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB6_21
# BB#20:                                # %cond.true
                                        #   in Loop: Header=BB6_14 Depth=2
	movl	-52(%rbp), %eax
	subl	$2, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -376(%rbp)       # 8-byte Spill
	jmp	.LBB6_25
.LBB6_21:                               # %cond.false
                                        #   in Loop: Header=BB6_14 Depth=2
	xorps	%xmm0, %xmm0
	ucomisd	-232(%rbp), %xmm0
	jbe	.LBB6_23
# BB#22:                                # %cond.true.86
                                        #   in Loop: Header=BB6_14 Depth=2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -384(%rbp)       # 8-byte Spill
	jmp	.LBB6_24
.LBB6_23:                               # %cond.false.87
                                        #   in Loop: Header=BB6_14 Depth=2
	movsd	-232(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -384(%rbp)       # 8-byte Spill
.LBB6_24:                               # %cond.end
                                        #   in Loop: Header=BB6_14 Depth=2
	movsd	-384(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -376(%rbp)       # 8-byte Spill
.LBB6_25:                               # %cond.end.88
                                        #   in Loop: Header=BB6_14 Depth=2
	movsd	-376(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -276(%rbp)
	movsd	-240(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-56(%rbp), %eax
	subl	$2, %eax
	cvtsi2sdl	%eax, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB6_27
# BB#26:                                # %cond.true.95
                                        #   in Loop: Header=BB6_14 Depth=2
	movl	-56(%rbp), %eax
	subl	$2, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -392(%rbp)       # 8-byte Spill
	jmp	.LBB6_31
.LBB6_27:                               # %cond.false.98
                                        #   in Loop: Header=BB6_14 Depth=2
	xorps	%xmm0, %xmm0
	ucomisd	-240(%rbp), %xmm0
	jbe	.LBB6_29
# BB#28:                                # %cond.true.101
                                        #   in Loop: Header=BB6_14 Depth=2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -400(%rbp)       # 8-byte Spill
	jmp	.LBB6_30
.LBB6_29:                               # %cond.false.102
                                        #   in Loop: Header=BB6_14 Depth=2
	movsd	-240(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -400(%rbp)       # 8-byte Spill
.LBB6_30:                               # %cond.end.103
                                        #   in Loop: Header=BB6_14 Depth=2
	movsd	-400(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -392(%rbp)       # 8-byte Spill
.LBB6_31:                               # %cond.end.105
                                        #   in Loop: Header=BB6_14 Depth=2
	movsd	-392(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -280(%rbp)
	jmp	.LBB6_33
.LBB6_32:                               # %if.else.108
                                        #   in Loop: Header=BB6_14 Depth=2
	cvttsd2si	-232(%rbp), %eax
	movl	%eax, -276(%rbp)
	cvttsd2si	-240(%rbp), %eax
	movl	%eax, -280(%rbp)
.LBB6_33:                               # %if.end.111
                                        #   in Loop: Header=BB6_14 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	xorl	%eax, %eax
	movq	-40(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movslq	-280(%rbp), %rdi
	imulq	%rdi, %rsi
	addq	%rsi, %rdx
	movl	-276(%rbp), %r8d
	imull	-60(%rbp), %r8d
	movslq	%r8d, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -136(%rbp)
	cmpl	-276(%rbp), %eax
	movb	%cl, -401(%rbp)         # 1-byte Spill
	jg	.LBB6_35
# BB#34:                                # %land.rhs
                                        #   in Loop: Header=BB6_14 Depth=2
	movl	-276(%rbp), %eax
	movl	-52(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	setle	%dl
	movb	%dl, -401(%rbp)         # 1-byte Spill
.LBB6_35:                               # %land.end
                                        #   in Loop: Header=BB6_14 Depth=2
	movb	-401(%rbp), %al         # 1-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	xorl	%ecx, %ecx
	movl	$1, %esi
	testb	$1, %al
	movl	%ecx, %edi
	cmovnel	%esi, %edi
	movl	%edi, -176(%rbp)
	cmpl	-280(%rbp), %ecx
	movb	%dl, -402(%rbp)         # 1-byte Spill
	jg	.LBB6_37
# BB#36:                                # %land.rhs.125
                                        #   in Loop: Header=BB6_14 Depth=2
	movl	-280(%rbp), %eax
	movl	-56(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	setle	%dl
	movb	%dl, -402(%rbp)         # 1-byte Spill
.LBB6_37:                               # %land.end.129
                                        #   in Loop: Header=BB6_14 Depth=2
	movb	-402(%rbp), %al         # 1-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	xorl	%ecx, %ecx
	movl	$1, %esi
	testb	$1, %al
	movl	%ecx, %edi
	cmovnel	%esi, %edi
	movl	%edi, -180(%rbp)
	movl	-276(%rbp), %esi
	addl	$1, %esi
	cmpl	%esi, %ecx
	movb	%dl, -403(%rbp)         # 1-byte Spill
	jg	.LBB6_39
# BB#38:                                # %land.rhs.134
                                        #   in Loop: Header=BB6_14 Depth=2
	movl	-276(%rbp), %eax
	addl	$1, %eax
	movl	-52(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	setle	%dl
	movb	%dl, -403(%rbp)         # 1-byte Spill
.LBB6_39:                               # %land.end.139
                                        #   in Loop: Header=BB6_14 Depth=2
	movb	-403(%rbp), %al         # 1-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	xorl	%ecx, %ecx
	movl	$1, %esi
	testb	$1, %al
	movl	%ecx, %edi
	cmovnel	%esi, %edi
	movl	%edi, -184(%rbp)
	movl	-280(%rbp), %esi
	addl	$1, %esi
	cmpl	%esi, %ecx
	movb	%dl, -404(%rbp)         # 1-byte Spill
	jg	.LBB6_41
# BB#40:                                # %land.rhs.144
                                        #   in Loop: Header=BB6_14 Depth=2
	movl	-280(%rbp), %eax
	addl	$1, %eax
	movl	-56(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	setle	%dl
	movb	%dl, -404(%rbp)         # 1-byte Spill
.LBB6_41:                               # %land.end.149
                                        #   in Loop: Header=BB6_14 Depth=2
	movb	-404(%rbp), %al         # 1-byte Reload
	xorl	%ecx, %ecx
	movl	$1, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -188(%rbp)
	cmpl	$0, -176(%rbp)
	je	.LBB6_44
# BB#42:                                # %land.lhs.true.152
                                        #   in Loop: Header=BB6_14 Depth=2
	cmpl	$0, -180(%rbp)
	je	.LBB6_44
# BB#43:                                # %if.then.154
                                        #   in Loop: Header=BB6_14 Depth=2
	movq	-136(%rbp), %rax
	movq	%rax, -320(%rbp)
	jmp	.LBB6_45
.LBB6_44:                               # %if.else.155
                                        #   in Loop: Header=BB6_14 Depth=2
	leaq	-324(%rbp), %rax
	movq	%rax, -320(%rbp)
.LBB6_45:                               # %if.end.157
                                        #   in Loop: Header=BB6_14 Depth=2
	cmpl	$0, -184(%rbp)
	je	.LBB6_48
# BB#46:                                # %land.lhs.true.159
                                        #   in Loop: Header=BB6_14 Depth=2
	cmpl	$0, -180(%rbp)
	je	.LBB6_48
# BB#47:                                # %if.then.161
                                        #   in Loop: Header=BB6_14 Depth=2
	movq	-136(%rbp), %rax
	movslq	-60(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -312(%rbp)
	jmp	.LBB6_49
.LBB6_48:                               # %if.else.165
                                        #   in Loop: Header=BB6_14 Depth=2
	leaq	-324(%rbp), %rax
	movq	%rax, -312(%rbp)
.LBB6_49:                               # %if.end.168
                                        #   in Loop: Header=BB6_14 Depth=2
	cmpl	$0, -176(%rbp)
	je	.LBB6_52
# BB#50:                                # %land.lhs.true.170
                                        #   in Loop: Header=BB6_14 Depth=2
	cmpl	$0, -188(%rbp)
	je	.LBB6_52
# BB#51:                                # %if.then.172
                                        #   in Loop: Header=BB6_14 Depth=2
	movq	-136(%rbp), %rax
	addq	-128(%rbp), %rax
	movq	%rax, -304(%rbp)
	jmp	.LBB6_53
.LBB6_52:                               # %if.else.175
                                        #   in Loop: Header=BB6_14 Depth=2
	leaq	-324(%rbp), %rax
	movq	%rax, -304(%rbp)
.LBB6_53:                               # %if.end.178
                                        #   in Loop: Header=BB6_14 Depth=2
	cmpl	$0, -184(%rbp)
	je	.LBB6_56
# BB#54:                                # %land.lhs.true.180
                                        #   in Loop: Header=BB6_14 Depth=2
	cmpl	$0, -188(%rbp)
	je	.LBB6_56
# BB#55:                                # %if.then.182
                                        #   in Loop: Header=BB6_14 Depth=2
	movq	-136(%rbp), %rax
	movslq	-60(%rbp), %rcx
	addq	%rcx, %rax
	addq	-128(%rbp), %rax
	movq	%rax, -296(%rbp)
	jmp	.LBB6_57
.LBB6_56:                               # %if.else.187
                                        #   in Loop: Header=BB6_14 Depth=2
	leaq	-324(%rbp), %rax
	movq	%rax, -296(%rbp)
.LBB6_57:                               # %if.end.190
                                        #   in Loop: Header=BB6_14 Depth=2
	leaq	-320(%rbp), %rcx
	movq	-144(%rbp), %rdi
	movsd	-232(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-240(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	-60(%rbp), %esi
	movl	-64(%rbp), %edx
	callq	gimp_bilinear_pixels_8
	movl	-60(%rbp), %edx
	movq	-144(%rbp), %rcx
	movslq	%edx, %rdi
	addq	%rdi, %rcx
	movq	%rcx, -144(%rbp)
# BB#58:                                # %for.inc
                                        #   in Loop: Header=BB6_14 Depth=2
	movl	-164(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -164(%rbp)
	jmp	.LBB6_14
.LBB6_59:                               # %for.end
                                        #   in Loop: Header=BB6_9 Depth=1
	movq	-128(%rbp), %rax
	addq	-48(%rbp), %rax
	movq	%rax, -48(%rbp)
# BB#60:                                # %for.inc.195
                                        #   in Loop: Header=BB6_9 Depth=1
	movl	-168(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -168(%rbp)
	jmp	.LBB6_9
.LBB6_61:                               # %for.end.197
	cmpl	$0, -116(%rbp)
	je	.LBB6_63
# BB#62:                                # %if.then.199
	movsd	.LCPI6_3, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movl	%eax, -408(%rbp)        # 4-byte Spill
.LBB6_63:                               # %if.end.201
	addq	$384, %rsp              # imm = 0x180
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	wave, .Lfunc_end6-wave
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
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.9
	.long	3                       # 0x3
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
	.asciz	"amplitude"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"The Amplitude of the Waves"
	.size	.L.str.7, 27

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"phase"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"The Phase of the Waves"
	.size	.L.str.9, 23

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"wavelength"
	.size	.L.str.10, 11

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"The Wavelength of the Waves"
	.size	.L.str.11, 28

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"type"
	.size	.L.str.12, 5

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Type of waves, black/smeared"
	.size	.L.str.13, 29

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"reflective"
	.size	.L.str.14, 11

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Use Reflection"
	.size	.L.str.15, 15

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"plug-in-waves"
	.size	.L.str.16, 14

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Distort the image with waves"
	.size	.L.str.17, 29

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"none yet"
	.size	.L.str.18, 9

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Eric L. Hernes, Stephen Norris"
	.size	.L.str.19, 31

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Stephen Norris"
	.size	.L.str.20, 15

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"1997"
	.size	.L.str.21, 5

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"_Waves..."
	.size	.L.str.22, 10

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.23, 12

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"<Image>/Filters/Distorts"
	.size	.L.str.24, 25

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.25, 20

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"UTF-8"
	.size	.L.str.26, 6

	.type	wvals,@object           # @wvals
	.data
	.align	8
wvals:
	.quad	4621819117588971520     # double 10
	.quad	0                       # double 0
	.quad	4621819117588971520     # double 10
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	wvals, 32

	.type	.L.str.27,@object       # @.str.27
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.27:
	.asciz	"waves"
	.size	.L.str.27, 6

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Waves"
	.size	.L.str.28, 6

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gimp-waves"
	.size	.L.str.29, 11

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"gtk-cancel"
	.size	.L.str.30, 11

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gtk-ok"
	.size	.L.str.31, 7

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"invalidated"
	.size	.L.str.32, 12

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Mode"
	.size	.L.str.33, 5

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"_Smear"
	.size	.L.str.34, 7

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"_Blacken"
	.size	.L.str.35, 9

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"toggled"
	.size	.L.str.36, 8

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"_Reflective"
	.size	.L.str.37, 12

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"_Amplitude:"
	.size	.L.str.38, 12

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"value-changed"
	.size	.L.str.39, 14

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"_Phase:"
	.size	.L.str.40, 8

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"_Wavelength:"
	.size	.L.str.41, 13

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Waving"
	.size	.L.str.42, 7


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
