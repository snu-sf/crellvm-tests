	.text
	.file	"color-to-alpha.bc"
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
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.17, %rsi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	gimp_plugin_menu_register
	movl	%eax, -68(%rbp)         # 4-byte Spill
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
	subq	$144, %rsp
	movabsq	$run.values, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -52(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -56(%rbp)
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.18, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.18, %rdi
	movabsq	$.L.str.19, %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.18, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -88(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movl	$21, run.values(%rip)
	movl	-52(%rbp), %eax
	movl	%eax, run.values+8(%rip)
	movq	-24(%rbp), %rcx
	movl	48(%rcx), %eax
	movl	%eax, -60(%rbp)
	movq	-24(%rbp), %rcx
	movl	88(%rcx), %edi
	callq	gimp_drawable_get
	movq	%rax, -48(%rbp)
	movl	-56(%rbp), %edi
	testl	%edi, %edi
	movl	%edi, -92(%rbp)         # 4-byte Spill
	je	.LBB1_3
	jmp	.LBB1_23
.LBB1_23:                               # %do.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB1_6
	jmp	.LBB1_24
.LBB1_24:                               # %do.end
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB1_11
	jmp	.LBB1_12
.LBB1_3:                                # %sw.bb
	movabsq	$.L.str.8, %rdi
	movabsq	$pvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movq	-48(%rbp), %rdi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	color_to_alpha_dialog
	cmpl	$0, %eax
	jne	.LBB1_5
# BB#4:                                 # %if.then
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
	jmp	.LBB1_22
.LBB1_5:                                # %if.end
	jmp	.LBB1_13
.LBB1_6:                                # %sw.bb.11
	cmpl	$4, -12(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then.12
	movl	$1, -52(%rbp)
.LBB1_8:                                # %if.end.13
	cmpl	$3, -52(%rbp)
	jne	.LBB1_10
# BB#9:                                 # %if.then.15
	movq	-24(%rbp), %rax
	movq	128(%rax), %rcx
	movq	%rcx, pvals
	movq	136(%rax), %rcx
	movq	%rcx, pvals+8
	movq	144(%rax), %rcx
	movq	%rcx, pvals+16
	movq	152(%rax), %rax
	movq	%rax, pvals+24
.LBB1_10:                               # %if.end.18
	jmp	.LBB1_13
.LBB1_11:                               # %sw.bb.19
	movabsq	$.L.str.8, %rdi
	movabsq	$pvals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB1_13
.LBB1_12:                               # %sw.default
	jmp	.LBB1_13
.LBB1_13:                               # %sw.epilog
	cmpl	$3, -52(%rbp)
	jne	.LBB1_19
# BB#14:                                # %land.lhs.true
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	je	.LBB1_19
# BB#15:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_item_is_layer
	cmpl	$0, %eax
	je	.LBB1_19
# BB#16:                                # %if.then.28
	movl	-60(%rbp), %edi
	callq	gimp_image_undo_group_start
	movq	-48(%rbp), %rcx
	movl	(%rcx), %edi
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	gimp_layer_add_alpha
	movq	-48(%rbp), %rcx
	movl	(%rcx), %edi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	gimp_drawable_get
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	callq	gimp_layer_get_lock_alpha
	xorl	%esi, %esi
	movl	%eax, -64(%rbp)
	movq	-48(%rbp), %rcx
	movl	(%rcx), %edi
	callq	gimp_layer_set_lock_alpha
	movabsq	$.L.str.20, %rdi
	movl	%eax, -120(%rbp)        # 4-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_progress_init
	xorl	%esi, %esi
	movabsq	$to_alpha_func, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-48(%rbp), %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	gimp_rgn_iterate2
	movq	-48(%rbp), %rcx
	movl	(%rcx), %edi
	movl	-64(%rbp), %esi
	callq	gimp_layer_set_lock_alpha
	movl	-60(%rbp), %edi
	movl	%eax, -128(%rbp)        # 4-byte Spill
	callq	gimp_image_undo_group_end
	cmpl	$1, -56(%rbp)
	movl	%eax, -132(%rbp)        # 4-byte Spill
	je	.LBB1_18
# BB#17:                                # %if.then.44
	callq	gimp_displays_flush
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB1_18:                               # %if.end.46
	jmp	.LBB1_19
.LBB1_19:                               # %if.end.47
	movq	-48(%rbp), %rdi
	callq	gimp_drawable_detach
	cmpl	$0, -56(%rbp)
	jne	.LBB1_21
# BB#20:                                # %if.then.49
	movabsq	$.L.str.8, %rdi
	movabsq	$pvals, %rax
	movl	$32, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB1_21:                               # %if.end.51
	movl	-52(%rbp), %eax
	movl	%eax, run.values+8
.LBB1_22:                               # %return
	addq	$144, %rsp
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

	.align	16, 0x90
	.type	color_to_alpha_dialog,@function
color_to_alpha_dialog:                  # @color_to_alpha_dialog
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
	subq	$272, %rsp              # imm = 0x110
.Ltmp17:
	.cfi_offset %rbx, -32
.Ltmp18:
	.cfi_offset %r14, -24
	movabsq	$.L.str.21, %rax
	movl	$1, %esi
	movq	%rdi, -24(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	movabsq	$.L.str.22, %rdi
	callq	gettext
	movabsq	$.L.str.23, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.8, %r9
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
	callq	gimp_drawable_preview_new
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
	movabsq	$.L.str.26, %rsi
	movabsq	$color_to_alpha_preview, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	xorl	%edi, %edi
	movl	$6, %esi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.27, %rsi
	movl	$15, %ecx
	movl	%ecx, %edx
	callq	g_dpgettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	movl	-172(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.28, %rdi
	callq	gettext
	movl	$40, %esi
	movl	$20, %edx
	movabsq	$pvals, %rcx
	xorl	%r8d, %r8d
	movq	%rax, %rdi
	callq	gimp_color_button_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_color_button_set_update
	movq	-56(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -196(%rbp)        # 4-byte Spill
	movl	-196(%rbp), %ecx        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.29, %rsi
	movabsq	$gimp_color_button_get_color, %rax
	movabsq	$pvals, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %r11
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-208(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.29, %rsi
	movabsq	$gimp_preview_invalidate, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-216(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.30, %rdi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
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
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
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
	addq	$272, %rsp              # imm = 0x110
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	color_to_alpha_dialog, .Lfunc_end3-color_to_alpha_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	to_alpha_func,@function
to_alpha_func:                          # @to_alpha_func
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
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	cmpl	$3, -20(%rbp)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	leaq	-64(%rbp), %rdi
	movl	$255, %r8d
	movq	-8(%rbp), %rax
	movb	(%rax), %cl
	movq	-8(%rbp), %rax
	movb	1(%rax), %dl
	movq	-8(%rbp), %rax
	movzbl	%cl, %esi
	movzbl	%dl, %edx
	movzbl	2(%rax), %ecx
	callq	gimp_rgba_set_uchar
	jmp	.LBB4_3
.LBB4_2:                                # %if.else
	leaq	-64(%rbp), %rdi
	movq	-8(%rbp), %rax
	movb	(%rax), %cl
	movq	-8(%rbp), %rax
	movb	1(%rax), %dl
	movq	-8(%rbp), %rax
	movb	2(%rax), %sil
	movq	-8(%rbp), %rax
	movzbl	%cl, %r8d
	movb	%sil, -65(%rbp)         # 1-byte Spill
	movl	%r8d, %esi
	movzbl	%dl, %edx
	movb	-65(%rbp), %cl          # 1-byte Reload
	movzbl	%cl, %ecx
	movzbl	3(%rax), %r8d
	callq	gimp_rgba_set_uchar
.LBB4_3:                                # %if.end
	leaq	-64(%rbp), %rdi
	movabsq	$pvals, %rsi
	callq	color_to_alpha
	leaq	-64(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	-16(%rbp), %rcx
	addq	$2, %rcx
	movq	-16(%rbp), %rdx
	addq	$3, %rdx
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-80(%rbp), %r8          # 8-byte Reload
	callq	gimp_rgba_get_uchar
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	to_alpha_func, .Lfunc_end4-to_alpha_func
	.cfi_endproc

	.align	16, 0x90
	.type	color_to_alpha_preview,@function
color_to_alpha_preview:                 # @color_to_alpha_preview
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
	subq	$160, %rsp
	leaq	-68(%rbp), %rax
	leaq	-72(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	12(%rsi), %ecx
	movl	%ecx, -84(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_preview_get_position
	leaq	-76(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	-8(%rbp), %rdi
	callq	gimp_preview_get_size
	movl	$1, %ecx
	movl	%ecx, %esi
	movl	-76(%rbp), %ecx
	imull	-80(%rbp), %ecx
	shll	$2, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -104(%rbp)
	movl	-76(%rbp), %ecx
	imull	-80(%rbp), %ecx
	imull	-84(%rbp), %ecx
	movslq	%ecx, %rdi
	callq	g_malloc_n
	leaq	-64(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -96(%rbp)
	movq	-16(%rbp), %rsi
	movl	-68(%rbp), %edx
	movl	-72(%rbp), %r8d
	movl	-76(%rbp), %r9d
	movl	-80(%rbp), %r10d
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-64(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movl	-68(%rbp), %edx
	movl	-72(%rbp), %ecx
	movl	-76(%rbp), %r8d
	movl	-80(%rbp), %r9d
	callq	gimp_pixel_rgn_get_rect
	movl	$0, -88(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-88(%rbp), %eax
	movl	-76(%rbp), %ecx
	imull	-80(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB5_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-96(%rbp), %rdx
	movl	-88(%rbp), %eax
	imull	-84(%rbp), %eax
	movslq	%eax, %rsi
	addq	%rsi, %rdx
	movq	-104(%rbp), %rsi
	movl	-88(%rbp), %eax
	shll	$2, %eax
	movslq	%eax, %rdi
	addq	%rdi, %rsi
	movl	-84(%rbp), %eax
	movq	%rdx, %rdi
	movl	%eax, %edx
	callq	to_alpha_func
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB5_1
.LBB5_4:                                # %for.end
	movq	-96(%rbp), %rdi
	callq	g_free
	cmpl	$4, -84(%rbp)
	jne	.LBB5_6
# BB#5:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movl	-76(%rbp), %eax
	shll	$2, %eax
	movl	%eax, %edx
	callq	gimp_preview_draw_buffer
	jmp	.LBB5_7
.LBB5_6:                                # %if.else
	movq	-8(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_preview_area_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %r9d
	movl	-76(%rbp), %edx
	movl	-80(%rbp), %r8d
	movq	-104(%rbp), %rsi
	movl	-76(%rbp), %r10d
	shll	$2, %r10d
	movq	%rax, %rdi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -132(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-132(%rbp), %ecx        # 4-byte Reload
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	gimp_preview_area_draw
.LBB5_7:                                # %if.end
	movq	-104(%rbp), %rdi
	callq	g_free
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	color_to_alpha_preview, .Lfunc_end5-color_to_alpha_preview
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4547007122018943789     # double 1.0E-4
.LCPI6_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	color_to_alpha,@function
color_to_alpha:                         # @color_to_alpha
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
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movsd	24(%rsi), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, -24(%rbp)
	movq	-16(%rbp), %rsi
	ucomisd	(%rsi), %xmm0
	jbe	.LBB6_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	jmp	.LBB6_9
.LBB6_2:                                # %if.else
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	ucomisd	(%rax), %xmm0
	jbe	.LBB6_4
# BB#3:                                 # %if.then.7
	movsd	.LCPI6_1, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	(%rax), %xmm1
	movq	-16(%rbp), %rax
	subsd	(%rax), %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)
	jmp	.LBB6_8
.LBB6_4:                                # %if.else.13
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB6_6
# BB#5:                                 # %if.then.17
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	subsd	(%rax), %xmm0
	movq	-16(%rbp), %rax
	divsd	(%rax), %xmm0
	movsd	%xmm0, -48(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.24
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -48(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.26
	jmp	.LBB6_9
.LBB6_9:                                # %if.end.27
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	ucomisd	8(%rax), %xmm0
	jbe	.LBB6_11
# BB#10:                                # %if.then.29
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	jmp	.LBB6_18
.LBB6_11:                               # %if.else.32
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	ucomisd	8(%rax), %xmm0
	jbe	.LBB6_13
# BB#12:                                # %if.then.36
	movsd	.LCPI6_1, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	8(%rax), %xmm1
	movq	-16(%rbp), %rax
	subsd	8(%rax), %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)
	jmp	.LBB6_17
.LBB6_13:                               # %if.else.44
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB6_15
# BB#14:                                # %if.then.48
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	subsd	8(%rax), %xmm0
	movq	-16(%rbp), %rax
	divsd	8(%rax), %xmm0
	movsd	%xmm0, -40(%rbp)
	jmp	.LBB6_16
.LBB6_15:                               # %if.else.55
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)
.LBB6_16:                               # %if.end.57
	jmp	.LBB6_17
.LBB6_17:                               # %if.end.58
	jmp	.LBB6_18
.LBB6_18:                               # %if.end.59
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	ucomisd	16(%rax), %xmm0
	jbe	.LBB6_20
# BB#19:                                # %if.then.61
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB6_27
.LBB6_20:                               # %if.else.64
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	ucomisd	16(%rax), %xmm0
	jbe	.LBB6_22
# BB#21:                                # %if.then.68
	movsd	.LCPI6_1, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	16(%rax), %xmm1
	movq	-16(%rbp), %rax
	subsd	16(%rax), %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	jmp	.LBB6_26
.LBB6_22:                               # %if.else.76
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	16(%rax), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB6_24
# BB#23:                                # %if.then.80
	movq	-16(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	subsd	16(%rax), %xmm0
	movq	-16(%rbp), %rax
	divsd	16(%rax), %xmm0
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB6_25
.LBB6_24:                               # %if.else.87
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)
.LBB6_25:                               # %if.end.89
	jmp	.LBB6_26
.LBB6_26:                               # %if.end.90
	jmp	.LBB6_27
.LBB6_27:                               # %if.end.91
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-40(%rbp), %xmm0
	jbe	.LBB6_32
# BB#28:                                # %if.then.95
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-32(%rbp), %xmm0
	jbe	.LBB6_30
# BB#29:                                # %if.then.99
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 24(%rax)
	jmp	.LBB6_31
.LBB6_30:                               # %if.else.102
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 24(%rax)
.LBB6_31:                               # %if.end.105
	jmp	.LBB6_36
.LBB6_32:                               # %if.else.106
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-32(%rbp), %xmm0
	jbe	.LBB6_34
# BB#33:                                # %if.then.110
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 24(%rax)
	jmp	.LBB6_35
.LBB6_34:                               # %if.else.113
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 24(%rax)
.LBB6_35:                               # %if.end.116
	jmp	.LBB6_36
.LBB6_36:                               # %if.end.117
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	ucomisd	24(%rax), %xmm0
	jbe	.LBB6_38
# BB#37:                                # %if.then.120
	jmp	.LBB6_39
.LBB6_38:                               # %if.end.121
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	(%rax), %xmm0
	movq	-8(%rbp), %rax
	divsd	24(%rax), %xmm0
	movq	-16(%rbp), %rax
	addsd	(%rax), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	8(%rax), %xmm0
	movq	-8(%rbp), %rax
	divsd	24(%rax), %xmm0
	movq	-16(%rbp), %rax
	addsd	8(%rax), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	movq	-8(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	16(%rax), %xmm0
	movq	-8(%rbp), %rax
	divsd	24(%rax), %xmm0
	movq	-16(%rbp), %rax
	addsd	16(%rax), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	mulsd	24(%rax), %xmm0
	movsd	%xmm0, 24(%rax)
.LBB6_39:                               # %return
	popq	%rbp
	retq
.Lfunc_end6:
	.size	color_to_alpha, .Lfunc_end6-color_to_alpha
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
	.long	10                      # 0xa
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
	.asciz	"color"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Color to remove"
	.size	.L.str.7, 16

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"plug-in-colortoalpha"
	.size	.L.str.8, 21

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Convert a specified color to transparency"
	.size	.L.str.9, 42

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"This replaces as much of a given color as possible in each pixel with a corresponding amount of alpha, then readjusts the color accordingly."
	.size	.L.str.10, 141

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Seth Burgess"
	.size	.L.str.11, 13

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Seth Burgess <sjburges@gimp.org>"
	.size	.L.str.12, 33

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"7th Aug 1999"
	.size	.L.str.13, 13

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Color to _Alpha..."
	.size	.L.str.14, 19

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"RGB*"
	.size	.L.str.15, 5

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"<Image>/Colors/Modify"
	.size	.L.str.16, 22

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"<Image>/Layer/Transparency/Modify"
	.size	.L.str.17, 34

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.18, 20

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"UTF-8"
	.size	.L.str.19, 6

	.type	pvals,@object           # @pvals
	.data
	.align	8
pvals:
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
	.size	pvals, 32

	.type	.L.str.20,@object       # @.str.20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"Removing color"
	.size	.L.str.20, 15

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"color-to-aplha"
	.size	.L.str.21, 15

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Color to Alpha"
	.size	.L.str.22, 15

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gimp-color-to-aplha"
	.size	.L.str.23, 20

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
	.asciz	"color-to-alpha\004From:"
	.size	.L.str.27, 21

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Color to Alpha Color Picker"
	.size	.L.str.28, 28

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"color-changed"
	.size	.L.str.29, 14

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"to alpha"
	.size	.L.str.30, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
