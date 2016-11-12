	.text
	.file	"gimptextstyleeditor.bc"
	.globl	gimp_text_style_editor_get_type
	.align	16, 0x90
	.type	gimp_text_style_editor_get_type,@function
gimp_text_style_editor_get_type:        # @gimp_text_style_editor_get_type
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
	movq	gimp_text_style_editor_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_text_style_editor_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_text_style_editor_class_intern_init, %rdi
	movl	$280, %r8d              # imm = 0x118
	movabsq	$gimp_text_style_editor_init, %rcx
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
	movabsq	$gimp_text_style_editor_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_text_style_editor_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_text_style_editor_get_type, .Lfunc_end0-gimp_text_style_editor_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_style_editor_class_intern_init,@function
gimp_text_style_editor_class_intern_init: # @gimp_text_style_editor_class_intern_init
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
	movq	%rax, gimp_text_style_editor_parent_class
	cmpl	$0, GimpTextStyleEditor_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpTextStyleEditor_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_text_style_editor_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_text_style_editor_class_intern_init, .Lfunc_end1-gimp_text_style_editor_class_intern_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
.LCPI2_1:
	.quad	-4571364728013586432    # double -1000
.LCPI2_2:
	.quad	4652007308841189376     # double 1000
.LCPI2_3:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	gimp_text_style_editor_init,@function
gimp_text_style_editor_init:            # @gimp_text_style_editor_init
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
	subq	$400, %rsp              # imm = 0x190
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gtk_orientable_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_orientable_set_orientation
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_spacing
	xorl	%edi, %edi
	movl	$2, %esi
	callq	gtk_box_new
	movq	-8(%rbp), %rcx
	movq	%rax, 184(%rcx)
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-8(%rbp), %rcx
	movq	184(%rcx), %rsi
	movq	%rax, %rdi
	movl	%edx, -76(%rbp)         # 4-byte Spill
	movl	-76(%rbp), %ecx         # 4-byte Reload
	movl	-76(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	184(%rax), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$24, %edx
	movl	$1, %ecx
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gimp_container_entry_new
	movq	-8(%rbp), %rsi
	movq	%rax, 200(%rsi)
	movq	-8(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rsi
	movq	200(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movl	-92(%rbp), %r8d         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.43, %rdi
	movq	-8(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movabsq	$.L.str.44, %rdx
	movl	$10, %r9d
	movl	%ecx, %edi
	movl	%r8d, %esi
	movl	%r8d, -108(%rbp)        # 4-byte Spill
	movl	-108(%rbp), %r10d       # 4-byte Reload
	movl	%r9d, -112(%rbp)        # 4-byte Spill
	movl	%r10d, %r9d
	movl	$10, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_size_entry_new
	movq	-8(%rbp), %rdx
	movq	%rax, 208(%rdx)
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing
	movq	-8(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rsi
	movq	208(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	movl	-132(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	208(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.45, %rdi
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.46, %rsi
	movabsq	$gimp_text_style_editor_size_changed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	208(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-152(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	xorl	%edi, %edi
	movl	$2, %esi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	-8(%rbp), %rcx
	movq	%rax, 192(%rcx)
	movq	-8(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rcx
	movq	192(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	192(%rax), %rdi
	callq	gtk_widget_show
	callq	gtk_button_new
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	movq	%rax, 224(%rdi)
	movq	-8(%rbp), %rax
	movq	224(%rax), %rdi
	callq	gtk_widget_set_can_focus
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rsi
	movq	224(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	movl	-180(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	224(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.47, %rdi
	movq	-8(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.48, %rsi
	movabsq	$gimp_text_style_editor_clear_tags, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	224(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-200(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.49, %rdi
	movl	$1, %esi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_image_new_from_stock
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	leaq	-48(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI2_0, %xmm3         # xmm3 = mem[0],zero
	movsd	%xmm0, -224(%rbp)       # 8-byte Spill
	movsd	-224(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-224(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_rgba_set
	movabsq	$.L.str.50, %rdi
	callq	gettext
	leaq	-48(%rbp), %rsi
	xorl	%edx, %edx
	movl	$20, %r9d
	movq	%rax, %rdi
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gimp_color_panel_new
	movq	-8(%rbp), %rsi
	movq	%rax, 216(%rsi)
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rsi
	movq	216(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	movl	-236(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_end
	movq	-8(%rbp), %rax
	movq	216(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.50, %rdi
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.51, %rsi
	movabsq	$gimp_text_style_editor_color_changed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	216(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-256(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	xorps	%xmm0, %xmm0
	movsd	.LCPI2_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI2_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI2_0, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI2_3, %xmm4         # xmm4 = mem[0],zero
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
	movsd	-264(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_new
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movl	$1, %esi
	movq	-8(%rbp), %rcx
	movq	%rax, 256(%rcx)
	movq	-8(%rbp), %rax
	movq	256(%rax), %rdi
	callq	gtk_spin_button_new
	movq	-8(%rbp), %rcx
	movq	%rax, 248(%rcx)
	movq	-8(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$5, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_width_chars
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rcx
	movq	248(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_end
	movq	-8(%rbp), %rax
	movq	248(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.52, %rdi
	movq	-8(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.46, %rsi
	movabsq	$gimp_text_style_editor_kerning_changed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	256(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-312(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	xorps	%xmm0, %xmm0
	movsd	.LCPI2_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI2_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI2_0, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI2_3, %xmm4         # xmm4 = mem[0],zero
	movsd	%xmm0, -320(%rbp)       # 8-byte Spill
	movsd	-320(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_new
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movl	$1, %esi
	movq	-8(%rbp), %rcx
	movq	%rax, 240(%rcx)
	movq	-8(%rbp), %rax
	movq	240(%rax), %rdi
	callq	gtk_spin_button_new
	movq	-8(%rbp), %rcx
	movq	%rax, 232(%rcx)
	movq	-8(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$5, %esi
	movq	%rax, %rdi
	callq	gtk_entry_set_width_chars
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rcx
	movq	232(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_end
	movq	-8(%rbp), %rax
	movq	232(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.53, %rdi
	movq	-8(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.46, %rsi
	movabsq	$gimp_text_style_editor_baseline_changed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	240(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-368(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -376(%rbp)        # 8-byte Spill
	addq	$400, %rsp              # imm = 0x190
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_text_style_editor_init, .Lfunc_end2-gimp_text_style_editor_init
	.cfi_endproc

	.globl	gimp_text_style_editor_new
	.align	16, 0x90
	.type	gimp_text_style_editor_new,@function
gimp_text_style_editor_new:             # @gimp_text_style_editor_new
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$208, %rsp
.Ltmp12:
	.cfi_offset %rbx, -48
.Ltmp13:
	.cfi_offset %r12, -40
.Ltmp14:
	.cfi_offset %r14, -32
.Ltmp15:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movsd	%xmm0, -80(%rbp)
	movsd	%xmm1, -88(%rbp)
# BB#1:                                 # %do.body
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -108(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -108(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_style_editor_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB3_47
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_text_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB3_15
# BB#14:                                # %if.then.20
	movl	$0, -132(%rbp)
	jmp	.LBB3_20
.LBB3_15:                               # %if.else.21
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_18
# BB#16:                                # %land.lhs.true.24
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB3_18
# BB#17:                                # %if.then.28
	movl	$1, -132(%rbp)
	jmp	.LBB3_19
.LBB3_18:                               # %if.else.29
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB3_19:                               # %if.end.31
	jmp	.LBB3_20
.LBB3_20:                               # %if.end.32
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB3_22
# BB#21:                                # %if.then.35
	jmp	.LBB3_23
.LBB3_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_style_editor_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB3_47
.LBB3_23:                               # %if.end.37
	jmp	.LBB3_24
.LBB3_24:                               # %do.end.38
	jmp	.LBB3_25
.LBB3_25:                               # %do.body.39
	movq	-64(%rbp), %rax
	movq	%rax, -144(%rbp)
	callq	gimp_text_buffer_get_type
	movq	%rax, -152(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB3_27
# BB#26:                                # %if.then.48
	movl	$0, -156(%rbp)
	jmp	.LBB3_32
.LBB3_27:                               # %if.else.49
	movq	-144(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_30
# BB#28:                                # %land.lhs.true.52
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB3_30
# BB#29:                                # %if.then.56
	movl	$1, -156(%rbp)
	jmp	.LBB3_31
.LBB3_30:                               # %if.else.57
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -156(%rbp)
.LBB3_31:                               # %if.end.59
	jmp	.LBB3_32
.LBB3_32:                               # %if.end.60
	movl	-156(%rbp), %eax
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	je	.LBB3_34
# BB#33:                                # %if.then.63
	jmp	.LBB3_35
.LBB3_34:                               # %if.else.64
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_style_editor_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB3_47
.LBB3_35:                               # %if.end.65
	jmp	.LBB3_36
.LBB3_36:                               # %do.end.66
	jmp	.LBB3_37
.LBB3_37:                               # %do.body.67
	xorps	%xmm0, %xmm0
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB3_39
# BB#38:                                # %if.then.69
	jmp	.LBB3_40
.LBB3_39:                               # %if.else.70
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_style_editor_new, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB3_47
.LBB3_40:                               # %if.end.71
	jmp	.LBB3_41
.LBB3_41:                               # %do.end.72
	jmp	.LBB3_42
.LBB3_42:                               # %do.body.73
	xorps	%xmm0, %xmm0
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB3_44
# BB#43:                                # %if.then.75
	jmp	.LBB3_45
.LBB3_44:                               # %if.else.76
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_style_editor_new, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB3_47
.LBB3_45:                               # %if.end.77
	jmp	.LBB3_46
.LBB3_46:                               # %do.end.78
	callq	gimp_text_style_editor_get_type
	movabsq	$.L.str.7, %rsi
	movabsq	$.L.str.8, %rcx
	movabsq	$.L.str.9, %r9
	movabsq	$.L.str.10, %rdx
	movabsq	$.L.str.11, %rdi
	movabsq	$.L.str.12, %r8
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	movq	-48(%rbp), %rbx
	movq	-56(%rbp), %r14
	movq	-64(%rbp), %r15
	movq	-72(%rbp), %r12
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	movq	%rbx, %rdx
	movq	%r8, -184(%rbp)         # 8-byte Spill
	movq	%r14, %r8
	movq	%r15, (%rsp)
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r12, 16(%rsp)
	movq	-168(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 24(%rsp)
	movq	-184(%rbp), %r14        # 8-byte Reload
	movq	%r14, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$2, %al
	movq	%r11, -192(%rbp)        # 8-byte Spill
	callq	g_object_new
	movq	%rax, -40(%rbp)
.LBB3_47:                               # %return
	movq	-40(%rbp), %rax
	addq	$208, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_text_style_editor_new, .Lfunc_end3-gimp_text_style_editor_new
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4652218415073722368     # double 1024
	.text
	.globl	gimp_text_style_editor_list_tags
	.align	16, 0x90
	.type	gimp_text_style_editor_list_tags,@function
gimp_text_style_editor_list_tags:       # @gimp_text_style_editor_list_tags
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
	subq	$224, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	$0, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_text_style_editor_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_style_editor_list_tags, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_53
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB4_15
# BB#14:                                # %if.then.13
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_text_style_editor_list_tags, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_53
.LBB4_16:                               # %if.end.15
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.16
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB4_18:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB4_27
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB4_18 Depth=1
	movabsq	$.L.str.15, %rsi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	cmpl	$0, %eax
	je	.LBB4_21
# BB#20:                                # %if.then.24
                                        #   in Loop: Header=BB4_18 Depth=1
	movq	-40(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -40(%rbp)
	jmp	.LBB4_22
.LBB4_21:                               # %if.else.26
                                        #   in Loop: Header=BB4_18 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-24(%rbp), %rsi
	movq	%rax, (%rsi)
.LBB4_22:                               # %if.end.28
                                        #   in Loop: Header=BB4_18 Depth=1
	jmp	.LBB4_23
.LBB4_23:                               # %for.inc
                                        #   in Loop: Header=BB4_18 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB4_25
# BB#24:                                # %cond.true
                                        #   in Loop: Header=BB4_18 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB4_26
.LBB4_25:                               # %cond.false
                                        #   in Loop: Header=BB4_18 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB4_26
.LBB4_26:                               # %cond.end
                                        #   in Loop: Header=BB4_18 Depth=1
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB4_18
.LBB4_27:                               # %for.end
	movq	-16(%rbp), %rax
	movq	152(%rax), %rax
	movq	104(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB4_28:                               # %for.cond.32
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB4_34
# BB#29:                                # %for.body.34
                                        #   in Loop: Header=BB4_28 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-80(%rbp), %rax
	movq	(%rax), %rsi
	callq	g_list_prepend
	movq	-24(%rbp), %rsi
	movq	%rax, (%rsi)
# BB#30:                                # %for.inc.37
                                        #   in Loop: Header=BB4_28 Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB4_32
# BB#31:                                # %cond.true.39
                                        #   in Loop: Header=BB4_28 Depth=1
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB4_33
.LBB4_32:                               # %cond.false.41
                                        #   in Loop: Header=BB4_28 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	jmp	.LBB4_33
.LBB4_33:                               # %cond.end.42
                                        #   in Loop: Header=BB4_28 Depth=1
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, -80(%rbp)
	jmp	.LBB4_28
.LBB4_34:                               # %for.end.44
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -88(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB4_35
	jp	.LBB4_35
	jmp	.LBB4_36
.LBB4_35:                               # %if.then.49
	xorl	%edi, %edi
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	176(%rax), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_units_to_points
	movsd	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -104(%rbp)
	movq	-16(%rbp), %rax
	movq	152(%rax), %rdi
	mulsd	-104(%rbp), %xmm1
	cvttsd2si	%xmm1, %esi
	callq	gimp_text_buffer_get_size_tag
	movq	%rax, -96(%rbp)
	movq	-40(%rbp), %rdi
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -40(%rbp)
.LBB4_36:                               # %if.end.57
	movq	-16(%rbp), %rax
	movq	152(%rax), %rax
	movq	128(%rax), %rax
	movq	%rax, -112(%rbp)
.LBB4_37:                               # %for.cond.62
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -112(%rbp)
	je	.LBB4_43
# BB#38:                                # %for.body.64
                                        #   in Loop: Header=BB4_37 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-112(%rbp), %rax
	movq	(%rax), %rsi
	callq	g_list_prepend
	movq	-24(%rbp), %rsi
	movq	%rax, (%rsi)
# BB#39:                                # %for.inc.67
                                        #   in Loop: Header=BB4_37 Depth=1
	cmpq	$0, -112(%rbp)
	je	.LBB4_41
# BB#40:                                # %cond.true.69
                                        #   in Loop: Header=BB4_37 Depth=1
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jmp	.LBB4_42
.LBB4_41:                               # %cond.false.71
                                        #   in Loop: Header=BB4_37 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	jmp	.LBB4_42
.LBB4_42:                               # %cond.end.72
                                        #   in Loop: Header=BB4_37 Depth=1
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	%rax, -112(%rbp)
	jmp	.LBB4_37
.LBB4_43:                               # %for.end.74
	movq	-16(%rbp), %rax
	movq	136(%rax), %rdi
	callq	gimp_context_get_font_name
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	.LBB4_45
# BB#44:                                # %if.then.77
	movq	-16(%rbp), %rax
	movq	152(%rax), %rdi
	movq	-120(%rbp), %rsi
	callq	gimp_text_buffer_get_font_tag
	movq	%rax, -128(%rbp)
	movq	-40(%rbp), %rdi
	movq	-128(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -40(%rbp)
.LBB4_45:                               # %if.end.83
	movq	-16(%rbp), %rax
	movq	152(%rax), %rax
	movq	136(%rax), %rax
	movq	%rax, -136(%rbp)
.LBB4_46:                               # %for.cond.88
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -136(%rbp)
	je	.LBB4_52
# BB#47:                                # %for.body.90
                                        #   in Loop: Header=BB4_46 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-136(%rbp), %rax
	movq	(%rax), %rsi
	callq	g_list_prepend
	movq	-24(%rbp), %rsi
	movq	%rax, (%rsi)
# BB#48:                                # %for.inc.93
                                        #   in Loop: Header=BB4_46 Depth=1
	cmpq	$0, -136(%rbp)
	je	.LBB4_50
# BB#49:                                # %cond.true.95
                                        #   in Loop: Header=BB4_46 Depth=1
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB4_51
.LBB4_50:                               # %cond.false.97
                                        #   in Loop: Header=BB4_46 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	jmp	.LBB4_51
.LBB4_51:                               # %cond.end.98
                                        #   in Loop: Header=BB4_46 Depth=1
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, -136(%rbp)
	jmp	.LBB4_46
.LBB4_52:                               # %for.end.100
	movq	-16(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-168(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_button_get_color
	leaq	-168(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	152(%rax), %rdi
	callq	gimp_text_buffer_get_color_tag
	movq	%rax, -176(%rbp)
	movq	-40(%rbp), %rdi
	movq	-176(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_list_reverse
	movq	-24(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rdi
	callq	g_list_reverse
	movq	%rax, -8(%rbp)
.LBB4_53:                               # %return
	movq	-8(%rbp), %rax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_text_style_editor_list_tags, .Lfunc_end4-gimp_text_style_editor_list_tags
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4572414629676717179     # double 0.0050000000000000001
.LCPI5_1:
	.quad	4679240012837945344     # double 65536
.LCPI5_2:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_text_style_editor_class_init,@function
gimp_text_style_editor_class_init:      # @gimp_text_style_editor_class_init
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
	subq	$64, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$gimp_text_style_editor_get_property, %rsi
	movabsq	$gimp_text_style_editor_set_property, %rdi
	movabsq	$gimp_text_style_editor_finalize, %rcx
	movabsq	$gimp_text_style_editor_dispose, %rdx
	movabsq	$gimp_text_style_editor_constructed, %r8
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%r8, 72(%rax)
	movq	-16(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 48(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 32(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_get_type
	movabsq	$.L.str.7, %rdi
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movl	$235, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_text_get_type
	movabsq	$.L.str.8, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$235, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$2, %esi
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_text_buffer_get_type
	movabsq	$.L.str.9, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$235, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$3, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_font_list_get_type
	movabsq	$.L.str.10, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$235, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$4, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.11, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI5_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI5_2, %xmm2         # xmm2 = mem[0],zero
	movl	$231, %ecx
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_double
	movl	$5, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.12, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI5_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI5_2, %xmm2         # xmm2 = mem[0],zero
	movl	$231, %ecx
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_double
	movl	$6, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_text_style_editor_class_init, .Lfunc_end5-gimp_text_style_editor_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_style_editor_constructed,@function
gimp_text_style_editor_constructed:     # @gimp_text_style_editor_constructed
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
	subq	$400, %rsp              # imm = 0x190
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gimp_text_style_editor_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_text_style_editor_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_text_style_editor_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB6_2:                                # %if.end
	jmp	.LBB6_3
.LBB6_3:                                # %do.body
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB6_5
# BB#4:                                 # %if.then.7
	movl	$0, -36(%rbp)
	jmp	.LBB6_10
.LBB6_5:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_8
# BB#6:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB6_8
# BB#7:                                 # %if.then.10
	movl	$1, -36(%rbp)
	jmp	.LBB6_9
.LBB6_8:                                # %if.else.11
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB6_9:                                # %if.end.13
	jmp	.LBB6_10
.LBB6_10:                               # %if.end.14
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB6_12
# BB#11:                                # %if.then.16
	jmp	.LBB6_13
.LBB6_12:                               # %if.else.17
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.16, %rsi
	movl	$303, %edx              # imm = 0x12F
	movabsq	$.L__func__.gimp_text_style_editor_constructed, %rcx
	movabsq	$.L.str.17, %r8
	callq	g_assertion_message_expr
.LBB6_13:                               # %if.end.18
	jmp	.LBB6_14
.LBB6_14:                               # %do.end
	jmp	.LBB6_15
.LBB6_15:                               # %do.body.19
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_font_list_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB6_17
# BB#16:                                # %if.then.28
	movl	$0, -60(%rbp)
	jmp	.LBB6_22
.LBB6_17:                               # %if.else.29
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_20
# BB#18:                                # %land.lhs.true.32
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB6_20
# BB#19:                                # %if.then.36
	movl	$1, -60(%rbp)
	jmp	.LBB6_21
.LBB6_20:                               # %if.else.37
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB6_21:                               # %if.end.39
	jmp	.LBB6_22
.LBB6_22:                               # %if.end.40
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB6_24
# BB#23:                                # %if.then.43
	jmp	.LBB6_25
.LBB6_24:                               # %if.else.44
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.16, %rsi
	movl	$304, %edx              # imm = 0x130
	movabsq	$.L__func__.gimp_text_style_editor_constructed, %rcx
	movabsq	$.L.str.18, %r8
	callq	g_assertion_message_expr
.LBB6_25:                               # %if.end.45
	jmp	.LBB6_26
.LBB6_26:                               # %do.end.46
	jmp	.LBB6_27
.LBB6_27:                               # %do.body.47
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_text_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB6_29
# BB#28:                                # %if.then.56
	movl	$0, -84(%rbp)
	jmp	.LBB6_34
.LBB6_29:                               # %if.else.57
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_32
# BB#30:                                # %land.lhs.true.60
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB6_32
# BB#31:                                # %if.then.64
	movl	$1, -84(%rbp)
	jmp	.LBB6_33
.LBB6_32:                               # %if.else.65
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB6_33:                               # %if.end.67
	jmp	.LBB6_34
.LBB6_34:                               # %if.end.68
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB6_36
# BB#35:                                # %if.then.71
	jmp	.LBB6_37
.LBB6_36:                               # %if.else.72
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.16, %rsi
	movl	$305, %edx              # imm = 0x131
	movabsq	$.L__func__.gimp_text_style_editor_constructed, %rcx
	movabsq	$.L.str.19, %r8
	callq	g_assertion_message_expr
.LBB6_37:                               # %if.end.73
	jmp	.LBB6_38
.LBB6_38:                               # %do.end.74
	jmp	.LBB6_39
.LBB6_39:                               # %do.body.75
	movq	-16(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_text_buffer_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB6_41
# BB#40:                                # %if.then.84
	movl	$0, -108(%rbp)
	jmp	.LBB6_46
.LBB6_41:                               # %if.else.85
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_44
# BB#42:                                # %land.lhs.true.88
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB6_44
# BB#43:                                # %if.then.92
	movl	$1, -108(%rbp)
	jmp	.LBB6_45
.LBB6_44:                               # %if.else.93
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB6_45:                               # %if.end.95
	jmp	.LBB6_46
.LBB6_46:                               # %if.end.96
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB6_48
# BB#47:                                # %if.then.99
	jmp	.LBB6_49
.LBB6_48:                               # %if.else.100
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.16, %rsi
	movl	$306, %edx              # imm = 0x132
	movabsq	$.L__func__.gimp_text_style_editor_constructed, %rcx
	movabsq	$.L.str.20, %r8
	callq	g_assertion_message_expr
.LBB6_49:                               # %if.end.101
	jmp	.LBB6_50
.LBB6_50:                               # %do.end.102
	movabsq	$.L.str.21, %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	128(%rcx), %rdi
	callq	gimp_context_new
	movabsq	$.L.str.22, %rsi
	movabsq	$gimp_text_style_editor_font_changed, %rcx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	%rax, 136(%rdx)
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-128(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-16(%rbp), %rcx
	movq	208(%rcx), %rcx
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$1, %edx
	movq	-16(%rbp), %rcx
	movsd	176(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_resolution
	movq	-16(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_color_panel_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rcx
	movq	128(%rcx), %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_get_user_context
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_color_panel_set_context
	movq	-16(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rcx
	movq	160(%rcx), %rsi
	movq	%rax, %rdi
	callq	gimp_container_view_set_container
	movq	-16(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rcx
	movq	136(%rcx), %rsi
	movq	%rax, %rdi
	callq	gimp_container_view_set_context
	movabsq	$.L.str.24, %rdi
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	152(%rcx), %rcx
	movq	72(%rcx), %rsi
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.23, %rdx
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_text_style_editor_create_toggle
	movabsq	$.L.str.26, %rdi
	movq	-16(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	152(%rdx), %rdx
	movq	80(%rdx), %rsi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	%rsi, -208(%rbp)        # 8-byte Spill
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.25, %rdx
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	-208(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_text_style_editor_create_toggle
	movabsq	$.L.str.28, %rdi
	movq	-16(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	152(%rdx), %rdx
	movq	88(%rdx), %rsi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movq	%rsi, -232(%rbp)        # 8-byte Spill
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.27, %rdx
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	-232(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_text_style_editor_create_toggle
	movabsq	$.L.str.30, %rdi
	movq	-16(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	152(%rdx), %rdx
	movq	96(%rdx), %rsi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movq	%rsi, -256(%rbp)        # 8-byte Spill
	movq	%rcx, -264(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.29, %rdx
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	-256(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_text_style_editor_create_toggle
	movabsq	$.L.str.31, %rsi
	movabsq	$gimp_text_style_editor_update, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-16(%rbp), %rdx
	movq	144(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-272(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.32, %rsi
	movabsq	$gimp_text_style_editor_update, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-16(%rbp), %rdx
	movq	144(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-288(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.33, %rsi
	movabsq	$gimp_text_style_editor_update, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-16(%rbp), %rdx
	movq	144(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-304(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.34, %rsi
	movabsq	$gimp_text_style_editor_update, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-16(%rbp), %rdx
	movq	144(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-320(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.35, %rsi
	movabsq	$gimp_text_style_editor_update, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$3, %r9d
	movq	-16(%rbp), %rdx
	movq	152(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-336(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.36, %rsi
	movabsq	$gimp_text_style_editor_update, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$3, %r9d
	movq	-16(%rbp), %rdx
	movq	152(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-352(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_text_style_editor_update, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$3, %r9d
	movq	-16(%rbp), %rdx
	movq	152(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-368(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.38, %rsi
	movabsq	$gimp_text_style_editor_update, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$3, %r9d
	movq	-16(%rbp), %rdx
	movq	152(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-384(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-16(%rbp), %rdi
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gimp_text_style_editor_update
	addq	$400, %rsp              # imm = 0x190
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_text_style_editor_constructed, .Lfunc_end6-gimp_text_style_editor_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_style_editor_dispose,@function
gimp_text_style_editor_dispose:         # @gimp_text_style_editor_dispose
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_text_style_editor_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 144(%rax)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_text_style_editor_update, %rdx
	movq	-16(%rbp), %rdi
	movq	144(%rdi), %rdi
	movq	-16(%rbp), %r9
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%r9, -40(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-40(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB7_2:                                # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB7_4
# BB#3:                                 # %if.then.5
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_text_style_editor_update, %rdx
	movq	-16(%rbp), %rdi
	movq	152(%rdi), %rdi
	movq	-16(%rbp), %r9
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-56(%rbp), %r10         # 8-byte Reload
	movq	%r9, -64(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB7_4:                                # %if.end.8
	movq	-16(%rbp), %rax
	cmpl	$0, 272(%rax)
	je	.LBB7_6
# BB#5:                                 # %if.then.10
	movq	-16(%rbp), %rax
	movl	272(%rax), %edi
	callq	g_source_remove
	movq	-16(%rbp), %rcx
	movl	$0, 272(%rcx)
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB7_6:                                # %if.end.14
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_text_style_editor_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_text_style_editor_dispose, .Lfunc_end7-gimp_text_style_editor_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_style_editor_finalize,@function
gimp_text_style_editor_finalize:        # @gimp_text_style_editor_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_text_style_editor_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 136(%rax)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 136(%rax)
.LBB8_2:                                # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 144(%rax)
	je	.LBB8_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 144(%rax)
.LBB8_4:                                # %if.end.8
	movq	-16(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB8_6
# BB#5:                                 # %if.then.10
	movq	-16(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 152(%rax)
.LBB8_6:                                # %if.end.13
	movq	-16(%rbp), %rax
	cmpq	$0, 160(%rax)
	je	.LBB8_8
# BB#7:                                 # %if.then.15
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 160(%rax)
.LBB8_8:                                # %if.end.18
	movq	-16(%rbp), %rax
	cmpq	$0, 264(%rax)
	je	.LBB8_10
# BB#9:                                 # %if.then.20
	movq	-16(%rbp), %rax
	movq	264(%rax), %rdi
	callq	g_list_free
	movq	-16(%rbp), %rax
	movq	$0, 264(%rax)
.LBB8_10:                               # %if.end.23
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_text_style_editor_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_text_style_editor_finalize, .Lfunc_end8-gimp_text_style_editor_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_style_editor_set_property,@function
gimp_text_style_editor_set_property:    # @gimp_text_style_editor_set_property
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_text_style_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$5, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB9_9
# BB#13:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI9_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB9_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	-40(%rbp), %rdi
	movq	%rax, 128(%rdi)
	jmp	.LBB9_12
.LBB9_2:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_dup_object
	movq	-40(%rbp), %rdi
	movq	%rax, 144(%rdi)
	jmp	.LBB9_12
.LBB9_3:                                # %sw.bb.5
	movq	-24(%rbp), %rdi
	callq	g_value_dup_object
	movq	-40(%rbp), %rdi
	movq	%rax, 152(%rdi)
	jmp	.LBB9_12
.LBB9_4:                                # %sw.bb.7
	movq	-24(%rbp), %rdi
	callq	g_value_dup_object
	movq	-40(%rbp), %rdi
	movq	%rax, 160(%rdi)
	jmp	.LBB9_12
.LBB9_5:                                # %sw.bb.9
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 168(%rdi)
	jmp	.LBB9_12
.LBB9_6:                                # %sw.bb.11
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 176(%rdi)
	movq	-40(%rbp), %rdi
	cmpq	$0, 208(%rdi)
	je	.LBB9_8
# BB#7:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	$1, %edx
	movq	-40(%rbp), %rdi
	movsd	176(%rdi), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_resolution
.LBB9_8:                                # %if.end
	jmp	.LBB9_12
.LBB9_9:                                # %sw.default
	jmp	.LBB9_10
.LBB9_10:                               # %do.body
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
	movl	%r8d, -100(%rbp)        # 4-byte Spill
	movq	%r9, -112(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.41, %rdi
	movabsq	$.L.str.16, %rsi
	movl	$471, %edx              # imm = 0x1D7
	movabsq	$.L.str.42, %rcx
	movl	-100(%rbp), %r8d        # 4-byte Reload
	movq	-112(%rbp), %r9         # 8-byte Reload
	movq	-120(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#11:                                # %do.end
	jmp	.LBB9_12
.LBB9_12:                               # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_text_style_editor_set_property, .Lfunc_end9-gimp_text_style_editor_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI9_0:
	.quad	.LBB9_1
	.quad	.LBB9_2
	.quad	.LBB9_3
	.quad	.LBB9_4
	.quad	.LBB9_5
	.quad	.LBB9_6

	.text
	.align	16, 0x90
	.type	gimp_text_style_editor_get_property,@function
gimp_text_style_editor_get_property:    # @gimp_text_style_editor_get_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_text_style_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$5, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB10_7
# BB#11:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI10_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB10_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB10_10
.LBB10_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB10_10
.LBB10_3:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB10_10
.LBB10_4:                               # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB10_10
.LBB10_5:                               # %sw.bb.5
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	168(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB10_10
.LBB10_6:                               # %sw.bb.6
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	176(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB10_10
.LBB10_7:                               # %sw.default
	jmp	.LBB10_8
.LBB10_8:                               # %do.body
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
	movl	%r8d, -88(%rbp)         # 4-byte Spill
	movq	%r9, -96(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.41, %rdi
	movabsq	$.L.str.16, %rsi
	movl	$506, %edx              # imm = 0x1FA
	movabsq	$.L.str.42, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#9:                                 # %do.end
	jmp	.LBB10_10
.LBB10_10:                              # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_text_style_editor_get_property, .Lfunc_end10-gimp_text_style_editor_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI10_0:
	.quad	.LBB10_1
	.quad	.LBB10_2
	.quad	.LBB10_3
	.quad	.LBB10_4
	.quad	.LBB10_5
	.quad	.LBB10_6

	.text
	.align	16, 0x90
	.type	gimp_text_style_editor_font_changed,@function
gimp_text_style_editor_font_changed:    # @gimp_text_style_editor_font_changed
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
	subq	$240, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	152(%rdx), %rdx
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_text_buffer_get_has_selection
	cmpl	$0, %eax
	je	.LBB11_2
# BB#1:                                 # %if.then
	leaq	-128(%rbp), %rsi
	leaq	-208(%rbp), %rdx
	movq	-32(%rbp), %rdi
	callq	gtk_text_buffer_get_selection_bounds
	movq	-24(%rbp), %rdx
	movq	152(%rdx), %rdi
	movq	-8(%rbp), %rdx
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movl	%eax, -228(%rbp)        # 4-byte Spill
	callq	gimp_context_get_font_name
	leaq	-128(%rbp), %rsi
	leaq	-208(%rbp), %rdx
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_text_buffer_set_font
.LBB11_2:                               # %if.end
	leaq	-48(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gimp_text_style_editor_list_tags
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	152(%rax), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	gimp_text_buffer_set_insert_tags
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_text_style_editor_font_changed, .Lfunc_end11-gimp_text_style_editor_font_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_style_editor_create_toggle,@function
gimp_text_style_editor_create_toggle:   # @gimp_text_style_editor_create_toggle
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	callq	gtk_toggle_button_new
	xorl	%esi, %esi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_widget_set_can_focus
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_help_set_help_data
	movq	-8(%rbp), %rax
	movq	264(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rdx
	movq	%rax, 264(%rdx)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.15, %rsi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_text_style_editor_tag_toggled, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movl	$1, %esi
	movq	-24(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_image_new_from_stock
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_text_style_editor_create_toggle, .Lfunc_end12-gimp_text_style_editor_create_toggle
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_style_editor_update,@function
gimp_text_style_editor_update:          # @gimp_text_style_editor_update
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, 272(%rdi)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	272(%rax), %edi
	callq	g_source_remove
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB13_2:                               # %if.end
	movabsq	$gimp_text_style_editor_update_idle, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gdk_threads_add_idle
	movq	-8(%rbp), %rcx
	movl	%eax, 272(%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_text_style_editor_update, .Lfunc_end13-gimp_text_style_editor_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_style_editor_tag_toggled,@function
gimp_text_style_editor_tag_toggled:     # @gimp_text_style_editor_tag_toggled
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
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	152(%rsi), %rsi
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.15, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_text_buffer_get_has_selection
	cmpl	$0, %eax
	je	.LBB14_5
# BB#1:                                 # %if.then
	leaq	-128(%rbp), %rsi
	leaq	-208(%rbp), %rdx
	movq	-24(%rbp), %rdi
	callq	gtk_text_buffer_get_selection_bounds
	movq	-24(%rbp), %rdi
	movl	%eax, -220(%rbp)        # 4-byte Spill
	callq	gtk_text_buffer_begin_user_action
	movq	-8(%rbp), %rdi
	callq	gtk_toggle_button_get_active
	cmpl	$0, %eax
	je	.LBB14_3
# BB#2:                                 # %if.then.9
	leaq	-128(%rbp), %rdx
	leaq	-208(%rbp), %rcx
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gtk_text_buffer_apply_tag
	jmp	.LBB14_4
.LBB14_3:                               # %if.else
	leaq	-128(%rbp), %rdx
	leaq	-208(%rbp), %rcx
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gtk_text_buffer_remove_tag
.LBB14_4:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gtk_text_buffer_end_user_action
.LBB14_5:                               # %if.end.10
	leaq	-48(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_text_style_editor_list_tags
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	152(%rax), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	gimp_text_buffer_set_insert_tags
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_text_style_editor_tag_toggled, .Lfunc_end14-gimp_text_style_editor_tag_toggled
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_style_editor_update_idle,@function
gimp_text_style_editor_update_idle:     # @gimp_text_style_editor_update_idle
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
	subq	$688, %rsp              # imm = 0x2B0
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	152(%rdi), %rdi
	movq	%rdi, -568(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-568(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 272(%rax)
	je	.LBB15_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	272(%rax), %edi
	callq	g_source_remove
	movq	-8(%rbp), %rcx
	movl	$0, 272(%rcx)
	movl	%eax, -572(%rbp)        # 4-byte Spill
.LBB15_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	gtk_text_buffer_get_has_selection
	cmpl	$0, %eax
	je	.LBB15_78
# BB#3:                                 # %if.then.8
	leaq	-96(%rbp), %rsi
	leaq	-176(%rbp), %rdx
	movl	$1, -268(%rbp)
	movl	$0, -272(%rbp)
	movl	$0, -276(%rbp)
	movl	$0, -280(%rbp)
	movl	$0, -284(%rbp)
	movl	$0, -288(%rbp)
	movq	$0, -296(%rbp)
	movq	$0, -304(%rbp)
	movq	$0, -312(%rbp)
	movq	$0, -320(%rbp)
	movq	$0, -328(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_text_buffer_get_selection_bounds
	leaq	-96(%rbp), %rdi
	leaq	-176(%rbp), %rsi
	movl	%eax, -576(%rbp)        # 4-byte Spill
	callq	gtk_text_iter_order
	movq	-8(%rbp), %rdx
	movq	264(%rdx), %rdx
	movq	%rdx, -264(%rbp)
.LBB15_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -264(%rbp)
	je	.LBB15_10
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB15_4 Depth=1
	movl	$1, %edx
	movq	-264(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -336(%rbp)
	movq	-8(%rbp), %rdi
	movq	-336(%rbp), %rsi
	callq	gimp_text_style_editor_set_toggle
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB15_4 Depth=1
	cmpq	$0, -264(%rbp)
	je	.LBB15_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB15_4 Depth=1
	movq	-264(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	jmp	.LBB15_9
.LBB15_8:                               # %cond.false
                                        #   in Loop: Header=BB15_4 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -584(%rbp)        # 8-byte Spill
	jmp	.LBB15_9
.LBB15_9:                               # %cond.end
                                        #   in Loop: Header=BB15_4 Depth=1
	movq	-584(%rbp), %rax        # 8-byte Reload
	movq	%rax, -264(%rbp)
	jmp	.LBB15_4
.LBB15_10:                              # %for.end
	leaq	-96(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	152(%rcx), %rdi
	callq	gimp_text_buffer_get_iter_font
	leaq	-96(%rbp), %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	%rax, -296(%rbp)
	movq	-8(%rbp), %rax
	movq	152(%rax), %rdi
	callq	gimp_text_buffer_get_iter_color
	leaq	-96(%rbp), %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	%rax, -304(%rbp)
	movq	-8(%rbp), %rax
	movq	152(%rax), %rdi
	callq	gimp_text_buffer_get_iter_size
	leaq	-96(%rbp), %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	%rax, -312(%rbp)
	movq	-8(%rbp), %rax
	movq	152(%rax), %rdi
	callq	gimp_text_buffer_get_iter_baseline
	leaq	-96(%rbp), %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	%rax, -320(%rbp)
	movq	-8(%rbp), %rax
	movq	152(%rax), %rdi
	callq	gimp_text_buffer_get_iter_kerning
	movl	$80, %r8d
	movl	%r8d, %edx
	leaq	-96(%rbp), %rcx
	leaq	-256(%rbp), %rsi
	movq	%rax, -328(%rbp)
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	memcpy
.LBB15_11:                              # %for.cond.22
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_14 Depth 2
	leaq	-256(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	leaq	-176(%rbp), %rdx
	callq	gtk_text_iter_in_range
	cmpl	$0, %eax
	je	.LBB15_53
# BB#12:                                # %for.body.25
                                        #   in Loop: Header=BB15_11 Depth=1
	cmpl	$0, -268(%rbp)
	je	.LBB15_24
# BB#13:                                # %if.then.27
                                        #   in Loop: Header=BB15_11 Depth=1
	movl	$0, -268(%rbp)
	movq	-8(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -264(%rbp)
.LBB15_14:                              # %for.cond.29
                                        #   Parent Loop BB15_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -264(%rbp)
	je	.LBB15_23
# BB#15:                                # %for.body.31
                                        #   in Loop: Header=BB15_14 Depth=2
	movl	$80, %eax
	movl	%eax, %esi
	movq	-264(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -344(%rbp)
	movq	-344(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.15, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	leaq	-256(%rbp), %rdi
	movq	%rax, -352(%rbp)
	movq	-352(%rbp), %rsi
	callq	gtk_text_iter_has_tag
	cmpl	$0, %eax
	jne	.LBB15_17
# BB#16:                                # %if.then.38
                                        #   in Loop: Header=BB15_14 Depth=2
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movq	-344(%rbp), %rsi
	callq	gimp_text_style_editor_set_toggle
	jmp	.LBB15_18
.LBB15_17:                              # %if.else
                                        #   in Loop: Header=BB15_14 Depth=2
	movl	$1, -268(%rbp)
.LBB15_18:                              # %if.end.39
                                        #   in Loop: Header=BB15_14 Depth=2
	jmp	.LBB15_19
.LBB15_19:                              # %for.inc.40
                                        #   in Loop: Header=BB15_14 Depth=2
	cmpq	$0, -264(%rbp)
	je	.LBB15_21
# BB#20:                                # %cond.true.42
                                        #   in Loop: Header=BB15_14 Depth=2
	movq	-264(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	jmp	.LBB15_22
.LBB15_21:                              # %cond.false.44
                                        #   in Loop: Header=BB15_14 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -592(%rbp)        # 8-byte Spill
	jmp	.LBB15_22
.LBB15_22:                              # %cond.end.45
                                        #   in Loop: Header=BB15_14 Depth=2
	movq	-592(%rbp), %rax        # 8-byte Reload
	movq	%rax, -264(%rbp)
	jmp	.LBB15_14
.LBB15_23:                              # %for.end.47
                                        #   in Loop: Header=BB15_11 Depth=1
	jmp	.LBB15_24
.LBB15_24:                              # %if.end.48
                                        #   in Loop: Header=BB15_11 Depth=1
	cmpl	$0, -272(%rbp)
	jne	.LBB15_28
# BB#25:                                # %if.then.50
                                        #   in Loop: Header=BB15_11 Depth=1
	leaq	-256(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	152(%rcx), %rdi
	callq	gimp_text_buffer_get_iter_font
	movq	%rax, -360(%rbp)
	movq	-360(%rbp), %rax
	cmpq	-296(%rbp), %rax
	je	.LBB15_27
# BB#26:                                # %if.then.54
                                        #   in Loop: Header=BB15_11 Depth=1
	movl	$1, -272(%rbp)
.LBB15_27:                              # %if.end.55
                                        #   in Loop: Header=BB15_11 Depth=1
	jmp	.LBB15_28
.LBB15_28:                              # %if.end.56
                                        #   in Loop: Header=BB15_11 Depth=1
	cmpl	$0, -276(%rbp)
	jne	.LBB15_32
# BB#29:                                # %if.then.58
                                        #   in Loop: Header=BB15_11 Depth=1
	leaq	-256(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	152(%rcx), %rdi
	callq	gimp_text_buffer_get_iter_color
	movq	%rax, -368(%rbp)
	movq	-368(%rbp), %rax
	cmpq	-304(%rbp), %rax
	je	.LBB15_31
# BB#30:                                # %if.then.63
                                        #   in Loop: Header=BB15_11 Depth=1
	movl	$1, -276(%rbp)
.LBB15_31:                              # %if.end.64
                                        #   in Loop: Header=BB15_11 Depth=1
	jmp	.LBB15_32
.LBB15_32:                              # %if.end.65
                                        #   in Loop: Header=BB15_11 Depth=1
	cmpl	$0, -280(%rbp)
	jne	.LBB15_36
# BB#33:                                # %if.then.67
                                        #   in Loop: Header=BB15_11 Depth=1
	leaq	-256(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	152(%rcx), %rdi
	callq	gimp_text_buffer_get_iter_size
	movq	%rax, -376(%rbp)
	movq	-376(%rbp), %rax
	cmpq	-312(%rbp), %rax
	je	.LBB15_35
# BB#34:                                # %if.then.72
                                        #   in Loop: Header=BB15_11 Depth=1
	movl	$1, -280(%rbp)
.LBB15_35:                              # %if.end.73
                                        #   in Loop: Header=BB15_11 Depth=1
	jmp	.LBB15_36
.LBB15_36:                              # %if.end.74
                                        #   in Loop: Header=BB15_11 Depth=1
	cmpl	$0, -284(%rbp)
	jne	.LBB15_40
# BB#37:                                # %if.then.76
                                        #   in Loop: Header=BB15_11 Depth=1
	leaq	-256(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	152(%rcx), %rdi
	callq	gimp_text_buffer_get_iter_baseline
	movq	%rax, -384(%rbp)
	movq	-384(%rbp), %rax
	cmpq	-320(%rbp), %rax
	je	.LBB15_39
# BB#38:                                # %if.then.81
                                        #   in Loop: Header=BB15_11 Depth=1
	movl	$1, -284(%rbp)
.LBB15_39:                              # %if.end.82
                                        #   in Loop: Header=BB15_11 Depth=1
	jmp	.LBB15_40
.LBB15_40:                              # %if.end.83
                                        #   in Loop: Header=BB15_11 Depth=1
	cmpl	$0, -288(%rbp)
	jne	.LBB15_44
# BB#41:                                # %if.then.85
                                        #   in Loop: Header=BB15_11 Depth=1
	leaq	-256(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	152(%rcx), %rdi
	callq	gimp_text_buffer_get_iter_kerning
	movq	%rax, -392(%rbp)
	movq	-392(%rbp), %rax
	cmpq	-328(%rbp), %rax
	je	.LBB15_43
# BB#42:                                # %if.then.90
                                        #   in Loop: Header=BB15_11 Depth=1
	movl	$1, -288(%rbp)
.LBB15_43:                              # %if.end.91
                                        #   in Loop: Header=BB15_11 Depth=1
	jmp	.LBB15_44
.LBB15_44:                              # %if.end.92
                                        #   in Loop: Header=BB15_11 Depth=1
	cmpl	$0, -268(%rbp)
	jne	.LBB15_51
# BB#45:                                # %land.lhs.true
                                        #   in Loop: Header=BB15_11 Depth=1
	cmpl	$0, -276(%rbp)
	je	.LBB15_51
# BB#46:                                # %land.lhs.true.95
                                        #   in Loop: Header=BB15_11 Depth=1
	cmpl	$0, -272(%rbp)
	je	.LBB15_51
# BB#47:                                # %land.lhs.true.97
                                        #   in Loop: Header=BB15_11 Depth=1
	cmpl	$0, -280(%rbp)
	je	.LBB15_51
# BB#48:                                # %land.lhs.true.99
                                        #   in Loop: Header=BB15_11 Depth=1
	cmpl	$0, -284(%rbp)
	je	.LBB15_51
# BB#49:                                # %land.lhs.true.101
                                        #   in Loop: Header=BB15_11 Depth=1
	cmpl	$0, -288(%rbp)
	je	.LBB15_51
# BB#50:                                # %if.then.103
	jmp	.LBB15_53
.LBB15_51:                              # %if.end.104
                                        #   in Loop: Header=BB15_11 Depth=1
	jmp	.LBB15_52
.LBB15_52:                              # %for.inc.105
                                        #   in Loop: Header=BB15_11 Depth=1
	leaq	-256(%rbp), %rdi
	callq	gtk_text_iter_forward_cursor_position
	movl	%eax, -596(%rbp)        # 4-byte Spill
	jmp	.LBB15_11
.LBB15_53:                              # %for.end.107
	cmpl	$0, -272(%rbp)
	je	.LBB15_55
# BB#54:                                # %if.then.109
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_text_style_editor_set_font
	jmp	.LBB15_59
.LBB15_55:                              # %if.else.110
	cmpq	$0, -296(%rbp)
	je	.LBB15_57
# BB#56:                                # %if.then.112
	movq	-8(%rbp), %rdi
	movq	-296(%rbp), %rsi
	callq	gimp_text_style_editor_set_font
	jmp	.LBB15_58
.LBB15_57:                              # %if.else.113
	movq	-8(%rbp), %rdi
	callq	gimp_text_style_editor_set_default_font
.LBB15_58:                              # %if.end.114
	jmp	.LBB15_59
.LBB15_59:                              # %if.end.115
	cmpl	$0, -276(%rbp)
	je	.LBB15_61
# BB#60:                                # %if.then.117
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_text_style_editor_set_color
	jmp	.LBB15_65
.LBB15_61:                              # %if.else.118
	cmpq	$0, -304(%rbp)
	je	.LBB15_63
# BB#62:                                # %if.then.120
	movq	-8(%rbp), %rdi
	movq	-304(%rbp), %rsi
	callq	gimp_text_style_editor_set_color
	jmp	.LBB15_64
.LBB15_63:                              # %if.else.121
	movq	-8(%rbp), %rdi
	callq	gimp_text_style_editor_set_default_color
.LBB15_64:                              # %if.end.122
	jmp	.LBB15_65
.LBB15_65:                              # %if.end.123
	cmpl	$0, -280(%rbp)
	je	.LBB15_67
# BB#66:                                # %if.then.125
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_text_style_editor_set_size
	jmp	.LBB15_71
.LBB15_67:                              # %if.else.126
	cmpq	$0, -312(%rbp)
	je	.LBB15_69
# BB#68:                                # %if.then.128
	movq	-8(%rbp), %rdi
	movq	-312(%rbp), %rsi
	callq	gimp_text_style_editor_set_size
	jmp	.LBB15_70
.LBB15_69:                              # %if.else.129
	movq	-8(%rbp), %rdi
	callq	gimp_text_style_editor_set_default_size
.LBB15_70:                              # %if.end.130
	jmp	.LBB15_71
.LBB15_71:                              # %if.end.131
	cmpl	$0, -284(%rbp)
	je	.LBB15_73
# BB#72:                                # %if.then.133
	movq	-8(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-608(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.40, %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	jmp	.LBB15_74
.LBB15_73:                              # %if.else.136
	movq	-8(%rbp), %rdi
	movq	-320(%rbp), %rsi
	callq	gimp_text_style_editor_set_baseline
.LBB15_74:                              # %if.end.137
	cmpl	$0, -288(%rbp)
	je	.LBB15_76
# BB#75:                                # %if.then.139
	movq	-8(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-616(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.40, %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
	jmp	.LBB15_77
.LBB15_76:                              # %if.else.142
	movq	-8(%rbp), %rdi
	movq	-328(%rbp), %rsi
	callq	gimp_text_style_editor_set_kerning
.LBB15_77:                              # %if.end.143
	jmp	.LBB15_141
.LBB15_78:                              # %if.else.144
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -624(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_text_buffer_get_insert
	leaq	-472(%rbp), %rsi
	movq	-624(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_text_buffer_get_iter_at_mark
	leaq	-472(%rbp), %rdi
	callq	gtk_text_iter_get_tags
	leaq	-472(%rbp), %rdi
	movl	$1, %esi
	movq	%rax, -480(%rbp)
	callq	gtk_text_iter_get_toggled_tags
	leaq	-472(%rbp), %rdi
	xorl	%esi, %esi
	movq	%rax, -488(%rbp)
	callq	gtk_text_iter_get_toggled_tags
	movq	%rax, -496(%rbp)
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movq	128(%rax), %rax
	movq	%rax, -504(%rbp)
.LBB15_79:                              # %for.cond.151
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -504(%rbp)
	je	.LBB15_89
# BB#80:                                # %for.body.153
                                        #   in Loop: Header=BB15_79 Depth=1
	movq	-504(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -512(%rbp)
	movq	-480(%rbp), %rdi
	movq	-512(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_find
	cmpq	$0, %rax
	je	.LBB15_82
# BB#81:                                # %land.lhs.true.158
                                        #   in Loop: Header=BB15_79 Depth=1
	movq	-488(%rbp), %rdi
	movq	-512(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_find
	cmpq	$0, %rax
	je	.LBB15_83
.LBB15_82:                              # %lor.lhs.false
                                        #   in Loop: Header=BB15_79 Depth=1
	movq	-496(%rbp), %rdi
	movq	-512(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_find
	cmpq	$0, %rax
	je	.LBB15_84
.LBB15_83:                              # %if.then.163
	movq	-8(%rbp), %rdi
	movq	-512(%rbp), %rsi
	callq	gimp_text_style_editor_set_font
	jmp	.LBB15_89
.LBB15_84:                              # %if.end.164
                                        #   in Loop: Header=BB15_79 Depth=1
	jmp	.LBB15_85
.LBB15_85:                              # %for.inc.165
                                        #   in Loop: Header=BB15_79 Depth=1
	cmpq	$0, -504(%rbp)
	je	.LBB15_87
# BB#86:                                # %cond.true.167
                                        #   in Loop: Header=BB15_79 Depth=1
	movq	-504(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	jmp	.LBB15_88
.LBB15_87:                              # %cond.false.169
                                        #   in Loop: Header=BB15_79 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -632(%rbp)        # 8-byte Spill
	jmp	.LBB15_88
.LBB15_88:                              # %cond.end.170
                                        #   in Loop: Header=BB15_79 Depth=1
	movq	-632(%rbp), %rax        # 8-byte Reload
	movq	%rax, -504(%rbp)
	jmp	.LBB15_79
.LBB15_89:                              # %for.end.172
	cmpq	$0, -504(%rbp)
	jne	.LBB15_91
# BB#90:                                # %if.then.174
	movq	-8(%rbp), %rdi
	callq	gimp_text_style_editor_set_default_font
.LBB15_91:                              # %if.end.175
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movq	136(%rax), %rax
	movq	%rax, -504(%rbp)
.LBB15_92:                              # %for.cond.177
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -504(%rbp)
	je	.LBB15_102
# BB#93:                                # %for.body.179
                                        #   in Loop: Header=BB15_92 Depth=1
	movq	-504(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -520(%rbp)
	movq	-480(%rbp), %rdi
	movq	-520(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_find
	cmpq	$0, %rax
	je	.LBB15_95
# BB#94:                                # %land.lhs.true.184
                                        #   in Loop: Header=BB15_92 Depth=1
	movq	-488(%rbp), %rdi
	movq	-520(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_find
	cmpq	$0, %rax
	je	.LBB15_96
.LBB15_95:                              # %lor.lhs.false.187
                                        #   in Loop: Header=BB15_92 Depth=1
	movq	-496(%rbp), %rdi
	movq	-520(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_find
	cmpq	$0, %rax
	je	.LBB15_97
.LBB15_96:                              # %if.then.190
	movq	-8(%rbp), %rdi
	movq	-520(%rbp), %rsi
	callq	gimp_text_style_editor_set_color
	jmp	.LBB15_102
.LBB15_97:                              # %if.end.191
                                        #   in Loop: Header=BB15_92 Depth=1
	jmp	.LBB15_98
.LBB15_98:                              # %for.inc.192
                                        #   in Loop: Header=BB15_92 Depth=1
	cmpq	$0, -504(%rbp)
	je	.LBB15_100
# BB#99:                                # %cond.true.194
                                        #   in Loop: Header=BB15_92 Depth=1
	movq	-504(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	jmp	.LBB15_101
.LBB15_100:                             # %cond.false.196
                                        #   in Loop: Header=BB15_92 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -640(%rbp)        # 8-byte Spill
	jmp	.LBB15_101
.LBB15_101:                             # %cond.end.197
                                        #   in Loop: Header=BB15_92 Depth=1
	movq	-640(%rbp), %rax        # 8-byte Reload
	movq	%rax, -504(%rbp)
	jmp	.LBB15_92
.LBB15_102:                             # %for.end.199
	cmpq	$0, -504(%rbp)
	jne	.LBB15_104
# BB#103:                               # %if.then.201
	movq	-8(%rbp), %rdi
	callq	gimp_text_style_editor_set_default_color
.LBB15_104:                             # %if.end.202
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movq	104(%rax), %rax
	movq	%rax, -504(%rbp)
.LBB15_105:                             # %for.cond.204
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -504(%rbp)
	je	.LBB15_115
# BB#106:                               # %for.body.206
                                        #   in Loop: Header=BB15_105 Depth=1
	movq	-504(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -528(%rbp)
	movq	-480(%rbp), %rdi
	movq	-528(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_find
	cmpq	$0, %rax
	je	.LBB15_108
# BB#107:                               # %land.lhs.true.211
                                        #   in Loop: Header=BB15_105 Depth=1
	movq	-488(%rbp), %rdi
	movq	-528(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_find
	cmpq	$0, %rax
	je	.LBB15_109
.LBB15_108:                             # %lor.lhs.false.214
                                        #   in Loop: Header=BB15_105 Depth=1
	movq	-496(%rbp), %rdi
	movq	-528(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_find
	cmpq	$0, %rax
	je	.LBB15_110
.LBB15_109:                             # %if.then.217
	movq	-8(%rbp), %rdi
	movq	-528(%rbp), %rsi
	callq	gimp_text_style_editor_set_size
	jmp	.LBB15_115
.LBB15_110:                             # %if.end.218
                                        #   in Loop: Header=BB15_105 Depth=1
	jmp	.LBB15_111
.LBB15_111:                             # %for.inc.219
                                        #   in Loop: Header=BB15_105 Depth=1
	cmpq	$0, -504(%rbp)
	je	.LBB15_113
# BB#112:                               # %cond.true.221
                                        #   in Loop: Header=BB15_105 Depth=1
	movq	-504(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	jmp	.LBB15_114
.LBB15_113:                             # %cond.false.223
                                        #   in Loop: Header=BB15_105 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -648(%rbp)        # 8-byte Spill
	jmp	.LBB15_114
.LBB15_114:                             # %cond.end.224
                                        #   in Loop: Header=BB15_105 Depth=1
	movq	-648(%rbp), %rax        # 8-byte Reload
	movq	%rax, -504(%rbp)
	jmp	.LBB15_105
.LBB15_115:                             # %for.end.226
	cmpq	$0, -504(%rbp)
	jne	.LBB15_117
# BB#116:                               # %if.then.228
	movq	-8(%rbp), %rdi
	callq	gimp_text_style_editor_set_default_size
.LBB15_117:                             # %if.end.229
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movq	112(%rax), %rax
	movq	%rax, -504(%rbp)
.LBB15_118:                             # %for.cond.231
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -504(%rbp)
	je	.LBB15_128
# BB#119:                               # %for.body.233
                                        #   in Loop: Header=BB15_118 Depth=1
	movq	-504(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -536(%rbp)
	movq	-480(%rbp), %rdi
	movq	-536(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_find
	cmpq	$0, %rax
	je	.LBB15_121
# BB#120:                               # %land.lhs.true.238
                                        #   in Loop: Header=BB15_118 Depth=1
	movq	-488(%rbp), %rdi
	movq	-536(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_find
	cmpq	$0, %rax
	je	.LBB15_122
.LBB15_121:                             # %lor.lhs.false.241
                                        #   in Loop: Header=BB15_118 Depth=1
	movq	-496(%rbp), %rdi
	movq	-536(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_find
	cmpq	$0, %rax
	je	.LBB15_123
.LBB15_122:                             # %if.then.244
	movq	-8(%rbp), %rdi
	movq	-536(%rbp), %rsi
	callq	gimp_text_style_editor_set_baseline
	jmp	.LBB15_128
.LBB15_123:                             # %if.end.245
                                        #   in Loop: Header=BB15_118 Depth=1
	jmp	.LBB15_124
.LBB15_124:                             # %for.inc.246
                                        #   in Loop: Header=BB15_118 Depth=1
	cmpq	$0, -504(%rbp)
	je	.LBB15_126
# BB#125:                               # %cond.true.248
                                        #   in Loop: Header=BB15_118 Depth=1
	movq	-504(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
	jmp	.LBB15_127
.LBB15_126:                             # %cond.false.250
                                        #   in Loop: Header=BB15_118 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -656(%rbp)        # 8-byte Spill
	jmp	.LBB15_127
.LBB15_127:                             # %cond.end.251
                                        #   in Loop: Header=BB15_118 Depth=1
	movq	-656(%rbp), %rax        # 8-byte Reload
	movq	%rax, -504(%rbp)
	jmp	.LBB15_118
.LBB15_128:                             # %for.end.253
	cmpq	$0, -504(%rbp)
	jne	.LBB15_130
# BB#129:                               # %if.then.255
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_text_style_editor_set_baseline
.LBB15_130:                             # %if.end.256
	movq	-8(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -504(%rbp)
.LBB15_131:                             # %for.cond.258
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -504(%rbp)
	je	.LBB15_140
# BB#132:                               # %for.body.260
                                        #   in Loop: Header=BB15_131 Depth=1
	movl	$80, %eax
	movl	%eax, %esi
	movq	-504(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -544(%rbp)
	movq	-544(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.15, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -552(%rbp)
	movq	-8(%rbp), %rdi
	movq	-544(%rbp), %rsi
	movq	-480(%rbp), %rax
	movq	-552(%rbp), %rcx
	movq	%rdi, -664(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -672(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	callq	g_slist_find
	cmpq	$0, %rax
	je	.LBB15_134
# BB#133:                               # %land.lhs.true.268
                                        #   in Loop: Header=BB15_131 Depth=1
	movq	-488(%rbp), %rdi
	movq	-552(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_find
	movb	$1, %cl
	cmpq	$0, %rax
	movb	%cl, -673(%rbp)         # 1-byte Spill
	je	.LBB15_135
.LBB15_134:                             # %lor.rhs
                                        #   in Loop: Header=BB15_131 Depth=1
	movq	-496(%rbp), %rdi
	movq	-552(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_find
	cmpq	$0, %rax
	setne	%cl
	movb	%cl, -673(%rbp)         # 1-byte Spill
.LBB15_135:                             # %lor.end
                                        #   in Loop: Header=BB15_131 Depth=1
	movb	-673(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edx
	movq	-664(%rbp), %rdi        # 8-byte Reload
	movq	-672(%rbp), %rsi        # 8-byte Reload
	callq	gimp_text_style_editor_set_toggle
# BB#136:                               # %for.inc.273
                                        #   in Loop: Header=BB15_131 Depth=1
	cmpq	$0, -504(%rbp)
	je	.LBB15_138
# BB#137:                               # %cond.true.275
                                        #   in Loop: Header=BB15_131 Depth=1
	movq	-504(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	jmp	.LBB15_139
.LBB15_138:                             # %cond.false.277
                                        #   in Loop: Header=BB15_131 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -688(%rbp)        # 8-byte Spill
	jmp	.LBB15_139
.LBB15_139:                             # %cond.end.278
                                        #   in Loop: Header=BB15_131 Depth=1
	movq	-688(%rbp), %rax        # 8-byte Reload
	movq	%rax, -504(%rbp)
	jmp	.LBB15_131
.LBB15_140:                             # %for.end.280
	leaq	-472(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	152(%rcx), %rdi
	callq	gimp_text_buffer_get_iter_kerning
	movq	%rax, -560(%rbp)
	movq	-8(%rbp), %rdi
	movq	-560(%rbp), %rsi
	callq	gimp_text_style_editor_set_kerning
	movq	-480(%rbp), %rdi
	callq	g_slist_free
	movq	-488(%rbp), %rdi
	callq	g_slist_free
	movq	-496(%rbp), %rdi
	callq	g_slist_free
.LBB15_141:                             # %if.end.284
	xorl	%eax, %eax
	addq	$688, %rsp              # imm = 0x2B0
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_text_style_editor_update_idle, .Lfunc_end15-gimp_text_style_editor_update_idle
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_style_editor_set_toggle,@function
gimp_text_style_editor_set_toggle:      # @gimp_text_style_editor_set_toggle
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
	subq	$64, %rsp
	movl	$24, %eax
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movabsq	$gimp_text_style_editor_tag_toggled, %r9
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movl	%eax, %esi
	movl	%ecx, %edx
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	gtk_toggle_button_set_active
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_text_style_editor_tag_toggled, %rdi
	movq	-16(%rbp), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-48(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -52(%rbp)         # 4-byte Spill
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_text_style_editor_set_toggle, .Lfunc_end16-gimp_text_style_editor_set_toggle
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_style_editor_set_font,@function
gimp_text_style_editor_set_font:        # @gimp_text_style_editor_set_font
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB17_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gimp_text_tag_get_font
	movq	%rax, -24(%rbp)
.LBB17_2:                               # %if.end
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_text_style_editor_font_changed, %rdx
	movq	-8(%rbp), %rdi
	movq	136(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%r9, -40(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-40(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-8(%rbp), %rdi
	movq	136(%rdi), %rdi
	movq	-24(%rbp), %rsi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gimp_context_set_font_name
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_text_style_editor_font_changed, %rdi
	movq	-8(%rbp), %r9
	movq	136(%r9), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movq	-24(%rbp), %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	g_free
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_text_style_editor_set_font, .Lfunc_end17-gimp_text_style_editor_set_font
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_style_editor_set_default_font,@function
gimp_text_style_editor_set_default_font: # @gimp_text_style_editor_set_default_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp60:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_text_style_editor_font_changed, %rdx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	136(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -16(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-16(%rbp), %r10         # 8-byte Reload
	movq	%r9, -24(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-24(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-8(%rbp), %rdi
	movq	136(%rdi), %rdi
	movq	-8(%rbp), %r8
	movq	144(%r8), %r8
	movq	48(%r8), %rsi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	gimp_context_set_font_name
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_text_style_editor_font_changed, %rdi
	movq	-8(%rbp), %r9
	movq	136(%r9), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -44(%rbp)         # 4-byte Spill
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_text_style_editor_set_default_font, .Lfunc_end18-gimp_text_style_editor_set_default_font
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI19_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_text_style_editor_set_color,@function
gimp_text_style_editor_set_color:       # @gimp_text_style_editor_set_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp63:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	leaq	-48(%rbp), %rax
	xorps	%xmm0, %xmm0
	movsd	.LCPI19_0, %xmm3        # xmm3 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, %rdi
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_rgba_set
	cmpq	$0, -16(%rbp)
	je	.LBB19_2
# BB#1:                                 # %if.then
	leaq	-48(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_text_tag_get_color
.LBB19_2:                               # %if.end
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_text_style_editor_color_changed, %rdx
	movq	-8(%rbp), %rdi
	movq	216(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-64(%rbp), %r10         # 8-byte Reload
	movq	%r9, -72(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-72(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-8(%rbp), %rdi
	movq	216(%rdi), %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_button_set_color
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_text_style_editor_color_changed, %rax
	movq	-8(%rbp), %rdi
	movq	216(%rdi), %rdi
	movq	-8(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -96(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -100(%rbp)        # 4-byte Spill
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_text_style_editor_set_color, .Lfunc_end19-gimp_text_style_editor_set_color
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_style_editor_set_default_color,@function
gimp_text_style_editor_set_default_color: # @gimp_text_style_editor_set_default_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
.Ltmp65:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp66:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_text_style_editor_color_changed, %rdx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	216(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -16(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-16(%rbp), %r10         # 8-byte Reload
	movq	%r9, -24(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-24(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-8(%rbp), %rdi
	movq	216(%rdi), %rdi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	144(%rsi), %rsi
	addq	$104, %rsi
	movq	%rax, %rdi
	callq	gimp_color_button_set_color
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_text_style_editor_color_changed, %rax
	movq	-8(%rbp), %rdi
	movq	216(%rdi), %rdi
	movq	-8(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -52(%rbp)         # 4-byte Spill
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_text_style_editor_set_default_color, .Lfunc_end20-gimp_text_style_editor_set_default_color
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI21_0:
	.quad	4652218415073722368     # double 1024
	.text
	.align	16, 0x90
	.type	gimp_text_style_editor_set_size,@function
gimp_text_style_editor_set_size:        # @gimp_text_style_editor_set_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp69:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB21_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gimp_text_tag_get_size
	movl	%eax, -20(%rbp)
.LBB21_2:                               # %if.end
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_text_style_editor_size_changed, %rdx
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-48(%rbp), %r10         # 8-byte Reload
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-56(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	movl	$3, %edi
	movsd	.LCPI21_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-20(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movq	-8(%rbp), %r8
	movsd	176(%r8), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	gimp_units_to_pixels
	movsd	%xmm0, -32(%rbp)
	movq	-8(%rbp), %r8
	movq	208(%r8), %r8
	movq	%r8, -80(%rbp)          # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval
	cmpl	$0, -20(%rbp)
	jne	.LBB21_4
# BB#3:                                 # %if.then.7
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_help_widget
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.40, %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
.LBB21_4:                               # %if.end.14
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_text_style_editor_size_changed, %rdx
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r9, -112(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-112(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -116(%rbp)        # 4-byte Spill
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_text_style_editor_set_size, .Lfunc_end21-gimp_text_style_editor_set_size
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_style_editor_set_default_size,@function
gimp_text_style_editor_set_default_size: # @gimp_text_style_editor_set_default_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp72:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	144(%rdi), %rdi
	movsd	64(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movq	144(%rdi), %rdi
	movl	56(%rdi), %edi
	movq	-8(%rbp), %rax
	movsd	176(%rax), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_units_to_pixels
	movl	$24, %esi
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_text_style_editor_size_changed, %rax
	movsd	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rdx
	movq	208(%rdx), %rdx
	movq	-8(%rbp), %r9
	movl	%edi, -20(%rbp)         # 4-byte Spill
	movq	%rdx, %rdi
	movl	-20(%rbp), %edx         # 4-byte Reload
	movl	-20(%rbp), %ecx         # 4-byte Reload
	movq	%r9, -32(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rdi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_size_entry_set_refval
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_text_style_editor_size_changed, %rax
	movq	-8(%rbp), %rdi
	movq	208(%rdi), %rdi
	movq	-8(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -60(%rbp)         # 4-byte Spill
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_text_style_editor_set_default_size, .Lfunc_end22-gimp_text_style_editor_set_default_size
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI23_0:
	.quad	4652218415073722368     # double 1024
	.text
	.align	16, 0x90
	.type	gimp_text_style_editor_set_baseline,@function
gimp_text_style_editor_set_baseline:    # @gimp_text_style_editor_set_baseline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp73:
	.cfi_def_cfa_offset 16
.Ltmp74:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp75:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB23_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gimp_text_tag_get_baseline
	movl	%eax, -20(%rbp)
.LBB23_2:                               # %if.end
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_text_style_editor_baseline_changed, %rdx
	movq	-8(%rbp), %rdi
	movq	240(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%r9, -40(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-40(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	movsd	.LCPI23_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movq	240(%rdi), %rdi
	cvtsi2sdl	-20(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gtk_adjustment_set_value
	movq	-8(%rbp), %rdi
	movq	240(%rdi), %rdi
	callq	gtk_adjustment_value_changed
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_text_style_editor_baseline_changed, %rdi
	movq	-8(%rbp), %r9
	movq	240(%r9), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -60(%rbp)         # 4-byte Spill
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_text_style_editor_set_baseline, .Lfunc_end23-gimp_text_style_editor_set_baseline
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI24_0:
	.quad	4652218415073722368     # double 1024
	.text
	.align	16, 0x90
	.type	gimp_text_style_editor_set_kerning,@function
gimp_text_style_editor_set_kerning:     # @gimp_text_style_editor_set_kerning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
.Ltmp77:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp78:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB24_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gimp_text_tag_get_kerning
	movl	%eax, -20(%rbp)
.LBB24_2:                               # %if.end
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_text_style_editor_kerning_changed, %rdx
	movq	-8(%rbp), %rdi
	movq	256(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%r9, -40(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-40(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	movsd	.LCPI24_0, %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movq	256(%rdi), %rdi
	cvtsi2sdl	-20(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gtk_adjustment_set_value
	movq	-8(%rbp), %rdi
	movq	256(%rdi), %rdi
	callq	gtk_adjustment_value_changed
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_text_style_editor_kerning_changed, %rdi
	movq	-8(%rbp), %r9
	movq	256(%r9), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -60(%rbp)         # 4-byte Spill
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_text_style_editor_set_kerning, .Lfunc_end24-gimp_text_style_editor_set_kerning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_style_editor_color_changed,@function
gimp_text_style_editor_color_changed:   # @gimp_text_style_editor_color_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
.Ltmp80:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp81:
	.cfi_def_cfa_register %rbp
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	152(%rsi), %rsi
	movq	%rsi, -240(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_text_buffer_get_has_selection
	cmpl	$0, %eax
	je	.LBB25_2
# BB#1:                                 # %if.then
	leaq	-120(%rbp), %rsi
	leaq	-200(%rbp), %rdx
	movq	-24(%rbp), %rdi
	callq	gtk_text_buffer_get_selection_bounds
	leaq	-232(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movl	%eax, -244(%rbp)        # 4-byte Spill
	callq	gimp_color_button_get_color
	leaq	-120(%rbp), %rsi
	leaq	-200(%rbp), %rdx
	leaq	-232(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	152(%rdi), %rdi
	callq	gimp_text_buffer_set_color
.LBB25_2:                               # %if.end
	leaq	-40(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_text_style_editor_list_tags
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	152(%rax), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_text_buffer_set_insert_tags
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_text_style_editor_color_changed, .Lfunc_end25-gimp_text_style_editor_color_changed
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI26_0:
	.quad	4652218415073722368     # double 1024
	.text
	.align	16, 0x90
	.type	gimp_text_style_editor_size_changed,@function
gimp_text_style_editor_size_changed:    # @gimp_text_style_editor_size_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp82:
	.cfi_def_cfa_offset 16
.Ltmp83:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp84:
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	152(%rsi), %rsi
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_text_buffer_get_has_selection
	cmpl	$0, %eax
	je	.LBB26_2
# BB#1:                                 # %if.then
	leaq	-120(%rbp), %rsi
	leaq	-200(%rbp), %rdx
	movq	-24(%rbp), %rdi
	callq	gtk_text_buffer_get_selection_bounds
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	movl	%eax, -220(%rbp)        # 4-byte Spill
	callq	gimp_size_entry_get_refval
	xorl	%edi, %edi
	movq	-16(%rbp), %rdx
	movsd	176(%rdx), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_units_to_points
	leaq	-120(%rbp), %rsi
	leaq	-200(%rbp), %rdx
	movsd	.LCPI26_0, %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm0, -208(%rbp)
	movq	-16(%rbp), %rcx
	movq	152(%rcx), %rdi
	mulsd	-208(%rbp), %xmm1
	cvttsd2si	%xmm1, %ecx
	callq	gimp_text_buffer_set_size
.LBB26_2:                               # %if.end
	leaq	-40(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_text_style_editor_list_tags
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	152(%rax), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_text_buffer_set_insert_tags
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_text_style_editor_size_changed, .Lfunc_end26-gimp_text_style_editor_size_changed
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI27_0:
	.quad	4652218415073722368     # double 1024
	.text
	.align	16, 0x90
	.type	gimp_text_style_editor_baseline_changed,@function
gimp_text_style_editor_baseline_changed: # @gimp_text_style_editor_baseline_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp85:
	.cfi_def_cfa_offset 16
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp87:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	152(%rsi), %rsi
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-104(%rbp), %rsi
	leaq	-184(%rbp), %rdx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_text_buffer_get_selection_bounds
	cmpl	$0, %eax
	jne	.LBB27_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_text_buffer_get_insert
	leaq	-104(%rbp), %rsi
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_text_buffer_get_iter_at_mark
	leaq	-184(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gtk_text_buffer_get_end_iter
.LBB27_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	152(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_adjustment_get_value
	leaq	-104(%rbp), %rsi
	leaq	-184(%rbp), %rdx
	movsd	.LCPI27_0, %xmm1        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movq	-208(%rbp), %rdi        # 8-byte Reload
	callq	gimp_text_buffer_set_baseline
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_text_style_editor_baseline_changed, .Lfunc_end27-gimp_text_style_editor_baseline_changed
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI28_0:
	.quad	4652218415073722368     # double 1024
	.text
	.align	16, 0x90
	.type	gimp_text_style_editor_kerning_changed,@function
gimp_text_style_editor_kerning_changed: # @gimp_text_style_editor_kerning_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp88:
	.cfi_def_cfa_offset 16
.Ltmp89:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp90:
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	152(%rsi), %rsi
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-104(%rbp), %rsi
	leaq	-184(%rbp), %rdx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_text_buffer_get_selection_bounds
	cmpl	$0, %eax
	jne	.LBB28_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_text_buffer_get_insert
	leaq	-104(%rbp), %rsi
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_text_buffer_get_iter_at_mark
	leaq	-184(%rbp), %rax
	movl	$80, %ecx
	movl	%ecx, %edx
	leaq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-208(%rbp), %rdi        # 8-byte Reload
	callq	gtk_text_iter_forward_char
	movl	%eax, -212(%rbp)        # 4-byte Spill
.LBB28_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	152(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_adjustment_get_value
	leaq	-104(%rbp), %rsi
	leaq	-184(%rbp), %rdx
	movsd	.LCPI28_0, %xmm1        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movq	-224(%rbp), %rdi        # 8-byte Reload
	callq	gimp_text_buffer_set_kerning
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_text_style_editor_kerning_changed, .Lfunc_end28-gimp_text_style_editor_kerning_changed
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp91:
	.cfi_def_cfa_offset 16
.Ltmp92:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp93:
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
	je	.LBB29_2
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
.LBB29_2:                               # %entry
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
.Lfunc_end29:
	.size	g_warning, .Lfunc_end29-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_style_editor_clear_tags,@function
gimp_text_style_editor_clear_tags:      # @gimp_text_style_editor_clear_tags
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp94:
	.cfi_def_cfa_offset 16
.Ltmp95:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp96:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	152(%rsi), %rsi
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	callq	gtk_text_buffer_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_text_buffer_get_has_selection
	cmpl	$0, %eax
	je	.LBB30_2
# BB#1:                                 # %if.then
	leaq	-104(%rbp), %rsi
	leaq	-184(%rbp), %rdx
	movq	-24(%rbp), %rdi
	callq	gtk_text_buffer_get_selection_bounds
	movq	-24(%rbp), %rdi
	movl	%eax, -196(%rbp)        # 4-byte Spill
	callq	gtk_text_buffer_begin_user_action
	leaq	-104(%rbp), %rsi
	leaq	-184(%rbp), %rdx
	movq	-24(%rbp), %rdi
	callq	gtk_text_buffer_remove_all_tags
	movq	-24(%rbp), %rdi
	callq	gtk_text_buffer_end_user_action
.LBB30_2:                               # %if.end
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_text_style_editor_clear_tags, .Lfunc_end30-gimp_text_style_editor_clear_tags
	.cfi_endproc

	.type	gimp_text_style_editor_get_type.g_define_type_id__volatile,@object # @gimp_text_style_editor_get_type.g_define_type_id__volatile
	.local	gimp_text_style_editor_get_type.g_define_type_id__volatile
	.comm	gimp_text_style_editor_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpTextStyleEditor"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_text_style_editor_new,@object # @__func__.gimp_text_style_editor_new
.L__func__.gimp_text_style_editor_new:
	.asciz	"gimp_text_style_editor_new"
	.size	.L__func__.gimp_text_style_editor_new, 27

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_TEXT (text)"
	.size	.L.str.3, 20

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_TEXT_BUFFER (buffer)"
	.size	.L.str.4, 29

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"resolution_x > 0.0"
	.size	.L.str.5, 19

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"resolution_y > 0.0"
	.size	.L.str.6, 19

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"text"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"buffer"
	.size	.L.str.9, 7

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"fonts"
	.size	.L.str.10, 6

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"resolution-x"
	.size	.L.str.11, 13

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"resolution-y"
	.size	.L.str.12, 13

	.type	.L__func__.gimp_text_style_editor_list_tags,@object # @__func__.gimp_text_style_editor_list_tags
.L__func__.gimp_text_style_editor_list_tags:
	.asciz	"gimp_text_style_editor_list_tags"
	.size	.L__func__.gimp_text_style_editor_list_tags, 33

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"GIMP_IS_TEXT_STYLE_EDITOR (editor)"
	.size	.L.str.13, 35

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"remove_tags != NULL"
	.size	.L.str.14, 20

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"tag"
	.size	.L.str.15, 4

	.type	gimp_text_style_editor_parent_class,@object # @gimp_text_style_editor_parent_class
	.local	gimp_text_style_editor_parent_class
	.comm	gimp_text_style_editor_parent_class,8,8
	.type	GimpTextStyleEditor_private_offset,@object # @GimpTextStyleEditor_private_offset
	.local	GimpTextStyleEditor_private_offset
	.comm	GimpTextStyleEditor_private_offset,4,4
	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimptextstyleeditor.c"
	.size	.L.str.16, 22

	.type	.L__func__.gimp_text_style_editor_constructed,@object # @__func__.gimp_text_style_editor_constructed
.L__func__.gimp_text_style_editor_constructed:
	.asciz	"gimp_text_style_editor_constructed"
	.size	.L__func__.gimp_text_style_editor_constructed, 35

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"GIMP_IS_GIMP (editor->gimp)"
	.size	.L.str.17, 28

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"GIMP_IS_FONT_LIST (editor->fonts)"
	.size	.L.str.18, 34

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"GIMP_IS_TEXT (editor->text)"
	.size	.L.str.19, 28

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"GIMP_IS_TEXT_BUFFER (editor->buffer)"
	.size	.L.str.20, 37

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"text style editor"
	.size	.L.str.21, 18

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"font-changed"
	.size	.L.str.22, 13

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gtk-bold"
	.size	.L.str.23, 9

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Bold"
	.size	.L.str.24, 5

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gtk-italic"
	.size	.L.str.25, 11

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Italic"
	.size	.L.str.26, 7

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gtk-underline"
	.size	.L.str.27, 14

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Underline"
	.size	.L.str.28, 10

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gtk-strikethrough"
	.size	.L.str.29, 18

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Strikethrough"
	.size	.L.str.30, 14

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"notify::font"
	.size	.L.str.31, 13

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"notify::font-size"
	.size	.L.str.32, 18

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"notify::font-size-unit"
	.size	.L.str.33, 23

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"notify::color"
	.size	.L.str.34, 14

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"changed"
	.size	.L.str.35, 8

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"apply-tag"
	.size	.L.str.36, 10

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"remove-tag"
	.size	.L.str.37, 11

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"mark-set"
	.size	.L.str.38, 9

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"toggled"
	.size	.L.str.39, 8

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.zero	1
	.size	.L.str.40, 1

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.41, 54

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"property"
	.size	.L.str.42, 9

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Change font of selected text"
	.size	.L.str.43, 29

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"%a"
	.size	.L.str.44, 3

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Change size of selected text"
	.size	.L.str.45, 29

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"value-changed"
	.size	.L.str.46, 14

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Clear style of selected text"
	.size	.L.str.47, 29

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"clicked"
	.size	.L.str.48, 8

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"gtk-clear"
	.size	.L.str.49, 10

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Change color of selected text"
	.size	.L.str.50, 30

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"color-changed"
	.size	.L.str.51, 14

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Change kerning of selected text"
	.size	.L.str.52, 32

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Change baseline of selected text"
	.size	.L.str.53, 33


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
