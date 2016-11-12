	.text
	.file	"gimptransformoptions.bc"
	.globl	gimp_transform_options_get_type
	.align	16, 0x90
	.type	gimp_transform_options_get_type,@function
gimp_transform_options_get_type:        # @gimp_transform_options_get_type
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
	movq	gimp_transform_options_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_transform_options_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_tool_options_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$432, %edx              # imm = 0x1B0
	movabsq	$gimp_transform_options_class_intern_init, %rdi
	movl	$400, %r8d              # imm = 0x190
	movabsq	$gimp_transform_options_init, %rcx
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
	movabsq	$gimp_transform_options_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_transform_options_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_transform_options_get_type, .Lfunc_end0-gimp_transform_options_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_transform_options_class_intern_init,@function
gimp_transform_options_class_intern_init: # @gimp_transform_options_class_intern_init
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
	movq	%rax, gimp_transform_options_parent_class
	cmpl	$0, GimpTransformOptions_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpTransformOptions_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_transform_options_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_transform_options_class_intern_init, .Lfunc_end1-gimp_transform_options_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_transform_options_init,@function
gimp_transform_options_init:            # @gimp_transform_options_init
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
	movq	-8(%rbp), %rdi
	movl	$3, 364(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_transform_options_init, .Lfunc_end2-gimp_transform_options_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4610785298501913805     # double 1.8
.LCPI3_1:
	.quad	4620693217682128896     # double 8
	.text
	.globl	gimp_transform_options_gui
	.align	16, 0x90
	.type	gimp_transform_options_gui,@function
gimp_transform_options_gui:             # @gimp_transform_options_gui
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
	subq	$416, %rsp              # imm = 0x1A0
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_tool_options_gui
	xorl	%edi, %edi
	movl	$2, %esi
	movq	%rax, -24(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -96(%rbp)
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	movl	-132(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.1, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	movl	-148(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.2, %rsi
	movabsq	$.L.str.3, %rdx
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movl	%ecx, -152(%rbp)        # 4-byte Spill
	movl	-152(%rbp), %r8d        # 4-byte Reload
	callq	gimp_prop_enum_stock_box_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	movl	-164(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.5, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.4, %rsi
	xorl	%ecx, %ecx
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	movl	-180(%rbp), %r8d        # 4-byte Reload
	callq	gimp_prop_enum_radio_frame_new
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -196(%rbp)        # 4-byte Spill
	movl	-196(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.6, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -212(%rbp)        # 4-byte Spill
	movl	-212(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.7, %rsi
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	callq	gimp_prop_enum_combo_box_new
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.8, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	movl	-236(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.9, %rsi
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	callq	gimp_prop_enum_combo_box_new
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.11, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.10, %rsi
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_prop_opacity_spin_scale_new
	movabsq	$.L.str.13, %rdi
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.12, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movq	-72(%rbp), %rcx
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_prop_expanding_frame_new
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.14, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -284(%rbp)        # 4-byte Spill
	movl	-284(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$2, %esi
	callq	gtk_box_new
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.15, %rsi
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	callq	gimp_prop_enum_combo_box_new
	movq	%rax, -64(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -308(%rbp)        # 4-byte Spill
	movl	-308(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.16, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_1, %xmm1         # xmm1 = mem[0],zero
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	callq	gimp_prop_spin_scale_new
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -324(%rbp)        # 4-byte Spill
	movl	-324(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.15, %rsi
	movabsq	$.L.str.17, %rcx
	movl	$2, %r8d
	movabsq	$gimp_transform_options_sync_grid, %r9
	xorl	%edx, %edx
	movl	%edx, %eax
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %r10
	movq	%r10, %rdx
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	g_object_bind_property_full
	movq	-8(%rbp), %rcx
	movq	344(%rcx), %rcx
	movq	40(%rcx), %rcx
	movq	%rax, -344(%rbp)        # 8-byte Spill
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	callq	gimp_rotate_tool_get_type
	movq	-352(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.18, %rdi
	callq	gettext
	movabsq	$.L.str.19, %rdi
	movq	%rax, -88(%rbp)
	callq	gettext
	movq	%rax, -96(%rbp)
	jmp	.LBB3_5
.LBB3_2:                                # %if.else
	movq	-8(%rbp), %rax
	movq	344(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gimp_scale_tool_get_type
	movq	-360(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB3_4
# BB#3:                                 # %if.then.57
	movabsq	$.L.str.20, %rdi
	callq	gettext
	movabsq	$.L.str.21, %rdi
	movq	%rax, -88(%rbp)
	callq	gettext
	movq	%rax, -96(%rbp)
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %if.end.60
	cmpq	$0, -88(%rbp)
	je	.LBB3_7
# BB#6:                                 # %if.then.61
	callq	gimp_get_constrain_behavior_mask
	movl	%eax, -116(%rbp)
	movq	-88(%rbp), %rdi
	movl	-116(%rbp), %eax
	movq	%rdi, -368(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	callq	gimp_get_mod_string
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.22, %rsi
	movq	%rax, -112(%rbp)
	movq	-16(%rbp), %rdi
	movq	-112(%rbp), %rdx
	callq	gimp_prop_check_button_new
	movq	%rax, -104(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -380(%rbp)        # 4-byte Spill
	movl	-380(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-104(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	gimp_help_set_help_data
	movq	-112(%rbp), %rdi
	callq	g_free
.LBB3_7:                                # %if.end.69
	movq	-24(%rbp), %rax
	addq	$416, %rsp              # imm = 0x1A0
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_transform_options_gui, .Lfunc_end3-gimp_transform_options_gui
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_transform_options_sync_grid,@function
gimp_transform_options_sync_grid:       # @gimp_transform_options_sync_grid
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_value_get_enum
	movb	$1, %r8b
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rdi
	cmpl	$6, -36(%rbp)
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movb	%r8b, -49(%rbp)         # 1-byte Spill
	je	.LBB4_2
# BB#1:                                 # %lor.rhs
	cmpl	$7, -36(%rbp)
	sete	%al
	movb	%al, -49(%rbp)          # 1-byte Spill
.LBB4_2:                                # %lor.end
	movb	-49(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	g_value_set_boolean
	movl	$1, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_transform_options_sync_grid, .Lfunc_end4-gimp_transform_options_sync_grid
	.cfi_endproc

	.globl	gimp_transform_options_show_preview
	.align	16, 0x90
	.type	gimp_transform_options_show_preview,@function
gimp_transform_options_show_preview:    # @gimp_transform_options_show_preview
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
	callq	gimp_transform_options_get_type
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
	callq	g_type_check_instance_is_a
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
	movabsq	$.L.str.23, %rdi
	movabsq	$.L__func__.gimp_transform_options_show_preview, %rsi
	movabsq	$.L.str.24, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB5_16
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	cmpl	$0, 372(%rdx)
	movb	%cl, -41(%rbp)          # 1-byte Spill
	je	.LBB5_15
# BB#13:                                # %land.lhs.true.12
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	cmpl	$0, 352(%rdx)
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jne	.LBB5_15
# BB#14:                                # %land.rhs
	movq	-16(%rbp), %rax
	cmpl	$0, 356(%rax)
	sete	%cl
	movb	%cl, -41(%rbp)          # 1-byte Spill
.LBB5_15:                               # %land.end
	movb	-41(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
.LBB5_16:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_transform_options_show_preview, .Lfunc_end5-gimp_transform_options_show_preview
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_transform_options_class_init,@function
gimp_transform_options_class_init:      # @gimp_transform_options_class_init
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_tool_options_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_transform_options_reset, %rsi
	movabsq	$gimp_transform_options_get_property, %rdi
	movabsq	$gimp_transform_options_set_property, %rcx
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rcx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 32(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 424(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_transform_type_get_type
	movabsq	$.L.str.2, %rdi
	xorl	%edx, %edx
	movl	%edx, %ecx
	xorl	%r8d, %r8d
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$1, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_transform_direction_get_type
	movabsq	$.L.str.4, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.25, %rdx
	xorl	%r8d, %r8d
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$2, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_interpolation_type_get_type
	movabsq	$.L.str.7, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.26, %rdx
	movl	$1, %r8d
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$3, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_transform_resize_get_type
	movabsq	$.L.str.9, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.27, %rdx
	xorl	%r8d, %r8d
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$4, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.12, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.28, %rdx
	movl	$1, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$5, %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.10, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.29, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero
	movl	$487, %ecx              # imm = 0x1E7
	movq	-16(%rbp), %rax
	movsd	%xmm1, -80(%rbp)        # 8-byte Spill
	movsd	-80(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_param_spec_double
	movl	$6, %esi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_guides_type_get_type
	movabsq	$.L.str.15, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.30, %rdx
	movl	$6, %r8d
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$7, %esi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.16, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.31, %rdx
	movl	$1, %ecx
	movl	$128, %r8d
	movl	$15, %r9d
	movl	$487, %r10d             # imm = 0x1E7
	movq	-16(%rbp), %rax
	movl	$487, (%rsp)            # imm = 0x1E7
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movl	%r10d, -108(%rbp)       # 4-byte Spill
	callq	g_param_spec_int
	movl	$8, %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.22, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$9, %esi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_transform_options_class_init, .Lfunc_end6-gimp_transform_options_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_transform_options_set_property,@function
gimp_transform_options_set_property:    # @gimp_transform_options_set_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_transform_options_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$8, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB7_10
# BB#14:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI7_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB7_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 352(%rdi)
	jmp	.LBB7_13
.LBB7_2:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 356(%rdi)
	jmp	.LBB7_13
.LBB7_3:                                # %sw.bb.5
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 360(%rdi)
	jmp	.LBB7_13
.LBB7_4:                                # %sw.bb.7
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 368(%rdi)
	jmp	.LBB7_13
.LBB7_5:                                # %sw.bb.9
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 372(%rdi)
	jmp	.LBB7_13
.LBB7_6:                                # %sw.bb.11
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 376(%rdi)
	jmp	.LBB7_13
.LBB7_7:                                # %sw.bb.13
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 384(%rdi)
	jmp	.LBB7_13
.LBB7_8:                                # %sw.bb.15
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 388(%rdi)
	jmp	.LBB7_13
.LBB7_9:                                # %sw.bb.17
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 392(%rdi)
	jmp	.LBB7_13
.LBB7_10:                               # %sw.default
	jmp	.LBB7_11
.LBB7_11:                               # %do.body
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
	movabsq	$.L.str.32, %rdi
	movabsq	$.L.str.33, %rsi
	movl	$187, %edx
	movabsq	$.L.str.34, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#12:                                # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_transform_options_set_property, .Lfunc_end7-gimp_transform_options_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI7_0:
	.quad	.LBB7_1
	.quad	.LBB7_2
	.quad	.LBB7_3
	.quad	.LBB7_4
	.quad	.LBB7_5
	.quad	.LBB7_6
	.quad	.LBB7_7
	.quad	.LBB7_8
	.quad	.LBB7_9

	.text
	.align	16, 0x90
	.type	gimp_transform_options_get_property,@function
gimp_transform_options_get_property:    # @gimp_transform_options_get_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_transform_options_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$8, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB8_10
# BB#14:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI8_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB8_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	352(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB8_13
.LBB8_2:                                # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	356(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB8_13
.LBB8_3:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	360(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB8_13
.LBB8_4:                                # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	368(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB8_13
.LBB8_5:                                # %sw.bb.5
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	372(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB8_13
.LBB8_6:                                # %sw.bb.6
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	376(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB8_13
.LBB8_7:                                # %sw.bb.7
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	384(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB8_13
.LBB8_8:                                # %sw.bb.8
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	388(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB8_13
.LBB8_9:                                # %sw.bb.9
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	392(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB8_13
.LBB8_10:                               # %sw.default
	jmp	.LBB8_11
.LBB8_11:                               # %do.body
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
	movabsq	$.L.str.32, %rdi
	movabsq	$.L.str.33, %rsi
	movl	$230, %edx
	movabsq	$.L.str.34, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#12:                                # %do.end
	jmp	.LBB8_13
.LBB8_13:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_transform_options_get_property, .Lfunc_end8-gimp_transform_options_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI8_0:
	.quad	.LBB8_1
	.quad	.LBB8_2
	.quad	.LBB8_3
	.quad	.LBB8_4
	.quad	.LBB8_5
	.quad	.LBB8_6
	.quad	.LBB8_7
	.quad	.LBB8_8
	.quad	.LBB8_9

	.text
	.align	16, 0x90
	.type	gimp_transform_options_reset,@function
gimp_transform_options_reset:           # @gimp_transform_options_reset
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
	subq	$32, %rsp
	movabsq	$.L.str.7, %rsi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	g_object_class_find_property
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	344(%rax), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movl	64(%rax), %ecx
	movq	-16(%rbp), %rax
	movq	g_param_spec_types, %rdx
	movq	80(%rdx), %rsi
	movq	%rax, %rdi
	movl	%ecx, -20(%rbp)         # 4-byte Spill
	callq	g_type_check_instance_cast
	movl	-20(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, 80(%rax)
.LBB9_2:                                # %if.end
	movq	gimp_transform_options_parent_class, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_tool_options_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	424(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_transform_options_reset, .Lfunc_end9-gimp_transform_options_reset
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB10_2
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
.LBB10_2:                               # %entry
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
	movl	$.L.str.23, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end10:
	.size	g_warning, .Lfunc_end10-g_warning
	.cfi_endproc

	.type	gimp_transform_options_get_type.g_define_type_id__volatile,@object # @gimp_transform_options_get_type.g_define_type_id__volatile
	.local	gimp_transform_options_get_type.g_define_type_id__volatile
	.comm	gimp_transform_options_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpTransformOptions"
	.size	.L.str, 21

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Transform:"
	.size	.L.str.1, 11

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"type"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"direction"
	.size	.L.str.4, 10

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Direction"
	.size	.L.str.5, 10

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Interpolation:"
	.size	.L.str.6, 15

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"interpolation"
	.size	.L.str.7, 14

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Clipping:"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"clip"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"preview-opacity"
	.size	.L.str.10, 16

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Image opacity"
	.size	.L.str.11, 14

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"show-preview"
	.size	.L.str.12, 13

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Show image preview"
	.size	.L.str.13, 19

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Guides"
	.size	.L.str.14, 7

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"grid-type"
	.size	.L.str.15, 10

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"grid-size"
	.size	.L.str.16, 10

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"visible"
	.size	.L.str.17, 8

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"15 degrees  (%s)"
	.size	.L.str.18, 17

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Limit rotation steps to 15 degrees"
	.size	.L.str.19, 35

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Keep aspect  (%s)"
	.size	.L.str.20, 18

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Keep the original aspect ratio"
	.size	.L.str.21, 31

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"constrain"
	.size	.L.str.22, 10

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Gimp-Tools"
	.size	.L.str.23, 11

	.type	.L__func__.gimp_transform_options_show_preview,@object # @__func__.gimp_transform_options_show_preview
.L__func__.gimp_transform_options_show_preview:
	.asciz	"gimp_transform_options_show_preview"
	.size	.L__func__.gimp_transform_options_show_preview, 36

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"GIMP_IS_TRANSFORM_OPTIONS (options)"
	.size	.L.str.24, 36

	.type	gimp_transform_options_parent_class,@object # @gimp_transform_options_parent_class
	.local	gimp_transform_options_parent_class
	.comm	gimp_transform_options_parent_class,8,8
	.type	GimpTransformOptions_private_offset,@object # @GimpTransformOptions_private_offset
	.local	GimpTransformOptions_private_offset
	.comm	GimpTransformOptions_private_offset,4,4
	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Direction of transformation"
	.size	.L.str.25, 28

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Interpolation method"
	.size	.L.str.26, 21

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"How to clip"
	.size	.L.str.27, 12

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Show a preview of the transformed image"
	.size	.L.str.28, 40

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Opacity of the preview image"
	.size	.L.str.29, 29

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Composition guides such as rule of thirds"
	.size	.L.str.30, 42

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Size of a grid cell for variable number of composition guides"
	.size	.L.str.31, 62

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.32, 54

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"gimptransformoptions.c"
	.size	.L.str.33, 23

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"property"
	.size	.L.str.34, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
