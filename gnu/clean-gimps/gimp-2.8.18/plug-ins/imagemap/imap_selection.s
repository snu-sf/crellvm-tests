	.text
	.file	"imap_selection.bc"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_0:
	.long	1056964608              # float 0.5
	.text
	.globl	make_selection
	.align	16, 0x90
	.type	make_selection,@function
make_selection:                         # @make_selection
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
	subq	$320, %rsp              # imm = 0x140
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$104, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	g_malloc_n
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-16(%rbp), %rax
	movl	$1, 56(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 52(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 60(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 64(%rax)
	callq	gtk_frame_new
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	callq	make_selection_toolbar
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -100(%rbp)        # 4-byte Spill
	movl	-100(%rbp), %ecx        # 4-byte Reload
	callq	gtk_box_pack_start
	movabsq	$.L.str, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
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
	movl	$1, %edi
	movl	$68, %ecx
	movl	%ecx, %esi
	movb	$0, %al
	callq	gtk_list_store_new
	movq	-16(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_new_with_model
	movq	-16(%rbp), %rsi
	movq	%rax, 24(%rsi)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	callq	gtk_cell_renderer_text_new
	movabsq	$.L.str.1, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rsi
	movb	$0, %al
	callq	gtk_tree_view_column_new_with_attributes
	movabsq	$render_nr, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	callq	gtk_tree_view_column_set_cell_data_func
	movl	$16, %esi
	movq	-72(%rbp), %rdi
	callq	gtk_tree_view_column_set_min_width
	movl	$1, %esi
	movq	-72(%rbp), %rdi
	callq	gtk_tree_view_column_set_sizing
	movss	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-72(%rbp), %rdi
	callq	gtk_tree_view_column_set_alignment
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_view_append_column
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	gtk_tree_view_column_new
	movabsq	$.L.str.2, %rdi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_tree_view_column_set_title
	callq	gtk_cell_renderer_pixbuf_new
	xorl	%edx, %edx
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gtk_tree_view_column_pack_start
	movabsq	$render_image, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	callq	gtk_tree_view_column_set_cell_data_func
	callq	gtk_cell_renderer_text_new
	movl	$1, %edx
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gtk_tree_view_column_pack_start
	movabsq	$render_url, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	callq	gtk_tree_view_column_set_cell_data_func
	movl	$80, %esi
	movq	-72(%rbp), %rdi
	callq	gtk_tree_view_column_set_min_width
	movl	$1, %esi
	movq	-72(%rbp), %rdi
	callq	gtk_tree_view_column_set_resizable
	movss	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-72(%rbp), %rdi
	callq	gtk_tree_view_column_set_alignment
	movq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_view_append_column
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	gtk_cell_renderer_text_new
	movabsq	$.L.str.3, %rdi
	movq	%rax, -64(%rbp)
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_tree_view_column_new_with_attributes
	movabsq	$render_comment, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	callq	gtk_tree_view_column_set_cell_data_func
	movl	$64, %esi
	movq	-72(%rbp), %rdi
	callq	gtk_tree_view_column_set_min_width
	movl	$1, %esi
	movq	-72(%rbp), %rdi
	callq	gtk_tree_view_column_set_resizable
	movss	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-72(%rbp), %rdi
	callq	gtk_tree_view_column_set_alignment
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_view_append_column
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	gtk_cell_renderer_text_new
	movabsq	$.L.str.4, %rdi
	movq	%rax, -64(%rbp)
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_tree_view_column_new_with_attributes
	movabsq	$render_target, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	callq	gtk_tree_view_column_set_cell_data_func
	movl	$64, %esi
	movq	-72(%rbp), %rdi
	callq	gtk_tree_view_column_set_min_width
	movl	$1, %esi
	movq	-72(%rbp), %rdi
	callq	gtk_tree_view_column_set_resizable
	movss	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-72(%rbp), %rdi
	callq	gtk_tree_view_column_set_alignment
	movq	-56(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_view_append_column
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movl	%eax, -188(%rbp)        # 4-byte Spill
	callq	gtk_scrolled_window_new
	movl	$240, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_set_size_request
	movq	-32(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_scrolled_window_add_with_viewport
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movl	$7, %esi
	movabsq	$target_table, %rdx
	movl	$2, %r9d
	movq	-56(%rbp), %rdi
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_drag_dest_set
	movabsq	$.L.str.5, %rsi
	movabsq	$handle_drop, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-216(%rbp), %rcx        # 8-byte Reload
	movq	-216(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.6, %rsi
	movabsq	$button_press_cb, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-224(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.7, %rsi
	movabsq	$button_release_cb, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-240(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	%rax, -256(%rbp)        # 8-byte Spill
	movq	%rcx, -264(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_selection
	movl	$3, %esi
	movq	-16(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gtk_tree_selection_set_mode
	movabsq	$.L.str.8, %rsi
	movabsq	$changed_cb, %rax
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -272(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-272(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$object_added_cb, %rsi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	object_list_add_add_cb
	movabsq	$object_updated_cb, %rsi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	object_list_add_update_cb
	movabsq	$object_removed_cb, %rsi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	object_list_add_remove_cb
	movabsq	$object_selected_cb, %rsi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	object_list_add_select_cb
	movabsq	$object_moved_cb, %rsi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdx
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	object_list_add_move_cb
	movq	-16(%rbp), %rcx
	movq	%rax, -320(%rbp)        # 8-byte Spill
	movq	%rcx, %rax
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end0:
	.size	make_selection, .Lfunc_end0-make_selection
	.cfi_endproc

	.align	16, 0x90
	.type	render_nr,@function
render_nr:                              # @render_nr
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	selection_get_object
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	object_get_position_in_list
	movabsq	$.L.str.9, %rdi
	addl	$1, %eax
	movl	%eax, %esi
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.10, %rsi
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	movq	-56(%rbp), %rdi
	callq	g_free
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	render_nr, .Lfunc_end1-render_nr
	.cfi_endproc

	.align	16, 0x90
	.type	render_image,@function
render_image:                           # @render_image
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	selection_get_object
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	*200(%rcx)
	movabsq	$.L.str.11, %rsi
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_set
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	render_image, .Lfunc_end2-render_image
	.cfi_endproc

	.align	16, 0x90
	.type	render_url,@function
render_url:                             # @render_url
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	selection_get_object
	movabsq	$.L.str.10, %rsi
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	render_url, .Lfunc_end3-render_url
	.cfi_endproc

	.align	16, 0x90
	.type	render_comment,@function
render_comment:                         # @render_comment
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	selection_get_object
	movabsq	$.L.str.10, %rsi
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	render_comment, .Lfunc_end4-render_comment
	.cfi_endproc

	.align	16, 0x90
	.type	render_target,@function
render_target:                          # @render_target
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	selection_get_object
	movabsq	$.L.str.10, %rsi
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	render_target, .Lfunc_end5-render_target
	.cfi_endproc

	.align	16, 0x90
	.type	handle_drop,@function
handle_drop:                            # @handle_drop
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
	subq	$144, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movl	%eax, -40(%rbp)
	movl	$0, -44(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_selection_data_get_length
	cmpl	$0, %eax
	jl	.LBB6_9
# BB#1:                                 # %land.lhs.true
	movq	-32(%rbp), %rdi
	callq	gtk_selection_data_get_format
	cmpl	$8, %eax
	jne	.LBB6_9
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rcx
	xorl	%edx, %edx
	movl	%edx, %esi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %r8d
	movq	%rax, %rdi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movl	%edx, %esi
	movl	%r8d, %edx
	movq	-120(%rbp), %r8         # 8-byte Reload
	movq	-120(%rbp), %r9         # 8-byte Reload
	movq	$0, (%rsp)
	callq	gtk_tree_view_get_path_at_pos
	cmpl	$0, %eax
	je	.LBB6_8
# BB#3:                                 # %if.then.6
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_model
	leaq	-96(%rbp), %rsi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rdx
	callq	gtk_tree_model_get_iter
	cmpl	$0, %eax
	je	.LBB6_7
# BB#4:                                 # %if.then.12
	leaq	-96(%rbp), %rsi
	movq	-64(%rbp), %rdi
	callq	selection_get_object
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	cmpl	$0, 24(%rax)
	jne	.LBB6_6
# BB#5:                                 # %if.then.15
	movq	-104(%rbp), %rdi
	callq	edit_object_command_new
	movq	%rax, %rdi
	callq	command_list_add
	movq	-104(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_selection_data_get_data
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	object_set_url
	movq	-104(%rbp), %rdi
	callq	object_emit_update_signal
	movl	$1, -44(%rbp)
.LBB6_6:                                # %if.end
	jmp	.LBB6_7
.LBB6_7:                                # %if.end.18
	movq	-56(%rbp), %rdi
	callq	gtk_tree_path_free
.LBB6_8:                                # %if.end.19
	jmp	.LBB6_9
.LBB6_9:                                # %if.end.20
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movl	-44(%rbp), %esi
	movl	-40(%rbp), %ecx
	callq	gtk_drag_finish
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	handle_drop, .Lfunc_end6-handle_drop
	.cfi_endproc

	.align	16, 0x90
	.type	button_press_cb,@function
button_press_cb:                        # @button_press_cb
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	cmpl	$1, 52(%rdx)
	jne	.LBB7_9
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	cmpl	$0, 64(%rax)
	je	.LBB7_7
# BB#2:                                 # %if.then.1
	movq	-24(%rbp), %rax
	movl	$0, 64(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-32(%rbp), %rcx
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	-16(%rbp), %rdi
	cvttsd2si	24(%rdi), %edx
	movq	-16(%rbp), %rdi
	cvttsd2si	32(%rdi), %r8d
	movq	%rax, %rdi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movl	%edx, %esi
	movl	%r8d, %edx
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	$0, (%rsp)
	callq	gtk_tree_view_get_path_at_pos
	cmpl	$0, %eax
	je	.LBB7_6
# BB#3:                                 # %if.then.7
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_tree_model_get_iter
	cmpl	$0, %eax
	je	.LBB7_5
# BB#4:                                 # %if.then.12
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-64(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-72(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	movl	$1, %esi
	movq	-72(%rbp), %rdi
	callq	object_edit
.LBB7_5:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	gtk_tree_path_free
.LBB7_6:                                # %if.end.16
	jmp	.LBB7_8
.LBB7_7:                                # %if.else
	movq	-24(%rbp), %rax
	movl	$1, 64(%rax)
.LBB7_8:                                # %if.end.18
	jmp	.LBB7_9
.LBB7_9:                                # %if.end.19
	xorl	%eax, %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	button_press_cb, .Lfunc_end7-button_press_cb
	.cfi_endproc

	.align	16, 0x90
	.type	button_release_cb,@function
button_release_cb:                      # @button_release_cb
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	cmpl	$1, 52(%rdx)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	$0, 64(%rax)
.LBB8_2:                                # %if.end
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end8:
	.size	button_release_cb, .Lfunc_end8-button_release_cb
	.cfi_endproc

	.align	16, 0x90
	.type	changed_cb,@function
changed_cb:                             # @changed_cb
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	cmpl	$0, 60(%rsi)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	$0, 60(%rax)
	jmp	.LBB9_7
.LBB9_2:                                # %if.else
	leaq	-48(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gtk_tree_selection_get_selected_rows
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -64(%rbp)
	callq	subcommand_start
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdi
	callq	unselect_all_command_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	command_add_subcommand
	movq	-64(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB9_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB9_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB9_3 Depth=1
	leaq	-104(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-48(%rbp), %rdi
	movq	-112(%rbp), %rdx
	callq	gtk_tree_model_get_iter
	leaq	-104(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-72(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-48(%rbp), %rdi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-72(%rbp), %rdi
	callq	select_command_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	command_add_subcommand
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB9_3
.LBB9_6:                                # %for.end
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	16(%rax), %rsi
	callq	command_set_name
	callq	subcommand_end
	movq	-32(%rbp), %rdi
	callq	command_execute
	movabsq	$gtk_tree_path_free, %rax
	movq	-64(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_list_free_full
.LBB9_7:                                # %if.end
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	changed_cb, .Lfunc_end9-changed_cb
	.cfi_endproc

	.align	16, 0x90
	.type	object_added_cb,@function
object_added_cb:                        # @object_added_cb
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	object_get_position_in_list
	movl	%eax, -60(%rbp)
	movq	-24(%rbp), %rsi
	movl	52(%rsi), %eax
	addl	$1, %eax
	movl	%eax, 52(%rsi)
	movl	-60(%rbp), %eax
	movq	-24(%rbp), %rsi
	movl	52(%rsi), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB10_2
# BB#1:                                 # %if.then
	leaq	-56(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movl	-60(%rbp), %edx
	callq	gtk_list_store_insert
	jmp	.LBB10_3
.LBB10_2:                               # %if.else
	leaq	-56(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_list_store_append
.LBB10_3:                               # %if.end
	leaq	-56(%rbp), %rsi
	xorl	%edx, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rcx
	movb	$0, %al
	callq	gtk_list_store_set
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	object_added_cb, .Lfunc_end10-object_added_cb
	.cfi_endproc

	.align	16, 0x90
	.type	object_updated_cb,@function
object_updated_cb:                      # @object_updated_cb
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
	subq	$80, %rsp
	leaq	-56(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	selection_find_object
	cmpl	$0, %eax
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_model_get_path
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_model_row_changed
.LBB11_2:                               # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	object_updated_cb, .Lfunc_end11-object_updated_cb
	.cfi_endproc

	.align	16, 0x90
	.type	object_removed_cb,@function
object_removed_cb:                      # @object_removed_cb
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
	subq	$80, %rsp
	leaq	-56(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	selection_find_object
	cmpl	$0, %eax
	je	.LBB12_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_list_store_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_list_store_remove
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB12_2:                               # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	object_removed_cb, .Lfunc_end12-object_removed_cb
	.cfi_endproc

	.align	16, 0x90
	.type	object_selected_cb,@function
object_selected_cb:                     # @object_selected_cb
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	object_get_position_in_list
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	selection_set_selected
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	object_selected_cb, .Lfunc_end13-object_selected_cb
	.cfi_endproc

	.align	16, 0x90
	.type	object_moved_cb,@function
object_moved_cb:                        # @object_moved_cb
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movl	$1, 60(%rsi)
	popq	%rbp
	retq
.Lfunc_end14:
	.size	object_moved_cb, .Lfunc_end14-object_moved_cb
	.cfi_endproc

	.globl	selection_toggle_visibility
	.align	16, 0x90
	.type	selection_toggle_visibility,@function
selection_toggle_visibility:            # @selection_toggle_visibility
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
	movq	-8(%rbp), %rdi
	cmpl	$0, 56(%rdi)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-8(%rbp), %rdi
	movl	%ecx, 56(%rdi)
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	-8(%rbp), %rdx
	movl	56(%rdx), %esi
	callq	gtk_widget_set_visible
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	selection_toggle_visibility, .Lfunc_end15-selection_toggle_visibility
	.cfi_endproc

	.globl	selection_freeze
	.align	16, 0x90
	.type	selection_freeze,@function
selection_freeze:                       # @selection_freeze
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end16:
	.size	selection_freeze, .Lfunc_end16-selection_freeze
	.cfi_endproc

	.globl	selection_thaw
	.align	16, 0x90
	.type	selection_thaw,@function
selection_thaw:                         # @selection_thaw
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end17:
	.size	selection_thaw, .Lfunc_end17-selection_thaw
	.cfi_endproc

	.align	16, 0x90
	.type	selection_get_object,@function
selection_get_object:                   # @selection_get_object
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
	subq	$32, %rsp
	xorl	%edx, %edx
	leaq	-24(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	selection_get_object, .Lfunc_end18-selection_get_object
	.cfi_endproc

	.align	16, 0x90
	.type	selection_find_object,@function
selection_find_object:                  # @selection_find_object
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_model_get_iter_first
	cmpl	$0, %eax
	je	.LBB19_7
# BB#1:                                 # %if.then
	jmp	.LBB19_2
.LBB19_2:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	leaq	-40(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-40(%rbp), %rcx
	cmpq	-24(%rbp), %rcx
	jne	.LBB19_4
# BB#3:                                 # %if.then.6
	movl	$1, -4(%rbp)
	jmp	.LBB19_8
.LBB19_4:                               # %if.end
                                        #   in Loop: Header=BB19_2 Depth=1
	jmp	.LBB19_5
.LBB19_5:                               # %do.cond
                                        #   in Loop: Header=BB19_2 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_model_iter_next
	cmpl	$0, %eax
	jne	.LBB19_2
# BB#6:                                 # %do.end
	jmp	.LBB19_7
.LBB19_7:                               # %if.end.12
	movl	$0, -4(%rbp)
.LBB19_8:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	selection_find_object, .Lfunc_end19-selection_find_object
	.cfi_endproc

	.align	16, 0x90
	.type	selection_set_selected,@function
selection_set_selected:                 # @selection_set_selected
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-48(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	-12(%rbp), %ecx
	movq	%rax, %rdi
	callq	gtk_tree_model_iter_nth_child
	cmpl	$0, %eax
	je	.LBB20_5
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-48(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-56(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-8(%rbp), %rcx
	movl	$1, 60(%rcx)
	movq	-56(%rbp), %rcx
	cmpl	$0, 20(%rcx)
	je	.LBB20_3
# BB#2:                                 # %if.then.7
	leaq	-48(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gtk_tree_selection_select_iter
	jmp	.LBB20_4
.LBB20_3:                               # %if.else
	leaq	-48(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gtk_tree_selection_unselect_iter
.LBB20_4:                               # %if.end
	jmp	.LBB20_5
.LBB20_5:                               # %if.end.10
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	selection_set_selected, .Lfunc_end20-selection_set_selected
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Selection"
	.size	.L.str, 10

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"#"
	.size	.L.str.1, 2

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"URL"
	.size	.L.str.2, 4

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"ALT Text"
	.size	.L.str.3, 9

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Target"
	.size	.L.str.4, 7

	.type	target_table,@object    # @target_table
	.section	.rodata,"a",@progbits
	.align	16
target_table:
	.quad	.L.str.12
	.long	0                       # 0x0
	.long	1                       # 0x1
	.quad	.L.str.13
	.long	0                       # 0x0
	.long	2                       # 0x2
	.size	target_table, 32

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"drag-data-received"
	.size	.L.str.5, 19

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"button-press-event"
	.size	.L.str.6, 19

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"button-release-event"
	.size	.L.str.7, 21

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"changed"
	.size	.L.str.8, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%d"
	.size	.L.str.9, 3

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"text"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"stock-id"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"STRING"
	.size	.L.str.12, 7

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"text/plain"
	.size	.L.str.13, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
