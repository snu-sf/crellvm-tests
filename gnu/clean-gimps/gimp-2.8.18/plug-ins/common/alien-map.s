	.text
	.file	"alien-map.bc"
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
	movabsq	$.L.str.26, %rdi
	movabsq	$.L.str.27, %rsi
	movabsq	$.L.str.28, %rdx
	movabsq	$.L.str.29, %rcx
	movabsq	$.L.str.30, %r8
	movabsq	$.L.str.31, %r9
	movabsq	$.L.str.32, %rax
	movabsq	$.L.str.33, %r10
	movl	$1, %r11d
	movl	$13, %ebx
	xorl	%r14d, %r14d
	movabsq	$query.args, %r15
	xorl	%r12d, %r12d
	movl	%r12d, %r13d
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$13, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r13, -48(%rbp)         # 8-byte Spill
	movl	%r11d, -52(%rbp)        # 4-byte Spill
	movl	%r14d, -56(%rbp)        # 4-byte Spill
	movl	%ebx, -60(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.26, %rdi
	movabsq	$.L.str.34, %rsi
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -44(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.35, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.35, %rdi
	movabsq	$.L.str.36, %rsi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.35, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -72(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -48(%rbp)
	movl	$21, run.values(%rip)
	movl	-44(%rbp), %ecx
	movl	%ecx, run.values+8(%rip)
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movq	-40(%rbp), %rax
	movq	$run.values, (%rax)
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, drawable(%rip)
	movl	-48(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_24
.LBB1_24:                               # %do.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_25
.LBB1_25:                               # %do.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB1_11
	jmp	.LBB1_12
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.26, %rdi
	movabsq	$wvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -88(%rbp)         # 4-byte Spill
	callq	alienmap2_dialog
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	jmp	.LBB1_23
.LBB1_5:                                # %if.end
	jmp	.LBB1_13
.LBB1_6:                                # %sw.bb.9
	cmpl	$13, -12(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then.10
	movl	$1, -44(%rbp)
.LBB1_8:                                # %if.end.11
	cmpl	$3, -44(%rbp)
	jne	.LBB1_10
# BB#9:                                 # %if.then.13
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-24(%rbp), %rdx
	movsd	128(%rdx), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, wvals
	movq	-24(%rbp), %rdx
	movsd	168(%rdx), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, wvals+8
	movq	-24(%rbp), %rdx
	movsd	208(%rdx), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, wvals+16
	movq	-24(%rbp), %rdx
	movsd	248(%rdx), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, wvals+24
	movq	-24(%rbp), %rdx
	movsd	288(%rdx), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, wvals+32
	movq	-24(%rbp), %rdx
	movsd	328(%rdx), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, wvals+40
	movq	-24(%rbp), %rdx
	movzbl	368(%rdx), %esi
	movl	%esi, wvals+48
	movq	-24(%rbp), %rdx
	movzbl	408(%rdx), %esi
	cmpl	$0, %esi
	movl	%eax, %esi
	cmovnel	%ecx, %esi
	movl	%esi, wvals+52
	movq	-24(%rbp), %rdx
	movzbl	448(%rdx), %esi
	cmpl	$0, %esi
	movl	%eax, %esi
	cmovnel	%ecx, %esi
	movl	%esi, wvals+56
	movq	-24(%rbp), %rdx
	movzbl	488(%rdx), %esi
	cmpl	$0, %esi
	cmovnel	%ecx, %eax
	movl	%eax, wvals+60
.LBB1_10:                               # %if.end.50
	jmp	.LBB1_13
.LBB1_11:                               # %sw.bb.51
	movabsq	$.L.str.26, %rdi
	movabsq	$wvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB1_13
.LBB1_12:                               # %sw.default
	jmp	.LBB1_13
.LBB1_13:                               # %sw.epilog
	cmpl	$3, -44(%rbp)
	jne	.LBB1_22
# BB#14:                                # %if.then.55
	movq	drawable, %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	je	.LBB1_20
# BB#15:                                # %if.then.58
	movabsq	$.L.str.37, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movq	drawable, %rdi
	movl	4(%rdi), %ecx
	movl	%eax, -96(%rbp)         # 4-byte Spill
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	movl	-100(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -104(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-104(%rbp), %esi        # 4-byte Reload
	divl	%esi
	addl	$1, %eax
	shll	$1, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	movq	drawable, %rdi
	callq	alienmap2
	cmpl	$1, -48(%rbp)
	je	.LBB1_17
# BB#16:                                # %if.then.65
	callq	gimp_displays_flush
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB1_17:                               # %if.end.67
	cmpl	$0, -48(%rbp)
	jne	.LBB1_19
# BB#18:                                # %if.then.70
	movabsq	$.L.str.26, %rdi
	movabsq	$wvals, %rax
	movl	$64, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB1_19:                               # %if.end.72
	jmp	.LBB1_21
.LBB1_20:                               # %if.else
	movl	$0, -44(%rbp)
.LBB1_21:                               # %if.end.73
	jmp	.LBB1_22
.LBB1_22:                               # %if.end.74
	movl	-44(%rbp), %eax
	movl	%eax, run.values+8
	movq	drawable, %rdi
	callq	gimp_drawable_detach
.LBB1_23:                               # %return
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
	.quad	4645040803167600640     # double 360
.LCPI3_1:
	.quad	4607182418800017408     # double 1
.LCPI3_2:
	.quad	4624633867356078080     # double 15
.LCPI3_3:
	.quad	4626322717216342016     # double 20
.LCPI3_4:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.align	16, 0x90
	.type	alienmap2_dialog,@function
alienmap2_dialog:                       # @alienmap2_dialog
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
	subq	$816, %rsp              # imm = 0x330
.Ltmp17:
	.cfi_offset %rbx, -48
.Ltmp18:
	.cfi_offset %r12, -40
.Ltmp19:
	.cfi_offset %r14, -32
.Ltmp20:
	.cfi_offset %r15, -24
	movabsq	$.L.str.38, %rdi
	movl	$1, %esi
	callq	gimp_ui_init
	movabsq	$.L.str.39, %rdi
	callq	gettext
	movabsq	$.L.str.40, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.26, %r9
	movabsq	$.L.str.41, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.42, %r11
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -124(%rbp)        # 4-byte Spill
	movl	%r10d, -128(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-40(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-40(%rbp), %rax
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
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movq	drawable, %rdi
	callq	gimp_zoom_preview_new
	movq	%rax, preview
	movq	-48(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.43, %rsi
	movabsq	$dialog_update_preview, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	preview, %rdi
	movq	drawable, %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movl	$2, %r9d
	xorl	%edx, %edx
	movl	%r9d, %edi
	movl	%r9d, %esi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_table_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-56(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-48(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -212(%rbp)        # 4-byte Spill
	movl	-212(%rbp), %ecx        # 4-byte Reload
	movl	-212(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movl	$6, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-96(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-56(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$2, %ecx
	movl	$1, %r8d
	movl	$5, %r9d
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, -244(%rbp)        # 4-byte Spill
	movl	-244(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -248(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$5, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movq	-96(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.44, %rdi
	movsd	wvals, %xmm0            # xmm0 = mem[0],zero
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %esi
	movl	$200, %r8d
	movl	$6, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_3, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_4, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_1, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %edx
	movl	$1, %r10d
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -280(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -284(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	-280(%rbp), %rcx        # 8-byte Reload
	movsd	-264(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-296(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-296(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-296(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -300(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -104(%rbp)
	movq	%rax, entry_freq_rh
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.45, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movabsq	$.L.str.46, %rsi
	movabsq	$dialog_scale_update, %rcx
	movabsq	$wvals, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, label_freq_rh
	movq	-104(%rbp), %rax
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-312(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-96(%rbp), %rcx
	movq	%rax, -320(%rbp)        # 8-byte Spill
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.47, %rdi
	movsd	wvals+8, %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -336(%rbp)       # 8-byte Spill
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movl	$200, %r8d
	movl	$6, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_2, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %r10d
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movsd	-336(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -352(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-352(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-352(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-352(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -356(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -104(%rbp)
	movq	%rax, entry_phase_rh
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.45, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movabsq	$.L.str.46, %rsi
	movabsq	$dialog_scale_update, %rcx
	movabsq	$wvals, %rdi
	addq	$8, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, label_phase_rh
	movq	-104(%rbp), %rax
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-368(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-96(%rbp), %rcx
	movq	%rax, -376(%rbp)        # 8-byte Spill
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.44, %rdi
	movsd	wvals+16, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -392(%rbp)       # 8-byte Spill
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movl	$200, %r8d
	movl	$6, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_3, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_4, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_1, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %r10d
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movsd	-392(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
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
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -412(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -104(%rbp)
	movq	%rax, entry_freq_gs
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.45, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movabsq	$.L.str.46, %rsi
	movabsq	$dialog_scale_update, %rcx
	movabsq	$wvals, %rdi
	addq	$16, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, label_freq_gs
	movq	-104(%rbp), %rax
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-424(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-96(%rbp), %rcx
	movq	%rax, -432(%rbp)        # 8-byte Spill
	movq	%rcx, -440(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.47, %rdi
	movsd	wvals+8, %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -448(%rbp)       # 8-byte Spill
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$3, %edx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movl	$200, %r8d
	movl	$6, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_2, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %r10d
	movl	$1, %ebx
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movsd	-448(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -464(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-464(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-464(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-464(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -468(%rbp)       # 4-byte Spill
	movl	%ebx, -472(%rbp)        # 4-byte Spill
	callq	gimp_scale_entry_new
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -104(%rbp)
	movq	%rax, entry_phase_gs
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.45, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movabsq	$.L.str.46, %rsi
	movabsq	$dialog_scale_update, %rcx
	movabsq	$wvals, %rdi
	addq	$24, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, label_phase_gs
	movq	-104(%rbp), %rax
	movq	%rdi, -480(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-480(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-96(%rbp), %rcx
	movq	%rax, -488(%rbp)        # 8-byte Spill
	movq	%rcx, -496(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.44, %rdi
	movsd	wvals+32, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -504(%rbp)       # 8-byte Spill
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$4, %edx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movl	$200, %r8d
	movl	$6, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_3, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_4, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_1, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %r10d
	movl	$1, %ebx
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movsd	-504(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -520(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-520(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-520(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-520(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -524(%rbp)       # 4-byte Spill
	movl	%ebx, -528(%rbp)        # 4-byte Spill
	callq	gimp_scale_entry_new
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -104(%rbp)
	movq	%rax, entry_freq_bl
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.45, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movabsq	$.L.str.46, %rsi
	movabsq	$dialog_scale_update, %rcx
	movabsq	$wvals, %rdi
	addq	$32, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, label_freq_bl
	movq	-104(%rbp), %rax
	movq	%rdi, -536(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-536(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-96(%rbp), %rcx
	movq	%rax, -544(%rbp)        # 8-byte Spill
	movq	%rcx, -552(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.47, %rdi
	movsd	wvals+40, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -560(%rbp)       # 8-byte Spill
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$5, %edx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movl	$200, %r8d
	movl	$6, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_2, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %r10d
	movl	$1, %ebx
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movsd	-560(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -576(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-576(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-576(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-576(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -580(%rbp)       # 4-byte Spill
	movl	%ebx, -584(%rbp)        # 4-byte Spill
	callq	gimp_scale_entry_new
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -104(%rbp)
	movq	%rax, entry_phase_bl
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.45, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movabsq	$.L.str.46, %rsi
	movabsq	$dialog_scale_update, %rcx
	movabsq	$wvals, %rdi
	addq	$40, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, label_phase_bl
	movq	-104(%rbp), %rax
	movq	%rdi, -592(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-592(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	xorl	%edi, %edi
	movl	$6, %esi
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	movl	$2, %ecx
	xorl	%r8d, %r8d
	movl	$5, %r10d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	$5, (%rsp)
	movl	$5, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -612(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.48, %rdi
	callq	gettext
	movabsq	$.L.str.49, %rdi
	movl	wvals+48, %r8d
	movq	%rax, -624(%rbp)        # 8-byte Spill
	movl	%r8d, -628(%rbp)        # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.50, %rdi
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	movabsq	$alienmap2_radio_update, %rsi
	movabsq	$wvals, %r11
	addq	$48, %r11
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r14d
	movq	-624(%rbp), %r15        # 8-byte Reload
	movq	%rsi, -648(%rbp)        # 8-byte Spill
	movq	%r15, %rsi
	movq	-648(%rbp), %rdx        # 8-byte Reload
	movl	%ecx, -652(%rbp)        # 4-byte Spill
	movq	%r11, %rcx
	movl	-628(%rbp), %r8d        # 4-byte Reload
	movq	-640(%rbp), %r9         # 8-byte Reload
	movl	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	%rax, 16(%rsp)
	movl	$1, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	movq	%r14, -664(%rbp)        # 8-byte Spill
	callq	gimp_int_radio_group_new
	movq	%rax, -64(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -684(%rbp)        # 4-byte Spill
	movl	-684(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -72(%rbp)
	movq	%rax, toggle_modify_rh
	movq	-88(%rbp), %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-696(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -700(%rbp)        # 4-byte Spill
	movl	-700(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-712(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	wvals+52, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.51, %rsi
	movabsq	$alienmap2_toggle_update, %rax
	movabsq	$wvals, %rdi
	addq	$52, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-72(%rbp), %r11
	movq	%rdi, -720(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-720(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movq	%rax, -728(%rbp)        # 8-byte Spill
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -72(%rbp)
	movq	%rax, toggle_modify_gs
	movq	-88(%rbp), %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-736(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rax
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-744(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	wvals+56, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.51, %rsi
	movabsq	$alienmap2_toggle_update, %rax
	movabsq	$wvals, %rdi
	addq	$56, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-72(%rbp), %r11
	movq	%rdi, -752(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-752(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -72(%rbp)
	movq	%rax, toggle_modify_bl
	movq	-88(%rbp), %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-768(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-776(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	wvals+60, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.51, %rsi
	movabsq	$alienmap2_toggle_update, %rax
	movabsq	$wvals, %rdi
	addq	$60, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-72(%rbp), %r11
	movq	%rdi, -784(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-784(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-64(%rbp), %rdi
	movq	%rax, -792(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	callq	alienmap2_get_label_size
	callq	alienmap2_set_labels
	callq	alienmap2_set_sensitive
	movq	-40(%rbp), %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-800(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r12b
	andb	$1, %r12b
	movzbl	%r12b, %eax
	movl	%eax, -108(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-108(%rbp), %eax
	addq	$816, %rsp              # imm = 0x330
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	alienmap2_dialog, .Lfunc_end3-alienmap2_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	alienmap2,@function
alienmap2:                              # @alienmap2
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
	subq	$16, %rsp
	xorl	%esi, %esi
	movabsq	$alienmap2_func, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_rgn_iterate2
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	alienmap2, .Lfunc_end4-alienmap2
	.cfi_endproc

	.align	16, 0x90
	.type	dialog_update_preview,@function
dialog_update_preview:                  # @dialog_update_preview
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_zoom_preview_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-36(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	leaq	-44(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_zoom_preview_get_source
	movl	$1, %r8d
	movl	%r8d, %esi
	movq	%rax, -32(%rbp)
	movl	-36(%rbp), %r8d
	imull	-40(%rbp), %r8d
	imull	-44(%rbp), %r8d
	movslq	%r8d, %rdi
	callq	g_malloc_n
	movq	%rax, -24(%rbp)
	movl	$0, -48(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	movl	-36(%rbp), %ecx
	imull	-40(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB5_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdx
	movl	-48(%rbp), %eax
	imull	-44(%rbp), %eax
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	-24(%rbp), %rsi
	movl	-48(%rbp), %eax
	imull	-44(%rbp), %eax
	movslq	%eax, %rdi
	addq	%rdi, %rsi
	movl	-44(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	callq	alienmap2_func
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB5_1
.LBB5_4:                                # %for.end
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-36(%rbp), %eax
	imull	-44(%rbp), %eax
	movl	%eax, %edx
	callq	gimp_preview_draw_buffer
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_free
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	dialog_update_preview, .Lfunc_end5-dialog_update_preview
	.cfi_endproc

	.align	16, 0x90
	.type	dialog_scale_update,@function
dialog_scale_update:                    # @dialog_scale_update
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_double_adjustment_update
	movq	preview, %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_preview_invalidate
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	dialog_scale_update, .Lfunc_end6-dialog_scale_update
	.cfi_endproc

	.align	16, 0x90
	.type	alienmap2_radio_update,@function
alienmap2_radio_update:                 # @alienmap2_radio_update
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_radio_button_update
	callq	alienmap2_set_labels
	movq	preview, %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_preview_invalidate
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	alienmap2_radio_update, .Lfunc_end7-alienmap2_radio_update
	.cfi_endproc

	.align	16, 0x90
	.type	alienmap2_toggle_update,@function
alienmap2_toggle_update:                # @alienmap2_toggle_update
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_toggle_button_update
	callq	alienmap2_set_sensitive
	movq	preview, %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_preview_invalidate
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	alienmap2_toggle_update, .Lfunc_end8-alienmap2_toggle_update
	.cfi_endproc

	.align	16, 0x90
	.type	alienmap2_get_label_size,@function
alienmap2_get_label_size:               # @alienmap2_get_label_size
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
	subq	$48, %rsp
	movl	$0, elabel_maxwidth
	movl	$0, -16(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_3 Depth 2
	cmpl	$6, -16(%rbp)
	jge	.LBB9_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$0, -20(%rbp)
.LBB9_3:                                # %for.cond.1
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$2, -20(%rbp)
	jge	.LBB9_8
# BB#4:                                 # %for.body.3
                                        #   in Loop: Header=BB9_3 Depth=2
	movq	label_freq_rh, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$etext, %rsi
	movslq	-20(%rbp), %rdi
	movslq	-16(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rsi
	movq	(%rsi,%rdi,8), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_label_set_text_with_mnemonic
	movq	label_freq_rh, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_label_get_layout
	leaq	-12(%rbp), %rsi
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	pango_layout_get_pixel_size
	movl	-12(%rbp), %r8d
	cmpl	elabel_maxwidth, %r8d
	jle	.LBB9_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB9_3 Depth=2
	movl	-12(%rbp), %eax
	movl	%eax, elabel_maxwidth
.LBB9_6:                                # %if.end
                                        #   in Loop: Header=BB9_3 Depth=2
	jmp	.LBB9_7
.LBB9_7:                                # %for.inc
                                        #   in Loop: Header=BB9_3 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB9_3
.LBB9_8:                                # %for.end
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_9
.LBB9_9:                                # %for.inc.12
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB9_1
.LBB9_10:                               # %for.end.14
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	alienmap2_get_label_size, .Lfunc_end9-alienmap2_get_label_size
	.cfi_endproc

	.align	16, 0x90
	.type	alienmap2_set_labels,@function
alienmap2_set_labels:                   # @alienmap2_set_labels
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
	subq	$144, %rsp
	movq	toggle_modify_rh, %rax
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	gtk_button_get_type
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	wvals+48, %ecx
	movl	%ecx, %esi
	movq	ctext(,%rsi,8), %rdi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_button_set_label
	movq	toggle_modify_gs, %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_button_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	wvals+48, %ecx
	movl	%ecx, %esi
	movq	ctext+16(,%rsi,8), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_button_set_label
	movq	toggle_modify_bl, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_button_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	wvals+48, %ecx
	movl	%ecx, %esi
	movq	ctext+32(,%rsi,8), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_button_set_label
	movq	label_freq_rh, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	wvals+48, %ecx
	movl	%ecx, %esi
	movq	etext(,%rsi,8), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_label_set_text_with_mnemonic
	movq	label_freq_gs, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	wvals+48, %ecx
	movl	%ecx, %esi
	movq	etext+16(,%rsi,8), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_label_set_text_with_mnemonic
	movq	label_freq_bl, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	wvals+48, %ecx
	movl	%ecx, %esi
	movq	etext+32(,%rsi,8), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_label_set_text_with_mnemonic
	movq	label_phase_rh, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	wvals+48, %ecx
	movl	%ecx, %esi
	movq	etext+48(,%rsi,8), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_label_set_text_with_mnemonic
	movq	label_phase_gs, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	wvals+48, %ecx
	movl	%ecx, %esi
	movq	etext+64(,%rsi,8), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_label_set_text_with_mnemonic
	movq	label_phase_bl, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	wvals+48, %ecx
	movl	%ecx, %esi
	movq	etext+80(,%rsi,8), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_label_set_text_with_mnemonic
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	label_freq_rh, %rdi
	movl	elabel_maxwidth, %esi
	callq	gtk_widget_set_size_request
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	alienmap2_set_labels, .Lfunc_end10-alienmap2_set_labels
	.cfi_endproc

	.align	16, 0x90
	.type	alienmap2_set_sensitive,@function
alienmap2_set_sensitive:                # @alienmap2_set_sensitive
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
	movq	entry_freq_rh, %rdi
	movl	wvals+52, %esi
	callq	gimp_scale_entry_set_sensitive
	movq	entry_phase_rh, %rdi
	movl	wvals+52, %esi
	callq	gimp_scale_entry_set_sensitive
	movq	entry_freq_gs, %rdi
	movl	wvals+56, %esi
	callq	gimp_scale_entry_set_sensitive
	movq	entry_phase_gs, %rdi
	movl	wvals+56, %esi
	callq	gimp_scale_entry_set_sensitive
	movq	entry_freq_bl, %rdi
	movl	wvals+60, %esi
	callq	gimp_scale_entry_set_sensitive
	movq	entry_phase_bl, %rdi
	movl	wvals+60, %esi
	callq	gimp_scale_entry_set_sensitive
	popq	%rbp
	retq
.Lfunc_end11:
	.size	alienmap2_set_sensitive, .Lfunc_end11-alienmap2_set_sensitive
	.cfi_endproc

	.align	16, 0x90
	.type	alienmap2_func,@function
alienmap2_func:                         # @alienmap2_func
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
	leaq	-33(%rbp), %rax
	leaq	-34(%rbp), %r8
	leaq	-35(%rbp), %r9
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movb	(%rcx), %r10b
	movb	%r10b, -33(%rbp)
	movq	-8(%rbp), %rcx
	movb	1(%rcx), %r10b
	movb	%r10b, -34(%rbp)
	movq	-8(%rbp), %rcx
	movb	2(%rcx), %r10b
	movb	%r10b, -35(%rbp)
	movq	%rax, %rdi
	movq	%r8, %rsi
	movq	%r9, %rdx
	callq	transform
	movb	-33(%rbp), %r10b
	movq	-16(%rbp), %rax
	movb	%r10b, (%rax)
	movb	-34(%rbp), %r10b
	movq	-16(%rbp), %rax
	movb	%r10b, 1(%rax)
	movb	-35(%rbp), %r10b
	movq	-16(%rbp), %rax
	movb	%r10b, 2(%rax)
	cmpl	$4, -20(%rbp)
	jne	.LBB12_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movb	3(%rax), %cl
	movq	-16(%rbp), %rax
	movb	%cl, 3(%rax)
.LBB12_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	alienmap2_func, .Lfunc_end12-alienmap2_func
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4602678819172646912     # double 0.5
.LCPI13_1:
	.quad	4638672431819522048     # double 127.5
.LCPI13_2:
	.quad	4607182418800017408     # double 1
.LCPI13_3:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI13_4:
	.quad	4640537203540230144     # double 180
.LCPI13_5:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	transform,@function
transform:                              # @transform
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
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	wvals+48(%rip), %eax
	testl	%eax, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB13_8
	jmp	.LBB13_16
.LBB13_16:                              # %entry
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jne	.LBB13_15
	jmp	.LBB13_1
.LBB13_1:                               # %sw.bb
	leaq	-88(%rbp), %rdi
	movq	-8(%rbp), %rax
	movb	(%rax), %cl
	movq	-16(%rbp), %rax
	movb	(%rax), %dl
	movq	-24(%rbp), %rax
	movzbl	%cl, %esi
	movzbl	%dl, %edx
	movzbl	(%rax), %ecx
	callq	gimp_rgb_set_uchar
	leaq	-88(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	callq	gimp_rgb_to_hsl
	cmpl	$0, wvals+52
	je	.LBB13_3
# BB#2:                                 # %if.then
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI13_2, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI13_3, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI13_4, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI13_5, %xmm4        # xmm4 = mem[0],zero
	mulsd	-56(%rbp), %xmm4
	subsd	%xmm1, %xmm4
	mulsd	wvals, %xmm4
	movsd	wvals+8, %xmm5          # xmm5 = mem[0],zero
	divsd	%xmm3, %xmm5
	addsd	%xmm5, %xmm4
	mulsd	%xmm2, %xmm4
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm0
	movsd	%xmm1, -112(%rbp)       # 8-byte Spill
	callq	sin
	movsd	-112(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
.LBB13_3:                               # %if.end
	cmpl	$0, wvals+56
	je	.LBB13_5
# BB#4:                                 # %if.then.7
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI13_2, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI13_3, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI13_4, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI13_5, %xmm4        # xmm4 = mem[0],zero
	mulsd	-48(%rbp), %xmm4
	subsd	%xmm1, %xmm4
	mulsd	wvals+16, %xmm4
	movsd	wvals+24, %xmm5         # xmm5 = mem[0],zero
	divsd	%xmm3, %xmm5
	addsd	%xmm5, %xmm4
	mulsd	%xmm2, %xmm4
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm0
	movsd	%xmm1, -128(%rbp)       # 8-byte Spill
	callq	sin
	movsd	-128(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
.LBB13_5:                               # %if.end.18
	cmpl	$0, wvals+60
	je	.LBB13_7
# BB#6:                                 # %if.then.20
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI13_2, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI13_3, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI13_4, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI13_5, %xmm4        # xmm4 = mem[0],zero
	mulsd	-40(%rbp), %xmm4
	subsd	%xmm1, %xmm4
	mulsd	wvals+32, %xmm4
	movsd	wvals+40, %xmm5         # xmm5 = mem[0],zero
	divsd	%xmm3, %xmm5
	addsd	%xmm5, %xmm4
	mulsd	%xmm2, %xmm4
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm0
	movsd	%xmm1, -144(%rbp)       # 8-byte Spill
	callq	sin
	movsd	-144(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
.LBB13_7:                               # %if.end.31
	leaq	-56(%rbp), %rdi
	leaq	-88(%rbp), %rsi
	callq	gimp_hsl_to_rgb
	leaq	-88(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	callq	gimp_rgb_get_uchar
	jmp	.LBB13_15
.LBB13_8:                               # %sw.bb.32
	cmpl	$0, wvals+52
	je	.LBB13_10
# BB#9:                                 # %if.then.34
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI13_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI13_2, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI13_3, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI13_4, %xmm4        # xmm4 = mem[0],zero
	movq	-8(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm5
	divsd	%xmm1, %xmm5
	subsd	%xmm2, %xmm5
	mulsd	wvals, %xmm5
	movsd	wvals+8, %xmm6          # xmm6 = mem[0],zero
	divsd	%xmm4, %xmm6
	addsd	%xmm6, %xmm5
	mulsd	%xmm3, %xmm5
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movsd	%xmm2, -160(%rbp)       # 8-byte Spill
	movsd	%xmm1, -168(%rbp)       # 8-byte Spill
	callq	sin
	movsd	-160(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	-168(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	-152(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %dl
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
.LBB13_10:                              # %if.end.48
	cmpl	$0, wvals+56
	je	.LBB13_12
# BB#11:                                # %if.then.50
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI13_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI13_2, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI13_3, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI13_4, %xmm4        # xmm4 = mem[0],zero
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm5
	divsd	%xmm1, %xmm5
	subsd	%xmm2, %xmm5
	mulsd	wvals+16, %xmm5
	movsd	wvals+24, %xmm6         # xmm6 = mem[0],zero
	divsd	%xmm4, %xmm6
	addsd	%xmm6, %xmm5
	mulsd	%xmm3, %xmm5
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movsd	%xmm2, -184(%rbp)       # 8-byte Spill
	movsd	%xmm1, -192(%rbp)       # 8-byte Spill
	callq	sin
	movsd	-184(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	-192(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	-176(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %dl
	movq	-16(%rbp), %rax
	movb	%dl, (%rax)
.LBB13_12:                              # %if.end.65
	cmpl	$0, wvals+60
	je	.LBB13_14
# BB#13:                                # %if.then.67
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI13_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI13_2, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI13_3, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI13_4, %xmm4        # xmm4 = mem[0],zero
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm5
	divsd	%xmm1, %xmm5
	subsd	%xmm2, %xmm5
	mulsd	wvals+32, %xmm5
	movsd	wvals+40, %xmm6         # xmm6 = mem[0],zero
	divsd	%xmm4, %xmm6
	addsd	%xmm6, %xmm5
	mulsd	%xmm3, %xmm5
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movsd	%xmm2, -208(%rbp)       # 8-byte Spill
	movsd	%xmm1, -216(%rbp)       # 8-byte Spill
	callq	sin
	movsd	-208(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	-216(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	-200(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %dl
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
.LBB13_14:                              # %if.end.82
	jmp	.LBB13_15
.LBB13_15:                              # %sw.epilog
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	transform, .Lfunc_end13-transform
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
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.12
	.quad	.L.str.13
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.14
	.quad	.L.str.15
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.16
	.quad	.L.str.17
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.18
	.quad	.L.str.19
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.20
	.quad	.L.str.21
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.22
	.quad	.L.str.23
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.24
	.quad	.L.str.25
	.size	query.args, 312

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
	.asciz	"redfrequency"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Red/hue component frequency factor"
	.size	.L.str.7, 35

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"redangle"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Red/hue component angle factor (0-360)"
	.size	.L.str.9, 39

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"greenfrequency"
	.size	.L.str.10, 15

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Green/saturation component frequency factor"
	.size	.L.str.11, 44

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"greenangle"
	.size	.L.str.12, 11

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Green/saturation component angle factor (0-360)"
	.size	.L.str.13, 48

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"bluefrequency"
	.size	.L.str.14, 14

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Blue/luminance component frequency factor"
	.size	.L.str.15, 42

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"blueangle"
	.size	.L.str.16, 10

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Blue/luminance component angle factor (0-360)"
	.size	.L.str.17, 46

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"colormodel"
	.size	.L.str.18, 11

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Color model { RGB-MODEL (0), HSL-MODEL (1) }"
	.size	.L.str.19, 45

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"redmode"
	.size	.L.str.20, 8

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Red/hue application mode { TRUE, FALSE }"
	.size	.L.str.21, 41

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"greenmode"
	.size	.L.str.22, 10

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Green/saturation application mode { TRUE, FALSE }"
	.size	.L.str.23, 50

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"bluemode"
	.size	.L.str.24, 9

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Blue/luminance application mode { TRUE, FALSE }"
	.size	.L.str.25, 48

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"plug-in-alienmap2"
	.size	.L.str.26, 18

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Alter colors in various psychedelic ways"
	.size	.L.str.27, 41

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"No help yet. Just try it and you'll see!"
	.size	.L.str.28, 41

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Martin Weber (martweb@gmx.net)"
	.size	.L.str.29, 31

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Martin Weber (martweb@gmx.net"
	.size	.L.str.30, 30

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"24th April 1998"
	.size	.L.str.31, 16

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"_Alien Map..."
	.size	.L.str.32, 14

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"RGB*"
	.size	.L.str.33, 5

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"<Image>/Colors/Map"
	.size	.L.str.34, 19

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.35, 20

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"UTF-8"
	.size	.L.str.36, 6

	.type	drawable,@object        # @drawable
	.local	drawable
	.comm	drawable,8,8
	.type	wvals,@object           # @wvals
	.data
	.align	8
wvals:
	.quad	4607182418800017408     # double 1
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.quad	0                       # double 0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.size	wvals, 64

	.type	.L.str.37,@object       # @.str.37
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.37:
	.asciz	"Alien Map: Transforming"
	.size	.L.str.37, 24

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"alien-map"
	.size	.L.str.38, 10

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Alien Map"
	.size	.L.str.39, 10

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"gimp-alien-map"
	.size	.L.str.40, 15

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"gtk-cancel"
	.size	.L.str.41, 11

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"gtk-ok"
	.size	.L.str.42, 7

	.type	preview,@object         # @preview
	.local	preview
	.comm	preview,8,8
	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"invalidated"
	.size	.L.str.43, 12

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Number of cycles covering full value range"
	.size	.L.str.44, 43

	.type	entry_freq_rh,@object   # @entry_freq_rh
	.local	entry_freq_rh
	.comm	entry_freq_rh,8,8
	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"label"
	.size	.L.str.45, 6

	.type	label_freq_rh,@object   # @label_freq_rh
	.local	label_freq_rh
	.comm	label_freq_rh,8,8
	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"value-changed"
	.size	.L.str.46, 14

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Phase angle, range 0-360"
	.size	.L.str.47, 25

	.type	entry_phase_rh,@object  # @entry_phase_rh
	.local	entry_phase_rh
	.comm	entry_phase_rh,8,8
	.type	label_phase_rh,@object  # @label_phase_rh
	.local	label_phase_rh
	.comm	label_phase_rh,8,8
	.type	entry_freq_gs,@object   # @entry_freq_gs
	.local	entry_freq_gs
	.comm	entry_freq_gs,8,8
	.type	label_freq_gs,@object   # @label_freq_gs
	.local	label_freq_gs
	.comm	label_freq_gs,8,8
	.type	entry_phase_gs,@object  # @entry_phase_gs
	.local	entry_phase_gs
	.comm	entry_phase_gs,8,8
	.type	label_phase_gs,@object  # @label_phase_gs
	.local	label_phase_gs
	.comm	label_phase_gs,8,8
	.type	entry_freq_bl,@object   # @entry_freq_bl
	.local	entry_freq_bl
	.comm	entry_freq_bl,8,8
	.type	label_freq_bl,@object   # @label_freq_bl
	.local	label_freq_bl
	.comm	label_freq_bl,8,8
	.type	entry_phase_bl,@object  # @entry_phase_bl
	.local	entry_phase_bl
	.comm	entry_phase_bl,8,8
	.type	label_phase_bl,@object  # @label_phase_bl
	.local	label_phase_bl
	.comm	label_phase_bl,8,8
	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Mode"
	.size	.L.str.48, 5

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"_RGB color model"
	.size	.L.str.49, 17

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"_HSL color model"
	.size	.L.str.50, 17

	.type	toggle_modify_rh,@object # @toggle_modify_rh
	.local	toggle_modify_rh
	.comm	toggle_modify_rh,8,8
	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"toggled"
	.size	.L.str.51, 8

	.type	toggle_modify_gs,@object # @toggle_modify_gs
	.local	toggle_modify_gs
	.comm	toggle_modify_gs,8,8
	.type	toggle_modify_bl,@object # @toggle_modify_bl
	.local	toggle_modify_bl
	.comm	toggle_modify_bl,8,8
	.type	elabel_maxwidth,@object # @elabel_maxwidth
	.local	elabel_maxwidth
	.comm	elabel_maxwidth,4,4
	.type	etext,@object           # @etext
	.data
	.align	16
etext:
	.quad	.L.str.52
	.quad	.L.str.53
	.quad	.L.str.54
	.quad	.L.str.55
	.quad	.L.str.56
	.quad	.L.str.57
	.quad	.L.str.58
	.quad	.L.str.59
	.quad	.L.str.60
	.quad	.L.str.61
	.quad	.L.str.62
	.quad	.L.str.63
	.size	etext, 96

	.type	.L.str.52,@object       # @.str.52
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.52:
	.asciz	"Red _frequency:"
	.size	.L.str.52, 16

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Hue _frequency:"
	.size	.L.str.53, 16

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Green fr_equency:"
	.size	.L.str.54, 18

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Saturation fr_equency:"
	.size	.L.str.55, 23

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Blue freq_uency:"
	.size	.L.str.56, 17

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Luminosity freq_uency:"
	.size	.L.str.57, 23

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Red _phaseshift:"
	.size	.L.str.58, 17

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Hue _phaseshift:"
	.size	.L.str.59, 17

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Green ph_aseshift:"
	.size	.L.str.60, 19

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"Saturation ph_aseshift:"
	.size	.L.str.61, 24

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Blue pha_seshift:"
	.size	.L.str.62, 18

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Luminosity pha_seshift:"
	.size	.L.str.63, 24

	.type	ctext,@object           # @ctext
	.data
	.align	16
ctext:
	.quad	.L.str.64
	.quad	.L.str.65
	.quad	.L.str.66
	.quad	.L.str.67
	.quad	.L.str.68
	.quad	.L.str.69
	.size	ctext, 48

	.type	.L.str.64,@object       # @.str.64
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.64:
	.asciz	"_Modify red channel"
	.size	.L.str.64, 20

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"_Modify hue channel"
	.size	.L.str.65, 20

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"Mo_dify green channel"
	.size	.L.str.66, 22

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"Mo_dify saturation channel"
	.size	.L.str.67, 27

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"Mod_ify blue channel"
	.size	.L.str.68, 21

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"Mod_ify luminosity channel"
	.size	.L.str.69, 27


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
