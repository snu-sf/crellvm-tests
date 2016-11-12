	.text
	.file	"gimpbucketfilloptions.bc"
	.globl	gimp_bucket_fill_options_get_type
	.align	16, 0x90
	.type	gimp_bucket_fill_options_get_type,@function
gimp_bucket_fill_options_get_type:      # @gimp_bucket_fill_options_get_type
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
	movq	gimp_bucket_fill_options_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_bucket_fill_options_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_paint_options_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$432, %edx              # imm = 0x1B0
	movabsq	$gimp_bucket_fill_options_class_intern_init, %rdi
	movl	$504, %r8d              # imm = 0x1F8
	movabsq	$gimp_bucket_fill_options_init, %rcx
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
	movabsq	$gimp_bucket_fill_options_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_bucket_fill_options_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_bucket_fill_options_get_type, .Lfunc_end0-gimp_bucket_fill_options_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_bucket_fill_options_class_intern_init,@function
gimp_bucket_fill_options_class_intern_init: # @gimp_bucket_fill_options_class_intern_init
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
	movq	%rax, gimp_bucket_fill_options_parent_class
	cmpl	$0, GimpBucketFillOptions_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpBucketFillOptions_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_bucket_fill_options_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_bucket_fill_options_class_intern_init, .Lfunc_end1-gimp_bucket_fill_options_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_bucket_fill_options_init,@function
gimp_bucket_fill_options_init:          # @gimp_bucket_fill_options_init
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
	.size	gimp_bucket_fill_options_init, .Lfunc_end2-gimp_bucket_fill_options_init
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI3_0:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_1:
	.quad	4607182418800017408     # double 1
.LCPI3_2:
	.quad	4625196817309499392     # double 16
	.text
	.globl	gimp_bucket_fill_options_gui
	.align	16, 0x90
	.type	gimp_bucket_fill_options_gui,@function
gimp_bucket_fill_options_gui:           # @gimp_bucket_fill_options_gui
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
	subq	$384, %rsp              # imm = 0x180
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_paint_options_gui
	movq	%rax, -24(%rbp)
	callq	gimp_get_toggle_behavior_mask
	movabsq	$.L.str.1, %rdi
	movl	%eax, -92(%rbp)
	callq	gettext
	movl	-92(%rbp), %edi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_get_mod_string
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.2, %rsi
	xorl	%ecx, %ecx
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rdi
	movq	-88(%rbp), %rdx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	movl	-108(%rbp), %r8d        # 4-byte Reload
	callq	gimp_prop_enum_radio_frame_new
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rdi
	callq	g_free
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	movl	-124(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_context_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$2, %ecx
	movabsq	$.L.str.3, %r8
	movabsq	$.L.str.4, %r9
	movq	%rsi, %rdi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-144(%rbp), %rdx        # 8-byte Reload
	callq	gimp_prop_pattern_box_new
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movl	$1, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_enum_radio_frame_add
	movabsq	$.L.str.5, %rdi
	callq	gettext
	movl	$1, %edi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_get_mod_string
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movabsq	$.L.str.7, %rdi
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.8, %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.6, %rsi
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	-168(%rbp), %rdx        # 8-byte Reload
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	%rax, %r8
	callq	gimp_prop_boolean_radio_frame_new
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rdi
	callq	g_free
	movq	-48(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %r10d
	movl	%r10d, %esi
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	$1, %edx
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_box_reorder_child
	movq	-24(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -220(%rbp)        # 4-byte Spill
	movl	-220(%rbp), %ecx        # 4-byte Reload
	movl	-220(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.10, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	movl	-236(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.6, %rsi
	movabsq	$.L.str.11, %rcx
	movl	$6, %r8d
	movq	-16(%rbp), %rax
	movq	-48(%rbp), %rdi
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-248(%rbp), %rdx        # 8-byte Reload
	callq	g_object_bind_property
	movl	$1, %edi
	xorl	%esi, %esi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.13, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.12, %rsi
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_prop_check_button_new
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.15, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.14, %rsi
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_prop_check_button_new
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -300(%rbp)        # 4-byte Spill
	movl	-300(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.17, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.16, %rsi
	movsd	.LCPI3_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_2, %xmm1         # xmm1 = mem[0],zero
	movl	$1, %ecx
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_prop_spin_scale_new
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
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
	movl	$2, %edi
	movl	$3, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-32(%rbp), %rax
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
	movabsq	$.L.str.18, %rsi
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	callq	gimp_prop_enum_combo_box_new
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.19, %rdi
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movss	.LCPI3_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$2, %r9d
	movq	-80(%rbp), %r8
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%ecx, %edx
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movq	-24(%rbp), %rcx
	movq	%rax, -376(%rbp)        # 8-byte Spill
	movq	%rcx, %rax
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_bucket_fill_options_gui, .Lfunc_end3-gimp_bucket_fill_options_gui
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4643176031446892544     # double 255
.LCPI4_1:
	.quad	4624633867356078080     # double 15
	.text
	.align	16, 0x90
	.type	gimp_bucket_fill_options_class_init,@function
gimp_bucket_fill_options_class_init:    # @gimp_bucket_fill_options_class_init
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
	movabsq	$gimp_bucket_fill_options_reset, %rsi
	movabsq	$gimp_bucket_fill_options_get_property, %rdi
	movabsq	$gimp_bucket_fill_options_set_property, %rcx
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rcx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 32(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 424(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_bucket_fill_mode_get_type
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
	movabsq	$.L.str.6, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.20, %rdx
	xorl	%ecx, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$2, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.12, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.21, %rdx
	movl	$1, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$3, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.14, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.22, %rdx
	xorl	%ecx, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$4, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.16, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.23, %rdx
	xorps	%xmm0, %xmm0
	movsd	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI4_1, %xmm2         # xmm2 = mem[0],zero
	movl	$487, %ecx              # imm = 0x1E7
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_param_spec_double
	movl	$5, %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_select_criterion_get_type
	movabsq	$.L.str.18, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.24, %rdx
	xorl	%r8d, %r8d
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$6, %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_bucket_fill_options_class_init, .Lfunc_end4-gimp_bucket_fill_options_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_bucket_fill_options_set_property,@function
gimp_bucket_fill_options_set_property:  # @gimp_bucket_fill_options_set_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_bucket_fill_options_get_type
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
	ja	.LBB5_7
# BB#11:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI5_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB5_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 472(%rdi)
	jmp	.LBB5_10
.LBB5_2:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 476(%rdi)
	jmp	.LBB5_10
.LBB5_3:                                # %sw.bb.5
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 480(%rdi)
	jmp	.LBB5_10
.LBB5_4:                                # %sw.bb.7
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 484(%rdi)
	jmp	.LBB5_10
.LBB5_5:                                # %sw.bb.9
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 488(%rdi)
	jmp	.LBB5_10
.LBB5_6:                                # %sw.bb.11
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 496(%rdi)
	jmp	.LBB5_10
.LBB5_7:                                # %sw.default
	jmp	.LBB5_8
.LBB5_8:                                # %do.body
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
	movabsq	$.L.str.25, %rdi
	movabsq	$.L.str.26, %rsi
	movl	$156, %edx
	movabsq	$.L.str.27, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#9:                                 # %do.end
	jmp	.LBB5_10
.LBB5_10:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_bucket_fill_options_set_property, .Lfunc_end5-gimp_bucket_fill_options_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_1
	.quad	.LBB5_2
	.quad	.LBB5_3
	.quad	.LBB5_4
	.quad	.LBB5_5
	.quad	.LBB5_6

	.text
	.align	16, 0x90
	.type	gimp_bucket_fill_options_get_property,@function
gimp_bucket_fill_options_get_property:  # @gimp_bucket_fill_options_get_property
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_bucket_fill_options_get_type
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
	ja	.LBB6_7
# BB#11:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI6_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB6_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	472(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB6_10
.LBB6_2:                                # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	476(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_10
.LBB6_3:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	480(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_10
.LBB6_4:                                # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	484(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB6_10
.LBB6_5:                                # %sw.bb.5
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	488(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB6_10
.LBB6_6:                                # %sw.bb.6
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	496(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB6_10
.LBB6_7:                                # %sw.default
	jmp	.LBB6_8
.LBB6_8:                                # %do.body
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
	movabsq	$.L.str.25, %rdi
	movabsq	$.L.str.26, %rsi
	movl	$191, %edx
	movabsq	$.L.str.27, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#9:                                 # %do.end
	jmp	.LBB6_10
.LBB6_10:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_bucket_fill_options_get_property, .Lfunc_end6-gimp_bucket_fill_options_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI6_0:
	.quad	.LBB6_1
	.quad	.LBB6_2
	.quad	.LBB6_3
	.quad	.LBB6_4
	.quad	.LBB6_5
	.quad	.LBB6_6

	.text
	.align	16, 0x90
	.type	gimp_bucket_fill_options_reset,@function
gimp_bucket_fill_options_reset:         # @gimp_bucket_fill_options_reset
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
	subq	$32, %rsp
	movabsq	$.L.str.16, %rsi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	g_object_class_find_property
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	344(%rax), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	cvtsi2sdl	68(%rax), %xmm0
	movq	-16(%rbp), %rax
	movq	g_param_spec_types, %rcx
	movq	104(%rcx), %rsi
	movq	%rax, %rdi
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 88(%rax)
.LBB7_2:                                # %if.end
	movq	gimp_bucket_fill_options_parent_class, %rax
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
.Lfunc_end7:
	.size	gimp_bucket_fill_options_reset, .Lfunc_end7-gimp_bucket_fill_options_reset
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB8_2
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
.LBB8_2:                                # %entry
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
	movl	$.L.str.28, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end8:
	.size	g_warning, .Lfunc_end8-g_warning
	.cfi_endproc

	.type	gimp_bucket_fill_options_get_type.g_define_type_id__volatile,@object # @gimp_bucket_fill_options_get_type.g_define_type_id__volatile
	.local	gimp_bucket_fill_options_get_type.g_define_type_id__volatile
	.comm	gimp_bucket_fill_options_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpBucketFillOptions"
	.size	.L.str, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Fill Type  (%s)"
	.size	.L.str.1, 16

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"fill-mode"
	.size	.L.str.2, 10

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"pattern-view-type"
	.size	.L.str.3, 18

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"pattern-view-size"
	.size	.L.str.4, 18

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Affected Area  (%s)"
	.size	.L.str.5, 20

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"fill-selection"
	.size	.L.str.6, 15

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Fill whole selection"
	.size	.L.str.7, 21

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Fill similar colors"
	.size	.L.str.8, 20

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"radio-button"
	.size	.L.str.9, 13

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Finding Similar Colors"
	.size	.L.str.10, 23

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"sensitive"
	.size	.L.str.11, 10

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"fill-transparent"
	.size	.L.str.12, 17

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Fill transparent areas"
	.size	.L.str.13, 23

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"sample-merged"
	.size	.L.str.14, 14

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Sample merged"
	.size	.L.str.15, 14

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"threshold"
	.size	.L.str.16, 10

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Threshold"
	.size	.L.str.17, 10

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"fill-criterion"
	.size	.L.str.18, 15

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Fill by:"
	.size	.L.str.19, 9

	.type	gimp_bucket_fill_options_parent_class,@object # @gimp_bucket_fill_options_parent_class
	.local	gimp_bucket_fill_options_parent_class
	.comm	gimp_bucket_fill_options_parent_class,8,8
	.type	GimpBucketFillOptions_private_offset,@object # @GimpBucketFillOptions_private_offset
	.local	GimpBucketFillOptions_private_offset
	.comm	GimpBucketFillOptions_private_offset,4,4
	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Which area will be filled"
	.size	.L.str.20, 26

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Allow completely transparent regions to be filled"
	.size	.L.str.21, 50

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Base filled area on all visible layers"
	.size	.L.str.22, 39

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Maximum color difference"
	.size	.L.str.23, 25

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Criterion used for determining color similarity"
	.size	.L.str.24, 48

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.25, 54

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"gimpbucketfilloptions.c"
	.size	.L.str.26, 24

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"property"
	.size	.L.str.27, 9

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Gimp-Tools"
	.size	.L.str.28, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
