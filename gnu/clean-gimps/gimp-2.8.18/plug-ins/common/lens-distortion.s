	.text
	.file	"lens-distortion.bc"
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
	movabsq	$.L.str.18, %rdi
	movabsq	$.L.str.19, %rsi
	movabsq	$.L.str.20, %rdx
	movabsq	$.L.str.21, %rcx
	movabsq	$.L.str.22, %r8
	movabsq	$.L.str.23, %r9
	movabsq	$.L.str.24, %rax
	movabsq	$.L.str.25, %r10
	movl	$1, %r11d
	movl	$9, %ebx
	xorl	%r14d, %r14d
	movabsq	$query.args, %r15
	xorl	%r12d, %r12d
	movl	%r12d, %r13d
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$9, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r13, -48(%rbp)         # 8-byte Spill
	movl	%r11d, -52(%rbp)        # 4-byte Spill
	movl	%r14d, -56(%rbp)        # 4-byte Spill
	movl	%ebx, -60(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.18, %rdi
	movabsq	$.L.str.26, %rsi
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -84(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -88(%rbp)
	movl	$21, run.values
	movl	-84(%rbp), %esi
	movl	%esi, run.values+8
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.27, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.27, %rdi
	movabsq	$.L.str.28, %rsi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.27, %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	textdomain
	movq	%rax, -112(%rbp)        # 8-byte Spill
# BB#2:                                 # %do.end
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	leaq	-80(%rbp), %rdi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, drawable_width
	movq	-48(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, drawable_height
	callq	gimp_context_get_background
	leaq	-80(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	gimp_rgb_set_alpha
	leaq	-80(%rbp), %rsi
	movabsq	$background_color, %rdx
	movq	-48(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_get_color_uchar
	movq	-48(%rbp), %rdx
	movl	16(%rdx), %eax
	movq	-48(%rbp), %rdx
	cmpl	20(%rdx), %eax
	jbe	.LBB1_4
# BB#3:                                 # %cond.true
	movq	-48(%rbp), %rax
	movl	16(%rax), %ecx
	movl	%ecx, -120(%rbp)        # 4-byte Spill
	jmp	.LBB1_5
.LBB1_4:                                # %cond.false
	movq	-48(%rbp), %rax
	movl	20(%rax), %ecx
	movl	%ecx, -120(%rbp)        # 4-byte Spill
.LBB1_5:                                # %cond.end
	movl	-120(%rbp), %eax        # 4-byte Reload
	addl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	movq	-32(%rbp), %rdi
	movl	$1, (%rdi)
	movq	-40(%rbp), %rdi
	movq	$run.values, (%rdi)
	movl	-88(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_24
.LBB1_24:                               # %cond.end
	movl	-124(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	je	.LBB1_9
	jmp	.LBB1_25
.LBB1_25:                               # %cond.end
	movl	-124(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	je	.LBB1_14
	jmp	.LBB1_15
.LBB1_6:                                # %sw.bb
	movabsq	$.L.str.18, %rdi
	movabsq	$vals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-48(%rbp), %rdi
	movl	%eax, -136(%rbp)        # 4-byte Spill
	callq	lens_dialog
	cmpl	$0, %eax
	jne	.LBB1_8
# BB#7:                                 # %if.then
	jmp	.LBB1_23
.LBB1_8:                                # %if.end
	jmp	.LBB1_16
.LBB1_9:                                # %sw.bb.12
	cmpl	$9, -12(%rbp)
	je	.LBB1_11
# BB#10:                                # %if.then.15
	movl	$1, -84(%rbp)
.LBB1_11:                               # %if.end.16
	cmpl	$3, -84(%rbp)
	jne	.LBB1_13
# BB#12:                                # %if.then.19
	movq	-24(%rbp), %rax
	movsd	128(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, vals
	movq	-24(%rbp), %rax
	movsd	168(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, vals+8
	movq	-24(%rbp), %rax
	movsd	208(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, vals+16
	movq	-24(%rbp), %rax
	movsd	248(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, vals+24
	movq	-24(%rbp), %rax
	movsd	288(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, vals+32
	movq	-24(%rbp), %rax
	movsd	328(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, vals+40
.LBB1_13:                               # %if.end.37
	jmp	.LBB1_16
.LBB1_14:                               # %sw.bb.38
	movabsq	$.L.str.18, %rdi
	movabsq	$vals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB1_16
.LBB1_15:                               # %sw.default
	jmp	.LBB1_16
.LBB1_16:                               # %sw.epilog
	cmpl	$3, -84(%rbp)
	jne	.LBB1_22
# BB#17:                                # %if.then.42
	movq	-48(%rbp), %rdi
	callq	lens_distort
	cmpl	$1, -88(%rbp)
	je	.LBB1_19
# BB#18:                                # %if.then.45
	callq	gimp_displays_flush
	movl	%eax, -144(%rbp)        # 4-byte Spill
.LBB1_19:                               # %if.end.47
	cmpl	$0, -88(%rbp)
	jne	.LBB1_21
# BB#20:                                # %if.then.50
	movabsq	$.L.str.18, %rdi
	movabsq	$vals, %rax
	movl	$48, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB1_21:                               # %if.end.52
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB1_22:                               # %if.end.53
	movl	-84(%rbp), %eax
	movl	%eax, run.values+8
.LBB1_23:                               # %return
	addq	$160, %rsp
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
	.quad	-4586634745500139520    # double -100
.LCPI3_1:
	.quad	4636737291354636288     # double 100
.LCPI3_2:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI3_3:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	lens_dialog,@function
lens_dialog:                            # @lens_dialog
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
	pushq	%rbx
	subq	$744, %rsp              # imm = 0x2E8
.Ltmp17:
	.cfi_offset %rbx, -40
.Ltmp18:
	.cfi_offset %r14, -32
.Ltmp19:
	.cfi_offset %r15, -24
	movabsq	$.L.str.29, %rax
	xorl	%esi, %esi
	movq	%rdi, -32(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -80(%rbp)
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
	movl	$1, %r10d
	movabsq	$.L.str.33, %r11
	movl	$4294967290, %ebx       # imm = 0xFFFFFFFA
	movabsq	$.L.str.34, %r14
	movl	$4294967291, %r15d      # imm = 0xFFFFFFFB
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$1, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-6, 24(%rsp)
	movq	%r14, 32(%rsp)
	movl	$-5, 40(%rsp)
	movq	$0, 48(%rsp)
	movb	$0, %al
	movl	%r15d, -92(%rbp)        # 4-byte Spill
	movl	%ebx, -96(%rbp)         # 4-byte Spill
	movl	%r10d, -100(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movl	$4294967291, %edx       # imm = 0xFFFFFFFB
	movl	$4294967290, %ecx       # imm = 0xFFFFFFFA
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-40(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-40(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
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
	movq	-32(%rbp), %rdi
	callq	gimp_zoom_preview_new
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
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
	movabsq	$.L.str.35, %rsi
	movabsq	$lens_distort_preview, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movl	$6, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_table_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-56(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-48(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -188(%rbp)        # 4-byte Spill
	movl	-188(%rbp), %ecx        # 4-byte Reload
	movl	-188(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.36, %rdi
	movl	-76(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -76(%rbp)
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$120, %r8d
	movl	$6, %r9d
	movsd	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI3_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_3, %xmm4         # xmm4 = mem[0],zero
	movl	$3, %ecx
	movl	$1, %edx
	xorps	%xmm0, %xmm0
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movsd	vals+16, %xmm5          # xmm5 = mem[0],zero
	movq	-216(%rbp), %r11        # 8-byte Reload
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movl	-204(%rbp), %r10d       # 4-byte Reload
	movl	%edx, -228(%rbp)        # 4-byte Spill
	movl	%r10d, %edx
	movl	%ecx, -232(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$3, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-240(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-240(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movq	%rax, -72(%rbp)
	movq	adjustments, %rdi
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_append
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$vals, %rdi
	addq	$16, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, adjustments
	movq	-72(%rbp), %rax
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-248(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-256(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -272(%rbp)        # 8-byte Spill
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.38, %rdi
	movl	-76(%rbp), %r9d
	movl	%r9d, %r10d
	addl	$1, %r10d
	movl	%r10d, -76(%rbp)
	movl	%r9d, -284(%rbp)        # 4-byte Spill
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$120, %r8d
	movl	$6, %r9d
	movsd	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI3_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_3, %xmm4         # xmm4 = mem[0],zero
	movl	$3, %r10d
	movl	$1, %ebx
	xorps	%xmm0, %xmm0
	xorl	%r15d, %r15d
	movl	%r15d, %ecx
	movsd	vals+24, %xmm5          # xmm5 = mem[0],zero
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movl	-284(%rbp), %edx        # 4-byte Reload
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -312(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$3, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-312(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-312(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -316(%rbp)       # 4-byte Spill
	movl	%ebx, -320(%rbp)        # 4-byte Spill
	callq	gimp_scale_entry_new
	movq	%rax, -72(%rbp)
	movq	adjustments, %rdi
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_append
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$vals, %rdi
	addq	$24, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, adjustments
	movq	-72(%rbp), %rax
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-328(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-336(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -352(%rbp)        # 8-byte Spill
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.39, %rdi
	movl	-76(%rbp), %r9d
	movl	%r9d, %r10d
	addl	$1, %r10d
	movl	%r10d, -76(%rbp)
	movl	%r9d, -364(%rbp)        # 4-byte Spill
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$120, %r8d
	movl	$6, %r9d
	movsd	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI3_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_3, %xmm4         # xmm4 = mem[0],zero
	movl	$3, %r10d
	movl	$1, %ebx
	xorps	%xmm0, %xmm0
	xorl	%r15d, %r15d
	movl	%r15d, %ecx
	movsd	vals+32, %xmm5          # xmm5 = mem[0],zero
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movl	-364(%rbp), %edx        # 4-byte Reload
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -392(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$3, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-392(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-392(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -396(%rbp)       # 4-byte Spill
	movl	%ebx, -400(%rbp)        # 4-byte Spill
	callq	gimp_scale_entry_new
	movq	%rax, -72(%rbp)
	movq	adjustments, %rdi
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_append
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$vals, %rdi
	addq	$32, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, adjustments
	movq	-72(%rbp), %rax
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-408(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -416(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-416(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -432(%rbp)        # 8-byte Spill
	movq	%rcx, -440(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.40, %rdi
	movl	-76(%rbp), %r9d
	movl	%r9d, %r10d
	addl	$1, %r10d
	movl	%r10d, -76(%rbp)
	movl	%r9d, -444(%rbp)        # 4-byte Spill
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$120, %r8d
	movl	$6, %r9d
	movsd	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI3_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_3, %xmm4         # xmm4 = mem[0],zero
	movl	$3, %r10d
	movl	$1, %ebx
	xorps	%xmm0, %xmm0
	xorl	%r15d, %r15d
	movl	%r15d, %ecx
	movsd	vals+40, %xmm5          # xmm5 = mem[0],zero
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movl	-444(%rbp), %edx        # 4-byte Reload
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -472(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$3, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-472(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-472(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -476(%rbp)       # 4-byte Spill
	movl	%ebx, -480(%rbp)        # 4-byte Spill
	callq	gimp_scale_entry_new
	movq	%rax, -72(%rbp)
	movq	adjustments, %rdi
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_append
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$vals, %rdi
	addq	$40, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, adjustments
	movq	-72(%rbp), %rax
	movq	%rdi, -488(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-488(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -496(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-496(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -512(%rbp)        # 8-byte Spill
	movq	%rcx, -520(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.41, %rdi
	movl	-76(%rbp), %r9d
	movl	%r9d, %r10d
	addl	$1, %r10d
	movl	%r10d, -76(%rbp)
	movl	%r9d, -524(%rbp)        # 4-byte Spill
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$120, %r8d
	movl	$6, %r9d
	movsd	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI3_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_3, %xmm4         # xmm4 = mem[0],zero
	movl	$3, %r10d
	movl	$1, %ebx
	xorps	%xmm0, %xmm0
	xorl	%r15d, %r15d
	movl	%r15d, %ecx
	movsd	vals, %xmm5             # xmm5 = mem[0],zero
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movl	-524(%rbp), %edx        # 4-byte Reload
	movq	%rcx, -544(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -552(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$3, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-552(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-552(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -556(%rbp)       # 4-byte Spill
	movl	%ebx, -560(%rbp)        # 4-byte Spill
	callq	gimp_scale_entry_new
	movq	%rax, -72(%rbp)
	movq	adjustments, %rdi
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_append
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$vals, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, adjustments
	movq	-72(%rbp), %rax
	movq	%rdi, -568(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-568(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -576(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-576(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -592(%rbp)        # 8-byte Spill
	movq	%rcx, -600(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.42, %rdi
	movl	-76(%rbp), %r9d
	movl	%r9d, %r10d
	addl	$1, %r10d
	movl	%r10d, -76(%rbp)
	movl	%r9d, -604(%rbp)        # 4-byte Spill
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$120, %r8d
	movl	$6, %r9d
	movsd	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI3_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_3, %xmm4         # xmm4 = mem[0],zero
	movl	$3, %r10d
	movl	$1, %ebx
	xorps	%xmm0, %xmm0
	xorl	%r15d, %r15d
	movl	%r15d, %ecx
	movsd	vals+8, %xmm5           # xmm5 = mem[0],zero
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movl	-604(%rbp), %edx        # 4-byte Reload
	movq	%rcx, -624(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -632(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$3, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-632(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-632(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -636(%rbp)       # 4-byte Spill
	movl	%ebx, -640(%rbp)        # 4-byte Spill
	callq	gimp_scale_entry_new
	movq	%rax, -72(%rbp)
	movq	adjustments, %rdi
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_append
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$vals, %rdi
	addq	$8, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, adjustments
	movq	-72(%rbp), %rax
	movq	%rdi, -648(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-648(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	%rdi, -656(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-656(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.43, %rsi
	movabsq	$lens_response, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	leaq	-80(%rbp), %rdx
	movq	-40(%rbp), %rdi
	movq	%rdx, -672(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-672(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.44, %rsi
	movabsq	$gtk_main_quit, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdi
	movq	%rcx, -688(%rbp)        # 8-byte Spill
	movq	-688(%rbp), %r8         # 8-byte Reload
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-40(%rbp), %rdi
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	callq	gtk_main
	movq	adjustments, %rdi
	callq	g_slist_free
	movq	$0, adjustments
	movl	-80(%rbp), %eax
	addq	$744, %rsp              # imm = 0x2E8
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	lens_dialog, .Lfunc_end3-lens_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	lens_distort,@function
lens_distort:                           # @lens_distort
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp22:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	4(%rdi), %edi
	movq	-8(%rbp), %rax
	movl	8(%rax), %esi
	callq	lens_setup_calc
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_pixel_fetcher_new
	leaq	-56(%rbp), %rdi
	movq	%rax, -24(%rbp)
	callq	gimp_context_get_background
	leaq	-56(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	gimp_rgb_set_alpha
	leaq	-56(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gimp_pixel_fetcher_set_bg_color
	movl	$4, %esi
	movq	-24(%rbp), %rdi
	callq	gimp_pixel_fetcher_set_edge_mode
	movabsq	$.L.str.45, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	gimp_rgn_iterator_new
	movabsq	$lens_distort_func, %rdi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rcx, %rdx
	callq	gimp_rgn_iterator_dest
	movq	-16(%rbp), %rdi
	callq	gimp_rgn_iterator_free
	movq	-24(%rbp), %rdi
	callq	gimp_pixel_fetcher_destroy
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	lens_distort, .Lfunc_end4-lens_distort
	.cfi_endproc

	.align	16, 0x90
	.type	lens_distort_preview,@function
lens_distort_preview:                   # @lens_distort_preview
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	%eax, %esi
	callq	gimp_pixel_fetcher_new
	leaq	-96(%rbp), %rdi
	movq	%rax, -64(%rbp)
	callq	gimp_context_get_background
	leaq	-96(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	gimp_rgb_set_alpha
	leaq	-96(%rbp), %rsi
	movq	-64(%rbp), %rdi
	callq	gimp_pixel_fetcher_set_bg_color
	movl	$4, %esi
	movq	-64(%rbp), %rdi
	callq	gimp_pixel_fetcher_set_edge_mode
	movq	-8(%rbp), %rdi
	movl	4(%rdi), %edi
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %esi
	callq	lens_setup_calc
	movq	-16(%rbp), %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	gimp_zoom_preview_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-36(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	leaq	-44(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_zoom_preview_get_source
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -52(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_3 Depth 2
	movl	-52(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB5_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	$0, -48(%rbp)
.LBB5_3:                                # %for.cond.7
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB5_6
# BB#4:                                 # %for.body.9
                                        #   in Loop: Header=BB5_3 Depth=2
	leaq	-100(%rbp), %rcx
	leaq	-104(%rbp), %r8
	movq	-16(%rbp), %rdi
	movl	-48(%rbp), %esi
	movl	-52(%rbp), %edx
	callq	gimp_preview_untransform
	movl	-100(%rbp), %edi
	movl	-104(%rbp), %esi
	movq	-32(%rbp), %rdx
	movl	-44(%rbp), %ecx
	movq	-64(%rbp), %r8
	callq	lens_distort_func
	movl	-44(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movslq	%ecx, %r8
	addq	%r8, %rdx
	movq	%rdx, -32(%rbp)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB5_3
.LBB5_6:                                # %for.end
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_7
.LBB5_7:                                # %for.inc.10
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB5_1
.LBB5_8:                                # %for.end.12
	movq	-64(%rbp), %rdi
	callq	gimp_pixel_fetcher_destroy
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-36(%rbp), %eax
	imull	-44(%rbp), %eax
	movl	%eax, %edx
	callq	gimp_preview_draw_buffer
	movq	-24(%rbp), %rdi
	callq	g_free
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	lens_distort_preview, .Lfunc_end5-lens_distort_preview
	.cfi_endproc

	.align	16, 0x90
	.type	lens_response,@function
lens_response:                          # @lens_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp28:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-12(%rbp), %esi
	movl	%esi, %eax
	subl	$-5, %eax
	movl	%esi, -28(%rbp)         # 4-byte Spill
	movl	%eax, -32(%rbp)         # 4-byte Spill
	je	.LBB6_2
	jmp	.LBB6_5
.LBB6_5:                                # %entry
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jne	.LBB6_3
	jmp	.LBB6_1
.LBB6_1:                                # %sw.bb
	callq	lens_dialog_reset
	jmp	.LBB6_4
.LBB6_2:                                # %sw.bb.1
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
.LBB6_3:                                # %sw.default
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_destroy
.LBB6_4:                                # %sw.epilog
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	lens_response, .Lfunc_end6-lens_response
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4621819117588971520     # double 10
.LCPI7_1:
	.quad	4611686018427387904     # double 2
.LCPI7_2:
	.quad	4636737291354636288     # double 100
.LCPI7_3:
	.quad	4641240890982006784     # double 200
.LCPI7_4:
	.quad	4616189618054758400     # double 4
	.text
	.align	16, 0x90
	.type	lens_setup_calc,@function
lens_setup_calc:                        # @lens_setup_calc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movsd	.LCPI7_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI7_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI7_3, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI7_4, %xmm3         # xmm3 = mem[0],zero
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %esi
	imull	-4(%rbp), %esi
	movl	-8(%rbp), %edi
	imull	-8(%rbp), %edi
	addl	%edi, %esi
	cvtsi2sdl	%esi, %xmm4
	divsd	%xmm4, %xmm3
	movsd	%xmm3, calc_vals
	cvtsi2sdl	-4(%rbp), %xmm3
	movaps	%xmm1, %xmm4
	addsd	vals, %xmm4
	mulsd	%xmm4, %xmm3
	divsd	%xmm2, %xmm3
	movsd	%xmm3, calc_vals+8
	cvtsi2sdl	-8(%rbp), %xmm3
	movaps	%xmm1, %xmm4
	addsd	vals+8, %xmm4
	mulsd	%xmm4, %xmm3
	divsd	%xmm2, %xmm3
	movsd	%xmm3, calc_vals+16
	movsd	vals+16, %xmm3          # xmm3 = mem[0],zero
	divsd	%xmm2, %xmm3
	movsd	%xmm3, calc_vals+24
	movsd	vals+24, %xmm3          # xmm3 = mem[0],zero
	divsd	%xmm2, %xmm3
	movsd	%xmm3, calc_vals+32
	movsd	vals+32, %xmm2          # xmm2 = mem[0],zero
	movd	%xmm2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm2
	divsd	%xmm1, %xmm2
	movaps	%xmm2, %xmm1
	callq	pow
	movsd	.LCPI7_0, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, calc_vals+40
	movsd	vals+40, %xmm0          # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, calc_vals+48
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	lens_setup_calc, .Lfunc_end7-lens_setup_calc
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	lens_distort_func,@function
lens_distort_func:                      # @lens_distort_func
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	leaq	-40(%rbp), %rax
	leaq	-48(%rbp), %r9
	leaq	-56(%rbp), %r10
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	cvtsi2sdl	-4(%rbp), %xmm0
	cvtsi2sdl	-8(%rbp), %xmm1
	movq	%rax, %rdi
	movq	%r9, %rsi
	movq	%r10, %rdx
	callq	lens_get_source_coords
	leaq	-128(%rbp), %rax
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	calc_vals+48, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	floor
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -156(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-156(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -144(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -160(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-160(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -152(%rbp)
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, -136(%rbp)
	movl	-160(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -168(%rbp)
.LBB8_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_3 Depth 2
                                        #       Child Loop BB8_10 Depth 3
	movl	-168(%rbp), %eax
	movl	-160(%rbp), %ecx
	addl	$2, %ecx
	cmpl	%ecx, %eax
	jg	.LBB8_18
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-156(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -164(%rbp)
.LBB8_3:                                # %for.cond.12
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_10 Depth 3
	movl	-164(%rbp), %eax
	movl	-156(%rbp), %ecx
	addl	$2, %ecx
	cmpl	%ecx, %eax
	jg	.LBB8_16
# BB#4:                                 # %for.body.16
                                        #   in Loop: Header=BB8_3 Depth=2
	cmpl	$0, -164(%rbp)
	jl	.LBB8_9
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB8_3 Depth=2
	cmpl	$0, -168(%rbp)
	jl	.LBB8_9
# BB#6:                                 # %land.lhs.true.21
                                        #   in Loop: Header=BB8_3 Depth=2
	movl	-164(%rbp), %eax
	cmpl	drawable_width, %eax
	jge	.LBB8_9
# BB#7:                                 # %land.lhs.true.24
                                        #   in Loop: Header=BB8_3 Depth=2
	movl	-168(%rbp), %eax
	cmpl	drawable_height, %eax
	jge	.LBB8_9
# BB#8:                                 # %if.then
                                        #   in Loop: Header=BB8_3 Depth=2
	movq	-32(%rbp), %rdi
	movl	-164(%rbp), %esi
	movl	-168(%rbp), %edx
	movq	-136(%rbp), %rcx
	callq	gimp_pixel_fetcher_get_pixel
	jmp	.LBB8_14
.LBB8_9:                                # %if.else
                                        #   in Loop: Header=BB8_3 Depth=2
	movl	$0, -172(%rbp)
.LBB8_10:                               # %for.cond.27
                                        #   Parent Loop BB8_1 Depth=1
                                        #     Parent Loop BB8_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-172(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB8_13
# BB#11:                                # %for.body.30
                                        #   in Loop: Header=BB8_10 Depth=3
	movslq	-172(%rbp), %rax
	movb	background_color(,%rax), %cl
	movslq	-172(%rbp), %rax
	movq	-136(%rbp), %rdx
	movb	%cl, (%rdx,%rax)
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB8_10 Depth=3
	movl	-172(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -172(%rbp)
	jmp	.LBB8_10
.LBB8_13:                               # %for.end
                                        #   in Loop: Header=BB8_3 Depth=2
	jmp	.LBB8_14
.LBB8_14:                               # %if.end
                                        #   in Loop: Header=BB8_3 Depth=2
	movl	-20(%rbp), %eax
	movq	-136(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -136(%rbp)
# BB#15:                                # %for.inc.33
                                        #   in Loop: Header=BB8_3 Depth=2
	movl	-164(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -164(%rbp)
	jmp	.LBB8_3
.LBB8_16:                               # %for.end.35
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_17
.LBB8_17:                               # %for.inc.36
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-168(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -168(%rbp)
	jmp	.LBB8_1
.LBB8_18:                               # %for.end.38
	leaq	-128(%rbp), %rdi
	movl	-20(%rbp), %eax
	shll	$2, %eax
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rcx
	movl	-20(%rbp), %r8d
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	movl	%eax, %esi
	callq	lens_cubic_interpolate
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	lens_distort_func, .Lfunc_end8-lens_distort_func
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	lens_get_source_coords,@function
lens_get_source_coords:                 # @lens_get_source_coords
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp37:
	.cfi_def_cfa_register %rbp
	movsd	.LCPI9_0, %xmm2         # xmm2 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	subsd	calc_vals+8, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	calc_vals+16, %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-56(%rbp), %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-64(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	calc_vals, %xmm0        # xmm0 = mem[0],zero
	mulsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	calc_vals+24, %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-48(%rbp), %xmm1
	mulsd	calc_vals+32, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rdx
	movsd	%xmm0, (%rdx)
	movsd	calc_vals+40, %xmm0     # xmm0 = mem[0],zero
	addsd	-72(%rbp), %xmm2
	mulsd	%xmm2, %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	calc_vals+8, %xmm0      # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-56(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-24(%rbp), %rdx
	movsd	%xmm0, (%rdx)
	movsd	calc_vals+16, %xmm0     # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-64(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-32(%rbp), %rdx
	movsd	%xmm0, (%rdx)
	popq	%rbp
	retq
.Lfunc_end9:
	.size	lens_get_source_coords, .Lfunc_end9-lens_get_source_coords
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4602678819172646912     # double 0.5
.LCPI10_1:
	.quad	4611686018427387904     # double 2
.LCPI10_2:
	.quad	-4613937818241073152    # double -1.5
.LCPI10_3:
	.quad	4607182418800017408     # double 1
.LCPI10_4:
	.quad	4612811918334230528     # double 2.5
.LCPI10_5:
	.quad	4609434218613702656     # double 1.5
.LCPI10_6:
	.quad	-4620693217682128896    # double -0.5
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI10_7:
	.long	1132396544              # float 255
	.text
	.align	16, 0x90
	.type	lens_cubic_interpolate,@function
lens_cubic_interpolate:                 # @lens_cubic_interpolate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp40:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movsd	.LCPI10_0, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI10_1, %xmm4        # xmm4 = mem[0],zero
	movsd	.LCPI10_2, %xmm5        # xmm5 = mem[0],zero
	movsd	.LCPI10_3, %xmm6        # xmm6 = mem[0],zero
	movsd	.LCPI10_4, %xmm7        # xmm7 = mem[0],zero
	movsd	.LCPI10_5, %xmm8        # xmm8 = mem[0],zero
	movsd	.LCPI10_6, %xmm9        # xmm9 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm1, -48(%rbp)
	movsd	%xmm2, -56(%rbp)
	movaps	%xmm9, %xmm0
	mulsd	-40(%rbp), %xmm0
	addsd	%xmm6, %xmm0
	mulsd	-40(%rbp), %xmm0
	subsd	%xmm3, %xmm0
	mulsd	-40(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -60(%rbp)
	movaps	%xmm8, %xmm0
	mulsd	-40(%rbp), %xmm0
	subsd	%xmm7, %xmm0
	mulsd	-40(%rbp), %xmm0
	mulsd	-40(%rbp), %xmm0
	addsd	%xmm6, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -64(%rbp)
	movaps	%xmm5, %xmm0
	mulsd	-40(%rbp), %xmm0
	addsd	%xmm4, %xmm0
	mulsd	-40(%rbp), %xmm0
	addsd	%xmm3, %xmm0
	mulsd	-40(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -68(%rbp)
	movaps	%xmm3, %xmm0
	mulsd	-40(%rbp), %xmm0
	subsd	%xmm3, %xmm0
	mulsd	-40(%rbp), %xmm0
	mulsd	-40(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -72(%rbp)
	mulsd	-48(%rbp), %xmm9
	addsd	%xmm6, %xmm9
	mulsd	-48(%rbp), %xmm9
	subsd	%xmm3, %xmm9
	mulsd	-48(%rbp), %xmm9
	cvtsd2ss	%xmm9, %xmm0
	movss	%xmm0, -76(%rbp)
	mulsd	-48(%rbp), %xmm8
	subsd	%xmm7, %xmm8
	mulsd	-48(%rbp), %xmm8
	mulsd	-48(%rbp), %xmm8
	addsd	%xmm6, %xmm8
	cvtsd2ss	%xmm8, %xmm0
	movss	%xmm0, -80(%rbp)
	mulsd	-48(%rbp), %xmm5
	addsd	%xmm4, %xmm5
	mulsd	-48(%rbp), %xmm5
	addsd	%xmm3, %xmm5
	mulsd	-48(%rbp), %xmm5
	cvtsd2ss	%xmm5, %xmm0
	movss	%xmm0, -84(%rbp)
	movaps	%xmm3, %xmm0
	mulsd	-48(%rbp), %xmm0
	subsd	%xmm3, %xmm0
	mulsd	-48(%rbp), %xmm0
	mulsd	-48(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -88(%rbp)
	movl	$0, -92(%rbp)
.LBB10_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-92(%rbp), %eax
	movl	-16(%rbp), %ecx
	shll	$2, %ecx
	cmpl	%ecx, %eax
	jge	.LBB10_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movss	-76(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movslq	-92(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2ssl	%edx, %xmm1
	mulss	%xmm1, %xmm0
	movss	-80(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movl	-92(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2ssl	%edx, %xmm2
	mulss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	movss	-84(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movl	-92(%rbp), %edx
	movl	-12(%rbp), %esi
	shll	$1, %esi
	addl	%esi, %edx
	movslq	%edx, %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2ssl	%edx, %xmm2
	mulss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	movss	-88(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movl	-92(%rbp), %edx
	imull	$3, -12(%rbp), %esi
	addl	%esi, %edx
	movslq	%edx, %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2ssl	%edx, %xmm2
	mulss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	movslq	-92(%rbp), %rax
	movss	%xmm0, -160(%rbp,%rax,4)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB10_1
.LBB10_4:                               # %for.end
	movl	$0, -92(%rbp)
.LBB10_5:                               # %for.cond.73
                                        # =>This Inner Loop Header: Depth=1
	movl	-92(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB10_14
# BB#6:                                 # %for.body.76
                                        #   in Loop: Header=BB10_5 Depth=1
	movss	.LCPI10_7, %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	-60(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movslq	-92(%rbp), %rax
	mulss	-160(%rbp,%rax,4), %xmm1
	movss	-64(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	movl	-92(%rbp), %ecx
	addl	-16(%rbp), %ecx
	movslq	%ecx, %rax
	mulss	-160(%rbp,%rax,4), %xmm2
	addss	%xmm2, %xmm1
	movss	-68(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	movl	-92(%rbp), %ecx
	movl	-16(%rbp), %edx
	shll	$1, %edx
	addl	%edx, %ecx
	movslq	%ecx, %rax
	mulss	-160(%rbp,%rax,4), %xmm2
	addss	%xmm2, %xmm1
	movss	-72(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	movl	-92(%rbp), %ecx
	imull	$3, -16(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rax
	mulss	-160(%rbp,%rax,4), %xmm2
	addss	%xmm2, %xmm1
	movss	%xmm1, -164(%rbp)
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	cvtss2sd	-164(%rbp), %xmm2
	mulsd	%xmm1, %xmm2
	cvtsd2ss	%xmm2, %xmm1
	movss	%xmm1, -164(%rbp)
	movss	-164(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB10_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB10_5 Depth=1
	movss	.LCPI10_7, %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -168(%rbp)       # 4-byte Spill
	jmp	.LBB10_12
.LBB10_8:                               # %cond.false
                                        #   in Loop: Header=BB10_5 Depth=1
	xorps	%xmm0, %xmm0
	ucomiss	-164(%rbp), %xmm0
	jbe	.LBB10_10
# BB#9:                                 # %cond.true.104
                                        #   in Loop: Header=BB10_5 Depth=1
	xorps	%xmm0, %xmm0
	movss	%xmm0, -172(%rbp)       # 4-byte Spill
	jmp	.LBB10_11
.LBB10_10:                              # %cond.false.105
                                        #   in Loop: Header=BB10_5 Depth=1
	movss	-164(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -172(%rbp)       # 4-byte Spill
.LBB10_11:                              # %cond.end
                                        #   in Loop: Header=BB10_5 Depth=1
	movss	-172(%rbp), %xmm0       # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -168(%rbp)       # 4-byte Spill
.LBB10_12:                              # %cond.end.106
                                        #   in Loop: Header=BB10_5 Depth=1
	movss	-168(%rbp), %xmm0       # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movslq	-92(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#13:                                # %for.inc.111
                                        #   in Loop: Header=BB10_5 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB10_5
.LBB10_14:                              # %for.end.113
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	lens_cubic_interpolate, .Lfunc_end10-lens_cubic_interpolate
	.cfi_endproc

	.align	16, 0x90
	.type	lens_dialog_reset,@function
lens_dialog_reset:                      # @lens_dialog_reset
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
	subq	$16, %rsp
	movq	adjustments, %rax
	movq	%rax, -8(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB11_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB11_1
.LBB11_4:                               # %for.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	lens_dialog_reset, .Lfunc_end11-lens_dialog_reset
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
	.data
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
	.asciz	"offset-x"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Effect centre offset in X"
	.size	.L.str.7, 26

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"offset-y"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Effect centre offset in Y"
	.size	.L.str.9, 26

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"main-adjust"
	.size	.L.str.10, 12

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Amount of second-order distortion"
	.size	.L.str.11, 34

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"edge-adjust"
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Amount of fourth-order distortion"
	.size	.L.str.13, 34

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"rescale"
	.size	.L.str.14, 8

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Rescale overall image size"
	.size	.L.str.15, 27

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"brighten"
	.size	.L.str.16, 9

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Adjust brightness in corners"
	.size	.L.str.17, 29

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"plug-in-lens-distortion"
	.size	.L.str.18, 24

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Corrects lens distortion"
	.size	.L.str.19, 25

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Corrects barrel or pincushion lens distortion."
	.size	.L.str.20, 47

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"David Hodson, Aurimas Ju\305\241ka"
	.size	.L.str.21, 29

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"David Hodson"
	.size	.L.str.22, 13

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Version 1.0.10"
	.size	.L.str.23, 15

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Lens Distortion..."
	.size	.L.str.24, 19

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.25, 12

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"<Image>/Filters/Distorts"
	.size	.L.str.26, 25

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.27, 20

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"UTF-8"
	.size	.L.str.28, 6

	.type	drawable_width,@object  # @drawable_width
	.local	drawable_width
	.comm	drawable_width,4,4
	.type	drawable_height,@object # @drawable_height
	.local	drawable_height
	.comm	drawable_height,4,4
	.type	background_color,@object # @background_color
	.local	background_color
	.comm	background_color,4,1
	.type	vals,@object            # @vals
	.local	vals
	.comm	vals,48,8
	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"lens-distortion"
	.size	.L.str.29, 16

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Lens Distortion"
	.size	.L.str.30, 16

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gimp-lens-distortion"
	.size	.L.str.31, 21

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"gimp-reset"
	.size	.L.str.32, 11

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"gtk-cancel"
	.size	.L.str.33, 11

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"gtk-ok"
	.size	.L.str.34, 7

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"invalidated"
	.size	.L.str.35, 12

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"_Main:"
	.size	.L.str.36, 7

	.type	adjustments,@object     # @adjustments
	.local	adjustments
	.comm	adjustments,8,8
	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"value-changed"
	.size	.L.str.37, 14

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"_Edge:"
	.size	.L.str.38, 7

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"_Zoom:"
	.size	.L.str.39, 7

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"_Brighten:"
	.size	.L.str.40, 11

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"_X shift:"
	.size	.L.str.41, 10

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"_Y shift:"
	.size	.L.str.42, 10

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"response"
	.size	.L.str.43, 9

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"destroy"
	.size	.L.str.44, 8

	.type	calc_vals,@object       # @calc_vals
	.local	calc_vals
	.comm	calc_vals,56,8
	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Lens distortion"
	.size	.L.str.45, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
