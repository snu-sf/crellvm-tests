	.text
	.file	"gimpblendoptions.bc"
	.globl	gimp_blend_options_get_type
	.align	16, 0x90
	.type	gimp_blend_options_get_type,@function
gimp_blend_options_get_type:            # @gimp_blend_options_get_type
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
	movq	gimp_blend_options_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_blend_options_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_blend_options_class_intern_init, %rdi
	movl	$512, %r8d              # imm = 0x200
	movabsq	$gimp_blend_options_init, %rcx
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
	movabsq	$gimp_blend_options_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_blend_options_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_blend_options_get_type, .Lfunc_end0-gimp_blend_options_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_blend_options_class_intern_init,@function
gimp_blend_options_class_intern_init:   # @gimp_blend_options_class_intern_init
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
	movq	%rax, gimp_blend_options_parent_class
	cmpl	$0, GimpBlendOptions_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpBlendOptions_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_blend_options_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_blend_options_class_intern_init, .Lfunc_end1-gimp_blend_options_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_blend_options_init,@function
gimp_blend_options_init:                # @gimp_blend_options_init
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
	.size	gimp_blend_options_init, .Lfunc_end2-gimp_blend_options_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4576918229304087675     # double 0.01
.LCPI3_1:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI3_2:
	.quad	4607182418800017408     # double 1
.LCPI3_3:
	.quad	4621819117588971520     # double 10
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI3_4:
	.long	1056964608              # float 0.5
	.text
	.globl	gimp_blend_options_gui
	.align	16, 0x90
	.type	gimp_blend_options_gui,@function
gimp_blend_options_gui:                 # @gimp_blend_options_gui
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
	subq	$368, %rsp              # imm = 0x170
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_paint_options_gui
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.1, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	$2, %ecx
	movabsq	$.L.str.2, %r8
	movabsq	$.L.str.3, %r9
	movabsq	$.L.str.4, %rsi
	movabsq	$.L.str.5, %rdx
	movq	-88(%rbp), %r10         # 8-byte Reload
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%r10, %rsi
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-104(%rbp), %r11        # 8-byte Reload
	movq	%r11, 8(%rsp)
	callq	gimp_prop_gradient_box_new
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	movl	-116(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movl	$3, %edi
	movl	$2, %esi
	xorl	%edx, %edx
	callq	gtk_table_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_row_spacings
	movq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	movl	-148(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.6, %rsi
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	callq	gimp_prop_enum_combo_box_new
	movabsq	$.L.str.7, %rsi
	movl	$3, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	movq	-64(%rbp), %rcx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	callq	gimp_enum_combo_box_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rsi
	movq	%rax, %rdi
	callq	gimp_enum_combo_box_set_stock_prefix
	movq	-32(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI3_4, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$2, %r9d
	movq	-64(%rbp), %r8
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movl	%edx, %esi
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.10, %rsi
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movl	%edx, -180(%rbp)        # 4-byte Spill
	movl	-180(%rbp), %ecx        # 4-byte Reload
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_prop_enum_combo_box_new
	movabsq	$.L.str.7, %rsi
	movl	$3, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	movq	-32(%rbp), %rcx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.11, %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movl	$1, %edx
	xorps	%xmm0, %xmm0
	movss	.LCPI3_4, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movl	$2, %r9d
	movq	-64(%rbp), %r8
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	gimp_table_attach_aligned
	movabsq	$.L.str.12, %rsi
	movabsq	$blend_options_gradient_type_notify, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %r10
	movq	%rcx, %rdx
	movq	%r10, %rcx
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.14, %rdi
	movq	-16(%rbp), %rcx
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.13, %rsi
	movsd	.LCPI3_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_3, %xmm1         # xmm1 = mem[0],zero
	movl	$1, %ecx
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_prop_spin_scale_new
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -244(%rbp)        # 4-byte Spill
	movl	-244(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.16, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.15, %rsi
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_prop_check_button_new
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -268(%rbp)        # 4-byte Spill
	movl	-268(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$2, %esi
	callq	gtk_box_new
	movabsq	$.L.str.18, %rdi
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.17, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movq	-40(%rbp), %rcx
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_prop_expanding_frame_new
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.20, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.19, %rsi
	movsd	.LCPI3_2, %xmm0         # xmm0 = mem[0],zero
	xorl	%ecx, %ecx
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movsd	%xmm0, -304(%rbp)       # 8-byte Spill
	movsd	-304(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_prop_spin_scale_new
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -316(%rbp)        # 4-byte Spill
	movl	-316(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.22, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.21, %rsi
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_1, %xmm1         # xmm1 = mem[0],zero
	movl	$2, %ecx
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_prop_spin_scale_new
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -340(%rbp)        # 4-byte Spill
	movl	-340(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	addq	$368, %rsp              # imm = 0x170
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_blend_options_gui, .Lfunc_end3-gimp_blend_options_gui
	.cfi_endproc

	.align	16, 0x90
	.type	blend_options_gradient_type_notify,@function
blend_options_gradient_type_notify:     # @blend_options_gradient_type_notify
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rdx
	cmpl	$6, 480(%rdx)
	setb	%al
	andb	$1, %al
	movzbl	%al, %esi
	callq	gtk_widget_set_sensitive
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	blend_options_gradient_type_notify, .Lfunc_end4-blend_options_gradient_type_notify
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4616189618054758400     # double 4
.LCPI5_1:
	.quad	4596373779694328218     # double 0.20000000000000001
.LCPI5_2:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	gimp_blend_options_class_init,@function
gimp_blend_options_class_init:          # @gimp_blend_options_class_init
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$.L.str.13, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorps	%xmm0, %xmm0
	movsd	.LCPI5_2, %xmm1         # xmm1 = mem[0],zero
	movl	$487, %ecx              # imm = 0x1E7
	movabsq	$gimp_blend_options_get_property, %rdx
	movabsq	$gimp_blend_options_set_property, %r8
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%r8, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	-24(%rbp), %rdx         # 8-byte Reload
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movsd	-32(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_param_spec_double
	movl	$1, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_gradient_type_get_type
	movabsq	$.L.str.6, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r8d, %r8d
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rdx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$2, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_repeat_mode_get_type
	movabsq	$.L.str.10, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	xorl	%r8d, %r8d
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$3, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.17, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	xorl	%ecx, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$4, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.19, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$6, %r8d
	movl	$3, %r9d
	movl	$487, %esi              # imm = 0x1E7
	movq	-16(%rbp), %rdx
	movl	%esi, -68(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movl	$487, (%rsp)            # imm = 0x1E7
	callq	g_param_spec_int
	movl	$5, %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.21, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorps	%xmm0, %xmm0
	movsd	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI5_1, %xmm2         # xmm2 = mem[0],zero
	movl	$487, %ecx              # imm = 0x1E7
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_double
	movl	$6, %esi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.15, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movl	$1, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$7, %esi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_blend_options_class_init, .Lfunc_end5-gimp_blend_options_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_blend_options_set_property,@function
gimp_blend_options_set_property:        # @gimp_blend_options_set_property
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_blend_options_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$6, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB6_8
# BB#12:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI6_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB6_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 472(%rdi)
	jmp	.LBB6_11
.LBB6_2:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 480(%rdi)
	jmp	.LBB6_11
.LBB6_3:                                # %sw.bb.5
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, -88(%rbp)         # 4-byte Spill
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_paint_options_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	424(%rax), %rax
	movl	-88(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, 4(%rax)
	jmp	.LBB6_11
.LBB6_4:                                # %sw.bb.9
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 484(%rdi)
	jmp	.LBB6_11
.LBB6_5:                                # %sw.bb.11
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movl	%eax, 488(%rdi)
	jmp	.LBB6_11
.LBB6_6:                                # %sw.bb.13
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 496(%rdi)
	jmp	.LBB6_11
.LBB6_7:                                # %sw.bb.15
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 504(%rdi)
	jmp	.LBB6_11
.LBB6_8:                                # %sw.default
	jmp	.LBB6_9
.LBB6_9:                                # %do.body
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
	movabsq	$.L.str.23, %rdi
	movabsq	$.L.str.24, %rsi
	movl	$151, %edx
	movabsq	$.L.str.25, %rcx
	movl	-100(%rbp), %r8d        # 4-byte Reload
	movq	-112(%rbp), %r9         # 8-byte Reload
	movq	-120(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#10:                                # %do.end
	jmp	.LBB6_11
.LBB6_11:                               # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_blend_options_set_property, .Lfunc_end6-gimp_blend_options_set_property
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
	.quad	.LBB6_7

	.text
	.align	16, 0x90
	.type	gimp_blend_options_get_property,@function
gimp_blend_options_get_property:        # @gimp_blend_options_get_property
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_blend_options_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$6, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB7_8
# BB#12:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI7_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB7_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	472(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB7_11
.LBB7_2:                                # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	480(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB7_11
.LBB7_3:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_paint_options_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	424(%rax), %rax
	movl	4(%rax), %esi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	callq	g_value_set_enum
	jmp	.LBB7_11
.LBB7_4:                                # %sw.bb.6
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	484(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB7_11
.LBB7_5:                                # %sw.bb.7
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	488(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB7_11
.LBB7_6:                                # %sw.bb.8
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	496(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB7_11
.LBB7_7:                                # %sw.bb.9
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	504(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB7_11
.LBB7_8:                                # %sw.default
	jmp	.LBB7_9
.LBB7_9:                                # %do.body
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
	movl	%r8d, -108(%rbp)        # 4-byte Spill
	movq	%r9, -120(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.23, %rdi
	movabsq	$.L.str.24, %rsi
	movl	$192, %edx
	movabsq	$.L.str.25, %rcx
	movl	-108(%rbp), %r8d        # 4-byte Reload
	movq	-120(%rbp), %r9         # 8-byte Reload
	movq	-128(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#10:                                # %do.end
	jmp	.LBB7_11
.LBB7_11:                               # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_blend_options_get_property, .Lfunc_end7-gimp_blend_options_get_property
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

	.text
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
	movl	$.L.str.26, %r9d
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

	.type	gimp_blend_options_get_type.g_define_type_id__volatile,@object # @gimp_blend_options_get_type.g_define_type_id__volatile
	.local	gimp_blend_options_get_type.g_define_type_id__volatile
	.comm	gimp_blend_options_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpBlendOptions"
	.size	.L.str, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gradient"
	.size	.L.str.1, 9

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gradient-view-type"
	.size	.L.str.2, 19

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gradient-view-size"
	.size	.L.str.3, 19

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gradient-reverse"
	.size	.L.str.4, 17

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-gradient-editor"
	.size	.L.str.5, 21

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gradient-type"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"ellipsize"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-gradient"
	.size	.L.str.8, 14

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Shape:"
	.size	.L.str.9, 7

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gradient-repeat"
	.size	.L.str.10, 16

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Repeat:"
	.size	.L.str.11, 8

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"notify::gradient-type"
	.size	.L.str.12, 22

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"offset"
	.size	.L.str.13, 7

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Offset"
	.size	.L.str.14, 7

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"dither"
	.size	.L.str.15, 7

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Dithering"
	.size	.L.str.16, 10

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"supersample"
	.size	.L.str.17, 12

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Adaptive supersampling"
	.size	.L.str.18, 23

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"supersample-depth"
	.size	.L.str.19, 18

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Max depth"
	.size	.L.str.20, 10

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"supersample-threshold"
	.size	.L.str.21, 22

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Threshold"
	.size	.L.str.22, 10

	.type	gimp_blend_options_parent_class,@object # @gimp_blend_options_parent_class
	.local	gimp_blend_options_parent_class
	.comm	gimp_blend_options_parent_class,8,8
	.type	GimpBlendOptions_private_offset,@object # @GimpBlendOptions_private_offset
	.local	GimpBlendOptions_private_offset
	.comm	GimpBlendOptions_private_offset,4,4
	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.23, 54

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gimpblendoptions.c"
	.size	.L.str.24, 19

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"property"
	.size	.L.str.25, 9

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Gimp-Tools"
	.size	.L.str.26, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
