	.text
	.file	"color-rotate-dialog.bc"
	.globl	color_rotate_dialog
	.align	16, 0x90
	.type	color_rotate_dialog,@function
color_rotate_dialog:                    # @color_rotate_dialog
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
	pushq	%r14
	pushq	%rbx
	subq	$272, %rsp              # imm = 0x110
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
	movl	$1, %eax
	movl	%eax, %edi
	movl	$32, %eax
	movl	%eax, %esi
	callq	g_malloc_n
	movabsq	$.L.str, %rdi
	movl	$1, %esi
	movq	%rax, Current+64
	callq	gimp_ui_init
	callq	color_rotate_stock_init
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
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
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
	movq	-24(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movl	$150, %edx
	movq	-24(%rbp), %rax
	movq	Current+64, %rsi
	movq	%rax, (%rsi)
	movq	Current+16, %rdi
	movq	Current+24, %rsi
	movl	Current, %ecx
	callq	rcm_reduce_image
	movq	%rax, Current+32
	callq	rcm_create_previews
	xorl	%edi, %edi
	movl	$12, %esi
	movq	%rax, -48(%rbp)
	movq	Current+64, %r8
	movq	%rax, 8(%r8)
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
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
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	callq	gtk_notebook_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_notebook_set_tab_pos
	movq	-32(%rbp), %rax
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
	movq	-40(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	rcm_create_main
	movabsq	$.L.str.6, %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	-160(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_notebook_append_page
	movq	-40(%rbp), %rdx
	movl	%eax, -164(%rbp)        # 4-byte Spill
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	rcm_create_gray
	movabsq	$.L.str.7, %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	-192(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_notebook_append_page
	movq	-40(%rbp), %rdx
	movl	%eax, -196(%rbp)        # 4-byte Spill
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	rcm_create_units
	movabsq	$.L.str.8, %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	-224(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_notebook_append_page
	movq	-24(%rbp), %rdi
	movl	%eax, -228(%rbp)        # 4-byte Spill
	callq	gtk_widget_show
	movl	$128, %esi
	movl	$4, %edx
	movq	Current+48, %rdi
	movq	(%rdi), %rdi
	callq	rcm_render_circle
	movl	$128, %esi
	movl	$4, %edx
	movq	Current+40, %rdi
	movq	(%rdi), %rdi
	callq	rcm_render_circle
	movl	$126, %esi
	movl	$3, %edx
	movq	Current+56, %rdi
	movq	(%rdi), %rdi
	callq	rcm_render_circle
	movq	-24(%rbp), %rdi
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %eax
	movl	%eax, -52(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-52(%rbp), %eax
	addq	$272, %rsp              # imm = 0x110
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	color_rotate_dialog, .Lfunc_end0-color_rotate_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	rcm_create_previews,@function
rcm_create_previews:                    # @rcm_create_previews
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp5:
	.cfi_def_cfa_offset 16
.Ltmp6:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp7:
	.cfi_def_cfa_register %rbp
	subq	$320, %rsp              # imm = 0x140
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movl	$1, %edi
	movl	$6, %esi
	movq	%rax, -8(%rbp)
	callq	gtk_box_new
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.9, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
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
	movl	$8, %esi
	movq	Current+64, %rax
	addq	$16, %rax
	movq	Current+32, %rdi
	movl	(%rdi), %edx
	movq	Current+32, %rdi
	movl	4(%rdi), %ecx
	movq	%rax, %rdi
	callq	rcm_create_one_preview
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movl	-92(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.10, %rsi
	movabsq	$rcm_render_preview, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	$1, %r9d
	movq	Current+64, %r10
	movq	16(%r10), %r10
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	-104(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movl	$1, %edi
	movl	$6, %esi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.11, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
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
	movl	$7, %esi
	movq	Current+64, %rax
	addq	$24, %rax
	movq	Current+32, %rdi
	movl	(%rdi), %edx
	movq	Current+32, %rdi
	movl	4(%rdi), %ecx
	movq	%rax, %rdi
	callq	rcm_create_one_preview
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
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
	movabsq	$.L.str.10, %rsi
	movabsq	$rcm_render_preview, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	$1, %r9d
	movq	Current+64, %r10
	movq	24(%r10), %r10
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movq	-160(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movl	$1, %edi
	movl	$6, %esi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.12, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_label
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
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
	movq	-48(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	Current+4, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.13, %rsi
	movabsq	$rcm_preview_as_you_drag, %rax
	movabsq	$Current, %rdi
	addq	$4, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %r10
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-208(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	xorl	%edi, %edi
	movl	$6, %esi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.14, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	movl	-236(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.15, %rdi
	callq	gettext
	movabsq	$.L.str.16, %rdi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.17, %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %ecx
	movl	$2, %r9d
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	-248(%rbp), %r10        # 8-byte Reload
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	-256(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %r8
	movq	$0, (%rsp)
	movb	$0, %al
	callq	gimp_int_combo_box_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	Current, %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movq	-32(%rbp), %rdx
	movl	%eax, -276(%rbp)        # 4-byte Spill
	movq	%rdx, -288(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.18, %rsi
	movabsq	$rcm_combo_callback, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-56(%rbp), %r10
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-296(%rbp), %rcx        # 8-byte Reload
	movq	-296(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-8(%rbp), %rdi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-8(%rbp), %rax
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end1:
	.size	rcm_create_previews, .Lfunc_end1-rcm_create_previews
	.cfi_endproc

	.align	16, 0x90
	.type	rcm_create_main,@function
rcm_create_main:                        # @rcm_create_main
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
	subq	$48, %rsp
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.20, %rsi
	movl	$13, %eax
	movl	%eax, %edx
	callq	g_dpgettext
	movl	$128, %edi
	movq	%rax, %rsi
	callq	rcm_create_one_circle
	xorl	%edi, %edi
                                        # kill: RDI<def> EDI<kill>
	movabsq	$.L.str.21, %rsi
	movl	$13, %ecx
	movl	%ecx, %edx
	movq	%rax, Current+48
	callq	g_dpgettext
	movl	$128, %edi
	movq	%rax, %rsi
	callq	rcm_create_one_circle
	movl	$1, %edi
	movl	$12, %esi
	movq	%rax, Current+40
	callq	gtk_box_new
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-8(%rbp), %rdi
	callq	gtk_widget_show
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	Current+48, %rdx
	movq	8(%rdx), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	movl	-28(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	Current+40, %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movl	-44(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	rcm_create_main, .Lfunc_end2-rcm_create_main
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4576918229304087675     # double 0.01
.LCPI3_1:
	.quad	4607182418800017408     # double 1
.LCPI3_2:
	.quad	4547007122018943789     # double 1.0E-4
.LCPI3_3:
	.quad	4562254508917369340     # double 0.001
.LCPI3_6:
	.quad	4611686018427387904     # double 2
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI3_4:
	.long	1065353216              # float 1
.LCPI3_5:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	rcm_create_gray,@function
rcm_create_gray:                        # @rcm_create_gray
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
	pushq	%rbx
	subq	$664, %rsp              # imm = 0x298
.Ltmp14:
	.cfi_offset %rbx, -24
	movl	$1, %eax
	movl	%eax, %edi
	movl	$64, %eax
	movl	%eax, %esi
	movq	$0, -96(%rbp)
	callq	g_malloc_n
	movl	$1, %edi
	movl	$12, %esi
	xorps	%xmm0, %xmm0
	movq	%rax, -104(%rbp)
	movq	%rax, Current+56
	movq	-104(%rbp), %rax
	movss	%xmm0, 20(%rax)
	movq	-104(%rbp), %rax
	movss	%xmm0, 24(%rax)
	callq	gtk_box_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.32, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	movl	-132(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -24(%rbp)
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
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_box_new
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	movl	-156(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_frame_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-72(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	movl	-180(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_preview_area_new
	movl	$126, %ecx
	movq	%rax, -40(%rbp)
	movq	-104(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_widget_set_size_request
	movq	-32(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movl	$4906, %esi             # imm = 0x132A
	movq	-40(%rbp), %rdi
	callq	gtk_widget_add_events
	movabsq	$.L.str.22, %rsi
	movabsq	$rcm_gray_expose_event, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$1, %r9d
	movq	-40(%rbp), %rdi
	movq	-104(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.23, %rsi
	movabsq	$rcm_gray_button_press_event, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdx
	movq	-104(%rbp), %rdi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-200(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.24, %rsi
	movabsq	$rcm_gray_release_event, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdx
	movq	-104(%rbp), %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-216(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.25, %rsi
	movabsq	$rcm_gray_motion_notify_event, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdx
	movq	-104(%rbp), %rdi
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-232(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movl	$2, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_table_new
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -260(%rbp)        # 4-byte Spill
	movl	-260(%rbp), %ecx        # 4-byte Reload
	movl	-260(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-48(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.33, %rdi
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
	movss	.LCPI3_5, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-48(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	$4, %r8d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -300(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-300(%rbp), %r9d        # 4-byte Reload
	movl	%ecx, -304(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	-304(%rbp), %r11d       # 4-byte Reload
	movl	%r8d, -308(%rbp)        # 4-byte Spill
	movl	%r11d, %r8d
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_6, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_3, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	-104(%rbp), %rax
	movss	%xmm1, 20(%rax)
	movq	-104(%rbp), %rax
	cvtss2sd	20(%rax), %xmm1
	movsd	%xmm0, -320(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-320(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-320(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	callq	gtk_adjustment_new
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movl	$4, %esi
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	callq	gtk_spin_button_new
	movq	%rax, -56(%rbp)
	movq	-104(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movq	-56(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_spin_button_set_numeric
	movq	-48(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movl	$2, %edx
	xorl	%r8d, %r8d
	movl	$4, %r9d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -340(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-340(%rbp), %r11d       # 4-byte Reload
	movl	%ecx, -344(%rbp)        # 4-byte Spill
	movl	%r11d, %ecx
	movl	-344(%rbp), %ebx        # 4-byte Reload
	movl	%r9d, -348(%rbp)        # 4-byte Spill
	movl	%ebx, %r9d
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.18, %rsi
	movabsq	$rcm_set_hue, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	-104(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movl	Current+8, %edi
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	rcm_units_string
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	-104(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-80(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI3_5, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-48(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movl	$4, %r11d
	movq	-104(%rbp), %rsi
	movq	40(%rsi), %rsi
	movq	%rax, %rdi
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r11d, -380(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-104(%rbp), %rax
	movq	40(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.34, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movss	.LCPI3_4, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI3_5, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-48(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$2, %r9d
	movl	$4, %r8d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, -404(%rbp)        # 4-byte Spill
	movl	-404(%rbp), %r11d       # 4-byte Reload
	movl	%r8d, -408(%rbp)        # 4-byte Spill
	movl	%r11d, %r8d
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_3, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	-104(%rbp), %rax
	movss	%xmm1, 24(%rax)
	movq	-104(%rbp), %rax
	cvtss2sd	24(%rax), %xmm1
	movsd	%xmm0, -416(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-416(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-416(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	callq	gtk_adjustment_new
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movl	$4, %esi
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	callq	gtk_spin_button_new
	movq	%rax, -56(%rbp)
	movq	-104(%rbp), %rdi
	movq	%rax, 48(%rdi)
	movq	-56(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_spin_button_set_numeric
	movq	-48(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movl	$2, %edx
	movl	$4, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -436(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-436(%rbp), %r11d       # 4-byte Reload
	movl	%ecx, -440(%rbp)        # 4-byte Spill
	movl	%r11d, %ecx
	movl	-440(%rbp), %ebx        # 4-byte Reload
	movl	%r8d, -444(%rbp)        # 4-byte Spill
	movl	%ebx, %r8d
	movl	%r9d, -448(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$2, 24(%rsp)
	callq	gtk_table_attach
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.18, %rsi
	movabsq	$rcm_set_satur, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	-104(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.35, %rdi
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.36, %rdi
	movq	-96(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_label
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movq	%rax, -96(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -500(%rbp)        # 4-byte Spill
	movl	-500(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	cmpl	$5, Current+12
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	-88(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gtk_button_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_button_clicked
.LBB3_2:                                # %if.end
	movabsq	$.L.str.13, %rsi
	movabsq	$rcm_switch_to_gray_from, %rax
	movabsq	$Current, %rcx
	addq	$12, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movabsq	$.L.str.37, %rdi
	movq	-96(%rbp), %rcx
	movq	%rax, -520(%rbp)        # 8-byte Spill
	movq	%rcx, -528(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_label
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-536(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movq	%rax, -96(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-544(%rbp), %rdi        # 8-byte Reload
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
	cmpl	$6, Current+12
	jne	.LBB3_4
# BB#3:                                 # %if.then.101
	movq	-88(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gtk_button_get_type
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_button_clicked
.LBB3_4:                                # %if.end.104
	movabsq	$.L.str.13, %rsi
	movabsq	$rcm_switch_to_gray_to, %rax
	movabsq	$Current, %rcx
	addq	$12, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movabsq	$.L.str.38, %rdi
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.34, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-584(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -588(%rbp)        # 4-byte Spill
	movl	-588(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_1, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI3_2, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI3_3, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	-104(%rbp), %rax
	movss	%xmm1, 16(%rax)
	movq	-104(%rbp), %rax
	cvtss2sd	16(%rax), %xmm1
	movsd	%xmm0, -600(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-600(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-600(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	callq	gtk_adjustment_new
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movl	$4, %esi
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	callq	gtk_spin_button_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_spin_button_set_numeric
	movq	-72(%rbp), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -620(%rbp)        # 4-byte Spill
	movl	-620(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.18, %rsi
	movabsq	$rcm_set_gray_sat, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	-104(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	-16(%rbp), %rcx
	movq	%rax, -632(%rbp)        # 8-byte Spill
	movq	%rcx, %rax
	addq	$664, %rsp              # imm = 0x298
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	rcm_create_gray, .Lfunc_end3-rcm_create_gray
	.cfi_endproc

	.align	16, 0x90
	.type	rcm_create_units,@function
rcm_create_units:                       # @rcm_create_units
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movabsq	$.L.str.8, %rdi
	movq	$0, -32(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-8(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.39, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_label
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movq	%rax, -32(%rbp)
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
	cmpl	$3, Current+8
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_button_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_button_clicked
.LBB4_2:                                # %if.end
	movabsq	$.L.str.13, %rsi
	movabsq	$rcm_switch_to_radians, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	-96(%rbp), %r8          # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.40, %rdi
	movq	-32(%rbp), %rcx
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_label
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
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
	cmpl	$4, Current+8
	jne	.LBB4_4
# BB#3:                                 # %if.then.25
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_button_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_button_clicked
.LBB4_4:                                # %if.end.28
	movabsq	$.L.str.13, %rsi
	movabsq	$rcm_switch_to_radians_over_PI, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movq	-144(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.41, %rdi
	movq	-32(%rbp), %rcx
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_radio_button_new_with_label
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
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
	cmpl	$2, Current+8
	jne	.LBB4_6
# BB#5:                                 # %if.then.35
	movq	-24(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_button_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_button_clicked
.LBB4_6:                                # %if.end.38
	movabsq	$.L.str.13, %rsi
	movabsq	$rcm_switch_to_degrees, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	-184(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-8(%rbp), %rcx
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movq	%rcx, %rax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	rcm_create_units, .Lfunc_end4-rcm_create_units
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI5_0:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	rcm_create_one_preview,@function
rcm_create_one_preview:                 # @rcm_create_one_preview
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
	subq	$80, %rsp
	movss	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movss	%xmm0, -44(%rbp)        # 4-byte Spill
	movss	-44(%rbp), %xmm2        # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	%xmm1, -48(%rbp)        # 4-byte Spill
	movaps	%xmm2, %xmm1
	movss	-48(%rbp), %xmm2        # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	-48(%rbp), %xmm3        # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	callq	gtk_alignment_new
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -32(%rbp)
	callq	gtk_frame_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_preview_area_new
	movq	-8(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %edx
	callq	gtk_widget_set_size_request
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.19, %rsi
	movslq	-12(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data
	movq	-32(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	rcm_create_one_preview, .Lfunc_end5-rcm_create_one_preview
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4576918229304087675     # double 0.01
.LCPI6_1:
	.quad	4636033603912859648     # double 90
.LCPI6_2:
	.quad	4645040803167600640     # double 360
.LCPI6_3:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI6_4:
	.long	1070141403              # float 1.57079637
	.text
	.align	16, 0x90
	.type	rcm_create_one_circle,@function
rcm_create_one_circle:                  # @rcm_create_one_circle
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$520, %rsp              # imm = 0x208
.Ltmp24:
	.cfi_offset %rbx, -40
.Ltmp25:
	.cfi_offset %r14, -32
.Ltmp26:
	.cfi_offset %r15, -24
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$168, %eax
	movl	%eax, %edx
	movl	%edi, -28(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	callq	g_malloc_n
	movl	$1, %r8d
	movl	%r8d, %edi
	movl	$12, %r8d
	movl	%r8d, %esi
	movq	%rax, -104(%rbp)
	callq	g_malloc_n
	movss	.LCPI6_4, %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	movq	-104(%rbp), %rcx
	movq	%rax, 152(%rcx)
	movq	-104(%rbp), %rax
	movq	152(%rax), %rax
	movss	%xmm1, (%rax)
	movq	-104(%rbp), %rax
	movq	152(%rax), %rax
	movss	%xmm0, 4(%rax)
	movq	-104(%rbp), %rax
	movq	152(%rax), %rax
	movl	$1, 8(%rax)
	movq	-40(%rbp), %rdi
	callq	gimp_frame_new
	movq	-104(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gtk_widget_show
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	callq	gtk_frame_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_preview_area_new
	movq	-104(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-104(%rbp), %rax
	movq	(%rax), %rdi
	movl	-28(%rbp), %esi
	movl	-28(%rbp), %edx
	callq	gtk_widget_set_size_request
	movq	-48(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-104(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-104(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_show
	movl	$4906, %esi             # imm = 0x132A
	movq	-104(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_set_events
	movabsq	$.L.str.22, %rsi
	movabsq	$rcm_expose_event, %rax
	xorl	%edx, %edx
	movl	%edx, %r8d
	movl	$1, %r9d
	movq	-104(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-104(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rdx
	movq	-128(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.23, %rsi
	movabsq	$rcm_button_press_event, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-104(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-104(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.24, %rsi
	movabsq	$rcm_release_event, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-104(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-104(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.25, %rsi
	movabsq	$rcm_motion_notify_event, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-104(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-104(%rbp), %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movl	$3, %edi
	movl	$1, %esi
	xorl	%edx, %edx
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_table_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.27, %rax
	movabsq	$.L.str.26, %rcx
	movq	-104(%rbp), %rdi
	movq	152(%rdi), %rdi
	cmpl	$0, 8(%rdi)
	cmovgq	%rcx, %rax
	movq	%rax, %rdi
	callq	gtk_button_new_from_stock
	movabsq	$.L.str.13, %rsi
	movabsq	$rcm_cw_ccw, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	-104(%rbp), %rdi
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-192(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-80(%rbp), %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movl	$1, %r10d
	movl	$5, %r11d
	movl	$4, %ebx
	movl	$2, %r14d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r10d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$5, (%rsp)
	movl	$4, 8(%rsp)
	movl	$4, 16(%rsp)
	movl	$2, 24(%rsp)
	movl	%r14d, -212(%rbp)       # 4-byte Spill
	movl	%ebx, -216(%rbp)        # 4-byte Spill
	movl	%r11d, -220(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movabsq	$.L.str.28, %rdi
	movq	-104(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-80(%rbp), %rax
	movq	-104(%rbp), %rsi
	movq	%rax, 24(%rsi)
	movq	-104(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-104(%rbp), %rax
	movq	$0, 40(%rax)
	callq	gtk_button_new_from_stock
	movabsq	$.L.str.13, %rsi
	movabsq	$rcm_a_to_b, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	-104(%rbp), %r15
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-232(%rbp), %rdx        # 8-byte Reload
	movq	%r15, %rcx
	callq	g_signal_connect_data
	movq	-80(%rbp), %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %r9d
	movl	$2, %r10d
	movl	$5, %r11d
	movl	$4, %ebx
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$5, (%rsp)
	movl	$4, 8(%rsp)
	movl	$4, 16(%rsp)
	movl	$2, 24(%rsp)
	movl	%ebx, -252(%rbp)        # 4-byte Spill
	movl	%r11d, -256(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movabsq	$.L.str.29, %rdi
	movq	-104(%rbp), %rax
	movq	$0, 72(%rax)
	movq	-104(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-80(%rbp), %rax
	movq	-104(%rbp), %rsi
	movq	%rax, 56(%rsi)
	callq	gtk_button_new_from_stock
	movabsq	$.L.str.13, %rsi
	movabsq	$rcm_360_degrees, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	-104(%rbp), %r15
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-264(%rbp), %rdx        # 8-byte Reload
	movq	%r15, %rcx
	callq	g_signal_connect_data
	movq	-80(%rbp), %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$2, %r8d
	movl	$3, %r9d
	movl	$5, %r10d
	movl	$4, %r11d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	$5, (%rsp)
	movl	$4, 8(%rsp)
	movl	$4, 16(%rsp)
	movl	$2, 24(%rsp)
	movl	%r11d, -284(%rbp)       # 4-byte Spill
	movl	%r10d, -288(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movl	$1, %edi
	movl	$6, %esi
	xorl	%edx, %edx
	movq	-104(%rbp), %rax
	movq	$0, 96(%rax)
	movq	-104(%rbp), %rax
	movq	$0, 88(%rax)
	movq	-80(%rbp), %rax
	movq	-104(%rbp), %r15
	movq	%rax, 80(%r15)
	callq	gtk_table_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.30, %rsi
	movl	$12, %ecx
	movl	%ecx, %edx
	callq	g_dpgettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movq	-64(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movl	$5, %r9d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -300(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-300(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -304(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movl	-304(%rbp), %r11d       # 4-byte Reload
	movl	%r9d, -308(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movl	$5, 16(%rsp)
	movl	$5, 24(%rsp)
	callq	gtk_table_attach
	xorps	%xmm0, %xmm0
	movsd	.LCPI6_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI6_0, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI6_3, %xmm4         # xmm4 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	-104(%rbp), %rax
	movq	152(%rax), %rax
	movss	%xmm1, (%rax)
	movq	-104(%rbp), %rax
	movq	152(%rax), %rax
	cvtss2sd	(%rax), %xmm1
	movsd	%xmm0, -320(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-320(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-320(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	callq	gtk_adjustment_new
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movl	$2, %esi
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	gtk_spin_button_new
	movq	%rax, -88(%rbp)
	movq	-104(%rbp), %rdi
	movq	%rax, 104(%rdi)
	movq	-88(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_spin_button_set_numeric
	movq	-64(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movl	$2, %edx
	xorl	%r8d, %r8d
	movl	$5, %r9d
	movl	$4, %r10d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -340(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-340(%rbp), %r11d       # 4-byte Reload
	movl	%ecx, -344(%rbp)        # 4-byte Spill
	movl	%r11d, %ecx
	movl	-344(%rbp), %ebx        # 4-byte Reload
	movl	%r9d, -348(%rbp)        # 4-byte Spill
	movl	%ebx, %r9d
	movl	$5, (%rsp)
	movl	$1, 8(%rsp)
	movl	$2, 16(%rsp)
	movl	$4, 24(%rsp)
	movl	%r10d, -352(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.18, %rsi
	movabsq	$rcm_set_alpha, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rdi
	movq	-104(%rbp), %r15
	movq	%rax, %rdx
	movq	%r15, %rcx
	callq	g_signal_connect_data
	movl	Current+8, %edi
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	rcm_units_string
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	-104(%rbp), %rcx
	movq	%rax, 112(%rcx)
	movq	-104(%rbp), %rax
	movq	112(%rax), %rdi
	callq	gtk_widget_show
	movq	-64(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movl	$3, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movl	$4, %r10d
	movq	-104(%rbp), %rsi
	movq	112(%rsi), %rsi
	movq	%rax, %rdi
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movl	$4, 16(%rsp)
	movl	$4, 24(%rsp)
	movl	%r10d, -372(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.31, %rsi
	movl	$12, %ecx
	movl	%ecx, %edx
	callq	g_dpgettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movq	-64(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %edx
	movl	$4, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movl	$4, 16(%rsp)
	movl	$4, 24(%rsp)
	callq	gtk_table_attach
	movsd	.LCPI6_1, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI6_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI6_0, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI6_3, %xmm4         # xmm4 = mem[0],zero
	movss	.LCPI6_4, %xmm5         # xmm5 = mem[0],zero,zero,zero
	movq	-104(%rbp), %rax
	movq	152(%rax), %rax
	movss	%xmm5, 4(%rax)
	movsd	%xmm1, -392(%rbp)       # 8-byte Spill
	movsd	-392(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	callq	gtk_adjustment_new
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movl	$2, %esi
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	gtk_spin_button_new
	movq	%rax, -88(%rbp)
	movq	-104(%rbp), %rdi
	movq	%rax, 120(%rdi)
	movq	-88(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_spin_button_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_spin_button_set_numeric
	movq	-64(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %edx
	movl	$5, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movl	$2, %r10d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	$5, (%rsp)
	movl	$1, 8(%rsp)
	movl	$2, 16(%rsp)
	movl	$4, 24(%rsp)
	movl	%r10d, -412(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.18, %rsi
	movabsq	$rcm_set_beta, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rdi
	movq	-104(%rbp), %r15
	movq	%rax, %rdx
	movq	%r15, %rcx
	callq	g_signal_connect_data
	movl	Current+8, %edi
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	rcm_units_string
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	-104(%rbp), %rcx
	movq	%rax, 128(%rcx)
	movq	-104(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gtk_widget_show
	movq	-64(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$5, %edx
	movl	$6, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movl	$4, %r10d
	movq	-104(%rbp), %rsi
	movq	128(%rsi), %rsi
	movq	%rax, %rdi
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movl	$4, 16(%rsp)
	movl	$4, 24(%rsp)
	movl	%r10d, -436(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movl	$2, %ecx
	xorl	%edx, %edx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_table_new
	movq	-104(%rbp), %r15
	movq	%rax, 16(%r15)
	movq	-104(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_show
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	$4, %r8d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -452(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-452(%rbp), %r9d        # 4-byte Reload
	movl	%ecx, -456(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	-456(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -460(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movl	$4, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movl	$2, %edx
	xorl	%r8d, %r8d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -476(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-476(%rbp), %r9d        # 4-byte Reload
	movl	%ecx, -480(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	-480(%rbp), %r9d        # 4-byte Reload
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movl	$2, 16(%rsp)
	movl	$0, 24(%rsp)
	callq	gtk_table_attach
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$2, %ecx
	movl	$1, %r8d
	movl	$5, %r9d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, -492(%rbp)        # 4-byte Spill
	movl	-492(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -496(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$5, (%rsp)
	movl	$1, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$2, 24(%rsp)
	callq	gtk_table_attach
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-504(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-104(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-104(%rbp), %rax
	addq	$520, %rsp              # imm = 0x208
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	rcm_create_one_circle, .Lfunc_end6-rcm_create_one_circle
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"rcm"
	.size	.L.str, 4

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Rotate Colors"
	.size	.L.str.1, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-rcm"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"plug-in-rotate-colormap"
	.size	.L.str.3, 24

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gtk-cancel"
	.size	.L.str.4, 11

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gtk-ok"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Main Options"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Gray Options"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Units"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Original"
	.size	.L.str.9, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"size-allocate"
	.size	.L.str.10, 14

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Rotated"
	.size	.L.str.11, 8

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Continuous update"
	.size	.L.str.12, 18

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"clicked"
	.size	.L.str.13, 8

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Area:"
	.size	.L.str.14, 6

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Entire Layer"
	.size	.L.str.15, 13

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Selection"
	.size	.L.str.16, 10

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Context"
	.size	.L.str.17, 8

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"changed"
	.size	.L.str.18, 8

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"mode"
	.size	.L.str.19, 5

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"color-rotate\004From:"
	.size	.L.str.20, 19

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"color-rotate\004To:"
	.size	.L.str.21, 17

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"expose-event"
	.size	.L.str.22, 13

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"button-press-event"
	.size	.L.str.23, 19

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"button-release-event"
	.size	.L.str.24, 21

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"motion-notify-event"
	.size	.L.str.25, 20

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"color_rotate_cw"
	.size	.L.str.26, 16

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"color_rotate_ccw"
	.size	.L.str.27, 17

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"color_rotate_a_b"
	.size	.L.str.28, 17

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"color_rotate_360"
	.size	.L.str.29, 17

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"color-range\004From:"
	.size	.L.str.30, 18

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"color-range\004To:"
	.size	.L.str.31, 16

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Gray"
	.size	.L.str.32, 5

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Hue:"
	.size	.L.str.33, 5

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Saturation:"
	.size	.L.str.34, 12

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Gray Mode"
	.size	.L.str.35, 10

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Treat as this"
	.size	.L.str.36, 14

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Change to this"
	.size	.L.str.37, 15

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Gray Threshold"
	.size	.L.str.38, 15

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Radians"
	.size	.L.str.39, 8

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Radians/Pi"
	.size	.L.str.40, 11

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Degrees"
	.size	.L.str.41, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
