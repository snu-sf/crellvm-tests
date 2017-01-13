	.text
	.file	"gimpcolormapeditor.bc"
	.globl	gimp_colormap_editor_get_type
	.align	16, 0x90
	.type	gimp_colormap_editor_get_type,@function
gimp_colormap_editor_get_type:          # @gimp_colormap_editor_get_type
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
	movq	gimp_colormap_editor_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_colormap_editor_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_image_editor_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$832, %edx              # imm = 0x340
	movabsq	$gimp_colormap_editor_class_intern_init, %rdi
	movl	$208, %r8d
	movabsq	$gimp_colormap_editor_init, %rcx
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
	movabsq	$gimp_colormap_editor_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_colormap_editor_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_colormap_editor_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_colormap_editor_get_type, .Lfunc_end0-gimp_colormap_editor_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_colormap_editor_class_intern_init,@function
gimp_colormap_editor_class_intern_init: # @gimp_colormap_editor_class_intern_init
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
	movq	%rax, gimp_colormap_editor_parent_class
	cmpl	$0, GimpColormapEditor_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpColormapEditor_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_colormap_editor_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_colormap_editor_class_intern_init, .Lfunc_end1-gimp_colormap_editor_class_intern_init
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_0:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_1:
	.quad	4607182418800017408     # double 1
.LCPI2_2:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	gimp_colormap_editor_init,@function
gimp_colormap_editor_init:              # @gimp_colormap_editor_init
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
	subq	$336, %rsp              # imm = 0x150
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	gtk_frame_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movl	-52(%rbp), %ecx         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_palette_view_get_type
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_palette_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	$1, %ecx
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movl	-68(%rbp), %r8d         # 4-byte Reload
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	movl	$0, 16(%rsp)
	callq	gimp_view_new_full_by_types
	movq	-8(%rbp), %rdx
	movq	%rax, 152(%rdx)
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_view_set_expand
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rdx
	movq	152(%rdx), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-8(%rbp), %rax
	movq	152(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.15, %rsi
	movabsq	$gimp_colormap_preview_expose, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	152(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.16, %rsi
	movabsq	$gimp_colormap_editor_entry_clicked, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	152(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.17, %rsi
	movabsq	$gimp_colormap_editor_entry_selected, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	152(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.18, %rsi
	movabsq	$gimp_colormap_editor_entry_activated, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	152(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.19, %rsi
	movabsq	$gimp_colormap_editor_entry_context, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	152(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.20, %rsi
	movabsq	$gimp_colormap_editor_color_dropped, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	152(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movl	$2, %r9d
	xorl	%edx, %edx
	movl	%r9d, %edi
	movl	%r9d, %esi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_table_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$4, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing
	movq	-24(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$2, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacing
	movq	-8(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -212(%rbp)        # 4-byte Spill
	movl	-212(%rbp), %ecx        # 4-byte Reload
	movl	-212(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_end
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	leaq	-32(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI2_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI2_2, %xmm4         # xmm4 = mem[0],zero
	xorl	%esi, %esi
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	movsd	-224(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm1, -232(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm1
	movsd	-232(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-224(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-232(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	callq	gimp_spin_button_new
	movq	-8(%rbp), %rdi
	movq	%rax, 184(%rdi)
	movq	-32(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	%rax, 176(%rsi)
	movq	-24(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.21, %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movss	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$1, %r9d
	movq	-8(%rbp), %rsi
	movq	184(%rsi), %r8
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.22, %rsi
	movabsq	$gimp_colormap_adjustment_changed, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	176(%rdi), %rdi
	movq	-8(%rbp), %r10
	movq	%rcx, %rdx
	movq	%r10, %rcx
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_color_hex_entry_new
	movq	-8(%rbp), %rcx
	movq	%rax, 192(%rcx)
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_width_chars
	movq	-24(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.23, %rdi
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %r9d
	xorps	%xmm0, %xmm0
	movss	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rcx
	movq	192(%rcx), %r8
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movl	%r9d, %edx
	movq	%rax, %rcx
	movl	$1, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.24, %rsi
	movabsq	$gimp_colormap_hex_entry_changed, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	192(%rdi), %rdi
	movq	-8(%rbp), %r10
	movq	%rcx, %rdx
	movq	%r10, %rcx
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -312(%rbp)        # 8-byte Spill
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_colormap_editor_init, .Lfunc_end2-gimp_colormap_editor_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_colormap_editor_docked_iface_init,@function
gimp_colormap_editor_docked_iface_init: # @gimp_colormap_editor_docked_iface_init
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
	movabsq	$gimp_colormap_editor_set_context, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 72(%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_colormap_editor_docked_iface_init, .Lfunc_end3-gimp_colormap_editor_docked_iface_init
	.cfi_endproc

	.globl	gimp_colormap_editor_new
	.align	16, 0x90
	.type	gimp_colormap_editor_new,@function
gimp_colormap_editor_new:               # @gimp_colormap_editor_new
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_menu_factory_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_colormap_editor_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	callq	gimp_colormap_editor_get_type
	movabsq	$.L.str.3, %rsi
	movabsq	$.L.str.4, %rcx
	movabsq	$.L.str.5, %r8
	movabsq	$.L.str.6, %r9
	movabsq	$.L.str.7, %rdx
	xorl	%edi, %edi
	movl	%edi, %r10d
	movq	-16(%rbp), %r11
	movq	%rax, %rdi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%r11, %rdx
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	movq	%r10, -56(%rbp)         # 8-byte Spill
	callq	g_object_new
	movq	%rax, -8(%rbp)
.LBB4_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_colormap_editor_new, .Lfunc_end4-gimp_colormap_editor_new
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4457293557087583675     # double 1.0E-10
	.text
	.globl	gimp_colormap_editor_get_index
	.align	16, 0x90
	.type	gimp_colormap_editor_get_index,@function
gimp_colormap_editor_get_index:         # @gimp_colormap_editor_get_index
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_colormap_editor_get_type
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
	callq	g_type_check_instance_is_a
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_colormap_editor_get_index, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$1, -4(%rbp)
	jmp	.LBB5_27
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_image_editor_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	144(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB5_15
# BB#13:                                # %land.lhs.true.15
	movq	-32(%rbp), %rdi
	callq	gimp_image_base_type
	cmpl	$2, %eax
	jne	.LBB5_15
# BB#14:                                # %land.lhs.true.18
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_colormap
	cmpq	$0, %rax
	jne	.LBB5_16
.LBB5_15:                               # %if.then.21
	movl	$-1, -4(%rbp)
	jmp	.LBB5_27
.LBB5_16:                               # %if.end.22
	movq	-16(%rbp), %rax
	movl	160(%rax), %ecx
	movl	%ecx, -36(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB5_26
# BB#17:                                # %if.then.24
	leaq	-96(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_image_get_colormap_entry
	leaq	-96(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_rgb_distance
	movsd	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB5_25
# BB#18:                                # %if.then.28
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_colormap_size
	movl	%eax, -100(%rbp)
	movl	$0, -104(%rbp)
.LBB5_19:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-104(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB5_24
# BB#20:                                # %for.body
                                        #   in Loop: Header=BB5_19 Depth=1
	leaq	-96(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movl	-104(%rbp), %esi
	callq	gimp_image_get_colormap_entry
	leaq	-96(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_rgb_distance
	movsd	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB5_22
# BB#21:                                # %if.then.35
	movl	-104(%rbp), %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB5_24
.LBB5_22:                               # %if.end.36
                                        #   in Loop: Header=BB5_19 Depth=1
	jmp	.LBB5_23
.LBB5_23:                               # %for.inc
                                        #   in Loop: Header=BB5_19 Depth=1
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	jmp	.LBB5_19
.LBB5_24:                               # %for.end
	jmp	.LBB5_25
.LBB5_25:                               # %if.end.37
	jmp	.LBB5_26
.LBB5_26:                               # %if.end.38
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB5_27:                               # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_colormap_editor_get_index, .Lfunc_end5-gimp_colormap_editor_get_index
	.cfi_endproc

	.globl	gimp_colormap_editor_set_index
	.align	16, 0x90
	.type	gimp_colormap_editor_set_index,@function
gimp_colormap_editor_set_index:         # @gimp_colormap_editor_set_index
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
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_colormap_editor_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_colormap_editor_set_index, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB6_29
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_image_editor_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	144(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB6_15
# BB#13:                                # %land.lhs.true.15
	movq	-40(%rbp), %rdi
	callq	gimp_image_base_type
	cmpl	$2, %eax
	jne	.LBB6_15
# BB#14:                                # %land.lhs.true.18
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_colormap
	cmpq	$0, %rax
	jne	.LBB6_16
.LBB6_15:                               # %if.then.21
	movl	$0, -4(%rbp)
	jmp	.LBB6_29
.LBB6_16:                               # %if.end.22
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_colormap_size
	movl	%eax, -44(%rbp)
	cmpl	$1, -44(%rbp)
	jge	.LBB6_18
# BB#17:                                # %if.then.25
	movl	$0, -4(%rbp)
	jmp	.LBB6_29
.LBB6_18:                               # %if.end.26
	movl	-20(%rbp), %eax
	movl	-44(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jle	.LBB6_20
# BB#19:                                # %cond.true
	movl	-44(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB6_24
.LBB6_20:                               # %cond.false
	cmpl	$0, -20(%rbp)
	jge	.LBB6_22
# BB#21:                                # %cond.true.30
	xorl	%eax, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB6_23
.LBB6_22:                               # %cond.false.31
	movl	-20(%rbp), %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB6_23:                               # %cond.end
	movl	-96(%rbp), %eax         # 4-byte Reload
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB6_24:                               # %cond.end.32
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	160(%rcx), %eax
	je	.LBB6_26
# BB#25:                                # %if.then.35
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_colormap_palette
	movq	%rax, -80(%rbp)
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 160(%rax)
	movq	-16(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_palette_view_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rdi
	movl	-20(%rbp), %esi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_palette_get_entry
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_palette_view_select_entry
	movq	-16(%rbp), %rdi
	callq	gimp_colormap_editor_update_entries
.LBB6_26:                               # %if.end.42
	cmpq	$0, -32(%rbp)
	je	.LBB6_28
# BB#27:                                # %if.then.44
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_image_editor_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	144(%rax), %rdi
	movl	-20(%rbp), %esi
	movq	-32(%rbp), %rdx
	callq	gimp_image_get_colormap_entry
.LBB6_28:                               # %if.end.48
	movl	$1, -4(%rbp)
.LBB6_29:                               # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_colormap_editor_set_index, .Lfunc_end6-gimp_colormap_editor_set_index
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_colormap_editor_update_entries,@function
gimp_colormap_editor_update_entries:    # @gimp_colormap_editor_update_entries
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	144(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB7_4
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	gimp_image_base_type
	cmpl	$2, %eax
	jne	.LBB7_4
# BB#2:                                 # %land.lhs.true.5
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_colormap
	cmpq	$0, %rax
	je	.LBB7_4
# BB#3:                                 # %lor.lhs.false
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_colormap_size
	cmpl	$0, %eax
	jne	.LBB7_5
.LBB7_4:                                # %if.then
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	184(%rax), %rdi
	callq	gtk_widget_set_sensitive
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	192(%rax), %rdi
	callq	gtk_widget_set_sensitive
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movq	176(%rax), %rdi
	callq	gtk_adjustment_set_value
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.26, %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	jmp	.LBB7_6
.LBB7_5:                                # %if.else
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_colormap
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	176(%rax), %rdi
	movq	-8(%rbp), %rax
	cvtsi2sdl	160(%rax), %xmm0
	callq	gtk_adjustment_set_value
	movabsq	$.L.str.27, %rdi
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	imull	$3, 160(%rcx), %edx
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movzbl	(%rax), %esi
	movq	-32(%rbp), %rax
	movzbl	1(%rax), %edx
	movq	-32(%rbp), %rax
	movzbl	2(%rax), %ecx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	movq	-40(%rbp), %rdi
	callq	g_free
	movl	$1, %esi
	movq	-8(%rbp), %rax
	movq	184(%rax), %rdi
	callq	gtk_widget_set_sensitive
	movl	$1, %esi
	movq	-8(%rbp), %rax
	movq	192(%rax), %rdi
	callq	gtk_widget_set_sensitive
.LBB7_6:                                # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_colormap_editor_update_entries, .Lfunc_end7-gimp_colormap_editor_update_entries
	.cfi_endproc

	.globl	gimp_colormap_editor_max_index
	.align	16, 0x90
	.type	gimp_colormap_editor_max_index,@function
gimp_colormap_editor_max_index:         # @gimp_colormap_editor_max_index
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_colormap_editor_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_colormap_editor_max_index, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB8_20
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	144(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB8_15
# BB#13:                                # %land.lhs.true.15
	movq	-24(%rbp), %rdi
	callq	gimp_image_base_type
	cmpl	$2, %eax
	jne	.LBB8_15
# BB#14:                                # %land.lhs.true.18
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_colormap
	cmpq	$0, %rax
	jne	.LBB8_16
.LBB8_15:                               # %if.then.21
	movl	$-1, -4(%rbp)
	jmp	.LBB8_20
.LBB8_16:                               # %if.end.22
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_colormap_size
	xorl	%ecx, %ecx
	subl	$1, %eax
	cmpl	%eax, %ecx
	jle	.LBB8_18
# BB#17:                                # %cond.true
	xorl	%eax, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB8_19
.LBB8_18:                               # %cond.false
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_colormap_size
	subl	$1, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB8_19:                               # %cond.end
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, -4(%rbp)
.LBB8_20:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_colormap_editor_max_index, .Lfunc_end8-gimp_colormap_editor_max_index
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_colormap_editor_class_init,@function
gimp_colormap_editor_class_init:        # @gimp_colormap_editor_class_init
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
	callq	gimp_image_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_colormap_editor_set_image, %rsi
	movabsq	$gimp_colormap_editor_unmap, %rdi
	movabsq	$gimp_colormap_editor_finalize, %rcx
	movabsq	$gimp_colormap_editor_dispose, %rdx
	movabsq	$gimp_colormap_editor_constructed, %r8
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%r8, 72(%rax)
	movq	-16(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 48(%rax)
	movq	-24(%rbp), %rax
	movq	%rdi, 216(%rax)
	movq	-32(%rbp), %rax
	movq	%rsi, 824(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_colormap_editor_class_init, .Lfunc_end9-gimp_colormap_editor_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_colormap_editor_constructed,@function
gimp_colormap_editor_constructed:       # @gimp_colormap_editor_constructed
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_colormap_editor_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_colormap_editor_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB10_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_colormap_editor_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB10_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rsi
	movabsq	$.L.str.10, %rdx
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
	movabsq	$.L.str.9, %rsi
	movabsq	$.L.str.11, %rdx
	movabsq	$.L.str.12, %rcx
	xorl	%r8d, %r8d
	movl	%r8d, %r9d
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %r8d
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	%rax, -64(%rbp)         # 8-byte Spill
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_colormap_editor_constructed, .Lfunc_end10-gimp_colormap_editor_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_colormap_editor_dispose,@function
gimp_colormap_editor_dispose:           # @gimp_colormap_editor_dispose
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
	callq	gimp_colormap_editor_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 200(%rax)
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gtk_widget_destroy
	movq	-16(%rbp), %rax
	movq	$0, 200(%rax)
.LBB11_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_colormap_editor_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_colormap_editor_dispose, .Lfunc_end11-gimp_colormap_editor_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_colormap_editor_finalize,@function
gimp_colormap_editor_finalize:          # @gimp_colormap_editor_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_colormap_editor_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 168(%rax)
	je	.LBB12_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 168(%rax)
.LBB12_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_colormap_editor_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_colormap_editor_finalize, .Lfunc_end12-gimp_colormap_editor_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_colormap_editor_unmap,@function
gimp_colormap_editor_unmap:             # @gimp_colormap_editor_unmap
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_colormap_editor_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 200(%rax)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gtk_widget_hide
.LBB13_2:                               # %if.end
	movq	gimp_colormap_editor_parent_class, %rax
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
.Lfunc_end13:
	.size	gimp_colormap_editor_unmap, .Lfunc_end13-gimp_colormap_editor_unmap
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_colormap_editor_set_image,@function
gimp_colormap_editor_set_image:         # @gimp_colormap_editor_set_image
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_colormap_editor_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 144(%rax)
	je	.LBB14_10
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_colormap_image_mode_changed, %rdx
	movq	-8(%rbp), %rdi
	movq	144(%rdi), %rdi
	movq	-24(%rbp), %r9
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-40(%rbp), %r10         # 8-byte Reload
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_colormap_image_colormap_changed, %rdi
	movq	-8(%rbp), %r9
	movq	144(%r9), %r9
	movq	-24(%rbp), %r10
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movq	-24(%rbp), %rdi
	cmpq	$0, 200(%rdi)
	movl	%eax, -64(%rbp)         # 4-byte Spill
	je	.LBB14_3
# BB#2:                                 # %if.then.8
	movq	-24(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gtk_widget_hide
.LBB14_3:                               # %if.end
	cmpq	$0, -16(%rbp)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	gimp_image_base_type
	cmpl	$2, %eax
	jne	.LBB14_6
# BB#5:                                 # %land.lhs.true.12
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_colormap
	cmpq	$0, %rax
	jne	.LBB14_9
.LBB14_6:                               # %if.then.15
	xorps	%xmm0, %xmm0
	movq	-24(%rbp), %rax
	movq	176(%rax), %rdi
	callq	gtk_adjustment_set_upper
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_mapped
	cmpl	$0, %eax
	je	.LBB14_8
# BB#7:                                 # %if.then.20
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gimp_view_set_viewable
.LBB14_8:                               # %if.end.23
	jmp	.LBB14_9
.LBB14_9:                               # %if.end.24
	jmp	.LBB14_10
.LBB14_10:                              # %if.end.25
	movq	gimp_colormap_editor_parent_class, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_image_editor_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	824(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-24(%rbp), %rax
	movl	$0, 160(%rax)
	cmpq	$0, -16(%rbp)
	je	.LBB14_16
# BB#11:                                # %if.then.29
	movabsq	$.L.str.13, %rsi
	movabsq	$gimp_colormap_image_mode_changed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.14, %rsi
	movabsq	$gimp_colormap_image_colormap_changed, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	cmpq	$0, -16(%rbp)
	movq	%rax, -120(%rbp)        # 8-byte Spill
	je	.LBB14_15
# BB#12:                                # %land.lhs.true.33
	movq	-16(%rbp), %rdi
	callq	gimp_image_base_type
	cmpl	$2, %eax
	jne	.LBB14_15
# BB#13:                                # %land.lhs.true.36
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_colormap
	cmpq	$0, %rax
	je	.LBB14_15
# BB#14:                                # %if.then.39
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_image_get_colormap_palette
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_view_set_viewable
	movq	-24(%rbp), %rax
	movq	176(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_image_get_colormap_size
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	movq	-152(%rbp), %rdi        # 8-byte Reload
	callq	gtk_adjustment_set_upper
.LBB14_15:                              # %if.end.48
	jmp	.LBB14_16
.LBB14_16:                              # %if.end.49
	movq	-24(%rbp), %rdi
	callq	gimp_colormap_editor_update_entries
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_colormap_editor_set_image, .Lfunc_end14-gimp_colormap_editor_set_image
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_colormap_image_mode_changed,@function
gimp_colormap_image_mode_changed:       # @gimp_colormap_image_mode_changed
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
	cmpq	$0, 200(%rsi)
	je	.LBB15_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gtk_widget_hide
.LBB15_2:                               # %if.end
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	callq	gimp_colormap_image_colormap_changed
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_colormap_image_mode_changed, .Lfunc_end15-gimp_colormap_image_mode_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_colormap_image_colormap_changed,@function
gimp_colormap_image_colormap_changed:   # @gimp_colormap_image_colormap_changed
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB16_4
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rdi
	callq	gimp_image_base_type
	cmpl	$2, %eax
	jne	.LBB16_4
# BB#2:                                 # %land.lhs.true.2
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_colormap
	cmpq	$0, %rax
	je	.LBB16_4
# BB#3:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_image_get_colormap_palette
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_view_set_viewable
	movq	-24(%rbp), %rax
	movq	176(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_image_get_colormap_size
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm0
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	gtk_adjustment_set_upper
	jmp	.LBB16_5
.LBB16_4:                               # %if.else
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gimp_view_set_viewable
.LBB16_5:                               # %if.end
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	160(%rcx), %eax
	je	.LBB16_7
# BB#6:                                 # %lor.lhs.false
	cmpl	$-1, -12(%rbp)
	jne	.LBB16_8
.LBB16_7:                               # %if.then.18
	movq	-24(%rbp), %rdi
	callq	gimp_colormap_editor_update_entries
.LBB16_8:                               # %if.end.19
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_colormap_image_colormap_changed, .Lfunc_end16-gimp_colormap_image_colormap_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_colormap_editor_set_context,@function
gimp_colormap_editor_set_context:       # @gimp_colormap_editor_set_context
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_colormap_editor_get_type
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
	movq	152(%rax), %rax
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
.Lfunc_end17:
	.size	gimp_colormap_editor_set_context, .Lfunc_end17-gimp_colormap_editor_set_context
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4618441417868443648     # double 6
	.text
	.align	16, 0x90
	.type	gimp_colormap_preview_expose,@function
gimp_colormap_preview_expose:           # @gimp_colormap_preview_expose
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	callq	gimp_image_editor_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 144(%rax)
	je	.LBB18_2
# BB#1:                                 # %lor.lhs.false
	movq	-40(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gimp_image_base_type
	cmpl	$2, %eax
	jne	.LBB18_3
.LBB18_2:                               # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB18_11
.LBB18_3:                               # %if.end
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gdk_cairo_create
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	40(%rax), %rsi
	callq	gdk_cairo_region
	movq	-56(%rbp), %rdi
	callq	cairo_clip
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_style
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_widget_get_state
	movl	%eax, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	addq	$24, %rdi
	imulq	$12, %rsi, %rsi
	addq	%rsi, %rdi
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-112(%rbp), %rsi        # 8-byte Reload
	callq	gdk_cairo_set_source_color
	leaq	-72(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_has_window
	cmpl	$0, %eax
	jne	.LBB18_5
# BB#4:                                 # %if.then.9
	movq	-56(%rbp), %rdi
	cvtsi2sdl	-72(%rbp), %xmm0
	cvtsi2sdl	-68(%rbp), %xmm1
	callq	cairo_translate
.LBB18_5:                               # %if.end.12
	movq	-32(%rbp), %rax
	cmpq	$0, 168(%rax)
	jne	.LBB18_7
# BB#6:                                 # %if.then.14
	movq	-32(%rbp), %rax
	movq	152(%rax), %rdi
	callq	gimp_colormap_editor_create_layout
	movq	-32(%rbp), %rdi
	movq	%rax, 168(%rdi)
.LBB18_7:                               # %if.end.17
	movq	-32(%rbp), %rax
	movq	168(%rax), %rdi
	movl	-64(%rbp), %ecx
	subl	$12, %ecx
	shll	$10, %ecx
	movl	%ecx, %esi
	callq	pango_layout_set_width
	leaq	-76(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	168(%rax), %rdi
	callq	pango_layout_get_pixel_size
	movl	$2, %ecx
	movl	-60(%rbp), %r8d
	subl	-80(%rbp), %r8d
	movl	%r8d, %eax
	cltd
	idivl	%ecx
	movl	%eax, -84(%rbp)
	movq	-56(%rbp), %rdi
	cmpl	$0, -84(%rbp)
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	jle	.LBB18_9
# BB#8:                                 # %cond.true
	movl	-84(%rbp), %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB18_10
.LBB18_9:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB18_10
.LBB18_10:                              # %cond.end
	movl	-124(%rbp), %eax        # 4-byte Reload
	movsd	.LCPI18_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	movq	-120(%rbp), %rdi        # 8-byte Reload
	callq	cairo_move_to
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	168(%rcx), %rsi
	callq	pango_cairo_show_layout
	movq	-56(%rbp), %rdi
	callq	cairo_destroy
	movl	$1, -4(%rbp)
.LBB18_11:                              # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_colormap_preview_expose, .Lfunc_end18-gimp_colormap_preview_expose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_colormap_editor_entry_clicked,@function
gimp_colormap_editor_entry_clicked:     # @gimp_colormap_editor_entry_clicked
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	40(%rax), %esi
	callq	gimp_colormap_editor_set_index
	movl	-20(%rbp), %esi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movl	%esi, -56(%rbp)         # 4-byte Spill
	callq	gimp_get_toggle_behavior_mask
	movl	-56(%rbp), %esi         # 4-byte Reload
	andl	%eax, %esi
	cmpl	$0, %esi
	je	.LBB19_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	136(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_context_set_background
	jmp	.LBB19_3
.LBB19_2:                               # %if.else
	movq	-40(%rbp), %rax
	movq	136(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_context_set_foreground
.LBB19_3:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_colormap_editor_entry_clicked, .Lfunc_end19-gimp_colormap_editor_entry_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_colormap_editor_entry_selected,@function
gimp_colormap_editor_entry_selected:    # @gimp_colormap_editor_entry_selected
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB20_2
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, -32(%rbp)         # 4-byte Spill
	jmp	.LBB20_3
.LBB20_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jmp	.LBB20_3
.LBB20_3:                               # %cond.end
	movl	-32(%rbp), %eax         # 4-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_colormap_editor_set_index
	movl	%eax, -36(%rbp)         # 4-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_colormap_editor_entry_selected, .Lfunc_end20-gimp_colormap_editor_entry_selected
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_colormap_editor_entry_activated,@function
gimp_colormap_editor_entry_activated:   # @gimp_colormap_editor_entry_activated
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movl	40(%rdx), %esi
	movq	%rcx, %rdx
	callq	gimp_colormap_editor_set_index
	movq	-24(%rbp), %rcx
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_ui_manager
	movabsq	$.L.str.9, %rsi
	movabsq	$.L.str.10, %rdx
	movq	%rax, %rdi
	callq	gimp_ui_manager_activate_action
	movl	%eax, -44(%rbp)         # 4-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_colormap_editor_entry_activated, .Lfunc_end21-gimp_colormap_editor_entry_activated
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_colormap_editor_entry_context,@function
gimp_colormap_editor_entry_context:     # @gimp_colormap_editor_entry_context
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movl	40(%rdx), %esi
	movq	%rcx, %rdx
	callq	gimp_colormap_editor_set_index
	movq	-24(%rbp), %rcx
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	gimp_editor_popup_menu
	movl	%eax, -44(%rbp)         # 4-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_colormap_editor_entry_context, .Lfunc_end22-gimp_colormap_editor_entry_context
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_colormap_editor_color_dropped,@function
gimp_colormap_editor_color_dropped:     # @gimp_colormap_editor_color_dropped
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_colormap_editor_color_dropped, .Lfunc_end23-gimp_colormap_editor_color_dropped
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI24_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_colormap_adjustment_changed,@function
gimp_colormap_adjustment_changed:       # @gimp_colormap_adjustment_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_image_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	144(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB24_4
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rdi
	callq	gimp_image_base_type
	cmpl	$2, %eax
	jne	.LBB24_4
# BB#2:                                 # %land.lhs.true.5
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_colormap
	cmpq	$0, %rax
	je	.LBB24_4
# BB#3:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	xorl	%eax, %eax
	movl	%eax, %edx
	movsd	.LCPI24_0, %xmm1        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_colormap_editor_set_index
	movq	-16(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gimp_colormap_editor_update_entries
.LBB24_4:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_colormap_adjustment_changed, .Lfunc_end24-gimp_colormap_adjustment_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_colormap_hex_entry_changed,@function
gimp_colormap_hex_entry_changed:        # @gimp_colormap_hex_entry_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_image_editor_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	144(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB25_2
# BB#1:                                 # %if.then
	leaq	-56(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_color_hex_entry_get_color
	leaq	-56(%rbp), %rdx
	movl	$1, %ecx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	160(%rsi), %esi
	callq	gimp_image_set_colormap_entry
	movq	-24(%rbp), %rdi
	callq	gimp_image_flush
.LBB25_2:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_colormap_hex_entry_changed, .Lfunc_end25-gimp_colormap_hex_entry_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_colormap_editor_create_layout,@function
gimp_colormap_editor_create_layout:     # @gimp_colormap_editor_create_layout
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movabsq	$.L.str.25, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gettext
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_widget_create_pango_layout
	movl	$1, %esi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	pango_layout_set_alignment
	callq	pango_attr_list_new
	movl	$2, %edi
	movq	%rax, -24(%rbp)
	callq	pango_attr_style_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-32(%rbp), %rax
	movl	$-1, 12(%rax)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	pango_attr_list_insert
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	pango_layout_set_attributes
	movq	-24(%rbp), %rdi
	callq	pango_attr_list_unref
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_colormap_editor_create_layout, .Lfunc_end26-gimp_colormap_editor_create_layout
	.cfi_endproc

	.type	gimp_colormap_editor_get_type.g_define_type_id__volatile,@object # @gimp_colormap_editor_get_type.g_define_type_id__volatile
	.local	gimp_colormap_editor_get_type.g_define_type_id__volatile
	.comm	gimp_colormap_editor_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpColormapEditor"
	.size	.L.str, 19

	.type	gimp_colormap_editor_get_type.g_implement_interface_info,@object # @gimp_colormap_editor_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_colormap_editor_get_type.g_implement_interface_info:
	.quad	gimp_colormap_editor_docked_iface_init
	.quad	0
	.quad	0
	.size	gimp_colormap_editor_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_colormap_editor_new,@object # @__func__.gimp_colormap_editor_new
.L__func__.gimp_colormap_editor_new:
	.asciz	"gimp_colormap_editor_new"
	.size	.L__func__.gimp_colormap_editor_new, 25

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_MENU_FACTORY (menu_factory)"
	.size	.L.str.2, 36

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
	.asciz	"<Colormap>"
	.size	.L.str.5, 11

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"ui-path"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"/colormap-popup"
	.size	.L.str.7, 16

	.type	.L__func__.gimp_colormap_editor_get_index,@object # @__func__.gimp_colormap_editor_get_index
.L__func__.gimp_colormap_editor_get_index:
	.asciz	"gimp_colormap_editor_get_index"
	.size	.L__func__.gimp_colormap_editor_get_index, 31

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP_IS_COLORMAP_EDITOR (editor)"
	.size	.L.str.8, 33

	.type	.L__func__.gimp_colormap_editor_set_index,@object # @__func__.gimp_colormap_editor_set_index
.L__func__.gimp_colormap_editor_set_index:
	.asciz	"gimp_colormap_editor_set_index"
	.size	.L__func__.gimp_colormap_editor_set_index, 31

	.type	.L__func__.gimp_colormap_editor_max_index,@object # @__func__.gimp_colormap_editor_max_index
.L__func__.gimp_colormap_editor_max_index:
	.asciz	"gimp_colormap_editor_max_index"
	.size	.L__func__.gimp_colormap_editor_max_index, 31

	.type	gimp_colormap_editor_parent_class,@object # @gimp_colormap_editor_parent_class
	.local	gimp_colormap_editor_parent_class
	.comm	gimp_colormap_editor_parent_class,8,8
	.type	GimpColormapEditor_private_offset,@object # @GimpColormapEditor_private_offset
	.local	GimpColormapEditor_private_offset
	.comm	GimpColormapEditor_private_offset,4,4
	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"colormap"
	.size	.L.str.9, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"colormap-edit-color"
	.size	.L.str.10, 20

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"colormap-add-color-from-fg"
	.size	.L.str.11, 27

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"colormap-add-color-from-bg"
	.size	.L.str.12, 27

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"mode-changed"
	.size	.L.str.13, 13

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"colormap-changed"
	.size	.L.str.14, 17

	.type	parent_docked_iface,@object # @parent_docked_iface
	.local	parent_docked_iface
	.comm	parent_docked_iface,8,8
	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"expose-event"
	.size	.L.str.15, 13

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"entry-clicked"
	.size	.L.str.16, 14

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"entry-selected"
	.size	.L.str.17, 15

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"entry-activated"
	.size	.L.str.18, 16

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"entry-context"
	.size	.L.str.19, 14

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"color-dropped"
	.size	.L.str.20, 14

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Color index:"
	.size	.L.str.21, 13

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"value-changed"
	.size	.L.str.22, 14

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"HTML notation:"
	.size	.L.str.23, 15

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"color-changed"
	.size	.L.str.24, 14

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Only indexed images have a colormap."
	.size	.L.str.25, 37

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.zero	1
	.size	.L.str.26, 1

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"%02x%02x%02x"
	.size	.L.str.27, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
