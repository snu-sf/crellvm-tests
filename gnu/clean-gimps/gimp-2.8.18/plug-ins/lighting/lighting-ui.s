	.text
	.file	"lighting-ui.bc"
	.globl	main_dialog
	.align	16, 0x90
	.type	main_dialog,@function
main_dialog:                            # @main_dialog
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
	pushq	%rbx
	subq	$392, %rsp              # imm = 0x188
.Ltmp3:
	.cfi_offset %rbx, -24
	movabsq	$.L.str, %rax
	xorl	%esi, %esi
	movq	%rdi, -16(%rbp)
	movl	$0, -76(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	movabsq	$.L.str.1, %rdi
	callq	gimp_gimprc_query
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB0_2
# BB#1:                                 # %if.then
	movq	$-1, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-72(%rbp), %rdi
	movq	%rcx, %rdx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movq	-96(%rbp), %r8          # 8-byte Reload
	callq	g_filename_from_utf8
	movq	%rax, lighting_effects_path
	movq	-72(%rbp), %rdi
	callq	g_free
.LBB0_2:                                # %if.end
	callq	lighting_stock_init
	movabsq	$.L.str.2, %rdi
	callq	gettext
	movabsq	$.L.str.3, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.6, %r11
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
	movq	%rax, appwin
	movq	appwin, %rax
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
	movq	appwin, %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	xorl	%edi, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	appwin, %rax
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
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	movl	-156(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	movl	-172(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_frame_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-32(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -196(%rbp)        # 4-byte Spill
	movl	-196(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movq	appwin, %rdi
	callq	gtk_widget_realize
	callq	gtk_drawing_area_new
	movl	$200, %ecx
	movq	%rax, previewarea
	movq	previewarea, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_widget_set_size_request
	movl	$802, %esi              # imm = 0x322
	movq	previewarea, %rdi
	callq	gtk_widget_set_events
	movabsq	$.L.str.7, %rsi
	movabsq	$preview_events, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	previewarea, %rdi
	movq	previewarea, %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.8, %rsi
	movabsq	$preview_expose, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	previewarea, %rdx
	movq	previewarea, %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-48(%rbp), %rcx
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	previewarea, %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	previewarea, %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.9, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_button_new_with_mnemonic
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -252(%rbp)        # 4-byte Spill
	movl	-252(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movabsq	$.L.str.10, %rsi
	movabsq	$preview_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-56(%rbp), %r11
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-264(%rbp), %rcx        # 8-byte Reload
	movq	-264(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-56(%rbp), %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movabsq	$.L.str.11, %rdi
	movq	-56(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.12, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	mapvals+916, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-40(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movabsq	$.L.str.13, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$mapvals, %rdi
	addq	$916, %rdi              # imm = 0x394
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %r11
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-304(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.13, %rsi
	movabsq	$interactive_preview_callback, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rdi
	movq	%rdx, -312(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-312(%rbp), %rcx        # 8-byte Reload
	movq	-312(%rbp), %r8         # 8-byte Reload
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-64(%rbp), %rdi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movabsq	$.L.str.14, %rdi
	movq	-64(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movq	-24(%rbp), %rdi
	callq	create_main_notebook
	movq	appwin, %rdi
	callq	gtk_widget_show
	movq	previewarea, %rdi
	callq	gtk_widget_get_display
	movl	$60, %esi
	movq	%rax, %rdi
	callq	gdk_cursor_new_for_display
	movq	%rax, -88(%rbp)
	movq	previewarea, %rdi
	callq	gtk_widget_get_window
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gdk_window_set_cursor
	movq	-88(%rbp), %rdi
	callq	gdk_cursor_unref
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	callq	image_setup
	movl	%eax, -340(%rbp)        # 4-byte Spill
	callq	preview_compute
	movq	appwin, %rcx
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	jne	.LBB0_4
# BB#3:                                 # %if.then.54
	movl	$1, -76(%rbp)
.LBB0_4:                                # %if.end.55
	cmpq	$0, preview_rgb_data
	je	.LBB0_6
# BB#5:                                 # %if.then.57
	movq	preview_rgb_data, %rdi
	callq	g_free
.LBB0_6:                                # %if.end.58
	cmpq	$0, preview_surface
	je	.LBB0_8
# BB#7:                                 # %if.then.60
	movq	preview_surface, %rdi
	callq	cairo_surface_destroy
.LBB0_8:                                # %if.end.61
	movq	appwin, %rdi
	callq	gtk_widget_destroy
	movl	-76(%rbp), %eax
	addq	$392, %rsp              # imm = 0x188
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	main_dialog, .Lfunc_end0-main_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	preview_callback,@function
preview_callback:                       # @preview_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp4:
	.cfi_def_cfa_offset 16
.Ltmp5:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp6:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	preview_compute
	movq	previewarea, %rdi
	callq	gtk_widget_queue_draw
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	preview_callback, .Lfunc_end1-preview_callback
	.cfi_endproc

	.align	16, 0x90
	.type	create_main_notebook,@function
create_main_notebook:                   # @create_main_notebook
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp9:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	callq	gtk_notebook_new
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, options_note_book
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	options_note_book, %rsi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_container_add
	callq	create_options_page
	movabsq	$.L.str.15, %rdi
	movq	%rax, -16(%rbp)
	movq	options_note_book, %rax
	movq	-16(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_notebook_append_page
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	create_light_page
	movabsq	$.L.str.16, %rdi
	movq	%rax, -16(%rbp)
	movq	options_note_book, %rax
	movq	-16(%rbp), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_notebook_append_page
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	create_material_page
	movabsq	$.L.str.17, %rdi
	movq	%rax, -16(%rbp)
	movq	options_note_book, %rax
	movq	-16(%rbp), %rsi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_notebook_append_page
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	create_bump_page
	movabsq	$.L.str.18, %rdi
	movq	%rax, -16(%rbp)
	movq	options_note_book, %rax
	movq	-16(%rbp), %rsi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_notebook_append_page
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	create_environment_page
	movabsq	$.L.str.19, %rdi
	movq	%rax, -16(%rbp)
	movq	options_note_book, %rax
	movq	-16(%rbp), %rsi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_notebook_append_page
	movq	options_note_book, %rdx
	movl	%eax, -164(%rbp)        # 4-byte Spill
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_show
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	create_main_notebook, .Lfunc_end2-create_main_notebook
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4611686018427387904     # double 2
.LCPI3_1:
	.quad	4576918229304087675     # double 0.01
.LCPI3_2:
	.quad	4587366580439587226     # double 0.050000000000000003
	.text
	.align	16, 0x90
	.type	create_options_page,@function
create_options_page:                    # @create_options_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp12:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$328, %rsp              # imm = 0x148
.Ltmp13:
	.cfi_offset %rbx, -24
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movabsq	$.L.str.20, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	movl	-76(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.21, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	mapvals+888, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	movl	-108(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movabsq	$.L.str.13, %rsi
	movabsq	$toggle_update, %rax
	movabsq	$mapvals, %rdi
	addq	$888, %rdi              # imm = 0x378
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %r10
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-120(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-40(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movabsq	$.L.str.22, %rdi
	movq	-40(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.23, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	mapvals+884, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-32(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movabsq	$.L.str.13, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$mapvals, %rdi
	addq	$884, %rdi              # imm = 0x374
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %r10
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-160(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-40(%rbp), %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movabsq	$.L.str.24, %rdi
	movq	-40(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.25, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	mapvals+908, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-32(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movabsq	$.L.str.13, %rsi
	movabsq	$toggle_update, %rax
	movabsq	$mapvals, %rdi
	addq	$908, %rdi              # imm = 0x38C
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %r10
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-200(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-40(%rbp), %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movabsq	$.L.str.26, %rdi
	movq	-40(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movl	$1, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$12, %r8d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -228(%rbp)        # 4-byte Spill
	movl	-228(%rbp), %ecx        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movq	-48(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.27, %rdi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$100, %r8d
	movl	$6, %r9d
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_2, %xmm4         # xmm4 = mem[0],zero
	movl	$3, %edx
	movl	$1, %r11d
	movabsq	$.L.str.28, %rsi
	movabsq	$.L.str.4, %rdi
	movsd	mapvals+32, %xmm1       # xmm1 = mem[0],zero
	movq	-248(%rbp), %r10        # 8-byte Reload
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -264(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -268(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	%rax, %rcx
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-280(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$3, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-280(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-280(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	-256(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 24(%rsp)
	movl	%r11d, -284(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movabsq	$.L.str.29, %rsi
	movabsq	$distance_update, %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	xorl	%r9d, %r9d
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-296(%rbp), %rcx        # 8-byte Reload
	movq	-296(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-16(%rbp), %rdi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-16(%rbp), %rax
	addq	$328, %rsp              # imm = 0x148
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	create_options_page, .Lfunc_end3-create_options_page
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI4_0:
	.long	1065353216              # float 1
.LCPI4_1:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_2:
	.quad	-4586634745500139520    # double -100
.LCPI4_3:
	.quad	4636737291354636288     # double 100
.LCPI4_4:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI4_5:
	.quad	4607182418800017408     # double 1
.LCPI4_6:
	.quad	4576918229304087675     # double 0.01
	.text
	.align	16, 0x90
	.type	create_light_page,@function
create_light_page:                      # @create_light_page
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
	subq	$992, %rsp              # imm = 0x3E0
.Ltmp17:
	.cfi_offset %rbx, -48
.Ltmp18:
	.cfi_offset %r12, -40
.Ltmp19:
	.cfi_offset %r14, -32
.Ltmp20:
	.cfi_offset %r15, -24
	movl	$1, %edi
	movl	$12, %esi
	movl	mapvals+924, %eax
	movl	%eax, -84(%rbp)
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movabsq	$.L.str.30, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	movl	-108(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movl	$8, %ecx
	xorl	%edx, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movl	$12, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing
	movq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %esi
	movl	$12, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing
	movabsq	$.L.str.31, %rdi
	callq	gettext
	movabsq	$.L.str.32, %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.33, %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.34, %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.35, %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.36, %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %ecx
	movl	$2, %r9d
	movl	$3, %edx
	movl	$4, %r8d
	movl	$5, %r10d
	xorl	%r11d, %r11d
	movl	%r11d, %edi
	movq	-160(%rbp), %rbx        # 8-byte Reload
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	-168(%rbp), %r14        # 8-byte Reload
	movl	%edx, -204(%rbp)        # 4-byte Spill
	movq	%r14, %rdx
	movq	-176(%rbp), %r15        # 8-byte Reload
	movl	%r8d, -208(%rbp)        # 4-byte Spill
	movq	%r15, %r8
	movq	-184(%rbp), %r12        # 8-byte Reload
	movq	%r12, (%rsp)
	movl	$3, 8(%rsp)
	movq	-192(%rbp), %r12        # 8-byte Reload
	movq	%r12, 16(%rsp)
	movl	$4, 24(%rsp)
	movq	%rax, 32(%rsp)
	movl	$5, 40(%rsp)
	movq	$0, 48(%rsp)
	movb	$0, %al
	movl	%r10d, -212(%rbp)       # 4-byte Spill
	callq	gimp_int_combo_box_new
	movq	%rax, lightselect_combo
	movq	lightselect_combo, %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-84(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movq	-56(%rbp), %rdx
	movl	%eax, -228(%rbp)        # 4-byte Spill
	movq	%rdx, -240(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$2, %r9d
	movl	$1, %r10d
	movq	lightselect_combo, %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -244(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	-244(%rbp), %r8d        # 4-byte Reload
	movl	%r10d, %r9d
	callq	gtk_table_attach_defaults
	movabsq	$.L.str.37, %rsi
	movabsq	$lightselect_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	lightselect_combo, %rbx
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %rdx
	movq	-256(%rbp), %rcx        # 8-byte Reload
	movq	-256(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	lightselect_combo, %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movabsq	$.L.str.38, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-56(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %r9d
	movl	$2, %r10d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	callq	gtk_table_attach_defaults
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.39, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-56(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$2, %r8d
	movl	$3, %r9d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_table_attach_defaults
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.40, %rsi
	movl	$13, %ecx
	movl	%ecx, %edx
	callq	g_dpgettext
	movabsq	$.L.str.41, %rdi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.42, %rdi
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$3, %esi
	movl	$1, %ecx
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	-312(%rbp), %rbx        # 8-byte Reload
	movq	%rdx, -320(%rbp)        # 8-byte Spill
	movq	%rbx, %rdx
	movq	%rax, %r8
	movq	$0, (%rsp)
	movb	$0, %al
	callq	gimp_int_combo_box_new
	movq	%rax, light_type_combo
	movq	light_type_combo, %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$mapvals, %rdx
	addq	$64, %rdx
	movslq	-84(%rbp), %rsi
	imulq	$104, %rsi, %rsi
	addq	%rsi, %rdx
	movl	(%rdx), %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movq	-56(%rbp), %rdx
	movl	%eax, -332(%rbp)        # 4-byte Spill
	movq	%rdx, -344(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movl	$2, %r9d
	movq	light_type_combo, %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -348(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	-348(%rbp), %r8d        # 4-byte Reload
	callq	gtk_table_attach_defaults
	movq	light_type_combo, %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.37, %rsi
	movabsq	$apply_settings, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	light_type_combo, %rbx
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %rdx
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	-360(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.43, %rdi
	movq	light_type_combo, %rcx
	movq	%rax, -368(%rbp)        # 8-byte Spill
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.44, %rdi
	callq	gettext
	movl	$64, %esi
	movl	$16, %edx
	xorl	%r8d, %r8d
	movabsq	$mapvals, %rcx
	addq	$64, %rcx
	movslq	-84(%rbp), %rdi
	imulq	$104, %rdi, %rdi
	addq	%rdi, %rcx
	addq	$56, %rcx
	movq	%rax, %rdi
	callq	gimp_color_button_new
	movq	%rax, colorbutton
	movq	colorbutton, %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_color_button_set_update
	movq	colorbutton, %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	$2, %r8d
	movl	$3, %r9d
	movq	colorbutton, %rsi
	movq	%rax, %rdi
	movl	%r8d, %ecx
	callq	gtk_table_attach_defaults
	movabsq	$.L.str.45, %rsi
	movabsq	$apply_settings, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	colorbutton, %rbx
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %rdx
	movq	-400(%rbp), %rcx        # 8-byte Reload
	movq	-400(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.46, %rdi
	movq	colorbutton, %rcx
	movq	%rax, -408(%rbp)        # 8-byte Spill
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	leaq	-72(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_3, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_6, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_4, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %esi
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-84(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	movsd	88(%rax), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -424(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-424(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-424(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-424(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, spin_intensity
	movq	-56(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.47, %rdi
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$3, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	spin_intensity, %r8
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.29, %rsi
	movabsq	$apply_settings, %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	xorl	%r9d, %r9d
	movq	-72(%rbp), %r8
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rcx, %rdx
	movq	-448(%rbp), %rcx        # 8-byte Reload
	movq	-448(%rbp), %r8         # 8-byte Reload
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.48, %rdi
	movq	spin_intensity, %rcx
	movq	%rax, -464(%rbp)        # 8-byte Spill
	movq	%rcx, -472(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.49, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-56(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %edx
	movl	$4, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_table_attach_defaults
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	leaq	-72(%rbp), %rdi
	movsd	.LCPI4_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_3, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_4, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_5, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm0, %xmm0
	movl	$2, %esi
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-84(%rbp), %rbx
	imulq	$104, %rbx, %rbx
	addq	%rbx, %rax
	movsd	8(%rax), %xmm5          # xmm5 = mem[0],zero
	movsd	%xmm0, -496(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movsd	-496(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-496(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, spin_pos_x
	movq	-56(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.50, %rdi
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$2, %esi
	movl	$1, %ecx
	xorps	%xmm0, %xmm0
	movss	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	spin_pos_x, %r8
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %edx
	movl	%ecx, -516(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-516(%rbp), %r9d        # 4-byte Reload
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.29, %rsi
	movabsq	$apply_settings, %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	xorl	%r9d, %r9d
	movq	-72(%rbp), %r8
	movq	%rdi, -528(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rcx, %rdx
	movq	-528(%rbp), %rcx        # 8-byte Reload
	movq	-528(%rbp), %r8         # 8-byte Reload
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.51, %rdi
	movq	spin_pos_x, %rcx
	movq	%rax, -544(%rbp)        # 8-byte Spill
	movq	%rcx, -552(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	leaq	-72(%rbp), %rdi
	movsd	.LCPI4_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_3, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_4, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_5, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm0, %xmm0
	movl	$2, %esi
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-84(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	movsd	16(%rax), %xmm5         # xmm5 = mem[0],zero
	movsd	%xmm0, -560(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movsd	-560(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-560(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, spin_pos_y
	movq	-56(%rbp), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.52, %rdi
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$2, %r9d
	xorps	%xmm0, %xmm0
	movss	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r10d
	movq	spin_pos_y, %r8
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movl	%r9d, %edx
	movq	%rax, %rcx
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.29, %rsi
	movabsq	$apply_settings, %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	xorl	%r9d, %r9d
	movq	-72(%rbp), %r8
	movq	%rdi, -584(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rcx, %rdx
	movq	-584(%rbp), %rcx        # 8-byte Reload
	movq	-584(%rbp), %r8         # 8-byte Reload
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.53, %rdi
	movq	spin_pos_y, %rcx
	movq	%rax, -600(%rbp)        # 8-byte Spill
	movq	%rcx, -608(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	leaq	-72(%rbp), %rdi
	movsd	.LCPI4_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_3, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_4, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_5, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm0, %xmm0
	movl	$2, %esi
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-84(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	movsd	24(%rax), %xmm5         # xmm5 = mem[0],zero
	movsd	%xmm0, -616(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movsd	-616(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-616(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, spin_pos_z
	movq	-56(%rbp), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.54, %rdi
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$2, %esi
	movl	$3, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	spin_pos_z, %r8
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.29, %rsi
	movabsq	$apply_settings, %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	xorl	%r9d, %r9d
	movq	-72(%rbp), %r8
	movq	%rdi, -640(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rcx, %rdx
	movq	-640(%rbp), %rcx        # 8-byte Reload
	movq	-640(%rbp), %r8         # 8-byte Reload
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.55, %rdi
	movq	spin_pos_z, %rcx
	movq	%rax, -656(%rbp)        # 8-byte Spill
	movq	%rcx, -664(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.56, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-56(%rbp), %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$5, %edx
	movl	$6, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_table_attach_defaults
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	leaq	-72(%rbp), %rdi
	movsd	.LCPI4_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_3, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_4, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_5, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm0, %xmm0
	movl	$2, %esi
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-84(%rbp), %rbx
	imulq	$104, %rbx, %rbx
	addq	%rbx, %rax
	movsd	32(%rax), %xmm5         # xmm5 = mem[0],zero
	movsd	%xmm0, -688(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movsd	-688(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-688(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, spin_dir_x
	movq	-56(%rbp), %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-696(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.57, %rdi
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$4, %esi
	movl	$1, %ecx
	xorps	%xmm0, %xmm0
	movss	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	spin_dir_x, %r8
	movq	-704(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %edx
	movl	%ecx, -708(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-708(%rbp), %r9d        # 4-byte Reload
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.29, %rsi
	movabsq	$apply_settings, %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	xorl	%r9d, %r9d
	movq	-72(%rbp), %r8
	movq	%rdi, -720(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rcx, %rdx
	movq	-720(%rbp), %rcx        # 8-byte Reload
	movq	-720(%rbp), %r8         # 8-byte Reload
	movq	%rax, -728(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.58, %rdi
	movq	spin_dir_x, %rcx
	movq	%rax, -736(%rbp)        # 8-byte Spill
	movq	%rcx, -744(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-744(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	leaq	-72(%rbp), %rdi
	movsd	.LCPI4_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_3, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_4, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_5, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm0, %xmm0
	movl	$2, %esi
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-84(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	movsd	40(%rax), %xmm5         # xmm5 = mem[0],zero
	movsd	%xmm0, -752(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movsd	-752(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-752(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, spin_dir_y
	movq	-56(%rbp), %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-760(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.59, %rdi
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$4, %esi
	movl	$2, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	spin_dir_y, %r8
	movq	-768(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.29, %rsi
	movabsq	$apply_settings, %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	xorl	%r9d, %r9d
	movq	-72(%rbp), %r8
	movq	%rdi, -776(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rcx, %rdx
	movq	-776(%rbp), %rcx        # 8-byte Reload
	movq	-776(%rbp), %r8         # 8-byte Reload
	movq	%rax, -784(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.60, %rdi
	movq	spin_dir_y, %rcx
	movq	%rax, -792(%rbp)        # 8-byte Spill
	movq	%rcx, -800(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-800(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	leaq	-72(%rbp), %rdi
	movsd	.LCPI4_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_3, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_4, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_5, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm0, %xmm0
	movl	$2, %esi
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-84(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	movsd	48(%rax), %xmm5         # xmm5 = mem[0],zero
	movsd	%xmm0, -808(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movsd	-808(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-808(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, spin_dir_z
	movq	-56(%rbp), %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-816(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.61, %rdi
	movq	%rax, -824(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$4, %esi
	movl	$3, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	spin_dir_z, %r8
	movq	-824(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.29, %rsi
	movabsq	$apply_settings, %rcx
	xorl	%edx, %edx
	movl	%edx, %edi
	xorl	%r9d, %r9d
	movq	-72(%rbp), %r8
	movq	%rdi, -832(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rcx, %rdx
	movq	-832(%rbp), %rcx        # 8-byte Reload
	movq	-832(%rbp), %r8         # 8-byte Reload
	movq	%rax, -840(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.62, %rdi
	movq	spin_dir_z, %rcx
	movq	%rax, -848(%rbp)        # 8-byte Spill
	movq	%rcx, -856(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-856(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.63, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, isolate_button
	movq	isolate_button, %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-864(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	mapvals+928, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movabsq	$.L.str.13, %rsi
	movabsq	$isolate_selected_light, %rax
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	isolate_button, %rdx
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	%rcx, -872(%rbp)        # 8-byte Spill
	movq	-872(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -880(%rbp)        # 8-byte Spill
	movq	%rcx, -888(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-888(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$5, %r8d
	movl	$6, %r9d
	movq	isolate_button, %rsi
	movq	%rax, %rdi
	callq	gtk_table_attach_defaults
	movq	isolate_button, %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.64, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -896(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-896(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movss	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI4_1, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-56(%rbp), %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-904(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$5, %esi
	movl	$12, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing
	movq	-56(%rbp), %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-912(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$2, %ecx
	movl	$6, %r8d
	movl	$7, %r9d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_table_attach_defaults
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.65, %rdi
	callq	gtk_button_new_from_stock
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -920(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-920(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movl	$4, %ecx
	movl	$6, %r8d
	movl	$7, %r9d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_table_attach_defaults
	movabsq	$.L.str.10, %rsi
	movabsq	$save_lighting_preset, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rbx
	movq	%rdi, -928(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %rdx
	movq	-928(%rbp), %rcx        # 8-byte Reload
	movq	-928(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-64(%rbp), %rdi
	movq	%rax, -936(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movabsq	$.L.str.66, %rdi
	callq	gtk_button_new_from_stock
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -944(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-944(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %edx
	movl	$6, %r9d
	movl	$7, %r10d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	callq	gtk_table_attach_defaults
	movabsq	$.L.str.10, %rsi
	movabsq	$load_lighting_preset, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rbx
	movq	%rdi, -952(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %rdx
	movq	-952(%rbp), %rcx        # 8-byte Reload
	movq	-952(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-64(%rbp), %rdi
	movq	%rax, -960(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rax
	addq	$992, %rsp              # imm = 0x3E0
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	create_light_page, .Lfunc_end4-create_light_page
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	5183643170566569984     # double 3.4028234663852886E+38
.LCPI5_1:
	.quad	4576918229304087675     # double 0.01
.LCPI5_2:
	.quad	4591870180066957722     # double 0.10000000000000001
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI5_3:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	create_material_page,@function
create_material_page:                   # @create_material_page
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
	pushq	%r14
	pushq	%rbx
	subq	$656, %rsp              # imm = 0x290
.Ltmp24:
	.cfi_offset %rbx, -32
.Ltmp25:
	.cfi_offset %r14, -24
	movl	$1, %edi
	callq	gtk_size_group_new
	movl	$1, %edi
	movl	$12, %esi
	movq	%rax, -24(%rbp)
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movabsq	$.L.str.92, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	movl	-116(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movl	$5, %edi
	movl	$4, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-64(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	movl	-148(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.93, %rdi
	movl	$4, %esi
	callq	gtk_image_new_from_stock
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.94, %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movss	.LCPI5_3, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-80(%rbp), %r8
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gtk_size_group_add_widget
	leaq	-96(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI5_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI5_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI5_2, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %esi
	movsd	mapvals+688, %xmm1      # xmm1 = mem[0],zero
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-176(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-176(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-176(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movl	$6, %r10d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -188(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.29, %rsi
	movabsq	$gimp_double_adjustment_update, %rax
	movabsq	$mapvals, %rdi
	addq	$688, %rdi              # imm = 0x2B0
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-96(%rbp), %r11
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-200(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.29, %rsi
	movabsq	$interactive_preview_callback, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rdi
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movq	-208(%rbp), %r8         # 8-byte Reload
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movabsq	$.L.str.95, %rdi
	movq	-72(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.96, %rdi
	movl	$4, %esi
	callq	gtk_image_new_from_stock
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %edx
	movl	$4, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movl	$6, %r10d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -252(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.97, %rdi
	movl	$4, %esi
	callq	gtk_image_new_from_stock
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.98, %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %ecx
	xorps	%xmm0, %xmm0
	movss	.LCPI5_3, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-80(%rbp), %r8
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %edx
	movl	%ecx, -276(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-276(%rbp), %r9d        # 4-byte Reload
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gtk_size_group_add_widget
	leaq	-96(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI5_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI5_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI5_2, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %esi
	movsd	mapvals+696, %xmm1      # xmm1 = mem[0],zero
	movsd	%xmm0, -288(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-288(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-288(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-288(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movl	$3, %ecx
	movl	$1, %r8d
	movl	$6, %r9d
	xorl	%r10d, %r10d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -300(%rbp)        # 4-byte Spill
	movl	-300(%rbp), %ebx        # 4-byte Reload
	movl	%r9d, -304(%rbp)        # 4-byte Spill
	movl	%ebx, %r9d
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -308(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.29, %rsi
	movabsq	$gimp_double_adjustment_update, %rax
	movabsq	$mapvals, %rdi
	addq	$696, %rdi              # imm = 0x2B8
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-96(%rbp), %r11
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-320(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.29, %rsi
	movabsq	$interactive_preview_callback, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rdi
	movq	%rdx, -328(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-328(%rbp), %rcx        # 8-byte Reload
	movq	-328(%rbp), %r8         # 8-byte Reload
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -344(%rbp)        # 8-byte Spill
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movabsq	$.L.str.99, %rdi
	movq	-72(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.100, %rdi
	movl	$4, %esi
	callq	gtk_image_new_from_stock
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %edx
	movl	$4, %ecx
	movl	$1, %r8d
	movl	$2, %r9d
	movl	$6, %r10d
	xorl	%ebx, %ebx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%ebx, -372(%rbp)        # 4-byte Spill
	movl	%r10d, -376(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.101, %rdi
	movl	$4, %esi
	callq	gtk_image_new_from_stock
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.102, %rdi
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI5_3, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-80(%rbp), %r8
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gtk_size_group_add_widget
	leaq	-96(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI5_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI5_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI5_2, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %esi
	movsd	mapvals+712, %xmm1      # xmm1 = mem[0],zero
	movsd	%xmm0, -400(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-400(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-400(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-400(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movl	$3, %r9d
	movl	$6, %r10d
	xorl	%ebx, %ebx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -412(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	-412(%rbp), %r8d        # 4-byte Reload
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%ebx, -416(%rbp)        # 4-byte Spill
	movl	%r10d, -420(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.29, %rsi
	movabsq	$gimp_double_adjustment_update, %rax
	movabsq	$mapvals, %rdi
	addq	$712, %rdi              # imm = 0x2C8
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-96(%rbp), %r11
	movq	%rdi, -432(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-432(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.29, %rsi
	movabsq	$interactive_preview_callback, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rdi
	movq	%rdx, -440(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-440(%rbp), %rcx        # 8-byte Reload
	movq	-440(%rbp), %r8         # 8-byte Reload
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -456(%rbp)        # 8-byte Spill
	movq	%rcx, -464(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movabsq	$.L.str.103, %rdi
	movq	-72(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.104, %rdi
	movl	$4, %esi
	callq	gtk_image_new_from_stock
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %r9d
	movl	$4, %ecx
	movl	$2, %r8d
	movl	$6, %r10d
	xorl	%ebx, %ebx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%ebx, -484(%rbp)        # 4-byte Spill
	movl	%r10d, -488(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.105, %rdi
	movl	$4, %esi
	callq	gtk_image_new_from_stock
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.106, %rdi
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$3, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI5_3, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-80(%rbp), %r8
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gtk_size_group_add_widget
	leaq	-96(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI5_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI5_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI5_2, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %esi
	movsd	mapvals+720, %xmm1      # xmm1 = mem[0],zero
	movsd	%xmm0, -512(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-512(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-512(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-512(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movl	$3, %r9d
	movl	$4, %r10d
	movl	$6, %ebx
	xorl	%r14d, %r14d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r14d, -524(%rbp)       # 4-byte Spill
	movl	%ebx, -528(%rbp)        # 4-byte Spill
	callq	gtk_table_attach
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.29, %rsi
	movabsq	$gimp_double_adjustment_update, %rax
	movabsq	$mapvals, %rdi
	addq	$720, %rdi              # imm = 0x2D0
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-96(%rbp), %r11
	movq	%rdi, -536(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-536(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.29, %rsi
	movabsq	$interactive_preview_callback, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rdi
	movq	%rdx, -544(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-544(%rbp), %rcx        # 8-byte Reload
	movq	-544(%rbp), %r8         # 8-byte Reload
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -560(%rbp)        # 8-byte Spill
	movq	%rcx, -568(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movabsq	$.L.str.107, %rdi
	movq	-72(%rbp), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.108, %rdi
	movl	$4, %esi
	callq	gtk_image_new_from_stock
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %r9d
	movl	$4, %r10d
	movl	$6, %ebx
	xorl	%r14d, %r14d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r10d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r14d, -588(%rbp)       # 4-byte Spill
	movl	%ebx, -592(%rbp)        # 4-byte Spill
	callq	gtk_table_attach
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.109, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-600(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$3, %ecx
	movl	$4, %r8d
	movl	$5, %r9d
	movl	$6, %r10d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -604(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.13, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$mapvals, %rdi
	addq	$728, %rdi              # imm = 0x2D8
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-88(%rbp), %r11
	movq	%rdi, -616(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-616(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.13, %rsi
	movabsq	$interactive_preview_callback, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rdi
	movq	%rdx, -624(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-624(%rbp), %rcx        # 8-byte Reload
	movq	-624(%rbp), %r8         # 8-byte Reload
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-32(%rbp), %rdi
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	addq	$656, %rsp              # imm = 0x290
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	create_material_page, .Lfunc_end5-create_material_page
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI6_0:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_1:
	.quad	5183643170566569984     # double 3.4028234663852886E+38
.LCPI6_2:
	.quad	4576918229304087675     # double 0.01
.LCPI6_3:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.align	16, 0x90
	.type	create_bump_page,@function
create_bump_page:                       # @create_bump_page
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
	subq	$432, %rsp              # imm = 0x1B0
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	xorl	%esi, %esi
	movl	%esi, %edi
	callq	gimp_frame_new
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	movl	-76(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.110, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	mapvals+892, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_frame_set_label_widget
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.13, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$mapvals, %rdi
	addq	$892, %rdi              # imm = 0x37C
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %r10
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.13, %rsi
	movabsq	$interactive_preview_callback, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %r8         # 8-byte Reload
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.111, %rdi
	movq	-16(%rbp), %rcx
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movl	$6, %edi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-32(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-24(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.112, %rsi
	movabsq	$.L.str.113, %rcx
	movl	$2, %r8d
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-168(%rbp), %rdx        # 8-byte Reload
	callq	g_object_bind_property
	movabsq	$bumpmap_constrain, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_drawable_combo_box_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_int_combo_box_get_active, %rcx
	movabsq	$mapvals, %rdx
	addq	$4, %rdx
	movl	mapvals+4, %esi
	movq	%rax, %rdi
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-192(%rbp), %rcx        # 8-byte Reload
	callq	gimp_int_combo_box_connect
	movabsq	$.L.str.37, %rsi
	movabsq	$mapmenu2_callback, %rcx
	movabsq	$mapvals, %rdx
	addq	$4, %rdx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdi
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-200(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-32(%rbp), %rcx
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.114, %rdi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	xorps	%xmm0, %xmm0
	movss	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r11d
	movq	-40(%rbp), %r8
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movl	%r9d, %edx
	movq	%rax, %rcx
	movl	%r11d, %r9d
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.115, %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.116, %rdi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.117, %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.118, %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %ecx
	movl	$2, %r9d
	movl	$3, %edx
	xorl	%r11d, %r11d
	movl	%r11d, %edi
	movq	-248(%rbp), %r8         # 8-byte Reload
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	-256(%rbp), %r10        # 8-byte Reload
	movl	%edx, -276(%rbp)        # 4-byte Spill
	movq	%r10, %rdx
	movq	-264(%rbp), %r8         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$3, 8(%rsp)
	movq	$0, 16(%rsp)
	movb	$0, %al
	callq	gimp_int_combo_box_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	mapvals+876, %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movabsq	$.L.str.37, %rsi
	movabsq	$mapmenu2_callback, %rdx
	movabsq	$mapvals, %rdi
	addq	$876, %rdi              # imm = 0x36C
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %r10
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	-296(%rbp), %rcx        # 8-byte Reload
	movl	%eax, -300(%rbp)        # 4-byte Spill
	callq	g_signal_connect_data
	movq	-32(%rbp), %rcx
	movq	%rax, -312(%rbp)        # 8-byte Spill
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.119, %rdi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %r9d
	xorps	%xmm0, %xmm0
	movss	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-40(%rbp), %r8
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %edx
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	leaq	-56(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI6_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI6_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI6_3, %xmm4         # xmm4 = mem[0],zero
	movl	$2, %esi
	movsd	mapvals+856, %xmm1      # xmm1 = mem[0],zero
	movsd	%xmm0, -336(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-336(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-336(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-336(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gimp_spin_button_new
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.120, %rdi
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-48(%rbp), %r8
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.29, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$mapvals, %rdi
	addq	$856, %rdi              # imm = 0x358
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %r10
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rcx, %rdx
	movq	-368(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.29, %rsi
	movabsq	$interactive_preview_callback, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	%rdx, -384(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-384(%rbp), %rcx        # 8-byte Reload
	movq	-384(%rbp), %r8         # 8-byte Reload
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.121, %rdi
	movq	-48(%rbp), %rcx
	movq	%rax, -400(%rbp)        # 8-byte Spill
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movq	-8(%rbp), %rdi
	callq	gtk_widget_show
	movq	-8(%rbp), %rax
	addq	$432, %rsp              # imm = 0x1B0
	popq	%rbp
	retq
.Lfunc_end6:
	.size	create_bump_page, .Lfunc_end6-create_bump_page
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI7_0:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	create_environment_page,@function
create_environment_page:                # @create_environment_page
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
	subq	$240, %rsp
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	xorl	%esi, %esi
	movl	%esi, %edi
	callq	gimp_frame_new
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	movl	-60(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.122, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	mapvals+896, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_frame_set_label_widget
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.13, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$mapvals, %rdi
	addq	$896, %rdi              # imm = 0x380
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %r10
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.13, %rsi
	movabsq	$interactive_preview_callback, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	-96(%rbp), %r8          # 8-byte Reload
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.123, %rdi
	movq	-16(%rbp), %rcx
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movl	$3, %edi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.112, %rsi
	movabsq	$.L.str.113, %rcx
	movl	$2, %r8d
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-152(%rbp), %rdx        # 8-byte Reload
	callq	g_object_bind_property
	movabsq	$envmap_constrain, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_drawable_combo_box_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$envmap_combo_callback, %rcx
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movl	mapvals+8, %esi
	movq	%rax, %rdi
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-176(%rbp), %rcx        # 8-byte Reload
	callq	gimp_int_combo_box_connect
	movq	-24(%rbp), %rcx
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.124, %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r8d, %r8d
	xorps	%xmm0, %xmm0
	movss	.LCPI7_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-40(%rbp), %rcx
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movl	%r8d, %esi
	movl	%r8d, %edx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movq	-208(%rbp), %r8         # 8-byte Reload
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.125, %rdi
	movq	-40(%rbp), %rcx
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movq	-8(%rbp), %rdi
	callq	gtk_widget_show
	movq	-8(%rbp), %rax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	create_environment_page, .Lfunc_end7-create_environment_page
	.cfi_endproc

	.align	16, 0x90
	.type	toggle_update,@function
toggle_update:                          # @toggle_update
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_toggle_button_update
	callq	preview_compute
	movq	previewarea, %rdi
	callq	gtk_widget_queue_draw
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	toggle_update, .Lfunc_end8-toggle_update
	.cfi_endproc

	.align	16, 0x90
	.type	distance_update,@function
distance_update:                        # @distance_update
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	%xmm0, mapvals+32
	callq	preview_compute
	movq	previewarea, %rdi
	callq	gtk_widget_queue_draw
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	distance_update, .Lfunc_end9-distance_update
	.cfi_endproc

	.align	16, 0x90
	.type	lightselect_callback,@function
lightselect_callback:                   # @lightselect_callback
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
	subq	$112, %rsp
	leaq	-28(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_int_combo_box_get_active
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB10_11
# BB#1:                                 # %if.then
	movl	$0, mapvals+920
	movl	-28(%rbp), %eax
	movl	%eax, mapvals+924
	movq	light_type_combo, %rcx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$mapvals, %rcx
	addq	$64, %rcx
	movslq	-28(%rbp), %rsi
	imulq	$104, %rsi, %rsi
	addq	%rsi, %rcx
	movl	(%rcx), %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movq	colorbutton, %rcx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$mapvals, %rcx
	addq	$64, %rcx
	movslq	-28(%rbp), %rsi
	imulq	$104, %rsi, %rsi
	addq	%rsi, %rcx
	addq	$56, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_color_button_set_color
	movq	spin_pos_x, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$mapvals, %rcx
	addq	$64, %rcx
	movslq	-28(%rbp), %rsi
	imulq	$104, %rsi, %rsi
	addq	%rsi, %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_spin_button_set_value
	movq	spin_pos_y, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$mapvals, %rcx
	addq	$64, %rcx
	movslq	-28(%rbp), %rsi
	imulq	$104, %rsi, %rsi
	addq	%rsi, %rcx
	movsd	16(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_spin_button_set_value
	movq	spin_pos_z, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$mapvals, %rcx
	addq	$64, %rcx
	movslq	-28(%rbp), %rsi
	imulq	$104, %rsi, %rsi
	addq	%rsi, %rcx
	movsd	24(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_spin_button_set_value
	movq	spin_dir_x, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$mapvals, %rcx
	addq	$64, %rcx
	movslq	-28(%rbp), %rsi
	imulq	$104, %rsi, %rsi
	addq	%rsi, %rcx
	movsd	32(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_spin_button_set_value
	movq	spin_dir_y, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$mapvals, %rcx
	addq	$64, %rcx
	movslq	-28(%rbp), %rsi
	imulq	$104, %rsi, %rsi
	addq	%rsi, %rcx
	movsd	40(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_spin_button_set_value
	movq	spin_dir_z, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$mapvals, %rcx
	addq	$64, %rcx
	movslq	-28(%rbp), %rsi
	imulq	$104, %rsi, %rsi
	addq	%rsi, %rcx
	movsd	48(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_spin_button_set_value
	movq	spin_intensity, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$mapvals, %rcx
	addq	$64, %rcx
	movslq	-28(%rbp), %rsi
	imulq	$104, %rsi, %rsi
	addq	%rsi, %rcx
	movsd	88(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_spin_button_set_value
	movl	$1, mapvals+920
	cmpl	$0, mapvals+928
	je	.LBB10_10
# BB#2:                                 # %if.then.44
	movl	$0, -24(%rbp)
.LBB10_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$6, -24(%rbp)
	jge	.LBB10_9
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	-24(%rbp), %eax
	cmpl	mapvals+924, %eax
	jne	.LBB10_6
# BB#5:                                 # %if.then.46
                                        #   in Loop: Header=BB10_3 Depth=1
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-24(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	movl	$1, 96(%rax)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else
                                        #   in Loop: Header=BB10_3 Depth=1
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-24(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	movl	$0, 96(%rax)
.LBB10_7:                               # %if.end
                                        #   in Loop: Header=BB10_3 Depth=1
	jmp	.LBB10_8
.LBB10_8:                               # %for.inc
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB10_3
.LBB10_9:                               # %for.end
	jmp	.LBB10_10
.LBB10_10:                              # %if.end.52
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	interactive_preview_callback
.LBB10_11:                              # %if.end.53
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	lightselect_callback, .Lfunc_end10-lightselect_callback
	.cfi_endproc

	.align	16, 0x90
	.type	apply_settings,@function
apply_settings:                         # @apply_settings
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	mapvals+924, %eax
	movl	%eax, -28(%rbp)
	cmpl	$0, mapvals+920
	je	.LBB11_4
# BB#1:                                 # %if.then
	movq	light_type_combo, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_get_active
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB11_3
# BB#2:                                 # %if.then.4
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movl	-24(%rbp), %ecx
	movslq	-28(%rbp), %rdx
	imulq	$104, %rdx, %rdx
	addq	%rdx, %rax
	movl	%ecx, (%rax)
.LBB11_3:                               # %if.end
	movq	colorbutton, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$mapvals, %rsi
	addq	$64, %rsi
	movslq	-28(%rbp), %rdi
	imulq	$104, %rdi, %rdi
	addq	%rdi, %rsi
	addq	$56, %rsi
	movq	%rax, %rdi
	callq	gimp_color_button_get_color
	movq	spin_pos_x, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-28(%rbp), %rsi
	imulq	$104, %rsi, %rsi
	addq	%rsi, %rax
	movsd	%xmm0, 8(%rax)
	movq	spin_pos_y, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-28(%rbp), %rsi
	imulq	$104, %rsi, %rsi
	addq	%rsi, %rax
	movsd	%xmm0, 16(%rax)
	movq	spin_pos_z, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-28(%rbp), %rsi
	imulq	$104, %rsi, %rsi
	addq	%rsi, %rax
	movsd	%xmm0, 24(%rax)
	movq	spin_dir_x, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-28(%rbp), %rsi
	imulq	$104, %rsi, %rsi
	addq	%rsi, %rax
	movsd	%xmm0, 32(%rax)
	movq	spin_dir_y, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-28(%rbp), %rsi
	imulq	$104, %rsi, %rsi
	addq	%rsi, %rax
	movsd	%xmm0, 40(%rax)
	movq	spin_dir_z, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-28(%rbp), %rsi
	imulq	$104, %rsi, %rsi
	addq	%rsi, %rax
	movsd	%xmm0, 48(%rax)
	movq	spin_intensity, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_value
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-28(%rbp), %rsi
	imulq	$104, %rsi, %rsi
	addq	%rsi, %rax
	movsd	%xmm0, 88(%rax)
	callq	interactive_preview_callback
.LBB11_4:                               # %if.end.52
	movq	-8(%rbp), %rax
	cmpq	light_type_combo, %rax
	jne	.LBB11_11
# BB#5:                                 # %if.then.53
	movslq	-28(%rbp), %rax
	imulq	$104, %rax, %rax
	movl	mapvals+64(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	je	.LBB11_7
	jmp	.LBB11_12
.LBB11_12:                              # %if.then.53
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	je	.LBB11_8
	jmp	.LBB11_13
.LBB11_13:                              # %if.then.53
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jne	.LBB11_9
	jmp	.LBB11_6
.LBB11_6:                               # %sw.bb
	xorl	%esi, %esi
	movq	spin_pos_x, %rdi
	callq	gtk_widget_set_sensitive
	xorl	%esi, %esi
	movq	spin_pos_y, %rdi
	callq	gtk_widget_set_sensitive
	xorl	%esi, %esi
	movq	spin_pos_z, %rdi
	callq	gtk_widget_set_sensitive
	xorl	%esi, %esi
	movq	spin_dir_x, %rdi
	callq	gtk_widget_set_sensitive
	xorl	%esi, %esi
	movq	spin_dir_y, %rdi
	callq	gtk_widget_set_sensitive
	xorl	%esi, %esi
	movq	spin_dir_z, %rdi
	callq	gtk_widget_set_sensitive
	jmp	.LBB11_10
.LBB11_7:                               # %sw.bb.57
	movl	$1, %esi
	movq	spin_pos_x, %rdi
	callq	gtk_widget_set_sensitive
	movl	$1, %esi
	movq	spin_pos_y, %rdi
	callq	gtk_widget_set_sensitive
	movl	$1, %esi
	movq	spin_pos_z, %rdi
	callq	gtk_widget_set_sensitive
	xorl	%esi, %esi
	movq	spin_dir_x, %rdi
	callq	gtk_widget_set_sensitive
	xorl	%esi, %esi
	movq	spin_dir_y, %rdi
	callq	gtk_widget_set_sensitive
	xorl	%esi, %esi
	movq	spin_dir_z, %rdi
	callq	gtk_widget_set_sensitive
	jmp	.LBB11_10
.LBB11_8:                               # %sw.bb.58
	xorl	%esi, %esi
	movq	spin_pos_x, %rdi
	callq	gtk_widget_set_sensitive
	xorl	%esi, %esi
	movq	spin_pos_y, %rdi
	callq	gtk_widget_set_sensitive
	xorl	%esi, %esi
	movq	spin_pos_z, %rdi
	callq	gtk_widget_set_sensitive
	movl	$1, %esi
	movq	spin_dir_x, %rdi
	callq	gtk_widget_set_sensitive
	movl	$1, %esi
	movq	spin_dir_y, %rdi
	callq	gtk_widget_set_sensitive
	movl	$1, %esi
	movq	spin_dir_z, %rdi
	callq	gtk_widget_set_sensitive
	jmp	.LBB11_10
.LBB11_9:                               # %sw.default
	jmp	.LBB11_10
.LBB11_10:                              # %sw.epilog
	jmp	.LBB11_11
.LBB11_11:                              # %if.end.59
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	apply_settings, .Lfunc_end11-apply_settings
	.cfi_endproc

	.align	16, 0x90
	.type	isolate_selected_light,@function
isolate_selected_light:                 # @isolate_selected_light
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp46:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	cmpl	$0, %eax
	je	.LBB12_9
# BB#1:                                 # %if.then
	movl	$1, mapvals+928
	movl	$0, -20(%rbp)
.LBB12_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$6, -20(%rbp)
	jge	.LBB12_8
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB12_2 Depth=1
	movl	-20(%rbp), %eax
	cmpl	mapvals+924, %eax
	jne	.LBB12_5
# BB#4:                                 # %if.then.4
                                        #   in Loop: Header=BB12_2 Depth=1
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-20(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	movl	$1, 96(%rax)
	jmp	.LBB12_6
.LBB12_5:                               # %if.else
                                        #   in Loop: Header=BB12_2 Depth=1
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-20(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	movl	$0, 96(%rax)
.LBB12_6:                               # %if.end
                                        #   in Loop: Header=BB12_2 Depth=1
	jmp	.LBB12_7
.LBB12_7:                               # %for.inc
                                        #   in Loop: Header=BB12_2 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB12_2
.LBB12_8:                               # %for.end
	jmp	.LBB12_14
.LBB12_9:                               # %if.else.8
	movl	$0, mapvals+928
	movl	$0, -20(%rbp)
.LBB12_10:                              # %for.cond.9
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$6, -20(%rbp)
	jge	.LBB12_13
# BB#11:                                # %for.body.11
                                        #   in Loop: Header=BB12_10 Depth=1
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-20(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	movl	$1, 96(%rax)
# BB#12:                                # %for.inc.15
                                        #   in Loop: Header=BB12_10 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB12_10
.LBB12_13:                              # %for.end.17
	jmp	.LBB12_14
.LBB12_14:                              # %if.end.18
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	interactive_preview_callback
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	isolate_selected_light, .Lfunc_end12-isolate_selected_light
	.cfi_endproc

	.align	16, 0x90
	.type	save_lighting_preset,@function
save_lighting_preset:                   # @save_lighting_preset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp49:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$184, %rsp
.Ltmp50:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, save_lighting_preset.window
	jne	.LBB13_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.67, %rdi
	callq	gettext
	movq	appwin, %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movabsq	$.L.str.5, %rcx
	movl	$4294967290, %r8d       # imm = 0xFFFFFFFA
	movabsq	$.L.str.65, %r9
	movl	$4294967291, %r10d      # imm = 0xFFFFFFFB
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movl	$-5, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	movl	%r10d, -68(%rbp)        # 4-byte Spill
	callq	gtk_file_chooser_dialog_new
	movq	%rax, save_lighting_preset.window
	movq	save_lighting_preset.window, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	save_lighting_preset.window, %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movq	%rax, %rdi
	callq	gtk_dialog_set_default_response
	movq	save_lighting_preset.window, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_do_overwrite_confirmation
	movabsq	$.L.str.68, %rsi
	movabsq	$gtk_widget_destroyed, %rax
	movabsq	$save_lighting_preset.window, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	save_lighting_preset.window, %rbx
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.69, %rsi
	movabsq	$save_preset_response, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	save_lighting_preset.window, %rdi
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %r8         # 8-byte Reload
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB13_2:                               # %if.end
	cmpq	$0, lighting_effects_path
	je	.LBB13_6
# BB#3:                                 # %if.then.13
	movl	$256, %esi              # imm = 0x100
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	lighting_effects_path, %rdi
	callq	gimp_path_parse
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_path_get_user_writable_dir
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_path_free
	cmpq	$0, -40(%rbp)
	jne	.LBB13_5
# BB#4:                                 # %if.then.17
	callq	gimp_directory
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -40(%rbp)
.LBB13_5:                               # %if.end.20
	movq	save_lighting_preset.window, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_current_folder
	movq	-40(%rbp), %rdi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	g_free
	jmp	.LBB13_7
.LBB13_6:                               # %if.else
	movq	save_lighting_preset.window, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	g_get_tmp_dir
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_file_chooser_set_current_folder
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB13_7:                               # %if.end.28
	movq	save_lighting_preset.window, %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end13:
	.size	save_lighting_preset, .Lfunc_end13-save_lighting_preset
	.cfi_endproc

	.align	16, 0x90
	.type	load_lighting_preset,@function
load_lighting_preset:                   # @load_lighting_preset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$184, %rsp
.Ltmp54:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, load_lighting_preset.window
	jne	.LBB14_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.81, %rdi
	callq	gettext
	movq	appwin, %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movabsq	$.L.str.5, %rcx
	movl	$4294967290, %r8d       # imm = 0xFFFFFFFA
	movabsq	$.L.str.66, %r9
	movl	$4294967291, %r10d      # imm = 0xFFFFFFFB
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movl	$-5, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	movl	%r10d, -68(%rbp)        # 4-byte Spill
	callq	gtk_file_chooser_dialog_new
	movq	%rax, load_lighting_preset.window
	movq	load_lighting_preset.window, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	load_lighting_preset.window, %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movq	%rax, %rdi
	callq	gtk_dialog_set_default_response
	movabsq	$.L.str.68, %rsi
	movabsq	$gtk_widget_destroyed, %rax
	movabsq	$load_lighting_preset.window, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	load_lighting_preset.window, %rbx
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.69, %rsi
	movabsq	$load_preset_response, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	load_lighting_preset.window, %rdi
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	-104(%rbp), %r8         # 8-byte Reload
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB14_2:                               # %if.end
	cmpq	$0, lighting_effects_path
	je	.LBB14_6
# BB#3:                                 # %if.then.11
	movl	$256, %esi              # imm = 0x100
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	lighting_effects_path, %rdi
	callq	gimp_path_parse
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_path_get_user_writable_dir
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_path_free
	cmpq	$0, -40(%rbp)
	jne	.LBB14_5
# BB#4:                                 # %if.then.15
	callq	gimp_directory
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -40(%rbp)
.LBB14_5:                               # %if.end.18
	movq	load_lighting_preset.window, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_current_folder
	movq	-40(%rbp), %rdi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	g_free
	jmp	.LBB14_7
.LBB14_6:                               # %if.else
	movq	load_lighting_preset.window, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	g_get_tmp_dir
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_file_chooser_set_current_folder
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB14_7:                               # %if.end.26
	movq	load_lighting_preset.window, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end14:
	.size	load_lighting_preset, .Lfunc_end14-load_lighting_preset
	.cfi_endproc

	.align	16, 0x90
	.type	save_preset_response,@function
save_preset_response:                   # @save_preset_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	subq	$384, %rsp              # imm = 0x180
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -36(%rbp)
	movl	$39, -196(%rbp)
	cmpl	$-5, -12(%rbp)
	jne	.LBB15_22
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gtk_file_chooser_get_filename
	movabsq	$.L.str.70, %rsi
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rdi
	callq	fopen
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then.2
	movabsq	$.L.str.71, %rdi
	callq	gettext
	movq	-208(%rbp), %rsi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	-224(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_message
	jmp	.LBB15_21
.LBB15_3:                               # %if.else
	movl	$0, -40(%rbp)
.LBB15_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$6, -40(%rbp)
	jge	.LBB15_9
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB15_4 Depth=1
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-40(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$3, (%rax)
	je	.LBB15_7
# BB#6:                                 # %if.then.8
                                        #   in Loop: Header=BB15_4 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
.LBB15_7:                               # %if.end
                                        #   in Loop: Header=BB15_4 Depth=1
	jmp	.LBB15_8
.LBB15_8:                               # %for.inc
                                        #   in Loop: Header=BB15_4 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB15_4
.LBB15_9:                               # %for.end
	movabsq	$.L.str.72, %rsi
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %edx
	movb	$0, %al
	callq	fprintf
	movl	$0, -40(%rbp)
	movl	%eax, -228(%rbp)        # 4-byte Spill
.LBB15_10:                              # %for.cond.11
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$6, -40(%rbp)
	jge	.LBB15_20
# BB#11:                                # %for.body.13
                                        #   in Loop: Header=BB15_10 Depth=1
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-40(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$3, (%rax)
	je	.LBB15_18
# BB#12:                                # %if.then.18
                                        #   in Loop: Header=BB15_10 Depth=1
	movslq	-40(%rbp), %rax
	imulq	$104, %rax, %rax
	leaq	mapvals+64(%rax), %rcx
	movq	%rcx, -48(%rbp)
	movl	mapvals+64(%rax), %edx
	testl	%edx, %edx
	movl	%edx, -232(%rbp)        # 4-byte Spill
	je	.LBB15_13
	jmp	.LBB15_23
.LBB15_23:                              # %if.then.18
                                        #   in Loop: Header=BB15_10 Depth=1
	movl	-232(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -236(%rbp)        # 4-byte Spill
	je	.LBB15_14
	jmp	.LBB15_24
.LBB15_24:                              # %if.then.18
                                        #   in Loop: Header=BB15_10 Depth=1
	movl	-232(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -240(%rbp)        # 4-byte Spill
	je	.LBB15_15
	jmp	.LBB15_16
.LBB15_13:                              # %sw.bb
                                        #   in Loop: Header=BB15_10 Depth=1
	movabsq	$.L.str.73, %rsi
	movq	-32(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -244(%rbp)        # 4-byte Spill
	jmp	.LBB15_17
.LBB15_14:                              # %sw.bb.23
                                        #   in Loop: Header=BB15_10 Depth=1
	movabsq	$.L.str.74, %rsi
	movq	-32(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -248(%rbp)        # 4-byte Spill
	jmp	.LBB15_17
.LBB15_15:                              # %sw.bb.25
                                        #   in Loop: Header=BB15_10 Depth=1
	movabsq	$.L.str.75, %rsi
	movq	-32(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -252(%rbp)        # 4-byte Spill
	jmp	.LBB15_17
.LBB15_16:                              # %sw.default
                                        #   in Loop: Header=BB15_10 Depth=1
	movabsq	$.L.str.76, %rdi
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-40(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	movl	(%rax), %esi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB15_19
.LBB15_17:                              # %sw.epilog
                                        #   in Loop: Header=BB15_10 Depth=1
	leaq	-96(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	-196(%rbp), %esi
	movq	-48(%rbp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	leaq	-144(%rbp), %rdi
	movl	-196(%rbp), %esi
	movq	-48(%rbp), %rcx
	movsd	16(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	leaq	-192(%rbp), %rdi
	movl	-196(%rbp), %esi
	movq	-48(%rbp), %rcx
	movsd	24(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	movabsq	$.L.str.77, %rsi
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	-272(%rbp), %rdx        # 8-byte Reload
	movq	-280(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	fprintf
	leaq	-96(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	-196(%rbp), %esi
	movq	-48(%rbp), %rdx
	movsd	32(%rdx), %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -284(%rbp)        # 4-byte Spill
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	leaq	-144(%rbp), %rdi
	movl	-196(%rbp), %esi
	movq	-48(%rbp), %rcx
	movsd	40(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	leaq	-192(%rbp), %rdi
	movl	-196(%rbp), %esi
	movq	-48(%rbp), %rcx
	movsd	48(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	movabsq	$.L.str.78, %rsi
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	-304(%rbp), %rdx        # 8-byte Reload
	movq	-312(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	fprintf
	leaq	-96(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	-196(%rbp), %esi
	movq	-48(%rbp), %rdx
	movsd	56(%rdx), %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -316(%rbp)        # 4-byte Spill
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	leaq	-144(%rbp), %rdi
	movl	-196(%rbp), %esi
	movq	-48(%rbp), %rcx
	movsd	64(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	leaq	-192(%rbp), %rdi
	movl	-196(%rbp), %esi
	movq	-48(%rbp), %rcx
	movsd	72(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	movabsq	$.L.str.79, %rsi
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	-336(%rbp), %rdx        # 8-byte Reload
	movq	-344(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	fprintf
	leaq	-96(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	-196(%rbp), %esi
	movq	-48(%rbp), %rdx
	movsd	88(%rdx), %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -348(%rbp)        # 4-byte Spill
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	callq	g_ascii_dtostr
	movabsq	$.L.str.80, %rsi
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -364(%rbp)        # 4-byte Spill
.LBB15_18:                              # %if.end.62
                                        #   in Loop: Header=BB15_10 Depth=1
	jmp	.LBB15_19
.LBB15_19:                              # %for.inc.63
                                        #   in Loop: Header=BB15_10 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB15_10
.LBB15_20:                              # %for.end.65
	movq	-32(%rbp), %rdi
	callq	fclose
	movl	%eax, -368(%rbp)        # 4-byte Spill
.LBB15_21:                              # %if.end.67
	movq	-208(%rbp), %rdi
	callq	g_free
.LBB15_22:                              # %if.end.68
	movq	-8(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_destroy
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end15:
	.size	save_preset_response, .Lfunc_end15-save_preset_response
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp60:
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
	je	.LBB16_2
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
.LBB16_2:                               # %entry
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
	movl	$32, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end16:
	.size	g_message, .Lfunc_end16-g_message
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp63:
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
	je	.LBB17_2
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
.LBB17_2:                               # %entry
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
.Lfunc_end17:
	.size	g_warning, .Lfunc_end17-g_warning
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	load_preset_response,@function
load_preset_response:                   # @load_preset_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
.Ltmp65:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp66:
	.cfi_def_cfa_register %rbp
	subq	$400, %rsp              # imm = 0x190
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$-5, -12(%rbp)
	jne	.LBB18_22
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gtk_file_chooser_get_filename
	movabsq	$.L.str.82, %rsi
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rdi
	callq	fopen
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB18_3
# BB#2:                                 # %if.then.2
	movabsq	$.L.str.83, %rdi
	callq	gettext
	movq	-280(%rbp), %rsi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	movq	%rsi, -296(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	-296(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_message
	jmp	.LBB18_21
.LBB18_3:                               # %if.else
	movabsq	$.L.str.84, %rsi
	leaq	-36(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movb	$0, %al
	callq	__isoc99_fscanf
	movl	$0, -40(%rbp)
	movl	%eax, -300(%rbp)        # 4-byte Spill
.LBB18_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$6, -40(%rbp)
	jge	.LBB18_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB18_4 Depth=1
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-40(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	movl	$3, (%rax)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB18_4 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB18_4
.LBB18_7:                               # %for.end
	movl	$0, -40(%rbp)
.LBB18_8:                               # %for.cond.8
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB18_20
# BB#9:                                 # %for.body.10
                                        #   in Loop: Header=BB18_8 Depth=1
	movabsq	$.L.str.85, %rsi
	leaq	-224(%rbp), %rdx
	movabsq	$mapvals, %rax
	addq	$64, %rax
	movslq	-40(%rbp), %rcx
	imulq	$104, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rdi
	movb	$0, %al
	callq	__isoc99_fscanf
	leaq	-224(%rbp), %rdi
	movl	$.L.str.42, %r8d
	movl	%r8d, %esi
	movl	%eax, -304(%rbp)        # 4-byte Spill
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB18_11
# BB#10:                                # %if.then.17
                                        #   in Loop: Header=BB18_8 Depth=1
	movq	-48(%rbp), %rax
	movl	$0, (%rax)
	jmp	.LBB18_18
.LBB18_11:                              # %if.else.19
                                        #   in Loop: Header=BB18_8 Depth=1
	leaq	-224(%rbp), %rdi
	movl	$.L.str.41, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB18_13
# BB#12:                                # %if.then.23
                                        #   in Loop: Header=BB18_8 Depth=1
	movq	-48(%rbp), %rax
	movl	$1, (%rax)
	jmp	.LBB18_17
.LBB18_13:                              # %if.else.25
                                        #   in Loop: Header=BB18_8 Depth=1
	leaq	-224(%rbp), %rdi
	movl	$.L.str.86, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB18_15
# BB#14:                                # %if.then.29
                                        #   in Loop: Header=BB18_8 Depth=1
	movq	-48(%rbp), %rax
	movl	$2, (%rax)
	jmp	.LBB18_16
.LBB18_15:                              # %if.else.31
	movabsq	$.L.str.87, %rdi
	leaq	-224(%rbp), %rsi
	movb	$0, %al
	callq	g_warning
	movq	-32(%rbp), %rdi
	callq	fclose
	movl	%eax, -308(%rbp)        # 4-byte Spill
	jmp	.LBB18_23
.LBB18_16:                              # %if.end
                                        #   in Loop: Header=BB18_8 Depth=1
	jmp	.LBB18_17
.LBB18_17:                              # %if.end.34
                                        #   in Loop: Header=BB18_8 Depth=1
	jmp	.LBB18_18
.LBB18_18:                              # %if.end.35
                                        #   in Loop: Header=BB18_8 Depth=1
	movl	$32, %eax
	movl	%eax, %esi
	movabsq	$.L.str.88, %rdx
	movl	$38, %eax
	movl	%eax, %ecx
	leaq	-272(%rbp), %rdi
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	movq	-320(%rbp), %r8         # 8-byte Reload
	movq	-320(%rbp), %r9         # 8-byte Reload
	movb	$0, %al
	callq	snprintf
	leaq	-192(%rbp), %r8
	leaq	-144(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	leaq	-272(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movl	%eax, -324(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	__isoc99_fscanf
	leaq	-232(%rbp), %rsi
	leaq	-96(%rbp), %rdi
	movl	%eax, -328(%rbp)        # 4-byte Spill
	callq	g_ascii_strtod
	leaq	-232(%rbp), %rsi
	leaq	-144(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movsd	%xmm0, 8(%rcx)
	callq	g_ascii_strtod
	leaq	-232(%rbp), %rsi
	leaq	-192(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movsd	%xmm0, 16(%rcx)
	callq	g_ascii_strtod
	movl	$32, %eax
	movl	%eax, %esi
	movabsq	$.L.str.89, %rdx
	movl	$38, %eax
	movl	%eax, %ecx
	leaq	-272(%rbp), %rdi
	movq	-48(%rbp), %r8
	movsd	%xmm0, 24(%r8)
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	movq	-336(%rbp), %r8         # 8-byte Reload
	movq	-336(%rbp), %r9         # 8-byte Reload
	movb	$0, %al
	callq	snprintf
	leaq	-192(%rbp), %r8
	leaq	-144(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	leaq	-272(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movl	%eax, -340(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	__isoc99_fscanf
	leaq	-232(%rbp), %rsi
	leaq	-96(%rbp), %rdi
	movl	%eax, -344(%rbp)        # 4-byte Spill
	callq	g_ascii_strtod
	leaq	-232(%rbp), %rsi
	leaq	-144(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movsd	%xmm0, 32(%rcx)
	callq	g_ascii_strtod
	leaq	-232(%rbp), %rsi
	leaq	-192(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movsd	%xmm0, 40(%rcx)
	callq	g_ascii_strtod
	movl	$32, %eax
	movl	%eax, %esi
	movabsq	$.L.str.90, %rdx
	movl	$38, %eax
	movl	%eax, %ecx
	leaq	-272(%rbp), %rdi
	movq	-48(%rbp), %r8
	movsd	%xmm0, 48(%r8)
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	movq	-352(%rbp), %r8         # 8-byte Reload
	movq	-352(%rbp), %r9         # 8-byte Reload
	movb	$0, %al
	callq	snprintf
	leaq	-192(%rbp), %r8
	leaq	-144(%rbp), %rcx
	leaq	-96(%rbp), %rdx
	leaq	-272(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movl	%eax, -356(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	__isoc99_fscanf
	leaq	-232(%rbp), %rsi
	leaq	-96(%rbp), %rdi
	movl	%eax, -360(%rbp)        # 4-byte Spill
	callq	g_ascii_strtod
	leaq	-232(%rbp), %rsi
	leaq	-144(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movsd	%xmm0, 56(%rcx)
	callq	g_ascii_strtod
	leaq	-232(%rbp), %rsi
	leaq	-192(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movsd	%xmm0, 64(%rcx)
	callq	g_ascii_strtod
	movl	$32, %eax
	movl	%eax, %esi
	movabsq	$.L.str.91, %rdx
	movl	$38, %eax
	movl	%eax, %ecx
	leaq	-272(%rbp), %rdi
	movsd	.LCPI18_0, %xmm1        # xmm1 = mem[0],zero
	movq	-48(%rbp), %r8
	movsd	%xmm0, 72(%r8)
	movq	-48(%rbp), %r8
	movsd	%xmm1, 80(%r8)
	movb	$0, %al
	callq	snprintf
	leaq	-96(%rbp), %rdx
	leaq	-272(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movl	%eax, -364(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	__isoc99_fscanf
	leaq	-232(%rbp), %rsi
	leaq	-96(%rbp), %rdi
	movl	%eax, -368(%rbp)        # 4-byte Spill
	callq	g_ascii_strtod
	movq	-48(%rbp), %rcx
	movsd	%xmm0, 88(%rcx)
# BB#19:                                # %for.inc.92
                                        #   in Loop: Header=BB18_8 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB18_8
.LBB18_20:                              # %for.end.94
	movq	-32(%rbp), %rdi
	callq	fclose
	movl	%eax, -372(%rbp)        # 4-byte Spill
.LBB18_21:                              # %if.end.96
	movq	-280(%rbp), %rdi
	callq	g_free
	movq	lightselect_combo, %rdi
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	lightselect_callback
.LBB18_22:                              # %if.end.99
	movq	-8(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_destroy
	movq	-8(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	interactive_preview_callback
.LBB18_23:                              # %return
	addq	$400, %rsp              # imm = 0x190
	popq	%rbp
	retq
.Lfunc_end18:
	.size	load_preset_response, .Lfunc_end18-load_preset_response
	.cfi_endproc

	.align	16, 0x90
	.type	bumpmap_constrain,@function
bumpmap_constrain:                      # @bumpmap_constrain
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp69:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	-8(%rbp), %edi
	callq	gimp_drawable_width
	movl	mapvals, %edi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	gimp_drawable_width
	xorl	%esi, %esi
	movb	%sil, %cl
	movl	-20(%rbp), %esi         # 4-byte Reload
	cmpl	%eax, %esi
	movb	%cl, -21(%rbp)          # 1-byte Spill
	jne	.LBB19_2
# BB#1:                                 # %land.rhs
	movl	-8(%rbp), %edi
	callq	gimp_drawable_height
	movl	mapvals, %edi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	gimp_drawable_height
	movl	-28(%rbp), %edi         # 4-byte Reload
	cmpl	%eax, %edi
	sete	%cl
	movb	%cl, -21(%rbp)          # 1-byte Spill
.LBB19_2:                               # %land.end
	movb	-21(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	bumpmap_constrain, .Lfunc_end19-bumpmap_constrain
	.cfi_endproc

	.align	16, 0x90
	.type	mapmenu2_callback,@function
mapmenu2_callback:                      # @mapmenu2_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp72:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_get_active
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	preview_compute
	movq	previewarea, %rdi
	callq	gtk_widget_queue_draw
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	mapmenu2_callback, .Lfunc_end20-mapmenu2_callback
	.cfi_endproc

	.align	16, 0x90
	.type	envmap_constrain,@function
envmap_constrain:                       # @envmap_constrain
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp73:
	.cfi_def_cfa_offset 16
.Ltmp74:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp75:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	-8(%rbp), %edi
	callq	gimp_drawable_is_gray
	xorl	%esi, %esi
	movb	%sil, %cl
	cmpl	$0, %eax
	movb	%cl, -17(%rbp)          # 1-byte Spill
	jne	.LBB21_2
# BB#1:                                 # %land.rhs
	movl	-8(%rbp), %edi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	movb	%cl, -17(%rbp)          # 1-byte Spill
.LBB21_2:                               # %land.end
	movb	-17(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	envmap_constrain, .Lfunc_end21-envmap_constrain
	.cfi_endproc

	.align	16, 0x90
	.type	envmap_combo_callback,@function
envmap_combo_callback:                  # @envmap_combo_callback
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$mapvals, %rsi
	addq	$8, %rsi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_get_active
	movl	mapvals+8, %edi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	gimp_drawable_width
	movl	%eax, env_width
	movl	mapvals+8, %edi
	callq	gimp_drawable_height
	movl	%eax, env_height
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	envmap_combo_callback, .Lfunc_end22-envmap_combo_callback
	.cfi_endproc

	.type	previewarea,@object     # @previewarea
	.bss
	.globl	previewarea
	.align	8
previewarea:
	.quad	0
	.size	previewarea, 8

	.type	spin_pos_x,@object      # @spin_pos_x
	.globl	spin_pos_x
	.align	8
spin_pos_x:
	.quad	0
	.size	spin_pos_x, 8

	.type	spin_pos_y,@object      # @spin_pos_y
	.globl	spin_pos_y
	.align	8
spin_pos_y:
	.quad	0
	.size	spin_pos_y, 8

	.type	spin_pos_z,@object      # @spin_pos_z
	.globl	spin_pos_z
	.align	8
spin_pos_z:
	.quad	0
	.size	spin_pos_z, 8

	.type	spin_dir_x,@object      # @spin_dir_x
	.globl	spin_dir_x
	.align	8
spin_dir_x:
	.quad	0
	.size	spin_dir_x, 8

	.type	spin_dir_y,@object      # @spin_dir_y
	.globl	spin_dir_y
	.align	8
spin_dir_y:
	.quad	0
	.size	spin_dir_y, 8

	.type	spin_dir_z,@object      # @spin_dir_z
	.globl	spin_dir_z
	.align	8
spin_dir_z:
	.quad	0
	.size	spin_dir_z, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"lighting"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"lighting-effects-path"
	.size	.L.str.1, 22

	.type	lighting_effects_path,@object # @lighting_effects_path
	.local	lighting_effects_path
	.comm	lighting_effects_path,8,8
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Lighting Effects"
	.size	.L.str.2, 17

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-lighting"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"plug-in-lighting"
	.size	.L.str.4, 17

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gtk-cancel"
	.size	.L.str.5, 11

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gtk-ok"
	.size	.L.str.6, 7

	.type	appwin,@object          # @appwin
	.local	appwin
	.comm	appwin,8,8
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"event"
	.size	.L.str.7, 6

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"expose-event"
	.size	.L.str.8, 13

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"_Update"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"clicked"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Recompute preview image"
	.size	.L.str.11, 24

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"I_nteractive"
	.size	.L.str.12, 13

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"toggled"
	.size	.L.str.13, 8

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Enable/disable real time preview of changes"
	.size	.L.str.14, 44

	.type	options_note_book,@object # @options_note_book
	.local	options_note_book
	.comm	options_note_book,8,8
	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Op_tions"
	.size	.L.str.15, 9

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"_Light"
	.size	.L.str.16, 7

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"_Material"
	.size	.L.str.17, 10

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"_Bump Map"
	.size	.L.str.18, 10

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"_Environment Map"
	.size	.L.str.19, 17

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"General Options"
	.size	.L.str.20, 16

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"T_ransparent background"
	.size	.L.str.21, 24

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Make destination image transparent where bump height is zero"
	.size	.L.str.22, 61

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Cre_ate new image"
	.size	.L.str.23, 18

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Create a new image when applying filter"
	.size	.L.str.24, 40

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"High _quality preview"
	.size	.L.str.25, 22

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Enable/disable high quality preview"
	.size	.L.str.26, 36

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Distance:"
	.size	.L.str.27, 10

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Distance of observer from surface"
	.size	.L.str.28, 34

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"value-changed"
	.size	.L.str.29, 14

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Light Settings"
	.size	.L.str.30, 15

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Light 1"
	.size	.L.str.31, 8

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Light 2"
	.size	.L.str.32, 8

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Light 3"
	.size	.L.str.33, 8

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Light 4"
	.size	.L.str.34, 8

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Light 5"
	.size	.L.str.35, 8

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Light 6"
	.size	.L.str.36, 8

	.type	lightselect_combo,@object # @lightselect_combo
	.local	lightselect_combo
	.comm	lightselect_combo,8,8
	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"changed"
	.size	.L.str.37, 8

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Type:"
	.size	.L.str.38, 6

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Color:"
	.size	.L.str.39, 7

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"light-source\004None"
	.size	.L.str.40, 18

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Directional"
	.size	.L.str.41, 12

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Point"
	.size	.L.str.42, 6

	.type	light_type_combo,@object # @light_type_combo
	.local	light_type_combo
	.comm	light_type_combo,8,8
	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Type of light source to apply"
	.size	.L.str.43, 30

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Select lightsource color"
	.size	.L.str.44, 25

	.type	colorbutton,@object     # @colorbutton
	.local	colorbutton
	.comm	colorbutton,8,8
	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"color-changed"
	.size	.L.str.45, 14

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Set light source color"
	.size	.L.str.46, 23

	.type	spin_intensity,@object  # @spin_intensity
	.local	spin_intensity
	.comm	spin_intensity,8,8
	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"_Intensity:"
	.size	.L.str.47, 12

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Light intensity"
	.size	.L.str.48, 16

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Position"
	.size	.L.str.49, 9

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"_X:"
	.size	.L.str.50, 4

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Light source X position in XYZ space"
	.size	.L.str.51, 37

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"_Y:"
	.size	.L.str.52, 4

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Light source Y position in XYZ space"
	.size	.L.str.53, 37

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"_Z:"
	.size	.L.str.54, 4

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Light source Z position in XYZ space"
	.size	.L.str.55, 37

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Direction"
	.size	.L.str.56, 10

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"X:"
	.size	.L.str.57, 3

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Light source X direction in XYZ space"
	.size	.L.str.58, 38

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Y:"
	.size	.L.str.59, 3

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Light source Y direction in XYZ space"
	.size	.L.str.60, 38

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"Z:"
	.size	.L.str.61, 3

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Light source Z direction in XYZ space"
	.size	.L.str.62, 38

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"I_solate"
	.size	.L.str.63, 9

	.type	isolate_button,@object  # @isolate_button
	.local	isolate_button
	.comm	isolate_button,8,8
	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"Lighting preset:"
	.size	.L.str.64, 17

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"gtk-save"
	.size	.L.str.65, 9

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"gtk-open"
	.size	.L.str.66, 9

	.type	save_lighting_preset.window,@object # @save_lighting_preset.window
	.local	save_lighting_preset.window
	.comm	save_lighting_preset.window,8,8
	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"Save Lighting Preset"
	.size	.L.str.67, 21

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"destroy"
	.size	.L.str.68, 8

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"response"
	.size	.L.str.69, 9

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"wb"
	.size	.L.str.70, 3

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"Could not open '%s' for writing: %s"
	.size	.L.str.71, 36

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"Number of lights: %d\n"
	.size	.L.str.72, 22

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"Type: Point\n"
	.size	.L.str.73, 13

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"Type: Directional\n"
	.size	.L.str.74, 19

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"Type: Spot\n"
	.size	.L.str.75, 12

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"Unknown light type: %d"
	.size	.L.str.76, 23

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"Position: %s %s %s\n"
	.size	.L.str.77, 20

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"Direction: %s %s %s\n"
	.size	.L.str.78, 21

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"Color: %s %s %s\n"
	.size	.L.str.79, 17

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"Intensity: %s\n"
	.size	.L.str.80, 15

	.type	load_lighting_preset.window,@object # @load_lighting_preset.window
	.local	load_lighting_preset.window
	.comm	load_lighting_preset.window,8,8
	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"Load Lighting Preset"
	.size	.L.str.81, 21

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"rb"
	.size	.L.str.82, 3

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"Could not open '%s' for reading: %s"
	.size	.L.str.83, 36

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"Number of lights: %d"
	.size	.L.str.84, 21

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	" Type: %20s"
	.size	.L.str.85, 12

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"Spot"
	.size	.L.str.86, 5

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"Unknown light type: %s"
	.size	.L.str.87, 23

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	" Position: %%%lus %%%lus %%%lus"
	.size	.L.str.88, 32

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	" Direction: %%%lus %%%lus %%%lus"
	.size	.L.str.89, 33

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	" Color: %%%lus %%%lus %%%lus"
	.size	.L.str.90, 29

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	" Intensity: %%%lus"
	.size	.L.str.91, 19

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"Material Properties"
	.size	.L.str.92, 20

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"intensity-ambient-low"
	.size	.L.str.93, 22

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"_Glowing:"
	.size	.L.str.94, 10

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"Amount of original color to show where no direct light falls"
	.size	.L.str.95, 61

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"intensity-ambient-high"
	.size	.L.str.96, 23

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"intensity-diffuse-low"
	.size	.L.str.97, 22

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"_Bright:"
	.size	.L.str.98, 9

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"Intensity of original color when lit by a light source"
	.size	.L.str.99, 55

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"intensity-diffuse-high"
	.size	.L.str.100, 23

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"reflectivity-specular-low"
	.size	.L.str.101, 26

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"_Shiny:"
	.size	.L.str.102, 8

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"Controls how intense the highlights will be"
	.size	.L.str.103, 44

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"reflectivity-specular-high"
	.size	.L.str.104, 27

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"reflectivity-highlight-low"
	.size	.L.str.105, 27

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"_Polished:"
	.size	.L.str.106, 11

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"Higher values makes the highlights more focused"
	.size	.L.str.107, 48

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"reflectivity-highlight-high"
	.size	.L.str.108, 28

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"_Metallic"
	.size	.L.str.109, 10

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"E_nable bump mapping"
	.size	.L.str.110, 21

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"Enable/disable bump-mapping (image depth)"
	.size	.L.str.111, 42

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"active"
	.size	.L.str.112, 7

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"sensitive"
	.size	.L.str.113, 10

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"Bumpm_ap image:"
	.size	.L.str.114, 16

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"Linear"
	.size	.L.str.115, 7

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"Logarithmic"
	.size	.L.str.116, 12

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"Sinusoidal"
	.size	.L.str.117, 11

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"Spherical"
	.size	.L.str.118, 10

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"Cu_rve:"
	.size	.L.str.119, 8

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"Ma_ximum height:"
	.size	.L.str.120, 17

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"Maximum height for bumps"
	.size	.L.str.121, 25

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"E_nable environment mapping"
	.size	.L.str.122, 28

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"Enable/disable environment-mapping (reflection)"
	.size	.L.str.123, 48

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"En_vironment image:"
	.size	.L.str.124, 20

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"Environment image to use"
	.size	.L.str.125, 25


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
