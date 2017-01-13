	.text
	.file	"gimpvectorstreeview.bc"
	.globl	gimp_vectors_tree_view_get_type
	.align	16, 0x90
	.type	gimp_vectors_tree_view_get_type,@function
gimp_vectors_tree_view_get_type:        # @gimp_vectors_tree_view_get_type
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
	movq	gimp_vectors_tree_view_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_vectors_tree_view_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_item_tree_view_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$1072, %edx             # imm = 0x430
	movabsq	$gimp_vectors_tree_view_class_intern_init, %rdi
	movl	$360, %r8d              # imm = 0x168
	movabsq	$gimp_vectors_tree_view_init, %rcx
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
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movabsq	$gimp_vectors_tree_view_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_vectors_tree_view_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_vectors_tree_view_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_vectors_tree_view_get_type, .Lfunc_end0-gimp_vectors_tree_view_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vectors_tree_view_class_intern_init,@function
gimp_vectors_tree_view_class_intern_init: # @gimp_vectors_tree_view_class_intern_init
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
	movq	%rax, gimp_vectors_tree_view_parent_class
	cmpl	$0, GimpVectorsTreeView_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpVectorsTreeView_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_vectors_tree_view_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_vectors_tree_view_class_intern_init, .Lfunc_end1-gimp_vectors_tree_view_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vectors_tree_view_init,@function
gimp_vectors_tree_view_init:            # @gimp_vectors_tree_view_init
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_vectors_tree_view_init, .Lfunc_end2-gimp_vectors_tree_view_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vectors_tree_view_view_iface_init,@function
gimp_vectors_tree_view_view_iface_init: # @gimp_vectors_tree_view_view_iface_init
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_interface_peek_parent
	movabsq	$gimp_vectors_tree_view_set_container, %rdi
	movq	%rax, parent_view_iface
	movq	-8(%rbp), %rax
	movq	%rdi, 40(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_vectors_tree_view_view_iface_init, .Lfunc_end3-gimp_vectors_tree_view_view_iface_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vectors_tree_view_class_init,@function
gimp_vectors_tree_view_class_init:      # @gimp_vectors_tree_view_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
.Ltmp15:
	.cfi_offset %rbx, -56
.Ltmp16:
	.cfi_offset %r12, -48
.Ltmp17:
	.cfi_offset %r13, -40
.Ltmp18:
	.cfi_offset %r14, -32
.Ltmp19:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_tree_view_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_vectors_tree_view_drop_svg, %rsi
	movabsq	$gimp_vectors_tree_view_constructed, %rdi
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rdi, 72(%rax)
	movq	-64(%rbp), %rax
	movq	%rsi, 864(%rax)
	callq	gimp_vectors_get_type
	movabsq	$.L.str.14, %rdi
	movabsq	$.L.str.13, %rsi
	movabsq	$.L.str.12, %rcx
	movabsq	$.L.str.11, %rdx
	movabsq	$.L.str.10, %r8
	movabsq	$.L.str.9, %r9
	movabsq	$.L.str.8, %r10
	movabsq	$.L.str.7, %r11
	movabsq	$.L.str.6, %rbx
	movabsq	$.L.str.5, %r14
	movabsq	$.L.str.4, %r15
	movabsq	$.L.str.3, %r12
	movabsq	$.L.str.2, %r13
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movabsq	$gimp_vectors_tree_view_item_new, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movabsq	$gimp_image_remove_vectors, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movabsq	$gimp_image_add_vectors, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movabsq	$gimp_image_set_active_vectors, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movabsq	$gimp_image_get_active_vectors, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movabsq	$gimp_image_get_vectors, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movabsq	$.L.str.1, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	-72(%rbp), %rax
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, 896(%rax)
	movq	-72(%rbp), %rax
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 904(%rax)
	movq	-72(%rbp), %rax
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 912(%rax)
	movq	-72(%rbp), %rax
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 920(%rax)
	movq	-72(%rbp), %rax
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 928(%rax)
	movq	-72(%rbp), %rax
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 936(%rax)
	movq	-72(%rbp), %rax
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 944(%rax)
	movq	-72(%rbp), %rax
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 952(%rax)
	movq	-72(%rbp), %rax
	movq	%r13, 960(%rax)
	movq	-72(%rbp), %rax
	movq	%r12, 968(%rax)
	movq	-72(%rbp), %rax
	movq	%r15, 976(%rax)
	movq	-72(%rbp), %rax
	movq	%r14, 984(%rax)
	movq	-72(%rbp), %rax
	movq	%rbx, 992(%rax)
	movq	-72(%rbp), %rax
	movq	%r11, 1000(%rax)
	movq	-72(%rbp), %rax
	movq	%r10, 1008(%rax)
	movq	-72(%rbp), %rax
	movq	%r9, 1016(%rax)
	movq	-72(%rbp), %rax
	movq	%r8, 1024(%rax)
	movq	-72(%rbp), %rax
	movq	%rdx, 1032(%rax)
	movq	-72(%rbp), %rax
	movq	-160(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, 1040(%rax)
	movq	-72(%rbp), %rax
	movq	%rsi, 1048(%rax)
	callq	gettext
	movq	-72(%rbp), %rcx
	movq	%rax, 1056(%rcx)
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_vectors_tree_view_class_init, .Lfunc_end4-gimp_vectors_tree_view_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vectors_tree_view_constructed,@function
gimp_vectors_tree_view_constructed:     # @gimp_vectors_tree_view_constructed
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
	pushq	%rbx
	subq	$200, %rsp
.Ltmp23:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_vectors_tree_view_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -40(%rbp)
	movq	gimp_vectors_tree_view_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_vectors_tree_view_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
.LBB5_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_widget_get_modifier_mask
	movl	%eax, -44(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %esi
	movq	%rax, %rdi
	callq	gtk_widget_get_modifier_mask
	movl	%eax, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_tree_view_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_tree_view_get_edit_button
	movq	%rax, %rdi
	callq	gtk_widget_hide
	movabsq	$.L.str.2, %rsi
	movabsq	$.L.str.15, %rdx
	movabsq	$.L.str.16, %rcx
	movabsq	$.L.str.17, %r9
	movabsq	$.L.str.18, %rax
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movq	-24(%rbp), %r10
	movl	-44(%rbp), %r8d
	movl	-48(%rbp), %r11d
	movl	-44(%rbp), %ebx
	orl	-48(%rbp), %ebx
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movl	%r11d, (%rsp)
	movq	%rax, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	-40(%rbp), %rcx
	movq	%rax, 336(%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rcx
	movq	336(%rcx), %rcx
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	gtk_button_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_vectors_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_container_view_enable_dnd
	movq	-24(%rbp), %rdi
	callq	gimp_editor_get_button_box
	movl	$5, %edx
	movq	-40(%rbp), %rcx
	movq	336(%rcx), %rsi
	movq	%rax, %rdi
	callq	gtk_box_reorder_child
	movabsq	$.L.str.2, %rsi
	movabsq	$.L.str.19, %rdx
	movabsq	$.L.str.20, %rcx
	movl	$1, %r8d
	xorl	%r11d, %r11d
	movl	%r11d, %r9d
	movq	-24(%rbp), %rdi
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	-40(%rbp), %rcx
	movq	%rax, 344(%rcx)
	movq	-24(%rbp), %rdi
	callq	gimp_editor_get_button_box
	movl	$6, %edx
	movq	-40(%rbp), %rcx
	movq	344(%rcx), %rsi
	movq	%rax, %rdi
	callq	gtk_box_reorder_child
	movabsq	$.L.str.2, %rsi
	movabsq	$.L.str.21, %rdx
	movabsq	$.L.str.22, %rcx
	movl	$1, %r8d
	xorl	%r11d, %r11d
	movl	%r11d, %r9d
	movq	-24(%rbp), %rdi
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	-40(%rbp), %rcx
	movq	%rax, 352(%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rcx
	movq	352(%rcx), %rcx
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	callq	gtk_button_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_vectors_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	-168(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_container_view_enable_dnd
	movq	-24(%rbp), %rdi
	callq	gimp_editor_get_button_box
	movl	$7, %edx
	movq	-40(%rbp), %rcx
	movq	352(%rcx), %rsi
	movq	%rax, %rdi
	callq	gtk_box_reorder_child
	movq	-32(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	gimp_dnd_svg_dest_add
	addq	$200, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_vectors_tree_view_constructed, .Lfunc_end5-gimp_vectors_tree_view_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vectors_tree_view_drop_svg,@function
gimp_vectors_tree_view_drop_svg:        # @gimp_vectors_tree_view_drop_svg
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_tree_view_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_item_tree_view_get_image
	movq	%rax, -56(%rbp)
	movq	$0, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$0, 56(%rax)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.23, %rdi
	movabsq	$.L__func__.gimp_vectors_tree_view_drop_svg, %rsi
	movq	-24(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, %edx
	movb	$0, %al
	callq	g_print
.LBB6_2:                                # %if.end
	leaq	-64(%rbp), %rax
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-36(%rbp), %edx
	movq	%rax, %rcx
	callq	gimp_item_tree_view_get_drop_index
	movl	$1, %ecx
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movl	%edx, %esi
	leaq	-80(%rbp), %rdi
	movl	%eax, -68(%rbp)
	movq	-56(%rbp), %r9
	movq	-16(%rbp), %r10
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %r11
	movl	-68(%rbp), %eax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%r10, %rsi
	movq	%r11, %r9
	movl	%eax, (%rsp)
	movq	$0, 8(%rsp)
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, 16(%rsp)
	callq	gimp_vectors_import_buffer
	cmpl	$0, %eax
	jne	.LBB6_4
# BB#3:                                 # %if.then.6
	movl	$80, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movq	-80(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_message_literal
	leaq	-80(%rbp), %rdi
	callq	g_clear_error
	jmp	.LBB6_5
.LBB6_4:                                # %if.else
	movq	-56(%rbp), %rdi
	callq	gimp_image_flush
.LBB6_5:                                # %if.end.9
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_vectors_tree_view_drop_svg, .Lfunc_end6-gimp_vectors_tree_view_drop_svg
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vectors_tree_view_item_new,@function
gimp_vectors_tree_view_item_new:        # @gimp_vectors_tree_view_item_new
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
	subq	$48, %rsp
	movabsq	$.L.str.24, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gettext
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_vectors_new
	movl	$1, %ecx
	movl	%ecx, %edx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$1, %r8d
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_image_add_vectors
	movq	-16(%rbp), %rdx
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_vectors_tree_view_item_new, .Lfunc_end7-gimp_vectors_tree_view_item_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vectors_tree_view_set_container,@function
gimp_vectors_tree_view_set_container:   # @gimp_vectors_tree_view_set_container
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_container_view_get_container
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB8_3
# BB#1:                                 # %land.lhs.true
	cmpq	$0, -16(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dnd_svg_source_remove
.LBB8_3:                                # %if.end
	movq	parent_view_iface, %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	cmpq	$0, -32(%rbp)
	jne	.LBB8_6
# BB#4:                                 # %land.lhs.true.10
	cmpq	$0, -16(%rbp)
	je	.LBB8_6
# BB#5:                                 # %if.then.12
	movq	-24(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_vectors_tree_view_drag_svg, %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	callq	gimp_dnd_svg_source_add
.LBB8_6:                                # %if.end.16
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_vectors_tree_view_set_container, .Lfunc_end8-gimp_vectors_tree_view_set_container
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_vectors_tree_view_drag_svg,@function
gimp_vectors_tree_view_drag_svg:        # @gimp_vectors_tree_view_drag_svg
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	gimp_item_tree_view_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_item_tree_view_get_image
	movq	%rax, -40(%rbp)
	movq	$0, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	920(%rax), %rax
	movq	-40(%rbp), %rdi
	callq	*%rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	cmpq	$0, -48(%rbp)
	je	.LBB9_4
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_vectors_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_vectors_export_string
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB9_3
# BB#2:                                 # %if.then.8
	movq	-56(%rbp), %rdi
	callq	strlen
	movq	-16(%rbp), %rdi
	movq	%rax, (%rdi)
.LBB9_3:                                # %if.end
	jmp	.LBB9_4
.LBB9_4:                                # %if.end.10
	movq	-56(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_vectors_tree_view_drag_svg, .Lfunc_end9-gimp_vectors_tree_view_drag_svg
	.cfi_endproc

	.type	gimp_vectors_tree_view_get_type.g_define_type_id__volatile,@object # @gimp_vectors_tree_view_get_type.g_define_type_id__volatile
	.local	gimp_vectors_tree_view_get_type.g_define_type_id__volatile
	.comm	gimp_vectors_tree_view_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpVectorsTreeView"
	.size	.L.str, 20

	.type	gimp_vectors_tree_view_get_type.g_implement_interface_info,@object # @gimp_vectors_tree_view_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_vectors_tree_view_get_type.g_implement_interface_info:
	.quad	gimp_vectors_tree_view_view_iface_init
	.quad	0
	.quad	0
	.size	gimp_vectors_tree_view_get_type.g_implement_interface_info, 24

	.type	gimp_vectors_tree_view_parent_class,@object # @gimp_vectors_tree_view_parent_class
	.local	gimp_vectors_tree_view_parent_class
	.comm	gimp_vectors_tree_view_parent_class,8,8
	.type	GimpVectorsTreeView_private_offset,@object # @GimpVectorsTreeView_private_offset
	.local	GimpVectorsTreeView_private_offset
	.comm	GimpVectorsTreeView_private_offset,4,4
	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"active-vectors-changed"
	.size	.L.str.1, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"vectors"
	.size	.L.str.2, 8

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"vectors-path-tool"
	.size	.L.str.3, 18

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"vectors-edit-attributes"
	.size	.L.str.4, 24

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"vectors-new"
	.size	.L.str.5, 12

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"vectors-new-last-values"
	.size	.L.str.6, 24

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"vectors-raise"
	.size	.L.str.7, 14

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"vectors-raise-to-top"
	.size	.L.str.8, 21

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"vectors-lower"
	.size	.L.str.9, 14

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"vectors-lower-to-bottom"
	.size	.L.str.10, 24

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"vectors-duplicate"
	.size	.L.str.11, 18

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"vectors-delete"
	.size	.L.str.12, 15

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp-tool-path"
	.size	.L.str.13, 15

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Lock path strokes"
	.size	.L.str.14, 18

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"vectors-selection-replace"
	.size	.L.str.15, 26

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"vectors-selection-add"
	.size	.L.str.16, 22

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"vectors-selection-subtract"
	.size	.L.str.17, 27

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"vectors-selection-intersect"
	.size	.L.str.18, 28

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"vectors-selection-to-vectors"
	.size	.L.str.19, 29

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"vectors-selection-to-vectors-advanced"
	.size	.L.str.20, 38

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"vectors-stroke"
	.size	.L.str.21, 15

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"vectors-stroke-last-values"
	.size	.L.str.22, 27

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"%s: SVG dropped (len = %d)\n"
	.size	.L.str.23, 28

	.type	.L__func__.gimp_vectors_tree_view_drop_svg,@object # @__func__.gimp_vectors_tree_view_drop_svg
.L__func__.gimp_vectors_tree_view_drop_svg:
	.asciz	"gimp_vectors_tree_view_drop_svg"
	.size	.L__func__.gimp_vectors_tree_view_drop_svg, 32

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Path"
	.size	.L.str.24, 5

	.type	parent_view_iface,@object # @parent_view_iface
	.local	parent_view_iface
	.comm	parent_view_iface,8,8

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
