	.text
	.file	"gfig-dialog.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4636737291354636288     # double 100
.LCPI0_1:
	.quad	-4616189618054758400    # double -1
	.text
	.globl	gfig_dialog
	.align	16, 0x90
	.type	gfig_dialog,@function
gfig_dialog:                            # @gfig_dialog
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
	subq	$1000, %rsp             # imm = 0x3E8
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
	movabsq	$.L.str, %rdi
	movl	$1, %esi
	callq	gimp_ui_init
	movq	gfig_context, %rdi
	movl	12(%rdi), %edi
	callq	gimp_drawable_width
	movl	%eax, -116(%rbp)
	movq	gfig_context, %rcx
	movl	12(%rcx), %edi
	callq	gimp_drawable_height
	movl	%eax, -120(%rbp)
	movq	gfig_context, %rcx
	movl	12(%rcx), %edi
	callq	gimp_drawable_type_with_alpha
	movabsq	$.L.str, %rsi
	movl	%eax, -124(%rbp)
	movq	$0, gfig_list
	movl	$-1, undo_level
	movq	gfig_context, %rcx
	movl	12(%rcx), %edi
	callq	gimp_item_get_parasite
	movabsq	$.L.str.1, %rsi
	movq	%rax, -72(%rbp)
	movq	gfig_context, %rax
	movl	$0, 336(%rax)
	movq	gfig_context, %rax
	movl	$0, (%rax)
	movq	gfig_context, %rax
	addq	$40, %rax
	movq	%rax, %rdi
	callq	gfig_read_gimp_style
	movl	selvals+112, %edx
	movq	gfig_context, %rax
	movl	%edx, 128(%rax)
	cmpq	$0, -72(%rbp)
	je	.LBB0_2
# BB#1:                                 # %if.then
	movl	$3, %esi
	movq	gfig_context, %rax
	movl	12(%rax), %edi
	callq	gimp_drawable_fill
	movq	gfig_context, %rcx
	movl	$0, 340(%rcx)
	movq	-72(%rbp), %rdi
	movl	%eax, -204(%rbp)        # 4-byte Spill
	callq	gimp_parasite_free
	jmp	.LBB0_3
.LBB0_2:                                # %if.else
	movabsq	$.L.str.2, %rsi
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movq	gfig_context, %rax
	movl	8(%rax), %edi
	movl	-116(%rbp), %edx
	movl	-120(%rbp), %ecx
	movl	-124(%rbp), %r8d
	callq	gimp_layer_new
	movl	$3, %esi
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %edi
	callq	gimp_drawable_fill
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	gfig_context, %r10
	movl	8(%r10), %edi
	movl	-76(%rbp), %esi
	movl	%ecx, %edx
	movl	%eax, -208(%rbp)        # 4-byte Spill
	callq	gimp_image_insert_layer
	movl	-76(%rbp), %ecx
	movq	gfig_context, %r10
	movl	%ecx, 12(%r10)
	movq	gfig_context, %r10
	movl	$1, 340(%r10)
	movl	%eax, -212(%rbp)        # 4-byte Spill
.LBB0_3:                                # %if.end
	movq	gfig_context, %rax
	movl	12(%rax), %edi
	callq	gimp_drawable_get
	movq	%rax, gfig_drawable
	callq	gfig_stock_init
	movabsq	$.L.str.3, %rdi
	callq	gimp_gimprc_query
	movq	%rax, -176(%rbp)
	cmpq	$0, -176(%rbp)
	je	.LBB0_5
# BB#4:                                 # %if.then.20
	movq	$-1, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-176(%rbp), %rdi
	movq	%rcx, %rdx
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	movq	-224(%rbp), %r8         # 8-byte Reload
	callq	g_filename_from_utf8
	movq	%rax, gfig_path
	movq	-176(%rbp), %rdi
	callq	g_free
	jmp	.LBB0_6
.LBB0_5:                                # %if.else.22
	movabsq	$.L.str.4, %rdi
	callq	gimp_personal_rc_file
	movabsq	$.L.str, %rdi
	movq	%rax, -184(%rbp)
	callq	gimp_config_build_data_path
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rdi
	callq	g_strescape
	movq	%rax, -200(%rbp)
	movq	-192(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.5, %rdi
	callq	gettext
	movq	-200(%rbp), %rcx
	movq	-184(%rbp), %rdi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.3, %rcx
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	-240(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_message
	movq	-184(%rbp), %rdi
	callq	g_free
	movq	-200(%rbp), %rdi
	callq	g_free
.LBB0_6:                                # %if.end.28
	movabsq	$.L.str.6, %rdi
	callq	gettext
	movabsq	$.L.str.7, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.8, %r9
	movabsq	$.L.str.9, %rdi
	movl	$4294967290, %r10d      # imm = 0xFFFFFFFA
	movabsq	$.L.str.10, %r11
	movl	$4294967291, %ebx       # imm = 0xFFFFFFFB
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -252(%rbp)        # 4-byte Spill
	movl	%r10d, -256(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, top_level_dlg
	movq	top_level_dlg, %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movabsq	$.L.str.11, %rsi
	movabsq	$gfig_response, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	top_level_dlg, %r11
	movq	top_level_dlg, %r14
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	-272(%rbp), %rdx        # 8-byte Reload
	movq	%r14, %rcx
	callq	g_signal_connect_data
	movq	top_level_dlg, %rdi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	create_ui_manager
	movabsq	$.L.str.12, %rsi
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rdi
	callq	gtk_ui_manager_get_widget
	movq	%rax, -88(%rbp)
	movq	top_level_dlg, %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.13, %rsi
	movq	-160(%rbp), %rdi
	callq	gtk_ui_manager_get_widget
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_toolbar_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_toolbar_set_style
	movq	top_level_dlg, %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -324(%rbp)        # 4-byte Spill
	movl	-324(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.14, %rdi
	cmpl	$0, undo_level
	setge	%r15b
	andb	$1, %r15b
	movzbl	%r15b, %esi
	callq	gfig_dialog_action_set_sensitive
	xorl	%edi, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	top_level_dlg, %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_end
	movq	-48(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	make_preview
	xorl	%ecx, %ecx
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movl	%ecx, %edx
	movl	%ecx, -372(%rbp)        # 4-byte Spill
	movl	-372(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	gfig_context, %rax
	movq	32(%rax), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -144(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-144(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -388(%rbp)        # 4-byte Spill
	movl	-388(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-144(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.15, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -112(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -404(%rbp)        # 4-byte Spill
	movl	-404(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_notebook_new
	movq	%rax, tool_options_notebook
	movq	-112(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	tool_options_notebook, %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	tool_options_notebook, %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_notebook_set_show_tabs
	movq	tool_options_notebook, %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_notebook_set_show_border
	movq	tool_options_notebook, %rdi
	callq	gtk_widget_show
	movq	tool_options_notebook, %rdi
	callq	create_notebook_pages
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gimp_frame_new
	movq	%rax, -112(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -444(%rbp)        # 4-byte Spill
	movl	-444(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.16, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_mnemonic
	movq	%rax, -136(%rbp)
	movq	gfig_context, %rsi
	movq	%rax, 312(%rsi)
	movq	-136(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	selvals+112, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-112(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_frame_set_label_widget
	movq	-136(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_box_new
	movq	%rax, -152(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-152(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-152(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -484(%rbp)        # 4-byte Spill
	movl	-484(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rdi
	movl	selvals+112, %esi
	callq	gtk_widget_set_sensitive
	movabsq	$.L.str.17, %rsi
	movabsq	$set_paint_type_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-136(%rbp), %rdi
	movq	-56(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movl	$1, %r9d
	movl	%r9d, %edi
	movl	$32, %r9d
	movl	%r9d, %esi
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	g_malloc0_n
	movabsq	$.L.str.18, %rdi
	movl	$100, %esi
	movl	$20, %edx
	movl	$1, %r8d
	movq	gfig_context, %rcx
	movq	%rax, 320(%rcx)
	movq	gfig_context, %rax
	movq	320(%rax), %rcx
	callq	gimp_color_button_new
	movabsq	$.L.str.19, %rsi
	movabsq	$set_foreground_callback, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	gfig_context, %rdi
	movq	%rax, 264(%rdi)
	movq	gfig_context, %rax
	movq	264(%rax), %rax
	movq	gfig_context, %rdi
	movq	320(%rdi), %rdi
	movq	%rdi, -504(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-504(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	gfig_context, %rcx
	movq	264(%rcx), %rcx
	movq	%rax, -512(%rbp)        # 8-byte Spill
	movq	%rcx, -520(%rbp)        # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	gfig_context, %rcx
	addq	$40, %rcx
	addq	$96, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_color_button_set_color
	movq	-56(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	gfig_context, %rcx
	movq	264(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	gfig_context, %rax
	movq	264(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.20, %rdi
	movsd	.LCPI0_1, %xmm0         # xmm0 = mem[0],zero
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	gfig_context, %rax
	movq	48(%rax), %rsi
	movl	%ecx, %edx
	callq	gimp_brush_select_button_new
	movabsq	$.L.str.21, %rsi
	movabsq	$gfig_brush_changed_callback, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r11d
	xorl	%r9d, %r9d
	movq	gfig_context, %r14
	movq	%rax, 280(%r14)
	movq	gfig_context, %rax
	movq	280(%rax), %rax
	movq	%rdi, -536(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-536(%rbp), %rdx        # 8-byte Reload
	movq	%r11, %rcx
	movq	%r11, %r8
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -544(%rbp)        # 8-byte Spill
	movq	%rcx, -552(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	gfig_context, %rcx
	movq	280(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	gfig_context, %rax
	movq	280(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.22, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -112(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-112(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -564(%rbp)        # 4-byte Spill
	movl	-564(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-112(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_box_new
	movq	%rax, -152(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-152(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-152(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -588(%rbp)        # 4-byte Spill
	movl	-588(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.23, %rdi
	callq	gettext
	movabsq	$.L.str.24, %rdi
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.25, %rdi
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.26, %rdi
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.27, %rdi
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.28, %rdi
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %ecx
	movl	$2, %r9d
	movl	$3, %edx
	movl	$4, %r8d
	movl	$5, %r10d
	xorl	%ebx, %ebx
	movl	%ebx, %edi
	movq	-600(%rbp), %r11        # 8-byte Reload
	movq	%rdi, -640(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	-608(%rbp), %r14        # 8-byte Reload
	movl	%edx, -644(%rbp)        # 4-byte Spill
	movq	%r14, %rdx
	movq	-616(%rbp), %r12        # 8-byte Reload
	movl	%r8d, -648(%rbp)        # 4-byte Spill
	movq	%r12, %r8
	movq	-624(%rbp), %r13        # 8-byte Reload
	movq	%r13, (%rsp)
	movl	$3, 8(%rsp)
	movq	-632(%rbp), %r13        # 8-byte Reload
	movq	%r13, 16(%rsp)
	movl	$4, 24(%rsp)
	movq	%rax, 32(%rsp)
	movl	$5, 40(%rsp)
	movq	$0, 48(%rsp)
	movb	$0, %al
	movl	%r10d, -652(%rbp)       # 4-byte Spill
	callq	gimp_int_combo_box_new
	movq	%rax, -104(%rbp)
	movq	gfig_context, %rdx
	movq	%rax, 304(%rdx)
	movq	-104(%rbp), %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movabsq	$.L.str.29, %rsi
	movabsq	$select_filltype_callback, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-104(%rbp), %r8
	movq	%rdi, -672(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	-672(%rbp), %rcx        # 8-byte Reload
	movq	-672(%rbp), %r8         # 8-byte Reload
	movl	%eax, -676(%rbp)        # 4-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -688(%rbp)        # 8-byte Spill
	movq	%rcx, -696(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-696(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_notebook_new
	movq	%rax, fill_type_notebook
	movq	-56(%rbp), %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-704(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	fill_type_notebook, %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -708(%rbp)        # 4-byte Spill
	movl	-708(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	fill_type_notebook, %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-720(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_notebook_set_show_tabs
	movq	fill_type_notebook, %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-728(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_notebook_set_show_border
	movq	fill_type_notebook, %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.30, %rdi
	callq	gtk_label_new
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rdi
	callq	gtk_widget_show
	movq	fill_type_notebook, %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-736(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-168(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_notebook_append_page
	movl	$1, %ecx
	movl	%ecx, %edi
	movl	$32, %ecx
	movl	%ecx, %esi
	movl	%eax, -740(%rbp)        # 4-byte Spill
	callq	g_malloc0_n
	movabsq	$.L.str.31, %rdi
	movl	$100, %esi
	movl	$20, %edx
	movl	$1, %r8d
	movq	gfig_context, %r11
	movq	%rax, 328(%r11)
	movq	gfig_context, %rax
	movq	328(%rax), %rcx
	callq	gimp_color_button_new
	movabsq	$.L.str.19, %rsi
	movabsq	$set_background_callback, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	gfig_context, %rdi
	movq	%rax, 272(%rdi)
	movq	gfig_context, %rax
	movq	272(%rax), %rax
	movq	gfig_context, %rdi
	movq	328(%rdi), %rdi
	movq	%rdi, -752(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-752(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	gfig_context, %rcx
	movq	272(%rcx), %rcx
	movq	%rax, -760(%rbp)        # 8-byte Spill
	movq	%rcx, -768(%rbp)        # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-768(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	gfig_context, %rcx
	addq	$40, %rcx
	addq	$128, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_color_button_set_color
	movq	gfig_context, %rax
	movq	272(%rax), %rdi
	callq	gtk_widget_show
	movq	fill_type_notebook, %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-776(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	gfig_context, %rcx
	movq	272(%rcx), %rsi
	movq	%rax, %rdi
	callq	gtk_notebook_append_page
	movabsq	$.L.str.32, %rdi
	movq	gfig_context, %rcx
	movq	112(%rcx), %rsi
	movl	%eax, -780(%rbp)        # 4-byte Spill
	callq	gimp_pattern_select_button_new
	movabsq	$.L.str.33, %rsi
	movabsq	$gfig_pattern_changed_callback, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	gfig_context, %rdi
	movq	%rax, 288(%rdi)
	movq	gfig_context, %rax
	movq	288(%rax), %rax
	movq	%rax, %rdi
	movq	%rdx, -792(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-792(%rbp), %rcx        # 8-byte Reload
	movq	-792(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	gfig_context, %rcx
	movq	288(%rcx), %rdi
	movq	%rax, -800(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	fill_type_notebook, %rax
	movq	%rax, -808(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-808(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	gfig_context, %rcx
	movq	288(%rcx), %rsi
	movq	%rax, %rdi
	callq	gtk_notebook_append_page
	movabsq	$.L.str.34, %rdi
	movq	gfig_context, %rcx
	movq	120(%rcx), %rsi
	movl	%eax, -812(%rbp)        # 4-byte Spill
	callq	gimp_gradient_select_button_new
	movabsq	$.L.str.35, %rsi
	movabsq	$gfig_gradient_changed_callback, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	gfig_context, %rdi
	movq	%rax, 296(%rdi)
	movq	gfig_context, %rax
	movq	296(%rax), %rax
	movq	%rax, %rdi
	movq	%rdx, -824(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-824(%rbp), %rcx        # 8-byte Reload
	movq	-824(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	gfig_context, %rcx
	movq	296(%rcx), %rdi
	movq	%rax, -832(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	fill_type_notebook, %rax
	movq	%rax, -840(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-840(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	gfig_context, %rcx
	movq	296(%rcx), %rsi
	movq	%rax, %rdi
	callq	gtk_notebook_append_page
	movl	$1, %edi
	movl	$6, %esi
	movl	%eax, -844(%rbp)        # 4-byte Spill
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -856(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-856(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.36, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_label
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-864(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	gfig_context, %rsi
	movl	4(%rsi), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-56(%rbp), %rax
	movq	%rax, -872(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-872(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -876(%rbp)        # 4-byte Spill
	movl	-876(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_end
	movabsq	$.L.str.17, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-136(%rbp), %rdi
	movq	gfig_context, %r11
	addq	$4, %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.17, %rsi
	movabsq	$gtk_widget_queue_draw, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-136(%rbp), %rdx
	movq	gfig_context, %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -888(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-888(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -896(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-136(%rbp), %rdi
	movq	%rax, -904(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movabsq	$.L.str.37, %rsi
	movl	$12, %r9d
	movl	%r9d, %edx
	callq	g_dpgettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_label
	movq	%rax, -136(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-912(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_end
	movabsq	$.L.str.17, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$selvals, %rdi
	addq	$12, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-136(%rbp), %r11
	movq	%rdi, -920(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-920(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-136(%rbp), %rdi
	movq	%rax, -928(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movabsq	$.L.str.38, %rdi
	movq	-136(%rbp), %rax
	movq	%rax, gfig_opt_widget+40
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_label
	movq	%rax, -136(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -936(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-936(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-136(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_end
	movabsq	$.L.str.17, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$selvals, %rdi
	addq	$8, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-136(%rbp), %r11
	movq	%rdi, -944(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-944(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.17, %rsi
	movabsq	$draw_grid_clear, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-136(%rbp), %rdi
	movq	%rcx, -952(%rbp)        # 8-byte Spill
	movq	-952(%rbp), %r8         # 8-byte Reload
	movq	%rax, -960(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-136(%rbp), %rdi
	movq	%rax, -968(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-136(%rbp), %rax
	movq	%rax, gfig_opt_widget+32
	movq	gfig_path, %rdi
	callq	gfig_list_load_all
	callq	gimp_context_get_brush
	movq	gfig_context, %rcx
	movq	%rax, 208(%rcx)
	movq	gfig_context, %rax
	addq	$208, %rax
	addq	$24, %rax
	movq	gfig_context, %rcx
	addq	$208, %rcx
	addq	$28, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	mygimp_brush_info
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movq	top_level_dlg, %rdi
	callq	gtk_widget_show
	callq	gfig_load_from_parasite
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB0_8
# BB#7:                                 # %if.then.208
	movq	-64(%rbp), %rdi
	callq	gfig_list_insert
	movq	-64(%rbp), %rdi
	movl	%eax, -972(%rbp)        # 4-byte Spill
	callq	new_obj_2edit
	movq	gfig_context, %rdi
	addq	$40, %rdi
	callq	gfig_style_set_context_from_style
	movq	gfig_context, %rdi
	addq	$40, %rdi
	callq	gfig_style_apply
.LBB0_8:                                # %if.end.212
	movq	gfig_context, %rax
	movl	$1, 336(%rax)
	callq	gfig_paint_callback
	callq	gtk_main
	movl	$1, %eax
	addq	$1000, %rsp             # imm = 0x3E8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gfig_dialog, .Lfunc_end0-gfig_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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
	je	.LBB1_2
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
.LBB1_2:                                # %entry
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
.Lfunc_end1:
	.size	g_message, .Lfunc_end1-g_message
	.cfi_endproc

	.align	16, 0x90
	.type	gfig_response,@function
gfig_response:                          # @gfig_response
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-12(%rbp), %esi
	movl	%esi, %eax
	subl	$-6, %eax
	movl	%esi, -36(%rbp)         # 4-byte Spill
	movl	%eax, -40(%rbp)         # 4-byte Spill
	je	.LBB2_1
	jmp	.LBB2_10
.LBB2_10:                               # %entry
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$-5, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	je	.LBB2_7
	jmp	.LBB2_11
.LBB2_11:                               # %entry
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$-4, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jne	.LBB2_8
	jmp	.LBB2_1
.LBB2_1:                                # %sw.bb
	movq	gfig_context, %rax
	cmpl	$0, 340(%rax)
	je	.LBB2_3
# BB#2:                                 # %if.then
	movq	gfig_context, %rax
	movl	8(%rax), %edi
	movq	gfig_context, %rax
	movl	12(%rax), %esi
	callq	gimp_image_remove_layer
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB2_6
.LBB2_3:                                # %if.else
	movq	gfig_context, %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rdi
	callq	free_all_objs
	movq	gfig_context, %rax
	movq	16(%rax), %rax
	movq	$0, 96(%rax)
	callq	gfig_load_from_parasite
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB2_5
# BB#4:                                 # %if.then.5
	movq	-32(%rbp), %rdi
	callq	gfig_list_insert
	movq	-32(%rbp), %rdi
	movl	%eax, -56(%rbp)         # 4-byte Spill
	callq	new_obj_2edit
.LBB2_5:                                # %if.end
	movq	gfig_context, %rax
	movl	$1, 336(%rax)
	callq	gfig_paint_callback
.LBB2_6:                                # %if.end.7
	jmp	.LBB2_9
.LBB2_7:                                # %sw.bb.8
	callq	gfig_save_as_parasite
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB2_9
.LBB2_8:                                # %sw.default
	jmp	.LBB2_9
.LBB2_9:                                # %sw.epilog
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
	callq	gtk_main_quit
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gfig_response, .Lfunc_end2-gfig_response
	.cfi_endproc

	.align	16, 0x90
	.type	create_ui_manager,@function
create_ui_manager:                      # @create_ui_manager
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	callq	gtk_ui_manager_new
	movabsq	$.L.str.158, %rdi
	movq	%rax, -16(%rbp)
	callq	gtk_action_group_new
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, gfig_actions
	movq	gfig_actions, %rdi
	callq	gtk_action_group_set_translation_domain
	movabsq	$create_ui_manager.actions, %rsi
	movl	$17, %edx
	movq	gfig_actions, %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	callq	gtk_action_group_add_actions
	movabsq	$create_ui_manager.radio_actions, %rsi
	movl	$14, %edx
	movl	$1, %ecx
	movabsq	$toggle_obj_type, %rax
	movq	gfig_actions, %rdi
	movq	-8(%rbp), %r8
	movq	%r8, -24(%rbp)          # 8-byte Spill
	movq	%rax, %r8
	movq	-24(%rbp), %r9          # 8-byte Reload
	callq	gtk_action_group_add_radio_actions
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_ui_manager_get_accel_group
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_window_add_accel_group
	movq	-16(%rbp), %rdi
	callq	gtk_ui_manager_get_accel_group
	movq	%rax, %rdi
	callq	gtk_accel_group_lock
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rdi
	movq	gfig_actions, %rsi
	callq	gtk_ui_manager_insert_action_group
	movq	gfig_actions, %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movabsq	$.L.str.159, %rsi
	movq	$-1, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-16(%rbp), %rdi
	callq	gtk_ui_manager_add_ui_from_string
	movabsq	$.L.str.160, %rsi
	movq	$-1, %rdx
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movq	-16(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gtk_ui_manager_add_ui_from_string
	movq	-16(%rbp), %rcx
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movq	%rcx, %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	create_ui_manager, .Lfunc_end3-create_ui_manager
	.cfi_endproc

	.globl	gfig_dialog_action_set_sensitive
	.align	16, 0x90
	.type	gfig_dialog_action_set_sensitive,@function
gfig_dialog_action_set_sensitive:       # @gfig_dialog_action_set_sensitive
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L__func__.gfig_dialog_action_set_sensitive, %rsi
	movabsq	$.L.str.39, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_9
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	cmpq	$0, gfig_actions
	je	.LBB4_9
# BB#6:                                 # %if.then.1
	movq	gfig_actions, %rdi
	movq	-8(%rbp), %rsi
	callq	gtk_action_group_get_action
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB4_8
# BB#7:                                 # %if.then.3
	movabsq	$.L.str.40, %rdi
	movabsq	$.L__func__.gfig_dialog_action_set_sensitive, %rsi
	movq	-8(%rbp), %rdx
	movb	$0, %al
	callq	g_warning
	jmp	.LBB4_9
.LBB4_8:                                # %if.end.4
	movabsq	$.L.str.41, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	xorl	%eax, %eax
	movl	$1, %edx
	movq	-24(%rbp), %rdi
	cmpl	$0, -12(%rbp)
	cmovnel	%edx, %eax
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
.LBB4_9:                                # %if.end.6
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gfig_dialog_action_set_sensitive, .Lfunc_end4-gfig_dialog_action_set_sensitive
	.cfi_endproc

	.align	16, 0x90
	.type	create_notebook_pages,@function
create_notebook_pages:                  # @create_notebook_pages
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	tool_option_no_option
	movq	-8(%rbp), %rdi
	callq	tool_option_no_option
	movq	-8(%rbp), %rdi
	callq	tool_option_no_option
	movq	-8(%rbp), %rdi
	callq	tool_option_no_option
	movq	-8(%rbp), %rdi
	callq	tool_option_no_option
	movq	-8(%rbp), %rdi
	callq	tool_options_poly
	movq	-8(%rbp), %rdi
	callq	tool_options_star
	movq	-8(%rbp), %rdi
	callq	tool_options_spiral
	movq	-8(%rbp), %rdi
	callq	tool_options_bezier
	movq	-8(%rbp), %rdi
	callq	tool_option_no_option
	movq	-8(%rbp), %rdi
	callq	tool_option_no_option
	movq	-8(%rbp), %rdi
	callq	tool_option_no_option
	movq	-8(%rbp), %rdi
	callq	tool_option_no_option
	movq	-8(%rbp), %rdi
	callq	tool_option_no_option
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	create_notebook_pages, .Lfunc_end5-create_notebook_pages
	.cfi_endproc

	.align	16, 0x90
	.type	select_filltype_callback,@function
select_filltype_callback:               # @select_filltype_callback
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-12(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_get_active
	movq	fill_type_notebook, %rsi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$3, -12(%rbp)
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jge	.LBB6_2
# BB#1:                                 # %cond.true
	movl	-12(%rbp), %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB6_3
.LBB6_2:                                # %cond.false
	movl	$3, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB6_3
.LBB6_3:                                # %cond.end
	movl	-52(%rbp), %eax         # 4-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	gtk_notebook_set_current_page
	movl	-12(%rbp), %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	callq	gfig_context_get_current_style
	movl	-56(%rbp), %esi         # 4-byte Reload
	movl	%esi, 56(%rax)
	callq	gfig_paint_callback
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	select_filltype_callback, .Lfunc_end6-select_filltype_callback
	.cfi_endproc

	.globl	draw_grid_clear
	.align	16, 0x90
	.type	draw_grid_clear,@function
draw_grid_clear:                        # @draw_grid_clear
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
	movq	gfig_context, %rax
	movq	32(%rax), %rdi
	callq	gtk_widget_queue_draw
	popq	%rbp
	retq
.Lfunc_end7:
	.size	draw_grid_clear, .Lfunc_end7-draw_grid_clear
	.cfi_endproc

	.align	16, 0x90
	.type	gfig_list_load_all,@function
gfig_list_load_all:                     # @gfig_list_load_all
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
	movq	%rdi, -8(%rbp)
	movq	gfig_context, %rdi
	movq	$0, 16(%rdi)
	callq	gfig_list_free_all
	cmpq	$0, gfig_list
	jne	.LBB8_2
# BB#1:                                 # %if.then
	callq	gfig_new
	movabsq	$.L.str.47, %rdi
	movq	%rax, -16(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	g_strdup
	movq	-16(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-16(%rbp), %rdi
	callq	gfig_list_insert
	movl	%eax, -20(%rbp)         # 4-byte Spill
.LBB8_2:                                # %if.end
	movq	gfig_list, %rax
	movq	(%rax), %rax
	movq	gfig_context, %rcx
	movq	%rax, 16(%rcx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gfig_list_load_all, .Lfunc_end8-gfig_list_load_all
	.cfi_endproc

	.globl	gfig_paint_callback
	.align	16, 0x90
	.type	gfig_paint_callback,@function
gfig_paint_callback:                    # @gfig_paint_callback
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
	subq	$64, %rsp
	movl	$0, -12(%rbp)
	movq	gfig_context, %rax
	cmpl	$0, 336(%rax)
	je	.LBB9_2
# BB#1:                                 # %lor.lhs.false
	movq	gfig_context, %rax
	cmpq	$0, 16(%rax)
	jne	.LBB9_3
.LBB9_2:                                # %if.then
	jmp	.LBB9_15
.LBB9_3:                                # %if.end
	movl	$3, %esi
	movq	gfig_context, %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	gfig_context, %rax
	movl	12(%rax), %edi
	callq	gimp_drawable_fill
	movl	%eax, -32(%rbp)         # 4-byte Spill
.LBB9_4:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB9_12
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB9_4 Depth=1
	movl	-12(%rbp), %eax
	cmpl	obj_show_single, %eax
	je	.LBB9_7
# BB#6:                                 # %lor.lhs.false.4
                                        #   in Loop: Header=BB9_4 Depth=1
	cmpl	$-1, obj_show_single
	jne	.LBB9_8
.LBB9_7:                                # %if.then.6
                                        #   in Loop: Header=BB9_4 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	callq	gfig_style_apply
	callq	gfig_context_get_current_style
	movl	56(%rax), %ecx
	movl	%ecx, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	88(%rax), %ecx
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	callq	gfig_context_get_current_style
	movl	-36(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, 56(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	24(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	movl	-28(%rbp), %ecx
	movl	%ecx, -40(%rbp)         # 4-byte Spill
	callq	gfig_context_get_current_style
	movl	-40(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, 56(%rax)
.LBB9_8:                                # %if.end.14
                                        #   in Loop: Header=BB9_4 Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB9_10
# BB#9:                                 # %cond.true
                                        #   in Loop: Header=BB9_4 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB9_11
.LBB9_10:                               # %cond.false
                                        #   in Loop: Header=BB9_4 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB9_11
.LBB9_11:                               # %cond.end
                                        #   in Loop: Header=BB9_4 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
	movl	-12(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -12(%rbp)
	jmp	.LBB9_4
.LBB9_12:                               # %while.end
	callq	gimp_displays_flush
	cmpq	$0, back_pixbuf
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB9_14
# BB#13:                                # %if.then.18
	movq	back_pixbuf, %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	$0, back_pixbuf
.LBB9_14:                               # %if.end.19
	movq	gfig_context, %rax
	movq	32(%rax), %rdi
	callq	gtk_widget_queue_draw
.LBB9_15:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gfig_paint_callback, .Lfunc_end9-gfig_paint_callback
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB10_2
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
.LBB10_2:                               # %entry
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
.Lfunc_end10:
	.size	g_warning, .Lfunc_end10-g_warning
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4607182418800017408     # double 1
.LCPI11_1:
	.quad	4613937818241073152     # double 3
	.text
	.globl	draw_item
	.align	16, 0x90
	.type	draw_item,@function
draw_item:                              # @draw_item
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
	subq	$32, %rsp
	xorps	%xmm0, %xmm0
	movsd	.LCPI11_0, %xmm3        # xmm3 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	movsd	-24(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-24(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_set_source_rgba
	cmpl	$0, -12(%rbp)
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	cairo_fill_preserve
	jmp	.LBB11_3
.LBB11_2:                               # %if.else
	movsd	.LCPI11_1, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	callq	cairo_set_line_width
	movq	-8(%rbp), %rdi
	callq	cairo_stroke_preserve
.LBB11_3:                               # %if.end
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movsd	-32(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-32(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	cairo_set_source_rgba
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	callq	cairo_set_line_width
	movq	-8(%rbp), %rdi
	callq	cairo_stroke
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	draw_item, .Lfunc_end11-draw_item
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4616189618054758400     # double 4
.LCPI12_1:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI12_2:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	draw_circle
	.align	16, 0x90
	.type	draw_circle,@function
draw_circle:                            # @draw_circle
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$0, selvals+20
	jne	.LBB12_2
# BB#1:                                 # %if.then
	jmp	.LBB12_3
.LBB12_2:                               # %if.end
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movl	%ecx, %edi
	callq	gfig_scale_x
	movsd	.LCPI12_2, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	addsd	%xmm0, %xmm1
	movq	-8(%rbp), %rdx
	movl	4(%rdx), %edi
	movsd	%xmm1, -40(%rbp)        # 8-byte Spill
	callq	gfig_scale_y
	movsd	.LCPI12_0, %xmm2        # xmm2 = mem[0],zero
	xorps	%xmm3, %xmm3
	movsd	.LCPI12_1, %xmm4        # xmm4 = mem[0],zero
	movsd	.LCPI12_2, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	addsd	%xmm0, %xmm1
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cairo_arc
	movq	-24(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	draw_item
.LBB12_3:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	draw_circle, .Lfunc_end12-draw_circle
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gfig_scale_x
	.align	16, 0x90
	.type	gfig_scale_x,@function
gfig_scale_x:                           # @gfig_scale_x
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
	movl	%edi, -8(%rbp)
	cmpl	$0, selvals+120
	jne	.LBB13_2
# BB#1:                                 # %if.then
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-8(%rbp), %xmm1
	divsd	scale_x_factor, %xmm0
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB13_3
.LBB13_2:                               # %if.else
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB13_3:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gfig_scale_x, .Lfunc_end13-gfig_scale_x
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI14_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gfig_scale_y
	.align	16, 0x90
	.type	gfig_scale_y,@function
gfig_scale_y:                           # @gfig_scale_y
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
	movl	%edi, -8(%rbp)
	cmpl	$0, selvals+120
	jne	.LBB14_2
# BB#1:                                 # %if.then
	movsd	.LCPI14_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-8(%rbp), %xmm1
	divsd	scale_y_factor, %xmm0
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB14_3
.LBB14_2:                               # %if.else
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB14_3:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gfig_scale_y, .Lfunc_end14-gfig_scale_y
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4620693217682128896     # double 8
.LCPI15_1:
	.quad	4616189618054758400     # double 4
.LCPI15_2:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	draw_sqr
	.align	16, 0x90
	.type	draw_sqr,@function
draw_sqr:                               # @draw_sqr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$0, selvals+20
	jne	.LBB15_2
# BB#1:                                 # %if.then
	jmp	.LBB15_3
.LBB15_2:                               # %if.end
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movl	%ecx, %edi
	callq	gfig_scale_x
	movsd	.LCPI15_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI15_2, %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdl	%eax, %xmm2
	addsd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	movq	-8(%rbp), %rdx
	movl	4(%rdx), %edi
	movsd	%xmm2, -40(%rbp)        # 8-byte Spill
	callq	gfig_scale_y
	movsd	.LCPI15_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI15_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI15_2, %xmm2        # xmm2 = mem[0],zero
	cvtsi2sdl	%eax, %xmm3
	addsd	%xmm2, %xmm3
	subsd	%xmm1, %xmm3
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movsd	-40(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm3, %xmm1
	movsd	-48(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	cairo_rectangle
	movq	-24(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	draw_item
.LBB15_3:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	draw_sqr, .Lfunc_end15-draw_sqr
	.cfi_endproc

	.globl	options_update
	.align	16, 0x90
	.type	options_update,@function
options_update:                         # @options_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp55:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	selvals, %eax
	movq	-8(%rbp), %rdi
	cmpl	32(%rdi), %eax
	je	.LBB16_2
# BB#1:                                 # %if.then
	movl	selvals, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 32(%rcx)
.LBB16_2:                               # %if.end
	movl	selvals+56, %eax
	movq	-8(%rbp), %rcx
	cmpl	88(%rcx), %eax
	je	.LBB16_4
# BB#3:                                 # %if.then.5
	movl	selvals+56, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 88(%rcx)
.LBB16_4:                               # %if.end.8
	movsd	selvals+32, %xmm0       # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	ucomisd	64(%rax), %xmm0
	jne	.LBB16_5
	jp	.LBB16_5
	jmp	.LBB16_6
.LBB16_5:                               # %if.then.11
	movsd	selvals+32, %xmm0       # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 64(%rax)
.LBB16_6:                               # %if.end.14
	movl	selvals+4, %eax
	movq	-8(%rbp), %rcx
	cmpl	36(%rcx), %eax
	je	.LBB16_8
# BB#7:                                 # %if.then.17
	movl	selvals+4, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 36(%rcx)
.LBB16_8:                               # %if.end.20
	movl	selvals+8, %eax
	movq	-8(%rbp), %rcx
	cmpl	40(%rcx), %eax
	je	.LBB16_10
# BB#9:                                 # %if.then.23
	movl	selvals+8, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 40(%rcx)
.LBB16_10:                              # %if.end.26
	movl	selvals+12, %eax
	movq	-8(%rbp), %rcx
	cmpl	44(%rcx), %eax
	je	.LBB16_12
# BB#11:                                # %if.then.29
	movl	selvals+12, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 44(%rcx)
.LBB16_12:                              # %if.end.32
	movl	selvals+16, %eax
	movq	-8(%rbp), %rcx
	cmpl	48(%rcx), %eax
	je	.LBB16_14
# BB#13:                                # %if.then.35
	movl	selvals+16, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 48(%rcx)
.LBB16_14:                              # %if.end.38
	movl	selvals+20, %eax
	movq	-8(%rbp), %rcx
	cmpl	52(%rcx), %eax
	je	.LBB16_16
# BB#15:                                # %if.then.41
	movl	selvals+20, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 52(%rcx)
.LBB16_16:                              # %if.end.44
	movl	selvals, %eax
	movq	gfig_context, %rcx
	movq	16(%rcx), %rcx
	cmpl	32(%rcx), %eax
	je	.LBB16_20
# BB#17:                                # %if.then.48
	cmpq	$0, gfig_opt_widget
	je	.LBB16_19
# BB#18:                                # %if.then.49
	movq	gfig_opt_widget, %rdi
	movq	gfig_context, %rax
	movq	16(%rax), %rax
	cvtsi2sdl	32(%rax), %xmm0
	callq	gtk_adjustment_set_value
.LBB16_19:                              # %if.end.53
	jmp	.LBB16_20
.LBB16_20:                              # %if.end.54
	movl	selvals+56, %eax
	movq	gfig_context, %rcx
	movq	16(%rcx), %rcx
	cmpl	88(%rcx), %eax
	je	.LBB16_24
# BB#21:                                # %if.then.60
	cmpq	$0, gfig_opt_widget+8
	je	.LBB16_23
# BB#22:                                # %if.then.62
	movq	gfig_opt_widget+8, %rdi
	movq	gfig_context, %rax
	movq	16(%rax), %rax
	cvtsi2sdl	88(%rax), %xmm0
	callq	gtk_adjustment_set_value
.LBB16_23:                              # %if.end.67
	jmp	.LBB16_24
.LBB16_24:                              # %if.end.68
	movsd	selvals+32, %xmm0       # xmm0 = mem[0],zero
	movq	gfig_context, %rax
	movq	16(%rax), %rax
	ucomisd	64(%rax), %xmm0
	jne	.LBB16_25
	jp	.LBB16_25
	jmp	.LBB16_28
.LBB16_25:                              # %if.then.74
	cmpq	$0, gfig_opt_widget+16
	je	.LBB16_27
# BB#26:                                # %if.then.76
	movq	gfig_opt_widget+16, %rdi
	movq	gfig_context, %rax
	movq	16(%rax), %rax
	movsd	64(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gtk_adjustment_set_value
.LBB16_27:                              # %if.end.80
	jmp	.LBB16_28
.LBB16_28:                              # %if.end.81
	movl	selvals+4, %eax
	movq	gfig_context, %rcx
	movq	16(%rcx), %rcx
	cmpl	36(%rcx), %eax
	je	.LBB16_32
# BB#29:                                # %if.then.87
	cmpq	$0, gfig_opt_widget+24
	je	.LBB16_31
# BB#30:                                # %if.then.89
	movq	gfig_opt_widget+24, %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	gfig_context, %rsi
	movq	16(%rsi), %rsi
	movl	36(%rsi), %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movl	%eax, -20(%rbp)         # 4-byte Spill
.LBB16_31:                              # %if.end.95
	jmp	.LBB16_32
.LBB16_32:                              # %if.end.96
	movl	selvals+8, %eax
	movq	gfig_context, %rcx
	movq	16(%rcx), %rcx
	cmpl	40(%rcx), %eax
	je	.LBB16_36
# BB#33:                                # %if.then.102
	cmpq	$0, gfig_opt_widget+32
	je	.LBB16_35
# BB#34:                                # %if.then.104
	movq	gfig_opt_widget+32, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	gfig_context, %rsi
	movq	16(%rsi), %rsi
	movl	40(%rsi), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
.LBB16_35:                              # %if.end.110
	jmp	.LBB16_36
.LBB16_36:                              # %if.end.111
	movl	selvals+12, %eax
	movq	gfig_context, %rcx
	movq	16(%rcx), %rcx
	cmpl	44(%rcx), %eax
	je	.LBB16_40
# BB#37:                                # %if.then.117
	cmpq	$0, gfig_opt_widget+40
	je	.LBB16_39
# BB#38:                                # %if.then.119
	movq	gfig_opt_widget+40, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	gfig_context, %rsi
	movq	16(%rsi), %rsi
	movl	44(%rsi), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
.LBB16_39:                              # %if.end.125
	jmp	.LBB16_40
.LBB16_40:                              # %if.end.126
	movl	selvals+16, %eax
	movq	gfig_context, %rcx
	movq	16(%rcx), %rcx
	cmpl	48(%rcx), %eax
	je	.LBB16_44
# BB#41:                                # %if.then.132
	cmpq	$0, gfig_opt_widget+48
	je	.LBB16_43
# BB#42:                                # %if.then.134
	movq	gfig_opt_widget+48, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	gfig_context, %rsi
	movq	16(%rsi), %rsi
	movl	48(%rsi), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
.LBB16_43:                              # %if.end.140
	jmp	.LBB16_44
.LBB16_44:                              # %if.end.141
	movl	selvals+20, %eax
	movq	gfig_context, %rcx
	movq	16(%rcx), %rcx
	cmpl	52(%rcx), %eax
	je	.LBB16_48
# BB#45:                                # %if.then.147
	cmpq	$0, gfig_opt_widget+56
	je	.LBB16_47
# BB#46:                                # %if.then.149
	movq	gfig_opt_widget+56, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	gfig_context, %rsi
	movq	16(%rsi), %rsi
	movl	52(%rsi), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
.LBB16_47:                              # %if.end.155
	jmp	.LBB16_48
.LBB16_48:                              # %if.end.156
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	options_update, .Lfunc_end16-options_update
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	4607182418800017408     # double 1
.LCPI17_1:
	.quad	4621819117588971520     # double 10
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI17_2:
	.long	1056964608              # float 0.5
	.text
	.globl	num_sides_widget
	.align	16, 0x90
	.type	num_sides_widget,@function
num_sides_widget:                       # @num_sides_widget
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp58:
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movl	$3, %eax
	xorl	%r9d, %r9d
	movl	$1, %r10d
	movl	$2, %r11d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	cmpq	$0, -24(%rbp)
	cmovnel	%r11d, %r10d
	movl	%r10d, %edi
	movl	%eax, %esi
	movl	%r9d, %edx
	callq	gtk_table_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.42, %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movsd	.LCPI17_0, %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI17_1, %xmm4        # xmm4 = mem[0],zero
	movl	$1, %edx
	xorps	%xmm0, %xmm0
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	-16(%rbp), %rdi
	cvtsi2sdl	(%rdi), %xmm1
	cvtsi2sdl	-28(%rbp), %xmm2
	cvtsi2sdl	-32(%rbp), %xmm5
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -108(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	%ecx, -112(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-112(%rbp), %r8d        # 4-byte Reload
	movl	-112(%rbp), %r9d        # 4-byte Reload
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movaps	%xmm2, %xmm1
	movaps	%xmm5, %xmm2
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-120(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-120(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.43, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-128(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	cmpq	$0, -24(%rbp)
	movq	%rax, -136(%rbp)        # 8-byte Spill
	je	.LBB17_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.44, %rdi
	callq	gettext
	movabsq	$.L.str.45, %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	gimp_int_combo_box_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rdx
	movl	(%rdx), %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movabsq	$.L.str.29, %rsi
	movabsq	$gimp_int_combo_box_get_active, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %r10
	movq	%r10, %rcx
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	g_signal_connect_data
	movq	-40(%rbp), %rcx
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.46, %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %r9d
	xorps	%xmm0, %xmm0
	movss	.LCPI17_2, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	-56(%rbp), %r8
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %edx
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB17_2:                               # %if.end
	movq	-40(%rbp), %rax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	num_sides_widget, .Lfunc_end17-num_sides_widget
	.cfi_endproc

	.globl	gfig_paint
	.align	16, 0x90
	.type	gfig_paint,@function
gfig_paint:                             # @gfig_paint
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp61:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movq	%rcx, -24(%rbp)
	movl	-4(%rbp), %edx
	movl	%edx, %ecx
	movq	%rcx, %rax
	subq	$3, %rax
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	movq	%rax, -40(%rbp)         # 8-byte Spill
	ja	.LBB18_5
# BB#6:                                 # %entry
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	.LJTI18_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB18_1:                               # %sw.bb
	xorl	%ecx, %ecx
	movl	-8(%rbp), %edi
	movsd	selvals+80, %xmm0       # xmm0 = mem[0],zero
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	movsd	selvals+88, %xmm1       # xmm1 = mem[0],zero
	callq	gimp_paintbrush
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB18_5
.LBB18_2:                               # %sw.bb.1
	movl	-8(%rbp), %edi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	gimp_pencil
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB18_5
.LBB18_3:                               # %sw.bb.3
	movl	-8(%rbp), %edi
	movsd	selvals+96, %xmm0       # xmm0 = mem[0],zero
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	gimp_airbrush
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB18_5
.LBB18_4:                               # %sw.bb.5
	movl	$1, %edx
	xorps	%xmm0, %xmm0
	movl	-8(%rbp), %edi
	movl	-8(%rbp), %esi
	movl	-12(%rbp), %ecx
	movq	-24(%rbp), %r8
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_clone
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB18_5:                               # %sw.epilog
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gfig_paint, .Lfunc_end18-gfig_paint
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI18_0:
	.quad	.LBB18_1
	.quad	.LBB18_2
	.quad	.LBB18_3
	.quad	.LBB18_4

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI19_0:
	.quad	4636737291354636288     # double 100
	.text
	.globl	paint_layer_fill
	.align	16, 0x90
	.type	paint_layer_fill,@function
paint_layer_fill:                       # @paint_layer_fill
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movsd	%xmm3, -32(%rbp)
	movl	$0, -36(%rbp)
	callq	gfig_context_get_current_style
	movq	%rax, -48(%rbp)
	movl	56(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdx
	subq	$5, %rdx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	ja	.LBB19_7
# BB#9:                                 # %entry
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	.LJTI19_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB19_1:                               # %sw.bb
	jmp	.LBB19_8
.LBB19_2:                               # %sw.bb.1
	movl	$1, -36(%rbp)
	jmp	.LBB19_7
.LBB19_3:                               # %sw.bb.2
	movl	$2, -36(%rbp)
	jmp	.LBB19_7
.LBB19_4:                               # %sw.bb.3
	movl	$3, %esi
	xorl	%eax, %eax
	movl	$8, %ecx
	movsd	.LCPI19_0, %xmm0        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	gfig_context, %rdx
	movl	12(%rdx), %edi
	movl	%eax, %edx
	movsd	%xmm1, -72(%rbp)        # 8-byte Spill
	movl	%eax, %r8d
	movl	%eax, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movsd	-72(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movl	$0, 16(%rsp)
	movsd	-72(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-72(%rbp), %xmm4        # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	-72(%rbp), %xmm5        # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-72(%rbp), %xmm6        # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_edit_blend
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB19_8
.LBB19_5:                               # %sw.bb.5
	movl	$3, %esi
	xorl	%eax, %eax
	movsd	.LCPI19_0, %xmm0        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	gfig_context, %rcx
	movl	12(%rcx), %edi
	movsd	-8(%rbp), %xmm3         # xmm3 = mem[0],zero
	movsd	-16(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-8(%rbp), %xmm5         # xmm5 = mem[0],zero
	movsd	-32(%rbp), %xmm6        # xmm6 = mem[0],zero
	movl	%eax, %edx
	movl	%eax, %ecx
	movsd	%xmm1, -88(%rbp)        # 8-byte Spill
	movl	%eax, %r8d
	movl	%eax, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movsd	-88(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movl	$0, 16(%rsp)
	callq	gimp_edit_blend
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB19_8
.LBB19_6:                               # %sw.bb.8
	movl	$3, %esi
	xorl	%eax, %eax
	movsd	.LCPI19_0, %xmm0        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	gfig_context, %rcx
	movl	12(%rcx), %edi
	movsd	-8(%rbp), %xmm3         # xmm3 = mem[0],zero
	movsd	-16(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-24(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-16(%rbp), %xmm6        # xmm6 = mem[0],zero
	movl	%eax, %edx
	movl	%eax, %ecx
	movsd	%xmm1, -104(%rbp)       # 8-byte Spill
	movl	%eax, %r8d
	movl	%eax, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movsd	-104(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movl	$0, 16(%rsp)
	callq	gimp_edit_blend
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB19_8
.LBB19_7:                               # %sw.epilog
	xorl	%eax, %eax
	xorps	%xmm0, %xmm0
	movq	gfig_context, %rcx
	movl	12(%rcx), %edi
	movl	-36(%rbp), %esi
	movq	-48(%rbp), %rcx
	movsd	64(%rcx), %xmm1         # xmm1 = mem[0],zero
	movl	%eax, %edx
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-120(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	%eax, %ecx
	movsd	-120(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-120(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	gimp_edit_bucket_fill
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB19_8:                               # %return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	paint_layer_fill, .Lfunc_end19-paint_layer_fill
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI19_0:
	.quad	.LBB19_1
	.quad	.LBB19_2
	.quad	.LBB19_3
	.quad	.LBB19_4
	.quad	.LBB19_5
	.quad	.LBB19_6

	.text
	.globl	scale_to_original_xy
	.align	16, 0x90
	.type	scale_to_original_xy,@function
scale_to_original_xy:                   # @scale_to_original_xy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp67:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -16(%rbp)
.LBB20_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %ecx
	shll	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB20_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB20_1 Depth=1
	movslq	-16(%rbp), %rax
	shlq	$3, %rax
	addq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	scale_to_orginal_x
	movl	-16(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$3, %rax
	addq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	scale_to_orginal_y
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB20_1
.LBB20_4:                               # %for.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	scale_to_original_xy, .Lfunc_end20-scale_to_original_xy
	.cfi_endproc

	.align	16, 0x90
	.type	scale_to_orginal_x,@function
scale_to_orginal_x:                     # @scale_to_orginal_x
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp68:
	.cfi_def_cfa_offset 16
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp70:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movsd	scale_x_factor, %xmm0   # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	mulsd	(%rdi), %xmm0
	movsd	%xmm0, (%rdi)
	popq	%rbp
	retq
.Lfunc_end21:
	.size	scale_to_orginal_x, .Lfunc_end21-scale_to_orginal_x
	.cfi_endproc

	.align	16, 0x90
	.type	scale_to_orginal_y,@function
scale_to_orginal_y:                     # @scale_to_orginal_y
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
.Ltmp72:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp73:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movsd	scale_y_factor, %xmm0   # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	mulsd	(%rdi), %xmm0
	movsd	%xmm0, (%rdi)
	popq	%rbp
	retq
.Lfunc_end22:
	.size	scale_to_orginal_y, .Lfunc_end22-scale_to_orginal_y
	.cfi_endproc

	.globl	scale_to_xy
	.align	16, 0x90
	.type	scale_to_xy,@function
scale_to_xy:                            # @scale_to_xy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp76:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -16(%rbp)
.LBB23_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %ecx
	shll	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB23_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB23_1 Depth=1
	movsd	org_scale_x_factor, %xmm0 # xmm0 = mem[0],zero
	divsd	scale_x_factor, %xmm0
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	mulsd	(%rcx,%rax,8), %xmm0
	movsd	%xmm0, (%rcx,%rax,8)
	movsd	org_scale_y_factor, %xmm0 # xmm0 = mem[0],zero
	divsd	scale_y_factor, %xmm0
	movl	-16(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	movq	-8(%rbp), %rcx
	mulsd	(%rcx,%rax,8), %xmm0
	movsd	%xmm0, (%rcx,%rax,8)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB23_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB23_1
.LBB23_4:                               # %for.end
	popq	%rbp
	retq
.Lfunc_end23:
	.size	scale_to_xy, .Lfunc_end23-scale_to_xy
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI24_0:
	.quad	4607182418800017408     # double 1
.LCPI24_1:
	.quad	4640537203540230144     # double 180
.LCPI24_2:
	.quad	4614256656552045848     # double 3.1415926535897931
	.text
	.globl	gfig_draw_arc
	.align	16, 0x90
	.type	gfig_draw_arc,@function
gfig_draw_arc:                          # @gfig_draw_arc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
.Ltmp78:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp79:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	16(%rbp), %rax
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	movl	%r9d, -24(%rbp)
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	cairo_save
	movq	-32(%rbp), %rdi
	movl	-4(%rbp), %ecx
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movl	%ecx, %edi
	callq	gfig_scale_x
	cvtsi2sdl	%eax, %xmm0
	movl	-8(%rbp), %edi
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	callq	gfig_scale_y
	cvtsi2sdl	%eax, %xmm1
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cairo_translate
	movq	-32(%rbp), %rdi
	movl	-12(%rbp), %eax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	gfig_scale_x
	cvtsi2sdl	%eax, %xmm0
	movl	-16(%rbp), %edi
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	callq	gfig_scale_y
	cvtsi2sdl	%eax, %xmm1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cairo_scale
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB24_2
# BB#1:                                 # %if.then
	xorps	%xmm0, %xmm0
	movsd	.LCPI24_0, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI24_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI24_2, %xmm3        # xmm3 = mem[0],zero
	movq	-32(%rbp), %rdi
	cvtsi2sdl	-20(%rbp), %xmm4
	mulsd	%xmm3, %xmm4
	divsd	%xmm1, %xmm4
	cvtsi2sdl	-24(%rbp), %xmm5
	mulsd	%xmm3, %xmm5
	divsd	%xmm1, %xmm5
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movaps	%xmm4, %xmm3
	movaps	%xmm5, %xmm4
	callq	cairo_arc
	jmp	.LBB24_3
.LBB24_2:                               # %if.else
	xorps	%xmm0, %xmm0
	movsd	.LCPI24_0, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI24_1, %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI24_2, %xmm3        # xmm3 = mem[0],zero
	movq	-32(%rbp), %rdi
	cvtsi2sdl	-20(%rbp), %xmm4
	mulsd	%xmm3, %xmm4
	divsd	%xmm1, %xmm4
	cvtsi2sdl	-24(%rbp), %xmm5
	mulsd	%xmm3, %xmm5
	divsd	%xmm1, %xmm5
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movaps	%xmm4, %xmm3
	movaps	%xmm5, %xmm4
	callq	cairo_arc_negative
.LBB24_3:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	cairo_restore
	xorl	%esi, %esi
	movq	-32(%rbp), %rdi
	callq	draw_item
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gfig_draw_arc, .Lfunc_end24-gfig_draw_arc
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI25_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	gfig_draw_line
	.align	16, 0x90
	.type	gfig_draw_line,@function
gfig_draw_line:                         # @gfig_draw_line
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
.Ltmp81:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp82:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movq	%r8, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	-4(%rbp), %ecx
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movl	%ecx, %edi
	callq	gfig_scale_x
	movsd	.LCPI25_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	addsd	%xmm0, %xmm1
	movl	-8(%rbp), %edi
	movsd	%xmm1, -40(%rbp)        # 8-byte Spill
	callq	gfig_scale_y
	movsd	.LCPI25_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	addsd	%xmm0, %xmm1
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cairo_move_to
	movq	-24(%rbp), %rdi
	movl	-12(%rbp), %eax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	gfig_scale_x
	movsd	.LCPI25_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	addsd	%xmm0, %xmm1
	movl	-16(%rbp), %edi
	movsd	%xmm1, -56(%rbp)        # 8-byte Spill
	callq	gfig_scale_y
	movsd	.LCPI25_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	addsd	%xmm0, %xmm1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	cairo_line_to
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	callq	draw_item
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gfig_draw_line, .Lfunc_end25-gfig_draw_line
	.cfi_endproc

	.align	16, 0x90
	.type	gfig_list_free_all,@function
gfig_list_free_all:                     # @gfig_list_free_all
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp83:
	.cfi_def_cfa_offset 16
.Ltmp84:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp85:
	.cfi_def_cfa_register %rbp
	movabsq	$gfig_free, %rax
	movq	gfig_list, %rdi
	movq	%rax, %rsi
	callq	g_list_free_full
	movq	$0, gfig_list
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gfig_list_free_all, .Lfunc_end26-gfig_list_free_all
	.cfi_endproc

	.align	16, 0x90
	.type	gfig_load_action_callback,@function
gfig_load_action_callback:              # @gfig_load_action_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp86:
	.cfi_def_cfa_offset 16
.Ltmp87:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp88:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$136, %rsp
.Ltmp89:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, gfig_load_action_callback.dialog
	jne	.LBB27_4
# BB#1:                                 # %if.then
	movabsq	$.L.str.161, %rdi
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movabsq	$.L.str.9, %rcx
	movl	$4294967290, %r8d       # imm = 0xFFFFFFFA
	movabsq	$.L.str.53, %r9
	movl	$4294967291, %r10d      # imm = 0xFFFFFFFB
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movl	$-5, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	movl	%r10d, -60(%rbp)        # 4-byte Spill
	callq	gtk_file_chooser_dialog_new
	movq	%rax, gfig_load_action_callback.dialog
	movq	gfig_load_action_callback.dialog, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	gfig_load_action_callback.dialog, %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movq	%rax, %rdi
	callq	gtk_dialog_set_default_response
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	gfig_load_action_callback.dialog, %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$gfig_load_action_callback.dialog, %rsi
	movq	%rax, %rdi
	callq	g_object_add_weak_pointer
	movabsq	$.L.str.11, %rsi
	movabsq	$load_file_chooser_response, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	gfig_load_action_callback.dialog, %rbx
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %rdx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	-88(%rbp), %r8          # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gfig_get_user_writable_dir
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB27_3
# BB#2:                                 # %if.then.12
	movq	gfig_load_action_callback.dialog, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_current_folder
	movq	-32(%rbp), %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	g_free
.LBB27_3:                               # %if.end
	movq	gfig_load_action_callback.dialog, %rdi
	callq	gtk_widget_show
	jmp	.LBB27_5
.LBB27_4:                               # %if.else
	movq	gfig_load_action_callback.dialog, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
.LBB27_5:                               # %if.end.18
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gfig_load_action_callback, .Lfunc_end27-gfig_load_action_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gfig_save_action_callback,@function
gfig_save_action_callback:              # @gfig_save_action_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp92:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$136, %rsp
.Ltmp93:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, gfig_save_action_callback.dialog
	jne	.LBB28_4
# BB#1:                                 # %if.then
	movabsq	$.L.str.162, %rdi
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movabsq	$.L.str.9, %rcx
	movl	$4294967290, %r8d       # imm = 0xFFFFFFFA
	movabsq	$.L.str.56, %r9
	movl	$4294967291, %r10d      # imm = 0xFFFFFFFB
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movl	$-5, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	movl	%r10d, -60(%rbp)        # 4-byte Spill
	callq	gtk_file_chooser_dialog_new
	movq	%rax, gfig_save_action_callback.dialog
	movq	gfig_save_action_callback.dialog, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	gfig_save_action_callback.dialog, %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movq	%rax, %rdi
	callq	gtk_dialog_set_default_response
	movq	gfig_save_action_callback.dialog, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_do_overwrite_confirmation
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	gfig_save_action_callback.dialog, %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$gfig_save_action_callback.dialog, %rsi
	movq	%rax, %rdi
	callq	g_object_add_weak_pointer
	movabsq	$.L.str.11, %rsi
	movabsq	$save_file_chooser_response, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	gfig_save_action_callback.dialog, %rdi
	movq	gfig_context, %rbx
	movq	16(%rbx), %rbx
	movq	%rax, %rdx
	movq	%rbx, %rcx
	callq	g_signal_connect_data
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gfig_get_user_writable_dir
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB28_3
# BB#2:                                 # %if.then.14
	movq	gfig_save_action_callback.dialog, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_current_folder
	movq	-32(%rbp), %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	g_free
.LBB28_3:                               # %if.end
	movq	gfig_save_action_callback.dialog, %rdi
	callq	gtk_widget_show
	jmp	.LBB28_5
.LBB28_4:                               # %if.else
	movq	gfig_save_action_callback.dialog, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
.LBB28_5:                               # %if.end.20
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gfig_save_action_callback, .Lfunc_end28-gfig_save_action_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gfig_close_action_callback,@function
gfig_close_action_callback:             # @gfig_close_action_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp94:
	.cfi_def_cfa_offset 16
.Ltmp95:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp96:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movq	%rax, %rdi
	callq	gtk_dialog_response
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gfig_close_action_callback, .Lfunc_end29-gfig_close_action_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gfig_undo_action_callback,@function
gfig_undo_action_callback:              # @gfig_undo_action_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp97:
	.cfi_def_cfa_offset 16
.Ltmp98:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp99:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$0, undo_level
	jl	.LBB30_5
# BB#1:                                 # %if.then
	movq	gfig_context, %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rdi
	callq	free_all_objs
	movq	gfig_context, %rax
	movq	16(%rax), %rax
	movq	$0, 96(%rax)
	movq	$0, obj_creating
	movq	$0, tmp_line
	movq	$0, tmp_bezier
	movslq	undo_level, %rax
	movq	undo_table(,%rax,8), %rax
	movq	gfig_context, %rdi
	movq	16(%rdi), %rdi
	movq	%rax, 96(%rdi)
	movl	undo_level, %ecx
	addl	$-1, %ecx
	movl	%ecx, undo_level
	movq	gfig_context, %rax
	movq	32(%rax), %rdi
	callq	gtk_widget_queue_draw
	movq	gfig_context, %rax
	movq	16(%rax), %rax
	movl	104(%rax), %ecx
	orl	$1, %ecx
	movl	%ecx, 104(%rax)
	movq	gfig_context, %rax
	movq	16(%rax), %rax
	cmpq	$0, 96(%rax)
	je	.LBB30_3
# BB#2:                                 # %if.then.8
	movq	gfig_context, %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rax
	movq	(%rax), %rax
	movq	gfig_context, %rcx
	movq	%rax, 24(%rcx)
	jmp	.LBB30_4
.LBB30_3:                               # %if.else
	movq	gfig_context, %rax
	movq	$0, 24(%rax)
.LBB30_4:                               # %if.end
	jmp	.LBB30_5
.LBB30_5:                               # %if.end.13
	movabsq	$.L.str.14, %rdi
	cmpl	$0, undo_level
	setge	%al
	andb	$1, %al
	movzbl	%al, %esi
	callq	gfig_dialog_action_set_sensitive
	callq	gfig_paint_callback
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gfig_undo_action_callback, .Lfunc_end30-gfig_undo_action_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gfig_clear_action_callback,@function
gfig_clear_action_callback:             # @gfig_clear_action_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp100:
	.cfi_def_cfa_offset 16
.Ltmp101:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp102:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	gfig_context, %rsi
	movq	16(%rsi), %rsi
	cmpq	$0, 96(%rsi)
	jne	.LBB31_2
# BB#1:                                 # %if.then
	jmp	.LBB31_3
.LBB31_2:                               # %if.end
	callq	setup_undo
	movq	gfig_context, %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rdi
	callq	free_all_objs
	movq	gfig_context, %rax
	movq	16(%rax), %rax
	movq	$0, 96(%rax)
	movq	gfig_context, %rax
	movq	$0, 24(%rax)
	movq	$0, obj_creating
	movq	$0, tmp_line
	movq	$0, tmp_bezier
	movq	gfig_context, %rax
	movq	32(%rax), %rdi
	callq	gtk_widget_queue_draw
	callq	gfig_paint_callback
.LBB31_3:                               # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gfig_clear_action_callback, .Lfunc_end31-gfig_clear_action_callback
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI32_0:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI32_1:
	.quad	4617315517961601024     # double 5
.LCPI32_2:
	.quad	4632233691727265792     # double 50
.LCPI32_3:
	.quad	4607182418800017408     # double 1
.LCPI32_4:
	.quad	4645040803167600640     # double 360
.LCPI32_5:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	gfig_grid_action_callback,@function
gfig_grid_action_callback:              # @gfig_grid_action_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp103:
	.cfi_def_cfa_offset 16
.Ltmp104:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp105:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$736, %rsp              # imm = 0x2E0
.Ltmp106:
	.cfi_offset %rbx, -48
.Ltmp107:
	.cfi_offset %r12, -40
.Ltmp108:
	.cfi_offset %r14, -32
.Ltmp109:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	cmpq	$0, gfig_grid_action_callback.dialog
	jne	.LBB32_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.163, %rdi
	callq	gettext
	movq	-48(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.164, %rsi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %edi
	movabsq	$.L.str.10, %r8
	movl	$4294967289, %edx       # imm = 0xFFFFFFF9
	movq	-112(%rbp), %r9         # 8-byte Reload
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%edx, -132(%rbp)        # 4-byte Spill
	movq	%rax, %rdx
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%r8, -144(%rbp)         # 8-byte Spill
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-144(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movl	$-7, 8(%rsp)
	movq	$0, 16(%rsp)
	movb	$0, %al
	callq	gimp_dialog_new
	movq	%rax, gfig_grid_action_callback.dialog
	movq	gfig_grid_action_callback.dialog, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967289, %esi       # imm = 0xFFFFFFF9
	movq	%rax, %rdi
	callq	gtk_dialog_set_default_response
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	gfig_grid_action_callback.dialog, %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$gfig_grid_action_callback.dialog, %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	g_object_add_weak_pointer
	movabsq	$.L.str.11, %rsi
	movabsq	$gtk_widget_destroy, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r9d, %r9d
	movq	gfig_grid_action_callback.dialog, %rdi
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movq	-160(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movl	$1, %edi
	xorl	%esi, %esi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	gfig_grid_action_callback.dialog, %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	movl	-204(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movl	$3, %ecx
	xorl	%edx, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-72(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-56(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	movl	-236(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movq	-72(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.165, %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$100, %r8d
	movl	$50, %r9d
	movsd	.LCPI32_5, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI32_2, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI32_3, %xmm3        # xmm3 = mem[0],zero
	movl	$1, %edx
	xorps	%xmm1, %xmm1
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	cvtsi2sdl	selvals, %xmm4
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -264(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -268(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	%rax, %rcx
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm0
	movsd	-280(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	%xmm1, -288(%rbp)       # 8-byte Spill
	movaps	%xmm4, %xmm1
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-288(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-288(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.43, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$selvals, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-296(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.43, %rsi
	movabsq	$draw_grid_clear, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rdi
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	movq	-304(%rbp), %r8         # 8-byte Reload
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-88(%rbp), %rcx
	movq	%rax, -320(%rbp)        # 8-byte Spill
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	%rax, gfig_opt_widget
	movq	gfig_opt_widget, %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$gfig_opt_widget, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_object_add_weak_pointer
	movq	-72(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.166, %rdi
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$3, %edx
	movl	$1, %r8d
	movl	$5, %r9d
	movsd	.LCPI32_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI32_4, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI32_3, %xmm4        # xmm4 = mem[0],zero
	xorps	%xmm1, %xmm1
	xorl	%r11d, %r11d
	movl	%r11d, %ecx
	cvtsi2sdl	selvals+56, %xmm3
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -360(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-360(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -368(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-368(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-368(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.43, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$selvals, %rdi
	addq	$56, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-376(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.43, %rsi
	movabsq	$draw_grid_clear, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rdi
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	movq	-384(%rbp), %r8         # 8-byte Reload
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-96(%rbp), %rcx
	movq	%rax, -400(%rbp)        # 8-byte Spill
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	%rax, gfig_opt_widget+8
	movq	gfig_opt_widget+8, %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$gfig_opt_widget, %rcx
	addq	$8, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_object_add_weak_pointer
	movq	-88(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	%rax, gfig_opt_widget
	movq	gfig_opt_widget, %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$gfig_opt_widget, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_object_add_weak_pointer
	movq	-72(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.167, %rdi
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$4, %edx
	movl	$1, %r8d
	movl	$5, %r9d
	movsd	.LCPI32_1, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI32_2, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI32_3, %xmm4        # xmm4 = mem[0],zero
	xorps	%xmm1, %xmm1
	xorl	%r11d, %r11d
	movl	%r11d, %ecx
	movsd	selvals+32, %xmm3       # xmm3 = mem[0],zero
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, -440(%rbp)        # 8-byte Spill
	movq	%rax, %rcx
	movsd	%xmm0, -448(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-448(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -456(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-456(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-456(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.43, %rsi
	movabsq	$gimp_double_adjustment_update, %rcx
	movabsq	$selvals, %rdi
	addq	$32, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rdi, -464(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-464(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.43, %rsi
	movabsq	$draw_grid_clear, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-104(%rbp), %rdi
	movq	%rcx, -472(%rbp)        # 8-byte Spill
	movq	-472(%rbp), %r8         # 8-byte Reload
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-104(%rbp), %rcx
	movq	%rax, -488(%rbp)        # 8-byte Spill
	movq	%rcx, -496(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	%rax, gfig_opt_widget+16
	movq	gfig_opt_widget+16, %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$gfig_opt_widget, %rcx
	addq	$16, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_object_add_weak_pointer
	movabsq	$.L.str.168, %rdi
	callq	gettext
	movabsq	$.L.str.169, %rdi
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.170, %rdi
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %ecx
	movl	$2, %r9d
	xorl	%r11d, %r11d
	movl	%r11d, %edx
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	-512(%rbp), %r8         # 8-byte Reload
	movq	%rdx, -520(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movq	%rax, %r8
	movq	$0, (%rsp)
	movb	$0, %al
	callq	gimp_int_combo_box_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	selvals+4, %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movabsq	$.L.str.29, %rsi
	movabsq	$gridtype_combo_callback, %rdx
	movl	$1, %ecx
                                        # kill: RCX<def> ECX<kill>
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %rdi
	movl	%eax, -532(%rbp)        # 4-byte Spill
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -544(%rbp)        # 8-byte Spill
	movq	%rcx, -552(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.171, %rdi
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI32_0, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movl	$2, %r9d
	movq	-80(%rbp), %r8
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movl	$80, %edx
	movl	%edx, %esi
	movq	-80(%rbp), %rcx
	movq	%rcx, gfig_opt_widget+24
	movq	gfig_opt_widget+24, %rcx
	movq	%rcx, %rdi
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$gfig_opt_widget, %rcx
	addq	$24, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_object_add_weak_pointer
	movabsq	$.L.str.172, %rdi
	callq	gettext
	movabsq	$.L.str.173, %rdi
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.174, %rdi
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.175, %rdi
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.176, %rdi
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.177, %rdi
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.178, %rdi
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movl	$4294967294, %ecx       # imm = 0xFFFFFFFE
	movl	$4294967293, %r9d       # imm = 0xFFFFFFFD
	movl	$4294967292, %edx       # imm = 0xFFFFFFFC
	movl	$4294967291, %r11d      # imm = 0xFFFFFFFB
	movl	$4294967290, %ebx       # imm = 0xFFFFFFFA
	movl	$4294967289, %r14d      # imm = 0xFFFFFFF9
	xorl	%r15d, %r15d
	movl	%r15d, %edi
	movq	-576(%rbp), %r8         # 8-byte Reload
	movq	%rdi, -624(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	-584(%rbp), %r10        # 8-byte Reload
	movl	%edx, -628(%rbp)        # 4-byte Spill
	movq	%r10, %rdx
	movq	-592(%rbp), %r8         # 8-byte Reload
	movq	-600(%rbp), %r12        # 8-byte Reload
	movq	%r12, (%rsp)
	movl	$-4, 8(%rsp)
	movq	-608(%rbp), %r12        # 8-byte Reload
	movq	%r12, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	-616(%rbp), %r12        # 8-byte Reload
	movq	%r12, 32(%rsp)
	movl	$-6, 40(%rsp)
	movq	%rax, 48(%rsp)
	movl	$-7, 56(%rsp)
	movq	$0, 64(%rsp)
	movb	$0, %al
	movl	%ebx, -632(%rbp)        # 4-byte Spill
	movl	%r14d, -636(%rbp)       # 4-byte Spill
	movl	%r11d, -640(%rbp)       # 4-byte Spill
	callq	gimp_int_combo_box_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-648(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	grid_gc_type, %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movabsq	$.L.str.29, %rsi
	movabsq	$gridtype_combo_callback, %rdx
	movl	$2, %ecx
                                        # kill: RCX<def> ECX<kill>
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %rdi
	movl	%eax, -652(%rbp)        # 4-byte Spill
	callq	g_signal_connect_data
	movq	-72(%rbp), %rcx
	movq	%rax, -664(%rbp)        # 8-byte Spill
	movq	%rcx, -672(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.179, %rdi
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %r9d
	xorps	%xmm0, %xmm0
	movss	.LCPI32_0, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movq	-80(%rbp), %r8
	movq	-680(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %edx
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	gfig_grid_action_callback.dialog, %rdi
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	jmp	.LBB32_3
.LBB32_2:                               # %if.else
	movq	gfig_grid_action_callback.dialog, %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-696(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
.LBB32_3:                               # %if.end
	addq	$736, %rsp              # imm = 0x2E0
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gfig_grid_action_callback, .Lfunc_end32-gfig_grid_action_callback
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI33_0:
	.long	1065353216              # float 1
.LCPI33_3:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI33_1:
	.quad	4636737291354636288     # double 100
.LCPI33_2:
	.quad	4607182418800017408     # double 1
.LCPI33_4:
	.quad	4621819117588971520     # double 10
.LCPI33_5:
	.quad	4611686018427387904     # double 2
	.text
	.align	16, 0x90
	.type	gfig_prefs_action_callback,@function
gfig_prefs_action_callback:             # @gfig_prefs_action_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp110:
	.cfi_def_cfa_offset 16
.Ltmp111:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp112:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$672, %rsp              # imm = 0x2A0
.Ltmp113:
	.cfi_offset %rbx, -32
.Ltmp114:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, gfig_prefs_action_callback.dialog
	jne	.LBB33_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.182, %rdi
	callq	gettext
	movq	-32(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.183, %rsi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %edi
	movabsq	$.L.str.10, %r8
	movl	$4294967289, %edx       # imm = 0xFFFFFFF9
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%edx, -108(%rbp)        # 4-byte Spill
	movq	%rax, %rdx
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%r8, -120(%rbp)         # 8-byte Spill
	movq	%rax, %r8
	movq	%rax, %r9
	movq	-120(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movl	$-7, 8(%rsp)
	movq	$0, 16(%rsp)
	movb	$0, %al
	callq	gimp_dialog_new
	movq	%rax, gfig_prefs_action_callback.dialog
	movq	gfig_prefs_action_callback.dialog, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967289, %esi       # imm = 0xFFFFFFF9
	movq	%rax, %rdi
	callq	gtk_dialog_set_default_response
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	gfig_prefs_action_callback.dialog, %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$gfig_prefs_action_callback.dialog, %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	g_object_add_weak_pointer
	movabsq	$.L.str.11, %rsi
	movabsq	$gtk_widget_destroy, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r9d, %r9d
	movq	gfig_prefs_action_callback.dialog, %rdi
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	-136(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movl	$1, %edi
	xorl	%esi, %esi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	gfig_prefs_action_callback.dialog, %rax
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
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.184, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_label
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$6, %r8d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	selvals+72, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movabsq	$.L.str.17, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$selvals, %rdi
	addq	$72, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %r10
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-192(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.17, %rsi
	movabsq	$gfig_pos_enable, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movl	$1, %r9d
	movq	-56(%rbp), %rdi
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-200(%rbp), %rcx        # 8-byte Reload
	movq	-200(%rbp), %r8         # 8-byte Reload
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movabsq	$.L.str.185, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_label
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movl	$6, %r8d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	selvals+20, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movabsq	$.L.str.17, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$selvals, %rdi
	addq	$20, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %r10
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-240(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.17, %rsi
	movabsq	$toggle_show_image, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	movq	-248(%rbp), %r8         # 8-byte Reload
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rdi
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-56(%rbp), %rax
	movq	%rax, gfig_opt_widget+56
	movq	gfig_opt_widget+56, %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$gfig_opt_widget, %rcx
	addq	$56, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_object_add_weak_pointer
	movabsq	$.L.str.186, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_label
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movl	$6, %r8d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	selopt+4, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movabsq	$.L.str.17, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$selopt, %rdi
	addq	$4, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %r10
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-288(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.17, %rsi
	movabsq	$gfig_paint_callback, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	movq	-296(%rbp), %r8         # 8-byte Reload
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rdi
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movl	$4, %r9d
	xorl	%edx, %edx
	movl	%r9d, %edi
	movl	%r9d, %esi
	callq	gtk_table_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-48(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-40(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$6, %r8d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -340(%rbp)        # 4-byte Spill
	movl	-340(%rbp), %ecx        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movq	-48(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.187, %rdi
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	$100, %r8d
	movl	$50, %r9d
	movsd	.LCPI33_2, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI33_4, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI33_5, %xmm4        # xmm4 = mem[0],zero
	movl	$1, %edx
	xorps	%xmm1, %xmm1
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	cvtsi2sdl	selvals+68, %xmm3
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -368(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -372(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movq	%rax, %rcx
	movsd	%xmm0, -384(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-384(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -392(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movsd	-392(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-392(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	callq	gimp_scale_entry_new
	movabsq	$.L.str.43, %rsi
	movabsq	$gimp_int_adjustment_update, %rcx
	movabsq	$selvals, %rdi
	addq	$68, %rdi
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-400(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.188, %rdi
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.31, %rdi
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.18, %rdi
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.174, %rdi
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.189, %rdi
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %ecx
	movl	$2, %r9d
	movl	$3, %r11d
	movl	$4, %ebx
	xorl	%r14d, %r14d
	movl	%r14d, %edx
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	-424(%rbp), %r8         # 8-byte Reload
	movq	%rdx, -448(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movq	-432(%rbp), %r8         # 8-byte Reload
	movq	-440(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movl	$3, 8(%rsp)
	movq	%rax, 16(%rsp)
	movl	$4, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -452(%rbp)        # 4-byte Spill
	movl	%r11d, -456(%rbp)       # 4-byte Spill
	callq	gimp_int_combo_box_new
	movq	%rax, page_menu_bg
	movq	page_menu_bg, %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	selvals+108, %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movabsq	$.L.str.29, %rsi
	movabsq	$paint_combo_callback, %rdx
	movl	$2, %ecx
                                        # kill: RCX<def> ECX<kill>
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	page_menu_bg, %rdi
	movl	%eax, -468(%rbp)        # 4-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.190, %rdi
	movq	page_menu_bg, %rcx
	movq	%rax, -480(%rbp)        # 8-byte Spill
	movq	%rcx, -488(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movq	-48(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.191, %rdi
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI33_3, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movl	$2, %r9d
	movq	page_menu_bg, %r8
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.192, %rdi
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_label
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movl	$3, %r9d
	movl	$4, %r11d
	xorl	%ebx, %ebx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -524(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	-524(%rbp), %r8d        # 4-byte Reload
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%ebx, -528(%rbp)        # 4-byte Spill
	movl	%r11d, -532(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movabsq	$.L.str.17, %rsi
	movabsq	$gimp_toggle_button_update, %rax
	movabsq	$selopt, %rdi
	addq	$8, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %r10
	movq	%rdi, -544(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-544(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.17, %rsi
	movabsq	$gfig_paint_callback, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	%rcx, -552(%rbp)        # 8-byte Spill
	movq	-552(%rbp), %r8         # 8-byte Reload
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rdi
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	xorps	%xmm0, %xmm0
	movsd	.LCPI33_1, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI33_2, %xmm1        # xmm1 = mem[0],zero
	movsd	selopt+16, %xmm3        # xmm3 = mem[0],zero
	movsd	%xmm0, -576(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-576(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -584(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-584(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-584(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	-576(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	callq	gtk_adjustment_new
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rsi
	callq	gtk_scale_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	gtk_scale_get_type
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_scale_set_value_pos
	movabsq	$.L.str.43, %rsi
	movabsq	$gimp_double_adjustment_update, %rax
	movabsq	$selopt, %rcx
	addq	$16, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movabsq	$.L.str.43, %rsi
	movabsq	$gfig_paint_delayed, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-80(%rbp), %rdi
	movq	%rcx, -600(%rbp)        # 8-byte Spill
	movq	-600(%rbp), %r8         # 8-byte Reload
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-48(%rbp), %rcx
	movq	%rax, -616(%rbp)        # 8-byte Spill
	movq	%rcx, -624(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.193, %rdi
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$2, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI33_0, %xmm1        # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-72(%rbp), %r8
	movq	-632(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	gfig_prefs_action_callback.dialog, %rdi
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	jmp	.LBB33_3
.LBB33_2:                               # %if.else
	movq	gfig_prefs_action_callback.dialog, %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-648(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
.LBB33_3:                               # %if.end
	addq	$672, %rsp              # imm = 0x2A0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gfig_prefs_action_callback, .Lfunc_end33-gfig_prefs_action_callback
	.cfi_endproc

	.align	16, 0x90
	.type	raise_selected_obj,@function
raise_selected_obj:                     # @raise_selected_obj
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp115:
	.cfi_def_cfa_offset 16
.Ltmp116:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp117:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	gfig_context, %rsi
	cmpq	$0, 24(%rsi)
	jne	.LBB34_2
# BB#1:                                 # %if.then
	jmp	.LBB34_6
.LBB34_2:                               # %if.end
	movq	gfig_context, %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rdi
	movq	gfig_context, %rax
	movq	24(%rax), %rax
	movq	%rax, %rsi
	callq	g_list_find
	cmpq	$0, %rax
	je	.LBB34_4
# BB#3:                                 # %if.then.3
	movq	gfig_context, %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rdi
	movq	gfig_context, %rax
	movq	24(%rax), %rax
	movq	%rax, %rsi
	callq	g_list_index
	movl	%eax, -20(%rbp)
	movq	gfig_context, %rsi
	movq	16(%rsi), %rsi
	movq	96(%rsi), %rdi
	movq	gfig_context, %rsi
	movq	24(%rsi), %rsi
	callq	g_list_remove
	movq	gfig_context, %rsi
	movq	16(%rsi), %rsi
	movq	%rax, 96(%rsi)
	movq	gfig_context, %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rdi
	movq	gfig_context, %rax
	movq	24(%rax), %rax
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movq	%rax, %rsi
	movl	%ecx, %edx
	callq	g_list_insert
	movq	gfig_context, %rsi
	movq	16(%rsi), %rsi
	movq	%rax, 96(%rsi)
	jmp	.LBB34_5
.LBB34_4:                               # %if.else
	movabsq	$.L.str.194, %rdi
	movb	$0, %al
	callq	g_message
	jmp	.LBB34_6
.LBB34_5:                               # %if.end.20
	callq	gfig_paint_callback
.LBB34_6:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	raise_selected_obj, .Lfunc_end34-raise_selected_obj
	.cfi_endproc

	.align	16, 0x90
	.type	lower_selected_obj,@function
lower_selected_obj:                     # @lower_selected_obj
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp118:
	.cfi_def_cfa_offset 16
.Ltmp119:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp120:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	gfig_context, %rsi
	cmpq	$0, 24(%rsi)
	jne	.LBB35_2
# BB#1:                                 # %if.then
	jmp	.LBB35_9
.LBB35_2:                               # %if.end
	movq	gfig_context, %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rdi
	movq	gfig_context, %rax
	movq	24(%rax), %rax
	movq	%rax, %rsi
	callq	g_list_find
	cmpq	$0, %rax
	je	.LBB35_7
# BB#3:                                 # %if.then.3
	movq	gfig_context, %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rdi
	movq	gfig_context, %rax
	movq	24(%rax), %rax
	movq	%rax, %rsi
	callq	g_list_index
	movl	%eax, -20(%rbp)
	movq	gfig_context, %rsi
	movq	16(%rsi), %rsi
	movq	96(%rsi), %rdi
	movq	gfig_context, %rsi
	movq	24(%rsi), %rsi
	callq	g_list_remove
	xorl	%ecx, %ecx
	movq	gfig_context, %rsi
	movq	16(%rsi), %rsi
	movq	%rax, 96(%rsi)
	movq	gfig_context, %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rdi
	movq	gfig_context, %rax
	movq	24(%rax), %rax
	movl	-20(%rbp), %edx
	subl	$1, %edx
	cmpl	%edx, %ecx
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	jle	.LBB35_5
# BB#4:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB35_6
.LBB35_5:                               # %cond.false
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB35_6:                               # %cond.end
	movl	-44(%rbp), %eax         # 4-byte Reload
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movl	%eax, %edx
	callq	g_list_insert
	movq	gfig_context, %rsi
	movq	16(%rsi), %rsi
	movq	%rax, 96(%rsi)
	jmp	.LBB35_8
.LBB35_7:                               # %if.else
	movabsq	$.L.str.195, %rdi
	movb	$0, %al
	callq	g_message
	jmp	.LBB35_9
.LBB35_8:                               # %if.end.21
	callq	gfig_paint_callback
.LBB35_9:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	lower_selected_obj, .Lfunc_end35-lower_selected_obj
	.cfi_endproc

	.align	16, 0x90
	.type	raise_selected_obj_to_top,@function
raise_selected_obj_to_top:              # @raise_selected_obj_to_top
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp121:
	.cfi_def_cfa_offset 16
.Ltmp122:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp123:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	gfig_context, %rsi
	cmpq	$0, 24(%rsi)
	jne	.LBB36_2
# BB#1:                                 # %if.then
	jmp	.LBB36_6
.LBB36_2:                               # %if.end
	movq	gfig_context, %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rdi
	movq	gfig_context, %rax
	movq	24(%rax), %rax
	movq	%rax, %rsi
	callq	g_list_find
	cmpq	$0, %rax
	je	.LBB36_4
# BB#3:                                 # %if.then.3
	movq	gfig_context, %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rdi
	movq	gfig_context, %rax
	movq	24(%rax), %rax
	movq	%rax, %rsi
	callq	g_list_remove
	movq	gfig_context, %rsi
	movq	16(%rsi), %rsi
	movq	%rax, 96(%rsi)
	movq	gfig_context, %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rdi
	movq	gfig_context, %rax
	movq	24(%rax), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movq	gfig_context, %rsi
	movq	16(%rsi), %rsi
	movq	%rax, 96(%rsi)
	jmp	.LBB36_5
.LBB36_4:                               # %if.else
	movabsq	$.L.str.194, %rdi
	movb	$0, %al
	callq	g_message
	jmp	.LBB36_6
.LBB36_5:                               # %if.end.16
	callq	gfig_paint_callback
.LBB36_6:                               # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	raise_selected_obj_to_top, .Lfunc_end36-raise_selected_obj_to_top
	.cfi_endproc

	.align	16, 0x90
	.type	lower_selected_obj_to_bottom,@function
lower_selected_obj_to_bottom:           # @lower_selected_obj_to_bottom
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp124:
	.cfi_def_cfa_offset 16
.Ltmp125:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp126:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	gfig_context, %rsi
	cmpq	$0, 24(%rsi)
	jne	.LBB37_2
# BB#1:                                 # %if.then
	jmp	.LBB37_6
.LBB37_2:                               # %if.end
	movq	gfig_context, %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rdi
	movq	gfig_context, %rax
	movq	24(%rax), %rax
	movq	%rax, %rsi
	callq	g_list_find
	cmpq	$0, %rax
	je	.LBB37_4
# BB#3:                                 # %if.then.3
	movq	gfig_context, %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rdi
	movq	gfig_context, %rax
	movq	24(%rax), %rax
	movq	%rax, %rsi
	callq	g_list_remove
	movq	gfig_context, %rsi
	movq	16(%rsi), %rsi
	movq	%rax, 96(%rsi)
	movq	gfig_context, %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rdi
	movq	gfig_context, %rax
	movq	24(%rax), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	gfig_context, %rsi
	movq	16(%rsi), %rsi
	movq	%rax, 96(%rsi)
	jmp	.LBB37_5
.LBB37_4:                               # %if.else
	movabsq	$.L.str.195, %rdi
	movb	$0, %al
	callq	g_message
	jmp	.LBB37_6
.LBB37_5:                               # %if.end.16
	callq	gfig_paint_callback
.LBB37_6:                               # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	lower_selected_obj_to_bottom, .Lfunc_end37-lower_selected_obj_to_bottom
	.cfi_endproc

	.align	16, 0x90
	.type	select_button_clicked_lt,@function
select_button_clicked_lt:               # @select_button_clicked_lt
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp127:
	.cfi_def_cfa_offset 16
.Ltmp128:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp129:
	.cfi_def_cfa_register %rbp
	movl	$2, %edi
	callq	select_button_clicked
	popq	%rbp
	retq
.Lfunc_end38:
	.size	select_button_clicked_lt, .Lfunc_end38-select_button_clicked_lt
	.cfi_endproc

	.align	16, 0x90
	.type	select_button_clicked_gt,@function
select_button_clicked_gt:               # @select_button_clicked_gt
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp130:
	.cfi_def_cfa_offset 16
.Ltmp131:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp132:
	.cfi_def_cfa_register %rbp
	movl	$1, %edi
	callq	select_button_clicked
	popq	%rbp
	retq
.Lfunc_end39:
	.size	select_button_clicked_gt, .Lfunc_end39-select_button_clicked_gt
	.cfi_endproc

	.align	16, 0x90
	.type	select_button_clicked_eq,@function
select_button_clicked_eq:               # @select_button_clicked_eq
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp133:
	.cfi_def_cfa_offset 16
.Ltmp134:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp135:
	.cfi_def_cfa_register %rbp
	movl	$4, %edi
	callq	select_button_clicked
	popq	%rbp
	retq
.Lfunc_end40:
	.size	select_button_clicked_eq, .Lfunc_end40-select_button_clicked_eq
	.cfi_endproc

	.align	16, 0x90
	.type	toggle_obj_type,@function
toggle_obj_type:                        # @toggle_obj_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp136:
	.cfi_def_cfa_offset 16
.Ltmp137:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp138:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$153, -28(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_radio_action_get_current_value
	movl	%eax, -32(%rbp)
	movl	selvals+140, %eax
	cmpl	-32(%rbp), %eax
	je	.LBB41_4
# BB#1:                                 # %if.then
	movq	$0, obj_creating
	movq	$0, tmp_line
	movq	$0, tmp_bezier
	cmpl	$11, -32(%rbp)
	jae	.LBB41_3
# BB#2:                                 # %if.then.2
	movl	$-1, obj_show_single
.LBB41_3:                               # %if.end
	movq	gfig_context, %rax
	movq	32(%rax), %rdi
	callq	gtk_widget_queue_draw
.LBB41_4:                               # %if.end.3
	movl	-32(%rbp), %eax
	movl	%eax, selvals+140(%rip)
	movq	tool_options_notebook(%rip), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-32(%rbp), %ecx
	decl	%ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gtk_notebook_set_current_page
	movl	selvals+140(%rip), %ecx
	movl	%ecx, %esi
	decl	%esi
	subl	$9, %esi
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	movl	%esi, -56(%rbp)         # 4-byte Spill
	jb	.LBB41_5
	jmp	.LBB41_12
.LBB41_12:                              # %if.end.3
	movl	-52(%rbp), %eax         # 4-byte Reload
	addl	$-11, %eax
	subl	$4, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jb	.LBB41_7
	jmp	.LBB41_13
.LBB41_13:                              # %if.end.3
	movl	-52(%rbp), %eax         # 4-byte Reload
	subl	$15, %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB41_8
	jmp	.LBB41_6
.LBB41_5:                               # %sw.bb
	jmp	.LBB41_6
.LBB41_6:                               # %sw.default
	movl	$34, -28(%rbp)
	jmp	.LBB41_9
.LBB41_7:                               # %sw.bb.6
	movl	$36, -28(%rbp)
	jmp	.LBB41_9
.LBB41_8:                               # %sw.bb.7
	movl	$88, -28(%rbp)
.LBB41_9:                               # %sw.epilog
	movl	selvals+140, %eax
	movl	%eax, %ecx
	cmpq	$0, toggle_obj_type.p_cursors(,%rcx,8)
	jne	.LBB41_11
# BB#10:                                # %if.then.8
	movq	gfig_context, %rax
	movq	32(%rax), %rdi
	callq	gtk_widget_get_display
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gdk_cursor_new_for_display
	movl	selvals+140, %esi
	movl	%esi, %edi
	movq	%rax, toggle_obj_type.p_cursors(,%rdi,8)
.LBB41_11:                              # %if.end.14
	movq	gfig_context, %rax
	movq	32(%rax), %rdi
	callq	gtk_widget_get_window
	movl	selvals+140, %ecx
	movl	%ecx, %edi
	movq	toggle_obj_type.p_cursors(,%rdi,8), %rsi
	movq	%rax, %rdi
	callq	gdk_window_set_cursor
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	toggle_obj_type, .Lfunc_end41-toggle_obj_type
	.cfi_endproc

	.align	16, 0x90
	.type	load_file_chooser_response,@function
load_file_chooser_response:             # @load_file_chooser_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp139:
	.cfi_def_cfa_offset 16
.Ltmp140:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp141:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$-5, -12(%rbp)
	jne	.LBB42_8
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gtk_file_chooser_get_filename
	movl	$1, %esi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_file_test
	cmpl	$0, %eax
	je	.LBB42_7
# BB#2:                                 # %if.then.2
	movq	gfig_context, %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	gfig_context, %rax
	movq	$0, 16(%rax)
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gfig_load
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	gfig_context, %rsi
	movq	%rax, 16(%rsi)
	cmpq	$0, -40(%rbp)
	je	.LBB42_6
# BB#3:                                 # %if.then.7
	movl	$2, %esi
	movq	-32(%rbp), %rdi
	callq	access
	cmpl	$0, %eax
	je	.LBB42_5
# BB#4:                                 # %if.then.10
	movq	-40(%rbp), %rax
	movl	104(%rax), %ecx
	orl	$2, %ecx
	movl	%ecx, 104(%rax)
.LBB42_5:                               # %if.end
	movq	-40(%rbp), %rdi
	callq	gfig_list_insert
	movq	-40(%rbp), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	new_obj_2edit
.LBB42_6:                               # %if.end.12
	jmp	.LBB42_7
.LBB42_7:                               # %if.end.13
	movq	-32(%rbp), %rdi
	callq	g_free
.LBB42_8:                               # %if.end.14
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_destroy
	callq	gfig_paint_callback
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	load_file_chooser_response, .Lfunc_end42-load_file_chooser_response
	.cfi_endproc

	.align	16, 0x90
	.type	gfig_get_user_writable_dir,@function
gfig_get_user_writable_dir:             # @gfig_get_user_writable_dir
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp142:
	.cfi_def_cfa_offset 16
.Ltmp143:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp144:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	cmpq	$0, gfig_path
	je	.LBB43_2
# BB#1:                                 # %if.then
	movl	$256, %esi              # imm = 0x100
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	gfig_path, %rdi
	callq	gimp_path_parse
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_path_get_user_writable_dir
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_path_free
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB43_3
.LBB43_2:                               # %if.end
	callq	gimp_directory
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, -8(%rbp)
.LBB43_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	gfig_get_user_writable_dir, .Lfunc_end43-gfig_get_user_writable_dir
	.cfi_endproc

	.align	16, 0x90
	.type	save_file_chooser_response,@function
save_file_chooser_response:             # @save_file_chooser_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp145:
	.cfi_def_cfa_offset 16
.Ltmp146:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp147:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$-5, -12(%rbp)
	jne	.LBB44_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gtk_file_chooser_get_filename
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-24(%rbp), %rax
	movq	gfig_context, %rdi
	movq	%rax, 16(%rdi)
	callq	gfig_save_callbk
	movq	gfig_context, %rax
	movq	16(%rax), %rax
	movq	gfig_context, %rdi
	movq	%rax, 16(%rdi)
.LBB44_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_destroy
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	save_file_chooser_response, .Lfunc_end44-save_file_chooser_response
	.cfi_endproc

	.align	16, 0x90
	.type	gridtype_combo_callback,@function
gridtype_combo_callback:                # @gridtype_combo_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp148:
	.cfi_def_cfa_offset 16
.Ltmp149:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp150:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_get_active
	movl	-20(%rbp), %ecx
	movl	%ecx, %edx
	subl	$1, %edx
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movl	%ecx, -40(%rbp)         # 4-byte Spill
	movl	%edx, -44(%rbp)         # 4-byte Spill
	je	.LBB45_1
	jmp	.LBB45_7
.LBB45_7:                               # %entry
	movl	-40(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB45_2
	jmp	.LBB45_3
.LBB45_1:                               # %sw.bb
	movl	-24(%rbp), %eax
	movl	%eax, selvals+4
	jmp	.LBB45_5
.LBB45_2:                               # %sw.bb.3
	movl	-24(%rbp), %eax
	movl	%eax, grid_gc_type
	jmp	.LBB45_5
.LBB45_3:                               # %sw.default
	jmp	.LBB45_4
.LBB45_4:                               # %do.body
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$8, %esi
	movabsq	$.L.str.180, %rdx
	movabsq	$.L.str.181, %rcx
	movl	$1841, %r8d             # imm = 0x731
	movabsq	$.L__func__.gridtype_combo_callback, %r9
	movb	$0, %al
	callq	g_log
	jmp	.LBB45_6
.LBB45_5:                               # %sw.epilog
	callq	draw_grid_clear
.LBB45_6:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	gridtype_combo_callback, .Lfunc_end45-gridtype_combo_callback
	.cfi_endproc

	.align	16, 0x90
	.type	toggle_show_image,@function
toggle_show_image:                      # @toggle_show_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp151:
	.cfi_def_cfa_offset 16
.Ltmp152:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp153:
	.cfi_def_cfa_register %rbp
	callq	draw_grid_clear
	popq	%rbp
	retq
.Lfunc_end46:
	.size	toggle_show_image, .Lfunc_end46-toggle_show_image
	.cfi_endproc

	.align	16, 0x90
	.type	paint_combo_callback,@function
paint_combo_callback:                   # @paint_combo_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp154:
	.cfi_def_cfa_offset 16
.Ltmp155:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp156:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_get_active
	movl	-20(%rbp), %ecx
	subl	$2, %ecx
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movl	%ecx, -40(%rbp)         # 4-byte Spill
	jne	.LBB47_2
	jmp	.LBB47_1
.LBB47_1:                               # %sw.bb
	movl	-24(%rbp), %eax
	movl	%eax, selvals+108
	jmp	.LBB47_4
.LBB47_2:                               # %sw.default
	jmp	.LBB47_3
.LBB47_3:                               # %do.body
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$8, %esi
	movabsq	$.L.str.180, %rdx
	movabsq	$.L.str.181, %rcx
	movl	$1813, %r8d             # imm = 0x715
	movabsq	$.L__func__.paint_combo_callback, %r9
	movb	$0, %al
	callq	g_log
	jmp	.LBB47_5
.LBB47_4:                               # %sw.epilog
	callq	gfig_paint_callback
.LBB47_5:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	paint_combo_callback, .Lfunc_end47-paint_combo_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gfig_paint_delayed,@function
gfig_paint_delayed:                     # @gfig_paint_delayed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp157:
	.cfi_def_cfa_offset 16
.Ltmp158:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp159:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	cmpl	$0, paint_timeout
	je	.LBB48_2
# BB#1:                                 # %if.then
	movl	paint_timeout, %edi
	callq	g_source_remove
	movl	%eax, -4(%rbp)          # 4-byte Spill
.LBB48_2:                               # %if.end
	movl	$300, %edi              # imm = 0x12C
	movabsq	$gfig_paint_timeout, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	g_timeout_add
	movl	%eax, paint_timeout
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	gfig_paint_delayed, .Lfunc_end48-gfig_paint_delayed
	.cfi_endproc

	.align	16, 0x90
	.type	gfig_paint_timeout,@function
gfig_paint_timeout:                     # @gfig_paint_timeout
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp160:
	.cfi_def_cfa_offset 16
.Ltmp161:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp162:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	gfig_paint_callback
	xorl	%eax, %eax
	movl	$0, paint_timeout
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	gfig_paint_timeout, .Lfunc_end49-gfig_paint_timeout
	.cfi_endproc

	.align	16, 0x90
	.type	select_button_clicked,@function
select_button_clicked:                  # @select_button_clicked
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp163:
	.cfi_def_cfa_offset 16
.Ltmp164:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp165:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	$0, -8(%rbp)
	movq	gfig_context, %rax
	cmpq	$0, 16(%rax)
	je	.LBB50_2
# BB#1:                                 # %if.then
	movq	gfig_context, %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rdi
	callq	g_list_length
	movl	%eax, -8(%rbp)
.LBB50_2:                               # %if.end
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%eax, -12(%rbp)         # 4-byte Spill
	movl	%ecx, -16(%rbp)         # 4-byte Spill
	je	.LBB50_6
	jmp	.LBB50_14
.LBB50_14:                              # %if.end
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -20(%rbp)         # 4-byte Spill
	je	.LBB50_3
	jmp	.LBB50_15
.LBB50_15:                              # %if.end
	movl	-12(%rbp), %eax         # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	je	.LBB50_9
	jmp	.LBB50_10
.LBB50_3:                               # %sw.bb
	movl	obj_show_single, %eax
	addl	$-1, %eax
	movl	%eax, obj_show_single
	cmpl	$0, obj_show_single
	jge	.LBB50_5
# BB#4:                                 # %if.then.2
	movl	-8(%rbp), %eax
	subl	$1, %eax
	movl	%eax, obj_show_single
.LBB50_5:                               # %if.end.3
	jmp	.LBB50_11
.LBB50_6:                               # %sw.bb.4
	movl	obj_show_single, %eax
	addl	$1, %eax
	movl	%eax, obj_show_single
	movl	obj_show_single, %eax
	cmpl	-8(%rbp), %eax
	jl	.LBB50_8
# BB#7:                                 # %if.then.6
	movl	$0, obj_show_single
.LBB50_8:                               # %if.end.7
	jmp	.LBB50_11
.LBB50_9:                               # %sw.bb.8
	movl	$-1, obj_show_single
	jmp	.LBB50_11
.LBB50_10:                              # %sw.default
	jmp	.LBB50_11
.LBB50_11:                              # %sw.epilog
	cmpl	$0, obj_show_single
	jl	.LBB50_13
# BB#12:                                # %if.then.10
	movl	obj_show_single, %edi
	callq	gfig_select_obj_by_number
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB50_13:                              # %if.end.12
	callq	draw_grid_clear
	callq	gfig_paint_callback
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	select_button_clicked, .Lfunc_end50-select_button_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gfig_select_obj_by_number,@function
gfig_select_obj_by_number:              # @gfig_select_obj_by_number
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp166:
	.cfi_def_cfa_offset 16
.Ltmp167:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp168:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movq	$0, -24(%rbp)
	movq	gfig_context, %rax
	movq	$0, 24(%rax)
	movq	gfig_context, %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -28(%rbp)
.LBB51_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB51_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB51_1 Depth=1
	movl	-28(%rbp), %eax
	cmpl	obj_show_single, %eax
	jne	.LBB51_4
# BB#3:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	gfig_context, %rcx
	movq	%rax, 24(%rcx)
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	callq	gfig_style_set_context_from_style
	jmp	.LBB51_9
.LBB51_4:                               # %if.end
                                        #   in Loop: Header=BB51_1 Depth=1
	jmp	.LBB51_5
.LBB51_5:                               # %for.inc
                                        #   in Loop: Header=BB51_1 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB51_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB51_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB51_8
.LBB51_7:                               # %cond.false
                                        #   in Loop: Header=BB51_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB51_8
.LBB51_8:                               # %cond.end
                                        #   in Loop: Header=BB51_1 Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -16(%rbp)
	movl	-28(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -28(%rbp)
	jmp	.LBB51_1
.LBB51_9:                               # %for.end
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	gfig_select_obj_by_number, .Lfunc_end51-gfig_select_obj_by_number
	.cfi_endproc

	.align	16, 0x90
	.type	tool_option_no_option,@function
tool_option_no_option:                  # @tool_option_no_option
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp169:
	.cfi_def_cfa_offset 16
.Ltmp170:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp171:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movabsq	$.L.str.196, %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_notebook_append_page
	movl	%eax, -28(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	tool_option_no_option, .Lfunc_end52-tool_option_no_option
	.cfi_endproc

	.type	selvals,@object         # @selvals
	.data
	.globl	selvals
	.align	8
selvals:
	.long	30                      # 0x1e
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	0                       # double 0
	.quad	4621819117588971520     # double 10
	.quad	0                       # double 0
	.quad	4617315517961601024     # double 5
	.long	120                     # 0x78
	.zero	4
	.long	0                       # 0x0
	.long	5                       # 0x5
	.long	1                       # 0x1
	.zero	4
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4626322717216342016     # double 20
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.zero	4
	.quad	4607182418800017408     # double 1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.size	selvals, 144

	.type	selopt,@object          # @selopt
	.globl	selopt
	.align	8
selopt:
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	4621819117588971520     # double 10
	.long	0                       # 0x0
	.long	2                       # 0x2
	.quad	4636737291354636288     # double 100
	.size	selopt, 40

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gfig"
	.size	.L.str, 5

	.type	undo_level,@object      # @undo_level
	.bss
	.globl	undo_level
	.align	4
undo_level:
	.long	0                       # 0x0
	.size	undo_level, 4

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Base"
	.size	.L.str.1, 5

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GFig"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gfig-path"
	.size	.L.str.3, 10

	.type	gfig_path,@object       # @gfig_path
	.local	gfig_path
	.comm	gfig_path,8,8
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimprc"
	.size	.L.str.4, 7

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"No %s in gimprc:\nYou need to add an entry like\n(%s \"%s\")\nto your %s file."
	.size	.L.str.5, 74

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Gfig"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-gfig"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"plug-in-gfig"
	.size	.L.str.8, 13

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gtk-cancel"
	.size	.L.str.9, 11

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gtk-close"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"response"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"/ui/gfig-menubar"
	.size	.L.str.12, 17

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"/ui/gfig-toolbar"
	.size	.L.str.13, 17

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"undo"
	.size	.L.str.14, 5

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Tool Options"
	.size	.L.str.15, 13

	.type	tool_options_notebook,@object # @tool_options_notebook
	.local	tool_options_notebook
	.comm	tool_options_notebook,8,8
	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"_Stroke"
	.size	.L.str.16, 8

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"toggled"
	.size	.L.str.17, 8

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Foreground"
	.size	.L.str.18, 11

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"color-changed"
	.size	.L.str.19, 14

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Brush"
	.size	.L.str.20, 6

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"brush-set"
	.size	.L.str.21, 10

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Fill"
	.size	.L.str.22, 5

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"No fill"
	.size	.L.str.23, 8

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Color fill"
	.size	.L.str.24, 11

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Pattern fill"
	.size	.L.str.25, 13

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Shape gradient"
	.size	.L.str.26, 15

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Vertical gradient"
	.size	.L.str.27, 18

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Horizontal gradient"
	.size	.L.str.28, 20

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"changed"
	.size	.L.str.29, 8

	.type	fill_type_notebook,@object # @fill_type_notebook
	.local	fill_type_notebook
	.comm	fill_type_notebook,8,8
	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.zero	1
	.size	.L.str.30, 1

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Background"
	.size	.L.str.31, 11

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Pattern"
	.size	.L.str.32, 8

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"pattern-set"
	.size	.L.str.33, 12

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Gradient"
	.size	.L.str.34, 9

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"gradient-set"
	.size	.L.str.35, 13

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Show image"
	.size	.L.str.36, 11

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"checkbutton\004Snap to grid"
	.size	.L.str.37, 25

	.type	gfig_opt_widget,@object # @gfig_opt_widget
	.local	gfig_opt_widget
	.comm	gfig_opt_widget,64,8
	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Show grid"
	.size	.L.str.38, 10

	.type	.L__func__.gfig_dialog_action_set_sensitive,@object # @__func__.gfig_dialog_action_set_sensitive
.L__func__.gfig_dialog_action_set_sensitive:
	.asciz	"gfig_dialog_action_set_sensitive"
	.size	.L__func__.gfig_dialog_action_set_sensitive, 33

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"name != NULL"
	.size	.L.str.39, 13

	.type	gfig_actions,@object    # @gfig_actions
	.local	gfig_actions
	.comm	gfig_actions,8,8
	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"%s: Unable to set sensitivity of action which doesn't exist: %s"
	.size	.L.str.40, 64

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"sensitive"
	.size	.L.str.41, 10

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Sides:"
	.size	.L.str.42, 7

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"value-changed"
	.size	.L.str.43, 14

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Right"
	.size	.L.str.44, 6

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Left"
	.size	.L.str.45, 5

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Orientation:"
	.size	.L.str.46, 13

	.type	undo_table,@object      # @undo_table
	.bss
	.globl	undo_table
	.align	16
undo_table:
	.zero	80
	.size	undo_table, 80

	.type	.L.str.47,@object       # @.str.47
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.47:
	.asciz	"First Gfig"
	.size	.L.str.47, 11

	.type	create_ui_manager.actions,@object # @create_ui_manager.actions
	.data
	.align	16
create_ui_manager.actions:
	.quad	.L.str.48
	.quad	0
	.quad	.L.str.49
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.50
	.quad	0
	.quad	.L.str.51
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.52
	.quad	.L.str.53
	.quad	0
	.quad	.L.str.54
	.quad	0
	.quad	gfig_load_action_callback
	.quad	.L.str.55
	.quad	.L.str.56
	.quad	0
	.quad	.L.str.57
	.quad	0
	.quad	gfig_save_action_callback
	.quad	.L.str.58
	.quad	.L.str.10
	.quad	0
	.quad	.L.str.59
	.quad	0
	.quad	gfig_close_action_callback
	.quad	.L.str.60
	.quad	0
	.quad	.L.str.61
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.14
	.quad	.L.str.62
	.quad	.L.str.63
	.quad	.L.str.64
	.quad	0
	.quad	gfig_undo_action_callback
	.quad	.L.str.65
	.quad	.L.str.66
	.quad	.L.str.67
	.quad	0
	.quad	0
	.quad	gfig_clear_action_callback
	.quad	.L.str.68
	.quad	.L.str.69
	.quad	.L.str.70
	.quad	.L.str.71
	.quad	0
	.quad	gfig_grid_action_callback
	.quad	.L.str.72
	.quad	.L.str.73
	.quad	0
	.quad	.L.str.74
	.quad	0
	.quad	gfig_prefs_action_callback
	.quad	.L.str.75
	.quad	.L.str.76
	.quad	0
	.quad	.L.str.77
	.quad	.L.str.78
	.quad	raise_selected_obj
	.quad	.L.str.79
	.quad	.L.str.80
	.quad	0
	.quad	.L.str.81
	.quad	.L.str.82
	.quad	lower_selected_obj
	.quad	.L.str.83
	.quad	.L.str.84
	.quad	0
	.quad	.L.str.85
	.quad	.L.str.86
	.quad	raise_selected_obj_to_top
	.quad	.L.str.87
	.quad	.L.str.88
	.quad	0
	.quad	.L.str.89
	.quad	.L.str.90
	.quad	lower_selected_obj_to_bottom
	.quad	.L.str.91
	.quad	.L.str.92
	.quad	0
	.quad	.L.str.93
	.quad	.L.str.94
	.quad	select_button_clicked_lt
	.quad	.L.str.95
	.quad	.L.str.96
	.quad	0
	.quad	.L.str.97
	.quad	.L.str.98
	.quad	select_button_clicked_gt
	.quad	.L.str.99
	.quad	.L.str.100
	.quad	0
	.quad	.L.str.101
	.quad	.L.str.102
	.quad	select_button_clicked_eq
	.size	create_ui_manager.actions, 816

	.type	.L.str.48,@object       # @.str.48
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.48:
	.asciz	"gfig-menubar"
	.size	.L.str.48, 13

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"GFig Menu"
	.size	.L.str.49, 10

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"gfig-file-menu"
	.size	.L.str.50, 15

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"_File"
	.size	.L.str.51, 6

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"open"
	.size	.L.str.52, 5

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"gtk-open"
	.size	.L.str.53, 9

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"<control>O"
	.size	.L.str.54, 11

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"save"
	.size	.L.str.55, 5

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"gtk-save"
	.size	.L.str.56, 9

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"<control>S"
	.size	.L.str.57, 11

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"close"
	.size	.L.str.58, 6

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"<control>C"
	.size	.L.str.59, 11

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"gfig-edit-menu"
	.size	.L.str.60, 15

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"_Edit"
	.size	.L.str.61, 6

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"gtk-undo"
	.size	.L.str.62, 9

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"_Undo"
	.size	.L.str.63, 6

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"<control>Z"
	.size	.L.str.64, 11

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"clear"
	.size	.L.str.65, 6

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"gtk-clear"
	.size	.L.str.66, 10

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"_Clear"
	.size	.L.str.67, 7

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"grid"
	.size	.L.str.68, 5

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"gimp-grid"
	.size	.L.str.69, 10

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"_Grid"
	.size	.L.str.70, 6

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"<control>G"
	.size	.L.str.71, 11

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"prefs"
	.size	.L.str.72, 6

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"gtk-preferences"
	.size	.L.str.73, 16

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"<control>P"
	.size	.L.str.74, 11

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"raise"
	.size	.L.str.75, 6

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"gtk-go-up"
	.size	.L.str.76, 10

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"<control>U"
	.size	.L.str.77, 11

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"Raise selected object"
	.size	.L.str.78, 22

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"lower"
	.size	.L.str.79, 6

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"gtk-go-down"
	.size	.L.str.80, 12

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"<control>D"
	.size	.L.str.81, 11

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"Lower selected object"
	.size	.L.str.82, 22

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"top"
	.size	.L.str.83, 4

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"gtk-goto-top"
	.size	.L.str.84, 13

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"<control>T"
	.size	.L.str.85, 11

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"Raise selected object to top"
	.size	.L.str.86, 29

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"bottom"
	.size	.L.str.87, 7

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"gtk-goto-bottom"
	.size	.L.str.88, 16

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"<control>B"
	.size	.L.str.89, 11

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"Lower selected object to bottom"
	.size	.L.str.90, 32

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"show_previous"
	.size	.L.str.91, 14

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"gtk-go-back"
	.size	.L.str.92, 12

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"<control>H"
	.size	.L.str.93, 11

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"Show previous object"
	.size	.L.str.94, 21

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"show_next"
	.size	.L.str.95, 10

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"gtk-go-forward"
	.size	.L.str.96, 15

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"<control>L"
	.size	.L.str.97, 11

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"Show next object"
	.size	.L.str.98, 17

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"show_all"
	.size	.L.str.99, 9

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"gfig-show-all"
	.size	.L.str.100, 14

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"<control>A"
	.size	.L.str.101, 11

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"Show all objects"
	.size	.L.str.102, 17

	.type	create_ui_manager.radio_actions,@object # @create_ui_manager.radio_actions
	.data
	.align	16
create_ui_manager.radio_actions:
	.quad	.L.str.103
	.quad	.L.str.104
	.quad	0
	.quad	.L.str.105
	.quad	.L.str.106
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.107
	.quad	.L.str.108
	.quad	0
	.quad	.L.str.109
	.quad	.L.str.110
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.111
	.quad	.L.str.112
	.quad	0
	.quad	.L.str.113
	.quad	.L.str.114
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.115
	.quad	.L.str.116
	.quad	0
	.quad	.L.str.117
	.quad	.L.str.118
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.119
	.quad	.L.str.120
	.quad	0
	.quad	.L.str.121
	.quad	.L.str.122
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.123
	.quad	.L.str.124
	.quad	0
	.quad	.L.str.125
	.quad	.L.str.126
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.127
	.quad	.L.str.128
	.quad	0
	.quad	.L.str.129
	.quad	.L.str.130
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.131
	.quad	.L.str.132
	.quad	0
	.quad	.L.str.133
	.quad	.L.str.134
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.135
	.quad	.L.str.136
	.quad	0
	.quad	.L.str.137
	.quad	.L.str.138
	.long	9                       # 0x9
	.zero	4
	.quad	.L.str.139
	.quad	.L.str.140
	.quad	0
	.quad	.L.str.141
	.quad	.L.str.142
	.long	11                      # 0xb
	.zero	4
	.quad	.L.str.143
	.quad	.L.str.144
	.quad	0
	.quad	.L.str.145
	.quad	.L.str.146
	.long	12                      # 0xc
	.zero	4
	.quad	.L.str.147
	.quad	.L.str.148
	.quad	0
	.quad	.L.str.149
	.quad	.L.str.150
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.151
	.quad	.L.str.152
	.quad	0
	.quad	.L.str.153
	.quad	.L.str.154
	.long	15                      # 0xf
	.zero	4
	.quad	.L.str.155
	.quad	.L.str.156
	.quad	0
	.quad	.L.str.121
	.quad	.L.str.157
	.long	16                      # 0x10
	.zero	4
	.size	create_ui_manager.radio_actions, 672

	.type	.L.str.103,@object      # @.str.103
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.103:
	.asciz	"line"
	.size	.L.str.103, 5

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"gfig-line"
	.size	.L.str.104, 10

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"L"
	.size	.L.str.105, 2

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"Create line"
	.size	.L.str.106, 12

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"rectangle"
	.size	.L.str.107, 10

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"gfig-rectangle"
	.size	.L.str.108, 15

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"R"
	.size	.L.str.109, 2

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"Create rectangle"
	.size	.L.str.110, 17

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"circle"
	.size	.L.str.111, 7

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"gfig-circle"
	.size	.L.str.112, 12

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"C"
	.size	.L.str.113, 2

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"Create circle"
	.size	.L.str.114, 14

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"ellipse"
	.size	.L.str.115, 8

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"gfig-ellipse"
	.size	.L.str.116, 13

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"E"
	.size	.L.str.117, 2

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"Create ellipse"
	.size	.L.str.118, 15

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"arc"
	.size	.L.str.119, 4

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"gfig-curve"
	.size	.L.str.120, 11

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"A"
	.size	.L.str.121, 2

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"Create arc"
	.size	.L.str.122, 11

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"polygon"
	.size	.L.str.123, 8

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"gfig-polygon"
	.size	.L.str.124, 13

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"P"
	.size	.L.str.125, 2

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"Create reg polygon"
	.size	.L.str.126, 19

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"star"
	.size	.L.str.127, 5

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"gfig-star"
	.size	.L.str.128, 10

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"S"
	.size	.L.str.129, 2

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"Create star"
	.size	.L.str.130, 12

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"spiral"
	.size	.L.str.131, 7

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"gfig-spiral"
	.size	.L.str.132, 12

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"I"
	.size	.L.str.133, 2

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"Create spiral"
	.size	.L.str.134, 14

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"bezier"
	.size	.L.str.135, 7

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"gfig-bezier"
	.size	.L.str.136, 12

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"B"
	.size	.L.str.137, 2

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"Create bezier curve. Shift + Button ends object creation."
	.size	.L.str.138, 58

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"move_obj"
	.size	.L.str.139, 9

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"gfig-move-object"
	.size	.L.str.140, 17

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"M"
	.size	.L.str.141, 2

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"Move an object"
	.size	.L.str.142, 15

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"move_point"
	.size	.L.str.143, 11

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"gfig-move-point"
	.size	.L.str.144, 16

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"V"
	.size	.L.str.145, 2

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"Move a single point"
	.size	.L.str.146, 20

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"copy"
	.size	.L.str.147, 5

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"gfig-copy-object"
	.size	.L.str.148, 17

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"Y"
	.size	.L.str.149, 2

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"Copy an object"
	.size	.L.str.150, 15

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"delete"
	.size	.L.str.151, 7

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"gfig-delete"
	.size	.L.str.152, 12

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"D"
	.size	.L.str.153, 2

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"Delete an object"
	.size	.L.str.154, 17

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"select"
	.size	.L.str.155, 7

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"gfig-select-object"
	.size	.L.str.156, 19

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"Select an object"
	.size	.L.str.157, 17

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"Actions"
	.size	.L.str.158, 8

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"<ui>  <menubar name=\"gfig-menubar\">    <menu name=\"File\" action=\"gfig-file-menu\">      <menuitem action=\"open\" />      <menuitem action=\"save\" />      <menuitem action=\"close\" />    </menu>    <menu name=\"Edit\" action=\"gfig-edit-menu\">      <menuitem action=\"undo\" />      <menuitem action=\"clear\" />      <menuitem action=\"grid\" />      <menuitem action=\"prefs\" />    </menu>  </menubar></ui>"
	.size	.L.str.159, 394

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"<ui>  <toolbar name=\"gfig-toolbar\">    <toolitem action=\"line\" />    <toolitem action=\"rectangle\" />    <toolitem action=\"circle\" />    <toolitem action=\"ellipse\" />    <toolitem action=\"arc\" />    <toolitem action=\"polygon\" />    <toolitem action=\"star\" />    <toolitem action=\"spiral\" />    <toolitem action=\"bezier\" />    <toolitem action=\"move_obj\" />    <toolitem action=\"move_point\" />    <toolitem action=\"copy\" />    <toolitem action=\"delete\" />    <toolitem action=\"select\" />    <separator />    <toolitem action=\"raise\" />    <toolitem action=\"lower\" />    <toolitem action=\"top\" />    <toolitem action=\"bottom\" />    <separator />    <toolitem action=\"show_previous\" />    <toolitem action=\"show_next\" />    <toolitem action=\"show_all\" />  </toolbar></ui>"
	.size	.L.str.160, 768

	.type	gfig_load_action_callback.dialog,@object # @gfig_load_action_callback.dialog
	.local	gfig_load_action_callback.dialog
	.comm	gfig_load_action_callback.dialog,8,8
	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"Load Gfig Object Collection"
	.size	.L.str.161, 28

	.type	gfig_save_action_callback.dialog,@object # @gfig_save_action_callback.dialog
	.local	gfig_save_action_callback.dialog
	.comm	gfig_save_action_callback.dialog,8,8
	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"Save Gfig Drawing"
	.size	.L.str.162, 18

	.type	gfig_grid_action_callback.dialog,@object # @gfig_grid_action_callback.dialog
	.local	gfig_grid_action_callback.dialog
	.comm	gfig_grid_action_callback.dialog,8,8
	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"Grid"
	.size	.L.str.163, 5

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"gimp-gfig-grid"
	.size	.L.str.164, 15

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"Grid spacing:"
	.size	.L.str.165, 14

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"Polar grid sectors desired:"
	.size	.L.str.166, 28

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	"Polar grid radius interval:"
	.size	.L.str.167, 28

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	"Rectangle"
	.size	.L.str.168, 10

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	"Polar"
	.size	.L.str.169, 6

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	"Isometric"
	.size	.L.str.170, 10

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"Grid type:"
	.size	.L.str.171, 11

	.type	.L.str.172,@object      # @.str.172
.L.str.172:
	.asciz	"Normal"
	.size	.L.str.172, 7

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	"Black"
	.size	.L.str.173, 6

	.type	.L.str.174,@object      # @.str.174
.L.str.174:
	.asciz	"White"
	.size	.L.str.174, 6

	.type	.L.str.175,@object      # @.str.175
.L.str.175:
	.asciz	"Grey"
	.size	.L.str.175, 5

	.type	.L.str.176,@object      # @.str.176
.L.str.176:
	.asciz	"Darker"
	.size	.L.str.176, 7

	.type	.L.str.177,@object      # @.str.177
.L.str.177:
	.asciz	"Lighter"
	.size	.L.str.177, 8

	.type	.L.str.178,@object      # @.str.178
.L.str.178:
	.asciz	"Very dark"
	.size	.L.str.178, 10

	.type	.L.str.179,@object      # @.str.179
.L.str.179:
	.asciz	"Grid color:"
	.size	.L.str.179, 12

	.type	.L.str.180,@object      # @.str.180
.L.str.180:
	.asciz	"file %s: line %d (%s): should not be reached"
	.size	.L.str.180, 45

	.type	.L.str.181,@object      # @.str.181
.L.str.181:
	.asciz	"gfig-dialog.c"
	.size	.L.str.181, 14

	.type	.L__func__.gridtype_combo_callback,@object # @__func__.gridtype_combo_callback
.L__func__.gridtype_combo_callback:
	.asciz	"gridtype_combo_callback"
	.size	.L__func__.gridtype_combo_callback, 24

	.type	gfig_prefs_action_callback.dialog,@object # @gfig_prefs_action_callback.dialog
	.local	gfig_prefs_action_callback.dialog
	.comm	gfig_prefs_action_callback.dialog,8,8
	.type	.L.str.182,@object      # @.str.182
.L.str.182:
	.asciz	"Options"
	.size	.L.str.182, 8

	.type	.L.str.183,@object      # @.str.183
.L.str.183:
	.asciz	"gimp-gfig-options"
	.size	.L.str.183, 18

	.type	.L.str.184,@object      # @.str.184
.L.str.184:
	.asciz	"Show position"
	.size	.L.str.184, 14

	.type	.L.str.185,@object      # @.str.185
.L.str.185:
	.asciz	"Show control points"
	.size	.L.str.185, 20

	.type	.L.str.186,@object      # @.str.186
.L.str.186:
	.asciz	"Antialiasing"
	.size	.L.str.186, 13

	.type	.L.str.187,@object      # @.str.187
.L.str.187:
	.asciz	"Max undo:"
	.size	.L.str.187, 10

	.type	.L.str.188,@object      # @.str.188
.L.str.188:
	.asciz	"Transparent"
	.size	.L.str.188, 12

	.type	.L.str.189,@object      # @.str.189
.L.str.189:
	.asciz	"Copy"
	.size	.L.str.189, 5

	.type	page_menu_bg,@object    # @page_menu_bg
	.local	page_menu_bg
	.comm	page_menu_bg,8,8
	.type	.L.str.190,@object      # @.str.190
.L.str.190:
	.asciz	"Layer background type. Copy causes the previous layer to be copied before the draw is performed."
	.size	.L.str.190, 97

	.type	.L.str.191,@object      # @.str.191
.L.str.191:
	.asciz	"Background:"
	.size	.L.str.191, 12

	.type	.L.str.192,@object      # @.str.192
.L.str.192:
	.asciz	"Feather"
	.size	.L.str.192, 8

	.type	.L.str.193,@object      # @.str.193
.L.str.193:
	.asciz	"Radius:"
	.size	.L.str.193, 8

	.type	.L__func__.paint_combo_callback,@object # @__func__.paint_combo_callback
.L__func__.paint_combo_callback:
	.asciz	"paint_combo_callback"
	.size	.L__func__.paint_combo_callback, 21

	.type	paint_timeout,@object   # @paint_timeout
	.local	paint_timeout
	.comm	paint_timeout,4,4
	.type	.L.str.194,@object      # @.str.194
.L.str.194:
	.asciz	"Trying to raise object that does not exist."
	.size	.L.str.194, 44

	.type	.L.str.195,@object      # @.str.195
.L.str.195:
	.asciz	"Trying to lower object that does not exist."
	.size	.L.str.195, 44

	.type	toggle_obj_type.p_cursors,@object # @toggle_obj_type.p_cursors
	.local	toggle_obj_type.p_cursors
	.comm	toggle_obj_type.p_cursors,128,16
	.type	.L.str.196,@object      # @.str.196
.L.str.196:
	.asciz	"This tool has no options"
	.size	.L.str.196, 25


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
