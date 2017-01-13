	.text
	.file	"nova.bc"
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
	movabsq	$.L.str.18, %rdi
	movabsq	$.L.str.19, %rsi
	movabsq	$.L.str.20, %rdx
	movabsq	$.L.str.21, %rax
	movabsq	$.L.str.22, %r9
	movabsq	$.L.str.23, %rcx
	movabsq	$.L.str.24, %r8
	movl	$1, %r10d
	movl	$9, %r11d
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
	movl	$9, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.18, %rdi
	movabsq	$.L.str.25, %rsi
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
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.26, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.26, %rdi
	movabsq	$.L.str.27, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.26, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -80(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -52(%rbp)
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
	jmp	.LBB1_28
.LBB1_28:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_29
.LBB1_29:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB1_14
	jmp	.LBB1_15
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.18, %rdi
	movabsq	$pvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-48(%rbp), %rdi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	nova_dialog
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
	jmp	.LBB1_27
.LBB1_5:                                # %if.end
	jmp	.LBB1_16
.LBB1_6:                                # %sw.bb.9
	cmpl	$9, -12(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then.10
	movl	$1, -56(%rbp)
.LBB1_8:                                # %if.end.11
	cmpl	$3, -56(%rbp)
	jne	.LBB1_10
# BB#9:                                 # %if.then.13
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, pvals
	movq	-24(%rbp), %rax
	movl	168(%rax), %ecx
	movl	%ecx, pvals+4
	movq	-24(%rbp), %rax
	movq	208(%rax), %rdx
	movq	%rdx, pvals+8
	movq	216(%rax), %rdx
	movq	%rdx, pvals+16
	movq	224(%rax), %rdx
	movq	%rdx, pvals+24
	movq	232(%rax), %rax
	movq	%rax, pvals+32
	movq	-24(%rbp), %rax
	movl	248(%rax), %ecx
	movl	%ecx, pvals+40
	movq	-24(%rbp), %rax
	movl	288(%rax), %ecx
	movl	%ecx, pvals+44
	movq	-24(%rbp), %rax
	movl	328(%rax), %ecx
	movl	%ecx, pvals+48
.LBB1_10:                               # %if.end.31
	cmpl	$3, -56(%rbp)
	jne	.LBB1_13
# BB#11:                                # %land.lhs.true
	cmpl	$0, pvals+40
	jg	.LBB1_13
# BB#12:                                # %if.then.34
	movl	$1, -56(%rbp)
.LBB1_13:                               # %if.end.35
	jmp	.LBB1_16
.LBB1_14:                               # %sw.bb.36
	movabsq	$.L.str.18, %rdi
	movabsq	$pvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB1_16
.LBB1_15:                               # %sw.default
	jmp	.LBB1_16
.LBB1_16:                               # %sw.epilog
	cmpl	$3, -56(%rbp)
	jne	.LBB1_26
# BB#17:                                # %if.then.39
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_19
# BB#18:                                # %lor.lhs.false
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB1_24
.LBB1_19:                               # %if.then.45
	movabsq	$.L.str.28, %rdi
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
	callq	nova
	cmpl	$1, -52(%rbp)
	je	.LBB1_21
# BB#20:                                # %if.then.51
	callq	gimp_displays_flush
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB1_21:                               # %if.end.53
	cmpl	$0, -52(%rbp)
	jne	.LBB1_23
# BB#22:                                # %if.then.56
	movabsq	$.L.str.18, %rdi
	movabsq	$pvals, %rax
	movl	$56, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB1_23:                               # %if.end.58
	jmp	.LBB1_25
.LBB1_24:                               # %if.else
	movl	$0, -56(%rbp)
.LBB1_25:                               # %if.end.59
	jmp	.LBB1_26
.LBB1_26:                               # %if.end.60
	movl	-56(%rbp), %eax
	movl	%eax, run.values+8
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB1_27:                               # %return
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

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI3_0:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_1:
	.quad	4607182418800017408     # double 1
.LCPI3_2:
	.quad	4652218415073722368     # double 1024
.LCPI3_3:
	.quad	4625196817309499392     # double 16
.LCPI3_4:
	.quad	4636737291354636288     # double 100
.LCPI3_5:
	.quad	4621819117588971520     # double 10
.LCPI3_6:
	.quad	4688247212092686336     # double 262144
.LCPI3_7:
	.quad	4645040803167600640     # double 360
.LCPI3_8:
	.quad	4624633867356078080     # double 15
	.text
	.align	16, 0x90
	.type	nova_dialog,@function
nova_dialog:                            # @nova_dialog
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
	pushq	%rbx
	subq	$536, %rsp              # imm = 0x218
.Ltmp17:
	.cfi_offset %rbx, -24
	movabsq	$.L.str.29, %rax
	movl	$1, %esi
	movq	%rdi, -16(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	movabsq	$.L.str.30, %rdi
	callq	gettext
	movabsq	$.L.str.31, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.18, %r9
	movabsq	$.L.str.32, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.33, %r11
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
	movq	-16(%rbp), %rdi
	callq	gimp_zoom_preview_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_preview_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$288, %esi              # imm = 0x120
	movq	136(%rax), %rdi
	callq	gtk_widget_add_events
	movq	-32(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.34, %rsi
	movabsq	$nova, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	callq	gimp_preview_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	nova_center_create
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movl	$4, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-56(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-32(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -212(%rbp)        # 4-byte Spill
	movl	-212(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	je	.LBB3_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.35, %rdi
	callq	gettext
	movl	$117, %esi
	movl	$16, %edx
	movabsq	$pvals, %rdi
	addq	$8, %rdi
	xorl	%r8d, %r8d
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-224(%rbp), %rcx        # 8-byte Reload
	callq	gimp_color_button_new
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.36, %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-64(%rbp), %r8
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movl	%edx, %esi
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_color_button_get_color, %rcx
	movabsq	$pvals, %rdi
	addq	$8, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %r10
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rcx, %rdx
	movq	-248(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rdi
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-264(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -280(%rbp)        # 8-byte Spill
.LBB3_2:                                # %if.end
	movq	-56(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.38, %rdi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	movl	$125, %r8d
	movl	$8, %r9d
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_4, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_5, %xmm4         # xmm4 = mem[0],zero
	movsd	.LCPI3_6, %xmm6         # xmm6 = mem[0],zero
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	cvtsi2sdl	pvals+40, %xmm1
	movq	-296(%rbp), %r10        # 8-byte Reload
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rcx
	movsd	%xmm0, -312(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-312(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-312(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movsd	-312(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$pvals, %rdi
	addq	$40, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-320(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdx
	movq	-40(%rbp), %rdi
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-328(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -344(%rbp)        # 8-byte Spill
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.40, %rdi
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	movl	$125, %r8d
	movl	$8, %r9d
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_3, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %r11d
	xorps	%xmm1, %xmm1
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	cvtsi2sdl	pvals+44, %xmm3
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -376(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-376(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -384(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-384(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-384(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -388(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$pvals, %rdi
	addq	$44, %rdi
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
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdx
	movq	-40(%rbp), %rdi
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-408(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edi
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	je	.LBB3_4
# BB#3:                                 # %if.then.57
	movq	-56(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.41, %rdi
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$3, %edx
	movl	$125, %r8d
	movl	$8, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_7, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_8, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %ecx
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	cvtsi2sdl	pvals+48, %xmm1
	movq	-440(%rbp), %r11        # 8-byte Reload
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movl	%ecx, -452(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -464(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-464(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-464(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-464(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$pvals, %rdi
	addq	$48, %rdi
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
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdx
	movq	-40(%rbp), %rdi
	movq	%rdi, -480(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-480(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -496(%rbp)        # 8-byte Spill
.LBB3_4:                                # %if.end.65
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rdi
	movq	%rdi, -504(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -76(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-76(%rbp), %eax
	addq	$536, %rsp              # imm = 0x218
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	nova_dialog, .Lfunc_end3-nova_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
.LCPI4_1:
	.quad	4606281698874543309     # double 0.90000000000000002
.LCPI4_2:
	.quad	4562254508917369340     # double 0.001
.LCPI4_3:
	.quad	4602768891165194322     # double 0.51000000000000001
.LCPI4_4:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI4_5:
	.quad	4643176031446892544     # double 255
.LCPI4_6:
	.quad	-4620693217682128896    # double -0.5
.LCPI4_7:
	.quad	4602678819172646912     # double 0.5
.LCPI4_8:
	.quad	4645040803167600640     # double 360
	.text
	.align	16, 0x90
	.type	nova,@function
nova:                                   # @nova
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp20:
	.cfi_def_cfa_register %rbp
	subq	$976, %rsp              # imm = 0x3D0
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -312(%rbp)
	movq	$0, -432(%rbp)
	movsd	%xmm0, -448(%rbp)
	callq	g_rand_new
	movq	%rax, -424(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	movl	$8, %edi
	movl	%edi, %esi
	movl	%eax, -212(%rbp)
	movslq	pvals+44, %rdi
	callq	g_malloc_n
	movl	$32, %ecx
	movl	%ecx, %esi
	movq	%rax, -288(%rbp)
	movslq	pvals+44, %rdi
	callq	g_malloc_n
	movabsq	$pvals, %rsi
	addq	$8, %rsi
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -368(%rbp)
	movq	%rsi, %rdi
	callq	gimp_rgb_set_alpha
	movabsq	$pvals, %rax
	addq	$8, %rax
	leaq	-400(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_rgb_to_hsv
	movl	$0, -412(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-412(%rbp), %eax
	cmpl	pvals+44, %eax
	jge	.LBB4_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-424(%rbp), %rdi
	callq	gauss
	movsd	.LCPI4_6, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_7, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_8, %xmm3         # xmm3 = mem[0],zero
	movslq	-412(%rbp), %rdi
	movq	-288(%rbp), %rax
	movsd	%xmm0, (%rax,%rdi,8)
	cvtsi2sdl	pvals+48, %xmm0
	divsd	%xmm3, %xmm0
	movq	-424(%rbp), %rdi
	movsd	%xmm0, -456(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	g_rand_double_range
	xorps	%xmm1, %xmm1
	movsd	-456(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	addsd	-400(%rbp), %xmm2
	movsd	%xmm2, -400(%rbp)
	ucomisd	-400(%rbp), %xmm1
	jbe	.LBB4_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB4_1 Depth=1
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	addsd	-400(%rbp), %xmm0
	movsd	%xmm0, -400(%rbp)
	jmp	.LBB4_7
.LBB4_4:                                # %if.else
                                        #   in Loop: Header=BB4_1 Depth=1
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-400(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB4_6
# BB#5:                                 # %if.then.17
                                        #   in Loop: Header=BB4_1 Depth=1
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-400(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -400(%rbp)
.LBB4_6:                                # %if.end
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_7
.LBB4_7:                                # %if.end.19
                                        #   in Loop: Header=BB4_1 Depth=1
	leaq	-400(%rbp), %rdi
	movq	-368(%rbp), %rax
	movslq	-412(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	%rax, %rsi
	callq	gimp_hsv_to_rgb
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-412(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -412(%rbp)
	jmp	.LBB4_1
.LBB4_9:                                # %for.end
	cmpq	$0, -16(%rbp)
	je	.LBB4_11
# BB#10:                                # %if.then.20
	movq	-16(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gimp_zoom_preview_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-436(%rbp), %rsi
	leaq	-440(%rbp), %rdx
	leaq	-200(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_zoom_preview_get_source
	movq	%rax, -432(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gimp_zoom_preview_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_zoom_preview_get_factor
	leaq	-216(%rbp), %rcx
	leaq	-220(%rbp), %r8
	movsd	%xmm0, -448(%rbp)
	movq	-16(%rbp), %rdi
	movl	pvals, %esi
	movl	pvals+4, %edx
	callq	gimp_preview_transform
	movl	$0, -164(%rbp)
	movl	$0, -168(%rbp)
	movl	-436(%rbp), %edx
	movl	%edx, -172(%rbp)
	movl	-440(%rbp), %edx
	movl	%edx, -176(%rbp)
	jmp	.LBB4_12
.LBB4_11:                               # %if.else.27
	leaq	-164(%rbp), %rsi
	leaq	-168(%rbp), %rdx
	leaq	-172(%rbp), %rcx
	leaq	-176(%rbp), %r8
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_bounds
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	%eax, -476(%rbp)        # 4-byte Spill
	callq	gimp_drawable_bpp
	leaq	-64(%rbp), %rdi
	xorl	%r9d, %r9d
	movl	%eax, -200(%rbp)
	movl	pvals, %eax
	movl	%eax, -216(%rbp)
	movl	pvals+4, %eax
	movl	%eax, -220(%rbp)
	movq	-8(%rbp), %rsi
	movl	-164(%rbp), %edx
	movl	-168(%rbp), %ecx
	movl	-172(%rbp), %eax
	subl	-164(%rbp), %eax
	movl	-176(%rbp), %r10d
	subl	-168(%rbp), %r10d
	movl	%eax, %r8d
	movl	%r9d, -480(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-112(%rbp), %rdi
	movl	$1, %eax
	movq	-8(%rbp), %rsi
	movl	-164(%rbp), %edx
	movl	-168(%rbp), %ecx
	movl	-172(%rbp), %r8d
	subl	-164(%rbp), %r8d
	movl	-176(%rbp), %r9d
	subl	-168(%rbp), %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -484(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
.LBB4_12:                               # %if.end.36
	cmpl	$0, -212(%rbp)
	je	.LBB4_14
# BB#13:                                # %cond.true
	movl	-200(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -488(%rbp)        # 4-byte Spill
	jmp	.LBB4_15
.LBB4_14:                               # %cond.false
	movl	-200(%rbp), %eax
	movl	%eax, -488(%rbp)        # 4-byte Spill
.LBB4_15:                               # %cond.end
	movl	-488(%rbp), %eax        # 4-byte Reload
	movl	%eax, -196(%rbp)
	movl	$0, -204(%rbp)
	movl	-172(%rbp), %eax
	subl	-164(%rbp), %eax
	movl	-176(%rbp), %ecx
	subl	-168(%rbp), %ecx
	imull	%ecx, %eax
	movl	%eax, -208(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB4_104
# BB#16:                                # %if.then.43
	movl	$1, %eax
	movl	%eax, %esi
	movl	-176(%rbp), %eax
	imull	-436(%rbp), %eax
	imull	-200(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -128(%rbp)
	movq	%rax, -144(%rbp)
	movq	-128(%rbp), %rdi
	movq	-432(%rbp), %rax
	movl	-176(%rbp), %ecx
	imull	-436(%rbp), %ecx
	imull	-200(%rbp), %ecx
	movslq	%ecx, %rdx
	movq	%rsi, -496(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	callq	memcpy
	movl	-176(%rbp), %ecx
	imull	-436(%rbp), %ecx
	imull	-200(%rbp), %ecx
	movslq	%ecx, %rdi
	movq	-496(%rbp), %rsi        # 8-byte Reload
	callq	g_malloc_n
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -152(%rbp)
	movl	$0, -188(%rbp)
	movl	$0, -184(%rbp)
.LBB4_17:                               # %for.cond.55
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_19 Depth 2
	movl	-188(%rbp), %eax
	cmpl	-176(%rbp), %eax
	jge	.LBB4_103
# BB#18:                                # %for.body.58
                                        #   in Loop: Header=BB4_17 Depth=1
	movl	$0, -192(%rbp)
	movl	$0, -180(%rbp)
.LBB4_19:                               # %for.cond.59
                                        #   Parent Loop BB4_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-192(%rbp), %eax
	cmpl	-172(%rbp), %eax
	jge	.LBB4_101
# BB#20:                                # %for.body.62
                                        #   in Loop: Header=BB4_19 Depth=2
	movl	-180(%rbp), %eax
	movl	-216(%rbp), %ecx
	subl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	pvals+40(%rip), %xmm1
	cvtsi2sdl	-436(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	movq	-8(%rbp), %rdx
	movl	4(%rdx), %eax
	movl	%eax, %edx
	cvtsi2sdq	%rdx, %xmm2
	divsd	%xmm2, %xmm1
	movsd	-448(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -232(%rbp)
	movl	-184(%rbp), %eax
	movl	-220(%rbp), %ecx
	subl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	pvals+40(%rip), %xmm1
	cvtsi2sdl	-440(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	movq	-8(%rbp), %rdx
	movl	8(%rdx), %eax
	movl	%eax, %edx
	cvtsi2sdq	%rdx, %xmm2
	divsd	%xmm2, %xmm1
	mulsd	-448(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -240(%rbp)
	movsd	-232(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-232(%rbp), %xmm0
	movsd	-240(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-240(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt
	movsd	%xmm0, -248(%rbp)
	movsd	-232(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-240(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	atan2
	movsd	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_3, %xmm4         # xmm4 = mem[0],zero
	movsd	.LCPI4_4, %xmm5         # xmm5 = mem[0],zero
	divsd	%xmm5, %xmm0
	addsd	%xmm4, %xmm0
	cvtsi2sdl	pvals+44, %xmm4
	mulsd	%xmm4, %xmm0
	movsd	%xmm0, -280(%rbp)
	movsd	-280(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm3, -504(%rbp)       # 8-byte Spill
	movsd	%xmm1, -512(%rbp)       # 8-byte Spill
	movsd	%xmm2, -520(%rbp)       # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -412(%rbp)
	cvtsi2sdl	-412(%rbp), %xmm0
	movsd	-280(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -280(%rbp)
	movl	pvals+44, %eax
	movl	-412(%rbp), %ecx
	movl	%eax, -524(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-524(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%edx, -412(%rbp)
	movslq	-412(%rbp), %rsi
	movq	-288(%rbp), %rdi
	movsd	(%rdi,%rsi,8), %xmm0    # xmm0 = mem[0],zero
	movsd	-512(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	-280(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movl	-412(%rbp), %edx
	addl	$1, %edx
	movl	%edx, %eax
	cltd
	idivl	pvals+44
	movslq	%edx, %rsi
	movq	-288(%rbp), %rdi
	movsd	(%rdi,%rsi,8), %xmm1    # xmm1 = mem[0],zero
	mulsd	-280(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -264(%rbp)
	movsd	-264(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-264(%rbp), %xmm0
	movsd	%xmm0, -264(%rbp)
	movsd	-504(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	-248(%rbp), %xmm0
	movsd	-512(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	-520(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -256(%rbp)
	movsd	-256(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-512(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	ucomisd	%xmm2, %xmm1
	jbe	.LBB4_22
# BB#21:                                # %cond.true.112
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -536(%rbp)       # 8-byte Spill
	jmp	.LBB4_26
.LBB4_22:                               # %cond.false.113
                                        #   in Loop: Header=BB4_19 Depth=2
	xorps	%xmm0, %xmm0
	ucomisd	-256(%rbp), %xmm0
	jbe	.LBB4_24
# BB#23:                                # %cond.true.116
                                        #   in Loop: Header=BB4_19 Depth=2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -544(%rbp)       # 8-byte Spill
	jmp	.LBB4_25
.LBB4_24:                               # %cond.false.117
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	-256(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -544(%rbp)       # 8-byte Spill
.LBB4_25:                               # %cond.end.118
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	-544(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -536(%rbp)       # 8-byte Spill
.LBB4_26:                               # %cond.end.120
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	-536(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -296(%rbp)
	cmpl	$0, -212(%rbp)
	je	.LBB4_31
# BB#27:                                # %if.then.123
                                        #   in Loop: Header=BB4_19 Depth=2
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_5, %xmm2         # xmm2 = mem[0],zero
	movslq	-196(%rbp), %rax
	movq	-152(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm3
	divsd	%xmm2, %xmm3
	movsd	%xmm3, -304(%rbp)
	movsd	-304(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	-304(%rbp), %xmm1
	mulsd	-296(%rbp), %xmm1
	addsd	%xmm1, %xmm2
	movsd	%xmm2, -312(%rbp)
	movsd	-312(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB4_28
	jp	.LBB4_28
	jmp	.LBB4_29
.LBB4_28:                               # %if.then.133
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	-296(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-312(%rbp), %xmm0
	movsd	%xmm0, -328(%rbp)
	jmp	.LBB4_30
.LBB4_29:                               # %if.else.135
                                        #   in Loop: Header=BB4_19 Depth=2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -328(%rbp)
.LBB4_30:                               # %if.end.136
                                        #   in Loop: Header=BB4_19 Depth=2
	jmp	.LBB4_32
.LBB4_31:                               # %if.else.137
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	-296(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -328(%rbp)
.LBB4_32:                               # %if.end.138
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movaps	%xmm0, %xmm1
	subsd	-328(%rbp), %xmm1
	movsd	%xmm1, -320(%rbp)
	movslq	-412(%rbp), %rax
	shlq	$5, %rax
	addq	-368(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	subsd	-280(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	movl	-412(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, %eax
	cltd
	idivl	pvals+44
	movslq	%edx, %rsi
	shlq	$5, %rsi
	addq	-368(%rbp), %rsi
	movsd	(%rsi), %xmm2           # xmm2 = mem[0],zero
	mulsd	-280(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -408(%rbp)
	movsd	-256(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_40
# BB#33:                                # %if.then.153
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-408(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-256(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_35
# BB#34:                                # %cond.true.157
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -552(%rbp)       # 8-byte Spill
	jmp	.LBB4_39
.LBB4_35:                               # %cond.false.158
                                        #   in Loop: Header=BB4_19 Depth=2
	xorps	%xmm0, %xmm0
	movsd	-408(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-256(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_37
# BB#36:                                # %cond.true.162
                                        #   in Loop: Header=BB4_19 Depth=2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -560(%rbp)       # 8-byte Spill
	jmp	.LBB4_38
.LBB4_37:                               # %cond.false.163
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	-408(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-256(%rbp), %xmm0
	movsd	%xmm0, -560(%rbp)       # 8-byte Spill
.LBB4_38:                               # %cond.end.165
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	-560(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -552(%rbp)       # 8-byte Spill
.LBB4_39:                               # %cond.end.167
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	-552(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -360(%rbp)
	jmp	.LBB4_41
.LBB4_40:                               # %if.else.170
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	.LCPI4_5, %xmm0         # xmm0 = mem[0],zero
	movq	-152(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm0, %xmm1
	mulsd	-320(%rbp), %xmm1
	movsd	-408(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-328(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -360(%rbp)
.LBB4_41:                               # %if.end.179
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-264(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-256(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_43
# BB#42:                                # %cond.true.183
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -568(%rbp)       # 8-byte Spill
	jmp	.LBB4_47
.LBB4_43:                               # %cond.false.184
                                        #   in Loop: Header=BB4_19 Depth=2
	xorps	%xmm0, %xmm0
	movsd	-264(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-256(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_45
# BB#44:                                # %cond.true.188
                                        #   in Loop: Header=BB4_19 Depth=2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -576(%rbp)       # 8-byte Spill
	jmp	.LBB4_46
.LBB4_45:                               # %cond.false.189
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	-264(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-256(%rbp), %xmm0
	movsd	%xmm0, -576(%rbp)       # 8-byte Spill
.LBB4_46:                               # %cond.end.191
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	-576(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -568(%rbp)       # 8-byte Spill
.LBB4_47:                               # %cond.end.193
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	-568(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI4_5, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -272(%rbp)
	movsd	-272(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-360(%rbp), %xmm0
	movsd	%xmm0, -360(%rbp)
	movaps	%xmm1, %xmm0
	mulsd	-360(%rbp), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_49
# BB#48:                                # %cond.true.201
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	.LCPI4_5, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -584(%rbp)       # 8-byte Spill
	jmp	.LBB4_53
.LBB4_49:                               # %cond.false.202
                                        #   in Loop: Header=BB4_19 Depth=2
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_5, %xmm1         # xmm1 = mem[0],zero
	mulsd	-360(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_51
# BB#50:                                # %cond.true.207
                                        #   in Loop: Header=BB4_19 Depth=2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -592(%rbp)       # 8-byte Spill
	jmp	.LBB4_52
.LBB4_51:                               # %cond.false.208
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	.LCPI4_5, %xmm0         # xmm0 = mem[0],zero
	mulsd	-360(%rbp), %xmm0
	movsd	%xmm0, -592(%rbp)       # 8-byte Spill
.LBB4_52:                               # %cond.end.211
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	-592(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -584(%rbp)       # 8-byte Spill
.LBB4_53:                               # %cond.end.213
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	-584(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-160(%rbp), %rdx
	movb	%cl, (%rdx)
	cmpl	$2, -200(%rbp)
	jle	.LBB4_97
# BB#54:                                # %if.then.219
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movslq	-412(%rbp), %rax
	shlq	$5, %rax
	addq	-368(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	subsd	-280(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	movl	-412(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, %eax
	cltd
	idivl	pvals+44
	movslq	%edx, %rsi
	shlq	$5, %rsi
	addq	-368(%rbp), %rsi
	movsd	8(%rsi), %xmm2          # xmm2 = mem[0],zero
	mulsd	-280(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -408(%rbp)
	movsd	-256(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_62
# BB#55:                                # %if.then.233
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-408(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-256(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_57
# BB#56:                                # %cond.true.237
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -600(%rbp)       # 8-byte Spill
	jmp	.LBB4_61
.LBB4_57:                               # %cond.false.238
                                        #   in Loop: Header=BB4_19 Depth=2
	xorps	%xmm0, %xmm0
	movsd	-408(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-256(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_59
# BB#58:                                # %cond.true.242
                                        #   in Loop: Header=BB4_19 Depth=2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -608(%rbp)       # 8-byte Spill
	jmp	.LBB4_60
.LBB4_59:                               # %cond.false.243
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	-408(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-256(%rbp), %xmm0
	movsd	%xmm0, -608(%rbp)       # 8-byte Spill
.LBB4_60:                               # %cond.end.245
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	-608(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -600(%rbp)       # 8-byte Spill
.LBB4_61:                               # %cond.end.247
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	-600(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -352(%rbp)
	jmp	.LBB4_63
.LBB4_62:                               # %if.else.250
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	.LCPI4_5, %xmm0         # xmm0 = mem[0],zero
	movq	-152(%rbp), %rax
	movzbl	1(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm0, %xmm1
	mulsd	-320(%rbp), %xmm1
	movsd	-408(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-328(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -352(%rbp)
.LBB4_63:                               # %if.end.259
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-264(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-256(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_65
# BB#64:                                # %cond.true.263
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -616(%rbp)       # 8-byte Spill
	jmp	.LBB4_69
.LBB4_65:                               # %cond.false.264
                                        #   in Loop: Header=BB4_19 Depth=2
	xorps	%xmm0, %xmm0
	movsd	-264(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-256(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_67
# BB#66:                                # %cond.true.268
                                        #   in Loop: Header=BB4_19 Depth=2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -624(%rbp)       # 8-byte Spill
	jmp	.LBB4_68
.LBB4_67:                               # %cond.false.269
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	-264(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-256(%rbp), %xmm0
	movsd	%xmm0, -624(%rbp)       # 8-byte Spill
.LBB4_68:                               # %cond.end.271
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	-624(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -616(%rbp)       # 8-byte Spill
.LBB4_69:                               # %cond.end.273
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	-616(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI4_5, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -272(%rbp)
	movsd	-272(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-352(%rbp), %xmm0
	movsd	%xmm0, -352(%rbp)
	movaps	%xmm1, %xmm0
	mulsd	-352(%rbp), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_71
# BB#70:                                # %cond.true.281
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	.LCPI4_5, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -632(%rbp)       # 8-byte Spill
	jmp	.LBB4_75
.LBB4_71:                               # %cond.false.282
                                        #   in Loop: Header=BB4_19 Depth=2
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_5, %xmm1         # xmm1 = mem[0],zero
	mulsd	-352(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_73
# BB#72:                                # %cond.true.287
                                        #   in Loop: Header=BB4_19 Depth=2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -640(%rbp)       # 8-byte Spill
	jmp	.LBB4_74
.LBB4_73:                               # %cond.false.288
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	.LCPI4_5, %xmm0         # xmm0 = mem[0],zero
	mulsd	-352(%rbp), %xmm0
	movsd	%xmm0, -640(%rbp)       # 8-byte Spill
.LBB4_74:                               # %cond.end.291
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	-640(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -632(%rbp)       # 8-byte Spill
.LBB4_75:                               # %cond.end.293
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	-632(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-160(%rbp), %rdx
	movb	%cl, 1(%rdx)
	movslq	-412(%rbp), %rdx
	shlq	$5, %rdx
	addq	-368(%rbp), %rdx
	movsd	16(%rdx), %xmm0         # xmm0 = mem[0],zero
	movaps	%xmm1, %xmm2
	subsd	-280(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	movl	-412(%rbp), %eax
	addl	$1, %eax
	cltd
	idivl	pvals+44
	movslq	%edx, %rsi
	shlq	$5, %rsi
	addq	-368(%rbp), %rsi
	movsd	16(%rsi), %xmm2         # xmm2 = mem[0],zero
	mulsd	-280(%rbp), %xmm2
	addsd	%xmm2, %xmm0
	movsd	%xmm0, -408(%rbp)
	movsd	-256(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_83
# BB#76:                                # %if.then.310
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-408(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-256(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_78
# BB#77:                                # %cond.true.314
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -648(%rbp)       # 8-byte Spill
	jmp	.LBB4_82
.LBB4_78:                               # %cond.false.315
                                        #   in Loop: Header=BB4_19 Depth=2
	xorps	%xmm0, %xmm0
	movsd	-408(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-256(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_80
# BB#79:                                # %cond.true.319
                                        #   in Loop: Header=BB4_19 Depth=2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -656(%rbp)       # 8-byte Spill
	jmp	.LBB4_81
.LBB4_80:                               # %cond.false.320
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	-408(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-256(%rbp), %xmm0
	movsd	%xmm0, -656(%rbp)       # 8-byte Spill
.LBB4_81:                               # %cond.end.322
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	-656(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -648(%rbp)       # 8-byte Spill
.LBB4_82:                               # %cond.end.324
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	-648(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -344(%rbp)
	jmp	.LBB4_84
.LBB4_83:                               # %if.else.327
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	.LCPI4_5, %xmm0         # xmm0 = mem[0],zero
	movq	-152(%rbp), %rax
	movzbl	2(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm0, %xmm1
	mulsd	-320(%rbp), %xmm1
	movsd	-408(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-328(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -344(%rbp)
.LBB4_84:                               # %if.end.336
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-264(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-256(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_86
# BB#85:                                # %cond.true.340
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -664(%rbp)       # 8-byte Spill
	jmp	.LBB4_90
.LBB4_86:                               # %cond.false.341
                                        #   in Loop: Header=BB4_19 Depth=2
	xorps	%xmm0, %xmm0
	movsd	-264(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-256(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_88
# BB#87:                                # %cond.true.345
                                        #   in Loop: Header=BB4_19 Depth=2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -672(%rbp)       # 8-byte Spill
	jmp	.LBB4_89
.LBB4_88:                               # %cond.false.346
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	-264(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-256(%rbp), %xmm0
	movsd	%xmm0, -672(%rbp)       # 8-byte Spill
.LBB4_89:                               # %cond.end.348
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	-672(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -664(%rbp)       # 8-byte Spill
.LBB4_90:                               # %cond.end.350
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	-664(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI4_5, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -272(%rbp)
	movsd	-272(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-344(%rbp), %xmm0
	movsd	%xmm0, -344(%rbp)
	movaps	%xmm1, %xmm0
	mulsd	-344(%rbp), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_92
# BB#91:                                # %cond.true.358
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	.LCPI4_5, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -680(%rbp)       # 8-byte Spill
	jmp	.LBB4_96
.LBB4_92:                               # %cond.false.359
                                        #   in Loop: Header=BB4_19 Depth=2
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_5, %xmm1         # xmm1 = mem[0],zero
	mulsd	-344(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_94
# BB#93:                                # %cond.true.364
                                        #   in Loop: Header=BB4_19 Depth=2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -688(%rbp)       # 8-byte Spill
	jmp	.LBB4_95
.LBB4_94:                               # %cond.false.365
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	.LCPI4_5, %xmm0         # xmm0 = mem[0],zero
	mulsd	-344(%rbp), %xmm0
	movsd	%xmm0, -688(%rbp)       # 8-byte Spill
.LBB4_95:                               # %cond.end.368
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	-688(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -680(%rbp)       # 8-byte Spill
.LBB4_96:                               # %cond.end.370
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	-680(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-160(%rbp), %rdx
	movb	%cl, 2(%rdx)
.LBB4_97:                               # %if.end.374
                                        #   in Loop: Header=BB4_19 Depth=2
	cmpl	$0, -212(%rbp)
	je	.LBB4_99
# BB#98:                                # %if.then.376
                                        #   in Loop: Header=BB4_19 Depth=2
	movsd	-312(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	.LCPI4_5(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movslq	-196(%rbp), %rdx
	movq	-160(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB4_99:                               # %if.end.381
                                        #   in Loop: Header=BB4_19 Depth=2
	movl	-200(%rbp), %eax
	movq	-152(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -152(%rbp)
	movl	-200(%rbp), %eax
	movq	-160(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -160(%rbp)
# BB#100:                               # %for.inc.386
                                        #   in Loop: Header=BB4_19 Depth=2
	movl	-192(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -192(%rbp)
	movl	-180(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -180(%rbp)
	jmp	.LBB4_19
.LBB4_101:                              # %for.end.389
                                        #   in Loop: Header=BB4_17 Depth=1
	jmp	.LBB4_102
.LBB4_102:                              # %for.inc.390
                                        #   in Loop: Header=BB4_17 Depth=1
	movl	-188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -188(%rbp)
	movl	-184(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -184(%rbp)
	jmp	.LBB4_17
.LBB4_103:                              # %for.end.393
	movq	-16(%rbp), %rdi
	movq	-136(%rbp), %rsi
	movl	-200(%rbp), %eax
	imull	-436(%rbp), %eax
	movl	%eax, %edx
	callq	gimp_preview_draw_buffer
	movq	-432(%rbp), %rdi
	callq	g_free
	movq	-144(%rbp), %rdi
	callq	g_free
	movq	-136(%rbp), %rdi
	callq	g_free
	jmp	.LBB4_218
.LBB4_104:                              # %if.else.395
	movl	$2, %edi
	leaq	-64(%rbp), %rsi
	leaq	-112(%rbp), %rdx
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -120(%rbp)
.LBB4_105:                              # %for.cond.397
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_107 Depth 2
                                        #       Child Loop BB4_109 Depth 3
	cmpq	$0, -120(%rbp)
	je	.LBB4_217
# BB#106:                               # %for.body.400
                                        #   in Loop: Header=BB4_105 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -136(%rbp)
	movl	$0, -188(%rbp)
	movl	-36(%rbp), %ecx
	movl	%ecx, -184(%rbp)
.LBB4_107:                              # %for.cond.403
                                        #   Parent Loop BB4_105 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_109 Depth 3
	movl	-188(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB4_215
# BB#108:                               # %for.body.407
                                        #   in Loop: Header=BB4_107 Depth=2
	movq	-128(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -160(%rbp)
	movl	$0, -192(%rbp)
	movl	-40(%rbp), %ecx
	movl	%ecx, -180(%rbp)
.LBB4_109:                              # %for.cond.409
                                        #   Parent Loop BB4_105 Depth=1
                                        #     Parent Loop BB4_107 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-192(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB4_213
# BB#110:                               # %for.body.413
                                        #   in Loop: Header=BB4_109 Depth=3
	movl	-180(%rbp), %eax
	subl	-216(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	pvals+40, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -232(%rbp)
	movl	-184(%rbp), %eax
	subl	-220(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	pvals+40, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -240(%rbp)
	movsd	-232(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-232(%rbp), %xmm0
	movsd	-240(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-240(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt
	movsd	%xmm0, -248(%rbp)
	movsd	-232(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-240(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	atan2
	movsd	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_3, %xmm4         # xmm4 = mem[0],zero
	movsd	.LCPI4_4, %xmm5         # xmm5 = mem[0],zero
	divsd	%xmm5, %xmm0
	addsd	%xmm4, %xmm0
	cvtsi2sdl	pvals+44, %xmm4
	mulsd	%xmm4, %xmm0
	movsd	%xmm0, -280(%rbp)
	movsd	-280(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm3, -696(%rbp)       # 8-byte Spill
	movsd	%xmm1, -704(%rbp)       # 8-byte Spill
	movsd	%xmm2, -712(%rbp)       # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -412(%rbp)
	cvtsi2sdl	-412(%rbp), %xmm0
	movsd	-280(%rbp), %xmm1       # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -280(%rbp)
	movl	pvals+44, %eax
	movl	-412(%rbp), %ecx
	movl	%eax, -716(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-716(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%edx, -412(%rbp)
	movslq	-412(%rbp), %rsi
	movq	-288(%rbp), %rdi
	movsd	(%rdi,%rsi,8), %xmm0    # xmm0 = mem[0],zero
	movsd	-704(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	-280(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movl	-412(%rbp), %edx
	addl	$1, %edx
	movl	%edx, %eax
	cltd
	idivl	pvals+44
	movslq	%edx, %rsi
	movq	-288(%rbp), %rdi
	movsd	(%rdi,%rsi,8), %xmm1    # xmm1 = mem[0],zero
	mulsd	-280(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -264(%rbp)
	movsd	-264(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-264(%rbp), %xmm0
	movsd	%xmm0, -264(%rbp)
	movsd	-696(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	-248(%rbp), %xmm0
	movsd	-704(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	-712(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -256(%rbp)
	movsd	-256(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-704(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	ucomisd	%xmm2, %xmm1
	jbe	.LBB4_112
# BB#111:                               # %cond.true.452
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -728(%rbp)       # 8-byte Spill
	jmp	.LBB4_116
.LBB4_112:                              # %cond.false.453
                                        #   in Loop: Header=BB4_109 Depth=3
	xorps	%xmm0, %xmm0
	ucomisd	-256(%rbp), %xmm0
	jbe	.LBB4_114
# BB#113:                               # %cond.true.456
                                        #   in Loop: Header=BB4_109 Depth=3
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -736(%rbp)       # 8-byte Spill
	jmp	.LBB4_115
.LBB4_114:                              # %cond.false.457
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	-256(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -736(%rbp)       # 8-byte Spill
.LBB4_115:                              # %cond.end.458
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	-736(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -728(%rbp)       # 8-byte Spill
.LBB4_116:                              # %cond.end.460
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	-728(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -296(%rbp)
	cmpl	$0, -212(%rbp)
	je	.LBB4_121
# BB#117:                               # %if.then.463
                                        #   in Loop: Header=BB4_109 Depth=3
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_5, %xmm2         # xmm2 = mem[0],zero
	movslq	-196(%rbp), %rax
	movq	-152(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm3
	divsd	%xmm2, %xmm3
	movsd	%xmm3, -304(%rbp)
	movsd	-304(%rbp), %xmm2       # xmm2 = mem[0],zero
	subsd	-304(%rbp), %xmm1
	mulsd	-296(%rbp), %xmm1
	addsd	%xmm1, %xmm2
	movsd	%xmm2, -312(%rbp)
	movsd	-312(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB4_118
	jp	.LBB4_118
	jmp	.LBB4_119
.LBB4_118:                              # %if.then.473
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	-296(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-312(%rbp), %xmm0
	movsd	%xmm0, -328(%rbp)
	jmp	.LBB4_120
.LBB4_119:                              # %if.else.475
                                        #   in Loop: Header=BB4_109 Depth=3
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -328(%rbp)
.LBB4_120:                              # %if.end.476
                                        #   in Loop: Header=BB4_109 Depth=3
	jmp	.LBB4_122
.LBB4_121:                              # %if.else.477
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	-296(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -328(%rbp)
.LBB4_122:                              # %if.end.478
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	-328(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	.LCPI4_0(%rip), %xmm1   # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -320(%rbp)
	movl	-200(%rbp), %eax
	movl	%eax, %ecx
	decl	%ecx
	subl	$2, %ecx
	movl	%eax, -740(%rbp)        # 4-byte Spill
	movl	%ecx, -744(%rbp)        # 4-byte Spill
	jb	.LBB4_123
	jmp	.LBB4_219
.LBB4_219:                              # %if.end.478
                                        #   in Loop: Header=BB4_109 Depth=3
	movl	-740(%rbp), %eax        # 4-byte Reload
	addl	$-3, %eax
	subl	$2, %eax
	movl	%eax, -748(%rbp)        # 4-byte Spill
	jb	.LBB4_145
	jmp	.LBB4_209
.LBB4_123:                              # %sw.bb
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movslq	-412(%rbp), %rax
	shlq	$5, %rax
	addq	-368(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	subsd	-280(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	movl	-412(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, %eax
	cltd
	idivl	pvals+44
	movslq	%edx, %rsi
	shlq	$5, %rsi
	addq	-368(%rbp), %rsi
	movsd	(%rsi), %xmm2           # xmm2 = mem[0],zero
	mulsd	-280(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -408(%rbp)
	movsd	-256(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_131
# BB#124:                               # %if.then.494
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-408(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-256(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_126
# BB#125:                               # %cond.true.498
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -760(%rbp)       # 8-byte Spill
	jmp	.LBB4_130
.LBB4_126:                              # %cond.false.499
                                        #   in Loop: Header=BB4_109 Depth=3
	xorps	%xmm0, %xmm0
	movsd	-408(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-256(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_128
# BB#127:                               # %cond.true.503
                                        #   in Loop: Header=BB4_109 Depth=3
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -768(%rbp)       # 8-byte Spill
	jmp	.LBB4_129
.LBB4_128:                              # %cond.false.504
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	-408(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-256(%rbp), %xmm0
	movsd	%xmm0, -768(%rbp)       # 8-byte Spill
.LBB4_129:                              # %cond.end.506
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	-768(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -760(%rbp)       # 8-byte Spill
.LBB4_130:                              # %cond.end.508
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	-760(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -360(%rbp)
	jmp	.LBB4_132
.LBB4_131:                              # %if.else.511
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	.LCPI4_5, %xmm0         # xmm0 = mem[0],zero
	movq	-152(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm0, %xmm1
	mulsd	-320(%rbp), %xmm1
	movsd	-408(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-328(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -360(%rbp)
.LBB4_132:                              # %if.end.520
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-264(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-256(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_134
# BB#133:                               # %cond.true.524
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -776(%rbp)       # 8-byte Spill
	jmp	.LBB4_138
.LBB4_134:                              # %cond.false.525
                                        #   in Loop: Header=BB4_109 Depth=3
	xorps	%xmm0, %xmm0
	movsd	-264(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-256(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_136
# BB#135:                               # %cond.true.529
                                        #   in Loop: Header=BB4_109 Depth=3
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -784(%rbp)       # 8-byte Spill
	jmp	.LBB4_137
.LBB4_136:                              # %cond.false.530
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	-264(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-256(%rbp), %xmm0
	movsd	%xmm0, -784(%rbp)       # 8-byte Spill
.LBB4_137:                              # %cond.end.532
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	-784(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -776(%rbp)       # 8-byte Spill
.LBB4_138:                              # %cond.end.534
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	-776(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI4_5, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -272(%rbp)
	movsd	-272(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-360(%rbp), %xmm0
	movsd	%xmm0, -360(%rbp)
	movaps	%xmm1, %xmm0
	mulsd	-360(%rbp), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_140
# BB#139:                               # %cond.true.542
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	.LCPI4_5, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -792(%rbp)       # 8-byte Spill
	jmp	.LBB4_144
.LBB4_140:                              # %cond.false.543
                                        #   in Loop: Header=BB4_109 Depth=3
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_5, %xmm1         # xmm1 = mem[0],zero
	mulsd	-360(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_142
# BB#141:                               # %cond.true.548
                                        #   in Loop: Header=BB4_109 Depth=3
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -800(%rbp)       # 8-byte Spill
	jmp	.LBB4_143
.LBB4_142:                              # %cond.false.549
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	.LCPI4_5, %xmm0         # xmm0 = mem[0],zero
	mulsd	-360(%rbp), %xmm0
	movsd	%xmm0, -800(%rbp)       # 8-byte Spill
.LBB4_143:                              # %cond.end.552
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	-800(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -792(%rbp)       # 8-byte Spill
.LBB4_144:                              # %cond.end.554
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	-792(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-160(%rbp), %rdx
	movb	%cl, (%rdx)
	jmp	.LBB4_209
.LBB4_145:                              # %sw.bb.558
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movslq	-412(%rbp), %rax
	shlq	$5, %rax
	addq	-368(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	subsd	-280(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	movl	-412(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, %eax
	cltd
	idivl	pvals+44
	movslq	%edx, %rsi
	shlq	$5, %rsi
	addq	-368(%rbp), %rsi
	movsd	(%rsi), %xmm2           # xmm2 = mem[0],zero
	mulsd	-280(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -408(%rbp)
	movsd	-256(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_153
# BB#146:                               # %if.then.573
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-408(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-256(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_148
# BB#147:                               # %cond.true.577
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -808(%rbp)       # 8-byte Spill
	jmp	.LBB4_152
.LBB4_148:                              # %cond.false.578
                                        #   in Loop: Header=BB4_109 Depth=3
	xorps	%xmm0, %xmm0
	movsd	-408(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-256(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_150
# BB#149:                               # %cond.true.582
                                        #   in Loop: Header=BB4_109 Depth=3
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -816(%rbp)       # 8-byte Spill
	jmp	.LBB4_151
.LBB4_150:                              # %cond.false.583
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	-408(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-256(%rbp), %xmm0
	movsd	%xmm0, -816(%rbp)       # 8-byte Spill
.LBB4_151:                              # %cond.end.585
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	-816(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -808(%rbp)       # 8-byte Spill
.LBB4_152:                              # %cond.end.587
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	-808(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -360(%rbp)
	jmp	.LBB4_154
.LBB4_153:                              # %if.else.590
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	.LCPI4_5, %xmm0         # xmm0 = mem[0],zero
	movq	-152(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm0, %xmm1
	mulsd	-320(%rbp), %xmm1
	movsd	-408(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-328(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -360(%rbp)
.LBB4_154:                              # %if.end.599
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-264(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-256(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_156
# BB#155:                               # %cond.true.603
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -824(%rbp)       # 8-byte Spill
	jmp	.LBB4_160
.LBB4_156:                              # %cond.false.604
                                        #   in Loop: Header=BB4_109 Depth=3
	xorps	%xmm0, %xmm0
	movsd	-264(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-256(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_158
# BB#157:                               # %cond.true.608
                                        #   in Loop: Header=BB4_109 Depth=3
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -832(%rbp)       # 8-byte Spill
	jmp	.LBB4_159
.LBB4_158:                              # %cond.false.609
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	-264(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-256(%rbp), %xmm0
	movsd	%xmm0, -832(%rbp)       # 8-byte Spill
.LBB4_159:                              # %cond.end.611
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	-832(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -824(%rbp)       # 8-byte Spill
.LBB4_160:                              # %cond.end.613
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	-824(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI4_5, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -272(%rbp)
	movsd	-272(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-360(%rbp), %xmm0
	movsd	%xmm0, -360(%rbp)
	movaps	%xmm1, %xmm0
	mulsd	-360(%rbp), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_162
# BB#161:                               # %cond.true.621
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	.LCPI4_5, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -840(%rbp)       # 8-byte Spill
	jmp	.LBB4_166
.LBB4_162:                              # %cond.false.622
                                        #   in Loop: Header=BB4_109 Depth=3
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_5, %xmm1         # xmm1 = mem[0],zero
	mulsd	-360(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_164
# BB#163:                               # %cond.true.627
                                        #   in Loop: Header=BB4_109 Depth=3
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -848(%rbp)       # 8-byte Spill
	jmp	.LBB4_165
.LBB4_164:                              # %cond.false.628
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	.LCPI4_5, %xmm0         # xmm0 = mem[0],zero
	mulsd	-360(%rbp), %xmm0
	movsd	%xmm0, -848(%rbp)       # 8-byte Spill
.LBB4_165:                              # %cond.end.631
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	-848(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -840(%rbp)       # 8-byte Spill
.LBB4_166:                              # %cond.end.633
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	-840(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-160(%rbp), %rdx
	movb	%cl, (%rdx)
	movslq	-412(%rbp), %rdx
	shlq	$5, %rdx
	addq	-368(%rbp), %rdx
	movsd	8(%rdx), %xmm0          # xmm0 = mem[0],zero
	movaps	%xmm1, %xmm2
	subsd	-280(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	movl	-412(%rbp), %eax
	addl	$1, %eax
	cltd
	idivl	pvals+44
	movslq	%edx, %rsi
	shlq	$5, %rsi
	addq	-368(%rbp), %rsi
	movsd	8(%rsi), %xmm2          # xmm2 = mem[0],zero
	mulsd	-280(%rbp), %xmm2
	addsd	%xmm2, %xmm0
	movsd	%xmm0, -408(%rbp)
	movsd	-256(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_174
# BB#167:                               # %if.then.651
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-408(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-256(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_169
# BB#168:                               # %cond.true.655
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -856(%rbp)       # 8-byte Spill
	jmp	.LBB4_173
.LBB4_169:                              # %cond.false.656
                                        #   in Loop: Header=BB4_109 Depth=3
	xorps	%xmm0, %xmm0
	movsd	-408(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-256(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_171
# BB#170:                               # %cond.true.660
                                        #   in Loop: Header=BB4_109 Depth=3
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -864(%rbp)       # 8-byte Spill
	jmp	.LBB4_172
.LBB4_171:                              # %cond.false.661
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	-408(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-256(%rbp), %xmm0
	movsd	%xmm0, -864(%rbp)       # 8-byte Spill
.LBB4_172:                              # %cond.end.663
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	-864(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -856(%rbp)       # 8-byte Spill
.LBB4_173:                              # %cond.end.665
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	-856(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -352(%rbp)
	jmp	.LBB4_175
.LBB4_174:                              # %if.else.668
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	.LCPI4_5, %xmm0         # xmm0 = mem[0],zero
	movq	-152(%rbp), %rax
	movzbl	1(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm0, %xmm1
	mulsd	-320(%rbp), %xmm1
	movsd	-408(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-328(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -352(%rbp)
.LBB4_175:                              # %if.end.677
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-264(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-256(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_177
# BB#176:                               # %cond.true.681
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -872(%rbp)       # 8-byte Spill
	jmp	.LBB4_181
.LBB4_177:                              # %cond.false.682
                                        #   in Loop: Header=BB4_109 Depth=3
	xorps	%xmm0, %xmm0
	movsd	-264(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-256(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_179
# BB#178:                               # %cond.true.686
                                        #   in Loop: Header=BB4_109 Depth=3
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -880(%rbp)       # 8-byte Spill
	jmp	.LBB4_180
.LBB4_179:                              # %cond.false.687
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	-264(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-256(%rbp), %xmm0
	movsd	%xmm0, -880(%rbp)       # 8-byte Spill
.LBB4_180:                              # %cond.end.689
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	-880(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -872(%rbp)       # 8-byte Spill
.LBB4_181:                              # %cond.end.691
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	-872(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI4_5, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -272(%rbp)
	movsd	-272(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-352(%rbp), %xmm0
	movsd	%xmm0, -352(%rbp)
	movaps	%xmm1, %xmm0
	mulsd	-352(%rbp), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_183
# BB#182:                               # %cond.true.699
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	.LCPI4_5, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -888(%rbp)       # 8-byte Spill
	jmp	.LBB4_187
.LBB4_183:                              # %cond.false.700
                                        #   in Loop: Header=BB4_109 Depth=3
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_5, %xmm1         # xmm1 = mem[0],zero
	mulsd	-352(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_185
# BB#184:                               # %cond.true.705
                                        #   in Loop: Header=BB4_109 Depth=3
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -896(%rbp)       # 8-byte Spill
	jmp	.LBB4_186
.LBB4_185:                              # %cond.false.706
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	.LCPI4_5, %xmm0         # xmm0 = mem[0],zero
	mulsd	-352(%rbp), %xmm0
	movsd	%xmm0, -896(%rbp)       # 8-byte Spill
.LBB4_186:                              # %cond.end.709
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	-896(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -888(%rbp)       # 8-byte Spill
.LBB4_187:                              # %cond.end.711
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	-888(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-160(%rbp), %rdx
	movb	%cl, 1(%rdx)
	movslq	-412(%rbp), %rdx
	shlq	$5, %rdx
	addq	-368(%rbp), %rdx
	movsd	16(%rdx), %xmm0         # xmm0 = mem[0],zero
	movaps	%xmm1, %xmm2
	subsd	-280(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	movl	-412(%rbp), %eax
	addl	$1, %eax
	cltd
	idivl	pvals+44
	movslq	%edx, %rsi
	shlq	$5, %rsi
	addq	-368(%rbp), %rsi
	movsd	16(%rsi), %xmm2         # xmm2 = mem[0],zero
	mulsd	-280(%rbp), %xmm2
	addsd	%xmm2, %xmm0
	movsd	%xmm0, -408(%rbp)
	movsd	-256(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_195
# BB#188:                               # %if.then.729
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-408(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-256(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_190
# BB#189:                               # %cond.true.733
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -904(%rbp)       # 8-byte Spill
	jmp	.LBB4_194
.LBB4_190:                              # %cond.false.734
                                        #   in Loop: Header=BB4_109 Depth=3
	xorps	%xmm0, %xmm0
	movsd	-408(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-256(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_192
# BB#191:                               # %cond.true.738
                                        #   in Loop: Header=BB4_109 Depth=3
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -912(%rbp)       # 8-byte Spill
	jmp	.LBB4_193
.LBB4_192:                              # %cond.false.739
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	-408(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-256(%rbp), %xmm0
	movsd	%xmm0, -912(%rbp)       # 8-byte Spill
.LBB4_193:                              # %cond.end.741
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	-912(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -904(%rbp)       # 8-byte Spill
.LBB4_194:                              # %cond.end.743
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	-904(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -344(%rbp)
	jmp	.LBB4_196
.LBB4_195:                              # %if.else.746
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	.LCPI4_5, %xmm0         # xmm0 = mem[0],zero
	movq	-152(%rbp), %rax
	movzbl	2(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	divsd	%xmm0, %xmm1
	mulsd	-320(%rbp), %xmm1
	movsd	-408(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-328(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -344(%rbp)
.LBB4_196:                              # %if.end.755
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-264(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-256(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB4_198
# BB#197:                               # %cond.true.759
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -920(%rbp)       # 8-byte Spill
	jmp	.LBB4_202
.LBB4_198:                              # %cond.false.760
                                        #   in Loop: Header=BB4_109 Depth=3
	xorps	%xmm0, %xmm0
	movsd	-264(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-256(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_200
# BB#199:                               # %cond.true.764
                                        #   in Loop: Header=BB4_109 Depth=3
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -928(%rbp)       # 8-byte Spill
	jmp	.LBB4_201
.LBB4_200:                              # %cond.false.765
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	-264(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-256(%rbp), %xmm0
	movsd	%xmm0, -928(%rbp)       # 8-byte Spill
.LBB4_201:                              # %cond.end.767
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	-928(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -920(%rbp)       # 8-byte Spill
.LBB4_202:                              # %cond.end.769
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	-920(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI4_5, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -272(%rbp)
	movsd	-272(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-344(%rbp), %xmm0
	movsd	%xmm0, -344(%rbp)
	movaps	%xmm1, %xmm0
	mulsd	-344(%rbp), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_204
# BB#203:                               # %cond.true.777
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	.LCPI4_5, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -936(%rbp)       # 8-byte Spill
	jmp	.LBB4_208
.LBB4_204:                              # %cond.false.778
                                        #   in Loop: Header=BB4_109 Depth=3
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_5, %xmm1         # xmm1 = mem[0],zero
	mulsd	-344(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB4_206
# BB#205:                               # %cond.true.783
                                        #   in Loop: Header=BB4_109 Depth=3
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -944(%rbp)       # 8-byte Spill
	jmp	.LBB4_207
.LBB4_206:                              # %cond.false.784
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	.LCPI4_5, %xmm0         # xmm0 = mem[0],zero
	mulsd	-344(%rbp), %xmm0
	movsd	%xmm0, -944(%rbp)       # 8-byte Spill
.LBB4_207:                              # %cond.end.787
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	-944(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -936(%rbp)       # 8-byte Spill
.LBB4_208:                              # %cond.end.789
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	-936(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-160(%rbp), %rdx
	movb	%cl, 2(%rdx)
.LBB4_209:                              # %sw.epilog
                                        #   in Loop: Header=BB4_109 Depth=3
	cmpl	$0, -212(%rbp)
	je	.LBB4_211
# BB#210:                               # %if.then.794
                                        #   in Loop: Header=BB4_109 Depth=3
	movsd	-312(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	.LCPI4_5(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movslq	-196(%rbp), %rdx
	movq	-160(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
.LBB4_211:                              # %if.end.799
                                        #   in Loop: Header=BB4_109 Depth=3
	movl	-48(%rbp), %eax
	movq	-152(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -152(%rbp)
	movl	-96(%rbp), %eax
	movq	-160(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -160(%rbp)
# BB#212:                               # %for.inc.806
                                        #   in Loop: Header=BB4_109 Depth=3
	movl	-192(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -192(%rbp)
	movl	-180(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -180(%rbp)
	jmp	.LBB4_109
.LBB4_213:                              # %for.end.809
                                        #   in Loop: Header=BB4_107 Depth=2
	movl	-44(%rbp), %eax
	movq	-128(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -128(%rbp)
	movl	-92(%rbp), %eax
	movq	-136(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -136(%rbp)
# BB#214:                               # %for.inc.815
                                        #   in Loop: Header=BB4_107 Depth=2
	movl	-188(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -188(%rbp)
	movl	-184(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -184(%rbp)
	jmp	.LBB4_107
.LBB4_215:                              # %for.end.818
                                        #   in Loop: Header=BB4_105 Depth=1
	movl	-32(%rbp), %eax
	imull	-28(%rbp), %eax
	addl	-204(%rbp), %eax
	movl	%eax, -204(%rbp)
	cvtsi2sdl	-204(%rbp), %xmm0
	cvtsi2sdl	-208(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -948(%rbp)        # 4-byte Spill
# BB#216:                               # %for.inc.827
                                        #   in Loop: Header=BB4_105 Depth=1
	movq	-120(%rbp), %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -120(%rbp)
	jmp	.LBB4_105
.LBB4_217:                              # %for.end.829
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-8(%rbp), %rdi
	movl	%eax, -952(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-164(%rbp), %esi
	movl	-168(%rbp), %edx
	movl	-172(%rbp), %r8d
	subl	-164(%rbp), %r8d
	movl	-176(%rbp), %r9d
	subl	-168(%rbp), %r9d
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%eax, -956(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -960(%rbp)        # 4-byte Spill
.LBB4_218:                              # %if.end.837
	movq	-288(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-368(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-424(%rbp), %rdi
	callq	g_rand_free
	addq	$976, %rsp              # imm = 0x3D0
	popq	%rbp
	retq
.Lfunc_end4:
	.size	nova, .Lfunc_end4-nova
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI5_0:
	.quad	-9223372036854775808    # 0x8000000000000000
	.quad	-9223372036854775808    # 0x8000000000000000
	.text
	.align	16, 0x90
	.type	nova_center_create,@function
nova_center_create:                     # @nova_center_create
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
	subq	$464, %rsp              # imm = 0x1D0
	xorl	%eax, %eax
	movabsq	$.L.str.44, %rcx
	movl	$1, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, %r9d
	movl	%r9d, %edi
	movl	$24, %r9d
	movl	%r9d, %esi
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	movl	%eax, -88(%rbp)         # 4-byte Spill
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movl	%edx, -100(%rbp)        # 4-byte Spill
	callq	g_malloc0_n
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movl	$.L.str.42, %edx
	movl	%edx, %edi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rcx
	movl	$.L.str.43, %edx
	movl	%edx, %esi
	movl	$g_free, %edx
                                        # kill: RDX<def> EDX<kill>
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movl	$2, %r9d
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-112(%rbp), %rax        # 8-byte Reload
	movl	%r8d, -116(%rbp)        # 4-byte Spill
	movq	%rax, %r8
	callq	g_signal_connect_data
	movl	-116(%rbp), %edi        # 4-byte Reload
	movl	-116(%rbp), %esi        # 4-byte Reload
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_item_get_image
	movl	%eax, -52(%rbp)
	leaq	-64(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movl	%eax, %edi
	callq	gimp_image_get_resolution
	movl	$.L.str.45, %edi
                                        # kill: RDI<def> EDI<kill>
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	gettext
	cvtsi2sdl	pvals(%rip), %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-8(%rbp), %rcx
	movl	4(%rcx), %r9d
	movl	%r9d, %ecx
	movl	%ecx, %r9d
	cvtsi2sdq	%rcx, %xmm2
	movaps	%xmm2, %xmm3
	movapd	.LCPI5_0(%rip), %xmm4   # xmm4 = [9223372036854775808,9223372036854775808]
	xorpd	%xmm4, %xmm3
	addl	%r9d, %r9d
	movl	%r9d, %ecx
	cvtsi2sdq	%rcx, %xmm5
	movl	$.L.str.46, %r9d
	movl	%r9d, %edi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	movsd	%xmm1, -168(%rbp)       # 8-byte Spill
	movsd	%xmm3, -176(%rbp)       # 8-byte Spill
	movsd	%xmm2, -184(%rbp)       # 8-byte Spill
	movaps	%xmm4, -208(%rbp)       # 16-byte Spill
	movsd	%xmm5, -216(%rbp)       # 8-byte Spill
	callq	gettext
	cvtsi2sdl	pvals+4(%rip), %xmm6
	movsd	-72(%rbp), %xmm7        # xmm7 = mem[0],zero
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %r9d
	movl	%r9d, %ecx
	movl	%ecx, %r9d
	cvtsi2sdq	%rcx, %xmm0
	movaps	%xmm0, %xmm1
	movaps	-208(%rbp), %xmm2       # 16-byte Reload
	xorpd	%xmm2, %xmm1
	addl	%r9d, %r9d
	movl	%r9d, %ecx
	cvtsi2sdq	%rcx, %xmm3
	movl	-88(%rbp), %edi         # 4-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movl	-100(%rbp), %edx        # 4-byte Reload
	movl	-100(%rbp), %ecx        # 4-byte Reload
	movl	-84(%rbp), %r8d         # 4-byte Reload
	movl	-100(%rbp), %r9d        # 4-byte Reload
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movq	-152(%rbp), %r10        # 8-byte Reload
	movq	%r10, 16(%rsp)
	movsd	-160(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm0
	movsd	-168(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	%xmm1, -232(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm1
	movsd	-176(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-216(%rbp), %xmm8       # 8-byte Reload
                                        # xmm8 = mem[0],zero
	movsd	%xmm3, -240(%rbp)       # 8-byte Spill
	movaps	%xmm8, %xmm3
	movsd	-80(%rbp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	-184(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movq	%rax, 24(%rsp)
	movsd	-232(%rbp), %xmm9       # 8-byte Reload
                                        # xmm9 = mem[0],zero
	movsd	%xmm9, 32(%rsp)
	movsd	-240(%rbp), %xmm9       # 8-byte Reload
                                        # xmm9 = mem[0],zero
	movsd	%xmm9, 40(%rsp)
	movsd	-80(%rbp), %xmm9        # 8-byte Reload
                                        # xmm9 = mem[0],zero
	movsd	%xmm9, 48(%rsp)
	movsd	-224(%rbp), %xmm10      # 8-byte Reload
                                        # xmm10 = mem[0],zero
	movsd	%xmm10, 56(%rsp)
	callq	gimp_coordinates_new
	movq	-24(%rbp), %rsi
	movq	%rax, 16(%rsi)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movl	$6, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing
	movq	-40(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -260(%rbp)        # 4-byte Spill
	movl	-260(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.39, %rsi
	movabsq	$nova_center_coords_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	-24(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.47, %rsi
	movabsq	$nova_center_coords_update, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-272(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.48, %rdi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$5, %ecx
	movl	$2, %r8d
	movl	$3, %r9d
	movl	$4, %r11d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	$5, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r11d, -300(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-48(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	show_cursor, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.49, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$show_cursor, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %r10
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-320(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.49, %rsi
	movabsq	$gtk_widget_queue_draw, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	136(%rdi), %rdi
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-328(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.50, %rsi
	movabsq	$nova_center_preview_realize, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	136(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-344(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.51, %rsi
	movabsq	$nova_center_preview_expose, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$1, %r9d
	movq	-16(%rbp), %rdx
	movq	136(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.52, %rsi
	movabsq	$nova_center_preview_events, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	136(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-376(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-32(%rbp), %rcx
	movq	%rax, -392(%rbp)        # 8-byte Spill
	movq	%rcx, %rax
	addq	$464, %rsp              # imm = 0x1D0
	popq	%rbp
	retq
.Lfunc_end5:
	.size	nova_center_create, .Lfunc_end5-nova_center_create
	.cfi_endproc

	.align	16, 0x90
	.type	nova_center_coords_update,@function
nova_center_coords_update:              # @nova_center_coords_update
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
	subq	$16, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	%eax, %esi
	callq	gimp_size_entry_get_refval
	movl	$1, %esi
	cvttsd2si	%xmm0, %eax
	movl	%eax, pvals
	movq	-8(%rbp), %rdi
	callq	gimp_size_entry_get_refval
	cvttsd2si	%xmm0, %eax
	movl	%eax, pvals+4
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	callq	gimp_preview_invalidate
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	nova_center_coords_update, .Lfunc_end6-nova_center_coords_update
	.cfi_endproc

	.align	16, 0x90
	.type	nova_center_preview_realize,@function
nova_center_preview_realize:            # @nova_center_preview_realize
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
	callq	gtk_widget_get_display
	movl	$34, %esi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gdk_cursor_new_for_display
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_preview_set_default_cursor
	movq	-32(%rbp), %rdi
	callq	gdk_cursor_unref
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	nova_center_preview_realize, .Lfunc_end7-nova_center_preview_realize
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4605380978949069210     # double 0.80000000000000004
.LCPI8_1:
	.quad	4607182418800017408     # double 1
.LCPI8_2:
	.quad	4603579539098121011     # double 0.59999999999999998
.LCPI8_3:
	.quad	4613937818241073152     # double 3
.LCPI8_4:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	nova_center_preview_expose,@function
nova_center_preview_expose:             # @nova_center_preview_expose
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$0, show_cursor
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	136(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_preview_area_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	136(%rax), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_cairo_create
	leaq	-36(%rbp), %rcx
	leaq	-40(%rbp), %r8
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movl	pvals, %esi
	movl	pvals+4, %edx
	callq	gimp_preview_transform
	movq	-64(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_widget_get_allocation
	leaq	-52(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movl	$2, %r9d
	movl	-72(%rbp), %r10d
	movq	-64(%rbp), %rax
	subl	112(%rax), %r10d
	movl	%r10d, %eax
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	cltd
	idivl	%r9d
	movl	%eax, -44(%rbp)
	movl	-68(%rbp), %eax
	movq	-64(%rbp), %rcx
	subl	116(%rcx), %eax
	cltd
	idivl	%r9d
	movl	%eax, -48(%rbp)
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rdi
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, %rdx
	callq	gimp_preview_get_size
	xorps	%xmm1, %xmm1
	movsd	.LCPI8_4, %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rdi
	movl	-44(%rbp), %eax
	addl	-36(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	addsd	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
	callq	cairo_move_to
	movsd	.LCPI8_4, %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rdi
	movl	-44(%rbp), %eax
	addl	-36(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	addsd	%xmm0, %xmm1
	cvtsi2sdl	-68(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-112(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_line_to
	xorps	%xmm0, %xmm0
	movsd	.LCPI8_4, %xmm1         # xmm1 = mem[0],zero
	movq	-32(%rbp), %rdi
	movl	-48(%rbp), %eax
	addl	-40(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	addsd	%xmm1, %xmm2
	movaps	%xmm2, %xmm1
	callq	cairo_move_to
	movsd	.LCPI8_4, %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rdi
	cvtsi2sdl	-72(%rbp), %xmm1
	movl	-48(%rbp), %eax
	addl	-40(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	addsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	cairo_line_to
	movsd	.LCPI8_3, %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rdi
	callq	cairo_set_line_width
	movsd	.LCPI8_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI8_2, %xmm3         # xmm3 = mem[0],zero
	movq	-32(%rbp), %rdi
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	movsd	-120(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-120(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_set_source_rgba
	movq	-32(%rbp), %rdi
	callq	cairo_stroke_preserve
	movsd	.LCPI8_1, %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rdi
	callq	cairo_set_line_width
	xorps	%xmm0, %xmm0
	movsd	.LCPI8_0, %xmm3         # xmm3 = mem[0],zero
	movq	-32(%rbp), %rdi
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	movsd	-128(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-128(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_set_source_rgba
	movq	-32(%rbp), %rdi
	callq	cairo_stroke
	movq	-32(%rbp), %rdi
	callq	cairo_destroy
.LBB8_2:                                # %if.end
	xorl	%eax, %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	nova_center_preview_expose, .Lfunc_end8-nova_center_preview_expose
	.cfi_endproc

	.align	16, 0x90
	.type	nova_center_preview_events,@function
nova_center_preview_events:             # @nova_center_preview_events
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movl	(%rdx), %eax
	movl	%eax, %ecx
	subl	$3, %ecx
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	je	.LBB9_1
	jmp	.LBB9_10
.LBB9_10:                               # %entry
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB9_4
	jmp	.LBB9_7
.LBB9_1:                                # %sw.bb
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	48(%rax), %ecx
	andl	$256, %ecx              # imm = 0x100
	cmpl	$0, %ecx
	je	.LBB9_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	cvttsd2si	24(%rax), %edx
	movq	-40(%rbp), %rax
	cvttsd2si	32(%rax), %ecx
	callq	nova_center_update
	movq	-40(%rbp), %rdi
	callq	gdk_event_request_motions
	movl	$1, -4(%rbp)
	jmp	.LBB9_9
.LBB9_3:                                # %if.end
	jmp	.LBB9_8
.LBB9_4:                                # %sw.bb.2
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpl	$1, 52(%rax)
	jne	.LBB9_6
# BB#5:                                 # %if.then.4
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %rax
	cvttsd2si	24(%rax), %edx
	movq	-48(%rbp), %rax
	cvttsd2si	32(%rax), %ecx
	callq	nova_center_update
	movl	$1, -4(%rbp)
	jmp	.LBB9_9
.LBB9_6:                                # %if.end.9
	jmp	.LBB9_8
.LBB9_7:                                # %sw.default
	jmp	.LBB9_8
.LBB9_8:                                # %sw.epilog
	movl	$0, -4(%rbp)
.LBB9_9:                                # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	nova_center_preview_events, .Lfunc_end9-nova_center_preview_events
	.cfi_endproc

	.align	16, 0x90
	.type	nova_center_update,@function
nova_center_update:                     # @nova_center_update
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	136(%rsi), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_preview_area_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_widget_get_allocation
	leaq	-28(%rbp), %rcx
	leaq	-32(%rbp), %r8
	movl	$2, %edx
	movl	-48(%rbp), %r9d
	movq	-40(%rbp), %rax
	subl	112(%rax), %r9d
	movl	%r9d, %eax
	movl	%edx, -76(%rbp)         # 4-byte Spill
	cltd
	movl	-76(%rbp), %r9d         # 4-byte Reload
	idivl	%r9d
	movl	-20(%rbp), %r10d
	subl	%eax, %r10d
	movl	%r10d, -20(%rbp)
	movl	-44(%rbp), %eax
	movq	-40(%rbp), %rsi
	subl	116(%rsi), %eax
	cltd
	idivl	%r9d
	movl	-24(%rbp), %r10d
	subl	%eax, %r10d
	movl	%r10d, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %eax
	movl	%eax, %edx
	callq	gimp_preview_untransform
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$nova_center_coords_update, %rcx
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	-16(%rbp), %r11
	movl	%eax, %edx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movl	%eax, %ecx
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	cvtsi2sdl	-28(%rbp), %xmm0
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	cvtsi2sdl	-32(%rbp), %xmm0
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$nova_center_coords_update, %rax
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	-16(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -120(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	nova_center_coords_update
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	136(%rax), %rdi
	callq	gtk_widget_queue_draw
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	nova_center_update, .Lfunc_end10-nova_center_update
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4618441417868443648     # double 6
	.text
	.align	16, 0x90
	.type	gauss,@function
gauss:                                  # @gauss
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
	subq	$32, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$6, -20(%rbp)
	jge	.LBB11_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	g_rand_double
	addsd	-16(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB11_1
.LBB11_4:                               # %for.end
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gauss, .Lfunc_end11-gauss
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
	.long	10                      # 0xa
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
	.size	query.args, 216

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
	.asciz	"xcenter"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"X coordinates of the center of supernova"
	.size	.L.str.7, 41

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"ycenter"
	.size	.L.str.8, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Y coordinates of the center of supernova"
	.size	.L.str.9, 41

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"color"
	.size	.L.str.10, 6

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Color of supernova"
	.size	.L.str.11, 19

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"radius"
	.size	.L.str.12, 7

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Radius of supernova"
	.size	.L.str.13, 20

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"nspoke"
	.size	.L.str.14, 7

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Number of spokes"
	.size	.L.str.15, 17

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"randomhue"
	.size	.L.str.16, 10

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Random hue"
	.size	.L.str.17, 11

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"plug-in-nova"
	.size	.L.str.18, 13

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Add a starburst to the image"
	.size	.L.str.19, 29

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"This plug-in produces an effect like a supernova burst. The amount of the light effect is approximately in proportion to 1/r, where r is the distance from the center of the star. It works with RGB*, GRAY* image."
	.size	.L.str.20, 212

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Eiichi Takamori"
	.size	.L.str.21, 16

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"May 2000"
	.size	.L.str.22, 9

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Super_nova..."
	.size	.L.str.23, 14

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.24, 12

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"<Image>/Filters/Light and Shadow/Light"
	.size	.L.str.25, 39

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.26, 20

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"UTF-8"
	.size	.L.str.27, 6

	.type	pvals,@object           # @pvals
	.data
	.align	8
pvals:
	.long	128                     # 0x80
	.long	128                     # 0x80
	.quad	4599976659396224614     # double 0.34999999999999998
	.quad	4600697235336603894     # double 0.39000000000000001
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.long	20                      # 0x14
	.long	100                     # 0x64
	.long	0                       # 0x0
	.zero	4
	.size	pvals, 56

	.type	.L.str.28,@object       # @.str.28
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.28:
	.asciz	"Rendering supernova"
	.size	.L.str.28, 20

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"nova"
	.size	.L.str.29, 5

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Supernova"
	.size	.L.str.30, 10

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gimp-nova"
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
	.asciz	"Supernova Color Picker"
	.size	.L.str.35, 23

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Co_lor:"
	.size	.L.str.36, 8

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"color-changed"
	.size	.L.str.37, 14

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"_Radius:"
	.size	.L.str.38, 9

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"value-changed"
	.size	.L.str.39, 14

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"_Spokes:"
	.size	.L.str.40, 9

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"R_andom hue:"
	.size	.L.str.41, 13

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Center of Nova"
	.size	.L.str.42, 15

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"destroy"
	.size	.L.str.43, 8

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"%p"
	.size	.L.str.44, 3

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"_X:"
	.size	.L.str.45, 4

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"_Y:"
	.size	.L.str.46, 4

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"refval-changed"
	.size	.L.str.47, 15

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Show _position"
	.size	.L.str.48, 15

	.type	show_cursor,@object     # @show_cursor
	.data
	.align	4
show_cursor:
	.long	1                       # 0x1
	.size	show_cursor, 4

	.type	.L.str.49,@object       # @.str.49
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.49:
	.asciz	"toggled"
	.size	.L.str.49, 8

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"realize"
	.size	.L.str.50, 8

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"expose-event"
	.size	.L.str.51, 13

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"event"
	.size	.L.str.52, 6


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
