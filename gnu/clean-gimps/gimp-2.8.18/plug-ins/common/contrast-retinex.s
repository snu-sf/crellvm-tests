	.text
	.file	"contrast-retinex.bc"
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
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
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc

	.align	16, 0x90
	.type	query,@function
query:                                  # @query
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
.Ltmp6:
	.cfi_offset %rbx, -56
.Ltmp7:
	.cfi_offset %r12, -48
.Ltmp8:
	.cfi_offset %r13, -40
.Ltmp9:
	.cfi_offset %r14, -32
.Ltmp10:
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
.Lfunc_end1:
	.size	query, .Lfunc_end1-query
	.cfi_endproc

	.align	16, 0x90
	.type	run,@function
run:                                    # @run
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
	subq	$144, %rsp
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
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.22, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -96(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movabsq	$run.values, %rax
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, run.values
	movl	-56(%rbp), %edx
	movl	%edx, run.values+8
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	leaq	-68(%rbp), %rcx
	leaq	-72(%rbp), %r8
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	je	.LBB2_5
# BB#3:                                 # %lor.lhs.false
	cmpl	$16, -68(%rbp)
	jl	.LBB2_5
# BB#4:                                 # %lor.lhs.false.8
	cmpl	$16, -72(%rbp)
	jge	.LBB2_6
.LBB2_5:                                # %if.then
	movl	$0, -56(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
	movl	-56(%rbp), %eax
	movl	%eax, run.values+8
	jmp	.LBB2_25
.LBB2_6:                                # %if.end
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	xorl	%edx, %edx
	movl	-100(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -104(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	movl	-104(%rbp), %esi        # 4-byte Reload
	divl	%esi
	movl	%eax, %edi
	leal	2(%rdi,%rdi), %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	movl	-52(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB2_7
	jmp	.LBB2_26
.LBB2_26:                               # %if.end
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB2_10
	jmp	.LBB2_27
.LBB2_27:                               # %if.end
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	je	.LBB2_14
	jmp	.LBB2_15
.LBB2_7:                                # %sw.bb
	movabsq	$.L.str.14, %rdi
	movabsq	$rvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-48(%rbp), %rdi
	movl	%eax, -120(%rbp)        # 4-byte Spill
	callq	retinex_dialog
	cmpl	$0, %eax
	jne	.LBB2_9
# BB#8:                                 # %if.then.15
	jmp	.LBB2_25
.LBB2_9:                                # %if.end.16
	jmp	.LBB2_16
.LBB2_10:                               # %sw.bb.17
	cmpl	$7, -12(%rbp)
	je	.LBB2_12
# BB#11:                                # %if.then.20
	movl	$1, -56(%rbp)
	jmp	.LBB2_13
.LBB2_12:                               # %if.else
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, rvals
	movq	-24(%rbp), %rax
	movl	168(%rax), %ecx
	movl	%ecx, rvals+4
	movq	-24(%rbp), %rax
	movl	208(%rax), %ecx
	movl	%ecx, rvals+8
	movq	-24(%rbp), %rax
	cvtsd2ss	248(%rax), %xmm0
	movss	%xmm0, rvals+12
.LBB2_13:                               # %if.end.33
	jmp	.LBB2_16
.LBB2_14:                               # %sw.bb.34
	movabsq	$.L.str.14, %rdi
	movabsq	$rvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB2_16
.LBB2_15:                               # %sw.default
	jmp	.LBB2_16
.LBB2_16:                               # %sw.epilog
	cmpl	$3, -56(%rbp)
	jne	.LBB2_23
# BB#17:                                # %land.lhs.true
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	je	.LBB2_23
# BB#18:                                # %if.then.41
	movabsq	$.L.str.24, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rdi
	movl	%eax, -128(%rbp)        # 4-byte Spill
	callq	retinex
	cmpl	$1, -52(%rbp)
	je	.LBB2_20
# BB#19:                                # %if.then.46
	callq	gimp_displays_flush
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB2_20:                               # %if.end.48
	cmpl	$0, -52(%rbp)
	jne	.LBB2_22
# BB#21:                                # %if.then.51
	movabsq	$.L.str.14, %rdi
	movabsq	$rvals, %rax
	movl	$16, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB2_22:                               # %if.end.53
	jmp	.LBB2_24
.LBB2_23:                               # %if.else.54
	movl	$0, -56(%rbp)
.LBB2_24:                               # %if.end.55
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
	movl	-56(%rbp), %eax
	movl	%eax, run.values+8
.LBB2_25:                               # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	run, .Lfunc_end2-run
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4616189618054758400     # double 4
.LCPI3_1:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI3_2:
	.quad	4620693217682128896     # double 8
.LCPI3_3:
	.quad	4607182418800017408     # double 1
.LCPI3_4:
	.quad	4625196817309499392     # double 16
.LCPI3_5:
	.quad	4643000109586448384     # double 250
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI3_6:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	retinex_dialog,@function
retinex_dialog:                         # @retinex_dialog
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
	subq	$544, %rsp              # imm = 0x220
.Ltmp17:
	.cfi_offset %rbx, -32
.Ltmp18:
	.cfi_offset %r14, -24
	movabsq	$.L.str.25, %rax
	xorl	%esi, %esi
	movq	%rdi, -24(%rbp)
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
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
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
	movq	-32(%rbp), %rdi
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
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-32(%rbp), %rax
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
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rdi
	callq	gimp_zoom_preview_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.30, %rsi
	movabsq	$retinex, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movl	$4, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_table_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-40(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -180(%rbp)        # 4-byte Spill
	movl	-180(%rbp), %ecx        # 4-byte Reload
	movl	-180(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.31, %rdi
	callq	gettext
	movabsq	$.L.str.32, %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.33, %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %ecx
	movl	$2, %r9d
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	-192(%rbp), %r11        # 8-byte Reload
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	-200(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %r8
	movq	$0, (%rsp)
	movb	$0, %al
	callq	gimp_int_combo_box_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_int_combo_box_get_active, %rdx
	movabsq	$rvals, %rsi
	addq	$8, %rsi
	movl	rvals+8, %ecx
	movq	%rax, %rdi
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movq	-224(%rbp), %rcx        # 8-byte Reload
	callq	gimp_int_combo_box_connect
	movabsq	$.L.str.34, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-232(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.35, %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	xorps	%xmm0, %xmm0
	movss	.LCPI3_6, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$2, %r10d
	movq	-64(%rbp), %r8
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movl	%r9d, %edx
	movq	%rax, %rcx
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	-64(%rbp), %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.36, %rdi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	movl	$150, %r8d
	movl	$4, %r9d
	movsd	.LCPI3_4, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI3_5, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_3, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm3, %xmm3
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	cvtsi2sdl	rvals, %xmm4
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -304(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm0
	movsd	-304(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm3, -312(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm3
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-312(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-312(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$rvals, %rdi
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
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rdi
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
	movabsq	$.L.str.38, %rdi
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	movl	$150, %r8d
	movl	$4, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_3, %xmm1         # xmm1 = mem[0],zero
	movl	$1, %r10d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	cvtsi2sdl	rvals+4, %xmm3
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -376(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-376(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -384(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-384(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-384(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-376(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-376(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -388(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$rvals, %rdi
	addq	$4, %rdi
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
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-408(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -424(%rbp)        # 8-byte Spill
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.39, %rdi
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$3, %edx
	movl	$150, %r8d
	movl	$4, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_1, %xmm1         # xmm1 = mem[0],zero
	movl	$1, %r10d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	cvtss2sd	rvals+12, %xmm3
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -448(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -456(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-456(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -464(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-464(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-464(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-456(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-456(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -468(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_float_adjustment_update, %rcx
	movabsq	$rvals, %rdi
	addq	$12, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rdi, -480(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-480(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -488(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-488(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-32(%rbp), %rdi
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %eax
	movl	%eax, -76(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-76(%rbp), %eax
	addq	$544, %rsp              # imm = 0x220
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	retinex_dialog, .Lfunc_end3-retinex_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	retinex,@function
retinex:                                # @retinex
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
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	-8(%rbp), %rsi
	movl	12(%rsi), %eax
	movl	%eax, -40(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_zoom_preview_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-28(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	leaq	-40(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_zoom_preview_get_source
	movq	%rax, -48(%rbp)
	jmp	.LBB4_7
.LBB4_2:                                # %if.else
	leaq	-20(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	leaq	-28(%rbp), %rcx
	leaq	-32(%rbp), %r8
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	jne	.LBB4_4
# BB#3:                                 # %if.then.5
	jmp	.LBB4_11
.LBB4_4:                                # %if.end
	movl	-28(%rbp), %eax
	imull	-32(%rbp), %eax
	imull	-40(%rbp), %eax
	movl	%eax, -36(%rbp)
	movslq	-36(%rbp), %rcx
	shlq	$0, %rcx
	movq	%rcx, %rdi
	callq	g_try_malloc
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB4_6
# BB#5:                                 # %if.then.10
	movabsq	$.L.str.40, %rdi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB4_11
.LBB4_6:                                # %if.end.11
	leaq	-152(%rbp), %rdi
	xorl	%esi, %esi
	movq	-48(%rbp), %rax
	movslq	-36(%rbp), %rcx
	shlq	$0, %rcx
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	memset
	movq	-8(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movl	-32(%rbp), %r9d
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-152(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movl	-32(%rbp), %r9d
	callq	gimp_pixel_rgn_get_rect
.LBB4_7:                                # %if.end.14
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	movl	-40(%rbp), %ecx
	cmpq	$0, -16(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %r8d
	callq	MSRCR
	cmpq	$0, -16(%rbp)
	je	.LBB4_9
# BB#8:                                 # %if.then.18
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movl	-28(%rbp), %eax
	imull	-40(%rbp), %eax
	movl	%eax, %edx
	callq	gimp_preview_draw_buffer
	jmp	.LBB4_10
.LBB4_9:                                # %if.else.20
	leaq	-104(%rbp), %rdi
	movl	$1, %eax
	movq	-8(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movl	-32(%rbp), %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	leaq	-104(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movl	-32(%rbp), %r9d
	callq	gimp_pixel_rgn_set_rect
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-8(%rbp), %rdi
	movl	%eax, -176(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-8(%rbp), %r10
	movl	(%r10), %edi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	movl	%eax, -180(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -184(%rbp)        # 4-byte Spill
.LBB4_10:                               # %if.end.26
	movq	-48(%rbp), %rdi
	callq	g_free
.LBB4_11:                               # %return
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	retinex, .Lfunc_end4-retinex
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB5_2
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
.LBB5_2:                                # %entry
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
.Lfunc_end5:
	.size	g_warning, .Lfunc_end5-g_warning
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
.LCPI6_4:
	.quad	4613937818241073152     # double 3
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI6_1:
	.long	1065353216              # float 1
.LCPI6_2:
	.long	1124073472              # float 128
.LCPI6_3:
	.long	1132396544              # float 255
	.text
	.align	16, 0x90
	.type	MSRCR,@function
MSRCR:                                  # @MSRCR
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
	subq	$272, %rsp              # imm = 0x110
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movsd	%xmm0, -192(%rbp)
	cmpl	$0, -24(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.41, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	imull	$3, rvals+4, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	%xmm0, -192(%rbp)
	movl	%eax, -208(%rbp)        # 4-byte Spill
.LBB6_2:                                # %if.end
	movl	-12(%rbp), %eax
	imull	-16(%rbp), %eax
	imull	-20(%rbp), %eax
	movl	%eax, -48(%rbp)
	movslq	-48(%rbp), %rcx
	shlq	$2, %rcx
	movq	%rcx, %rdi
	callq	g_try_malloc
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB6_4
# BB#3:                                 # %if.then.8
	movabsq	$.L.str.40, %rdi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB6_55
.LBB6_4:                                # %if.end.9
	xorl	%esi, %esi
	movq	-72(%rbp), %rax
	movslq	-48(%rbp), %rcx
	shlq	$2, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	memset
	movl	-12(%rbp), %esi
	imull	-16(%rbp), %esi
	movl	%esi, -100(%rbp)
	movslq	-100(%rbp), %rax
	shlq	$2, %rax
	movq	%rax, %rdi
	callq	g_try_malloc
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB6_6
# BB#5:                                 # %if.then.18
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movabsq	$.L.str.40, %rdi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB6_55
.LBB6_6:                                # %if.end.19
	movslq	-100(%rbp), %rax
	shlq	$2, %rax
	movq	%rax, %rdi
	callq	g_try_malloc
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB6_8
# BB#7:                                 # %if.then.25
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movabsq	$.L.str.40, %rdi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB6_55
.LBB6_8:                                # %if.end.26
	movabsq	$RetinexScales, %rdi
	movl	rvals+4, %esi
	movl	rvals+8, %edx
	movl	rvals, %ecx
	callq	retinex_scales_distribution
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2ssl	rvals+4, %xmm1
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -104(%rbp)
	movl	$0, -52(%rbp)
.LBB6_9:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_11 Depth 2
                                        #     Child Loop BB6_15 Depth 2
                                        #       Child Loop BB6_17 Depth 3
                                        #       Child Loop BB6_21 Depth 3
                                        #       Child Loop BB6_25 Depth 3
	cmpl	$3, -52(%rbp)
	jge	.LBB6_34
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB6_9 Depth=1
	movl	$0, -40(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -196(%rbp)
.LBB6_11:                               # %for.cond.32
                                        #   Parent Loop BB6_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB6_14
# BB#12:                                # %for.body.35
                                        #   in Loop: Header=BB6_11 Depth=2
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movslq	-196(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm1
	addsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movslq	-40(%rbp), %rax
	movq	-88(%rbp), %rcx
	movss	%xmm0, (%rcx,%rax,4)
# BB#13:                                # %for.inc
                                        #   in Loop: Header=BB6_11 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-20(%rbp), %eax
	addl	-196(%rbp), %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB6_11
.LBB6_14:                               # %for.end
                                        #   in Loop: Header=BB6_9 Depth=1
	movl	$0, -28(%rbp)
.LBB6_15:                               # %for.cond.42
                                        #   Parent Loop BB6_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_17 Depth 3
                                        #       Child Loop BB6_21 Depth 3
                                        #       Child Loop BB6_25 Depth 3
	movl	-28(%rbp), %eax
	cmpl	rvals+4, %eax
	jge	.LBB6_32
# BB#16:                                # %for.body.45
                                        #   in Loop: Header=BB6_15 Depth=2
	leaq	-152(%rbp), %rdi
	movslq	-28(%rbp), %rax
	movss	RetinexScales(,%rax,4), %xmm0 # xmm0 = mem[0],zero,zero,zero
	callq	compute_coefs3
	movl	$0, -32(%rbp)
.LBB6_17:                               # %for.cond.48
                                        #   Parent Loop BB6_9 Depth=1
                                        #     Parent Loop BB6_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-32(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB6_20
# BB#18:                                # %for.body.51
                                        #   in Loop: Header=BB6_17 Depth=3
	movl	$1, %ecx
	leaq	-152(%rbp), %r8
	movl	-32(%rbp), %eax
	imull	-12(%rbp), %eax
	movl	%eax, -196(%rbp)
	movq	-88(%rbp), %rdx
	movslq	-196(%rbp), %rsi
	shlq	$2, %rsi
	addq	%rsi, %rdx
	movq	-96(%rbp), %rsi
	movslq	-196(%rbp), %rdi
	shlq	$2, %rdi
	addq	%rdi, %rsi
	movl	-12(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	callq	gausssmooth
# BB#19:                                # %for.inc.55
                                        #   in Loop: Header=BB6_17 Depth=3
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB6_17
.LBB6_20:                               # %for.end.57
                                        #   in Loop: Header=BB6_15 Depth=2
	xorl	%esi, %esi
	movq	-88(%rbp), %rax
	movq	-96(%rbp), %rcx
	movslq	-100(%rbp), %rdx
	shlq	$2, %rdx
	movq	%rax, %rdi
	movl	%esi, -212(%rbp)        # 4-byte Spill
	movq	%rcx, %rsi
	callq	memcpy
	movq	-96(%rbp), %rax
	movslq	-100(%rbp), %rcx
	shlq	$2, %rcx
	movq	%rax, %rdi
	movl	-212(%rbp), %esi        # 4-byte Reload
	movq	%rcx, %rdx
	callq	memset
	movl	$0, -36(%rbp)
.LBB6_21:                               # %for.cond.62
                                        #   Parent Loop BB6_9 Depth=1
                                        #     Parent Loop BB6_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-36(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB6_24
# BB#22:                                # %for.body.65
                                        #   in Loop: Header=BB6_21 Depth=3
	leaq	-152(%rbp), %r8
	movl	-36(%rbp), %eax
	movl	%eax, -196(%rbp)
	movq	-88(%rbp), %rcx
	movslq	-196(%rbp), %rdx
	shlq	$2, %rdx
	addq	%rdx, %rcx
	movq	-96(%rbp), %rdx
	movslq	-196(%rbp), %rsi
	shlq	$2, %rsi
	addq	%rsi, %rdx
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %edi
	movl	%edi, -216(%rbp)        # 4-byte Spill
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	movl	%eax, %edx
	movl	-216(%rbp), %ecx        # 4-byte Reload
	callq	gausssmooth
# BB#23:                                # %for.inc.70
                                        #   in Loop: Header=BB6_21 Depth=3
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB6_21
.LBB6_24:                               # %for.end.72
                                        #   in Loop: Header=BB6_15 Depth=2
	movl	$0, -40(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -196(%rbp)
.LBB6_25:                               # %for.cond.73
                                        #   Parent Loop BB6_9 Depth=1
                                        #     Parent Loop BB6_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-40(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB6_28
# BB#26:                                # %for.body.76
                                        #   in Loop: Header=BB6_25 Depth=3
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	cvtss2sd	-104(%rbp), %xmm1
	movslq	-196(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm2
	addsd	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -224(%rbp)       # 8-byte Spill
	callq	log
	movslq	-40(%rbp), %rax
	movq	-96(%rbp), %rcx
	cvtss2sd	(%rcx,%rax,4), %xmm1
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	log
	movsd	-232(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	-224(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movslq	-196(%rbp), %rax
	movq	-72(%rbp), %rcx
	cvtss2sd	(%rcx,%rax,4), %xmm1
	addsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, (%rcx,%rax,4)
# BB#27:                                # %for.inc.94
                                        #   in Loop: Header=BB6_25 Depth=3
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-20(%rbp), %eax
	addl	-196(%rbp), %eax
	movl	%eax, -196(%rbp)
	jmp	.LBB6_25
.LBB6_28:                               # %for.end.97
                                        #   in Loop: Header=BB6_15 Depth=2
	cmpl	$0, -24(%rbp)
	jne	.LBB6_30
# BB#29:                                # %if.then.99
                                        #   in Loop: Header=BB6_15 Depth=2
	movl	-52(%rbp), %eax
	imull	rvals+4, %eax
	addl	-28(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	divsd	-192(%rbp), %xmm0
	callq	gimp_progress_update
	movl	%eax, -236(%rbp)        # 4-byte Spill
.LBB6_30:                               # %if.end.105
                                        #   in Loop: Header=BB6_15 Depth=2
	jmp	.LBB6_31
.LBB6_31:                               # %for.inc.106
                                        #   in Loop: Header=BB6_15 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB6_15
.LBB6_32:                               # %for.end.108
                                        #   in Loop: Header=BB6_9 Depth=1
	jmp	.LBB6_33
.LBB6_33:                               # %for.inc.109
                                        #   in Loop: Header=BB6_9 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB6_9
.LBB6_34:                               # %for.end.111
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	xorps	%xmm0, %xmm0
	movss	.LCPI6_1, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI6_2, %xmm2         # xmm2 = mem[0],zero,zero,zero
	movss	%xmm2, -176(%rbp)
	movss	%xmm1, -180(%rbp)
	movss	%xmm0, -184(%rbp)
	movl	$0, -40(%rbp)
.LBB6_35:                               # %for.cond.112
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB6_38
# BB#36:                                # %for.body.115
                                        #   in Loop: Header=BB6_35 Depth=1
	movsd	.LCPI6_4, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movslq	-40(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	movslq	-40(%rbp), %rcx
	leaq	(%rax,%rcx,4), %rax
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	movzbl	(%rax), %edx
	cvtsi2ssl	%edx, %xmm1
	movzbl	1(%rax), %edx
	cvtsi2ssl	%edx, %xmm2
	addss	%xmm2, %xmm1
	movzbl	2(%rax), %edx
	cvtsi2ssl	%edx, %xmm2
	addss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	addsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	log
	movsd	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -200(%rbp)
	cvtss2sd	-180(%rbp), %xmm0
	cvtss2sd	-176(%rbp), %xmm2
	movq	-64(%rbp), %rax
	movzbl	(%rax), %edx
	cvtsi2sdl	%edx, %xmm3
	addsd	%xmm1, %xmm3
	mulsd	%xmm3, %xmm2
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	callq	log
	movsd	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero
	cvtss2sd	-200(%rbp), %xmm2
	subsd	%xmm2, %xmm0
	movq	-80(%rbp), %rax
	cvtss2sd	(%rax), %xmm2
	mulsd	%xmm2, %xmm0
	movsd	-248(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	cvtss2sd	-184(%rbp), %xmm0
	addsd	%xmm0, %xmm2
	cvtsd2ss	%xmm2, %xmm0
	movq	-80(%rbp), %rax
	movss	%xmm0, (%rax)
	cvtss2sd	-180(%rbp), %xmm0
	cvtss2sd	-176(%rbp), %xmm2
	movq	-64(%rbp), %rax
	movzbl	1(%rax), %edx
	cvtsi2sdl	%edx, %xmm3
	addsd	%xmm1, %xmm3
	mulsd	%xmm3, %xmm2
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	callq	log
	movsd	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero
	cvtss2sd	-200(%rbp), %xmm2
	subsd	%xmm2, %xmm0
	movq	-80(%rbp), %rax
	cvtss2sd	4(%rax), %xmm2
	mulsd	%xmm2, %xmm0
	movsd	-256(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	cvtss2sd	-184(%rbp), %xmm0
	addsd	%xmm0, %xmm2
	cvtsd2ss	%xmm2, %xmm0
	movq	-80(%rbp), %rax
	movss	%xmm0, 4(%rax)
	cvtss2sd	-180(%rbp), %xmm0
	cvtss2sd	-176(%rbp), %xmm2
	movq	-64(%rbp), %rax
	movzbl	2(%rax), %edx
	cvtsi2sdl	%edx, %xmm3
	addsd	%xmm1, %xmm3
	mulsd	%xmm3, %xmm2
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	callq	log
	cvtss2sd	-200(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movq	-80(%rbp), %rax
	cvtss2sd	8(%rax), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-264(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvtss2sd	-184(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movq	-80(%rbp), %rax
	movss	%xmm0, 8(%rax)
# BB#37:                                # %for.inc.186
                                        #   in Loop: Header=BB6_35 Depth=1
	movl	-20(%rbp), %eax
	addl	-40(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB6_35
.LBB6_38:                               # %for.end.188
	leaq	-156(%rbp), %rsi
	leaq	-160(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	movl	-48(%rbp), %ecx
	movl	-20(%rbp), %r8d
	callq	compute_mean_var
	xorps	%xmm0, %xmm0
	movss	-156(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movss	rvals+12, %xmm2         # xmm2 = mem[0],zero,zero,zero
	mulss	-160(%rbp), %xmm2
	subss	%xmm2, %xmm1
	movss	%xmm1, -164(%rbp)
	movss	-156(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movss	rvals+12, %xmm2         # xmm2 = mem[0],zero,zero,zero
	mulss	-160(%rbp), %xmm2
	addss	%xmm2, %xmm1
	movss	%xmm1, -172(%rbp)
	movss	-172(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	subss	-164(%rbp), %xmm1
	movss	%xmm1, -168(%rbp)
	movss	-168(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	.LBB6_40
	jp	.LBB6_40
# BB#39:                                # %if.then.195
	movss	.LCPI6_1, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -168(%rbp)
.LBB6_40:                               # %if.end.196
	movl	$0, -40(%rbp)
.LBB6_41:                               # %for.cond.197
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_43 Depth 2
	movl	-40(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB6_54
# BB#42:                                # %for.body.200
                                        #   in Loop: Header=BB6_41 Depth=1
	movq	-8(%rbp), %rax
	movslq	-40(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	movslq	-40(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -80(%rbp)
	movl	$0, -44(%rbp)
.LBB6_43:                               # %for.cond.205
                                        #   Parent Loop BB6_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -44(%rbp)
	jge	.LBB6_52
# BB#44:                                # %for.body.208
                                        #   in Loop: Header=BB6_43 Depth=2
	movss	.LCPI6_3, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movslq	-44(%rbp), %rax
	movq	-80(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	subss	-164(%rbp), %xmm1
	movaps	%xmm0, %xmm2
	mulss	%xmm1, %xmm2
	divss	-168(%rbp), %xmm2
	movss	%xmm2, -204(%rbp)
	movss	-204(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB6_46
# BB#45:                                # %cond.true
                                        #   in Loop: Header=BB6_43 Depth=2
	movss	.LCPI6_3, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -268(%rbp)       # 4-byte Spill
	jmp	.LBB6_50
.LBB6_46:                               # %cond.false
                                        #   in Loop: Header=BB6_43 Depth=2
	xorps	%xmm0, %xmm0
	ucomiss	-204(%rbp), %xmm0
	jbe	.LBB6_48
# BB#47:                                # %cond.true.218
                                        #   in Loop: Header=BB6_43 Depth=2
	xorps	%xmm0, %xmm0
	movss	%xmm0, -272(%rbp)       # 4-byte Spill
	jmp	.LBB6_49
.LBB6_48:                               # %cond.false.219
                                        #   in Loop: Header=BB6_43 Depth=2
	movss	-204(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -272(%rbp)       # 4-byte Spill
.LBB6_49:                               # %cond.end
                                        #   in Loop: Header=BB6_43 Depth=2
	movss	-272(%rbp), %xmm0       # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -268(%rbp)       # 4-byte Spill
.LBB6_50:                               # %cond.end.220
                                        #   in Loop: Header=BB6_43 Depth=2
	movss	-268(%rbp), %xmm0       # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movslq	-44(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#51:                                # %for.inc.225
                                        #   in Loop: Header=BB6_43 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB6_43
.LBB6_52:                               # %for.end.227
                                        #   in Loop: Header=BB6_41 Depth=1
	jmp	.LBB6_53
.LBB6_53:                               # %for.inc.228
                                        #   in Loop: Header=BB6_41 Depth=1
	movl	-20(%rbp), %eax
	addl	-40(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB6_41
.LBB6_54:                               # %for.end.230
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB6_55:                               # %return
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end6:
	.size	MSRCR, .Lfunc_end6-MSRCR
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4611686018427387904     # double 2
.LCPI7_1:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	retinex_scales_distribution,@function
retinex_scales_distribution:            # @retinex_scales_distribution
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	cmpl	$1, -12(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movl	$2, %eax
	movl	-20(%rbp), %ecx
	movl	%eax, -32(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-32(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cvtsi2ssl	%eax, %xmm0
	movq	-8(%rbp), %rsi
	movss	%xmm0, (%rsi)
	jmp	.LBB7_23
.LBB7_2:                                # %if.else
	cmpl	$2, -12(%rbp)
	jne	.LBB7_4
# BB#3:                                 # %if.then.3
	movl	$2, %eax
	movl	-20(%rbp), %ecx
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-36(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cvtsi2ssl	%eax, %xmm0
	movq	-8(%rbp), %rsi
	movss	%xmm0, (%rsi)
	cvtsi2ssl	-20(%rbp), %xmm0
	movq	-8(%rbp), %rsi
	movss	%xmm0, 4(%rsi)
	jmp	.LBB7_22
.LBB7_4:                                # %if.else.9
	cvtsi2ssl	-20(%rbp), %xmm0
	cvtsi2ssl	-12(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	je	.LBB7_5
	jmp	.LBB7_24
.LBB7_24:                               # %if.else.9
	movl	-40(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	je	.LBB7_10
	jmp	.LBB7_25
.LBB7_25:                               # %if.else.9
	movl	-40(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB7_15
	jmp	.LBB7_20
.LBB7_5:                                # %sw.bb
	movl	$0, -28(%rbp)
.LBB7_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB7_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB7_6 Depth=1
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2ssl	-28(%rbp), %xmm1
	mulss	-24(%rbp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	movss	%xmm0, (%rcx,%rax,4)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB7_6 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB7_6
.LBB7_9:                                # %for.end
	jmp	.LBB7_21
.LBB7_10:                               # %sw.bb.19
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-20(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	log
	cvtsd2ss	%xmm0, %xmm0
	cvtsi2ssl	-12(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB7_11:                               # %for.cond.24
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB7_14
# BB#12:                                # %for.body.27
                                        #   in Loop: Header=BB7_11 Depth=1
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	cvtsi2ssl	-28(%rbp), %xmm1
	mulss	-24(%rbp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm1, -56(%rbp)        # 8-byte Spill
	callq	log
	movsd	.LCPI7_1, %xmm1         # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	pow
	movsd	.LCPI7_0, %xmm1         # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	movss	%xmm0, (%rcx,%rax,4)
# BB#13:                                # %for.inc.38
                                        #   in Loop: Header=BB7_11 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB7_11
.LBB7_14:                               # %for.end.40
	jmp	.LBB7_21
.LBB7_15:                               # %sw.bb.41
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-20(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	log
	cvtsd2ss	%xmm0, %xmm0
	cvtsi2ssl	-12(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB7_16:                               # %for.cond.48
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB7_19
# BB#17:                                # %for.body.51
                                        #   in Loop: Header=BB7_16 Depth=1
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-20(%rbp), %xmm1
	cvtsi2ssl	-28(%rbp), %xmm2
	mulss	-24(%rbp), %xmm2
	cvtss2sd	%xmm2, %xmm2
	movsd	%xmm2, -64(%rbp)        # 8-byte Spill
	movsd	%xmm1, -72(%rbp)        # 8-byte Spill
	callq	log
	movsd	.LCPI7_1, %xmm1         # xmm1 = mem[0],zero
	movsd	-64(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	pow
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	movss	%xmm0, (%rcx,%rax,4)
# BB#18:                                # %for.inc.63
                                        #   in Loop: Header=BB7_16 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB7_16
.LBB7_19:                               # %for.end.65
	jmp	.LBB7_21
.LBB7_20:                               # %sw.default
	jmp	.LBB7_21
.LBB7_21:                               # %sw.epilog
	jmp	.LBB7_22
.LBB7_22:                               # %if.end
	jmp	.LBB7_23
.LBB7_23:                               # %if.end.66
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	retinex_scales_distribution, .Lfunc_end7-retinex_scales_distribution
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4612811918334230528     # double 2.5
.LCPI8_1:
	.quad	4602678819172646912     # double 0.5
.LCPI8_3:
	.quad	4616125576868057192     # double 3.9715600000000002
.LCPI8_4:
	.quad	4616353481527200275     # double 4.1455399999999996
.LCPI8_5:
	.quad	4607182418800017408     # double 1
.LCPI8_6:
	.quad	4598515871821090720     # double 0.26890999999999998
.LCPI8_7:
	.quad	4606851854587368414     # double 0.96330000000000005
.LCPI8_8:
	.quad	4607066316001623797     # double 0.98711000000000004
.LCPI8_9:
	.quad	4601277389040601761     # double 0.422205
.LCPI8_10:
	.quad	4608383123496670656     # double 1.26661
.LCPI8_11:
	.quad	4609110409800494717     # double 1.4280999999999999
.LCPI8_12:
	.quad	4613613986909867076     # double 2.8561899999999998
.LCPI8_13:
	.quad	4612686110278639933     # double 2.4441299999999999
.LCPI8_14:
	.quad	4609786625284544397     # double 1.5782499999999999
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI8_2:
	.long	1038814412              # float 0.114770502
	.text
	.align	16, 0x90
	.type	compute_coefs3,@function
compute_coefs3:                         # @compute_coefs3
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
	movsd	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	cvtss2sd	-12(%rbp), %xmm0
	ucomisd	%xmm1, %xmm0
	jb	.LBB8_2
# BB#1:                                 # %if.then
	movsd	.LCPI8_7, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI8_8, %xmm1         # xmm1 = mem[0],zero
	cvtss2sd	-12(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	subsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -16(%rbp)
	jmp	.LBB8_7
.LBB8_2:                                # %if.else
	movsd	.LCPI8_1, %xmm0         # xmm0 = mem[0],zero
	cvtss2sd	-12(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jb	.LBB8_5
# BB#3:                                 # %land.lhs.true
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	cvtss2sd	-12(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB8_5
# BB#4:                                 # %if.then.10
	movsd	.LCPI8_3, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI8_4, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI8_5, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI8_6, %xmm3         # xmm3 = mem[0],zero
	cvtss2sd	-12(%rbp), %xmm4
	mulsd	%xmm4, %xmm3
	subsd	%xmm3, %xmm2
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -40(%rbp)        # 8-byte Spill
	callq	sqrt
	cvtsd2ss	%xmm0, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	-40(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -16(%rbp)
	jmp	.LBB8_6
.LBB8_5:                                # %if.else.19
	movss	.LCPI8_2, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -16(%rbp)
.LBB8_6:                                # %if.end
	jmp	.LBB8_7
.LBB8_7:                                # %if.end.20
	movsd	.LCPI8_5, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI8_9, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI8_10, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI8_11, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI8_12, %xmm4        # xmm4 = mem[0],zero
	movsd	.LCPI8_13, %xmm5        # xmm5 = mem[0],zero
	movsd	.LCPI8_14, %xmm6        # xmm6 = mem[0],zero
	movss	-16(%rbp), %xmm7        # xmm7 = mem[0],zero,zero,zero
	mulss	-16(%rbp), %xmm7
	movss	%xmm7, -20(%rbp)
	movss	-16(%rbp), %xmm7        # xmm7 = mem[0],zero,zero,zero
	mulss	-20(%rbp), %xmm7
	movss	%xmm7, -24(%rbp)
	cvtss2sd	-16(%rbp), %xmm7
	movaps	%xmm5, %xmm8
	mulsd	%xmm7, %xmm8
	addsd	%xmm8, %xmm6
	cvtss2sd	-20(%rbp), %xmm7
	movaps	%xmm3, %xmm8
	mulsd	%xmm7, %xmm8
	addsd	%xmm8, %xmm6
	cvtss2sd	-24(%rbp), %xmm7
	movaps	%xmm1, %xmm8
	mulsd	%xmm7, %xmm8
	addsd	%xmm8, %xmm6
	movq	-8(%rbp), %rax
	movsd	%xmm6, 16(%rax)
	cvtss2sd	-16(%rbp), %xmm6
	mulsd	%xmm6, %xmm5
	cvtss2sd	-20(%rbp), %xmm6
	mulsd	%xmm6, %xmm4
	addsd	%xmm4, %xmm5
	cvtss2sd	-24(%rbp), %xmm4
	movaps	%xmm2, %xmm6
	mulsd	%xmm4, %xmm6
	addsd	%xmm6, %xmm5
	movq	-8(%rbp), %rax
	movsd	%xmm5, 24(%rax)
	cvtss2sd	-20(%rbp), %xmm4
	mulsd	%xmm4, %xmm3
	cvtss2sd	-24(%rbp), %xmm4
	mulsd	%xmm4, %xmm2
	addsd	%xmm2, %xmm3
	movd	%xmm3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm2
	movq	-8(%rbp), %rax
	movsd	%xmm2, 32(%rax)
	cvtss2sd	-24(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	movq	-8(%rbp), %rax
	movsd	%xmm1, 40(%rax)
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	addsd	32(%rax), %xmm1
	movq	-8(%rbp), %rax
	addsd	40(%rax), %xmm1
	movq	-8(%rbp), %rax
	divsd	16(%rax), %xmm1
	subsd	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movss	%xmm0, 4(%rax)
	movq	-8(%rbp), %rax
	movl	$3, (%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	compute_coefs3, .Lfunc_end8-compute_coefs3
	.cfi_endproc

	.align	16, 0x90
	.type	gausssmooth,@function
gausssmooth:                            # @gausssmooth
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movl	-20(%rbp), %ecx
	addl	$3, %ecx
	movl	%ecx, -44(%rbp)
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -20(%rbp)
	movslq	-44(%rbp), %rsi
	shlq	$2, %rsi
	movq	%rsi, %rdi
	callq	g_try_malloc
	movq	%rax, -56(%rbp)
	movslq	-44(%rbp), %rax
	shlq	$2, %rax
	movq	%rax, %rdi
	callq	g_try_malloc
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movq	-56(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movq	-56(%rbp), %rax
	movss	%xmm0, 4(%rax)
	movq	-8(%rbp), %rax
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movq	-56(%rbp), %rax
	movss	%xmm0, 8(%rax)
	movl	$0, -36(%rbp)
	movl	$3, -40(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jg	.LBB9_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-32(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movl	-36(%rbp), %ecx
	imull	-24(%rbp), %ecx
	movslq	%ecx, %rax
	movq	-8(%rbp), %rdx
	cvtss2sd	(%rdx,%rax,4), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	movl	-40(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-56(%rbp), %rdx
	cvtss2sd	(%rdx,%rax,4), %xmm2
	mulsd	%xmm2, %xmm1
	movq	-32(%rbp), %rax
	movsd	32(%rax), %xmm2         # xmm2 = mem[0],zero
	movl	-40(%rbp), %ecx
	subl	$2, %ecx
	movslq	%ecx, %rax
	movq	-56(%rbp), %rdx
	cvtss2sd	(%rdx,%rax,4), %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	movq	-32(%rbp), %rax
	movsd	40(%rax), %xmm2         # xmm2 = mem[0],zero
	movl	-40(%rbp), %ecx
	subl	$3, %ecx
	movslq	%ecx, %rax
	movq	-56(%rbp), %rdx
	cvtss2sd	(%rdx,%rax,4), %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	movq	-32(%rbp), %rax
	divsd	16(%rax), %xmm1
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movslq	-40(%rbp), %rax
	movq	-56(%rbp), %rdx
	movss	%xmm0, (%rdx,%rax,4)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB9_1
.LBB9_4:                                # %for.end
	movl	-20(%rbp), %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdx
	movss	%xmm0, (%rdx,%rcx,4)
	movl	-20(%rbp), %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movl	-20(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdx
	movss	%xmm0, (%rdx,%rcx,4)
	movl	-20(%rbp), %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	movq	-56(%rbp), %rdx
	movss	(%rdx,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movl	-20(%rbp), %eax
	addl	$3, %eax
	movslq	%eax, %rcx
	movq	-64(%rbp), %rdx
	movss	%xmm0, (%rdx,%rcx,4)
	movl	-20(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
.LBB9_5:                                # %for.cond.61
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -36(%rbp)
	jl	.LBB9_8
# BB#6:                                 # %for.body.64
                                        #   in Loop: Header=BB9_5 Depth=1
	movq	-32(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movl	-40(%rbp), %ecx
	addl	$3, %ecx
	movslq	%ecx, %rax
	movq	-56(%rbp), %rdx
	cvtss2sd	(%rdx,%rax,4), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-32(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	movl	-40(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	movq	-64(%rbp), %rdx
	cvtss2sd	(%rdx,%rax,4), %xmm2
	mulsd	%xmm2, %xmm1
	movq	-32(%rbp), %rax
	movsd	32(%rax), %xmm2         # xmm2 = mem[0],zero
	movl	-40(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rax
	movq	-64(%rbp), %rdx
	cvtss2sd	(%rdx,%rax,4), %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	movq	-32(%rbp), %rax
	movsd	40(%rax), %xmm2         # xmm2 = mem[0],zero
	movl	-40(%rbp), %ecx
	addl	$3, %ecx
	movslq	%ecx, %rax
	movq	-64(%rbp), %rdx
	cvtss2sd	(%rdx,%rax,4), %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	movq	-32(%rbp), %rax
	divsd	16(%rax), %xmm1
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movl	-36(%rbp), %ecx
	imull	-24(%rbp), %ecx
	movslq	%ecx, %rax
	movq	-16(%rbp), %rdx
	movss	%xmm0, (%rdx,%rax,4)
	movslq	-40(%rbp), %rax
	movq	-64(%rbp), %rdx
	movss	%xmm0, (%rdx,%rax,4)
# BB#7:                                 # %for.inc.104
                                        #   in Loop: Header=BB9_5 Depth=1
	movl	-36(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -36(%rbp)
	movl	-40(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB9_5
.LBB9_8:                                # %for.end.106
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gausssmooth, .Lfunc_end9-gausssmooth
	.cfi_endproc

	.align	16, 0x90
	.type	compute_mean_var,@function
compute_mean_var:                       # @compute_mean_var
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
	subq	$64, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movss	%xmm0, -36(%rbp)
	movq	-16(%rbp), %rdx
	movss	%xmm0, (%rdx)
	movl	$0, -40(%rbp)
.LBB10_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_3 Depth 2
	movl	-40(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB10_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-40(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movl	$0, -44(%rbp)
.LBB10_3:                               # %for.cond.1
                                        #   Parent Loop BB10_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -44(%rbp)
	jge	.LBB10_6
# BB#4:                                 # %for.body.3
                                        #   in Loop: Header=BB10_3 Depth=2
	movslq	-44(%rbp), %rax
	movq	-56(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	addss	(%rax), %xmm0
	movss	%xmm0, (%rax)
	movslq	-44(%rbp), %rax
	movq	-56(%rbp), %rcx
	movss	(%rcx,%rax,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movslq	-44(%rbp), %rax
	movq	-56(%rbp), %rcx
	mulss	(%rcx,%rax,4), %xmm0
	addss	-36(%rbp), %xmm0
	movss	%xmm0, -36(%rbp)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB10_3 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB10_3
.LBB10_6:                               # %for.end
                                        #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_7
.LBB10_7:                               # %for.inc.9
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-32(%rbp), %eax
	addl	-40(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB10_1
.LBB10_8:                               # %for.end.11
	cvtsi2ssl	-28(%rbp), %xmm0
	movq	-16(%rbp), %rax
	movss	(%rax), %xmm1           # xmm1 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm1
	movss	%xmm1, (%rax)
	cvtsi2ssl	-28(%rbp), %xmm0
	movss	-36(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm1
	movss	%xmm1, -36(%rbp)
	movss	-36(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movss	(%rax), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	mulss	(%rax), %xmm1
	subss	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-24(%rbp), %rax
	cvtss2sd	(%rax), %xmm0
	callq	sqrt
	cvtsd2ss	%xmm0, %xmm0
	movq	-24(%rbp), %rax
	movss	%xmm0, (%rax)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	compute_mean_var, .Lfunc_end10-compute_mean_var
	.cfi_endproc

	.type	PLUG_IN_INFO,@object    # @PLUG_IN_INFO
	.data
	.align	8
PLUG_IN_INFO:
	.quad	0
	.quad	0
	.quad	query
	.quad	run
	.size	PLUG_IN_INFO, 32

	.type	query.args,@object      # @query.args
	.section	.rodata,"a",@progbits
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
	.long	3                       # 0x3
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
	.asciz	"scale"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Biggest scale value"
	.size	.L.str.7, 20

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"nscales"
	.size	.L.str.8, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Number of scales"
	.size	.L.str.9, 17

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"scales-mode"
	.size	.L.str.10, 12

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Retinex distribution through scales"
	.size	.L.str.11, 36

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"cvar"
	.size	.L.str.12, 5

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Variance value"
	.size	.L.str.13, 15

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"plug-in-retinex"
	.size	.L.str.14, 16

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Enhance contrast using the Retinex method"
	.size	.L.str.15, 42

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"The Retinex Image Enhancement Algorithm is an automatic image enhancement method that enhances a digital image in terms of dynamic range compression, color independence from the spectral distribution of the scene illuminant, and color/lightness rendition."
	.size	.L.str.16, 256

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Fabien Pelisson"
	.size	.L.str.17, 16

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"2003"
	.size	.L.str.18, 5

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Retine_x..."
	.size	.L.str.19, 12

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"RGB*"
	.size	.L.str.20, 5

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"<Image>/Colors/Modify"
	.size	.L.str.21, 22

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

	.type	rvals,@object           # @rvals
	.data
	.align	4
rvals:
	.long	240                     # 0xf0
	.long	3                       # 0x3
	.long	0                       # 0x0
	.long	1067030938              # float 1.20000005
	.size	rvals, 16

	.type	.L.str.24,@object       # @.str.24
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.24:
	.asciz	"Retinex"
	.size	.L.str.24, 8

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"contrast-retinex"
	.size	.L.str.25, 17

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Retinex Image Enhancement"
	.size	.L.str.26, 26

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gimp-contrast-retinex"
	.size	.L.str.27, 22

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
	.asciz	"Uniform"
	.size	.L.str.31, 8

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Low"
	.size	.L.str.32, 4

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"High"
	.size	.L.str.33, 5

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"changed"
	.size	.L.str.34, 8

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"_Level:"
	.size	.L.str.35, 8

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"_Scale:"
	.size	.L.str.36, 8

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"value-changed"
	.size	.L.str.37, 14

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Scale _division:"
	.size	.L.str.38, 17

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Dy_namic:"
	.size	.L.str.39, 10

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Failed to allocate memory"
	.size	.L.str.40, 26

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Retinex: filtering"
	.size	.L.str.41, 19

	.type	RetinexScales,@object   # @RetinexScales
	.local	RetinexScales
	.comm	RetinexScales,32,16

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
