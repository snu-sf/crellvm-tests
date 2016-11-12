	.text
	.file	"noise-solid.bc"
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
	je	.LBB1_12
	jmp	.LBB1_15
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.18, %rdi
	movabsq	$snvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-48(%rbp), %rdi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	solid_noise_dialog
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	jmp	.LBB1_27
.LBB1_5:                                # %if.end
	jmp	.LBB1_16
.LBB1_6:                                # %sw.bb.9
	cmpl	$9, -12(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then.10
	movl	$1, -56(%rbp)
	jmp	.LBB1_11
.LBB1_8:                                # %if.else
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, snvals
	movq	-24(%rbp), %rax
	movl	168(%rax), %ecx
	movl	%ecx, snvals+4
	movq	-24(%rbp), %rax
	movl	208(%rax), %ecx
	movl	%ecx, snvals+8
	movq	-24(%rbp), %rax
	movl	248(%rax), %ecx
	movl	%ecx, snvals+12
	movq	-24(%rbp), %rax
	movsd	288(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, snvals+16
	movq	-24(%rbp), %rax
	movsd	328(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, snvals+24
	cmpl	$0, snvals+32
	je	.LBB1_10
# BB#9:                                 # %if.then.29
	callq	g_random_int
	movl	%eax, snvals+8
.LBB1_10:                               # %if.end.31
	jmp	.LBB1_11
.LBB1_11:                               # %if.end.32
	jmp	.LBB1_16
.LBB1_12:                               # %sw.bb.33
	movabsq	$.L.str.18, %rdi
	movabsq	$snvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	cmpl	$0, snvals+32
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB1_14
# BB#13:                                # %if.then.36
	callq	g_random_int
	movl	%eax, snvals+8
.LBB1_14:                               # %if.end.38
	jmp	.LBB1_16
.LBB1_15:                               # %sw.default
	jmp	.LBB1_16
.LBB1_16:                               # %sw.epilog
	cmpl	$3, -56(%rbp)
	jne	.LBB1_25
# BB#17:                                # %land.lhs.true
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
.LBB1_19:                               # %if.then.45
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	solid_noise
	cmpl	$1, -52(%rbp)
	je	.LBB1_21
# BB#20:                                # %if.then.47
	callq	gimp_displays_flush
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB1_21:                               # %if.end.49
	cmpl	$0, -52(%rbp)
	je	.LBB1_23
# BB#22:                                # %lor.lhs.false.51
	cmpl	$2, -52(%rbp)
	jne	.LBB1_24
.LBB1_23:                               # %if.then.53
	movabsq	$.L.str.18, %rdi
	movabsq	$snvals, %rax
	movl	$40, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB1_24:                               # %if.end.55
	jmp	.LBB1_26
.LBB1_25:                               # %if.else.56
	movl	$0, -56(%rbp)
.LBB1_26:                               # %if.end.57
	movl	-56(%rbp), %eax
	movl	%eax, run.values+8
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB1_27:                               # %return
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
	.quad	4625196817309499392     # double 16
.LCPI3_2:
	.quad	4607182418800017408     # double 1
.LCPI3_4:
	.quad	4624633867356078080     # double 15
.LCPI3_5:
	.quad	4613937818241073152     # double 3
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI3_3:
	.long	1056964608              # float 0.5
.LCPI3_6:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	solid_noise_dialog,@function
solid_noise_dialog:                     # @solid_noise_dialog
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
	subq	$648, %rsp              # imm = 0x288
.Ltmp17:
	.cfi_offset %rbx, -40
.Ltmp18:
	.cfi_offset %r14, -32
.Ltmp19:
	.cfi_offset %r15, -24
	movabsq	$.L.str.28, %rax
	xorl	%esi, %esi
	movq	%rdi, -32(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	movabsq	$.L.str.29, %rdi
	callq	gettext
	movabsq	$.L.str.30, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.18, %r9
	movabsq	$.L.str.31, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.32, %r11
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
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rdi
	callq	gimp_aspect_preview_new
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
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
	movabsq	$.L.str.33, %rsi
	movabsq	$solid_noise, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movl	$4, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_table_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-72(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-48(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -212(%rbp)        # 4-byte Spill
	movl	-212(%rbp), %ecx        # 4-byte Reload
	movl	-212(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$snvals, %rax
	movq	%rax, %rsi
	addq	$8, %rsi
	addq	$32, %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	gimp_random_seed_new
	movq	%rax, -88(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.34, %rdi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movss	.LCPI3_6, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI3_3, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-88(%rbp), %r8
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %edx
	movl	%edx, %esi
	movq	-88(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.35, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_label_set_mnemonic_widget
	movl	$80, %edx
	movl	%edx, %esi
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.35, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_adjustment
	movabsq	$.L.str.36, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movl	$2, %r9d
	movq	-56(%rbp), %rdi
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-264(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	leaq	-104(%rbp), %rdi
	movsd	.LCPI3_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_4, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_5, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	xorl	%esi, %esi
	cvtsi2sdl	snvals+12, %xmm1
	movsd	%xmm0, -272(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-272(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-272(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-272(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_spin_button_new
	movq	%rax, -96(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.37, %rdi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %r9d
	xorps	%xmm0, %xmm0
	movss	.LCPI3_3, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-96(%rbp), %r8
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %edx
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.36, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$snvals, %rdi
	addq	$12, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-104(%rbp), %r11
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rcx, %rdx
	movq	-304(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.36, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-104(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-320(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.38, %rdi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movl	$6, %r10d
	movl	$4, %ebx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	$6, (%rsp)
	movl	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%ebx, -348(%rbp)        # 4-byte Spill
	movl	%r10d, -352(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-64(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	snvals+4, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$snvals, %rdi
	addq	$4, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %r11
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-368(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-376(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.40, %rdi
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %r9d
	movl	$3, %ecx
	movl	$1, %r8d
	movl	$6, %r10d
	movl	$4, %ebx
	xorl	%r14d, %r14d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	$6, (%rsp)
	movl	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r14d, -404(%rbp)       # 4-byte Spill
	movl	%r10d, -408(%rbp)       # 4-byte Spill
	movl	%ebx, -412(%rbp)        # 4-byte Spill
	callq	gtk_table_attach
	movq	-64(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	snvals, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$snvals, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %r11
	movq	%rdi, -432(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-432(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-440(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -456(%rbp)        # 8-byte Spill
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.41, %rdi
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	$2, %edx
	movl	$128, %r8d
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %r10d
	xorps	%xmm1, %xmm1
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movsd	snvals+16, %xmm3        # xmm3 = mem[0],zero
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movq	%rcx, -480(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -488(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-488(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -496(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-496(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-496(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -500(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.36, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$snvals, %rdi
	addq	$16, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rdi, -512(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-512(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.36, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-104(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -520(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-520(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -536(%rbp)        # 8-byte Spill
	movq	%rcx, -544(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.42, %rdi
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	$3, %edx
	movl	$128, %r8d
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm4         # xmm4 = mem[0],zero
	movl	$1, %r10d
	xorps	%xmm1, %xmm1
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movsd	snvals+24, %xmm3        # xmm3 = mem[0],zero
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movq	%rcx, -560(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -568(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-568(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -576(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-576(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-576(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r10d, -580(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.36, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$snvals, %rdi
	addq	$24, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rdi, -592(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-592(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.36, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-104(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -600(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-600(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-40(%rbp), %rdi
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-40(%rbp), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r15b
	andb	$1, %r15b
	movzbl	%r15b, %eax
	movl	%eax, -108(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-108(%rbp), %eax
	addq	$648, %rsp              # imm = 0x288
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	solid_noise_dialog, .Lfunc_end3-solid_noise_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	solid_noise,@function
solid_noise:                            # @solid_noise
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	leaq	-80(%rbp), %rsi
	leaq	-84(%rbp), %rdx
	movl	$0, -72(%rbp)
	movl	$0, -76(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_preview_get_size
	jmp	.LBB4_5
.LBB4_2:                                # %if.else
	leaq	-72(%rbp), %rsi
	leaq	-76(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	leaq	-84(%rbp), %r8
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	jne	.LBB4_4
# BB#3:                                 # %if.then.2
	jmp	.LBB4_24
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %if.end.3
	callq	solid_noise_init
	cmpq	$0, -16(%rbp)
	jne	.LBB4_7
# BB#6:                                 # %if.then.5
	movabsq	$.L.str.29, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB4_7:                                # %if.end.8
	movl	$0, -88(%rbp)
	movl	-80(%rbp), %eax
	imull	-84(%rbp), %eax
	movl	%eax, -92(%rbp)
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_bpp
	movl	%eax, -68(%rbp)
	movl	-80(%rbp), %eax
	imull	-68(%rbp), %eax
	movl	%eax, -112(%rbp)
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_drawable_has_alpha
	movl	%eax, -108(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB4_9
# BB#8:                                 # %if.then.15
	movl	$1, %eax
	movl	%eax, %esi
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-112(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-112(%rbp), %eax
	imull	-84(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -64(%rbp)
	jmp	.LBB4_10
.LBB4_9:                                # %if.else.21
	leaq	-64(%rbp), %rdi
	movl	$1, %eax
	movq	-8(%rbp), %rsi
	movl	-72(%rbp), %edx
	movl	-76(%rbp), %ecx
	movl	-80(%rbp), %r8d
	movl	-84(%rbp), %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
.LBB4_10:                               # %if.end.22
	cmpl	$0, -108(%rbp)
	je	.LBB4_12
# BB#11:                                # %if.then.24
	movl	-68(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -68(%rbp)
.LBB4_12:                               # %if.end.25
	cmpq	$0, -16(%rbp)
	je	.LBB4_14
# BB#13:                                # %if.then.27
	leaq	-64(%rbp), %rdi
	cvtsi2sdl	-80(%rbp), %xmm0
	cvtsi2sdl	-84(%rbp), %xmm1
	movl	-72(%rbp), %esi
	movl	-76(%rbp), %edx
	movl	-68(%rbp), %ecx
	movl	-108(%rbp), %r8d
	callq	solid_noise_draw_one_tile
	jmp	.LBB4_21
.LBB4_14:                               # %if.else.30
	movl	$1, %edi
	leaq	-64(%rbp), %rsi
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -104(%rbp)
	movl	$0, -116(%rbp)
.LBB4_15:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -104(%rbp)
	je	.LBB4_20
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB4_15 Depth=1
	leaq	-64(%rbp), %rdi
	cvtsi2sdl	-80(%rbp), %xmm0
	cvtsi2sdl	-84(%rbp), %xmm1
	movl	-72(%rbp), %esi
	movl	-76(%rbp), %edx
	movl	-68(%rbp), %ecx
	movl	-108(%rbp), %r8d
	callq	solid_noise_draw_one_tile
	movl	$16, %ecx
	movl	-32(%rbp), %edx
	imull	-28(%rbp), %edx
	addl	-88(%rbp), %edx
	movl	%edx, -88(%rbp)
	movl	-116(%rbp), %eax
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB4_18
# BB#17:                                # %if.then.40
                                        #   in Loop: Header=BB4_15 Depth=1
	cvtsi2sdl	-88(%rbp), %xmm0
	cvtsi2sdl	-92(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB4_18:                               # %if.end.44
                                        #   in Loop: Header=BB4_15 Depth=1
	jmp	.LBB4_19
.LBB4_19:                               # %for.inc
                                        #   in Loop: Header=BB4_15 Depth=1
	movq	-104(%rbp), %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -104(%rbp)
	movl	-116(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -116(%rbp)
	jmp	.LBB4_15
.LBB4_20:                               # %for.end
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB4_21:                               # %if.end.47
	cmpq	$0, -16(%rbp)
	je	.LBB4_23
# BB#22:                                # %if.then.49
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	-112(%rbp), %edx
	callq	gimp_preview_draw_buffer
	movq	-64(%rbp), %rdi
	callq	g_free
	jmp	.LBB4_24
.LBB4_23:                               # %if.else.52
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-72(%rbp), %esi
	movl	-76(%rbp), %edx
	movl	-80(%rbp), %ecx
	movl	-84(%rbp), %r8d
	movl	%eax, -136(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB4_24:                               # %if.end.57
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	solid_noise, .Lfunc_end4-solid_noise
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4625196817309499392     # double 16
.LCPI5_1:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI5_2:
	.quad	4602913006353270178     # double 0.52600000000000002
.LCPI5_3:
	.quad	4606641986844732948     # double 0.93999999999999994
.LCPI5_4:
	.quad	4607182418800017408     # double 1
.LCPI5_5:
	.quad	-4616189618054758400    # double -1
	.text
	.align	16, 0x90
	.type	solid_noise_init,@function
solid_noise_init:                       # @solid_noise_init
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
	subq	$96, %rsp
	callq	g_rand_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movl	snvals+8, %esi
	callq	g_rand_set_seed
	cmpl	$15, snvals+12
	jle	.LBB5_2
# BB#1:                                 # %cond.true
	movl	$15, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB5_6
.LBB5_2:                                # %cond.false
	cmpl	$0, snvals+12
	jge	.LBB5_4
# BB#3:                                 # %cond.true.2
	xorl	%eax, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB5_5
.LBB5_4:                                # %cond.false.3
	movl	snvals+12, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
.LBB5_5:                                # %cond.end
	movl	-40(%rbp), %eax         # 4-byte Reload
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB5_6:                                # %cond.end.4
	movl	-36(%rbp), %eax         # 4-byte Reload
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movl	%eax, snvals+12
	movsd	snvals+16, %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB5_8
# BB#7:                                 # %cond.true.7
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	jmp	.LBB5_12
.LBB5_8:                                # %cond.false.8
	movsd	.LCPI5_1, %xmm0         # xmm0 = mem[0],zero
	ucomisd	snvals+16, %xmm0
	jbe	.LBB5_10
# BB#9:                                 # %cond.true.10
	movsd	.LCPI5_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	jmp	.LBB5_11
.LBB5_10:                               # %cond.false.11
	movsd	snvals+16, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
.LBB5_11:                               # %cond.end.12
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
.LBB5_12:                               # %cond.end.14
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, snvals+16
	movsd	snvals+24, %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB5_14
# BB#13:                                # %cond.true.17
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	jmp	.LBB5_18
.LBB5_14:                               # %cond.false.18
	movsd	.LCPI5_1, %xmm0         # xmm0 = mem[0],zero
	ucomisd	snvals+24, %xmm0
	jbe	.LBB5_16
# BB#15:                                # %cond.true.20
	movsd	.LCPI5_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB5_17
.LBB5_16:                               # %cond.false.21
	movsd	snvals+24, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
.LBB5_17:                               # %cond.end.22
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
.LBB5_18:                               # %cond.end.24
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, snvals+24
	cmpl	$0, snvals
	je	.LBB5_20
# BB#19:                                # %if.then
	movsd	snvals+16, %xmm0        # xmm0 = mem[0],zero
	callq	ceil
	movsd	%xmm0, xsize
	movsd	snvals+24, %xmm0        # xmm0 = mem[0],zero
	callq	ceil
	movsd	%xmm0, ysize
	cvttsd2si	xsize, %eax
	movl	%eax, xclip
	cvttsd2si	ysize, %eax
	movl	%eax, yclip
	jmp	.LBB5_21
.LBB5_20:                               # %if.else
	movsd	snvals+16, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, xsize
	movsd	snvals+24, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, ysize
.LBB5_21:                               # %if.end
	cmpl	$0, snvals+4
	je	.LBB5_23
# BB#22:                                # %if.then.30
	movsd	.LCPI5_4, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	%xmm1, offset
	movsd	%xmm0, factor
	jmp	.LBB5_24
.LBB5_23:                               # %if.else.31
	movsd	.LCPI5_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI5_3, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, offset
	movsd	%xmm0, factor
.LBB5_24:                               # %if.end.32
	movl	$0, -4(%rbp)
.LBB5_25:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$64, -4(%rbp)
	jge	.LBB5_28
# BB#26:                                # %for.body
                                        #   in Loop: Header=BB5_25 Depth=1
	movl	-4(%rbp), %eax
	movslq	-4(%rbp), %rcx
	movl	%eax, perm_tab(,%rcx,4)
# BB#27:                                # %for.inc
                                        #   in Loop: Header=BB5_25 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB5_25
.LBB5_28:                               # %for.end
	movl	$0, -4(%rbp)
.LBB5_29:                               # %for.cond.35
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$32, -4(%rbp)
	jge	.LBB5_32
# BB#30:                                # %for.body.38
                                        #   in Loop: Header=BB5_29 Depth=1
	xorl	%esi, %esi
	movl	$64, %edx
	movq	-32(%rbp), %rdi
	callq	g_rand_int_range
	xorl	%esi, %esi
	movl	$64, %edx
	movl	%eax, -8(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_rand_int_range
	movl	%eax, -12(%rbp)
	movslq	-8(%rbp), %rdi
	movl	perm_tab(,%rdi,4), %eax
	movl	%eax, -16(%rbp)
	movslq	-12(%rbp), %rdi
	movl	perm_tab(,%rdi,4), %eax
	movslq	-8(%rbp), %rdi
	movl	%eax, perm_tab(,%rdi,4)
	movl	-16(%rbp), %eax
	movslq	-12(%rbp), %rdi
	movl	%eax, perm_tab(,%rdi,4)
# BB#31:                                # %for.inc.49
                                        #   in Loop: Header=BB5_29 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB5_29
.LBB5_32:                               # %for.end.51
	movl	$0, -4(%rbp)
.LBB5_33:                               # %for.cond.52
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_35 Depth 2
	cmpl	$64, -4(%rbp)
	jge	.LBB5_41
# BB#34:                                # %for.body.55
                                        #   in Loop: Header=BB5_33 Depth=1
	jmp	.LBB5_35
.LBB5_35:                               # %do.body
                                        #   Parent Loop BB5_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	.LCPI5_5, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI5_4, %xmm1         # xmm1 = mem[0],zero
	movq	-32(%rbp), %rdi
	callq	g_rand_double_range
	movsd	.LCPI5_5, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI5_4, %xmm2         # xmm2 = mem[0],zero
	movabsq	$grad_tab, %rdi
	movslq	-4(%rbp), %rax
	shlq	$4, %rax
	addq	%rax, %rdi
	movsd	%xmm0, (%rdi)
	movq	-32(%rbp), %rdi
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	callq	g_rand_double_range
	movabsq	$grad_tab, %rax
	movslq	-4(%rbp), %rdi
	shlq	$4, %rdi
	movq	%rax, %rcx
	addq	%rdi, %rcx
	movsd	%xmm0, 8(%rcx)
	movslq	-4(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdi
	addq	%rcx, %rdi
	movsd	(%rdi), %xmm0           # xmm0 = mem[0],zero
	movslq	-4(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdi
	addq	%rcx, %rdi
	mulsd	(%rdi), %xmm0
	movslq	-4(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdi
	addq	%rcx, %rdi
	movsd	8(%rdi), %xmm1          # xmm1 = mem[0],zero
	movslq	-4(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	mulsd	8(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
# BB#36:                                # %do.cond
                                        #   in Loop: Header=BB5_35 Depth=2
	movb	$1, %al
	xorps	%xmm0, %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movb	%al, -73(%rbp)          # 1-byte Spill
	jne	.LBB5_37
	jp	.LBB5_37
	jmp	.LBB5_38
.LBB5_37:                               # %lor.rhs
                                        #   in Loop: Header=BB5_35 Depth=2
	movsd	.LCPI5_4, %xmm0         # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	seta	%al
	movb	%al, -73(%rbp)          # 1-byte Spill
.LBB5_38:                               # %lor.end
                                        #   in Loop: Header=BB5_35 Depth=2
	movb	-73(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB5_35
# BB#39:                                # %do.end
                                        #   in Loop: Header=BB5_33 Depth=1
	movabsq	$grad_tab, %rax
	movsd	.LCPI5_4, %xmm0         # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	sqrt
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-4(%rbp), %rax
	shlq	$4, %rax
	movq	-96(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	mulsd	(%rcx), %xmm0
	movsd	%xmm0, (%rcx)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movslq	-4(%rbp), %rax
	shlq	$4, %rax
	movq	-96(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	mulsd	8(%rcx), %xmm0
	movsd	%xmm0, 8(%rcx)
# BB#40:                                # %for.inc.88
                                        #   in Loop: Header=BB5_33 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB5_33
.LBB5_41:                               # %for.end.90
	movq	-32(%rbp), %rdi
	callq	g_rand_free
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	solid_noise_init, .Lfunc_end5-solid_noise_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4643176031446892544     # double 255
	.text
	.align	16, 0x90
	.type	solid_noise_draw_one_tile,@function
solid_noise_draw_one_tile:              # @solid_noise_draw_one_tile
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -56(%rbp)
	movq	-8(%rbp), %rdi
	movl	28(%rdi), %ecx
	movl	%ecx, -60(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
                                        #       Child Loop BB6_5 Depth 3
	movl	-60(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	28(%rcx), %edx
	movq	-8(%rbp), %rcx
	addl	36(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB6_14
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -64(%rbp)
.LBB6_3:                                # %for.cond.2
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_5 Depth 3
	movl	-64(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	24(%rcx), %edx
	movq	-8(%rbp), %rcx
	addl	32(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB6_12
# BB#4:                                 # %for.body.6
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-64(%rbp), %eax
	movl	-28(%rbp), %ecx
	subl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movl	-60(%rbp), %eax
	movl	-32(%rbp), %ecx
	subl	%ecx, %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	-24(%rbp), %xmm2        # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	callq	noise
	movsd	.LCPI6_0(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movb	%al, %dl
	movb	%dl, -69(%rbp)
	movl	$0, -68(%rbp)
.LBB6_5:                                # %for.cond.12
                                        #   Parent Loop BB6_1 Depth=1
                                        #     Parent Loop BB6_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-68(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB6_8
# BB#6:                                 # %for.body.15
                                        #   in Loop: Header=BB6_5 Depth=3
	movb	-69(%rbp), %al
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -48(%rbp)
	movb	%al, (%rcx)
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB6_5 Depth=3
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB6_5
.LBB6_8:                                # %for.end
                                        #   in Loop: Header=BB6_3 Depth=2
	cmpl	$0, -40(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then
                                        #   in Loop: Header=BB6_3 Depth=2
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	$-1, (%rax)
.LBB6_10:                               # %if.end
                                        #   in Loop: Header=BB6_3 Depth=2
	jmp	.LBB6_11
.LBB6_11:                               # %for.inc.17
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB6_3
.LBB6_12:                               # %for.end.19
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-8(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-56(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
# BB#13:                                # %for.inc.20
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB6_1
.LBB6_14:                               # %for.end.22
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	solid_noise_draw_one_tile, .Lfunc_end6-solid_noise_draw_one_tile
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI7_0:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	noise,@function
noise:                                  # @noise
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
	subq	$32, %rsp
	xorps	%xmm2, %xmm2
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movl	$1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	xsize, %xmm0            # xmm0 = mem[0],zero
	mulsd	-8(%rbp), %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	ysize, %xmm0            # xmm0 = mem[0],zero
	mulsd	-16(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	snvals+12, %eax
	jg	.LBB7_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	cmpl	$0, snvals+4
	je	.LBB7_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB7_1 Depth=1
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-24(%rbp), %edi
	callq	plain_noise
	movapd	.LCPI7_0(%rip), %xmm1   # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	addsd	-32(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB7_5
.LBB7_4:                                # %if.else
                                        #   in Loop: Header=BB7_1 Depth=1
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-24(%rbp), %edi
	callq	plain_noise
	addsd	-32(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
.LBB7_5:                                # %if.end
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-24(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -24(%rbp)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB7_1
.LBB7_7:                                # %for.end
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	offset, %xmm0
	mulsd	factor, %xmm0
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	noise, .Lfunc_end7-noise
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4607182418800017408     # double 1
.LCPI8_1:
	.quad	4613937818241073152     # double 3
.LCPI8_2:
	.quad	4611686018427387904     # double 2
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI8_3:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	plain_noise,@function
plain_noise:                            # @plain_noise
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
	subq	$80, %rsp
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movl	%edi, -20(%rbp)
	movq	$0, -72(%rbp)
	movl	-20(%rbp), %edi
	movl	%edi, %eax
	cvtsi2sdq	%rax, %xmm0
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -8(%rbp)
	movl	-20(%rbp), %edi
	movl	%edi, %eax
	cvtsi2sdq	%rax, %xmm0
	mulsd	-16(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %edi
	movl	%edi, -44(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %edi
	movl	%edi, -48(%rbp)
	movl	$0, -52(%rbp)
.LBB8_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_3 Depth 2
	cmpl	$2, -52(%rbp)
	jge	.LBB8_11
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	$0, -56(%rbp)
.LBB8_3:                                # %for.cond.7
                                        #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$2, -56(%rbp)
	jge	.LBB8_9
# BB#4:                                 # %for.body.10
                                        #   in Loop: Header=BB8_3 Depth=2
	cmpl	$0, snvals
	je	.LBB8_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB8_3 Depth=2
	movl	-44(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	xclip, %ecx
	imull	-20(%rbp), %ecx
	xorl	%edx, %edx
	divl	%ecx
	movl	-48(%rbp), %ecx
	addl	-56(%rbp), %ecx
	movl	yclip, %esi
	imull	-20(%rbp), %esi
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	%edx, -76(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	divl	%esi
	andl	$63, %edx
	movl	%edx, %ecx
	movl	%ecx, %edi
	movl	-76(%rbp), %ecx         # 4-byte Reload
	addl	perm_tab(,%rdi,4), %ecx
	andl	$63, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edi
	movl	perm_tab(,%rdi,4), %ecx
	movl	%ecx, -60(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else
                                        #   in Loop: Header=BB8_3 Depth=2
	movl	$64, %eax
	movl	-44(%rbp), %ecx
	addl	-52(%rbp), %ecx
	movl	-48(%rbp), %edx
	addl	-56(%rbp), %edx
	movl	%eax, -80(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-80(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movslq	%edx, %rdi
	addl	perm_tab(,%rdi,4), %ecx
	movl	%ecx, %eax
	cltd
	idivl	%esi
	movslq	%edx, %rdi
	movl	perm_tab(,%rdi,4), %ecx
	movl	%ecx, -60(%rbp)
.LBB8_7:                                # %if.end
                                        #   in Loop: Header=BB8_3 Depth=2
	movabsq	$grad_tab, %rax
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI8_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI8_2, %xmm2         # xmm2 = mem[0],zero
	movsd	-8(%rbp), %xmm3         # xmm3 = mem[0],zero
	cvtsi2sdl	-44(%rbp), %xmm4
	subsd	%xmm4, %xmm3
	cvtsi2sdl	-52(%rbp), %xmm4
	subsd	%xmm4, %xmm3
	movsd	%xmm3, -40(%rbp)
	movsd	-16(%rbp), %xmm3        # xmm3 = mem[0],zero
	cvtsi2sdl	-48(%rbp), %xmm4
	subsd	%xmm4, %xmm3
	cvtsi2sdl	-56(%rbp), %xmm4
	subsd	%xmm4, %xmm3
	movsd	%xmm3, -32(%rbp)
	movsd	-40(%rbp), %xmm3        # xmm3 = mem[0],zero
	movapd	.LCPI8_3(%rip), %xmm4   # xmm4 = [9223372036854775807,9223372036854775807]
	andpd	%xmm4, %xmm3
	movaps	%xmm2, %xmm4
	mulsd	%xmm3, %xmm4
	subsd	%xmm1, %xmm4
	mulsd	-40(%rbp), %xmm4
	mulsd	-40(%rbp), %xmm4
	addsd	%xmm0, %xmm4
	movsd	-32(%rbp), %xmm3        # xmm3 = mem[0],zero
	movapd	.LCPI8_3(%rip), %xmm5   # xmm5 = [9223372036854775807,9223372036854775807]
	andpd	%xmm5, %xmm3
	mulsd	%xmm3, %xmm2
	subsd	%xmm1, %xmm2
	mulsd	-32(%rbp), %xmm2
	mulsd	-32(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm4
	movslq	-60(%rbp), %rcx
	shlq	$4, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	mulsd	-40(%rbp), %xmm0
	movslq	-60(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	mulsd	-32(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	mulsd	%xmm0, %xmm4
	addsd	-72(%rbp), %xmm4
	movsd	%xmm4, -72(%rbp)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB8_3 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB8_3
.LBB8_9:                                # %for.end
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_10
.LBB8_10:                               # %for.inc.70
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB8_1
.LBB8_11:                               # %for.end.72
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm1
	divsd	%xmm1, %xmm0
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	plain_noise, .Lfunc_end8-plain_noise
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
	.asciz	"tilable"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Create a tilable output { TRUE, FALSE }"
	.size	.L.str.7, 40

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"turbulent"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Make a turbulent noise { TRUE, FALSE }"
	.size	.L.str.9, 39

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"seed"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Random seed"
	.size	.L.str.11, 12

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"detail"
	.size	.L.str.12, 7

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Detail level (0 - 15)"
	.size	.L.str.13, 22

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"xsize"
	.size	.L.str.14, 6

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Horizontal texture size"
	.size	.L.str.15, 24

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"ysize"
	.size	.L.str.16, 6

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Vertical texture size"
	.size	.L.str.17, 22

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"plug-in-solid-noise"
	.size	.L.str.18, 20

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Create a random cloud-like texture"
	.size	.L.str.19, 35

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Generates 2D textures using Perlin's classic solid noise function."
	.size	.L.str.20, 67

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Marcelo de Gomensoro Malheiros"
	.size	.L.str.21, 31

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"May 2004, v1.04"
	.size	.L.str.22, 16

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"_Solid Noise..."
	.size	.L.str.23, 16

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.24, 12

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"<Image>/Filters/Render/Clouds"
	.size	.L.str.25, 30

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

	.type	snvals,@object          # @snvals
	.data
	.align	8
snvals:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	4616189618054758400     # double 4
	.quad	4616189618054758400     # double 4
	.long	0                       # 0x0
	.zero	4
	.size	snvals, 40

	.type	.L.str.28,@object       # @.str.28
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.28:
	.asciz	"noise-solid"
	.size	.L.str.28, 12

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Solid Noise"
	.size	.L.str.29, 12

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"gimp-noise-solid"
	.size	.L.str.30, 17

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gtk-cancel"
	.size	.L.str.31, 11

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"gtk-ok"
	.size	.L.str.32, 7

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"invalidated"
	.size	.L.str.33, 12

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"_Random seed:"
	.size	.L.str.34, 14

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"spinbutton"
	.size	.L.str.35, 11

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"value-changed"
	.size	.L.str.36, 14

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"_Detail:"
	.size	.L.str.37, 9

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"T_urbulent"
	.size	.L.str.38, 11

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"toggled"
	.size	.L.str.39, 8

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"T_ilable"
	.size	.L.str.40, 9

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"_X size:"
	.size	.L.str.41, 9

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"_Y size:"
	.size	.L.str.42, 9

	.type	xsize,@object           # @xsize
	.local	xsize
	.comm	xsize,8,8
	.type	ysize,@object           # @ysize
	.local	ysize
	.comm	ysize,8,8
	.type	xclip,@object           # @xclip
	.local	xclip
	.comm	xclip,4,4
	.type	yclip,@object           # @yclip
	.local	yclip
	.comm	yclip,4,4
	.type	offset,@object          # @offset
	.local	offset
	.comm	offset,8,8
	.type	factor,@object          # @factor
	.local	factor
	.comm	factor,8,8
	.type	perm_tab,@object        # @perm_tab
	.local	perm_tab
	.comm	perm_tab,256,16
	.type	grad_tab,@object        # @grad_tab
	.local	grad_tab
	.comm	grad_tab,1024,16

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
