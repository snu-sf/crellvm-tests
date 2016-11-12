	.text
	.file	"map-object-ui.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4598175219545276416     # double 0.25
.LCPI0_1:
	.quad	4607182418800017408     # double 1
	.text
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
	subq	$456, %rsp              # imm = 0x1C8
.Ltmp3:
	.cfi_offset %rbx, -24
	movabsq	$.L.str, %rax
	xorl	%esi, %esi
	movq	%rdi, -16(%rbp)
	movl	$0, -76(%rbp)
	movq	%rax, %rdi
	callq	gimp_ui_init
	movabsq	$.L.str.1, %rdi
	callq	gettext
	movabsq	$.L.str.2, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.3, %r9
	movabsq	$.L.str.4, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.5, %r11
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -100(%rbp)        # 4-byte Spill
	movl	%r10d, -104(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, appwin
	movq	appwin, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	appwin, %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	xorl	%edi, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	appwin, %rax
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
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	movl	-148(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	movl	-164(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_frame_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-32(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	movl	-188(%rbp), %r8d        # 4-byte Reload
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
	movq	-48(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	previewarea, %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	previewarea, %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.6, %rsi
	movabsq	$preview_events, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	previewarea, %rdi
	movq	previewarea, %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.7, %rsi
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
	xorl	%edi, %edi
	movl	$6, %esi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.8, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_button_new_with_mnemonic
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	gtk_misc_set_padding
	movq	-40(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -260(%rbp)        # 4-byte Spill
	movl	-260(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.9, %rsi
	movabsq	$preview_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-56(%rbp), %r11
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-272(%rbp), %rcx        # 8-byte Reload
	movq	-272(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.10, %rdi
	movq	-56(%rbp), %rcx
	movq	%rax, -280(%rbp)        # 8-byte Spill
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	callq	gimp_zoom_model_new
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI0_1, %xmm1         # xmm1 = mem[0],zero
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_zoom_model_set_range
	movl	$6, %esi
	movq	-72(%rbp), %rdi
	movsd	mapvals+424, %xmm0      # xmm0 = mem[0],zero
	callq	gimp_zoom_model_zoom
	xorl	%esi, %esi
	movl	$1, %edx
	movq	-72(%rbp), %rdi
	callq	gimp_zoom_button_new
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -300(%rbp)        # 4-byte Spill
	movl	-300(%rbp), %ecx        # 4-byte Reload
	movl	-300(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_end
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %ecx
	movq	-72(%rbp), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gimp_zoom_button_new
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -316(%rbp)        # 4-byte Spill
	movl	-316(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_end
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.11, %rsi
	movabsq	$zoomed_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-72(%rbp), %r11
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-328(%rbp), %rcx        # 8-byte Reload
	movq	-328(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.12, %rdi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	mapvals+412, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-32(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.13, %rsi
	movabsq	$toggle_update, %rax
	movabsq	$mapvals, %rdi
	addq	$412, %rdi              # imm = 0x19C
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %r11
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-360(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.14, %rdi
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	mapvals+408, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-32(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.13, %rsi
	movabsq	$toggle_update, %rax
	movabsq	$mapvals, %rdi
	addq	$408, %rdi              # imm = 0x198
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %r11
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-392(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-24(%rbp), %rdi
	movq	%rax, -400(%rbp)        # 8-byte Spill
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
	movl	%eax, -404(%rbp)        # 4-byte Spill
	callq	compute_preview_image
	movq	appwin, %rcx
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movl	$1, -76(%rbp)
.LBB0_2:                                # %if.end
	movq	appwin, %rdi
	callq	gtk_widget_destroy
	cmpq	$0, preview_rgb_data
	je	.LBB0_4
# BB#3:                                 # %if.then.70
	movq	preview_rgb_data, %rdi
	callq	g_free
.LBB0_4:                                # %if.end.71
	cmpq	$0, preview_surface
	je	.LBB0_6
# BB#5:                                 # %if.then.73
	movq	preview_surface, %rdi
	callq	cairo_surface_destroy
.LBB0_6:                                # %if.end.74
	cmpq	$0, box_page
	je	.LBB0_8
# BB#7:                                 # %if.then.76
	movq	box_page, %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB0_8:                                # %if.end.77
	cmpq	$0, cylinder_page
	je	.LBB0_10
# BB#9:                                 # %if.then.79
	movq	cylinder_page, %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB0_10:                               # %if.end.80
	movl	-76(%rbp), %eax
	addq	$456, %rsp              # imm = 0x1C8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	main_dialog, .Lfunc_end0-main_dialog
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4607182418800017408     # double 1
.LCPI1_1:
	.quad	4641240890982006784     # double 200
.LCPI1_2:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	preview_events,@function
preview_events:                         # @preview_events
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	(%rsi), %eax
	addl	$-3, %eax
	movl	%eax, %esi
	subl	$8, %eax
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movl	%eax, -68(%rbp)         # 4-byte Spill
	ja	.LBB1_16
# BB#18:                                # %entry
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	.LJTI1_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB1_1:                                # %sw.bb
	jmp	.LBB1_17
.LBB1_2:                                # %sw.bb.1
	jmp	.LBB1_17
.LBB1_3:                                # %sw.bb.2
	movq	-16(%rbp), %rax
	cvttsd2si	24(%rax), %edi
	movq	-16(%rbp), %rax
	cvttsd2si	32(%rax), %esi
	callq	check_light_hit
	movl	%eax, light_hit
	cmpl	$0, light_hit
	jne	.LBB1_5
# BB#4:                                 # %if.then
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI1_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI1_2, %xmm2         # xmm2 = mem[0],zero
	movq	-16(%rbp), %rax
	movaps	%xmm2, %xmm3
	mulsd	24(%rax), %xmm3
	divsd	%xmm1, %xmm3
	subsd	%xmm0, %xmm3
	movd	%xmm3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm3
	movsd	%xmm3, -48(%rbp)
	movq	-16(%rbp), %rax
	mulsd	32(%rax), %xmm2
	divsd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	movsd	%xmm2, -40(%rbp)
.LBB1_5:                                # %if.end
	movl	$1, left_button_pressed
	jmp	.LBB1_17
.LBB1_6:                                # %sw.bb.16
	cmpl	$1, light_hit
	jne	.LBB1_8
# BB#7:                                 # %if.then.19
	callq	compute_preview_image
	movq	previewarea, %rdi
	callq	gtk_widget_queue_draw
	jmp	.LBB1_9
.LBB1_8:                                # %if.else
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI1_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI1_2, %xmm2         # xmm2 = mem[0],zero
	movq	-16(%rbp), %rax
	movaps	%xmm2, %xmm3
	mulsd	24(%rax), %xmm3
	divsd	%xmm1, %xmm3
	subsd	%xmm0, %xmm3
	movd	%xmm3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm3
	movsd	%xmm3, -48(%rbp)
	movq	-16(%rbp), %rax
	mulsd	32(%rax), %xmm2
	divsd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	movsd	%xmm2, -40(%rbp)
.LBB1_9:                                # %if.end.33
	movl	$0, left_button_pressed
	jmp	.LBB1_17
.LBB1_10:                               # %sw.bb.34
	cmpl	$1, left_button_pressed
	jne	.LBB1_15
# BB#11:                                # %if.then.37
	cmpl	$1, light_hit
	jne	.LBB1_13
# BB#12:                                # %if.then.40
	movl	mapvals+408, %eax
	movl	%eax, -52(%rbp)
	movl	$0, mapvals+408
	movq	-16(%rbp), %rcx
	cvttsd2si	24(%rcx), %edi
	movq	-16(%rbp), %rcx
	cvttsd2si	32(%rcx), %esi
	callq	update_light
	callq	update_light_pos_entries
	movl	-52(%rbp), %eax
	movl	%eax, mapvals+408
	jmp	.LBB1_14
.LBB1_13:                               # %if.else.46
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI1_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI1_2, %xmm2         # xmm2 = mem[0],zero
	movq	-16(%rbp), %rax
	movaps	%xmm2, %xmm3
	mulsd	24(%rax), %xmm3
	divsd	%xmm1, %xmm3
	subsd	%xmm0, %xmm3
	movd	%xmm3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm3
	movsd	%xmm3, -48(%rbp)
	movq	-16(%rbp), %rax
	mulsd	32(%rax), %xmm2
	divsd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	movsd	%xmm2, -40(%rbp)
.LBB1_14:                               # %if.end.60
	jmp	.LBB1_15
.LBB1_15:                               # %if.end.61
	jmp	.LBB1_17
.LBB1_16:                               # %sw.default
	jmp	.LBB1_17
.LBB1_17:                               # %sw.epilog
	xorl	%eax, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	preview_events, .Lfunc_end1-preview_events
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_10
	.quad	.LBB1_3
	.quad	.LBB1_16
	.quad	.LBB1_16
	.quad	.LBB1_6
	.quad	.LBB1_16
	.quad	.LBB1_16
	.quad	.LBB1_1
	.quad	.LBB1_2

	.text
	.align	16, 0x90
	.type	preview_callback,@function
preview_callback:                       # @preview_callback
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	compute_preview_image
	movq	previewarea, %rdi
	callq	gtk_widget_queue_draw
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	preview_callback, .Lfunc_end2-preview_callback
	.cfi_endproc

	.align	16, 0x90
	.type	zoomed_callback,@function
zoomed_callback:                        # @zoomed_callback
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_zoom_model_get_factor
	movsd	%xmm0, mapvals+424
	callq	compute_preview_image
	movq	previewarea, %rdi
	callq	gtk_widget_queue_draw
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	zoomed_callback, .Lfunc_end3-zoomed_callback
	.cfi_endproc

	.align	16, 0x90
	.type	toggle_update,@function
toggle_update:                          # @toggle_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp15:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_toggle_button_update
	callq	compute_preview_image
	movq	previewarea, %rdi
	callq	gtk_widget_queue_draw
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	toggle_update, .Lfunc_end4-toggle_update
	.cfi_endproc

	.align	16, 0x90
	.type	create_main_notebook,@function
create_main_notebook:                   # @create_main_notebook
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
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
	callq	create_orientation_page
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
	cmpl	$2, mapvals+384
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jne	.LBB5_2
# BB#1:                                 # %if.then
	callq	create_box_page
	movq	%rax, box_page
	movq	box_page, %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movabsq	$.L.str.19, %rdi
	movq	options_note_book, %rcx
	movq	box_page, %rsi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	-160(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_notebook_append_page
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB5_5
.LBB5_2:                                # %if.else
	cmpl	$3, mapvals+384
	jne	.LBB5_4
# BB#3:                                 # %if.then.29
	callq	create_cylinder_page
	movq	%rax, cylinder_page
	movq	cylinder_page, %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movabsq	$.L.str.20, %rdi
	movq	options_note_book, %rcx
	movq	cylinder_page, %rsi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	-192(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_notebook_append_page
	movl	%eax, -204(%rbp)        # 4-byte Spill
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %if.end.35
	movq	options_note_book, %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_show
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	create_main_notebook, .Lfunc_end5-create_main_notebook
	.cfi_endproc

	.align	16, 0x90
	.type	update_light_pos_entries,@function
update_light_pos_entries:               # @update_light_pos_entries
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
	subq	$144, %rsp
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$double_adjustment_update, %rdx
	movabsq	$mapvals, %rdi
	addq	$152, %rdi
	movq	xadj, %r9
	movq	%rdi, -8(%rbp)          # 8-byte Spill
	movq	%r9, %rdi
	movq	%rdx, -16(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-16(%rbp), %r9          # 8-byte Reload
	movq	-8(%rbp), %r10          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	xadj, %rdi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	mapvals+152, %xmm0      # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$double_adjustment_update, %rax
	movabsq	$mapvals, %rdi
	addq	$152, %rdi
	movq	xadj, %r9
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	%rax, %r9
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$double_adjustment_update, %rdi
	movabsq	$mapvals, %r9
	addq	$160, %r9
	movq	yadj, %r10
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movl	%ecx, %edx
	movq	-48(%rbp), %r10         # 8-byte Reload
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-56(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_block_matched
	movq	yadj, %rdi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	mapvals+160, %xmm0      # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$double_adjustment_update, %rax
	movabsq	$mapvals, %rdi
	addq	$160, %rdi
	movq	yadj, %r9
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	%rax, %r9
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$double_adjustment_update, %rdi
	movabsq	$mapvals, %r9
	addq	$168, %r9
	movq	zadj, %r10
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movl	%ecx, %edx
	movq	-88(%rbp), %r10         # 8-byte Reload
	movq	%r9, -96(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-96(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_block_matched
	movq	zadj, %rdi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	mapvals+168, %xmm0      # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gtk_adjustment_set_value
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$double_adjustment_update, %rax
	movabsq	$mapvals, %rdi
	addq	$168, %rdi
	movq	zadj, %r9
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	%rax, %r9
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -124(%rbp)        # 4-byte Spill
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	update_light_pos_entries, .Lfunc_end6-update_light_pos_entries
	.cfi_endproc

	.align	16, 0x90
	.type	double_adjustment_update,@function
double_adjustment_update:               # @double_adjustment_update
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_double_adjustment_update
	cmpl	$0, mapvals+408
	je	.LBB7_2
# BB#1:                                 # %if.then
	callq	compute_preview_image
.LBB7_2:                                # %if.end
	movq	previewarea, %rdi
	callq	gtk_widget_queue_draw
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	double_adjustment_update, .Lfunc_end7-double_adjustment_update
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI8_0:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_1:
	.quad	4562254508917369340     # double 0.001
.LCPI8_2:
	.quad	4652007308841189376     # double 1000
.LCPI8_3:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI8_4:
	.quad	4607182418800017408     # double 1
.LCPI8_5:
	.quad	4617315517961601024     # double 5
	.text
	.align	16, 0x90
	.type	create_options_page,@function
create_options_page:                    # @create_options_page
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
	pushq	%rbx
	subq	$648, %rsp              # imm = 0x288
.Ltmp28:
	.cfi_offset %rbx, -24
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movabsq	$.L.str.21, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	movl	-108(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	movl	-132(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.22, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
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
	movabsq	$.L.str.23, %rdi
	callq	gettext
	movabsq	$.L.str.24, %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.25, %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.26, %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %ecx
	movl	$2, %r9d
	movl	$3, %edx
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movq	-160(%rbp), %r10        # 8-byte Reload
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	-168(%rbp), %r11        # 8-byte Reload
	movl	%edx, -188(%rbp)        # 4-byte Spill
	movq	%r11, %rdx
	movq	-176(%rbp), %r8         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$3, 8(%rsp)
	movq	$0, 16(%rsp)
	movb	$0, %al
	callq	gimp_int_combo_box_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	mapvals+384, %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movq	-40(%rbp), %rdx
	movl	%eax, -204(%rbp)        # 4-byte Spill
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.27, %rsi
	movabsq	$mapmenu_callback, %rax
	movabsq	$mapvals, %rdi
	addq	$384, %rdi              # imm = 0x180
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %r10
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-224(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.28, %rdi
	movq	-56(%rbp), %rcx
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.29, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_label
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	mapvals+400, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-32(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.13, %rsi
	movabsq	$toggle_update, %rax
	movabsq	$mapvals, %rdi
	addq	$400, %rdi              # imm = 0x190
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %r10
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-264(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.30, %rdi
	movq	-64(%rbp), %rcx
	movq	%rax, -272(%rbp)        # 8-byte Spill
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.31, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_label
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	mapvals+404, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-32(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.13, %rsi
	movabsq	$toggle_update, %rax
	movabsq	$mapvals, %rdi
	addq	$404, %rdi              # imm = 0x194
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %r10
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-304(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.32, %rdi
	movq	-64(%rbp), %rcx
	movq	%rax, -312(%rbp)        # 8-byte Spill
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.33, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_label
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	mapvals+392, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-32(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.13, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$mapvals, %rdi
	addq	$392, %rdi              # imm = 0x188
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %r10
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-344(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.34, %rdi
	movq	-64(%rbp), %rcx
	movq	%rax, -352(%rbp)        # 8-byte Spill
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.35, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_label
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	mapvals+396, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-32(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.13, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$mapvals, %rdi
	addq	$396, %rdi              # imm = 0x18C
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %r10
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-384(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.36, %rdi
	movq	-64(%rbp), %rcx
	movq	%rax, -392(%rbp)        # 8-byte Spill
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	callq	gimp_frame_new
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.37, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	mapvals+388, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-24(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_frame_set_label_widget
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.13, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$mapvals, %rdi
	addq	$388, %rdi              # imm = 0x184
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %r10
	movq	%rdi, -432(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-432(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.38, %rdi
	movq	-64(%rbp), %rcx
	movq	%rax, -440(%rbp)        # 8-byte Spill
	movq	%rcx, -448(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movl	$2, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-72(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-24(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.39, %rsi
	movabsq	$.L.str.40, %rcx
	movl	$2, %r8d
	movq	-64(%rbp), %rax
	movq	-72(%rbp), %rdi
	movq	%rdi, -480(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-480(%rbp), %rdx        # 8-byte Reload
	callq	g_object_bind_property
	movq	-72(%rbp), %rcx
	movq	%rax, -488(%rbp)        # 8-byte Spill
	movq	%rcx, -496(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.41, %rdi
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.42, %rdi
	movsd	mapvals+456, %xmm0      # xmm0 = mem[0],zero
	movq	%rax, -512(%rbp)        # 8-byte Spill
	movsd	%xmm0, -520(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%r8d, %r8d
	movsd	.LCPI8_4, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI8_5, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI8_3, %xmm3         # xmm3 = mem[0],zero
	movl	$1, %r9d
	xorps	%xmm1, %xmm1
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movl	%r8d, %esi
	movl	%r8d, %edx
	movq	-512(%rbp), %r10        # 8-byte Reload
	movq	%rcx, -528(%rbp)        # 8-byte Spill
	movq	%r10, %rcx
	movl	%r8d, -532(%rbp)        # 4-byte Spill
	movl	-532(%rbp), %ebx        # 4-byte Reload
	movl	%r9d, -536(%rbp)        # 4-byte Spill
	movl	%ebx, %r9d
	movsd	-520(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm0, -544(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm0
	movsd	-544(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	%xmm1, -552(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm1
	movaps	%xmm5, %xmm4
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-552(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-552(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.43, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$mapvals, %rdi
	addq	$456, %rdi              # imm = 0x1C8
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rdi, -560(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-560(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	leaq	-88(%rbp), %rdi
	movsd	.LCPI8_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI8_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI8_3, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI8_4, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm0, %xmm0
	movl	$3, %esi
	movsd	mapvals+464, %xmm5      # xmm5 = mem[0],zero
	movsd	%xmm0, -568(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movsd	-568(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-568(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	gimp_spin_button_new
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.44, %rdi
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %r9d
	xorps	%xmm0, %xmm0
	movss	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-80(%rbp), %r8
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %edx
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.43, %rsi
	movabsq	$double_adjustment_update, %rcx
	movabsq	$mapvals, %rdi
	addq	$464, %rdi              # imm = 0x1D0
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-88(%rbp), %r10
	movq	%rdi, -600(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rcx, %rdx
	movq	-600(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.45, %rdi
	movq	-80(%rbp), %rcx
	movq	%rax, -616(%rbp)        # 8-byte Spill
	movq	%rcx, -624(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	movq	-16(%rbp), %rax
	addq	$648, %rsp              # imm = 0x288
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end8:
	.size	create_options_page, .Lfunc_end8-create_options_page
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI9_0:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_1:
	.quad	-4039728866288205824    # double -3.4028234663852886E+38
.LCPI9_2:
	.quad	5183643170566569984     # double 3.4028234663852886E+38
.LCPI9_3:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI9_4:
	.quad	4607182418800017408     # double 1
.LCPI9_5:
	.quad	-4616189618054758400    # double -1
.LCPI9_6:
	.quad	4576918229304087675     # double 0.01
	.text
	.align	16, 0x90
	.type	create_light_page,@function
create_light_page:                      # @create_light_page
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
	subq	$656, %rsp              # imm = 0x290
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
	movabsq	$.L.str.46, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	movl	-76(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	movl	$2, %ecx
	xorl	%edx, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.47, %rdi
	callq	gettext
	movabsq	$.L.str.48, %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.49, %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %ecx
	movl	$2, %r9d
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %r8
	movq	$0, (%rsp)
	movb	$0, %al
	callq	gimp_int_combo_box_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	mapvals+144, %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movq	-24(%rbp), %rdx
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.50, %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movss	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-32(%rbp), %r8
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.27, %rsi
	movabsq	$lightmenu_callback, %rcx
	movabsq	$mapvals, %rdi
	addq	$144, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %r10
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rcx, %rdx
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.51, %rdi
	movq	-32(%rbp), %rcx
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.52, %rdi
	callq	gettext
	movl	$64, %esi
	movl	$16, %edx
	movabsq	$mapvals, %rcx
	addq	$200, %rcx
	xorl	%r8d, %r8d
	movq	%rax, %rdi
	callq	gimp_color_button_new
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.53, %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-40(%rbp), %r8
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movl	%edx, -212(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-212(%rbp), %r9d        # 4-byte Reload
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.54, %rsi
	movabsq	$gimp_color_button_get_color, %rcx
	movabsq	$mapvals, %rdi
	addq	$200, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %r10
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rcx, %rdx
	movq	-224(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.55, %rdi
	movq	-40(%rbp), %rcx
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.56, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, pointlightwid
	movq	-8(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	pointlightwid, %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	cmpl	$0, mapvals+144
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movq	pointlightwid, %rdi
	callq	gtk_widget_show
.LBB9_2:                                # %if.end
	movl	$3, %edi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-24(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	pointlightwid, %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$xadj, %rdi
	movsd	.LCPI9_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI9_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI9_3, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI9_4, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm0, %xmm0
	movl	$2, %esi
	movsd	mapvals+152, %xmm5      # xmm5 = mem[0],zero
	movsd	%xmm0, -288(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movsd	-288(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-288(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.57, %rdi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-48(%rbp), %r8
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movl	%edx, %esi
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.43, %rsi
	movabsq	$double_adjustment_update, %rcx
	movabsq	$mapvals, %rdi
	addq	$152, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	xadj, %r10
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rcx, %rdx
	movq	-312(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.58, %rdi
	movq	-48(%rbp), %rcx
	movq	%rax, -328(%rbp)        # 8-byte Spill
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$yadj, %rdi
	movsd	.LCPI9_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI9_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI9_3, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI9_4, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm0, %xmm0
	movl	$2, %esi
	movsd	mapvals+160, %xmm5      # xmm5 = mem[0],zero
	movsd	%xmm0, -344(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movsd	-344(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-344(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.59, %rdi
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %r9d
	xorps	%xmm0, %xmm0
	movss	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-48(%rbp), %r8
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %edx
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.43, %rsi
	movabsq	$double_adjustment_update, %rcx
	movabsq	$mapvals, %rdi
	addq	$160, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	yadj, %r10
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rcx, %rdx
	movq	-368(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.60, %rdi
	movq	-48(%rbp), %rcx
	movq	%rax, -384(%rbp)        # 8-byte Spill
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$zadj, %rdi
	movsd	.LCPI9_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI9_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI9_3, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI9_4, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm0, %xmm0
	movl	$2, %esi
	movsd	mapvals+168, %xmm5      # xmm5 = mem[0],zero
	movsd	%xmm0, -400(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movsd	-400(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-400(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.61, %rdi
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-48(%rbp), %r8
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.43, %rsi
	movabsq	$double_adjustment_update, %rcx
	movabsq	$mapvals, %rdi
	addq	$168, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	zadj, %r10
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rcx, %rdx
	movq	-424(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.62, %rdi
	movq	-48(%rbp), %rcx
	movq	%rax, -440(%rbp)        # 8-byte Spill
	movq	%rcx, -448(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.63, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, dirlightwid
	movq	-8(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	dirlightwid, %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	cmpl	$1, mapvals+144
	jne	.LBB9_4
# BB#3:                                 # %if.then.72
	movq	dirlightwid, %rdi
	callq	gtk_widget_show
.LBB9_4:                                # %if.end.73
	movl	$3, %edi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-24(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	dirlightwid, %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	leaq	-56(%rbp), %rdi
	movsd	.LCPI9_5, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI9_4, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI9_6, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI9_3, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm0, %xmm0
	movl	$2, %esi
	movsd	mapvals+176, %xmm5      # xmm5 = mem[0],zero
	movsd	%xmm0, -488(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movsd	-488(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-488(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.57, %rdi
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-48(%rbp), %r8
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movl	%edx, %esi
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.43, %rsi
	movabsq	$double_adjustment_update, %rcx
	movabsq	$mapvals, %rdi
	addq	$176, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %r10
	movq	%rdi, -512(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rcx, %rdx
	movq	-512(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.64, %rdi
	movq	-48(%rbp), %rcx
	movq	%rax, -528(%rbp)        # 8-byte Spill
	movq	%rcx, -536(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	leaq	-56(%rbp), %rdi
	movsd	.LCPI9_5, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI9_4, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI9_6, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI9_3, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm0, %xmm0
	movl	$2, %esi
	movsd	mapvals+184, %xmm5      # xmm5 = mem[0],zero
	movsd	%xmm0, -544(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movsd	-544(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-544(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.59, %rdi
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %r9d
	xorps	%xmm0, %xmm0
	movss	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-48(%rbp), %r8
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %edx
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.43, %rsi
	movabsq	$double_adjustment_update, %rcx
	movabsq	$mapvals, %rdi
	addq	$184, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %r10
	movq	%rdi, -568(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rcx, %rdx
	movq	-568(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.65, %rdi
	movq	-48(%rbp), %rcx
	movq	%rax, -584(%rbp)        # 8-byte Spill
	movq	%rcx, -592(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	leaq	-56(%rbp), %rdi
	movsd	.LCPI9_5, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI9_4, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI9_6, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI9_3, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm0, %xmm0
	movl	$2, %esi
	movsd	mapvals+192, %xmm5      # xmm5 = mem[0],zero
	movsd	%xmm0, -600(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movsd	-600(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-600(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.61, %rdi
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-48(%rbp), %r8
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.43, %rsi
	movabsq	$double_adjustment_update, %rcx
	movabsq	$mapvals, %rdi
	addq	$192, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %r10
	movq	%rdi, -624(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rcx, %rdx
	movq	-624(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.66, %rdi
	movq	-48(%rbp), %rcx
	movq	%rax, -640(%rbp)        # 8-byte Spill
	movq	%rcx, -648(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-648(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movq	-8(%rbp), %rdi
	callq	gtk_widget_show
	movq	-8(%rbp), %rax
	addq	$656, %rsp              # imm = 0x290
	popq	%rbp
	retq
.Lfunc_end9:
	.size	create_light_page, .Lfunc_end9-create_light_page
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	5183643170566569984     # double 3.4028234663852886E+38
.LCPI10_1:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI10_2:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI10_3:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	create_material_page,@function
create_material_page:                   # @create_material_page
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
	pushq	%rbx
	subq	$664, %rsp              # imm = 0x298
.Ltmp35:
	.cfi_offset %rbx, -24
	movl	$1, %edi
	callq	gtk_size_group_new
	movl	$1, %edi
	movl	$12, %esi
	movq	%rax, -16(%rbp)
	callq	gtk_box_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movabsq	$.L.str.67, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	movl	-100(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movl	$2, %edi
	movl	$4, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-56(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	movl	-140(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.68, %rdi
	movl	$4, %esi
	callq	gtk_image_new_from_stock
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.69, %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movss	.LCPI10_3, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-72(%rbp), %r8
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gtk_size_group_add_widget
	leaq	-80(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI10_0, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI10_1, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI10_2, %xmm4        # xmm4 = mem[0],zero
	movl	$2, %esi
	movsd	mapvals+240, %xmm1      # xmm1 = mem[0],zero
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-168(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-168(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-168(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movl	$6, %r10d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -180(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.43, %rsi
	movabsq	$double_adjustment_update, %rax
	movabsq	$mapvals, %rdi
	addq	$240, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %r11
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-192(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.70, %rdi
	movq	-64(%rbp), %rcx
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.71, %rdi
	movl	$4, %esi
	callq	gtk_image_new_from_stock
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %edx
	movl	$4, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movl	$6, %r10d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -220(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.72, %rdi
	movl	$4, %esi
	callq	gtk_image_new_from_stock
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.73, %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %ecx
	xorps	%xmm0, %xmm0
	movss	.LCPI10_3, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	-72(%rbp), %r8
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %edx
	movl	%ecx, -244(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-244(%rbp), %r9d        # 4-byte Reload
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gtk_size_group_add_widget
	leaq	-80(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI10_0, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI10_1, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI10_2, %xmm4        # xmm4 = mem[0],zero
	movl	$2, %esi
	movsd	mapvals+248, %xmm1      # xmm1 = mem[0],zero
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-256(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-256(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-256(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movl	$3, %ecx
	movl	$1, %r8d
	movl	$6, %r9d
	xorl	%r10d, %r10d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -268(%rbp)        # 4-byte Spill
	movl	-268(%rbp), %ebx        # 4-byte Reload
	movl	%r9d, -272(%rbp)        # 4-byte Spill
	movl	%ebx, %r9d
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -276(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.43, %rsi
	movabsq	$double_adjustment_update, %rax
	movabsq	$mapvals, %rdi
	addq	$248, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %r11
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-288(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.74, %rdi
	movq	-64(%rbp), %rcx
	movq	%rax, -296(%rbp)        # 8-byte Spill
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.75, %rdi
	movl	$4, %esi
	callq	gtk_image_new_from_stock
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %edx
	movl	$4, %ecx
	movl	$1, %r8d
	movl	$2, %r9d
	movl	$6, %r10d
	xorl	%ebx, %ebx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%ebx, -316(%rbp)        # 4-byte Spill
	movl	%r10d, -320(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.76, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -332(%rbp)        # 4-byte Spill
	movl	-332(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movl	$3, %edi
	movl	$4, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-40(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-56(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -372(%rbp)        # 4-byte Spill
	movl	-372(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.77, %rdi
	movl	$4, %esi
	callq	gtk_image_new_from_stock
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.73, %rdi
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movss	.LCPI10_3, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-72(%rbp), %r8
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gtk_size_group_add_widget
	leaq	-80(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI10_0, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI10_1, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI10_2, %xmm4        # xmm4 = mem[0],zero
	movl	$2, %esi
	movsd	mapvals+256, %xmm1      # xmm1 = mem[0],zero
	movsd	%xmm0, -400(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-400(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-400(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-400(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movl	$6, %r10d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -412(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.43, %rsi
	movabsq	$double_adjustment_update, %rax
	movabsq	$mapvals, %rdi
	addq	$256, %rdi              # imm = 0x100
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %r11
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-424(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.78, %rdi
	movq	-64(%rbp), %rcx
	movq	%rax, -432(%rbp)        # 8-byte Spill
	movq	%rcx, -440(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.79, %rdi
	movl	$4, %esi
	callq	gtk_image_new_from_stock
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %edx
	movl	$4, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movl	$6, %r10d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -452(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.80, %rdi
	movl	$4, %esi
	callq	gtk_image_new_from_stock
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.81, %rdi
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %ecx
	xorps	%xmm0, %xmm0
	movss	.LCPI10_3, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	-72(%rbp), %r8
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %edx
	movl	%ecx, -476(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-476(%rbp), %r9d        # 4-byte Reload
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gtk_size_group_add_widget
	leaq	-80(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI10_0, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI10_1, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI10_2, %xmm4        # xmm4 = mem[0],zero
	movl	$2, %esi
	movsd	mapvals+264, %xmm1      # xmm1 = mem[0],zero
	movsd	%xmm0, -488(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-488(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-488(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-488(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movl	$3, %ecx
	movl	$1, %r8d
	movl	$6, %r9d
	xorl	%r10d, %r10d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -500(%rbp)        # 4-byte Spill
	movl	-500(%rbp), %ebx        # 4-byte Reload
	movl	%r9d, -504(%rbp)        # 4-byte Spill
	movl	%ebx, %r9d
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r10d, -508(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.43, %rsi
	movabsq	$double_adjustment_update, %rax
	movabsq	$mapvals, %rdi
	addq	$264, %rdi              # imm = 0x108
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %r11
	movq	%rdi, -520(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-520(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.82, %rdi
	movq	-64(%rbp), %rcx
	movq	%rax, -528(%rbp)        # 8-byte Spill
	movq	%rcx, -536(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.83, %rdi
	movl	$4, %esi
	callq	gtk_image_new_from_stock
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %edx
	movl	$4, %ecx
	movl	$1, %r8d
	movl	$2, %r9d
	movl	$6, %r10d
	xorl	%ebx, %ebx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%ebx, -548(%rbp)        # 4-byte Spill
	movl	%r10d, -552(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.84, %rdi
	movl	$4, %esi
	callq	gtk_image_new_from_stock
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.85, %rdi
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI10_3, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-72(%rbp), %r8
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gtk_size_group_add_widget
	leaq	-80(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI10_0, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI10_1, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI10_2, %xmm4        # xmm4 = mem[0],zero
	movl	$2, %esi
	movsd	mapvals+272, %xmm1      # xmm1 = mem[0],zero
	movsd	%xmm0, -576(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-576(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-576(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-576(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movl	$3, %r9d
	movl	$6, %r10d
	xorl	%ebx, %ebx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -588(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	-588(%rbp), %r8d        # 4-byte Reload
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%ebx, -592(%rbp)        # 4-byte Spill
	movl	%r10d, -596(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.43, %rsi
	movabsq	$double_adjustment_update, %rax
	movabsq	$mapvals, %rdi
	addq	$272, %rdi              # imm = 0x110
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %r11
	movq	%rdi, -608(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-608(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.86, %rdi
	movq	-64(%rbp), %rcx
	movq	%rax, -616(%rbp)        # 8-byte Spill
	movq	%rcx, -624(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.87, %rdi
	movl	$4, %esi
	callq	gtk_image_new_from_stock
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %r9d
	movl	$4, %ecx
	movl	$2, %r8d
	movl	$6, %r10d
	xorl	%ebx, %ebx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%ebx, -636(%rbp)        # 4-byte Spill
	movl	%r10d, -640(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-24(%rbp), %rax
	addq	$664, %rsp              # imm = 0x298
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end10:
	.size	create_material_page, .Lfunc_end10-create_material_page
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	-4582834833314545664    # double -180
.LCPI11_1:
	.quad	4640537203540230144     # double 180
.LCPI11_2:
	.quad	4607182418800017408     # double 1
.LCPI11_3:
	.quad	4624633867356078080     # double 15
.LCPI11_4:
	.quad	4576918229304087675     # double 0.01
.LCPI11_5:
	.quad	-4616189618054758400    # double -1
.LCPI11_6:
	.quad	4611686018427387904     # double 2
.LCPI11_7:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.align	16, 0x90
	.type	create_orientation_page,@function
create_orientation_page:                # @create_orientation_page
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
	pushq	%r14
	pushq	%rbx
	subq	$640, %rsp              # imm = 0x280
.Ltmp39:
	.cfi_offset %rbx, -32
.Ltmp40:
	.cfi_offset %r14, -24
	movl	$1, %edi
	callq	gtk_size_group_new
	movl	$1, %edi
	movl	$12, %esi
	movq	%rax, -24(%rbp)
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movabsq	$.L.str.56, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	movl	-76(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movl	$3, %ecx
	xorl	%edx, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.57, %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.88, %rdi
	movsd	mapvals+96, %xmm0       # xmm0 = mem[0],zero
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movsd	.LCPI11_5, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI11_6, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI11_4, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI11_7, %xmm4        # xmm4 = mem[0],zero
	movl	$5, %edx
	movl	$1, %r8d
	xorps	%xmm0, %xmm0
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -148(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	-128(%rbp), %r10        # 8-byte Reload
	movl	%ecx, -152(%rbp)        # 4-byte Spill
	movq	%r10, %rcx
	movl	-152(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -156(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movsd	-136(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$5, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-168(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-168(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.89, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_size_group_add_widget
	movl	$80, %edx
	movl	%edx, %esi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.89, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	$80, %edx
	movl	%edx, %esi
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.89, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_adjustment
	movsd	.LCPI11_4, %xmm0        # xmm0 = mem[0],zero
	movl	$5, %edx
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_spin_button_configure
	movabsq	$.L.str.43, %rsi
	movabsq	$double_adjustment_update, %rax
	movabsq	$mapvals, %rcx
	addq	$96, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movq	-48(%rbp), %rcx
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.59, %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.90, %rdi
	movsd	mapvals+104, %xmm0      # xmm0 = mem[0],zero
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movsd	%xmm0, -232(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	$1, %edx
	movsd	.LCPI11_5, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI11_6, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI11_4, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI11_7, %xmm4        # xmm4 = mem[0],zero
	movl	$5, %r11d
	xorps	%xmm0, %xmm0
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movq	-224(%rbp), %r8         # 8-byte Reload
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movl	%r9d, %r8d
	movsd	-232(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$5, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-248(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-248(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -252(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.89, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_size_group_add_widget
	movl	$80, %edx
	movl	%edx, %esi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.89, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	$80, %edx
	movl	%edx, %esi
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.89, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_adjustment
	movsd	.LCPI11_4, %xmm0        # xmm0 = mem[0],zero
	movl	$5, %edx
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_spin_button_configure
	movabsq	$.L.str.43, %rsi
	movabsq	$double_adjustment_update, %rax
	movabsq	$mapvals, %rcx
	addq	$104, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movq	-48(%rbp), %rcx
	movq	%rax, -288(%rbp)        # 8-byte Spill
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.61, %rdi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.91, %rdi
	movsd	mapvals+112, %xmm0      # xmm0 = mem[0],zero
	movq	%rax, -312(%rbp)        # 8-byte Spill
	movsd	%xmm0, -320(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	$2, %edx
	movsd	.LCPI11_5, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI11_6, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI11_4, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI11_7, %xmm4        # xmm4 = mem[0],zero
	movl	$5, %r11d
	movl	$1, %ebx
	xorps	%xmm0, %xmm0
	xorl	%r14d, %r14d
	movl	%r14d, %ecx
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movq	-312(%rbp), %r8         # 8-byte Reload
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movl	%r9d, %r8d
	movsd	-320(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	%xmm0, -336(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$5, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-336(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-336(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -340(%rbp)       # 4-byte Spill
	movl	%ebx, -344(%rbp)        # 4-byte Spill
	callq	gimp_scale_entry_new
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.89, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_size_group_add_widget
	movl	$80, %edx
	movl	%edx, %esi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.89, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	$80, %edx
	movl	%edx, %esi
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.89, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_adjustment
	movsd	.LCPI11_4, %xmm0        # xmm0 = mem[0],zero
	movl	$5, %edx
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_spin_button_configure
	movabsq	$.L.str.43, %rsi
	movabsq	$double_adjustment_update, %rax
	movabsq	$mapvals, %rcx
	addq	$112, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movabsq	$.L.str.92, %rdi
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
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
	movl	$3, %ecx
	xorl	%edx, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-48(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-40(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movq	-48(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.57, %rdi
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.93, %rdi
	movsd	mapvals+432, %xmm0      # xmm0 = mem[0],zero
	movq	%rax, -432(%rbp)        # 8-byte Spill
	movsd	%xmm0, -440(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movsd	.LCPI11_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI11_1, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI11_2, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI11_3, %xmm4        # xmm4 = mem[0],zero
	movl	$1, %edx
	xorps	%xmm0, %xmm0
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -448(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -452(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	-432(%rbp), %r10        # 8-byte Reload
	movl	%ecx, -456(%rbp)        # 4-byte Spill
	movq	%r10, %rcx
	movl	-456(%rbp), %r8d        # 4-byte Reload
	movl	-456(%rbp), %r9d        # 4-byte Reload
	movsd	-440(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	%xmm0, -464(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-464(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-464(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, -472(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.89, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_size_group_add_widget
	movabsq	$.L.str.43, %rsi
	movabsq	$double_adjustment_update, %rax
	movabsq	$mapvals, %rcx
	addq	$432, %rcx              # imm = 0x1B0
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movq	-48(%rbp), %rcx
	movq	%rax, -480(%rbp)        # 8-byte Spill
	movq	%rcx, -488(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.59, %rdi
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.94, %rdi
	movsd	mapvals+440, %xmm0      # xmm0 = mem[0],zero
	movq	%rax, -504(%rbp)        # 8-byte Spill
	movsd	%xmm0, -512(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	$1, %edx
	movsd	.LCPI11_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI11_1, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI11_2, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI11_3, %xmm4        # xmm4 = mem[0],zero
	xorps	%xmm0, %xmm0
	xorl	%r11d, %r11d
	movl	%r11d, %ecx
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movq	-504(%rbp), %r8         # 8-byte Reload
	movq	%rcx, -520(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movl	%r9d, %r8d
	movsd	-512(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	%xmm0, -528(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-528(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-528(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, -536(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.89, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_size_group_add_widget
	movabsq	$.L.str.43, %rsi
	movabsq	$double_adjustment_update, %rax
	movabsq	$mapvals, %rcx
	addq	$440, %rcx              # imm = 0x1B8
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movq	-48(%rbp), %rcx
	movq	%rax, -544(%rbp)        # 8-byte Spill
	movq	%rcx, -552(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.61, %rdi
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.95, %rdi
	movsd	mapvals+448, %xmm0      # xmm0 = mem[0],zero
	movq	%rax, -568(%rbp)        # 8-byte Spill
	movsd	%xmm0, -576(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	$2, %edx
	movsd	.LCPI11_0, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI11_1, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI11_2, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI11_3, %xmm4        # xmm4 = mem[0],zero
	movl	$1, %r11d
	xorps	%xmm0, %xmm0
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movq	-568(%rbp), %r8         # 8-byte Reload
	movq	%rcx, -584(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movl	%r9d, %r8d
	movsd	-576(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	%xmm0, -592(%rbp)       # 8-byte Spill
	movaps	%xmm5, %xmm0
	movl	$1, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-592(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-592(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -596(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, -608(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.89, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_size_group_add_widget
	movabsq	$.L.str.43, %rsi
	movabsq	$double_adjustment_update, %rax
	movabsq	$mapvals, %rcx
	addq	$448, %rcx              # imm = 0x1C0
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movq	-32(%rbp), %rdi
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-32(%rbp), %rax
	addq	$640, %rsp              # imm = 0x280
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end11:
	.size	create_orientation_page, .Lfunc_end11-create_orientation_page
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI12_1:
	.quad	4617315517961601024     # double 5
.LCPI12_2:
	.quad	4576918229304087675     # double 0.01
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI12_3:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	create_box_page,@function
create_box_page:                        # @create_box_page
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
	pushq	%rbx
	subq	$488, %rsp              # imm = 0x1E8
.Ltmp44:
	.cfi_offset %rbx, -24
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movabsq	$.L.str.102, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	movl	-84(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movl	$6, %edi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$5, %r8d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movl	$0, -52(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$6, -52(%rbp)
	jge	.LBB12_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movabsq	$box_constrain, %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	gimp_drawable_combo_box_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_int_combo_box_get_active, %rsi
	movabsq	$mapvals, %rdi
	addq	$496, %rdi              # imm = 0x1F0
	movslq	-52(%rbp), %rcx
	movl	mapvals+496(,%rcx,4), %edx
	movslq	-52(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movl	%edx, %esi
	movq	-144(%rbp), %rdx        # 8-byte Reload
	movq	-136(%rbp), %rcx        # 8-byte Reload
	callq	gimp_int_combo_box_connect
	movq	-40(%rbp), %rcx
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-52(%rbp), %edx
	movslq	-52(%rbp), %rcx
	movq	create_box_page.labels(,%rcx,8), %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movl	%edx, -172(%rbp)        # 4-byte Spill
	callq	gettext
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	movss	.LCPI12_3, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-64(%rbp), %r8
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movl	-172(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	%rax, -184(%rbp)        # 8-byte Spill
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB12_1
.LBB12_4:                               # %for.end
	movl	$3, %eax
	xorl	%edx, %edx
	movl	%eax, %edi
	movl	%eax, %esi
	callq	gtk_table_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-40(%rbp), %rax
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
	xorl	%edx, %edx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -212(%rbp)        # 4-byte Spill
	movl	-212(%rbp), %ecx        # 4-byte Reload
	movl	-212(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.103, %rdi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.104, %rdi
	movsd	mapvals+120, %xmm0      # xmm0 = mem[0],zero
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movsd	.LCPI12_1, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI12_2, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI12_0, %xmm4        # xmm4 = mem[0],zero
	movl	$2, %edx
	movl	$1, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -256(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -260(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	-240(%rbp), %r10        # 8-byte Reload
	movl	%ecx, -264(%rbp)        # 4-byte Spill
	movq	%r10, %rcx
	movl	-264(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -268(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movsd	-248(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-280(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-280(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-280(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.89, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	$80, %edx
	movl	%edx, %esi
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.89, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_adjustment
	movsd	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero
	movl	$2, %edx
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_spin_button_configure
	movabsq	$.L.str.43, %rsi
	movabsq	$double_adjustment_update, %rax
	movabsq	$mapvals, %rcx
	addq	$120, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movq	-40(%rbp), %rcx
	movq	%rax, -304(%rbp)        # 8-byte Spill
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.59, %rdi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.105, %rdi
	movsd	mapvals+128, %xmm0      # xmm0 = mem[0],zero
	movq	%rax, -328(%rbp)        # 8-byte Spill
	movsd	%xmm0, -336(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	$1, %edx
	xorps	%xmm0, %xmm0
	movsd	.LCPI12_1, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI12_2, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI12_0, %xmm4        # xmm4 = mem[0],zero
	movl	$2, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movq	-328(%rbp), %r8         # 8-byte Reload
	movq	%rcx, -344(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movl	%r9d, %r8d
	movsd	-336(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -352(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-352(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-352(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-352(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -356(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.89, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	$80, %edx
	movl	%edx, %esi
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.89, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_adjustment
	movsd	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero
	movl	$2, %edx
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_spin_button_configure
	movabsq	$.L.str.43, %rsi
	movabsq	$double_adjustment_update, %rax
	movabsq	$mapvals, %rcx
	addq	$128, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movq	-40(%rbp), %rcx
	movq	%rax, -384(%rbp)        # 8-byte Spill
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.61, %rdi
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.106, %rdi
	movsd	mapvals+136, %xmm0      # xmm0 = mem[0],zero
	movq	%rax, -408(%rbp)        # 8-byte Spill
	movsd	%xmm0, -416(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	$2, %edx
	xorps	%xmm0, %xmm0
	movsd	.LCPI12_1, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI12_2, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI12_0, %xmm4        # xmm4 = mem[0],zero
	movl	$1, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movq	-408(%rbp), %r8         # 8-byte Reload
	movq	%rcx, -424(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movl	%r9d, %r8d
	movsd	-416(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -432(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-432(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-432(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-432(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -436(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.89, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	$80, %edx
	movl	%edx, %esi
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.89, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_adjustment
	movsd	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero
	movl	$2, %edx
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_spin_button_configure
	movabsq	$.L.str.43, %rsi
	movabsq	$double_adjustment_update, %rax
	movabsq	$mapvals, %rcx
	addq	$136, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movq	-16(%rbp), %rdi
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-16(%rbp), %rax
	addq	$488, %rsp              # imm = 0x1E8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end12:
	.size	create_box_page, .Lfunc_end12-create_box_page
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI13_1:
	.quad	4611686018427387904     # double 2
.LCPI13_2:
	.quad	4576918229304087675     # double 0.01
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI13_3:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	create_cylinder_page,@function
create_cylinder_page:                   # @create_cylinder_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$424, %rsp              # imm = 0x1A8
.Ltmp48:
	.cfi_offset %rbx, -24
	movl	$1, %edi
	callq	gtk_size_group_new
	movl	$1, %edi
	movl	$12, %esi
	movq	%rax, -16(%rbp)
	callq	gtk_box_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movabsq	$.L.str.109, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movl	-92(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movl	$2, %ecx
	xorl	%edx, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movl	$0, -52(%rbp)
.LBB13_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$2, -52(%rbp)
	jge	.LBB13_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movabsq	$cylinder_constrain, %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	gimp_drawable_combo_box_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_int_combo_box_get_active, %rsi
	movabsq	$mapvals, %rdi
	addq	$520, %rdi              # imm = 0x208
	movslq	-52(%rbp), %rcx
	movl	mapvals+520(,%rcx,4), %edx
	movslq	-52(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movl	%edx, %esi
	movq	-144(%rbp), %rdx        # 8-byte Reload
	movq	-136(%rbp), %rcx        # 8-byte Reload
	callq	gimp_int_combo_box_connect
	movq	-40(%rbp), %rcx
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-52(%rbp), %edx
	movslq	-52(%rbp), %rcx
	movq	create_cylinder_page.labels(,%rcx,8), %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movl	%edx, -172(%rbp)        # 4-byte Spill
	callq	gettext
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	movss	.LCPI13_3, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-64(%rbp), %r8
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movl	-172(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gtk_size_group_add_widget
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB13_1
.LBB13_4:                               # %for.end
	movabsq	$.L.str.110, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	movl	-188(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movl	$2, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-40(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-32(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.111, %rdi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.112, %rdi
	movsd	mapvals+480, %xmm0      # xmm0 = mem[0],zero
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movsd	.LCPI13_1, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI13_2, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI13_0, %xmm4        # xmm4 = mem[0],zero
	movl	$2, %edx
	movl	$1, %r8d
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -256(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -260(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	-240(%rbp), %r10        # 8-byte Reload
	movl	%ecx, -264(%rbp)        # 4-byte Spill
	movq	%r10, %rcx
	movl	-264(%rbp), %r9d        # 4-byte Reload
	movl	%r8d, -268(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movsd	-248(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-280(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-280(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-280(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.113, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_size_group_add_widget
	movl	$80, %edx
	movl	%edx, %esi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.89, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	$80, %edx
	movl	%edx, %esi
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.89, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_adjustment
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movl	$2, %edx
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_spin_button_configure
	movabsq	$.L.str.43, %rsi
	movabsq	$double_adjustment_update, %rax
	movabsq	$mapvals, %rcx
	addq	$480, %rcx              # imm = 0x1E0
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movq	-40(%rbp), %rcx
	movq	%rax, -312(%rbp)        # 8-byte Spill
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.114, %rdi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.115, %rdi
	movsd	mapvals+488, %xmm0      # xmm0 = mem[0],zero
	movq	%rax, -336(%rbp)        # 8-byte Spill
	movsd	%xmm0, -344(%rbp)       # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	$1, %edx
	xorps	%xmm0, %xmm0
	movsd	.LCPI13_1, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI13_2, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI13_0, %xmm4        # xmm4 = mem[0],zero
	movl	$2, %r11d
	xorl	%ebx, %ebx
	movl	%ebx, %ecx
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %esi
	movq	-336(%rbp), %r8         # 8-byte Reload
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movl	%r9d, %r8d
	movsd	-344(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -360(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-360(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$2, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-360(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-360(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movl	%r11d, -364(%rbp)       # 4-byte Spill
	callq	gimp_scale_entry_new
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.113, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_size_group_add_widget
	movl	$80, %edx
	movl	%edx, %esi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.89, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	$80, %edx
	movl	%edx, %esi
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.89, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_spin_button_get_adjustment
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	movl	$2, %edx
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_spin_button_configure
	movabsq	$.L.str.43, %rsi
	movabsq	$double_adjustment_update, %rax
	movabsq	$mapvals, %rcx
	addq	$488, %rcx              # imm = 0x1E8
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movq	-24(%rbp), %rdi
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-24(%rbp), %rax
	addq	$424, %rsp              # imm = 0x1A8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end13:
	.size	create_cylinder_page, .Lfunc_end13-create_cylinder_page
	.cfi_endproc

	.align	16, 0x90
	.type	mapmenu_callback,@function
mapmenu_callback:                       # @mapmenu_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp51:
	.cfi_def_cfa_register %rbp
	subq	$240, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-20(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_get_active
	movl	-20(%rbp), %ecx
	movl	%ecx, mapvals+384
	cmpl	$0, mapvals+408
	movl	%eax, -36(%rbp)         # 4-byte Spill
	je	.LBB14_2
# BB#1:                                 # %if.then
	callq	compute_preview_image
	movq	previewarea, %rdi
	callq	gtk_widget_queue_draw
.LBB14_2:                               # %if.end
	cmpl	$2, mapvals+384
	jne	.LBB14_9
# BB#3:                                 # %if.then.3
	cmpq	$0, cylinder_page
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	cylinder_page, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_parent
	movq	options_note_book, %rsi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB14_6
# BB#5:                                 # %if.then.11
	movq	options_note_book, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	cylinder_page, %rsi
	movq	%rax, %rdi
	callq	gtk_container_remove
.LBB14_6:                               # %if.end.14
	cmpq	$0, box_page
	jne	.LBB14_8
# BB#7:                                 # %if.then.16
	callq	create_box_page
	movq	%rax, box_page
	movq	box_page, %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB14_8:                               # %if.end.19
	movabsq	$.L.str.19, %rdi
	movq	options_note_book, %rax
	movq	box_page, %rsi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_notebook_append_page
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB14_24
.LBB14_9:                               # %if.else
	cmpl	$3, mapvals+384
	jne	.LBB14_16
# BB#10:                                # %if.then.24
	cmpq	$0, box_page
	je	.LBB14_13
# BB#11:                                # %land.lhs.true.26
	movq	box_page, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_parent
	movq	options_note_book, %rsi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-120(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB14_13
# BB#12:                                # %if.then.33
	movq	options_note_book, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	box_page, %rsi
	movq	%rax, %rdi
	callq	gtk_container_remove
.LBB14_13:                              # %if.end.36
	cmpq	$0, cylinder_page
	jne	.LBB14_15
# BB#14:                                # %if.then.38
	callq	create_cylinder_page
	movq	%rax, cylinder_page
	movq	cylinder_page, %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB14_15:                              # %if.end.41
	movabsq	$.L.str.20, %rdi
	movq	options_note_book, %rax
	movq	cylinder_page, %rsi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_notebook_append_page
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jmp	.LBB14_23
.LBB14_16:                              # %if.else.45
	cmpq	$0, box_page
	je	.LBB14_19
# BB#17:                                # %land.lhs.true.47
	movq	box_page, %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_parent
	movq	options_note_book, %rsi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-184(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB14_19
# BB#18:                                # %if.then.54
	movq	options_note_book, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	box_page, %rsi
	movq	%rax, %rdi
	callq	gtk_container_remove
.LBB14_19:                              # %if.end.57
	cmpq	$0, cylinder_page
	je	.LBB14_22
# BB#20:                                # %land.lhs.true.59
	movq	cylinder_page, %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_parent
	movq	options_note_book, %rsi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-216(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB14_22
# BB#21:                                # %if.then.66
	movq	options_note_book, %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	cylinder_page, %rsi
	movq	%rax, %rdi
	callq	gtk_container_remove
.LBB14_22:                              # %if.end.69
	jmp	.LBB14_23
.LBB14_23:                              # %if.end.70
	jmp	.LBB14_24
.LBB14_24:                              # %if.end.71
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	mapmenu_callback, .Lfunc_end14-mapmenu_callback
	.cfi_endproc

	.align	16, 0x90
	.type	lightmenu_callback,@function
lightmenu_callback:                     # @lightmenu_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp54:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-20(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_get_active
	movl	-20(%rbp), %ecx
	movl	%ecx, mapvals+144
	cmpl	$0, mapvals+144
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jne	.LBB15_2
# BB#1:                                 # %if.then
	movq	dirlightwid, %rdi
	callq	gtk_widget_hide
	movq	pointlightwid, %rdi
	callq	gtk_widget_show
	jmp	.LBB15_6
.LBB15_2:                               # %if.else
	cmpl	$1, mapvals+144
	jne	.LBB15_4
# BB#3:                                 # %if.then.4
	movq	pointlightwid, %rdi
	callq	gtk_widget_hide
	movq	dirlightwid, %rdi
	callq	gtk_widget_show
	jmp	.LBB15_5
.LBB15_4:                               # %if.else.5
	movq	pointlightwid, %rdi
	callq	gtk_widget_hide
	movq	dirlightwid, %rdi
	callq	gtk_widget_hide
.LBB15_5:                               # %if.end
	jmp	.LBB15_6
.LBB15_6:                               # %if.end.6
	cmpl	$0, mapvals+408
	je	.LBB15_8
# BB#7:                                 # %if.then.7
	callq	compute_preview_image
	movq	previewarea, %rdi
	callq	gtk_widget_queue_draw
.LBB15_8:                               # %if.end.8
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	lightmenu_callback, .Lfunc_end15-lightmenu_callback
	.cfi_endproc

	.align	16, 0x90
	.type	box_constrain,@function
box_constrain:                          # @box_constrain
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
	subq	$32, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$-1, -12(%rbp)
	jne	.LBB16_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB16_5
.LBB16_2:                               # %if.end
	movl	-12(%rbp), %edi
	callq	gimp_drawable_is_rgb
	xorl	%edi, %edi
	movb	%dil, %cl
	cmpl	$0, %eax
	movb	%cl, -25(%rbp)          # 1-byte Spill
	je	.LBB16_4
# BB#3:                                 # %land.rhs
	movl	-12(%rbp), %edi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB16_4:                               # %land.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
.LBB16_5:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	box_constrain, .Lfunc_end16-box_constrain
	.cfi_endproc

	.align	16, 0x90
	.type	cylinder_constrain,@function
cylinder_constrain:                     # @cylinder_constrain
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
	subq	$32, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$-1, -12(%rbp)
	jne	.LBB17_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB17_5
.LBB17_2:                               # %if.end
	movl	-12(%rbp), %edi
	callq	gimp_drawable_is_rgb
	xorl	%edi, %edi
	movb	%dil, %cl
	cmpl	$0, %eax
	movb	%cl, -25(%rbp)          # 1-byte Spill
	je	.LBB17_4
# BB#3:                                 # %land.rhs
	movl	-12(%rbp), %edi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB17_4:                               # %land.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
.LBB17_5:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	cylinder_constrain, .Lfunc_end17-cylinder_constrain
	.cfi_endproc

	.type	previewarea,@object     # @previewarea
	.bss
	.globl	previewarea
	.align	8
previewarea:
	.quad	0
	.size	previewarea, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"map-object"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Map to Object"
	.size	.L.str.1, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-map-object"
	.size	.L.str.2, 16

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"plug-in-map-object"
	.size	.L.str.3, 19

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gtk-cancel"
	.size	.L.str.4, 11

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gtk-ok"
	.size	.L.str.5, 7

	.type	appwin,@object          # @appwin
	.local	appwin
	.comm	appwin,8,8
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"event"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"expose-event"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"_Preview!"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"clicked"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Recompute preview image"
	.size	.L.str.10, 24

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"zoomed"
	.size	.L.str.11, 7

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Show _wireframe"
	.size	.L.str.12, 16

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"toggled"
	.size	.L.str.13, 8

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Update preview _live"
	.size	.L.str.14, 21

	.type	box_page,@object        # @box_page
	.local	box_page
	.comm	box_page,8,8
	.type	cylinder_page,@object   # @cylinder_page
	.local	cylinder_page
	.comm	cylinder_page,8,8
	.type	light_hit,@object       # @light_hit
	.local	light_hit
	.comm	light_hit,4,4
	.type	left_button_pressed,@object # @left_button_pressed
	.local	left_button_pressed
	.comm	left_button_pressed,4,4
	.type	xadj,@object            # @xadj
	.local	xadj
	.comm	xadj,8,8
	.type	yadj,@object            # @yadj
	.local	yadj
	.comm	yadj,8,8
	.type	zadj,@object            # @zadj
	.local	zadj
	.comm	zadj,8,8
	.type	options_note_book,@object # @options_note_book
	.local	options_note_book
	.comm	options_note_book,8,8
	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"O_ptions"
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
	.asciz	"O_rientation"
	.size	.L.str.18, 13

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"_Box"
	.size	.L.str.19, 5

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"C_ylinder"
	.size	.L.str.20, 10

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"General Options"
	.size	.L.str.21, 16

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Map to:"
	.size	.L.str.22, 8

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Plane"
	.size	.L.str.23, 6

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Sphere"
	.size	.L.str.24, 7

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Box"
	.size	.L.str.25, 4

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Cylinder"
	.size	.L.str.26, 9

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"changed"
	.size	.L.str.27, 8

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Type of object to map to"
	.size	.L.str.28, 25

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Transparent background"
	.size	.L.str.29, 23

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Make image transparent outside object"
	.size	.L.str.30, 38

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Tile source image"
	.size	.L.str.31, 18

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Tile source image: useful for infinite planes"
	.size	.L.str.32, 46

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Create new image"
	.size	.L.str.33, 17

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Create a new image when applying filter"
	.size	.L.str.34, 40

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Create new layer"
	.size	.L.str.35, 17

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Create a new layer when applying filter"
	.size	.L.str.36, 40

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Enable _antialiasing"
	.size	.L.str.37, 21

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Enable/disable jagged edges removal (antialiasing)"
	.size	.L.str.38, 51

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"active"
	.size	.L.str.39, 7

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"sensitive"
	.size	.L.str.40, 10

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"_Depth:"
	.size	.L.str.41, 8

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Antialiasing quality. Higher is better, but slower"
	.size	.L.str.42, 51

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"value-changed"
	.size	.L.str.43, 14

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"_Threshold:"
	.size	.L.str.44, 12

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Stop when pixel differences are smaller than this value"
	.size	.L.str.45, 56

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Light Settings"
	.size	.L.str.46, 15

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Point light"
	.size	.L.str.47, 12

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Directional light"
	.size	.L.str.48, 18

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"No light"
	.size	.L.str.49, 9

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Lightsource type:"
	.size	.L.str.50, 18

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Type of light source to apply"
	.size	.L.str.51, 30

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Select lightsource color"
	.size	.L.str.52, 25

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Lightsource color:"
	.size	.L.str.53, 19

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"color-changed"
	.size	.L.str.54, 14

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Set light source color"
	.size	.L.str.55, 23

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Position"
	.size	.L.str.56, 9

	.type	pointlightwid,@object   # @pointlightwid
	.local	pointlightwid
	.comm	pointlightwid,8,8
	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"X:"
	.size	.L.str.57, 3

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Light source X position in XYZ space"
	.size	.L.str.58, 37

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Y:"
	.size	.L.str.59, 3

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Light source Y position in XYZ space"
	.size	.L.str.60, 37

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"Z:"
	.size	.L.str.61, 3

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Light source Z position in XYZ space"
	.size	.L.str.62, 37

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Direction Vector"
	.size	.L.str.63, 17

	.type	dirlightwid,@object     # @dirlightwid
	.local	dirlightwid
	.comm	dirlightwid,8,8
	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"Light source X direction in XYZ space"
	.size	.L.str.64, 38

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"Light source Y direction in XYZ space"
	.size	.L.str.65, 38

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"Light source Z direction in XYZ space"
	.size	.L.str.66, 38

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"Intensity Levels"
	.size	.L.str.67, 17

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"intensity-ambient-low"
	.size	.L.str.68, 22

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"Ambient:"
	.size	.L.str.69, 9

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"Amount of original color to show where no direct light falls"
	.size	.L.str.70, 61

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"intensity-ambient-high"
	.size	.L.str.71, 23

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"intensity-diffuse-low"
	.size	.L.str.72, 22

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"Diffuse:"
	.size	.L.str.73, 9

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"Intensity of original color when lit by a light source"
	.size	.L.str.74, 55

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"intensity-diffuse-high"
	.size	.L.str.75, 23

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"Reflectivity"
	.size	.L.str.76, 13

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"reflectivity-diffuse-low"
	.size	.L.str.77, 25

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"Higher values makes the object reflect more light (appear lighter)"
	.size	.L.str.78, 67

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"reflectivity-diffuse-high"
	.size	.L.str.79, 26

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"reflectivity-specular-low"
	.size	.L.str.80, 26

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"Specular:"
	.size	.L.str.81, 10

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"Controls how intense the highlights will be"
	.size	.L.str.82, 44

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"reflectivity-specular-high"
	.size	.L.str.83, 27

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"reflectivity-highlight-low"
	.size	.L.str.84, 27

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"Highlight:"
	.size	.L.str.85, 11

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"Higher values makes the highlights more focused"
	.size	.L.str.86, 48

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"reflectivity-highlight-high"
	.size	.L.str.87, 28

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"Object X position in XYZ space"
	.size	.L.str.88, 31

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"spinbutton"
	.size	.L.str.89, 11

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"Object Y position in XYZ space"
	.size	.L.str.90, 31

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"Object Z position in XYZ space"
	.size	.L.str.91, 31

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"Rotation"
	.size	.L.str.92, 9

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"Rotation angle about X axis"
	.size	.L.str.93, 28

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"Rotation angle about Y axis"
	.size	.L.str.94, 28

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"Rotation angle about Z axis"
	.size	.L.str.95, 28

	.type	create_box_page.labels,@object # @create_box_page.labels
	.data
	.align	16
create_box_page.labels:
	.quad	.L.str.96
	.quad	.L.str.97
	.quad	.L.str.98
	.quad	.L.str.99
	.quad	.L.str.100
	.quad	.L.str.101
	.size	create_box_page.labels, 48

	.type	.L.str.96,@object       # @.str.96
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.96:
	.asciz	"Front:"
	.size	.L.str.96, 7

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"Back:"
	.size	.L.str.97, 6

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"Top:"
	.size	.L.str.98, 5

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"Bottom:"
	.size	.L.str.99, 8

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"Left:"
	.size	.L.str.100, 6

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"Right:"
	.size	.L.str.101, 7

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"Map Images to Box Faces"
	.size	.L.str.102, 24

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"Scale X:"
	.size	.L.str.103, 9

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"X scale (size)"
	.size	.L.str.104, 15

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"Y scale (size)"
	.size	.L.str.105, 15

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"Z scale (size)"
	.size	.L.str.106, 15

	.type	create_cylinder_page.labels,@object # @create_cylinder_page.labels
	.data
	.align	16
create_cylinder_page.labels:
	.quad	.L.str.107
	.quad	.L.str.108
	.size	create_cylinder_page.labels, 16

	.type	.L.str.107,@object      # @.str.107
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.107:
	.asciz	"_Top:"
	.size	.L.str.107, 6

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"_Bottom:"
	.size	.L.str.108, 9

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"Images for the Cap Faces"
	.size	.L.str.109, 25

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"Size"
	.size	.L.str.110, 5

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"R_adius:"
	.size	.L.str.111, 9

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"Cylinder radius"
	.size	.L.str.112, 16

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"label"
	.size	.L.str.113, 6

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"L_ength:"
	.size	.L.str.114, 9

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"Cylinder length"
	.size	.L.str.115, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
