	.text
	.file	"gimpcolordisplayeditor.bc"
	.globl	gimp_color_display_editor_get_type
	.align	16, 0x90
	.type	gimp_color_display_editor_get_type,@function
gimp_color_display_editor_get_type:     # @gimp_color_display_editor_get_type
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_color_display_editor_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_color_display_editor_get_type.g_define_type_id__volatile, %rax
	movq	%rax, %rdi
	callq	g_once_init_enter
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB0_2:                                # %land.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB0_4
# BB#3:                                 # %if.then
	callq	gtk_box_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$824, %edx              # imm = 0x338
	movabsq	$gimp_color_display_editor_class_intern_init, %rdi
	movl	$256, %r8d              # imm = 0x100
	movabsq	$gimp_color_display_editor_init, %rcx
	xorl	%esi, %esi
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movl	$0, (%rsp)
	callq	g_type_register_static_simple
	movabsq	$gimp_color_display_editor_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_color_display_editor_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_color_display_editor_get_type, .Lfunc_end0-gimp_color_display_editor_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_display_editor_class_intern_init,@function
gimp_color_display_editor_class_intern_init: # @gimp_color_display_editor_class_intern_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_class_peek_parent
	movq	%rax, gimp_color_display_editor_parent_class
	cmpl	$0, GimpColorDisplayEditor_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpColorDisplayEditor_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_color_display_editor_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_color_display_editor_class_intern_init, .Lfunc_end1-gimp_color_display_editor_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_display_editor_init,@function
gimp_color_display_editor_init:         # @gimp_color_display_editor_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$608, %rsp              # imm = 0x260
.Ltmp9:
	.cfi_offset %rbx, -32
.Ltmp10:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gtk_orientable_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_orientable_set_orientation
	movl	$1, %edi
	callq	gtk_paned_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
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
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_paned_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_paned_pack1
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gtk_scrolled_window_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_scrolled_window_set_shadow_type
	movq	-56(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_scrolled_window_set_policy
	movq	-40(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
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
	callq	g_gtype_get_type
	movl	$3, %edi
	movl	$64, %ecx
	movl	%ecx, %esi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	gtk_list_store_new
	movq	-24(%rbp), %rcx
	movq	%rax, 152(%rcx)
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_new_with_model
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movl	$200, %esi
	movl	$100, %edx
	movq	-64(%rbp), %rdi
	callq	gtk_widget_set_size_request
	movq	-64(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_tree_view_set_headers_clickable
	callq	gtk_tree_view_column_new
	movabsq	$.L.str.9, %rdi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_tree_view_column_set_title
	movq	-64(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_view_append_column
	movl	%eax, -188(%rbp)        # 4-byte Spill
	callq	gtk_cell_renderer_pixbuf_new
	xorl	%edx, %edx
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	gtk_tree_view_column_pack_start
	movabsq	$.L.str.10, %rdx
	movl	$1, %ecx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movb	$0, %al
	callq	gtk_tree_view_column_set_attributes
	callq	gtk_cell_renderer_text_new
	movl	$1, %edx
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	gtk_tree_view_column_pack_start
	movabsq	$.L.str.11, %rdx
	xorl	%ecx, %ecx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movb	$0, %al
	callq	gtk_tree_view_column_set_attributes
	movq	-56(%rbp), %rdx
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movq	-64(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_selection
	movabsq	$.L.str.12, %rsi
	movabsq	$gimp_color_display_editor_src_changed, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	%rax, 168(%rdi)
	movq	-24(%rbp), %rax
	movq	168(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-216(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movl	$1, %edi
	movl	$6, %esi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_homogeneous
	movq	-40(%rbp), %rax
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
	callq	gtk_button_new
	movq	-24(%rbp), %rsi
	movq	%rax, 192(%rsi)
	movq	-72(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	192(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, -252(%rbp)        # 4-byte Spill
	movl	-252(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	xorl	%esi, %esi
	movq	-24(%rbp), %rax
	movq	192(%rax), %rdi
	callq	gtk_widget_set_sensitive
	movq	-24(%rbp), %rax
	movq	192(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.13, %rdi
	movl	$4, %esi
	callq	gtk_image_new_from_stock
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.14, %rsi
	movabsq	$gimp_color_display_editor_add_clicked, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	192(%rdi), %rdi
	movq	-24(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_button_new
	movq	-24(%rbp), %rcx
	movq	%rax, 200(%rcx)
	movq	-72(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rcx
	movq	200(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	xorl	%esi, %esi
	movq	-24(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gtk_widget_set_sensitive
	movq	-24(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.15, %rdi
	movl	$4, %esi
	callq	gtk_image_new_from_stock
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.14, %rsi
	movabsq	$gimp_color_display_editor_remove_clicked, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	200(%rdi), %rdi
	movq	-24(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_editor_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movq	-48(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.17, %rdi
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.16, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$gimp_color_display_editor_up_clicked, %r10
	movq	-24(%rbp), %r11
	movq	-320(%rbp), %rbx        # 8-byte Reload
	movq	%rdi, -328(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, %rdx
	movq	-328(%rbp), %rcx        # 8-byte Reload
	movq	%r10, %r8
	movq	-328(%rbp), %r9         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	gimp_editor_add_button
	movq	-24(%rbp), %rcx
	movq	%rax, 208(%rcx)
	movq	-48(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.19, %rdi
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.18, %rsi
	xorl	%r14d, %r14d
	movl	%r14d, %ecx
	movabsq	$gimp_color_display_editor_down_clicked, %rdx
	movq	-24(%rbp), %rdi
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rdx, -360(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	-360(%rbp), %r8         # 8-byte Reload
	movq	-368(%rbp), %r9         # 8-byte Reload
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	gimp_editor_add_button
	xorl	%esi, %esi
	movq	-24(%rbp), %rcx
	movq	%rax, 216(%rcx)
	movq	-24(%rbp), %rax
	movq	208(%rax), %rdi
	callq	gtk_widget_set_sensitive
	xorl	%esi, %esi
	movq	-24(%rbp), %rax
	movq	216(%rax), %rdi
	callq	gtk_widget_set_sensitive
	xorl	%esi, %esi
	movl	%esi, %eax
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gtk_scrolled_window_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_scrolled_window_set_shadow_type
	movq	-56(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r14d
	movq	%rax, %rdi
	movl	%r14d, %esi
	movl	%r14d, %edx
	callq	gtk_scrolled_window_set_policy
	movq	-48(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -396(%rbp)        # 4-byte Spill
	movl	-396(%rbp), %ecx        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_color_display_get_type
	movl	$4, %edi
	movl	$20, %ecx
	movl	%ecx, %esi
	movl	$64, %ecx
	movl	%ecx, %r9d
	movq	%r9, %rdx
	movq	%r9, %rcx
	movq	%rax, %r8
	movb	$0, %al
	callq	gtk_list_store_new
	movq	-24(%rbp), %rcx
	movq	%rax, 160(%rcx)
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_new_with_model
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movl	$200, %esi
	movl	$100, %edx
	movq	-64(%rbp), %rdi
	callq	gtk_widget_set_size_request
	movq	-64(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_tree_view_set_headers_clickable
	callq	gtk_cell_renderer_toggle_new
	movabsq	$.L.str.20, %rsi
	movabsq	$gimp_color_display_editor_enable_toggled, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	-424(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movabsq	$.L.str.21, %rdx
	xorl	%r9d, %r9d
	movq	-96(%rbp), %rsi
	movq	%rcx, %rdi
	movq	%rcx, -432(%rbp)        # 8-byte Spill
	movl	%r9d, %ecx
	movq	-432(%rbp), %r8         # 8-byte Reload
	movq	%rax, -440(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	gtk_tree_view_column_new_with_attributes
	movq	%rax, -88(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_view_insert_column
	movabsq	$.L.str.22, %rdi
	movl	$1, %esi
	movl	%eax, -452(%rbp)        # 4-byte Spill
	callq	gtk_image_new_from_stock
	movq	%rax, -80(%rbp)
	movq	-88(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gtk_tree_view_column_set_widget
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_tree_view_column_new
	movabsq	$.L.str.23, %rdi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_tree_view_column_set_title
	movq	-64(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_view_append_column
	movl	%eax, -476(%rbp)        # 4-byte Spill
	callq	gtk_cell_renderer_pixbuf_new
	xorl	%edx, %edx
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	gtk_tree_view_column_pack_start
	movabsq	$.L.str.10, %rdx
	movl	$2, %ecx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movb	$0, %al
	callq	gtk_tree_view_column_set_attributes
	callq	gtk_cell_renderer_text_new
	movl	$1, %edx
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	gtk_tree_view_column_pack_start
	movabsq	$.L.str.11, %rdx
	movl	$1, %ecx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movb	$0, %al
	callq	gtk_tree_view_column_set_attributes
	movq	-56(%rbp), %rdx
	movq	%rdx, -488(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movq	-64(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_selection
	movabsq	$.L.str.12, %rsi
	movabsq	$gimp_color_display_editor_dest_changed, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	%rax, 176(%rdi)
	movq	-24(%rbp), %rax
	movq	176(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	%rdi, -504(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-504(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movl	$1, %edi
	movl	$6, %esi
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gtk_paned_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_paned_pack2
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-528(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -532(%rbp)        # 4-byte Spill
	movl	-532(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gimp_frame_new
	movq	-24(%rbp), %rsi
	movq	%rax, 224(%rsi)
	movq	-72(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-544(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rsi
	movq	224(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rax
	movq	224(%rax), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	-24(%rbp), %r10
	movq	%rax, 232(%r10)
	movq	-24(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	232(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-24(%rbp), %rax
	movq	232(%rax), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-560(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -564(%rbp)        # 4-byte Spill
	movl	-564(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_end
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.24, %rdi
	callq	gtk_button_new_from_stock
	movq	-24(%rbp), %rsi
	movq	%rax, 248(%rsi)
	movq	-40(%rbp), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-576(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	248(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -580(%rbp)        # 4-byte Spill
	movl	-580(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_end
	movq	-24(%rbp), %rax
	movq	248(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.25, %rdi
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.14, %rsi
	movabsq	$gimp_color_display_editor_reset_clicked, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	248(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -600(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-600(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-24(%rbp), %rcx
	movq	176(%rcx), %rdi
	movq	-24(%rbp), %rsi
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	gimp_color_display_editor_dest_changed
	addq	$608, %rsp              # imm = 0x260
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_color_display_editor_init, .Lfunc_end2-gimp_color_display_editor_init
	.cfi_endproc

	.globl	gimp_color_display_editor_new
	.align	16, 0x90
	.type	gimp_color_display_editor_new,@function
gimp_color_display_editor_new:          # @gimp_color_display_editor_new
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
	pushq	%r14
	pushq	%rbx
	subq	$400, %rsp              # imm = 0x190
.Ltmp14:
	.cfi_offset %rbx, -32
.Ltmp15:
	.cfi_offset %r14, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_color_display_stack_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -100(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_color_display_editor_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB3_48
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_color_config_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB3_15
# BB#14:                                # %if.then.20
	movl	$0, -124(%rbp)
	jmp	.LBB3_20
.LBB3_15:                               # %if.else.21
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_18
# BB#16:                                # %land.lhs.true.24
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB3_18
# BB#17:                                # %if.then.28
	movl	$1, -124(%rbp)
	jmp	.LBB3_19
.LBB3_18:                               # %if.else.29
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB3_19:                               # %if.end.31
	jmp	.LBB3_20
.LBB3_20:                               # %if.end.32
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB3_22
# BB#21:                                # %if.then.35
	jmp	.LBB3_23
.LBB3_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_color_display_editor_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB3_48
.LBB3_23:                               # %if.end.37
	jmp	.LBB3_24
.LBB3_24:                               # %do.end.38
	jmp	.LBB3_25
.LBB3_25:                               # %do.body.39
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)
	callq	gimp_color_managed_interface_get_type
	movq	%rax, -144(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB3_27
# BB#26:                                # %if.then.48
	movl	$0, -148(%rbp)
	jmp	.LBB3_32
.LBB3_27:                               # %if.else.49
	movq	-136(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_30
# BB#28:                                # %land.lhs.true.52
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-144(%rbp), %rax
	jne	.LBB3_30
# BB#29:                                # %if.then.56
	movl	$1, -148(%rbp)
	jmp	.LBB3_31
.LBB3_30:                               # %if.else.57
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -148(%rbp)
.LBB3_31:                               # %if.end.59
	jmp	.LBB3_32
.LBB3_32:                               # %if.end.60
	movl	-148(%rbp), %eax
	movl	%eax, -152(%rbp)
	cmpl	$0, -152(%rbp)
	je	.LBB3_34
# BB#33:                                # %if.then.63
	jmp	.LBB3_35
.LBB3_34:                               # %if.else.64
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_color_display_editor_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB3_48
.LBB3_35:                               # %if.end.65
	jmp	.LBB3_36
.LBB3_36:                               # %do.end.66
	callq	gimp_color_display_editor_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-56(%rbp), %rsi
	movq	%rax, 128(%rsi)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-56(%rbp), %rsi
	movq	%rax, 136(%rsi)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-56(%rbp), %rsi
	movq	%rax, 144(%rsi)
	callq	gimp_color_display_get_type
	leaq	-68(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_type_children
	movq	%rax, -64(%rbp)
	movl	$0, -72(%rbp)
.LBB3_37:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-72(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jae	.LBB3_40
# BB#38:                                # %for.body
                                        #   in Loop: Header=BB3_37 Depth=1
	movslq	-72(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	g_type_class_ref
	leaq	-192(%rbp), %rsi
	movq	%rax, -160(%rbp)
	movq	-56(%rbp), %rax
	movq	152(%rax), %rdi
	callq	gtk_list_store_append
	leaq	-192(%rbp), %rsi
	movl	$1, %edx
	xorl	%r8d, %r8d
	movl	$2, %r9d
	movl	$4294967295, %r10d      # imm = 0xFFFFFFFF
	movq	-56(%rbp), %rax
	movq	152(%rax), %rdi
	movq	-160(%rbp), %rax
	movq	208(%rax), %rcx
	movq	-160(%rbp), %rax
	movq	136(%rax), %rax
	movslq	-72(%rbp), %r11
	movq	-64(%rbp), %rbx
	movq	(%rbx,%r11,8), %r11
	movl	%r9d, -260(%rbp)        # 4-byte Spill
	movq	%rax, %r9
	movl	$2, (%rsp)
	movq	%r11, 8(%rsp)
	movl	$-1, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -264(%rbp)       # 4-byte Spill
	callq	gtk_list_store_set
	movq	-160(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_class_unref
# BB#39:                                # %for.inc
                                        #   in Loop: Header=BB3_37 Depth=1
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB3_37
.LBB3_40:                               # %for.end
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB3_41:                               # %for.cond.84
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB3_47
# BB#42:                                # %for.body.86
                                        #   in Loop: Header=BB3_41 Depth=1
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rdi
	callq	gimp_color_display_get_enabled
	leaq	-232(%rbp), %rsi
	movl	%eax, -236(%rbp)
	movq	-200(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	136(%rdi), %rdi
	movq	%rdi, -248(%rbp)
	movq	-200(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	208(%rdi), %rdi
	movq	%rdi, -256(%rbp)
	movq	-56(%rbp), %rdi
	movq	160(%rdi), %rdi
	callq	gtk_list_store_append
	leaq	-232(%rbp), %rsi
	xorl	%edx, %edx
	movl	$2, %r8d
	movl	$1, %eax
	movl	$3, %ecx
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movq	-56(%rbp), %rdi
	movq	160(%rdi), %rdi
	movl	-236(%rbp), %r10d
	movq	-256(%rbp), %r11
	movq	-248(%rbp), %rbx
	movq	-200(%rbp), %r14
	movl	%ecx, -268(%rbp)        # 4-byte Spill
	movl	%r10d, %ecx
	movl	%r9d, -272(%rbp)        # 4-byte Spill
	movq	%r11, %r9
	movl	$1, (%rsp)
	movq	%rbx, 8(%rsp)
	movl	$3, 16(%rsp)
	movq	%r14, 24(%rsp)
	movl	$-1, 32(%rsp)
	movl	%eax, -276(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gtk_list_store_set
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-200(%rbp), %rdi
	movq	-56(%rbp), %r9
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rsi
	movabsq	$gimp_color_display_editor_enabled, %rdi
	xorl	%r8d, %r8d
	movq	-288(%rbp), %r9         # 8-byte Reload
	movq	%rdi, -296(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	-296(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	g_signal_connect_object
	movq	%rax, -304(%rbp)        # 8-byte Spill
# BB#43:                                # %for.inc.103
                                        #   in Loop: Header=BB3_41 Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB3_45
# BB#44:                                # %cond.true
                                        #   in Loop: Header=BB3_41 Depth=1
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	jmp	.LBB3_46
.LBB3_45:                               # %cond.false
                                        #   in Loop: Header=BB3_41 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	jmp	.LBB3_46
.LBB3_46:                               # %cond.end
                                        #   in Loop: Header=BB3_41 Depth=1
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	%rax, -80(%rbp)
	jmp	.LBB3_41
.LBB3_47:                               # %for.end.105
	movl	$80, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rsi
	movabsq	$gimp_color_display_editor_added, %rcx
	xorl	%r8d, %r8d
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_signal_connect_object
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-32(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rsi
	movabsq	$gimp_color_display_editor_removed, %rcx
	xorl	%r8d, %r8d
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_signal_connect_object
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-32(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, -344(%rbp)        # 8-byte Spill
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rsi
	movabsq	$gimp_color_display_editor_reordered, %rcx
	xorl	%r8d, %r8d
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_signal_connect_object
	movq	-56(%rbp), %rcx
	movq	%rax, -360(%rbp)        # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
.LBB3_48:                               # %return
	movq	-24(%rbp), %rax
	addq	$400, %rsp              # imm = 0x190
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_color_display_editor_new, .Lfunc_end3-gimp_color_display_editor_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_display_editor_enabled,@function
gimp_color_display_editor_enabled:      # @gimp_color_display_editor_enabled
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	160(%rdx), %rdx
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_model_get_iter_first
	movl	%eax, -60(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -60(%rbp)
	je	.LBB4_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	movl	$3, %edx
	leaq	-72(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-72(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rcx
	cmpq	-72(%rbp), %rcx
	jne	.LBB4_4
# BB#3:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gimp_color_display_get_enabled
	leaq	-56(%rbp), %rsi
	xorl	%edx, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movl	%eax, -76(%rbp)
	movq	-24(%rbp), %rdi
	movq	160(%rdi), %rdi
	movl	-76(%rbp), %ecx
	movb	$0, %al
	callq	gtk_list_store_set
	jmp	.LBB4_6
.LBB4_4:                                # %if.end
                                        #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_5
.LBB4_5:                                # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_model_iter_next
	movl	%eax, -60(%rbp)
	jmp	.LBB4_1
.LBB4_6:                                # %for.end
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_color_display_editor_enabled, .Lfunc_end4-gimp_color_display_editor_enabled
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_display_editor_added,@function
gimp_color_display_editor_added:        # @gimp_color_display_editor_added
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
	pushq	%r14
	pushq	%rbx
	subq	$176, %rsp
.Ltmp22:
	.cfi_offset %rbx, -32
.Ltmp23:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_color_display_get_enabled
	leaq	-80(%rbp), %rsi
	movl	%eax, -84(%rbp)
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	136(%rcx), %rcx
	movq	%rcx, -96(%rbp)
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	208(%rcx), %rcx
	movq	%rcx, -104(%rbp)
	movq	-48(%rbp), %rcx
	movq	160(%rcx), %rdi
	movl	-36(%rbp), %edx
	callq	gtk_list_store_insert
	leaq	-80(%rbp), %rsi
	xorl	%edx, %edx
	movl	$2, %r8d
	movl	$1, %eax
	movl	$3, %r9d
	movl	$4294967295, %r10d      # imm = 0xFFFFFFFF
	movq	-48(%rbp), %rcx
	movq	160(%rcx), %rdi
	movl	-84(%rbp), %ecx
	movq	-104(%rbp), %r11
	movq	-96(%rbp), %rbx
	movq	-32(%rbp), %r14
	movl	%r9d, -108(%rbp)        # 4-byte Spill
	movq	%r11, %r9
	movl	$1, (%rsp)
	movq	%rbx, 8(%rsp)
	movl	$3, 16(%rsp)
	movq	%r14, 24(%rsp)
	movl	$-1, 32(%rsp)
	movl	%eax, -112(%rbp)        # 4-byte Spill
	movb	$0, %al
	movl	%r10d, -116(%rbp)       # 4-byte Spill
	callq	gtk_list_store_set
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %r9
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rsi
	movabsq	$gimp_color_display_editor_enabled, %rdi
	xorl	%r8d, %r8d
	movq	-128(%rbp), %r9         # 8-byte Reload
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	-136(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	g_signal_connect_object
	movq	-48(%rbp), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_color_display_editor_update_buttons
	addq	$176, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_color_display_editor_added, .Lfunc_end5-gimp_color_display_editor_added
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_display_editor_removed,@function
gimp_color_display_editor_removed:      # @gimp_color_display_editor_removed
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	160(%rdx), %rdx
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_model_get_iter_first
	movl	%eax, -60(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -60(%rbp)
	je	.LBB6_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	movl	$3, %edx
	leaq	-72(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-72(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rcx
	cmpq	-72(%rbp), %rcx
	jne	.LBB6_4
# BB#3:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_color_display_editor_enabled, %rdx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %r9
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r9, -104(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-104(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	leaq	-56(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	160(%rdi), %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	gtk_list_store_remove
	movq	-24(%rbp), %rdi
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	gimp_color_display_editor_update_buttons
	jmp	.LBB6_6
.LBB6_4:                                # %if.end
                                        #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_5
.LBB6_5:                                # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_model_iter_next
	movl	%eax, -60(%rbp)
	jmp	.LBB6_1
.LBB6_6:                                # %for.end
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_color_display_editor_removed, .Lfunc_end6-gimp_color_display_editor_removed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_display_editor_reordered,@function
gimp_color_display_editor_reordered:    # @gimp_color_display_editor_reordered
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	160(%rcx), %rcx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_model_get_iter_first
	movl	%eax, -68(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -68(%rbp)
	je	.LBB7_18
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-32(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-64(%rbp), %rsi
	movl	$3, %edx
	leaq	-80(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-80(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rcx
	cmpq	-80(%rbp), %rcx
	jne	.LBB7_16
# BB#3:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_model_get_path
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	gtk_tree_path_get_indices
	movl	(%rax), %ecx
	movl	%ecx, -92(%rbp)
	movq	-88(%rbp), %rdi
	callq	gtk_tree_path_free
	movl	-20(%rbp), %ecx
	cmpl	-92(%rbp), %ecx
	jne	.LBB7_5
# BB#4:                                 # %if.then.12
	jmp	.LBB7_18
.LBB7_5:                                # %if.end
	cmpl	$-1, -20(%rbp)
	je	.LBB7_7
# BB#6:                                 # %lor.lhs.false
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rdi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	g_list_length
	subl	$1, %eax
	movl	-156(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	jne	.LBB7_8
.LBB7_7:                                # %if.then.16
	leaq	-64(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rcx
	movq	160(%rcx), %rdi
	callq	gtk_list_store_move_before
	jmp	.LBB7_15
.LBB7_8:                                # %if.else
	cmpl	$0, -20(%rbp)
	jne	.LBB7_10
# BB#9:                                 # %if.then.19
	leaq	-64(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rcx
	movq	160(%rcx), %rdi
	callq	gtk_list_store_move_after
	jmp	.LBB7_14
.LBB7_10:                               # %if.else.21
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movl	-20(%rbp), %edi
	movb	$0, %al
	callq	gtk_tree_path_new_from_indices
	movq	%rax, -88(%rbp)
	movq	-32(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-128(%rbp), %rsi
	movq	-88(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_tree_model_get_iter
	movq	-88(%rbp), %rdi
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	gtk_tree_path_free
	movl	-20(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jle	.LBB7_12
# BB#11:                                # %if.then.28
	leaq	-64(%rbp), %rsi
	leaq	-128(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	160(%rax), %rdi
	callq	gtk_list_store_move_after
	jmp	.LBB7_13
.LBB7_12:                               # %if.else.30
	leaq	-64(%rbp), %rsi
	leaq	-128(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	160(%rax), %rdi
	callq	gtk_list_store_move_before
.LBB7_13:                               # %if.end.32
	jmp	.LBB7_14
.LBB7_14:                               # %if.end.33
	jmp	.LBB7_15
.LBB7_15:                               # %if.end.34
	movq	-32(%rbp), %rdi
	callq	gimp_color_display_editor_update_buttons
	jmp	.LBB7_18
.LBB7_16:                               # %if.end.35
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_17
.LBB7_17:                               # %for.inc
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-32(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_model_iter_next
	movl	%eax, -68(%rbp)
	jmp	.LBB7_1
.LBB7_18:                               # %for.end
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_color_display_editor_reordered, .Lfunc_end7-gimp_color_display_editor_reordered
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_display_editor_class_init,@function
gimp_color_display_editor_class_init:   # @gimp_color_display_editor_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$gimp_color_display_editor_dispose, %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rsi, 40(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_color_display_editor_class_init, .Lfunc_end8-gimp_color_display_editor_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_display_editor_dispose,@function
gimp_color_display_editor_dispose:      # @gimp_color_display_editor_dispose
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_color_display_editor_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 184(%rax)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	184(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rcx
	addq	$184, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_object_remove_weak_pointer
	movq	-16(%rbp), %rax
	movq	$0, 184(%rax)
.LBB9_2:                                # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 128(%rax)
	je	.LBB9_4
# BB#3:                                 # %if.then.7
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 128(%rax)
.LBB9_4:                                # %if.end.10
	movq	-16(%rbp), %rax
	cmpq	$0, 136(%rax)
	je	.LBB9_6
# BB#5:                                 # %if.then.12
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 136(%rax)
.LBB9_6:                                # %if.end.15
	movq	-16(%rbp), %rax
	cmpq	$0, 144(%rax)
	je	.LBB9_8
# BB#7:                                 # %if.then.17
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 144(%rax)
.LBB9_8:                                # %if.end.20
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_color_display_editor_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_color_display_editor_dispose, .Lfunc_end9-gimp_color_display_editor_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_display_editor_src_changed,@function
gimp_color_display_editor_src_changed:  # @gimp_color_display_editor_src_changed
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
	subq	$128, %rsp
	leaq	-24(%rbp), %rax
	leaq	-56(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	gtk_tree_selection_get_selected
	cmpl	$0, %eax
	je	.LBB10_2
# BB#1:                                 # %if.then
	leaq	-56(%rbp), %rsi
	xorl	%eax, %eax
	leaq	-96(%rbp), %rcx
	movl	$24, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rcx, %rdi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	memset
	movq	-24(%rbp), %rdi
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movl	-116(%rbp), %edx        # 4-byte Reload
	movq	-112(%rbp), %rcx        # 8-byte Reload
	callq	gtk_tree_model_get_value
	leaq	-96(%rbp), %rdi
	callq	g_value_get_string
	movabsq	$.L.str.26, %rdi
	movq	%rax, -72(%rbp)
	callq	gettext
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	leaq	-96(%rbp), %rdi
	movq	%rax, -64(%rbp)
	callq	g_value_unset
.LBB10_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	192(%rax), %rdi
	cmpq	$0, -72(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	callq	gtk_widget_set_sensitive
	xorl	%esi, %esi
	movl	%esi, %edx
	movq	-16(%rbp), %rax
	movq	192(%rax), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_help_set_help_data
	movq	-64(%rbp), %rdi
	callq	g_free
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_color_display_editor_src_changed, .Lfunc_end10-gimp_color_display_editor_src_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_display_editor_add_clicked,@function
gimp_color_display_editor_add_clicked:  # @gimp_color_display_editor_add_clicked
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	leaq	-24(%rbp), %rax
	leaq	-56(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	168(%rsi), %rdi
	movq	%rax, %rsi
	callq	gtk_tree_selection_get_selected
	cmpl	$0, %eax
	je	.LBB11_4
# BB#1:                                 # %if.then
	leaq	-56(%rbp), %rsi
	movl	$2, %edx
	leaq	-72(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	movabsq	$.L.str.27, %rsi
	movabsq	$.L.str.28, %rcx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %r10
	movq	136(%r10), %rdx
	movq	-16(%rbp), %r10
	movq	144(%r10), %r8
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB11_3
# BB#2:                                 # %if.then.3
	movq	-16(%rbp), %rax
	movq	128(%rax), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_color_display_stack_add
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB11_3:                               # %if.end
	jmp	.LBB11_4
.LBB11_4:                               # %if.end.4
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_color_display_editor_add_clicked, .Lfunc_end11-gimp_color_display_editor_add_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_display_editor_remove_clicked,@function
gimp_color_display_editor_remove_clicked: # @gimp_color_display_editor_remove_clicked
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, 184(%rsi)
	je	.LBB12_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	128(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	184(%rax), %rsi
	callq	gimp_color_display_stack_remove
.LBB12_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_color_display_editor_remove_clicked, .Lfunc_end12-gimp_color_display_editor_remove_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_display_editor_up_clicked,@function
gimp_color_display_editor_up_clicked:   # @gimp_color_display_editor_up_clicked
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, 184(%rsi)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	128(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	184(%rax), %rsi
	callq	gimp_color_display_stack_reorder_up
.LBB13_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_color_display_editor_up_clicked, .Lfunc_end13-gimp_color_display_editor_up_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_display_editor_down_clicked,@function
gimp_color_display_editor_down_clicked: # @gimp_color_display_editor_down_clicked
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, 184(%rsi)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	128(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	184(%rax), %rsi
	callq	gimp_color_display_stack_reorder_down
.LBB14_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_color_display_editor_down_clicked, .Lfunc_end14-gimp_color_display_editor_down_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_display_editor_enable_toggled,@function
gimp_color_display_editor_enable_toggled: # @gimp_color_display_editor_enable_toggled
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_tree_path_new_from_string
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_tree_model_get_iter
	cmpl	$0, %eax
	je	.LBB15_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-64(%rbp), %rsi
	movl	$3, %edx
	leaq	-72(%rbp), %rcx
	xorl	%r8d, %r8d
	leaq	-76(%rbp), %r9
	movl	$4294967295, %r10d      # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movl	$-1, (%rsp)
	movb	$0, %al
	movl	%r10d, -100(%rbp)       # 4-byte Spill
	callq	gtk_tree_model_get
	movq	-72(%rbp), %rdi
	cmpl	$0, -76(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %esi
	callq	gimp_color_display_set_enabled
	movq	-72(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
.LBB15_2:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	gtk_tree_path_free
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_color_display_editor_enable_toggled, .Lfunc_end15-gimp_color_display_editor_enable_toggled
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_display_editor_dest_changed,@function
gimp_color_display_editor_dest_changed: # @gimp_color_display_editor_dest_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, 184(%rsi)
	je	.LBB16_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	184(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rcx
	addq	$184, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_object_remove_weak_pointer
	movq	-16(%rbp), %rax
	movq	$0, 184(%rax)
.LBB16_2:                               # %if.end
	leaq	-24(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	-8(%rbp), %rdi
	callq	gtk_tree_selection_get_selected
	cmpl	$0, %eax
	je	.LBB16_4
# BB#3:                                 # %if.then.6
	leaq	-56(%rbp), %rsi
	movl	$3, %edx
	leaq	-96(%rbp), %rax
	xorl	%ecx, %ecx
	movl	$24, %edi
	movl	%edi, %r8d
	movq	%rax, %r9
	movq	%r9, %rdi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movl	%edx, -108(%rbp)        # 4-byte Spill
	movq	%r8, %rdx
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	memset
	movq	-24(%rbp), %rdi
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movl	-108(%rbp), %edx        # 4-byte Reload
	movq	-120(%rbp), %rcx        # 8-byte Reload
	callq	gtk_tree_model_get_value
	leaq	-96(%rbp), %rdi
	callq	g_value_get_object
	leaq	-96(%rbp), %rdi
	movq	%rax, -64(%rbp)
	callq	g_value_unset
	movabsq	$.L.str.29, %rdi
	callq	gettext
	movq	-64(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	136(%rcx), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -72(%rbp)
.LBB16_4:                               # %if.end.10
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	200(%rcx), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_help_set_help_data
	movq	-72(%rbp), %rdi
	callq	g_free
	movq	-16(%rbp), %rcx
	movq	200(%rcx), %rdi
	cmpq	$0, -64(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	callq	gtk_widget_set_sensitive
	movq	-16(%rbp), %rcx
	movq	248(%rcx), %rdi
	cmpq	$0, -64(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %esi
	callq	gtk_widget_set_sensitive
	movq	-16(%rbp), %rcx
	cmpq	$0, 240(%rcx)
	je	.LBB16_6
# BB#5:                                 # %if.then.15
	movq	-16(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	240(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_container_remove
.LBB16_6:                               # %if.end.19
	cmpq	$0, -64(%rbp)
	je	.LBB16_8
# BB#7:                                 # %if.then.21
	movl	$80, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, 184(%rdx)
	movq	-64(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rcx
	addq	$184, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_object_add_weak_pointer
	movq	-64(%rbp), %rdi
	callq	gimp_color_display_configure
	movq	-16(%rbp), %rcx
	movq	%rax, 240(%rcx)
	movq	-16(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	136(%rcx), %rsi
	movq	%rax, %rdi
	callq	gtk_frame_set_label
	jmp	.LBB16_9
.LBB16_8:                               # %if.else
	movq	-16(%rbp), %rax
	movq	$0, 240(%rax)
	movq	-16(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.30, %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_frame_set_label
.LBB16_9:                               # %if.end.36
	movq	-16(%rbp), %rax
	cmpq	$0, 240(%rax)
	je	.LBB16_11
# BB#10:                                # %if.then.39
	movq	-16(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rsi
	movq	240(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	movl	-164(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rax
	movq	240(%rax), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	addq	$240, %rsi
	movq	%rax, %rdi
	callq	g_object_add_weak_pointer
.LBB16_11:                              # %if.end.48
	movq	-16(%rbp), %rdi
	callq	gimp_color_display_editor_update_buttons
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_color_display_editor_dest_changed, .Lfunc_end16-gimp_color_display_editor_dest_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_display_editor_reset_clicked,@function
gimp_color_display_editor_reset_clicked: # @gimp_color_display_editor_reset_clicked
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, 184(%rsi)
	je	.LBB17_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	184(%rax), %rdi
	callq	gimp_color_display_configure_reset
.LBB17_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_color_display_editor_reset_clicked, .Lfunc_end17-gimp_color_display_editor_reset_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_display_editor_update_buttons,@function
gimp_color_display_editor_update_buttons: # @gimp_color_display_editor_update_buttons
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	leaq	-16(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -56(%rbp)
	movq	-8(%rbp), %rdi
	movq	176(%rdi), %rdi
	callq	gtk_tree_selection_get_selected
	cmpl	$0, %eax
	je	.LBB18_2
# BB#1:                                 # %if.then
	leaq	-48(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gtk_tree_model_get_path
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	gtk_tree_path_get_indices
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpl	$0, (%rax)
	setg	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -52(%rbp)
	movq	-72(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	24(%rax), %rdi
	movl	%edx, -76(%rbp)         # 4-byte Spill
	callq	g_list_length
	subl	$1, %eax
	movl	-76(%rbp), %edx         # 4-byte Reload
	cmpl	%eax, %edx
	setb	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -56(%rbp)
	movq	-64(%rbp), %rdi
	callq	gtk_tree_path_free
.LBB18_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	208(%rax), %rdi
	movl	-52(%rbp), %esi
	callq	gtk_widget_set_sensitive
	movq	-8(%rbp), %rax
	movq	216(%rax), %rdi
	movl	-56(%rbp), %esi
	callq	gtk_widget_set_sensitive
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_color_display_editor_update_buttons, .Lfunc_end18-gimp_color_display_editor_update_buttons
	.cfi_endproc

	.type	gimp_color_display_editor_get_type.g_define_type_id__volatile,@object # @gimp_color_display_editor_get_type.g_define_type_id__volatile
	.local	gimp_color_display_editor_get_type.g_define_type_id__volatile
	.comm	gimp_color_display_editor_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpColorDisplayEditor"
	.size	.L.str, 23

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_color_display_editor_new,@object # @__func__.gimp_color_display_editor_new
.L__func__.gimp_color_display_editor_new:
	.asciz	"gimp_color_display_editor_new"
	.size	.L__func__.gimp_color_display_editor_new, 30

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_COLOR_DISPLAY_STACK (stack)"
	.size	.L.str.2, 36

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_COLOR_CONFIG (config)"
	.size	.L.str.3, 30

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_COLOR_MANAGED (managed)"
	.size	.L.str.4, 32

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"notify::enabled"
	.size	.L.str.5, 16

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"added"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"removed"
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"reordered"
	.size	.L.str.8, 10

	.type	gimp_color_display_editor_parent_class,@object # @gimp_color_display_editor_parent_class
	.local	gimp_color_display_editor_parent_class
	.comm	gimp_color_display_editor_parent_class,8,8
	.type	GimpColorDisplayEditor_private_offset,@object # @GimpColorDisplayEditor_private_offset
	.local	GimpColorDisplayEditor_private_offset
	.comm	GimpColorDisplayEditor_private_offset,4,4
	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Available Filters"
	.size	.L.str.9, 18

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"stock-id"
	.size	.L.str.10, 9

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"text"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"changed"
	.size	.L.str.12, 8

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gtk-go-forward"
	.size	.L.str.13, 15

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"clicked"
	.size	.L.str.14, 8

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gtk-go-back"
	.size	.L.str.15, 12

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gtk-go-up"
	.size	.L.str.16, 10

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Move the selected filter up"
	.size	.L.str.17, 28

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gtk-go-down"
	.size	.L.str.18, 12

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Move the selected filter down"
	.size	.L.str.19, 30

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"toggled"
	.size	.L.str.20, 8

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"active"
	.size	.L.str.21, 7

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gimp-visible"
	.size	.L.str.22, 13

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Active Filters"
	.size	.L.str.23, 15

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gimp-reset"
	.size	.L.str.24, 11

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Reset the selected filter to default values"
	.size	.L.str.25, 44

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Add '%s' to the list of active filters"
	.size	.L.str.26, 39

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"color-config"
	.size	.L.str.27, 13

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"color-managed"
	.size	.L.str.28, 14

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Remove '%s' from the list of active filters"
	.size	.L.str.29, 44

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"No filter selected"
	.size	.L.str.30, 19


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
