	.text
	.file	"gimpalignoptions.bc"
	.globl	gimp_align_options_get_type
	.align	16, 0x90
	.type	gimp_align_options_get_type,@function
gimp_align_options_get_type:            # @gimp_align_options_get_type
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
	movq	gimp_align_options_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_align_options_get_type.g_define_type_id__volatile, %rax
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
	movl	$440, %edx              # imm = 0x1B8
	movabsq	$gimp_align_options_class_intern_init, %rdi
	movl	$472, %r8d              # imm = 0x1D8
	movabsq	$gimp_align_options_init, %rcx
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
	movabsq	$gimp_align_options_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_align_options_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_align_options_get_type, .Lfunc_end0-gimp_align_options_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_align_options_class_intern_init,@function
gimp_align_options_class_intern_init:   # @gimp_align_options_class_intern_init
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
	movq	%rax, gimp_align_options_parent_class
	cmpl	$0, GimpAlignOptions_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpAlignOptions_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_align_options_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_align_options_class_intern_init, .Lfunc_end1-gimp_align_options_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_align_options_init,@function
gimp_align_options_init:                # @gimp_align_options_init
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
	.size	gimp_align_options_init, .Lfunc_end2-gimp_align_options_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4607182418800017408     # double 1
.LCPI3_1:
	.quad	4626322717216342016     # double 20
	.text
	.globl	gimp_align_options_gui
	.align	16, 0x90
	.type	gimp_align_options_gui,@function
gimp_align_options_gui:                 # @gimp_align_options_gui
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
	subq	$464, %rsp              # imm = 0x1D0
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_align_options_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_tool_options_gui
	movabsq	$.L.str.1, %rdi
	movq	%rax, -32(%rbp)
	movl	$0, -84(%rbp)
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	movl	-108(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	movl	-132(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.2, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	movl	-148(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.3, %rsi
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movl	%ecx, %edx
	callq	gimp_prop_enum_combo_box_new
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	movl	-172(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.4, %rdi
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%esi, %esi
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	-184(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_align_options_button_new
	movabsq	$.L.str.5, %rdi
	movl	-84(%rbp), %esi
	movl	%esi, %r8d
	addl	$1, %r8d
	movl	%r8d, -84(%rbp)
	movslq	%esi, %rcx
	movq	-24(%rbp), %rdx
	movq	%rax, 376(%rdx,%rcx,8)
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, -200(%rbp)        # 8-byte Spill
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %esi
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	-200(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_align_options_button_new
	movabsq	$.L.str.6, %rdi
	movl	-84(%rbp), %esi
	movl	%esi, %r8d
	addl	$1, %r8d
	movl	%r8d, -84(%rbp)
	movslq	%esi, %rcx
	movq	-24(%rbp), %rdx
	movq	%rax, 376(%rdx,%rcx,8)
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$2, %esi
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	-216(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_align_options_button_new
	xorl	%edi, %edi
	movl	$6, %esi
	movl	-84(%rbp), %r8d
	movl	%r8d, %r9d
	addl	$1, %r9d
	movl	%r9d, -84(%rbp)
	movslq	%r8d, %rcx
	movq	-24(%rbp), %rdx
	movq	%rax, 376(%rdx,%rcx,8)
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.7, %rdi
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, -240(%rbp)        # 8-byte Spill
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$3, %esi
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	-240(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_align_options_button_new
	movabsq	$.L.str.8, %rdi
	movl	-84(%rbp), %esi
	movl	%esi, %r8d
	addl	$1, %r8d
	movl	%r8d, -84(%rbp)
	movslq	%esi, %rcx
	movq	-24(%rbp), %rdx
	movq	%rax, 376(%rdx,%rcx,8)
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, -256(%rbp)        # 8-byte Spill
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$4, %esi
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	-256(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_align_options_button_new
	movabsq	$.L.str.9, %rdi
	movl	-84(%rbp), %esi
	movl	%esi, %r8d
	addl	$1, %r8d
	movl	%r8d, -84(%rbp)
	movslq	%esi, %rcx
	movq	-24(%rbp), %rdx
	movq	%rax, 376(%rdx,%rcx,8)
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, -272(%rbp)        # 8-byte Spill
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$5, %esi
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	-272(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_align_options_button_new
	movabsq	$.L.str.10, %rdi
	movl	-84(%rbp), %esi
	movl	%esi, %r8d
	addl	$1, %r8d
	movl	%r8d, -84(%rbp)
	movslq	%esi, %rcx
	movq	-24(%rbp), %rdx
	movq	%rax, 376(%rdx,%rcx,8)
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
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
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -308(%rbp)        # 4-byte Spill
	movl	-308(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.11, %rdi
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, -320(%rbp)        # 8-byte Spill
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$6, %esi
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	-320(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_align_options_button_new
	movabsq	$.L.str.12, %rdi
	movl	-84(%rbp), %esi
	movl	%esi, %r8d
	addl	$1, %r8d
	movl	%r8d, -84(%rbp)
	movslq	%esi, %rcx
	movq	-24(%rbp), %rdx
	movq	%rax, 376(%rdx,%rcx,8)
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, -336(%rbp)        # 8-byte Spill
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$7, %esi
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	-336(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_align_options_button_new
	movabsq	$.L.str.13, %rdi
	movl	-84(%rbp), %esi
	movl	%esi, %r8d
	addl	$1, %r8d
	movl	%r8d, -84(%rbp)
	movslq	%esi, %rcx
	movq	-24(%rbp), %rdx
	movq	%rax, 376(%rdx,%rcx,8)
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, -352(%rbp)        # 8-byte Spill
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$8, %esi
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	-352(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_align_options_button_new
	xorl	%edi, %edi
	movl	$6, %esi
	movl	-84(%rbp), %r8d
	movl	%r8d, %r9d
	addl	$1, %r9d
	movl	%r9d, -84(%rbp)
	movslq	%r8d, %rcx
	movq	-24(%rbp), %rdx
	movq	%rax, 376(%rdx,%rcx,8)
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.14, %rdi
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$9, %esi
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	-376(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_align_options_button_new
	movabsq	$.L.str.15, %rdi
	movl	-84(%rbp), %esi
	movl	%esi, %r8d
	addl	$1, %r8d
	movl	%r8d, -84(%rbp)
	movslq	%esi, %rcx
	movq	-24(%rbp), %rdx
	movq	%rax, 376(%rdx,%rcx,8)
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, -392(%rbp)        # 8-byte Spill
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$10, %esi
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	-392(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_align_options_button_new
	movabsq	$.L.str.16, %rdi
	movl	-84(%rbp), %esi
	movl	%esi, %r8d
	addl	$1, %r8d
	movl	%r8d, -84(%rbp)
	movslq	%esi, %rcx
	movq	-24(%rbp), %rdx
	movq	%rax, 376(%rdx,%rcx,8)
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, -408(%rbp)        # 8-byte Spill
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$11, %esi
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	-408(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_align_options_button_new
	xorl	%edi, %edi
	movl	$6, %esi
	movl	-84(%rbp), %r8d
	movl	%r8d, %r9d
	addl	$1, %r9d
	movl	%r9d, -84(%rbp)
	movslq	%r8d, %rcx
	movq	-24(%rbp), %rdx
	movq	%rax, 376(%rdx,%rcx,8)
	callq	gtk_box_new
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.17, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -436(%rbp)        # 4-byte Spill
	movl	-436(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.18, %rsi
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_1, %xmm1         # xmm1 = mem[0],zero
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	callq	gimp_prop_spin_button_new
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -452(%rbp)        # 4-byte Spill
	movl	-452(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	addq	$464, %rsp              # imm = 0x1D0
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_align_options_gui, .Lfunc_end3-gimp_align_options_gui
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_align_options_button_new,@function
gimp_align_options_button_new:          # @gimp_align_options_button_new
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	$0, -64(%rbp)
	movl	-20(%rbp), %esi
	movl	%esi, %ecx
	movq	%rcx, %rdx
	subq	$11, %rdx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	ja	.LBB4_13
# BB#17:                                # %entry
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	.LJTI4_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB4_1:                                # %sw.bb
	movabsq	$.L.str.28, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB4_15
.LBB4_2:                                # %sw.bb.1
	movabsq	$.L.str.29, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB4_15
.LBB4_3:                                # %sw.bb.2
	movabsq	$.L.str.30, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB4_15
.LBB4_4:                                # %sw.bb.3
	movabsq	$.L.str.31, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB4_15
.LBB4_5:                                # %sw.bb.4
	movabsq	$.L.str.32, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB4_15
.LBB4_6:                                # %sw.bb.5
	movabsq	$.L.str.33, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB4_15
.LBB4_7:                                # %sw.bb.6
	movabsq	$.L.str.28, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB4_15
.LBB4_8:                                # %sw.bb.7
	movabsq	$.L.str.29, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB4_15
.LBB4_9:                                # %sw.bb.8
	movabsq	$.L.str.30, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB4_15
.LBB4_10:                               # %sw.bb.9
	movabsq	$.L.str.31, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB4_15
.LBB4_11:                               # %sw.bb.10
	movabsq	$.L.str.32, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB4_15
.LBB4_12:                               # %sw.bb.11
	movabsq	$.L.str.33, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB4_15
.LBB4_13:                               # %sw.default
	jmp	.LBB4_14
.LBB4_14:                               # %do.body
	movabsq	$.L.str.27, %rdi
	movl	$8, %esi
	movabsq	$.L.str.34, %rdx
	movabsq	$.L.str.25, %rcx
	movl	$232, %r8d
	movabsq	$.L__func__.gimp_align_options_button_new, %r9
	movb	$0, %al
	callq	g_log
	movq	$0, -8(%rbp)
	jmp	.LBB4_16
.LBB4_15:                               # %sw.epilog
	callq	gtk_button_new
	xorl	%esi, %esi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gtk_widget_set_sensitive
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movl	$4, %esi
	movq	-64(%rbp), %rdi
	callq	gtk_image_new_from_stock
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	movl	-100(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_help_set_help_data
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.35, %rsi
	movl	-20(%rbp), %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	g_object_set_data
	movabsq	$.L.str.36, %rsi
	movabsq	$gimp_align_options_button_clicked, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-48(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB4_16:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_align_options_button_new, .Lfunc_end4-gimp_align_options_button_new
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI4_0:
	.quad	.LBB4_1
	.quad	.LBB4_2
	.quad	.LBB4_3
	.quad	.LBB4_4
	.quad	.LBB4_5
	.quad	.LBB4_6
	.quad	.LBB4_7
	.quad	.LBB4_8
	.quad	.LBB4_9
	.quad	.LBB4_10
	.quad	.LBB4_11
	.quad	.LBB4_12

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	-4535124824762089472    # double -262144
.LCPI5_1:
	.quad	4688247212092686336     # double 262144
	.text
	.align	16, 0x90
	.type	gimp_align_options_class_init,@function
gimp_align_options_class_init:          # @gimp_align_options_class_init
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
	pushq	%r14
	pushq	%rbx
	subq	$112, %rsp
.Ltmp18:
	.cfi_offset %rbx, -32
.Ltmp19:
	.cfi_offset %r14, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$gimp_align_options_get_property, %rsi
	movabsq	$gimp_align_options_set_property, %rdi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rdi, 24(%rax)
	movq	-32(%rbp), %rax
	movq	%rsi, 32(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 432(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_alignment_type_get_type
	movabsq	$.L.str.19, %rdi
	movl	$1, %edx
	movl	$432, %ecx              # imm = 0x1B0
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$g_cclosure_marshal_VOID__ENUM, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	movq	-40(%rbp), %r11         # 8-byte Reload
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%r11, %rsi
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%rbx, %r9
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	movq	%r10, -64(%rbp)         # 8-byte Spill
	callq	g_signal_new
	movl	%eax, align_options_signals
	movq	-32(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_align_reference_type_get_type
	movabsq	$.L.str.3, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.20, %rdx
	xorl	%r8d, %r8d
	movl	$487, %r9d              # imm = 0x1E7
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$1, %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.18, %rdi
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.21, %rdx
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI5_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$487, %ecx              # imm = 0x1E7
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_param_spec_double
	movl	$2, %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.22, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.23, %rdx
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI5_1, %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	movl	$487, %ecx              # imm = 0x1E7
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_param_spec_double
	movl	$3, %esi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$112, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_align_options_class_init, .Lfunc_end5-gimp_align_options_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_align_options_set_property,@function
gimp_align_options_set_property:        # @gimp_align_options_set_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_align_options_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB6_1
	jmp	.LBB6_8
.LBB6_8:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB6_2
	jmp	.LBB6_9
.LBB6_9:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB6_3
	jmp	.LBB6_4
.LBB6_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 352(%rdi)
	jmp	.LBB6_7
.LBB6_2:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 360(%rdi)
	jmp	.LBB6_7
.LBB6_3:                                # %sw.bb.5
	movq	-24(%rbp), %rdi
	callq	g_value_get_double
	movq	-40(%rbp), %rdi
	movsd	%xmm0, 368(%rdi)
	jmp	.LBB6_7
.LBB6_4:                                # %sw.default
	jmp	.LBB6_5
.LBB6_5:                                # %do.body
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
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.24, %rdi
	movabsq	$.L.str.25, %rsi
	movl	$137, %edx
	movabsq	$.L.str.26, %rcx
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#6:                                 # %do.end
	jmp	.LBB6_7
.LBB6_7:                                # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_align_options_set_property, .Lfunc_end6-gimp_align_options_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_align_options_get_property,@function
gimp_align_options_get_property:        # @gimp_align_options_get_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_align_options_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB7_1
	jmp	.LBB7_8
.LBB7_8:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB7_2
	jmp	.LBB7_9
.LBB7_9:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB7_3
	jmp	.LBB7_4
.LBB7_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	352(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB7_7
.LBB7_2:                                # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	360(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB7_7
.LBB7_3:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	368(%rax), %xmm0        # xmm0 = mem[0],zero
	callq	g_value_set_double
	jmp	.LBB7_7
.LBB7_4:                                # %sw.default
	jmp	.LBB7_5
.LBB7_5:                                # %do.body
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
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.24, %rdi
	movabsq	$.L.str.25, %rsi
	movl	$165, %edx
	movabsq	$.L.str.26, %rcx
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#6:                                 # %do.end
	jmp	.LBB7_7
.LBB7_7:                                # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_align_options_get_property, .Lfunc_end7-gimp_align_options_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	movl	$.L.str.27, %r9d
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

	.align	16, 0x90
	.type	gimp_align_options_button_clicked,@function
gimp_align_options_button_clicked:      # @gimp_align_options_button_clicked
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
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.35, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	xorl	%edx, %edx
	movl	%eax, %r8d
	movl	%r8d, -20(%rbp)
	movq	-16(%rbp), %rax
	movl	align_options_signals, %esi
	movl	-20(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_align_options_button_clicked, .Lfunc_end9-gimp_align_options_button_clicked
	.cfi_endproc

	.type	gimp_align_options_get_type.g_define_type_id__volatile,@object # @gimp_align_options_get_type.g_define_type_id__volatile
	.local	gimp_align_options_get_type.g_define_type_id__volatile
	.comm	gimp_align_options_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpAlignOptions"
	.size	.L.str, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Align"
	.size	.L.str.1, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Relative to:"
	.size	.L.str.2, 13

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"align-reference"
	.size	.L.str.3, 16

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Align left edge of target"
	.size	.L.str.4, 26

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Align center of target"
	.size	.L.str.5, 23

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Align right edge of target"
	.size	.L.str.6, 27

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Align top edge of target"
	.size	.L.str.7, 25

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Align middle of target"
	.size	.L.str.8, 23

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Align bottom of target"
	.size	.L.str.9, 23

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Distribute"
	.size	.L.str.10, 11

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Distribute left edges of targets"
	.size	.L.str.11, 33

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Distribute horizontal centers of targets"
	.size	.L.str.12, 41

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Distribute right edges of targets"
	.size	.L.str.13, 34

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Distribute top edges of targets"
	.size	.L.str.14, 32

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Distribute vertical centers of targets"
	.size	.L.str.15, 39

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Distribute bottoms of targets"
	.size	.L.str.16, 30

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Offset:"
	.size	.L.str.17, 8

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"offset-x"
	.size	.L.str.18, 9

	.type	gimp_align_options_parent_class,@object # @gimp_align_options_parent_class
	.local	gimp_align_options_parent_class
	.comm	gimp_align_options_parent_class,8,8
	.type	GimpAlignOptions_private_offset,@object # @GimpAlignOptions_private_offset
	.local	GimpAlignOptions_private_offset
	.comm	GimpAlignOptions_private_offset,4,4
	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"align-button-clicked"
	.size	.L.str.19, 21

	.type	align_options_signals,@object # @align_options_signals
	.local	align_options_signals
	.comm	align_options_signals,4,4
	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Reference image object a layer will be aligned on"
	.size	.L.str.20, 50

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Horizontal offset for distribution"
	.size	.L.str.21, 35

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"offset-y"
	.size	.L.str.22, 9

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Vertical offset for distribution"
	.size	.L.str.23, 33

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.24, 54

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gimpalignoptions.c"
	.size	.L.str.25, 19

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"property"
	.size	.L.str.26, 9

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Gimp-Tools"
	.size	.L.str.27, 11

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gimp-gravity-west"
	.size	.L.str.28, 18

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gimp-hcenter"
	.size	.L.str.29, 13

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"gimp-gravity-east"
	.size	.L.str.30, 18

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gimp-gravity-north"
	.size	.L.str.31, 19

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"gimp-vcenter"
	.size	.L.str.32, 13

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"gimp-gravity-south"
	.size	.L.str.33, 19

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"file %s: line %d (%s): should not be reached"
	.size	.L.str.34, 45

	.type	.L__func__.gimp_align_options_button_new,@object # @__func__.gimp_align_options_button_new
.L__func__.gimp_align_options_button_new:
	.asciz	"gimp_align_options_button_new"
	.size	.L__func__.gimp_align_options_button_new, 30

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"align-action"
	.size	.L.str.35, 13

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"clicked"
	.size	.L.str.36, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
