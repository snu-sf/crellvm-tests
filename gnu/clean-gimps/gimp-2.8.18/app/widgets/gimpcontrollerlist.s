	.text
	.file	"gimpcontrollerlist.bc"
	.globl	gimp_controller_list_get_type
	.align	16, 0x90
	.type	gimp_controller_list_get_type,@function
gimp_controller_list_get_type:          # @gimp_controller_list_get_type
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
	movq	gimp_controller_list_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_controller_list_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_controller_list_class_intern_init, %rdi
	movl	$224, %r8d
	movabsq	$gimp_controller_list_init, %rcx
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
	movabsq	$gimp_controller_list_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_controller_list_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_controller_list_get_type, .Lfunc_end0-gimp_controller_list_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_list_class_intern_init,@function
gimp_controller_list_class_intern_init: # @gimp_controller_list_class_intern_init
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
	movq	%rax, gimp_controller_list_parent_class
	cmpl	$0, GimpControllerList_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpControllerList_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_controller_list_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_controller_list_class_intern_init, .Lfunc_end1-gimp_controller_list_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_list_init,@function
gimp_controller_list_init:              # @gimp_controller_list_init
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
	pushq	%rbx
	subq	$600, %rsp              # imm = 0x258
.Ltmp9:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	callq	gtk_orientable_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_orientable_set_orientation
	xorl	%edi, %edi
	movl	$6, %esi
	movq	-16(%rbp), %rax
	movq	$0, 128(%rax)
	callq	gtk_box_new
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rax, 136(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -164(%rbp)        # 4-byte Spill
	movl	-164(%rbp), %ecx        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gtk_scrolled_window_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_scrolled_window_set_shadow_type
	movq	-32(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_scrolled_window_set_policy
	movq	-24(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
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
	callq	g_gtype_get_type
	movl	$3, %edi
	movl	$64, %ecx
	movl	%ecx, %esi
	movq	%rsi, -200(%rbp)        # 8-byte Spill
	movq	-200(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	gtk_list_store_new
	movq	-16(%rbp), %rcx
	movq	%rax, 144(%rcx)
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_new_with_model
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-40(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_tree_view_set_headers_clickable
	callq	gtk_tree_view_column_new
	movabsq	$.L.str.8, %rdi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_tree_view_column_set_title
	movq	-40(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_view_append_column
	movl	%eax, -236(%rbp)        # 4-byte Spill
	callq	gtk_cell_renderer_pixbuf_new
	xorl	%edx, %edx
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gtk_tree_view_column_pack_start
	movabsq	$.L.str.9, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movb	$0, %al
	callq	gtk_tree_view_column_set_attributes
	movabsq	$.L.str.10, %rsi
	leaq	-76(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-56(%rbp), %rdi
	movb	$0, %al
	callq	g_object_get
	callq	gtk_cell_renderer_text_new
	movl	$1, %edx
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gtk_tree_view_column_pack_start
	movabsq	$.L.str.11, %rdx
	movl	$1, %ecx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movb	$0, %al
	callq	gtk_tree_view_column_set_attributes
	movq	-32(%rbp), %rdx
	movq	%rdx, -248(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rsi
	movabsq	$gimp_controller_list_row_activated, %rdx
	xorl	%r8d, %r8d
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	g_signal_connect_object
	movq	-40(%rbp), %rcx
	movq	%rax, -264(%rbp)        # 8-byte Spill
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_selection
	movl	$2, %esi
	movq	-16(%rbp), %rcx
	movq	%rax, 152(%rcx)
	movq	-16(%rbp), %rax
	movq	152(%rax), %rdi
	callq	gtk_tree_selection_set_mode
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-16(%rbp), %rax
	movq	152(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.13, %rsi
	movabsq	$gimp_controller_list_src_sel_changed, %rcx
	xorl	%r8d, %r8d
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_signal_connect_object
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_controller_get_type
	leaq	-100(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_type_children
	movq	%rax, -96(%rbp)
	movl	$0, -104(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-104(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jae	.LBB2_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movslq	-104(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	g_type_class_ref
	leaq	-144(%rbp), %rsi
	movq	%rax, -112(%rbp)
	movq	-16(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gtk_list_store_append
	leaq	-144(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %r8d
	movl	$2, %r9d
	movl	$4294967295, %r10d      # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rax
	movq	144(%rax), %rdi
	movq	-112(%rbp), %rax
	movq	192(%rax), %rcx
	movq	-112(%rbp), %rax
	movq	136(%rax), %rax
	movslq	-104(%rbp), %r11
	movq	-96(%rbp), %rbx
	movq	(%rbx,%r11,8), %r11
	movl	%r9d, -292(%rbp)        # 4-byte Spill
	movq	%rax, %r9
	movl	$2, (%rsp)
	movq	%r11, 8(%rsp)
	movl	$-1, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -296(%rbp)       # 4-byte Spill
	callq	gtk_list_store_set
	movq	-112(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_class_unref
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB2_1
.LBB2_4:                                # %for.end
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movl	$1, %edi
	xorl	%esi, %esi
	callq	gtk_box_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_homogeneous
	movq	-24(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -316(%rbp)        # 4-byte Spill
	movl	-316(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_button_new
	movq	-16(%rbp), %rsi
	movq	%rax, 184(%rsi)
	movq	-64(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rsi
	movq	184(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, -332(%rbp)        # 4-byte Spill
	movl	-332(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movq	184(%rax), %rdi
	callq	gtk_widget_set_sensitive
	movq	-16(%rbp), %rax
	movq	184(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.14, %rdi
	movl	$4, %esi
	callq	gtk_image_new_from_stock
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.15, %rsi
	movabsq	$gimp_controller_list_add_clicked, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	184(%rdi), %rdi
	movq	-16(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-16(%rbp), %rcx
	movq	184(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rcx
	addq	$184, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_object_add_weak_pointer
	callq	gtk_button_new
	movq	-16(%rbp), %rcx
	movq	%rax, 192(%rcx)
	movq	-64(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rcx
	movq	192(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movq	192(%rax), %rdi
	callq	gtk_widget_set_sensitive
	movq	-16(%rbp), %rax
	movq	192(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.16, %rdi
	movl	$4, %esi
	callq	gtk_image_new_from_stock
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.15, %rsi
	movabsq	$gimp_controller_list_remove_clicked, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	192(%rdi), %rdi
	movq	-16(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-16(%rbp), %rcx
	movq	192(%rcx), %rcx
	movq	%rcx, %rdi
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rcx
	addq	$192, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_object_add_weak_pointer
	movq	-16(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_settings
	leaq	-80(%rbp), %rdx
	leaq	-84(%rbp), %rcx
	movl	-76(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_icon_size_lookup_for_settings
	xorl	%esi, %esi
	movl	%esi, %ecx
	xorl	%esi, %esi
	movl	-84(%rbp), %edx
	movq	%rcx, %rdi
	movl	%esi, -388(%rbp)        # 4-byte Spill
	movq	%rcx, %rsi
	movl	-388(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -392(%rbp)        # 4-byte Spill
	callq	gimp_container_tree_view_new
	movq	-16(%rbp), %rsi
	movq	%rax, 168(%rsi)
	movq	-16(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.17, %rdi
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_tree_view_set_main_column_title
	movq	-16(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	288(%rax), %rdi
	callq	gtk_tree_view_set_headers_visible
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rsi
	movq	168(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rax
	movq	168(%rax), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rax
	movq	168(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.18, %rsi
	movabsq	$gimp_controller_list_select_item, %rdi
	xorl	%r8d, %r8d
	movq	-432(%rbp), %r10        # 8-byte Reload
	movq	%rdi, -440(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	-440(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	g_signal_connect_object
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-16(%rbp), %rcx
	movq	168(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, -448(%rbp)        # 8-byte Spill
	movq	%rcx, -456(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.19, %rsi
	movabsq	$gimp_controller_list_activate_item, %rcx
	xorl	%r8d, %r8d
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_signal_connect_object
	movq	-16(%rbp), %rcx
	movq	168(%rcx), %rcx
	movq	%rax, -464(%rbp)        # 8-byte Spill
	movq	%rcx, -472(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.21, %rdi
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.20, %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movabsq	$gimp_controller_list_edit_clicked, %rdx
	movq	-16(%rbp), %rdi
	movq	-480(%rbp), %r10        # 8-byte Reload
	movq	%rdi, -488(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rdx, -496(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -504(%rbp)        # 8-byte Spill
	movq	-496(%rbp), %r8         # 8-byte Reload
	movq	-504(%rbp), %r9         # 8-byte Reload
	movq	-488(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	gimp_editor_add_button
	movq	-16(%rbp), %rcx
	movq	%rax, 200(%rcx)
	movq	-16(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.23, %rdi
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.22, %rsi
	xorl	%r11d, %r11d
	movl	%r11d, %ecx
	movabsq	$gimp_controller_list_up_clicked, %rdx
	movq	-16(%rbp), %rdi
	movq	-520(%rbp), %r8         # 8-byte Reload
	movq	%rdi, -528(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rdx, -536(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -544(%rbp)        # 8-byte Spill
	movq	-536(%rbp), %r8         # 8-byte Reload
	movq	-544(%rbp), %r9         # 8-byte Reload
	movq	-528(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	gimp_editor_add_button
	movq	-16(%rbp), %rcx
	movq	%rax, 208(%rcx)
	movq	-16(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-552(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.25, %rdi
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.24, %rsi
	xorl	%r11d, %r11d
	movl	%r11d, %ecx
	movabsq	$gimp_controller_list_down_clicked, %rdx
	movq	-16(%rbp), %rdi
	movq	-560(%rbp), %r8         # 8-byte Reload
	movq	%rdi, -568(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rdx, -576(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -584(%rbp)        # 8-byte Spill
	movq	-576(%rbp), %r8         # 8-byte Reload
	movq	-584(%rbp), %r9         # 8-byte Reload
	movq	-568(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	gimp_editor_add_button
	xorl	%esi, %esi
	movq	-16(%rbp), %rcx
	movq	%rax, 216(%rcx)
	movq	-16(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gtk_widget_set_sensitive
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movq	208(%rax), %rdi
	callq	gtk_widget_set_sensitive
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movq	216(%rax), %rdi
	callq	gtk_widget_set_sensitive
	addq	$600, %rsp              # imm = 0x258
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_controller_list_init, .Lfunc_end2-gimp_controller_list_init
	.cfi_endproc

	.globl	gimp_controller_list_new
	.align	16, 0x90
	.type	gimp_controller_list_new,@function
gimp_controller_list_new:               # @gimp_controller_list_new
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_controller_list_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_13
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	callq	gimp_controller_list_get_type
	movabsq	$.L.str.3, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -8(%rbp)
.LBB3_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_controller_list_new, .Lfunc_end3-gimp_controller_list_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_list_class_init,@function
gimp_controller_list_class_init:        # @gimp_controller_list_class_init
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
	subq	$32, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$gimp_controller_list_get_property, %rsi
	movabsq	$gimp_controller_list_set_property, %rdi
	movabsq	$gimp_controller_list_finalize, %rcx
	movabsq	$gimp_controller_list_constructed, %rdx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 48(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 32(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_get_type
	movabsq	$.L.str.3, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movl	$235, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_controller_list_class_init, .Lfunc_end4-gimp_controller_list_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_list_constructed,@function
gimp_controller_list_constructed:       # @gimp_controller_list_constructed
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_controller_list_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_controller_list_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_controller_list_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB5_2:                                # %if.end
	jmp	.LBB5_3
.LBB5_3:                                # %do.body
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB5_5
# BB#4:                                 # %if.then.7
	movl	$0, -36(%rbp)
	jmp	.LBB5_10
.LBB5_5:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_8
# BB#6:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB5_8
# BB#7:                                 # %if.then.10
	movl	$1, -36(%rbp)
	jmp	.LBB5_9
.LBB5_8:                                # %if.else.11
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB5_9:                                # %if.end.13
	jmp	.LBB5_10
.LBB5_10:                               # %if.end.14
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB5_12
# BB#11:                                # %if.then.16
	jmp	.LBB5_13
.LBB5_12:                               # %if.else.17
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.4, %rsi
	movl	$328, %edx              # imm = 0x148
	movabsq	$.L__func__.gimp_controller_list_constructed, %rcx
	movabsq	$.L.str.5, %r8
	callq	g_assertion_message_expr
.LBB5_13:                               # %if.end.18
	jmp	.LBB5_14
.LBB5_14:                               # %do.end
	movq	-16(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	128(%rsi), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_controllers_get_list
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_view_set_container
	movq	-16(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	128(%rsi), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_get_user_context
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_view_set_context
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_controller_list_constructed, .Lfunc_end5-gimp_controller_list_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_list_finalize,@function
gimp_controller_list_finalize:          # @gimp_controller_list_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_controller_list_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 128(%rax)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 128(%rax)
.LBB6_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_controller_list_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_controller_list_finalize, .Lfunc_end6-gimp_controller_list_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_list_set_property,@function
gimp_controller_list_set_property:      # @gimp_controller_list_set_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_controller_list_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB7_2
	jmp	.LBB7_1
.LBB7_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_dup_object
	movq	-40(%rbp), %rdi
	movq	%rax, 128(%rdi)
	jmp	.LBB7_5
.LBB7_2:                                # %sw.default
	jmp	.LBB7_3
.LBB7_3:                                # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movl	-60(%rbp), %r8d
	movq	-56(%rbp), %rax
	movq	8(%rax), %r9
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -80(%rbp)         # 4-byte Spill
	movq	%r9, -88(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.6, %rdi
	movabsq	$.L.str.4, %rsi
	movl	$366, %edx              # imm = 0x16E
	movabsq	$.L.str.7, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB7_5
.LBB7_5:                                # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_controller_list_set_property, .Lfunc_end7-gimp_controller_list_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_list_get_property,@function
gimp_controller_list_get_property:      # @gimp_controller_list_get_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_controller_list_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB8_2
	jmp	.LBB8_1
.LBB8_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB8_5
.LBB8_2:                                # %sw.default
	jmp	.LBB8_3
.LBB8_3:                                # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movl	-60(%rbp), %r8d
	movq	-56(%rbp), %rax
	movq	8(%rax), %r9
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -80(%rbp)         # 4-byte Spill
	movq	%r9, -88(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.6, %rdi
	movabsq	$.L.str.4, %rsi
	movl	$386, %edx              # imm = 0x182
	movabsq	$.L.str.7, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB8_5
.LBB8_5:                                # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_controller_list_get_property, .Lfunc_end8-gimp_controller_list_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
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
	je	.LBB9_2
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
.LBB9_2:                                # %entry
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
	movl	$.L.str.1, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end9:
	.size	g_warning, .Lfunc_end9-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_list_row_activated,@function
gimp_controller_list_row_activated:     # @gimp_controller_list_row_activated
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	184(%rcx), %rdi
	callq	gtk_widget_is_sensitive
	cmpl	$0, %eax
	je	.LBB10_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_button_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_button_clicked
.LBB10_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_controller_list_row_activated, .Lfunc_end10-gimp_controller_list_row_activated
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_list_src_sel_changed,@function
gimp_controller_list_src_sel_changed:   # @gimp_controller_list_src_sel_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	leaq	-24(%rbp), %rax
	leaq	-56(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -64(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	gtk_tree_selection_get_selected
	cmpl	$0, %eax
	je	.LBB11_4
# BB#1:                                 # %if.then
	leaq	-56(%rbp), %rsi
	movl	$1, %edx
	leaq	-72(%rbp), %rcx
	movl	$2, %r8d
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %r9
	addq	$160, %r9
	movl	$-1, (%rsp)
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-16(%rbp), %rcx
	cmpq	$0, 184(%rcx)
	je	.LBB11_3
# BB#2:                                 # %if.then.2
	movabsq	$.L.str.26, %rdi
	callq	gettext
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movl	$1, %esi
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	184(%rax), %rdi
	callq	gtk_widget_set_sensitive
.LBB11_3:                               # %if.end
	movq	-72(%rbp), %rdi
	callq	g_free
	jmp	.LBB11_7
.LBB11_4:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, 184(%rax)
	je	.LBB11_6
# BB#5:                                 # %if.then.8
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movq	184(%rax), %rdi
	callq	gtk_widget_set_sensitive
.LBB11_6:                               # %if.end.10
	jmp	.LBB11_7
.LBB11_7:                               # %if.end.11
	movq	-16(%rbp), %rax
	cmpq	$0, 184(%rax)
	je	.LBB11_9
# BB#8:                                 # %if.then.14
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	184(%rcx), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_help_set_help_data
	movq	-64(%rbp), %rdi
	callq	g_free
.LBB11_9:                               # %if.end.16
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_controller_list_src_sel_changed, .Lfunc_end11-gimp_controller_list_src_sel_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_list_add_clicked,@function
gimp_controller_list_add_clicked:       # @gimp_controller_list_add_clicked
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	160(%rsi), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_controller_keyboard_get_type
	movq	-40(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB12_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_controllers_get_keyboard
	cmpq	$0, %rax
	je	.LBB12_3
# BB#2:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	128(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.27, %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$1, %edx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_message_literal
	jmp	.LBB12_12
.LBB12_3:                               # %if.else
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_controller_wheel_get_type
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB12_6
# BB#4:                                 # %land.lhs.true.9
	movq	-16(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_controllers_get_wheel
	cmpq	$0, %rax
	je	.LBB12_6
# BB#5:                                 # %if.then.13
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	128(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.28, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$1, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_message_literal
	jmp	.LBB12_12
.LBB12_6:                               # %if.else.17
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_controller_mouse_get_type
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB12_9
# BB#7:                                 # %land.lhs.true.21
	movq	-16(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_controllers_get_mouse
	cmpq	$0, %rax
	je	.LBB12_9
# BB#8:                                 # %if.then.25
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	128(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.29, %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_message_literal
	jmp	.LBB12_12
.LBB12_9:                               # %if.end
	jmp	.LBB12_10
.LBB12_10:                              # %if.end.29
	jmp	.LBB12_11
.LBB12_11:                              # %if.end.30
	movq	-16(%rbp), %rax
	movq	160(%rax), %rdi
	callq	gimp_controller_info_new
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_controllers_get_list
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_add
	movq	-24(%rbp), %rsi
	movq	%rsi, %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	g_object_unref
	movq	-16(%rbp), %rsi
	movq	168(%rsi), %rsi
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_view_select_item
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-16(%rbp), %rsi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	gimp_controller_list_edit_clicked
.LBB12_12:                              # %return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_controller_list_add_clicked, .Lfunc_end12-gimp_controller_list_add_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_list_remove_clicked,@function
gimp_controller_list_remove_clicked:    # @gimp_controller_list_remove_clicked
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$.L.str.30, %eax
	movl	%eax, %edi
	callq	gettext
	movq	-16(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$.L.str.32, %ecx
	movl	%ecx, %edi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$.L.str.34, %ecx
	movl	%ecx, %edi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movq	%rsp, %rsi
	movq	%rax, 32(%rsi)
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsi)
	movq	$0, 48(%rsi)
	movl	$-5, 40(%rsi)
	movl	$-6, 24(%rsi)
	movq	$.L.str.33, 16(%rsi)
	movl	$1, 8(%rsi)
	movl	$.L.str.31, %ecx
	movl	%ecx, %esi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movb	%cl, %dl
	movl	$1, %ecx
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%r8, %rdi
	movq	-72(%rbp), %r9          # 8-byte Reload
	movb	%dl, -89(%rbp)          # 1-byte Spill
	movq	%r9, %rdx
	movl	%ecx, -96(%rbp)         # 4-byte Spill
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movb	-89(%rbp), %al          # 1-byte Reload
	callq	gimp_message_dialog_new
	movq	%rax, -24(%rbp)
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$-5, %esi
	movl	$-6, %edx
	movl	$-1, %r8d
	movq	%rax, %rdi
	movl	-96(%rbp), %ecx         # 4-byte Reload
	movb	-89(%rbp), %al          # 1-byte Reload
	callq	gtk_dialog_set_alternative_button_order
	movq	-16(%rbp), %rdi
	movq	176(%rdi), %rdi
	callq	gimp_object_get_name
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_message_dialog_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	264(%rax), %rdi
	movl	$.L.str.35, %ecx
	movl	%ecx, %eax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gettext
	movq	-32(%rbp), %rdx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	-89(%rbp), %al          # 1-byte Reload
	callq	gimp_message_box_set_primary_text
	movq	-24(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	gimp_message_dialog_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	264(%rax), %rdi
	movl	$.L.str.37, %ecx
	movl	%ecx, %eax
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gettext
	movl	$.L.str.36, %ecx
	movl	%ecx, %esi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	-89(%rbp), %al          # 1-byte Reload
	callq	gimp_message_box_set_text
	movq	-24(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	movl	%eax, %ecx
	subl	$-5, %eax
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	movl	%eax, -152(%rbp)        # 4-byte Spill
	je	.LBB13_2
	jmp	.LBB13_7
.LBB13_7:                               # %entry
	movl	-148(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
	jne	.LBB13_5
	jmp	.LBB13_1
.LBB13_1:                               # %sw.bb
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movq	176(%rax), %rdi
	callq	gimp_controller_info_set_enabled
	jmp	.LBB13_6
.LBB13_2:                               # %sw.bb.20
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	176(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.38, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB13_4
# BB#3:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967292, %esi       # imm = 0xFFFFFFFC
	movq	%rax, %rdi
	callq	gtk_dialog_response
.LBB13_4:                               # %if.end
	movq	-16(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_controllers_get_list
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_remove
	movl	%eax, -188(%rbp)        # 4-byte Spill
	jmp	.LBB13_6
.LBB13_5:                               # %sw.default
	jmp	.LBB13_6
.LBB13_6:                               # %sw.epilog
	movq	-24(%rbp), %rdi
	callq	gtk_widget_destroy
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_controller_list_remove_clicked, .Lfunc_end13-gimp_controller_list_remove_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_list_select_item,@function
gimp_controller_list_select_item:       # @gimp_controller_list_select_item
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gimp_controller_info_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rcx
	movq	%rax, 176(%rcx)
	movq	-32(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_controller_info_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB14_2
# BB#1:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB14_7
.LBB14_2:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_5
# BB#3:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB14_5
# BB#4:                                 # %if.then.6
	movl	$1, -60(%rbp)
	jmp	.LBB14_6
.LBB14_5:                               # %if.else.7
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB14_6:                               # %if.end
	jmp	.LBB14_7
.LBB14_7:                               # %if.end.9
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rcx
	cmpq	$0, 192(%rcx)
	je	.LBB14_11
# BB#8:                                 # %if.then.11
	movq	-32(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	-32(%rbp), %rax
	movq	192(%rax), %rdi
	movl	-36(%rbp), %esi
	callq	gtk_widget_set_sensitive
	cmpl	$0, -36(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.19
	movabsq	$.L.str.39, %rdi
	callq	gettext
	movq	-72(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -80(%rbp)
.LBB14_10:                              # %if.end.23
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rcx
	movq	192(%rcx), %rdi
	movq	-80(%rbp), %rsi
	callq	gimp_help_set_help_data
	movq	-80(%rbp), %rdi
	callq	g_free
.LBB14_11:                              # %if.end.25
	movq	-32(%rbp), %rax
	movq	200(%rax), %rdi
	movl	-36(%rbp), %esi
	callq	gtk_widget_set_sensitive
	movq	-32(%rbp), %rax
	movq	208(%rax), %rdi
	movl	-36(%rbp), %esi
	callq	gtk_widget_set_sensitive
	movq	-32(%rbp), %rax
	movq	216(%rax), %rdi
	movl	-36(%rbp), %esi
	callq	gtk_widget_set_sensitive
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_controller_list_select_item, .Lfunc_end14-gimp_controller_list_select_item
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_list_activate_item,@function
gimp_controller_list_activate_item:     # @gimp_controller_list_activate_item
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	200(%rcx), %rdi
	callq	gtk_widget_is_sensitive
	cmpl	$0, %eax
	je	.LBB15_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_button_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_button_clicked
.LBB15_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_controller_list_activate_item, .Lfunc_end15-gimp_controller_list_activate_item
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_list_edit_clicked,@function
gimp_controller_list_edit_clicked:      # @gimp_controller_list_edit_clicked
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
	pushq	%rbx
	subq	$216, %rsp
.Ltmp52:
	.cfi_offset %rbx, -24
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	176(%rsi), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.38, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB16_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
	jmp	.LBB16_3
.LBB16_2:                               # %if.end
	movabsq	$.L.str.40, %rdi
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_toplevel
	movabsq	$.L.str.38, %rsi
	movl	$2, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.41, %r9
	movabsq	$.L.str.42, %rdi
	movl	$4294967289, %edx       # imm = 0xFFFFFFF9
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	movl	%edx, -76(%rbp)         # 4-byte Spill
	movq	%rax, %rdx
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-7, 8(%rsp)
	movq	$0, 16(%rsp)
	movb	$0, %al
	movq	%r11, -88(%rbp)         # 8-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -32(%rbp)
	callq	gimp_dialog_factory_get_singleton
	movabsq	$.L.str.38, %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_dialog_factory_add_foreign
	movabsq	$.L.str.43, %rsi
	movabsq	$gtk_widget_destroy, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	-96(%rbp), %r8          # 8-byte Reload
	callq	g_signal_connect_data
	movq	-24(%rbp), %rcx
	movq	176(%rcx), %rdi
	movq	-24(%rbp), %rcx
	movq	128(%rcx), %rcx
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_get_user_context
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_controller_editor_new
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
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.38, %rsi
	movq	-32(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-144(%rbp), %rdx        # 8-byte Reload
	callq	g_object_set_data
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	176(%rdx), %rdx
	movq	%rdx, %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.44, %rsi
	movabsq	$gimp_controller_list_edit_destroy, %rdx
	xorl	%r8d, %r8d
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	g_signal_connect_object
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.44, %rsi
	movabsq	$gtk_widget_destroy, %rcx
	movl	$2, %r8d
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_signal_connect_object
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.45, %rsi
	movabsq	$gtk_widget_destroy, %rcx
	movl	$2, %r8d
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_signal_connect_object
	movq	-32(%rbp), %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
.LBB16_3:                               # %return
	addq	$216, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_controller_list_edit_clicked, .Lfunc_end16-gimp_controller_list_edit_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_list_up_clicked,@function
gimp_controller_list_up_clicked:        # @gimp_controller_list_up_clicked
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	128(%rsi), %rdi
	callq	gimp_controllers_get_list
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_get_child_index
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jle	.LBB17_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-28(%rbp), %ecx
	subl	$1, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movl	%ecx, %edx
	callq	gimp_container_reorder
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB17_2:                               # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_controller_list_up_clicked, .Lfunc_end17-gimp_controller_list_up_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_list_down_clicked,@function
gimp_controller_list_down_clicked:      # @gimp_controller_list_down_clicked
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	128(%rsi), %rdi
	callq	gimp_controllers_get_list
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_get_child_index
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	gimp_container_get_n_children
	subl	$1, %eax
	movl	-52(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB18_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-28(%rbp), %ecx
	addl	$1, %ecx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movl	%ecx, %edx
	callq	gimp_container_reorder
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB18_2:                               # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_controller_list_down_clicked, .Lfunc_end18-gimp_controller_list_down_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_controller_list_edit_destroy,@function
gimp_controller_list_edit_destroy:      # @gimp_controller_list_edit_destroy
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
	subq	$16, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.38, %rsi
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	callq	g_object_set_data
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_controller_list_edit_destroy, .Lfunc_end19-gimp_controller_list_edit_destroy
	.cfi_endproc

	.type	gimp_controller_list_get_type.g_define_type_id__volatile,@object # @gimp_controller_list_get_type.g_define_type_id__volatile
	.local	gimp_controller_list_get_type.g_define_type_id__volatile
	.comm	gimp_controller_list_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpControllerList"
	.size	.L.str, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_controller_list_new,@object # @__func__.gimp_controller_list_new
.L__func__.gimp_controller_list_new:
	.asciz	"gimp_controller_list_new"
	.size	.L__func__.gimp_controller_list_new, 25

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp"
	.size	.L.str.3, 5

	.type	gimp_controller_list_parent_class,@object # @gimp_controller_list_parent_class
	.local	gimp_controller_list_parent_class
	.comm	gimp_controller_list_parent_class,8,8
	.type	GimpControllerList_private_offset,@object # @GimpControllerList_private_offset
	.local	GimpControllerList_private_offset
	.comm	GimpControllerList_private_offset,4,4
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimpcontrollerlist.c"
	.size	.L.str.4, 21

	.type	.L__func__.gimp_controller_list_constructed,@object # @__func__.gimp_controller_list_constructed
.L__func__.gimp_controller_list_constructed:
	.asciz	"gimp_controller_list_constructed"
	.size	.L__func__.gimp_controller_list_constructed, 33

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP_IS_GIMP (list->gimp)"
	.size	.L.str.5, 26

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.6, 54

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"property"
	.size	.L.str.7, 9

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Available Controllers"
	.size	.L.str.8, 22

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"stock-id"
	.size	.L.str.9, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"stock-size"
	.size	.L.str.10, 11

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"text"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"row-activated"
	.size	.L.str.12, 14

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"changed"
	.size	.L.str.13, 8

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gtk-go-forward"
	.size	.L.str.14, 15

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"clicked"
	.size	.L.str.15, 8

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gtk-go-back"
	.size	.L.str.16, 12

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Active Controllers"
	.size	.L.str.17, 19

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"select-item"
	.size	.L.str.18, 12

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"activate-item"
	.size	.L.str.19, 14

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gtk-properties"
	.size	.L.str.20, 15

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Configure the selected controller"
	.size	.L.str.21, 34

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gtk-go-up"
	.size	.L.str.22, 10

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Move the selected controller up"
	.size	.L.str.23, 32

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gtk-go-down"
	.size	.L.str.24, 12

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Move the selected controller down"
	.size	.L.str.25, 34

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Add '%s' to the list of active controllers"
	.size	.L.str.26, 43

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"There can only be one active keyboard controller.\n\nYou already have a keyboard controller in your list of active controllers."
	.size	.L.str.27, 126

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"There can only be one active wheel controller.\n\nYou already have a wheel controller in your list of active controllers."
	.size	.L.str.28, 120

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"There can only be one active mouse controller.\n\nYou already have a mouse controller in your list of active controllers."
	.size	.L.str.29, 120

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Remove Controller?"
	.size	.L.str.30, 19

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gimp-warning"
	.size	.L.str.31, 13

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Disable Controller"
	.size	.L.str.32, 19

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"gtk-cancel"
	.size	.L.str.33, 11

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Remove Controller"
	.size	.L.str.34, 18

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Remove Controller '%s'?"
	.size	.L.str.35, 24

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"%s"
	.size	.L.str.36, 3

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Removing this controller from the list of active controllers will permanently delete all event mappings you have configured.\n\nSelecting \"Disable Controller\" will disable the controller without removing it."
	.size	.L.str.37, 206

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"gimp-controller-editor-dialog"
	.size	.L.str.38, 30

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Remove '%s' from the list of active controllers"
	.size	.L.str.39, 48

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Configure Input Controller"
	.size	.L.str.40, 27

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"gimp-prefs-input-controllers"
	.size	.L.str.41, 29

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"gtk-close"
	.size	.L.str.42, 10

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"response"
	.size	.L.str.43, 9

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"destroy"
	.size	.L.str.44, 8

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"unmap"
	.size	.L.str.45, 6


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
