	.text
	.file	"gimpchanneltreeview.bc"
	.globl	gimp_channel_tree_view_get_type
	.align	16, 0x90
	.type	gimp_channel_tree_view_get_type,@function
gimp_channel_tree_view_get_type:        # @gimp_channel_tree_view_get_type
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
	movq	gimp_channel_tree_view_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_channel_tree_view_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_drawable_tree_view_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$1072, %edx             # imm = 0x430
	movabsq	$gimp_channel_tree_view_class_intern_init, %rdi
	movl	$344, %r8d              # imm = 0x158
	movabsq	$gimp_channel_tree_view_init, %rcx
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
	movabsq	$gimp_channel_tree_view_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_channel_tree_view_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_channel_tree_view_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_channel_tree_view_get_type, .Lfunc_end0-gimp_channel_tree_view_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_tree_view_class_intern_init,@function
gimp_channel_tree_view_class_intern_init: # @gimp_channel_tree_view_class_intern_init
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
	movq	%rax, gimp_channel_tree_view_parent_class
	cmpl	$0, GimpChannelTreeView_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpChannelTreeView_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_channel_tree_view_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_channel_tree_view_class_intern_init, .Lfunc_end1-gimp_channel_tree_view_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_tree_view_init,@function
gimp_channel_tree_view_init:            # @gimp_channel_tree_view_init
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_channel_tree_view_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	-8(%rbp), %rsi
	movq	%rax, 336(%rsi)
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movq	$0, 8(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_channel_tree_view_init, .Lfunc_end2-gimp_channel_tree_view_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_tree_view_view_iface_init,@function
gimp_channel_tree_view_view_iface_init: # @gimp_channel_tree_view_view_iface_init
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
	movabsq	$gimp_channel_tree_view_set_view_size, %rdi
	movabsq	$gimp_channel_tree_view_set_context, %rcx
	movq	%rax, parent_view_iface
	movq	-8(%rbp), %rax
	movq	%rcx, 48(%rax)
	movq	-8(%rbp), %rax
	movq	%rdi, 112(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_channel_tree_view_view_iface_init, .Lfunc_end3-gimp_channel_tree_view_view_iface_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_tree_view_class_init,@function
gimp_channel_tree_view_class_init:      # @gimp_channel_tree_view_class_init
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
	subq	$104, %rsp
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
	movabsq	$gimp_channel_tree_view_set_image, %rsi
	movabsq	$gimp_channel_tree_view_drop_component, %rdi
	movabsq	$gimp_channel_tree_view_drop_viewable, %rcx
	movabsq	$gimp_channel_tree_view_constructed, %rdx
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-64(%rbp), %rax
	movq	%rcx, 840(%rax)
	movq	-64(%rbp), %rax
	movq	%rdi, 872(%rax)
	movq	-72(%rbp), %rax
	movq	%rsi, 888(%rax)
	callq	gimp_channel_get_type
	movl	$16, %r8d
	movl	%r8d, %esi
	movabsq	$.L.str.11, %rcx
	movabsq	$.L.str.10, %rdx
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.8, %r9
	movabsq	$.L.str.7, %r10
	movabsq	$.L.str.6, %r11
	movabsq	$.L.str.5, %rbx
	movabsq	$.L.str.4, %r14
	movabsq	$.L.str.3, %r15
	movabsq	$.L.str.2, %r12
	movabsq	$gimp_channel_tree_view_item_new, %r13
	movabsq	$gimp_image_remove_channel, %r8
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movabsq	$gimp_image_add_channel, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movabsq	$gimp_image_set_active_channel, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movabsq	$gimp_image_get_active_channel, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movabsq	$gimp_image_get_channels, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movabsq	$.L.str.1, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	-72(%rbp), %rax
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, 896(%rax)
	movq	-72(%rbp), %rax
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 904(%rax)
	movq	-72(%rbp), %rax
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 912(%rax)
	movq	-72(%rbp), %rax
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 920(%rax)
	movq	-72(%rbp), %rax
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 928(%rax)
	movq	-72(%rbp), %rax
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 936(%rax)
	movq	-72(%rbp), %rax
	movq	%r8, 944(%rax)
	movq	-72(%rbp), %rax
	movq	%r13, 952(%rax)
	movq	-72(%rbp), %rax
	movq	%r12, 960(%rax)
	movq	-72(%rbp), %rax
	movq	%r15, 968(%rax)
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
	movq	%rdi, 1024(%rax)
	movq	-72(%rbp), %rax
	movq	%rdx, 1032(%rax)
	movq	-72(%rbp), %rax
	movq	-144(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, 1040(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_channel_tree_view_class_init, .Lfunc_end4-gimp_channel_tree_view_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_tree_view_constructed,@function
gimp_channel_tree_view_constructed:     # @gimp_channel_tree_view_constructed
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
	subq	$232, %rsp
.Ltmp23:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_channel_tree_view_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -32(%rbp)
	movq	gimp_channel_tree_view_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_channel_tree_view_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-16(%rbp), %rdi
	callq	*%rax
.LBB5_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_widget_get_modifier_mask
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %esi
	movq	%rax, %rdi
	callq	gtk_widget_get_modifier_mask
	movl	%eax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	288(%rdi), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-32(%rbp), %rsi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-96(%rbp), %rcx         # 8-byte Reload
	callq	gimp_dnd_viewable_dest_add
	movq	-32(%rbp), %rcx
	movq	288(%rcx), %rcx
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_layer_mask_get_type
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	-32(%rbp), %rcx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dnd_viewable_dest_add
	movq	-32(%rbp), %rcx
	movq	288(%rcx), %rcx
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	-32(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	gimp_dnd_component_dest_add
	movq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.2, %rsi
	movabsq	$.L.str.12, %rdx
	movabsq	$.L.str.13, %rcx
	movabsq	$.L.str.14, %r9
	movabsq	$.L.str.15, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movl	-36(%rbp), %r8d
	movl	-40(%rbp), %r11d
	movl	-36(%rbp), %ebx
	orl	-40(%rbp), %ebx
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%r11d, (%rsp)
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	movq	%r10, -160(%rbp)        # 8-byte Spill
	callq	gimp_editor_add_action_button
	movq	-24(%rbp), %rcx
	movq	336(%rcx), %rcx
	movq	%rax, 8(%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rcx
	movq	336(%rcx), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	callq	gtk_button_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	-192(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_container_view_enable_dnd
	movq	-24(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_button_box
	movl	$5, %edx
	movq	-24(%rbp), %rcx
	movq	336(%rcx), %rcx
	movq	8(%rcx), %rsi
	movq	%rax, %rdi
	callq	gtk_box_reorder_child
	addq	$232, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_channel_tree_view_constructed, .Lfunc_end5-gimp_channel_tree_view_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_tree_view_drop_viewable,@function
gimp_channel_tree_view_drop_viewable:   # @gimp_channel_tree_view_drop_viewable
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_tree_view_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_item_tree_view_get_image
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB6_7
.LBB6_2:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_5
# BB#3:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB6_5
# BB#4:                                 # %if.then.7
	movl	$1, -76(%rbp)
	jmp	.LBB6_6
.LBB6_5:                                # %if.else.8
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB6_6:                                # %if.end
	jmp	.LBB6_7
.LBB6_7:                                # %if.end.10
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB6_11
# BB#8:                                 # %land.lhs.true.12
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB6_10
# BB#9:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rcx
	cmpq	896(%rcx), %rax
	je	.LBB6_11
.LBB6_10:                               # %if.then.20
	leaq	-96(%rbp), %rax
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movq	%rax, %rcx
	callq	gimp_item_tree_view_get_drop_index
	movl	%eax, -100(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_item_tree_view_get_image
	movq	-56(%rbp), %rcx
	movq	896(%rcx), %rdx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_item_convert
	xorl	%r8d, %r8d
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	movl	%r8d, %esi
	movl	%r8d, %edx
	callq	gimp_item_set_linked
	movl	$1, %r8d
	movq	-56(%rbp), %rax
	movq	936(%rax), %rax
	movq	-48(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	-96(%rbp), %rdx
	movl	-100(%rbp), %ecx
	callq	*%rax
	movq	-48(%rbp), %rdi
	callq	gimp_image_flush
	jmp	.LBB6_12
.LBB6_11:                               # %if.end.30
	movq	gimp_channel_tree_view_parent_class, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	840(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	callq	*%rax
.LBB6_12:                               # %return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_channel_tree_view_drop_viewable, .Lfunc_end6-gimp_channel_tree_view_drop_viewable
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_tree_view_drop_component,@function
gimp_channel_tree_view_drop_component:  # @gimp_channel_tree_view_drop_component
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_tree_view_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_item_tree_view_get_image
	leaq	-72(%rbp), %rcx
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-36(%rbp), %edx
	callq	gimp_item_tree_view_get_drop_index
	movl	%eax, -76(%rbp)
	callq	gimp_channel_type_get_type
	xorl	%edx, %edx
	movl	%edx, %ecx
	leaq	-88(%rbp), %r8
	movl	-20(%rbp), %esi
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movq	-112(%rbp), %r9         # 8-byte Reload
	callq	gimp_enum_get_value
	movabsq	$.L.str.16, %rdi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movq	%rax, -96(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movq	-96(%rbp), %rdx
	callq	gimp_channel_new_from_component
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r10d, %r10d
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movl	%r10d, %esi
	movl	%r10d, %edx
	callq	gimp_item_set_visible
	movq	-96(%rbp), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	352(%rax), %rax
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	*%rax
.LBB7_2:                                # %if.end
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r8d
	movq	-72(%rbp), %rdx
	movl	-76(%rbp), %ecx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_add_channel
	movq	-56(%rbp), %rdi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	gimp_image_flush
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_channel_tree_view_drop_component, .Lfunc_end7-gimp_channel_tree_view_drop_component
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_tree_view_set_image,@function
gimp_channel_tree_view_set_image:       # @gimp_channel_tree_view_set_image
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_channel_tree_view_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	cmpq	$0, (%rax)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_container_view_get_view_size
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %edi
	movq	-8(%rbp), %rsi
	movl	%edi, -60(%rbp)         # 4-byte Spill
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_menu_factory
	movl	-60(%rbp), %edi         # 4-byte Reload
	movq	%rax, %rsi
	callq	gimp_component_editor_new
	movq	-24(%rbp), %rsi
	movq	336(%rsi), %rsi
	movq	%rax, (%rsi)
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_docked_interface_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_container_view_get_context
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_docked_set_context
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	336(%rsi), %rsi
	movq	(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	movl	-100(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-24(%rbp), %rsi
	movq	336(%rsi), %rsi
	movq	(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_box_reorder_child
.LBB8_2:                                # %if.end
	cmpq	$0, -16(%rbp)
	jne	.LBB8_4
# BB#3:                                 # %if.then.25
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_hide
.LBB8_4:                                # %if.end.28
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_image_editor_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_image_editor_set_image
	movq	gimp_channel_tree_view_parent_class, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_tree_view_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	888(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-8(%rbp), %rdi
	callq	gimp_item_tree_view_get_image
	cmpq	$0, %rax
	je	.LBB8_6
# BB#5:                                 # %if.then.37
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_show
.LBB8_6:                                # %if.end.40
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_channel_tree_view_set_image, .Lfunc_end8-gimp_channel_tree_view_set_image
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_channel_tree_view_item_new,@function
gimp_channel_tree_view_item_new:        # @gimp_channel_tree_view_item_new
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
	subq	$112, %rsp
	leaq	-48(%rbp), %rax
	xorps	%xmm0, %xmm0
	movsd	.LCPI9_0, %xmm3         # xmm3 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_rgba_set
	movabsq	$.L.str.17, %rdi
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$29, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gimp_image_get_width
	movq	-8(%rbp), %rdi
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	gimp_image_get_height
	movabsq	$.L.str.18, %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gettext
	leaq	-48(%rbp), %r8
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	-80(%rbp), %esi         # 4-byte Reload
	movl	-84(%rbp), %edx         # 4-byte Reload
	movq	%rax, %rcx
	callq	gimp_channel_new
	movl	$1, %edx
                                        # kill: RDX<def> EDX<kill>
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$1, %r8d
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_image_add_channel
	movq	-8(%rbp), %rdi
	movl	%eax, -88(%rbp)         # 4-byte Spill
	callq	gimp_image_undo_group_end
	movq	-16(%rbp), %rdx
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_channel_tree_view_item_new, .Lfunc_end9-gimp_channel_tree_view_item_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_tree_view_set_context,@function
gimp_channel_tree_view_set_context:     # @gimp_channel_tree_view_set_context
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_channel_tree_view_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	parent_view_iface, %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB10_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_docked_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_docked_set_context
.LBB10_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_channel_tree_view_set_context, .Lfunc_end10-gimp_channel_tree_view_set_context
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_channel_tree_view_set_view_size,@function
gimp_channel_tree_view_set_view_size:   # @gimp_channel_tree_view_set_view_size
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_channel_tree_view_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	parent_view_iface, %rax
	movq	112(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_container_view_get_view_size
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rsi
	movq	336(%rsi), %rsi
	cmpq	$0, (%rsi)
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	336(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_component_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-20(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_component_editor_set_view_size
.LBB11_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_channel_tree_view_set_view_size, .Lfunc_end11-gimp_channel_tree_view_set_view_size
	.cfi_endproc

	.type	gimp_channel_tree_view_get_type.g_define_type_id__volatile,@object # @gimp_channel_tree_view_get_type.g_define_type_id__volatile
	.local	gimp_channel_tree_view_get_type.g_define_type_id__volatile
	.comm	gimp_channel_tree_view_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpChannelTreeView"
	.size	.L.str, 20

	.type	gimp_channel_tree_view_get_type.g_implement_interface_info,@object # @gimp_channel_tree_view_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_channel_tree_view_get_type.g_implement_interface_info:
	.quad	gimp_channel_tree_view_view_iface_init
	.quad	0
	.quad	0
	.size	gimp_channel_tree_view_get_type.g_implement_interface_info, 24

	.type	gimp_channel_tree_view_parent_class,@object # @gimp_channel_tree_view_parent_class
	.local	gimp_channel_tree_view_parent_class
	.comm	gimp_channel_tree_view_parent_class,8,8
	.type	GimpChannelTreeView_private_offset,@object # @GimpChannelTreeView_private_offset
	.local	GimpChannelTreeView_private_offset
	.comm	GimpChannelTreeView_private_offset,4,4
	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"active-channel-changed"
	.size	.L.str.1, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"channels"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"channels-edit-attributes"
	.size	.L.str.3, 25

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"channels-new"
	.size	.L.str.4, 13

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"channels-new-last-values"
	.size	.L.str.5, 25

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"channels-raise"
	.size	.L.str.6, 15

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"channels-raise-to-top"
	.size	.L.str.7, 22

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"channels-lower"
	.size	.L.str.8, 15

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"channels-lower-to-bottom"
	.size	.L.str.9, 25

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"channels-duplicate"
	.size	.L.str.10, 19

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"channels-delete"
	.size	.L.str.11, 16

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"channels-selection-replace"
	.size	.L.str.12, 27

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"channels-selection-add"
	.size	.L.str.13, 23

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"channels-selection-subtract"
	.size	.L.str.14, 28

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"channels-selection-intersect"
	.size	.L.str.15, 29

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"%s Channel Copy"
	.size	.L.str.16, 16

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"New Channel"
	.size	.L.str.17, 12

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Channel"
	.size	.L.str.18, 8

	.type	parent_view_iface,@object # @parent_view_iface
	.local	parent_view_iface
	.comm	parent_view_iface,8,8

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
