	.text
	.file	"gimpbrushselect.bc"
	.globl	gimp_brush_select_get_type
	.align	16, 0x90
	.type	gimp_brush_select_get_type,@function
gimp_brush_select_get_type:             # @gimp_brush_select_get_type
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
	movq	gimp_brush_select_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_brush_select_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_pdb_dialog_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$1000, %edx             # imm = 0x3E8
	movabsq	$gimp_brush_select_class_intern_init, %rdi
	movl	$368, %r8d              # imm = 0x170
	movabsq	$gimp_brush_select_init, %rcx
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
	movabsq	$gimp_brush_select_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_brush_select_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_brush_select_get_type, .Lfunc_end0-gimp_brush_select_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_select_class_intern_init,@function
gimp_brush_select_class_intern_init:    # @gimp_brush_select_class_intern_init
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
	movq	%rax, gimp_brush_select_parent_class
	cmpl	$0, GimpBrushSelect_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpBrushSelect_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_brush_select_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_brush_select_class_intern_init, .Lfunc_end1-gimp_brush_select_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_select_init,@function
gimp_brush_select_init:                 # @gimp_brush_select_init
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
	.size	gimp_brush_select_init, .Lfunc_end2-gimp_brush_select_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_brush_select_class_init,@function
gimp_brush_select_class_init:           # @gimp_brush_select_class_init
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
	subq	$96, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_pdb_dialog_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.1, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorps	%xmm0, %xmm0
	movsd	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero
	movl	$230, %ecx
	movabsq	$gimp_brush_select_run_callback, %rdx
	movabsq	$gimp_brush_select_set_property, %r8
	movabsq	$gimp_brush_select_constructed, %r9
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%r9, 72(%rax)
	movq	-16(%rbp), %rax
	movq	%r8, 24(%rax)
	movq	-24(%rbp), %rax
	movq	%rdx, 992(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	-40(%rbp), %rdx         # 8-byte Reload
	movsd	%xmm1, -48(%rbp)        # 8-byte Spill
	movsd	-48(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	g_param_spec_double
	movl	$1, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_layer_mode_effects_get_type
	movabsq	$.L.str.2, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r8d, %r8d
	movl	$230, %r9d
	movq	%rdx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$2, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.3, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movl	$2147483649, %ecx       # imm = 0x80000001
	movl	$1000, %r8d             # imm = 0x3E8
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movl	$230, %esi
	movq	-16(%rbp), %rdx
	movl	%esi, -68(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movl	$230, (%rsp)
	callq	g_param_spec_int
	movl	$3, %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_brush_select_class_init, .Lfunc_end3-gimp_brush_select_class_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4636737291354636288     # double 100
.LCPI4_1:
	.quad	4607182418800017408     # double 1
.LCPI4_2:
	.quad	4621819117588971520     # double 10
	.text
	.align	16, 0x90
	.type	gimp_brush_select_constructed,@function
gimp_brush_select_constructed:          # @gimp_brush_select_constructed
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
	subq	$336, %rsp              # imm = 0x150
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_pdb_dialog_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_brush_select_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	gimp_brush_select_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_brush_select_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB4_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	280(%rax), %rdi
	movq	-24(%rbp), %rax
	movsd	336(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_context_set_opacity
	movq	-16(%rbp), %rax
	movq	280(%rax), %rdi
	movq	-24(%rbp), %rax
	movl	344(%rax), %esi
	callq	gimp_context_set_paint_mode
	movabsq	$.L.str.4, %rsi
	movabsq	$gimp_brush_select_opacity_changed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	280(%rdi), %rdi
	movq	-16(%rbp), %rdx
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.5, %rsi
	movabsq	$gimp_brush_select_mode_changed, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	280(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movl	$1, %r9d
	xorl	%ecx, %ecx
	movl	$32, %r8d
	movq	-16(%rbp), %rdx
	movq	280(%rdx), %rdx
	movq	32(%rdx), %rdx
	movq	464(%rdx), %rsi
	movq	-16(%rbp), %rdx
	movq	280(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	320(%rdi), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movl	%r9d, %edi
	movq	-120(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_brush_factory_view_new
	movq	-16(%rbp), %rdx
	movq	%rax, 328(%rdx)
	movq	-16(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	128(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_container_box_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$170, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gimp_container_box_set_size_request
	movq	-16(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rsi
	movq	328(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gtk_widget_show
	movq	-16(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	128(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	280(%rax), %rdi
	callq	gimp_context_get_opacity
	xorps	%xmm1, %xmm1
	movsd	.LCPI4_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI4_1, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI4_2, %xmm4         # xmm4 = mem[0],zero
	mulsd	%xmm2, %xmm0
	movsd	%xmm1, -192(%rbp)       # 8-byte Spill
	movsd	-192(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	callq	gtk_adjustment_new
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rdi
	movq	-24(%rbp), %rsi
	movq	%rax, 352(%rsi)
	movq	-24(%rbp), %rax
	movq	352(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edx
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_spin_scale_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -220(%rbp)        # 4-byte Spill
	movl	-220(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_end
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.7, %rsi
	movabsq	$gimp_brush_select_opacity_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	352(%rdi), %rdi
	movq	-24(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	xorl	%edi, %edi
	movl	$4, %esi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_end
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.8, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -252(%rbp)        # 4-byte Spill
	movl	-252(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	xorl	%esi, %esi
	callq	gimp_paint_mode_menu_new
	movq	-24(%rbp), %r10
	movq	%rax, 360(%r10)
	movq	-56(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rsi
	movq	360(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rax
	movq	360(%rax), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	movq	360(%rax), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	280(%rsi), %rdi
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_context_get_paint_mode
	movabsq	$gimp_brush_select_mode_update, %rsi
	movq	-24(%rbp), %rdi
	movq	-280(%rbp), %r10        # 8-byte Reload
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -296(%rbp)        # 8-byte Spill
	movl	%eax, %esi
	movq	-296(%rbp), %rdx        # 8-byte Reload
	movq	-288(%rbp), %rcx        # 8-byte Reload
	callq	gimp_int_combo_box_connect
	movq	-16(%rbp), %rcx
	movq	328(%rcx), %rcx
	movq	%rax, -304(%rbp)        # 8-byte Spill
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	callq	gimp_brush_factory_view_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	160(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 348(%rax)
	jl	.LBB4_4
# BB#3:                                 # %if.then.70
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rax
	cvtsi2sdl	348(%rax), %xmm0
	callq	gtk_adjustment_set_value
.LBB4_4:                                # %if.end.72
	movabsq	$.L.str.7, %rsi
	movabsq	$gimp_brush_select_spacing_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-320(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -328(%rbp)        # 8-byte Spill
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_brush_select_constructed, .Lfunc_end4-gimp_brush_select_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_select_set_property,@function
gimp_brush_select_set_property:         # @gimp_brush_select_set_property
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_pdb_dialog_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_brush_select_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	movl	%r9d, -96(%rbp)         # 4-byte Spill
	je	.LBB5_1
	jmp	.LBB5_19
.LBB5_19:                               # %entry
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB5_5
	jmp	.LBB5_20
.LBB5_20:                               # %entry
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB5_9
	jmp	.LBB5_15
.LBB5_1:                                # %sw.bb
	movq	-40(%rbp), %rax
	cmpq	$0, 328(%rax)
	je	.LBB5_3
# BB#2:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	280(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_double
	movq	-112(%rbp), %rdi        # 8-byte Reload
	callq	gimp_context_set_opacity
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-48(%rbp), %rdi
	movsd	%xmm0, 336(%rdi)
.LBB5_4:                                # %if.end
	jmp	.LBB5_18
.LBB5_5:                                # %sw.bb.6
	movq	-40(%rbp), %rax
	cmpq	$0, 328(%rax)
	je	.LBB5_7
# BB#6:                                 # %if.then.9
	movq	-40(%rbp), %rax
	movq	280(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_enum
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_context_set_paint_mode
	jmp	.LBB5_8
.LBB5_7:                                # %if.else.12
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-48(%rbp), %rdi
	movl	%eax, 344(%rdi)
.LBB5_8:                                # %if.end.14
	jmp	.LBB5_18
.LBB5_9:                                # %sw.bb.15
	movq	-40(%rbp), %rax
	cmpq	$0, 328(%rax)
	je	.LBB5_13
# BB#10:                                # %if.then.18
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	cmpl	$0, %eax
	jl	.LBB5_12
# BB#11:                                # %if.then.20
	movq	-40(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_brush_factory_view_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	160(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_int
	cvtsi2sdl	%eax, %xmm0
	movq	-136(%rbp), %rdi        # 8-byte Reload
	callq	gtk_adjustment_set_value
.LBB5_12:                               # %if.end.25
	jmp	.LBB5_14
.LBB5_13:                               # %if.else.26
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-48(%rbp), %rdi
	movl	%eax, 348(%rdi)
.LBB5_14:                               # %if.end.28
	jmp	.LBB5_18
.LBB5_15:                               # %sw.default
	jmp	.LBB5_16
.LBB5_16:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movl	-68(%rbp), %r8d
	movq	-64(%rbp), %rax
	movq	8(%rax), %r9
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -140(%rbp)        # 4-byte Spill
	movq	%r9, -152(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.10, %rsi
	movl	$250, %edx
	movabsq	$.L.str.11, %rcx
	movl	-140(%rbp), %r8d        # 4-byte Reload
	movq	-152(%rbp), %r9         # 8-byte Reload
	movq	-160(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#17:                                # %do.end
	jmp	.LBB5_18
.LBB5_18:                               # %sw.epilog
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_brush_select_set_property, .Lfunc_end5-gimp_brush_select_set_property
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	gimp_brush_select_run_callback,@function
gimp_brush_select_run_callback:         # @gimp_brush_select_run_callback
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
	pushq	%r14
	pushq	%rbx
	subq	$384, %rsp              # imm = 0x180
.Ltmp21:
	.cfi_offset %rbx, -32
.Ltmp22:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	gimp_brush_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rdi
	callq	temp_buf_get_data
	movq	-56(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	temp_buf_get_data_size
	movl	$1, %edx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_array_new
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	264(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	272(%rax), %rsi
	movq	-48(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	304(%rax), %r8
	movq	-32(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%r8, -104(%rbp)         # 8-byte Spill
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movq	-24(%rbp), %rcx
	movq	280(%rcx), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_context_get_opacity
	movsd	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	callq	gimp_int32_get_type
	movq	-24(%rbp), %rcx
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	callq	gimp_brush_select_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	348(%rax), %edx
	movl	%edx, -156(%rbp)        # 4-byte Spill
	callq	gimp_int32_get_type
	movq	-24(%rbp), %rcx
	movq	280(%rcx), %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_context_get_paint_mode
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	gimp_int32_get_type
	movq	-56(%rbp), %rcx
	movq	32(%rcx), %rcx
	movl	4(%rcx), %edx
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movl	%edx, -188(%rbp)        # 4-byte Spill
	callq	gimp_int32_get_type
	movq	-56(%rbp), %rcx
	movq	32(%rcx), %rcx
	movl	8(%rcx), %edx
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movl	%edx, -204(%rbp)        # 4-byte Spill
	callq	gimp_int32_get_type
	movq	-64(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	callq	gimp_int8_array_get_type
	movq	-64(%rbp), %rcx
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	callq	gimp_int32_get_type
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movl	$64, %r9d
                                        # kill: R9<def> R9D<kill>
	movl	$60, %r10d
	movl	%r10d, %ecx
	movl	$4, %r10d
	movl	%r10d, %esi
	movl	-36(%rbp), %r10d
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-112(%rbp), %r8         # 8-byte Reload
	movq	%rsi, -248(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movq	-120(%rbp), %r11        # 8-byte Reload
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	movq	%r11, %rcx
	movq	-104(%rbp), %r8         # 8-byte Reload
	movq	-128(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	$60, 8(%rsp)
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-144(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 16(%rsp)
	movl	-156(%rbp), %r14d       # 4-byte Reload
	movl	%r14d, 24(%rsp)
	movq	-168(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 32(%rsp)
	movl	-172(%rbp), %r14d       # 4-byte Reload
	movl	%r14d, 40(%rsp)
	movq	-184(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 48(%rsp)
	movl	-188(%rbp), %r14d       # 4-byte Reload
	movl	%r14d, 56(%rsp)
	movq	-200(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 64(%rsp)
	movl	-204(%rbp), %r14d       # 4-byte Reload
	movl	%r14d, 72(%rsp)
	movq	-216(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 80(%rsp)
	movq	-224(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 88(%rsp)
	movq	-232(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 96(%rsp)
	movq	-240(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 104(%rsp)
	movq	%rax, 112(%rsp)
	movl	%r10d, 120(%rsp)
	movq	$4, 128(%rsp)
	movb	$1, %al
	callq	gimp_pdb_execute_procedure_by_name
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_array_free
	movq	-72(%rbp), %rax
	addq	$384, %rsp              # imm = 0x180
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_brush_select_run_callback, .Lfunc_end6-gimp_brush_select_run_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	gimp_brush_select_opacity_changed,@function
gimp_brush_select_opacity_changed:      # @gimp_brush_select_opacity_changed
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
	subq	$80, %rsp
	movl	$24, %eax
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_brush_select_opacity_update, %r9
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	352(%rsi), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movl	%eax, %esi
	movl	%ecx, %edx
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_block_matched
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	movq	352(%rdi), %rdi
	mulsd	-16(%rbp), %xmm0
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	gtk_adjustment_set_value
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_brush_select_opacity_update, %rdi
	movq	-24(%rbp), %r9
	movq	352(%r9), %r9
	movq	-24(%rbp), %r10
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-48(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movq	-24(%rbp), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_pdb_dialog_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_pdb_dialog_run_callback
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_brush_select_opacity_changed, .Lfunc_end7-gimp_brush_select_opacity_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_select_mode_changed,@function
gimp_brush_select_mode_changed:         # @gimp_brush_select_mode_changed
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
	movl	$24, %eax
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movabsq	$gimp_brush_select_mode_update, %r9
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	360(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movl	%eax, %esi
	movl	%ecx, %edx
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-24(%rbp), %rdi
	movq	360(%rdi), %rdi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_brush_select_mode_update, %rdi
	movq	-24(%rbp), %r9
	movq	360(%r9), %r9
	movq	-24(%rbp), %r10
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_unblock_matched
	movq	-24(%rbp), %rdi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_pdb_dialog_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_pdb_dialog_run_callback
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_brush_select_mode_changed, .Lfunc_end8-gimp_brush_select_mode_changed
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	gimp_brush_select_opacity_update,@function
gimp_brush_select_opacity_update:       # @gimp_brush_select_opacity_update
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gimp_pdb_dialog_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	280(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	-32(%rbp), %rdi         # 8-byte Reload
	callq	gimp_context_set_opacity
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_brush_select_opacity_update, .Lfunc_end9-gimp_brush_select_opacity_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_select_mode_update,@function
gimp_brush_select_mode_update:          # @gimp_brush_select_mode_update
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-20(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_get_active
	cmpl	$0, %eax
	je	.LBB10_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_pdb_dialog_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	280(%rax), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_context_set_paint_mode
.LBB10_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_brush_select_mode_update, .Lfunc_end10-gimp_brush_select_mode_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_select_spacing_update,@function
gimp_brush_select_spacing_update:       # @gimp_brush_select_spacing_update
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_adjustment_get_value
	movsd	%xmm0, -24(%rbp)
	movq	-16(%rbp), %rsi
	cvtsi2sdl	348(%rsi), %xmm0
	ucomisd	-24(%rbp), %xmm0
	jne	.LBB11_1
	jp	.LBB11_1
	jmp	.LBB11_2
.LBB11_1:                               # %if.then
	cvttsd2si	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 348(%rcx)
	movq	-16(%rbp), %rcx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	callq	gimp_pdb_dialog_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_pdb_dialog_run_callback
.LBB11_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_brush_select_spacing_update, .Lfunc_end11-gimp_brush_select_spacing_update
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB12_2
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
.LBB12_2:                               # %entry
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
	movl	$.L.str.12, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end12:
	.size	g_warning, .Lfunc_end12-g_warning
	.cfi_endproc

	.type	gimp_brush_select_get_type.g_define_type_id__volatile,@object # @gimp_brush_select_get_type.g_define_type_id__volatile
	.local	gimp_brush_select_get_type.g_define_type_id__volatile
	.comm	gimp_brush_select_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpBrushSelect"
	.size	.L.str, 16

	.type	gimp_brush_select_parent_class,@object # @gimp_brush_select_parent_class
	.local	gimp_brush_select_parent_class
	.comm	gimp_brush_select_parent_class,8,8
	.type	GimpBrushSelect_private_offset,@object # @GimpBrushSelect_private_offset
	.local	GimpBrushSelect_private_offset
	.comm	GimpBrushSelect_private_offset,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"opacity"
	.size	.L.str.1, 8

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"paint-mode"
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"spacing"
	.size	.L.str.3, 8

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"opacity-changed"
	.size	.L.str.4, 16

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"paint-mode-changed"
	.size	.L.str.5, 19

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Opacity"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"value-changed"
	.size	.L.str.7, 14

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Mode:"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.9, 54

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimpbrushselect.c"
	.size	.L.str.10, 18

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"property"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Gimp-Widgets"
	.size	.L.str.12, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
