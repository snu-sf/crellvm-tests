	.text
	.file	"module-dialog.bc"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_0:
	.long	1056964608              # float 0.5
	.text
	.globl	module_dialog_new
	.align	16, 0x90
	.type	module_dialog_new,@function
module_dialog_new:                      # @module_dialog_new
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
	subq	$560, %rsp              # imm = 0x230
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
	movq	%rdi, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)
	callq	gimp_get_type
	movq	%rax, -152(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -156(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-144(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -156(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -156(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-156(%rbp), %eax
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.module_dialog_new, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -24(%rbp)
	jmp	.LBB0_17
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movl	$96, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movabsq	$.L.str.2, %rdi
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	callq	gettext
	movabsq	$.L.str.3, %rsi
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.4, %r9
	movabsq	$.L.str.5, %rdi
	movl	$1, %r10d
	movabsq	$.L.str.6, %r11
	movl	$4294967289, %ebx       # imm = 0xFFFFFFF9
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$1, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-7, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -172(%rbp)        # 4-byte Spill
	movl	%r10d, -176(%rbp)       # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967289, %esi       # imm = 0xFFFFFFF9
	movl	$1, %edx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movabsq	$.L.str.7, %rsi
	movabsq	$dialog_response, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %r11
	movq	-80(%rbp), %r14
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	-192(%rbp), %rdx        # 8-byte Reload
	movq	%r14, %rcx
	callq	g_signal_connect_data
	movl	$1, %edi
	movl	$12, %esi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-40(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
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
	movabsq	$.L.str.8, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_hint_box_new
	movq	-80(%rbp), %rsi
	movq	%rax, 24(%rsi)
	movq	-48(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-80(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	movl	-236(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rax
	cmpl	$0, 368(%rax)
	je	.LBB0_14
# BB#13:                                # %if.then.32
	movq	-80(%rbp), %rax
	movq	24(%rax), %rdi
	callq	gtk_widget_show
.LBB0_14:                               # %if.end.34
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	callq	gtk_scrolled_window_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_scrolled_window_set_shadow_type
	movq	-56(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	%rax, %rdi
	movl	%edx, %esi
	callq	gtk_scrolled_window_set_policy
	movq	-48(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -268(%rbp)        # 4-byte Spill
	movl	-268(%rbp), %ecx        # 4-byte Reload
	callq	gtk_box_pack_start
	movl	$124, %esi
	movl	$100, %edx
	movq	-56(%rbp), %rdi
	callq	gtk_widget_set_size_request
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_module_get_type
	movl	$3, %edi
	movl	$64, %ecx
	movl	%ecx, %esi
	movl	$20, %ecx
	movl	%ecx, %edx
	movq	%rax, %rcx
	movb	$0, %al
	callq	gtk_list_store_new
	movq	-80(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_new_with_model
	movq	%rax, -64(%rbp)
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-64(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_tree_view_set_headers_visible
	movabsq	$make_list_item, %rsi
	movq	-32(%rbp), %rax
	movq	360(%rax), %rax
	movq	24(%rax), %rdi
	movq	-80(%rbp), %rax
	movq	%rax, %rdx
	callq	g_list_foreach
	callq	gtk_cell_renderer_toggle_new
	movabsq	$.L.str.9, %rsi
	movabsq	$dialog_enabled_toggled, %rcx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -296(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-296(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_column_new
	xorl	%edx, %edx
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	gtk_tree_view_column_pack_start
	movabsq	$.L.str.10, %rdx
	movl	$1, %ecx
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	gtk_tree_view_column_add_attribute
	movq	-64(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-128(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_view_append_column
	movq	-64(%rbp), %rdx
	movl	%eax, -316(%rbp)        # 4-byte Spill
	movq	%rdx, -328(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.11, %rdi
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_cell_renderer_text_new
	movl	$1, %esi
	movabsq	$.L.str.12, %r8
	xorl	%r9d, %r9d
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	-344(%rbp), %r10        # 8-byte Reload
	movq	%rdx, -352(%rbp)        # 8-byte Spill
	movq	%r10, %rdx
	movq	%rax, %rcx
	movq	$0, (%rsp)
	movb	$0, %al
	callq	gtk_tree_view_insert_column_with_attributes
	movq	-56(%rbp), %rcx
	movl	%eax, -356(%rbp)        # 4-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movl	$2, %edi
	movl	$5, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	-80(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-80(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-48(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-80(%rbp), %rcx
	movq	32(%rcx), %rsi
	movq	%rax, %rdi
	movl	%edx, -388(%rbp)        # 4-byte Spill
	movl	-388(%rbp), %ecx        # 4-byte Reload
	movl	-388(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	-80(%rbp), %r10
	movq	%rax, 80(%r10)
	movq	-48(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-80(%rbp), %rsi
	movq	80(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -404(%rbp)        # 4-byte Spill
	movl	-404(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movabsq	$.L.str.13, %rdi
	movl	$4, %esi
	callq	gtk_image_new_from_stock
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -420(%rbp)        # 4-byte Spill
	movl	-420(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_label_new
	movq	-80(%rbp), %rsi
	movq	%rax, 88(%rsi)
	movq	-80(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-80(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-80(%rbp), %rsi
	movq	88(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rax
	movq	88(%rax), %rdi
	callq	gtk_widget_show
	movq	-80(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	32(%rax), %rsi
	callq	dialog_info_init
	movq	-32(%rbp), %rax
	movq	360(%rax), %rdi
	movq	-80(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-80(%rbp), %rdx
	callq	dialog_info_update
	movq	-64(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_selection
	movabsq	$.L.str.14, %rsi
	movabsq	$dialog_select_callback, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	-80(%rbp), %rdi
	movq	%rdi, -456(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-456(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-80(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rax, -464(%rbp)        # 8-byte Spill
	movq	%rcx, -472(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-120(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_model_get_iter_first
	cmpl	$0, %eax
	je	.LBB0_16
# BB#15:                                # %if.then.100
	leaq	-120(%rbp), %rsi
	movq	-88(%rbp), %rdi
	callq	gtk_tree_selection_select_iter
.LBB0_16:                               # %if.end.101
	movabsq	$.L.str.15, %rsi
	movabsq	$dialog_info_add, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdx
	movq	360(%rdx), %rdx
	movq	-80(%rbp), %rdi
	movq	%rdi, -480(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-480(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.16, %rsi
	movabsq	$dialog_info_remove, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdx
	movq	360(%rdx), %rdx
	movq	-80(%rbp), %rdi
	movq	%rdi, -488(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-488(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.17, %rsi
	movabsq	$dialog_info_update, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdx
	movq	360(%rdx), %rdx
	movq	-80(%rbp), %rdi
	movq	%rdi, -504(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-504(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.18, %rsi
	movabsq	$dialog_destroy_callback, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdx
	movq	-80(%rbp), %rdi
	movq	%rdi, -520(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-520(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-40(%rbp), %rcx
	movq	%rcx, -24(%rbp)
	movq	%rax, -536(%rbp)        # 8-byte Spill
.LBB0_17:                               # %return
	movq	-24(%rbp), %rax
	addq	$560, %rsp              # imm = 0x230
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	module_dialog_new, .Lfunc_end0-module_dialog_new
	.cfi_endproc

	.align	16, 0x90
	.type	dialog_response,@function
dialog_response:                        # @dialog_response
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$1, -12(%rbp)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_modules_refresh
	jmp	.LBB1_3
.LBB1_2:                                # %if.else
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
.LBB1_3:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	dialog_response, .Lfunc_end1-dialog_response
	.cfi_endproc

	.align	16, 0x90
	.type	make_list_item,@function
make_list_item:                         # @make_list_item
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rsi
	cmpq	$0, 8(%rsi)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 8(%rcx)
.LBB2_2:                                # %if.end
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gtk_list_store_append
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	dialog_list_item_update
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	make_list_item, .Lfunc_end2-make_list_item
	.cfi_endproc

	.align	16, 0x90
	.type	dialog_enabled_toggled,@function
dialog_enabled_toggled:                 # @dialog_enabled_toggled
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -72(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_tree_path_new_from_string
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_tree_model_get_iter
	cmpl	$0, %eax
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.19, %rdi
	movabsq	$.L__func__.dialog_enabled_toggled, %rsi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB3_4
.LBB3_2:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	gtk_tree_path_free
	movq	-24(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-64(%rbp), %rsi
	movl	$2, %edx
	leaq	-72(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	cmpq	$0, -72(%rbp)
	je	.LBB3_4
# BB#3:                                 # %if.then.8
	movq	-72(%rbp), %rdi
	movq	-72(%rbp), %rax
	cmpl	$0, 76(%rax)
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	callq	gimp_module_set_load_inhibit
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	$1, 368(%rax)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	callq	gtk_widget_show
.LBB3_4:                                # %if.end.10
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	dialog_enabled_toggled, .Lfunc_end3-dialog_enabled_toggled
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI4_0:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	dialog_info_init,@function
dialog_info_init:                       # @dialog_info_init
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
	subq	$136, %rsp
.Ltmp17:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$0, -36(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-36(%rbp), %rax
	cmpq	$5, %rax
	jae	.LBB4_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movslq	-36(%rbp), %rax
	movq	dialog_info_init.text(,%rax,8), %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$6, %r8d
	movl	$2, %r9d
	movq	-32(%rbp), %rsi
	movl	-36(%rbp), %r10d
	movl	-36(%rbp), %r11d
	addl	$1, %r11d
	movq	%rax, %rdi
	movl	%r8d, -60(%rbp)         # 4-byte Spill
	movl	%r10d, %r8d
	movl	%r9d, -64(%rbp)         # 4-byte Spill
	movl	%r11d, %r9d
	movl	$6, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$2, 24(%rsp)
	callq	gtk_table_attach
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.29, %rdi
	callq	gtk_label_new
	movslq	-36(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rax, 40(%rdi,%rsi,8)
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	40(%rsi,%rax,8), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	40(%rsi,%rax,8), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_ellipsize
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_table_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movl	$2, %ecx
	movl	$5, %r8d
	movl	$6, %r9d
	xorl	%r10d, %r10d
	movslq	-36(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	40(%rdi,%rsi,8), %rsi
	movl	-36(%rbp), %r11d
	movl	-36(%rbp), %ebx
	addl	$1, %ebx
	movq	%rax, %rdi
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	movl	%r11d, %r8d
	movl	%r9d, -96(%rbp)         # 4-byte Spill
	movl	%ebx, %r9d
	movl	$5, (%rsp)
	movl	$6, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$2, 24(%rsp)
	movl	%r10d, -100(%rbp)       # 4-byte Spill
	callq	gtk_table_attach
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rsi
	movq	40(%rsi,%rax,8), %rdi
	callq	gtk_widget_show
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB4_1
.LBB4_4:                                # %for.end
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	dialog_info_init, .Lfunc_end4-dialog_info_init
	.cfi_endproc

	.align	16, 0x90
	.type	dialog_info_update,@function
dialog_info_update:                     # @dialog_info_update
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-64(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	$40, %r8d
	movl	%r8d, %edx
	leaq	-112(%rbp), %rdi
	movq	%rax, -32(%rbp)
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	callq	memset
	movq	$0, -120(%rbp)
	movq	-32(%rbp), %rdi
	movq	-160(%rbp), %rsi        # 8-byte Reload
	callq	gtk_tree_model_get_iter_first
	movl	%eax, -124(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -124(%rbp)
	je	.LBB5_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	leaq	-64(%rbp), %rsi
	movl	$2, %edx
	leaq	-144(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	cmpq	$0, -144(%rbp)
	je	.LBB5_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB5_4:                                # %if.end
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-144(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.4
	jmp	.LBB5_8
.LBB5_6:                                # %if.end.5
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_7
.LBB5_7:                                # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gtk_tree_model_iter_next
	movl	%eax, -124(%rbp)
	jmp	.LBB5_1
.LBB5_8:                                # %for.end
	cmpl	$0, -124(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	leaq	-64(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rdx
	callq	dialog_list_item_update
.LBB5_10:                               # %if.end.9
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	8(%rcx), %rax
	je	.LBB5_12
# BB#11:                                # %if.then.11
	jmp	.LBB5_42
.LBB5_12:                               # %if.end.12
	cmpq	$0, -16(%rbp)
	jne	.LBB5_18
# BB#13:                                # %if.then.14
	movl	$0, -128(%rbp)
.LBB5_14:                               # %for.cond.15
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$5, -128(%rbp)
	jge	.LBB5_17
# BB#15:                                # %for.body.17
                                        #   in Loop: Header=BB5_14 Depth=1
	movslq	-128(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	40(%rcx,%rax,8), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_text
# BB#16:                                # %for.inc.20
                                        #   in Loop: Header=BB5_14 Depth=1
	movl	-128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -128(%rbp)
	jmp	.LBB5_14
.LBB5_17:                               # %for.end.21
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdi
	callq	gtk_widget_hide
	jmp	.LBB5_42
.LBB5_18:                               # %if.end.24
	movq	-16(%rbp), %rax
	cmpl	$0, 72(%rax)
	je	.LBB5_20
# BB#19:                                # %if.then.26
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	g_filename_display_name
	movq	%rax, -120(%rbp)
.LBB5_20:                               # %if.end.28
	movq	-16(%rbp), %rax
	cmpq	$0, 88(%rax)
	je	.LBB5_25
# BB#21:                                # %if.then.30
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 72(%rax)
	je	.LBB5_23
# BB#22:                                # %cond.true
	movq	-120(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB5_24
.LBB5_23:                               # %cond.false
	movabsq	$.L.str.21, %rdi
	callq	gettext
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB5_24:                               # %cond.end
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, -80(%rbp)
	jmp	.LBB5_29
.LBB5_25:                               # %if.else
	movq	-16(%rbp), %rax
	cmpl	$0, 72(%rax)
	je	.LBB5_27
# BB#26:                                # %cond.true.45
	movq	-120(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB5_28
.LBB5_27:                               # %cond.false.46
	movabsq	$.L.str.22, %rdi
	callq	gettext
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB5_28:                               # %cond.end.48
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, -80(%rbp)
.LBB5_29:                               # %if.end.51
	movl	$0, -128(%rbp)
.LBB5_30:                               # %for.cond.52
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$5, -128(%rbp)
	jge	.LBB5_36
# BB#31:                                # %for.body.54
                                        #   in Loop: Header=BB5_30 Depth=1
	movslq	-128(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	40(%rcx,%rax,8), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movslq	-128(%rbp), %rcx
	cmpq	$0, -112(%rbp,%rcx,8)
	movq	%rax, -208(%rbp)        # 8-byte Spill
	je	.LBB5_33
# BB#32:                                # %cond.true.63
                                        #   in Loop: Header=BB5_30 Depth=1
	movslq	-128(%rbp), %rax
	movq	-112(%rbp,%rax,8), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB5_34
.LBB5_33:                               # %cond.false.66
                                        #   in Loop: Header=BB5_30 Depth=1
	movabsq	$.L.str.23, %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB5_34
.LBB5_34:                               # %cond.end.67
                                        #   in Loop: Header=BB5_30 Depth=1
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_label_set_text
# BB#35:                                # %for.inc.69
                                        #   in Loop: Header=BB5_30 Depth=1
	movl	-128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -128(%rbp)
	jmp	.LBB5_30
.LBB5_36:                               # %for.end.71
	movq	-120(%rbp), %rdi
	callq	g_free
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdi
	cmpl	$0, 68(%rdi)
	movb	%cl, -217(%rbp)         # 1-byte Spill
	jne	.LBB5_38
# BB#37:                                # %land.rhs
	movq	-16(%rbp), %rax
	cmpq	$0, 96(%rax)
	setne	%cl
	movb	%cl, -217(%rbp)         # 1-byte Spill
.LBB5_38:                               # %land.end
	movb	-217(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -132(%rbp)
	movq	-24(%rbp), %rdx
	movq	88(%rdx), %rdx
	movq	%rdx, -232(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$0, -132(%rbp)
	movq	%rax, -240(%rbp)        # 8-byte Spill
	je	.LBB5_40
# BB#39:                                # %cond.true.78
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB5_41
.LBB5_40:                               # %cond.false.80
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	jmp	.LBB5_41
.LBB5_41:                               # %cond.end.81
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_label_set_text
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdi
	movl	-132(%rbp), %esi
	callq	gtk_widget_set_visible
.LBB5_42:                               # %return
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end5:
	.size	dialog_info_update, .Lfunc_end5-dialog_info_update
	.cfi_endproc

	.align	16, 0x90
	.type	dialog_select_callback,@function
dialog_select_callback:                 # @dialog_select_callback
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
	subq	$64, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	leaq	-48(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rcx, %rsi
	callq	gtk_tree_selection_get_selected
	cmpl	$0, %eax
	je	.LBB6_6
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-48(%rbp), %rsi
	movl	$2, %edx
	leaq	-56(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	cmpq	$0, -56(%rbp)
	je	.LBB6_3
# BB#2:                                 # %if.then.4
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB6_3:                                # %if.end
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB6_5
# BB#4:                                 # %if.then.5
	jmp	.LBB6_6
.LBB6_5:                                # %if.end.6
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	360(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-16(%rbp), %rdx
	callq	dialog_info_update
.LBB6_6:                                # %if.end.9
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	dialog_select_callback, .Lfunc_end6-dialog_select_callback
	.cfi_endproc

	.align	16, 0x90
	.type	dialog_info_add,@function
dialog_info_add:                        # @dialog_info_add
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	%rdx, %rdi
	callq	make_list_item
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	dialog_info_add, .Lfunc_end7-dialog_info_add
	.cfi_endproc

	.align	16, 0x90
	.type	dialog_info_remove,@function
dialog_info_remove:                     # @dialog_info_remove
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_model_get_iter_first
	cmpl	$0, %eax
	jne	.LBB8_2
# BB#1:                                 # %if.then
	jmp	.LBB8_10
.LBB8_2:                                # %if.end
	jmp	.LBB8_3
.LBB8_3:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	movl	$2, %edx
	leaq	-64(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	cmpq	$0, -64(%rbp)
	je	.LBB8_5
# BB#4:                                 # %if.then.7
                                        #   in Loop: Header=BB8_3 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB8_5:                                # %if.end.8
                                        #   in Loop: Header=BB8_3 Depth=1
	movq	-64(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB8_7
# BB#6:                                 # %if.then.9
	leaq	-56(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gtk_list_store_remove
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB8_10
.LBB8_7:                                # %if.end.12
                                        #   in Loop: Header=BB8_3 Depth=1
	jmp	.LBB8_8
.LBB8_8:                                # %do.cond
                                        #   in Loop: Header=BB8_3 Depth=1
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_model_iter_next
	cmpl	$0, %eax
	jne	.LBB8_3
# BB#9:                                 # %do.end
	movabsq	$.L.str.20, %rdi
	movabsq	$.L__func__.dialog_info_remove, %rsi
	movb	$0, %al
	callq	g_warning
.LBB8_10:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	dialog_info_remove, .Lfunc_end8-dialog_info_remove
	.cfi_endproc

	.align	16, 0x90
	.type	dialog_destroy_callback,@function
dialog_destroy_callback:                # @dialog_destroy_callback
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
	movl	$24, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$dialog_info_add, %r9
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	360(%rsi), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movl	%eax, %esi
	movl	%ecx, %edx
	movq	-24(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$dialog_info_remove, %rdi
	movq	-16(%rbp), %r9
	movq	(%r9), %r9
	movq	360(%r9), %r9
	movq	-16(%rbp), %r10
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-32(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$dialog_info_update, %rdi
	movq	-16(%rbp), %r9
	movq	(%r9), %r9
	movq	360(%r9), %r9
	movq	-16(%rbp), %r10
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-48(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -56(%rbp)         # 4-byte Spill
# BB#1:                                 # %do.body
	movl	$96, %eax
	movl	%eax, %edi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#2:                                 # %do.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	dialog_destroy_callback, .Lfunc_end9-dialog_destroy_callback
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	movl	$.L.str, %r9d
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

	.align	16, 0x90
	.type	dialog_list_item_update,@function
dialog_list_item_update:                # @dialog_list_item_update
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	16(%rdx), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	cmpq	$0, 88(%rdx)
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	je	.LBB11_2
# BB#1:                                 # %cond.true
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	8(%rax), %rdi
	callq	gettext
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB11_3
.LBB11_2:                               # %cond.false
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gimp_filename_to_utf8
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB11_3:                               # %cond.end
	movq	-48(%rbp), %rax         # 8-byte Reload
	xorl	%edx, %edx
	movl	$1, %r8d
	movl	$2, %ecx
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rdi
	cmpl	$0, 76(%rdi)
	setne	%r9b
	xorb	$-1, %r9b
	andb	$1, %r9b
	movzbl	%r9b, %r9d
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	-40(%rbp), %r11         # 8-byte Reload
	movl	%esi, -60(%rbp)         # 4-byte Spill
	movq	%r11, %rsi
	movl	%ecx, -64(%rbp)         # 4-byte Spill
	movq	%rax, %rcx
	movl	$2, (%rsp)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$-1, 16(%rsp)
	movb	$0, %al
	callq	gtk_list_store_set
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	dialog_list_item_update, .Lfunc_end11-dialog_list_item_update
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Dialogs"
	.size	.L.str, 13

	.type	.L__func__.module_dialog_new,@object # @__func__.module_dialog_new
.L__func__.module_dialog_new:
	.asciz	"module_dialog_new"
	.size	.L__func__.module_dialog_new, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Module Manager"
	.size	.L.str.2, 15

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-modules"
	.size	.L.str.3, 13

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-module-dialog"
	.size	.L.str.4, 19

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gtk-refresh"
	.size	.L.str.5, 12

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gtk-close"
	.size	.L.str.6, 10

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"response"
	.size	.L.str.7, 9

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"You will have to restart GIMP for the changes to take effect."
	.size	.L.str.8, 62

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"toggled"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"active"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Module"
	.size	.L.str.11, 7

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"text"
	.size	.L.str.12, 5

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp-warning"
	.size	.L.str.13, 13

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"changed"
	.size	.L.str.14, 8

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"add"
	.size	.L.str.15, 4

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"remove"
	.size	.L.str.16, 7

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"module-modified"
	.size	.L.str.17, 16

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"destroy"
	.size	.L.str.18, 8

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"%s: bad tree path?"
	.size	.L.str.19, 19

	.type	.L__func__.dialog_enabled_toggled,@object # @__func__.dialog_enabled_toggled
.L__func__.dialog_enabled_toggled:
	.asciz	"dialog_enabled_toggled"
	.size	.L__func__.dialog_enabled_toggled, 23

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"%s: Tried to remove a module not in the dialog's list."
	.size	.L.str.20, 55

	.type	.L__func__.dialog_info_remove,@object # @__func__.dialog_info_remove
.L__func__.dialog_info_remove:
	.asciz	"dialog_info_remove"
	.size	.L__func__.dialog_info_remove, 19

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Only in memory"
	.size	.L.str.21, 15

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"No longer available"
	.size	.L.str.22, 20

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"--"
	.size	.L.str.23, 3

	.type	dialog_info_init.text,@object # @dialog_info_init.text
	.section	.rodata,"a",@progbits
	.align	16
dialog_info_init.text:
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	.L.str.26
	.quad	.L.str.27
	.quad	.L.str.28
	.size	dialog_info_init.text, 40

	.type	.L.str.24,@object       # @.str.24
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.24:
	.asciz	"Author:"
	.size	.L.str.24, 8

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Version:"
	.size	.L.str.25, 9

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Date:"
	.size	.L.str.26, 6

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Copyright:"
	.size	.L.str.27, 11

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Location:"
	.size	.L.str.28, 10

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.zero	1
	.size	.L.str.29, 1


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
