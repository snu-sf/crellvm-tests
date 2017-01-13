	.text
	.file	"ripple.bc"
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
	movabsq	$.L.str.20, %rdi
	movabsq	$.L.str.21, %rsi
	movabsq	$.L.str.22, %rdx
	movabsq	$.L.str.23, %rcx
	movabsq	$.L.str.24, %r8
	movabsq	$.L.str.25, %r9
	movabsq	$.L.str.26, %rax
	movabsq	$.L.str.27, %r10
	movl	$1, %r11d
	movl	$10, %ebx
	xorl	%r14d, %r14d
	movabsq	$query.args, %r15
	xorl	%r12d, %r12d
	movl	%r12d, %r13d
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$10, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r13, -48(%rbp)         # 8-byte Spill
	movl	%r11d, -52(%rbp)        # 4-byte Spill
	movl	%r14d, -56(%rbp)        # 4-byte Spill
	movl	%ebx, -60(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.20, %rdi
	movabsq	$.L.str.28, %rsi
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

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4607182418800017408     # double 1
	.text
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
	movabsq	$.L.str.29, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.29, %rdi
	movabsq	$.L.str.30, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.29, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -80(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -48(%rbp)
	movl	$16, %edi
                                        # kill: RDI<def> EDI<kill>
	callq	gimp_tile_cache_ntiles
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movq	-40(%rbp), %rax
	movq	$run.values, (%rax)
	movl	$21, run.values(%rip)
	movl	-56(%rbp), %ecx
	movl	%ecx, run.values+8(%rip)
	movl	-52(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_29
.LBB1_29:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_30
.LBB1_30:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB1_15
	jmp	.LBB1_16
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.20, %rdi
	movabsq	$rvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-48(%rbp), %rdi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	ripple_dialog
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	jmp	.LBB1_28
.LBB1_5:                                # %if.end
	jmp	.LBB1_17
.LBB1_6:                                # %sw.bb.9
	cmpl	$10, -12(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then.10
	movl	$1, -56(%rbp)
	jmp	.LBB1_14
.LBB1_8:                                # %if.else
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-24(%rbp), %rdx
	movl	128(%rdx), %esi
	movl	%esi, rvals
	movq	-24(%rbp), %rdx
	movl	168(%rdx), %esi
	movl	%esi, rvals+4
	movq	-24(%rbp), %rdx
	cmpl	$0, 208(%rdx)
	movl	%eax, %esi
	cmovnel	%ecx, %esi
	movl	%esi, rvals+8
	movq	-24(%rbp), %rdx
	movl	248(%rdx), %esi
	movl	%esi, rvals+12
	movq	-24(%rbp), %rdx
	movl	288(%rdx), %esi
	movl	%esi, rvals+16
	movq	-24(%rbp), %rdx
	cmpl	$0, 328(%rdx)
	movl	%eax, %esi
	cmovnel	%ecx, %esi
	movl	%esi, rvals+20
	movq	-24(%rbp), %rdx
	cmpl	$0, 368(%rdx)
	cmovnel	%ecx, %eax
	movl	%eax, rvals+24
	cmpl	$1, rvals
	jge	.LBB1_10
# BB#9:                                 # %if.then.38
	movabsq	$.L.str.31, %rdi
	callq	gimp_message
	movl	$1, -56(%rbp)
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB1_10:                               # %if.end.40
	cmpl	$0, rvals+12
	jl	.LBB1_12
# BB#11:                                # %lor.lhs.false
	cmpl	$2, rvals+12
	jle	.LBB1_13
.LBB1_12:                               # %if.then.43
	movl	$1, -56(%rbp)
.LBB1_13:                               # %if.end.44
	jmp	.LBB1_14
.LBB1_14:                               # %if.end.45
	jmp	.LBB1_17
.LBB1_15:                               # %sw.bb.46
	movabsq	$.L.str.20, %rdi
	movabsq	$rvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB1_17
.LBB1_16:                               # %sw.default
	jmp	.LBB1_17
.LBB1_17:                               # %sw.epilog
	cmpl	$3, -56(%rbp)
	jne	.LBB1_27
# BB#18:                                # %if.then.49
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_20
# BB#19:                                # %lor.lhs.false.52
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB1_25
.LBB1_20:                               # %if.then.56
	movabsq	$.L.str.32, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	ripple
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	cmpl	$1, -52(%rbp)
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB1_22
# BB#21:                                # %if.then.61
	callq	gimp_displays_flush
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB1_22:                               # %if.end.63
	cmpl	$0, -52(%rbp)
	jne	.LBB1_24
# BB#23:                                # %if.then.65
	movabsq	$.L.str.20, %rdi
	movabsq	$rvals, %rax
	movl	$32, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB1_24:                               # %if.end.67
	jmp	.LBB1_26
.LBB1_25:                               # %if.else.68
	movl	$0, -56(%rbp)
.LBB1_26:                               # %if.end.69
	jmp	.LBB1_27
.LBB1_27:                               # %if.end.70
	movl	-56(%rbp), %eax
	movl	%eax, run.values+8
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB1_28:                               # %return
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
	.quad	4645040803167600640     # double 360
.LCPI3_1:
	.quad	4607182418800017408     # double 1
.LCPI3_2:
	.quad	4624633867356078080     # double 15
.LCPI3_3:
	.quad	4641240890982006784     # double 200
.LCPI3_4:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	ripple_dialog,@function
ripple_dialog:                          # @ripple_dialog
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
	subq	$1048, %rsp             # imm = 0x418
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
	movabsq	$.L.str.33, %rax
	movl	$1, %esi
	movq	%rdi, -48(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	movabsq	$.L.str.34, %rdi
	callq	gettext
	movabsq	$.L.str.35, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.20, %r9
	movabsq	$.L.str.36, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.37, %r11
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -188(%rbp)        # 4-byte Spill
	movl	%r10d, -192(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-56(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-56(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
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
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.38, %rsi
	movabsq	$ripple, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movl	$2, %r9d
	xorl	%edx, %edx
	movl	%r9d, %edi
	movl	%r9d, %esi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_table_new
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-104(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-64(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -276(%rbp)        # 4-byte Spill
	movl	-276(%rbp), %ecx        # 4-byte Reload
	movl	-276(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movabsq	$.L.str.39, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -96(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	$5, %r8d
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -292(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-292(%rbp), %r9d        # 4-byte Reload
	movl	%ecx, -296(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	-296(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -300(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movl	$5, (%rsp)
	movl	$5, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -88(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.40, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -324(%rbp)        # 4-byte Spill
	movl	-324(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	rvals+20, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.41, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$rvals, %rdi
	addq	$20, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %r11
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-344(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.41, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-352(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.42, %rdi
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	rvals+24, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.41, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$rvals, %rdi
	addq	$24, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %r11
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-392(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.41, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-400(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.43, %rdi
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.44, %rdi
	movl	rvals+8, %r8d
	movq	%rax, -424(%rbp)        # 8-byte Spill
	movl	%r8d, -428(%rbp)        # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.45, %rdi
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	movabsq	$gimp_radio_button_update, %rcx
	movabsq	$rvals, %rdx
	addq	$8, %rdx
	xorl	%r8d, %r8d
	leaq	-120(%rbp), %rsi
	leaq	-128(%rbp), %r11
	xorl	%r9d, %r9d
	movl	%r9d, %r14d
	movq	-424(%rbp), %r15        # 8-byte Reload
	movq	%rsi, -448(%rbp)        # 8-byte Spill
	movq	%r15, %rsi
	movq	%rdx, -456(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-456(%rbp), %rcx        # 8-byte Reload
	movl	-428(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -460(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	-440(%rbp), %r9         # 8-byte Reload
	movl	$0, (%rsp)
	movq	-448(%rbp), %r12        # 8-byte Reload
	movq	%r12, 8(%rsp)
	movq	%rax, 16(%rsp)
	movl	$1, 24(%rsp)
	movq	%r11, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	movq	%r14, -472(%rbp)        # 8-byte Spill
	callq	gimp_int_radio_group_new
	movq	%rax, -96(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r8d
	movl	$2, %ecx
	xorl	%r10d, %r10d
	movl	$5, %ebx
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, -484(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movl	-484(%rbp), %r9d        # 4-byte Reload
	movl	$5, (%rsp)
	movl	$5, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%ebx, -488(%rbp)        # 4-byte Spill
	callq	gtk_table_attach
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.41, %rsi
	movabsq	$gimp_preview_invalidate, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-120(%rbp), %rdi
	movq	-72(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.41, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-128(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -496(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-496(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.46, %rdi
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.47, %rdi
	movl	rvals+12, %r8d
	movq	%rax, -520(%rbp)        # 8-byte Spill
	movl	%r8d, -524(%rbp)        # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.48, %rdi
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.49, %rdi
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	movabsq	$gimp_radio_button_update, %rcx
	movabsq	$rvals, %rdx
	addq	$12, %rdx
	leaq	-136(%rbp), %rsi
	xorl	%r8d, %r8d
	leaq	-144(%rbp), %r11
	movl	$2, %r9d
	leaq	-152(%rbp), %r14
	xorl	%r10d, %r10d
	movl	%r10d, %r15d
	movq	-520(%rbp), %r12        # 8-byte Reload
	movq	%rsi, -552(%rbp)        # 8-byte Spill
	movq	%r12, %rsi
	movq	%rdx, -560(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-560(%rbp), %rcx        # 8-byte Reload
	movl	-524(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -564(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movq	-536(%rbp), %r13        # 8-byte Reload
	movl	%r9d, -568(%rbp)        # 4-byte Spill
	movq	%r13, %r9
	movl	$1, (%rsp)
	movq	-552(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	-544(%rbp), %r10        # 8-byte Reload
	movq	%r10, 16(%rsp)
	movl	$0, 24(%rsp)
	movq	%r11, 32(%rsp)
	movq	%rax, 40(%rsp)
	movl	$2, 48(%rsp)
	movq	%r14, 56(%rsp)
	movq	$0, 64(%rsp)
	movb	$0, %al
	movq	%r15, -576(%rbp)        # 8-byte Spill
	callq	gimp_int_radio_group_new
	movq	%rax, -96(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %r8d
	movl	$2, %r9d
	movl	$5, %ebx
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %ecx
	movl	$5, (%rsp)
	movl	$5, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%ebx, -588(%rbp)        # 4-byte Spill
	callq	gtk_table_attach
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.50, %rsi
	movabsq	$.L.str.51, %rcx
	movl	$6, %r8d
	movq	-80(%rbp), %rax
	movq	-96(%rbp), %rdi
	movq	%rdi, -600(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-600(%rbp), %rdx        # 8-byte Reload
	callq	g_object_bind_property
	movabsq	$.L.str.41, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movl	$2, %r9d
	movq	-136(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -608(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-608(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.41, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-144(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -624(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-624(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.41, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-152(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -640(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-640(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.52, %rdi
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.53, %rdi
	movl	rvals+16, %r8d
	movq	%rax, -664(%rbp)        # 8-byte Spill
	movl	%r8d, -668(%rbp)        # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.54, %rdi
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	movabsq	$gimp_radio_button_update, %rcx
	movabsq	$rvals, %rdx
	addq	$16, %rdx
	xorl	%r8d, %r8d
	leaq	-160(%rbp), %rsi
	leaq	-168(%rbp), %r10
	xorl	%r9d, %r9d
	movl	%r9d, %r11d
	movq	-664(%rbp), %r14        # 8-byte Reload
	movq	%rsi, -688(%rbp)        # 8-byte Spill
	movq	%r14, %rsi
	movq	%rdx, -696(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-696(%rbp), %rcx        # 8-byte Reload
	movl	-668(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -700(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movq	-680(%rbp), %r9         # 8-byte Reload
	movl	$0, (%rsp)
	movq	-688(%rbp), %r15        # 8-byte Reload
	movq	%r15, 8(%rsp)
	movq	%rax, 16(%rsp)
	movl	$1, 24(%rsp)
	movq	%r10, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	movq	%r11, -712(%rbp)        # 8-byte Spill
	callq	gimp_int_radio_group_new
	movq	%rax, -96(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-720(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r8d
	movl	$2, %ebx
	movl	$5, %esi
	xorl	%edi, %edi
	movq	-96(%rbp), %rcx
	movl	%edi, -724(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -728(%rbp)        # 4-byte Spill
	movq	%rcx, %rsi
	movl	%r8d, %edx
	movl	%ebx, %ecx
	movl	%ebx, %r9d
	movl	$5, (%rsp)
	movl	$5, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.41, %rsi
	movabsq	$gimp_preview_invalidate, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-160(%rbp), %rdi
	movq	-72(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.41, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-168(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -736(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-736(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-104(%rbp), %rdi
	movq	%rax, -752(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movl	$3, %r9d
	xorl	%edx, %edx
	movl	%r9d, %edi
	movl	%r9d, %esi
	callq	gtk_table_new
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-760(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-104(%rbp), %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-768(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-64(%rbp), %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-776(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -780(%rbp)        # 4-byte Spill
	movl	-780(%rbp), %ecx        # 4-byte Reload
	movl	-780(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-104(%rbp), %rax
	movq	%rax, -792(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-792(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.55, %rdi
	movq	%rax, -800(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$200, %r8d
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_3, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_4, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %edx
	xorps	%xmm1, %xmm1
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	cvtsi2sdl	rvals, %xmm3
	movq	-800(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -808(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -812(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	%ecx, -816(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-816(%rbp), %r9d        # 4-byte Reload
	movsd	%xmm0, -824(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-824(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -832(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-832(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-832(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.56, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$rvals, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rdi, -840(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-840(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.56, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -848(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-848(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -856(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-104(%rbp), %rcx
	movq	%rax, -864(%rbp)        # 8-byte Spill
	movq	%rcx, -872(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-872(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.57, %rdi
	movq	%rax, -880(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	$1, %edx
	movl	$200, %r8d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_3, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_4, %xmm4         # xmm4 = mem[0],zero
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	cvtsi2sdl	rvals+4, %xmm1
	movq	-880(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movq	%rcx, -888(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -896(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-896(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-896(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-896(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.56, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$rvals, %rdi
	addq	$4, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rdi, -904(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-904(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.56, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -912(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-912(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -920(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-104(%rbp), %rcx
	movq	%rax, -928(%rbp)        # 8-byte Spill
	movq	%rcx, -936(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-936(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.58, %rdi
	movq	%rax, -944(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	$2, %edx
	movl	$200, %r8d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_2, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %ebx
	xorl	%esi, %esi
	movl	%esi, %ecx
	cvtsi2sdl	rvals+28, %xmm1
	movq	-944(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movq	%rcx, -952(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -960(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-960(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-960(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-960(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%ebx, -964(%rbp)        # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.56, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$rvals, %rdi
	addq	$28, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rdi, -976(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-976(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.56, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-112(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -984(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-984(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -992(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-96(%rbp), %rdi
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	callq	gtk_widget_show
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-1008(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %r9d
	movl	%r9d, -172(%rbp)
	movq	-56(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-172(%rbp), %eax
	addq	$1048, %rsp             # imm = 0x418
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	ripple_dialog, .Lfunc_end3-ripple_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	ripple,@function
ripple:                                 # @ripple
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
	subq	$160, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	%eax, %esi
	callq	gimp_pixel_fetcher_new
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rcx
	movl	4(%rcx), %eax
	movl	%eax, -32(%rbp)
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %eax
	movl	%eax, -28(%rbp)
	movl	rvals+12, %eax
	movl	%eax, -44(%rbp)
	movl	rvals, %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, rvals+24
	je	.LBB4_2
# BB#1:                                 # %if.then
	movl	$1, rvals+12
	movl	-32(%rbp), %eax
	movl	-32(%rbp), %ecx
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	rvals
	movl	-108(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -112(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-112(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	$0, rvals+8
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %r8d
	imull	%r8d, %eax
	movl	-28(%rbp), %r8d
	movl	-28(%rbp), %r9d
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movl	%r9d, %eax
	cltd
	idivl	rvals
	movl	%eax, -120(%rbp)        # 4-byte Spill
	movl	%r8d, %eax
	cltd
	movl	-120(%rbp), %r8d        # 4-byte Reload
	idivl	%r8d
	cmpl	$1, rvals+8
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %r9d
	imull	%r9d, %eax
	movl	-116(%rbp), %r9d        # 4-byte Reload
	addl	%eax, %r9d
	movl	%r9d, rvals
.LBB4_2:                                # %if.end
	cmpq	$0, -16(%rbp)
	je	.LBB4_15
# BB#3:                                 # %if.then.15
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_bpp
	leaq	-88(%rbp), %rsi
	leaq	-92(%rbp), %rdx
	movl	%eax, -68(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_preview_get_position
	leaq	-72(%rbp), %rsi
	leaq	-76(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_preview_get_size
	movl	$1, %eax
	movl	%eax, %esi
	movl	-72(%rbp), %eax
	imull	-76(%rbp), %eax
	imull	-68(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -56(%rbp)
	movq	%rax, -64(%rbp)
	movl	$0, -84(%rbp)
.LBB4_4:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_6 Depth 2
	movl	-84(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB4_14
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB4_4 Depth=1
	movl	$0, -80(%rbp)
.LBB4_6:                                # %for.cond.26
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-80(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jge	.LBB4_12
# BB#7:                                 # %for.body.29
                                        #   in Loop: Header=BB4_6 Depth=2
	cmpl	$1, rvals+8
	jne	.LBB4_9
# BB#8:                                 # %if.then.32
                                        #   in Loop: Header=BB4_6 Depth=2
	leaq	-40(%rbp), %rax
	movl	-88(%rbp), %ecx
	addl	-80(%rbp), %ecx
	movl	-92(%rbp), %edx
	addl	-84(%rbp), %edx
	movq	-64(%rbp), %rsi
	movl	-68(%rbp), %edi
	movl	%edi, -124(%rbp)        # 4-byte Spill
	movl	%ecx, %edi
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movl	%edx, %esi
	movq	-136(%rbp), %rdx        # 8-byte Reload
	movl	-124(%rbp), %ecx        # 4-byte Reload
	movq	%rax, %r8
	callq	ripple_vertical
	jmp	.LBB4_10
.LBB4_9:                                # %if.else
                                        #   in Loop: Header=BB4_6 Depth=2
	leaq	-40(%rbp), %rax
	movl	-88(%rbp), %ecx
	addl	-80(%rbp), %ecx
	movl	-92(%rbp), %edx
	addl	-84(%rbp), %edx
	movq	-64(%rbp), %rsi
	movl	-68(%rbp), %edi
	movl	%edi, -140(%rbp)        # 4-byte Spill
	movl	%ecx, %edi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movl	%edx, %esi
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movl	-140(%rbp), %ecx        # 4-byte Reload
	movq	%rax, %r8
	callq	ripple_horizontal
.LBB4_10:                               # %if.end.37
                                        #   in Loop: Header=BB4_6 Depth=2
	movl	-68(%rbp), %eax
	movq	-64(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
# BB#11:                                # %for.inc
                                        #   in Loop: Header=BB4_6 Depth=2
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB4_6
.LBB4_12:                               # %for.end
                                        #   in Loop: Header=BB4_4 Depth=1
	jmp	.LBB4_13
.LBB4_13:                               # %for.inc.38
                                        #   in Loop: Header=BB4_4 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB4_4
.LBB4_14:                               # %for.end.40
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movl	-72(%rbp), %eax
	imull	-68(%rbp), %eax
	movl	%eax, %edx
	callq	gimp_preview_draw_buffer
	movq	-56(%rbp), %rdi
	callq	g_free
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.42
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_rgn_iterator_new
	leaq	-40(%rbp), %rdi
	movabsq	$ripple_horizontal, %rcx
	movabsq	$ripple_vertical, %rdx
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	cmpl	$1, rvals+8
	cmoveq	%rdx, %rcx
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	-160(%rbp), %rdx        # 8-byte Reload
	callq	gimp_rgn_iterator_dest
	movq	-104(%rbp), %rdi
	callq	gimp_rgn_iterator_free
.LBB4_16:                               # %if.end.46
	movl	-44(%rbp), %eax
	movl	%eax, rvals+12
	movl	-48(%rbp), %eax
	movl	%eax, rvals
	movq	-40(%rbp), %rdi
	callq	gimp_pixel_fetcher_destroy
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	ripple, .Lfunc_end4-ripple
	.cfi_endproc

	.align	16, 0x90
	.type	ripple_vertical,@function
ripple_vertical:                        # @ripple_vertical
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
	subq	$128, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -48(%rbp)
	movq	-40(%rbp), %rdx
	movl	12(%rdx), %ecx
	movl	%ecx, -52(%rbp)
	cvtsi2sdl	-8(%rbp), %xmm0
	movl	-4(%rbp), %edi
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	callq	displace_amount
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -72(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -76(%rbp)
	movl	-76(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -80(%rbp)
	cmpl	$1, rvals+12
	jne	.LBB5_6
# BB#1:                                 # %if.then
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-52(%rbp), %xmm1
	callq	fmod
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -72(%rbp)
	ucomisd	-72(%rbp), %xmm1
	jbe	.LBB5_3
# BB#2:                                 # %if.then.11
	cvtsi2sdl	-52(%rbp), %xmm0
	addsd	-72(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
.LBB5_3:                                # %if.end
	movl	-76(%rbp), %eax
	cltd
	idivl	-52(%rbp)
	movl	%edx, -76(%rbp)
	cmpl	$0, -76(%rbp)
	jge	.LBB5_5
# BB#4:                                 # %if.then.16
	movl	-52(%rbp), %eax
	addl	-76(%rbp), %eax
	movl	%eax, -76(%rbp)
.LBB5_5:                                # %if.end.18
	movl	-80(%rbp), %eax
	cltd
	idivl	-52(%rbp)
	movl	%edx, -80(%rbp)
	jmp	.LBB5_27
.LBB5_6:                                # %if.else
	cmpl	$0, rvals+12
	jne	.LBB5_26
# BB#7:                                 # %if.then.22
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-52(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB5_9
# BB#8:                                 # %cond.true
	movl	-52(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jmp	.LBB5_13
.LBB5_9:                                # %cond.false
	xorps	%xmm0, %xmm0
	ucomisd	-72(%rbp), %xmm0
	jbe	.LBB5_11
# BB#10:                                # %cond.true.30
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	jmp	.LBB5_12
.LBB5_11:                               # %cond.false.31
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
.LBB5_12:                               # %cond.end
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
.LBB5_13:                               # %cond.end.32
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
	movl	-76(%rbp), %eax
	movl	-52(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jle	.LBB5_15
# BB#14:                                # %cond.true.37
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB5_19
.LBB5_15:                               # %cond.false.39
	cmpl	$0, -76(%rbp)
	jge	.LBB5_17
# BB#16:                                # %cond.true.42
	xorl	%eax, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB5_18
.LBB5_17:                               # %cond.false.43
	movl	-76(%rbp), %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB5_18:                               # %cond.end.44
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB5_19:                               # %cond.end.46
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -76(%rbp)
	movl	-80(%rbp), %eax
	movl	-52(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jle	.LBB5_21
# BB#20:                                # %cond.true.51
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB5_25
.LBB5_21:                               # %cond.false.53
	cmpl	$0, -80(%rbp)
	jge	.LBB5_23
# BB#22:                                # %cond.true.56
	xorl	%eax, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB5_24
.LBB5_23:                               # %cond.false.57
	movl	-80(%rbp), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB5_24:                               # %cond.end.58
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB5_25:                               # %cond.end.60
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	%eax, -80(%rbp)
.LBB5_26:                               # %if.end.62
	jmp	.LBB5_27
.LBB5_27:                               # %if.end.63
	cmpl	$0, rvals+20
	je	.LBB5_37
# BB#28:                                # %if.then.64
	cmpl	$0, -76(%rbp)
	jl	.LBB5_31
# BB#29:                                # %land.lhs.true
	movl	-76(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB5_31
# BB#30:                                # %if.then.69
	leaq	-60(%rbp), %rcx
	movq	-48(%rbp), %rdi
	movl	-4(%rbp), %esi
	movl	-76(%rbp), %edx
	callq	gimp_pixel_fetcher_get_pixel
	jmp	.LBB5_32
.LBB5_31:                               # %if.else.70
	xorl	%esi, %esi
	movl	$4, %eax
	movl	%eax, %edx
	leaq	-60(%rbp), %rcx
	movq	%rcx, %rdi
	callq	memset
.LBB5_32:                               # %if.end.72
	cmpl	$0, -80(%rbp)
	jl	.LBB5_35
# BB#33:                                # %land.lhs.true.75
	movl	-80(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB5_35
# BB#34:                                # %if.then.78
	leaq	-60(%rbp), %rax
	movq	-48(%rbp), %rdi
	movl	-4(%rbp), %esi
	movl	-80(%rbp), %edx
	addq	$4, %rax
	movq	%rax, %rcx
	callq	gimp_pixel_fetcher_get_pixel
	jmp	.LBB5_36
.LBB5_35:                               # %if.else.81
	xorl	%esi, %esi
	movl	$4, %eax
	movl	%eax, %edx
	leaq	-60(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, %rdi
	callq	memset
.LBB5_36:                               # %if.end.83
	leaq	-60(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-76(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movl	-20(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	16(%rax), %ecx
	callq	average_two_pixels
	jmp	.LBB5_42
.LBB5_37:                               # %if.else.87
	cmpl	$0, -76(%rbp)
	jl	.LBB5_40
# BB#38:                                # %land.lhs.true.90
	movl	-76(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB5_40
# BB#39:                                # %if.then.93
	movq	-48(%rbp), %rdi
	movl	-4(%rbp), %esi
	movl	-76(%rbp), %edx
	movq	-16(%rbp), %rcx
	callq	gimp_pixel_fetcher_get_pixel
	jmp	.LBB5_41
.LBB5_40:                               # %if.else.94
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	movslq	-20(%rbp), %rdx
	callq	memset
.LBB5_41:                               # %if.end.96
	jmp	.LBB5_42
.LBB5_42:                               # %if.end.97
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	ripple_vertical, .Lfunc_end5-ripple_vertical
	.cfi_endproc

	.align	16, 0x90
	.type	ripple_horizontal,@function
ripple_horizontal:                      # @ripple_horizontal
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
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -48(%rbp)
	movq	-40(%rbp), %rdx
	movl	8(%rdx), %ecx
	movl	%ecx, -52(%rbp)
	cvtsi2sdl	-4(%rbp), %xmm0
	movl	-8(%rbp), %edi
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	callq	displace_amount
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -72(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -76(%rbp)
	movl	-76(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -80(%rbp)
	cmpl	$1, rvals+12
	jne	.LBB6_8
# BB#1:                                 # %if.then
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-52(%rbp), %xmm1
	callq	fmod
	movsd	%xmm0, -72(%rbp)
.LBB6_2:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-72(%rbp), %xmm0
	jbe	.LBB6_4
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB6_2 Depth=1
	cvtsi2sdl	-52(%rbp), %xmm0
	addsd	-72(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	jmp	.LBB6_2
.LBB6_4:                                # %while.end
	movl	-76(%rbp), %eax
	cltd
	idivl	-52(%rbp)
	movl	%edx, -76(%rbp)
.LBB6_5:                                # %while.cond.13
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -76(%rbp)
	jge	.LBB6_7
# BB#6:                                 # %while.body.16
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	-52(%rbp), %eax
	addl	-76(%rbp), %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB6_5
.LBB6_7:                                # %while.end.18
	movl	-76(%rbp), %eax
	addl	$1, %eax
	cltd
	idivl	-52(%rbp)
	movl	%edx, -80(%rbp)
	jmp	.LBB6_29
.LBB6_8:                                # %if.else
	cmpl	$0, rvals+12
	jne	.LBB6_28
# BB#9:                                 # %if.then.23
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-52(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB6_11
# BB#10:                                # %cond.true
	movl	-52(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	jmp	.LBB6_15
.LBB6_11:                               # %cond.false
	xorps	%xmm0, %xmm0
	ucomisd	-72(%rbp), %xmm0
	jbe	.LBB6_13
# BB#12:                                # %cond.true.31
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	jmp	.LBB6_14
.LBB6_13:                               # %cond.false.32
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
.LBB6_14:                               # %cond.end
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
.LBB6_15:                               # %cond.end.33
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
	movl	-76(%rbp), %eax
	movl	-52(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jle	.LBB6_17
# BB#16:                                # %cond.true.38
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB6_21
.LBB6_17:                               # %cond.false.40
	cmpl	$0, -76(%rbp)
	jge	.LBB6_19
# BB#18:                                # %cond.true.43
	xorl	%eax, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB6_20
.LBB6_19:                               # %cond.false.44
	movl	-76(%rbp), %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB6_20:                               # %cond.end.45
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB6_21:                               # %cond.end.47
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -76(%rbp)
	movl	-80(%rbp), %eax
	movl	-52(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jle	.LBB6_23
# BB#22:                                # %cond.true.52
	movl	-52(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB6_27
.LBB6_23:                               # %cond.false.54
	cmpl	$0, -80(%rbp)
	jge	.LBB6_25
# BB#24:                                # %cond.true.57
	xorl	%eax, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB6_26
.LBB6_25:                               # %cond.false.58
	movl	-80(%rbp), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB6_26:                               # %cond.end.59
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB6_27:                               # %cond.end.61
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	%eax, -80(%rbp)
.LBB6_28:                               # %if.end
	jmp	.LBB6_29
.LBB6_29:                               # %if.end.63
	cmpl	$0, rvals+20
	je	.LBB6_39
# BB#30:                                # %if.then.64
	cmpl	$0, -76(%rbp)
	jl	.LBB6_33
# BB#31:                                # %land.lhs.true
	movl	-76(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB6_33
# BB#32:                                # %if.then.69
	leaq	-60(%rbp), %rcx
	movq	-48(%rbp), %rdi
	movl	-76(%rbp), %esi
	movl	-8(%rbp), %edx
	callq	gimp_pixel_fetcher_get_pixel
	jmp	.LBB6_34
.LBB6_33:                               # %if.else.70
	xorl	%esi, %esi
	movl	$4, %eax
	movl	%eax, %edx
	leaq	-60(%rbp), %rcx
	movq	%rcx, %rdi
	callq	memset
.LBB6_34:                               # %if.end.72
	cmpl	$0, -80(%rbp)
	jl	.LBB6_37
# BB#35:                                # %land.lhs.true.75
	movl	-80(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB6_37
# BB#36:                                # %if.then.78
	leaq	-60(%rbp), %rax
	movq	-48(%rbp), %rdi
	movl	-80(%rbp), %esi
	movl	-8(%rbp), %edx
	addq	$4, %rax
	movq	%rax, %rcx
	callq	gimp_pixel_fetcher_get_pixel
	jmp	.LBB6_38
.LBB6_37:                               # %if.else.81
	xorl	%esi, %esi
	movl	$4, %eax
	movl	%eax, %edx
	leaq	-60(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, %rdi
	callq	memset
.LBB6_38:                               # %if.end.83
	leaq	-60(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-76(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movl	-20(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	16(%rax), %ecx
	callq	average_two_pixels
	jmp	.LBB6_44
.LBB6_39:                               # %if.else.87
	cmpl	$0, -76(%rbp)
	jl	.LBB6_42
# BB#40:                                # %land.lhs.true.90
	movl	-76(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB6_42
# BB#41:                                # %if.then.93
	movq	-48(%rbp), %rdi
	movl	-76(%rbp), %esi
	movl	-8(%rbp), %edx
	movq	-16(%rbp), %rcx
	callq	gimp_pixel_fetcher_get_pixel
	jmp	.LBB6_43
.LBB6_42:                               # %if.else.94
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	movslq	-20(%rbp), %rdx
	callq	memset
.LBB6_43:                               # %if.end.96
	jmp	.LBB6_44
.LBB6_44:                               # %if.end.97
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	ripple_horizontal, .Lfunc_end6-ripple_horizontal
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4645040803167600640     # double 360
.LCPI7_1:
	.quad	4607182418800017408     # double 1
.LCPI7_3:
	.quad	4611686018427387904     # double 2
.LCPI7_4:
	.quad	4616189618054758400     # double 4
.LCPI7_5:
	.quad	4618760256179416344     # double 6.2831853071795862
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI7_2:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	displace_amount,@function
displace_amount:                        # @displace_amount
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
	subq	$48, %rsp
	movl	%edi, -12(%rbp)
	cvtsi2sdl	rvals+28(%rip), %xmm0
	movsd	.LCPI7_0(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movl	rvals+16(%rip), %edi
	testl	%edi, %edi
	movl	%edi, -36(%rbp)         # 4-byte Spill
	je	.LBB7_2
	jmp	.LBB7_7
.LBB7_7:                                # %entry
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jne	.LBB7_5
	jmp	.LBB7_1
.LBB7_1:                                # %sw.bb
	movsd	.LCPI7_5, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	rvals+4, %xmm1
	cvtsi2sdl	-12(%rbp), %xmm2
	cvtsi2sdl	rvals, %xmm3
	divsd	%xmm3, %xmm2
	subsd	-24(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	movsd	%xmm1, -48(%rbp)        # 8-byte Spill
	callq	sin
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -8(%rbp)
	jmp	.LBB7_6
.LBB7_2:                                # %sw.bb.6
	xorps	%xmm0, %xmm0
	movl	-12(%rbp), %eax
	cltd
	idivl	rvals
	cvtsi2sdl	%edx, %xmm1
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	cvtsi2sdl	rvals, %xmm3
	mulsd	%xmm3, %xmm2
	subsd	%xmm2, %xmm1
	movsd	%xmm1, -32(%rbp)
	ucomisd	-32(%rbp), %xmm0
	jbe	.LBB7_4
# BB#3:                                 # %if.then
	cvtsi2sdl	rvals, %xmm0
	addsd	-32(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
.LBB7_4:                                # %if.end
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI7_3, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI7_4, %xmm2         # xmm2 = mem[0],zero
	cvtsi2sdl	rvals+4, %xmm3
	movsd	-32(%rbp), %xmm4        # xmm4 = mem[0],zero
	cvtsi2sdl	rvals, %xmm5
	divsd	%xmm5, %xmm4
	mulsd	%xmm2, %xmm4
	subsd	%xmm1, %xmm4
	movapd	.LCPI7_2(%rip), %xmm1   # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm4
	subsd	%xmm0, %xmm4
	mulsd	%xmm4, %xmm3
	movsd	%xmm3, -8(%rbp)
	jmp	.LBB7_6
.LBB7_5:                                # %sw.epilog
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
.LBB7_6:                                # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	displace_amount, .Lfunc_end7-displace_amount
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	average_two_pixels,@function
average_two_pixels:                     # @average_two_pixels
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB8_8
# BB#1:                                 # %if.then
	xorps	%xmm0, %xmm0
	movsd	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm2
	subsd	-24(%rbp), %xmm1
	mulsd	%xmm1, %xmm2
	movsd	%xmm2, -48(%rbp)
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movzbl	4(%rdx,%rcx), %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	-24(%rbp), %xmm1
	movsd	%xmm1, -56(%rbp)
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-56(%rbp), %xmm1
	movsd	%xmm1, -64(%rbp)
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB8_2
	jp	.LBB8_2
	jmp	.LBB8_7
.LBB8_2:                                # %if.then.12
	movl	$0, -36(%rbp)
.LBB8_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movl	-28(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB8_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB8_3 Depth=1
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movzbl	4(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %edx
	movb	%dl, %sil
	movslq	-36(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	%sil, (%rcx,%rax)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB8_3 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB8_3
.LBB8_6:                                # %for.end
	jmp	.LBB8_7
.LBB8_7:                                # %if.end
	cvttsd2si	-64(%rbp), %eax
	movb	%al, %cl
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
	jmp	.LBB8_13
.LBB8_8:                                # %if.else
	movl	$0, -36(%rbp)
.LBB8_9:                                # %for.cond.35
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB8_12
# BB#10:                                # %for.body.38
                                        #   in Loop: Header=BB8_9 Depth=1
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI8_0(%rip), %xmm1   # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm2
	mulsd	%xmm2, %xmm1
	movzbl	4(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm2
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	movb	%dl, %sil
	movslq	-36(%rbp), %rax
	movq	-8(%rbp), %rcx
	movb	%sil, (%rcx,%rax)
# BB#11:                                # %for.inc.56
                                        #   in Loop: Header=BB8_9 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB8_9
.LBB8_12:                               # %for.end.58
	jmp	.LBB8_13
.LBB8_13:                               # %if.end.59
	popq	%rbp
	retq
.Lfunc_end8:
	.size	average_two_pixels, .Lfunc_end8-average_two_pixels
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
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.14
	.quad	.L.str.15
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.16
	.quad	.L.str.17
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.18
	.quad	.L.str.19
	.size	query.args, 240

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
	.asciz	"period"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Period: number of pixels for one wave to complete"
	.size	.L.str.7, 50

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"amplitude"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Amplitude: maximum displacement of wave"
	.size	.L.str.9, 40

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"orientation"
	.size	.L.str.10, 12

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Orientation { ORIENTATION-HORIZONTAL (0), ORIENTATION-VERTICAL (1) }"
	.size	.L.str.11, 69

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"edges"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Edges { SMEAR (0), WRAP (1), BLANK (2) }"
	.size	.L.str.13, 41

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"waveform"
	.size	.L.str.14, 9

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Waveform { SAWTOOTH (0), SINE (1) }"
	.size	.L.str.15, 36

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"antialias"
	.size	.L.str.16, 10

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Antialias { TRUE, FALSE }"
	.size	.L.str.17, 26

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"tile"
	.size	.L.str.18, 5

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Tileable { TRUE, FALSE }"
	.size	.L.str.19, 25

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"plug-in-ripple"
	.size	.L.str.20, 15

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Displace pixels in a ripple pattern"
	.size	.L.str.21, 36

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Ripples the pixels of the specified drawable. Each row or column will be displaced a certain number of pixels coinciding with the given wave form"
	.size	.L.str.22, 146

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Brian Degenhardt <bdegenha@ucsd.edu>"
	.size	.L.str.23, 37

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Brian Degenhardt"
	.size	.L.str.24, 17

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"1997"
	.size	.L.str.25, 5

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"_Ripple..."
	.size	.L.str.26, 11

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.27, 12

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"<Image>/Filters/Distorts"
	.size	.L.str.28, 25

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.29, 20

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"UTF-8"
	.size	.L.str.30, 6

	.type	rvals,@object           # @rvals
	.data
	.align	4
rvals:
	.long	20                      # 0x14
	.long	5                       # 0x5
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.size	rvals, 32

	.type	.L.str.31,@object       # @.str.31
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.31:
	.asciz	"Ripple: period must be at least 1.\n"
	.size	.L.str.31, 36

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Rippling"
	.size	.L.str.32, 9

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"ripple"
	.size	.L.str.33, 7

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Ripple"
	.size	.L.str.34, 7

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"gimp-ripple"
	.size	.L.str.35, 12

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"gtk-cancel"
	.size	.L.str.36, 11

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"gtk-ok"
	.size	.L.str.37, 7

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"invalidated"
	.size	.L.str.38, 12

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Options"
	.size	.L.str.39, 8

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"_Antialiasing"
	.size	.L.str.40, 14

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"toggled"
	.size	.L.str.41, 8

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"_Retain tilability"
	.size	.L.str.42, 19

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Orientation"
	.size	.L.str.43, 12

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"_Horizontal"
	.size	.L.str.44, 12

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"_Vertical"
	.size	.L.str.45, 10

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Edges"
	.size	.L.str.46, 6

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"_Wrap"
	.size	.L.str.47, 6

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"_Smear"
	.size	.L.str.48, 7

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"_Blank"
	.size	.L.str.49, 7

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"active"
	.size	.L.str.50, 7

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"sensitive"
	.size	.L.str.51, 10

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Wave Type"
	.size	.L.str.52, 10

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Saw_tooth"
	.size	.L.str.53, 10

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"S_ine"
	.size	.L.str.54, 6

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"_Period:"
	.size	.L.str.55, 9

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"value-changed"
	.size	.L.str.56, 14

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"A_mplitude:"
	.size	.L.str.57, 12

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Phase _shift:"
	.size	.L.str.58, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
