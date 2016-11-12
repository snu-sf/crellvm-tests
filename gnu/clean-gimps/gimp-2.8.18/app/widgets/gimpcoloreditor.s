	.text
	.file	"gimpcoloreditor.bc"
	.globl	gimp_color_editor_get_type
	.align	16, 0x90
	.type	gimp_color_editor_get_type,@function
gimp_color_editor_get_type:             # @gimp_color_editor_get_type
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
	movq	gimp_color_editor_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_color_editor_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_editor_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$824, %edx              # imm = 0x338
	movabsq	$gimp_color_editor_class_intern_init, %rdi
	movl	$184, %r8d
	movabsq	$gimp_color_editor_init, %rcx
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
	movabsq	$gimp_color_editor_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_color_editor_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_color_editor_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_color_editor_get_type, .Lfunc_end0-gimp_color_editor_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_editor_class_intern_init,@function
gimp_color_editor_class_intern_init:    # @gimp_color_editor_class_intern_init
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
	movq	%rax, gimp_color_editor_parent_class
	cmpl	$0, GimpColorEditor_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpColorEditor_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_color_editor_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_color_editor_class_intern_init, .Lfunc_end1-gimp_color_editor_class_intern_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_color_editor_init,@function
gimp_color_editor_init:                 # @gimp_color_editor_init
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
	subq	$480, %rsp              # imm = 0x1E0
	leaq	-88(%rbp), %rax
	xorps	%xmm0, %xmm0
	movsd	.LCPI2_0, %xmm3         # xmm3 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	$0, 136(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 144(%rdi)
	movq	%rax, %rdi
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	movsd	-176(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-176(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_rgba_set
	leaq	-88(%rbp), %rdi
	leaq	-120(%rbp), %rsi
	callq	gimp_rgb_to_hsv
	movq	-8(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.11, %rsi
	leaq	-44(%rbp), %rdx
	movabsq	$.L.str.12, %rcx
	leaq	-48(%rbp), %r8
	movabsq	$.L.str.13, %r9
	leaq	-52(%rbp), %rdi
	xorl	%r10d, %r10d
	movl	%r10d, %r11d
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	movq	%r11, -200(%rbp)        # 8-byte Spill
	callq	gtk_widget_style_get
	xorl	%edi, %edi
	movl	-48(%rbp), %esi
	callq	gtk_box_new
	movq	-8(%rbp), %rcx
	movq	%rax, 152(%rcx)
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_homogeneous
	movq	-8(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r10d, %r10d
	movq	-8(%rbp), %rcx
	movq	152(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r10d, %edx
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	152(%rax), %rdi
	callq	gtk_widget_show
	callq	gimp_color_notebook_get_type
	leaq	-88(%rbp), %rsi
	leaq	-120(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	callq	gimp_color_selector_new
	movq	-8(%rbp), %rdx
	movq	%rax, 160(%rdx)
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_color_selector_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_color_selector_set_show_alpha
	movq	-8(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movq	-8(%rbp), %rdx
	movq	160(%rdx), %rsi
	movl	-44(%rbp), %r8d
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	160(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.14, %rsi
	movabsq	$gimp_color_editor_color_changed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	160(%rdi), %rdi
	movq	-8(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movq	-8(%rbp), %rcx
	movq	160(%rcx), %rcx
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	callq	gimp_color_notebook_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	216(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_notebook_set_show_tabs
	movq	-16(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_notebook_set_show_border
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_color_notebook_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_color_scales_get_type
	movl	$1, %edx
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_color_notebook_set_has_page
	movq	$0, -136(%rbp)
	movq	-8(%rbp), %rcx
	movq	160(%rcx), %rcx
	movq	%rax, -288(%rbp)        # 8-byte Spill
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	callq	gimp_color_notebook_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	224(%rax), %rax
	movq	%rax, -128(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -128(%rbp)
	je	.LBB2_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_color_selector_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-136(%rbp), %rdi
	callq	gtk_radio_button_new
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_button_get_group
	movq	%rax, -136(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_mode
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-160(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-160(%rbp), %rdi
	callq	gtk_widget_show
	movl	$4, %esi
	movq	-152(%rbp), %rax
	movq	840(%rax), %rdi
	callq	gtk_image_new_from_stock
	movq	%rax, -168(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-168(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-168(%rbp), %rdi
	callq	gtk_widget_show
	movq	-160(%rbp), %rdi
	movq	-152(%rbp), %rax
	movq	824(%rax), %rsi
	movq	-152(%rbp), %rax
	movq	832(%rax), %rdx
	callq	gimp_help_set_help_data
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.15, %rsi
	movq	-144(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rsi
	movq	-160(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data
	movabsq	$.L.str.16, %rsi
	movabsq	$gimp_color_editor_tab_toggled, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-160(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-344(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -352(%rbp)        # 8-byte Spill
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpq	$0, -128(%rbp)
	je	.LBB2_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-128(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	jmp	.LBB2_6
.LBB2_5:                                # %cond.false
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -360(%rbp)        # 8-byte Spill
	jmp	.LBB2_6
.LBB2_6:                                # %cond.end
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-360(%rbp), %rax        # 8-byte Reload
	movq	%rax, -128(%rbp)
	jmp	.LBB2_1
.LBB2_7:                                # %for.end
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_homogeneous
	movq	-8(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -380(%rbp)        # 4-byte Spill
	movl	-380(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gimp_fg_bg_editor_new
	movq	-8(%rbp), %rsi
	movq	%rax, 168(%rsi)
	movq	-24(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rsi
	movq	168(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	168(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.17, %rsi
	movabsq	$gimp_color_editor_fg_bg_notify, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	168(%rdi), %rdi
	movq	-8(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movl	$1, %edi
	movl	$3, %esi
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_pick_button_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -420(%rbp)        # 4-byte Spill
	movl	-420(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.18, %rsi
	movabsq	$gimp_color_editor_color_picked, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gimp_color_hex_entry_new
	movabsq	$.L.str.19, %rdi
	movq	-8(%rbp), %rcx
	movq	%rax, 176(%rcx)
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movq	-32(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rcx
	movq	176(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_end
	movq	-8(%rbp), %rax
	movq	176(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.14, %rsi
	movabsq	$gimp_color_editor_entry_changed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	176(%rdi), %rdi
	movq	-8(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	%rax, -456(%rbp)        # 8-byte Spill
	addq	$480, %rsp              # imm = 0x1E0
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_color_editor_init, .Lfunc_end2-gimp_color_editor_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_editor_docked_iface_init,@function
gimp_color_editor_docked_iface_init:    # @gimp_color_editor_docked_iface_init
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
	movabsq	$gimp_color_editor_set_context, %rax
	movabsq	$gimp_color_editor_get_aux_info, %rcx
	movabsq	$gimp_color_editor_set_aux_info, %rdx
	movabsq	$gimp_color_editor_get_preview, %rsi
	movq	-8(%rbp), %rdi
	movq	%rsi, 40(%rdi)
	movq	-8(%rbp), %rsi
	movq	%rdx, 24(%rsi)
	movq	-8(%rbp), %rdx
	movq	%rcx, 32(%rdx)
	movq	-8(%rbp), %rcx
	movq	%rax, 72(%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_color_editor_docked_iface_init, .Lfunc_end3-gimp_color_editor_docked_iface_init
	.cfi_endproc

	.globl	gimp_color_editor_new
	.align	16, 0x90
	.type	gimp_color_editor_new,@function
gimp_color_editor_new:                  # @gimp_color_editor_new
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	gimp_color_editor_get_type
	movabsq	$.L.str.1, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_color_editor_new, .Lfunc_end4-gimp_color_editor_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_editor_class_init,@function
gimp_color_editor_class_init:           # @gimp_color_editor_class_init
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_color_editor_style_set, %rsi
	movabsq	$gimp_color_editor_get_property, %rdi
	movabsq	$gimp_color_editor_set_property, %rcx
	movabsq	$gimp_color_editor_dispose, %rdx
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 32(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 280(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movabsq	$.L.str.1, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movl	$227, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_color_editor_class_init, .Lfunc_end5-gimp_color_editor_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_editor_dispose,@function
gimp_color_editor_dispose:              # @gimp_color_editor_dispose
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_color_editor_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 136(%rax)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_docked_interface_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gimp_docked_set_context
.LBB6_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_color_editor_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_color_editor_dispose, .Lfunc_end6-gimp_color_editor_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_editor_set_property,@function
gimp_color_editor_set_property:         # @gimp_color_editor_set_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	-12(%rbp), %esi
	subl	$1, %esi
	movl	%esi, -56(%rbp)         # 4-byte Spill
	jne	.LBB7_2
	jmp	.LBB7_1
.LBB7_1:                                # %sw.bb
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_docked_interface_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_value_get_object
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_docked_set_context
	jmp	.LBB7_5
.LBB7_2:                                # %sw.default
	jmp	.LBB7_3
.LBB7_3:                                # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movl	-52(%rbp), %r8d
	movq	-48(%rbp), %rax
	movq	8(%rax), %r9
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movq	%r9, -88(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-40(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.2, %rdi
	movabsq	$.L.str.3, %rsi
	movl	$299, %edx              # imm = 0x12B
	movabsq	$.L.str.4, %rcx
	movl	-76(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB7_5
.LBB7_5:                                # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_color_editor_set_property, .Lfunc_end7-gimp_color_editor_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_editor_get_property,@function
gimp_color_editor_get_property:         # @gimp_color_editor_get_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_color_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB8_2
	jmp	.LBB8_1
.LBB8_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB8_5
.LBB8_2:                                # %sw.default
	jmp	.LBB8_3
.LBB8_3:                                # %do.body
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
	movl	%r8d, -80(%rbp)         # 4-byte Spill
	movq	%r9, -88(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.2, %rdi
	movabsq	$.L.str.3, %rsi
	movl	$318, %edx              # imm = 0x13E
	movabsq	$.L.str.4, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB8_5
.LBB8_5:                                # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_color_editor_get_property, .Lfunc_end8-gimp_color_editor_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_editor_style_set,@function
gimp_color_editor_style_set:            # @gimp_color_editor_style_set
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_color_editor_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	gimp_color_editor_parent_class, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	280(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-24(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	152(%rsi), %rsi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_editor_set_box_style
.LBB9_2:                                # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_color_editor_style_set, .Lfunc_end9-gimp_color_editor_style_set
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
	movl	$.L.str.5, %r9d
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

	.align	16, 0x90
	.type	gimp_color_editor_get_preview,@function
gimp_color_editor_get_preview:          # @gimp_color_editor_get_preview
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_settings
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_fg_bg_view_new
	leaq	-44(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gtk_icon_size_lookup_for_settings
	cmpl	$0, %eax
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %esi
	movl	-48(%rbp), %edx
	callq	gtk_widget_set_size_request
.LBB11_2:                               # %if.end
	movq	-40(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_color_editor_get_preview, .Lfunc_end11-gimp_color_editor_get_preview
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_editor_set_aux_info,@function
gimp_color_editor_set_aux_info:         # @gimp_color_editor_set_aux_info
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_color_editor_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_color_notebook_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	216(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	parent_docked_iface, %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_4 Depth 2
	cmpq	$0, -40(%rbp)
	je	.LBB12_20
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	movl	$.L.str.6, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB12_15
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_children
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB12_4:                               # %for.cond.11
                                        #   Parent Loop BB12_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -64(%rbp)
	je	.LBB12_14
# BB#5:                                 # %for.body.13
                                        #   in Loop: Header=BB12_4 Depth=2
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	8(%rdi), %rsi
	movq	%rax, %rdi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB12_9
# BB#6:                                 # %if.then.18
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	$80, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB12_8
# BB#7:                                 # %if.then.23
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-72(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
.LBB12_8:                               # %if.end
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_14
.LBB12_9:                               # %if.end.26
                                        #   in Loop: Header=BB12_4 Depth=2
	jmp	.LBB12_10
.LBB12_10:                              # %for.inc
                                        #   in Loop: Header=BB12_4 Depth=2
	cmpq	$0, -64(%rbp)
	je	.LBB12_12
# BB#11:                                # %cond.true
                                        #   in Loop: Header=BB12_4 Depth=2
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB12_13
.LBB12_12:                              # %cond.false
                                        #   in Loop: Header=BB12_4 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB12_13
.LBB12_13:                              # %cond.end
                                        #   in Loop: Header=BB12_4 Depth=2
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, -64(%rbp)
	jmp	.LBB12_4
.LBB12_14:                              # %for.end
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-56(%rbp), %rdi
	callq	g_list_free
.LBB12_15:                              # %if.end.28
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_16
.LBB12_16:                              # %for.inc.29
                                        #   in Loop: Header=BB12_1 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB12_18
# BB#17:                                # %cond.true.31
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB12_19
.LBB12_18:                              # %cond.false.33
                                        #   in Loop: Header=BB12_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB12_19
.LBB12_19:                              # %cond.end.34
                                        #   in Loop: Header=BB12_1 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB12_1
.LBB12_20:                              # %for.end.36
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_color_editor_set_aux_info, .Lfunc_end12-gimp_color_editor_set_aux_info
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_editor_get_aux_info,@function
gimp_color_editor_get_aux_info:         # @gimp_color_editor_get_aux_info
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_color_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_color_notebook_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	parent_docked_iface, %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 232(%rax)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	232(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	callq	g_type_name
	movabsq	$.L.str.6, %rdi
	movq	%rax, %rsi
	callq	gimp_session_info_aux_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movq	%rax, -32(%rbp)
.LBB13_2:                               # %if.end
	movq	-32(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_color_editor_get_aux_info, .Lfunc_end13-gimp_color_editor_get_aux_info
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_editor_set_context,@function
gimp_color_editor_set_context:          # @gimp_color_editor_set_context
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
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_color_editor_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	cmpq	136(%rsi), %rax
	jne	.LBB14_2
# BB#1:                                 # %if.then
	jmp	.LBB14_10
.LBB14_2:                               # %if.end
	movq	-24(%rbp), %rax
	cmpq	$0, 136(%rax)
	je	.LBB14_4
# BB#3:                                 # %if.then.4
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_color_editor_fg_changed, %rdx
	movq	-24(%rbp), %rdi
	movq	136(%rdi), %rdi
	movq	-24(%rbp), %r9
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	%r9, -80(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-80(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_color_editor_bg_changed, %rdi
	movq	-24(%rbp), %r9
	movq	136(%r9), %r9
	movq	-24(%rbp), %r10
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movq	-24(%rbp), %rdi
	movq	136(%rdi), %rdi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	g_object_unref
.LBB14_4:                               # %if.end.10
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 136(%rcx)
	movq	-24(%rbp), %rax
	cmpq	$0, 136(%rax)
	je	.LBB14_9
# BB#5:                                 # %if.then.14
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movabsq	$.L.str.8, %rsi
	movabsq	$gimp_color_editor_fg_changed, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	136(%rdx), %rdx
	movq	-24(%rbp), %r10
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	%r10, %rcx
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.9, %rsi
	movabsq	$gimp_color_editor_bg_changed, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	136(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-24(%rbp), %rcx
	cmpl	$0, 144(%rcx)
	movq	%rax, -136(%rbp)        # 8-byte Spill
	je	.LBB14_7
# BB#6:                                 # %if.then.22
	leaq	-56(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	136(%rax), %rdi
	callq	gimp_context_get_background
	leaq	-56(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	136(%rax), %rdi
	movq	-24(%rbp), %rdx
	callq	gimp_color_editor_bg_changed
	jmp	.LBB14_8
.LBB14_7:                               # %if.else
	leaq	-56(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	136(%rax), %rdi
	callq	gimp_context_get_foreground
	leaq	-56(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	136(%rax), %rdi
	movq	-24(%rbp), %rdx
	callq	gimp_color_editor_fg_changed
.LBB14_8:                               # %if.end.27
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	32(%rcx), %rcx
	movq	368(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rsi
	movq	-24(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movq	-24(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_color_selector_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	32(%rcx), %rcx
	movq	368(%rcx), %rsi
	movq	%rax, %rdi
	callq	gimp_color_selector_set_config
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	368(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	%rax, %rdi
	callq	g_object_set_data
.LBB14_9:                               # %if.end.39
	movq	-24(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_fg_bg_editor_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_fg_bg_editor_set_context
.LBB14_10:                              # %return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_color_editor_set_context, .Lfunc_end14-gimp_color_editor_set_context
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_editor_fg_changed,@function
gimp_color_editor_fg_changed:           # @gimp_color_editor_fg_changed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	cmpl	$0, 144(%rdx)
	jne	.LBB15_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_color_editor_set_color
.LBB15_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_color_editor_fg_changed, .Lfunc_end15-gimp_color_editor_fg_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_editor_bg_changed,@function
gimp_color_editor_bg_changed:           # @gimp_color_editor_bg_changed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	cmpl	$0, 144(%rdx)
	je	.LBB16_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_color_editor_set_color
.LBB16_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_color_editor_bg_changed, .Lfunc_end16-gimp_color_editor_bg_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_editor_set_color,@function
gimp_color_editor_set_color:            # @gimp_color_editor_set_color
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
	subq	$128, %rsp
	leaq	-48(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_rgb_to_hsv
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_color_editor_color_changed, %rax
	movq	-8(%rbp), %rdi
	movq	160(%rdi), %rdi
	movq	-8(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-8(%rbp), %rdi
	movq	160(%rdi), %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_color_selector_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-48(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_selector_set_color
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%r10d, %r10d
	movl	%r10d, %r8d
	movabsq	$gimp_color_editor_color_changed, %rax
	movq	-8(%rbp), %rdx
	movq	160(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movl	%ecx, %edx
	movq	%rax, %r9
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_color_editor_entry_changed, %rdi
	movq	-8(%rbp), %r9
	movq	176(%r9), %r9
	movq	-8(%rbp), %r11
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	%r11, (%rsp)
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_block_matched
	movq	-8(%rbp), %rdi
	movq	176(%rdi), %rdi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_color_hex_entry_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_hex_entry_set_color
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_color_editor_entry_changed, %rax
	movq	-8(%rbp), %rdi
	movq	176(%rdi), %rdi
	movq	-8(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -112(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -116(%rbp)        # 4-byte Spill
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_color_editor_set_color, .Lfunc_end17-gimp_color_editor_set_color
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_editor_color_changed,@function
gimp_color_editor_color_changed:        # @gimp_color_editor_color_changed
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	cmpq	$0, 136(%rcx)
	je	.LBB18_5
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	cmpl	$0, 144(%rax)
	je	.LBB18_3
# BB#2:                                 # %if.then.2
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_color_editor_bg_changed, %rdx
	movq	-32(%rbp), %rdi
	movq	136(%rdi), %rdi
	movq	-32(%rbp), %r9
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-40(%rbp), %r10         # 8-byte Reload
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-32(%rbp), %rdi
	movq	136(%rdi), %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	gimp_context_set_background
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_color_editor_bg_changed, %rdi
	movq	-32(%rbp), %r9
	movq	136(%r9), %r9
	movq	-32(%rbp), %r10
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB18_4
.LBB18_3:                               # %if.else
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_color_editor_fg_changed, %rdx
	movq	-32(%rbp), %rdi
	movq	136(%rdi), %rdi
	movq	-32(%rbp), %r9
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-80(%rbp), %r10         # 8-byte Reload
	movq	%r9, -88(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-88(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-32(%rbp), %rdi
	movq	136(%rdi), %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gimp_context_set_foreground
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_color_editor_fg_changed, %rdi
	movq	-32(%rbp), %r9
	movq	136(%r9), %r9
	movq	-32(%rbp), %r10
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB18_4:                               # %if.end
	jmp	.LBB18_5
.LBB18_5:                               # %if.end.12
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_color_editor_entry_changed, %rdx
	movq	-32(%rbp), %rdi
	movq	176(%rdi), %rdi
	movq	-32(%rbp), %r9
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-120(%rbp), %r10        # 8-byte Reload
	movq	%r9, -128(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-128(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-32(%rbp), %rdi
	movq	176(%rdi), %rdi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	callq	gimp_color_hex_entry_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_hex_entry_set_color
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_color_editor_entry_changed, %rax
	movq	-32(%rbp), %rdi
	movq	176(%rdi), %rdi
	movq	-32(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -152(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -156(%rbp)        # 4-byte Spill
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_color_editor_color_changed, .Lfunc_end18-gimp_color_editor_color_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_editor_entry_changed,@function
gimp_color_editor_entry_changed:        # @gimp_color_editor_entry_changed
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
	subq	$48, %rsp
	leaq	-48(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_color_hex_entry_get_color
	movq	-16(%rbp), %rax
	cmpq	$0, 136(%rax)
	je	.LBB19_5
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	cmpl	$0, 144(%rax)
	je	.LBB19_3
# BB#2:                                 # %if.then.3
	leaq	-48(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	136(%rax), %rdi
	callq	gimp_context_set_background
	jmp	.LBB19_4
.LBB19_3:                               # %if.else
	leaq	-48(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	136(%rax), %rdi
	callq	gimp_context_set_foreground
.LBB19_4:                               # %if.end
	jmp	.LBB19_5
.LBB19_5:                               # %if.end.6
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_color_editor_entry_changed, .Lfunc_end19-gimp_color_editor_entry_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_editor_tab_toggled,@function
gimp_color_editor_tab_toggled:          # @gimp_color_editor_tab_toggled
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	cmpl	$0, %eax
	je	.LBB20_6
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.15, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB20_5
# BB#2:                                 # %if.then.6
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_color_notebook_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	216(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_notebook_page_num
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jl	.LBB20_4
# BB#3:                                 # %if.then.14
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-36(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_notebook_set_current_page
.LBB20_4:                               # %if.end
	jmp	.LBB20_5
.LBB20_5:                               # %if.end.17
	jmp	.LBB20_6
.LBB20_6:                               # %if.end.18
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_color_editor_tab_toggled, .Lfunc_end20-gimp_color_editor_tab_toggled
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_editor_fg_bg_notify,@function
gimp_color_editor_fg_bg_notify:         # @gimp_color_editor_fg_bg_notify
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	callq	gimp_fg_bg_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$1, 112(%rax)
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %r8d
	movl	%r8d, -28(%rbp)
	movl	-28(%rbp), %r8d
	movq	-24(%rbp), %rax
	cmpl	144(%rax), %r8d
	je	.LBB21_7
# BB#1:                                 # %if.then
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 144(%rcx)
	movq	-24(%rbp), %rcx
	cmpq	$0, 136(%rcx)
	je	.LBB21_6
# BB#2:                                 # %if.then.6
	cmpl	$0, -28(%rbp)
	je	.LBB21_4
# BB#3:                                 # %if.then.8
	leaq	-64(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	136(%rax), %rdi
	callq	gimp_context_get_background
	leaq	-64(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	136(%rax), %rdi
	movq	-24(%rbp), %rdx
	callq	gimp_color_editor_bg_changed
	jmp	.LBB21_5
.LBB21_4:                               # %if.else
	leaq	-64(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	136(%rax), %rdi
	callq	gimp_context_get_foreground
	leaq	-64(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	136(%rax), %rdi
	movq	-24(%rbp), %rdx
	callq	gimp_color_editor_fg_changed
.LBB21_5:                               # %if.end
	jmp	.LBB21_6
.LBB21_6:                               # %if.end.13
	jmp	.LBB21_7
.LBB21_7:                               # %if.end.14
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_color_editor_fg_bg_notify, .Lfunc_end21-gimp_color_editor_fg_bg_notify
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_editor_color_picked,@function
gimp_color_editor_color_picked:         # @gimp_color_editor_color_picked
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	cmpq	$0, 136(%rdx)
	je	.LBB22_5
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	cmpl	$0, 144(%rax)
	je	.LBB22_3
# BB#2:                                 # %if.then.2
	movq	-24(%rbp), %rax
	movq	136(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_context_set_background
	jmp	.LBB22_4
.LBB22_3:                               # %if.else
	movq	-24(%rbp), %rax
	movq	136(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_context_set_foreground
.LBB22_4:                               # %if.end
	jmp	.LBB22_5
.LBB22_5:                               # %if.end.5
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_color_editor_color_picked, .Lfunc_end22-gimp_color_editor_color_picked
	.cfi_endproc

	.type	gimp_color_editor_get_type.g_define_type_id__volatile,@object # @gimp_color_editor_get_type.g_define_type_id__volatile
	.local	gimp_color_editor_get_type.g_define_type_id__volatile
	.comm	gimp_color_editor_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpColorEditor"
	.size	.L.str, 16

	.type	gimp_color_editor_get_type.g_implement_interface_info,@object # @gimp_color_editor_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_color_editor_get_type.g_implement_interface_info:
	.quad	gimp_color_editor_docked_iface_init
	.quad	0
	.quad	0
	.size	gimp_color_editor_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"context"
	.size	.L.str.1, 8

	.type	gimp_color_editor_parent_class,@object # @gimp_color_editor_parent_class
	.local	gimp_color_editor_parent_class
	.comm	gimp_color_editor_parent_class,8,8
	.type	GimpColorEditor_private_offset,@object # @GimpColorEditor_private_offset
	.local	GimpColorEditor_private_offset
	.comm	GimpColorEditor_private_offset,4,4
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.2, 54

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimpcoloreditor.c"
	.size	.L.str.3, 18

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"property"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Gimp-Widgets"
	.size	.L.str.5, 13

	.type	parent_docked_iface,@object # @parent_docked_iface
	.local	parent_docked_iface
	.comm	parent_docked_iface,8,8
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"current-page"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"button"
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"foreground-changed"
	.size	.L.str.8, 19

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"background-changed"
	.size	.L.str.9, 19

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-context"
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"content-spacing"
	.size	.L.str.11, 16

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"button-spacing"
	.size	.L.str.12, 15

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"button-icon-size"
	.size	.L.str.13, 17

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"color-changed"
	.size	.L.str.14, 14

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"selector"
	.size	.L.str.15, 9

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"toggled"
	.size	.L.str.16, 8

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"notify::active-color"
	.size	.L.str.17, 21

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"color-picked"
	.size	.L.str.18, 13

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Hexadecimal color notation as used in HTML and CSS.  This entry also accepts CSS color names."
	.size	.L.str.19, 94


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
