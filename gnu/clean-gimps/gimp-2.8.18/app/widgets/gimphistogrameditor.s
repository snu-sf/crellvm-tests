	.text
	.file	"gimphistogrameditor.bc"
	.globl	gimp_histogram_editor_get_type
	.align	16, 0x90
	.type	gimp_histogram_editor_get_type,@function
gimp_histogram_editor_get_type:         # @gimp_histogram_editor_get_type
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
	movq	gimp_histogram_editor_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_histogram_editor_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_histogram_editor_class_intern_init, %rdi
	movl	$248, %r8d
	movabsq	$gimp_histogram_editor_init, %rcx
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
	movabsq	$gimp_histogram_editor_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_histogram_editor_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_histogram_editor_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_histogram_editor_get_type, .Lfunc_end0-gimp_histogram_editor_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_histogram_editor_class_intern_init,@function
gimp_histogram_editor_class_intern_init: # @gimp_histogram_editor_class_intern_init
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
	movq	%rax, gimp_histogram_editor_parent_class
	cmpl	$0, GimpHistogramEditor_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpHistogramEditor_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_histogram_editor_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_histogram_editor_class_intern_init, .Lfunc_end1-gimp_histogram_editor_class_intern_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4605681218924226942     # double 0.83333333333329995
.LCPI2_1:
	.quad	4602678819172646912     # double 0.5
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_2:
	.long	1065353216              # float 1
.LCPI2_3:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	gimp_histogram_editor_init,@function
gimp_histogram_editor_init:             # @gimp_histogram_editor_init
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
	pushq	%r14
	pushq	%rbx
	subq	$464, %rsp              # imm = 0x1D0
.Ltmp9:
	.cfi_offset %rbx, -32
.Ltmp10:
	.cfi_offset %r14, -24
	movabsq	$.L.str.15, %rax
	movabsq	$.L.str.14, %rcx
	movabsq	$.L.str.13, %rdx
	movabsq	$.L.str.12, %rsi
	movabsq	$.L.str.11, %r8
	movabsq	$.L.str.10, %r9
	xorl	%r10d, %r10d
	movl	$48, %r11d
	movl	%r11d, %ebx
	leaq	-128(%rbp), %r14
	movq	%rdi, -24(%rbp)
	movq	%r14, %rdi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movl	%r10d, %esi
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movq	%rbx, %rdx
	movq	%r8, -160(%rbp)         # 8-byte Spill
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	movq	%r9, -184(%rbp)         # 8-byte Spill
	callq	memset
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, -128(%rbp)
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -120(%rbp)
	movq	-144(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -112(%rbp)
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -104(%rbp)
	movq	-176(%rbp), %r8         # 8-byte Reload
	movq	%r8, -96(%rbp)
	movq	-168(%rbp), %r9         # 8-byte Reload
	movq	%r9, -88(%rbp)
	movq	-24(%rbp), %rbx
	movq	$0, 152(%rbx)
	movq	-24(%rbp), %rbx
	movq	$0, 160(%rbx)
	movq	-24(%rbp), %rbx
	movq	$0, 168(%rbx)
	movq	-24(%rbp), %rbx
	movl	$0, 180(%rbx)
	movq	-24(%rbp), %rbx
	movl	$0, 176(%rbx)
	callq	gimp_histogram_box_new
	movq	-24(%rbp), %rcx
	movq	%rax, 192(%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_editor_set_show_name
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_histogram_box_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edi, %edi
	movl	$6, %esi
	movq	128(%rax), %rax
	movq	%rax, -32(%rbp)
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r10d, %r10d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r10d, %edx
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.16, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
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
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.17, %rsi
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gimp_prop_enum_combo_box_new
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rax, 184(%rsi)
	movq	-56(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_enum_combo_box_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.18, %rsi
	movq	%rax, %rdi
	callq	gimp_enum_combo_box_set_stock_prefix
	movq	-24(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_histogram_menu_sensitivity, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-24(%rbp), %rdi
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-248(%rbp), %rdx        # 8-byte Reload
	callq	gimp_int_combo_box_set_sensitivity
	movq	-24(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rcx
	movl	120(%rcx), %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movq	-40(%rbp), %rcx
	movl	%eax, -260(%rbp)        # 4-byte Spill
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.19, %rsi
	movabsq	$.L.str.20, %rdx
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -276(%rbp)        # 4-byte Spill
	movl	-276(%rbp), %r8d        # 4-byte Reload
	callq	gimp_prop_enum_stock_box_new
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -292(%rbp)        # 4-byte Spill
	movl	-292(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_end
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rsi
	movq	192(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.21, %rsi
	movabsq	$gimp_histogram_editor_info_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rbx
	movq	%rax, %rdx
	movq	%rbx, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.22, %rsi
	movabsq	$gimp_histogram_editor_info_update, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-320(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.23, %rsi
	movabsq	$gimp_histogram_view_expose, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-336(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movl	$3, %edi
	movl	$4, %esi
	xorl	%edx, %edx
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_table_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacings
	movq	-64(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movl	$6, %edx
	movq	%rax, %rdi
	callq	gtk_table_set_col_spacing
	movq	-24(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -380(%rbp)        # 4-byte Spill
	movl	-380(%rbp), %ecx        # 4-byte Reload
	movl	-380(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movl	$0, -68(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$6, -68(%rbp)
	jge	.LBB2_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	$3, %eax
	movl	-68(%rbp), %ecx
	movl	%eax, -384(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-384(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	shll	$1, %eax
	movl	%eax, -132(%rbp)
	movl	-68(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%edx, -136(%rbp)
	movslq	-68(%rbp), %rsi
	movq	-128(%rbp,%rsi,8), %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %esi
	movl	$700, %edx              # imm = 0x2BC
	movl	$15, %ecx
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$1, %al
	callq	gimp_label_set_attributes
	movq	-48(%rbp), %rdi
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movss	.LCPI2_2, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI2_3, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-64(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$5, %ecx
	movl	$4, %edx
	movl	$2, %r8d
	movq	-48(%rbp), %rsi
	movl	-132(%rbp), %r9d
	movl	-132(%rbp), %r10d
	addl	$1, %r10d
	movl	-136(%rbp), %r11d
	movl	-136(%rbp), %ebx
	addl	$1, %ebx
	movq	%rax, %rdi
	movl	%edx, -412(%rbp)        # 4-byte Spill
	movl	%r9d, %edx
	movl	%ecx, -416(%rbp)        # 4-byte Spill
	movl	%r10d, %ecx
	movl	%r8d, -420(%rbp)        # 4-byte Spill
	movl	%r11d, %r8d
	movl	%ebx, %r9d
	movl	$5, (%rsp)
	movl	$4, 8(%rsp)
	movl	$2, 16(%rsp)
	movl	$2, 24(%rsp)
	callq	gtk_table_attach
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_label_get_type
	movabsq	$.L.str.24, %rsi
	xorps	%xmm0, %xmm0
	movabsq	$.L.str.25, %rdx
	movsd	.LCPI2_1, %xmm1         # xmm1 = mem[0],zero
	movabsq	$.L.str.26, %rcx
	xorl	%r8d, %r8d
	movl	%r8d, %r9d
	movl	$5, %r8d
	movl	$9, %r10d
	cmpl	$2, -68(%rbp)
	cmovgl	%r10d, %r8d
	movq	%rax, %rdi
	movb	$2, %al
	callq	g_object_new
	movq	%rax, -48(%rbp)
	movslq	-68(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rax, 200(%rdx,%rcx,8)
	movslq	-68(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	200(%rcx,%rax,8), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$15, %esi
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$1, %al
	callq	gimp_label_set_attributes
	movq	-64(%rbp), %rcx
	movq	%rcx, -440(%rbp)        # 8-byte Spill
	callq	gtk_table_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %edx
	movl	$2, %r8d
	movq	-48(%rbp), %rsi
	movl	-132(%rbp), %r10d
	addl	$1, %r10d
	movl	-132(%rbp), %r11d
	addl	$2, %r11d
	movl	-136(%rbp), %ebx
	movl	-136(%rbp), %r14d
	addl	$1, %r14d
	movq	%rax, %rdi
	movl	%edx, -444(%rbp)        # 4-byte Spill
	movl	%r10d, %edx
	movl	%r11d, %ecx
	movl	%r8d, -448(%rbp)        # 4-byte Spill
	movl	%ebx, %r8d
	movl	%r14d, %r9d
	movl	$4, (%rsp)
	movl	$4, 8(%rsp)
	movl	$2, 16(%rsp)
	movl	$2, 24(%rsp)
	callq	gtk_table_attach
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB2_1
.LBB2_4:                                # %for.end
	addq	$464, %rsp              # imm = 0x1D0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_histogram_editor_init, .Lfunc_end2-gimp_histogram_editor_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_histogram_editor_docked_iface_init,@function
gimp_histogram_editor_docked_iface_init: # @gimp_histogram_editor_docked_iface_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp13:
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
	movabsq	$gimp_histogram_editor_get_aux_info, %rax
	movabsq	$gimp_histogram_editor_set_aux_info, %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, 24(%rdx)
	movq	-8(%rbp), %rcx
	movq	%rax, 32(%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_histogram_editor_docked_iface_init, .Lfunc_end3-gimp_histogram_editor_docked_iface_init
	.cfi_endproc

	.globl	gimp_histogram_editor_new
	.align	16, 0x90
	.type	gimp_histogram_editor_new,@function
gimp_histogram_editor_new:              # @gimp_histogram_editor_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
	.cfi_def_cfa_register %rbp
	callq	gimp_histogram_editor_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_histogram_editor_new, .Lfunc_end4-gimp_histogram_editor_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_histogram_editor_class_init,@function
gimp_histogram_editor_class_init:       # @gimp_histogram_editor_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_image_editor_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_histogram_editor_set_image, %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rsi, 824(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_histogram_editor_class_init, .Lfunc_end5-gimp_histogram_editor_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_histogram_editor_set_image,@function
gimp_histogram_editor_set_image:        # @gimp_histogram_editor_set_image
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_histogram_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_histogram_box_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	128(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 144(%rax)
	je	.LBB6_8
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	cmpl	$0, 176(%rax)
	je	.LBB6_3
# BB#2:                                 # %if.then.7
	movq	-24(%rbp), %rax
	movl	176(%rax), %edi
	callq	g_source_remove
	movq	-24(%rbp), %rcx
	movl	$0, 176(%rcx)
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB6_3:                                # %if.end
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_histogram_editor_update, %rdx
	movq	-8(%rbp), %rdi
	movq	144(%rdi), %rdi
	movq	-24(%rbp), %r9
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-64(%rbp), %r10         # 8-byte Reload
	movq	%r9, -72(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-72(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_histogram_editor_layer_changed, %rdi
	movq	-8(%rbp), %r9
	movq	144(%r9), %r9
	movq	-24(%rbp), %r10
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-80(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_histogram_editor_menu_update, %rdi
	movq	-8(%rbp), %r9
	movq	144(%r9), %r9
	movq	-24(%rbp), %r10
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movq	-24(%rbp), %rdi
	cmpq	$0, 160(%rdi)
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB6_5
# BB#4:                                 # %if.then.18
	movq	-24(%rbp), %rax
	movq	160(%rax), %rdi
	callq	gimp_histogram_unref
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rax
	movq	$0, 160(%rax)
	movq	-32(%rbp), %rdi
	callq	gimp_histogram_view_set_histogram
.LBB6_5:                                # %if.end.21
	movq	-24(%rbp), %rax
	cmpq	$0, 168(%rax)
	je	.LBB6_7
# BB#6:                                 # %if.then.23
	movq	-24(%rbp), %rax
	movq	168(%rax), %rdi
	callq	gimp_histogram_unref
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rax
	movq	$0, 168(%rax)
	movq	-32(%rbp), %rdi
	callq	gimp_histogram_view_set_background
.LBB6_7:                                # %if.end.26
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.27
	movq	gimp_histogram_editor_parent_class, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_image_editor_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	824(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	cmpq	$0, -16(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.31
	callq	gimp_histogram_new
	movq	-24(%rbp), %rcx
	movq	%rax, 160(%rcx)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	160(%rax), %rsi
	callq	gimp_histogram_view_set_histogram
	movabsq	$.L.str.1, %rsi
	movabsq	$gimp_histogram_editor_menu_update, %rax
	movl	$2, %r8d
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rdx
	movq	-120(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movabsq	$.L.str.2, %rsi
	movabsq	$gimp_histogram_editor_layer_changed, %rcx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movabsq	$.L.str.3, %rsi
	movabsq	$gimp_histogram_editor_update, %rcx
	movl	$2, %r8d
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB6_10:                               # %if.end.38
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_histogram_editor_layer_changed
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_histogram_editor_set_image, .Lfunc_end6-gimp_histogram_editor_set_image
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_histogram_editor_update,@function
gimp_histogram_editor_update:           # @gimp_histogram_editor_update
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
	cmpl	$0, 176(%rdi)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	176(%rax), %edi
	callq	g_source_remove
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB7_2:                                # %if.end
	movl	$300, %edi              # imm = 0x12C
	movl	$200, %esi
	movabsq	$gimp_histogram_editor_idle_update, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movq	-8(%rbp), %rdx
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-24(%rbp), %rcx         # 8-byte Reload
	callq	g_timeout_add_full
	movq	-8(%rbp), %rcx
	movl	%eax, 176(%rcx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_histogram_editor_update, .Lfunc_end7-gimp_histogram_editor_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_histogram_editor_layer_changed,@function
gimp_histogram_editor_layer_changed:    # @gimp_histogram_editor_layer_changed
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, 152(%rsi)
	je	.LBB8_4
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	cmpq	$0, 168(%rax)
	je	.LBB8_3
# BB#2:                                 # %if.then.2
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_histogram_box_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	128(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	168(%rax), %rdi
	callq	gimp_histogram_unref
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rax
	movq	$0, 168(%rax)
	movq	-24(%rbp), %rdi
	callq	gimp_histogram_view_set_background
.LBB8_3:                                # %if.end
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_histogram_editor_name_update, %rdx
	movq	-16(%rbp), %rdi
	movq	152(%rdi), %rdi
	movq	-16(%rbp), %r9
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
	movabsq	$gimp_histogram_editor_menu_update, %rdi
	movq	-16(%rbp), %r9
	movq	152(%r9), %r9
	movq	-16(%rbp), %r10
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_histogram_editor_update, %rdi
	movq	-16(%rbp), %r9
	movq	152(%r9), %r9
	movq	-16(%rbp), %r10
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-72(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_histogram_editor_frozen_update, %rdi
	movq	-16(%rbp), %r9
	movq	152(%r9), %r9
	movq	-16(%rbp), %r10
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movq	-16(%rbp), %rdi
	movq	$0, 152(%rdi)
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB8_4:                                # %if.end.16
	cmpq	$0, -8(%rbp)
	je	.LBB8_6
# BB#5:                                 # %if.then.18
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	-16(%rbp), %rdi
	movq	%rax, 152(%rdi)
.LBB8_6:                                # %if.end.21
	movq	-16(%rbp), %rdi
	callq	gimp_histogram_editor_menu_update
	movq	-16(%rbp), %rdi
	cmpq	$0, 152(%rdi)
	je	.LBB8_8
# BB#7:                                 # %if.then.24
	movabsq	$.L.str.4, %rsi
	movabsq	$gimp_histogram_editor_frozen_update, %rax
	movl	$2, %r8d
	movq	-16(%rbp), %rcx
	movq	152(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movabsq	$.L.str.5, %rsi
	movabsq	$gimp_histogram_editor_update, %rcx
	movl	$2, %r8d
	movq	-16(%rbp), %rdx
	movq	152(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movabsq	$.L.str.6, %rsi
	movabsq	$gimp_histogram_editor_menu_update, %rcx
	movl	$2, %r8d
	movq	-16(%rbp), %rdx
	movq	152(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movabsq	$.L.str.7, %rsi
	movabsq	$gimp_histogram_editor_name_update, %rcx
	movl	$2, %r8d
	movq	-16(%rbp), %rdx
	movq	152(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movq	-16(%rbp), %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_histogram_editor_update
	jmp	.LBB8_11
.LBB8_8:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, 160(%rax)
	je	.LBB8_10
# BB#9:                                 # %if.then.34
	movq	-16(%rbp), %rax
	movl	$0, 180(%rax)
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_queue_draw
.LBB8_10:                               # %if.end.38
	jmp	.LBB8_11
.LBB8_11:                               # %if.end.39
	movq	-16(%rbp), %rdi
	callq	gimp_histogram_editor_info_update
	movq	-16(%rbp), %rdi
	callq	gimp_histogram_editor_name_update
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_histogram_editor_layer_changed, .Lfunc_end8-gimp_histogram_editor_layer_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_histogram_editor_menu_update,@function
gimp_histogram_editor_menu_update:      # @gimp_histogram_editor_menu_update
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
	movq	-8(%rbp), %rdi
	movq	192(%rdi), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_histogram_box_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	128(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	184(%rax), %rdi
	callq	gtk_widget_queue_draw
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	120(%rax), %esi
	callq	gimp_histogram_editor_channel_valid
	cmpl	$0, %eax
	jne	.LBB9_2
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_histogram_view_set_channel
.LBB9_2:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_histogram_editor_menu_update, .Lfunc_end9-gimp_histogram_editor_menu_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_histogram_editor_idle_update,@function
gimp_histogram_editor_idle_update:      # @gimp_histogram_editor_idle_update
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$0, 176(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 180(%rdi)
	movq	-8(%rbp), %rdi
	movq	192(%rdi), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_queue_draw
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_histogram_editor_idle_update, .Lfunc_end10-gimp_histogram_editor_idle_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_histogram_editor_name_update,@function
gimp_histogram_editor_name_update:      # @gimp_histogram_editor_name_update
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
	movq	$0, -16(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 152(%rdi)
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, -16(%rbp)
.LBB11_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_editor_set_name
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_histogram_editor_name_update, .Lfunc_end11-gimp_histogram_editor_name_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_histogram_editor_frozen_update,@function
gimp_histogram_editor_frozen_update:    # @gimp_histogram_editor_frozen_update
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
	movq	192(%rsi), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_histogram_box_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	128(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_preview_is_frozen
	cmpl	$0, %eax
	je	.LBB12_7
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	cmpq	$0, 168(%rax)
	jne	.LBB12_6
# BB#2:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_is_drawable
	cmpl	$0, %eax
	je	.LBB12_6
# BB#3:                                 # %if.then.11
	movq	-8(%rbp), %rdi
	callq	gimp_histogram_editor_validate
	cmpl	$0, %eax
	je	.LBB12_5
# BB#4:                                 # %if.then.14
	movq	-8(%rbp), %rax
	movq	160(%rax), %rdi
	callq	gimp_histogram_duplicate
	movq	-8(%rbp), %rdi
	movq	%rax, 168(%rdi)
.LBB12_5:                               # %if.end
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	168(%rax), %rsi
	callq	gimp_histogram_view_set_background
.LBB12_6:                               # %if.end.18
	jmp	.LBB12_10
.LBB12_7:                               # %if.else
	movq	-8(%rbp), %rax
	cmpq	$0, 168(%rax)
	je	.LBB12_9
# BB#8:                                 # %if.then.21
	movq	-8(%rbp), %rax
	movq	168(%rax), %rdi
	callq	gimp_histogram_unref
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	$0, 168(%rax)
	movq	-24(%rbp), %rdi
	callq	gimp_histogram_view_set_background
.LBB12_9:                               # %if.end.24
	jmp	.LBB12_10
.LBB12_10:                              # %if.end.25
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_histogram_editor_frozen_update, .Lfunc_end12-gimp_histogram_editor_frozen_update
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI13_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	gimp_histogram_editor_info_update,@function
gimp_histogram_editor_info_update:      # @gimp_histogram_editor_info_update
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
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	192(%rdi), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_histogram_box_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	128(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB13_5
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	movl	$255, %ecx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	120(%rax), %esi
	callq	gimp_histogram_get_count
	movsd	%xmm0, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	120(%rax), %esi
	movq	-16(%rbp), %rax
	movl	128(%rax), %edx
	movq	-16(%rbp), %rax
	movl	132(%rax), %ecx
	callq	gimp_histogram_get_count
	leaq	-52(%rbp), %rdi
	movsd	%xmm0, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %r8
	movl	120(%r8), %esi
	movq	-16(%rbp), %r8
	movl	128(%r8), %edx
	movq	-16(%rbp), %r8
	movl	132(%r8), %ecx
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_histogram_get_mean
	movl	$12, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.8, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movb	$1, %al
	callq	g_snprintf
	movq	-8(%rbp), %rdx
	movq	200(%rdx), %rdx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-52(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	leaq	-52(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movl	120(%rdx), %esi
	movq	-16(%rbp), %rdx
	movl	128(%rdx), %edx
	movq	-16(%rbp), %r8
	movl	132(%r8), %ecx
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_histogram_get_std_dev
	movl	$12, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.8, %rdx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movb	$1, %al
	callq	g_snprintf
	movq	-8(%rbp), %rdx
	movq	208(%rdx), %rdx
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-52(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	leaq	-52(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movl	120(%rdx), %esi
	movq	-16(%rbp), %rdx
	movl	128(%rdx), %edx
	movq	-16(%rbp), %r8
	movl	132(%r8), %ecx
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_histogram_get_median
	movl	$12, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.8, %rdx
	cvtsi2sdl	%eax, %xmm0
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movb	$1, %al
	callq	g_snprintf
	movq	-8(%rbp), %rdx
	movq	216(%rdx), %rdx
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-52(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movl	$12, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.9, %rdx
	leaq	-52(%rbp), %rdi
	cvttsd2si	-32(%rbp), %ecx
	movb	$0, %al
	callq	g_snprintf
	movq	-8(%rbp), %rdx
	movq	224(%rdx), %rdx
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-52(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movl	$12, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.9, %rdx
	leaq	-52(%rbp), %rdi
	cvttsd2si	-40(%rbp), %ecx
	movb	$0, %al
	callq	g_snprintf
	movq	-8(%rbp), %rdx
	movq	232(%rdx), %rdx
	movl	%eax, -156(%rbp)        # 4-byte Spill
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-52(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	xorps	%xmm0, %xmm0
	leaq	-52(%rbp), %rdi
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	jbe	.LBB13_3
# BB#2:                                 # %cond.true
	movsd	.LCPI13_0, %xmm0        # xmm0 = mem[0],zero
	mulsd	-40(%rbp), %xmm0
	divsd	-32(%rbp), %xmm0
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	jmp	.LBB13_4
.LBB13_3:                               # %cond.false
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	jmp	.LBB13_4
.LBB13_4:                               # %cond.end
	movsd	-184(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	$12, %eax
	movl	%eax, %esi
	movabsq	$.L.str.8, %rdx
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movb	$1, %al
	callq	g_snprintf
	movq	-8(%rbp), %rdx
	movq	240(%rdx), %rdx
	movl	%eax, -188(%rbp)        # 4-byte Spill
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-52(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	jmp	.LBB13_10
.LBB13_5:                               # %if.else
	movl	$0, -56(%rbp)
.LBB13_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$6, -56(%rbp)
	jge	.LBB13_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB13_6 Depth=1
	movslq	-56(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	200(%rcx,%rax,8), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_text
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB13_6 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB13_6
.LBB13_9:                               # %for.end
	jmp	.LBB13_10
.LBB13_10:                              # %if.end
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_histogram_editor_info_update, .Lfunc_end13-gimp_histogram_editor_info_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_histogram_editor_validate,@function
gimp_histogram_editor_validate:         # @gimp_histogram_editor_validate
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, 180(%rdi)
	jne	.LBB14_6
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpq	$0, 160(%rax)
	je	.LBB14_6
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB14_4
# BB#3:                                 # %if.then.3
	movq	-8(%rbp), %rax
	movq	152(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	160(%rax), %rsi
	callq	gimp_drawable_calculate_histogram
	jmp	.LBB14_5
.LBB14_4:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	160(%rdx), %rdi
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	callq	gimp_histogram_calculate
.LBB14_5:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	gimp_histogram_editor_info_update
	movq	-8(%rbp), %rdi
	movl	$1, 180(%rdi)
.LBB14_6:                               # %if.end.8
	movq	-8(%rbp), %rax
	movl	180(%rax), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_histogram_editor_validate, .Lfunc_end14-gimp_histogram_editor_validate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_histogram_editor_channel_valid,@function
gimp_histogram_editor_channel_valid:    # @gimp_histogram_editor_channel_valid
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	cmpq	$0, 152(%rdi)
	je	.LBB15_6
# BB#1:                                 # %if.then
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$5, %rdx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	ja	.LBB15_5
# BB#8:                                 # %if.then
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	.LJTI15_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB15_2:                               # %sw.bb
	movl	$1, -4(%rbp)
	jmp	.LBB15_7
.LBB15_3:                               # %sw.bb.1
	movq	-16(%rbp), %rax
	movq	152(%rax), %rdi
	callq	gimp_drawable_is_rgb
	movl	%eax, -4(%rbp)
	jmp	.LBB15_7
.LBB15_4:                               # %sw.bb.3
	movq	-16(%rbp), %rax
	movq	152(%rax), %rdi
	callq	gimp_drawable_has_alpha
	movl	%eax, -4(%rbp)
	jmp	.LBB15_7
.LBB15_5:                               # %sw.epilog
	jmp	.LBB15_6
.LBB15_6:                               # %if.end
	movl	$1, -4(%rbp)
.LBB15_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_histogram_editor_channel_valid, .Lfunc_end15-gimp_histogram_editor_channel_valid
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI15_0:
	.quad	.LBB15_2
	.quad	.LBB15_3
	.quad	.LBB15_3
	.quad	.LBB15_3
	.quad	.LBB15_4
	.quad	.LBB15_3

	.text
	.align	16, 0x90
	.type	gimp_histogram_menu_sensitivity,@function
gimp_histogram_menu_sensitivity:        # @gimp_histogram_menu_sensitivity
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
	subq	$48, %rsp
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_histogram_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movl	-8(%rbp), %ecx
	movl	%ecx, -28(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB16_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_histogram_editor_channel_valid
	movl	%eax, -4(%rbp)
	jmp	.LBB16_3
.LBB16_2:                               # %if.end
	movl	$0, -4(%rbp)
.LBB16_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_histogram_menu_sensitivity, .Lfunc_end16-gimp_histogram_menu_sensitivity
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_histogram_view_expose,@function
gimp_histogram_view_expose:             # @gimp_histogram_view_expose
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_histogram_editor_validate
	xorl	%ecx, %ecx
	movl	%eax, -12(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_histogram_view_expose, .Lfunc_end17-gimp_histogram_view_expose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_histogram_editor_set_aux_info,@function
gimp_histogram_editor_set_aux_info:     # @gimp_histogram_editor_set_aux_info
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
	callq	gimp_histogram_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_histogram_box_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	128(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	parent_docked_iface, %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.17, %rdx
	movabsq	$.L.str.19, %rcx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_session_info_aux_set_props
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_histogram_editor_set_aux_info, .Lfunc_end18-gimp_histogram_editor_set_aux_info
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_histogram_editor_get_aux_info,@function
gimp_histogram_editor_get_aux_info:     # @gimp_histogram_editor_get_aux_info
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_histogram_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_histogram_box_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	128(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	parent_docked_iface, %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.17, %rsi
	movabsq	$.L.str.19, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_session_info_aux_new_from_props
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_list_concat
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_histogram_editor_get_aux_info, .Lfunc_end19-gimp_histogram_editor_get_aux_info
	.cfi_endproc

	.type	gimp_histogram_editor_get_type.g_define_type_id__volatile,@object # @gimp_histogram_editor_get_type.g_define_type_id__volatile
	.local	gimp_histogram_editor_get_type.g_define_type_id__volatile
	.comm	gimp_histogram_editor_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpHistogramEditor"
	.size	.L.str, 20

	.type	gimp_histogram_editor_get_type.g_implement_interface_info,@object # @gimp_histogram_editor_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_histogram_editor_get_type.g_implement_interface_info:
	.quad	gimp_histogram_editor_docked_iface_init
	.quad	0
	.quad	0
	.size	gimp_histogram_editor_get_type.g_implement_interface_info, 24

	.type	gimp_histogram_editor_parent_class,@object # @gimp_histogram_editor_parent_class
	.local	gimp_histogram_editor_parent_class
	.comm	gimp_histogram_editor_parent_class,8,8
	.type	GimpHistogramEditor_private_offset,@object # @GimpHistogramEditor_private_offset
	.local	GimpHistogramEditor_private_offset
	.comm	GimpHistogramEditor_private_offset,4,4
	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"mode-changed"
	.size	.L.str.1, 13

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"active-layer-changed"
	.size	.L.str.2, 21

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"mask-changed"
	.size	.L.str.3, 13

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"notify::frozen"
	.size	.L.str.4, 15

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"update"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"alpha-changed"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"name-changed"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%.1f"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%d"
	.size	.L.str.9, 3

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Mean:"
	.size	.L.str.10, 6

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Std dev:"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Median:"
	.size	.L.str.12, 8

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Pixels:"
	.size	.L.str.13, 8

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Count:"
	.size	.L.str.14, 7

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Percentile:"
	.size	.L.str.15, 12

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Channel:"
	.size	.L.str.16, 9

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"histogram-channel"
	.size	.L.str.17, 18

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp-channel"
	.size	.L.str.18, 13

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"histogram-scale"
	.size	.L.str.19, 16

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gimp-histogram"
	.size	.L.str.20, 15

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"range-changed"
	.size	.L.str.21, 14

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"notify::histogram-channel"
	.size	.L.str.22, 26

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"expose-event"
	.size	.L.str.23, 13

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"xalign"
	.size	.L.str.24, 7

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"yalign"
	.size	.L.str.25, 7

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"width-chars"
	.size	.L.str.26, 12

	.type	parent_docked_iface,@object # @parent_docked_iface
	.local	parent_docked_iface
	.comm	parent_docked_iface,8,8

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
