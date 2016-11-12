	.text
	.file	"gimppatheditor.bc"
	.globl	gimp_path_editor_get_type
	.align	16, 0x90
	.type	gimp_path_editor_get_type,@function
gimp_path_editor_get_type:              # @gimp_path_editor_get_type
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
	movq	gimp_path_editor_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_path_editor_get_type.g_define_type_id__volatile(%rip), %rax
	movq	%rax, %rdi
	callq	g_once_init_enter@PLT
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
	callq	gtk_box_get_type@PLT
	leaq	.L.str(%rip), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string@PLT
	movl	$872, %edx              # imm = 0x368
	leaq	gimp_path_editor_class_intern_init(%rip), %rdi
	movl	$216, %r8d
	leaq	gimp_path_editor_init(%rip), %rcx
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
	callq	g_type_register_static_simple@PLT
	leaq	gimp_path_editor_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_path_editor_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_path_editor_get_type, .Lfunc_end0-gimp_path_editor_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_path_editor_class_intern_init,@function
gimp_path_editor_class_intern_init:     # @gimp_path_editor_class_intern_init
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
	callq	g_type_class_peek_parent@PLT
	movq	%rax, gimp_path_editor_parent_class(%rip)
	cmpl	$0, GimpPathEditor_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpPathEditor_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_path_editor_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_path_editor_class_intern_init, .Lfunc_end1-gimp_path_editor_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_path_editor_init,@function
gimp_path_editor_init:                  # @gimp_path_editor_init
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
	subq	$384, %rsp              # imm = 0x180
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	$0, 168(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 192(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 208(%rdi)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gtk_orientable_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_orientable_set_orientation@PLT
	xorl	%edi, %edi
	movl	$2, %esi
	callq	gtk_box_new@PLT
	movq	-8(%rbp), %rcx
	movq	%rax, 128(%rcx)
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%edx, %edx
	movl	$1, %ecx
	movq	-8(%rbp), %rsi
	movq	128(%rsi), %rsi
	movq	%rax, %rdi
	movl	%edx, -84(%rbp)         # 4-byte Spill
	movl	-84(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gtk_widget_show@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_box_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_homogeneous@PLT
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -108(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-108(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -112(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-112(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show@PLT
	callq	gtk_button_new@PLT
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, 136(%rsi)
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start@PLT
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.9(%rip), %rdi
	movl	$4, %esi
	callq	gtk_image_new_from_stock@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add@PLT
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.10(%rip), %rsi
	leaq	gimp_path_editor_new_clicked(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data@PLT
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_button_new@PLT
	xorl	%esi, %esi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rax, 144(%rcx)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_set_sensitive@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start@PLT
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.11(%rip), %rdi
	movl	$4, %esi
	callq	gtk_image_new_from_stock@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add@PLT
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.10(%rip), %rsi
	leaq	gimp_path_editor_move_clicked(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data@PLT
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_button_new@PLT
	xorl	%esi, %esi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rax, 152(%rcx)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_set_sensitive@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start@PLT
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.12(%rip), %rdi
	movl	$4, %esi
	callq	gtk_image_new_from_stock@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add@PLT
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.10(%rip), %rsi
	leaq	gimp_path_editor_move_clicked(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data@PLT
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_button_new@PLT
	xorl	%esi, %esi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rax, 160(%rcx)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_set_sensitive@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start@PLT
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.13(%rip), %rdi
	movl	$4, %esi
	callq	gtk_image_new_from_stock@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add@PLT
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.10(%rip), %rsi
	leaq	gimp_path_editor_delete_clicked(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data@PLT
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movq	%rcx, %rdi
	movq	%rcx, %rsi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type@PLT
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_scrolled_window_set_shadow_type@PLT
	movq	-40(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type@PLT
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	gtk_scrolled_window_set_policy@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %edx
	movl	$2, %r8d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -236(%rbp)        # 4-byte Spill
	movl	-236(%rbp), %ecx        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movl	$3, %edi
	movl	$64, %ecx
	movl	%ecx, %eax
	movl	$20, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rsi
	movq	%rax, %rdx
	movb	$0, %al
	callq	gtk_list_store_new@PLT
	movq	-8(%rbp), %rcx
	movq	%rax, 176(%rcx)
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type@PLT
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_tree_view_new_with_model@PLT
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref@PLT
	callq	gtk_cell_renderer_toggle_new@PLT
	leaq	.L.str.14(%rip), %rsi
	leaq	gimp_path_editor_writable_toggled(%rip), %rcx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -256(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-256(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_column_new@PLT
	leaq	.L.str.15(%rip), %rdi
	leaq	.L.str.16(%rip), %rsi
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rax, 200(%rcx)
	movq	-56(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_tree_view_column_set_title@PLT
	xorl	%edx, %edx
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gtk_tree_view_column_pack_start@PLT
	leaq	.L.str.17(%rip), %rdx
	movl	$2, %ecx
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gtk_tree_view_column_add_attribute@PLT
	movq	-48(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type@PLT
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_view_append_column@PLT
	xorl	%esi, %esi
	movq	-56(%rbp), %rdi
	movl	%eax, -284(%rbp)        # 4-byte Spill
	callq	gtk_tree_view_column_set_visible@PLT
	movq	-48(%rbp), %rdx
	movq	%rdx, -296(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type@PLT
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.15(%rip), %rdi
	leaq	.L.str.18(%rip), %rsi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_cell_renderer_text_new@PLT
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	leaq	.L.str.19(%rip), %r8
	xorl	%r9d, %r9d
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	-312(%rbp), %r10        # 8-byte Reload
	movq	%rdx, -320(%rbp)        # 8-byte Spill
	movq	%r10, %rdx
	movq	%rax, %rcx
	movq	$0, (%rsp)
	movb	$0, %al
	callq	gtk_tree_view_insert_column_with_attributes@PLT
	movq	-48(%rbp), %rcx
	movl	%eax, -324(%rbp)        # 4-byte Spill
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type@PLT
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_tree_view_set_headers_visible@PLT
	movq	-40(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add@PLT
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movq	-48(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type@PLT
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_tree_view_get_selection@PLT
	leaq	.L.str.20(%rip), %rsi
	leaq	gimp_path_editor_selection_changed(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	%rax, 184(%rdx)
	movq	-8(%rbp), %rax
	movq	184(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -360(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-360(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movq	%rax, -368(%rbp)        # 8-byte Spill
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_path_editor_init, .Lfunc_end2-gimp_path_editor_init
	.cfi_endproc

	.globl	gimp_path_editor_new
	.align	16, 0x90
	.type	gimp_path_editor_new,@function
gimp_path_editor_new:                   # @gimp_path_editor_new
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_path_editor_new(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB3_8
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	callq	gimp_path_editor_get_type@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	leaq	.L.str.3(%rip), %rsi
	movl	$1, %ecx
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	callq	gimp_file_entry_new@PLT
	xorl	%esi, %esi
	movq	-32(%rbp), %rdi
	movq	%rax, 168(%rdi)
	movq	-32(%rbp), %rax
	movq	168(%rax), %rdi
	callq	gtk_widget_set_sensitive@PLT
	movq	-32(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rsi
	movq	168(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start@PLT
	movq	-32(%rbp), %rax
	movq	168(%rax), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.4(%rip), %rsi
	leaq	gimp_path_editor_file_entry_changed(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdi
	movq	168(%rdi), %rdi
	movq	-32(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data@PLT
	cmpq	$0, -24(%rbp)
	movq	%rax, -48(%rbp)         # 8-byte Spill
	je	.LBB3_7
# BB#6:                                 # %if.then.10
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_path_editor_set_path@PLT
.LBB3_7:                                # %if.end.11
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -8(%rbp)
.LBB3_8:                                # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_path_editor_new, .Lfunc_end3-gimp_path_editor_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_path_editor_file_entry_changed,@function
gimp_path_editor_file_entry_changed:    # @gimp_path_editor_file_entry_changed
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_file_entry_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gimp_file_entry_get_filename@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	leaq	.L.str.3(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	g_free@PLT
	jmp	.LBB4_6
.LBB4_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	g_filename_display_name@PLT
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 192(%rax)
	jne	.LBB4_4
# BB#3:                                 # %if.then.6
	leaq	-64(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	176(%rax), %rdi
	callq	gtk_list_store_append@PLT
	leaq	-64(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %r8d
	movl	$2, %ecx
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rax
	movq	176(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %r10
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	movq	%rax, %rcx
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	movq	%r10, %r9
	movl	$2, (%rsp)
	movl	$0, 8(%rsp)
	movl	$-1, 16(%rsp)
	movb	$0, %al
	callq	gtk_list_store_set@PLT
	leaq	-64(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movl	208(%rcx), %edx
	addl	$1, %edx
	movl	%edx, 208(%rcx)
	movq	-16(%rbp), %rcx
	movq	184(%rcx), %rdi
	callq	gtk_tree_selection_select_iter@PLT
	jmp	.LBB4_5
.LBB4_4:                                # %if.else
	movq	-16(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-64(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	192(%rdi), %rdx
	movq	%rax, %rdi
	callq	gtk_tree_model_get_iter@PLT
	leaq	-64(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %r8d
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rdi
	movq	176(%rdi), %rdi
	movq	-32(%rbp), %r9
	movq	-24(%rbp), %r10
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movq	%r9, %rcx
	movq	%r10, %r9
	movl	$-1, (%rsp)
	movl	%eax, -96(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	gtk_list_store_set@PLT
.LBB4_5:                                # %if.end.14
	movq	-24(%rbp), %rdi
	callq	g_free@PLT
	movq	-32(%rbp), %rdi
	callq	g_free@PLT
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movl	gimp_path_editor_signals(%rip), %esi
	movb	$0, %al
	callq	g_signal_emit@PLT
.LBB4_6:                                # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_path_editor_file_entry_changed, .Lfunc_end4-gimp_path_editor_file_entry_changed
	.cfi_endproc

	.globl	gimp_path_editor_set_path
	.align	16, 0x90
	.type	gimp_path_editor_set_path,@function
gimp_path_editor_set_path:              # @gimp_path_editor_set_path
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_path_editor_get_type@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -60(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_path_editor_set_path(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB5_24
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_path_editor_get_path@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB5_16
# BB#13:                                # %land.lhs.true.13
	cmpq	$0, -16(%rbp)
	je	.LBB5_16
# BB#14:                                # %land.lhs.true.15
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB5_16
# BB#15:                                # %if.then.18
	movq	-24(%rbp), %rdi
	callq	g_free@PLT
	jmp	.LBB5_24
.LBB5_16:                               # %if.end.19
	movq	-24(%rbp), %rdi
	callq	g_free@PLT
	movl	$256, %esi              # imm = 0x100
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	callq	gimp_path_parse@PLT
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	176(%rax), %rdi
	callq	gtk_list_store_clear@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB5_17:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB5_23
# BB#18:                                # %for.body
                                        #   in Loop: Header=BB5_17 Depth=1
	movq	$-1, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -72(%rbp)
	movq	-72(%rbp), %rdi
	movq	%rcx, %rdx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movq	-120(%rbp), %r8         # 8-byte Reload
	callq	g_filename_to_utf8@PLT
	leaq	-112(%rbp), %rsi
	movq	%rax, -80(%rbp)
	movq	-8(%rbp), %rax
	movq	176(%rax), %rdi
	callq	gtk_list_store_append@PLT
	leaq	-112(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %r8d
	movl	$2, %r9d
	movl	$4294967295, %r10d      # imm = 0xFFFFFFFF
	movq	-8(%rbp), %rax
	movq	176(%rax), %rdi
	movq	-80(%rbp), %rcx
	movq	-72(%rbp), %rax
	movl	%r9d, -124(%rbp)        # 4-byte Spill
	movq	%rax, %r9
	movl	$2, (%rsp)
	movl	$0, 8(%rsp)
	movl	$-1, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -128(%rbp)       # 4-byte Spill
	callq	gtk_list_store_set@PLT
	movq	-80(%rbp), %rdi
	callq	g_free@PLT
	movq	-8(%rbp), %rcx
	movl	208(%rcx), %edx
	addl	$1, %edx
	movl	%edx, 208(%rcx)
# BB#19:                                # %for.inc
                                        #   in Loop: Header=BB5_17 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB5_21
# BB#20:                                # %cond.true
                                        #   in Loop: Header=BB5_17 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB5_22
.LBB5_21:                               # %cond.false
                                        #   in Loop: Header=BB5_17 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB5_22
.LBB5_22:                               # %cond.end
                                        #   in Loop: Header=BB5_17 Depth=1
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB5_17
.LBB5_23:                               # %for.end
	movq	-32(%rbp), %rdi
	callq	gimp_path_free@PLT
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movl	gimp_path_editor_signals(%rip), %esi
	movb	$0, %al
	callq	g_signal_emit@PLT
.LBB5_24:                               # %return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_path_editor_set_path, .Lfunc_end5-gimp_path_editor_set_path
	.cfi_endproc

	.globl	gimp_path_editor_get_path
	.align	16, 0x90
	.type	gimp_path_editor_get_path,@function
gimp_path_editor_get_path:              # @gimp_path_editor_get_path
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_path_editor_get_type@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -92(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_path_editor_get_path(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	leaq	.L.str.3(%rip), %rdi
	callq	g_strdup@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB6_19
.LBB6_11:                               # %if.end.11
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.3(%rip), %rdi
	movq	%rax, -24(%rbp)
	callq	g_string_new@PLT
	leaq	-64(%rbp), %rsi
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_tree_model_get_iter_first@PLT
	movl	%eax, -68(%rbp)
.LBB6_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -68(%rbp)
	je	.LBB6_18
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB6_13 Depth=1
	leaq	-64(%rbp), %rsi
	movl	$1, %edx
	leaq	-104(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get@PLT
	movq	-32(%rbp), %rcx
	cmpq	$0, 8(%rcx)
	jbe	.LBB6_16
# BB#15:                                # %if.then.19
                                        #   in Loop: Header=BB6_13 Depth=1
	movl	$58, %esi
	movq	-32(%rbp), %rdi
	callq	g_string_append_c_inline
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB6_16:                               # %if.end.21
                                        #   in Loop: Header=BB6_13 Depth=1
	movq	-32(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_string_append@PLT
	movq	-104(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_free@PLT
# BB#17:                                # %for.inc
                                        #   in Loop: Header=BB6_13 Depth=1
	leaq	-64(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gtk_tree_model_iter_next@PLT
	movl	%eax, -68(%rbp)
	jmp	.LBB6_13
.LBB6_18:                               # %for.end
	xorl	%esi, %esi
	movq	-32(%rbp), %rdi
	callq	g_string_free@PLT
	movq	%rax, -8(%rbp)
.LBB6_19:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_path_editor_get_path, .Lfunc_end6-gimp_path_editor_get_path
	.cfi_endproc

	.align	16, 0x90
	.type	g_string_append_c_inline,@function
g_string_append_c_inline:               # @g_string_append_c_inline
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
	subq	$32, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	addq	$1, %rdi
	movq	-8(%rbp), %rcx
	cmpq	16(%rcx), %rdi
	jae	.LBB7_2
# BB#1:                                 # %if.then
	movb	-9(%rbp), %al
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 8(%rcx)
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movb	%al, (%rcx,%rdx)
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movb	$0, (%rdx,%rcx)
	jmp	.LBB7_3
.LBB7_2:                                # %if.else
	movq	$-1, %rsi
	movq	-8(%rbp), %rdi
	movsbl	-9(%rbp), %edx
	callq	g_string_insert_c@PLT
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB7_3:                                # %if.end
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	g_string_append_c_inline, .Lfunc_end7-g_string_append_c_inline
	.cfi_endproc

	.globl	gimp_path_editor_get_writable_path
	.align	16, 0x90
	.type	gimp_path_editor_get_writable_path,@function
gimp_path_editor_get_writable_path:     # @gimp_path_editor_get_writable_path
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
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_path_editor_get_type@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -92(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_path_editor_get_writable_path(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	leaq	.L.str.3(%rip), %rdi
	callq	g_strdup@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB8_21
.LBB8_11:                               # %if.end.11
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.3(%rip), %rdi
	movq	%rax, -24(%rbp)
	callq	g_string_new@PLT
	leaq	-64(%rbp), %rsi
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_tree_model_get_iter_first@PLT
	movl	%eax, -68(%rbp)
.LBB8_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -68(%rbp)
	je	.LBB8_20
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB8_13 Depth=1
	leaq	-64(%rbp), %rsi
	movl	$1, %edx
	leaq	-104(%rbp), %rcx
	movl	$2, %r8d
	leaq	-108(%rbp), %r9
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rdi
	movl	$-1, (%rsp)
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gtk_tree_model_get@PLT
	cmpl	$0, -108(%rbp)
	je	.LBB8_18
# BB#15:                                # %if.then.20
                                        #   in Loop: Header=BB8_13 Depth=1
	movq	-32(%rbp), %rax
	cmpq	$0, 8(%rax)
	jbe	.LBB8_17
# BB#16:                                # %if.then.22
                                        #   in Loop: Header=BB8_13 Depth=1
	movl	$58, %esi
	movq	-32(%rbp), %rdi
	callq	g_string_append_c_inline
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB8_17:                               # %if.end.24
                                        #   in Loop: Header=BB8_13 Depth=1
	movq	-32(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_string_append@PLT
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB8_18:                               # %if.end.26
                                        #   in Loop: Header=BB8_13 Depth=1
	movq	-104(%rbp), %rdi
	callq	g_free@PLT
# BB#19:                                # %for.inc
                                        #   in Loop: Header=BB8_13 Depth=1
	leaq	-64(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gtk_tree_model_iter_next@PLT
	movl	%eax, -68(%rbp)
	jmp	.LBB8_13
.LBB8_20:                               # %for.end
	xorl	%esi, %esi
	movq	-32(%rbp), %rdi
	callq	g_string_free@PLT
	movq	%rax, -8(%rbp)
.LBB8_21:                               # %return
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_path_editor_get_writable_path, .Lfunc_end8-gimp_path_editor_get_writable_path
	.cfi_endproc

	.globl	gimp_path_editor_set_writable_path
	.align	16, 0x90
	.type	gimp_path_editor_set_writable_path,@function
gimp_path_editor_set_writable_path:     # @gimp_path_editor_set_writable_path
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -76(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_path_editor_get_type@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -100(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -100(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_path_editor_set_writable_path(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB9_22
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movl	$1, %esi
	movq	-8(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gtk_tree_view_column_set_visible@PLT
	movl	$256, %esi              # imm = 0x100
	xorl	%edx, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-16(%rbp), %rdi
	callq	gimp_path_parse@PLT
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type@PLT
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-56(%rbp), %rsi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_tree_model_get_iter_first@PLT
	movl	%eax, -60(%rbp)
.LBB9_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -60(%rbp)
	je	.LBB9_20
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB9_13 Depth=1
	leaq	-56(%rbp), %rsi
	movl	$1, %edx
	leaq	-112(%rbp), %rcx
	movl	$2, %r8d
	leaq	-116(%rbp), %r9
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$0, -120(%rbp)
	movq	-24(%rbp), %rdi
	movl	$-1, (%rsp)
	movl	%eax, -132(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gtk_tree_model_get@PLT
	movq	strcmp@GOTPCREL(%rip), %rdx
	movq	-72(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_list_find_custom@PLT
	cmpq	$0, %rax
	je	.LBB9_16
# BB#15:                                # %if.then.21
                                        #   in Loop: Header=BB9_13 Depth=1
	movl	$1, -120(%rbp)
.LBB9_16:                               # %if.end.22
                                        #   in Loop: Header=BB9_13 Depth=1
	movq	-112(%rbp), %rdi
	callq	g_free@PLT
	movl	-116(%rbp), %eax
	cmpl	-120(%rbp), %eax
	je	.LBB9_18
# BB#17:                                # %if.then.24
                                        #   in Loop: Header=BB9_13 Depth=1
	leaq	-56(%rbp), %rsi
	movl	$2, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-8(%rbp), %rax
	movq	176(%rax), %rdi
	movl	-120(%rbp), %ecx
	movb	$0, %al
	callq	gtk_list_store_set@PLT
	movl	$1, -76(%rbp)
.LBB9_18:                               # %if.end.26
                                        #   in Loop: Header=BB9_13 Depth=1
	jmp	.LBB9_19
.LBB9_19:                               # %for.inc
                                        #   in Loop: Header=BB9_13 Depth=1
	leaq	-56(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gtk_tree_model_iter_next@PLT
	movl	%eax, -60(%rbp)
	jmp	.LBB9_13
.LBB9_20:                               # %for.end
	movq	-72(%rbp), %rdi
	callq	gimp_path_free@PLT
	cmpl	$0, -76(%rbp)
	je	.LBB9_22
# BB#21:                                # %if.then.29
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	gimp_path_editor_signals+4(%rip), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit@PLT
.LBB9_22:                               # %if.end.30
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_path_editor_set_writable_path, .Lfunc_end9-gimp_path_editor_set_writable_path
	.cfi_endproc

	.globl	gimp_path_editor_get_dir_writable
	.align	16, 0x90
	.type	gimp_path_editor_get_dir_writable,@function
gimp_path_editor_get_dir_writable:      # @gimp_path_editor_get_dir_writable
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_path_editor_get_type@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -92(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_path_editor_get_dir_writable(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB10_24
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	jmp	.LBB10_13
.LBB10_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB10_15
# BB#14:                                # %if.then.13
	jmp	.LBB10_16
.LBB10_15:                              # %if.else.14
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_path_editor_get_dir_writable(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB10_24
.LBB10_16:                              # %if.end.15
	jmp	.LBB10_17
.LBB10_17:                              # %do.end.16
	movq	-16(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-64(%rbp), %rsi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_tree_model_get_iter_first@PLT
	movl	%eax, -68(%rbp)
.LBB10_18:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -68(%rbp)
	je	.LBB10_23
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB10_18 Depth=1
	leaq	-64(%rbp), %rsi
	movl	$1, %edx
	leaq	-104(%rbp), %rcx
	movl	$2, %r8d
	leaq	-108(%rbp), %r9
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rdi
	movl	$-1, (%rsp)
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gtk_tree_model_get@PLT
	movq	-104(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB10_21
# BB#20:                                # %if.then.25
	movq	-104(%rbp), %rdi
	callq	g_free@PLT
	movl	-108(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB10_24
.LBB10_21:                              # %if.end.26
                                        #   in Loop: Header=BB10_18 Depth=1
	movq	-104(%rbp), %rdi
	callq	g_free@PLT
# BB#22:                                # %for.inc
                                        #   in Loop: Header=BB10_18 Depth=1
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gtk_tree_model_iter_next@PLT
	movl	%eax, -68(%rbp)
	jmp	.LBB10_18
.LBB10_23:                              # %for.end
	movl	$0, -4(%rbp)
.LBB10_24:                              # %return
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_path_editor_get_dir_writable, .Lfunc_end10-gimp_path_editor_get_dir_writable
	.cfi_endproc

	.globl	gimp_path_editor_set_dir_writable
	.align	16, 0x90
	.type	gimp_path_editor_set_dir_writable,@function
gimp_path_editor_set_dir_writable:      # @gimp_path_editor_set_dir_writable
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_path_editor_get_type@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -92(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_path_editor_set_dir_writable(%rip), %rsi
	leaq	.L.str.5(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB11_24
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	jmp	.LBB11_13
.LBB11_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB11_15
# BB#14:                                # %if.then.13
	jmp	.LBB11_16
.LBB11_15:                              # %if.else.14
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_path_editor_set_dir_writable(%rip), %rsi
	leaq	.L.str.6(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB11_24
.LBB11_16:                              # %if.end.15
	jmp	.LBB11_17
.LBB11_17:                              # %do.end.16
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-64(%rbp), %rsi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_tree_model_get_iter_first@PLT
	movl	%eax, -68(%rbp)
.LBB11_18:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -68(%rbp)
	je	.LBB11_24
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB11_18 Depth=1
	leaq	-64(%rbp), %rsi
	movl	$1, %edx
	leaq	-104(%rbp), %rcx
	movl	$2, %r8d
	leaq	-108(%rbp), %r9
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rdi
	movl	$-1, (%rsp)
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gtk_tree_model_get@PLT
	movq	-104(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB11_22
# BB#20:                                # %land.lhs.true.25
                                        #   in Loop: Header=BB11_18 Depth=1
	movl	-108(%rbp), %eax
	cmpl	-20(%rbp), %eax
	je	.LBB11_22
# BB#21:                                # %if.then.27
	leaq	-64(%rbp), %rsi
	movl	$2, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movq	176(%rdi), %rdi
	cmpl	$0, -20(%rbp)
	cmovnel	%ecx, %eax
	movl	%eax, %ecx
	movb	$0, %al
	callq	gtk_list_store_set@PLT
	xorl	%edx, %edx
	movq	-8(%rbp), %rsi
	movl	gimp_path_editor_signals+4(%rip), %ecx
	movq	%rsi, %rdi
	movl	%ecx, %esi
	movb	$0, %al
	callq	g_signal_emit@PLT
	movq	-104(%rbp), %rdi
	callq	g_free@PLT
	jmp	.LBB11_24
.LBB11_22:                              # %if.end.30
                                        #   in Loop: Header=BB11_18 Depth=1
	movq	-104(%rbp), %rdi
	callq	g_free@PLT
# BB#23:                                # %for.inc
                                        #   in Loop: Header=BB11_18 Depth=1
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gtk_tree_model_iter_next@PLT
	movl	%eax, -68(%rbp)
	jmp	.LBB11_18
.LBB11_24:                              # %for.end
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_path_editor_set_dir_writable, .Lfunc_end11-gimp_path_editor_set_dir_writable
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_path_editor_class_init,@function
gimp_path_editor_class_init:            # @gimp_path_editor_class_init
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
	subq	$112, %rsp
.Ltmp39:
	.cfi_offset %rbx, -32
.Ltmp40:
	.cfi_offset %r14, -24
	leaq	.L.str.7(%rip), %rax
	movl	$1, %edx
	movl	$824, %ecx              # imm = 0x338
	xorl	%esi, %esi
	movl	%esi, %r8d
	movq	g_cclosure_marshal_VOID__VOID@GOTPCREL(%rip), %r9
	movl	$4, %esi
	movl	%esi, %r10d
	xorl	%esi, %esi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-32(%rbp), %rax         # 8-byte Reload
	movl	%esi, -36(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	%r8, -48(%rbp)          # 8-byte Spill
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%r11, %r9
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movq	%r10, -64(%rbp)         # 8-byte Spill
	callq	g_signal_new@PLT
	leaq	.L.str.8(%rip), %rdi
	movl	$1, %edx
	movl	$832, %ecx              # imm = 0x340
	xorl	%r14d, %r14d
	movl	%r14d, %esi
	movq	g_cclosure_marshal_VOID__VOID@GOTPCREL(%rip), %r8
	movl	$4, %r14d
	movl	%r14d, %r9d
	xorl	%r14d, %r14d
	movl	%eax, gimp_path_editor_signals(%rip)
	movq	-24(%rbp), %r10
	movq	(%r10), %r10
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%r10, %rsi
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	%r8, -80(%rbp)          # 8-byte Spill
	movq	%r10, %r8
	movq	%r9, -88(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-80(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movl	%r14d, -92(%rbp)        # 4-byte Spill
	callq	g_signal_new@PLT
	movl	%eax, gimp_path_editor_signals+4(%rip)
	movq	-24(%rbp), %rsi
	movq	$0, 824(%rsi)
	movq	-24(%rbp), %rsi
	movq	$0, 832(%rsi)
	addq	$112, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_path_editor_class_init, .Lfunc_end12-gimp_path_editor_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_path_editor_new_clicked,@function
gimp_path_editor_new_clicked:           # @gimp_path_editor_new_clicked
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, 192(%rsi)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	gimp_path_editor_selection_changed(%rip), %rdx
	movq	-16(%rbp), %rdi
	movq	184(%rdi), %rdi
	movq	-16(%rbp), %r9
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-24(%rbp), %r10         # 8-byte Reload
	movq	%r9, -32(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-32(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	movq	-16(%rbp), %rdi
	movq	184(%rdi), %rdi
	movq	-16(%rbp), %r8
	movq	192(%r8), %rsi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	gtk_tree_selection_unselect_path@PLT
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	gimp_path_editor_selection_changed(%rip), %rdi
	movq	-16(%rbp), %r9
	movq	184(%r9), %r9
	movq	-16(%rbp), %r10
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-48(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	movq	-16(%rbp), %rdi
	movq	192(%rdi), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	gtk_tree_path_free@PLT
	movq	-16(%rbp), %rdi
	movq	$0, 192(%rdi)
.LBB13_2:                               # %if.end
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movq	160(%rax), %rdi
	callq	gtk_widget_set_sensitive@PLT
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gtk_widget_set_sensitive@PLT
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movq	152(%rax), %rdi
	callq	gtk_widget_set_sensitive@PLT
	movl	$1, %esi
	movq	-16(%rbp), %rax
	movq	168(%rax), %rdi
	callq	gtk_widget_set_sensitive@PLT
	movq	-16(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_file_entry_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	136(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_editable_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	callq	gtk_editable_set_position@PLT
	movq	-16(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_file_entry_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	136(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_widget_grab_focus@PLT
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_path_editor_new_clicked, .Lfunc_end13-gimp_path_editor_new_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_path_editor_move_clicked,@function
gimp_path_editor_move_clicked:          # @gimp_path_editor_move_clicked
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
	pushq	%r14
	pushq	%rbx
	subq	$240, %rsp
.Ltmp47:
	.cfi_offset %rbx, -32
.Ltmp48:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rsi
	cmpq	$0, 192(%rsi)
	jne	.LBB14_2
# BB#1:                                 # %if.then
	jmp	.LBB14_6
.LBB14_2:                               # %if.end
	movq	-32(%rbp), %rax
	movq	192(%rax), %rdi
	callq	gtk_tree_path_copy@PLT
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdi
	cmpq	144(%rdi), %rax
	jne	.LBB14_4
# BB#3:                                 # %if.then.3
	movq	-40(%rbp), %rdi
	callq	gtk_tree_path_prev@PLT
	movl	%eax, -156(%rbp)        # 4-byte Spill
	jmp	.LBB14_5
.LBB14_4:                               # %if.else
	movq	-40(%rbp), %rdi
	callq	gtk_tree_path_next@PLT
.LBB14_5:                               # %if.end.5
	movq	-32(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type@PLT
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-80(%rbp), %rsi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	192(%rax), %rdx
	callq	gtk_tree_model_get_iter@PLT
	leaq	-112(%rbp), %rsi
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	gtk_tree_model_get_iter@PLT
	leaq	-80(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-120(%rbp), %rcx
	movl	$1, %r8d
	leaq	-136(%rbp), %r9
	movl	$2, %r10d
	leaq	-148(%rbp), %rdi
	movl	$4294967295, %r11d      # imm = 0xFFFFFFFF
	movq	-48(%rbp), %rbx
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movl	$2, (%rsp)
	movq	-184(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 8(%rsp)
	movl	$-1, 16(%rsp)
	movl	%eax, -188(%rbp)        # 4-byte Spill
	movb	$0, %al
	movl	%r11d, -192(%rbp)       # 4-byte Spill
	movl	%r10d, -196(%rbp)       # 4-byte Spill
	callq	gtk_tree_model_get@PLT
	leaq	-112(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-128(%rbp), %rcx
	movl	$1, %r8d
	leaq	-144(%rbp), %r9
	movl	$2, %r10d
	leaq	-152(%rbp), %rdi
	movl	$4294967295, %r11d      # imm = 0xFFFFFFFF
	movq	-48(%rbp), %rbx
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movl	$2, (%rsp)
	movq	-208(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 8(%rsp)
	movl	$-1, 16(%rsp)
	movb	$0, %al
	movl	%r11d, -212(%rbp)       # 4-byte Spill
	movl	%r10d, -216(%rbp)       # 4-byte Spill
	callq	gtk_tree_model_get@PLT
	leaq	-80(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %r8d
	movl	$2, %r10d
	movl	$4294967295, %r11d      # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rcx
	movq	176(%rcx), %rdi
	movq	-128(%rbp), %rcx
	movq	-144(%rbp), %r9
	movl	-152(%rbp), %r14d
	movl	$2, (%rsp)
	movl	%r14d, 8(%rsp)
	movl	$-1, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -220(%rbp)       # 4-byte Spill
	movl	%r11d, -224(%rbp)       # 4-byte Spill
	callq	gtk_list_store_set@PLT
	leaq	-112(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %r8d
	movl	$2, %r10d
	movl	$4294967295, %r11d      # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rcx
	movq	176(%rcx), %rdi
	movq	-120(%rbp), %rcx
	movq	-136(%rbp), %r9
	movl	-148(%rbp), %r14d
	movl	$2, (%rsp)
	movl	%r14d, 8(%rsp)
	movl	$-1, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -228(%rbp)       # 4-byte Spill
	movl	%r11d, -232(%rbp)       # 4-byte Spill
	callq	gtk_list_store_set@PLT
	movq	-120(%rbp), %rdi
	callq	g_free@PLT
	movq	-128(%rbp), %rdi
	callq	g_free@PLT
	movq	-144(%rbp), %rdi
	callq	g_free@PLT
	movq	-136(%rbp), %rdi
	callq	g_free@PLT
	leaq	-112(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movq	184(%rcx), %rdi
	callq	gtk_tree_selection_select_iter@PLT
	xorl	%edx, %edx
	movq	-32(%rbp), %rcx
	movl	gimp_path_editor_signals(%rip), %esi
	movq	%rcx, %rdi
	movb	$0, %al
	callq	g_signal_emit@PLT
.LBB14_6:                               # %return
	addq	$240, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_path_editor_move_clicked, .Lfunc_end14-gimp_path_editor_move_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_path_editor_delete_clicked,@function
gimp_path_editor_delete_clicked:        # @gimp_path_editor_delete_clicked
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, 192(%rsi)
	jne	.LBB15_2
# BB#1:                                 # %if.then
	jmp	.LBB15_10
.LBB15_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-48(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	192(%rdi), %rdx
	movq	%rax, %rdi
	callq	gtk_tree_model_get_iter@PLT
	movq	-16(%rbp), %rdx
	movq	176(%rdx), %rdx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-48(%rbp), %rsi
	movl	$2, %edx
	leaq	-52(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_tree_model_get@PLT
	leaq	-48(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movq	176(%rcx), %rdi
	callq	gtk_list_store_remove@PLT
	movq	-16(%rbp), %rcx
	movl	208(%rcx), %edx
	addl	$-1, %edx
	movl	%edx, 208(%rcx)
	movq	-16(%rbp), %rcx
	cmpl	$0, 208(%rcx)
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jne	.LBB15_4
# BB#3:                                 # %if.then.11
	movq	-16(%rbp), %rax
	movq	192(%rax), %rdi
	callq	gtk_tree_path_free@PLT
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	leaq	gimp_path_editor_file_entry_changed(%rip), %rax
	movq	-16(%rbp), %rdi
	movq	$0, 192(%rdi)
	movq	-16(%rbp), %rdi
	movq	168(%rdi), %rdi
	movq	-16(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -104(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	movq	-16(%rbp), %rdi
	movq	168(%rdi), %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gimp_file_entry_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.3(%rip), %rsi
	movq	%rax, %rdi
	callq	gimp_file_entry_set_filename@PLT
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	leaq	gimp_path_editor_file_entry_changed(%rip), %rax
	movq	-16(%rbp), %rdi
	movq	168(%rdi), %rdi
	movq	-16(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -128(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	movq	160(%rdi), %rdi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	gtk_widget_set_sensitive@PLT
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	movq	144(%rdi), %rdi
	callq	gtk_widget_set_sensitive@PLT
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	movq	152(%rdi), %rdi
	callq	gtk_widget_set_sensitive@PLT
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	movq	168(%rdi), %rdi
	callq	gtk_widget_set_sensitive@PLT
	jmp	.LBB15_8
.LBB15_4:                               # %if.else
	movq	-16(%rbp), %rax
	movq	192(%rax), %rdi
	callq	gtk_tree_path_get_indices@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movl	(%rax), %ecx
	movq	-16(%rbp), %rax
	cmpl	208(%rax), %ecx
	jne	.LBB15_7
# BB#5:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	cmpl	$0, (%rax)
	jle	.LBB15_7
# BB#6:                                 # %if.then.27
	movq	-16(%rbp), %rax
	movq	192(%rax), %rdi
	callq	gtk_tree_path_prev@PLT
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB15_7:                               # %if.end.30
	movq	-16(%rbp), %rax
	movq	184(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	192(%rax), %rsi
	callq	gtk_tree_selection_select_path@PLT
.LBB15_8:                               # %if.end.32
	xorl	%edx, %edx
	movq	-16(%rbp), %rax
	movl	gimp_path_editor_signals(%rip), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit@PLT
	cmpl	$0, -52(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.33
	xorl	%edx, %edx
	movq	-16(%rbp), %rax
	movl	gimp_path_editor_signals+4(%rip), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit@PLT
.LBB15_10:                              # %if.end.34
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_path_editor_delete_clicked, .Lfunc_end15-gimp_path_editor_delete_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_path_editor_writable_toggled,@function
gimp_path_editor_writable_toggled:      # @gimp_path_editor_writable_toggled
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_tree_path_new_from_string@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_tree_model_get_iter@PLT
	cmpl	$0, %eax
	je	.LBB16_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-64(%rbp), %rsi
	movl	$2, %edx
	leaq	-68(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_tree_model_get@PLT
	leaq	-64(%rbp), %rsi
	movl	$2, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rcx
	movq	176(%rcx), %rdi
	cmpl	$0, -68(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movb	$0, %al
	callq	gtk_list_store_set@PLT
	xorl	%edx, %edx
	movq	-24(%rbp), %rsi
	movl	gimp_path_editor_signals+4(%rip), %ecx
	movq	%rsi, %rdi
	movl	%ecx, %esi
	movb	$0, %al
	callq	g_signal_emit@PLT
.LBB16_2:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	gtk_tree_path_free@PLT
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_path_editor_writable_toggled, .Lfunc_end16-gimp_path_editor_writable_toggled
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_path_editor_selection_changed,@function
gimp_path_editor_selection_changed:     # @gimp_path_editor_selection_changed
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
	pushq	%rbx
	subq	$184, %rsp
.Ltmp58:
	.cfi_offset %rbx, -24
	xorl	%eax, %eax
	movl	%eax, %ecx
	leaq	-56(%rbp), %rdx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rcx, %rsi
	callq	gtk_tree_selection_get_selected@PLT
	cmpl	$0, %eax
	je	.LBB17_4
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-56(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-64(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_tree_model_get@PLT
	movl	$24, %esi
	xorl	%edx, %edx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	leaq	gimp_path_editor_file_entry_changed(%rip), %rcx
	movq	-24(%rbp), %rdi
	movq	168(%rdi), %rdi
	movq	-24(%rbp), %r9
	movl	%edx, -84(%rbp)         # 4-byte Spill
	movl	-84(%rbp), %r10d        # 4-byte Reload
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movl	%r10d, %ecx
	movq	-96(%rbp), %r11         # 8-byte Reload
	movq	%r9, -104(%rbp)         # 8-byte Spill
	movq	%r11, %r9
	movq	-104(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	movq	-24(%rbp), %rdi
	movq	168(%rdi), %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gimp_file_entry_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_file_entry_set_filename@PLT
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	leaq	gimp_path_editor_file_entry_changed(%rip), %rax
	movq	-24(%rbp), %rdi
	movq	168(%rdi), %rdi
	movq	-24(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -128(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	movq	-64(%rbp), %rdi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	g_free@PLT
	movq	-24(%rbp), %rdi
	cmpq	$0, 192(%rdi)
	je	.LBB17_3
# BB#2:                                 # %if.then.10
	movq	-24(%rbp), %rax
	movq	192(%rax), %rdi
	callq	gtk_tree_path_free@PLT
.LBB17_3:                               # %if.end
	movq	-24(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type@PLT
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_model_get_path@PLT
	movq	-24(%rbp), %rsi
	movq	%rax, 192(%rsi)
	movq	-24(%rbp), %rax
	movq	192(%rax), %rdi
	callq	gtk_tree_path_get_indices@PLT
	movl	$1, %esi
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	movq	160(%rax), %rdi
	callq	gtk_widget_set_sensitive@PLT
	movq	-24(%rbp), %rax
	movq	144(%rax), %rdi
	movq	-72(%rbp), %rax
	cmpl	$0, (%rax)
	setg	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	callq	gtk_widget_set_sensitive@PLT
	movq	-24(%rbp), %rax
	movq	152(%rax), %rdi
	movq	-72(%rbp), %rax
	movl	(%rax), %esi
	movq	-24(%rbp), %rax
	movl	208(%rax), %edx
	subl	$1, %edx
	cmpl	%edx, %esi
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	callq	gtk_widget_set_sensitive@PLT
	movl	$1, %esi
	movq	-24(%rbp), %rax
	movq	168(%rax), %rdi
	callq	gtk_widget_set_sensitive@PLT
	jmp	.LBB17_5
.LBB17_4:                               # %if.else
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	gimp_path_editor_selection_changed(%rip), %rdx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %r9
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-152(%rbp), %r10        # 8-byte Reload
	movq	%r9, -160(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-160(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	movq	-24(%rbp), %rdi
	movq	184(%rdi), %rdi
	movq	-24(%rbp), %r8
	movq	192(%r8), %rsi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	gtk_tree_selection_select_path@PLT
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	gimp_path_editor_selection_changed(%rip), %rdi
	movq	-16(%rbp), %r9
	movq	-24(%rbp), %r10
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-176(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	movl	%eax, -180(%rbp)        # 4-byte Spill
.LBB17_5:                               # %if.end.27
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_path_editor_selection_changed, .Lfunc_end17-gimp_path_editor_selection_changed
	.cfi_endproc

	.type	gimp_path_editor_get_type.g_define_type_id__volatile,@object # @gimp_path_editor_get_type.g_define_type_id__volatile
	.local	gimp_path_editor_get_type.g_define_type_id__volatile
	.comm	gimp_path_editor_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpPathEditor"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"LibGimpWidgets"
	.size	.L.str.1, 15

	.type	.L__func__.gimp_path_editor_new,@object # @__func__.gimp_path_editor_new
.L__func__.gimp_path_editor_new:
	.asciz	"gimp_path_editor_new"
	.size	.L__func__.gimp_path_editor_new, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"title != NULL"
	.size	.L.str.2, 14

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.zero	1
	.size	.L.str.3, 1

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"filename-changed"
	.size	.L.str.4, 17

	.type	.L__func__.gimp_path_editor_get_path,@object # @__func__.gimp_path_editor_get_path
.L__func__.gimp_path_editor_get_path:
	.asciz	"gimp_path_editor_get_path"
	.size	.L__func__.gimp_path_editor_get_path, 26

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP_IS_PATH_EDITOR (editor)"
	.size	.L.str.5, 29

	.type	.L__func__.gimp_path_editor_set_path,@object # @__func__.gimp_path_editor_set_path
.L__func__.gimp_path_editor_set_path:
	.asciz	"gimp_path_editor_set_path"
	.size	.L__func__.gimp_path_editor_set_path, 26

	.type	gimp_path_editor_signals,@object # @gimp_path_editor_signals
	.local	gimp_path_editor_signals
	.comm	gimp_path_editor_signals,8,4
	.type	.L__func__.gimp_path_editor_get_writable_path,@object # @__func__.gimp_path_editor_get_writable_path
.L__func__.gimp_path_editor_get_writable_path:
	.asciz	"gimp_path_editor_get_writable_path"
	.size	.L__func__.gimp_path_editor_get_writable_path, 35

	.type	.L__func__.gimp_path_editor_set_writable_path,@object # @__func__.gimp_path_editor_set_writable_path
.L__func__.gimp_path_editor_set_writable_path:
	.asciz	"gimp_path_editor_set_writable_path"
	.size	.L__func__.gimp_path_editor_set_writable_path, 35

	.type	.L__func__.gimp_path_editor_get_dir_writable,@object # @__func__.gimp_path_editor_get_dir_writable
.L__func__.gimp_path_editor_get_dir_writable:
	.asciz	"gimp_path_editor_get_dir_writable"
	.size	.L__func__.gimp_path_editor_get_dir_writable, 34

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"directory != NULL"
	.size	.L.str.6, 18

	.type	.L__func__.gimp_path_editor_set_dir_writable,@object # @__func__.gimp_path_editor_set_dir_writable
.L__func__.gimp_path_editor_set_dir_writable:
	.asciz	"gimp_path_editor_set_dir_writable"
	.size	.L__func__.gimp_path_editor_set_dir_writable, 34

	.type	gimp_path_editor_parent_class,@object # @gimp_path_editor_parent_class
	.local	gimp_path_editor_parent_class
	.comm	gimp_path_editor_parent_class,8,8
	.type	GimpPathEditor_private_offset,@object # @GimpPathEditor_private_offset
	.local	GimpPathEditor_private_offset
	.comm	GimpPathEditor_private_offset,4,4
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"path-changed"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"writable-changed"
	.size	.L.str.8, 17

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gtk-new"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"clicked"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gtk-go-up"
	.size	.L.str.11, 10

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gtk-go-down"
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gtk-delete"
	.size	.L.str.13, 11

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"toggled"
	.size	.L.str.14, 8

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimp20-libgimp"
	.size	.L.str.15, 15

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Writable"
	.size	.L.str.16, 9

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"active"
	.size	.L.str.17, 7

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Folder"
	.size	.L.str.18, 7

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"text"
	.size	.L.str.19, 5

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"changed"
	.size	.L.str.20, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
