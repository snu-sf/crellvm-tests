	.text
	.file	"gimppaletteeditor.bc"
	.globl	gimp_palette_editor_get_type
	.align	16, 0x90
	.type	gimp_palette_editor_get_type,@function
gimp_palette_editor_get_type:           # @gimp_palette_editor_get_type
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
	movq	gimp_palette_editor_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_palette_editor_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_data_editor_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$840, %edx              # imm = 0x348
	movabsq	$gimp_palette_editor_class_intern_init, %rdi
	movl	$264, %r8d              # imm = 0x108
	movabsq	$gimp_palette_editor_init, %rcx
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
	callq	gimp_docked_interface_get_type
	movabsq	$gimp_palette_editor_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_palette_editor_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_palette_editor_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_palette_editor_get_type, .Lfunc_end0-gimp_palette_editor_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_palette_editor_class_intern_init,@function
gimp_palette_editor_class_intern_init:  # @gimp_palette_editor_class_intern_init
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
	movq	%rax, gimp_palette_editor_parent_class
	cmpl	$0, GimpPaletteEditor_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpPaletteEditor_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_palette_editor_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_palette_editor_class_intern_init, .Lfunc_end1-gimp_palette_editor_class_intern_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4634204016564240384     # double 64
.LCPI2_1:
	.quad	4607182418800017408     # double 1
.LCPI2_2:
	.quad	4616189618054758400     # double 4
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_3:
	.long	1065353216              # float 1
	.text
	.align	16, 0x90
	.type	gimp_palette_editor_init,@function
gimp_palette_editor_init:               # @gimp_palette_editor_init
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
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movss	.LCPI2_3, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movss	%xmm0, 248(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 252(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 256(%rax)
	movq	-8(%rbp), %rax
	movl	$16, 260(%rax)
	movq	%rsi, %rdi
	callq	gtk_scrolled_window_new
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movl	$122, %edx
	movq	-16(%rbp), %rdi
	movq	%rax, 184(%rdi)
	movq	-16(%rbp), %rax
	movq	184(%rax), %rdi
	callq	gtk_widget_set_size_request
	movq	-16(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_scrolled_window_set_policy
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rsi
	movq	184(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rax
	movq	184(%rax), %rdi
	callq	gtk_widget_show
	callq	gimp_palette_view_get_type
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_palette_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	$209, %ecx
	movl	$122, %r8d
	xorl	%r9d, %r9d
	movl	$1, %edx
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movl	%edx, -84(%rbp)         # 4-byte Spill
	movq	%rax, %rdx
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movl	$0, 16(%rsp)
	callq	gimp_view_new_full_by_types
	movq	-8(%rbp), %rdx
	movq	%rax, 208(%rdx)
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	112(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_view_renderer_palette_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	callq	gimp_view_renderer_palette_set_cell_size
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	112(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_view_renderer_palette_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_view_renderer_palette_set_draw_grid
	movq	-16(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rdx
	movq	208(%rdx), %rsi
	movq	%rax, %rdi
	callq	gtk_scrolled_window_add_with_viewport
	movq	-8(%rbp), %rax
	movq	208(%rax), %rdi
	callq	gtk_widget_show
	movq	-8(%rbp), %rax
	movq	208(%rax), %rdi
	callq	gtk_widget_get_parent
	movabsq	$.L.str.26, %rsi
	movabsq	$palette_editor_viewport_size_allocate, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-136(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.27, %rsi
	movabsq	$palette_editor_entry_clicked, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	208(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.28, %rsi
	movabsq	$palette_editor_entry_selected, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	208(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.29, %rsi
	movabsq	$palette_editor_entry_activated, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	208(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-176(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.30, %rsi
	movabsq	$palette_editor_entry_context, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	208(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-192(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.31, %rsi
	movabsq	$palette_editor_color_dropped, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	208(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-8(%rbp), %rcx
	movq	208(%rcx), %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	callq	gimp_palette_get_type
	movabsq	$palette_editor_drop_palette, %rdx
	movq	-8(%rbp), %rcx
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dnd_viewable_dest_add
	movq	-8(%rbp), %rcx
	movq	208(%rcx), %rdi
	movl	%eax, -236(%rbp)        # 4-byte Spill
	callq	gtk_widget_get_parent
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_palette_get_type
	movabsq	$palette_editor_drop_palette, %rdx
	movq	-8(%rbp), %rcx
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dnd_viewable_dest_add
	movq	-8(%rbp), %rcx
	movq	208(%rcx), %rdi
	movl	%eax, -252(%rbp)        # 4-byte Spill
	callq	gtk_widget_get_parent
	movabsq	$palette_editor_drop_color, %rsi
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	gimp_dnd_color_dest_add
	xorl	%edi, %edi
	movl	$2, %esi
	callq	gtk_box_new
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
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
	callq	gtk_entry_new
	movq	-8(%rbp), %rsi
	movq	%rax, 216(%rsi)
	movq	-24(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rsi
	movq	216(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.32, %rdi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_entry_set_text
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_editable_set_editable
	movq	-8(%rbp), %rax
	movq	216(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.33, %rsi
	movabsq	$palette_editor_color_name_changed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	216(%rdi), %rdi
	movq	-8(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.34, %rdi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
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
	leaq	-48(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI2_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI2_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI2_2, %xmm4         # xmm4 = mem[0],zero
	xorl	%esi, %esi
	movsd	%xmm0, -320(%rbp)       # 8-byte Spill
	movsd	-320(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -328(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-328(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-320(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-328(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	%rax, 224(%rsi)
	movq	-24(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -348(%rbp)        # 4-byte Spill
	movl	-348(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.35, %rsi
	movabsq	$palette_editor_columns_changed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	224(%rdi), %rdi
	movq	-8(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	%rax, -360(%rbp)        # 8-byte Spill
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_palette_editor_init, .Lfunc_end2-gimp_palette_editor_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_palette_editor_docked_iface_init,@function
gimp_palette_editor_docked_iface_init:  # @gimp_palette_editor_docked_iface_init
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
	movq	%rax, parent_docked_iface
	cmpq	$0, parent_docked_iface
	jne	.LBB3_2
# BB#1:                                 # %if.then
	callq	gimp_docked_interface_get_type
	movq	%rax, %rdi
	callq	g_type_default_interface_peek
	movq	%rax, parent_docked_iface
.LBB3_2:                                # %if.end
	movabsq	$gimp_palette_editor_get_aux_info, %rax
	movabsq	$gimp_palette_editor_set_aux_info, %rcx
	movabsq	$gimp_palette_editor_set_context, %rdx
	movq	-8(%rbp), %rsi
	movq	%rdx, 72(%rsi)
	movq	-8(%rbp), %rdx
	movq	%rcx, 24(%rdx)
	movq	-8(%rbp), %rcx
	movq	%rax, 32(%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_palette_editor_docked_iface_init, .Lfunc_end3-gimp_palette_editor_docked_iface_init
	.cfi_endproc

	.globl	gimp_palette_editor_new
	.align	16, 0x90
	.type	gimp_palette_editor_new,@function
gimp_palette_editor_new:                # @gimp_palette_editor_new
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
	subq	$168, %rsp
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
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
# BB#1:                                 # %do.body
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_palette_editor_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	callq	gimp_palette_editor_get_type
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	496(%rcx), %rcx
	movq	-56(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gimp_context_get_palette
	movabsq	$.L.str.3, %rsi
	movabsq	$.L.str.4, %rcx
	movabsq	$.L.str.5, %r8
	movabsq	$.L.str.6, %r9
	movabsq	$.L.str.7, %rdx
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %r10
	movabsq	$.L.str.10, %r11
	xorl	%ebx, %ebx
	movl	%ebx, %r14d
	movq	-96(%rbp), %r15         # 8-byte Reload
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%r15, %rdi
	movq	-104(%rbp), %r12        # 8-byte Reload
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%r12, %rdx
	movq	-136(%rbp), %r13        # 8-byte Reload
	movq	%r13, (%rsp)
	movq	-128(%rbp), %r15        # 8-byte Reload
	movq	%r15, 8(%rsp)
	movq	-112(%rbp), %r15        # 8-byte Reload
	movq	%r15, 16(%rsp)
	movq	%r10, 24(%rsp)
	movq	-120(%rbp), %r10        # 8-byte Reload
	movq	%r10, 32(%rsp)
	movq	%r11, 40(%rsp)
	movq	%rax, 48(%rsp)
	movq	$0, 56(%rsp)
	movb	$0, %al
	movq	%r14, -144(%rbp)        # 8-byte Spill
	callq	g_object_new
	movq	%rax, -48(%rbp)
.LBB4_13:                               # %return
	movq	-48(%rbp), %rax
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_palette_editor_new, .Lfunc_end4-gimp_palette_editor_new
	.cfi_endproc

	.globl	gimp_palette_editor_pick_color
	.align	16, 0x90
	.type	gimp_palette_editor_pick_color,@function
gimp_palette_editor_pick_color:         # @gimp_palette_editor_pick_color
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_palette_editor_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_palette_editor_pick_color, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_24
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB5_15
# BB#14:                                # %if.then.13
	jmp	.LBB5_16
.LBB5_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_palette_editor_pick_color, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_24
.LBB5_16:                               # %if.end.15
	jmp	.LBB5_17
.LBB5_17:                               # %do.end.16
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$0, 168(%rax)
	je	.LBB5_24
# BB#18:                                # %if.then.20
	movl	$-1, -68(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_editor_get_data
	movq	%rax, -64(%rbp)
	movl	-20(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	je	.LBB5_19
	jmp	.LBB5_25
.LBB5_25:                               # %if.then.20
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB5_22
	jmp	.LBB5_23
.LBB5_19:                               # %sw.bb
	movq	-8(%rbp), %rax
	cmpq	$0, 240(%rax)
	je	.LBB5_21
# BB#20:                                # %if.then.30
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	movl	40(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, -68(%rbp)
.LBB5_21:                               # %if.end.32
	movq	-64(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_palette_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	-68(%rbp), %esi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_palette_add_entry
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_palette_view_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_palette_view_select_entry
	jmp	.LBB5_23
.LBB5_22:                               # %sw.bb.38
	movq	-64(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_palette_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	240(%rsi), %rsi
	movl	40(%rsi), %esi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_palette_set_entry_color
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB5_23:                               # %sw.epilog
	jmp	.LBB5_24
.LBB5_24:                               # %if.end.44
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_palette_editor_pick_color, .Lfunc_end5-gimp_palette_editor_pick_color
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4621819117588971520     # double 10
.LCPI6_1:
	.quad	4607182418800017408     # double 1
.LCPI6_2:
	.quad	4611686018427387904     # double 2
.LCPI6_3:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI6_4:
	.quad	4616189618054758400     # double 4
	.text
	.globl	gimp_palette_editor_zoom
	.align	16, 0x90
	.type	gimp_palette_editor_zoom,@function
gimp_palette_editor_zoom:               # @gimp_palette_editor_zoom
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_palette_editor_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_palette_editor_zoom, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_34
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	160(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_palette_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB6_14
# BB#13:                                # %if.then.16
	jmp	.LBB6_34
.LBB6_14:                               # %if.end.17
	movq	-8(%rbp), %rax
	movss	248(%rax), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)
	movl	-12(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	je	.LBB6_15
	jmp	.LBB6_35
.LBB6_35:                               # %if.end.17
	movl	-116(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	je	.LBB6_16
	jmp	.LBB6_36
.LBB6_36:                               # %if.end.17
	movl	-116(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	je	.LBB6_15
	jmp	.LBB6_37
.LBB6_37:                               # %if.end.17
	movl	-116(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	je	.LBB6_16
	jmp	.LBB6_38
.LBB6_38:                               # %if.end.17
	movl	-116(%rbp), %eax        # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	je	.LBB6_15
	jmp	.LBB6_39
.LBB6_39:                               # %if.end.17
	movl	-116(%rbp), %eax        # 4-byte Reload
	addl	$-5, %eax
	subl	$2, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jb	.LBB6_17
	jmp	.LBB6_25
.LBB6_15:                               # %sw.bb
	movsd	.LCPI6_3, %xmm0         # xmm0 = mem[0],zero
	addsd	-32(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB6_25
.LBB6_16:                               # %sw.bb.19
	movsd	.LCPI6_3, %xmm0         # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -32(%rbp)
	jmp	.LBB6_25
.LBB6_17:                               # %sw.bb.20
	movq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	184(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	leaq	-88(%rbp), %rsi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movq	-24(%rbp), %rdi
	callq	gimp_palette_get_columns
	movl	%eax, -92(%rbp)
	cmpl	$0, -92(%rbp)
	jne	.LBB6_19
# BB#18:                                # %if.then.34
	movl	$16, -92(%rbp)
.LBB6_19:                               # %if.end.35
	movq	-24(%rbp), %rdi
	callq	gimp_palette_get_n_colors
	cltd
	idivl	-92(%rbp)
	movl	%eax, -96(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_palette_get_n_colors
	cltd
	idivl	-92(%rbp)
	cmpl	$0, %edx
	je	.LBB6_21
# BB#20:                                # %if.then.39
	movl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -96(%rbp)
.LBB6_21:                               # %if.end.41
	movl	$1, %eax
	cmpl	-96(%rbp), %eax
	jle	.LBB6_23
# BB#22:                                # %cond.true
	movl	$1, %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
	jmp	.LBB6_24
.LBB6_23:                               # %cond.false
	movl	-96(%rbp), %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB6_24:                               # %cond.end
	movl	-156(%rbp), %eax        # 4-byte Reload
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI6_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI6_2, %xmm2         # xmm2 = mem[0],zero
	movl	%eax, -96(%rbp)
	cvtsi2sdl	-76(%rbp), %xmm3
	subsd	%xmm2, %xmm3
	cvtsi2sdl	-96(%rbp), %xmm2
	divsd	%xmm2, %xmm3
	subsd	%xmm1, %xmm3
	divsd	%xmm0, %xmm3
	movsd	%xmm3, -32(%rbp)
.LBB6_25:                               # %sw.epilog
	movsd	.LCPI6_4, %xmm0         # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB6_27
# BB#26:                                # %cond.true.52
	movsd	.LCPI6_4, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	jmp	.LBB6_31
.LBB6_27:                               # %cond.false.53
	movsd	.LCPI6_3, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-32(%rbp), %xmm0
	jbe	.LBB6_29
# BB#28:                                # %cond.true.56
	movsd	.LCPI6_3, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	jmp	.LBB6_30
.LBB6_29:                               # %cond.false.57
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
.LBB6_30:                               # %cond.end.58
	movsd	-176(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
.LBB6_31:                               # %cond.end.60
	movsd	-168(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_palette_get_columns
	movq	-8(%rbp), %rdi
	movl	%eax, 260(%rdi)
	movq	-8(%rbp), %rdi
	cmpl	$0, 260(%rdi)
	jne	.LBB6_33
# BB#32:                                # %if.then.67
	movq	-8(%rbp), %rax
	movl	$16, 260(%rax)
.LBB6_33:                               # %if.end.69
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	256(%rax), %esi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	palette_editor_resize
	movq	-8(%rbp), %rdi
	callq	palette_editor_scroll_top_left
.LBB6_34:                               # %return
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_palette_editor_zoom, .Lfunc_end6-gimp_palette_editor_zoom
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI7_0:
	.long	1092616192              # float 10
	.text
	.align	16, 0x90
	.type	palette_editor_resize,@function
palette_editor_resize:                  # @palette_editor_resize
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	160(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_palette_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	jmp	.LBB7_9
.LBB7_2:                                # %if.end
	cvtsd2ss	-24(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movss	%xmm0, 248(%rax)
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 256(%rax)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdx
	movl	260(%rdx), %ecx
	addl	$1, %ecx
	cltd
	idivl	%ecx
	subl	$1, %eax
	movq	-8(%rbp), %rsi
	movl	%eax, 252(%rsi)
	movq	-8(%rbp), %rsi
	cmpl	$0, 252(%rsi)
	jge	.LBB7_4
# BB#3:                                 # %if.then.7
	movq	-8(%rbp), %rax
	movl	$0, 252(%rax)
.LBB7_4:                                # %if.end.9
	movq	-32(%rbp), %rdi
	callq	gimp_palette_get_n_colors
	movq	-8(%rbp), %rdi
	cltd
	idivl	260(%rdi)
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_palette_get_n_colors
	movq	-8(%rbp), %rdi
	cltd
	idivl	260(%rdi)
	cmpl	$0, %edx
	je	.LBB7_6
# BB#5:                                 # %if.then.16
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
.LBB7_6:                                # %if.end.18
	movss	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movl	252(%rax), %ecx
	addl	$1, %ecx
	movq	-8(%rbp), %rax
	imull	260(%rax), %ecx
	movl	%ecx, -40(%rbp)
	movl	-36(%rbp), %ecx
	movq	-8(%rbp), %rax
	mulss	248(%rax), %xmm0
	cvttss2si	%xmm0, %edx
	addl	$1, %edx
	imull	%edx, %ecx
	movl	%ecx, -44(%rbp)
	cmpl	$2048, -44(%rbp)        # imm = 0x800
	jle	.LBB7_8
# BB#7:                                 # %if.then.29
	movl	$2047, %eax             # imm = 0x7FF
	cltd
	idivl	-36(%rbp)
	imull	-36(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB7_8:                                # %if.end.32
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	112(%rax), %rdi
	movl	-40(%rbp), %edx
	addl	$1, %edx
	movl	-44(%rbp), %r8d
	addl	$1, %r8d
	movl	%edx, %esi
	movl	%r8d, %edx
	callq	gimp_view_renderer_set_size_full
.LBB7_9:                                # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	palette_editor_resize, .Lfunc_end7-palette_editor_resize
	.cfi_endproc

	.align	16, 0x90
	.type	palette_editor_scroll_top_left,@function
palette_editor_scroll_top_left:         # @palette_editor_scroll_top_left
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 184(%rax)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	jmp	.LBB8_6
.LBB8_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_scrolled_window_get_hadjustment
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_scrolled_window_get_vadjustment
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB8_4
# BB#3:                                 # %if.then.11
	xorps	%xmm0, %xmm0
	movq	-24(%rbp), %rdi
	callq	gtk_adjustment_set_value
.LBB8_4:                                # %if.end.12
	cmpq	$0, -32(%rbp)
	je	.LBB8_6
# BB#5:                                 # %if.then.14
	xorps	%xmm0, %xmm0
	movq	-32(%rbp), %rdi
	callq	gtk_adjustment_set_value
.LBB8_6:                                # %if.end.15
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	palette_editor_scroll_top_left, .Lfunc_end8-palette_editor_scroll_top_left
	.cfi_endproc

	.globl	gimp_palette_editor_get_index
	.align	16, 0x90
	.type	gimp_palette_editor_get_index,@function
gimp_palette_editor_get_index:          # @gimp_palette_editor_get_index
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_palette_editor_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_palette_editor_get_index, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB9_23
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	jmp	.LBB9_13
.LBB9_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB9_15
# BB#14:                                # %if.then.13
	jmp	.LBB9_16
.LBB9_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_palette_editor_get_index, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB9_23
.LBB9_16:                               # %if.end.15
	jmp	.LBB9_17
.LBB9_17:                               # %do.end.16
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	160(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_palette_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB9_22
# BB#18:                                # %land.lhs.true.22
	movq	-32(%rbp), %rdi
	callq	gimp_palette_get_n_colors
	cmpl	$0, %eax
	jle	.LBB9_22
# BB#19:                                # %if.then.25
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	240(%rax), %rdx
	callq	gimp_palette_find_entry
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB9_21
# BB#20:                                # %if.then.30
	movq	-64(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB9_23
.LBB9_21:                               # %if.end.31
	jmp	.LBB9_22
.LBB9_22:                               # %if.end.32
	movl	$-1, -4(%rbp)
.LBB9_23:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_palette_editor_get_index, .Lfunc_end9-gimp_palette_editor_get_index
	.cfi_endproc

	.globl	gimp_palette_editor_set_index
	.align	16, 0x90
	.type	gimp_palette_editor_set_index,@function
gimp_palette_editor_set_index:          # @gimp_palette_editor_set_index
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_palette_editor_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_palette_editor_set_index, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB10_24
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	160(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_palette_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB10_23
# BB#13:                                # %land.lhs.true.16
	movq	-40(%rbp), %rdi
	callq	gimp_palette_get_n_colors
	cmpl	$0, %eax
	jle	.LBB10_23
# BB#14:                                # %if.then.19
	movl	-20(%rbp), %eax
	movq	-40(%rbp), %rdi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gimp_palette_get_n_colors
	subl	$1, %eax
	movl	-92(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB10_16
# BB#15:                                # %cond.true
	movq	-40(%rbp), %rdi
	callq	gimp_palette_get_n_colors
	subl	$1, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB10_20
.LBB10_16:                              # %cond.false
	cmpl	$0, -20(%rbp)
	jge	.LBB10_18
# BB#17:                                # %cond.true.27
	xorl	%eax, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB10_19
.LBB10_18:                              # %cond.false.28
	movl	-20(%rbp), %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB10_19:                              # %cond.end
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB10_20:                              # %cond.end.29
	movl	-96(%rbp), %eax         # 4-byte Reload
	movl	%eax, -20(%rbp)
	movq	-40(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_palette_get_entry
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_palette_view_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_palette_view_select_entry
	cmpq	$0, -32(%rbp)
	je	.LBB10_22
# BB#21:                                # %if.then.35
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	240(%rcx), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 16(%rax)
	movq	24(%rcx), %rcx
	movq	%rcx, 24(%rax)
.LBB10_22:                              # %if.end.38
	movl	$1, -4(%rbp)
	jmp	.LBB10_24
.LBB10_23:                              # %if.end.39
	movl	$0, -4(%rbp)
.LBB10_24:                              # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_palette_editor_set_index, .Lfunc_end10-gimp_palette_editor_set_index
	.cfi_endproc

	.globl	gimp_palette_editor_max_index
	.align	16, 0x90
	.type	gimp_palette_editor_max_index,@function
gimp_palette_editor_max_index:          # @gimp_palette_editor_max_index
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_palette_editor_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_palette_editor_max_index, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB11_16
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	160(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_palette_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB11_15
# BB#13:                                # %land.lhs.true.16
	movq	-24(%rbp), %rdi
	callq	gimp_palette_get_n_colors
	cmpl	$0, %eax
	jle	.LBB11_15
# BB#14:                                # %if.then.19
	movq	-24(%rbp), %rdi
	callq	gimp_palette_get_n_colors
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB11_16
.LBB11_15:                              # %if.end.21
	movl	$-1, -4(%rbp)
.LBB11_16:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_palette_editor_max_index, .Lfunc_end11-gimp_palette_editor_max_index
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_palette_editor_class_init,@function
gimp_palette_editor_class_init:         # @gimp_palette_editor_class_init
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.14, %rdi
	movabsq	$gimp_palette_editor_set_data, %rsi
	movabsq	$gimp_palette_editor_unmap, %rcx
	movabsq	$gimp_palette_editor_dispose, %rdx
	movabsq	$gimp_palette_editor_constructed, %r8
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%r8, 72(%rax)
	movq	-16(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-24(%rbp), %rax
	movq	%rcx, 216(%rax)
	movq	-32(%rbp), %rax
	movq	%rsi, 824(%rax)
	callq	gettext
	movq	-32(%rbp), %rcx
	movq	%rax, 832(%rcx)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_palette_editor_class_init, .Lfunc_end12-gimp_palette_editor_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_palette_editor_constructed,@function
gimp_palette_editor_constructed:        # @gimp_palette_editor_constructed
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_palette_editor_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_palette_editor_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_palette_editor_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB13_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.15, %rsi
	movabsq	$.L.str.16, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	-16(%rbp), %rcx
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_get_toggle_behavior_mask
	movabsq	$.L.str.15, %rsi
	movabsq	$.L.str.17, %rdx
	movabsq	$.L.str.18, %rcx
	xorl	%r8d, %r8d
	movl	%r8d, %r9d
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %r8d
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	-16(%rbp), %rcx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.15, %rsi
	movabsq	$.L.str.19, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	-16(%rbp), %rcx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.15, %rsi
	movabsq	$.L.str.20, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	-16(%rbp), %rcx
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.15, %rsi
	movabsq	$.L.str.21, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	-16(%rbp), %rcx
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.15, %rsi
	movabsq	$.L.str.22, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	%rax, -128(%rbp)        # 8-byte Spill
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_palette_editor_constructed, .Lfunc_end13-gimp_palette_editor_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_palette_editor_dispose,@function
gimp_palette_editor_dispose:            # @gimp_palette_editor_dispose
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_palette_editor_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 232(%rax)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	232(%rax), %rdi
	callq	gtk_widget_destroy
	movq	-16(%rbp), %rax
	movq	$0, 232(%rax)
.LBB14_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_palette_editor_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_palette_editor_dispose, .Lfunc_end14-gimp_palette_editor_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_palette_editor_unmap,@function
gimp_palette_editor_unmap:              # @gimp_palette_editor_unmap
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_palette_editor_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 232(%rax)
	je	.LBB15_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	232(%rax), %rdi
	callq	gtk_widget_hide
.LBB15_2:                               # %if.end
	movq	gimp_palette_editor_parent_class, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	216(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_palette_editor_unmap, .Lfunc_end15-gimp_palette_editor_unmap
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_palette_editor_set_data,@function
gimp_palette_editor_set_data:           # @gimp_palette_editor_set_data
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
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_palette_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$palette_editor_columns_changed, %rdi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	224(%rax), %rax
	movq	-8(%rbp), %r9
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %edx
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-56(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-8(%rbp), %rdi
	cmpq	$0, 160(%rdi)
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB16_4
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	cmpq	$0, 232(%rax)
	je	.LBB16_3
# BB#2:                                 # %if.then.5
	movq	-24(%rbp), %rax
	movq	232(%rax), %rdi
	callq	gtk_widget_destroy
	movq	-24(%rbp), %rax
	movq	$0, 232(%rax)
.LBB16_3:                               # %if.end
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$palette_editor_invalidate_preview, %rdx
	movq	-8(%rbp), %rdi
	movq	160(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	%r9, -80(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-80(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	xorps	%xmm0, %xmm0
	movq	-24(%rbp), %rdi
	movq	224(%rdi), %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gtk_adjustment_set_value
.LBB16_4:                               # %if.end.11
	movq	gimp_palette_editor_parent_class, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	824(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_view_set_viewable
	movq	-8(%rbp), %rax
	cmpq	$0, 160(%rax)
	je	.LBB16_6
# BB#5:                                 # %if.then.20
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_palette_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.23, %rsi
	movabsq	$palette_editor_invalidate_preview, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-144(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-24(%rbp), %rcx
	movq	224(%rcx), %rdi
	movq	-32(%rbp), %rcx
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_palette_get_columns
	cvtsi2sdl	%eax, %xmm0
	movq	-152(%rbp), %rdi        # 8-byte Reload
	callq	gtk_adjustment_set_value
	movq	-24(%rbp), %rdi
	callq	palette_editor_scroll_top_left
	movq	-8(%rbp), %rcx
	movq	160(%rcx), %rcx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	callq	gimp_palette_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	palette_editor_invalidate_preview
.LBB16_6:                               # %if.end.31
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$palette_editor_columns_changed, %rdx
	movq	-24(%rbp), %rdi
	movq	224(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-176(%rbp), %r10        # 8-byte Reload
	movq	%r9, -184(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-184(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -188(%rbp)        # 4-byte Spill
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_palette_editor_set_data, .Lfunc_end16-gimp_palette_editor_set_data
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	palette_editor_columns_changed,@function
palette_editor_columns_changed:         # @palette_editor_columns_changed
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpq	$0, 160(%rax)
	je	.LBB17_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	160(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_palette_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI17_0, %xmm1        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	gimp_palette_set_columns
.LBB17_2:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	palette_editor_columns_changed, .Lfunc_end17-palette_editor_columns_changed
	.cfi_endproc

	.align	16, 0x90
	.type	palette_editor_invalidate_preview,@function
palette_editor_invalidate_preview:      # @palette_editor_invalidate_preview
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_palette_get_columns
	movq	-16(%rbp), %rsi
	movl	%eax, 260(%rsi)
	movq	-16(%rbp), %rsi
	cmpl	$0, 260(%rsi)
	jne	.LBB18_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	$16, 260(%rax)
.LBB18_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	256(%rax), %esi
	movq	-16(%rbp), %rax
	cvtss2sd	248(%rax), %xmm0
	callq	palette_editor_resize
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	palette_editor_invalidate_preview, .Lfunc_end18-palette_editor_invalidate_preview
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_palette_editor_set_context,@function
gimp_palette_editor_set_context:        # @gimp_palette_editor_set_context
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_palette_editor_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	parent_docked_iface, %rax
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	112(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_view_renderer_set_context
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_palette_editor_set_context, .Lfunc_end19-gimp_palette_editor_set_context
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI20_0:
	.quad	4616189618054758400     # double 4
.LCPI20_1:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.align	16, 0x90
	.type	gimp_palette_editor_set_aux_info,@function
gimp_palette_editor_set_aux_info:       # @gimp_palette_editor_set_aux_info
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_palette_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	parent_docked_iface, %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB20_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB20_15
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.24, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB20_10
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB20_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rdi
	callq	g_ascii_strtod
	movsd	.LCPI20_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB20_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB20_1 Depth=1
	movsd	.LCPI20_0, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	jmp	.LBB20_9
.LBB20_5:                               # %cond.false
                                        #   in Loop: Header=BB20_1 Depth=1
	movsd	.LCPI20_1, %xmm0        # xmm0 = mem[0],zero
	ucomisd	-48(%rbp), %xmm0
	jbe	.LBB20_7
# BB#6:                                 # %cond.true.6
                                        #   in Loop: Header=BB20_1 Depth=1
	movsd	.LCPI20_1, %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	jmp	.LBB20_8
.LBB20_7:                               # %cond.false.7
                                        #   in Loop: Header=BB20_1 Depth=1
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
.LBB20_8:                               # %cond.end
                                        #   in Loop: Header=BB20_1 Depth=1
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
.LBB20_9:                               # %cond.end.8
                                        #   in Loop: Header=BB20_1 Depth=1
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movq	-24(%rbp), %rax
	movss	%xmm0, 248(%rax)
.LBB20_10:                              # %if.end
                                        #   in Loop: Header=BB20_1 Depth=1
	jmp	.LBB20_11
.LBB20_11:                              # %for.inc
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB20_13
# BB#12:                                # %cond.true.12
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB20_14
.LBB20_13:                              # %cond.false.13
                                        #   in Loop: Header=BB20_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB20_14
.LBB20_14:                              # %cond.end.14
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB20_1
.LBB20_15:                              # %for.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_palette_editor_set_aux_info, .Lfunc_end20-gimp_palette_editor_set_aux_info
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI21_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_palette_editor_get_aux_info,@function
gimp_palette_editor_get_aux_info:       # @gimp_palette_editor_get_aux_info
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_palette_editor_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	parent_docked_iface, %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	movsd	.LCPI21_0, %xmm0        # xmm0 = mem[0],zero
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	cvtss2sd	248(%rax), %xmm1
	ucomisd	%xmm0, %xmm1
	jne	.LBB21_1
	jp	.LBB21_1
	jmp	.LBB21_2
.LBB21_1:                               # %if.then
	movl	$39, %esi
	movabsq	$.L.str.25, %rdx
	leaq	-80(%rbp), %rdi
	movq	-16(%rbp), %rax
	cvtss2sd	248(%rax), %xmm0
	callq	g_ascii_formatd
	movabsq	$.L.str.24, %rdi
	leaq	-80(%rbp), %rsi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_session_info_aux_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movq	%rax, -24(%rbp)
.LBB21_2:                               # %if.end
	movq	-24(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_palette_editor_get_aux_info, .Lfunc_end21-gimp_palette_editor_get_aux_info
	.cfi_endproc

	.align	16, 0x90
	.type	palette_editor_viewport_size_allocate,@function
palette_editor_viewport_size_allocate:  # @palette_editor_viewport_size_allocate
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movl	8(%rdx), %eax
	movq	-24(%rbp), %rdx
	cmpl	256(%rdx), %eax
	je	.LBB22_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	8(%rax), %esi
	movq	-24(%rbp), %rax
	cvtss2sd	248(%rax), %xmm0
	callq	palette_editor_resize
.LBB22_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	palette_editor_viewport_size_allocate, .Lfunc_end22-palette_editor_viewport_size_allocate
	.cfi_endproc

	.align	16, 0x90
	.type	palette_editor_entry_clicked,@function
palette_editor_entry_clicked:           # @palette_editor_entry_clicked
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
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB23_5
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-20(%rbp), %ecx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	callq	gimp_get_toggle_behavior_mask
	movl	-52(%rbp), %ecx         # 4-byte Reload
	andl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB23_3
# BB#2:                                 # %if.then.5
	movq	-40(%rbp), %rax
	movq	144(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_context_set_background
	jmp	.LBB23_4
.LBB23_3:                               # %if.else
	movq	-40(%rbp), %rax
	movq	144(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_context_set_foreground
.LBB23_4:                               # %if.end
	jmp	.LBB23_5
.LBB23_5:                               # %if.end.8
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	palette_editor_entry_clicked, .Lfunc_end23-palette_editor_entry_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	palette_editor_entry_selected,@function
palette_editor_entry_selected:          # @palette_editor_entry_selected
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	240(%rax), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB24_7
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$palette_editor_color_name_changed, %rdx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %r9
	movq	%rdi, 240(%r9)
	movq	-24(%rbp), %rdi
	movq	216(%rdi), %rdi
	movq	-24(%rbp), %r9
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-48(%rbp), %r10         # 8-byte Reload
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-56(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-24(%rbp), %rdi
	movq	216(%rdi), %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpq	$0, -16(%rbp)
	movq	%rax, -80(%rbp)         # 8-byte Spill
	je	.LBB24_3
# BB#2:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB24_4
.LBB24_3:                               # %cond.false
	movabsq	$.L.str.32, %rdi
	callq	gettext
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB24_4:                               # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_entry_set_text
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$palette_editor_color_name_changed, %rax
	movq	-24(%rbp), %rdi
	movq	216(%rdi), %rdi
	movq	-24(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -96(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movq	-24(%rbp), %rdi
	movq	216(%rdi), %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gtk_editable_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movb	%cl, %r10b
	cmpq	$0, -16(%rbp)
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movb	%r10b, -121(%rbp)       # 1-byte Spill
	je	.LBB24_6
# BB#5:                                 # %land.rhs
	movq	-32(%rbp), %rax
	cmpl	$0, 168(%rax)
	setne	%cl
	movb	%cl, -121(%rbp)         # 1-byte Spill
.LBB24_6:                               # %land.end
	movb	-121(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %esi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	callq	gtk_editable_set_editable
	movq	-24(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_ui_manager
	movq	-24(%rbp), %rsi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_popup_data
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_ui_manager_update
.LBB24_7:                               # %if.end
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	palette_editor_entry_selected, .Lfunc_end24-palette_editor_entry_selected
	.cfi_endproc

	.align	16, 0x90
	.type	palette_editor_entry_activated,@function
palette_editor_entry_activated:         # @palette_editor_entry_activated
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$0, 168(%rax)
	je	.LBB25_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	240(%rcx), %rax
	jne	.LBB25_3
# BB#2:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_ui_manager
	movabsq	$.L.str.15, %rsi
	movabsq	$.L.str.16, %rdx
	movq	%rax, %rdi
	callq	gimp_ui_manager_activate_action
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB25_3:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	palette_editor_entry_activated, .Lfunc_end25-palette_editor_entry_activated
	.cfi_endproc

	.align	16, 0x90
	.type	palette_editor_entry_context,@function
palette_editor_entry_context:           # @palette_editor_entry_context
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	gimp_editor_popup_menu
	movl	%eax, -36(%rbp)         # 4-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	palette_editor_entry_context, .Lfunc_end26-palette_editor_entry_context
	.cfi_endproc

	.align	16, 0x90
	.type	palette_editor_color_dropped,@function
palette_editor_color_dropped:           # @palette_editor_color_dropped
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$0, 168(%rax)
	je	.LBB27_4
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	160(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_palette_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	$-1, -44(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB27_3
# BB#2:                                 # %if.then.8
	movq	-16(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, -44(%rbp)
.LBB27_3:                               # %if.end
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %esi
	movq	-24(%rbp), %rcx
	callq	gimp_palette_add_entry
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_palette_view_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_palette_view_select_entry
.LBB27_4:                               # %if.end.13
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	palette_editor_color_dropped, .Lfunc_end27-palette_editor_color_dropped
	.cfi_endproc

	.align	16, 0x90
	.type	palette_editor_drop_palette,@function
palette_editor_drop_palette:            # @palette_editor_drop_palette
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rcx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_data_editor_set_data
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	palette_editor_drop_palette, .Lfunc_end28-palette_editor_drop_palette
	.cfi_endproc

	.align	16, 0x90
	.type	palette_editor_drop_color,@function
palette_editor_drop_color:              # @palette_editor_drop_color
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$0, 168(%rax)
	je	.LBB29_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	160(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_palette_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rcx
	callq	gimp_palette_add_entry
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_palette_view_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_palette_view_select_entry
.LBB29_2:                               # %if.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	palette_editor_drop_color, .Lfunc_end29-palette_editor_drop_color
	.cfi_endproc

	.align	16, 0x90
	.type	palette_editor_color_name_changed,@function
palette_editor_color_name_changed:      # @palette_editor_color_name_changed
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpq	$0, 160(%rax)
	je	.LBB30_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	160(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_palette_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	240(%rax), %rax
	movl	40(%rax), %esi
	movq	-32(%rbp), %rdx
	callq	gimp_palette_set_entry_name
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB30_2:                               # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	palette_editor_color_name_changed, .Lfunc_end30-palette_editor_color_name_changed
	.cfi_endproc

	.type	gimp_palette_editor_get_type.g_define_type_id__volatile,@object # @gimp_palette_editor_get_type.g_define_type_id__volatile
	.local	gimp_palette_editor_get_type.g_define_type_id__volatile
	.comm	gimp_palette_editor_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpPaletteEditor"
	.size	.L.str, 18

	.type	gimp_palette_editor_get_type.g_implement_interface_info,@object # @gimp_palette_editor_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_palette_editor_get_type.g_implement_interface_info:
	.quad	gimp_palette_editor_docked_iface_init
	.quad	0
	.quad	0
	.size	gimp_palette_editor_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_palette_editor_new,@object # @__func__.gimp_palette_editor_new
.L__func__.gimp_palette_editor_new:
	.asciz	"gimp_palette_editor_new"
	.size	.L__func__.gimp_palette_editor_new, 24

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"menu-factory"
	.size	.L.str.3, 13

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"menu-identifier"
	.size	.L.str.4, 16

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"<PaletteEditor>"
	.size	.L.str.5, 16

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"ui-path"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"/palette-editor-popup"
	.size	.L.str.7, 22

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"data-factory"
	.size	.L.str.8, 13

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"context"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"data"
	.size	.L.str.10, 5

	.type	.L__func__.gimp_palette_editor_pick_color,@object # @__func__.gimp_palette_editor_pick_color
.L__func__.gimp_palette_editor_pick_color:
	.asciz	"gimp_palette_editor_pick_color"
	.size	.L__func__.gimp_palette_editor_pick_color, 31

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"GIMP_IS_PALETTE_EDITOR (editor)"
	.size	.L.str.11, 32

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"color != NULL"
	.size	.L.str.12, 14

	.type	.L__func__.gimp_palette_editor_zoom,@object # @__func__.gimp_palette_editor_zoom
.L__func__.gimp_palette_editor_zoom:
	.asciz	"gimp_palette_editor_zoom"
	.size	.L__func__.gimp_palette_editor_zoom, 25

	.type	.L__func__.gimp_palette_editor_get_index,@object # @__func__.gimp_palette_editor_get_index
.L__func__.gimp_palette_editor_get_index:
	.asciz	"gimp_palette_editor_get_index"
	.size	.L__func__.gimp_palette_editor_get_index, 30

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"search != NULL"
	.size	.L.str.13, 15

	.type	.L__func__.gimp_palette_editor_set_index,@object # @__func__.gimp_palette_editor_set_index
.L__func__.gimp_palette_editor_set_index:
	.asciz	"gimp_palette_editor_set_index"
	.size	.L__func__.gimp_palette_editor_set_index, 30

	.type	.L__func__.gimp_palette_editor_max_index,@object # @__func__.gimp_palette_editor_max_index
.L__func__.gimp_palette_editor_max_index:
	.asciz	"gimp_palette_editor_max_index"
	.size	.L__func__.gimp_palette_editor_max_index, 30

	.type	gimp_palette_editor_parent_class,@object # @gimp_palette_editor_parent_class
	.local	gimp_palette_editor_parent_class
	.comm	gimp_palette_editor_parent_class,8,8
	.type	GimpPaletteEditor_private_offset,@object # @GimpPaletteEditor_private_offset
	.local	GimpPaletteEditor_private_offset
	.comm	GimpPaletteEditor_private_offset,4,4
	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Palette Editor"
	.size	.L.str.14, 15

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"palette-editor"
	.size	.L.str.15, 15

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"palette-editor-edit-color"
	.size	.L.str.16, 26

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"palette-editor-new-color-fg"
	.size	.L.str.17, 28

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"palette-editor-new-color-bg"
	.size	.L.str.18, 28

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"palette-editor-delete-color"
	.size	.L.str.19, 28

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"palette-editor-zoom-out"
	.size	.L.str.20, 24

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"palette-editor-zoom-in"
	.size	.L.str.21, 23

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"palette-editor-zoom-all"
	.size	.L.str.22, 24

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"invalidate-preview"
	.size	.L.str.23, 19

	.type	parent_docked_iface,@object # @parent_docked_iface
	.local	parent_docked_iface
	.comm	parent_docked_iface,8,8
	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"zoom-factor"
	.size	.L.str.24, 12

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"%.2f"
	.size	.L.str.25, 5

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"size-allocate"
	.size	.L.str.26, 14

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"entry-clicked"
	.size	.L.str.27, 14

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"entry-selected"
	.size	.L.str.28, 15

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"entry-activated"
	.size	.L.str.29, 16

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"entry-context"
	.size	.L.str.30, 14

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"color-dropped"
	.size	.L.str.31, 14

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Undefined"
	.size	.L.str.32, 10

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"changed"
	.size	.L.str.33, 8

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Columns:"
	.size	.L.str.34, 9

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"value-changed"
	.size	.L.str.35, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
