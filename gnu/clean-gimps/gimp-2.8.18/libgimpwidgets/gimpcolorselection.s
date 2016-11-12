	.text
	.file	"gimpcolorselection.bc"
	.globl	gimp_color_selection_get_type
	.align	16, 0x90
	.type	gimp_color_selection_get_type,@function
gimp_color_selection_get_type:          # @gimp_color_selection_get_type
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
	movq	gimp_color_selection_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_color_selection_get_type.g_define_type_id__volatile(%rip), %rax
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
	movl	$864, %edx              # imm = 0x360
	leaq	gimp_color_selection_class_intern_init(%rip), %rdi
	movl	$256, %r8d              # imm = 0x100
	leaq	gimp_color_selection_init(%rip), %rcx
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
	leaq	gimp_color_selection_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_color_selection_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_color_selection_get_type, .Lfunc_end0-gimp_color_selection_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_selection_class_intern_init,@function
gimp_color_selection_class_intern_init: # @gimp_color_selection_class_intern_init
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
	movq	%rax, gimp_color_selection_parent_class(%rip)
	cmpl	$0, GimpColorSelection_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpColorSelection_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_color_selection_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_color_selection_class_intern_init, .Lfunc_end1-gimp_color_selection_class_intern_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_1:
	.long	1065353216              # float 1
.LCPI2_2:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	gimp_color_selection_init,@function
gimp_color_selection_init:              # @gimp_color_selection_init
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
	subq	$464, %rsp              # imm = 0x1D0
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$1, 128(%rdi)
	movq	-8(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gtk_orientable_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_orientable_set_orientation@PLT
	xorps	%xmm0, %xmm0
	movsd	.LCPI2_0(%rip), %xmm3   # xmm3 = mem[0],zero
	movq	-8(%rbp), %rax
	addq	$168, %rax
	movq	%rax, %rdi
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-96(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_rgba_set@PLT
	movq	-8(%rbp), %rax
	addq	$168, %rax
	movq	-8(%rbp), %rdi
	addq	$136, %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-104(%rbp), %rsi        # 8-byte Reload
	callq	gimp_rgb_to_hsv@PLT
	xorl	%edi, %edi
	movl	$6, %esi
	movq	-8(%rbp), %rax
	movl	$0, 200(%rax)
	callq	gtk_box_new@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start@PLT
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new@PLT
	movq	-8(%rbp), %r9
	movq	%rax, 208(%r9)
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rsi
	movq	208(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start@PLT
	movq	-8(%rbp), %rax
	movq	208(%rax), %rdi
	callq	gtk_widget_show@PLT
	movq	_gimp_ensure_modules_func@GOTPCREL(%rip), %rax
	cmpq	$0, (%rax)
	je	.LBB2_2
# BB#1:                                 # %if.then
	callq	gimp_color_select_get_type@PLT
	movq	%rax, %rdi
	callq	g_type_class_ref@PLT
	movq	_gimp_ensure_modules_func@GOTPCREL(%rip), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	*(%rdi)
.LBB2_2:                                # %if.end
	callq	gimp_color_notebook_get_type@PLT
	movq	-8(%rbp), %rcx
	addq	$168, %rcx
	movq	-8(%rbp), %rdx
	addq	$136, %rdx
	movq	-8(%rbp), %rsi
	movl	200(%rsi), %edi
	movl	%edi, -132(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movl	-132(%rbp), %ecx        # 4-byte Reload
	callq	gimp_color_selector_new@PLT
	movq	_gimp_ensure_modules_func@GOTPCREL(%rip), %rdx
	movq	-8(%rbp), %rsi
	movq	%rax, 224(%rsi)
	cmpq	$0, (%rdx)
	je	.LBB2_4
# BB#3:                                 # %if.then.20
	callq	gimp_color_select_get_type@PLT
	movq	%rax, %rdi
	callq	g_type_class_peek@PLT
	movq	%rax, %rdi
	callq	g_type_class_unref@PLT
.LBB2_4:                                # %if.end.23
	movq	-8(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_color_selector_get_type@PLT
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_color_selector_set_toggles_visible@PLT
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rsi
	movq	224(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start@PLT
	movq	-8(%rbp), %rax
	movq	224(%rax), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.6(%rip), %rsi
	leaq	gimp_color_selection_notebook_changed(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	224(%rdi), %rdi
	movq	-8(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data@PLT
	movq	-8(%rbp), %rcx
	movq	224(%rcx), %rcx
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	callq	gimp_color_notebook_get_type@PLT
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.10(%rip), %rsi
	leaq	gimp_color_selection_switch_page(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	216(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-176(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	xorl	%edi, %edi
	movl	$6, %esi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_box_new@PLT
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_end@PLT
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movl	$1, %edi
	xorl	%esi, %esi
	callq	gtk_box_new@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	movl	-204(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.11(%rip), %rdi
	leaq	.L.str.12(%rip), %rsi
	callq	dgettext@PLT
	movq	%rax, %rdi
	callq	gtk_label_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type@PLT
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movss	.LCPI2_1(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI2_2(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start@PLT
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movl	$2, %edi
	callq	gtk_size_group_new@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gtk_size_group_add_widget@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref@PLT
	leaq	.L.str.11(%rip), %rdi
	leaq	.L.str.13(%rip), %rsi
	callq	dgettext@PLT
	movq	%rax, %rdi
	callq	gtk_label_new@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type@PLT
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movss	.LCPI2_1(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI2_2(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start@PLT
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movl	$2, %edi
	callq	gtk_size_group_new@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gtk_size_group_add_widget@PLT
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_frame_new@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type@PLT
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start@PLT
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movl	$1, %edi
	xorl	%esi, %esi
	callq	gtk_box_new@PLT
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add@PLT
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movl	$768, %edx              # imm = 0x300
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	-8(%rbp), %rax
	addq	$168, %rax
	movq	-8(%rbp), %rsi
	cmpl	$0, 128(%rsi)
	cmovnel	%r8d, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gimp_color_area_new@PLT
	movq	-8(%rbp), %rdi
	movq	%rax, 240(%rdi)
	movq	-72(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	240(%rax), %rsi
	callq	gtk_size_group_add_widget@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rsi
	movq	240(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -276(%rbp)        # 4-byte Spill
	movl	-276(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-8(%rbp), %rax
	movq	240(%rax), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.6(%rip), %rsi
	leaq	gimp_color_selection_new_color_changed(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	240(%rdi), %rdi
	movq	-8(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data@PLT
	movl	$768, %edx              # imm = 0x300
	xorl	%r9d, %r9d
	movl	$1, %r11d
	movq	-8(%rbp), %rcx
	addq	$168, %rcx
	movq	-8(%rbp), %rsi
	cmpl	$0, 128(%rsi)
	cmovnel	%r11d, %r9d
	movq	%rcx, %rdi
	movl	%r9d, %esi
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_color_area_new@PLT
	movq	-8(%rbp), %rcx
	movq	%rax, 248(%rcx)
	movq	-8(%rbp), %rax
	movq	248(%rax), %rdi
	callq	gtk_drag_dest_unset@PLT
	movq	-80(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	248(%rax), %rsi
	callq	gtk_size_group_add_widget@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%edx, %edx
	movq	-8(%rbp), %rcx
	movq	248(%rcx), %rsi
	movq	%rax, %rdi
	movl	%edx, -300(%rbp)        # 4-byte Spill
	movl	-300(%rbp), %ecx        # 4-byte Reload
	movl	-300(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-8(%rbp), %rax
	movq	248(%rax), %rdi
	callq	gtk_widget_show@PLT
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new@PLT
	movq	-8(%rbp), %r10
	movq	%rax, 216(%r10)
	movq	-16(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rsi
	movq	216(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start@PLT
	movq	-8(%rbp), %rax
	movq	216(%rax), %rdi
	callq	gtk_widget_show@PLT
	callq	gimp_color_scales_get_type@PLT
	movq	-8(%rbp), %rsi
	addq	$168, %rsi
	movq	-8(%rbp), %rdi
	addq	$136, %rdi
	movq	-8(%rbp), %r10
	movl	200(%r10), %ecx
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-320(%rbp), %rdx        # 8-byte Reload
	callq	gimp_color_selector_new@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 232(%rdx)
	movq	-8(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gimp_color_selector_get_type@PLT
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_color_selector_set_toggles_visible@PLT
	movq	-8(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gimp_color_selector_get_type@PLT
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-8(%rbp), %rdx
	movl	128(%rdx), %esi
	movq	%rax, %rdi
	callq	gimp_color_selector_set_show_alpha@PLT
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rdx
	movq	232(%rdx), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start@PLT
	movq	-8(%rbp), %rax
	movq	232(%rax), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.14(%rip), %rsi
	leaq	gimp_color_selection_channel_changed(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	232(%rdi), %rdi
	movq	-8(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data@PLT
	leaq	.L.str.6(%rip), %rsi
	leaq	gimp_color_selection_scales_changed(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	232(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-352(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data@PLT
	xorl	%edi, %edi
	movl	$6, %esi
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_box_new@PLT
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start@PLT
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show@PLT
	callq	gimp_pick_button_new@PLT
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -388(%rbp)        # 4-byte Spill
	movl	-388(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_end@PLT
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.15(%rip), %rsi
	leaq	gimp_color_selection_color_picked(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rdi
	movq	-8(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data@PLT
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gimp_color_hex_entry_new@PLT
	leaq	.L.str.11(%rip), %rdi
	leaq	.L.str.16(%rip), %rsi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_end@PLT
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.11(%rip), %rdi
	leaq	.L.str.17(%rip), %rsi
	callq	dgettext@PLT
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -436(%rbp)        # 4-byte Spill
	movl	-436(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_end@PLT
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.18(%rip), %rsi
	movq	-56(%rbp), %rdi
	movq	%rdi, -448(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-448(%rbp), %rdx        # 8-byte Reload
	callq	g_object_set_data@PLT
	leaq	.L.str.6(%rip), %rsi
	leaq	gimp_color_selection_entry_changed(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -456(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-456(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	movq	%rax, -464(%rbp)        # 8-byte Spill
	addq	$464, %rsp              # imm = 0x1D0
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_color_selection_init, .Lfunc_end2-gimp_color_selection_init
	.cfi_endproc

	.globl	gimp_color_selection_new
	.align	16, 0x90
	.type	gimp_color_selection_new,@function
gimp_color_selection_new:               # @gimp_color_selection_new
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
	callq	gimp_color_selection_get_type@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_color_selection_new, .Lfunc_end3-gimp_color_selection_new
	.cfi_endproc

	.globl	gimp_color_selection_set_show_alpha
	.align	16, 0x90
	.type	gimp_color_selection_set_show_alpha,@function
gimp_color_selection_set_show_alpha:    # @gimp_color_selection_set_show_alpha
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_color_selection_get_type@PLT
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
	callq	g_type_check_instance_is_a@PLT
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
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_selection_set_show_alpha(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_14
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	128(%rcx), %eax
	je	.LBB4_14
# BB#13:                                # %if.then.13
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, -12(%rbp)
	cmovnel	%ecx, %eax
	movq	-8(%rbp), %rdx
	movl	%eax, 128(%rdx)
	movq	-8(%rbp), %rdx
	movq	224(%rdx), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_color_selector_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-8(%rbp), %rdx
	movl	128(%rdx), %esi
	movq	%rax, %rdi
	callq	gimp_color_selector_set_show_alpha@PLT
	movq	-8(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_color_selector_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-8(%rbp), %rdx
	movl	128(%rdx), %esi
	movq	%rax, %rdi
	callq	gimp_color_selector_set_show_alpha@PLT
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_color_area_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	-8(%rbp), %rdx
	cmpl	$0, 128(%rdx)
	cmovnel	%r8d, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gimp_color_area_set_type@PLT
	movq	-8(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_color_area_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	-8(%rbp), %rdx
	cmpl	$0, 128(%rdx)
	cmovnel	%r8d, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gimp_color_area_set_type@PLT
.LBB4_14:                               # %if.end.32
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_color_selection_set_show_alpha, .Lfunc_end4-gimp_color_selection_set_show_alpha
	.cfi_endproc

	.globl	gimp_color_selection_get_show_alpha
	.align	16, 0x90
	.type	gimp_color_selection_get_show_alpha,@function
gimp_color_selection_get_show_alpha:    # @gimp_color_selection_get_show_alpha
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_color_selection_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_selection_get_show_alpha(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB5_13
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-16(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB5_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_color_selection_get_show_alpha, .Lfunc_end5-gimp_color_selection_get_show_alpha
	.cfi_endproc

	.globl	gimp_color_selection_set_color
	.align	16, 0x90
	.type	gimp_color_selection_set_color,@function
gimp_color_selection_set_color:         # @gimp_color_selection_set_color
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_color_selection_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_selection_set_color(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB6_18
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB6_15
# BB#14:                                # %if.then.13
	jmp	.LBB6_16
.LBB6_15:                               # %if.else.14
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_selection_set_color(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB6_18
.LBB6_16:                               # %if.end.15
	jmp	.LBB6_17
.LBB6_17:                               # %do.end.16
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 168(%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 176(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 184(%rax)
	movq	24(%rcx), %rcx
	movq	%rcx, 192(%rax)
	movq	-8(%rbp), %rax
	addq	$168, %rax
	movq	-8(%rbp), %rcx
	addq	$136, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_rgb_to_hsv@PLT
	movl	$15, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_color_selection_update
	movq	-8(%rbp), %rdi
	callq	gimp_color_selection_color_changed@PLT
.LBB6_18:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_color_selection_set_color, .Lfunc_end6-gimp_color_selection_set_color
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_selection_update,@function
gimp_color_selection_update:            # @gimp_color_selection_update
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
	pushq	%rbx
	subq	$248, %rsp
.Ltmp24:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	-20(%rbp), %esi
	andl	$1, %esi
	cmpl	$0, %esi
	je	.LBB7_2
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	gimp_color_selection_notebook_changed(%rip), %rdx
	movq	-16(%rbp), %rdi
	movq	224(%rdi), %rdi
	movq	-16(%rbp), %r9
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-40(%rbp), %r10         # 8-byte Reload
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	movq	-16(%rbp), %rdi
	movq	224(%rdi), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_color_selector_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-16(%rbp), %rsi
	addq	$168, %rsi
	movq	-16(%rbp), %rdi
	addq	$136, %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	callq	gimp_color_selector_set_color@PLT
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%ebx, %ebx
	movl	%ebx, %r8d
	leaq	gimp_color_selection_notebook_changed(%rip), %rax
	movq	-16(%rbp), %rdx
	movq	224(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movl	%ecx, %edx
	movq	%rax, %r9
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB7_2:                                # %if.end
	movl	-20(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB7_4
# BB#3:                                 # %if.then.8
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	gimp_color_selection_scales_changed(%rip), %rdx
	movq	-16(%rbp), %rdi
	movq	232(%rdi), %rdi
	movq	-16(%rbp), %r9
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r9, -104(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-104(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	movq	-16(%rbp), %rdi
	movq	232(%rdi), %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gimp_color_selector_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-16(%rbp), %rsi
	addq	$168, %rsi
	movq	-16(%rbp), %rdi
	addq	$136, %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-128(%rbp), %rdx        # 8-byte Reload
	callq	gimp_color_selector_set_color@PLT
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%ebx, %ebx
	movl	%ebx, %r8d
	leaq	gimp_color_selection_scales_changed(%rip), %rax
	movq	-16(%rbp), %rdx
	movq	232(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movl	%ecx, %edx
	movq	%rax, %r9
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB7_4:                                # %if.end.17
	movl	-20(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB7_6
# BB#5:                                 # %if.then.20
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.18(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movl	$24, %esi
	xorl	%edx, %edx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	leaq	gimp_color_selection_entry_changed(%rip), %rcx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%edx, -156(%rbp)        # 4-byte Spill
	movl	-156(%rbp), %r9d        # 4-byte Reload
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	movl	%r9d, %ecx
	movq	-168(%rbp), %r9         # 8-byte Reload
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %r8
	addq	$168, %r8
	movq	%r8, %rsi
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	gimp_color_hex_entry_set_color@PLT
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	gimp_color_selection_entry_changed(%rip), %rdi
	movq	-32(%rbp), %r9
	movq	-16(%rbp), %r10
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-184(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	movl	%eax, -188(%rbp)        # 4-byte Spill
.LBB7_6:                                # %if.end.27
	movl	-20(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB7_8
# BB#7:                                 # %if.then.30
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	gimp_color_selection_new_color_changed(%rip), %rdx
	movq	-16(%rbp), %rdi
	movq	240(%rdi), %rdi
	movq	-16(%rbp), %r9
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-200(%rbp), %r10        # 8-byte Reload
	movq	%r9, -208(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-208(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	movq	-16(%rbp), %rdi
	movq	240(%rdi), %rdi
	movl	%eax, -212(%rbp)        # 4-byte Spill
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	callq	gimp_color_area_get_type@PLT
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-16(%rbp), %rsi
	addq	$168, %rsi
	movq	%rax, %rdi
	callq	gimp_color_area_set_color@PLT
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	leaq	gimp_color_selection_new_color_changed(%rip), %rax
	movq	-16(%rbp), %rdi
	movq	240(%rdi), %rdi
	movq	-16(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -232(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	movl	%eax, -236(%rbp)        # 4-byte Spill
.LBB7_8:                                # %if.end.38
	addq	$248, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_color_selection_update, .Lfunc_end7-gimp_color_selection_update
	.cfi_endproc

	.globl	gimp_color_selection_color_changed
	.align	16, 0x90
	.type	gimp_color_selection_color_changed,@function
gimp_color_selection_color_changed:     # @gimp_color_selection_color_changed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_color_selection_get_type@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -28(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_selection_color_changed(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB8_13
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	selection_signals(%rip), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit@PLT
.LBB8_13:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_color_selection_color_changed, .Lfunc_end8-gimp_color_selection_color_changed
	.cfi_endproc

	.globl	gimp_color_selection_get_color
	.align	16, 0x90
	.type	gimp_color_selection_get_color,@function
gimp_color_selection_get_color:         # @gimp_color_selection_get_color
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_color_selection_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_selection_get_color(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB9_18
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	jmp	.LBB9_13
.LBB9_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB9_15
# BB#14:                                # %if.then.13
	jmp	.LBB9_16
.LBB9_15:                               # %if.else.14
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_selection_get_color(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB9_18
.LBB9_16:                               # %if.end.15
	jmp	.LBB9_17
.LBB9_17:                               # %do.end.16
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	168(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	176(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	184(%rcx), %rdx
	movq	%rdx, 16(%rax)
	movq	192(%rcx), %rcx
	movq	%rcx, 24(%rax)
.LBB9_18:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_color_selection_get_color, .Lfunc_end9-gimp_color_selection_get_color
	.cfi_endproc

	.globl	gimp_color_selection_set_old_color
	.align	16, 0x90
	.type	gimp_color_selection_set_old_color,@function
gimp_color_selection_set_old_color:     # @gimp_color_selection_set_old_color
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_color_selection_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_selection_set_old_color(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB10_18
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	jmp	.LBB10_13
.LBB10_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB10_15
# BB#14:                                # %if.then.13
	jmp	.LBB10_16
.LBB10_15:                              # %if.else.14
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_selection_set_old_color(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB10_18
.LBB10_16:                              # %if.end.15
	jmp	.LBB10_17
.LBB10_17:                              # %do.end.16
	movq	-8(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_color_area_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_area_set_color@PLT
.LBB10_18:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_color_selection_set_old_color, .Lfunc_end10-gimp_color_selection_set_old_color
	.cfi_endproc

	.globl	gimp_color_selection_get_old_color
	.align	16, 0x90
	.type	gimp_color_selection_get_old_color,@function
gimp_color_selection_get_old_color:     # @gimp_color_selection_get_old_color
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_color_selection_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_selection_get_old_color(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB11_18
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
	leaq	.L__func__.gimp_color_selection_get_old_color(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB11_18
.LBB11_16:                              # %if.end.15
	jmp	.LBB11_17
.LBB11_17:                              # %do.end.16
	movq	-8(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_color_area_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_area_get_color@PLT
.LBB11_18:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_color_selection_get_old_color, .Lfunc_end11-gimp_color_selection_get_old_color
	.cfi_endproc

	.globl	gimp_color_selection_reset
	.align	16, 0x90
	.type	gimp_color_selection_reset,@function
gimp_color_selection_reset:             # @gimp_color_selection_reset
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_color_selection_get_type@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -60(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_selection_reset(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB12_13
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_color_area_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_area_get_color@PLT
	leaq	-40(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_color_selection_set_color@PLT
.LBB12_13:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_color_selection_reset, .Lfunc_end12-gimp_color_selection_reset
	.cfi_endproc

	.globl	gimp_color_selection_set_config
	.align	16, 0x90
	.type	gimp_color_selection_set_config,@function
gimp_color_selection_set_config:        # @gimp_color_selection_set_config
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_color_selection_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_selection_set_config(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB13_26
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	jmp	.LBB13_13
.LBB13_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB13_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_color_config_get_type@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB13_16
# BB#15:                                # %if.then.21
	movl	$0, -60(%rbp)
	jmp	.LBB13_21
.LBB13_16:                              # %if.else.22
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_19
# BB#17:                                # %land.lhs.true.25
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB13_19
# BB#18:                                # %if.then.29
	movl	$1, -60(%rbp)
	jmp	.LBB13_20
.LBB13_19:                              # %if.else.30
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -60(%rbp)
.LBB13_20:                              # %if.end.32
	jmp	.LBB13_21
.LBB13_21:                              # %if.end.33
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB13_23
.LBB13_22:                              # %if.then.36
	jmp	.LBB13_24
.LBB13_23:                              # %if.else.37
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_color_selection_set_config(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB13_26
.LBB13_24:                              # %if.end.38
	jmp	.LBB13_25
.LBB13_25:                              # %do.end.39
	movq	-8(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_color_selector_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_selector_set_config@PLT
	movq	-8(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_color_selector_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_selector_set_config@PLT
.LBB13_26:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_color_selection_set_config, .Lfunc_end13-gimp_color_selection_set_config
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_selection_class_init,@function
gimp_color_selection_class_init:        # @gimp_color_selection_class_init
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
	subq	$80, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast@PLT
	leaq	gimp_color_selection_set_property(%rip), %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rsi, 24(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 824(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_color_config_get_type@PLT
	leaq	.L.str.5(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$2, %r8d
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	-32(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	g_param_spec_object@PLT
	movl	$1, %esi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	leaq	.L.str.6(%rip), %rdi
	movl	$1, %edx
	movl	$824, %ecx              # imm = 0x338
	xorl	%esi, %esi
	movl	%esi, %eax
	movq	g_cclosure_marshal_VOID__VOID@GOTPCREL(%rip), %r9
	movl	$4, %esi
	movl	%esi, %r10d
	xorl	%esi, %esi
	movq	-8(%rbp), %r11
	movq	(%r11), %r11
	movl	%esi, -36(%rbp)         # 4-byte Spill
	movq	%r11, %rsi
	movq	%rax, %r8
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movq	%r10, -56(%rbp)         # 8-byte Spill
	callq	g_signal_new@PLT
	movl	%eax, selection_signals(%rip)
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_color_selection_class_init, .Lfunc_end14-gimp_color_selection_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_selection_set_property,@function
gimp_color_selection_set_property:      # @gimp_color_selection_set_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_color_selection_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB15_2
	jmp	.LBB15_1
.LBB15_1:                               # %sw.bb
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_object@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_color_selection_set_config@PLT
	jmp	.LBB15_5
.LBB15_2:                               # %sw.default
	jmp	.LBB15_3
.LBB15_3:                               # %do.body
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
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	movq	%r9, -104(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.7(%rip), %rdi
	leaq	.L.str.8(%rip), %rsi
	movl	$351, %edx              # imm = 0x15F
	leaq	.L.str.9(%rip), %rcx
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB15_5
.LBB15_5:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_color_selection_set_property, .Lfunc_end15-gimp_color_selection_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB16_2
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
.LBB16_2:                               # %entry
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
	leaq	.L.str.1(%rip), %rdi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv@PLT
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end16:
	.size	g_warning, .Lfunc_end16-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_selection_notebook_changed,@function
gimp_color_selection_notebook_changed:  # @gimp_color_selection_notebook_changed
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
	subq	$32, %rsp
	movl	$14, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rsi
	movq	%rsi, 136(%rcx)
	movq	8(%rdx), %rsi
	movq	%rsi, 144(%rcx)
	movq	16(%rdx), %rsi
	movq	%rsi, 152(%rcx)
	movq	24(%rdx), %rdx
	movq	%rdx, 160(%rcx)
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rsi
	movq	%rsi, 168(%rcx)
	movq	8(%rdx), %rsi
	movq	%rsi, 176(%rcx)
	movq	16(%rdx), %rsi
	movq	%rsi, 184(%rcx)
	movq	24(%rdx), %rdx
	movq	%rdx, 192(%rcx)
	movq	-32(%rbp), %rdi
	movl	%eax, %esi
	callq	gimp_color_selection_update
	movq	-32(%rbp), %rdi
	callq	gimp_color_selection_color_changed@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_color_selection_notebook_changed, .Lfunc_end17-gimp_color_selection_notebook_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_selection_switch_page,@function
gimp_color_selection_switch_page:       # @gimp_color_selection_switch_page
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	224(%rcx), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_color_notebook_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	232(%rax), %rax
	movq	(%rax), %rax
	cmpq	$0, 880(%rax)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	movl	%edx, -44(%rbp)
	movq	-32(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_color_selector_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	-44(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_color_selector_set_toggles_sensitive@PLT
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_color_selection_switch_page, .Lfunc_end18-gimp_color_selection_switch_page
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_selection_new_color_changed,@function
gimp_color_selection_new_color_changed: # @gimp_color_selection_new_color_changed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gimp_color_area_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-16(%rbp), %rsi
	addq	$168, %rsi
	movq	%rax, %rdi
	callq	gimp_color_area_get_color@PLT
	movq	-16(%rbp), %rax
	addq	$168, %rax
	movq	-16(%rbp), %rsi
	addq	$136, %rsi
	movq	%rax, %rdi
	callq	gimp_rgb_to_hsv@PLT
	movl	$7, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_color_selection_update
	movq	-16(%rbp), %rdi
	callq	gimp_color_selection_color_changed@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_color_selection_new_color_changed, .Lfunc_end19-gimp_color_selection_new_color_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_selection_channel_changed,@function
gimp_color_selection_channel_changed:   # @gimp_color_selection_channel_changed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	movl	%esi, 200(%rdx)
	movq	-24(%rbp), %rdx
	movq	224(%rdx), %rdx
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	callq	gimp_color_selector_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-24(%rbp), %rdx
	movl	200(%rdx), %esi
	movq	%rax, %rdi
	callq	gimp_color_selector_set_channel@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_color_selection_channel_changed, .Lfunc_end20-gimp_color_selection_channel_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_selection_scales_changed,@function
gimp_color_selection_scales_changed:    # @gimp_color_selection_scales_changed
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
	subq	$32, %rsp
	movl	$13, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rsi
	movq	%rsi, 168(%rcx)
	movq	8(%rdx), %rsi
	movq	%rsi, 176(%rcx)
	movq	16(%rdx), %rsi
	movq	%rsi, 184(%rcx)
	movq	24(%rdx), %rdx
	movq	%rdx, 192(%rcx)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rsi
	movq	%rsi, 136(%rcx)
	movq	8(%rdx), %rsi
	movq	%rsi, 144(%rcx)
	movq	16(%rdx), %rsi
	movq	%rsi, 152(%rcx)
	movq	24(%rdx), %rdx
	movq	%rdx, 160(%rcx)
	movq	-32(%rbp), %rdi
	movl	%eax, %esi
	callq	gimp_color_selection_update
	movq	-32(%rbp), %rdi
	callq	gimp_color_selection_color_changed@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_color_selection_scales_changed, .Lfunc_end21-gimp_color_selection_scales_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_selection_color_picked,@function
gimp_color_selection_color_picked:      # @gimp_color_selection_color_picked
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_color_selection_set_color@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_color_selection_color_picked, .Lfunc_end22-gimp_color_selection_color_picked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_selection_entry_changed,@function
gimp_color_selection_entry_changed:     # @gimp_color_selection_entry_changed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	addq	$168, %rsi
	callq	gimp_color_hex_entry_get_color@PLT
	movq	-16(%rbp), %rsi
	addq	$168, %rsi
	movq	-16(%rbp), %rdi
	addq	$136, %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	callq	gimp_rgb_to_hsv@PLT
	movl	$11, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_color_selection_update
	movq	-16(%rbp), %rdi
	callq	gimp_color_selection_color_changed@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_color_selection_entry_changed, .Lfunc_end23-gimp_color_selection_entry_changed
	.cfi_endproc

	.type	gimp_color_selection_get_type.g_define_type_id__volatile,@object # @gimp_color_selection_get_type.g_define_type_id__volatile
	.local	gimp_color_selection_get_type.g_define_type_id__volatile
	.comm	gimp_color_selection_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpColorSelection"
	.size	.L.str, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"LibGimpWidgets"
	.size	.L.str.1, 15

	.type	.L__func__.gimp_color_selection_set_show_alpha,@object # @__func__.gimp_color_selection_set_show_alpha
.L__func__.gimp_color_selection_set_show_alpha:
	.asciz	"gimp_color_selection_set_show_alpha"
	.size	.L__func__.gimp_color_selection_set_show_alpha, 36

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_COLOR_SELECTION (selection)"
	.size	.L.str.2, 36

	.type	.L__func__.gimp_color_selection_get_show_alpha,@object # @__func__.gimp_color_selection_get_show_alpha
.L__func__.gimp_color_selection_get_show_alpha:
	.asciz	"gimp_color_selection_get_show_alpha"
	.size	.L__func__.gimp_color_selection_get_show_alpha, 36

	.type	.L__func__.gimp_color_selection_set_color,@object # @__func__.gimp_color_selection_set_color
.L__func__.gimp_color_selection_set_color:
	.asciz	"gimp_color_selection_set_color"
	.size	.L__func__.gimp_color_selection_set_color, 31

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"color != NULL"
	.size	.L.str.3, 14

	.type	.L__func__.gimp_color_selection_get_color,@object # @__func__.gimp_color_selection_get_color
.L__func__.gimp_color_selection_get_color:
	.asciz	"gimp_color_selection_get_color"
	.size	.L__func__.gimp_color_selection_get_color, 31

	.type	.L__func__.gimp_color_selection_set_old_color,@object # @__func__.gimp_color_selection_set_old_color
.L__func__.gimp_color_selection_set_old_color:
	.asciz	"gimp_color_selection_set_old_color"
	.size	.L__func__.gimp_color_selection_set_old_color, 35

	.type	.L__func__.gimp_color_selection_get_old_color,@object # @__func__.gimp_color_selection_get_old_color
.L__func__.gimp_color_selection_get_old_color:
	.asciz	"gimp_color_selection_get_old_color"
	.size	.L__func__.gimp_color_selection_get_old_color, 35

	.type	.L__func__.gimp_color_selection_reset,@object # @__func__.gimp_color_selection_reset
.L__func__.gimp_color_selection_reset:
	.asciz	"gimp_color_selection_reset"
	.size	.L__func__.gimp_color_selection_reset, 27

	.type	.L__func__.gimp_color_selection_color_changed,@object # @__func__.gimp_color_selection_color_changed
.L__func__.gimp_color_selection_color_changed:
	.asciz	"gimp_color_selection_color_changed"
	.size	.L__func__.gimp_color_selection_color_changed, 35

	.type	selection_signals,@object # @selection_signals
	.local	selection_signals
	.comm	selection_signals,4,4
	.type	.L__func__.gimp_color_selection_set_config,@object # @__func__.gimp_color_selection_set_config
.L__func__.gimp_color_selection_set_config:
	.asciz	"gimp_color_selection_set_config"
	.size	.L__func__.gimp_color_selection_set_config, 32

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"config == NULL || GIMP_IS_COLOR_CONFIG (config)"
	.size	.L.str.4, 48

	.type	gimp_color_selection_parent_class,@object # @gimp_color_selection_parent_class
	.local	gimp_color_selection_parent_class
	.comm	gimp_color_selection_parent_class,8,8
	.type	GimpColorSelection_private_offset,@object # @GimpColorSelection_private_offset
	.local	GimpColorSelection_private_offset
	.comm	GimpColorSelection_private_offset,4,4
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"config"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"color-changed"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.7, 54

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimpcolorselection.c"
	.size	.L.str.8, 21

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"property"
	.size	.L.str.9, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"switch-page"
	.size	.L.str.10, 12

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp20-libgimp"
	.size	.L.str.11, 15

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Current:"
	.size	.L.str.12, 9

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Old:"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"channel-changed"
	.size	.L.str.14, 16

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"color-picked"
	.size	.L.str.15, 13

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Hexadecimal color notation as used in HTML and CSS.  This entry also accepts CSS color names."
	.size	.L.str.16, 94

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"HTML _notation:"
	.size	.L.str.17, 16

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"color-hex-entry"
	.size	.L.str.18, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
