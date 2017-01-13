	.text
	.file	"gimpbrusheditor.bc"
	.globl	gimp_brush_editor_get_type
	.align	16, 0x90
	.type	gimp_brush_editor_get_type,@function
gimp_brush_editor_get_type:             # @gimp_brush_editor_get_type
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
	movq	gimp_brush_editor_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_brush_editor_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_brush_editor_class_intern_init, %rdi
	movl	$272, %r8d              # imm = 0x110
	movabsq	$gimp_brush_editor_init, %rcx
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
	movabsq	$gimp_brush_editor_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_brush_editor_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_brush_editor_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_brush_editor_get_type, .Lfunc_end0-gimp_brush_editor_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_editor_class_intern_init,@function
gimp_brush_editor_class_intern_init:    # @gimp_brush_editor_class_intern_init
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
	movq	%rax, gimp_brush_editor_parent_class
	cmpl	$0, GimpBrushEditor_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpBrushEditor_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_brush_editor_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_brush_editor_class_intern_init, .Lfunc_end1-gimp_brush_editor_class_intern_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
.LCPI2_1:
	.quad	4641240890982006784     # double 200
.LCPI2_2:
	.quad	4662219572839972864     # double 5000
.LCPI2_3:
	.quad	4621819117588971520     # double 10
.LCPI2_4:
	.quad	4640537203540230144     # double 180
.LCPI2_5:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI2_6:
	.quad	4626322717216342016     # double 20
.LCPI2_7:
	.quad	4576918229304087675     # double 0.01
.LCPI2_8:
	.quad	4611686018427387904     # double 2
.LCPI2_9:
	.quad	4652007308841189376     # double 1000
	.text
	.align	16, 0x90
	.type	gimp_brush_editor_init,@function
gimp_brush_editor_init:                 # @gimp_brush_editor_init
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
	subq	$560, %rsp              # imm = 0x230
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movq	%rax, -16(%rbp)
	callq	gtk_frame_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_view_get_type
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_brush_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	$96, %ecx
	xorl	%r9d, %r9d
	movl	$1, %edx
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movl	%edx, -92(%rbp)         # 4-byte Spill
	movq	%rax, %rdx
	movl	%ecx, -96(%rbp)         # 4-byte Spill
	movl	-96(%rbp), %r8d         # 4-byte Reload
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	$1, 16(%rsp)
	callq	gimp_view_new_full_by_types
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movl	$96, %edx
	movq	-16(%rbp), %rdi
	movq	%rax, 184(%rdi)
	movq	-16(%rbp), %rax
	movq	184(%rax), %rdi
	callq	gtk_widget_set_size_request
	movq	-16(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_view_set_expand
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	184(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-16(%rbp), %rax
	movq	184(%rax), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$2, %esi
	movq	-8(%rbp), %rax
	movq	$0, 208(%rax)
	callq	gtk_box_new
	movq	-8(%rbp), %r10
	movq	%rax, 216(%r10)
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rsi
	movq	216(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	movl	-124(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	216(%rax), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$2, %esi
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	movl	-140(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.21, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	movl	-156(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_brush_generated_shape_get_type
	movabsq	$.L.str.22, %rsi
	movl	$1, %edx
	movabsq	$gimp_brush_editor_update_shape, %rdi
	movq	-8(%rbp), %r10
	movq	-8(%rbp), %r11
	addq	$208, %r11
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	%r10, %r8
	movq	%r11, %r9
	callq	gimp_enum_stock_box_new
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -180(%rbp)        # 4-byte Spill
	movl	-180(%rbp), %ecx        # 4-byte Reload
	movl	-180(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	xorps	%xmm0, %xmm0
	movsd	.LCPI2_5, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI2_9, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI2_0, %xmm4         # xmm4 = mem[0],zero
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	movsd	%xmm1, -200(%rbp)       # 8-byte Spill
	movsd	-200(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-192(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	callq	gtk_adjustment_new
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.23, %rdi
	movq	-8(%rbp), %rsi
	movq	%rax, 224(%rsi)
	movq	-8(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edx
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_spin_scale_new
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -228(%rbp)        # 4-byte Spill
	movl	-228(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.24, %rsi
	movabsq	$gimp_brush_editor_update_brush, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	224(%rdi), %rdi
	movq	-8(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movsd	.LCPI2_8, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI2_6, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm5, %xmm5
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	movsd	-240(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -248(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-248(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-248(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_new
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.25, %rdi
	movq	-8(%rbp), %rcx
	movq	%rax, 232(%rcx)
	movq	-8(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_spin_scale_new
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -284(%rbp)        # 4-byte Spill
	movl	-284(%rbp), %ecx        # 4-byte Reload
	movl	-284(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.24, %rsi
	movabsq	$gimp_brush_editor_update_brush, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	232(%rdi), %rdi
	movq	-8(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	xorps	%xmm0, %xmm0
	movsd	.LCPI2_0, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI2_7, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI2_5, %xmm4         # xmm4 = mem[0],zero
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
	movsd	-296(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-296(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_new
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.26, %rdi
	movq	-8(%rbp), %rcx
	movq	%rax, 240(%rcx)
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$2, %edx
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_spin_scale_new
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -332(%rbp)        # 4-byte Spill
	movl	-332(%rbp), %ecx        # 4-byte Reload
	movl	-332(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.24, %rsi
	movabsq	$gimp_brush_editor_update_brush, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	240(%rdi), %rdi
	movq	-8(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	xorps	%xmm0, %xmm0
	movsd	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI2_6, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI2_5, %xmm3         # xmm3 = mem[0],zero
	movsd	%xmm0, -344(%rbp)       # 8-byte Spill
	movsd	%xmm1, -352(%rbp)       # 8-byte Spill
	movsd	-352(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	-344(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_new
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.27, %rdi
	movq	-8(%rbp), %rcx
	movq	%rax, 256(%rcx)
	movq	-8(%rbp), %rax
	movq	256(%rax), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edx
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_spin_scale_new
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -388(%rbp)        # 4-byte Spill
	movl	-388(%rbp), %ecx        # 4-byte Reload
	movl	-388(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.24, %rsi
	movabsq	$gimp_brush_editor_update_brush, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	256(%rdi), %rdi
	movq	-8(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	xorps	%xmm0, %xmm0
	movsd	.LCPI2_4, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI2_5, %xmm3         # xmm3 = mem[0],zero
	movsd	.LCPI2_0, %xmm4         # xmm4 = mem[0],zero
	movsd	%xmm0, -400(%rbp)       # 8-byte Spill
	movsd	-400(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-400(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_new
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.28, %rdi
	movq	-8(%rbp), %rcx
	movq	%rax, 248(%rcx)
	movq	-8(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edx
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_spin_scale_new
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -436(%rbp)        # 4-byte Spill
	movl	-436(%rbp), %ecx        # 4-byte Reload
	movl	-436(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.24, %rsi
	movabsq	$gimp_brush_editor_update_brush, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	248(%rdi), %rdi
	movq	-8(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	xorps	%xmm0, %xmm0
	movsd	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI2_2, %xmm2         # xmm2 = mem[0],zero
	movsd	.LCPI2_3, %xmm4         # xmm4 = mem[0],zero
	movsd	%xmm0, -448(%rbp)       # 8-byte Spill
	movsd	%xmm1, -456(%rbp)       # 8-byte Spill
	movsd	-456(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-448(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_new
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	gtk_adjustment_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.29, %rdi
	movq	-8(%rbp), %rcx
	movq	%rax, 264(%rcx)
	movq	-8(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edx
	movq	-480(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_spin_scale_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gimp_spin_scale_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI2_1, %xmm1         # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_spin_scale_set_scale_limits
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -500(%rbp)        # 4-byte Spill
	movl	-500(%rbp), %ecx        # 4-byte Reload
	movl	-500(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.30, %rdi
	movq	-56(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.24, %rsi
	movabsq	$gimp_brush_editor_update_brush, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	264(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -520(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-520(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -528(%rbp)        # 8-byte Spill
	addq	$560, %rsp              # imm = 0x230
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_brush_editor_init, .Lfunc_end2-gimp_brush_editor_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_editor_docked_iface_init,@function
gimp_brush_editor_docked_iface_init:    # @gimp_brush_editor_docked_iface_init
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
	movabsq	$gimp_brush_editor_set_context, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 72(%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_brush_editor_docked_iface_init, .Lfunc_end3-gimp_brush_editor_docked_iface_init
	.cfi_endproc

	.globl	gimp_brush_editor_new
	.align	16, 0x90
	.type	gimp_brush_editor_new,@function
gimp_brush_editor_new:                  # @gimp_brush_editor_new
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
	movabsq	$.L__func__.gimp_brush_editor_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	callq	gimp_brush_editor_get_type
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	464(%rcx), %rcx
	movq	-56(%rbp), %rsi
	movq	-56(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gimp_context_get_brush
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
	.size	gimp_brush_editor_new, .Lfunc_end4-gimp_brush_editor_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_editor_class_init,@function
gimp_brush_editor_class_init:           # @gimp_brush_editor_class_init
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
	subq	$32, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.11, %rdi
	movabsq	$gimp_brush_editor_set_data, %rsi
	movabsq	$gimp_brush_editor_constructed, %rcx
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rcx, 72(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 824(%rax)
	callq	gettext
	movq	-24(%rbp), %rcx
	movq	%rax, 832(%rcx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_brush_editor_class_init, .Lfunc_end5-gimp_brush_editor_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_editor_constructed,@function
gimp_brush_editor_constructed:          # @gimp_brush_editor_constructed
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
	subq	$16, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	gimp_brush_editor_parent_class, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_brush_editor_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB6_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gimp_docked_interface_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_docked_set_show_button_bar
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_brush_editor_constructed, .Lfunc_end6-gimp_brush_editor_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_editor_set_data,@function
gimp_brush_editor_set_data:             # @gimp_brush_editor_set_data
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
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gimp_brush_editor_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
	movsd	%xmm0, -40(%rbp)
	movl	$2, -44(%rbp)
	movsd	%xmm0, -56(%rbp)
	movsd	%xmm0, -64(%rbp)
	movsd	%xmm0, -72(%rbp)
	movsd	%xmm0, -80(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 160(%rax)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_brush_editor_notify_brush, %rdx
	movq	-8(%rbp), %rdi
	movq	160(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-128(%rbp), %r10        # 8-byte Reload
	movq	%r9, -136(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-136(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB7_2:                                # %if.end
	movq	gimp_brush_editor_parent_class, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	824(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-8(%rbp), %rax
	cmpq	$0, 160(%rax)
	je	.LBB7_4
# BB#3:                                 # %if.then.9
	movabsq	$.L.str.12, %rsi
	movabsq	$gimp_brush_editor_notify_brush, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	160(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-160(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB7_4:                                # %if.end.12
	movq	-8(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_view_set_viewable
	movq	-8(%rbp), %rax
	cmpq	$0, 160(%rax)
	je	.LBB7_15
# BB#5:                                 # %if.then.19
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_brush_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_brush_get_spacing
	cvtsi2sdl	%eax, %xmm0
	movsd	%xmm0, -80(%rbp)
	movq	-8(%rbp), %rsi
	movq	160(%rsi), %rsi
	movq	%rsi, -88(%rbp)
	callq	gimp_brush_generated_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB7_7
# BB#6:                                 # %if.then.27
	movl	$0, -100(%rbp)
	jmp	.LBB7_12
.LBB7_7:                                # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_10
# BB#8:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB7_10
# BB#9:                                 # %if.then.31
	movl	$1, -100(%rbp)
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.32
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB7_11:                               # %if.end.34
	jmp	.LBB7_12
.LBB7_12:                               # %if.end.35
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB7_14
# BB#13:                                # %if.then.37
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_brush_generated_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	callq	gimp_brush_generated_get_shape
	movl	%eax, -28(%rbp)
	movq	-112(%rbp), %rdi
	callq	gimp_brush_generated_get_radius
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	-112(%rbp), %rdi
	callq	gimp_brush_generated_get_spikes
	movl	%eax, -44(%rbp)
	movq	-112(%rbp), %rdi
	callq	gimp_brush_generated_get_hardness
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)
	movq	-112(%rbp), %rdi
	callq	gimp_brush_generated_get_aspect_ratio
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-112(%rbp), %rdi
	callq	gimp_brush_generated_get_angle
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -72(%rbp)
.LBB7_14:                               # %if.end.52
	jmp	.LBB7_15
.LBB7_15:                               # %if.end.53
	movq	-24(%rbp), %rax
	movq	216(%rax), %rdi
	movq	-8(%rbp), %rax
	movl	168(%rax), %esi
	callq	gtk_widget_set_sensitive
	movq	-24(%rbp), %rax
	movq	208(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-28(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_int_radio_group_set_active
	movq	-24(%rbp), %rax
	movq	224(%rax), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gtk_adjustment_set_value
	movq	-24(%rbp), %rax
	movq	232(%rax), %rdi
	cvtsi2sdl	-44(%rbp), %xmm0
	callq	gtk_adjustment_set_value
	movq	-24(%rbp), %rax
	movq	240(%rax), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gtk_adjustment_set_value
	movq	-24(%rbp), %rax
	movq	256(%rax), %rdi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gtk_adjustment_set_value
	movq	-24(%rbp), %rax
	movq	248(%rax), %rdi
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gtk_adjustment_set_value
	movq	-24(%rbp), %rax
	movq	264(%rax), %rdi
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gtk_adjustment_set_value
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_brush_editor_set_data, .Lfunc_end7-gimp_brush_editor_set_data
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_editor_notify_brush,@function
gimp_brush_editor_notify_brush:         # @gimp_brush_editor_notify_brush
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
	subq	$144, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdi
	movl	$.L.str.13, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_brush_editor_update_shape, %rdx
	movq	-24(%rbp), %rdi
	movq	208(%rdi), %rdi
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
	movq	208(%rdi), %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movl	120(%rsi), %esi
	movq	%rax, %rdi
	callq	gimp_int_radio_group_set_active
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_brush_editor_update_shape, %rax
	movq	-24(%rbp), %rdi
	movq	208(%rdi), %rdi
	movq	-24(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -80(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movq	-24(%rbp), %rdi
	movq	224(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-8(%rbp), %rdi
	cvtss2sd	124(%rdi), %xmm0
	movsd	%xmm0, -40(%rbp)
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB8_20
.LBB8_2:                                # %if.else
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.14, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB8_4
# BB#3:                                 # %if.then.10
	movq	-24(%rbp), %rax
	movq	224(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	cvtss2sd	124(%rax), %xmm0
	movsd	%xmm0, -40(%rbp)
	jmp	.LBB8_19
.LBB8_4:                                # %if.else.14
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.15, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB8_6
# BB#5:                                 # %if.then.18
	movq	-24(%rbp), %rax
	movq	232(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	cvtsi2sdl	128(%rax), %xmm0
	movsd	%xmm0, -40(%rbp)
	jmp	.LBB8_18
.LBB8_6:                                # %if.else.20
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.16, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB8_8
# BB#7:                                 # %if.then.24
	movq	-24(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	cvtss2sd	132(%rax), %xmm0
	movsd	%xmm0, -40(%rbp)
	jmp	.LBB8_17
.LBB8_8:                                # %if.else.26
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.17, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB8_10
# BB#9:                                 # %if.then.30
	movq	-24(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	cvtss2sd	140(%rax), %xmm0
	movsd	%xmm0, -40(%rbp)
	jmp	.LBB8_16
.LBB8_10:                               # %if.else.32
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.18, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB8_12
# BB#11:                                # %if.then.36
	movq	-24(%rbp), %rax
	movq	256(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	cvtss2sd	136(%rax), %xmm0
	movsd	%xmm0, -40(%rbp)
	jmp	.LBB8_15
.LBB8_12:                               # %if.else.38
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.19, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB8_14
# BB#13:                                # %if.then.42
	movq	-24(%rbp), %rax
	movq	264(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_brush_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cvtsi2sdl	48(%rax), %xmm0
	movsd	%xmm0, -40(%rbp)
.LBB8_14:                               # %if.end
	jmp	.LBB8_15
.LBB8_15:                               # %if.end.46
	jmp	.LBB8_16
.LBB8_16:                               # %if.end.47
	jmp	.LBB8_17
.LBB8_17:                               # %if.end.48
	jmp	.LBB8_18
.LBB8_18:                               # %if.end.49
	jmp	.LBB8_19
.LBB8_19:                               # %if.end.50
	jmp	.LBB8_20
.LBB8_20:                               # %if.end.51
	cmpq	$0, -32(%rbp)
	je	.LBB8_22
# BB#21:                                # %if.then.53
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_brush_editor_update_brush, %rdx
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %r9
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
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	gtk_adjustment_set_value
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_brush_editor_update_brush, %rdi
	movq	-32(%rbp), %r9
	movq	-24(%rbp), %r10
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-128(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB8_22:                               # %if.end.56
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_brush_editor_notify_brush, .Lfunc_end8-gimp_brush_editor_notify_brush
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_editor_update_shape,@function
gimp_brush_editor_update_shape:         # @gimp_brush_editor_update_shape
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	160(%rax), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_brush_generated_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB9_7
.LBB9_2:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_5
# BB#3:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB9_5
# BB#4:                                 # %if.then.5
	movl	$1, -44(%rbp)
	jmp	.LBB9_6
.LBB9_5:                                # %if.else.6
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB9_6:                                # %if.end
	jmp	.LBB9_7
.LBB9_7:                                # %if.end.8
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	jne	.LBB9_9
# BB#8:                                 # %if.then.10
	jmp	.LBB9_13
.LBB9_9:                                # %if.end.11
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	160(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_brush_generated_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	cmpl	$0, %eax
	je	.LBB9_13
# BB#10:                                # %if.then.21
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.20, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	%eax, %edx
	movl	%edx, -52(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_brush_generated_get_shape
	cmpl	-52(%rbp), %eax
	je	.LBB9_12
# BB#11:                                # %if.then.28
	movq	-24(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	gimp_brush_generated_set_shape
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB9_12:                               # %if.end.30
	jmp	.LBB9_13
.LBB9_13:                               # %if.end.31
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_brush_editor_update_shape, .Lfunc_end9-gimp_brush_editor_update_shape
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_brush_editor_update_brush,@function
gimp_brush_editor_update_brush:         # @gimp_brush_editor_update_brush
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
	subq	$272, %rsp              # imm = 0x110
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	160(%rax), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_brush_generated_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB10_7
.LBB10_2:                               # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_5
# BB#3:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB10_5
# BB#4:                                 # %if.then.5
	movl	$1, -92(%rbp)
	jmp	.LBB10_6
.LBB10_5:                               # %if.else.6
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB10_6:                               # %if.end
	jmp	.LBB10_7
.LBB10_7:                               # %if.end.8
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	jne	.LBB10_9
# BB#8:                                 # %if.then.10
	jmp	.LBB10_16
.LBB10_9:                               # %if.end.11
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	160(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_brush_generated_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	224(%rax), %rdi
	callq	gtk_adjustment_get_value
	movsd	%xmm0, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	232(%rax), %rdi
	callq	gtk_adjustment_get_value
	movsd	.LCPI10_0, %xmm1        # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -36(%rbp)
	movq	-16(%rbp), %rax
	movq	240(%rax), %rdi
	callq	gtk_adjustment_get_value
	movsd	%xmm0, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	256(%rax), %rdi
	callq	gtk_adjustment_get_value
	movsd	%xmm0, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	248(%rax), %rdi
	callq	gtk_adjustment_get_value
	movsd	%xmm0, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	264(%rax), %rdi
	callq	gtk_adjustment_get_value
	movsd	%xmm0, -72(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	callq	gimp_brush_generated_get_radius
	cvtss2sd	%xmm0, %xmm0
	movsd	-128(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB10_15
	jp	.LBB10_15
# BB#10:                                # %lor.lhs.false
	movl	-36(%rbp), %eax
	movq	-24(%rbp), %rdi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	gimp_brush_generated_get_spikes
	movl	-132(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB10_15
# BB#11:                                # %lor.lhs.false.30
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	callq	gimp_brush_generated_get_hardness
	cvtss2sd	%xmm0, %xmm0
	movsd	-144(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB10_15
	jp	.LBB10_15
# BB#12:                                # %lor.lhs.false.35
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	callq	gimp_brush_generated_get_aspect_ratio
	cvtss2sd	%xmm0, %xmm0
	movsd	-152(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB10_15
	jp	.LBB10_15
# BB#13:                                # %lor.lhs.false.40
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rdi
	movsd	%xmm0, -160(%rbp)       # 8-byte Spill
	callq	gimp_brush_generated_get_angle
	cvtss2sd	%xmm0, %xmm0
	movsd	-160(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB10_15
	jp	.LBB10_15
# BB#14:                                # %lor.lhs.false.45
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_brush_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_brush_get_spacing
	cvtsi2sdl	%eax, %xmm0
	movsd	-168(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB10_15
	jp	.LBB10_15
	jmp	.LBB10_16
.LBB10_15:                              # %if.then.52
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_brush_editor_notify_brush, %rdx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %r9
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-184(%rbp), %r10        # 8-byte Reload
	movq	%r9, -192(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-192(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-24(%rbp), %rdi
	movl	%eax, -196(%rbp)        # 4-byte Spill
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_freeze
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_freeze_notify
	movq	-24(%rbp), %rdi
	cvtsd2ss	-32(%rbp), %xmm0
	callq	gimp_brush_generated_set_radius
	movq	-24(%rbp), %rdi
	movl	-36(%rbp), %esi
	movss	%xmm0, -212(%rbp)       # 4-byte Spill
	callq	gimp_brush_generated_set_spikes
	movq	-24(%rbp), %rdi
	cvtsd2ss	-48(%rbp), %xmm0
	movl	%eax, -216(%rbp)        # 4-byte Spill
	callq	gimp_brush_generated_set_hardness
	movq	-24(%rbp), %rdi
	cvtsd2ss	-56(%rbp), %xmm1
	movss	%xmm0, -220(%rbp)       # 4-byte Spill
	movaps	%xmm1, %xmm0
	callq	gimp_brush_generated_set_aspect_ratio
	movq	-24(%rbp), %rdi
	cvtsd2ss	-64(%rbp), %xmm1
	movss	%xmm0, -224(%rbp)       # 4-byte Spill
	movaps	%xmm1, %xmm0
	callq	gimp_brush_generated_set_angle
	movq	-24(%rbp), %rdi
	movss	%xmm0, -228(%rbp)       # 4-byte Spill
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	callq	gimp_brush_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cvttsd2si	-72(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_brush_set_spacing
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_thaw_notify
	movq	-24(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_data_thaw
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_brush_editor_notify_brush, %rax
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -256(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -260(%rbp)        # 4-byte Spill
.LBB10_16:                              # %if.end.73
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_brush_editor_update_brush, .Lfunc_end10-gimp_brush_editor_update_brush
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_editor_set_context,@function
gimp_brush_editor_set_context:          # @gimp_brush_editor_set_context
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
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
	movq	184(%rax), %rax
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
.Lfunc_end11:
	.size	gimp_brush_editor_set_context, .Lfunc_end11-gimp_brush_editor_set_context
	.cfi_endproc

	.type	gimp_brush_editor_get_type.g_define_type_id__volatile,@object # @gimp_brush_editor_get_type.g_define_type_id__volatile
	.local	gimp_brush_editor_get_type.g_define_type_id__volatile
	.comm	gimp_brush_editor_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpBrushEditor"
	.size	.L.str, 16

	.type	gimp_brush_editor_get_type.g_implement_interface_info,@object # @gimp_brush_editor_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_brush_editor_get_type.g_implement_interface_info:
	.quad	gimp_brush_editor_docked_iface_init
	.quad	0
	.quad	0
	.size	gimp_brush_editor_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_brush_editor_new,@object # @__func__.gimp_brush_editor_new
.L__func__.gimp_brush_editor_new:
	.asciz	"gimp_brush_editor_new"
	.size	.L__func__.gimp_brush_editor_new, 22

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
	.asciz	"<BrushEditor>"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"ui-path"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"/brush-editor-popup"
	.size	.L.str.7, 20

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

	.type	gimp_brush_editor_parent_class,@object # @gimp_brush_editor_parent_class
	.local	gimp_brush_editor_parent_class
	.comm	gimp_brush_editor_parent_class,8,8
	.type	GimpBrushEditor_private_offset,@object # @GimpBrushEditor_private_offset
	.local	GimpBrushEditor_private_offset
	.comm	GimpBrushEditor_private_offset,4,4
	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Brush Editor"
	.size	.L.str.11, 13

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"notify"
	.size	.L.str.12, 7

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"shape"
	.size	.L.str.13, 6

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"radius"
	.size	.L.str.14, 7

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"spikes"
	.size	.L.str.15, 7

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"hardness"
	.size	.L.str.16, 9

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"angle"
	.size	.L.str.17, 6

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"aspect-ratio"
	.size	.L.str.18, 13

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"spacing"
	.size	.L.str.19, 8

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gimp-item-data"
	.size	.L.str.20, 15

	.type	parent_docked_iface,@object # @parent_docked_iface
	.local	parent_docked_iface
	.comm	parent_docked_iface,8,8
	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Shape:"
	.size	.L.str.21, 7

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gimp-shape"
	.size	.L.str.22, 11

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Radius"
	.size	.L.str.23, 7

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"value-changed"
	.size	.L.str.24, 14

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Spikes"
	.size	.L.str.25, 7

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Hardness"
	.size	.L.str.26, 9

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Aspect ratio"
	.size	.L.str.27, 13

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Angle"
	.size	.L.str.28, 6

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Spacing"
	.size	.L.str.29, 8

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Percentage of width of brush"
	.size	.L.str.30, 29


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
