	.text
	.file	"mosaic.bc"
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
	movabsq	$.L.str.30, %rdi
	movabsq	$.L.str.31, %rsi
	movabsq	$.L.str.32, %rdx
	movabsq	$.L.str.33, %rcx
	movabsq	$.L.str.34, %r8
	movabsq	$.L.str.35, %r9
	movabsq	$.L.str.36, %rax
	movabsq	$.L.str.37, %r10
	movl	$1, %r11d
	movl	$15, %ebx
	xorl	%r14d, %r14d
	movabsq	$query.args, %r15
	xorl	%r12d, %r12d
	movl	%r12d, %r13d
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$15, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r13, -48(%rbp)         # 8-byte Spill
	movl	%r11d, -52(%rbp)        # 4-byte Spill
	movl	%r14d, -56(%rbp)        # 4-byte Spill
	movl	%ebx, -60(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.30, %rdi
	movabsq	$.L.str.38, %rsi
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
	movl	$3, -48(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -44(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.39, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.39, %rdi
	movabsq	$.L.str.40, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.39, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -80(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movabsq	$run.values, %rax
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, run.values
	movl	-48(%rbp), %edx
	movl	%edx, run.values+8
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	4(%rax), %edx
	movq	-56(%rbp), %rax
	cmpl	8(%rax), %edx
	jbe	.LBB1_4
# BB#3:                                 # %cond.true
	movq	-56(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	jmp	.LBB1_5
.LBB1_4:                                # %cond.false
	movq	-56(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
.LBB1_5:                                # %cond.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	%eax, -88(%rbp)         # 4-byte Spill
	callq	gimp_tile_width
	xorl	%edx, %edx
	movl	-88(%rbp), %ecx         # 4-byte Reload
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	movl	-92(%rbp), %esi         # 4-byte Reload
	divl	%esi
	movl	%eax, %edi
	leal	2(%rdi,%rdi), %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_34
.LBB1_34:                               # %cond.end
	movl	-96(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB1_9
	jmp	.LBB1_35
.LBB1_35:                               # %cond.end
	movl	-96(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB1_19
	jmp	.LBB1_20
.LBB1_6:                                # %sw.bb
	movabsq	$.L.str.30, %rdi
	movabsq	$mvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-56(%rbp), %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	mosaic_dialog
	cmpl	$0, %eax
	jne	.LBB1_8
# BB#7:                                 # %if.then
	jmp	.LBB1_33
.LBB1_8:                                # %if.end
	jmp	.LBB1_21
.LBB1_9:                                # %sw.bb.12
	cmpl	$15, -12(%rbp)
	je	.LBB1_11
# BB#10:                                # %if.then.15
	movl	$1, -48(%rbp)
	jmp	.LBB1_21
.LBB1_11:                               # %if.end.16
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-24(%rbp), %rdx
	movsd	128(%rdx), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, mvals
	movq	-24(%rbp), %rdx
	movsd	168(%rdx), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, mvals+8
	movq	-24(%rbp), %rdx
	movsd	208(%rdx), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, mvals+16
	movq	-24(%rbp), %rdx
	movsd	248(%rdx), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, mvals+24
	movq	-24(%rbp), %rdx
	cmpl	$0, 288(%rdx)
	movl	%eax, %esi
	cmovnel	%ecx, %esi
	movl	%esi, mvals+32
	movq	-24(%rbp), %rdx
	movsd	328(%rdx), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, mvals+40
	movq	-24(%rbp), %rdx
	movsd	368(%rdx), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, mvals+48
	movq	-24(%rbp), %rdx
	cmpl	$0, 408(%rdx)
	movl	%eax, %esi
	cmovnel	%ecx, %esi
	movl	%esi, mvals+56
	movq	-24(%rbp), %rdx
	cmpl	$0, 448(%rdx)
	cmovnel	%ecx, %eax
	movl	%eax, mvals+60
	movq	-24(%rbp), %rdx
	movl	488(%rdx), %eax
	movl	%eax, mvals+64
	movq	-24(%rbp), %rdx
	movl	528(%rdx), %eax
	movl	%eax, mvals+68
	movq	-24(%rbp), %rdx
	movl	568(%rdx), %eax
	movl	%eax, mvals+72
	cmpl	$0, mvals+64
	jb	.LBB1_17
# BB#12:                                # %lor.lhs.false
	cmpl	$3, mvals+64
	ja	.LBB1_17
# BB#13:                                # %lor.lhs.false.62
	cmpl	$0, mvals+68
	jl	.LBB1_17
# BB#14:                                # %lor.lhs.false.65
	cmpl	$1, mvals+68
	jg	.LBB1_17
# BB#15:                                # %lor.lhs.false.68
	cmpl	$0, mvals+72
	jl	.LBB1_17
# BB#16:                                # %lor.lhs.false.71
	cmpl	$1, mvals+72
	jle	.LBB1_18
.LBB1_17:                               # %if.then.74
	movl	$1, -48(%rbp)
.LBB1_18:                               # %if.end.75
	jmp	.LBB1_21
.LBB1_19:                               # %sw.bb.76
	movabsq	$.L.str.30, %rdi
	movabsq	$mvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB1_21
.LBB1_20:                               # %sw.default
	jmp	.LBB1_21
.LBB1_21:                               # %sw.epilog
	cmpl	$3, -48(%rbp)
	jne	.LBB1_29
# BB#22:                                # %land.lhs.true
	movq	-56(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_24
# BB#23:                                # %lor.lhs.false.82
	movq	-56(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB1_29
.LBB1_24:                               # %if.then.86
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rdi
	callq	mosaic
	cmpl	$1, -44(%rbp)
	je	.LBB1_26
# BB#25:                                # %if.then.89
	callq	gimp_displays_flush
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB1_26:                               # %if.end.91
	cmpl	$0, -44(%rbp)
	jne	.LBB1_28
# BB#27:                                # %if.then.94
	movabsq	$.L.str.30, %rdi
	movabsq	$mvals, %rax
	movl	$80, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB1_28:                               # %if.end.96
	jmp	.LBB1_32
.LBB1_29:                               # %if.else
	cmpl	$3, -48(%rbp)
	jne	.LBB1_31
# BB#30:                                # %if.then.99
	movl	$0, -48(%rbp)
.LBB1_31:                               # %if.end.100
	jmp	.LBB1_32
.LBB1_32:                               # %if.end.101
	movl	-48(%rbp), %eax
	movl	%eax, run.values+8
	movq	-56(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB1_33:                               # %return
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
	.quad	4576918229304087675     # double 0.01
.LCPI3_2:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI3_3:
	.quad	4645040803167600640     # double 360
.LCPI3_4:
	.quad	4624633867356078080     # double 15
.LCPI3_5:
	.quad	4632233691727265792     # double 50
.LCPI3_6:
	.quad	4621819117588971520     # double 10
.LCPI3_7:
	.quad	4617315517961601024     # double 5
.LCPI3_8:
	.quad	4636737291354636288     # double 100
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI3_9:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	mosaic_dialog,@function
mosaic_dialog:                          # @mosaic_dialog
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
	subq	$1104, %rsp             # imm = 0x450
.Ltmp17:
	.cfi_offset %rbx, -48
.Ltmp18:
	.cfi_offset %r12, -40
.Ltmp19:
	.cfi_offset %r14, -32
.Ltmp20:
	.cfi_offset %r15, -24
	movabsq	$.L.str.41, %rax
	movl	$1, %esi
	movq	%rdi, -40(%rbp)
	movl	$0, -116(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	movabsq	$.L.str.42, %rdi
	callq	gettext
	movabsq	$.L.str.43, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.30, %r9
	movabsq	$.L.str.44, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.45, %r11
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
	movq	-48(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-48(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
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
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi
	callq	gimp_drawable_preview_new
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
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
	movabsq	$.L.str.46, %rsi
	movabsq	$mosaic, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-64(%rbp), %rdi
	movq	-40(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	xorl	%edi, %edi
	movl	$12, %esi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
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
	movl	$7, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -104(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-104(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-104(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.47, %rdi
	callq	gettext
	movabsq	$.L.str.48, %rdi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.49, %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.50, %rdi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %ecx
	movl	$2, %r9d
	movl	$3, %edx
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movq	-232(%rbp), %r11        # 8-byte Reload
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	-240(%rbp), %r14        # 8-byte Reload
	movl	%edx, -260(%rbp)        # 4-byte Spill
	movq	%r14, %rdx
	movq	-248(%rbp), %r8         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$3, 8(%rsp)
	movq	$0, 16(%rsp)
	movb	$0, %al
	callq	gimp_int_combo_box_new
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_int_combo_box_get_active, %rdx
	movabsq	$mvals, %rsi
	addq	$64, %rsi
	movl	mvals+64, %ecx
	movq	%rax, %rdi
	movq	%rsi, -280(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movq	-280(%rbp), %rcx        # 8-byte Reload
	callq	gimp_int_combo_box_connect
	movq	-104(%rbp), %rcx
	movq	%rax, -288(%rbp)        # 8-byte Spill
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.51, %rdi
	movl	-116(%rbp), %r9d
	movl	%r9d, %r10d
	addl	$1, %r10d
	movl	%r10d, -116(%rbp)
	movl	%r9d, -300(%rbp)        # 4-byte Spill
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	movss	.LCPI3_9, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$2, %r9d
	movq	-96(%rbp), %r8
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movl	-300(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.52, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movl	$2, %r9d
	movq	-96(%rbp), %rdi
	movq	-64(%rbp), %r11
	movq	%rcx, %rdx
	movq	%r11, %rcx
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-104(%rbp), %rcx
	movq	%rax, -328(%rbp)        # 8-byte Spill
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.53, %rdi
	movl	-116(%rbp), %r9d
	movl	%r9d, %r10d
	addl	$1, %r10d
	movl	%r10d, -116(%rbp)
	movl	%r9d, -340(%rbp)        # 4-byte Spill
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$150, %r8d
	movl	$5, %r9d
	movsd	.LCPI3_7, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI3_8, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_0, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_6, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %r10d
	xorps	%xmm0, %xmm0
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movsd	mvals, %xmm5            # xmm5 = mem[0],zero
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movl	-340(%rbp), %edx        # 4-byte Reload
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -368(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-368(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-368(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -372(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.54, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$mvals, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-384(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.54, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-112(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-392(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-104(%rbp), %rcx
	movq	%rax, -408(%rbp)        # 8-byte Spill
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.55, %rdi
	movl	-116(%rbp), %r9d
	movl	%r9d, %r10d
	addl	$1, %r10d
	movl	%r10d, -116(%rbp)
	movl	%r9d, -420(%rbp)        # 4-byte Spill
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$150, %r8d
	movl	$5, %r9d
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_5, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_6, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %r10d
	xorps	%xmm1, %xmm1
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movsd	mvals+8, %xmm3          # xmm3 = mem[0],zero
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movl	-420(%rbp), %edx        # 4-byte Reload
	movq	%rcx, -440(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -448(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-448(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -456(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-456(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-456(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -460(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.54, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$mvals, %rdi
	addq	$8, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rdi, -472(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-472(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.54, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-112(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -480(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-480(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-104(%rbp), %rcx
	movq	%rax, -496(%rbp)        # 8-byte Spill
	movq	%rcx, -504(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.56, %rdi
	movl	-116(%rbp), %r9d
	movl	%r9d, %r10d
	addl	$1, %r10d
	movl	%r10d, -116(%rbp)
	movl	%r9d, -508(%rbp)        # 4-byte Spill
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$150, %r8d
	movl	$5, %r9d
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_5, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_6, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %r10d
	xorps	%xmm1, %xmm1
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movsd	mvals+16, %xmm3         # xmm3 = mem[0],zero
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movl	-508(%rbp), %edx        # 4-byte Reload
	movq	%rcx, -528(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -536(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-536(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -544(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-544(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-544(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -548(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.54, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$mvals, %rdi
	addq	$16, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rdi, -560(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-560(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.54, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-112(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -568(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-568(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-104(%rbp), %rcx
	movq	%rax, -584(%rbp)        # 8-byte Spill
	movq	%rcx, -592(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.57, %rdi
	movl	-116(%rbp), %r9d
	movl	%r9d, %r10d
	addl	$1, %r10d
	movl	%r10d, -116(%rbp)
	movl	%r9d, -596(%rbp)        # 4-byte Spill
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$150, %r8d
	movl	$5, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm1         # xmm1 = mem[0],zero
	movl	$2, %r10d
	movl	$1, %ebx
	xorl	%r15d, %r15d
	movl	%r15d, %ecx
	movsd	mvals+24, %xmm3         # xmm3 = mem[0],zero
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movl	-596(%rbp), %edx        # 4-byte Reload
	movq	%rcx, -616(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -624(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-624(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -632(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-632(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-632(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-624(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-624(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%ebx, -636(%rbp)        # 4-byte Spill
	movl	%r10d, -640(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.54, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$mvals, %rdi
	addq	$24, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rdi, -648(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-648(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.54, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-112(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -656(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-656(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-104(%rbp), %rcx
	movq	%rax, -672(%rbp)        # 8-byte Spill
	movq	%rcx, -680(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.58, %rdi
	movl	-116(%rbp), %r9d
	movl	%r9d, %r10d
	addl	$1, %r10d
	movl	%r10d, -116(%rbp)
	movl	%r9d, -684(%rbp)        # 4-byte Spill
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$150, %r8d
	movl	$5, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_3, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_0, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_4, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %r10d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movsd	mvals+40, %xmm1         # xmm1 = mem[0],zero
	movq	-696(%rbp), %rdi        # 8-byte Reload
	movl	-684(%rbp), %edx        # 4-byte Reload
	movq	%rcx, -704(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -712(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-712(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-712(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-712(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -716(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.54, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$mvals, %rdi
	addq	$40, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rdi, -728(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-728(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.54, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-112(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -736(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-736(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-104(%rbp), %rcx
	movq	%rax, -752(%rbp)        # 8-byte Spill
	movq	%rcx, -760(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-760(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.59, %rdi
	movl	-116(%rbp), %r9d
	movl	%r9d, %r10d
	addl	$1, %r10d
	movl	%r10d, -116(%rbp)
	movl	%r9d, -764(%rbp)        # 4-byte Spill
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$150, %r8d
	movl	$5, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_2, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %r10d
	movl	$1, %ebx
	xorl	%r15d, %r15d
	movl	%r15d, %ecx
	movsd	mvals+48, %xmm1         # xmm1 = mem[0],zero
	movq	-776(%rbp), %rdi        # 8-byte Reload
	movl	-764(%rbp), %edx        # 4-byte Reload
	movq	%rcx, -784(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -792(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-792(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-792(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-792(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%ebx, -796(%rbp)        # 4-byte Spill
	movl	%r10d, -800(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.54, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$mvals, %rdi
	addq	$48, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rdi, -808(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-808(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.54, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-112(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -816(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-816(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -824(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movl	$1, %edi
	movl	$6, %esi
	movq	%rax, -832(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -840(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-840(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.60, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -848(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-848(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -852(%rbp)        # 4-byte Spill
	movl	-852(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-864(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	mvals+56, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.61, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$mvals, %rdi
	addq	$56, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-72(%rbp), %r11
	movq	%rdi, -872(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-872(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.61, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -880(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-880(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -888(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.62, %rdi
	movq	%rax, -896(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-904(%rbp), %rdi        # 8-byte Reload
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
	movq	%rax, -912(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-912(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	mvals+60, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.61, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$mvals, %rdi
	addq	$60, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-72(%rbp), %r11
	movq	%rdi, -920(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-920(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.61, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -928(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-928(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -936(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.63, %rdi
	movq	%rax, -944(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -952(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-952(%rbp), %rdi        # 8-byte Reload
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
	movq	%rax, -960(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-960(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	mvals+32, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.61, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$mvals, %rdi
	addq	$32, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-72(%rbp), %r11
	movq	%rdi, -968(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-968(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.61, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -976(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-976(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -984(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.64, %rdi
	movq	%rax, -992(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1000(%rbp), %rdi       # 8-byte Reload
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
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-1008(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$1, mvals+68
	sete	%r12b
	andb	$1, %r12b
	movzbl	%r12b, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.61, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$mvals, %rdi
	addq	$68, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-72(%rbp), %r11
	movq	%rdi, -1016(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-1016(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.61, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -1024(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-1024(%rbp), %rcx       # 8-byte Reload
	movq	%rax, -1032(%rbp)       # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.65, %rdi
	movq	%rax, -1040(%rbp)       # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -1048(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-1048(%rbp), %rdi       # 8-byte Reload
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
	movq	%rax, -1056(%rbp)       # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-1056(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$1, mvals+72
	sete	%r12b
	andb	$1, %r12b
	movzbl	%r12b, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.61, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$mvals, %rdi
	addq	$72, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-72(%rbp), %r11
	movq	%rdi, -1064(%rbp)       # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-1064(%rbp), %rcx       # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.61, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -1072(%rbp)       # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-1072(%rbp), %rcx       # 8-byte Reload
	movq	%rax, -1080(%rbp)       # 8-byte Spill
	callq	g_signal_connect_data
	movq	-48(%rbp), %rdi
	movq	%rax, -1088(%rbp)       # 8-byte Spill
	callq	gtk_widget_show
	movq	-48(%rbp), %rax
	movq	%rax, -1096(%rbp)       # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-1096(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r12b
	andb	$1, %r12b
	movzbl	%r12b, %eax
	movl	%eax, -120(%rbp)
	movq	-48(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-120(%rbp), %eax
	addq	$1104, %rsp             # imm = 0x450
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	mosaic_dialog, .Lfunc_end3-mosaic_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4611686018427387904     # double 2
.LCPI4_1:
	.quad	4640537203540230144     # double 180
.LCPI4_2:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI4_3:
	.quad	4607182418800017408     # double 1
.LCPI4_4:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	mosaic,@function
mosaic:                                 # @mosaic
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	leaq	-20(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_preview_get_position
	leaq	-36(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_preview_get_size
	movl	-20(%rbp), %eax
	addl	-36(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-24(%rbp), %eax
	addl	-40(%rbp), %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB4_5
.LBB4_2:                                # %if.else
	leaq	-20(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	leaq	-36(%rbp), %rcx
	leaq	-40(%rbp), %r8
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	jne	.LBB4_4
# BB#3:                                 # %if.then.3
	jmp	.LBB4_21
.LBB4_4:                                # %if.end
	movabsq	$.L.str.66, %rdi
	movl	-20(%rbp), %eax
	addl	-36(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-24(%rbp), %eax
	addl	-40(%rbp), %eax
	movl	%eax, -32(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB4_5:                                # %if.end.8
	movq	-8(%rbp), %rdi
	movsd	std_dev(%rip), %xmm0    # xmm0 = mem[0],zero
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-36(%rbp), %ecx
	movl	-40(%rbp), %r8d
	movq	-16(%rbp), %r9
	callq	find_gradients
	movl	mvals+64(%rip), %ecx
	movl	%ecx, %edi
	movq	%rdi, %r9
	subq	$3, %r9
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%r9, -96(%rbp)          # 8-byte Spill
	ja	.LBB4_10
# BB#22:                                # %if.end.8
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	.LJTI4_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB4_6:                                # %sw.bb
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	callq	grid_create_squares
	jmp	.LBB4_11
.LBB4_7:                                # %sw.bb.9
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	callq	grid_create_hexagons
	jmp	.LBB4_11
.LBB4_8:                                # %sw.bb.10
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	callq	grid_create_octagons
	jmp	.LBB4_11
.LBB4_9:                                # %sw.bb.11
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	callq	grid_create_triangles
	jmp	.LBB4_11
.LBB4_10:                               # %sw.default
	jmp	.LBB4_11
.LBB4_11:                               # %sw.epilog
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	callq	grid_localize
	movl	mvals+72(%rip), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	je	.LBB4_12
	jmp	.LBB4_23
.LBB4_23:                               # %sw.epilog
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB4_13
	jmp	.LBB4_14
.LBB4_12:                               # %sw.bb.12
	movb	$-1, fore+2
	movb	$-1, fore+1
	movb	$-1, fore
	movb	$0, back+2
	movb	$0, back+1
	movb	$0, back
	jmp	.LBB4_14
.LBB4_13:                               # %sw.bb.13
	leaq	-72(%rbp), %rdi
	callq	gimp_context_get_foreground
	leaq	-72(%rbp), %rsi
	movabsq	$fore, %rdx
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	gimp_drawable_get_color_uchar
	leaq	-72(%rbp), %rdi
	callq	gimp_context_get_background
	leaq	-72(%rbp), %rsi
	movabsq	$back, %rdx
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	gimp_drawable_get_color_uchar
.LBB4_14:                               # %sw.epilog.18
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_2, %xmm2         # xmm2 = mem[0],zero
	movaps	%xmm2, %xmm3
	mulsd	mvals+40, %xmm3
	divsd	%xmm1, %xmm3
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	%xmm2, -128(%rbp)       # 8-byte Spill
	movsd	%xmm1, -136(%rbp)       # 8-byte Spill
	callq	cos
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, light_x
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	mvals+40, %xmm0
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	callq	sin
	movsd	%xmm0, light_y
	movsd	mvals+16, %xmm0         # xmm0 = mem[0],zero
	movsd	mvals, %xmm1            # xmm1 = mem[0],zero
	movsd	-120(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_16
# BB#15:                                # %cond.true
	movsd	.LCPI4_4, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	jmp	.LBB4_17
.LBB4_16:                               # %cond.false
	movsd	.LCPI4_3, %xmm0         # xmm0 = mem[0],zero
	movsd	mvals+16, %xmm1         # xmm1 = mem[0],zero
	divsd	mvals, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
.LBB4_17:                               # %cond.end
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, scale
	cmpq	$0, -16(%rbp)
	jne	.LBB4_19
# BB#18:                                # %if.then.27
	movabsq	$.L.str.67, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB4_19:                               # %if.end.30
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	movq	-16(%rbp), %r9
	callq	grid_render
	cmpq	$0, -16(%rbp)
	jne	.LBB4_21
# BB#20:                                # %if.then.32
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %r8d
	subl	-20(%rbp), %r8d
	movl	-32(%rbp), %r9d
	subl	-24(%rbp), %r9d
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%eax, -152(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB4_21:                               # %if.end.39
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	mosaic, .Lfunc_end4-mosaic
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI4_0:
	.quad	.LBB4_6
	.quad	.LBB4_7
	.quad	.LBB4_8
	.quad	.LBB4_9

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	find_gradients,@function
find_gradients:                         # @find_gradients
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
	movl	$1, %eax
	movl	%eax, %r10d
	movq	%rdi, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movl	%ecx, -52(%rbp)
	movl	%r8d, -56(%rbp)
	movq	%r9, -64(%rbp)
	movl	-52(%rbp), %eax
	imull	-56(%rbp), %eax
	movslq	%eax, %rdi
	movq	%r10, %rsi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, h_grad
	movl	-52(%rbp), %ecx
	imull	-56(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, v_grad
	movl	-52(%rbp), %ecx
	imull	-56(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$256, %ecx              # imm = 0x100
	movq	%rax, m_grad
	movl	-52(%rbp), %edx
	shll	$1, %edx
	movl	-56(%rbp), %r8d
	shll	$1, %r8d
	addl	%r8d, %edx
	movl	%edx, -208(%rbp)
	movl	-208(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -212(%rbp)
	cmpl	$0, -212(%rbp)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movl	$1, -212(%rbp)
.LBB5_2:                                # %if.end
	leaq	-112(%rbp), %rdi
	xorl	%eax, %eax
	movl	$0, -204(%rbp)
	movq	-32(%rbp), %rsi
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-52(%rbp), %r8d
	movl	-56(%rbp), %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -216(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	leaq	-160(%rbp), %rdi
	movl	$1, %eax
	movq	-32(%rbp), %rsi
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-52(%rbp), %r8d
	movl	-56(%rbp), %r9d
	cmpq	$0, -64(%rbp)
	sete	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %r11d
	movl	%r11d, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -220(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	leaq	-112(%rbp), %rdi
	leaq	-160(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-204(%rbp), %rcx
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-208(%rbp), %r8d
	movl	-212(%rbp), %r9d
	movl	-44(%rbp), %eax
	movl	-48(%rbp), %r11d
	movl	-44(%rbp), %ebx
	addl	-52(%rbp), %ebx
	movl	-48(%rbp), %r14d
	addl	-56(%rbp), %r14d
	movq	-64(%rbp), %r15
	movl	%eax, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%r14d, 24(%rsp)
	movq	%r15, 32(%rsp)
	callq	gaussian_deriv
	leaq	-112(%rbp), %rdi
	xorl	%eax, %eax
	movl	$1, %edx
	movq	-32(%rbp), %rsi
	movl	-44(%rbp), %r8d
	movl	-48(%rbp), %ecx
	movl	-52(%rbp), %r9d
	movl	-56(%rbp), %r11d
	movl	%edx, -224(%rbp)        # 4-byte Spill
	movl	%r8d, %edx
	movl	%r9d, %r8d
	movl	%r11d, %r9d
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -228(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	leaq	-112(%rbp), %rdi
	leaq	-160(%rbp), %rsi
	movl	$0, -132(%rbp)
	movl	$0, -136(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	$1, -144(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -140(%rbp)
	movq	h_grad, %r15
	movq	%r15, -160(%rbp)
	callq	find_max_gradient
	leaq	-112(%rbp), %rdi
	xorl	%eax, %eax
	movq	-32(%rbp), %rsi
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-52(%rbp), %r8d
	movl	-56(%rbp), %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -232(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	leaq	-160(%rbp), %rdi
	movl	$1, %eax
	movq	-32(%rbp), %rsi
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-52(%rbp), %r8d
	movl	-56(%rbp), %r9d
	cmpq	$0, -64(%rbp)
	sete	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %r11d
	movl	%r11d, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -236(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	leaq	-112(%rbp), %rdi
	leaq	-160(%rbp), %rsi
	movl	$1, %edx
	leaq	-204(%rbp), %rcx
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-208(%rbp), %r8d
	movl	-212(%rbp), %r9d
	movl	-44(%rbp), %eax
	movl	-48(%rbp), %r11d
	movl	-44(%rbp), %ebx
	addl	-52(%rbp), %ebx
	movl	-48(%rbp), %r14d
	addl	-56(%rbp), %r14d
	movq	-64(%rbp), %r15
	movl	%eax, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%r14d, 24(%rsp)
	movq	%r15, 32(%rsp)
	callq	gaussian_deriv
	leaq	-112(%rbp), %rdi
	xorl	%eax, %eax
	movl	$1, %edx
	movq	-32(%rbp), %rsi
	movl	-44(%rbp), %r8d
	movl	-48(%rbp), %ecx
	movl	-52(%rbp), %r9d
	movl	-56(%rbp), %r11d
	movl	%edx, -240(%rbp)        # 4-byte Spill
	movl	%r8d, %edx
	movl	%r9d, %r8d
	movl	%r11d, %r9d
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -244(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	leaq	-112(%rbp), %rdi
	leaq	-160(%rbp), %rsi
	movl	$0, -132(%rbp)
	movl	$0, -136(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	$1, -144(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -140(%rbp)
	movq	v_grad, %r15
	movq	%r15, -160(%rbp)
	callq	find_max_gradient
	cmpq	$0, -64(%rbp)
	jne	.LBB5_4
# BB#3:                                 # %if.then.24
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movl	%eax, -248(%rbp)        # 4-byte Spill
.LBB5_4:                                # %if.end.26
	movq	m_grad, %rax
	movq	%rax, -176(%rbp)
	movq	h_grad, %rax
	movq	%rax, -184(%rbp)
	movq	v_grad, %rax
	movq	%rax, -192(%rbp)
	movl	$0, -164(%rbp)
.LBB5_5:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_7 Depth 2
	movl	-164(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB5_18
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB5_5 Depth=1
	movl	$0, -168(%rbp)
.LBB5_7:                                # %for.cond.29
                                        #   Parent Loop BB5_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-168(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB5_16
# BB#8:                                 # %for.body.32
                                        #   in Loop: Header=BB5_7 Depth=2
	cmpl	$0, -168(%rbp)
	je	.LBB5_12
# BB#9:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB5_7 Depth=2
	cmpl	$0, -164(%rbp)
	je	.LBB5_12
# BB#10:                                # %lor.lhs.false.35
                                        #   in Loop: Header=BB5_7 Depth=2
	movl	-168(%rbp), %eax
	movl	-52(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	je	.LBB5_12
# BB#11:                                # %lor.lhs.false.38
                                        #   in Loop: Header=BB5_7 Depth=2
	movl	-164(%rbp), %eax
	movl	-56(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB5_13
.LBB5_12:                               # %if.then.42
                                        #   in Loop: Header=BB5_7 Depth=2
	movq	-176(%rbp), %rax
	movb	$7, (%rax)
	jmp	.LBB5_14
.LBB5_13:                               # %if.else
                                        #   in Loop: Header=BB5_7 Depth=2
	movq	-184(%rbp), %rax
	movzbl	(%rax), %ecx
	addl	$-128, %ecx
	movl	%ecx, -196(%rbp)
	movq	-192(%rbp), %rax
	movzbl	(%rax), %ecx
	addl	$-128, %ecx
	movl	%ecx, -200(%rbp)
	movl	-196(%rbp), %edx
	imull	%edx, %edx
	imull	%ecx, %ecx
	addl	%ecx, %edx
	cvtsi2sdl	%edx, %xmm0
	callq	sqrt
	cvttsd2si	%xmm0, %ecx
	movb	%cl, %sil
	movq	-176(%rbp), %rax
	movb	%sil, (%rax)
.LBB5_14:                               # %if.end.53
                                        #   in Loop: Header=BB5_7 Depth=2
	jmp	.LBB5_15
.LBB5_15:                               # %for.inc
                                        #   in Loop: Header=BB5_7 Depth=2
	movl	-168(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -168(%rbp)
	movq	-184(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -184(%rbp)
	movq	-192(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -192(%rbp)
	movq	-176(%rbp), %rcx
	addq	$1, %rcx
	movq	%rcx, -176(%rbp)
	jmp	.LBB5_7
.LBB5_16:                               # %for.end
                                        #   in Loop: Header=BB5_5 Depth=1
	jmp	.LBB5_17
.LBB5_17:                               # %for.inc.56
                                        #   in Loop: Header=BB5_5 Depth=1
	movl	-164(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -164(%rbp)
	jmp	.LBB5_5
.LBB5_18:                               # %for.end.58
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	find_gradients, .Lfunc_end5-find_gradients
	.cfi_endproc

	.align	16, 0x90
	.type	grid_create_squares,@function
grid_create_squares:                    # @grid_create_squares
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
	subq	$80, %rsp
	movl	$16, %eax
	movl	%eax, %r8d
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	cvttsd2si	mvals, %eax
	movl	%eax, -44(%rbp)
	movl	-12(%rbp), %eax
	subl	-4(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-16(%rbp), %eax
	subl	-8(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	addl	-44(%rbp), %eax
	subl	$1, %eax
	cltd
	idivl	-44(%rbp)
	movl	%eax, -20(%rbp)
	movl	-28(%rbp), %eax
	addl	-44(%rbp), %eax
	subl	$1, %eax
	cltd
	idivl	-44(%rbp)
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	addl	$2, %eax
	movl	-20(%rbp), %ecx
	addl	$2, %ecx
	imull	%ecx, %eax
	movslq	%eax, %rdi
	movq	%r8, %rsi
	callq	g_malloc_n
	movq	%rax, grid
	movl	-24(%rbp), %ecx
	addl	$2, %ecx
	addl	$1, %ecx
	movq	grid, %rax
	movslq	%ecx, %rsi
	shlq	$4, %rsi
	addq	%rsi, %rax
	movq	%rax, grid
	movl	$-1, -36(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
	movl	-36(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jg	.LBB6_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	$-1, -40(%rbp)
.LBB6_3:                                # %for.cond.12
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jg	.LBB6_6
# BB#4:                                 # %for.body.15
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	$2, %eax
	movq	grid, %rcx
	movl	-36(%rbp), %edx
	movl	-24(%rbp), %esi
	addl	$2, %esi
	imull	%esi, %edx
	addl	-40(%rbp), %edx
	movslq	%edx, %rdi
	shlq	$4, %rdi
	addq	%rdi, %rcx
	movq	%rcx, -56(%rbp)
	movl	-4(%rbp), %edx
	movl	-40(%rbp), %esi
	imull	-44(%rbp), %esi
	addl	%esi, %edx
	movl	-44(%rbp), %esi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -64(%rbp)         # 4-byte Spill
	cltd
	movl	-60(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movl	-64(%rbp), %r8d         # 4-byte Reload
	addl	%eax, %r8d
	cvtsi2sdl	%r8d, %xmm0
	movq	-56(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	movl	-8(%rbp), %eax
	movl	-36(%rbp), %r8d
	imull	-44(%rbp), %r8d
	addl	%r8d, %eax
	movl	-44(%rbp), %r8d
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movl	%r8d, %eax
	cltd
	idivl	%esi
	movl	-68(%rbp), %r8d         # 4-byte Reload
	addl	%eax, %r8d
	cvtsi2sdl	%r8d, %xmm0
	movq	-56(%rbp), %rcx
	movsd	%xmm0, 8(%rcx)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB6_3
.LBB6_6:                                # %for.end
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_7
.LBB6_7:                                # %for.inc.31
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB6_1
.LBB6_8:                                # %for.end.33
	movl	-20(%rbp), %eax
	movl	%eax, grid_rows
	movl	-24(%rbp), %eax
	movl	%eax, grid_cols
	movl	$1, grid_row_pad
	movl	$1, grid_col_pad
	movl	$1, grid_multiple
	movl	-24(%rbp), %eax
	addl	$2, %eax
	movl	%eax, grid_rowstride
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	grid_create_squares, .Lfunc_end6-grid_create_squares
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4607182418800017408     # double 1
.LCPI7_1:
	.quad	4611686018427387904     # double 2
.LCPI7_2:
	.quad	4613937818241073152     # double 3
.LCPI7_3:
	.quad	4618441417868443648     # double 6
	.text
	.align	16, 0x90
	.type	grid_create_hexagons,@function
grid_create_hexagons:                   # @grid_create_hexagons
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
	subq	$144, %rsp
	movl	$16, %eax
	movl	%eax, %r8d
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI7_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI7_3, %xmm2         # xmm2 = mem[0],zero
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	-12(%rbp), %eax
	subl	-4(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-16(%rbp), %eax
	subl	-8(%rbp), %eax
	movl	%eax, -32(%rbp)
	movsd	mvals, %xmm3            # xmm3 = mem[0],zero
	divsd	%xmm1, %xmm3
	movsd	%xmm3, -48(%rbp)
	movaps	%xmm1, %xmm3
	mulsd	-48(%rbp), %xmm3
	movsd	.LCPI7_2(%rip), %xmm4   # xmm4 = mem[0],zero
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	movaps	%xmm4, %xmm0
	movsd	%xmm3, -104(%rbp)       # 8-byte Spill
	movsd	%xmm1, -112(%rbp)       # 8-byte Spill
	movsd	%xmm2, -120(%rbp)       # 8-byte Spill
	movq	%r8, -128(%rbp)         # 8-byte Spill
	callq	sqrt
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI7_2(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sqrt
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-48(%rbp), %xmm0
	movsd	.LCPI7_2(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sqrt
	movsd	-144(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -72(%rbp)
	movsd	mvals, %xmm0            # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
	cvtsi2sdl	-32(%rbp), %xmm0
	addsd	-80(%rbp), %xmm0
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	divsd	-80(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -20(%rbp)
	cvtsi2sdl	-28(%rbp), %xmm0
	movsd	-112(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	-72(%rbp), %xmm2
	addsd	%xmm2, %xmm0
	subsd	%xmm1, %xmm0
	divsd	-72(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	addl	$2, %eax
	shll	$2, %eax
	movl	-20(%rbp), %ecx
	addl	$2, %ecx
	imull	%ecx, %eax
	movslq	%eax, %rdi
	movq	-128(%rbp), %rsi        # 8-byte Reload
	callq	g_malloc_n
	movq	%rax, grid
	movl	-24(%rbp), %ecx
	addl	$2, %ecx
	shll	$2, %ecx
	addl	$4, %ecx
	movq	grid, %rax
	movslq	%ecx, %rsi
	shlq	$4, %rsi
	addq	%rsi, %rax
	movq	%rax, grid
	movl	$-1, -36(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_3 Depth 2
	movl	-36(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jg	.LBB7_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	$-1, -40(%rbp)
.LBB7_3:                                # %for.cond.27
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jg	.LBB7_6
# BB#4:                                 # %for.body.30
                                        #   in Loop: Header=BB7_3 Depth=2
	movq	grid, %rax
	movl	-36(%rbp), %ecx
	movl	-24(%rbp), %edx
	addl	$2, %edx
	imull	%edx, %ecx
	shll	$2, %ecx
	movl	-40(%rbp), %edx
	shll	$2, %edx
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	shlq	$4, %rsi
	addq	%rsi, %rax
	movq	%rax, -88(%rbp)
	cvtsi2sdl	-4(%rbp), %xmm0
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	addsd	-64(%rbp), %xmm0
	movq	-88(%rbp), %rax
	movsd	%xmm0, (%rax)
	cvtsi2sdl	-8(%rbp), %xmm0
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	-36(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movq	-88(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movq	-88(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	addsd	-56(%rbp), %xmm0
	movq	-88(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movq	-88(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-88(%rbp), %rax
	movsd	%xmm0, 24(%rax)
	movq	-88(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	addsd	-64(%rbp), %xmm0
	movq	-88(%rbp), %rax
	movsd	%xmm0, 32(%rax)
	movq	-88(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	addsd	-48(%rbp), %xmm0
	movq	-88(%rbp), %rax
	movsd	%xmm0, 40(%rax)
	movq	-88(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	subsd	-64(%rbp), %xmm0
	movq	-88(%rbp), %rax
	movsd	%xmm0, 48(%rax)
	movq	-88(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	addsd	-48(%rbp), %xmm0
	movq	-88(%rbp), %rax
	movsd	%xmm0, 56(%rax)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB7_3 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB7_3
.LBB7_6:                                # %for.end
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_7
.LBB7_7:                                # %for.inc.77
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB7_1
.LBB7_8:                                # %for.end.79
	movl	-20(%rbp), %eax
	movl	%eax, grid_rows
	movl	-24(%rbp), %eax
	movl	%eax, grid_cols
	movl	$1, grid_row_pad
	movl	$1, grid_col_pad
	movl	$4, grid_multiple
	movl	-24(%rbp), %eax
	addl	$2, %eax
	shll	$2, %eax
	movl	%eax, grid_rowstride
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	grid_create_hexagons, .Lfunc_end7-grid_create_hexagons
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4607182418800017408     # double 1
.LCPI8_1:
	.quad	4611686018427387904     # double 2
.LCPI8_2:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	grid_create_octagons,@function
grid_create_octagons:                   # @grid_create_octagons
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
	subq	$128, %rsp
	movl	$16, %eax
	movl	%eax, %r8d
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI8_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI8_2, %xmm2         # xmm2 = mem[0],zero
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	-12(%rbp), %eax
	subl	-4(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-16(%rbp), %eax
	subl	-8(%rbp), %eax
	movl	%eax, -32(%rbp)
	movsd	mvals, %xmm3            # xmm3 = mem[0],zero
	movsd	%xmm3, -48(%rbp)
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm4   # xmm4 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movaps	%xmm4, %xmm0
	movsd	%xmm3, -96(%rbp)        # 8-byte Spill
	movsd	%xmm1, -104(%rbp)       # 8-byte Spill
	movsd	%xmm2, -112(%rbp)       # 8-byte Spill
	movq	%r8, -120(%rbp)         # 8-byte Spill
	callq	sqrt
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	-96(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	movsd	%xmm2, -56(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI8_1(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	callq	sqrt
	movsd	-128(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -64(%rbp)
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	addsd	-56(%rbp), %xmm1
	movsd	%xmm1, -72(%rbp)
	cvtsi2sdl	-32(%rbp), %xmm1
	addsd	-72(%rbp), %xmm1
	movsd	-88(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	subsd	%xmm2, %xmm1
	divsd	-72(%rbp), %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -20(%rbp)
	cvtsi2sdl	-28(%rbp), %xmm1
	movsd	-104(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	mulsd	-72(%rbp), %xmm3
	addsd	%xmm3, %xmm1
	subsd	%xmm2, %xmm1
	divsd	-72(%rbp), %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	addl	$2, %eax
	shll	$3, %eax
	movl	-20(%rbp), %ecx
	addl	$2, %ecx
	imull	%ecx, %eax
	movslq	%eax, %rdi
	movq	-120(%rbp), %rsi        # 8-byte Reload
	callq	g_malloc_n
	movq	%rax, grid
	movl	-24(%rbp), %ecx
	addl	$2, %ecx
	shll	$3, %ecx
	addl	$8, %ecx
	movq	grid, %rax
	movslq	%ecx, %rsi
	shlq	$4, %rsi
	addq	%rsi, %rax
	movq	%rax, grid
	movl	$-1, -36(%rbp)
.LBB8_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_3 Depth 2
	movl	-36(%rbp), %eax
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB8_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$-1, -40(%rbp)
.LBB8_3:                                # %for.cond.26
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	movl	-24(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB8_6
# BB#4:                                 # %for.body.30
                                        #   in Loop: Header=BB8_3 Depth=2
	movsd	.LCPI8_1, %xmm0         # xmm0 = mem[0],zero
	movq	grid, %rax
	movl	-36(%rbp), %ecx
	movl	-24(%rbp), %edx
	addl	$2, %edx
	imull	%edx, %ecx
	shll	$3, %ecx
	movl	-40(%rbp), %edx
	shll	$3, %edx
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	shlq	$4, %rsi
	addq	%rsi, %rax
	movq	%rax, -80(%rbp)
	cvtsi2sdl	-4(%rbp), %xmm1
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	cvtsi2sdl	-40(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	movq	-80(%rbp), %rax
	movsd	%xmm1, (%rax)
	cvtsi2sdl	-8(%rbp), %xmm1
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	cvtsi2sdl	-36(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	movq	-80(%rbp), %rax
	movsd	%xmm1, 8(%rax)
	movq	-80(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	addsd	-56(%rbp), %xmm1
	movq	-80(%rbp), %rax
	movsd	%xmm1, 16(%rax)
	movq	-80(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-80(%rbp), %rax
	movsd	%xmm1, 24(%rax)
	movq	-80(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	addsd	-64(%rbp), %xmm1
	addsd	-56(%rbp), %xmm1
	movq	-80(%rbp), %rax
	movsd	%xmm1, 32(%rax)
	movq	-80(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	addsd	-64(%rbp), %xmm1
	movq	-80(%rbp), %rax
	movsd	%xmm1, 40(%rax)
	movq	-80(%rbp), %rax
	movsd	32(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-80(%rbp), %rax
	movsd	%xmm1, 48(%rax)
	movq	-80(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	addsd	-64(%rbp), %xmm1
	addsd	-56(%rbp), %xmm1
	movq	-80(%rbp), %rax
	movsd	%xmm1, 56(%rax)
	movq	-80(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-80(%rbp), %rax
	movsd	%xmm1, 64(%rax)
	movq	-80(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	mulsd	-64(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	addsd	-56(%rbp), %xmm1
	movq	-80(%rbp), %rax
	movsd	%xmm1, 72(%rax)
	movq	-80(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-80(%rbp), %rax
	movsd	%xmm0, 80(%rax)
	movq	-80(%rbp), %rax
	movsd	72(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-80(%rbp), %rax
	movsd	%xmm0, 88(%rax)
	movq	-80(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	subsd	-64(%rbp), %xmm0
	movq	-80(%rbp), %rax
	movsd	%xmm0, 96(%rax)
	movq	-80(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-80(%rbp), %rax
	movsd	%xmm0, 104(%rax)
	movq	-80(%rbp), %rax
	movsd	96(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-80(%rbp), %rax
	movsd	%xmm0, 112(%rax)
	movq	-80(%rbp), %rax
	movsd	40(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-80(%rbp), %rax
	movsd	%xmm0, 120(%rax)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB8_3 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB8_3
.LBB8_6:                                # %for.end
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_7
.LBB8_7:                                # %for.inc.113
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB8_1
.LBB8_8:                                # %for.end.115
	movl	-20(%rbp), %eax
	movl	%eax, grid_rows
	movl	-24(%rbp), %eax
	movl	%eax, grid_cols
	movl	$1, grid_row_pad
	movl	$1, grid_col_pad
	movl	$8, grid_multiple
	movl	-24(%rbp), %eax
	addl	$2, %eax
	shll	$3, %eax
	movl	%eax, grid_rowstride
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	grid_create_octagons, .Lfunc_end8-grid_create_octagons
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4607182418800017408     # double 1
.LCPI9_1:
	.quad	4611686018427387904     # double 2
.LCPI9_2:
	.quad	4613937818241073152     # double 3
	.text
	.align	16, 0x90
	.type	grid_create_triangles,@function
grid_create_triangles:                  # @grid_create_triangles
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
	subq	$96, %rsp
	movl	$16, %eax
	movl	%eax, %r8d
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_1, %xmm1         # xmm1 = mem[0],zero
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	-12(%rbp), %eax
	subl	-4(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-16(%rbp), %eax
	subl	-8(%rbp), %eax
	movl	%eax, -32(%rbp)
	movsd	mvals, %xmm2            # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	movsd	%xmm2, -48(%rbp)
	movsd	mvals, %xmm2            # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	movsd	.LCPI9_2(%rip), %xmm3   # xmm3 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movaps	%xmm3, %xmm0
	movq	%r8, -80(%rbp)          # 8-byte Spill
	movsd	%xmm2, -88(%rbp)        # 8-byte Spill
	movsd	%xmm1, -96(%rbp)        # 8-byte Spill
	callq	sqrt
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)
	cvtsi2sdl	-32(%rbp), %xmm0
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	-56(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	-96(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	-56(%rbp), %xmm2
	divsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -20(%rbp)
	cvtsi2sdl	-28(%rbp), %xmm0
	addsd	mvals, %xmm0
	subsd	%xmm1, %xmm0
	divsd	mvals, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	addl	$2, %eax
	shll	$1, %eax
	movl	-20(%rbp), %ecx
	addl	$2, %ecx
	imull	%ecx, %eax
	movslq	%eax, %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	callq	g_malloc_n
	movq	%rax, grid
	movl	-24(%rbp), %ecx
	addl	$2, %ecx
	shll	$1, %ecx
	addl	$2, %ecx
	movq	grid, %rax
	movslq	%ecx, %rsi
	shlq	$4, %rsi
	addq	%rsi, %rax
	movq	%rax, grid
	movl	$-1, -36(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_3 Depth 2
	movl	-36(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jg	.LBB9_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	$-1, -40(%rbp)
.LBB9_3:                                # %for.cond.23
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jg	.LBB9_6
# BB#4:                                 # %for.body.26
                                        #   in Loop: Header=BB9_3 Depth=2
	movsd	.LCPI9_1, %xmm0         # xmm0 = mem[0],zero
	movq	grid, %rax
	movl	-36(%rbp), %ecx
	movl	-24(%rbp), %edx
	addl	$2, %edx
	imull	%edx, %ecx
	shll	$1, %ecx
	movl	-40(%rbp), %edx
	shll	$1, %edx
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	shlq	$4, %rsi
	addq	%rsi, %rax
	movq	%rax, -64(%rbp)
	cvtsi2sdl	-4(%rbp), %xmm1
	movsd	mvals, %xmm2            # xmm2 = mem[0],zero
	cvtsi2sdl	-40(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	movq	-64(%rbp), %rax
	movsd	%xmm1, (%rax)
	cvtsi2sdl	-8(%rbp), %xmm1
	mulsd	-56(%rbp), %xmm0
	cvtsi2sdl	-36(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	movq	-64(%rbp), %rax
	movsd	%xmm1, 8(%rax)
	movq	-64(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	addsd	-48(%rbp), %xmm0
	movq	-64(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movq	-64(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	addsd	-56(%rbp), %xmm0
	movq	-64(%rbp), %rax
	movsd	%xmm0, 24(%rax)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB9_3 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB9_3
.LBB9_6:                                # %for.end
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_7
.LBB9_7:                                # %for.inc.54
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB9_1
.LBB9_8:                                # %for.end.56
	movl	-20(%rbp), %eax
	movl	%eax, grid_rows
	movl	-24(%rbp), %eax
	movl	%eax, grid_cols
	movl	$1, grid_row_pad
	movl	$1, grid_col_pad
	movl	$2, grid_multiple
	movl	-24(%rbp), %eax
	addl	$2, %eax
	shll	$1, %eax
	movl	%eax, grid_rowstride
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	grid_create_triangles, .Lfunc_end9-grid_create_triangles
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4607182418800017408     # double 1
.LCPI10_1:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	grid_localize,@function
grid_localize:                          # @grid_localize
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
	subq	$144, %rsp
	xorl	%eax, %eax
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	-12(%rbp), %ecx
	subl	-4(%rbp), %ecx
	movl	%ecx, -20(%rbp)
	cvttsd2si	mvals, %ecx
	movl	%ecx, -56(%rbp)
	cvtsi2sdl	-56(%rbp), %xmm1
	subsd	mvals+24, %xmm0
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -88(%rbp)
	subl	grid_row_pad, %eax
	movl	%eax, -24(%rbp)
.LBB10_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_3 Depth 2
                                        #       Child Loop BB10_29 Depth 3
                                        #         Child Loop BB10_31 Depth 4
	movl	-24(%rbp), %eax
	movl	grid_rows, %ecx
	addl	grid_row_pad, %ecx
	cmpl	%ecx, %eax
	jge	.LBB10_42
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	xorl	%eax, %eax
	subl	grid_col_pad, %eax
	imull	grid_multiple, %eax
	movl	%eax, -28(%rbp)
.LBB10_3:                               # %for.cond.7
                                        #   Parent Loop BB10_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_29 Depth 3
                                        #         Child Loop BB10_31 Depth 4
	movl	-28(%rbp), %eax
	movl	grid_cols, %ecx
	addl	grid_col_pad, %ecx
	imull	grid_multiple, %ecx
	cmpl	%ecx, %eax
	jge	.LBB10_40
# BB#4:                                 # %for.body.12
                                        #   in Loop: Header=BB10_3 Depth=2
	movq	grid, %rax
	movl	-24(%rbp), %ecx
	imull	grid_rowstride, %ecx
	addl	-28(%rbp), %ecx
	movslq	%ecx, %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	fp_rand
	movsd	.LCPI10_1, %xmm1        # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	subsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, -60(%rbp)
	movq	-96(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	fp_rand
	movsd	.LCPI10_1, %xmm1        # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	subsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	-112(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %ecx
	movl	%ecx, -64(%rbp)
	movq	-96(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %ecx
	cvtsi2sdl	%ecx, %xmm2
	subsd	%xmm2, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -40(%rbp)
	movq	-96(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %ecx
	cvtsi2sdl	%ecx, %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -44(%rbp)
	movl	-40(%rbp), %ecx
	cvttsd2si	-88(%rbp), %esi
	addl	%esi, %ecx
	movl	%ecx, -48(%rbp)
	movl	-44(%rbp), %ecx
	cvttsd2si	-88(%rbp), %esi
	addl	%esi, %ecx
	movl	%ecx, -52(%rbp)
	movl	-40(%rbp), %ecx
	movl	-12(%rbp), %esi
	subl	$1, %esi
	cmpl	%esi, %ecx
	jle	.LBB10_6
# BB#5:                                 # %cond.true
                                        #   in Loop: Header=BB10_3 Depth=2
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB10_10
.LBB10_6:                               # %cond.false
                                        #   in Loop: Header=BB10_3 Depth=2
	movl	-40(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB10_8
# BB#7:                                 # %cond.true.49
                                        #   in Loop: Header=BB10_3 Depth=2
	movl	-4(%rbp), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB10_9
.LBB10_8:                               # %cond.false.50
                                        #   in Loop: Header=BB10_3 Depth=2
	movl	-40(%rbp), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB10_9:                               # %cond.end
                                        #   in Loop: Header=BB10_3 Depth=2
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB10_10:                              # %cond.end.51
                                        #   in Loop: Header=BB10_3 Depth=2
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	%eax, -40(%rbp)
	movl	-44(%rbp), %eax
	movl	-16(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jle	.LBB10_12
# BB#11:                                # %cond.true.56
                                        #   in Loop: Header=BB10_3 Depth=2
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB10_16
.LBB10_12:                              # %cond.false.58
                                        #   in Loop: Header=BB10_3 Depth=2
	movl	-44(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB10_14
# BB#13:                                # %cond.true.61
                                        #   in Loop: Header=BB10_3 Depth=2
	movl	-8(%rbp), %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB10_15
.LBB10_14:                              # %cond.false.62
                                        #   in Loop: Header=BB10_3 Depth=2
	movl	-44(%rbp), %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB10_15:                              # %cond.end.63
                                        #   in Loop: Header=BB10_3 Depth=2
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB10_16:                              # %cond.end.65
                                        #   in Loop: Header=BB10_3 Depth=2
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	%eax, -44(%rbp)
	movl	-48(%rbp), %eax
	movl	-12(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jle	.LBB10_18
# BB#17:                                # %cond.true.70
                                        #   in Loop: Header=BB10_3 Depth=2
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB10_22
.LBB10_18:                              # %cond.false.72
                                        #   in Loop: Header=BB10_3 Depth=2
	movl	-48(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB10_20
# BB#19:                                # %cond.true.75
                                        #   in Loop: Header=BB10_3 Depth=2
	movl	-4(%rbp), %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB10_21
.LBB10_20:                              # %cond.false.76
                                        #   in Loop: Header=BB10_3 Depth=2
	movl	-48(%rbp), %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB10_21:                              # %cond.end.77
                                        #   in Loop: Header=BB10_3 Depth=2
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB10_22:                              # %cond.end.79
                                        #   in Loop: Header=BB10_3 Depth=2
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	movl	-16(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jle	.LBB10_24
# BB#23:                                # %cond.true.84
                                        #   in Loop: Header=BB10_3 Depth=2
	movl	-16(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB10_28
.LBB10_24:                              # %cond.false.86
                                        #   in Loop: Header=BB10_3 Depth=2
	movl	-52(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB10_26
# BB#25:                                # %cond.true.89
                                        #   in Loop: Header=BB10_3 Depth=2
	movl	-8(%rbp), %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB10_27
.LBB10_26:                              # %cond.false.90
                                        #   in Loop: Header=BB10_3 Depth=2
	movl	-52(%rbp), %eax
	movl	%eax, -144(%rbp)        # 4-byte Spill
.LBB10_27:                              # %cond.end.91
                                        #   in Loop: Header=BB10_3 Depth=2
	movl	-144(%rbp), %eax        # 4-byte Reload
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB10_28:                              # %cond.end.93
                                        #   in Loop: Header=BB10_3 Depth=2
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	%eax, -52(%rbp)
	movq	m_grad, %rcx
	movl	-44(%rbp), %eax
	subl	-8(%rbp), %eax
	imull	-20(%rbp), %eax
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movl	-40(%rbp), %eax
	subl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movzbl	(%rcx,%rdx), %eax
	movl	%eax, -68(%rbp)
	movq	m_grad, %rcx
	movl	-20(%rbp), %eax
	movl	-44(%rbp), %esi
	subl	-8(%rbp), %esi
	imull	%esi, %eax
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -80(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB10_29:                              # %for.cond.107
                                        #   Parent Loop BB10_1 Depth=1
                                        #     Parent Loop BB10_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB10_31 Depth 4
	movl	-32(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jg	.LBB10_38
# BB#30:                                # %for.body.110
                                        #   in Loop: Header=BB10_29 Depth=3
	movl	-40(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB10_31:                              # %for.cond.111
                                        #   Parent Loop BB10_1 Depth=1
                                        #     Parent Loop BB10_3 Depth=2
                                        #       Parent Loop BB10_29 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jg	.LBB10_36
# BB#32:                                # %for.body.114
                                        #   in Loop: Header=BB10_31 Depth=4
	movl	-36(%rbp), %eax
	subl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movq	-80(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	-68(%rbp), %eax
	jle	.LBB10_34
# BB#33:                                # %if.then
                                        #   in Loop: Header=BB10_31 Depth=4
	movl	-32(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-36(%rbp), %eax
	subl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movq	-80(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -68(%rbp)
.LBB10_34:                              # %if.end
                                        #   in Loop: Header=BB10_31 Depth=4
	jmp	.LBB10_35
.LBB10_35:                              # %for.inc
                                        #   in Loop: Header=BB10_31 Depth=4
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB10_31
.LBB10_36:                              # %for.end
                                        #   in Loop: Header=BB10_29 Depth=3
	movl	-20(%rbp), %eax
	movq	-80(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -80(%rbp)
# BB#37:                                # %for.inc.125
                                        #   in Loop: Header=BB10_29 Depth=3
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB10_29
.LBB10_38:                              # %for.end.127
                                        #   in Loop: Header=BB10_3 Depth=2
	cvtsi2sdl	-60(%rbp), %xmm0
	movq	-96(%rbp), %rax
	movsd	%xmm0, (%rax)
	cvtsi2sdl	-64(%rbp), %xmm0
	movq	-96(%rbp), %rax
	movsd	%xmm0, 8(%rax)
# BB#39:                                # %for.inc.132
                                        #   in Loop: Header=BB10_3 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB10_3
.LBB10_40:                              # %for.end.134
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_41
.LBB10_41:                              # %for.inc.135
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB10_1
.LBB10_42:                              # %for.end.137
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	grid_localize, .Lfunc_end10-grid_localize
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	grid_render,@function
grid_render:                            # @grid_render
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
	pushq	%rbx
	subq	$424, %rsp              # imm = 0x1A8
.Ltmp48:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movq	%r9, -40(%rbp)
	movq	$0, -112(%rbp)
	movq	-16(%rbp), %rdi
	movl	12(%rdi), %ecx
	movl	%ecx, -128(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB11_6
# BB#1:                                 # %if.then
	movl	$1, %eax
	movl	%eax, %esi
	movl	-128(%rbp), %eax
	movl	-28(%rbp), %ecx
	subl	-20(%rbp), %ecx
	imull	%ecx, %eax
	movl	-32(%rbp), %ecx
	subl	-24(%rbp), %ecx
	imull	%ecx, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -120(%rbp)
	movl	$0, -92(%rbp)
.LBB11_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-92(%rbp), %eax
	movl	-28(%rbp), %ecx
	subl	-20(%rbp), %ecx
	movl	-32(%rbp), %edx
	subl	-24(%rbp), %edx
	imull	%edx, %ecx
	cmpl	%ecx, %eax
	jge	.LBB11_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB11_2 Depth=1
	movabsq	$back, %rsi
	movq	-120(%rbp), %rdi
	movslq	-128(%rbp), %rdx
	callq	memcpy
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB11_2 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	movl	-128(%rbp), %eax
	movq	-120(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -120(%rbp)
	jmp	.LBB11_2
.LBB11_5:                               # %for.end
	jmp	.LBB11_23
.LBB11_6:                               # %if.else
	leaq	-88(%rbp), %rdi
	movl	$1, %eax
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	subl	-20(%rbp), %r8d
	movl	-32(%rbp), %r9d
	subl	-24(%rbp), %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -364(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movl	$1, %edi
	leaq	-88(%rbp), %rsi
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -360(%rbp)
.LBB11_7:                               # %for.cond.11
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_9 Depth 2
                                        #       Child Loop BB11_11 Depth 3
                                        #         Child Loop BB11_13 Depth 4
	cmpq	$0, -360(%rbp)
	je	.LBB11_22
# BB#8:                                 # %for.body.14
                                        #   in Loop: Header=BB11_7 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -112(%rbp)
	movl	$0, -92(%rbp)
.LBB11_9:                               # %for.cond.15
                                        #   Parent Loop BB11_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_11 Depth 3
                                        #         Child Loop BB11_13 Depth 4
	movl	-92(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB11_20
# BB#10:                                # %for.body.18
                                        #   in Loop: Header=BB11_9 Depth=2
	movq	-112(%rbp), %rax
	movq	%rax, -120(%rbp)
	movl	$0, -96(%rbp)
.LBB11_11:                              # %for.cond.19
                                        #   Parent Loop BB11_7 Depth=1
                                        #     Parent Loop BB11_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB11_13 Depth 4
	movl	-96(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	.LBB11_18
# BB#12:                                # %for.body.22
                                        #   in Loop: Header=BB11_11 Depth=3
	movl	$0, -100(%rbp)
.LBB11_13:                              # %for.cond.23
                                        #   Parent Loop BB11_7 Depth=1
                                        #     Parent Loop BB11_9 Depth=2
                                        #       Parent Loop BB11_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-100(%rbp), %eax
	cmpl	-128(%rbp), %eax
	jge	.LBB11_16
# BB#14:                                # %for.body.26
                                        #   in Loop: Header=BB11_13 Depth=4
	movslq	-100(%rbp), %rax
	movb	back(,%rax), %cl
	movslq	-100(%rbp), %rax
	movq	-120(%rbp), %rdx
	movb	%cl, (%rdx,%rax)
# BB#15:                                # %for.inc.29
                                        #   in Loop: Header=BB11_13 Depth=4
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB11_13
.LBB11_16:                              # %for.end.31
                                        #   in Loop: Header=BB11_11 Depth=3
	movl	-128(%rbp), %eax
	movq	-120(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -120(%rbp)
# BB#17:                                # %for.inc.34
                                        #   in Loop: Header=BB11_11 Depth=3
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB11_11
.LBB11_18:                              # %for.end.36
                                        #   in Loop: Header=BB11_9 Depth=2
	movl	-68(%rbp), %eax
	movq	-112(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -112(%rbp)
# BB#19:                                # %for.inc.39
                                        #   in Loop: Header=BB11_9 Depth=2
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB11_9
.LBB11_20:                              # %for.end.41
                                        #   in Loop: Header=BB11_7 Depth=1
	jmp	.LBB11_21
.LBB11_21:                              # %for.inc.42
                                        #   in Loop: Header=BB11_7 Depth=1
	movq	-360(%rbp), %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -360(%rbp)
	jmp	.LBB11_7
.LBB11_22:                              # %for.end.44
	movq	$0, -112(%rbp)
.LBB11_23:                              # %if.end
	xorl	%eax, %eax
	movl	grid_rows, %ecx
	addl	grid_row_pad, %ecx
	movl	grid_cols, %edx
	addl	grid_col_pad, %edx
	imull	%edx, %ecx
	movl	%ecx, -132(%rbp)
	cvtsi2sdl	-132(%rbp), %xmm0
	mulsd	mvals+48, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -136(%rbp)
	movl	$0, -140(%rbp)
	subl	grid_row_pad, %eax
	movl	%eax, -92(%rbp)
.LBB11_24:                              # %for.cond.51
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_26 Depth 2
                                        #       Child Loop BB11_31 Depth 3
	movl	-92(%rbp), %eax
	cmpl	grid_rows, %eax
	jge	.LBB11_42
# BB#25:                                # %for.body.54
                                        #   in Loop: Header=BB11_24 Depth=1
	xorl	%eax, %eax
	subl	grid_col_pad, %eax
	movl	%eax, -96(%rbp)
.LBB11_26:                              # %for.cond.56
                                        #   Parent Loop BB11_24 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_31 Depth 3
	movl	-96(%rbp), %eax
	cmpl	grid_cols, %eax
	jge	.LBB11_40
# BB#27:                                # %for.body.59
                                        #   in Loop: Header=BB11_26 Depth=2
	movl	-132(%rbp), %esi
	xorl	%edi, %edi
	callq	g_random_int_range
	movl	-136(%rbp), %esi
	subl	%esi, %eax
	setl	%cl
	movzbl	%cl, %esi
	movl	%esi, -148(%rbp)
	movl	-92(%rbp), %esi
	movl	grid_rowstride(%rip), %edi
	imull	%edi, %esi
	movl	-96(%rbp), %edi
	movl	grid_multiple(%rip), %edx
	imull	%edx, %edi
	addl	%edi, %esi
	movl	%esi, -144(%rbp)
	movl	mvals+64(%rip), %edx
	movl	%edx, %r8d
	movq	%r8, %r9
	subq	$3, %r9
	movl	%eax, -368(%rbp)        # 4-byte Spill
	movq	%r8, -376(%rbp)         # 8-byte Spill
	movq	%r9, -384(%rbp)         # 8-byte Spill
	ja	.LBB11_36
# BB#46:                                # %for.body.59
                                        #   in Loop: Header=BB11_26 Depth=2
	movq	-376(%rbp), %rax        # 8-byte Reload
	movq	.LJTI11_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB11_28:                              # %sw.bb
                                        #   in Loop: Header=BB11_26 Depth=2
	leaq	-352(%rbp), %rdi
	callq	polygon_reset
	leaq	-352(%rbp), %rdi
	movslq	-144(%rbp), %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movslq	-144(%rbp), %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	polygon_add_point
	leaq	-352(%rbp), %rdi
	movl	-144(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movl	-144(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	polygon_add_point
	leaq	-352(%rbp), %rdi
	movl	-144(%rbp), %ecx
	addl	grid_rowstride, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movl	-144(%rbp), %ecx
	addl	grid_rowstride, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	polygon_add_point
	leaq	-352(%rbp), %rdi
	movl	-144(%rbp), %ecx
	addl	grid_rowstride, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movl	-144(%rbp), %ecx
	addl	grid_rowstride, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	polygon_add_point
	leaq	-352(%rbp), %rdi
	leaq	-124(%rbp), %rcx
	movl	mvals+32, %esi
	movq	-16(%rbp), %rdx
	movl	-148(%rbp), %r8d
	movl	-20(%rbp), %r9d
	movl	-24(%rbp), %r10d
	movl	-28(%rbp), %r11d
	movl	-32(%rbp), %ebx
	movq	-112(%rbp), %rax
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movq	%rax, 24(%rsp)
	callq	process_poly
	jmp	.LBB11_36
.LBB11_29:                              # %sw.bb.96
                                        #   in Loop: Header=BB11_26 Depth=2
	leaq	-352(%rbp), %rdi
	callq	polygon_reset
	leaq	-352(%rbp), %rdi
	movslq	-144(%rbp), %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movslq	-144(%rbp), %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	polygon_add_point
	leaq	-352(%rbp), %rdi
	movl	-144(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movl	-144(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	polygon_add_point
	leaq	-352(%rbp), %rdi
	movl	-144(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movl	-144(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	polygon_add_point
	leaq	-352(%rbp), %rdi
	movl	-144(%rbp), %ecx
	addl	grid_rowstride, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movl	-144(%rbp), %ecx
	addl	grid_rowstride, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	polygon_add_point
	leaq	-352(%rbp), %rdi
	movl	-144(%rbp), %ecx
	addl	grid_rowstride, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movl	-144(%rbp), %ecx
	addl	grid_rowstride, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	polygon_add_point
	leaq	-352(%rbp), %rdi
	movl	-144(%rbp), %ecx
	addl	$3, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movl	-144(%rbp), %ecx
	addl	$3, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	polygon_add_point
	leaq	-352(%rbp), %rdi
	leaq	-124(%rbp), %rcx
	movl	mvals+32, %esi
	movq	-16(%rbp), %rdx
	movl	-148(%rbp), %r8d
	movl	-20(%rbp), %r9d
	movl	-24(%rbp), %r10d
	movl	-28(%rbp), %r11d
	movl	-32(%rbp), %ebx
	movq	-112(%rbp), %rax
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movq	%rax, 24(%rsp)
	callq	process_poly
	leaq	-352(%rbp), %rdi
	callq	polygon_reset
	leaq	-352(%rbp), %rdi
	movl	-144(%rbp), %esi
	addl	$2, %esi
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movl	-144(%rbp), %esi
	addl	$2, %esi
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	polygon_add_point
	leaq	-352(%rbp), %rdi
	movl	-144(%rbp), %esi
	movl	grid_multiple, %r8d
	shll	$1, %r8d
	addl	%r8d, %esi
	subl	$1, %esi
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movl	-144(%rbp), %esi
	movl	grid_multiple, %r8d
	shll	$1, %r8d
	addl	%r8d, %esi
	subl	$1, %esi
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	polygon_add_point
	leaq	-352(%rbp), %rdi
	movl	-144(%rbp), %esi
	addl	grid_rowstride, %esi
	addl	grid_multiple, %esi
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movl	-144(%rbp), %esi
	addl	grid_rowstride, %esi
	addl	grid_multiple, %esi
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	polygon_add_point
	leaq	-352(%rbp), %rdi
	movl	-144(%rbp), %esi
	addl	grid_rowstride, %esi
	addl	grid_multiple, %esi
	addl	$3, %esi
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movl	-144(%rbp), %esi
	addl	grid_rowstride, %esi
	addl	grid_multiple, %esi
	addl	$3, %esi
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	polygon_add_point
	leaq	-352(%rbp), %rdi
	movl	-144(%rbp), %esi
	addl	grid_rowstride, %esi
	addl	$2, %esi
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movl	-144(%rbp), %esi
	addl	grid_rowstride, %esi
	addl	$2, %esi
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	polygon_add_point
	leaq	-352(%rbp), %rdi
	movl	-144(%rbp), %esi
	addl	grid_rowstride, %esi
	addl	$1, %esi
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movl	-144(%rbp), %esi
	addl	grid_rowstride, %esi
	addl	$1, %esi
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	polygon_add_point
	leaq	-352(%rbp), %rdi
	leaq	-124(%rbp), %rcx
	movl	mvals+32, %esi
	movq	-16(%rbp), %rdx
	movl	-148(%rbp), %r8d
	movl	-20(%rbp), %r9d
	movl	-24(%rbp), %r10d
	movl	-28(%rbp), %r11d
	movl	-32(%rbp), %ebx
	movq	-112(%rbp), %rax
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movq	%rax, 24(%rsp)
	callq	process_poly
	jmp	.LBB11_36
.LBB11_30:                              # %sw.bb.209
                                        #   in Loop: Header=BB11_26 Depth=2
	leaq	-352(%rbp), %rdi
	callq	polygon_reset
	movl	$0, -100(%rbp)
.LBB11_31:                              # %for.cond.210
                                        #   Parent Loop BB11_24 Depth=1
                                        #     Parent Loop BB11_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$8, -100(%rbp)
	jge	.LBB11_34
# BB#32:                                # %for.body.213
                                        #   in Loop: Header=BB11_31 Depth=3
	leaq	-352(%rbp), %rdi
	movl	-144(%rbp), %eax
	addl	-100(%rbp), %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	addq	grid, %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movl	-144(%rbp), %eax
	addl	-100(%rbp), %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	addq	grid, %rcx
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	callq	polygon_add_point
# BB#33:                                # %for.inc.222
                                        #   in Loop: Header=BB11_31 Depth=3
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB11_31
.LBB11_34:                              # %for.end.224
                                        #   in Loop: Header=BB11_26 Depth=2
	leaq	-352(%rbp), %rdi
	leaq	-124(%rbp), %rcx
	movl	mvals+32, %esi
	movq	-16(%rbp), %rdx
	movl	-148(%rbp), %r8d
	movl	-20(%rbp), %r9d
	movl	-24(%rbp), %eax
	movl	-28(%rbp), %r10d
	movl	-32(%rbp), %r11d
	movq	-112(%rbp), %rbx
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%r11d, 16(%rsp)
	movq	%rbx, 24(%rsp)
	callq	process_poly
	leaq	-352(%rbp), %rdi
	callq	polygon_reset
	leaq	-352(%rbp), %rdi
	movl	-144(%rbp), %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	addq	grid, %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movl	-144(%rbp), %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	addq	grid, %rcx
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	callq	polygon_add_point
	leaq	-352(%rbp), %rdi
	movl	-144(%rbp), %eax
	movl	grid_multiple, %esi
	shll	$1, %esi
	addl	%esi, %eax
	subl	$2, %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	addq	grid, %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movl	-144(%rbp), %eax
	movl	grid_multiple, %esi
	shll	$1, %esi
	addl	%esi, %eax
	subl	$2, %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	addq	grid, %rcx
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	callq	polygon_add_point
	leaq	-352(%rbp), %rdi
	movl	-144(%rbp), %eax
	movl	grid_multiple, %esi
	shll	$1, %esi
	addl	%esi, %eax
	subl	$3, %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	addq	grid, %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movl	-144(%rbp), %eax
	movl	grid_multiple, %esi
	shll	$1, %esi
	addl	%esi, %eax
	subl	$3, %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	addq	grid, %rcx
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	callq	polygon_add_point
	leaq	-352(%rbp), %rdi
	movl	-144(%rbp), %eax
	addl	grid_rowstride, %eax
	addl	grid_multiple, %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	addq	grid, %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movl	-144(%rbp), %eax
	addl	grid_rowstride, %eax
	addl	grid_multiple, %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	addq	grid, %rcx
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	callq	polygon_add_point
	leaq	-352(%rbp), %rdi
	movl	-144(%rbp), %eax
	addl	grid_rowstride, %eax
	movl	grid_multiple, %esi
	shll	$1, %esi
	addl	%esi, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	addq	grid, %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movl	-144(%rbp), %eax
	addl	grid_rowstride, %eax
	movl	grid_multiple, %esi
	shll	$1, %esi
	addl	%esi, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	addq	grid, %rcx
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	callq	polygon_add_point
	leaq	-352(%rbp), %rdi
	movl	-144(%rbp), %eax
	addl	grid_rowstride, %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	addq	grid, %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movl	-144(%rbp), %eax
	addl	grid_rowstride, %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	addq	grid, %rcx
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	callq	polygon_add_point
	leaq	-352(%rbp), %rdi
	movl	-144(%rbp), %eax
	addl	grid_rowstride, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	addq	grid, %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movl	-144(%rbp), %eax
	addl	grid_rowstride, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	addq	grid, %rcx
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	callq	polygon_add_point
	leaq	-352(%rbp), %rdi
	movl	-144(%rbp), %eax
	addl	$4, %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	addq	grid, %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movl	-144(%rbp), %eax
	addl	$4, %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	addq	grid, %rcx
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	callq	polygon_add_point
	leaq	-352(%rbp), %rdi
	leaq	-124(%rbp), %rcx
	movl	mvals+32, %esi
	movq	-16(%rbp), %rdx
	movl	-148(%rbp), %r8d
	movl	-20(%rbp), %r9d
	movl	-24(%rbp), %eax
	movl	-28(%rbp), %r10d
	movl	-32(%rbp), %r11d
	movq	-112(%rbp), %rbx
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%r11d, 16(%rsp)
	movq	%rbx, 24(%rsp)
	callq	process_poly
	leaq	-352(%rbp), %rdi
	callq	polygon_reset
	leaq	-352(%rbp), %rdi
	movl	-144(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	addq	grid, %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movl	-144(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	addq	grid, %rcx
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	callq	polygon_add_point
	leaq	-352(%rbp), %rdi
	movl	-144(%rbp), %eax
	movl	grid_multiple, %esi
	shll	$1, %esi
	addl	%esi, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	addq	grid, %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movl	-144(%rbp), %eax
	movl	grid_multiple, %esi
	shll	$1, %esi
	addl	%esi, %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	addq	grid, %rcx
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	callq	polygon_add_point
	leaq	-352(%rbp), %rdi
	movl	-144(%rbp), %eax
	movl	grid_multiple, %esi
	shll	$1, %esi
	addl	%esi, %eax
	subl	$2, %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	addq	grid, %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movl	-144(%rbp), %eax
	movl	grid_multiple, %esi
	shll	$1, %esi
	addl	%esi, %eax
	subl	$2, %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	addq	grid, %rcx
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	callq	polygon_add_point
	leaq	-352(%rbp), %rdi
	movl	-144(%rbp), %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	addq	grid, %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movl	-144(%rbp), %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	addq	grid, %rcx
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	callq	polygon_add_point
	leaq	-352(%rbp), %rdi
	xorl	%esi, %esi
	leaq	-124(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movl	-148(%rbp), %r8d
	movl	-20(%rbp), %r9d
	movl	-24(%rbp), %eax
	movl	-28(%rbp), %r10d
	movl	-32(%rbp), %r11d
	movq	-112(%rbp), %rbx
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%r11d, 16(%rsp)
	movq	%rbx, 24(%rsp)
	callq	process_poly
	leaq	-352(%rbp), %rdi
	callq	polygon_reset
	leaq	-352(%rbp), %rdi
	movl	-144(%rbp), %eax
	addl	$5, %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	addq	grid, %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movl	-144(%rbp), %eax
	addl	$5, %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	addq	grid, %rcx
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	callq	polygon_add_point
	leaq	-352(%rbp), %rdi
	movl	-144(%rbp), %eax
	addl	$4, %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	addq	grid, %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movl	-144(%rbp), %eax
	addl	$4, %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	addq	grid, %rcx
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	callq	polygon_add_point
	leaq	-352(%rbp), %rdi
	movl	-144(%rbp), %eax
	addl	grid_rowstride, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	addq	grid, %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movl	-144(%rbp), %eax
	addl	grid_rowstride, %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	addq	grid, %rcx
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	callq	polygon_add_point
	leaq	-352(%rbp), %rdi
	movl	-144(%rbp), %eax
	addl	grid_rowstride, %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	addq	grid, %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movl	-144(%rbp), %eax
	addl	grid_rowstride, %eax
	movslq	%eax, %rcx
	shlq	$4, %rcx
	addq	grid, %rcx
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	callq	polygon_add_point
	leaq	-352(%rbp), %rdi
	xorl	%esi, %esi
	leaq	-124(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movl	-148(%rbp), %r8d
	movl	-20(%rbp), %r9d
	movl	-24(%rbp), %eax
	movl	-28(%rbp), %r10d
	movl	-32(%rbp), %r11d
	movq	-112(%rbp), %rbx
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%r11d, 16(%rsp)
	movq	%rbx, 24(%rsp)
	callq	process_poly
	jmp	.LBB11_36
.LBB11_35:                              # %sw.bb.387
                                        #   in Loop: Header=BB11_26 Depth=2
	leaq	-352(%rbp), %rdi
	callq	polygon_reset
	leaq	-352(%rbp), %rdi
	movslq	-144(%rbp), %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movslq	-144(%rbp), %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	polygon_add_point
	leaq	-352(%rbp), %rdi
	movl	-144(%rbp), %ecx
	addl	grid_multiple, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movl	-144(%rbp), %ecx
	addl	grid_multiple, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	polygon_add_point
	leaq	-352(%rbp), %rdi
	movl	-144(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movl	-144(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	polygon_add_point
	leaq	-352(%rbp), %rdi
	leaq	-124(%rbp), %rcx
	movl	mvals+32, %esi
	movq	-16(%rbp), %rdx
	movl	-148(%rbp), %r8d
	movl	-20(%rbp), %r9d
	movl	-24(%rbp), %r10d
	movl	-28(%rbp), %r11d
	movl	-32(%rbp), %ebx
	movq	-112(%rbp), %rax
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movq	%rax, 24(%rsp)
	callq	process_poly
	leaq	-352(%rbp), %rdi
	callq	polygon_reset
	leaq	-352(%rbp), %rdi
	movl	-144(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movl	-144(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	polygon_add_point
	leaq	-352(%rbp), %rdi
	movl	-144(%rbp), %esi
	addl	grid_multiple, %esi
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movl	-144(%rbp), %esi
	addl	grid_multiple, %esi
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	polygon_add_point
	leaq	-352(%rbp), %rdi
	movl	-144(%rbp), %esi
	addl	grid_multiple, %esi
	addl	$1, %esi
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movl	-144(%rbp), %esi
	addl	grid_multiple, %esi
	addl	$1, %esi
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	polygon_add_point
	leaq	-352(%rbp), %rdi
	leaq	-124(%rbp), %rcx
	movl	mvals+32, %esi
	movq	-16(%rbp), %rdx
	movl	-148(%rbp), %r8d
	movl	-20(%rbp), %r9d
	movl	-24(%rbp), %r10d
	movl	-28(%rbp), %r11d
	movl	-32(%rbp), %ebx
	movq	-112(%rbp), %rax
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movq	%rax, 24(%rsp)
	callq	process_poly
	leaq	-352(%rbp), %rdi
	callq	polygon_reset
	leaq	-352(%rbp), %rdi
	movl	-144(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movl	-144(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	polygon_add_point
	leaq	-352(%rbp), %rdi
	movl	-144(%rbp), %esi
	addl	grid_multiple, %esi
	addl	grid_rowstride, %esi
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movl	-144(%rbp), %esi
	addl	grid_multiple, %esi
	addl	grid_rowstride, %esi
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	polygon_add_point
	leaq	-352(%rbp), %rdi
	movl	-144(%rbp), %esi
	addl	grid_rowstride, %esi
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movl	-144(%rbp), %esi
	addl	grid_rowstride, %esi
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	polygon_add_point
	leaq	-352(%rbp), %rdi
	leaq	-124(%rbp), %rcx
	movl	mvals+32, %esi
	movq	-16(%rbp), %rdx
	movl	-148(%rbp), %r8d
	movl	-20(%rbp), %r9d
	movl	-24(%rbp), %r10d
	movl	-28(%rbp), %r11d
	movl	-32(%rbp), %ebx
	movq	-112(%rbp), %rax
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movq	%rax, 24(%rsp)
	callq	process_poly
	leaq	-352(%rbp), %rdi
	callq	polygon_reset
	leaq	-352(%rbp), %rdi
	movl	-144(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movl	-144(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	polygon_add_point
	leaq	-352(%rbp), %rdi
	movl	-144(%rbp), %esi
	addl	grid_multiple, %esi
	addl	$1, %esi
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movl	-144(%rbp), %esi
	addl	grid_multiple, %esi
	addl	$1, %esi
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	polygon_add_point
	leaq	-352(%rbp), %rdi
	movl	-144(%rbp), %esi
	addl	grid_multiple, %esi
	addl	grid_rowstride, %esi
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movl	-144(%rbp), %esi
	addl	grid_multiple, %esi
	addl	grid_rowstride, %esi
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	grid, %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	callq	polygon_add_point
	leaq	-352(%rbp), %rdi
	leaq	-124(%rbp), %rcx
	movl	mvals+32, %esi
	movq	-16(%rbp), %rdx
	movl	-148(%rbp), %r8d
	movl	-20(%rbp), %r9d
	movl	-24(%rbp), %r10d
	movl	-28(%rbp), %r11d
	movl	-32(%rbp), %ebx
	movq	-112(%rbp), %rax
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movq	%rax, 24(%rsp)
	callq	process_poly
.LBB11_36:                              # %sw.epilog
                                        #   in Loop: Header=BB11_26 Depth=2
	cmpq	$0, -40(%rbp)
	jne	.LBB11_38
# BB#37:                                # %if.then.495
                                        #   in Loop: Header=BB11_26 Depth=2
	movl	-140(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -140(%rbp)
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	-132(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -388(%rbp)        # 4-byte Spill
.LBB11_38:                              # %if.end.500
                                        #   in Loop: Header=BB11_26 Depth=2
	jmp	.LBB11_39
.LBB11_39:                              # %for.inc.501
                                        #   in Loop: Header=BB11_26 Depth=2
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
	jmp	.LBB11_26
.LBB11_40:                              # %for.end.503
                                        #   in Loop: Header=BB11_24 Depth=1
	jmp	.LBB11_41
.LBB11_41:                              # %for.inc.504
                                        #   in Loop: Header=BB11_24 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB11_24
.LBB11_42:                              # %for.end.506
	cmpq	$0, -40(%rbp)
	je	.LBB11_44
# BB#43:                                # %if.then.508
	movq	-40(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movl	-28(%rbp), %eax
	subl	-20(%rbp), %eax
	imull	-128(%rbp), %eax
	movl	%eax, %edx
	callq	gimp_preview_draw_buffer
	jmp	.LBB11_45
.LBB11_44:                              # %if.else.511
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movl	%eax, -392(%rbp)        # 4-byte Spill
.LBB11_45:                              # %if.end.513
	addq	$424, %rsp              # imm = 0x1A8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end11:
	.size	grid_render, .Lfunc_end11-grid_render
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI11_0:
	.quad	.LBB11_28
	.quad	.LBB11_29
	.quad	.LBB11_30
	.quad	.LBB11_35

	.text
	.align	16, 0x90
	.type	gaussian_deriv,@function
gaussian_deriv:                         # @gaussian_deriv
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
	pushq	%r14
	pushq	%rbx
	subq	$384, %rsp              # imm = 0x180
.Ltmp52:
	.cfi_offset %rbx, -32
.Ltmp53:
	.cfi_offset %r14, -24
	movq	48(%rbp), %rax
	movl	40(%rbp), %r10d
	movl	32(%rbp), %r11d
	movl	24(%rbp), %ebx
	movl	16(%rbp), %r14d
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movsd	%xmm0, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movl	%r8d, -60(%rbp)
	movl	%r9d, -64(%rbp)
	movl	%r14d, -68(%rbp)
	movl	%ebx, -72(%rbp)
	movl	%r11d, -76(%rbp)
	movl	%r10d, -80(%rbp)
	movq	%rax, -88(%rbp)
	movq	-24(%rbp), %rax
	movl	16(%rax), %edx
	movl	%edx, -292(%rbp)
	movq	-24(%rbp), %rax
	movl	32(%rax), %edx
	movq	-24(%rbp), %rax
	cmpl	36(%rax), %edx
	jle	.LBB12_2
# BB#1:                                 # %cond.true
	movq	-24(%rbp), %rax
	movl	32(%rax), %ecx
	movl	%ecx, -340(%rbp)        # 4-byte Spill
	jmp	.LBB12_3
.LBB12_2:                               # %cond.false
	movq	-24(%rbp), %rax
	movl	36(%rax), %ecx
	movl	%ecx, -340(%rbp)        # 4-byte Spill
.LBB12_3:                               # %cond.end
	movl	-340(%rbp), %eax        # 4-byte Reload
	movl	$1, %ecx
	movl	%ecx, %esi
	imull	-292(%rbp), %eax
	movl	%eax, -304(%rbp)
	movl	-304(%rbp), %eax
	shll	$1, %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	leaq	-272(%rbp), %rsi
	leaq	-224(%rbp), %rdi
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-136(%rbp), %rax
	movslq	-304(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -96(%rbp)
	addq	$12, %rdi
	movq	%rdi, -280(%rbp)
	addq	$12, %rsi
	movq	%rsi, -288(%rbp)
	movl	-76(%rbp), %ecx
	subl	-68(%rbp), %ecx
	movl	-80(%rbp), %r8d
	subl	-72(%rbp), %r8d
	cmpl	%r8d, %ecx
	jle	.LBB12_5
# BB#4:                                 # %cond.true.10
	movl	-76(%rbp), %eax
	subl	-68(%rbp), %eax
	movl	%eax, -344(%rbp)        # 4-byte Spill
	jmp	.LBB12_6
.LBB12_5:                               # %cond.false.12
	movl	-80(%rbp), %eax
	subl	-72(%rbp), %eax
	movl	%eax, -344(%rbp)        # 4-byte Spill
.LBB12_6:                               # %cond.end.14
	movl	-344(%rbp), %eax        # 4-byte Reload
	movl	$4, %ecx
	movl	%ecx, %esi
	imull	-292(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -144(%rbp)
	cmpl	$1, -36(%rbp)
	jne	.LBB12_8
# BB#7:                                 # %if.then
	movl	$3, %edx
	movq	-280(%rbp), %rdi
	movq	-288(%rbp), %rsi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	make_curve_d
	movq	-288(%rbp), %rsi
	imull	$-2, (%rsi), %edx
	movl	%edx, -300(%rbp)
	jmp	.LBB12_9
.LBB12_8:                               # %if.else
	movl	$3, %edx
	movq	-280(%rbp), %rdi
	movq	-288(%rbp), %rsi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	make_curve
	movq	-288(%rbp), %rsi
	movl	12(%rsi), %edx
	movq	-280(%rbp), %rsi
	addl	12(%rsi), %edx
	movl	%edx, -300(%rbp)
.LBB12_9:                               # %if.end
	movl	-68(%rbp), %eax
	movl	%eax, -168(%rbp)
.LBB12_10:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_12 Depth 2
                                        #     Child Loop BB12_16 Depth 2
                                        #       Child Loop BB12_24 Depth 3
                                        #         Child Loop BB12_28 Depth 4
                                        #     Child Loop BB12_38 Depth 2
                                        #       Child Loop BB12_40 Depth 3
                                        #     Child Loop BB12_53 Depth 2
                                        #       Child Loop BB12_55 Depth 3
	movl	-168(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB12_72
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB12_10 Depth=1
	movq	-24(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movl	-168(%rbp), %edx
	movl	-72(%rbp), %ecx
	movl	-80(%rbp), %eax
	subl	-72(%rbp), %eax
	movl	%eax, %r8d
	callq	gimp_pixel_rgn_get_col
	movq	-112(%rbp), %rsi
	movq	%rsi, -120(%rbp)
	movq	-96(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movq	-144(%rbp), %rsi
	movq	%rsi, -152(%rbp)
	movl	$0, -156(%rbp)
.LBB12_12:                              # %for.cond.27
                                        #   Parent Loop BB12_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-156(%rbp), %eax
	cmpl	-292(%rbp), %eax
	jge	.LBB12_15
# BB#13:                                # %for.body.30
                                        #   in Loop: Header=BB12_12 Depth=2
	movslq	-156(%rbp), %rax
	movq	-120(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-156(%rbp), %rax
	movl	%edx, -320(%rbp,%rax,4)
	movl	-80(%rbp), %edx
	subl	-72(%rbp), %edx
	subl	$1, %edx
	imull	-292(%rbp), %edx
	addl	-156(%rbp), %edx
	movslq	%edx, %rax
	movq	-120(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-156(%rbp), %rax
	movl	%edx, -336(%rbp,%rax,4)
# BB#14:                                # %for.inc
                                        #   in Loop: Header=BB12_12 Depth=2
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	jmp	.LBB12_12
.LBB12_15:                              # %for.end
                                        #   in Loop: Header=BB12_10 Depth=1
	movl	-72(%rbp), %eax
	movl	%eax, -164(%rbp)
.LBB12_16:                              # %for.cond.44
                                        #   Parent Loop BB12_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_24 Depth 3
                                        #         Child Loop BB12_28 Depth 4
	movl	-164(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jge	.LBB12_36
# BB#17:                                # %for.body.47
                                        #   in Loop: Header=BB12_16 Depth=2
	movl	-164(%rbp), %eax
	subl	-72(%rbp), %eax
	cmpl	$3, %eax
	jge	.LBB12_19
# BB#18:                                # %cond.true.51
                                        #   in Loop: Header=BB12_16 Depth=2
	movl	-72(%rbp), %eax
	subl	-164(%rbp), %eax
	movl	%eax, -348(%rbp)        # 4-byte Spill
	jmp	.LBB12_20
.LBB12_19:                              # %cond.false.53
                                        #   in Loop: Header=BB12_16 Depth=2
	movl	$4294967293, %eax       # imm = 0xFFFFFFFD
	movl	%eax, -348(%rbp)        # 4-byte Spill
	jmp	.LBB12_20
.LBB12_20:                              # %cond.end.54
                                        #   in Loop: Header=BB12_16 Depth=2
	movl	-348(%rbp), %eax        # 4-byte Reload
	movl	%eax, -172(%rbp)
	movl	-80(%rbp), %eax
	subl	-164(%rbp), %eax
	subl	$1, %eax
	cmpl	$3, %eax
	jge	.LBB12_22
# BB#21:                                # %cond.true.60
                                        #   in Loop: Header=BB12_16 Depth=2
	movl	-80(%rbp), %eax
	subl	-164(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -352(%rbp)        # 4-byte Spill
	jmp	.LBB12_23
.LBB12_22:                              # %cond.false.63
                                        #   in Loop: Header=BB12_16 Depth=2
	movl	$3, %eax
	movl	%eax, -352(%rbp)        # 4-byte Spill
	jmp	.LBB12_23
.LBB12_23:                              # %cond.end.64
                                        #   in Loop: Header=BB12_16 Depth=2
	movl	-352(%rbp), %eax        # 4-byte Reload
	movl	%eax, -176(%rbp)
	movl	$0, -156(%rbp)
.LBB12_24:                              # %for.cond.66
                                        #   Parent Loop BB12_10 Depth=1
                                        #     Parent Loop BB12_16 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_28 Depth 4
	movl	-156(%rbp), %eax
	cmpl	-292(%rbp), %eax
	jge	.LBB12_34
# BB#25:                                # %for.body.69
                                        #   in Loop: Header=BB12_24 Depth=3
	movq	-120(%rbp), %rax
	movl	-172(%rbp), %ecx
	imull	-292(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movslq	-156(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -128(%rbp)
	movl	$0, -296(%rbp)
	movl	-172(%rbp), %ecx
	movl	%ecx, -160(%rbp)
	cmpl	$-3, -172(%rbp)
	je	.LBB12_27
# BB#26:                                # %if.then.77
                                        #   in Loop: Header=BB12_24 Depth=3
	movslq	-156(%rbp), %rax
	movl	-320(%rbp,%rax,4), %ecx
	movslq	-172(%rbp), %rax
	movq	-288(%rbp), %rdx
	movl	(%rdx,%rax,4), %esi
	movq	-288(%rbp), %rax
	subl	-12(%rax), %esi
	imull	%esi, %ecx
	addl	-296(%rbp), %ecx
	movl	%ecx, -296(%rbp)
.LBB12_27:                              # %if.end.86
                                        #   in Loop: Header=BB12_24 Depth=3
	jmp	.LBB12_28
.LBB12_28:                              # %while.cond
                                        #   Parent Loop BB12_10 Depth=1
                                        #     Parent Loop BB12_16 Depth=2
                                        #       Parent Loop BB12_24 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-160(%rbp), %eax
	cmpl	-176(%rbp), %eax
	jg	.LBB12_30
# BB#29:                                # %while.body
                                        #   in Loop: Header=BB12_28 Depth=4
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	-160(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -160(%rbp)
	movslq	%edx, %rax
	movq	-280(%rbp), %rdi
	imull	(%rdi,%rax,4), %ecx
	addl	-296(%rbp), %ecx
	movl	%ecx, -296(%rbp)
	movl	-292(%rbp), %ecx
	movq	-128(%rbp), %rax
	movslq	%ecx, %rdi
	addq	%rdi, %rax
	movq	%rax, -128(%rbp)
	jmp	.LBB12_28
.LBB12_30:                              # %while.end
                                        #   in Loop: Header=BB12_24 Depth=3
	cmpl	$3, -176(%rbp)
	je	.LBB12_32
# BB#31:                                # %if.then.99
                                        #   in Loop: Header=BB12_24 Depth=3
	movslq	-156(%rbp), %rax
	movl	-336(%rbp,%rax,4), %ecx
	movq	-288(%rbp), %rax
	movl	12(%rax), %edx
	movq	-280(%rbp), %rax
	addl	12(%rax), %edx
	movl	-176(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rax
	movq	-288(%rbp), %rdi
	subl	(%rdi,%rax,4), %edx
	imull	%edx, %ecx
	addl	-296(%rbp), %ecx
	movl	%ecx, -296(%rbp)
.LBB12_32:                              # %if.end.111
                                        #   in Loop: Header=BB12_24 Depth=3
	movl	-296(%rbp), %eax
	cltd
	idivl	-300(%rbp)
	movq	-152(%rbp), %rcx
	movq	%rcx, %rsi
	addq	$4, %rsi
	movq	%rsi, -152(%rbp)
	movl	%eax, (%rcx)
# BB#33:                                # %for.inc.112
                                        #   in Loop: Header=BB12_24 Depth=3
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	jmp	.LBB12_24
.LBB12_34:                              # %for.end.114
                                        #   in Loop: Header=BB12_16 Depth=2
	movl	-292(%rbp), %eax
	movq	-120(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -120(%rbp)
# BB#35:                                # %for.inc.117
                                        #   in Loop: Header=BB12_16 Depth=2
	movl	-164(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -164(%rbp)
	jmp	.LBB12_16
.LBB12_36:                              # %for.end.119
                                        #   in Loop: Header=BB12_10 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -152(%rbp)
	cmpl	$1, -36(%rbp)
	jne	.LBB12_52
# BB#37:                                # %if.then.122
                                        #   in Loop: Header=BB12_10 Depth=1
	movl	-72(%rbp), %eax
	movl	%eax, -164(%rbp)
.LBB12_38:                              # %for.cond.123
                                        #   Parent Loop BB12_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_40 Depth 3
	movl	-164(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jge	.LBB12_51
# BB#39:                                # %for.body.126
                                        #   in Loop: Header=BB12_38 Depth=2
	movl	$0, -156(%rbp)
.LBB12_40:                              # %for.cond.127
                                        #   Parent Loop BB12_10 Depth=1
                                        #     Parent Loop BB12_38 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-156(%rbp), %eax
	cmpl	-292(%rbp), %eax
	jge	.LBB12_49
# BB#41:                                # %for.body.130
                                        #   in Loop: Header=BB12_40 Depth=3
	movslq	-156(%rbp), %rax
	movq	-152(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	addl	$128, %edx
	movl	%edx, (%rcx,%rax,4)
	movslq	-156(%rbp), %rax
	movq	-152(%rbp), %rcx
	cmpl	$255, (%rcx,%rax,4)
	jle	.LBB12_43
# BB#42:                                # %cond.true.138
                                        #   in Loop: Header=BB12_40 Depth=3
	movl	$255, %eax
	movl	%eax, -356(%rbp)        # 4-byte Spill
	jmp	.LBB12_47
.LBB12_43:                              # %cond.false.139
                                        #   in Loop: Header=BB12_40 Depth=3
	movslq	-156(%rbp), %rax
	movq	-152(%rbp), %rcx
	cmpl	$0, (%rcx,%rax,4)
	jge	.LBB12_45
# BB#44:                                # %cond.true.144
                                        #   in Loop: Header=BB12_40 Depth=3
	xorl	%eax, %eax
	movl	%eax, -360(%rbp)        # 4-byte Spill
	jmp	.LBB12_46
.LBB12_45:                              # %cond.false.145
                                        #   in Loop: Header=BB12_40 Depth=3
	movslq	-156(%rbp), %rax
	movq	-152(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -360(%rbp)        # 4-byte Spill
.LBB12_46:                              # %cond.end.148
                                        #   in Loop: Header=BB12_40 Depth=3
	movl	-360(%rbp), %eax        # 4-byte Reload
	movl	%eax, -356(%rbp)        # 4-byte Spill
.LBB12_47:                              # %cond.end.150
                                        #   in Loop: Header=BB12_40 Depth=3
	movl	-356(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movslq	-156(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#48:                                # %for.inc.155
                                        #   in Loop: Header=BB12_40 Depth=3
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	jmp	.LBB12_40
.LBB12_49:                              # %for.end.157
                                        #   in Loop: Header=BB12_38 Depth=2
	movl	-292(%rbp), %eax
	movq	-152(%rbp), %rcx
	movslq	%eax, %rdx
	shlq	$2, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -152(%rbp)
	movl	-292(%rbp), %eax
	movq	-104(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -104(%rbp)
# BB#50:                                # %for.inc.162
                                        #   in Loop: Header=BB12_38 Depth=2
	movl	-164(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -164(%rbp)
	jmp	.LBB12_38
.LBB12_51:                              # %for.end.164
                                        #   in Loop: Header=BB12_10 Depth=1
	jmp	.LBB12_67
.LBB12_52:                              # %if.else.165
                                        #   in Loop: Header=BB12_10 Depth=1
	movl	-72(%rbp), %eax
	movl	%eax, -164(%rbp)
.LBB12_53:                              # %for.cond.166
                                        #   Parent Loop BB12_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_55 Depth 3
	movl	-164(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jge	.LBB12_66
# BB#54:                                # %for.body.169
                                        #   in Loop: Header=BB12_53 Depth=2
	movl	$0, -156(%rbp)
.LBB12_55:                              # %for.cond.170
                                        #   Parent Loop BB12_10 Depth=1
                                        #     Parent Loop BB12_53 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-156(%rbp), %eax
	cmpl	-292(%rbp), %eax
	jge	.LBB12_64
# BB#56:                                # %for.body.173
                                        #   in Loop: Header=BB12_55 Depth=3
	movslq	-156(%rbp), %rax
	movq	-152(%rbp), %rcx
	cmpl	$255, (%rcx,%rax,4)
	jle	.LBB12_58
# BB#57:                                # %cond.true.178
                                        #   in Loop: Header=BB12_55 Depth=3
	movl	$255, %eax
	movl	%eax, -364(%rbp)        # 4-byte Spill
	jmp	.LBB12_62
.LBB12_58:                              # %cond.false.179
                                        #   in Loop: Header=BB12_55 Depth=3
	movslq	-156(%rbp), %rax
	movq	-152(%rbp), %rcx
	cmpl	$0, (%rcx,%rax,4)
	jge	.LBB12_60
# BB#59:                                # %cond.true.184
                                        #   in Loop: Header=BB12_55 Depth=3
	xorl	%eax, %eax
	movl	%eax, -368(%rbp)        # 4-byte Spill
	jmp	.LBB12_61
.LBB12_60:                              # %cond.false.185
                                        #   in Loop: Header=BB12_55 Depth=3
	movslq	-156(%rbp), %rax
	movq	-152(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -368(%rbp)        # 4-byte Spill
.LBB12_61:                              # %cond.end.188
                                        #   in Loop: Header=BB12_55 Depth=3
	movl	-368(%rbp), %eax        # 4-byte Reload
	movl	%eax, -364(%rbp)        # 4-byte Spill
.LBB12_62:                              # %cond.end.190
                                        #   in Loop: Header=BB12_55 Depth=3
	movl	-364(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movslq	-156(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#63:                                # %for.inc.195
                                        #   in Loop: Header=BB12_55 Depth=3
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	jmp	.LBB12_55
.LBB12_64:                              # %for.end.197
                                        #   in Loop: Header=BB12_53 Depth=2
	movl	-292(%rbp), %eax
	movq	-152(%rbp), %rcx
	movslq	%eax, %rdx
	shlq	$2, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -152(%rbp)
	movl	-292(%rbp), %eax
	movq	-104(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -104(%rbp)
# BB#65:                                # %for.inc.202
                                        #   in Loop: Header=BB12_53 Depth=2
	movl	-164(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -164(%rbp)
	jmp	.LBB12_53
.LBB12_66:                              # %for.end.204
                                        #   in Loop: Header=BB12_10 Depth=1
	jmp	.LBB12_67
.LBB12_67:                              # %if.end.205
                                        #   in Loop: Header=BB12_10 Depth=1
	movq	-32(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movl	-168(%rbp), %edx
	movl	-72(%rbp), %ecx
	movl	-80(%rbp), %eax
	subl	-72(%rbp), %eax
	movl	%eax, %r8d
	callq	gimp_pixel_rgn_set_col
	movq	-56(%rbp), %rsi
	movl	(%rsi), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, (%rsi)
	cltd
	idivl	-64(%rbp)
	cmpl	$0, %edx
	jne	.LBB12_70
# BB#68:                                # %land.lhs.true
                                        #   in Loop: Header=BB12_10 Depth=1
	cmpq	$0, -88(%rbp)
	jne	.LBB12_70
# BB#69:                                # %if.then.209
                                        #   in Loop: Header=BB12_10 Depth=1
	movq	-56(%rbp), %rax
	cvtsi2sdl	(%rax), %xmm0
	cvtsi2sdl	-60(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -372(%rbp)        # 4-byte Spill
.LBB12_70:                              # %if.end.214
                                        #   in Loop: Header=BB12_10 Depth=1
	jmp	.LBB12_71
.LBB12_71:                              # %for.inc.215
                                        #   in Loop: Header=BB12_10 Depth=1
	movl	-168(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -168(%rbp)
	jmp	.LBB12_10
.LBB12_72:                              # %for.end.217
	cmpl	$0, -36(%rbp)
	jne	.LBB12_74
# BB#73:                                # %if.then.220
	movl	$3, %edx
	movq	-280(%rbp), %rdi
	movq	-288(%rbp), %rsi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	make_curve_d
	movq	-288(%rbp), %rsi
	imull	$-2, (%rsi), %edx
	movl	%edx, -300(%rbp)
	jmp	.LBB12_75
.LBB12_74:                              # %if.else.223
	movl	$3, %edx
	movq	-280(%rbp), %rdi
	movq	-288(%rbp), %rsi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	make_curve
	movq	-288(%rbp), %rsi
	movl	12(%rsi), %edx
	movq	-280(%rbp), %rsi
	addl	12(%rsi), %edx
	movl	%edx, -300(%rbp)
.LBB12_75:                              # %if.end.227
	movl	-72(%rbp), %eax
	movl	%eax, -164(%rbp)
.LBB12_76:                              # %for.cond.228
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_78 Depth 2
                                        #     Child Loop BB12_82 Depth 2
                                        #       Child Loop BB12_90 Depth 3
                                        #         Child Loop BB12_94 Depth 4
                                        #     Child Loop BB12_104 Depth 2
                                        #       Child Loop BB12_106 Depth 3
                                        #     Child Loop BB12_119 Depth 2
                                        #       Child Loop BB12_121 Depth 3
	movl	-164(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jge	.LBB12_138
# BB#77:                                # %for.body.231
                                        #   in Loop: Header=BB12_76 Depth=1
	movq	-32(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movl	-68(%rbp), %edx
	movl	-164(%rbp), %ecx
	movl	-76(%rbp), %eax
	subl	-68(%rbp), %eax
	movl	%eax, %r8d
	callq	gimp_pixel_rgn_get_row
	movq	-112(%rbp), %rsi
	movq	%rsi, -120(%rbp)
	movq	-96(%rbp), %rsi
	movq	%rsi, -104(%rbp)
	movq	-144(%rbp), %rsi
	movq	%rsi, -152(%rbp)
	movl	$0, -156(%rbp)
.LBB12_78:                              # %for.cond.233
                                        #   Parent Loop BB12_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-156(%rbp), %eax
	cmpl	-292(%rbp), %eax
	jge	.LBB12_81
# BB#79:                                # %for.body.236
                                        #   in Loop: Header=BB12_78 Depth=2
	movslq	-156(%rbp), %rax
	movq	-120(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-156(%rbp), %rax
	movl	%edx, -320(%rbp,%rax,4)
	movl	-76(%rbp), %edx
	subl	-68(%rbp), %edx
	subl	$1, %edx
	imull	-292(%rbp), %edx
	addl	-156(%rbp), %edx
	movslq	%edx, %rax
	movq	-120(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-156(%rbp), %rax
	movl	%edx, -336(%rbp,%rax,4)
# BB#80:                                # %for.inc.251
                                        #   in Loop: Header=BB12_78 Depth=2
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	jmp	.LBB12_78
.LBB12_81:                              # %for.end.253
                                        #   in Loop: Header=BB12_76 Depth=1
	movl	-68(%rbp), %eax
	movl	%eax, -168(%rbp)
.LBB12_82:                              # %for.cond.254
                                        #   Parent Loop BB12_76 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_90 Depth 3
                                        #         Child Loop BB12_94 Depth 4
	movl	-168(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB12_102
# BB#83:                                # %for.body.257
                                        #   in Loop: Header=BB12_82 Depth=2
	movl	-168(%rbp), %eax
	subl	-68(%rbp), %eax
	cmpl	$3, %eax
	jge	.LBB12_85
# BB#84:                                # %cond.true.261
                                        #   in Loop: Header=BB12_82 Depth=2
	movl	-68(%rbp), %eax
	subl	-168(%rbp), %eax
	movl	%eax, -376(%rbp)        # 4-byte Spill
	jmp	.LBB12_86
.LBB12_85:                              # %cond.false.263
                                        #   in Loop: Header=BB12_82 Depth=2
	movl	$4294967293, %eax       # imm = 0xFFFFFFFD
	movl	%eax, -376(%rbp)        # 4-byte Spill
	jmp	.LBB12_86
.LBB12_86:                              # %cond.end.264
                                        #   in Loop: Header=BB12_82 Depth=2
	movl	-376(%rbp), %eax        # 4-byte Reload
	movl	%eax, -172(%rbp)
	movl	-76(%rbp), %eax
	subl	-168(%rbp), %eax
	subl	$1, %eax
	cmpl	$3, %eax
	jge	.LBB12_88
# BB#87:                                # %cond.true.270
                                        #   in Loop: Header=BB12_82 Depth=2
	movl	-76(%rbp), %eax
	subl	-168(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -380(%rbp)        # 4-byte Spill
	jmp	.LBB12_89
.LBB12_88:                              # %cond.false.273
                                        #   in Loop: Header=BB12_82 Depth=2
	movl	$3, %eax
	movl	%eax, -380(%rbp)        # 4-byte Spill
	jmp	.LBB12_89
.LBB12_89:                              # %cond.end.274
                                        #   in Loop: Header=BB12_82 Depth=2
	movl	-380(%rbp), %eax        # 4-byte Reload
	movl	%eax, -176(%rbp)
	movl	$0, -156(%rbp)
.LBB12_90:                              # %for.cond.276
                                        #   Parent Loop BB12_76 Depth=1
                                        #     Parent Loop BB12_82 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_94 Depth 4
	movl	-156(%rbp), %eax
	cmpl	-292(%rbp), %eax
	jge	.LBB12_100
# BB#91:                                # %for.body.279
                                        #   in Loop: Header=BB12_90 Depth=3
	movq	-120(%rbp), %rax
	movl	-172(%rbp), %ecx
	imull	-292(%rbp), %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movslq	-156(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -128(%rbp)
	movl	$0, -296(%rbp)
	movl	-172(%rbp), %ecx
	movl	%ecx, -160(%rbp)
	cmpl	$-3, -172(%rbp)
	je	.LBB12_93
# BB#92:                                # %if.then.287
                                        #   in Loop: Header=BB12_90 Depth=3
	movslq	-156(%rbp), %rax
	movl	-320(%rbp,%rax,4), %ecx
	movslq	-172(%rbp), %rax
	movq	-288(%rbp), %rdx
	movl	(%rdx,%rax,4), %esi
	movq	-288(%rbp), %rax
	subl	-12(%rax), %esi
	imull	%esi, %ecx
	addl	-296(%rbp), %ecx
	movl	%ecx, -296(%rbp)
.LBB12_93:                              # %if.end.296
                                        #   in Loop: Header=BB12_90 Depth=3
	jmp	.LBB12_94
.LBB12_94:                              # %while.cond.297
                                        #   Parent Loop BB12_76 Depth=1
                                        #     Parent Loop BB12_82 Depth=2
                                        #       Parent Loop BB12_90 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-160(%rbp), %eax
	cmpl	-176(%rbp), %eax
	jg	.LBB12_96
# BB#95:                                # %while.body.300
                                        #   in Loop: Header=BB12_94 Depth=4
	movq	-128(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	-160(%rbp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, -160(%rbp)
	movslq	%edx, %rax
	movq	-280(%rbp), %rdi
	imull	(%rdi,%rax,4), %ecx
	addl	-296(%rbp), %ecx
	movl	%ecx, -296(%rbp)
	movl	-292(%rbp), %ecx
	movq	-128(%rbp), %rax
	movslq	%ecx, %rdi
	addq	%rdi, %rax
	movq	%rax, -128(%rbp)
	jmp	.LBB12_94
.LBB12_96:                              # %while.end.309
                                        #   in Loop: Header=BB12_90 Depth=3
	cmpl	$3, -176(%rbp)
	je	.LBB12_98
# BB#97:                                # %if.then.312
                                        #   in Loop: Header=BB12_90 Depth=3
	movslq	-156(%rbp), %rax
	movl	-336(%rbp,%rax,4), %ecx
	movq	-288(%rbp), %rax
	movl	12(%rax), %edx
	movq	-280(%rbp), %rax
	addl	12(%rax), %edx
	movl	-176(%rbp), %esi
	addl	$1, %esi
	movslq	%esi, %rax
	movq	-288(%rbp), %rdi
	subl	(%rdi,%rax,4), %edx
	imull	%edx, %ecx
	addl	-296(%rbp), %ecx
	movl	%ecx, -296(%rbp)
.LBB12_98:                              # %if.end.324
                                        #   in Loop: Header=BB12_90 Depth=3
	movl	-296(%rbp), %eax
	cltd
	idivl	-300(%rbp)
	movq	-152(%rbp), %rcx
	movq	%rcx, %rsi
	addq	$4, %rsi
	movq	%rsi, -152(%rbp)
	movl	%eax, (%rcx)
# BB#99:                                # %for.inc.327
                                        #   in Loop: Header=BB12_90 Depth=3
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	jmp	.LBB12_90
.LBB12_100:                             # %for.end.329
                                        #   in Loop: Header=BB12_82 Depth=2
	movl	-292(%rbp), %eax
	movq	-120(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -120(%rbp)
# BB#101:                               # %for.inc.332
                                        #   in Loop: Header=BB12_82 Depth=2
	movl	-168(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -168(%rbp)
	jmp	.LBB12_82
.LBB12_102:                             # %for.end.334
                                        #   in Loop: Header=BB12_76 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -152(%rbp)
	cmpl	$0, -36(%rbp)
	jne	.LBB12_118
# BB#103:                               # %if.then.337
                                        #   in Loop: Header=BB12_76 Depth=1
	movl	-68(%rbp), %eax
	movl	%eax, -168(%rbp)
.LBB12_104:                             # %for.cond.338
                                        #   Parent Loop BB12_76 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_106 Depth 3
	movl	-168(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB12_117
# BB#105:                               # %for.body.341
                                        #   in Loop: Header=BB12_104 Depth=2
	movl	$0, -156(%rbp)
.LBB12_106:                             # %for.cond.342
                                        #   Parent Loop BB12_76 Depth=1
                                        #     Parent Loop BB12_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-156(%rbp), %eax
	cmpl	-292(%rbp), %eax
	jge	.LBB12_115
# BB#107:                               # %for.body.345
                                        #   in Loop: Header=BB12_106 Depth=3
	movslq	-156(%rbp), %rax
	movq	-152(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	addl	$128, %edx
	movl	%edx, (%rcx,%rax,4)
	movslq	-156(%rbp), %rax
	movq	-152(%rbp), %rcx
	cmpl	$255, (%rcx,%rax,4)
	jle	.LBB12_109
# BB#108:                               # %cond.true.353
                                        #   in Loop: Header=BB12_106 Depth=3
	movl	$255, %eax
	movl	%eax, -384(%rbp)        # 4-byte Spill
	jmp	.LBB12_113
.LBB12_109:                             # %cond.false.354
                                        #   in Loop: Header=BB12_106 Depth=3
	movslq	-156(%rbp), %rax
	movq	-152(%rbp), %rcx
	cmpl	$0, (%rcx,%rax,4)
	jge	.LBB12_111
# BB#110:                               # %cond.true.359
                                        #   in Loop: Header=BB12_106 Depth=3
	xorl	%eax, %eax
	movl	%eax, -388(%rbp)        # 4-byte Spill
	jmp	.LBB12_112
.LBB12_111:                             # %cond.false.360
                                        #   in Loop: Header=BB12_106 Depth=3
	movslq	-156(%rbp), %rax
	movq	-152(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -388(%rbp)        # 4-byte Spill
.LBB12_112:                             # %cond.end.363
                                        #   in Loop: Header=BB12_106 Depth=3
	movl	-388(%rbp), %eax        # 4-byte Reload
	movl	%eax, -384(%rbp)        # 4-byte Spill
.LBB12_113:                             # %cond.end.365
                                        #   in Loop: Header=BB12_106 Depth=3
	movl	-384(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movslq	-156(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#114:                               # %for.inc.370
                                        #   in Loop: Header=BB12_106 Depth=3
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	jmp	.LBB12_106
.LBB12_115:                             # %for.end.372
                                        #   in Loop: Header=BB12_104 Depth=2
	movl	-292(%rbp), %eax
	movq	-152(%rbp), %rcx
	movslq	%eax, %rdx
	shlq	$2, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -152(%rbp)
	movl	-292(%rbp), %eax
	movq	-104(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -104(%rbp)
# BB#116:                               # %for.inc.377
                                        #   in Loop: Header=BB12_104 Depth=2
	movl	-168(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -168(%rbp)
	jmp	.LBB12_104
.LBB12_117:                             # %for.end.379
                                        #   in Loop: Header=BB12_76 Depth=1
	jmp	.LBB12_133
.LBB12_118:                             # %if.else.380
                                        #   in Loop: Header=BB12_76 Depth=1
	movl	-68(%rbp), %eax
	movl	%eax, -168(%rbp)
.LBB12_119:                             # %for.cond.381
                                        #   Parent Loop BB12_76 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_121 Depth 3
	movl	-168(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB12_132
# BB#120:                               # %for.body.384
                                        #   in Loop: Header=BB12_119 Depth=2
	movl	$0, -156(%rbp)
.LBB12_121:                             # %for.cond.385
                                        #   Parent Loop BB12_76 Depth=1
                                        #     Parent Loop BB12_119 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-156(%rbp), %eax
	cmpl	-292(%rbp), %eax
	jge	.LBB12_130
# BB#122:                               # %for.body.388
                                        #   in Loop: Header=BB12_121 Depth=3
	movslq	-156(%rbp), %rax
	movq	-152(%rbp), %rcx
	cmpl	$255, (%rcx,%rax,4)
	jle	.LBB12_124
# BB#123:                               # %cond.true.393
                                        #   in Loop: Header=BB12_121 Depth=3
	movl	$255, %eax
	movl	%eax, -392(%rbp)        # 4-byte Spill
	jmp	.LBB12_128
.LBB12_124:                             # %cond.false.394
                                        #   in Loop: Header=BB12_121 Depth=3
	movslq	-156(%rbp), %rax
	movq	-152(%rbp), %rcx
	cmpl	$0, (%rcx,%rax,4)
	jge	.LBB12_126
# BB#125:                               # %cond.true.399
                                        #   in Loop: Header=BB12_121 Depth=3
	xorl	%eax, %eax
	movl	%eax, -396(%rbp)        # 4-byte Spill
	jmp	.LBB12_127
.LBB12_126:                             # %cond.false.400
                                        #   in Loop: Header=BB12_121 Depth=3
	movslq	-156(%rbp), %rax
	movq	-152(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -396(%rbp)        # 4-byte Spill
.LBB12_127:                             # %cond.end.403
                                        #   in Loop: Header=BB12_121 Depth=3
	movl	-396(%rbp), %eax        # 4-byte Reload
	movl	%eax, -392(%rbp)        # 4-byte Spill
.LBB12_128:                             # %cond.end.405
                                        #   in Loop: Header=BB12_121 Depth=3
	movl	-392(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movslq	-156(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#129:                               # %for.inc.410
                                        #   in Loop: Header=BB12_121 Depth=3
	movl	-156(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -156(%rbp)
	jmp	.LBB12_121
.LBB12_130:                             # %for.end.412
                                        #   in Loop: Header=BB12_119 Depth=2
	movl	-292(%rbp), %eax
	movq	-152(%rbp), %rcx
	movslq	%eax, %rdx
	shlq	$2, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -152(%rbp)
	movl	-292(%rbp), %eax
	movq	-104(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -104(%rbp)
# BB#131:                               # %for.inc.417
                                        #   in Loop: Header=BB12_119 Depth=2
	movl	-168(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -168(%rbp)
	jmp	.LBB12_119
.LBB12_132:                             # %for.end.419
                                        #   in Loop: Header=BB12_76 Depth=1
	jmp	.LBB12_133
.LBB12_133:                             # %if.end.420
                                        #   in Loop: Header=BB12_76 Depth=1
	movq	-32(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movl	-68(%rbp), %edx
	movl	-164(%rbp), %ecx
	movl	-76(%rbp), %eax
	subl	-68(%rbp), %eax
	movl	%eax, %r8d
	callq	gimp_pixel_rgn_set_row
	movq	-56(%rbp), %rsi
	movl	(%rsi), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, (%rsi)
	cltd
	idivl	-64(%rbp)
	cmpl	$0, %edx
	jne	.LBB12_136
# BB#134:                               # %land.lhs.true.425
                                        #   in Loop: Header=BB12_76 Depth=1
	cmpq	$0, -88(%rbp)
	jne	.LBB12_136
# BB#135:                               # %if.then.427
                                        #   in Loop: Header=BB12_76 Depth=1
	movq	-56(%rbp), %rax
	cvtsi2sdl	(%rax), %xmm0
	cvtsi2sdl	-60(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -400(%rbp)        # 4-byte Spill
.LBB12_136:                             # %if.end.432
                                        #   in Loop: Header=BB12_76 Depth=1
	jmp	.LBB12_137
.LBB12_137:                             # %for.inc.433
                                        #   in Loop: Header=BB12_76 Depth=1
	movl	-164(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -164(%rbp)
	jmp	.LBB12_76
.LBB12_138:                             # %for.end.435
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-136(%rbp), %rdi
	callq	g_free
	addq	$384, %rsp              # imm = 0x180
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gaussian_deriv, .Lfunc_end12-gaussian_deriv
	.cfi_endproc

	.align	16, 0x90
	.type	find_max_gradient,@function
find_max_gradient:                      # @find_max_gradient
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
	subq	$96, %rsp
	movl	$2, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	%eax, %edi
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -56(%rbp)
.LBB13_1:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_3 Depth 2
                                        #       Child Loop BB13_5 Depth 3
                                        #         Child Loop BB13_7 Depth 4
	cmpq	$0, -56(%rbp)
	je	.LBB13_23
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -60(%rbp)
.LBB13_3:                               # %for.cond
                                        #   Parent Loop BB13_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_5 Depth 3
                                        #         Child Loop BB13_7 Depth 4
	movl	-60(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jge	.LBB13_22
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB13_3 Depth=2
	movl	$0, -64(%rbp)
.LBB13_5:                               # %for.cond.2
                                        #   Parent Loop BB13_1 Depth=1
                                        #     Parent Loop BB13_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB13_7 Depth 4
	movl	-64(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	32(%rcx), %eax
	jge	.LBB13_20
# BB#6:                                 # %for.body.4
                                        #   in Loop: Header=BB13_5 Depth=3
	movl	$0, -72(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movslq	16(%rcx), %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
.LBB13_7:                               # %for.cond.5
                                        #   Parent Loop BB13_1 Depth=1
                                        #     Parent Loop BB13_3 Depth=2
                                        #       Parent Loop BB13_5 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jae	.LBB13_18
# BB#8:                                 # %for.body.7
                                        #   in Loop: Header=BB13_7 Depth=4
	movq	-24(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jl	.LBB13_10
# BB#9:                                 # %cond.true
                                        #   in Loop: Header=BB13_7 Depth=4
	movl	-68(%rbp), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB13_11
.LBB13_10:                              # %cond.false
                                        #   in Loop: Header=BB13_7 Depth=4
	xorl	%eax, %eax
	subl	-68(%rbp), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB13_11:                              # %cond.end
                                        #   in Loop: Header=BB13_7 Depth=4
	movl	-76(%rbp), %eax         # 4-byte Reload
	cmpl	$0, -72(%rbp)
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jl	.LBB13_13
# BB#12:                                # %cond.true.12
                                        #   in Loop: Header=BB13_7 Depth=4
	movl	-72(%rbp), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB13_14
.LBB13_13:                              # %cond.false.13
                                        #   in Loop: Header=BB13_7 Depth=4
	xorl	%eax, %eax
	subl	-72(%rbp), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB13_14:                              # %cond.end.15
                                        #   in Loop: Header=BB13_7 Depth=4
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	-80(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB13_16
# BB#15:                                # %if.then
                                        #   in Loop: Header=BB13_7 Depth=4
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
.LBB13_16:                              # %if.end
                                        #   in Loop: Header=BB13_7 Depth=4
	jmp	.LBB13_17
.LBB13_17:                              # %for.inc
                                        #   in Loop: Header=BB13_7 Depth=4
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB13_7
.LBB13_18:                              # %for.end
                                        #   in Loop: Header=BB13_5 Depth=3
	movl	-72(%rbp), %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, -32(%rbp)
	movb	%cl, (%rdx)
	movq	-8(%rbp), %rdx
	movl	16(%rdx), %eax
	movq	-24(%rbp), %rdx
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, -24(%rbp)
# BB#19:                                # %for.inc.24
                                        #   in Loop: Header=BB13_5 Depth=3
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB13_5
.LBB13_20:                              # %for.end.25
                                        #   in Loop: Header=BB13_3 Depth=2
	movq	-8(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	32(%rax), %edx
	movq	-8(%rbp), %rax
	imull	16(%rax), %edx
	subl	%edx, %ecx
	movq	-24(%rbp), %rax
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-16(%rbp), %rax
	subl	32(%rax), %ecx
	movq	-32(%rbp), %rax
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movq	%rax, -32(%rbp)
# BB#21:                                # %for.inc.36
                                        #   in Loop: Header=BB13_3 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB13_3
.LBB13_22:                              # %for.end.38
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-56(%rbp), %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -56(%rbp)
	jmp	.LBB13_1
.LBB13_23:                              # %while.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	find_max_gradient, .Lfunc_end13-find_max_gradient
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4643176031446892544     # double 255
.LCPI14_1:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	make_curve_d,@function
make_curve_d:                           # @make_curve_d
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movl	%edx, -28(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-24(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	-8(%rbp), %rsi
	movl	$0, (%rsi)
	movl	$1, -44(%rbp)
.LBB14_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jg	.LBB14_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB14_1 Depth=1
	movsd	.LCPI14_1, %xmm0        # xmm0 = mem[0],zero
	xorl	%eax, %eax
	cvtsi2sdl	-44(%rbp), %xmm1
	movl	-44(%rbp), %ecx
	imull	-44(%rbp), %ecx
	subl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	-40(%rbp), %xmm0
	divsd	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -56(%rbp)        # 8-byte Spill
	callq	exp
	xorl	%eax, %eax
	movsd	.LCPI14_0, %xmm1        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	divsd	-40(%rbp), %xmm2
	mulsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %ecx
	movslq	-44(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movl	%ecx, (%rsi,%rdx,4)
	movslq	-44(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movl	%eax, %ecx
	subl	(%rsi,%rdx,4), %ecx
	subl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movl	%ecx, (%rsi,%rdx,4)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB14_1
.LBB14_4:                               # %for.end
	xorl	%eax, %eax
	subl	-28(%rbp), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movl	$0, (%rdx,%rcx,4)
	movq	-16(%rbp), %rcx
	movl	$0, (%rcx)
	movl	$1, -44(%rbp)
.LBB14_5:                               # %for.cond.19
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jg	.LBB14_8
# BB#6:                                 # %for.body.22
                                        #   in Loop: Header=BB14_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	subl	-28(%rbp), %ecx
	addl	-44(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-16(%rbp), %rsi
	movl	(%rsi,%rdx,4), %ecx
	movl	%eax, %edi
	subl	-28(%rbp), %edi
	addl	-44(%rbp), %edi
	subl	$1, %edi
	movslq	%edi, %rdx
	movq	-8(%rbp), %rsi
	addl	(%rsi,%rdx,4), %ecx
	subl	-28(%rbp), %eax
	addl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rsi
	movl	%ecx, (%rsi,%rdx,4)
	movl	-44(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rdx
	movq	-16(%rbp), %rsi
	movl	(%rsi,%rdx,4), %eax
	movl	-44(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	-8(%rbp), %rsi
	addl	(%rsi,%rdx,4), %eax
	movslq	-44(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movl	%eax, (%rsi,%rdx,4)
# BB#7:                                 # %for.inc.46
                                        #   in Loop: Header=BB14_5 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB14_5
.LBB14_8:                               # %for.end.48
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	make_curve_d, .Lfunc_end14-make_curve_d
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4643176031446892544     # double 255
.LCPI15_1:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	make_curve,@function
make_curve:                             # @make_curve
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movl	%edx, -28(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-24(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	-8(%rbp), %rsi
	movl	$255, (%rsi)
	movl	$1, -44(%rbp)
.LBB15_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jg	.LBB15_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB15_1 Depth=1
	movsd	.LCPI15_1, %xmm0        # xmm0 = mem[0],zero
	xorl	%eax, %eax
	movl	-44(%rbp), %ecx
	imull	-44(%rbp), %ecx
	subl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm1
	mulsd	-40(%rbp), %xmm0
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	exp
	xorl	%eax, %eax
	movsd	.LCPI15_0, %xmm1        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movslq	-44(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movl	%ecx, (%rsi,%rdx,4)
	movslq	-44(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movl	(%rsi,%rdx,4), %ecx
	subl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	movl	%ecx, (%rsi,%rdx,4)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB15_1
.LBB15_4:                               # %for.end
	xorl	%eax, %eax
	movl	%eax, %ecx
	subl	-28(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-16(%rbp), %rsi
	movl	$0, (%rsi,%rdx,4)
	subl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
.LBB15_5:                               # %for.cond.15
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jg	.LBB15_8
# BB#6:                                 # %for.body.18
                                        #   in Loop: Header=BB15_5 Depth=1
	movl	-44(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movl	(%rdx,%rcx,4), %eax
	movl	-44(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rcx
	movq	-8(%rbp), %rdx
	addl	(%rdx,%rcx,4), %eax
	movslq	-44(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
# BB#7:                                 # %for.inc.28
                                        #   in Loop: Header=BB15_5 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB15_5
.LBB15_8:                               # %for.end.30
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	make_curve, .Lfunc_end15-make_curve
	.cfi_endproc

	.align	16, 0x90
	.type	fp_rand,@function
fp_rand:                                # @fp_rand
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
	subq	$16, %rsp
	movsd	%xmm0, -8(%rbp)
	callq	g_random_double
	mulsd	-8(%rbp), %xmm0
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	fp_rand, .Lfunc_end16-fp_rand
	.cfi_endproc

	.align	16, 0x90
	.type	polygon_reset,@function
polygon_reset:                          # @polygon_reset
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$0, (%rdi)
	popq	%rbp
	retq
.Lfunc_end17:
	.size	polygon_reset, .Lfunc_end17-polygon_reset
	.cfi_endproc

	.align	16, 0x90
	.type	polygon_add_point,@function
polygon_add_point:                      # @polygon_add_point
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$12, (%rdi)
	jae	.LBB18_2
# BB#1:                                 # %if.then
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-8(%rbp), %rdx
	addq	$8, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	%xmm0, (%rdx)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %eax
	movq	-8(%rbp), %rdx
	addq	$8, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	%xmm0, 8(%rdx)
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	jmp	.LBB18_3
.LBB18_2:                               # %if.else
	movabsq	$.L.str.68, %rdi
	movb	$0, %al
	callq	g_warning
.LBB18_3:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	polygon_add_point, .Lfunc_end18-polygon_add_point
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI19_0:
	.quad	4638637247447433216     # double 127
.LCPI19_1:
	.quad	4620130267728707584     # double 7.5
.LCPI19_2:
	.quad	4638707616191610880     # double 128
.LCPI19_3:
	.quad	4602678819172646912     # double 0.5
.LCPI19_4:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	process_poly,@function
process_poly:                           # @process_poly
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
	pushq	%rbx
	subq	$232, %rsp
.Ltmp75:
	.cfi_offset %rbx, -24
	movq	40(%rbp), %rax
	movl	32(%rbp), %r10d
	movl	24(%rbp), %r11d
	movl	16(%rbp), %ebx
	xorps	%xmm0, %xmm0
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	%r9d, -48(%rbp)
	movl	%ebx, -52(%rbp)
	movl	%r11d, -56(%rbp)
	movl	%r10d, -60(%rbp)
	movq	%rax, -72(%rbp)
	movsd	%xmm0, -120(%rbp)
	movsd	%xmm0, -128(%rbp)
	cmpl	$0, -44(%rbp)
	je	.LBB19_2
# BB#1:                                 # %cond.true
	movsd	mvals+48, %xmm0         # xmm0 = mem[0],zero
	callq	fp_rand
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	jmp	.LBB19_3
.LBB19_2:                               # %cond.false
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	jmp	.LBB19_3
.LBB19_3:                               # %cond.end
	movsd	-160(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorl	%edi, %edi
	movl	$2, %esi
	movsd	%xmm0, -152(%rbp)
	callq	g_random_int_range
	cmpl	$0, %eax
	je	.LBB19_5
# BB#4:                                 # %cond.true.3
	movsd	.LCPI19_0, %xmm0        # xmm0 = mem[0],zero
	mulsd	-152(%rbp), %xmm0
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	jmp	.LBB19_6
.LBB19_5:                               # %cond.false.4
	movsd	.LCPI19_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -168(%rbp)       # 8-byte Spill
.LBB19_6:                               # %cond.end.6
	movsd	-168(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	leaq	-112(%rbp), %r9
	leaq	-96(%rbp), %r8
	movsd	%xmm0, -152(%rbp)
	movq	-16(%rbp), %rdi
	movq	m_grad, %rsi
	movq	h_grad, %rdx
	movq	v_grad, %rcx
	movl	-48(%rbp), %eax
	movl	-52(%rbp), %r10d
	movl	-56(%rbp), %r11d
	movl	-60(%rbp), %ebx
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%r11d, 16(%rsp)
	movl	%ebx, 24(%rsp)
	callq	find_poly_dir
	leaq	-120(%rbp), %rsi
	leaq	-128(%rbp), %rdx
	movsd	.LCPI19_2, %xmm0        # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm1
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	movsd	-88(%rbp), %xmm3        # xmm3 = mem[0],zero
	subsd	%xmm0, %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	movaps	%xmm1, %xmm0
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	callq	sqrt
	movsd	%xmm0, -136(%rbp)
	movq	-16(%rbp), %rdi
	movq	-176(%rbp), %rsi        # 8-byte Reload
	movq	-184(%rbp), %rdx        # 8-byte Reload
	callq	polygon_find_center
	movsd	.LCPI19_1, %xmm0        # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	-120(%rbp), %xmm1
	movsd	-112(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	-120(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	movsd	-104(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	-128(%rbp), %xmm2
	movsd	-104(%rbp), %xmm3       # xmm3 = mem[0],zero
	subsd	-128(%rbp), %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movl	%eax, -196(%rbp)        # 4-byte Spill
	callq	sqrt
	movsd	%xmm0, -144(%rbp)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-192(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB19_10
# BB#7:                                 # %land.lhs.true
	movsd	.LCPI19_3, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI19_4, %xmm1        # xmm1 = mem[0],zero
	mulsd	-144(%rbp), %xmm1
	divsd	mvals, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB19_10
# BB#8:                                 # %land.lhs.true.34
	cmpl	$0, -20(%rbp)
	je	.LBB19_10
# BB#9:                                 # %if.then
	leaq	-96(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-48(%rbp), %r8d
	movl	-52(%rbp), %r9d
	movl	-56(%rbp), %eax
	movl	-60(%rbp), %r10d
	movq	-72(%rbp), %r11
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	movq	%r11, 16(%rsp)
	callq	split_poly
	jmp	.LBB19_11
.LBB19_10:                              # %if.else
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	movl	-48(%rbp), %ecx
	movl	-52(%rbp), %r8d
	movl	-56(%rbp), %r9d
	movl	-60(%rbp), %eax
	movq	-72(%rbp), %r10
	movl	%eax, (%rsp)
	movq	%r10, 8(%rsp)
	callq	render_poly
.LBB19_11:                              # %if.end
	addq	$232, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end19:
	.size	process_poly, .Lfunc_end19-process_poly
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
.Ltmp77:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp78:
	.cfi_def_cfa_register %rbp
	subq	$384, %rsp              # imm = 0x180
	testb	%al, %al
	movaps	%xmm7, -224(%rbp)       # 16-byte Spill
	movaps	%xmm6, -240(%rbp)       # 16-byte Spill
	movaps	%xmm5, -256(%rbp)       # 16-byte Spill
	movaps	%xmm4, -272(%rbp)       # 16-byte Spill
	movaps	%xmm3, -288(%rbp)       # 16-byte Spill
	movaps	%xmm2, -304(%rbp)       # 16-byte Spill
	movaps	%xmm1, -320(%rbp)       # 16-byte Spill
	movaps	%xmm0, -336(%rbp)       # 16-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r9, -352(%rbp)         # 8-byte Spill
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	je	.LBB20_2
# BB#1:                                 # %entry
	movaps	-336(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -160(%rbp)
	movaps	-320(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -144(%rbp)
	movaps	-304(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -128(%rbp)
	movaps	-288(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -112(%rbp)
	movaps	-272(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -96(%rbp)
	movaps	-256(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -80(%rbp)
	movaps	-240(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -64(%rbp)
	movaps	-224(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -48(%rbp)
.LBB20_2:                               # %entry
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -184(%rbp)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -192(%rbp)
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -200(%rbp)
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	leaq	-208(%rbp), %r8
	movq	%r8, -16(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end20:
	.size	g_warning, .Lfunc_end20-g_warning
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI21_0:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI21_1:
	.quad	4638707616191610880     # double 128
.LCPI21_2:
	.quad	4620130267728707584     # double 7.5
	.text
	.align	16, 0x90
	.type	find_poly_dir,@function
find_poly_dir:                          # @find_poly_dir
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
.Ltmp80:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp81:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$232, %rsp
.Ltmp82:
	.cfi_offset %rbx, -56
.Ltmp83:
	.cfi_offset %r12, -48
.Ltmp84:
	.cfi_offset %r13, -40
.Ltmp85:
	.cfi_offset %r14, -32
.Ltmp86:
	.cfi_offset %r15, -24
	movl	40(%rbp), %eax
	movl	32(%rbp), %r10d
	movl	24(%rbp), %r11d
	movl	16(%rbp), %ebx
	leaq	-112(%rbp), %r14
	leaq	-120(%rbp), %r15
	leaq	-128(%rbp), %r12
	leaq	-136(%rbp), %r13
	xorps	%xmm0, %xmm0
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movq	%r8, -80(%rbp)
	movq	%r9, -88(%rbp)
	movl	%ebx, -92(%rbp)
	movl	%r11d, -96(%rbp)
	movl	%r10d, -100(%rbp)
	movl	%eax, -104(%rbp)
	movsd	%xmm0, -112(%rbp)
	movsd	%xmm0, -120(%rbp)
	movsd	%xmm0, -128(%rbp)
	movsd	%xmm0, -136(%rbp)
	movl	-100(%rbp), %eax
	subl	-92(%rbp), %eax
	movl	%eax, -228(%rbp)
	movl	$0, -220(%rbp)
	movl	$0, -224(%rbp)
	movq	-80(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	movq	-80(%rbp), %rcx
	movsd	%xmm0, 8(%rcx)
	movq	-88(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	movq	-88(%rbp), %rcx
	movsd	%xmm0, 8(%rcx)
	movq	-48(%rbp), %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	movq	%r12, %rcx
	movq	%r13, %r8
	callq	polygon_extents
	movl	$4, %r10d
	movl	%r10d, %esi
	cvttsd2si	-112(%rbp), %r10d
	movl	%r10d, -156(%rbp)
	cvttsd2si	-120(%rbp), %r10d
	movl	%r10d, -160(%rbp)
	cvttsd2si	-128(%rbp), %r10d
	movl	%r10d, -164(%rbp)
	cvttsd2si	-136(%rbp), %r10d
	movl	%r10d, -168(%rbp)
	movl	-168(%rbp), %r10d
	subl	-160(%rbp), %r10d
	movl	%r10d, -172(%rbp)
	movslq	-172(%rbp), %rdi
	movl	%eax, -240(%rbp)        # 4-byte Spill
	callq	g_malloc_n
	movl	$4, %r10d
	movl	%r10d, %esi
	movq	%rax, -192(%rbp)
	movslq	-172(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -184(%rbp)
	movl	$0, -232(%rbp)
.LBB21_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-232(%rbp), %eax
	cmpl	-172(%rbp), %eax
	jge	.LBB21_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	-164(%rbp), %eax
	movslq	-232(%rbp), %rcx
	movq	-192(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
	movl	-156(%rbp), %eax
	movslq	-232(%rbp), %rcx
	movq	-184(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	-232(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -232(%rbp)
	jmp	.LBB21_1
.LBB21_4:                               # %for.end
	movl	$0, -232(%rbp)
.LBB21_5:                               # %for.cond.16
                                        # =>This Inner Loop Header: Depth=1
	movl	-232(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	(%rcx), %eax
	jae	.LBB21_14
# BB#6:                                 # %for.body.19
                                        #   in Loop: Header=BB21_5 Depth=1
	cmpl	$0, -232(%rbp)
	je	.LBB21_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB21_5 Depth=1
	movl	-232(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	addq	$8, %rdx
	shlq	$4, %rcx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	jmp	.LBB21_9
.LBB21_8:                               # %cond.false
                                        #   in Loop: Header=BB21_5 Depth=1
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-48(%rbp), %rdx
	addq	$8, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
.LBB21_9:                               # %cond.end
                                        #   in Loop: Header=BB21_5 Depth=1
	movsd	-248(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -140(%rbp)
	cmpl	$0, -232(%rbp)
	je	.LBB21_11
# BB#10:                                # %cond.true.31
                                        #   in Loop: Header=BB21_5 Depth=1
	movl	-232(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	addq	$8, %rdx
	shlq	$4, %rcx
	addq	%rcx, %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
	jmp	.LBB21_12
.LBB21_11:                              # %cond.false.36
                                        #   in Loop: Header=BB21_5 Depth=1
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-48(%rbp), %rdx
	addq	$8, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
.LBB21_12:                              # %cond.end.43
                                        #   in Loop: Header=BB21_5 Depth=1
	movsd	-256(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -144(%rbp)
	movslq	-232(%rbp), %rcx
	movq	-48(%rbp), %rdx
	addq	$8, %rdx
	shlq	$4, %rcx
	addq	%rcx, %rdx
	cvttsd2si	(%rdx), %eax
	movl	%eax, -148(%rbp)
	movslq	-232(%rbp), %rcx
	movq	-48(%rbp), %rdx
	addq	$8, %rdx
	shlq	$4, %rcx
	addq	%rcx, %rdx
	cvttsd2si	8(%rdx), %eax
	movl	%eax, -152(%rbp)
	movl	-140(%rbp), %edi
	movl	-144(%rbp), %esi
	movl	-148(%rbp), %edx
	movl	-152(%rbp), %ecx
	movl	-160(%rbp), %r8d
	movq	-192(%rbp), %r9
	movq	-184(%rbp), %r10
	movq	%r10, (%rsp)
	callq	convert_segment
# BB#13:                                # %for.inc.56
                                        #   in Loop: Header=BB21_5 Depth=1
	movl	-232(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -232(%rbp)
	jmp	.LBB21_5
.LBB21_14:                              # %for.end.58
	movl	$0, -232(%rbp)
.LBB21_15:                              # %for.cond.59
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_19 Depth 2
	movl	-232(%rbp), %eax
	cmpl	-172(%rbp), %eax
	jge	.LBB21_30
# BB#16:                                # %for.body.62
                                        #   in Loop: Header=BB21_15 Depth=1
	movl	-232(%rbp), %eax
	addl	-160(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jl	.LBB21_28
# BB#17:                                # %land.lhs.true
                                        #   in Loop: Header=BB21_15 Depth=1
	movl	-232(%rbp), %eax
	addl	-160(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jge	.LBB21_28
# BB#18:                                # %if.then
                                        #   in Loop: Header=BB21_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	movl	-232(%rbp), %eax
	addl	-160(%rbp), %eax
	subl	-96(%rbp), %eax
	imull	-228(%rbp), %eax
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movslq	-92(%rbp), %rsi
	movq	%rcx, %rdi
	subq	%rsi, %rdi
	addq	%rdi, %rdx
	movq	%rdx, -200(%rbp)
	movq	-64(%rbp), %rdx
	movl	-232(%rbp), %eax
	addl	-160(%rbp), %eax
	subl	-96(%rbp), %eax
	imull	-228(%rbp), %eax
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movslq	-92(%rbp), %rsi
	movq	%rcx, %rdi
	subq	%rsi, %rdi
	addq	%rdi, %rdx
	movq	%rdx, -216(%rbp)
	movq	-72(%rbp), %rdx
	movl	-232(%rbp), %eax
	addl	-160(%rbp), %eax
	subl	-96(%rbp), %eax
	imull	-228(%rbp), %eax
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movslq	-92(%rbp), %rsi
	subq	%rsi, %rcx
	addq	%rcx, %rdx
	movq	%rdx, -208(%rbp)
	movslq	-232(%rbp), %rcx
	movq	-192(%rbp), %rdx
	movl	(%rdx,%rcx,4), %eax
	movl	%eax, -236(%rbp)
.LBB21_19:                              # %for.cond.90
                                        #   Parent Loop BB21_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-236(%rbp), %eax
	movslq	-232(%rbp), %rcx
	movq	-184(%rbp), %rdx
	cmpl	(%rdx,%rcx,4), %eax
	jge	.LBB21_27
# BB#20:                                # %for.body.95
                                        #   in Loop: Header=BB21_19 Depth=2
	movl	-236(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jl	.LBB21_25
# BB#21:                                # %land.lhs.true.98
                                        #   in Loop: Header=BB21_19 Depth=2
	movl	-236(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB21_25
# BB#22:                                # %if.then.101
                                        #   in Loop: Header=BB21_19 Depth=2
	movsd	.LCPI21_2, %xmm0        # xmm0 = mem[0],zero
	movslq	-236(%rbp), %rax
	movq	-200(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB21_24
# BB#23:                                # %if.then.108
                                        #   in Loop: Header=BB21_19 Depth=2
	movslq	-236(%rbp), %rax
	movq	-216(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-80(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
	movslq	-236(%rbp), %rax
	movq	-208(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-80(%rbp), %rax
	addsd	8(%rax), %xmm0
	movsd	%xmm0, 8(%rax)
	cvtsi2sdl	-236(%rbp), %xmm0
	movq	-88(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
	movl	-232(%rbp), %edx
	addl	-160(%rbp), %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-88(%rbp), %rax
	addsd	8(%rax), %xmm0
	movsd	%xmm0, 8(%rax)
	movl	-220(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -220(%rbp)
.LBB21_24:                              # %if.end
                                        #   in Loop: Header=BB21_19 Depth=2
	movl	-224(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -224(%rbp)
.LBB21_25:                              # %if.end.130
                                        #   in Loop: Header=BB21_19 Depth=2
	jmp	.LBB21_26
.LBB21_26:                              # %for.inc.131
                                        #   in Loop: Header=BB21_19 Depth=2
	movl	-236(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -236(%rbp)
	jmp	.LBB21_19
.LBB21_27:                              # %for.end.133
                                        #   in Loop: Header=BB21_15 Depth=1
	jmp	.LBB21_28
.LBB21_28:                              # %if.end.134
                                        #   in Loop: Header=BB21_15 Depth=1
	jmp	.LBB21_29
.LBB21_29:                              # %for.inc.135
                                        #   in Loop: Header=BB21_15 Depth=1
	movl	-232(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -232(%rbp)
	jmp	.LBB21_15
.LBB21_30:                              # %for.end.137
	cmpl	$0, -224(%rbp)
	jne	.LBB21_32
# BB#31:                                # %if.then.139
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	jmp	.LBB21_36
.LBB21_32:                              # %if.end.140
	movsd	.LCPI21_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-220(%rbp), %xmm1
	cvtsi2sdl	-224(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB21_34
# BB#33:                                # %if.then.145
	cvtsi2sdl	-220(%rbp), %xmm0
	movq	-80(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, (%rax)
	cvtsi2sdl	-220(%rbp), %xmm0
	movq	-80(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 8(%rax)
	cvtsi2sdl	-220(%rbp), %xmm0
	movq	-88(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, (%rax)
	cvtsi2sdl	-220(%rbp), %xmm0
	movq	-88(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 8(%rax)
	jmp	.LBB21_35
.LBB21_34:                              # %if.else
	xorps	%xmm0, %xmm0
	movsd	.LCPI21_1, %xmm1        # xmm1 = mem[0],zero
	movq	-80(%rbp), %rax
	movsd	%xmm1, (%rax)
	movq	-80(%rbp), %rax
	movsd	%xmm1, 8(%rax)
	movq	-88(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-88(%rbp), %rax
	movsd	%xmm0, 8(%rax)
.LBB21_35:                              # %if.end.162
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB21_36:                              # %return
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	find_poly_dir, .Lfunc_end21-find_poly_dir
	.cfi_endproc

	.align	16, 0x90
	.type	polygon_find_center,@function
polygon_find_center:                    # @polygon_find_center
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	cmpl	$0, (%rdx)
	jne	.LBB22_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB22_7
.LBB22_2:                               # %if.end
	xorps	%xmm0, %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movl	$0, -36(%rbp)
.LBB22_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	(%rcx), %eax
	jae	.LBB22_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB22_3 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	addq	$8, %rdx
	shlq	$4, %rcx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movq	-24(%rbp), %rcx
	addsd	(%rcx), %xmm0
	movsd	%xmm0, (%rcx)
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	addq	$8, %rdx
	shlq	$4, %rcx
	addq	%rcx, %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	movq	-32(%rbp), %rcx
	addsd	(%rcx), %xmm0
	movsd	%xmm0, (%rcx)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB22_3 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB22_3
.LBB22_6:                               # %for.end
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm0
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, (%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %eax
	cvtsi2sdq	%rax, %xmm0
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, (%rax)
	movl	$1, -4(%rbp)
.LBB22_7:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end22:
	.size	polygon_find_center, .Lfunc_end22-polygon_find_center
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI23_0:
	.quad	4638707616191610880     # double 128
.LCPI23_1:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	split_poly,@function
split_poly:                             # @split_poly
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp92:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$384, %rsp              # imm = 0x180
.Ltmp93:
	.cfi_offset %rbx, -32
.Ltmp94:
	.cfi_offset %r14, -24
	movq	32(%rbp), %rax
	movl	24(%rbp), %r10d
	movl	16(%rbp), %r11d
	leaq	-296(%rbp), %rbx
	leaq	-304(%rbp), %r14
	movsd	.LCPI23_1, %xmm1        # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movsd	%xmm0, -56(%rbp)
	movl	%r8d, -60(%rbp)
	movl	%r9d, -64(%rbp)
	movl	%r11d, -68(%rbp)
	movl	%r10d, -72(%rbp)
	movq	%rax, -80(%rbp)
	movsd	%xmm2, -296(%rbp)
	movsd	%xmm2, -304(%rbp)
	movsd	mvals+16, %xmm0         # xmm0 = mem[0],zero
	mulsd	scale, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -288(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	polygon_find_center
	movq	-24(%rbp), %rdi
	movsd	-296(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm0
	movsd	-304(%rbp), %xmm1       # xmm1 = mem[0],zero
	movd	%xmm1, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm1
	movl	%eax, -356(%rbp)        # 4-byte Spill
	callq	polygon_translate
	leaq	-280(%rbp), %rdi
	movsd	.LCPI23_0, %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rcx
	movsd	(%rcx), %xmm1           # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movq	-48(%rbp), %rcx
	movsd	(%rcx), %xmm2           # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm1
	movq	-48(%rbp), %rcx
	movsd	8(%rcx), %xmm2          # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	movq	-48(%rbp), %rcx
	movsd	8(%rcx), %xmm3          # xmm3 = mem[0],zero
	subsd	%xmm0, %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm0, -368(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	callq	sqrt
	movsd	%xmm0, -312(%rbp)
	movq	-48(%rbp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movsd	-368(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	movd	%xmm0, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm0
	divsd	-312(%rbp), %xmm0
	movsd	%xmm0, -336(%rbp)
	movq	-48(%rbp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	divsd	-312(%rbp), %xmm0
	movsd	%xmm0, -328(%rbp)
	movsd	-328(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm0
	mulsd	-288(%rbp), %xmm0
	movsd	%xmm0, -352(%rbp)
	movsd	-336(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-288(%rbp), %xmm0
	movsd	%xmm0, -344(%rbp)
	movq	-376(%rbp), %rdi        # 8-byte Reload
	callq	polygon_reset
	leaq	-280(%rbp), %rcx
	leaq	-352(%rbp), %rsi
	leaq	-336(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	clip_poly
	leaq	-280(%rbp), %rdi
	movsd	-296(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-304(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	polygon_translate
	cmpl	$0, -280(%rbp)
	je	.LBB23_7
# BB#1:                                 # %if.then
	cmpl	$0, mvals+60
	je	.LBB23_3
# BB#2:                                 # %if.then.30
	leaq	-280(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %ecx
	movl	-64(%rbp), %r8d
	movl	-68(%rbp), %r9d
	movl	-72(%rbp), %eax
	movl	%eax, (%rsp)
	callq	find_poly_color
.LBB23_3:                               # %if.end
	leaq	-280(%rbp), %rdi
	movsd	-296(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-304(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	scale, %xmm2            # xmm2 = mem[0],zero
	callq	scale_poly
	cmpl	$0, mvals+60
	je	.LBB23_5
# BB#4:                                 # %if.then.32
	leaq	-280(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movl	-60(%rbp), %ecx
	movl	-64(%rbp), %r8d
	movl	-68(%rbp), %r9d
	movl	-72(%rbp), %eax
	movq	-80(%rbp), %r10
	movl	%eax, (%rsp)
	movq	%r10, 8(%rsp)
	callq	fill_poly_color
	jmp	.LBB23_6
.LBB23_5:                               # %if.else
	leaq	-280(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %ecx
	movl	-68(%rbp), %r8d
	movl	-72(%rbp), %r9d
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	callq	fill_poly_image
.LBB23_6:                               # %if.end.33
	jmp	.LBB23_7
.LBB23_7:                               # %if.end.34
	leaq	-280(%rbp), %rdi
	movsd	-336(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -336(%rbp)
	movsd	-328(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -328(%rbp)
	movsd	-352(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -352(%rbp)
	movsd	-344(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -344(%rbp)
	callq	polygon_reset
	leaq	-280(%rbp), %rcx
	leaq	-352(%rbp), %rsi
	leaq	-336(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	clip_poly
	leaq	-280(%rbp), %rdi
	movsd	-296(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-304(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	polygon_translate
	cmpl	$0, -280(%rbp)
	je	.LBB23_14
# BB#8:                                 # %if.then.51
	cmpl	$0, mvals+60
	je	.LBB23_10
# BB#9:                                 # %if.then.53
	leaq	-280(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %ecx
	movl	-64(%rbp), %r8d
	movl	-68(%rbp), %r9d
	movl	-72(%rbp), %eax
	movl	%eax, (%rsp)
	callq	find_poly_color
.LBB23_10:                              # %if.end.54
	leaq	-280(%rbp), %rdi
	movsd	-296(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-304(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	scale, %xmm2            # xmm2 = mem[0],zero
	callq	scale_poly
	cmpl	$0, mvals+60
	je	.LBB23_12
# BB#11:                                # %if.then.56
	leaq	-280(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movl	-60(%rbp), %ecx
	movl	-64(%rbp), %r8d
	movl	-68(%rbp), %r9d
	movl	-72(%rbp), %eax
	movq	-80(%rbp), %r10
	movl	%eax, (%rsp)
	movq	%r10, 8(%rsp)
	callq	fill_poly_color
	jmp	.LBB23_13
.LBB23_12:                              # %if.else.57
	leaq	-280(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %ecx
	movl	-68(%rbp), %r8d
	movl	-72(%rbp), %r9d
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	callq	fill_poly_image
.LBB23_13:                              # %if.end.58
	jmp	.LBB23_14
.LBB23_14:                              # %if.end.59
	addq	$384, %rsp              # imm = 0x180
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end23:
	.size	split_poly, .Lfunc_end23-split_poly
	.cfi_endproc

	.align	16, 0x90
	.type	render_poly,@function
render_poly:                            # @render_poly
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp95:
	.cfi_def_cfa_offset 16
.Ltmp96:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp97:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$104, %rsp
.Ltmp98:
	.cfi_offset %rbx, -24
	movq	24(%rbp), %rax
	movl	16(%rbp), %r10d
	leaq	-72(%rbp), %r11
	leaq	-80(%rbp), %rbx
	xorps	%xmm1, %xmm1
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	%r8d, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movl	%r10d, -56(%rbp)
	movq	%rax, -64(%rbp)
	movsd	%xmm1, -72(%rbp)
	movsd	%xmm1, -80(%rbp)
	movq	-16(%rbp), %rdi
	movq	%r11, %rsi
	movq	%rbx, %rdx
	callq	polygon_find_center
	cmpl	$0, mvals+60
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB24_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-44(%rbp), %ecx
	movl	-48(%rbp), %r8d
	movl	-52(%rbp), %r9d
	movl	-56(%rbp), %eax
	movl	%eax, (%rsp)
	callq	find_poly_color
.LBB24_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	scale, %xmm2            # xmm2 = mem[0],zero
	callq	scale_poly
	cmpl	$0, mvals+60
	je	.LBB24_4
# BB#3:                                 # %if.then.2
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	-44(%rbp), %ecx
	movl	-48(%rbp), %r8d
	movl	-52(%rbp), %r9d
	movl	-56(%rbp), %eax
	movq	-64(%rbp), %r10
	movl	%eax, (%rsp)
	movq	%r10, 8(%rsp)
	callq	fill_poly_color
	jmp	.LBB24_5
.LBB24_4:                               # %if.else
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-52(%rbp), %r8d
	movl	-56(%rbp), %r9d
	movq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	callq	fill_poly_image
.LBB24_5:                               # %if.end.3
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end24:
	.size	render_poly, .Lfunc_end24-render_poly
	.cfi_endproc

	.align	16, 0x90
	.type	polygon_extents,@function
polygon_extents:                        # @polygon_extents
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp99:
	.cfi_def_cfa_offset 16
.Ltmp100:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp101:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-16(%rbp), %rcx
	cmpl	$0, (%rcx)
	jne	.LBB25_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB25_19
.LBB25_2:                               # %if.end
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-16(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movl	$1, -52(%rbp)
.LBB25_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	(%rcx), %eax
	jae	.LBB25_18
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB25_3 Depth=1
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movl	-52(%rbp), %ecx
	movl	%ecx, %eax
	movq	-16(%rbp), %rdx
	addq	$8, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	(%rdx), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB25_6
# BB#5:                                 # %cond.true
                                        #   in Loop: Header=BB25_3 Depth=1
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	jmp	.LBB25_7
.LBB25_6:                               # %cond.false
                                        #   in Loop: Header=BB25_3 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	addq	$8, %rdx
	shlq	$4, %rcx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
.LBB25_7:                               # %cond.end
                                        #   in Loop: Header=BB25_3 Depth=1
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movl	-52(%rbp), %ecx
	movl	%ecx, %eax
	movq	-16(%rbp), %rdx
	addq	$8, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	ucomisd	(%rdx), %xmm0
	jbe	.LBB25_9
# BB#8:                                 # %cond.true.17
                                        #   in Loop: Header=BB25_3 Depth=1
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB25_10
.LBB25_9:                               # %cond.false.18
                                        #   in Loop: Header=BB25_3 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	addq	$8, %rdx
	shlq	$4, %rcx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
.LBB25_10:                              # %cond.end.23
                                        #   in Loop: Header=BB25_3 Depth=1
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movl	-52(%rbp), %ecx
	movl	%ecx, %eax
	movq	-16(%rbp), %rdx
	addq	$8, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	8(%rdx), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB25_12
# BB#11:                                # %cond.true.30
                                        #   in Loop: Header=BB25_3 Depth=1
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	jmp	.LBB25_13
.LBB25_12:                              # %cond.false.31
                                        #   in Loop: Header=BB25_3 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	addq	$8, %rdx
	shlq	$4, %rcx
	addq	%rcx, %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
.LBB25_13:                              # %cond.end.36
                                        #   in Loop: Header=BB25_3 Depth=1
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movl	-52(%rbp), %ecx
	movl	%ecx, %eax
	movq	-16(%rbp), %rdx
	addq	$8, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	ucomisd	8(%rdx), %xmm0
	jbe	.LBB25_15
# BB#14:                                # %cond.true.43
                                        #   in Loop: Header=BB25_3 Depth=1
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB25_16
.LBB25_15:                              # %cond.false.44
                                        #   in Loop: Header=BB25_3 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	addq	$8, %rdx
	shlq	$4, %rcx
	addq	%rcx, %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
.LBB25_16:                              # %cond.end.49
                                        #   in Loop: Header=BB25_3 Depth=1
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, (%rax)
# BB#17:                                # %for.inc
                                        #   in Loop: Header=BB25_3 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB25_3
.LBB25_18:                              # %for.end
	movl	$1, -4(%rbp)
.LBB25_19:                              # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end25:
	.size	polygon_extents, .Lfunc_end25-polygon_extents
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI26_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	convert_segment,@function
convert_segment:                        # @convert_segment
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp104:
	.cfi_def_cfa_register %rbp
	movq	16(%rbp), %rax
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	movq	%r9, -32(%rbp)
	movq	%rax, -40(%rbp)
	movl	-8(%rbp), %ecx
	cmpl	-16(%rbp), %ecx
	jle	.LBB26_2
# BB#1:                                 # %if.then
	movl	-16(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB26_2:                               # %if.end
	movl	-16(%rbp), %eax
	subl	-8(%rbp), %eax
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	je	.LBB26_14
# BB#3:                                 # %if.then.3
	movsd	.LCPI26_0, %xmm0        # xmm0 = mem[0],zero
	movl	-12(%rbp), %eax
	subl	-4(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	cvtsi2sdl	-44(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	movsd	%xmm1, -64(%rbp)
	cvtsi2sdl	-4(%rbp), %xmm1
	mulsd	-64(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -72(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -48(%rbp)
.LBB26_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB26_13
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB26_4 Depth=1
	movl	-48(%rbp), %eax
	subl	-20(%rbp), %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	cvtsi2sdl	(%rdx,%rcx,4), %xmm0
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB26_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB26_4 Depth=1
	movl	-48(%rbp), %eax
	subl	-20(%rbp), %eax
	movslq	%eax, %rcx
	movq	-32(%rbp), %rdx
	cvtsi2sdl	(%rdx,%rcx,4), %xmm0
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	jmp	.LBB26_8
.LBB26_7:                               # %cond.false
                                        #   in Loop: Header=BB26_4 Depth=1
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
.LBB26_8:                               # %cond.end
                                        #   in Loop: Header=BB26_4 Depth=1
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	-48(%rbp), %ecx
	subl	-20(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-32(%rbp), %rsi
	movl	%eax, (%rsi,%rdx,4)
	movl	-48(%rbp), %eax
	subl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	-40(%rbp), %rsi
	cvtsi2sdl	(%rsi,%rdx,4), %xmm0
	ucomisd	-72(%rbp), %xmm0
	jbe	.LBB26_10
# BB#9:                                 # %cond.true.27
                                        #   in Loop: Header=BB26_4 Depth=1
	movl	-48(%rbp), %eax
	subl	-20(%rbp), %eax
	movslq	%eax, %rcx
	movq	-40(%rbp), %rdx
	cvtsi2sdl	(%rdx,%rcx,4), %xmm0
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB26_11
.LBB26_10:                              # %cond.false.32
                                        #   in Loop: Header=BB26_4 Depth=1
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
.LBB26_11:                              # %cond.end.33
                                        #   in Loop: Header=BB26_4 Depth=1
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	-48(%rbp), %ecx
	subl	-20(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	-40(%rbp), %rsi
	movl	%eax, (%rsi,%rdx,4)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-72(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB26_4 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB26_4
.LBB26_13:                              # %for.end
	jmp	.LBB26_14
.LBB26_14:                              # %if.end.40
	popq	%rbp
	retq
.Lfunc_end26:
	.size	convert_segment, .Lfunc_end26-convert_segment
	.cfi_endproc

	.align	16, 0x90
	.type	polygon_translate,@function
polygon_translate:                      # @polygon_translate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp105:
	.cfi_def_cfa_offset 16
.Ltmp106:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp107:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB27_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	jae	.LBB27_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB27_1 Depth=1
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	addq	$8, %rdx
	shlq	$4, %rcx
	addq	%rcx, %rdx
	addsd	(%rdx), %xmm0
	movsd	%xmm0, (%rdx)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	addq	$8, %rdx
	shlq	$4, %rcx
	addq	%rcx, %rdx
	addsd	8(%rdx), %xmm0
	movsd	%xmm0, 8(%rdx)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB27_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB27_1
.LBB27_4:                               # %for.end
	popq	%rbp
	retq
.Lfunc_end27:
	.size	polygon_translate, .Lfunc_end27-polygon_translate
	.cfi_endproc

	.align	16, 0x90
	.type	clip_poly,@function
clip_poly:                              # @clip_poly
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp108:
	.cfi_def_cfa_offset 16
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp110:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB28_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	(%rcx), %eax
	jae	.LBB28_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB28_1 Depth=1
	cmpl	$0, -36(%rbp)
	je	.LBB28_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB28_1 Depth=1
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	addq	$8, %rdx
	shlq	$4, %rcx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	jmp	.LBB28_5
.LBB28_4:                               # %cond.false
                                        #   in Loop: Header=BB28_1 Depth=1
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-24(%rbp), %rdx
	addq	$8, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
.LBB28_5:                               # %cond.end
                                        #   in Loop: Header=BB28_1 Depth=1
	movsd	-80(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB28_7
# BB#6:                                 # %cond.true.8
                                        #   in Loop: Header=BB28_1 Depth=1
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	addq	$8, %rdx
	shlq	$4, %rcx
	addq	%rcx, %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB28_8
.LBB28_7:                               # %cond.false.13
                                        #   in Loop: Header=BB28_1 Depth=1
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-24(%rbp), %rdx
	addq	$8, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
.LBB28_8:                               # %cond.end.20
                                        #   in Loop: Header=BB28_1 Depth=1
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	$8, %rcx
	shlq	$4, %rax
	addq	%rax, %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	addq	$8, %rcx
	shlq	$4, %rax
	addq	%rax, %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-72(%rbp), %xmm3        # xmm3 = mem[0],zero
	movq	-32(%rbp), %rdx
	callq	clip_point
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB28_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB28_1
.LBB28_10:                              # %for.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	clip_poly, .Lfunc_end28-clip_poly
	.cfi_endproc

	.align	16, 0x90
	.type	find_poly_color,@function
find_poly_color:                        # @find_poly_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp113:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$312, %rsp              # imm = 0x138
.Ltmp114:
	.cfi_offset %rbx, -56
.Ltmp115:
	.cfi_offset %r12, -48
.Ltmp116:
	.cfi_offset %r13, -40
.Ltmp117:
	.cfi_offset %r14, -32
.Ltmp118:
	.cfi_offset %r15, -24
	movl	16(%rbp), %eax
	leaq	-144(%rbp), %r10
	leaq	-152(%rbp), %r11
	leaq	-160(%rbp), %rbx
	leaq	-168(%rbp), %r14
	xorl	%r15d, %r15d
	movl	$16, %r12d
	movl	%r12d, %r13d
	leaq	-240(%rbp), %r12
	xorps	%xmm1, %xmm1
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movsd	%xmm0, -72(%rbp)
	movl	%ecx, -76(%rbp)
	movl	%r8d, -80(%rbp)
	movl	%r9d, -84(%rbp)
	movl	%eax, -88(%rbp)
	movsd	%xmm1, -144(%rbp)
	movsd	%xmm1, -152(%rbp)
	movsd	%xmm1, -160(%rbp)
	movsd	%xmm1, -168(%rbp)
	movq	%r12, %rdi
	movl	%r15d, %esi
	movq	%r13, %rdx
	movq	%r10, -272(%rbp)        # 8-byte Spill
	movq	%r11, -280(%rbp)        # 8-byte Spill
	movq	%rbx, -288(%rbp)        # 8-byte Spill
	movq	%r14, -296(%rbp)        # 8-byte Spill
	callq	memset
	movl	$0, -252(%rbp)
	movq	-56(%rbp), %rdx
	movl	12(%rdx), %eax
	movl	%eax, -244(%rbp)
	movq	-48(%rbp), %rdi
	movq	-272(%rbp), %rsi        # 8-byte Reload
	movq	-280(%rbp), %rdx        # 8-byte Reload
	movq	-288(%rbp), %rcx        # 8-byte Reload
	movq	-296(%rbp), %r8         # 8-byte Reload
	callq	polygon_extents
	movl	$4, %r9d
	movl	%r9d, %esi
	cvttsd2si	-144(%rbp), %r9d
	movl	%r9d, -188(%rbp)
	cvttsd2si	-152(%rbp), %r9d
	movl	%r9d, -192(%rbp)
	cvttsd2si	-160(%rbp), %r9d
	movl	%r9d, -196(%rbp)
	cvttsd2si	-168(%rbp), %r9d
	movl	%r9d, -200(%rbp)
	movl	-200(%rbp), %r9d
	subl	-192(%rbp), %r9d
	movl	%r9d, -204(%rbp)
	movslq	-204(%rbp), %rdi
	movl	%eax, -300(%rbp)        # 4-byte Spill
	callq	g_malloc_n
	movl	$4, %r9d
	movl	%r9d, %esi
	movq	%rax, -224(%rbp)
	movslq	-204(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -216(%rbp)
	movl	$0, -256(%rbp)
.LBB29_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-256(%rbp), %eax
	cmpl	-204(%rbp), %eax
	jge	.LBB29_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB29_1 Depth=1
	movl	-196(%rbp), %eax
	movslq	-256(%rbp), %rcx
	movq	-224(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
	movl	-188(%rbp), %eax
	movslq	-256(%rbp), %rcx
	movq	-216(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB29_1 Depth=1
	movl	-256(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -256(%rbp)
	jmp	.LBB29_1
.LBB29_4:                               # %for.end
	movl	$0, -256(%rbp)
.LBB29_5:                               # %for.cond.11
                                        # =>This Inner Loop Header: Depth=1
	movl	-256(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	(%rcx), %eax
	jae	.LBB29_14
# BB#6:                                 # %for.body.14
                                        #   in Loop: Header=BB29_5 Depth=1
	cmpl	$0, -256(%rbp)
	je	.LBB29_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB29_5 Depth=1
	movl	-256(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	addq	$8, %rdx
	shlq	$4, %rcx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -312(%rbp)       # 8-byte Spill
	jmp	.LBB29_9
.LBB29_8:                               # %cond.false
                                        #   in Loop: Header=BB29_5 Depth=1
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-48(%rbp), %rdx
	addq	$8, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -312(%rbp)       # 8-byte Spill
.LBB29_9:                               # %cond.end
                                        #   in Loop: Header=BB29_5 Depth=1
	movsd	-312(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -172(%rbp)
	cmpl	$0, -256(%rbp)
	je	.LBB29_11
# BB#10:                                # %cond.true.26
                                        #   in Loop: Header=BB29_5 Depth=1
	movl	-256(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-48(%rbp), %rdx
	addq	$8, %rdx
	shlq	$4, %rcx
	addq	%rcx, %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -320(%rbp)       # 8-byte Spill
	jmp	.LBB29_12
.LBB29_11:                              # %cond.false.32
                                        #   in Loop: Header=BB29_5 Depth=1
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-48(%rbp), %rdx
	addq	$8, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -320(%rbp)       # 8-byte Spill
.LBB29_12:                              # %cond.end.39
                                        #   in Loop: Header=BB29_5 Depth=1
	movsd	-320(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -176(%rbp)
	movslq	-256(%rbp), %rcx
	movq	-48(%rbp), %rdx
	addq	$8, %rdx
	shlq	$4, %rcx
	addq	%rcx, %rdx
	cvttsd2si	(%rdx), %eax
	movl	%eax, -180(%rbp)
	movslq	-256(%rbp), %rcx
	movq	-48(%rbp), %rdx
	addq	$8, %rdx
	shlq	$4, %rcx
	addq	%rcx, %rdx
	cvttsd2si	8(%rdx), %eax
	movl	%eax, -184(%rbp)
	movl	-172(%rbp), %edi
	movl	-176(%rbp), %esi
	movl	-180(%rbp), %edx
	movl	-184(%rbp), %ecx
	movl	-192(%rbp), %r8d
	movq	-224(%rbp), %r9
	movq	-216(%rbp), %r10
	movq	%r10, (%rsp)
	callq	convert_segment
# BB#13:                                # %for.inc.52
                                        #   in Loop: Header=BB29_5 Depth=1
	movl	-256(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -256(%rbp)
	jmp	.LBB29_5
.LBB29_14:                              # %for.end.54
	leaq	-136(%rbp), %rdi
	xorl	%eax, %eax
	movq	-56(%rbp), %rsi
	movq	-56(%rbp), %rcx
	movl	4(%rcx), %r8d
	movq	-56(%rbp), %rcx
	movl	8(%rcx), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$0, -256(%rbp)
.LBB29_15:                              # %for.cond.55
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_19 Depth 2
                                        #       Child Loop BB29_23 Depth 3
	movl	-256(%rbp), %eax
	cmpl	-204(%rbp), %eax
	jge	.LBB29_32
# BB#16:                                # %for.body.58
                                        #   in Loop: Header=BB29_15 Depth=1
	movl	-256(%rbp), %eax
	addl	-192(%rbp), %eax
	movl	%eax, -264(%rbp)
	movl	-264(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jl	.LBB29_30
# BB#17:                                # %land.lhs.true
                                        #   in Loop: Header=BB29_15 Depth=1
	movl	-264(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jge	.LBB29_30
# BB#18:                                # %if.then
                                        #   in Loop: Header=BB29_15 Depth=1
	movslq	-256(%rbp), %rax
	movq	-224(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -260(%rbp)
.LBB29_19:                              # %for.cond.65
                                        #   Parent Loop BB29_15 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB29_23 Depth 3
	movl	-260(%rbp), %eax
	movslq	-256(%rbp), %rcx
	movq	-216(%rbp), %rdx
	cmpl	(%rdx,%rcx,4), %eax
	jge	.LBB29_29
# BB#20:                                # %for.body.70
                                        #   in Loop: Header=BB29_19 Depth=2
	movl	-260(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jl	.LBB29_27
# BB#21:                                # %land.lhs.true.73
                                        #   in Loop: Header=BB29_19 Depth=2
	movl	-260(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB29_27
# BB#22:                                # %if.then.76
                                        #   in Loop: Header=BB29_19 Depth=2
	leaq	-136(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	-260(%rbp), %edx
	movl	-264(%rbp), %ecx
	callq	gimp_pixel_rgn_get_pixel
	movl	$0, -248(%rbp)
.LBB29_23:                              # %for.cond.77
                                        #   Parent Loop BB29_15 Depth=1
                                        #     Parent Loop BB29_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-248(%rbp), %eax
	cmpl	-244(%rbp), %eax
	jge	.LBB29_26
# BB#24:                                # %for.body.80
                                        #   in Loop: Header=BB29_23 Depth=3
	movslq	-248(%rbp), %rax
	movq	-64(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-248(%rbp), %rax
	addl	-240(%rbp,%rax,4), %edx
	movl	%edx, -240(%rbp,%rax,4)
# BB#25:                                # %for.inc.87
                                        #   in Loop: Header=BB29_23 Depth=3
	movl	-248(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -248(%rbp)
	jmp	.LBB29_23
.LBB29_26:                              # %for.end.89
                                        #   in Loop: Header=BB29_19 Depth=2
	movl	-252(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -252(%rbp)
.LBB29_27:                              # %if.end
                                        #   in Loop: Header=BB29_19 Depth=2
	jmp	.LBB29_28
.LBB29_28:                              # %for.inc.91
                                        #   in Loop: Header=BB29_19 Depth=2
	movl	-260(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -260(%rbp)
	jmp	.LBB29_19
.LBB29_29:                              # %for.end.93
                                        #   in Loop: Header=BB29_15 Depth=1
	jmp	.LBB29_30
.LBB29_30:                              # %if.end.94
                                        #   in Loop: Header=BB29_15 Depth=1
	jmp	.LBB29_31
.LBB29_31:                              # %for.inc.95
                                        #   in Loop: Header=BB29_15 Depth=1
	movl	-256(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -256(%rbp)
	jmp	.LBB29_15
.LBB29_32:                              # %for.end.97
	cmpl	$0, -252(%rbp)
	je	.LBB29_44
# BB#33:                                # %if.then.99
	movl	$0, -248(%rbp)
.LBB29_34:                              # %for.cond.100
                                        # =>This Inner Loop Header: Depth=1
	movl	-248(%rbp), %eax
	cmpl	-244(%rbp), %eax
	jge	.LBB29_43
# BB#35:                                # %for.body.103
                                        #   in Loop: Header=BB29_34 Depth=1
	movslq	-248(%rbp), %rax
	movl	-240(%rbp,%rax,4), %eax
	cltd
	idivl	-252(%rbp)
	cvtsi2sdl	%eax, %xmm0
	addsd	-72(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movslq	-248(%rbp), %rcx
	movl	%eax, -240(%rbp,%rcx,4)
	movslq	-248(%rbp), %rcx
	cmpl	$255, -240(%rbp,%rcx,4)
	jle	.LBB29_37
# BB#36:                                # %cond.true.115
                                        #   in Loop: Header=BB29_34 Depth=1
	movl	$255, %eax
	movl	%eax, -324(%rbp)        # 4-byte Spill
	jmp	.LBB29_41
.LBB29_37:                              # %cond.false.116
                                        #   in Loop: Header=BB29_34 Depth=1
	movslq	-248(%rbp), %rax
	cmpl	$0, -240(%rbp,%rax,4)
	jge	.LBB29_39
# BB#38:                                # %cond.true.121
                                        #   in Loop: Header=BB29_34 Depth=1
	xorl	%eax, %eax
	movl	%eax, -328(%rbp)        # 4-byte Spill
	jmp	.LBB29_40
.LBB29_39:                              # %cond.false.122
                                        #   in Loop: Header=BB29_34 Depth=1
	movslq	-248(%rbp), %rax
	movl	-240(%rbp,%rax,4), %ecx
	movl	%ecx, -328(%rbp)        # 4-byte Spill
.LBB29_40:                              # %cond.end.125
                                        #   in Loop: Header=BB29_34 Depth=1
	movl	-328(%rbp), %eax        # 4-byte Reload
	movl	%eax, -324(%rbp)        # 4-byte Spill
.LBB29_41:                              # %cond.end.127
                                        #   in Loop: Header=BB29_34 Depth=1
	movl	-324(%rbp), %eax        # 4-byte Reload
	movb	%al, %cl
	movslq	-248(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#42:                                # %for.inc.132
                                        #   in Loop: Header=BB29_34 Depth=1
	movl	-248(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -248(%rbp)
	jmp	.LBB29_34
.LBB29_43:                              # %for.end.134
	jmp	.LBB29_44
.LBB29_44:                              # %if.end.135
	movq	-224(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	addq	$312, %rsp              # imm = 0x138
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end29:
	.size	find_poly_color, .Lfunc_end29-find_poly_color
	.cfi_endproc

	.align	16, 0x90
	.type	scale_poly,@function
scale_poly:                             # @scale_poly
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp119:
	.cfi_def_cfa_offset 16
.Ltmp120:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp121:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movq	-8(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm1
	callq	polygon_translate
	movq	-8(%rbp), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	polygon_scale
	movq	-8(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	polygon_translate
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	scale_poly, .Lfunc_end30-scale_poly
	.cfi_endproc

	.align	16, 0x90
	.type	fill_poly_color,@function
fill_poly_color:                        # @fill_poly_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp122:
	.cfi_def_cfa_offset 16
.Ltmp123:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp124:
	.cfi_def_cfa_register %rbp
	subq	$336, %rsp              # imm = 0x150
	movq	24(%rbp), %rax
	movl	16(%rbp), %r10d
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movl	%r10d, -40(%rbp)
	movq	%rax, -48(%rbp)
	movsd	%xmm0, -104(%rbp)
	movsd	%xmm0, -112(%rbp)
	movsd	%xmm0, -120(%rbp)
	movsd	%xmm0, -128(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -292(%rbp)
	cmpl	$0, mvals+56
	je	.LBB31_2
# BB#1:                                 # %if.then
	movl	$3, -276(%rbp)
	movl	-276(%rbp), %eax
	imull	-276(%rbp), %eax
	movl	%eax, -280(%rbp)
	jmp	.LBB31_3
.LBB31_2:                               # %if.else
	movl	$1, -280(%rbp)
	movl	$1, -276(%rbp)
.LBB31_3:                               # %if.end
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -220(%rbp)
	cmpl	$0, -292(%rbp)
	je	.LBB31_9
# BB#4:                                 # %if.then.2
	movabsq	$vecs, %rdi
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -288(%rbp)
	movl	-292(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	-288(%rbp), %rax
	cvttsd2si	(%rax), %ecx
	movl	%ecx, -132(%rbp)
	movl	-292(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	-288(%rbp), %rax
	cvttsd2si	8(%rax), %ecx
	movl	%ecx, -136(%rbp)
	movq	-288(%rbp), %rax
	cvttsd2si	(%rax), %ecx
	movl	%ecx, -140(%rbp)
	movq	-288(%rbp), %rax
	cvttsd2si	8(%rax), %ecx
	movl	%ecx, -144(%rbp)
	movl	-132(%rbp), %esi
	movl	-136(%rbp), %edx
	movl	-140(%rbp), %ecx
	movl	-144(%rbp), %r8d
	callq	calc_spec_vec
	movl	$1, -232(%rbp)
.LBB31_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-232(%rbp), %eax
	cmpl	-292(%rbp), %eax
	jge	.LBB31_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB31_5 Depth=1
	movabsq	$vecs, %rax
	movq	-288(%rbp), %rcx
	cvttsd2si	(%rcx), %edx
	movl	%edx, -132(%rbp)
	movq	-288(%rbp), %rcx
	cvttsd2si	8(%rcx), %edx
	movl	%edx, -136(%rbp)
	movq	-288(%rbp), %rcx
	addq	$16, %rcx
	movq	%rcx, -288(%rbp)
	movq	-288(%rbp), %rcx
	cvttsd2si	(%rcx), %edx
	movl	%edx, -140(%rbp)
	movq	-288(%rbp), %rcx
	cvttsd2si	8(%rcx), %edx
	movl	%edx, -144(%rbp)
	movslq	-232(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	movl	-132(%rbp), %esi
	movl	-136(%rbp), %edx
	movl	-140(%rbp), %ecx
	movl	-144(%rbp), %r8d
	movq	%rax, %rdi
	callq	calc_spec_vec
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB31_5 Depth=1
	movl	-232(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -232(%rbp)
	jmp	.LBB31_5
.LBB31_8:                               # %for.end
	jmp	.LBB31_9
.LBB31_9:                               # %if.end.22
	leaq	-104(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	leaq	-120(%rbp), %rcx
	leaq	-128(%rbp), %r8
	movq	-8(%rbp), %rdi
	callq	polygon_extents
	movl	$4, %r9d
	movl	%r9d, %esi
	cvttsd2si	-104(%rbp), %r9d
	movl	%r9d, -148(%rbp)
	cvttsd2si	-112(%rbp), %r9d
	movl	%r9d, -152(%rbp)
	cvttsd2si	-120(%rbp), %r9d
	movl	%r9d, -156(%rbp)
	cvttsd2si	-128(%rbp), %r9d
	movl	%r9d, -160(%rbp)
	movl	-160(%rbp), %r9d
	subl	-152(%rbp), %r9d
	imull	-276(%rbp), %r9d
	movl	%r9d, -168(%rbp)
	movl	-156(%rbp), %r9d
	subl	-148(%rbp), %r9d
	imull	-276(%rbp), %r9d
	movl	%r9d, -164(%rbp)
	movslq	-168(%rbp), %rdi
	movl	%eax, -296(%rbp)        # 4-byte Spill
	callq	g_malloc_n
	movl	$4, %r9d
	movl	%r9d, %esi
	movq	%rax, -200(%rbp)
	movq	%rax, -192(%rbp)
	movslq	-168(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -184(%rbp)
	movq	%rax, -176(%rbp)
	movl	$0, -232(%rbp)
.LBB31_10:                              # %for.cond.35
                                        # =>This Inner Loop Header: Depth=1
	movl	-232(%rbp), %eax
	cmpl	-168(%rbp), %eax
	jge	.LBB31_13
# BB#11:                                # %for.body.38
                                        #   in Loop: Header=BB31_10 Depth=1
	movl	-156(%rbp), %eax
	imull	-276(%rbp), %eax
	movslq	-232(%rbp), %rcx
	movq	-192(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
	movl	-148(%rbp), %eax
	imull	-276(%rbp), %eax
	movslq	-232(%rbp), %rcx
	movq	-176(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
# BB#12:                                # %for.inc.45
                                        #   in Loop: Header=BB31_10 Depth=1
	movl	-232(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -232(%rbp)
	jmp	.LBB31_10
.LBB31_13:                              # %for.end.47
	cmpl	$0, -292(%rbp)
	je	.LBB31_19
# BB#14:                                # %if.then.49
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -288(%rbp)
	movl	-292(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	-288(%rbp), %rax
	cvttsd2si	(%rax), %ecx
	movl	%ecx, -132(%rbp)
	movl	-292(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	-288(%rbp), %rax
	cvttsd2si	8(%rax), %ecx
	movl	%ecx, -136(%rbp)
	movq	-288(%rbp), %rax
	cvttsd2si	(%rax), %ecx
	movl	%ecx, -140(%rbp)
	movq	-288(%rbp), %rax
	cvttsd2si	8(%rax), %ecx
	movl	%ecx, -144(%rbp)
	movl	-276(%rbp), %ecx
	imull	-132(%rbp), %ecx
	movl	%ecx, -132(%rbp)
	movl	-276(%rbp), %ecx
	imull	-136(%rbp), %ecx
	movl	%ecx, -136(%rbp)
	movl	-276(%rbp), %ecx
	imull	-140(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-276(%rbp), %ecx
	imull	-144(%rbp), %ecx
	movl	%ecx, -144(%rbp)
	movl	-132(%rbp), %edi
	movl	-136(%rbp), %esi
	movl	-140(%rbp), %edx
	movl	-144(%rbp), %ecx
	movl	-152(%rbp), %r8d
	imull	-276(%rbp), %r8d
	movq	-192(%rbp), %r9
	movq	-176(%rbp), %rax
	movq	%rax, (%rsp)
	callq	convert_segment
	movl	$1, -232(%rbp)
.LBB31_15:                              # %for.cond.71
                                        # =>This Inner Loop Header: Depth=1
	movl	-232(%rbp), %eax
	cmpl	-292(%rbp), %eax
	jge	.LBB31_18
# BB#16:                                # %for.body.74
                                        #   in Loop: Header=BB31_15 Depth=1
	movq	-288(%rbp), %rax
	cvttsd2si	(%rax), %ecx
	movl	%ecx, -132(%rbp)
	movq	-288(%rbp), %rax
	cvttsd2si	8(%rax), %ecx
	movl	%ecx, -136(%rbp)
	movq	-288(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	cvttsd2si	(%rax), %ecx
	movl	%ecx, -140(%rbp)
	movq	-288(%rbp), %rax
	cvttsd2si	8(%rax), %ecx
	movl	%ecx, -144(%rbp)
	movl	-276(%rbp), %ecx
	imull	-132(%rbp), %ecx
	movl	%ecx, -132(%rbp)
	movl	-276(%rbp), %ecx
	imull	-136(%rbp), %ecx
	movl	%ecx, -136(%rbp)
	movl	-276(%rbp), %ecx
	imull	-140(%rbp), %ecx
	movl	%ecx, -140(%rbp)
	movl	-276(%rbp), %ecx
	imull	-144(%rbp), %ecx
	movl	%ecx, -144(%rbp)
	movl	-132(%rbp), %edi
	movl	-136(%rbp), %esi
	movl	-140(%rbp), %edx
	movl	-144(%rbp), %ecx
	movl	-152(%rbp), %r8d
	imull	-276(%rbp), %r8d
	movq	-192(%rbp), %r9
	movq	-176(%rbp), %rax
	movq	%rax, (%rsp)
	callq	convert_segment
# BB#17:                                # %for.inc.89
                                        #   in Loop: Header=BB31_15 Depth=1
	movl	-232(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -232(%rbp)
	jmp	.LBB31_15
.LBB31_18:                              # %for.end.91
	jmp	.LBB31_19
.LBB31_19:                              # %if.end.92
	leaq	-96(%rbp), %rdi
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	4(%rdx), %r8d
	movq	-16(%rbp), %rdx
	movl	8(%rdx), %r9d
	cmpq	$0, -48(%rbp)
	sete	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %r11d
	movl	%eax, %edx
	movl	%ecx, -300(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	%r11d, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$4, %eax
	movl	%eax, %esi
	movslq	-164(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -208(%rbp)
	movl	$0, -232(%rbp)
.LBB31_20:                              # %for.cond.97
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_24 Depth 2
                                        #     Child Loop BB31_31 Depth 2
                                        #       Child Loop BB31_35 Depth 3
                                        #       Child Loop BB31_40 Depth 3
	movl	-232(%rbp), %eax
	cmpl	-168(%rbp), %eax
	jge	.LBB31_57
# BB#21:                                # %for.body.100
                                        #   in Loop: Header=BB31_20 Depth=1
	movl	-232(%rbp), %eax
	cltd
	idivl	-276(%rbp)
	cmpl	$0, %edx
	jne	.LBB31_23
# BB#22:                                # %if.then.102
                                        #   in Loop: Header=BB31_20 Depth=1
	xorl	%esi, %esi
	movq	-208(%rbp), %rax
	movslq	-164(%rbp), %rcx
	shlq	$2, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	memset
.LBB31_23:                              # %if.end.105
                                        #   in Loop: Header=BB31_20 Depth=1
	cvtsi2sdl	-232(%rbp), %xmm0
	cvtsi2sdl	-276(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	cvtsi2sdl	-152(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -272(%rbp)
	movq	-200(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -236(%rbp)
.LBB31_24:                              # %for.cond.109
                                        #   Parent Loop BB31_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-236(%rbp), %eax
	movq	-184(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB31_27
# BB#25:                                # %for.body.112
                                        #   in Loop: Header=BB31_24 Depth=2
	movl	-236(%rbp), %eax
	movl	-148(%rbp), %ecx
	imull	-276(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -244(%rbp)
	movslq	-244(%rbp), %rdx
	movq	-208(%rbp), %rsi
	movl	(%rsi,%rdx,4), %eax
	addl	$255, %eax
	movl	%eax, (%rsi,%rdx,4)
# BB#26:                                # %for.inc.118
                                        #   in Loop: Header=BB31_24 Depth=2
	movl	-236(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -236(%rbp)
	jmp	.LBB31_24
.LBB31_27:                              # %for.end.120
                                        #   in Loop: Header=BB31_20 Depth=1
	movl	-232(%rbp), %eax
	addl	$1, %eax
	cltd
	idivl	-276(%rbp)
	cmpl	$0, %edx
	jne	.LBB31_55
# BB#28:                                # %if.then.124
                                        #   in Loop: Header=BB31_20 Depth=1
	movl	-232(%rbp), %eax
	cltd
	idivl	-276(%rbp)
	addl	-152(%rbp), %eax
	movl	%eax, -248(%rbp)
	movl	-248(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.LBB31_54
# BB#29:                                # %land.lhs.true
                                        #   in Loop: Header=BB31_20 Depth=1
	movl	-248(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB31_54
# BB#30:                                # %if.then.131
                                        #   in Loop: Header=BB31_20 Depth=1
	movl	$0, -236(%rbp)
.LBB31_31:                              # %for.cond.132
                                        #   Parent Loop BB31_20 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB31_35 Depth 3
                                        #       Child Loop BB31_40 Depth 3
	movl	-236(%rbp), %eax
	cmpl	-164(%rbp), %eax
	jge	.LBB31_53
# BB#32:                                # %for.body.135
                                        #   in Loop: Header=BB31_31 Depth=2
	movl	-236(%rbp), %eax
	cltd
	idivl	-276(%rbp)
	addl	-148(%rbp), %eax
	movl	%eax, -244(%rbp)
	movl	-244(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.LBB31_51
# BB#33:                                # %land.lhs.true.140
                                        #   in Loop: Header=BB31_31 Depth=2
	movl	-244(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB31_51
# BB#34:                                # %if.then.143
                                        #   in Loop: Header=BB31_31 Depth=2
	movl	$0, -212(%rbp)
	movl	$0, -240(%rbp)
.LBB31_35:                              # %for.cond.144
                                        #   Parent Loop BB31_20 Depth=1
                                        #     Parent Loop BB31_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-240(%rbp), %eax
	cmpl	-276(%rbp), %eax
	jge	.LBB31_38
# BB#36:                                # %for.body.147
                                        #   in Loop: Header=BB31_35 Depth=3
	movl	-236(%rbp), %eax
	addl	-240(%rbp), %eax
	movslq	%eax, %rcx
	movq	-208(%rbp), %rdx
	movl	(%rdx,%rcx,4), %eax
	addl	-212(%rbp), %eax
	movl	%eax, -212(%rbp)
# BB#37:                                # %for.inc.152
                                        #   in Loop: Header=BB31_35 Depth=3
	movl	-240(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -240(%rbp)
	jmp	.LBB31_35
.LBB31_38:                              # %for.end.154
                                        #   in Loop: Header=BB31_31 Depth=2
	movl	-280(%rbp), %eax
	movl	-212(%rbp), %ecx
	movl	%eax, -304(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-304(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -212(%rbp)
	cmpl	$0, -212(%rbp)
	jle	.LBB31_50
# BB#39:                                # %if.then.158
                                        #   in Loop: Header=BB31_31 Depth=2
	movabsq	$vecs, %rdi
	cvtsi2sdl	-236(%rbp), %xmm0
	cvtsi2sdl	-276(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	cvtsi2sdl	-148(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -264(%rbp)
	movl	-292(%rbp), %esi
	movsd	-264(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-272(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	calc_spec_contrib
	movsd	%xmm0, -256(%rbp)
	movl	$0, -228(%rbp)
.LBB31_40:                              # %for.cond.165
                                        #   Parent Loop BB31_20 Depth=1
                                        #     Parent Loop BB31_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-228(%rbp), %eax
	cmpl	-220(%rbp), %eax
	jge	.LBB31_46
# BB#41:                                # %for.body.168
                                        #   in Loop: Header=BB31_40 Depth=3
	xorps	%xmm0, %xmm0
	movslq	-228(%rbp), %rax
	movq	-24(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	ucomisd	-256(%rbp), %xmm0
	movl	%edx, -308(%rbp)        # 4-byte Spill
	jbe	.LBB31_43
# BB#42:                                # %cond.true
                                        #   in Loop: Header=BB31_40 Depth=3
	movslq	-228(%rbp), %rax
	movq	-24(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	movslq	-228(%rbp), %rax
	movzbl	back(,%rax), %esi
	subl	%esi, %edx
	movl	%edx, -312(%rbp)        # 4-byte Spill
	jmp	.LBB31_44
.LBB31_43:                              # %cond.false
                                        #   in Loop: Header=BB31_40 Depth=3
	movslq	-228(%rbp), %rax
	movzbl	fore(,%rax), %ecx
	movslq	-228(%rbp), %rax
	movq	-24(%rbp), %rdx
	movzbl	(%rdx,%rax), %esi
	subl	%esi, %ecx
	movl	%ecx, -312(%rbp)        # 4-byte Spill
.LBB31_44:                              # %cond.end
                                        #   in Loop: Header=BB31_40 Depth=3
	movl	-312(%rbp), %eax        # 4-byte Reload
	movl	$255, %ecx
	cvtsi2sdl	%eax, %xmm0
	mulsd	-256(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	-308(%rbp), %edx        # 4-byte Reload
	addl	%eax, %edx
	movl	%edx, -216(%rbp)
	movl	-216(%rbp), %eax
	imull	-212(%rbp), %eax
	movslq	-228(%rbp), %rsi
	movzbl	back(,%rsi), %edx
	movl	%ecx, %edi
	subl	-212(%rbp), %edi
	imull	%edi, %edx
	addl	%edx, %eax
	cltd
	idivl	%ecx
	movb	%al, %r8b
	movslq	-228(%rbp), %rsi
	movb	%r8b, -224(%rbp,%rsi)
# BB#45:                                # %for.inc.203
                                        #   in Loop: Header=BB31_40 Depth=3
	movl	-228(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -228(%rbp)
	jmp	.LBB31_40
.LBB31_46:                              # %for.end.205
                                        #   in Loop: Header=BB31_31 Depth=2
	cmpq	$0, -48(%rbp)
	je	.LBB31_48
# BB#47:                                # %if.then.207
                                        #   in Loop: Header=BB31_31 Depth=2
	leaq	-224(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	-248(%rbp), %edx
	subl	-32(%rbp), %edx
	movl	-36(%rbp), %esi
	subl	-28(%rbp), %esi
	imull	%esi, %edx
	movl	-244(%rbp), %esi
	subl	-28(%rbp), %esi
	addl	%esi, %edx
	imull	-220(%rbp), %edx
	movslq	%edx, %rdi
	addq	%rdi, %rcx
	movslq	-220(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	memcpy
	jmp	.LBB31_49
.LBB31_48:                              # %if.else.217
                                        #   in Loop: Header=BB31_31 Depth=2
	leaq	-96(%rbp), %rdi
	leaq	-224(%rbp), %rsi
	movl	-244(%rbp), %edx
	movl	-248(%rbp), %ecx
	callq	gimp_pixel_rgn_set_pixel
.LBB31_49:                              # %if.end.219
                                        #   in Loop: Header=BB31_31 Depth=2
	jmp	.LBB31_50
.LBB31_50:                              # %if.end.220
                                        #   in Loop: Header=BB31_31 Depth=2
	jmp	.LBB31_51
.LBB31_51:                              # %if.end.221
                                        #   in Loop: Header=BB31_31 Depth=2
	jmp	.LBB31_52
.LBB31_52:                              # %for.inc.222
                                        #   in Loop: Header=BB31_31 Depth=2
	movl	-276(%rbp), %eax
	addl	-236(%rbp), %eax
	movl	%eax, -236(%rbp)
	jmp	.LBB31_31
.LBB31_53:                              # %for.end.224
                                        #   in Loop: Header=BB31_20 Depth=1
	jmp	.LBB31_54
.LBB31_54:                              # %if.end.225
                                        #   in Loop: Header=BB31_20 Depth=1
	jmp	.LBB31_55
.LBB31_55:                              # %if.end.226
                                        #   in Loop: Header=BB31_20 Depth=1
	jmp	.LBB31_56
.LBB31_56:                              # %for.inc.227
                                        #   in Loop: Header=BB31_20 Depth=1
	movl	-232(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -232(%rbp)
	movq	-200(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -200(%rbp)
	movq	-184(%rbp), %rcx
	addq	$4, %rcx
	movq	%rcx, -184(%rbp)
	jmp	.LBB31_20
.LBB31_57:                              # %for.end.231
	movq	-208(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end31:
	.size	fill_poly_color, .Lfunc_end31-fill_poly_color
	.cfi_endproc

	.align	16, 0x90
	.type	fill_poly_image,@function
fill_poly_image:                        # @fill_poly_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp125:
	.cfi_def_cfa_offset 16
.Ltmp126:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp127:
	.cfi_def_cfa_register %rbp
	subq	$400, %rsp              # imm = 0x190
	movq	16(%rbp), %rax
	xorps	%xmm1, %xmm1
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movq	%rax, -48(%rbp)
	movsd	%xmm1, -152(%rbp)
	movsd	%xmm1, -160(%rbp)
	movsd	%xmm1, -168(%rbp)
	movsd	%xmm1, -176(%rbp)
	cmpl	$0, mvals+56
	je	.LBB32_2
# BB#1:                                 # %if.then
	movl	$3, -308(%rbp)
	movl	-308(%rbp), %eax
	imull	-308(%rbp), %eax
	movl	%eax, -312(%rbp)
	jmp	.LBB32_3
.LBB32_2:                               # %if.else
	movl	$1, -312(%rbp)
	movl	$1, -308(%rbp)
.LBB32_3:                               # %if.end
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -252(%rbp)
	movl	$0, -264(%rbp)
.LBB32_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-264(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	jae	.LBB32_13
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB32_4 Depth=1
	cmpl	$0, -264(%rbp)
	je	.LBB32_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB32_4 Depth=1
	movl	-264(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	addq	$8, %rdx
	shlq	$4, %rcx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -320(%rbp)       # 8-byte Spill
	jmp	.LBB32_8
.LBB32_7:                               # %cond.false
                                        #   in Loop: Header=BB32_4 Depth=1
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-8(%rbp), %rdx
	addq	$8, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -320(%rbp)       # 8-byte Spill
.LBB32_8:                               # %cond.end
                                        #   in Loop: Header=BB32_4 Depth=1
	movsd	-320(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -180(%rbp)
	cmpl	$0, -264(%rbp)
	je	.LBB32_10
# BB#9:                                 # %cond.true.11
                                        #   in Loop: Header=BB32_4 Depth=1
	movl	-264(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	addq	$8, %rdx
	shlq	$4, %rcx
	addq	%rcx, %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -328(%rbp)       # 8-byte Spill
	jmp	.LBB32_11
.LBB32_10:                              # %cond.false.17
                                        #   in Loop: Header=BB32_4 Depth=1
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-8(%rbp), %rdx
	addq	$8, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -328(%rbp)       # 8-byte Spill
.LBB32_11:                              # %cond.end.24
                                        #   in Loop: Header=BB32_4 Depth=1
	movsd	-328(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movabsq	$vecs, %rax
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -184(%rbp)
	movslq	-264(%rbp), %rdx
	movq	-8(%rbp), %rsi
	addq	$8, %rsi
	shlq	$4, %rdx
	addq	%rdx, %rsi
	cvttsd2si	(%rsi), %ecx
	movl	%ecx, -188(%rbp)
	movslq	-264(%rbp), %rdx
	movq	-8(%rbp), %rsi
	addq	$8, %rsi
	shlq	$4, %rdx
	addq	%rdx, %rsi
	cvttsd2si	8(%rsi), %ecx
	movl	%ecx, -192(%rbp)
	movslq	-264(%rbp), %rdx
	imulq	$56, %rdx, %rdx
	addq	%rdx, %rax
	movl	-180(%rbp), %esi
	movl	-184(%rbp), %edx
	movl	-188(%rbp), %ecx
	movl	-192(%rbp), %r8d
	movq	%rax, %rdi
	callq	calc_spec_vec
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB32_4 Depth=1
	movl	-264(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -264(%rbp)
	jmp	.LBB32_4
.LBB32_13:                              # %for.end
	leaq	-152(%rbp), %rsi
	leaq	-160(%rbp), %rdx
	leaq	-168(%rbp), %rcx
	leaq	-176(%rbp), %r8
	movq	-8(%rbp), %rdi
	callq	polygon_extents
	movl	$4, %r9d
	movl	%r9d, %esi
	cvttsd2si	-152(%rbp), %r9d
	movl	%r9d, -196(%rbp)
	cvttsd2si	-160(%rbp), %r9d
	movl	%r9d, -200(%rbp)
	cvttsd2si	-168(%rbp), %r9d
	movl	%r9d, -204(%rbp)
	cvttsd2si	-176(%rbp), %r9d
	movl	%r9d, -208(%rbp)
	movl	-208(%rbp), %r9d
	subl	-200(%rbp), %r9d
	imull	-308(%rbp), %r9d
	movl	%r9d, -216(%rbp)
	movl	-204(%rbp), %r9d
	subl	-196(%rbp), %r9d
	imull	-308(%rbp), %r9d
	movl	%r9d, -212(%rbp)
	movslq	-216(%rbp), %rdi
	movl	%eax, -332(%rbp)        # 4-byte Spill
	callq	g_malloc_n
	movl	$4, %r9d
	movl	%r9d, %esi
	movq	%rax, -232(%rbp)
	movslq	-216(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -224(%rbp)
	movl	$0, -264(%rbp)
.LBB32_14:                              # %for.cond.49
                                        # =>This Inner Loop Header: Depth=1
	movl	-264(%rbp), %eax
	cmpl	-216(%rbp), %eax
	jge	.LBB32_17
# BB#15:                                # %for.body.52
                                        #   in Loop: Header=BB32_14 Depth=1
	movl	-204(%rbp), %eax
	imull	-308(%rbp), %eax
	movslq	-264(%rbp), %rcx
	movq	-232(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
	movl	-196(%rbp), %eax
	imull	-308(%rbp), %eax
	movslq	-264(%rbp), %rcx
	movq	-224(%rbp), %rdx
	movl	%eax, (%rdx,%rcx,4)
# BB#16:                                # %for.inc.59
                                        #   in Loop: Header=BB32_14 Depth=1
	movl	-264(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -264(%rbp)
	jmp	.LBB32_14
.LBB32_17:                              # %for.end.61
	movl	$0, -264(%rbp)
.LBB32_18:                              # %for.cond.62
                                        # =>This Inner Loop Header: Depth=1
	movl	-264(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	jae	.LBB32_27
# BB#19:                                # %for.body.66
                                        #   in Loop: Header=BB32_18 Depth=1
	cmpl	$0, -264(%rbp)
	je	.LBB32_21
# BB#20:                                # %cond.true.68
                                        #   in Loop: Header=BB32_18 Depth=1
	movl	-264(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	addq	$8, %rdx
	shlq	$4, %rcx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -344(%rbp)       # 8-byte Spill
	jmp	.LBB32_22
.LBB32_21:                              # %cond.false.74
                                        #   in Loop: Header=BB32_18 Depth=1
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-8(%rbp), %rdx
	addq	$8, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -344(%rbp)       # 8-byte Spill
.LBB32_22:                              # %cond.end.81
                                        #   in Loop: Header=BB32_18 Depth=1
	movsd	-344(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -180(%rbp)
	cmpl	$0, -264(%rbp)
	je	.LBB32_24
# BB#23:                                # %cond.true.85
                                        #   in Loop: Header=BB32_18 Depth=1
	movl	-264(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-8(%rbp), %rdx
	addq	$8, %rdx
	shlq	$4, %rcx
	addq	%rcx, %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -352(%rbp)       # 8-byte Spill
	jmp	.LBB32_25
.LBB32_24:                              # %cond.false.91
                                        #   in Loop: Header=BB32_18 Depth=1
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-8(%rbp), %rdx
	addq	$8, %rdx
	shlq	$4, %rax
	addq	%rax, %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -352(%rbp)       # 8-byte Spill
.LBB32_25:                              # %cond.end.98
                                        #   in Loop: Header=BB32_18 Depth=1
	movsd	-352(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, -184(%rbp)
	movslq	-264(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	$8, %rdx
	shlq	$4, %rcx
	addq	%rcx, %rdx
	cvttsd2si	(%rdx), %eax
	movl	%eax, -188(%rbp)
	movslq	-264(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	$8, %rdx
	shlq	$4, %rcx
	addq	%rcx, %rdx
	cvttsd2si	8(%rdx), %eax
	movl	%eax, -192(%rbp)
	movl	-308(%rbp), %eax
	imull	-180(%rbp), %eax
	movl	%eax, -180(%rbp)
	movl	-308(%rbp), %eax
	imull	-184(%rbp), %eax
	movl	%eax, -184(%rbp)
	movl	-308(%rbp), %eax
	imull	-188(%rbp), %eax
	movl	%eax, -188(%rbp)
	movl	-308(%rbp), %eax
	imull	-192(%rbp), %eax
	movl	%eax, -192(%rbp)
	movl	-180(%rbp), %edi
	movl	-184(%rbp), %esi
	movl	-188(%rbp), %edx
	movl	-192(%rbp), %ecx
	movl	-200(%rbp), %eax
	imull	-308(%rbp), %eax
	movq	-232(%rbp), %r9
	movq	-224(%rbp), %r8
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movl	%eax, %r8d
	movq	-360(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	convert_segment
# BB#26:                                # %for.inc.116
                                        #   in Loop: Header=BB32_18 Depth=1
	movl	-264(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -264(%rbp)
	jmp	.LBB32_18
.LBB32_27:                              # %for.end.118
	leaq	-96(%rbp), %rdi
	xorl	%eax, %eax
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movl	4(%rcx), %r8d
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %r9d
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	cmpq	$0, -48(%rbp)
	jne	.LBB32_29
# BB#28:                                # %if.then.120
	leaq	-144(%rbp), %rdi
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	4(%rdx), %r8d
	movq	-16(%rbp), %rdx
	movl	8(%rdx), %r9d
	movl	%eax, %edx
	movl	%ecx, -364(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
.LBB32_29:                              # %if.end.123
	movl	$4, %eax
	movl	%eax, %esi
	movslq	-212(%rbp), %rdi
	callq	g_malloc_n
	movq	%rax, -240(%rbp)
	movl	$0, -264(%rbp)
.LBB32_30:                              # %for.cond.126
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB32_34 Depth 2
                                        #     Child Loop BB32_41 Depth 2
                                        #       Child Loop BB32_45 Depth 3
                                        #       Child Loop BB32_50 Depth 3
	movl	-264(%rbp), %eax
	cmpl	-216(%rbp), %eax
	jge	.LBB32_73
# BB#31:                                # %for.body.129
                                        #   in Loop: Header=BB32_30 Depth=1
	movl	-264(%rbp), %eax
	cltd
	idivl	-308(%rbp)
	cmpl	$0, %edx
	jne	.LBB32_33
# BB#32:                                # %if.then.131
                                        #   in Loop: Header=BB32_30 Depth=1
	xorl	%esi, %esi
	movq	-240(%rbp), %rax
	movslq	-212(%rbp), %rcx
	shlq	$2, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	memset
.LBB32_33:                              # %if.end.134
                                        #   in Loop: Header=BB32_30 Depth=1
	cvtsi2sdl	-264(%rbp), %xmm0
	cvtsi2sdl	-308(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	cvtsi2sdl	-200(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -304(%rbp)
	movslq	-264(%rbp), %rax
	movq	-232(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -268(%rbp)
.LBB32_34:                              # %for.cond.140
                                        #   Parent Loop BB32_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-268(%rbp), %eax
	movslq	-264(%rbp), %rcx
	movq	-224(%rbp), %rdx
	cmpl	(%rdx,%rcx,4), %eax
	jge	.LBB32_37
# BB#35:                                # %for.body.145
                                        #   in Loop: Header=BB32_34 Depth=2
	movl	-268(%rbp), %eax
	movl	-196(%rbp), %ecx
	imull	-308(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -276(%rbp)
	movslq	-276(%rbp), %rdx
	movq	-240(%rbp), %rsi
	movl	(%rsi,%rdx,4), %eax
	addl	$255, %eax
	movl	%eax, (%rsi,%rdx,4)
# BB#36:                                # %for.inc.151
                                        #   in Loop: Header=BB32_34 Depth=2
	movl	-268(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -268(%rbp)
	jmp	.LBB32_34
.LBB32_37:                              # %for.end.153
                                        #   in Loop: Header=BB32_30 Depth=1
	movl	-264(%rbp), %eax
	addl	$1, %eax
	cltd
	idivl	-308(%rbp)
	cmpl	$0, %edx
	jne	.LBB32_71
# BB#38:                                # %if.then.157
                                        #   in Loop: Header=BB32_30 Depth=1
	movl	-264(%rbp), %eax
	cltd
	idivl	-308(%rbp)
	addl	-200(%rbp), %eax
	movl	%eax, -280(%rbp)
	movl	-280(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.LBB32_70
# BB#39:                                # %land.lhs.true
                                        #   in Loop: Header=BB32_30 Depth=1
	movl	-280(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB32_70
# BB#40:                                # %if.then.164
                                        #   in Loop: Header=BB32_30 Depth=1
	movl	$0, -268(%rbp)
.LBB32_41:                              # %for.cond.165
                                        #   Parent Loop BB32_30 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB32_45 Depth 3
                                        #       Child Loop BB32_50 Depth 3
	movl	-268(%rbp), %eax
	cmpl	-212(%rbp), %eax
	jge	.LBB32_69
# BB#42:                                # %for.body.168
                                        #   in Loop: Header=BB32_41 Depth=2
	movl	-268(%rbp), %eax
	cltd
	idivl	-308(%rbp)
	addl	-196(%rbp), %eax
	movl	%eax, -276(%rbp)
	movl	-276(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.LBB32_67
# BB#43:                                # %land.lhs.true.173
                                        #   in Loop: Header=BB32_41 Depth=2
	movl	-276(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB32_67
# BB#44:                                # %if.then.176
                                        #   in Loop: Header=BB32_41 Depth=2
	movl	$0, -244(%rbp)
	movl	$0, -272(%rbp)
.LBB32_45:                              # %for.cond.177
                                        #   Parent Loop BB32_30 Depth=1
                                        #     Parent Loop BB32_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-272(%rbp), %eax
	cmpl	-308(%rbp), %eax
	jge	.LBB32_48
# BB#46:                                # %for.body.180
                                        #   in Loop: Header=BB32_45 Depth=3
	movl	-268(%rbp), %eax
	addl	-272(%rbp), %eax
	movslq	%eax, %rcx
	movq	-240(%rbp), %rdx
	movl	(%rdx,%rcx,4), %eax
	addl	-244(%rbp), %eax
	movl	%eax, -244(%rbp)
# BB#47:                                # %for.inc.185
                                        #   in Loop: Header=BB32_45 Depth=3
	movl	-272(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -272(%rbp)
	jmp	.LBB32_45
.LBB32_48:                              # %for.end.187
                                        #   in Loop: Header=BB32_41 Depth=2
	movl	-312(%rbp), %eax
	movl	-244(%rbp), %ecx
	movl	%eax, -368(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-368(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -244(%rbp)
	cmpl	$0, -244(%rbp)
	jle	.LBB32_66
# BB#49:                                # %if.then.191
                                        #   in Loop: Header=BB32_41 Depth=2
	movabsq	$vecs, %rdi
	cvtsi2sdl	-268(%rbp), %xmm0
	cvtsi2sdl	-308(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	cvtsi2sdl	-196(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -296(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %esi
	movsd	-296(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-304(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	calc_spec_contrib
	leaq	-96(%rbp), %rdi
	leaq	-256(%rbp), %rsi
	movsd	%xmm0, -288(%rbp)
	movl	-276(%rbp), %edx
	movl	-280(%rbp), %ecx
	callq	gimp_pixel_rgn_get_pixel
	movl	$0, -260(%rbp)
.LBB32_50:                              # %for.cond.199
                                        #   Parent Loop BB32_30 Depth=1
                                        #     Parent Loop BB32_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-260(%rbp), %eax
	cmpl	-252(%rbp), %eax
	jge	.LBB32_62
# BB#51:                                # %for.body.202
                                        #   in Loop: Header=BB32_50 Depth=3
	xorps	%xmm0, %xmm0
	ucomisd	-288(%rbp), %xmm0
	jbe	.LBB32_53
# BB#52:                                # %if.then.205
                                        #   in Loop: Header=BB32_50 Depth=3
	movslq	-260(%rbp), %rax
	movzbl	-256(%rbp,%rax), %ecx
	movslq	-260(%rbp), %rax
	movzbl	-256(%rbp,%rax), %edx
	movslq	-260(%rbp), %rax
	movzbl	back(,%rax), %esi
	subl	%esi, %edx
	cvtsi2sdl	%edx, %xmm0
	mulsd	-288(%rbp), %xmm0
	cvttsd2si	%xmm0, %edx
	addl	%edx, %ecx
	movl	%ecx, -248(%rbp)
	jmp	.LBB32_54
.LBB32_53:                              # %if.else.220
                                        #   in Loop: Header=BB32_50 Depth=3
	movslq	-260(%rbp), %rax
	movzbl	-256(%rbp,%rax), %ecx
	movslq	-260(%rbp), %rax
	movzbl	fore(,%rax), %edx
	movslq	-260(%rbp), %rax
	movzbl	-256(%rbp,%rax), %esi
	subl	%esi, %edx
	cvtsi2sdl	%edx, %xmm0
	mulsd	-288(%rbp), %xmm0
	cvttsd2si	%xmm0, %edx
	addl	%edx, %ecx
	movl	%ecx, -248(%rbp)
.LBB32_54:                              # %if.end.235
                                        #   in Loop: Header=BB32_50 Depth=3
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-248(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -248(%rbp)
	cmpl	$255, -248(%rbp)
	jle	.LBB32_56
# BB#55:                                # %cond.true.241
                                        #   in Loop: Header=BB32_50 Depth=3
	movl	$255, %eax
	movl	%eax, -372(%rbp)        # 4-byte Spill
	jmp	.LBB32_60
.LBB32_56:                              # %cond.false.242
                                        #   in Loop: Header=BB32_50 Depth=3
	cmpl	$0, -248(%rbp)
	jge	.LBB32_58
# BB#57:                                # %cond.true.245
                                        #   in Loop: Header=BB32_50 Depth=3
	xorl	%eax, %eax
	movl	%eax, -376(%rbp)        # 4-byte Spill
	jmp	.LBB32_59
.LBB32_58:                              # %cond.false.246
                                        #   in Loop: Header=BB32_50 Depth=3
	movl	-248(%rbp), %eax
	movl	%eax, -376(%rbp)        # 4-byte Spill
.LBB32_59:                              # %cond.end.247
                                        #   in Loop: Header=BB32_50 Depth=3
	movl	-376(%rbp), %eax        # 4-byte Reload
	movl	%eax, -372(%rbp)        # 4-byte Spill
.LBB32_60:                              # %cond.end.249
                                        #   in Loop: Header=BB32_50 Depth=3
	movl	-372(%rbp), %eax        # 4-byte Reload
	movl	%eax, -248(%rbp)
	movslq	-260(%rbp), %rcx
	movzbl	back(,%rcx), %eax
	shll	$8, %eax
	movl	-248(%rbp), %edx
	movslq	-260(%rbp), %rcx
	movzbl	back(,%rcx), %esi
	subl	%esi, %edx
	imull	-244(%rbp), %edx
	addl	%edx, %eax
	sarl	$8, %eax
	movb	%al, %dil
	movslq	-260(%rbp), %rcx
	movb	%dil, -256(%rbp,%rcx)
# BB#61:                                # %for.inc.263
                                        #   in Loop: Header=BB32_50 Depth=3
	movl	-260(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -260(%rbp)
	jmp	.LBB32_50
.LBB32_62:                              # %for.end.265
                                        #   in Loop: Header=BB32_41 Depth=2
	cmpq	$0, -48(%rbp)
	je	.LBB32_64
# BB#63:                                # %if.then.267
                                        #   in Loop: Header=BB32_41 Depth=2
	leaq	-256(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	-280(%rbp), %edx
	subl	-32(%rbp), %edx
	movl	-36(%rbp), %esi
	subl	-28(%rbp), %esi
	imull	%esi, %edx
	movl	-276(%rbp), %esi
	subl	-28(%rbp), %esi
	addl	%esi, %edx
	imull	-252(%rbp), %edx
	movslq	%edx, %rdi
	addq	%rdi, %rcx
	movslq	-252(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rax, %rsi
	callq	memcpy
	jmp	.LBB32_65
.LBB32_64:                              # %if.else.277
                                        #   in Loop: Header=BB32_41 Depth=2
	leaq	-144(%rbp), %rdi
	leaq	-256(%rbp), %rsi
	movl	-276(%rbp), %edx
	movl	-280(%rbp), %ecx
	callq	gimp_pixel_rgn_set_pixel
.LBB32_65:                              # %if.end.279
                                        #   in Loop: Header=BB32_41 Depth=2
	jmp	.LBB32_66
.LBB32_66:                              # %if.end.280
                                        #   in Loop: Header=BB32_41 Depth=2
	jmp	.LBB32_67
.LBB32_67:                              # %if.end.281
                                        #   in Loop: Header=BB32_41 Depth=2
	jmp	.LBB32_68
.LBB32_68:                              # %for.inc.282
                                        #   in Loop: Header=BB32_41 Depth=2
	movl	-308(%rbp), %eax
	addl	-268(%rbp), %eax
	movl	%eax, -268(%rbp)
	jmp	.LBB32_41
.LBB32_69:                              # %for.end.284
                                        #   in Loop: Header=BB32_30 Depth=1
	jmp	.LBB32_70
.LBB32_70:                              # %if.end.285
                                        #   in Loop: Header=BB32_30 Depth=1
	jmp	.LBB32_71
.LBB32_71:                              # %if.end.286
                                        #   in Loop: Header=BB32_30 Depth=1
	jmp	.LBB32_72
.LBB32_72:                              # %for.inc.287
                                        #   in Loop: Header=BB32_30 Depth=1
	movl	-264(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -264(%rbp)
	jmp	.LBB32_30
.LBB32_73:                              # %for.end.289
	movq	-240(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-232(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-224(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	addq	$400, %rsp              # imm = 0x190
	popq	%rbp
	retq
.Lfunc_end32:
	.size	fill_poly_image, .Lfunc_end32-fill_poly_image
	.cfi_endproc

	.align	16, 0x90
	.type	clip_point,@function
clip_point:                             # @clip_point
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp128:
	.cfi_def_cfa_offset 16
.Ltmp129:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp130:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	xorps	%xmm4, %xmm4
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movsd	%xmm3, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-16(%rbp), %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)
	movq	-16(%rbp), %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)
	movq	-16(%rbp), %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	movq	-16(%rbp), %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdx
	movsd	8(%rdx), %xmm1          # xmm1 = mem[0],zero
	movd	%xmm1, %rdx
	movabsq	$-9223372036854775808, %rsi # imm = 0x8000000000000000
	xorq	%rsi, %rdx
	movd	%rdx, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rdx
	mulsd	(%rdx), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdx
	movsd	8(%rdx), %xmm1          # xmm1 = mem[0],zero
	movd	%xmm1, %rdx
	movabsq	$-9223372036854775808, %rsi # imm = 0x8000000000000000
	xorq	%rsi, %rdx
	movd	%rdx, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rdx
	mulsd	(%rdx), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -96(%rbp)
	ucomisd	-88(%rbp), %xmm4
	jbe	.LBB33_3
# BB#1:                                 # %land.lhs.true
	xorps	%xmm0, %xmm0
	ucomisd	-96(%rbp), %xmm0
	jbe	.LBB33_3
# BB#2:                                 # %if.then
	jmp	.LBB33_14
.LBB33_3:                               # %if.else
	xorps	%xmm0, %xmm0
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB33_6
# BB#4:                                 # %land.lhs.true.19
	xorps	%xmm0, %xmm0
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB33_6
# BB#5:                                 # %if.then.21
	movq	-56(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	addsd	8(%rax), %xmm1
	callq	polygon_add_point
	jmp	.LBB33_14
.LBB33_6:                               # %if.else.26
	xorps	%xmm0, %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-40(%rbp), %xmm1
	movsd	%xmm1, -128(%rbp)
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-48(%rbp), %xmm1
	movsd	%xmm1, -120(%rbp)
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	mulsd	-120(%rbp), %xmm1
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm2          # xmm2 = mem[0],zero
	mulsd	-128(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	movsd	%xmm1, -64(%rbp)
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB33_8
	jp	.LBB33_8
# BB#7:                                 # %if.then.39
	movq	-56(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	addsd	8(%rax), %xmm1
	callq	polygon_add_point
	jmp	.LBB33_14
.LBB33_8:                               # %if.end
	xorps	%xmm0, %xmm0
	movsd	-120(%rbp), %xmm1       # xmm1 = mem[0],zero
	divsd	-64(%rbp), %xmm1
	movsd	%xmm1, -72(%rbp)
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm1
	divsd	-64(%rbp), %xmm1
	movsd	%xmm1, -80(%rbp)
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-24(%rbp), %xmm1
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-32(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -104(%rbp)
	ucomisd	-88(%rbp), %xmm0
	jbe	.LBB33_11
# BB#9:                                 # %land.lhs.true.52
	xorps	%xmm0, %xmm0
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB33_11
# BB#10:                                # %if.then.54
	movq	-56(%rbp), %rdi
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	mulsd	-104(%rbp), %xmm0
	movq	-16(%rbp), %rax
	addsd	(%rax), %xmm0
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	mulsd	-104(%rbp), %xmm1
	movq	-16(%rbp), %rax
	addsd	8(%rax), %xmm1
	callq	polygon_add_point
	movq	-56(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	addsd	8(%rax), %xmm1
	callq	polygon_add_point
	jmp	.LBB33_12
.LBB33_11:                              # %if.else.67
	movq	-56(%rbp), %rdi
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	mulsd	-104(%rbp), %xmm0
	movq	-16(%rbp), %rax
	addsd	(%rax), %xmm0
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	mulsd	-104(%rbp), %xmm1
	movq	-16(%rbp), %rax
	addsd	8(%rax), %xmm1
	callq	polygon_add_point
.LBB33_12:                              # %if.end.76
	jmp	.LBB33_13
.LBB33_13:                              # %if.end.77
	jmp	.LBB33_14
.LBB33_14:                              # %if.end.78
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	clip_point, .Lfunc_end33-clip_point
	.cfi_endproc

	.align	16, 0x90
	.type	polygon_scale,@function
polygon_scale:                          # @polygon_scale
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp131:
	.cfi_def_cfa_offset 16
.Ltmp132:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp133:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB34_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	jae	.LBB34_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB34_1 Depth=1
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	addq	$8, %rdx
	shlq	$4, %rcx
	addq	%rcx, %rdx
	mulsd	(%rdx), %xmm0
	movsd	%xmm0, (%rdx)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	addq	$8, %rdx
	shlq	$4, %rcx
	addq	%rcx, %rdx
	mulsd	8(%rdx), %xmm0
	movsd	%xmm0, 8(%rdx)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB34_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB34_1
.LBB34_4:                               # %for.end
	popq	%rbp
	retq
.Lfunc_end34:
	.size	polygon_scale, .Lfunc_end34-polygon_scale
	.cfi_endproc

	.align	16, 0x90
	.type	calc_spec_vec,@function
calc_spec_vec:                          # @calc_spec_vec
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp134:
	.cfi_def_cfa_offset 16
.Ltmp135:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp136:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	cvtsi2sdl	-12(%rbp), %xmm1
	movq	-8(%rbp), %rdi
	movsd	%xmm1, (%rdi)
	cvtsi2sdl	-16(%rbp), %xmm1
	movq	-8(%rbp), %rdi
	movsd	%xmm1, 8(%rdi)
	cvtsi2sdl	-20(%rbp), %xmm1
	movq	-8(%rbp), %rdi
	movsd	%xmm1, 16(%rdi)
	cvtsi2sdl	-24(%rbp), %xmm1
	movq	-8(%rbp), %rdi
	movsd	%xmm1, 24(%rdi)
	movl	-20(%rbp), %ecx
	subl	-12(%rbp), %ecx
	movl	-20(%rbp), %edx
	subl	-12(%rbp), %edx
	imull	%edx, %ecx
	movl	-24(%rbp), %edx
	subl	-16(%rbp), %edx
	movl	-24(%rbp), %esi
	subl	-16(%rbp), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	cvtsi2sdl	%ecx, %xmm1
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sqrt
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB35_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	-24(%rbp), %ecx
	subl	-16(%rbp), %ecx
	subl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm0
	divsd	-32(%rbp), %xmm0
	movq	-8(%rbp), %rdx
	movsd	%xmm0, 32(%rdx)
	movl	-20(%rbp), %eax
	subl	-12(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	divsd	-32(%rbp), %xmm0
	movq	-8(%rbp), %rdx
	movsd	%xmm0, 40(%rdx)
	jmp	.LBB35_3
.LBB35_2:                               # %if.else
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 32(%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm0, 40(%rax)
.LBB35_3:                               # %if.end
	movq	-8(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	mulsd	light_x, %xmm0
	movq	-8(%rbp), %rax
	movsd	40(%rax), %xmm1         # xmm1 = mem[0],zero
	mulsd	light_y, %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 48(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	calc_spec_vec, .Lfunc_end35-calc_spec_vec
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI36_0:
	.quad	4616189618054758400     # double 4
.LCPI36_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	calc_spec_contrib,@function
calc_spec_contrib:                      # @calc_spec_contrib
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp137:
	.cfi_def_cfa_offset 16
.Ltmp138:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp139:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	xorps	%xmm2, %xmm2
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm2, -48(%rbp)
	movl	$0, -36(%rbp)
.LBB36_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB36_11
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB36_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rcx
	imulq	$56, %rcx, %rcx
	addq	%rcx, %rax
	cvtsd2ss	-24(%rbp), %xmm0
	cvtsd2ss	-32(%rbp), %xmm1
	movq	%rax, %rdi
	callq	distance
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)
	cmpl	$1, mvals+68
	jne	.LBB36_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB36_1 Depth=1
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	callq	g_random_double
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
.LBB36_4:                               # %if.end
                                        #   in Loop: Header=BB36_1 Depth=1
	movsd	.LCPI36_1, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-56(%rbp), %xmm0
	jbe	.LBB36_6
# BB#5:                                 # %if.then.8
                                        #   in Loop: Header=BB36_1 Depth=1
	movslq	-36(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-8(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	jmp	.LBB36_9
.LBB36_6:                               # %if.else
                                        #   in Loop: Header=BB36_1 Depth=1
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	mvals+8, %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB36_8
# BB#7:                                 # %if.then.11
                                        #   in Loop: Header=BB36_1 Depth=1
	movsd	.LCPI36_1, %xmm0        # xmm0 = mem[0],zero
	movslq	-36(%rbp), %rax
	imulq	$56, %rax, %rax
	addq	-8(%rbp), %rax
	movsd	48(%rax), %xmm1         # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	mvals+8, %xmm2
	subsd	%xmm2, %xmm0
	mulsd	%xmm0, %xmm1
	addsd	-48(%rbp), %xmm1
	movsd	%xmm1, -48(%rbp)
.LBB36_8:                               # %if.end.18
                                        #   in Loop: Header=BB36_1 Depth=1
	jmp	.LBB36_9
.LBB36_9:                               # %if.end.19
                                        #   in Loop: Header=BB36_1 Depth=1
	jmp	.LBB36_10
.LBB36_10:                              # %for.inc
                                        #   in Loop: Header=BB36_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB36_1
.LBB36_11:                              # %for.end
	movsd	.LCPI36_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	calc_spec_contrib, .Lfunc_end36-calc_spec_contrib
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI37_0:
	.quad	4532020583610935537     # double 1.0000000000000001E-5
.LCPI37_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	distance,@function
distance:                               # @distance
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp140:
	.cfi_def_cfa_offset 16
.Ltmp141:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp142:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movsd	.LCPI37_0, %xmm2        # xmm2 = mem[0],zero
	movq	%rdi, -16(%rbp)
	movss	%xmm0, -20(%rbp)
	movss	%xmm1, -24(%rbp)
	movq	-16(%rbp), %rdi
	movsd	(%rdi), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdi
	subsd	16(%rdi), %xmm0
	movq	-16(%rbp), %rdi
	movsd	(%rdi), %xmm1           # xmm1 = mem[0],zero
	movq	-16(%rbp), %rdi
	subsd	16(%rdi), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-16(%rbp), %rdi
	movsd	8(%rdi), %xmm1          # xmm1 = mem[0],zero
	movq	-16(%rbp), %rdi
	subsd	24(%rdi), %xmm1
	movq	-16(%rbp), %rdi
	movsd	8(%rdi), %xmm3          # xmm3 = mem[0],zero
	movq	-16(%rbp), %rdi
	subsd	24(%rdi), %xmm3
	mulsd	%xmm3, %xmm1
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -28(%rbp)
	cvtss2sd	-28(%rbp), %xmm0
	ucomisd	%xmm0, %xmm2
	jbe	.LBB37_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	cvtss2sd	-20(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	cvtss2sd	-20(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	cvtss2sd	-24(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm2          # xmm2 = mem[0],zero
	cvtss2sd	-24(%rbp), %xmm3
	subsd	%xmm3, %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	jmp	.LBB37_8
.LBB37_2:                               # %if.end
	xorps	%xmm0, %xmm0
	cvtss2sd	-20(%rbp), %xmm1
	movq	-16(%rbp), %rax
	subsd	(%rax), %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, -36(%rbp)
	cvtss2sd	-24(%rbp), %xmm1
	movq	-16(%rbp), %rax
	subsd	8(%rax), %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, -40(%rbp)
	cvtss2sd	-20(%rbp), %xmm1
	movq	-16(%rbp), %rax
	subsd	16(%rax), %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, -44(%rbp)
	cvtss2sd	-24(%rbp), %xmm1
	movq	-16(%rbp), %rax
	subsd	24(%rax), %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, -48(%rbp)
	movq	-16(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	(%rax), %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, -52(%rbp)
	movq	-16(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	8(%rax), %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, -56(%rbp)
	movss	-36(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	-52(%rbp), %xmm1
	movss	-40(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	mulss	-56(%rbp), %xmm2
	addss	%xmm2, %xmm1
	divss	-28(%rbp), %xmm1
	movss	%xmm1, -32(%rbp)
	cvtss2sd	-32(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB37_4
# BB#3:                                 # %if.then.57
	movss	-36(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	-36(%rbp), %xmm0
	movss	-40(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	-40(%rbp), %xmm1
	addss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	sqrt
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	jmp	.LBB37_8
.LBB37_4:                               # %if.else
	movsd	.LCPI37_1, %xmm0        # xmm0 = mem[0],zero
	cvtss2sd	-32(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB37_6
# BB#5:                                 # %if.then.67
	movss	-44(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	-44(%rbp), %xmm0
	movss	-48(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	-48(%rbp), %xmm1
	addss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	sqrt
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	jmp	.LBB37_8
.LBB37_6:                               # %if.end.74
	jmp	.LBB37_7
.LBB37_7:                               # %if.end.75
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movss	-32(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	-52(%rbp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -60(%rbp)
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movss	-32(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	-56(%rbp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -64(%rbp)
	movss	-20(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	subss	-60(%rbp), %xmm0
	movss	-20(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	subss	-60(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	-24(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	subss	-64(%rbp), %xmm1
	movss	-24(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	subss	-64(%rbp), %xmm2
	mulss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	sqrt
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
.LBB37_8:                               # %return
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	distance, .Lfunc_end37-distance
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
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.14
	.quad	.L.str.15
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.16
	.quad	.L.str.17
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.18
	.quad	.L.str.19
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.20
	.quad	.L.str.21
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.22
	.quad	.L.str.23
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.24
	.quad	.L.str.25
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.26
	.quad	.L.str.27
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.28
	.quad	.L.str.29
	.size	query.args, 360

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
	.asciz	"tile-size"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Average diameter of each tile (in pixels)"
	.size	.L.str.7, 42

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"tile-height"
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Apparent height of each tile (in pixels)"
	.size	.L.str.9, 41

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"tile-spacing"
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Inter-tile spacing (in pixels)"
	.size	.L.str.11, 31

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"tile-neatness"
	.size	.L.str.12, 14

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Deviation from perfectly formed tiles (0.0 - 1.0)"
	.size	.L.str.13, 50

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"tile-allow-split"
	.size	.L.str.14, 17

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Allows splitting tiles at hard edges"
	.size	.L.str.15, 37

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"light-dir"
	.size	.L.str.16, 10

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Direction of light-source (in degrees)"
	.size	.L.str.17, 39

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"color-variation"
	.size	.L.str.18, 16

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Magnitude of random color variations (0.0 - 1.0)"
	.size	.L.str.19, 49

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"antialiasing"
	.size	.L.str.20, 13

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Enables smoother tile output at the cost of speed"
	.size	.L.str.21, 50

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"color-averaging"
	.size	.L.str.22, 16

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Tile color based on average of subsumed pixels"
	.size	.L.str.23, 47

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"tile-type"
	.size	.L.str.24, 10

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Tile geometry { SQUARES (0), HEXAGONS (1), OCTAGONS (2), TRIANGLES (3) }"
	.size	.L.str.25, 73

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"tile-surface"
	.size	.L.str.26, 13

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Surface characteristics { SMOOTH (0), ROUGH (1) }"
	.size	.L.str.27, 50

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"grout-color"
	.size	.L.str.28, 12

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Grout color (black/white or fore/background) { BW (0), FG-BG (1) }"
	.size	.L.str.29, 67

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"plug-in-mosaic"
	.size	.L.str.30, 15

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Convert the image into irregular tiles"
	.size	.L.str.31, 39

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Help not yet written for this plug-in"
	.size	.L.str.32, 38

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Spencer Kimball"
	.size	.L.str.33, 16

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Spencer Kimball & Peter Mattis"
	.size	.L.str.34, 31

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"1996"
	.size	.L.str.35, 5

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"_Mosaic..."
	.size	.L.str.36, 11

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.37, 12

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"<Image>/Filters/Distorts"
	.size	.L.str.38, 25

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.39, 20

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"UTF-8"
	.size	.L.str.40, 6

	.type	mvals,@object           # @mvals
	.data
	.align	8
mvals:
	.quad	4624633867356078080     # double 15
	.quad	4616189618054758400     # double 4
	.quad	4607182418800017408     # double 1
	.quad	4604029899060858061     # double 0.65000000000000002
	.long	1                       # 0x1
	.zero	4
	.quad	4638953906796232704     # double 135
	.quad	4596373779694328218     # double 0.20000000000000001
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.size	mvals, 80

	.type	.L.str.41,@object       # @.str.41
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.41:
	.asciz	"mosaic"
	.size	.L.str.41, 7

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Mosaic"
	.size	.L.str.42, 7

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"gimp-mosaic"
	.size	.L.str.43, 12

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"gtk-cancel"
	.size	.L.str.44, 11

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"gtk-ok"
	.size	.L.str.45, 7

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"invalidated"
	.size	.L.str.46, 12

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Squares"
	.size	.L.str.47, 8

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Hexagons"
	.size	.L.str.48, 9

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Octagons & squares"
	.size	.L.str.49, 19

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Triangles"
	.size	.L.str.50, 10

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"_Tiling primitives:"
	.size	.L.str.51, 20

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"changed"
	.size	.L.str.52, 8

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Tile _size:"
	.size	.L.str.53, 12

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"value-changed"
	.size	.L.str.54, 14

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Tile _height:"
	.size	.L.str.55, 14

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Til_e spacing:"
	.size	.L.str.56, 15

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Tile _neatness:"
	.size	.L.str.57, 16

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Light _direction:"
	.size	.L.str.58, 18

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Color _variation:"
	.size	.L.str.59, 18

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"_Antialiasing"
	.size	.L.str.60, 14

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"toggled"
	.size	.L.str.61, 8

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Co_lor averaging"
	.size	.L.str.62, 17

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Allo_w tile splitting"
	.size	.L.str.63, 22

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"_Pitted surfaces"
	.size	.L.str.64, 17

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"_FG/BG lighting"
	.size	.L.str.65, 16

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"Finding edges"
	.size	.L.str.66, 14

	.type	std_dev,@object         # @std_dev
	.data
	.align	8
std_dev:
	.quad	4607182418800017408     # double 1
	.size	std_dev, 8

	.type	fore,@object            # @fore
	.local	fore
	.comm	fore,4,1
	.type	back,@object            # @back
	.local	back
	.comm	back,4,1
	.type	light_x,@object         # @light_x
	.local	light_x
	.comm	light_x,8,8
	.type	light_y,@object         # @light_y
	.local	light_y
	.comm	light_y,8,8
	.type	scale,@object           # @scale
	.local	scale
	.comm	scale,8,8
	.type	.L.str.67,@object       # @.str.67
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.67:
	.asciz	"Rendering tiles"
	.size	.L.str.67, 16

	.type	h_grad,@object          # @h_grad
	.local	h_grad
	.comm	h_grad,8,8
	.type	v_grad,@object          # @v_grad
	.local	v_grad
	.comm	v_grad,8,8
	.type	m_grad,@object          # @m_grad
	.local	m_grad
	.comm	m_grad,8,8
	.type	grid,@object            # @grid
	.local	grid
	.comm	grid,8,8
	.type	grid_rows,@object       # @grid_rows
	.local	grid_rows
	.comm	grid_rows,4,4
	.type	grid_cols,@object       # @grid_cols
	.local	grid_cols
	.comm	grid_cols,4,4
	.type	grid_row_pad,@object    # @grid_row_pad
	.local	grid_row_pad
	.comm	grid_row_pad,4,4
	.type	grid_col_pad,@object    # @grid_col_pad
	.local	grid_col_pad
	.comm	grid_col_pad,4,4
	.type	grid_multiple,@object   # @grid_multiple
	.local	grid_multiple
	.comm	grid_multiple,4,4
	.type	grid_rowstride,@object  # @grid_rowstride
	.local	grid_rowstride
	.comm	grid_rowstride,4,4
	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"can't add more points"
	.size	.L.str.68, 22

	.type	vecs,@object            # @vecs
	.local	vecs
	.comm	vecs,672,16

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
