	.text
	.file	"red-eye-removal.bc"
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
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %rsi
	movabsq	$.L.str.10, %rdx
	movabsq	$.L.str.11, %rcx
	movabsq	$.L.str.12, %r8
	movabsq	$.L.str.13, %r9
	movabsq	$.L.str.14, %rax
	movabsq	$.L.str.15, %r10
	movl	$1, %r11d
	movl	$4, %ebx
	xorl	%r14d, %r14d
	movabsq	$query.args, %r15
	xorl	%r12d, %r12d
	movl	%r12d, %r13d
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$4, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%r15, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r13, -48(%rbp)         # 8-byte Spill
	movl	%r11d, -52(%rbp)        # 4-byte Spill
	movl	%r14d, -56(%rbp)        # 4-byte Spill
	movl	%ebx, -60(%rbp)         # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.16, %rsi
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
	movl	$3, -56(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -52(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.17, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.17, %rdi
	movabsq	$.L.str.18, %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.17, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -88(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	48(%rax), %edi
	movl	%edi, -60(%rbp)
	movl	-52(%rbp), %edi
	testl	%edi, %edi
	movl	%edi, -92(%rbp)         # 4-byte Spill
	je	.LBB1_7
	jmp	.LBB1_21
.LBB1_21:                               # %do.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_22
.LBB1_22:                               # %do.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB1_10
	jmp	.LBB1_11
.LBB1_3:                                # %sw.bb
	cmpl	$4, -12(%rbp)
	je	.LBB1_5
# BB#4:                                 # %if.then
	movl	$1, -56(%rbp)
	jmp	.LBB1_6
.LBB1_5:                                # %if.else
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, threshold
.LBB1_6:                                # %if.end
	jmp	.LBB1_12
.LBB1_7:                                # %sw.bb.12
	movabsq	$.L.str.8, %rdi
	movabsq	$threshold, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	-60(%rbp), %edi
	movq	-48(%rbp), %rsi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	dialog
	cmpl	$0, %eax
	jne	.LBB1_9
# BB#8:                                 # %if.then.15
	movl	$4, -56(%rbp)
.LBB1_9:                                # %if.end.16
	jmp	.LBB1_12
.LBB1_10:                               # %sw.bb.17
	movabsq	$.L.str.8, %rdi
	movabsq	$threshold, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB1_12
.LBB1_11:                               # %sw.default
	jmp	.LBB1_12
.LBB1_12:                               # %sw.epilog
	cmpl	$3, -56(%rbp)
	jne	.LBB1_19
# BB#13:                                # %land.lhs.true
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	je	.LBB1_19
# BB#14:                                # %if.then.22
	movq	-48(%rbp), %rdi
	callq	remove_redeye
	cmpl	$1, -52(%rbp)
	je	.LBB1_16
# BB#15:                                # %if.then.24
	callq	gimp_displays_flush
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB1_16:                               # %if.end.26
	cmpl	$0, -52(%rbp)
	jne	.LBB1_18
# BB#17:                                # %if.then.28
	movabsq	$.L.str.8, %rdi
	movabsq	$threshold, %rax
	movl	$4, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB1_18:                               # %if.end.30
	jmp	.LBB1_20
.LBB1_19:                               # %if.else.31
	movl	$0, -56(%rbp)
.LBB1_20:                               # %if.end.32
	movabsq	$run.values, %rax
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, run.values
	movl	-56(%rbp), %edx
	movl	%edx, run.values+8
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
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
	.quad	4636737291354636288     # double 100
.LCPI3_1:
	.quad	4607182418800017408     # double 1
.LCPI3_2:
	.quad	4617315517961601024     # double 5
	.text
	.align	16, 0x90
	.type	dialog,@function
dialog:                                 # @dialog
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
	subq	$344, %rsp              # imm = 0x158
.Ltmp17:
	.cfi_offset %rbx, -24
	movabsq	$.L.str.19, %rax
	movl	$1, %ecx
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$0, -68(%rbp)
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gimp_ui_init
	movabsq	$.L.str.20, %rdi
	callq	gettext
	movabsq	$.L.str.21, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.8, %r9
	movabsq	$.L.str.22, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.23, %r11
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
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
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
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rdi
	callq	gimp_zoom_preview_new
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
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
	movl	$1, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-56(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	movl	-164(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movq	-48(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.24, %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.25, %rdi
	cvtsi2sdl	threshold, %xmm0
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	callq	gettext
	movl	$1, %esi
	xorl	%ecx, %ecx
	movl	$100, %r8d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI3_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_2, %xmm4         # xmm4 = mem[0],zero
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	-184(%rbp), %r9         # 8-byte Reload
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-192(%rbp), %r11        # 8-byte Reload
	movl	%ecx, -212(%rbp)        # 4-byte Spill
	movq	%r11, %rcx
	movl	-212(%rbp), %r9d        # 4-byte Reload
	movsd	-200(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	-224(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	%xmm1, -232(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm1
	movsd	-232(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-232(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_item_get_image
	movl	%eax, %edi
	callq	gimp_selection_is_empty
	cmpl	$0, %eax
	je	.LBB3_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.26, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_hint_box_new
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -244(%rbp)        # 4-byte Spill
	movl	-244(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_end
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
.LBB3_2:                                # %if.end
	movabsq	$.L.str.27, %rsi
	movabsq	$remove_redeye_preview, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-256(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.28, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$threshold, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rdi
	movq	%rdx, -264(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-264(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.28, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rdi
	movq	%rdi, -280(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-280(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-32(%rbp), %rdi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %eax
	movl	%eax, -68(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-68(%rbp), %eax
	addq	$344, %rsp              # imm = 0x158
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	dialog, .Lfunc_end3-dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	remove_redeye,@function
remove_redeye:                          # @remove_redeye
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
	subq	$192, %rsp
	leaq	-120(%rbp), %rsi
	leaq	-124(%rbp), %rdx
	leaq	-128(%rbp), %rcx
	leaq	-132(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_mask_intersect
	cmpl	$0, %eax
	jne	.LBB4_2
# BB#1:                                 # %if.then
	jmp	.LBB4_9
.LBB4_2:                                # %if.end
	movabsq	$.L.str.29, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	gimp_drawable_has_alpha
	leaq	-56(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%eax, -116(%rbp)
	movl	$0, -108(%rbp)
	movl	-128(%rbp), %eax
	imull	-132(%rbp), %eax
	movl	%eax, -112(%rbp)
	movq	-8(%rbp), %rsi
	movl	-120(%rbp), %edx
	movl	-124(%rbp), %eax
	movl	-128(%rbp), %r8d
	movl	-132(%rbp), %r9d
	movl	%ecx, -152(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-104(%rbp), %rdi
	movl	$1, %eax
	movq	-8(%rbp), %rsi
	movl	-120(%rbp), %edx
	movl	-124(%rbp), %ecx
	movl	-128(%rbp), %r8d
	movl	-132(%rbp), %r9d
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movl	$2, %edi
	leaq	-56(%rbp), %rsi
	leaq	-104(%rbp), %rdx
	movb	$0, %al
	callq	gimp_pixel_rgns_register
	movq	%rax, -144(%rbp)
	movl	$0, -136(%rbp)
.LBB4_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -144(%rbp)
	je	.LBB4_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-56(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-40(%rbp), %r8d
	movl	-116(%rbp), %r9d
	movl	-36(%rbp), %eax
	movl	%eax, (%rsp)
	callq	redeye_inner_loop
	movl	$16, %eax
	movl	-24(%rbp), %ecx
	imull	-20(%rbp), %ecx
	addl	-108(%rbp), %ecx
	movl	%ecx, -108(%rbp)
	movl	-136(%rbp), %ecx
	movl	%eax, -160(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-160(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB4_6
# BB#5:                                 # %if.then.11
                                        #   in Loop: Header=BB4_3 Depth=1
	cvtsi2sdl	-108(%rbp), %xmm0
	cvtsi2sdl	-112(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB4_6:                                # %if.end.14
                                        #   in Loop: Header=BB4_3 Depth=1
	jmp	.LBB4_7
.LBB4_7:                                # %for.inc
                                        #   in Loop: Header=BB4_3 Depth=1
	movq	-144(%rbp), %rdi
	callq	gimp_pixel_rgns_process
	movq	%rax, -144(%rbp)
	movl	-136(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -136(%rbp)
	jmp	.LBB4_3
.LBB4_8:                                # %for.end
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	movq	-8(%rbp), %rdi
	movl	%eax, -168(%rbp)        # 4-byte Spill
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-120(%rbp), %esi
	movl	-124(%rbp), %edx
	movl	-128(%rbp), %ecx
	movl	-132(%rbp), %r8d
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -176(%rbp)        # 4-byte Spill
.LBB4_9:                                # %return
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	remove_redeye, .Lfunc_end4-remove_redeye
	.cfi_endproc

	.align	16, 0x90
	.type	remove_redeye_preview,@function
remove_redeye_preview:                  # @remove_redeye_preview
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_zoom_preview_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-40(%rbp), %rsi
	leaq	-44(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_zoom_preview_get_source
	movl	$1, %r8d
	movl	%r8d, %esi
	movq	%rax, -24(%rbp)
	movl	-44(%rbp), %r8d
	imull	-40(%rbp), %r8d
	imull	-48(%rbp), %r8d
	movslq	%r8d, %rdi
	callq	g_malloc_n
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_has_alpha
	movl	%eax, -36(%rbp)
	movl	-48(%rbp), %eax
	imull	-40(%rbp), %eax
	movl	%eax, -52(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %ecx
	movl	-48(%rbp), %r8d
	movl	-36(%rbp), %r9d
	movl	-52(%rbp), %eax
	movl	%eax, (%rsp)
	callq	redeye_inner_loop
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-52(%rbp), %edx
	callq	gimp_preview_draw_buffer
	movq	-24(%rbp), %rdi
	callq	g_free
	movq	-32(%rbp), %rdi
	callq	g_free
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	remove_redeye_preview, .Lfunc_end5-remove_redeye_preview
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4596133586513241891     # double 0.19333330000000001
.LCPI6_1:
	.quad	4602798914862470150     # double 0.51333329999999999
.LCPI6_2:
	.quad	4643176031446892544     # double 255
.LCPI6_3:
	.quad	4607302514489840646     # double 1.0266666
	.text
	.align	16, 0x90
	.type	redeye_inner_loop,@function
redeye_inner_loop:                      # @redeye_inner_loop
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
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movl	%eax, -36(%rbp)
	movl	$0, -40(%rbp)
	movl	$1, -44(%rbp)
	movl	$2, -48(%rbp)
	movl	$3, -52(%rbp)
	movl	$0, -60(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
	movl	-60(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB6_20
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	$0, -56(%rbp)
.LBB6_3:                                # %for.cond.1
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-56(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB6_18
# BB#4:                                 # %for.body.3
                                        #   in Loop: Header=BB6_3 Depth=2
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI6_1, %xmm1         # xmm1 = mem[0],zero
	movq	-72(%rbp), %rax
	movzbl	(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm2
	mulsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %ecx
	movl	%ecx, -84(%rbp)
	movq	-72(%rbp), %rax
	movzbl	1(%rax), %ecx
	shll	$0, %ecx
	movl	%ecx, -88(%rbp)
	movq	-72(%rbp), %rax
	movzbl	2(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	movl	%ecx, -92(%rbp)
	movl	threshold, %ecx
	subl	$50, %ecx
	shll	$1, %ecx
	movl	%ecx, -96(%rbp)
	movl	-84(%rbp), %ecx
	movl	-88(%rbp), %edx
	subl	-96(%rbp), %edx
	cmpl	%edx, %ecx
	jl	.LBB6_13
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-84(%rbp), %eax
	movl	-92(%rbp), %ecx
	subl	-96(%rbp), %ecx
	cmpl	%ecx, %eax
	jl	.LBB6_13
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB6_3 Depth=2
	movsd	.LCPI6_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI6_3, %xmm1         # xmm1 = mem[0],zero
	movl	-88(%rbp), %eax
	addl	-92(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	divsd	%xmm1, %xmm2
	ucomisd	%xmm0, %xmm2
	jbe	.LBB6_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB6_3 Depth=2
	movsd	.LCPI6_2, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	jmp	.LBB6_12
.LBB6_8:                                # %cond.false
                                        #   in Loop: Header=BB6_3 Depth=2
	xorps	%xmm0, %xmm0
	movsd	.LCPI6_3, %xmm1         # xmm1 = mem[0],zero
	movl	-88(%rbp), %eax
	addl	-92(%rbp), %eax
	cvtsi2sdl	%eax, %xmm2
	divsd	%xmm1, %xmm2
	ucomisd	%xmm2, %xmm0
	jbe	.LBB6_10
# BB#9:                                 # %cond.true.29
                                        #   in Loop: Header=BB6_3 Depth=2
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	jmp	.LBB6_11
.LBB6_10:                               # %cond.false.30
                                        #   in Loop: Header=BB6_3 Depth=2
	movsd	.LCPI6_3, %xmm0         # xmm0 = mem[0],zero
	movl	-88(%rbp), %eax
	addl	-92(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -112(%rbp)       # 8-byte Spill
.LBB6_11:                               # %cond.end
                                        #   in Loop: Header=BB6_3 Depth=2
	movsd	-112(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
.LBB6_12:                               # %cond.end.34
                                        #   in Loop: Header=BB6_3 Depth=2
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movb	%al, %cl
	movq	-80(%rbp), %rdx
	movb	%cl, (%rdx)
	jmp	.LBB6_14
.LBB6_13:                               # %if.else
                                        #   in Loop: Header=BB6_3 Depth=2
	movq	-72(%rbp), %rax
	movb	(%rax), %cl
	movq	-80(%rbp), %rax
	movb	%cl, (%rax)
.LBB6_14:                               # %if.end
                                        #   in Loop: Header=BB6_3 Depth=2
	movq	-72(%rbp), %rax
	movb	1(%rax), %cl
	movq	-80(%rbp), %rax
	movb	%cl, 1(%rax)
	movq	-72(%rbp), %rax
	movb	2(%rax), %cl
	movq	-80(%rbp), %rax
	movb	%cl, 2(%rax)
	cmpl	$0, -32(%rbp)
	je	.LBB6_16
# BB#15:                                # %if.then.44
                                        #   in Loop: Header=BB6_3 Depth=2
	movq	-72(%rbp), %rax
	movb	3(%rax), %cl
	movq	-80(%rbp), %rax
	movb	%cl, 3(%rax)
.LBB6_16:                               # %if.end.47
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-28(%rbp), %eax
	movq	-72(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -72(%rbp)
	movl	-28(%rbp), %eax
	movq	-80(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -80(%rbp)
# BB#17:                                # %for.inc
                                        #   in Loop: Header=BB6_3 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB6_3
.LBB6_18:                               # %for.end
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -8(%rbp)
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
# BB#19:                                # %for.inc.54
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB6_1
.LBB6_20:                               # %for.end.56
	popq	%rbp
	retq
.Lfunc_end6:
	.size	redeye_inner_loop, .Lfunc_end6-redeye_inner_loop
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
	.size	query.args, 96

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
	.asciz	"threshold"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Red eye threshold in percent"
	.size	.L.str.7, 29

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"plug-in-red-eye-removal"
	.size	.L.str.8, 24

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Remove the red eye effect caused by camera flashes"
	.size	.L.str.9, 51

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"This plug-in removes the red eye effect caused by camera flashes by using a percentage based red color threshold.  Make a selection containing the eyes, and apply the filter while adjusting the threshold to accurately remove the red eyes."
	.size	.L.str.10, 239

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Robert Merkel <robert.merkel@benambra.org>, Andreas R\303\270sdal <andrearo@stud.ntnu.no>"
	.size	.L.str.11, 84

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Copyright 2004-2006 Robert Merkel, Andreas R\303\270sdal"
	.size	.L.str.12, 51

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"2006"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"_Red Eye Removal..."
	.size	.L.str.14, 20

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"RGB*"
	.size	.L.str.15, 5

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"<Image>/Filters/Enhance"
	.size	.L.str.16, 24

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.17, 20

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"UTF-8"
	.size	.L.str.18, 6

	.type	threshold,@object       # @threshold
	.data
	.align	4
threshold:
	.long	50                      # 0x32
	.size	threshold, 4

	.type	.L.str.19,@object       # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"red-eye-removal"
	.size	.L.str.19, 16

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Red Eye Removal"
	.size	.L.str.20, 16

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimp-red-eye-removal"
	.size	.L.str.21, 21

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gtk-cancel"
	.size	.L.str.22, 11

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gtk-ok"
	.size	.L.str.23, 7

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"_Threshold:"
	.size	.L.str.24, 12

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Threshold for the red eye color to remove."
	.size	.L.str.25, 43

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Manually selecting the eyes may improve the results."
	.size	.L.str.26, 53

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"invalidated"
	.size	.L.str.27, 12

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"value-changed"
	.size	.L.str.28, 14

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Removing red eye"
	.size	.L.str.29, 17


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
