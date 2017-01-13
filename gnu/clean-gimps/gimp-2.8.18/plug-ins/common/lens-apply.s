	.text
	.file	"lens-apply.bc"
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
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.22, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.22, %rdi
	movabsq	$.L.str.23, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.22, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -80(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movl	$21, run.values(%rip)
	movl	-56(%rbp), %ecx
	movl	%ecx, run.values+8(%rip)
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movq	-40(%rbp), %rax
	movq	$run.values, (%rax)
	movq	-24(%rbp), %rax
	movl	88(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, -48(%rbp)
	movl	-52(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_22
.LBB1_22:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_23
.LBB1_23:                               # %do.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB1_14
	jmp	.LBB1_15
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.14, %rdi
	movabsq	$lvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-48(%rbp), %rdi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	lens_dialog
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	jmp	.LBB1_21
.LBB1_5:                                # %if.end
	jmp	.LBB1_16
.LBB1_6:                                # %sw.bb.9
	cmpl	$7, -12(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then.10
	movl	$1, -56(%rbp)
.LBB1_8:                                # %if.end.11
	cmpl	$3, -56(%rbp)
	jne	.LBB1_10
# BB#9:                                 # %if.then.13
	movq	-24(%rbp), %rax
	movsd	128(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, lvals
	movq	-24(%rbp), %rax
	movl	168(%rax), %ecx
	movl	%ecx, lvals+8
	movq	-24(%rbp), %rax
	movl	208(%rax), %ecx
	movl	%ecx, lvals+12
	movq	-24(%rbp), %rax
	movl	248(%rax), %ecx
	movl	%ecx, lvals+16
.LBB1_10:                               # %if.end.25
	cmpl	$3, -56(%rbp)
	jne	.LBB1_13
# BB#11:                                # %land.lhs.true
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	ucomisd	lvals, %xmm0
	jbe	.LBB1_13
# BB#12:                                # %if.then.28
	movl	$1, -56(%rbp)
.LBB1_13:                               # %if.end.29
	jmp	.LBB1_16
.LBB1_14:                               # %sw.bb.30
	movabsq	$.L.str.14, %rdi
	movabsq	$lvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB1_16
.LBB1_15:                               # %sw.default
	jmp	.LBB1_16
.LBB1_16:                               # %sw.epilog
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	movl	-104(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-108(%rbp), %esi        # 4-byte Reload
	divl	%esi
	addl	$1, %eax
	shll	$1, %eax
	movl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	movabsq	$.L.str.24, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rdi
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	drawlens
	cmpl	$1, -52(%rbp)
	je	.LBB1_18
# BB#17:                                # %if.then.37
	callq	gimp_displays_flush
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB1_18:                               # %if.end.39
	cmpl	$0, -52(%rbp)
	jne	.LBB1_20
# BB#19:                                # %if.then.42
	movabsq	$.L.str.14, %rdi
	movabsq	$lvals, %rax
	movl	$24, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB1_20:                               # %if.end.44
	movl	-56(%rbp), %eax
	movl	%eax, run.values+8
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
.LBB1_21:                               # %return
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
	.quad	4636737291354636288     # double 100
.LCPI3_2:
	.quad	4591870180066957722     # double 0.10000000000000001
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
	pushq	%rbx
	subq	$520, %rsp              # imm = 0x208
.Ltmp17:
	.cfi_offset %rbx, -24
	movabsq	$.L.str.25, %rax
	xorl	%esi, %esi
	movq	%rdi, -16(%rbp)
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
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
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
	movq	-24(%rbp), %rdi
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
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-24(%rbp), %rax
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
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_aspect_preview_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.30, %rsi
	movabsq	$drawlens, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movl	$1, %edi
	movl	$6, %esi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.31, %rdi
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_mnemonic_from_widget
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	movl	-188(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	lvals+8, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.32, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$lvals, %rdi
	addq	$8, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %r11
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-208(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.32, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-216(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	je	.LBB3_2
# BB#1:                                 # %cond.true
	movabsq	$.L.str.33, %rdi
	callq	gettext
	movq	%rax, -256(%rbp)        # 8-byte Spill
	jmp	.LBB3_3
.LBB3_2:                                # %cond.false
	movabsq	$.L.str.34, %rdi
	callq	gettext
	movq	%rax, -256(%rbp)        # 8-byte Spill
.LBB3_3:                                # %cond.end
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_mnemonic_from_widget
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -268(%rbp)        # 4-byte Spill
	movl	-268(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	lvals+12, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.32, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$lvals, %rdi
	addq	$12, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %r10
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-288(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.32, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rdi
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-296(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-16(%rbp), %rcx
	movl	(%rcx), %edi
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB3_5
# BB#4:                                 # %if.then
	movq	-56(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.35, %rdi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_mnemonic_from_widget
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -340(%rbp)        # 4-byte Spill
	movl	-340(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	lvals+16, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.32, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$lvals, %rdi
	addq	$16, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %r10
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-360(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.32, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-56(%rbp), %rdx
	movq	-40(%rbp), %rdi
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-368(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -384(%rbp)        # 8-byte Spill
.LBB3_5:                                # %if.end
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -396(%rbp)        # 4-byte Spill
	movl	-396(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movabsq	$.L.str.36, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -412(%rbp)        # 4-byte Spill
	movl	-412(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	leaq	-88(%rbp), %rdi
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm3         # xmm3 = mem[0],zero
	xorps	%xmm5, %xmm5
	movl	$2, %esi
	movsd	lvals, %xmm1            # xmm1 = mem[0],zero
	movsd	%xmm0, -424(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-424(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-424(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	-424(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -436(%rbp)        # 4-byte Spill
	movl	-436(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movq	-48(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_double_adjustment_update, %rax
	movabsq	$lvals, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-88(%rbp), %r10
	movq	%rdi, -456(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-456(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-88(%rbp), %rdx
	movq	-40(%rbp), %rdi
	movq	%rdi, -464(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-464(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-64(%rbp), %rdi
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %eax
	movl	%eax, -92(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-92(%rbp), %eax
	addq	$520, %rsp              # imm = 0x208
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	lens_dialog, .Lfunc_end3-lens_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
.LCPI4_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	drawlens,@function
drawlens:                               # @drawlens
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
	subq	$368, %rsp              # imm = 0x170
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movl	(%rsi), %edi
	callq	gimp_drawable_type
	leaq	-288(%rbp), %rdi
	movl	%eax, -20(%rbp)
	callq	gimp_context_get_background
	leaq	-288(%rbp), %rdi
	leaq	-289(%rbp), %rsi
	leaq	-291(%rbp), %rdx
	leaq	-290(%rbp), %rcx
	movl	%eax, -296(%rbp)        # 4-byte Spill
	callq	gimp_rgb_get_uchar
	movq	-8(%rbp), %rcx
	movl	12(%rcx), %eax
	movl	%eax, -132(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	leaq	-140(%rbp), %rsi
	leaq	-144(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_preview_get_position
	leaq	-124(%rbp), %rsi
	leaq	-128(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_preview_get_size
	leaq	-124(%rbp), %rsi
	leaq	-128(%rbp), %rdx
	leaq	-132(%rbp), %rcx
	movl	-140(%rbp), %eax
	addl	-124(%rbp), %eax
	movl	%eax, -148(%rbp)
	movl	-144(%rbp), %eax
	addl	-128(%rbp), %eax
	movl	%eax, -152(%rbp)
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_get_thumbnail_data
	movq	%rax, -160(%rbp)
	movslq	-124(%rbp), %rax
	movq	%rax, -184(%rbp)
	movslq	-128(%rbp), %rax
	movq	%rax, -192(%rbp)
	jmp	.LBB4_3
.LBB4_2:                                # %if.else
	leaq	-140(%rbp), %rsi
	leaq	-144(%rbp), %rdx
	leaq	-148(%rbp), %rcx
	leaq	-152(%rbp), %r8
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_mask_bounds
	leaq	-72(%rbp), %rdi
	xorl	%r9d, %r9d
	movl	-148(%rbp), %r10d
	subl	-140(%rbp), %r10d
	movslq	%r10d, %rcx
	movq	%rcx, -184(%rbp)
	movl	-152(%rbp), %r10d
	subl	-144(%rbp), %r10d
	movslq	%r10d, %rcx
	movq	%rcx, -192(%rbp)
	movq	-8(%rbp), %rcx
	movl	4(%rcx), %r10d
	movl	%r10d, -124(%rbp)
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %r10d
	movl	%r10d, -128(%rbp)
	movq	-8(%rbp), %rsi
	movl	-124(%rbp), %r8d
	movl	-128(%rbp), %r10d
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -300(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_init
	leaq	-120(%rbp), %rdi
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-8(%rbp), %rsi
	movl	-124(%rbp), %r8d
	movl	-128(%rbp), %r9d
	movl	%eax, %edx
	movl	%ecx, -304(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	$1, %eax
	movl	%eax, %esi
	movq	-184(%rbp), %rdi
	imulq	-192(%rbp), %rdi
	movslq	-132(%rbp), %r11
	imulq	%r11, %rdi
	callq	g_malloc_n
	leaq	-72(%rbp), %rdi
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rsi
	movl	-140(%rbp), %edx
	movl	-144(%rbp), %ecx
	movq	-184(%rbp), %rax
	movl	%eax, %r8d
	movq	-192(%rbp), %rax
	movl	%eax, %r9d
	callq	gimp_pixel_rgn_get_rect
.LBB4_3:                                # %if.end
	movl	$1, %eax
	movl	%eax, %esi
	movq	-184(%rbp), %rcx
	imulq	-192(%rbp), %rcx
	movslq	-132(%rbp), %rdx
	imulq	%rdx, %rcx
	movq	%rcx, %rdi
	callq	g_malloc_n
	movl	$2, %r8d
	movl	%r8d, %ecx
	movq	%rax, -168(%rbp)
	movq	-184(%rbp), %rax
	cqto
	idivq	%rcx
	cvtsi2ssq	%rax, %xmm0
	movss	%xmm0, -212(%rbp)
	movq	-192(%rbp), %rax
	cqto
	idivq	%rcx
	cvtsi2ssq	%rax, %xmm0
	movss	%xmm0, -216(%rbp)
	movss	-212(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	-216(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB4_5
# BB#4:                                 # %cond.true
	movss	-212(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -308(%rbp)       # 4-byte Spill
	jmp	.LBB4_6
.LBB4_5:                                # %cond.false
	movss	-216(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -308(%rbp)       # 4-byte Spill
.LBB4_6:                                # %cond.end
	movss	-308(%rbp), %xmm0       # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -220(%rbp)
	movss	-212(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	mulss	-212(%rbp), %xmm0
	movss	%xmm0, -224(%rbp)
	movss	-216(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	mulss	-216(%rbp), %xmm0
	movss	%xmm0, -228(%rbp)
	movss	-220(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	mulss	-220(%rbp), %xmm0
	movss	%xmm0, -232(%rbp)
	movl	$0, -176(%rbp)
.LBB4_7:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_9 Depth 2
                                        #       Child Loop BB4_12 Depth 3
                                        #       Child Loop BB4_18 Depth 3
	movslq	-176(%rbp), %rax
	cmpq	-184(%rbp), %rax
	jge	.LBB4_42
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB4_7 Depth=1
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	cvtsi2ssl	-176(%rbp), %xmm1
	subss	-212(%rbp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	addsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -196(%rbp)
	movss	-196(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	mulss	-196(%rbp), %xmm0
	movss	%xmm0, -204(%rbp)
	movl	$0, -136(%rbp)
.LBB4_9:                                # %for.cond.38
                                        #   Parent Loop BB4_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_12 Depth 3
                                        #       Child Loop BB4_18 Depth 3
	movslq	-136(%rbp), %rax
	cmpq	-192(%rbp), %rax
	jge	.LBB4_36
# BB#10:                                # %for.body.42
                                        #   in Loop: Header=BB4_9 Depth=2
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movslq	-176(%rbp), %rax
	movslq	-136(%rbp), %rcx
	imulq	-184(%rbp), %rcx
	addq	%rcx, %rax
	movslq	-132(%rbp), %rcx
	imulq	%rcx, %rax
	movq	%rax, -248(%rbp)
	cvtsi2ssl	-136(%rbp), %xmm1
	subss	-216(%rbp), %xmm1
	movd	%xmm1, %edx
	xorl	$2147483648, %edx       # imm = 0x80000000
	movd	%edx, %xmm1
	cvtss2sd	%xmm1, %xmm1
	subsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -200(%rbp)
	movss	-200(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	mulss	-200(%rbp), %xmm0
	movss	%xmm0, -208(%rbp)
	movss	-208(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	-228(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movss	-228(%rbp), %xmm2       # xmm2 = mem[0],zero,zero,zero
	mulss	-204(%rbp), %xmm2
	divss	-224(%rbp), %xmm2
	subss	%xmm2, %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB4_16
# BB#11:                                # %if.then.61
                                        #   in Loop: Header=BB4_9 Depth=2
	leaq	-236(%rbp), %rdi
	leaq	-240(%rbp), %rsi
	movss	-224(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	-228(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movss	-232(%rbp), %xmm2       # xmm2 = mem[0],zero,zero,zero
	movss	-196(%rbp), %xmm3       # xmm3 = mem[0],zero,zero,zero
	movss	-200(%rbp), %xmm4       # xmm4 = mem[0],zero,zero,zero
	callq	find_projected_pos
	movss	-240(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movd	%xmm0, %eax
	xorl	$2147483648, %eax       # imm = 0x80000000
	movd	%eax, %xmm0
	movss	%xmm0, -240(%rbp)
	movss	-240(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-216(%rbp), %xmm0
	cvttss2si	%xmm0, %eax
	movslq	%eax, %rsi
	imulq	-184(%rbp), %rsi
	movss	-236(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	addss	-212(%rbp), %xmm0
	cvttss2si	%xmm0, %eax
	movslq	%eax, %rdi
	addq	%rdi, %rsi
	movslq	-132(%rbp), %rdi
	imulq	%rdi, %rsi
	movq	%rsi, -256(%rbp)
	movl	$0, -172(%rbp)
.LBB4_12:                               # %for.cond.73
                                        #   Parent Loop BB4_7 Depth=1
                                        #     Parent Loop BB4_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-172(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jge	.LBB4_15
# BB#13:                                # %for.body.76
                                        #   in Loop: Header=BB4_12 Depth=3
	movq	-256(%rbp), %rax
	movslq	-172(%rbp), %rcx
	addq	%rcx, %rax
	movq	-160(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movq	-248(%rbp), %rax
	movslq	-172(%rbp), %rcx
	addq	%rcx, %rax
	movq	-168(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
# BB#14:                                # %for.inc
                                        #   in Loop: Header=BB4_12 Depth=3
	movl	-172(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -172(%rbp)
	jmp	.LBB4_12
.LBB4_15:                               # %for.end
                                        #   in Loop: Header=BB4_9 Depth=2
	jmp	.LBB4_34
.LBB4_16:                               # %if.else.82
                                        #   in Loop: Header=BB4_9 Depth=2
	cmpl	$0, lvals+8
	je	.LBB4_22
# BB#17:                                # %if.then.84
                                        #   in Loop: Header=BB4_9 Depth=2
	movl	$0, -172(%rbp)
.LBB4_18:                               # %for.cond.85
                                        #   Parent Loop BB4_7 Depth=1
                                        #     Parent Loop BB4_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-172(%rbp), %eax
	cmpl	-132(%rbp), %eax
	jge	.LBB4_21
# BB#19:                                # %for.body.88
                                        #   in Loop: Header=BB4_18 Depth=3
	movq	-248(%rbp), %rax
	movslq	-172(%rbp), %rcx
	addq	%rcx, %rax
	movq	-160(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movq	-248(%rbp), %rax
	movslq	-172(%rbp), %rcx
	addq	%rcx, %rax
	movq	-168(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
# BB#20:                                # %for.inc.95
                                        #   in Loop: Header=BB4_18 Depth=3
	movl	-172(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -172(%rbp)
	jmp	.LBB4_18
.LBB4_21:                               # %for.end.97
                                        #   in Loop: Header=BB4_9 Depth=2
	jmp	.LBB4_33
.LBB4_22:                               # %if.else.98
                                        #   in Loop: Header=BB4_9 Depth=2
	cmpl	$0, lvals+16
	je	.LBB4_24
# BB#23:                                # %if.then.100
                                        #   in Loop: Header=BB4_9 Depth=2
	movb	$0, -292(%rbp)
	jmp	.LBB4_25
.LBB4_24:                               # %if.else.101
                                        #   in Loop: Header=BB4_9 Depth=2
	movb	$-1, -292(%rbp)
.LBB4_25:                               # %if.end.102
                                        #   in Loop: Header=BB4_9 Depth=2
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$5, %rdx
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	movq	%rdx, -328(%rbp)        # 8-byte Spill
	ja	.LBB4_32
# BB#46:                                # %if.end.102
                                        #   in Loop: Header=BB4_9 Depth=2
	movq	-320(%rbp), %rax        # 8-byte Reload
	movq	.LJTI4_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB4_26:                               # %sw.bb
                                        #   in Loop: Header=BB4_9 Depth=2
	movb	-292(%rbp), %al
	movq	-248(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movb	%al, 1(%rdx,%rcx)
.LBB4_27:                               # %sw.bb.105
                                        #   in Loop: Header=BB4_9 Depth=2
	movq	-248(%rbp), %rax
	movq	-168(%rbp), %rcx
	movb	$0, (%rcx,%rax)
	jmp	.LBB4_32
.LBB4_28:                               # %sw.bb.108
                                        #   in Loop: Header=BB4_9 Depth=2
	movb	-292(%rbp), %al
	movq	-248(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movb	%al, 3(%rdx,%rcx)
.LBB4_29:                               # %sw.bb.111
                                        #   in Loop: Header=BB4_9 Depth=2
	movb	-289(%rbp), %al
	movq	-248(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movb	%al, (%rdx,%rcx)
	movb	-291(%rbp), %al
	movq	-248(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movb	%al, 1(%rdx,%rcx)
	movb	-290(%rbp), %al
	movq	-248(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movb	%al, 2(%rdx,%rcx)
	jmp	.LBB4_32
.LBB4_30:                               # %sw.bb.118
                                        #   in Loop: Header=BB4_9 Depth=2
	movb	-292(%rbp), %al
	movq	-248(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movb	%al, 1(%rdx,%rcx)
.LBB4_31:                               # %sw.bb.121
                                        #   in Loop: Header=BB4_9 Depth=2
	movb	-289(%rbp), %al
	movq	-248(%rbp), %rcx
	movq	-168(%rbp), %rdx
	movb	%al, (%rdx,%rcx)
.LBB4_32:                               # %sw.epilog
                                        #   in Loop: Header=BB4_9 Depth=2
	jmp	.LBB4_33
.LBB4_33:                               # %if.end.124
                                        #   in Loop: Header=BB4_9 Depth=2
	jmp	.LBB4_34
.LBB4_34:                               # %if.end.125
                                        #   in Loop: Header=BB4_9 Depth=2
	jmp	.LBB4_35
.LBB4_35:                               # %for.inc.126
                                        #   in Loop: Header=BB4_9 Depth=2
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	jmp	.LBB4_9
.LBB4_36:                               # %for.end.128
                                        #   in Loop: Header=BB4_7 Depth=1
	cmpq	$0, -16(%rbp)
	jne	.LBB4_40
# BB#37:                                # %if.then.130
                                        #   in Loop: Header=BB4_7 Depth=1
	movl	$5, %eax
	movq	-184(%rbp), %rcx
	movslq	-176(%rbp), %rdx
	subq	%rdx, %rcx
	movl	%ecx, %esi
	movl	%eax, -332(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-332(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cmpl	$0, %edx
	jne	.LBB4_39
# BB#38:                                # %if.then.136
                                        #   in Loop: Header=BB4_7 Depth=1
	cvtsi2sdl	-176(%rbp), %xmm0
	cvtsi2sdq	-184(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_progress_update
	movl	%eax, -336(%rbp)        # 4-byte Spill
.LBB4_39:                               # %if.end.141
                                        #   in Loop: Header=BB4_7 Depth=1
	jmp	.LBB4_40
.LBB4_40:                               # %if.end.142
                                        #   in Loop: Header=BB4_7 Depth=1
	jmp	.LBB4_41
.LBB4_41:                               # %for.inc.143
                                        #   in Loop: Header=BB4_7 Depth=1
	movl	-176(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -176(%rbp)
	jmp	.LBB4_7
.LBB4_42:                               # %for.end.145
	cmpq	$0, -16(%rbp)
	je	.LBB4_44
# BB#43:                                # %if.then.147
	movq	-16(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movslq	-132(%rbp), %rax
	imulq	-184(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, %edx
	callq	gimp_preview_draw_buffer
	jmp	.LBB4_45
.LBB4_44:                               # %if.else.151
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	callq	gimp_progress_update
	leaq	-120(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movl	-140(%rbp), %edx
	movl	-144(%rbp), %ecx
	movq	-184(%rbp), %r8
	movl	%r8d, %r9d
	movq	-192(%rbp), %r8
	movl	%r8d, %r10d
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	%eax, -340(%rbp)        # 4-byte Spill
	callq	gimp_pixel_rgn_set_rect
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_flush
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movl	(%rdi), %edi
	callq	gimp_drawable_merge_shadow
	movq	-8(%rbp), %r11
	movl	(%r11), %edi
	movl	-140(%rbp), %esi
	movl	-144(%rbp), %edx
	movl	-148(%rbp), %ecx
	subl	-140(%rbp), %ecx
	movl	-152(%rbp), %r8d
	subl	-144(%rbp), %r8d
	movl	%eax, -344(%rbp)        # 4-byte Spill
	callq	gimp_drawable_update
	movl	%eax, -348(%rbp)        # 4-byte Spill
.LBB4_45:                               # %if.end.161
	movq	-160(%rbp), %rdi
	callq	g_free
	movq	-168(%rbp), %rdi
	callq	g_free
	addq	$368, %rsp              # imm = 0x170
	popq	%rbp
	retq
.Lfunc_end4:
	.size	drawlens, .Lfunc_end4-drawlens
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI4_0:
	.quad	.LBB4_29
	.quad	.LBB4_28
	.quad	.LBB4_31
	.quad	.LBB4_30
	.quad	.LBB4_27
	.quad	.LBB4_26

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4609753056924675352     # double 1.5707963267948966
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI5_1:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	find_projected_pos,@function
find_projected_pos:                     # @find_projected_pos
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
	subq	$112, %rsp
	movss	.LCPI5_1, %xmm5         # xmm5 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
	movss	%xmm1, -8(%rbp)
	movss	%xmm2, -12(%rbp)
	movss	%xmm3, -16(%rbp)
	movss	%xmm4, -20(%rbp)
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movss	%xmm5, -64(%rbp)
	cvtsd2ss	lvals, %xmm0
	movss	%xmm0, -68(%rbp)
	movss	-16(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	-16(%rbp), %xmm0
	divss	-4(%rbp), %xmm0
	subss	%xmm0, %xmm5
	movss	-20(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	-20(%rbp), %xmm0
	divss	-8(%rbp), %xmm0
	subss	%xmm0, %xmm5
	mulss	-12(%rbp), %xmm5
	cvtss2sd	%xmm5, %xmm0
	callq	sqrt
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -44(%rbp)
	cvtss2sd	-16(%rbp), %xmm0
	movss	-16(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	-16(%rbp), %xmm1
	movss	-44(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	mulss	-44(%rbp), %xmm2
	addss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sqrt
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	acos
	movsd	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -48(%rbp)
	cvtss2sd	-48(%rbp), %xmm0
	subsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -56(%rbp)
	cvtss2sd	-56(%rbp), %xmm0
	callq	sin
	cvtss2sd	-64(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvtss2sd	-68(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	asin
	movsd	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -60(%rbp)
	cvtss2sd	-48(%rbp), %xmm0
	subsd	%xmm0, %xmm1
	cvtss2sd	-60(%rbp), %xmm0
	subsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -60(%rbp)
	cvtss2sd	-16(%rbp), %xmm0
	cvtss2sd	-60(%rbp), %xmm1
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	tan
	cvtss2sd	-44(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-88(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movq	-32(%rbp), %rsi
	movss	%xmm0, (%rsi)
	cvtss2sd	-20(%rbp), %xmm0
	movss	-20(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	mulss	-20(%rbp), %xmm1
	movss	-44(%rbp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	mulss	-44(%rbp), %xmm2
	addss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sqrt
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	acos
	movsd	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -52(%rbp)
	cvtss2sd	-52(%rbp), %xmm0
	subsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -56(%rbp)
	cvtss2sd	-56(%rbp), %xmm0
	callq	sin
	cvtss2sd	-64(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	cvtss2sd	-68(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	asin
	movsd	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -60(%rbp)
	cvtss2sd	-52(%rbp), %xmm0
	subsd	%xmm0, %xmm1
	cvtss2sd	-60(%rbp), %xmm0
	subsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -60(%rbp)
	cvtss2sd	-20(%rbp), %xmm0
	cvtss2sd	-60(%rbp), %xmm1
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	tan
	cvtss2sd	-44(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-104(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movq	-40(%rbp), %rsi
	movss	%xmm0, (%rsi)
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	find_projected_pos, .Lfunc_end5-find_projected_pos
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
	.asciz	"refraction"
	.size	.L.str.6, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Lens refraction index"
	.size	.L.str.7, 22

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"keep-surroundings"
	.size	.L.str.8, 18

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Keep lens surroundings { TRUE, FALSE }"
	.size	.L.str.9, 39

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"set-background"
	.size	.L.str.10, 15

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Set lens surroundings to BG value { TRUE, FALSE }"
	.size	.L.str.11, 50

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"set-transparent"
	.size	.L.str.12, 16

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Set lens surroundings transparent { TRUE, FALSE }"
	.size	.L.str.13, 50

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"plug-in-applylens"
	.size	.L.str.14, 18

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Simulate an elliptical lens over the image"
	.size	.L.str.15, 43

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"This plug-in uses Snell's law to draw an ellipsoid lens over the image"
	.size	.L.str.16, 71

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Morten Eriksen"
	.size	.L.str.17, 15

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"1997"
	.size	.L.str.18, 5

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Apply _Lens..."
	.size	.L.str.19, 15

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"RGB*, GRAY*, INDEXED*"
	.size	.L.str.20, 22

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"<Image>/Filters/Distorts"
	.size	.L.str.21, 25

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

	.type	lvals,@object           # @lvals
	.data
	.align	8
lvals:
	.quad	4610334938539176755     # double 1.7
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.size	lvals, 24

	.type	.L.str.24,@object       # @.str.24
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.24:
	.asciz	"Applying lens"
	.size	.L.str.24, 14

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"lens-apply"
	.size	.L.str.25, 11

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Lens Effect"
	.size	.L.str.26, 12

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gimp-lens-apply"
	.size	.L.str.27, 16

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
	.asciz	"_Keep original surroundings"
	.size	.L.str.31, 28

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"toggled"
	.size	.L.str.32, 8

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"_Set surroundings to index 0"
	.size	.L.str.33, 29

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"_Set surroundings to background color"
	.size	.L.str.34, 38

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"_Make surroundings transparent"
	.size	.L.str.35, 31

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"_Lens refraction index:"
	.size	.L.str.36, 24

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"value-changed"
	.size	.L.str.37, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
