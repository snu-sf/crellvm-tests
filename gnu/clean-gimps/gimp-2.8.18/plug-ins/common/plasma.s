	.text
	.file	"plasma.bc"
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
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.12, %rdx
	movabsq	$.L.str.13, %rcx
	movabsq	$.L.str.14, %r8
	movabsq	$.L.str.15, %r9
	movabsq	$.L.str.16, %rax
	movabsq	$.L.str.17, %r10
	movl	$1, %r11d
	movl	$5, %ebx
	xorl	%r14d, %r14d
	movabsq	$query.args, %r15
	xorl	%r12d, %r12d
	movl	%r12d, %r13d
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$5, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r13, -48(%rbp)         # 8-byte Spill
	movl	%r11d, -52(%rbp)        # 4-byte Spill
	movl	%r14d, -56(%rbp)        # 4-byte Spill
	movl	%ebx, -60(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.18, %rsi
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
	movl	$3, -56(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -52(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.19, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.19, %rdi
	movabsq	$.L.str.20, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.19, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -80(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
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
	je	.LBB1_12
	jmp	.LBB1_15
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.10, %rdi
	movabsq	$pvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-48(%rbp), %rdi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	plasma_dialog
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
	jmp	.LBB1_28
.LBB1_5:                                # %if.end
	jmp	.LBB1_16
.LBB1_6:                                # %sw.bb.9
	cmpl	$5, -12(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then.10
	movl	$1, -56(%rbp)
	jmp	.LBB1_11
.LBB1_8:                                # %if.else
	xorps	%xmm0, %xmm0
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, pvals
	movq	-24(%rbp), %rax
	movsd	168(%rax), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, pvals+8
	ucomisd	pvals+8, %xmm0
	jb	.LBB1_10
# BB#9:                                 # %if.then.17
	movl	$1, -56(%rbp)
.LBB1_10:                               # %if.end.18
	jmp	.LBB1_11
.LBB1_11:                               # %if.end.19
	jmp	.LBB1_16
.LBB1_12:                               # %sw.bb.20
	movabsq	$.L.str.10, %rdi
	movabsq	$pvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	cmpl	$0, pvals+16
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB1_14
# BB#13:                                # %if.then.23
	callq	g_random_int
	movl	%eax, pvals
.LBB1_14:                               # %if.end.25
	jmp	.LBB1_16
.LBB1_15:                               # %sw.default
	jmp	.LBB1_16
.LBB1_16:                               # %sw.epilog
	cmpl	$3, -56(%rbp)
	jne	.LBB1_27
# BB#17:                                # %if.then.27
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
	je	.LBB1_25
.LBB1_19:                               # %if.then.33
	movabsq	$.L.str.21, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	$32, %ecx
	movl	%ecx, %edi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	gimp_tile_cache_ntiles
	xorl	%esi, %esi
	movq	-48(%rbp), %rdi
	callq	plasma
	cmpl	$1, -52(%rbp)
	je	.LBB1_21
# BB#20:                                # %if.then.37
	callq	gimp_displays_flush
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB1_21:                               # %if.end.39
	cmpl	$0, -52(%rbp)
	je	.LBB1_23
# BB#22:                                # %lor.lhs.false.41
	cmpl	$2, -52(%rbp)
	jne	.LBB1_24
.LBB1_23:                               # %if.then.43
	movabsq	$.L.str.10, %rdi
	movabsq	$pvals, %rax
	movl	$24, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB1_24:                               # %if.end.45
	jmp	.LBB1_26
.LBB1_25:                               # %if.else.46
	movl	$0, -56(%rbp)
.LBB1_26:                               # %if.end.47
	jmp	.LBB1_27
.LBB1_27:                               # %if.end.48
	movl	-56(%rbp), %eax
	movl	%eax, run.values+8
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB1_28:                               # %return
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
	.quad	4619567317775286272     # double 7
.LCPI3_2:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI3_3:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	plasma_dialog,@function
plasma_dialog:                          # @plasma_dialog
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
	subq	$352, %rsp              # imm = 0x160
.Ltmp17:
	.cfi_offset %rbx, -32
.Ltmp18:
	.cfi_offset %r14, -24
	movabsq	$.L.str.22, %rax
	movl	$1, %esi
	movq	%rdi, -24(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	movabsq	$.L.str.21, %rdi
	callq	gettext
	movabsq	$.L.str.23, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.10, %r9
	movabsq	$.L.str.24, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.25, %r11
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
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rdi
	callq	gimp_aspect_preview_new
	movq	%rax, preview
	movq	-40(%rbp), %rax
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
	movabsq	$.L.str.26, %rsi
	movabsq	$plasma_seed_changed_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	preview, %rdi
	movq	-24(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movl	$2, %edi
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
	movabsq	$pvals, %rax
	movq	%rax, %rsi
	addq	$16, %rsi
	movq	%rax, %rdi
	callq	gimp_random_seed_new
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.27, %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movss	.LCPI3_3, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$2, %r9d
	movl	$1, %edx
	movq	-64(%rbp), %r8
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%edx, -204(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %edx
	movl	%edx, %esi
	movq	-64(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.28, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_label_set_mnemonic_widget
	movl	$80, %edx
	movl	%edx, %esi
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.28, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_adjustment
	movabsq	$.L.str.29, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movl	$2, %r9d
	movq	preview, %rdi
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-240(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.30, %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	$1, %edx
	movl	$48, %r8d
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm1, %xmm1
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movsd	pvals+8, %xmm3          # xmm3 = mem[0],zero
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-280(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -288(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-288(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-288(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.29, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$pvals, %rdi
	addq	$8, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-296(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.29, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdx
	movq	preview, %rdi
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-304(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-32(%rbp), %rdi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
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
	addq	$352, %rsp              # imm = 0x160
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	plasma_dialog, .Lfunc_end3-plasma_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	plasma,@function
plasma:                                 # @plasma
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	callq	g_rand_new
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-40(%rbp), %rdx
	callq	init_plasma
	movq	%rax, -24(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.LBB4_3
# BB#1:                                 # %land.lhs.true
	cmpq	$0, -24(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_12
.LBB4_3:                                # %if.end
	movl	ix1, %eax
	cmpl	ix2, %eax
	je	.LBB4_11
# BB#4:                                 # %land.lhs.true.3
	movl	iy1, %eax
	cmpl	iy2, %eax
	je	.LBB4_11
# BB#5:                                 # %if.then.5
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	xorl	%eax, %eax
	movq	-24(%rbp), %rdi
	movl	ix1, %esi
	movl	iy1, %edx
	movl	ix2, %ecx
	subl	$1, %ecx
	movl	iy2, %r8d
	subl	$1, %r8d
	movq	-40(%rbp), %r10
	movl	$0, (%rsp)
	movq	%r10, 8(%rsp)
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	do_plasma
	movl	$1, -28(%rbp)
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB4_6:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movq	-24(%rbp), %rdi
	movl	ix1, %esi
	movl	iy1, %edx
	movl	ix2, %ecx
	subl	$1, %ecx
	movl	iy2, %r8d
	subl	$1, %r8d
	movl	-28(%rbp), %r9d
	movq	-40(%rbp), %r10
	movl	$0, (%rsp)
	movq	%r10, 8(%rsp)
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	do_plasma
	cmpl	$0, %eax
	setne	%r11b
	xorb	$-1, %r11b
	testb	$1, %r11b
	jne	.LBB4_7
	jmp	.LBB4_8
.LBB4_7:                                # %while.body
                                        #   in Loop: Header=BB4_6 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB4_6
.LBB4_8:                                # %while.end
	cmpq	$0, -24(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.13
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB4_10:                               # %if.end.15
	jmp	.LBB4_11
.LBB4_11:                               # %if.end.16
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	end_plasma
.LBB4_12:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	plasma, .Lfunc_end4-plasma
	.cfi_endproc

	.align	16, 0x90
	.type	plasma_seed_changed_callback,@function
plasma_seed_changed_callback:           # @plasma_seed_changed_callback
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
	subq	$16, %rsp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	%eax, %esi
	callq	plasma
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	plasma_seed_changed_callback, .Lfunc_end5-plasma_seed_changed_callback
	.cfi_endproc

	.align	16, 0x90
	.type	init_plasma,@function
init_plasma:                            # @init_plasma
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdi
	movl	pvals, %esi
	callq	g_rand_set_seed
	cmpl	$0, -20(%rbp)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movl	$0, iy1
	movl	$0, ix1
	movq	preview, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$preview_width, %rsi
	movabsq	$preview_height, %rdx
	movq	%rax, %rdi
	callq	gimp_preview_get_size
	movl	$1, %ecx
	movl	%ecx, %esi
	movl	preview_width, %ecx
	movl	%ecx, ix2
	movl	preview_height, %ecx
	movl	%ecx, iy2
	movl	ix2, %ecx
	imull	iy2, %ecx
	movq	-16(%rbp), %rax
	imull	12(%rax), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edi
	callq	g_malloc_n
	movq	%rax, preview_buffer
	movq	$0, -40(%rbp)
	jmp	.LBB6_6
.LBB6_2:                                # %if.else
	movabsq	$ix1, %rsi
	movabsq	$iy1, %rdx
	movabsq	$ix2, %rcx
	movabsq	$iy2, %r8
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	je	.LBB6_4
# BB#3:                                 # %if.then.6
	movl	$1, %esi
	movl	ix1, %eax
	addl	ix2, %eax
	movl	%eax, ix2
	movl	iy1, %eax
	addl	iy2, %eax
	movl	%eax, iy2
	movq	-16(%rbp), %rdi
	callq	gimp_pixel_fetcher_new
	movq	%rax, -40(%rbp)
	jmp	.LBB6_5
.LBB6_4:                                # %if.else.9
	movq	$0, -8(%rbp)
	jmp	.LBB6_10
.LBB6_5:                                # %if.end
	jmp	.LBB6_6
.LBB6_6:                                # %if.end.10
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, bpp
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	movl	%eax, has_alpha
	cmpl	$0, has_alpha
	je	.LBB6_8
# BB#7:                                 # %cond.true
	movl	bpp, %eax
	subl	$1, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB6_9
.LBB6_8:                                # %cond.false
	movl	bpp, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB6_9:                                # %cond.end
	movl	-52(%rbp), %eax         # 4-byte Reload
	movl	%eax, alpha
	movq	$0, progress
	movl	ix2, %eax
	subl	ix1, %eax
	movl	iy2, %ecx
	subl	iy1, %ecx
	imull	%ecx, %eax
	movslq	%eax, %rdx
	movq	%rdx, max_progress
	movq	-40(%rbp), %rdx
	movq	%rdx, -8(%rbp)
.LBB6_10:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	init_plasma, .Lfunc_end6-init_plasma
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4643211215818981376     # double 256
.LCPI7_1:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	do_plasma,@function
do_plasma:                              # @do_plasma
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
	subq	$144, %rsp
	movq	24(%rbp), %rax
	movl	16(%rbp), %r10d
	movl	$2, %r11d
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movl	%r10d, -40(%rbp)
	movq	%rax, -48(%rbp)
	movl	-20(%rbp), %ecx
	addl	-28(%rbp), %ecx
	movl	%ecx, %eax
	cltd
	idivl	%r11d
	movl	%eax, -92(%rbp)
	movl	-24(%rbp), %eax
	addl	-32(%rbp), %eax
	cltd
	idivl	%r11d
	movl	%eax, -96(%rbp)
	cmpl	$-1, -36(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	leaq	-52(%rbp), %rsi
	movq	-48(%rbp), %rdi
	callq	random_rgb
	leaq	-52(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	put_pixel
	leaq	-76(%rbp), %rsi
	movq	-48(%rbp), %rdi
	callq	random_rgb
	leaq	-76(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	put_pixel
	leaq	-60(%rbp), %rsi
	movq	-48(%rbp), %rdi
	callq	random_rgb
	leaq	-60(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-32(%rbp), %edx
	callq	put_pixel
	leaq	-84(%rbp), %rsi
	movq	-48(%rbp), %rdi
	callq	random_rgb
	leaq	-84(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	callq	put_pixel
	leaq	-68(%rbp), %rsi
	movq	-48(%rbp), %rdi
	callq	random_rgb
	leaq	-68(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movl	-92(%rbp), %esi
	movl	-96(%rbp), %edx
	callq	put_pixel
	leaq	-56(%rbp), %rsi
	movq	-48(%rbp), %rdi
	callq	random_rgb
	leaq	-56(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-96(%rbp), %edx
	callq	put_pixel
	leaq	-80(%rbp), %rsi
	movq	-48(%rbp), %rdi
	callq	random_rgb
	leaq	-80(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-96(%rbp), %edx
	callq	put_pixel
	leaq	-64(%rbp), %rsi
	movq	-48(%rbp), %rdi
	callq	random_rgb
	leaq	-64(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movl	-92(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	put_pixel
	leaq	-72(%rbp), %rsi
	movq	-48(%rbp), %rdi
	callq	random_rgb
	leaq	-72(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movl	-92(%rbp), %esi
	movl	-32(%rbp), %edx
	callq	put_pixel
	movl	$0, -4(%rbp)
	jmp	.LBB7_32
.LBB7_2:                                # %if.end
	cmpl	$0, -36(%rbp)
	jne	.LBB7_28
# BB#3:                                 # %if.then.23
	movl	-20(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jne	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movl	-24(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jne	.LBB7_6
# BB#5:                                 # %if.then.27
	movl	$0, -4(%rbp)
	jmp	.LBB7_32
.LBB7_6:                                # %if.end.28
	leaq	-52(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	get_pixel
	leaq	-60(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-32(%rbp), %edx
	callq	get_pixel
	leaq	-76(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	get_pixel
	leaq	-84(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	callq	get_pixel
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI7_1, %xmm1         # xmm1 = mem[0],zero
	cvtsi2sdl	-40(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	divsd	%xmm1, %xmm0
	mulsd	pvals+8, %xmm0
	cvttsd2si	%xmm0, %edx
	movl	%edx, -100(%rbp)
	movl	-92(%rbp), %edx
	cmpl	-20(%rbp), %edx
	jne	.LBB7_8
# BB#7:                                 # %lor.lhs.false
	movl	-92(%rbp), %eax
	cmpl	-28(%rbp), %eax
	je	.LBB7_11
.LBB7_8:                                # %if.then.40
	leaq	-60(%rbp), %rdx
	leaq	-52(%rbp), %rsi
	leaq	-56(%rbp), %rdi
	movl	bpp, %ecx
	callq	average_pixel
	leaq	-56(%rbp), %rsi
	movq	-48(%rbp), %rdi
	movl	-100(%rbp), %edx
	callq	add_random
	leaq	-56(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-96(%rbp), %edx
	callq	put_pixel
	movl	-20(%rbp), %edx
	cmpl	-28(%rbp), %edx
	je	.LBB7_10
# BB#9:                                 # %if.then.48
	leaq	-84(%rbp), %rdx
	leaq	-76(%rbp), %rsi
	leaq	-80(%rbp), %rdi
	movl	bpp, %ecx
	callq	average_pixel
	leaq	-80(%rbp), %rsi
	movq	-48(%rbp), %rdi
	movl	-100(%rbp), %edx
	callq	add_random
	leaq	-80(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-96(%rbp), %edx
	callq	put_pixel
.LBB7_10:                               # %if.end.54
	jmp	.LBB7_11
.LBB7_11:                               # %if.end.55
	movl	-96(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jne	.LBB7_13
# BB#12:                                # %lor.lhs.false.58
	movl	-96(%rbp), %eax
	cmpl	-32(%rbp), %eax
	je	.LBB7_19
.LBB7_13:                               # %if.then.61
	movl	-20(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jne	.LBB7_15
# BB#14:                                # %lor.lhs.false.64
	movl	-96(%rbp), %eax
	cmpl	-32(%rbp), %eax
	je	.LBB7_16
.LBB7_15:                               # %if.then.67
	leaq	-84(%rbp), %rdx
	leaq	-60(%rbp), %rsi
	leaq	-72(%rbp), %rdi
	movl	bpp, %ecx
	callq	average_pixel
	leaq	-72(%rbp), %rsi
	movq	-48(%rbp), %rdi
	movl	-100(%rbp), %edx
	callq	add_random
	leaq	-72(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movl	-92(%rbp), %esi
	movl	-32(%rbp), %edx
	callq	put_pixel
.LBB7_16:                               # %if.end.73
	movl	-24(%rbp), %eax
	cmpl	-32(%rbp), %eax
	je	.LBB7_18
# BB#17:                                # %if.then.76
	leaq	-76(%rbp), %rdx
	leaq	-52(%rbp), %rsi
	leaq	-64(%rbp), %rdi
	movl	bpp, %ecx
	callq	average_pixel
	leaq	-64(%rbp), %rsi
	movq	-48(%rbp), %rdi
	movl	-100(%rbp), %edx
	callq	add_random
	leaq	-64(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movl	-92(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	put_pixel
.LBB7_18:                               # %if.end.82
	jmp	.LBB7_19
.LBB7_19:                               # %if.end.83
	movl	-24(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jne	.LBB7_21
# BB#20:                                # %lor.lhs.false.86
	movl	-20(%rbp), %eax
	cmpl	-28(%rbp), %eax
	je	.LBB7_22
.LBB7_21:                               # %if.then.89
	leaq	-84(%rbp), %rdx
	leaq	-52(%rbp), %rsi
	leaq	-68(%rbp), %rdi
	movl	bpp, %ecx
	callq	average_pixel
	leaq	-76(%rbp), %rdx
	leaq	-60(%rbp), %rsi
	leaq	-88(%rbp), %rdi
	movl	bpp, %ecx
	callq	average_pixel
	leaq	-88(%rbp), %rdx
	leaq	-68(%rbp), %rsi
	movl	bpp, %ecx
	movq	%rsi, %rdi
	callq	average_pixel
	leaq	-68(%rbp), %rsi
	movq	-48(%rbp), %rdi
	movl	-100(%rbp), %edx
	callq	add_random
	leaq	-68(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movl	-92(%rbp), %esi
	movl	-96(%rbp), %edx
	callq	put_pixel
.LBB7_22:                               # %if.end.101
	movl	$2000, %eax             # imm = 0x7D0
	movl	do_plasma.count, %ecx
	addl	$1, %ecx
	movl	%ecx, do_plasma.count
	movl	do_plasma.count, %ecx
	movl	%eax, -104(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-104(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB7_25
# BB#23:                                # %land.lhs.true.102
	cmpq	$0, -16(%rbp)
	je	.LBB7_25
# BB#24:                                # %if.then.104
	cvtsi2sdq	progress, %xmm0
	cvtsi2sdq	max_progress, %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB7_25:                               # %if.end.108
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-28(%rbp), %eax
	subl	-20(%rbp), %eax
	cmpl	$3, %eax
	movb	%cl, -109(%rbp)         # 1-byte Spill
	jge	.LBB7_27
# BB#26:                                # %land.rhs
	movl	-32(%rbp), %eax
	subl	-24(%rbp), %eax
	cmpl	$3, %eax
	setl	%cl
	movb	%cl, -109(%rbp)         # 1-byte Spill
.LBB7_27:                               # %land.end
	movb	-109(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB7_32
.LBB7_28:                               # %if.end.114
	movl	-20(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.LBB7_30
# BB#29:                                # %lor.lhs.false.117
	movl	-24(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB7_31
.LBB7_30:                               # %if.then.120
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-92(%rbp), %ecx
	movl	-96(%rbp), %r8d
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movl	-40(%rbp), %r9d
	addl	$1, %r9d
	movq	-48(%rbp), %r10
	movl	%r9d, -116(%rbp)        # 4-byte Spill
	movl	%eax, %r9d
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movq	%r10, 8(%rsp)
	callq	do_plasma
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-96(%rbp), %edx
	movl	-92(%rbp), %ecx
	movl	-32(%rbp), %r8d
	movl	-36(%rbp), %r9d
	subl	$1, %r9d
	movl	-40(%rbp), %r11d
	addl	$1, %r11d
	movq	-48(%rbp), %r10
	movl	%r11d, (%rsp)
	movq	%r10, 8(%rsp)
	movl	%eax, -120(%rbp)        # 4-byte Spill
	callq	do_plasma
	movq	-16(%rbp), %rdi
	movl	-92(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	movl	-96(%rbp), %r8d
	movl	-36(%rbp), %r9d
	subl	$1, %r9d
	movl	-40(%rbp), %r11d
	addl	$1, %r11d
	movq	-48(%rbp), %r10
	movl	%r11d, (%rsp)
	movq	%r10, 8(%rsp)
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	do_plasma
	movq	-16(%rbp), %rdi
	movl	-92(%rbp), %esi
	movl	-96(%rbp), %edx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	movl	-36(%rbp), %r9d
	subl	$1, %r9d
	movl	-40(%rbp), %r11d
	addl	$1, %r11d
	movq	-48(%rbp), %r10
	movl	%r11d, (%rsp)
	movq	%r10, 8(%rsp)
	movl	%eax, -128(%rbp)        # 4-byte Spill
	callq	do_plasma
	movl	%eax, -4(%rbp)
	jmp	.LBB7_32
.LBB7_31:                               # %if.else
	movl	$1, -4(%rbp)
.LBB7_32:                               # %return
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	do_plasma, .Lfunc_end7-do_plasma
	.cfi_endproc

	.align	16, 0x90
	.type	end_plasma,@function
end_plasma:                             # @end_plasma
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gimp_pixel_fetcher_destroy
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	ix1, %esi
	movl	iy1, %edx
	movl	ix2, %r8d
	subl	ix1, %r8d
	movl	iy2, %r9d
	subl	iy1, %r9d
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jmp	.LBB8_3
.LBB8_2:                                # %if.else
	movq	preview, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_preview_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	preview_buffer, %rsi
	movl	preview_width, %ecx
	imull	bpp, %ecx
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gimp_preview_draw_buffer
	movq	preview_buffer, %rdi
	callq	g_free
.LBB8_3:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	g_rand_free
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	end_plasma, .Lfunc_end8-end_plasma
	.cfi_endproc

	.align	16, 0x90
	.type	random_rgb,@function
random_rgb:                             # @random_rgb
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	alpha, %eax
	jge	.LBB9_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	xorl	%esi, %esi
	movl	$256, %edx              # imm = 0x100
	movq	-8(%rbp), %rdi
	callq	g_rand_int_range
	movb	%al, %cl
	movslq	-20(%rbp), %rdi
	movq	-16(%rbp), %r8
	movb	%cl, (%r8,%rdi)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB9_1
.LBB9_4:                                # %for.end
	cmpl	$0, has_alpha
	je	.LBB9_6
# BB#5:                                 # %if.then
	movslq	alpha, %rax
	movq	-16(%rbp), %rcx
	movb	$-1, (%rcx,%rax)
.LBB9_6:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	random_rgb, .Lfunc_end9-random_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	put_pixel,@function
put_pixel:                              # @put_pixel
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB10_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movq	-24(%rbp), %rcx
	callq	gimp_pixel_fetcher_put_pixel
	movq	progress, %rcx
	addq	$1, %rcx
	movq	%rcx, progress
	jmp	.LBB10_3
.LBB10_2:                               # %if.else
	movq	preview_buffer, %rax
	movl	-16(%rbp), %ecx
	imull	preview_width, %ecx
	addl	-12(%rbp), %ecx
	imull	bpp, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	-24(%rbp), %rsi
	movslq	bpp, %rdx
	movq	%rax, %rdi
	callq	memcpy
.LBB10_3:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	put_pixel, .Lfunc_end10-put_pixel
	.cfi_endproc

	.align	16, 0x90
	.type	get_pixel,@function
get_pixel:                              # @get_pixel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movq	-24(%rbp), %rcx
	callq	gimp_pixel_fetcher_get_pixel
	jmp	.LBB11_3
.LBB11_2:                               # %if.else
	movq	-24(%rbp), %rdi
	movq	preview_buffer, %rax
	movl	-16(%rbp), %ecx
	imull	preview_width, %ecx
	addl	-12(%rbp), %ecx
	imull	bpp, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movslq	bpp, %rdx
	movq	%rax, %rsi
	callq	memcpy
.LBB11_3:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	get_pixel, .Lfunc_end11-get_pixel
	.cfi_endproc

	.align	16, 0x90
	.type	average_pixel,@function
average_pixel:                          # @average_pixel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -28(%rbp)
	je	.LBB12_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	$2, %eax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -16(%rbp)
	movzbl	(%rcx), %esi
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movzbl	(%rcx), %edi
	addl	%edi, %esi
	movl	%eax, -32(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-32(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movb	%al, %r8b
	movq	-8(%rbp), %rcx
	movq	%rcx, %r9
	addq	$1, %r9
	movq	%r9, -8(%rbp)
	movb	%r8b, (%rcx)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB12_1
.LBB12_4:                               # %for.end
	popq	%rbp
	retq
.Lfunc_end12:
	.size	average_pixel, .Lfunc_end12-average_pixel
	.cfi_endproc

	.align	16, 0x90
	.type	add_random,@function
add_random:                             # @add_random
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$2, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %edx
	movl	%eax, -32(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-32(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.LBB13_12
# BB#1:                                 # %if.then
	movl	$0, -24(%rbp)
.LBB13_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	alpha, %eax
	jge	.LBB13_11
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB13_2 Depth=1
	xorl	%eax, %eax
	movslq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %esi
	movq	-8(%rbp), %rdi
	subl	-20(%rbp), %eax
	movl	-20(%rbp), %edx
	movl	%esi, -36(%rbp)         # 4-byte Spill
	movl	%eax, %esi
	callq	g_rand_int_range
	movl	-36(%rbp), %edx         # 4-byte Reload
	addl	%eax, %edx
	movl	%edx, -28(%rbp)
	cmpl	$255, -28(%rbp)
	jle	.LBB13_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB13_2 Depth=1
	movl	$255, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB13_9
.LBB13_5:                               # %cond.false
                                        #   in Loop: Header=BB13_2 Depth=1
	cmpl	$0, -28(%rbp)
	jge	.LBB13_7
# BB#6:                                 # %cond.true.6
                                        #   in Loop: Header=BB13_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB13_8
.LBB13_7:                               # %cond.false.7
                                        #   in Loop: Header=BB13_2 Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB13_8:                               # %cond.end
                                        #   in Loop: Header=BB13_2 Depth=1
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, -40(%rbp)         # 4-byte Spill
.LBB13_9:                               # %cond.end.8
                                        #   in Loop: Header=BB13_2 Depth=1
	movl	-40(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movslq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#10:                                # %for.inc
                                        #   in Loop: Header=BB13_2 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB13_2
.LBB13_11:                              # %for.end
	jmp	.LBB13_12
.LBB13_12:                              # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	add_random, .Lfunc_end13-add_random
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
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.9
	.size	query.args, 120

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
	.asciz	"seed"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Random seed"
	.size	.L.str.7, 12

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"turbulence"
	.size	.L.str.8, 11

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Turbulence of plasma"
	.size	.L.str.9, 21

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"plug-in-plasma"
	.size	.L.str.10, 15

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Create a random plasma texture"
	.size	.L.str.11, 31

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"More help"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Stephen Norris & (ported to 1.0 by) Eiichi Takamori"
	.size	.L.str.13, 52

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Stephen Norris"
	.size	.L.str.14, 15

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"May 2000"
	.size	.L.str.15, 9

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"_Plasma..."
	.size	.L.str.16, 11

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.17, 12

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"<Image>/Filters/Render/Clouds"
	.size	.L.str.18, 30

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.19, 20

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"UTF-8"
	.size	.L.str.20, 6

	.type	pvals,@object           # @pvals
	.data
	.align	8
pvals:
	.long	0                       # 0x0
	.zero	4
	.quad	4607182418800017408     # double 1
	.long	0                       # 0x0
	.zero	4
	.size	pvals, 24

	.type	.L.str.21,@object       # @.str.21
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.21:
	.asciz	"Plasma"
	.size	.L.str.21, 7

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"plasma"
	.size	.L.str.22, 7

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gimp-plasma"
	.size	.L.str.23, 12

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gtk-cancel"
	.size	.L.str.24, 11

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gtk-ok"
	.size	.L.str.25, 7

	.type	preview,@object         # @preview
	.local	preview
	.comm	preview,8,8
	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"invalidated"
	.size	.L.str.26, 12

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Random _seed:"
	.size	.L.str.27, 14

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"spinbutton"
	.size	.L.str.28, 11

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"value-changed"
	.size	.L.str.29, 14

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"T_urbulence:"
	.size	.L.str.30, 13

	.type	ix1,@object             # @ix1
	.local	ix1
	.comm	ix1,4,4
	.type	ix2,@object             # @ix2
	.local	ix2
	.comm	ix2,4,4
	.type	iy1,@object             # @iy1
	.local	iy1
	.comm	iy1,4,4
	.type	iy2,@object             # @iy2
	.local	iy2
	.comm	iy2,4,4
	.type	preview_width,@object   # @preview_width
	.local	preview_width
	.comm	preview_width,4,4
	.type	preview_height,@object  # @preview_height
	.local	preview_height
	.comm	preview_height,4,4
	.type	preview_buffer,@object  # @preview_buffer
	.local	preview_buffer
	.comm	preview_buffer,8,8
	.type	bpp,@object             # @bpp
	.local	bpp
	.comm	bpp,4,4
	.type	has_alpha,@object       # @has_alpha
	.local	has_alpha
	.comm	has_alpha,4,4
	.type	alpha,@object           # @alpha
	.local	alpha
	.comm	alpha,4,4
	.type	progress,@object        # @progress
	.local	progress
	.comm	progress,8,8
	.type	max_progress,@object    # @max_progress
	.local	max_progress
	.comm	max_progress,8,8
	.type	do_plasma.count,@object # @do_plasma.count
	.local	do_plasma.count
	.comm	do_plasma.count,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
