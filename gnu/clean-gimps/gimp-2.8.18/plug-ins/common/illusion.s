	.text
	.file	"illusion.bc"
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -44(%rbp)
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
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movq	-40(%rbp), %rax
	movq	$run.returnv, (%rax)
	movl	-48(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_24
.LBB1_24:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_25
.LBB1_25:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB1_13
	jmp	.LBB1_14
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.10, %rdi
	movabsq	$parameters, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-56(%rbp), %rdi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	illusion_dialog
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	jmp	.LBB1_23
.LBB1_5:                                # %if.end
	movabsq	$.L.str.10, %rdi
	movabsq	$parameters, %rax
	movl	$12, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB1_14
.LBB1_6:                                # %sw.bb.10
	cmpl	$5, -12(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then.11
	movl	$1, -44(%rbp)
	jmp	.LBB1_12
.LBB1_8:                                # %if.else
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, parameters
	movq	-24(%rbp), %rax
	cmpl	$0, 168(%rax)
	jne	.LBB1_10
# BB#9:                                 # %if.then.19
	movl	$1, parameters+4
	movl	$0, parameters+8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.20
	movl	$0, parameters+4
	movl	$1, parameters+8
.LBB1_11:                               # %if.end.21
	jmp	.LBB1_12
.LBB1_12:                               # %if.end.22
	jmp	.LBB1_14
.LBB1_13:                               # %sw.bb.23
	movabsq	$.L.str.10, %rdi
	movabsq	$parameters, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB1_14:                               # %sw.epilog
	cmpl	$3, -44(%rbp)
	jne	.LBB1_22
# BB#15:                                # %if.then.26
	movq	-56(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB1_17
# BB#16:                                # %lor.lhs.false
	movq	-56(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB1_20
.LBB1_17:                               # %if.then.32
	movq	-56(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
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
	movabsq	$.L.str.21, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movq	-56(%rbp), %rdi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	illusion
	cmpl	$1, -48(%rbp)
	je	.LBB1_19
# BB#18:                                # %if.then.38
	callq	gimp_displays_flush
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB1_19:                               # %if.end.40
	jmp	.LBB1_21
.LBB1_20:                               # %if.else.41
	movl	$0, -44(%rbp)
.LBB1_21:                               # %if.end.42
	jmp	.LBB1_22
.LBB1_22:                               # %if.end.43
	movl	$21, run.returnv
	movl	-44(%rbp), %eax
	movl	%eax, run.returnv+8
	movq	-56(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB1_23:                               # %return
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
	.quad	-4593671619917905920    # double -32
.LCPI3_2:
	.quad	4634204016564240384     # double 64
.LCPI3_3:
	.quad	4607182418800017408     # double 1
.LCPI3_4:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	illusion_dialog,@function
illusion_dialog:                        # @illusion_dialog
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
	subq	$448, %rsp              # imm = 0x1C0
.Ltmp17:
	.cfi_offset %rbx, -32
.Ltmp18:
	.cfi_offset %r14, -24
	movabsq	$.L.str.22, %rax
	movl	$1, %esi
	movq	%rdi, -24(%rbp)
	movq	$0, -88(%rbp)
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
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
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
	movq	-32(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-32(%rbp), %rax
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
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.26, %rsi
	movabsq	$illusion_preview, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movl	$3, %edi
	movl	$2, %esi
	xorl	%edx, %edx
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_table_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-56(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-40(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -196(%rbp)        # 4-byte Spill
	movl	-196(%rbp), %ecx        # 4-byte Reload
	movl	-196(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	leaq	-72(%rbp), %rdi
	movsd	.LCPI3_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI3_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_3, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_4, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm5, %xmm5
	xorl	%esi, %esi
	cvtsi2sdl	parameters, %xmm3
	movsd	%xmm0, -208(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-208(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-208(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.27, %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movss	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-64(%rbp), %r8
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.28, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$parameters, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-72(%rbp), %r11
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rcx, %rdx
	movq	-232(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.28, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-248(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.29, %rdi
	movq	-88(%rbp), %rcx
	movq	%rax, -264(%rbp)        # 8-byte Spill
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_mnemonic
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$2, %r9d
	movl	$1, %r8d
	movl	$4, %r10d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %ecx
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -292(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.30, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$parameters, %rdi
	addq	$4, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %r11
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-304(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.30, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-80(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-312(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-80(%rbp), %rcx
	movq	%rax, -328(%rbp)        # 8-byte Spill
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	parameters+4, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movabsq	$.L.str.31, %rdi
	movq	-88(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_mnemonic
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$2, %r9d
	movl	$3, %r10d
	movl	$4, %ebx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%ebx, -364(%rbp)        # 4-byte Spill
	callq	gtk_table_attach
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.30, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$parameters, %rdi
	addq	$8, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %r11
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-376(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.30, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-80(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-384(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-80(%rbp), %rcx
	movq	%rax, -400(%rbp)        # 8-byte Spill
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	parameters+8, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %eax
	movl	%eax, -92(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-92(%rbp), %eax
	addq	$448, %rsp              # imm = 0x1C0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	illusion_dialog, .Lfunc_end3-illusion_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	illusion,@function
illusion:                               # @illusion
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
	subq	$112, %rsp
	leaq	-76(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	leaq	-84(%rbp), %rcx
	leaq	-88(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_mask_bounds
	xorl	%esi, %esi
	movl	-84(%rbp), %edi
	subl	-76(%rbp), %edi
	movl	%edi, -68(%rbp)
	movl	-88(%rbp), %edi
	subl	-80(%rbp), %edi
	movl	%edi, -72(%rbp)
	movq	-8(%rbp), %rdi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gimp_pixel_fetcher_new
	movl	$2, %esi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_pixel_fetcher_set_edge_mode
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	xorl	%esi, %esi
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -16(%rbp)
	movl	-76(%rbp), %eax
	addl	-84(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	movl	-80(%rbp), %eax
	addl	-88(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)
	movl	-68(%rbp), %eax
	imull	-68(%rbp), %eax
	movl	-72(%rbp), %edi
	imull	-72(%rbp), %edi
	addl	%edi, %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movl	%esi, -108(%rbp)        # 4-byte Spill
	callq	sqrt
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	-108(%rbp), %esi        # 4-byte Reload
	callq	gimp_rgn_iterator_new
	movabsq	$illusion_func, %rsi
	leaq	-56(%rbp), %rcx
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	%rcx, %rdx
	callq	gimp_rgn_iterator_src_dest
	movq	-64(%rbp), %rdi
	callq	gimp_rgn_iterator_free
	movq	-56(%rbp), %rdi
	callq	gimp_pixel_fetcher_destroy
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	illusion, .Lfunc_end4-illusion
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	illusion_preview,@function
illusion_preview:                       # @illusion_preview
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
	subq	$192, %rsp
	leaq	-140(%rbp), %rax
	leaq	-144(%rbp), %rdx
	leaq	-148(%rbp), %rcx
	leaq	-152(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	(%rsi), %edi
	movq	%rax, %rsi
	callq	gimp_drawable_mask_bounds
	xorl	%esi, %esi
	movl	-148(%rbp), %edi
	subl	-140(%rbp), %edi
	movl	%edi, -132(%rbp)
	movl	-152(%rbp), %edi
	subl	-144(%rbp), %edi
	movl	%edi, -136(%rbp)
	movq	-16(%rbp), %rdi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	gimp_pixel_fetcher_new
	movl	$2, %esi
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rdi
	callq	gimp_pixel_fetcher_set_edge_mode
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -88(%rbp)
	movl	-140(%rbp), %eax
	addl	-148(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -120(%rbp)
	movl	-144(%rbp), %eax
	addl	-152(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -112(%rbp)
	movl	-132(%rbp), %eax
	imull	-132(%rbp), %eax
	movl	-136(%rbp), %esi
	imull	-136(%rbp), %esi
	addl	%esi, %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sqrt
	movsd	-168(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -104(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -96(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	callq	gimp_zoom_preview_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-36(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	leaq	-76(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_zoom_preview_get_source
	movq	%rax, -48(%rbp)
	movl	-36(%rbp), %r9d
	imull	-40(%rbp), %r9d
	imull	-76(%rbp), %r9d
	movslq	%r9d, %rdi
	callq	g_malloc
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	$0, -24(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_3 Depth 2
	movl	-24(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB5_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	$0, -20(%rbp)
.LBB5_3:                                # %for.cond.26
                                        #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-20(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB5_6
# BB#4:                                 # %for.body.29
                                        #   in Loop: Header=BB5_3 Depth=2
	leaq	-28(%rbp), %rcx
	leaq	-32(%rbp), %r8
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	gimp_preview_untransform
	leaq	-128(%rbp), %rcx
	movl	-28(%rbp), %edi
	movl	-32(%rbp), %esi
	movq	-64(%rbp), %rdx
	movq	-72(%rbp), %r8
	movl	-76(%rbp), %eax
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movl	%eax, %r8d
	movq	-184(%rbp), %r9         # 8-byte Reload
	callq	illusion_func
	movl	-76(%rbp), %eax
	movq	-64(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
	movl	-76(%rbp), %eax
	movq	-72(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -72(%rbp)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB5_3 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB5_3
.LBB5_6:                                # %for.end
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_7
.LBB5_7:                                # %for.inc.32
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB5_1
.LBB5_8:                                # %for.end.34
	movq	-128(%rbp), %rdi
	callq	gimp_pixel_fetcher_destroy
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movl	-36(%rbp), %eax
	imull	-76(%rbp), %eax
	movl	%eax, %edx
	callq	gimp_preview_draw_buffer
	movq	-56(%rbp), %rdi
	callq	g_free
	movq	-48(%rbp), %rdi
	callq	g_free
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	illusion_preview, .Lfunc_end5-illusion_preview
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI6_1:
	.quad	4609753056924675352     # double 1.5707963267948966
.LCPI6_2:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	illusion_func,@function
illusion_func:                          # @illusion_func
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
	subq	$192, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movq	%r9, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	cvtsi2sdl	-8(%rbp), %xmm0
	movq	-48(%rbp), %rcx
	subsd	16(%rcx), %xmm0
	movq	-48(%rbp), %rcx
	divsd	24(%rcx), %xmm0
	movsd	%xmm0, -88(%rbp)
	cvtsi2sdl	-4(%rbp), %xmm0
	movq	-48(%rbp), %rcx
	subsd	8(%rcx), %xmm0
	movq	-48(%rbp), %rcx
	divsd	24(%rcx), %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	atan2
	movsd	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI6_1, %xmm2         # xmm2 = mem[0],zero
	cvtsi2sdl	parameters, %xmm3
	mulsd	%xmm3, %xmm0
	divsd	%xmm2, %xmm0
	movsd	%xmm2, -120(%rbp)       # 8-byte Spill
	movsd	%xmm1, -128(%rbp)       # 8-byte Spill
	callq	floor
	movsd	-120(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvtsi2sdl	parameters, %xmm2
	divsd	%xmm2, %xmm0
	cvtsi2sdl	parameters, %xmm2
	movsd	-128(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	divsd	%xmm2, %xmm3
	addsd	%xmm3, %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-80(%rbp), %xmm0
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-88(%rbp), %xmm2
	addsd	%xmm2, %xmm0
	callq	sqrt
	movsd	%xmm0, -72(%rbp)
	cmpl	$0, parameters+4
	je	.LBB6_2
# BB#1:                                 # %if.then
	cvtsi2sdl	-4(%rbp), %xmm0
	movq	-48(%rbp), %rax
	movsd	32(%rax), %xmm1         # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -144(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-144(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -52(%rbp)
	cvtsi2sdl	-8(%rbp), %xmm0
	movq	-48(%rbp), %rax
	movsd	32(%rax), %xmm1         # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -160(%rbp)       # 8-byte Spill
	callq	sin
	movsd	-160(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-152(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -56(%rbp)
	jmp	.LBB6_3
.LBB6_2:                                # %if.else
	cvtsi2sdl	-4(%rbp), %xmm0
	movq	-48(%rbp), %rax
	movsd	32(%rax), %xmm1         # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -176(%rbp)       # 8-byte Spill
	callq	sin
	movsd	-176(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-168(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -52(%rbp)
	cvtsi2sdl	-8(%rbp), %xmm0
	movq	-48(%rbp), %rax
	movsd	32(%rax), %xmm1         # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -192(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-192(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-184(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -56(%rbp)
.LBB6_3:                                # %if.end
	leaq	-100(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edx
	callq	gimp_pixel_fetcher_get_pixel
	movq	-48(%rbp), %rax
	cmpl	$0, 40(%rax)
	je	.LBB6_11
# BB#4:                                 # %if.then.41
	movl	-28(%rbp), %eax
	decl	%eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %eax
	movl	%eax, -104(%rbp)
	movl	-28(%rbp), %eax
	decl	%eax
	movslq	%eax, %rcx
	movzbl	-100(%rbp,%rcx), %eax
	movl	%eax, -108(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI6_2(%rip), %xmm1   # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movl	-104(%rbp), %esi
	movl	%esi, %ecx
	cvtsi2sdq	%rcx, %xmm2
	mulsd	%xmm2, %xmm1
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %rcx
	movl	%ecx, %eax
	movl	%eax, -112(%rbp)
	movl	-112(%rbp), %eax
	shrl	$1, %eax
	movb	%al, %dil
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	movb	%dil, (%rdx,%rcx)
	cmpb	$0, %dil
	je	.LBB6_10
# BB#5:                                 # %if.then.60
	movl	$0, -60(%rbp)
.LBB6_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	movl	-28(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB6_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB6_6 Depth=1
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI6_2(%rip), %xmm1   # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movslq	-60(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm2
	mulsd	%xmm2, %xmm1
	movl	-104(%rbp), %edx
	movl	%edx, %ecx
	cvtsi2sdq	%rcx, %xmm2
	mulsd	%xmm2, %xmm1
	movzbl	-100(%rbp,%rax), %edx
	cvtsi2sdl	%edx, %xmm2
	mulsd	%xmm2, %xmm0
	movl	-108(%rbp), %edx
	movl	%edx, %eax
	cvtsi2sdq	%rax, %xmm2
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	movl	-112(%rbp), %edx
	movl	%edx, %eax
	cvtsi2sdq	%rax, %xmm0
	divsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	movb	%dl, %sil
	movslq	-60(%rbp), %rax
	movq	-24(%rbp), %rcx
	movb	%sil, (%rcx,%rax)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB6_6 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB6_6
.LBB6_9:                                # %for.end
	jmp	.LBB6_10
.LBB6_10:                               # %if.end.84
	jmp	.LBB6_16
.LBB6_11:                               # %if.else.85
	movl	$0, -60(%rbp)
.LBB6_12:                               # %for.cond.86
                                        # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB6_15
# BB#13:                                # %for.body.89
                                        #   in Loop: Header=BB6_12 Depth=1
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI6_2(%rip), %xmm1   # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movslq	-60(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %edx
	cvtsi2sdl	%edx, %xmm2
	mulsd	%xmm2, %xmm1
	movzbl	-100(%rbp,%rax), %edx
	cvtsi2sdl	%edx, %xmm2
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	movb	%dl, %sil
	movslq	-60(%rbp), %rax
	movq	-24(%rbp), %rcx
	movb	%sil, (%rcx,%rax)
# BB#14:                                # %for.inc.105
                                        #   in Loop: Header=BB6_12 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB6_12
.LBB6_15:                               # %for.end.107
	jmp	.LBB6_16
.LBB6_16:                               # %if.end.108
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	illusion_func, .Lfunc_end6-illusion_func
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
	.asciz	"division"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"The number of divisions"
	.size	.L.str.7, 24

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"type"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Illusion type { TYPE1 (0), TYPE2 (1) }"
	.size	.L.str.9, 39

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"plug-in-illusion"
	.size	.L.str.10, 17

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Superimpose many altered copies of the image"
	.size	.L.str.11, 45

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"produce illusion"
	.size	.L.str.12, 17

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Hirotsuna Mizuno <s1041150@u-aizu.ac.jp>"
	.size	.L.str.13, 41

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Hirotsuna Mizuno"
	.size	.L.str.14, 17

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"v0.8 (May 14 2000)"
	.size	.L.str.15, 19

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"_Illusion..."
	.size	.L.str.16, 13

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"RGB*, GRAY*"
	.size	.L.str.17, 12

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"<Image>/Filters/Map"
	.size	.L.str.18, 20

	.type	run.returnv,@object     # @run.returnv
	.local	run.returnv
	.comm	run.returnv,40,16
	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.19, 20

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"UTF-8"
	.size	.L.str.20, 6

	.type	parameters,@object      # @parameters
	.data
	.align	4
parameters:
	.long	8                       # 0x8
	.long	1                       # 0x1
	.long	0                       # 0x0
	.size	parameters, 12

	.type	.L.str.21,@object       # @.str.21
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.21:
	.asciz	"Illusion"
	.size	.L.str.21, 9

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"illusion"
	.size	.L.str.22, 9

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gimp-illusion"
	.size	.L.str.23, 14

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gtk-cancel"
	.size	.L.str.24, 11

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gtk-ok"
	.size	.L.str.25, 7

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"invalidated"
	.size	.L.str.26, 12

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"_Divisions:"
	.size	.L.str.27, 12

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"value-changed"
	.size	.L.str.28, 14

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Mode _1"
	.size	.L.str.29, 8

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"toggled"
	.size	.L.str.30, 8

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Mode _2"
	.size	.L.str.31, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
