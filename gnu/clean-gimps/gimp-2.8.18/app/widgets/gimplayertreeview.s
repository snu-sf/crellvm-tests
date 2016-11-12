	.text
	.file	"gimplayertreeview.bc"
	.globl	gimp_layer_tree_view_get_type
	.align	16, 0x90
	.type	gimp_layer_tree_view_get_type,@function
gimp_layer_tree_view_get_type:          # @gimp_layer_tree_view_get_type
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
	movq	gimp_layer_tree_view_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_layer_tree_view_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_layer_tree_view_class_intern_init, %rdi
	movl	$344, %r8d              # imm = 0x158
	movabsq	$gimp_layer_tree_view_init, %rcx
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
	movabsq	$gimp_layer_tree_view_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_layer_tree_view_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_layer_tree_view_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_layer_tree_view_get_type, .Lfunc_end0-gimp_layer_tree_view_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_tree_view_class_intern_init,@function
gimp_layer_tree_view_class_intern_init: # @gimp_layer_tree_view_class_intern_init
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
	movq	%rax, gimp_layer_tree_view_parent_class
	cmpl	$0, GimpLayerTreeView_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpLayerTreeView_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_layer_tree_view_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_layer_tree_view_class_intern_init, .Lfunc_end1-gimp_layer_tree_view_class_intern_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4636737291354636288     # double 100
.LCPI2_1:
	.quad	4607182418800017408     # double 1
.LCPI2_2:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	gimp_layer_tree_view_init,@function
gimp_layer_tree_view_init:              # @gimp_layer_tree_view_init
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
	subq	$240, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_layer_tree_view_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	-8(%rbp), %rsi
	movq	%rax, 336(%rsi)
	movq	-16(%rbp), %rax
	addq	$160, %rax
	movq	-16(%rbp), %rsi
	addq	$152, %rsi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gimp_view_renderer_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_container_tree_store_columns_add
	movl	$20, %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rsi
	movq	336(%rsi), %rsi
	movl	%eax, 24(%rsi)
	movq	-16(%rbp), %rsi
	addq	$160, %rsi
	movq	-16(%rbp), %rdi
	addq	$152, %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-96(%rbp), %rsi         # 8-byte Reload
	callq	gimp_container_tree_store_columns_add
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdx
	movq	336(%rdx), %rdx
	movl	%eax, 28(%rdx)
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gimp_paint_mode_menu_new
	movq	-8(%rbp), %rdx
	movq	336(%rdx), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_tree_view_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.37, %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-8(%rbp), %rdx
	movq	336(%rdx), %rdx
	movq	(%rdx), %rdx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_item_tree_view_add_options
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movabsq	$gimp_layer_tree_view_paint_mode_menu_callback, %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-128(%rbp), %rcx        # 8-byte Reload
	callq	gimp_int_combo_box_connect
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.38, %rdx
	movq	-8(%rbp), %rcx
	movq	336(%rcx), %rcx
	movq	(%rcx), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_help_set_help_data
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	.LCPI2_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI2_2, %xmm4         # xmm4 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	movsd	%xmm1, -152(%rbp)       # 8-byte Spill
	movsd	-144(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-152(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	callq	gtk_adjustment_new
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.39, %rdi
	movq	-8(%rbp), %rcx
	movq	336(%rcx), %rcx
	movq	%rax, 8(%rcx)
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edx
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_spin_scale_new
	xorl	%edx, %edx
	movl	%edx, %esi
	movabsq	$.L.str.40, %rdx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_help_set_help_data
	movq	-8(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_item_tree_view_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_tree_view_add_options
	movabsq	$.L.str.41, %rsi
	movabsq	$gimp_layer_tree_view_opacity_scale_changed, %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rcx
	movq	336(%rcx), %rcx
	movq	8(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-184(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-8(%rbp), %rcx
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	callq	gimp_item_tree_view_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_tree_view_get_lock_box
	movq	%rax, -32(%rbp)
	callq	gtk_toggle_button_new
	movq	-8(%rbp), %rcx
	movq	336(%rcx), %rcx
	movq	%rax, 16(%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rcx
	movq	336(%rcx), %rcx
	movq	16(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.42, %rsi
	movabsq	$gimp_layer_tree_view_lock_alpha_button_toggled, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	336(%rdi), %rdi
	movq	16(%rdi), %rdi
	movq	-8(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.43, %rdi
	movq	-8(%rbp), %rcx
	movq	336(%rcx), %rcx
	movq	16(%rcx), %rcx
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.44, %rdx
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movq	-8(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.45, %rsi
	leaq	-44(%rbp), %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_widget_style_get
	movabsq	$.L.str.46, %rdi
	movl	-44(%rbp), %esi
	callq	gtk_image_new_from_stock
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	callq	pango_attr_list_new
	movl	$2, %edi
	movq	-8(%rbp), %rcx
	movq	336(%rcx), %rcx
	movq	%rax, 40(%rcx)
	callq	pango_attr_style_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-56(%rbp), %rax
	movl	$-1, 12(%rax)
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movq	40(%rax), %rdi
	movq	-56(%rbp), %rsi
	callq	pango_attr_list_insert
	callq	pango_attr_list_new
	movl	$700, %edi              # imm = 0x2BC
	movq	-8(%rbp), %rcx
	movq	336(%rcx), %rcx
	movq	%rax, 48(%rcx)
	callq	pango_attr_weight_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-56(%rbp), %rax
	movl	$-1, 12(%rax)
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movq	48(%rax), %rdi
	movq	-56(%rbp), %rsi
	callq	pango_attr_list_insert
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_layer_tree_view_init, .Lfunc_end2-gimp_layer_tree_view_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_tree_view_view_iface_init,@function
gimp_layer_tree_view_view_iface_init:   # @gimp_layer_tree_view_view_iface_init
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
	movabsq	$gimp_layer_tree_view_set_view_size, %rdi
	movabsq	$gimp_layer_tree_view_select_item, %rcx
	movabsq	$gimp_layer_tree_view_insert_item, %rdx
	movabsq	$gimp_layer_tree_view_set_context, %rsi
	movabsq	$gimp_layer_tree_view_set_container, %r8
	movq	%rax, parent_view_iface
	movq	-8(%rbp), %rax
	movq	%r8, 40(%rax)
	movq	-8(%rbp), %rax
	movq	%rsi, 48(%rax)
	movq	-8(%rbp), %rax
	movq	%rdx, 64(%rax)
	movq	-8(%rbp), %rax
	movq	%rcx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	%rdi, 112(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 136(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_layer_tree_view_view_iface_init, .Lfunc_end3-gimp_layer_tree_view_view_iface_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_tree_view_class_init,@function
gimp_layer_tree_view_class_init:        # @gimp_layer_tree_view_class_init
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
	movabsq	$gimp_layer_tree_view_drop_pixbuf, %rsi
	movabsq	$gimp_layer_tree_view_drop_component, %rdi
	movabsq	$gimp_layer_tree_view_drop_uri_list, %rcx
	movabsq	$gimp_layer_tree_view_drop_color, %rdx
	movabsq	$gimp_layer_tree_view_drop_possible, %r8
	movabsq	$gimp_layer_tree_view_finalize, %r9
	movabsq	$gimp_layer_tree_view_constructed, %r10
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%r10, 72(%rax)
	movq	-56(%rbp), %rax
	movq	%r9, 48(%rax)
	movq	-64(%rbp), %rax
	movq	%r8, 832(%rax)
	movq	-64(%rbp), %rax
	movq	%rdx, 848(%rax)
	movq	-64(%rbp), %rax
	movq	%rcx, 856(%rax)
	movq	-64(%rbp), %rax
	movq	%rdi, 872(%rax)
	movq	-64(%rbp), %rax
	movq	%rsi, 880(%rax)
	callq	gimp_layer_get_type
	movl	$96, %r11d
	movl	%r11d, %esi
	movabsq	$.L.str.12, %rcx
	movabsq	$.L.str.11, %rdx
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.9, %r8
	movabsq	$.L.str.8, %r9
	movabsq	$.L.str.7, %r10
	movabsq	$.L.str.6, %rbx
	movabsq	$.L.str.5, %r14
	movabsq	$.L.str.4, %r15
	movabsq	$.L.str.3, %r12
	movabsq	$.L.str.2, %r13
	movabsq	$gimp_layer_tree_view_item_new, %r11
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movabsq	$gimp_image_remove_layer, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movabsq	$gimp_image_add_layer, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movabsq	$gimp_image_set_active_layer, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movabsq	$gimp_image_get_active_layer, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movabsq	$gimp_image_get_layers, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movabsq	$gimp_layer_tree_view_set_image, %rax
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
	movq	%rcx, 888(%rax)
	movq	-72(%rbp), %rax
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 912(%rax)
	movq	-72(%rbp), %rax
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 920(%rax)
	movq	-72(%rbp), %rax
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 928(%rax)
	movq	-72(%rbp), %rax
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 936(%rax)
	movq	-72(%rbp), %rax
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 944(%rax)
	movq	-72(%rbp), %rax
	movq	%r11, 952(%rax)
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
	movq	%r10, 1000(%rax)
	movq	-72(%rbp), %rax
	movq	%r9, 1008(%rax)
	movq	-72(%rbp), %rax
	movq	%r8, 1016(%rax)
	movq	-72(%rbp), %rax
	movq	%rdi, 1024(%rax)
	movq	-72(%rbp), %rax
	movq	%rdx, 1032(%rax)
	movq	-72(%rbp), %rax
	movq	-160(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, 1040(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_layer_tree_view_class_init, .Lfunc_end4-gimp_layer_tree_view_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_tree_view_constructed,@function
gimp_layer_tree_view_constructed:       # @gimp_layer_tree_view_constructed
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
	subq	$240, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_layer_tree_view_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	gimp_layer_tree_view_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_layer_tree_view_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB5_2:                                # %if.end
	callq	gimp_cell_renderer_viewable_new
	xorl	%edx, %edx
	movq	-24(%rbp), %rcx
	movq	336(%rcx), %rcx
	movq	%rax, 32(%rcx)
	movq	-16(%rbp), %rax
	movq	296(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	movq	32(%rax), %rsi
	callq	gtk_tree_view_column_pack_start
	movabsq	$.L.str.13, %rdx
	movabsq	$.L.str.14, %r8
	xorl	%r9d, %r9d
	movl	%r9d, %eax
	movq	-16(%rbp), %rcx
	movq	296(%rcx), %rdi
	movq	-24(%rbp), %rcx
	movq	336(%rcx), %rcx
	movq	32(%rcx), %rsi
	movq	-24(%rbp), %rcx
	movq	336(%rcx), %rcx
	movl	24(%rcx), %ecx
	movq	-24(%rbp), %r10
	movq	336(%r10), %r10
	movl	28(%r10), %r9d
	movq	$0, (%rsp)
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movb	$0, %al
	callq	gtk_tree_view_column_set_attributes
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	336(%rdx), %rdx
	movq	32(%rdx), %rsi
	callq	gimp_container_tree_view_add_renderer_cell
	movabsq	$.L.str.15, %rsi
	movabsq	$gimp_layer_tree_view_layer_clicked, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	304(%rdi), %rdi
	movq	-24(%rbp), %r10
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.15, %rsi
	movabsq	$gimp_layer_tree_view_mask_clicked, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	336(%rdx), %rdx
	movq	32(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movq	-16(%rbp), %rcx
	movq	288(%rcx), %rcx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	gimp_dnd_component_dest_add
	movq	-16(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-16(%rbp), %rcx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dnd_viewable_dest_add
	movq	-16(%rbp), %rcx
	movq	288(%rcx), %rcx
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_layer_mask_get_type
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-16(%rbp), %rcx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dnd_viewable_dest_add
	movq	-16(%rbp), %rcx
	movq	288(%rcx), %rcx
	movl	%eax, -132(%rbp)        # 4-byte Spill
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	gimp_dnd_uri_list_dest_add
	movq	-16(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	gimp_dnd_pixbuf_dest_add
	movq	-24(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_item_tree_view_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_tree_view_get_edit_button
	movq	%rax, %rdi
	callq	gtk_widget_hide
	movq	-24(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.2, %rsi
	movabsq	$.L.str.16, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_button_box
	movl	$2, %edx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_box_reorder_child
	movq	-24(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.2, %rsi
	movabsq	$.L.str.17, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rcx
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	callq	gtk_button_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	-216(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_container_view_enable_dnd
	movq	-24(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_button_box
	movl	$6, %edx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_box_reorder_child
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_layer_tree_view_constructed, .Lfunc_end5-gimp_layer_tree_view_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_tree_view_finalize,@function
gimp_layer_tree_view_finalize:          # @gimp_layer_tree_view_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_layer_tree_view_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	336(%rax), %rax
	cmpq	$0, 40(%rax)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	336(%rax), %rax
	movq	40(%rax), %rdi
	callq	pango_attr_list_unref
	movq	-16(%rbp), %rax
	movq	336(%rax), %rax
	movq	$0, 40(%rax)
.LBB6_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	336(%rax), %rax
	cmpq	$0, 48(%rax)
	je	.LBB6_4
# BB#3:                                 # %if.then.8
	movq	-16(%rbp), %rax
	movq	336(%rax), %rax
	movq	48(%rax), %rdi
	callq	pango_attr_list_unref
	movq	-16(%rbp), %rax
	movq	336(%rax), %rax
	movq	$0, 48(%rax)
.LBB6_4:                                # %if.end.13
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_layer_tree_view_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_layer_tree_view_finalize, .Lfunc_end6-gimp_layer_tree_view_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_tree_view_drop_possible,@function
gimp_layer_tree_view_drop_possible:     # @gimp_layer_tree_view_drop_possible
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
	subq	$144, %rsp
	movq	24(%rbp), %rax
	movq	16(%rbp), %r10
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movq	%r10, -64(%rbp)
	movq	%rax, -72(%rbp)
	cmpl	$1, -20(%rbp)
	je	.LBB7_13
# BB#1:                                 # %lor.lhs.false
	cmpl	$2, -20(%rbp)
	je	.LBB7_13
# BB#2:                                 # %lor.lhs.false.2
	cmpl	$3, -20(%rbp)
	je	.LBB7_13
# BB#3:                                 # %lor.lhs.false.4
	cmpl	$10, -20(%rbp)
	je	.LBB7_13
# BB#4:                                 # %lor.lhs.false.6
	cmpl	$8, -20(%rbp)
	je	.LBB7_13
# BB#5:                                 # %lor.lhs.false.8
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB7_7
# BB#6:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB7_12
.LBB7_7:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_10
# BB#8:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB7_10
# BB#9:                                 # %if.then.12
	movl	$1, -92(%rbp)
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.13
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB7_11:                               # %if.end
	jmp	.LBB7_12
.LBB7_12:                               # %if.end.15
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB7_16
.LBB7_13:                               # %if.then.17
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_tree_view_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_tree_view_get_image
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
	callq	gimp_image_get_floating_selection
	cmpq	$0, %rax
	je	.LBB7_15
# BB#14:                                # %if.then.24
	movl	$0, -4(%rbp)
	jmp	.LBB7_17
.LBB7_15:                               # %if.end.25
	jmp	.LBB7_16
.LBB7_16:                               # %if.end.26
	movq	gimp_layer_tree_view_parent_class, %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	832(%rax), %rax
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	movl	-52(%rbp), %r9d
	movq	-64(%rbp), %r10
	movq	-72(%rbp), %r11
	movq	%r10, (%rsp)
	movq	%r11, 8(%rsp)
	callq	*%rax
	movl	%eax, -4(%rbp)
.LBB7_17:                               # %return
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_layer_tree_view_drop_possible, .Lfunc_end7-gimp_layer_tree_view_drop_possible
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_tree_view_drop_color,@function
gimp_layer_tree_view_drop_color:        # @gimp_layer_tree_view_drop_color
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_text_layer
	cmpl	$0, %eax
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_text_layer_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.21, %rdx
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	-56(%rbp), %r8          # 8-byte Reload
	movb	$0, %al
	callq	gimp_text_layer_set
	movq	-8(%rbp), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	gimp_item_tree_view_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_tree_view_get_image
	movq	%rax, %rdi
	callq	gimp_image_flush
	jmp	.LBB8_3
.LBB8_2:                                # %if.end
	movq	gimp_layer_tree_view_parent_class, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	848(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	callq	*%rax
.LBB8_3:                                # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_layer_tree_view_drop_color, .Lfunc_end8-gimp_layer_tree_view_drop_color
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_tree_view_drop_uri_list,@function
gimp_layer_tree_view_drop_uri_list:     # @gimp_layer_tree_view_drop_uri_list
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
	subq	$272, %rsp              # imm = 0x110
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_tree_view_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_item_tree_view_get_image
	leaq	-64(%rbp), %rdx
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %ecx
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movl	%ecx, %edx
	movq	-144(%rbp), %rcx        # 8-byte Reload
	callq	gimp_item_tree_view_get_drop_index
	movl	%eax, -68(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -80(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB9_12
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	$0, -112(%rbp)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_container_view_get_context
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r8d, %r8d
	leaq	-100(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	movq	-56(%rbp), %rcx
	movq	-88(%rbp), %r9
	movq	-152(%rbp), %r10        # 8-byte Reload
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	-168(%rbp), %r11        # 8-byte Reload
	movq	%r11, 24(%rsp)
	callq	file_open_layers
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB9_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-56(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movl	-68(%rbp), %ecx
	movq	-56(%rbp), %rax
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	callq	gimp_image_get_width
	movq	-56(%rbp), %rdi
	movl	%eax, -204(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	movabsq	$.L.str.22, %rdi
	movl	%eax, -208(%rbp)        # 4-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	-192(%rbp), %rsi        # 8-byte Reload
	movq	-200(%rbp), %rdx        # 8-byte Reload
	movl	-180(%rbp), %r8d        # 4-byte Reload
	movl	%ecx, -212(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-212(%rbp), %r8d        # 4-byte Reload
	movl	-212(%rbp), %r9d        # 4-byte Reload
	movl	-204(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, (%rsp)
	movl	-208(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, 8(%rsp)
	movq	%rax, 16(%rsp)
	callq	gimp_image_add_layers
	movq	-96(%rbp), %rdi
	callq	g_list_length
	addl	-68(%rbp), %eax
	movl	%eax, -68(%rbp)
	movq	-96(%rbp), %rdi
	callq	g_list_free
	jmp	.LBB9_7
.LBB9_4:                                # %if.else
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpl	$4, -100(%rbp)
	je	.LBB9_6
# BB#5:                                 # %if.then.13
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-88(%rbp), %rdi
	callq	file_utils_uri_display_name
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -120(%rbp)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.23, %rdi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$2, %edx
	movq	-120(%rbp), %r8
	movq	-112(%rbp), %rsi
	movq	8(%rsi), %r9
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	-232(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	gimp_message
	leaq	-112(%rbp), %rdi
	callq	g_clear_error
	movq	-120(%rbp), %rdi
	callq	g_free
.LBB9_6:                                # %if.end
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_7
.LBB9_7:                                # %if.end.18
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_8
.LBB9_8:                                # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB9_10
# BB#9:                                 # %cond.true
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jmp	.LBB9_11
.LBB9_10:                               # %cond.false
                                        #   in Loop: Header=BB9_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	jmp	.LBB9_11
.LBB9_11:                               # %cond.end
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	%rax, -80(%rbp)
	jmp	.LBB9_1
.LBB9_12:                               # %for.end
	movq	-56(%rbp), %rdi
	callq	gimp_image_flush
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_layer_tree_view_drop_uri_list, .Lfunc_end9-gimp_layer_tree_view_drop_uri_list
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_tree_view_drop_component,@function
gimp_layer_tree_view_drop_component:    # @gimp_layer_tree_view_drop_component
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
	subq	$192, %rsp
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
	leaq	-80(%rbp), %rcx
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-36(%rbp), %edx
	callq	gimp_item_tree_view_get_drop_index
	xorl	%edx, %edx
	movl	%edx, %ecx
	movl	%eax, -84(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movq	%rcx, %rdx
	callq	gimp_channel_new_from_component
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_item_convert
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	callq	gimp_channel_type_get_type
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	leaq	-96(%rbp), %r8
	movl	-20(%rbp), %esi
	movq	%rax, %rdi
	movq	%rcx, %rdx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	movq	-136(%rbp), %r9         # 8-byte Reload
	callq	gimp_enum_get_value
	movq	-72(%rbp), %rcx
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.24, %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_object_take_name
	movq	-56(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r8d
	movq	-80(%rbp), %rdx
	movl	-84(%rbp), %ecx
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_add_layer
	movq	-56(%rbp), %rdi
	movl	%eax, -180(%rbp)        # 4-byte Spill
	callq	gimp_image_flush
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_layer_tree_view_drop_component, .Lfunc_end10-gimp_layer_tree_view_drop_component
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI11_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_layer_tree_view_drop_pixbuf,@function
gimp_layer_tree_view_drop_pixbuf:       # @gimp_layer_tree_view_drop_pixbuf
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_tree_view_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_item_tree_view_get_image
	leaq	-64(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %ecx
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movl	%ecx, %edx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	callq	gimp_item_tree_view_get_drop_index
	movl	%eax, -68(%rbp)
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-48(%rbp), %rcx
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gimp_image_base_type_with_alpha
	movabsq	$.L.str.25, %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	gettext
	movsd	.LCPI11_0, %xmm0        # xmm0 = mem[0],zero
	xorl	%r8d, %r8d
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movl	-108(%rbp), %edx        # 4-byte Reload
	movq	%rax, %rcx
	callq	gimp_layer_new_from_pixbuf
	movl	$1, %r8d
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movl	-68(%rbp), %ecx
	callq	gimp_image_add_layer
	movq	-48(%rbp), %rdi
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	gimp_image_flush
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_layer_tree_view_drop_pixbuf, .Lfunc_end11-gimp_layer_tree_view_drop_pixbuf
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_tree_view_set_image,@function
gimp_layer_tree_view_set_image:         # @gimp_layer_tree_view_set_image
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_item_tree_view_get_image
	cmpq	$0, %rax
	je	.LBB12_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gimp_item_tree_view_get_image
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_layer_tree_view_floating_selection_changed, %rdi
	movq	-8(%rbp), %r9
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %edx
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	%r9, -32(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB12_2:                               # %if.end
	movq	gimp_layer_tree_view_parent_class, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_item_tree_view_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	888(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-8(%rbp), %rdi
	callq	gimp_item_tree_view_get_image
	cmpq	$0, %rax
	je	.LBB12_4
# BB#3:                                 # %if.then.7
	movq	-8(%rbp), %rdi
	callq	gimp_item_tree_view_get_image
	movabsq	$.L.str.26, %rsi
	movabsq	$gimp_layer_tree_view_floating_selection_changed, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB12_4:                               # %if.end.10
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_layer_tree_view_set_image, .Lfunc_end12-gimp_layer_tree_view_set_image
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_layer_tree_view_item_new,@function
gimp_layer_tree_view_item_new:          # @gimp_layer_tree_view_item_new
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
	subq	$64, %rsp
	movabsq	$.L.str.27, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gettext
	movl	$29, %esi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	gimp_image_get_width
	movq	-8(%rbp), %rdi
	movl	%eax, -40(%rbp)         # 4-byte Spill
	callq	gimp_image_get_height
	movq	-8(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gimp_image_base_type_with_alpha
	xorl	%esi, %esi
	movl	%esi, %r8d
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movl	-40(%rbp), %esi         # 4-byte Reload
	movl	-44(%rbp), %edx         # 4-byte Reload
	movl	%eax, %ecx
	callq	gimp_layer_new
	movl	$1, %ecx
	movl	%ecx, %edx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$1, %r8d
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_image_add_layer
	movq	-8(%rbp), %rdi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	gimp_image_undo_group_end
	movq	-16(%rbp), %rdx
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_layer_tree_view_item_new, .Lfunc_end13-gimp_layer_tree_view_item_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_tree_view_layer_clicked,@function
gimp_layer_tree_view_layer_clicked:     # @gimp_layer_tree_view_layer_clicked
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_tree_path_new_from_string
	leaq	-80(%rbp), %rsi
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	144(%rax), %rdi
	movq	-48(%rbp), %rdx
	callq	gtk_tree_model_get_iter
	cmpl	$0, %eax
	je	.LBB14_6
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_ui_manager
	movabsq	$.L.str.2, %rsi
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	gimp_ui_manager_get_action_group
	leaq	-80(%rbp), %rsi
	leaq	-104(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, -96(%rbp)
	movq	-40(%rbp), %rax
	movq	144(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	336(%rax), %rax
	movl	24(%rax), %edx
	movb	$0, %al
	callq	gtk_tree_model_get
	cmpq	$0, -104(%rbp)
	je	.LBB14_5
# BB#2:                                 # %if.then.10
	movq	-104(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_layer_mask_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	callq	gimp_layer_mask_get_edit
	cmpl	$0, %eax
	je	.LBB14_4
# BB#3:                                 # %if.then.15
	movabsq	$.L.str.18, %rsi
	xorl	%edx, %edx
	movq	-96(%rbp), %rdi
	callq	gimp_action_group_set_action_active
.LBB14_4:                               # %if.end
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB14_5:                               # %if.end.16
	jmp	.LBB14_6
.LBB14_6:                               # %if.end.17
	movq	-48(%rbp), %rdi
	callq	gtk_tree_path_free
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_layer_tree_view_layer_clicked, .Lfunc_end14-gimp_layer_tree_view_layer_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_tree_view_mask_clicked,@function
gimp_layer_tree_view_mask_clicked:      # @gimp_layer_tree_view_mask_clicked
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_tree_path_new_from_string
	leaq	-80(%rbp), %rsi
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	144(%rax), %rdi
	movq	-48(%rbp), %rdx
	callq	gtk_tree_model_get_iter
	cmpl	$0, %eax
	je	.LBB15_12
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_ui_manager
	movabsq	$.L.str.2, %rsi
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	gimp_ui_manager_get_action_group
	leaq	-80(%rbp), %rsi
	leaq	-88(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, -104(%rbp)
	movq	-40(%rbp), %rax
	movq	144(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	336(%rax), %rax
	movl	24(%rax), %edx
	movb	$0, %al
	callq	gtk_tree_model_get
	cmpq	$0, -88(%rbp)
	je	.LBB15_11
# BB#2:                                 # %if.then.10
	movq	-88(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_layer_mask_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -112(%rbp)
	movl	-20(%rbp), %ecx
	andl	$8, %ecx
	cmpl	$0, %ecx
	je	.LBB15_4
# BB#3:                                 # %if.then.14
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rax
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_layer_mask_get_show
	movabsq	$.L.str.19, %rsi
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_active
	jmp	.LBB15_10
.LBB15_4:                               # %if.else
	movl	-20(%rbp), %eax
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	gimp_get_toggle_behavior_mask
	movl	-148(%rbp), %ecx        # 4-byte Reload
	andl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB15_6
# BB#5:                                 # %if.then.20
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rax
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_layer_mask_get_apply
	movabsq	$.L.str.20, %rsi
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %edx
	callq	gimp_action_group_set_action_active
	jmp	.LBB15_9
.LBB15_6:                               # %if.else.22
	movq	-112(%rbp), %rdi
	callq	gimp_layer_mask_get_edit
	cmpl	$0, %eax
	jne	.LBB15_8
# BB#7:                                 # %if.then.25
	movabsq	$.L.str.18, %rsi
	movl	$1, %edx
	movq	-104(%rbp), %rdi
	callq	gimp_action_group_set_action_active
.LBB15_8:                               # %if.end
	jmp	.LBB15_9
.LBB15_9:                               # %if.end.26
	jmp	.LBB15_10
.LBB15_10:                              # %if.end.27
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB15_11:                              # %if.end.28
	jmp	.LBB15_12
.LBB15_12:                              # %if.end.29
	movq	-48(%rbp), %rdi
	callq	gtk_tree_path_free
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_layer_tree_view_mask_clicked, .Lfunc_end15-gimp_layer_tree_view_mask_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_tree_view_floating_selection_changed,@function
gimp_layer_tree_view_floating_selection_changed: # @gimp_layer_tree_view_floating_selection_changed
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_floating_selection
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB16_4
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_container_view_lookup
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB16_3
# BB#2:                                 # %if.then.7
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-48(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	336(%rdi), %rdi
	movq	40(%rdi), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_tree_store_set
.LBB16_3:                               # %if.end
	jmp	.LBB16_17
.LBB16_4:                               # %if.else
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_layer_list
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB16_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB16_16
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB16_5 Depth=1
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_container_view_lookup
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB16_11
# BB#7:                                 # %if.then.14
                                        #   in Loop: Header=BB16_5 Depth=1
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	-72(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB16_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB16_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB16_10
.LBB16_9:                               # %cond.false
                                        #   in Loop: Header=BB16_5 Depth=1
	movq	-16(%rbp), %rax
	movq	336(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB16_10:                              # %cond.end
                                        #   in Loop: Header=BB16_5 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	movl	$2, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	gtk_tree_store_set
.LBB16_11:                              # %if.end.21
                                        #   in Loop: Header=BB16_5 Depth=1
	jmp	.LBB16_12
.LBB16_12:                              # %for.inc
                                        #   in Loop: Header=BB16_5 Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB16_14
# BB#13:                                # %cond.true.23
                                        #   in Loop: Header=BB16_5 Depth=1
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB16_15
.LBB16_14:                              # %cond.false.24
                                        #   in Loop: Header=BB16_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jmp	.LBB16_15
.LBB16_15:                              # %cond.end.25
                                        #   in Loop: Header=BB16_5 Depth=1
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, -64(%rbp)
	jmp	.LBB16_5
.LBB16_16:                              # %for.end
	movq	-56(%rbp), %rdi
	callq	g_list_free
.LBB16_17:                              # %if.end.27
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_layer_tree_view_floating_selection_changed, .Lfunc_end16-gimp_layer_tree_view_floating_selection_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_tree_view_set_container,@function
gimp_layer_tree_view_set_container:     # @gimp_layer_tree_view_set_container
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_layer_tree_view_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_container_view_get_container
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB17_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	movq	56(%rax), %rdi
	callq	gimp_tree_handler_disconnect
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	movq	$0, 56(%rax)
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	movq	64(%rax), %rdi
	callq	gimp_tree_handler_disconnect
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	movq	$0, 64(%rax)
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	movq	72(%rax), %rdi
	callq	gimp_tree_handler_disconnect
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	movq	$0, 72(%rax)
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	movq	80(%rax), %rdi
	callq	gimp_tree_handler_disconnect
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	movq	$0, 80(%rax)
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	movq	88(%rax), %rdi
	callq	gimp_tree_handler_disconnect
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	movq	$0, 88(%rax)
.LBB17_2:                               # %if.end
	movq	parent_view_iface, %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	cmpq	$0, -16(%rbp)
	je	.LBB17_4
# BB#3:                                 # %if.then.18
	movabsq	$.L.str.28, %rsi
	movabsq	$gimp_layer_tree_view_layer_signal_handler, %rax
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	callq	gimp_tree_handler_connect
	movabsq	$.L.str.29, %rsi
	movabsq	$gimp_layer_tree_view_layer_signal_handler, %rcx
	movq	-24(%rbp), %rdx
	movq	336(%rdx), %rdx
	movq	%rax, 56(%rdx)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	gimp_tree_handler_connect
	movabsq	$.L.str.30, %rsi
	movabsq	$gimp_layer_tree_view_layer_signal_handler, %rcx
	movq	-24(%rbp), %rdx
	movq	336(%rdx), %rdx
	movq	%rax, 64(%rdx)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	gimp_tree_handler_connect
	movabsq	$.L.str.31, %rsi
	movabsq	$gimp_layer_tree_view_mask_changed, %rcx
	movq	-24(%rbp), %rdx
	movq	336(%rdx), %rdx
	movq	%rax, 72(%rdx)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	gimp_tree_handler_connect
	movabsq	$.L.str.32, %rsi
	movabsq	$gimp_layer_tree_view_alpha_changed, %rcx
	movq	-24(%rbp), %rdx
	movq	336(%rdx), %rdx
	movq	%rax, 80(%rdx)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	gimp_tree_handler_connect
	movq	-24(%rbp), %rcx
	movq	336(%rcx), %rcx
	movq	%rax, 88(%rcx)
.LBB17_4:                               # %if.end.34
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_layer_tree_view_set_container, .Lfunc_end17-gimp_layer_tree_view_set_container
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_tree_view_set_context,@function
gimp_layer_tree_view_set_context:       # @gimp_layer_tree_view_set_context
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_layer_tree_view_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	parent_view_iface, %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-24(%rbp), %rax
	cmpq	$0, 144(%rax)
	je	.LBB18_2
# BB#1:                                 # %if.then
	movabsq	$gimp_layer_tree_view_set_context_foreach, %rsi
	leaq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	336(%rcx), %rcx
	movl	24(%rcx), %edx
	movl	%edx, -48(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	-24(%rbp), %rcx
	movq	144(%rcx), %rdi
	movq	%rax, %rdx
	callq	gtk_tree_model_foreach
.LBB18_2:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_layer_tree_view_set_context, .Lfunc_end18-gimp_layer_tree_view_set_context
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_tree_view_insert_item,@function
gimp_layer_tree_view_insert_item:       # @gimp_layer_tree_view_insert_item
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	gimp_layer_tree_view_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	parent_view_iface, %rax
	movq	64(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	callq	*%rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	jne	.LBB19_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	gimp_layer_tree_view_alpha_update
.LBB19_2:                               # %if.end
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	gimp_layer_tree_view_mask_update
	movq	-56(%rbp), %rdx
	movq	%rdx, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_layer_tree_view_insert_item, .Lfunc_end19-gimp_layer_tree_view_insert_item
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_tree_view_select_item,@function
gimp_layer_tree_view_select_item:       # @gimp_layer_tree_view_select_item
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_tree_view_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_layer_tree_view_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	parent_view_iface, %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	*%rax
	movl	%eax, -44(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB20_7
# BB#1:                                 # %if.then
	cmpl	$0, -44(%rbp)
	je	.LBB20_3
# BB#2:                                 # %if.then.6
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_layer_tree_view_update_borders
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_layer_tree_view_update_options
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_layer_tree_view_update_menu
.LBB20_3:                               # %if.end
	cmpl	$0, -44(%rbp)
	je	.LBB20_5
# BB#4:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_layer_is_floating_sel
	cmpl	$0, %eax
	je	.LBB20_6
.LBB20_5:                               # %if.then.16
	movq	-32(%rbp), %rdi
	callq	gimp_item_tree_view_get_edit_button
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_widget_set_sensitive
.LBB20_6:                               # %if.end.18
	jmp	.LBB20_7
.LBB20_7:                               # %if.end.19
	movl	-44(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_layer_tree_view_select_item, .Lfunc_end20-gimp_layer_tree_view_select_item
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_tree_view_set_view_size,@function
gimp_layer_tree_view_set_view_size:     # @gimp_layer_tree_view_set_view_size
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 144(%rax)
	je	.LBB21_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_layer_tree_view_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-40(%rbp), %rsi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	336(%rax), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -40(%rbp)
	movq	-8(%rbp), %rdi
	addq	$8, %rsi
	callq	gimp_container_view_get_view_size
	movabsq	$gimp_layer_tree_view_set_view_size_foreach, %rsi
	leaq	-40(%rbp), %rdi
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rdx
	movq	144(%rdx), %rdx
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	gtk_tree_model_foreach
.LBB21_2:                               # %if.end
	movq	parent_view_iface, %rax
	movq	112(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_layer_tree_view_set_view_size, .Lfunc_end21-gimp_layer_tree_view_set_view_size
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_tree_view_layer_signal_handler,@function
gimp_layer_tree_view_layer_signal_handler: # @gimp_layer_tree_view_layer_signal_handler
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_item_tree_view_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	920(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_item_tree_view_get_image
	movq	%rax, %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB22_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	gimp_layer_tree_view_update_options
.LBB22_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_layer_tree_view_layer_signal_handler, .Lfunc_end22-gimp_layer_tree_view_layer_signal_handler
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_tree_view_mask_changed,@function
gimp_layer_tree_view_mask_changed:      # @gimp_layer_tree_view_mask_changed
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_view_lookup
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB23_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rdx
	callq	gimp_layer_tree_view_mask_update
.LBB23_2:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_layer_tree_view_mask_changed, .Lfunc_end23-gimp_layer_tree_view_mask_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_tree_view_alpha_changed,@function
gimp_layer_tree_view_alpha_changed:     # @gimp_layer_tree_view_alpha_changed
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_container_view_lookup
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB24_4
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_tree_view_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rdx
	callq	gimp_layer_tree_view_alpha_update
	movq	-40(%rbp), %rdi
	callq	gimp_item_tree_view_get_image
	movq	%rax, %rdi
	callq	gimp_image_get_active_layer
	cmpq	-8(%rbp), %rax
	jne	.LBB24_3
# BB#2:                                 # %if.then.7
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_view_select_item
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB24_3:                               # %if.end
	jmp	.LBB24_4
.LBB24_4:                               # %if.end.13
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_layer_tree_view_alpha_changed, .Lfunc_end24-gimp_layer_tree_view_alpha_changed
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI25_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	gimp_layer_tree_view_update_options,@function
gimp_layer_tree_view_update_options:    # @gimp_layer_tree_view_update_options
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
	subq	$208, %rsp
	movl	$24, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_layer_tree_view_paint_mode_menu_callback, %r9
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	336(%rsi), %rsi
	movq	(%rsi), %rsi
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movl	%eax, %esi
	movl	%ecx, %edx
	movq	-24(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-8(%rbp), %rdi
	movq	336(%rdi), %rdi
	movq	(%rdi), %rdi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_mode
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_int_combo_box_set_active
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_layer_tree_view_paint_mode_menu_callback, %rdi
	movq	-8(%rbp), %r9
	movq	336(%r9), %r9
	movq	(%r9), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_unblock_matched
	movq	-16(%rbp), %rdi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	gimp_layer_get_lock_alpha
	movq	-8(%rbp), %rdi
	movq	336(%rdi), %rdi
	movq	16(%rdi), %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movl	-68(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB25_2
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_layer_tree_view_lock_alpha_button_toggled, %rdx
	movq	-8(%rbp), %rdi
	movq	336(%rdi), %rdi
	movq	16(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-88(%rbp), %r10         # 8-byte Reload
	movq	%r9, -96(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-96(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-8(%rbp), %rdi
	movq	336(%rdi), %rdi
	movq	16(%rdi), %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_lock_alpha
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gtk_toggle_button_set_active
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_layer_tree_view_lock_alpha_button_toggled, %rdi
	movq	-8(%rbp), %r9
	movq	336(%r9), %r9
	movq	16(%r9), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-128(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB25_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_layer_can_lock_alpha
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gtk_widget_set_sensitive
	movq	-16(%rbp), %rdi
	callq	gimp_layer_get_opacity
	movsd	.LCPI25_0, %xmm1        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movq	-8(%rbp), %rdi
	movq	336(%rdi), %rdi
	movq	8(%rdi), %rdi
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_value
	movsd	-152(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB25_3
	jp	.LBB25_3
	jmp	.LBB25_4
.LBB25_3:                               # %if.then.33
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_layer_tree_view_opacity_scale_changed, %rdx
	movq	-8(%rbp), %rdi
	movq	336(%rdi), %rdi
	movq	8(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-160(%rbp), %r10        # 8-byte Reload
	movq	%r9, -168(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-168(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-8(%rbp), %rdi
	movq	336(%rdi), %rdi
	movq	8(%rdi), %rdi
	movq	-16(%rbp), %r8
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movl	%eax, -180(%rbp)        # 4-byte Spill
	callq	gimp_layer_get_opacity
	movsd	.LCPI25_0, %xmm1        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movq	-176(%rbp), %rdi        # 8-byte Reload
	callq	gtk_adjustment_set_value
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_layer_tree_view_opacity_scale_changed, %rdi
	movq	-8(%rbp), %r9
	movq	336(%r9), %r9
	movq	8(%r9), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-192(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -196(%rbp)        # 4-byte Spill
.LBB25_4:                               # %if.end.44
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_layer_tree_view_update_options, .Lfunc_end25-gimp_layer_tree_view_update_options
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_tree_view_paint_mode_menu_callback,@function
gimp_layer_tree_view_paint_mode_menu_callback: # @gimp_layer_tree_view_paint_mode_menu_callback
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -32(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_item_tree_view_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_tree_view_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB26_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	920(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	movq	%rax, -32(%rbp)
.LBB26_2:                               # %if.end
	cmpq	$0, -32(%rbp)
	je	.LBB26_12
# BB#3:                                 # %if.then.5
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-36(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_get_active
	cmpl	$0, %eax
	je	.LBB26_11
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rdi
	callq	gimp_layer_get_mode
	cmpl	-36(%rbp), %eax
	je	.LBB26_11
# BB#5:                                 # %if.then.11
	movl	$1, -52(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_undo_get_type
	movl	$55, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_can_compress
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB26_8
# BB#6:                                 # %land.lhs.true.15
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_undo_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	72(%rax), %rax
	movq	-32(%rbp), %rsi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB26_8
# BB#7:                                 # %if.then.21
	movl	$0, -52(%rbp)
.LBB26_8:                               # %if.end.22
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_layer_tree_view_layer_signal_handler, %rdx
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %r9
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r9, -120(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-120(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-52(%rbp), %edx
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	gimp_layer_set_mode
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_layer_tree_view_layer_signal_handler, %rdi
	movq	-32(%rbp), %r9
	movq	-16(%rbp), %r10
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-136(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movq	-24(%rbp), %rdi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	gimp_image_flush
	cmpl	$0, -52(%rbp)
	jne	.LBB26_10
# BB#9:                                 # %if.then.26
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_container_view_get_context
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_undo_refresh_preview
.LBB26_10:                              # %if.end.30
	jmp	.LBB26_11
.LBB26_11:                              # %if.end.31
	jmp	.LBB26_12
.LBB26_12:                              # %if.end.32
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_layer_tree_view_paint_mode_menu_callback, .Lfunc_end26-gimp_layer_tree_view_paint_mode_menu_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_tree_view_lock_alpha_button_toggled,@function
gimp_layer_tree_view_lock_alpha_button_toggled: # @gimp_layer_tree_view_lock_alpha_button_toggled
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_item_tree_view_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_tree_view_get_image
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	920(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB27_7
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_layer_get_lock_alpha
	cmpl	-36(%rbp), %eax
	je	.LBB27_6
# BB#2:                                 # %if.then.8
	movl	$1, -52(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_undo_get_type
	movl	$57, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_can_compress
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB27_5
# BB#3:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_undo_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	72(%rax), %rax
	movq	-32(%rbp), %rsi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB27_5
# BB#4:                                 # %if.then.17
	movl	$0, -52(%rbp)
.LBB27_5:                               # %if.end
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_layer_tree_view_layer_signal_handler, %rdx
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %r9
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r9, -120(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-120(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-52(%rbp), %edx
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	gimp_layer_set_lock_alpha
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_layer_tree_view_layer_signal_handler, %rdi
	movq	-32(%rbp), %r9
	movq	-16(%rbp), %r10
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-136(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movq	-24(%rbp), %rdi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	gimp_image_flush
.LBB27_6:                               # %if.end.20
	jmp	.LBB27_7
.LBB27_7:                               # %if.end.21
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_layer_tree_view_lock_alpha_button_toggled, .Lfunc_end27-gimp_layer_tree_view_lock_alpha_button_toggled
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI28_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	gimp_layer_tree_view_opacity_scale_changed,@function
gimp_layer_tree_view_opacity_scale_changed: # @gimp_layer_tree_view_opacity_scale_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp89:
	.cfi_def_cfa_offset 16
.Ltmp90:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp91:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_item_tree_view_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_tree_view_get_image
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	920(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB28_9
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI28_0, %xmm1        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_layer_get_opacity
	ucomisd	-40(%rbp), %xmm0
	jne	.LBB28_2
	jp	.LBB28_2
	jmp	.LBB28_8
.LBB28_2:                               # %if.then.6
	movl	$1, -52(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_undo_get_type
	movl	$56, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_can_compress
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB28_5
# BB#3:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_undo_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	72(%rax), %rax
	movq	-32(%rbp), %rsi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB28_5
# BB#4:                                 # %if.then.15
	movl	$0, -52(%rbp)
.LBB28_5:                               # %if.end
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_layer_tree_view_layer_signal_handler, %rdx
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %r9
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r9, -112(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-112(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-32(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-52(%rbp), %esi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	gimp_layer_set_opacity
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_layer_tree_view_layer_signal_handler, %rdi
	movq	-32(%rbp), %r9
	movq	-16(%rbp), %r10
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-128(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movq	-24(%rbp), %rdi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	gimp_image_flush
	cmpl	$0, -52(%rbp)
	jne	.LBB28_7
# BB#6:                                 # %if.then.19
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_container_view_get_context
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_undo_refresh_preview
.LBB28_7:                               # %if.end.23
	jmp	.LBB28_8
.LBB28_8:                               # %if.end.24
	jmp	.LBB28_9
.LBB28_9:                               # %if.end.25
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_layer_tree_view_opacity_scale_changed, .Lfunc_end28-gimp_layer_tree_view_opacity_scale_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_tree_view_mask_update,@function
gimp_layer_tree_view_mask_update:       # @gimp_layer_tree_view_mask_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp92:
	.cfi_def_cfa_offset 16
.Ltmp93:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp94:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_layer_get_mask
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB29_2
# BB#1:                                 # %if.then
	leaq	-80(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gimp_container_view_get_view_size
	movl	%eax, -76(%rbp)
	movl	$1, -60(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_container_view_get_context
	xorl	%r8d, %r8d
	movq	-48(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	(%rsi), %rsi
	movl	-76(%rbp), %edx
	movl	-80(%rbp), %ecx
	movq	%rax, %rdi
	callq	gimp_view_renderer_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_view_renderer_set_viewable
	movabsq	$.L.str.33, %rsi
	movabsq	$gimp_layer_tree_view_renderer_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	-8(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$gimp_layer_tree_view_mask_callback, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-8(%rbp), %rsi
	movq	%rcx, %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_cclosure_new
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_object_watch_closure
	movabsq	$.L.str.34, %rsi
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_signal_connect_closure
	movabsq	$.L.str.35, %rsi
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_signal_connect_closure
	movabsq	$.L.str.36, %rsi
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-144(%rbp), %rdx        # 8-byte Reload
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	g_signal_connect_closure
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB29_2:                               # %if.end
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	336(%rdi), %rdi
	movl	24(%rdi), %edx
	movq	-56(%rbp), %rdi
	movq	-8(%rbp), %r8
	movq	336(%r8), %r8
	movl	28(%r8), %r8d
	movl	-60(%rbp), %r9d
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-176(%rbp), %rax        # 8-byte Reload
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	$-1, (%rsp)
	movb	$0, %al
	callq	gtk_tree_store_set
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_layer_tree_view_update_borders
	cmpq	$0, -56(%rbp)
	je	.LBB29_4
# BB#3:                                 # %if.then.20
	movq	-56(%rbp), %rdi
	callq	gimp_view_renderer_remove_idle
	movq	-56(%rbp), %rdi
	callq	g_object_unref
.LBB29_4:                               # %if.end.21
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_layer_tree_view_mask_update, .Lfunc_end29-gimp_layer_tree_view_mask_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_tree_view_renderer_update,@function
gimp_layer_tree_view_renderer_update:   # @gimp_layer_tree_view_renderer_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp95:
	.cfi_def_cfa_offset 16
.Ltmp96:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp97:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_layer_mask_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_layer_mask_get_layer
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_view_lookup
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB30_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	144(%rax), %rdi
	movq	-48(%rbp), %rsi
	callq	gtk_tree_model_get_path
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	144(%rax), %rdi
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	gtk_tree_model_row_changed
	movq	-56(%rbp), %rdi
	callq	gtk_tree_path_free
.LBB30_2:                               # %if.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_layer_tree_view_renderer_update, .Lfunc_end30-gimp_layer_tree_view_renderer_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_tree_view_mask_callback,@function
gimp_layer_tree_view_mask_callback:     # @gimp_layer_tree_view_mask_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp98:
	.cfi_def_cfa_offset 16
.Ltmp99:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp100:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_layer_mask_get_layer
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_view_lookup
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_layer_tree_view_update_borders
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_layer_tree_view_mask_callback, .Lfunc_end31-gimp_layer_tree_view_mask_callback
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_tree_view_update_borders,@function
gimp_layer_tree_view_update_borders:    # @gimp_layer_tree_view_update_borders
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp101:
	.cfi_def_cfa_offset 16
.Ltmp102:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp103:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	leaq	-32(%rbp), %rcx
	leaq	-40(%rbp), %r9
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, -24(%rbp)
	movq	$0, -48(%rbp)
	movl	$0, -52(%rbp)
	movq	-24(%rbp), %rax
	movq	144(%rax), %rdi
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movl	24(%rax), %r10d
	movl	%r8d, -68(%rbp)         # 4-byte Spill
	movl	%r10d, %r8d
	movl	$-1, (%rsp)
	movb	$0, %al
	callq	gtk_tree_model_get
	cmpq	$0, -40(%rbp)
	je	.LBB32_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_layer_mask_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
.LBB32_2:                               # %if.end
	cmpq	$0, -48(%rbp)
	je	.LBB32_5
# BB#3:                                 # %lor.lhs.false
	cmpq	$0, -48(%rbp)
	je	.LBB32_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rdi
	callq	gimp_layer_mask_get_edit
	cmpl	$0, %eax
	jne	.LBB32_6
.LBB32_5:                               # %if.then.8
	movl	$1, -52(%rbp)
.LBB32_6:                               # %if.end.9
	movq	-32(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	gimp_view_renderer_set_border_type
	cmpq	$0, -48(%rbp)
	je	.LBB32_16
# BB#7:                                 # %if.then.11
	movl	$0, -56(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_layer_mask_get_show
	cmpl	$0, %eax
	je	.LBB32_9
# BB#8:                                 # %if.then.14
	movl	$3, -56(%rbp)
	jmp	.LBB32_15
.LBB32_9:                               # %if.else
	movq	-48(%rbp), %rdi
	callq	gimp_layer_mask_get_apply
	cmpl	$0, %eax
	jne	.LBB32_11
# BB#10:                                # %if.then.17
	movl	$2, -56(%rbp)
	jmp	.LBB32_14
.LBB32_11:                              # %if.else.18
	movq	-48(%rbp), %rdi
	callq	gimp_layer_mask_get_edit
	cmpl	$0, %eax
	je	.LBB32_13
# BB#12:                                # %if.then.21
	movl	$1, -56(%rbp)
.LBB32_13:                              # %if.end.22
	jmp	.LBB32_14
.LBB32_14:                              # %if.end.23
	jmp	.LBB32_15
.LBB32_15:                              # %if.end.24
	movq	-40(%rbp), %rdi
	movl	-56(%rbp), %esi
	callq	gimp_view_renderer_set_border_type
.LBB32_16:                              # %if.end.25
	cmpq	$0, -32(%rbp)
	je	.LBB32_18
# BB#17:                                # %if.then.27
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB32_18:                              # %if.end.28
	cmpq	$0, -40(%rbp)
	je	.LBB32_20
# BB#19:                                # %if.then.30
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB32_20:                              # %if.end.31
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_layer_tree_view_update_borders, .Lfunc_end32-gimp_layer_tree_view_update_borders
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_tree_view_alpha_update,@function
gimp_layer_tree_view_alpha_update:      # @gimp_layer_tree_view_alpha_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp104:
	.cfi_def_cfa_offset 16
.Ltmp105:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp106:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB33_2
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB33_3
.LBB33_2:                               # %cond.false
	movq	-8(%rbp), %rax
	movq	336(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB33_3:                               # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	$2, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	gtk_tree_store_set
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_layer_tree_view_alpha_update, .Lfunc_end33-gimp_layer_tree_view_alpha_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_tree_view_set_context_foreach,@function
gimp_layer_tree_view_set_context_foreach: # @gimp_layer_tree_view_set_context_foreach
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp107:
	.cfi_def_cfa_offset 16
.Ltmp108:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp109:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	-48(%rbp), %rax
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movl	(%rcx), %edx
	movq	%rax, %rcx
	movb	$0, %al
	callq	gtk_tree_model_get
	cmpq	$0, -48(%rbp)
	je	.LBB34_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rsi
	callq	gimp_view_renderer_set_context
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB34_2:                               # %if.end
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_layer_tree_view_set_context_foreach, .Lfunc_end34-gimp_layer_tree_view_set_context_foreach
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_tree_view_update_menu,@function
gimp_layer_tree_view_update_menu:       # @gimp_layer_tree_view_update_menu
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_ui_manager
	movabsq	$.L.str.2, %rsi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_ui_manager_get_action_group
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_layer_get_mask
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	cmpq	$0, -40(%rbp)
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movb	%dl, -57(%rbp)          # 1-byte Spill
	je	.LBB35_2
# BB#1:                                 # %land.rhs
	movq	-40(%rbp), %rdi
	callq	gimp_layer_mask_get_show
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -57(%rbp)          # 1-byte Spill
.LBB35_2:                               # %land.end
	movb	-57(%rbp), %al          # 1-byte Reload
	movabsq	$.L.str.19, %rsi
	andb	$1, %al
	movzbl	%al, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	gimp_action_group_set_action_active
	xorl	%edx, %edx
	movb	%dl, %al
	movq	-32(%rbp), %rdi
	cmpq	$0, -40(%rbp)
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movb	%al, -73(%rbp)          # 1-byte Spill
	je	.LBB35_4
# BB#3:                                 # %land.rhs.8
	movq	-40(%rbp), %rdi
	callq	gimp_layer_mask_get_apply
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	movb	%cl, -73(%rbp)          # 1-byte Spill
.LBB35_4:                               # %land.end.11
	movb	-73(%rbp), %al          # 1-byte Reload
	movabsq	$.L.str.20, %rsi
	andb	$1, %al
	movzbl	%al, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	gimp_action_group_set_action_active
	xorl	%edx, %edx
	movb	%dl, %al
	movq	-32(%rbp), %rdi
	cmpq	$0, -40(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movb	%al, -89(%rbp)          # 1-byte Spill
	je	.LBB35_6
# BB#5:                                 # %land.rhs.14
	movq	-40(%rbp), %rdi
	callq	gimp_layer_mask_get_edit
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -89(%rbp)          # 1-byte Spill
.LBB35_6:                               # %land.end.17
	movb	-89(%rbp), %al          # 1-byte Reload
	movabsq	$.L.str.18, %rsi
	andb	$1, %al
	movzbl	%al, %edx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	callq	gimp_action_group_set_action_active
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_layer_tree_view_update_menu, .Lfunc_end35-gimp_layer_tree_view_update_menu
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_layer_tree_view_set_view_size_foreach,@function
gimp_layer_tree_view_set_view_size_foreach: # @gimp_layer_tree_view_set_view_size_foreach
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp113:
	.cfi_def_cfa_offset 16
.Ltmp114:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp115:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	-48(%rbp), %rax
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movl	(%rcx), %edx
	movq	%rax, %rcx
	movb	$0, %al
	callq	gtk_tree_model_get
	cmpq	$0, -48(%rbp)
	je	.LBB36_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	4(%rax), %esi
	movq	-40(%rbp), %rax
	movl	8(%rax), %edx
	callq	gimp_view_renderer_set_size
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB36_2:                               # %if.end
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	gimp_layer_tree_view_set_view_size_foreach, .Lfunc_end36-gimp_layer_tree_view_set_view_size_foreach
	.cfi_endproc

	.type	gimp_layer_tree_view_get_type.g_define_type_id__volatile,@object # @gimp_layer_tree_view_get_type.g_define_type_id__volatile
	.local	gimp_layer_tree_view_get_type.g_define_type_id__volatile
	.comm	gimp_layer_tree_view_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpLayerTreeView"
	.size	.L.str, 18

	.type	gimp_layer_tree_view_get_type.g_implement_interface_info,@object # @gimp_layer_tree_view_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_layer_tree_view_get_type.g_implement_interface_info:
	.quad	gimp_layer_tree_view_view_iface_init
	.quad	0
	.quad	0
	.size	gimp_layer_tree_view_get_type.g_implement_interface_info, 24

	.type	gimp_layer_tree_view_parent_class,@object # @gimp_layer_tree_view_parent_class
	.local	gimp_layer_tree_view_parent_class
	.comm	gimp_layer_tree_view_parent_class,8,8
	.type	GimpLayerTreeView_private_offset,@object # @GimpLayerTreeView_private_offset
	.local	GimpLayerTreeView_private_offset
	.comm	GimpLayerTreeView_private_offset,4,4
	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"active-layer-changed"
	.size	.L.str.1, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"layers"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"layers-text-tool"
	.size	.L.str.3, 17

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"layers-edit-attributes"
	.size	.L.str.4, 23

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"layers-new"
	.size	.L.str.5, 11

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"layers-new-last-values"
	.size	.L.str.6, 23

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"layers-raise"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"layers-raise-to-top"
	.size	.L.str.8, 20

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"layers-lower"
	.size	.L.str.9, 13

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"layers-lower-to-bottom"
	.size	.L.str.10, 23

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"layers-duplicate"
	.size	.L.str.11, 17

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"layers-delete"
	.size	.L.str.12, 14

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"renderer"
	.size	.L.str.13, 9

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"visible"
	.size	.L.str.14, 8

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"clicked"
	.size	.L.str.15, 8

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"layers-new-group"
	.size	.L.str.16, 17

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"layers-anchor"
	.size	.L.str.17, 14

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"layers-mask-edit"
	.size	.L.str.18, 17

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"layers-mask-show"
	.size	.L.str.19, 17

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"layers-mask-disable"
	.size	.L.str.20, 20

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"color"
	.size	.L.str.21, 6

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Drop layers"
	.size	.L.str.22, 12

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Opening '%s' failed:\n\n%s"
	.size	.L.str.23, 25

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"%s Channel Copy"
	.size	.L.str.24, 16

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Dropped Buffer"
	.size	.L.str.25, 15

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"floating-selection-changed"
	.size	.L.str.26, 27

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"New Layer"
	.size	.L.str.27, 10

	.type	parent_view_iface,@object # @parent_view_iface
	.local	parent_view_iface
	.comm	parent_view_iface,8,8
	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"mode-changed"
	.size	.L.str.28, 13

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"opacity-changed"
	.size	.L.str.29, 16

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"lock-alpha-changed"
	.size	.L.str.30, 19

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"mask-changed"
	.size	.L.str.31, 13

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"alpha-changed"
	.size	.L.str.32, 14

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"update"
	.size	.L.str.33, 7

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"apply-changed"
	.size	.L.str.34, 14

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"edit-changed"
	.size	.L.str.35, 13

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"show-changed"
	.size	.L.str.36, 13

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Mode:"
	.size	.L.str.37, 6

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"gimp-layer-dialog-paint-mode-menu"
	.size	.L.str.38, 34

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Opacity"
	.size	.L.str.39, 8

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"gimp-layer-dialog-opacity-scale"
	.size	.L.str.40, 32

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"value-changed"
	.size	.L.str.41, 14

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"toggled"
	.size	.L.str.42, 8

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Lock alpha channel"
	.size	.L.str.43, 19

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"gimp-layer-dialog-lock-alpha-button"
	.size	.L.str.44, 36

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"button-icon-size"
	.size	.L.str.45, 17

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"gimp-transparency"
	.size	.L.str.46, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
