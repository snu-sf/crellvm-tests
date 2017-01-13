	.text
	.file	"gimppageselector.bc"
	.globl	gimp_page_selector_get_type
	.align	16, 0x90
	.type	gimp_page_selector_get_type,@function
gimp_page_selector_get_type:            # @gimp_page_selector_get_type
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
	movq	gimp_page_selector_get_type.g_define_type_id__volatile(%rip), %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	leaq	gimp_page_selector_get_type.g_define_type_id__volatile(%rip), %rax
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
	movl	$872, %edx              # imm = 0x368
	leaq	gimp_page_selector_class_intern_init(%rip), %rdi
	movl	$136, %r8d
	leaq	gimp_page_selector_init(%rip), %rcx
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
	leaq	gimp_page_selector_get_type.g_define_type_id__volatile(%rip), %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave@PLT
.LBB0_4:                                # %if.end
	movq	gimp_page_selector_get_type.g_define_type_id__volatile(%rip), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_page_selector_get_type, .Lfunc_end0-gimp_page_selector_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_page_selector_class_intern_init,@function
gimp_page_selector_class_intern_init:   # @gimp_page_selector_class_intern_init
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
	movq	%rax, gimp_page_selector_parent_class(%rip)
	cmpl	$0, GimpPageSelector_private_offset(%rip)
	je	.LBB1_2
# BB#1:                                 # %if.then
	leaq	GimpPageSelector_private_offset(%rip), %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset@PLT
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_page_selector_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_page_selector_class_intern_init, .Lfunc_end1-gimp_page_selector_class_intern_init
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_0:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	gimp_page_selector_init,@function
gimp_page_selector_init:                # @gimp_page_selector_init
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
	subq	$416, %rsp              # imm = 0x1A0
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_page_selector_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private@PLT
	movq	-8(%rbp), %rsi
	movq	%rax, 128(%rsi)
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movq	-16(%rbp), %rax
	movl	$0, 4(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_orientable_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_orientable_set_orientation@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_spacing@PLT
	movl	$1, %edi
	movl	$2, %esi
	callq	gtk_box_new@PLT
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start@PLT
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gtk_scrolled_window_new@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_scrolled_window_set_shadow_type@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$2, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	gtk_scrolled_window_set_policy@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start@PLT
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show@PLT
	callq	gdk_pixbuf_get_type@PLT
	movl	$4, %edi
	movl	$24, %ecx
	movl	%ecx, %esi
	movl	$64, %ecx
                                        # kill: RCX<def> ECX<kill>
	movl	$20, %edx
	movl	%edx, %r8d
	movq	%rax, %rdx
	movb	$0, %al
	callq	gtk_list_store_new@PLT
	movq	-16(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type@PLT
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_icon_view_new_with_model@PLT
	movq	-16(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_icon_view_get_type@PLT
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_icon_view_set_text_column@PLT
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_icon_view_get_type@PLT
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_icon_view_set_pixbuf_column@PLT
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_icon_view_get_type@PLT
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$3, %esi
	movq	%rax, %rdi
	callq	gtk_icon_view_set_selection_mode@PLT
	movq	-32(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type@PLT
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add@PLT
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.15(%rip), %rsi
	leaq	gimp_page_selector_selection_changed(%rip), %rax
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-176(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data@PLT
	leaq	.L.str.20(%rip), %rsi
	leaq	gimp_page_selector_item_activated(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data@PLT
	leaq	.L.str.4(%rip), %rdi
	leaq	.L.str.21(%rip), %rsi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	movq	%rax, %rdi
	callq	gtk_label_new@PLT
	movq	-16(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type@PLT
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorps	%xmm0, %xmm0
	movss	.LCPI2_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment@PLT
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$3, %esi
	movl	$2, %edx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_label_set_attributes@PLT
	movq	-24(%rbp), %rdi
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -228(%rbp)        # 4-byte Spill
	movl	-228(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	gtk_widget_show@PLT
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new@PLT
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -244(%rbp)        # 4-byte Spill
	movl	-244(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show@PLT
	xorl	%edi, %edi
	callq	gtk_button_box_new@PLT
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -260(%rbp)        # 4-byte Spill
	movl	-260(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.4(%rip), %rdi
	leaq	.L.str.22(%rip), %rsi
	callq	dgettext@PLT
	movq	%rax, %rdi
	callq	gtk_button_new_with_mnemonic@PLT
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -276(%rbp)        # 4-byte Spill
	movl	-276(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.23(%rip), %rsi
	movq	gimp_page_selector_select_all@GOTPCREL(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-56(%rbp), %rdi
	movq	-8(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data@PLT
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_entry_new@PLT
	movl	$80, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gtk_widget_set_size_request@PLT
	movq	-40(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rsi
	movq	%rax, %rdi
	movl	%edx, -300(%rbp)        # 4-byte Spill
	movl	-300(%rbp), %ecx        # 4-byte Reload
	callq	gtk_box_pack_end@PLT
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.24(%rip), %rsi
	leaq	gimp_page_selector_range_focus_out(%rip), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	-8(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data@PLT
	leaq	.L.str.16(%rip), %rsi
	leaq	gimp_page_selector_range_activate(%rip), %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-312(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data@PLT
	leaq	.L.str.4(%rip), %rdi
	leaq	.L.str.25(%rip), %rsi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	dgettext@PLT
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic@PLT
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_end@PLT
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movq	-64(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-16(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget@PLT
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new@PLT
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -356(%rbp)        # 4-byte Spill
	movl	-356(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show@PLT
	leaq	.L.str.4(%rip), %rdi
	leaq	.L.str.26(%rip), %rsi
	callq	dgettext@PLT
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic@PLT
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -372(%rbp)        # 4-byte Spill
	movl	-372(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.8(%rip), %rsi
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gimp_prop_enum_combo_box_new@PLT
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type@PLT
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -388(%rbp)        # 4-byte Spill
	movl	-388(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start@PLT
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show@PLT
	movq	-64(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.27(%rip), %rsi
	movl	$5, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	callq	gtk_widget_render_icon@PLT
	movq	-16(%rbp), %rcx
	movq	%rax, 40(%rcx)
	addq	$416, %rsp              # imm = 0x1A0
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_page_selector_init, .Lfunc_end2-gimp_page_selector_init
	.cfi_endproc

	.globl	gimp_page_selector_new
	.align	16, 0x90
	.type	gimp_page_selector_new,@function
gimp_page_selector_new:                 # @gimp_page_selector_new
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
	callq	gimp_page_selector_get_type@PLT
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new@PLT
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_page_selector_new, .Lfunc_end3-gimp_page_selector_new
	.cfi_endproc

	.globl	gimp_page_selector_set_n_pages
	.align	16, 0x90
	.type	gimp_page_selector_set_n_pages,@function
gimp_page_selector_set_n_pages:         # @gimp_page_selector_set_n_pages
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
	pushq	%rbx
	subq	$168, %rsp
.Ltmp15:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_page_selector_get_type@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -52(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_page_selector_set_n_pages(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_30
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	cmpl	$0, -20(%rbp)
	jl	.LBB4_15
# BB#14:                                # %if.then.13
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.14
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_page_selector_set_n_pages(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB4_30
.LBB4_16:                               # %if.end.15
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.16
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	-20(%rbp), %ecx
	movq	-32(%rbp), %rax
	cmpl	(%rax), %ecx
	je	.LBB4_30
# BB#18:                                # %if.then.20
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB4_24
# BB#19:                                # %if.then.25
	movl	-20(%rbp), %eax
	movl	%eax, -92(%rbp)
.LBB4_20:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-92(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB4_23
# BB#21:                                # %for.body
                                        #   in Loop: Header=BB4_20 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-88(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	-20(%rbp), %ecx
	movq	%rax, %rdi
	callq	gtk_tree_model_iter_nth_child@PLT
	leaq	-88(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	8(%rdx), %rdi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	gtk_list_store_remove@PLT
	movl	%eax, -120(%rbp)        # 4-byte Spill
# BB#22:                                # %for.inc
                                        #   in Loop: Header=BB4_20 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB4_20
.LBB4_23:                               # %for.end
	jmp	.LBB4_29
.LBB4_24:                               # %if.else.33
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -92(%rbp)
.LBB4_25:                               # %for.cond.35
                                        # =>This Inner Loop Header: Depth=1
	movl	-92(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB4_28
# BB#26:                                # %for.body.37
                                        #   in Loop: Header=BB4_25 Depth=1
	leaq	.L.str.4(%rip), %rdi
	leaq	.L.str.5(%rip), %rsi
	callq	dgettext@PLT
	movl	-92(%rbp), %ecx
	addl	$1, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movb	$0, %al
	callq	g_strdup_printf@PLT
	leaq	-88(%rbp), %rsi
	movq	%rax, -104(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gtk_list_store_append@PLT
	leaq	-88(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %r8d
	movl	$2, %ecx
	movl	$3, %r9d
	movl	$4294967295, %r10d      # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	movl	-92(%rbp), %r11d
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	-104(%rbp), %rbx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	movl	%r11d, %ecx
	movl	%r9d, -128(%rbp)        # 4-byte Spill
	movq	%rax, %r9
	movl	$2, (%rsp)
	movq	%rbx, 8(%rsp)
	movl	$3, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	$-1, 32(%rsp)
	movb	$0, %al
	movl	%r10d, -132(%rbp)       # 4-byte Spill
	callq	gtk_list_store_set@PLT
	movq	-104(%rbp), %rdi
	callq	g_free@PLT
# BB#27:                                # %for.inc.43
                                        #   in Loop: Header=BB4_25 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB4_25
.LBB4_28:                               # %for.end.45
	jmp	.LBB4_29
.LBB4_29:                               # %if.end.46
	movl	$80, %eax
	movl	%eax, %esi
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.6(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_notify@PLT
.LBB4_30:                               # %if.end.49
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_page_selector_set_n_pages, .Lfunc_end4-gimp_page_selector_set_n_pages
	.cfi_endproc

	.globl	gimp_page_selector_get_n_pages
	.align	16, 0x90
	.type	gimp_page_selector_get_n_pages,@function
gimp_page_selector_get_n_pages:         # @gimp_page_selector_get_n_pages
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_page_selector_get_type@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -44(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_page_selector_get_n_pages(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB5_13
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB5_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_page_selector_get_n_pages, .Lfunc_end5-gimp_page_selector_get_n_pages
	.cfi_endproc

	.globl	gimp_page_selector_set_target
	.align	16, 0x90
	.type	gimp_page_selector_set_target,@function
gimp_page_selector_set_target:          # @gimp_page_selector_set_target
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_page_selector_get_type@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -44(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_page_selector_set_target(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB6_19
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	cmpl	$1, -12(%rbp)
	ja	.LBB6_15
# BB#14:                                # %if.then.13
	jmp	.LBB6_16
.LBB6_15:                               # %if.else.14
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_page_selector_set_target(%rip), %rsi
	leaq	.L.str.7(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB6_19
.LBB6_16:                               # %if.end.15
	jmp	.LBB6_17
.LBB6_17:                               # %do.end.16
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %ecx
	movq	-24(%rbp), %rax
	cmpl	4(%rax), %ecx
	je	.LBB6_19
# BB#18:                                # %if.then.20
	movl	$80, %eax
	movl	%eax, %esi
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 4(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.8(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_notify@PLT
.LBB6_19:                               # %if.end.23
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_page_selector_set_target, .Lfunc_end6-gimp_page_selector_set_target
	.cfi_endproc

	.globl	gimp_page_selector_get_target
	.align	16, 0x90
	.type	gimp_page_selector_get_target,@function
gimp_page_selector_get_target:          # @gimp_page_selector_get_target
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_page_selector_get_type@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -44(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_page_selector_get_target(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB7_13
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB7_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_page_selector_get_target, .Lfunc_end7-gimp_page_selector_get_target
	.cfi_endproc

	.globl	gimp_page_selector_set_page_thumbnail
	.align	16, 0x90
	.type	gimp_page_selector_set_page_thumbnail,@function
gimp_page_selector_set_page_thumbnail:  # @gimp_page_selector_set_page_thumbnail
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_page_selector_get_type@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -84(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_page_selector_set_page_thumbnail(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB8_35
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	jmp	.LBB8_13
.LBB8_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB8_22
# BB#14:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gdk_pixbuf_get_type@PLT
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB8_16
# BB#15:                                # %if.then.21
	movl	$0, -108(%rbp)
	jmp	.LBB8_21
.LBB8_16:                               # %if.else.22
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_19
# BB#17:                                # %land.lhs.true.25
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB8_19
# BB#18:                                # %if.then.29
	movl	$1, -108(%rbp)
	jmp	.LBB8_20
.LBB8_19:                               # %if.else.30
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -108(%rbp)
.LBB8_20:                               # %if.end.32
	jmp	.LBB8_21
.LBB8_21:                               # %if.end.33
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB8_23
.LBB8_22:                               # %if.then.36
	jmp	.LBB8_24
.LBB8_23:                               # %if.else.37
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_page_selector_set_page_thumbnail(%rip), %rsi
	leaq	.L.str.9(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB8_35
.LBB8_24:                               # %if.end.38
	jmp	.LBB8_25
.LBB8_25:                               # %do.end.39
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -32(%rbp)
# BB#26:                                # %do.body.41
	cmpl	$0, -12(%rbp)
	jl	.LBB8_29
# BB#27:                                # %land.lhs.true.43
	movl	-12(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB8_29
# BB#28:                                # %if.then.45
	jmp	.LBB8_30
.LBB8_29:                               # %if.else.46
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_page_selector_set_page_thumbnail(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB8_35
.LBB8_30:                               # %if.end.47
	jmp	.LBB8_31
.LBB8_31:                               # %do.end.48
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-64(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	-12(%rbp), %ecx
	movq	%rax, %rdi
	callq	gtk_tree_model_iter_nth_child@PLT
	cmpq	$0, -24(%rbp)
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jne	.LBB8_33
# BB#32:                                # %if.then.53
	movq	-32(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_ref@PLT
	movq	%rax, -24(%rbp)
	jmp	.LBB8_34
.LBB8_33:                               # %if.else.55
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_page_selector_add_frame
	movq	%rax, -24(%rbp)
.LBB8_34:                               # %if.end.59
	leaq	-64(%rbp), %rsi
	movl	$1, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-24(%rbp), %rcx
	movb	$0, %al
	callq	gtk_list_store_set@PLT
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref@PLT
.LBB8_35:                               # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_page_selector_set_page_thumbnail, .Lfunc_end8-gimp_page_selector_set_page_thumbnail
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_page_selector_add_frame,@function
gimp_page_selector_add_frame:           # @gimp_page_selector_add_frame
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gdk_pixbuf_get_width@PLT
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	gdk_pixbuf_get_height@PLT
	movl	$80, %ecx
	movl	%ecx, %esi
	movl	%eax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.34(%rip), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	leaq	.L.str.35(%rip), %rsi
	movl	$6, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	callq	gtk_widget_render_icon@PLT
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.34(%rip), %rsi
	movq	g_object_unref@GOTPCREL(%rip), %rcx
	movq	-24(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-40(%rbp), %rdx         # 8-byte Reload
	callq	g_object_set_data_full@PLT
.LBB9_2:                                # %if.end
	movl	$2, %eax
	movl	$4, %ecx
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %edx
	addl	$2, %edx
	addl	$4, %edx
	movl	-32(%rbp), %esi
	addl	$2, %esi
	addl	$4, %esi
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movl	%eax, %esi
	movl	%edx, -48(%rbp)         # 4-byte Spill
	movl	%eax, %edx
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	movl	-52(%rbp), %r8d         # 4-byte Reload
	movl	-48(%rbp), %r9d         # 4-byte Reload
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, (%rsp)
	callq	stretch_frame_image
	xorl	%ecx, %ecx
	movl	$2, %edx
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %r8d
	movq	-24(%rbp), %r9
	movl	%esi, -56(%rbp)         # 4-byte Spill
	movl	%ecx, %esi
	movl	%edx, -60(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-56(%rbp), %ecx         # 4-byte Reload
	movl	$2, (%rsp)
	movl	$2, 8(%rsp)
	callq	gdk_pixbuf_copy_area@PLT
	movq	-24(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_page_selector_add_frame, .Lfunc_end9-gimp_page_selector_add_frame
	.cfi_endproc

	.globl	gimp_page_selector_get_page_thumbnail
	.align	16, 0x90
	.type	gimp_page_selector_get_page_thumbnail,@function
gimp_page_selector_get_page_thumbnail:  # @gimp_page_selector_get_page_thumbnail
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_page_selector_get_type@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -92(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_page_selector_get_page_thumbnail(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB10_23
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -32(%rbp)
# BB#13:                                # %do.body.12
	cmpl	$0, -20(%rbp)
	jl	.LBB10_16
# BB#14:                                # %land.lhs.true.14
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB10_16
# BB#15:                                # %if.then.16
	jmp	.LBB10_17
.LBB10_16:                              # %if.else.17
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_page_selector_get_page_thumbnail(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB10_23
.LBB10_17:                              # %if.end.18
	jmp	.LBB10_18
.LBB10_18:                              # %do.end.19
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-72(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	-20(%rbp), %ecx
	movq	%rax, %rdi
	callq	gtk_tree_model_iter_nth_child@PLT
	movq	-32(%rbp), %rdx
	movq	8(%rdx), %rdx
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-72(%rbp), %rsi
	movl	$1, %edx
	leaq	-40(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_tree_model_get@PLT
	cmpq	$0, -40(%rbp)
	je	.LBB10_20
# BB#19:                                # %if.then.27
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref@PLT
.LBB10_20:                              # %if.end.28
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	40(%rcx), %rax
	jne	.LBB10_22
# BB#21:                                # %if.then.30
	movq	$0, -8(%rbp)
	jmp	.LBB10_23
.LBB10_22:                              # %if.end.31
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB10_23:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_page_selector_get_page_thumbnail, .Lfunc_end10-gimp_page_selector_get_page_thumbnail
	.cfi_endproc

	.globl	gimp_page_selector_set_page_label
	.align	16, 0x90
	.type	gimp_page_selector_set_page_label,@function
gimp_page_selector_set_page_label:      # @gimp_page_selector_set_page_label
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_page_selector_get_type@PLT
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.6
	movl	$1, -92(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.7
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -92(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.9
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.12
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.13
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_page_selector_set_page_label(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB11_23
.LBB11_11:                              # %if.end.14
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -32(%rbp)
# BB#13:                                # %do.body.16
	cmpl	$0, -12(%rbp)
	jl	.LBB11_16
# BB#14:                                # %land.lhs.true.18
	movl	-12(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB11_16
# BB#15:                                # %if.then.20
	jmp	.LBB11_17
.LBB11_16:                              # %if.else.21
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_page_selector_set_page_label(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB11_23
.LBB11_17:                              # %if.end.22
	jmp	.LBB11_18
.LBB11_18:                              # %do.end.23
	cmpq	$0, -24(%rbp)
	jne	.LBB11_20
# BB#19:                                # %if.then.25
	leaq	.L.str.4(%rip), %rdi
	leaq	.L.str.5(%rip), %rsi
	callq	dgettext@PLT
	movl	-12(%rbp), %ecx
	addl	$1, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movb	$0, %al
	callq	g_strdup_printf@PLT
	movq	%rax, -72(%rbp)
	jmp	.LBB11_21
.LBB11_20:                              # %if.else.28
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB11_21:                              # %if.end.29
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-64(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	-12(%rbp), %ecx
	movq	%rax, %rdi
	callq	gtk_tree_model_iter_nth_child@PLT
	leaq	-64(%rbp), %rsi
	movl	$2, %edx
	movl	$3, %r8d
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	-72(%rbp), %r9
	cmpq	$0, -24(%rbp)
	setne	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %r11d
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	movq	%r9, %rcx
	movl	%r11d, %r9d
	movl	$-1, (%rsp)
	movl	%eax, -112(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gtk_list_store_set@PLT
	cmpq	$0, -24(%rbp)
	jne	.LBB11_23
# BB#22:                                # %if.then.36
	movq	-72(%rbp), %rdi
	callq	g_free@PLT
.LBB11_23:                              # %if.end.37
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_page_selector_set_page_label, .Lfunc_end11-gimp_page_selector_set_page_label
	.cfi_endproc

	.globl	gimp_page_selector_get_page_label
	.align	16, 0x90
	.type	gimp_page_selector_get_page_label,@function
gimp_page_selector_get_page_label:      # @gimp_page_selector_get_page_label
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_page_selector_get_type@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -100(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -100(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_page_selector_get_page_label(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB12_21
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -32(%rbp)
# BB#13:                                # %do.body.12
	cmpl	$0, -20(%rbp)
	jl	.LBB12_16
# BB#14:                                # %land.lhs.true.14
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB12_16
# BB#15:                                # %if.then.16
	jmp	.LBB12_17
.LBB12_16:                              # %if.else.17
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_page_selector_get_page_label(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB12_21
.LBB12_17:                              # %if.end.18
	jmp	.LBB12_18
.LBB12_18:                              # %do.end.19
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-64(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	-20(%rbp), %ecx
	movq	%rax, %rdi
	callq	gtk_tree_model_iter_nth_child@PLT
	movq	-32(%rbp), %rdx
	movq	8(%rdx), %rdx
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type@PLT
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-64(%rbp), %rsi
	movl	$2, %edx
	leaq	-72(%rbp), %rcx
	movl	$3, %r8d
	leaq	-76(%rbp), %r9
	movl	$4294967295, %r10d      # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movl	$-1, (%rsp)
	movb	$0, %al
	movl	%r10d, -132(%rbp)       # 4-byte Spill
	callq	gtk_tree_model_get@PLT
	cmpl	$0, -76(%rbp)
	jne	.LBB12_20
# BB#19:                                # %if.then.27
	movq	-72(%rbp), %rdi
	callq	g_free@PLT
	movq	$0, -72(%rbp)
.LBB12_20:                              # %if.end.28
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB12_21:                              # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_page_selector_get_page_label, .Lfunc_end12-gimp_page_selector_get_page_label
	.cfi_endproc

	.globl	gimp_page_selector_select_all
	.align	16, 0x90
	.type	gimp_page_selector_select_all,@function
gimp_page_selector_select_all:          # @gimp_page_selector_select_all
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_page_selector_get_type@PLT
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
	leaq	.L__func__.gimp_page_selector_select_all(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB13_13
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_icon_view_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_icon_view_select_all@PLT
.LBB13_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_page_selector_select_all, .Lfunc_end13-gimp_page_selector_select_all
	.cfi_endproc

	.globl	gimp_page_selector_unselect_all
	.align	16, 0x90
	.type	gimp_page_selector_unselect_all,@function
gimp_page_selector_unselect_all:        # @gimp_page_selector_unselect_all
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_page_selector_get_type@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -36(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_page_selector_unselect_all(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB14_13
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_icon_view_get_type@PLT
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_icon_view_unselect_all@PLT
.LBB14_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_page_selector_unselect_all, .Lfunc_end14-gimp_page_selector_unselect_all
	.cfi_endproc

	.globl	gimp_page_selector_select_page
	.align	16, 0x90
	.type	gimp_page_selector_select_page,@function
gimp_page_selector_select_page:         # @gimp_page_selector_select_page
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_page_selector_get_type@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -84(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_page_selector_select_page(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB15_19
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -24(%rbp)
# BB#13:                                # %do.body.12
	cmpl	$0, -12(%rbp)
	jl	.LBB15_16
# BB#14:                                # %land.lhs.true.14
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB15_16
# BB#15:                                # %if.then.16
	jmp	.LBB15_17
.LBB15_16:                              # %if.else.17
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_page_selector_select_page(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB15_19
.LBB15_17:                              # %if.end.18
	jmp	.LBB15_18
.LBB15_18:                              # %do.end.19
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-56(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	-12(%rbp), %ecx
	movq	%rax, %rdi
	callq	gtk_tree_model_iter_nth_child@PLT
	movq	-24(%rbp), %rdx
	movq	8(%rdx), %rdx
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_model_get_path@PLT
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_icon_view_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_icon_view_select_path@PLT
	movq	-64(%rbp), %rdi
	callq	gtk_tree_path_free@PLT
.LBB15_19:                              # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_page_selector_select_page, .Lfunc_end15-gimp_page_selector_select_page
	.cfi_endproc

	.globl	gimp_page_selector_unselect_page
	.align	16, 0x90
	.type	gimp_page_selector_unselect_page,@function
gimp_page_selector_unselect_page:       # @gimp_page_selector_unselect_page
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_page_selector_get_type@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB16_8
.LBB16_3:                               # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -84(%rbp)
.LBB16_7:                               # %if.end
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.8
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_page_selector_unselect_page(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB16_19
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -24(%rbp)
# BB#13:                                # %do.body.12
	cmpl	$0, -12(%rbp)
	jl	.LBB16_16
# BB#14:                                # %land.lhs.true.14
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB16_16
# BB#15:                                # %if.then.16
	jmp	.LBB16_17
.LBB16_16:                              # %if.else.17
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_page_selector_unselect_page(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB16_19
.LBB16_17:                              # %if.end.18
	jmp	.LBB16_18
.LBB16_18:                              # %do.end.19
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-56(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	-12(%rbp), %ecx
	movq	%rax, %rdi
	callq	gtk_tree_model_iter_nth_child@PLT
	movq	-24(%rbp), %rdx
	movq	8(%rdx), %rdx
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_model_get_path@PLT
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_icon_view_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_icon_view_unselect_path@PLT
	movq	-64(%rbp), %rdi
	callq	gtk_tree_path_free@PLT
.LBB16_19:                              # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_page_selector_unselect_page, .Lfunc_end16-gimp_page_selector_unselect_page
	.cfi_endproc

	.globl	gimp_page_selector_page_is_selected
	.align	16, 0x90
	.type	gimp_page_selector_page_is_selected,@function
gimp_page_selector_page_is_selected:    # @gimp_page_selector_page_is_selected
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_page_selector_get_type@PLT
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB17_3
# BB#2:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB17_8
.LBB17_3:                               # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB17_6
# BB#5:                                 # %if.then.3
	movl	$1, -100(%rbp)
	jmp	.LBB17_7
.LBB17_6:                               # %if.else.4
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -100(%rbp)
.LBB17_7:                               # %if.end
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.6
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB17_10
# BB#9:                                 # %if.then.8
	jmp	.LBB17_11
.LBB17_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_page_selector_page_is_selected(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB17_19
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -32(%rbp)
# BB#13:                                # %do.body.12
	cmpl	$0, -20(%rbp)
	jl	.LBB17_16
# BB#14:                                # %land.lhs.true.14
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB17_16
# BB#15:                                # %if.then.16
	jmp	.LBB17_17
.LBB17_16:                              # %if.else.17
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_page_selector_page_is_selected(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB17_19
.LBB17_17:                              # %if.end.18
	jmp	.LBB17_18
.LBB17_18:                              # %do.end.19
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-64(%rbp), %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	-20(%rbp), %ecx
	movq	%rax, %rdi
	callq	gtk_tree_model_iter_nth_child@PLT
	movq	-32(%rbp), %rdx
	movq	8(%rdx), %rdx
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type@PLT
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_tree_model_get_path@PLT
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_icon_view_get_type@PLT
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_icon_view_path_is_selected@PLT
	movl	%eax, -76(%rbp)
	movq	-72(%rbp), %rdi
	callq	gtk_tree_path_free@PLT
	movl	-76(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB17_19:                              # %return
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_page_selector_page_is_selected, .Lfunc_end17-gimp_page_selector_page_is_selected
	.cfi_endproc

	.globl	gimp_page_selector_get_selected_pages
	.align	16, 0x90
	.type	gimp_page_selector_get_selected_pages,@function
gimp_page_selector_get_selected_pages:  # @gimp_page_selector_get_selected_pages
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_page_selector_get_type@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB18_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB18_8
.LBB18_3:                               # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB18_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB18_7
.LBB18_6:                               # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -84(%rbp)
.LBB18_7:                               # %if.end
	jmp	.LBB18_8
.LBB18_8:                               # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB18_10
# BB#9:                                 # %if.then.8
	jmp	.LBB18_11
.LBB18_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_page_selector_get_selected_pages(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB18_25
.LBB18_11:                              # %if.end.10
	jmp	.LBB18_12
.LBB18_12:                              # %do.end
	jmp	.LBB18_13
.LBB18_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB18_15
# BB#14:                                # %if.then.13
	jmp	.LBB18_16
.LBB18_15:                              # %if.else.14
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_page_selector_get_selected_pages(%rip), %rsi
	leaq	.L.str.11(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB18_25
.LBB18_16:                              # %if.end.15
	jmp	.LBB18_17
.LBB18_17:                              # %do.end.16
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_icon_view_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_icon_view_get_selected_items@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_list_length@PLT
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rdi
	movl	%eax, (%rdi)
	movq	-24(%rbp), %rdi
	movslq	(%rdi), %rdi
	callq	g_malloc0_n@PLT
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -60(%rbp)
.LBB18_18:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB18_24
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB18_18 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	gtk_tree_path_get_indices@PLT
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movl	(%rax), %ecx
	movslq	-60(%rbp), %rax
	movq	-56(%rbp), %rdi
	movl	%ecx, (%rdi,%rax,4)
# BB#20:                                # %for.inc
                                        #   in Loop: Header=BB18_18 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB18_22
# BB#21:                                # %cond.true
                                        #   in Loop: Header=BB18_18 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB18_23
.LBB18_22:                              # %cond.false
                                        #   in Loop: Header=BB18_18 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB18_23
.LBB18_23:                              # %cond.end
                                        #   in Loop: Header=BB18_18 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	movl	-60(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -60(%rbp)
	jmp	.LBB18_18
.LBB18_24:                              # %for.end
	movl	$4, %eax
	movl	%eax, %edx
	leaq	gimp_page_selector_int_compare(%rip), %rcx
	movq	-56(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movslq	(%rdi), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-120(%rbp), %rsi        # 8-byte Reload
	callq	qsort@PLT
	movq	gtk_tree_path_free@GOTPCREL(%rip), %rcx
	movq	-40(%rbp), %rdi
	movq	%rcx, %rsi
	callq	g_list_free_full@PLT
	movq	-56(%rbp), %rcx
	movq	%rcx, -8(%rbp)
.LBB18_25:                              # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_page_selector_get_selected_pages, .Lfunc_end18-gimp_page_selector_get_selected_pages
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_page_selector_int_compare,@function
gimp_page_selector_int_compare:         # @gimp_page_selector_int_compare
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movl	(%rsi), %eax
	movq	-16(%rbp), %rsi
	subl	(%rsi), %eax
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_page_selector_int_compare, .Lfunc_end19-gimp_page_selector_int_compare
	.cfi_endproc

	.globl	gimp_page_selector_select_range
	.align	16, 0x90
	.type	gimp_page_selector_select_range,@function
gimp_page_selector_select_range:        # @gimp_page_selector_select_range
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_page_selector_get_type@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB20_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB20_8
.LBB20_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB20_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB20_7
.LBB20_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -52(%rbp)
.LBB20_7:                               # %if.end
	jmp	.LBB20_8
.LBB20_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB20_10
# BB#9:                                 # %if.then.8
	jmp	.LBB20_11
.LBB20_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_page_selector_select_range(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB20_49
.LBB20_11:                              # %if.end.10
	jmp	.LBB20_12
.LBB20_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB20_14
# BB#13:                                # %if.then.13
	leaq	.L.str.12(%rip), %rax
	movq	%rax, -16(%rbp)
.LBB20_14:                              # %if.end.14
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	gimp_page_selector_selection_changed(%rip), %rdx
	movq	-24(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-120(%rbp), %r10        # 8-byte Reload
	movq	%r9, -128(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-128(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched@PLT
	movq	-8(%rbp), %rdi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	gimp_page_selector_unselect_all@PLT
	leaq	.L.str.13(%rip), %rsi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rdi
	callq	g_strsplit@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB20_48
# BB#15:                                # %if.then.18
	movl	$0, -60(%rbp)
.LBB20_16:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_35 Depth 2
	movslq	-60(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB20_47
# BB#17:                                # %for.body
                                        #   in Loop: Header=BB20_16 Depth=1
	movslq	-60(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	g_strchug@PLT
	movq	%rax, %rdi
	callq	g_strchomp@PLT
	movl	$45, %esi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	strchr@PLT
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB20_40
# BB#18:                                # %if.then.30
                                        #   in Loop: Header=BB20_16 Depth=1
	movl	$-1, -100(%rbp)
	movl	$-1, -104(%rbp)
	movq	-80(%rbp), %rax
	movb	$0, (%rax)
	movq	-72(%rbp), %rdi
	callq	g_strchug@PLT
	movq	%rax, %rdi
	callq	g_strchomp@PLT
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rdi
	callq	g_strchug@PLT
	movq	%rax, %rdi
	callq	g_strchomp@PLT
	leaq	.L.str.14(%rip), %rsi
	leaq	-100(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rdi
	movb	$0, %al
	callq	__isoc99_sscanf@PLT
	cmpl	$1, %eax
	je	.LBB20_21
# BB#19:                                # %land.lhs.true.41
                                        #   in Loop: Header=BB20_16 Depth=1
	movq	-88(%rbp), %rdi
	callq	strlen@PLT
	cmpq	$0, %rax
	jne	.LBB20_21
# BB#20:                                # %if.then.44
                                        #   in Loop: Header=BB20_16 Depth=1
	movl	$1, -100(%rbp)
.LBB20_21:                              # %if.end.45
                                        #   in Loop: Header=BB20_16 Depth=1
	leaq	.L.str.14(%rip), %rsi
	leaq	-104(%rbp), %rdx
	movq	-96(%rbp), %rdi
	movb	$0, %al
	callq	__isoc99_sscanf@PLT
	cmpl	$1, %eax
	je	.LBB20_24
# BB#22:                                # %land.lhs.true.48
                                        #   in Loop: Header=BB20_16 Depth=1
	movq	-96(%rbp), %rdi
	callq	strlen@PLT
	cmpq	$0, %rax
	jne	.LBB20_24
# BB#23:                                # %if.then.51
                                        #   in Loop: Header=BB20_16 Depth=1
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -104(%rbp)
.LBB20_24:                              # %if.end.52
                                        #   in Loop: Header=BB20_16 Depth=1
	cmpl	$0, -100(%rbp)
	jle	.LBB20_39
# BB#25:                                # %land.lhs.true.54
                                        #   in Loop: Header=BB20_16 Depth=1
	cmpl	$0, -104(%rbp)
	jle	.LBB20_39
# BB#26:                                # %land.lhs.true.56
                                        #   in Loop: Header=BB20_16 Depth=1
	movl	-100(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jg	.LBB20_39
# BB#27:                                # %land.lhs.true.58
                                        #   in Loop: Header=BB20_16 Depth=1
	movl	-100(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	(%rcx), %eax
	jg	.LBB20_39
# BB#28:                                # %if.then.61
                                        #   in Loop: Header=BB20_16 Depth=1
	cmpl	$1, -100(%rbp)
	jle	.LBB20_30
# BB#29:                                # %cond.true
                                        #   in Loop: Header=BB20_16 Depth=1
	movl	-100(%rbp), %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB20_31
.LBB20_30:                              # %cond.false
                                        #   in Loop: Header=BB20_16 Depth=1
	movl	$1, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB20_31
.LBB20_31:                              # %cond.end
                                        #   in Loop: Header=BB20_16 Depth=1
	movl	-136(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -100(%rbp)
	movl	-104(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB20_33
# BB#32:                                # %cond.true.66
                                        #   in Loop: Header=BB20_16 Depth=1
	movl	-104(%rbp), %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB20_34
.LBB20_33:                              # %cond.false.67
                                        #   in Loop: Header=BB20_16 Depth=1
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
.LBB20_34:                              # %cond.end.69
                                        #   in Loop: Header=BB20_16 Depth=1
	movl	-140(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -104(%rbp)
	movl	-100(%rbp), %eax
	movl	%eax, -108(%rbp)
.LBB20_35:                              # %for.cond.72
                                        #   Parent Loop BB20_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-108(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jg	.LBB20_38
# BB#36:                                # %for.body.74
                                        #   in Loop: Header=BB20_35 Depth=2
	movq	-8(%rbp), %rdi
	movl	-108(%rbp), %esi
	callq	gimp_page_selector_select_page@PLT
# BB#37:                                # %for.inc
                                        #   in Loop: Header=BB20_35 Depth=2
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB20_35
.LBB20_38:                              # %for.end
                                        #   in Loop: Header=BB20_16 Depth=1
	jmp	.LBB20_39
.LBB20_39:                              # %if.end.75
                                        #   in Loop: Header=BB20_16 Depth=1
	jmp	.LBB20_45
.LBB20_40:                              # %if.else.76
                                        #   in Loop: Header=BB20_16 Depth=1
	leaq	.L.str.14(%rip), %rsi
	leaq	-112(%rbp), %rdx
	movq	-72(%rbp), %rdi
	movb	$0, %al
	callq	__isoc99_sscanf@PLT
	cmpl	$1, %eax
	jne	.LBB20_44
# BB#41:                                # %land.lhs.true.81
                                        #   in Loop: Header=BB20_16 Depth=1
	cmpl	$1, -112(%rbp)
	jl	.LBB20_44
# BB#42:                                # %land.lhs.true.83
                                        #   in Loop: Header=BB20_16 Depth=1
	movl	-112(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	(%rcx), %eax
	jg	.LBB20_44
# BB#43:                                # %if.then.86
                                        #   in Loop: Header=BB20_16 Depth=1
	movq	-8(%rbp), %rdi
	movl	-112(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %esi
	callq	gimp_page_selector_select_page@PLT
.LBB20_44:                              # %if.end.88
                                        #   in Loop: Header=BB20_16 Depth=1
	jmp	.LBB20_45
.LBB20_45:                              # %if.end.89
                                        #   in Loop: Header=BB20_16 Depth=1
	jmp	.LBB20_46
.LBB20_46:                              # %for.inc.90
                                        #   in Loop: Header=BB20_16 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB20_16
.LBB20_47:                              # %for.end.92
	movq	-32(%rbp), %rdi
	callq	g_strfreev@PLT
.LBB20_48:                              # %if.end.93
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	gimp_page_selector_selection_changed(%rip), %rdx
	movq	-24(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-152(%rbp), %r10        # 8-byte Reload
	movq	%r9, -160(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-160(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_unblock_matched@PLT
	movq	-24(%rbp), %rdi
	movq	16(%rdi), %rdi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	callq	gtk_icon_view_get_type@PLT
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_page_selector_selection_changed
.LBB20_49:                              # %return
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_page_selector_select_range, .Lfunc_end20-gimp_page_selector_select_range
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_page_selector_selection_changed,@function
gimp_page_selector_selection_changed:   # @gimp_page_selector_selection_changed
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	128(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gtk_icon_view_get_type@PLT
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, %rdi
	callq	gtk_icon_view_get_selected_items@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_list_length@PLT
	movq	gtk_tree_path_free@GOTPCREL(%rip), %rsi
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_list_free_full@PLT
	cmpl	$0, -36(%rbp)
	jne	.LBB21_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.4(%rip), %rdi
	leaq	.L.str.21(%rip), %rsi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	dgettext@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_label_set_text@PLT
	jmp	.LBB21_9
.LBB21_2:                               # %if.else
	cmpl	$1, -36(%rbp)
	jne	.LBB21_4
# BB#3:                                 # %if.then.9
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	leaq	.L.str.4(%rip), %rdi
	leaq	.L.str.28(%rip), %rsi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	dgettext@PLT
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_label_set_text@PLT
	jmp	.LBB21_8
.LBB21_4:                               # %if.else.14
	movl	-36(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	(%rcx), %eax
	jne	.LBB21_6
# BB#5:                                 # %if.then.16
	leaq	.L.str.4(%rip), %rdi
	leaq	.L.str.29(%rip), %rsi
	leaq	.L.str.30(%rip), %rdx
	movslq	-36(%rbp), %rcx
	callq	dngettext@PLT
	movl	-36(%rbp), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf@PLT
	movq	%rax, -56(%rbp)
	jmp	.LBB21_7
.LBB21_6:                               # %if.else.19
	leaq	.L.str.4(%rip), %rdi
	leaq	.L.str.29(%rip), %rsi
	leaq	.L.str.31(%rip), %rdx
	movslq	-36(%rbp), %rcx
	callq	dngettext@PLT
	movl	-36(%rbp), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf@PLT
	movq	%rax, -56(%rbp)
.LBB21_7:                               # %if.end
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text@PLT
	movq	-56(%rbp), %rdi
	callq	g_free@PLT
.LBB21_8:                               # %if.end.26
	jmp	.LBB21_9
.LBB21_9:                               # %if.end.27
	movq	-16(%rbp), %rdi
	callq	gimp_page_selector_get_selected_range@PLT
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type@PLT
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text@PLT
	movq	-48(%rbp), %rdi
	callq	g_free@PLT
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_editable_get_type@PLT
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	callq	gtk_editable_set_position@PLT
	xorl	%edx, %edx
	movq	-16(%rbp), %rax
	movl	selector_signals(%rip), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit@PLT
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_page_selector_selection_changed, .Lfunc_end21-gimp_page_selector_selection_changed
	.cfi_endproc

	.globl	gimp_page_selector_get_selected_range
	.align	16, 0x90
	.type	gimp_page_selector_get_selected_range,@function
gimp_page_selector_get_selected_range:  # @gimp_page_selector_get_selected_range
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_page_selector_get_type@PLT
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB22_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB22_8
.LBB22_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB22_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB22_7
.LBB22_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a@PLT
	movl	%eax, -60(%rbp)
.LBB22_7:                               # %if.end
	jmp	.LBB22_8
.LBB22_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB22_10
# BB#9:                                 # %if.then.8
	jmp	.LBB22_11
.LBB22_10:                              # %if.else.9
	leaq	.L.str.1(%rip), %rdi
	leaq	.L__func__.gimp_page_selector_get_selected_range(%rip), %rsi
	leaq	.L.str.2(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB22_23
.LBB22_11:                              # %if.end.10
	jmp	.LBB22_12
.LBB22_12:                              # %do.end
	leaq	.L.str.12(%rip), %rdi
	callq	g_string_new@PLT
	leaq	-28(%rbp), %rsi
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_page_selector_get_selected_pages@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB22_22
# BB#13:                                # %if.then.14
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -68(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -72(%rbp)
	movl	$-1, -76(%rbp)
	movl	$1, -80(%rbp)
.LBB22_14:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-80(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB22_19
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB22_14 Depth=1
	movslq	-80(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	-72(%rbp), %esi
	addl	$1, %esi
	cmpl	%esi, %edx
	jle	.LBB22_17
# BB#16:                                # %if.then.23
                                        #   in Loop: Header=BB22_14 Depth=1
	movq	-40(%rbp), %rdi
	movl	-68(%rbp), %esi
	movl	-72(%rbp), %edx
	callq	gimp_page_selector_print_range
	movl	-72(%rbp), %edx
	movl	%edx, -76(%rbp)
	movslq	-80(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	(%rax,%rdi,4), %edx
	movl	%edx, -68(%rbp)
.LBB22_17:                              # %if.end.26
                                        #   in Loop: Header=BB22_14 Depth=1
	movslq	-80(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -72(%rbp)
# BB#18:                                # %for.inc
                                        #   in Loop: Header=BB22_14 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB22_14
.LBB22_19:                              # %for.end
	movl	-72(%rbp), %eax
	cmpl	-76(%rbp), %eax
	je	.LBB22_21
# BB#20:                                # %if.then.30
	movq	-40(%rbp), %rdi
	movl	-68(%rbp), %esi
	movl	-72(%rbp), %edx
	callq	gimp_page_selector_print_range
.LBB22_21:                              # %if.end.31
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free@PLT
.LBB22_22:                              # %if.end.32
	xorl	%esi, %esi
	movq	-40(%rbp), %rdi
	callq	g_string_free@PLT
	movq	%rax, -8(%rbp)
.LBB22_23:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_page_selector_get_selected_range, .Lfunc_end22-gimp_page_selector_get_selected_range
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_page_selector_print_range,@function
gimp_page_selector_print_range:         # @gimp_page_selector_print_range
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
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 8(%rdi)
	je	.LBB23_2
# BB#1:                                 # %if.then
	movl	$44, %esi
	movq	-8(%rbp), %rdi
	callq	g_string_append_c_inline
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB23_2:                               # %if.end
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jne	.LBB23_4
# BB#3:                                 # %if.then.2
	leaq	.L.str.32(%rip), %rsi
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %edx
	movb	$0, %al
	callq	g_string_append_printf@PLT
	jmp	.LBB23_5
.LBB23_4:                               # %if.else
	leaq	.L.str.33(%rip), %rsi
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	-16(%rbp), %ecx
	addl	$1, %ecx
	movl	%eax, %edx
	movb	$0, %al
	callq	g_string_append_printf@PLT
.LBB23_5:                               # %if.end.5
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_page_selector_print_range, .Lfunc_end23-gimp_page_selector_print_range
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_page_selector_class_init,@function
gimp_page_selector_class_init:          # @gimp_page_selector_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$152, %rsp
.Ltmp76:
	.cfi_offset %rbx, -40
.Ltmp77:
	.cfi_offset %r14, -32
.Ltmp78:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_type_check_class_cast@PLT
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type@PLT
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast@PLT
	leaq	.L.str.15(%rip), %rdi
	movl	$1, %edx
	movl	$824, %ecx              # imm = 0x338
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	g_cclosure_marshal_VOID__VOID@GOTPCREL(%rip), %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	xorl	%r8d, %r8d
	leaq	gimp_page_selector_set_property(%rip), %r11
	leaq	gimp_page_selector_get_property(%rip), %rbx
	leaq	gimp_page_selector_finalize(%rip), %r14
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%r14, 48(%rax)
	movq	-40(%rbp), %rax
	movq	%rbx, 32(%rax)
	movq	-40(%rbp), %rax
	movq	%r11, 24(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 824(%rax)
	movq	-32(%rbp), %rax
	movq	$0, 832(%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	%r8d, -68(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movq	%r9, -80(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-80(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movq	%r10, -88(%rbp)         # 8-byte Spill
	callq	g_signal_new@PLT
	leaq	.L.str.16(%rip), %rdi
	movl	$33, %edx
	movl	$832, %ecx              # imm = 0x340
	xorl	%r15d, %r15d
	movl	%r15d, %esi
	movq	g_cclosure_marshal_VOID__VOID@GOTPCREL(%rip), %r8
	movl	$4, %r15d
	movl	%r15d, %r9d
	xorl	%r15d, %r15d
	movl	%eax, selector_signals(%rip)
	movq	-40(%rbp), %r10
	movq	(%r10), %r10
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%r10, %rsi
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r8, -104(%rbp)         # 8-byte Spill
	movq	%r10, %r8
	movq	%r9, -112(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-104(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movl	%r15d, -116(%rbp)       # 4-byte Spill
	callq	g_signal_new@PLT
	leaq	.L.str.6(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$227, %edx
	movl	%eax, selector_signals+4(%rip)
	movl	selector_signals+4(%rip), %eax
	movq	-48(%rbp), %r9
	movl	%eax, 160(%r9)
	movq	-40(%rbp), %r9
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movq	-128(%rbp), %r10        # 8-byte Reload
	movl	%edx, -132(%rbp)        # 4-byte Spill
	movq	%r10, %rdx
	movl	%ecx, -136(%rbp)        # 4-byte Spill
	movl	-136(%rbp), %eax        # 4-byte Reload
	movq	%r9, -144(%rbp)         # 8-byte Spill
	movl	%eax, %r9d
	movl	$227, (%rsp)
	callq	g_param_spec_int@PLT
	movl	$1, %esi
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	movq	-40(%rbp), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	callq	gimp_page_selector_target_get_type@PLT
	leaq	.L.str.8(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rdx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_enum@PLT
	movl	$2, %esi
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property@PLT
	movl	$48, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private@PLT
	addq	$152, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_page_selector_class_init, .Lfunc_end24-gimp_page_selector_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_page_selector_finalize,@function
gimp_page_selector_finalize:            # @gimp_page_selector_finalize
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	128(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	cmpq	$0, 40(%rdi)
	je	.LBB25_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref@PLT
.LBB25_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_page_selector_parent_class(%rip), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast@PLT
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_page_selector_finalize, .Lfunc_end25-gimp_page_selector_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_page_selector_get_property,@function
gimp_page_selector_get_property:        # @gimp_page_selector_get_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	128(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movl	-12(%rbp), %esi
	movl	%esi, %eax
	subl	$1, %eax
	movl	%esi, -64(%rbp)         # 4-byte Spill
	movl	%eax, -68(%rbp)         # 4-byte Spill
	je	.LBB26_1
	jmp	.LBB26_7
.LBB26_7:                               # %entry
	movl	-64(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB26_2
	jmp	.LBB26_3
.LBB26_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	(%rax), %esi
	callq	g_value_set_int@PLT
	jmp	.LBB26_6
.LBB26_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	4(%rax), %esi
	callq	g_value_set_enum@PLT
	jmp	.LBB26_6
.LBB26_3:                               # %sw.default
	jmp	.LBB26_4
.LBB26_4:                               # %do.body
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
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movq	%r9, -88(%rbp)          # 8-byte Spill
	callq	g_type_name@PLT
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.17(%rip), %rdi
	leaq	.L.str.18(%rip), %rsi
	movl	$363, %edx              # imm = 0x16B
	leaq	.L.str.19(%rip), %rcx
	movl	-76(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#5:                                 # %do.end
	jmp	.LBB26_6
.LBB26_6:                               # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_page_selector_get_property, .Lfunc_end26-gimp_page_selector_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_page_selector_set_property,@function
gimp_page_selector_set_property:        # @gimp_page_selector_set_property
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_page_selector_get_type@PLT
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	movl	%r9d, -88(%rbp)         # 4-byte Spill
	je	.LBB27_1
	jmp	.LBB27_7
.LBB27_7:                               # %entry
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB27_2
	jmp	.LBB27_3
.LBB27_1:                               # %sw.bb
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_int@PLT
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_page_selector_set_n_pages@PLT
	jmp	.LBB27_6
.LBB27_2:                               # %sw.bb.4
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum@PLT
	movq	-48(%rbp), %rdi
	movl	%eax, 4(%rdi)
	jmp	.LBB27_6
.LBB27_3:                               # %sw.default
	jmp	.LBB27_4
.LBB27_4:                               # %do.body
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
	movl	%r8d, -108(%rbp)        # 4-byte Spill
	movq	%r9, -120(%rbp)         # 8-byte Spill
	callq	g_type_name@PLT
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_type_name@PLT
	leaq	.L.str.17(%rip), %rdi
	leaq	.L.str.18(%rip), %rsi
	movl	$386, %edx              # imm = 0x182
	leaq	.L.str.19(%rip), %rcx
	movl	-108(%rbp), %r8d        # 4-byte Reload
	movq	-120(%rbp), %r9         # 8-byte Reload
	movq	-128(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#5:                                 # %do.end
	jmp	.LBB27_6
.LBB27_6:                               # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_page_selector_set_property, .Lfunc_end27-gimp_page_selector_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB28_2
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
.LBB28_2:                               # %entry
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
.Lfunc_end28:
	.size	g_warning, .Lfunc_end28-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_page_selector_item_activated,@function
gimp_page_selector_item_activated:      # @gimp_page_selector_item_activated
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
	subq	$32, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movl	selector_signals+4(%rip), %esi
	movq	%rdx, %rdi
	movl	%eax, %edx
	movb	$0, %al
	callq	g_signal_emit@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_page_selector_item_activated, .Lfunc_end29-gimp_page_selector_item_activated
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_page_selector_range_focus_out,@function
gimp_page_selector_range_focus_out:     # @gimp_page_selector_range_focus_out
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_page_selector_range_activate
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_page_selector_range_focus_out, .Lfunc_end30-gimp_page_selector_range_focus_out
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_page_selector_range_activate,@function
gimp_page_selector_range_activate:      # @gimp_page_selector_range_activate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp97:
	.cfi_def_cfa_offset 16
.Ltmp98:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp99:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	callq	gtk_entry_get_text@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_page_selector_select_range@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_page_selector_range_activate, .Lfunc_end31-gimp_page_selector_range_activate
	.cfi_endproc

	.align	16, 0x90
	.type	g_string_append_c_inline,@function
g_string_append_c_inline:               # @g_string_append_c_inline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp100:
	.cfi_def_cfa_offset 16
.Ltmp101:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp102:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	addq	$1, %rdi
	movq	-8(%rbp), %rcx
	cmpq	16(%rcx), %rdi
	jae	.LBB32_2
# BB#1:                                 # %if.then
	movb	-9(%rbp), %al
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	%rdx, %rsi
	addq	$1, %rsi
	movq	%rsi, 8(%rcx)
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movb	%al, (%rcx,%rdx)
	movq	-8(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movb	$0, (%rdx,%rcx)
	jmp	.LBB32_3
.LBB32_2:                               # %if.else
	movq	$-1, %rsi
	movq	-8(%rbp), %rdi
	movsbl	-9(%rbp), %edx
	callq	g_string_insert_c@PLT
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB32_3:                               # %if.end
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	g_string_append_c_inline, .Lfunc_end32-g_string_append_c_inline
	.cfi_endproc

	.align	16, 0x90
	.type	stretch_frame_image,@function
stretch_frame_image:                    # @stretch_frame_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp103:
	.cfi_def_cfa_offset 16
.Ltmp104:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp105:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movl	%eax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gdk_pixbuf_get_width@PLT
	movl	%eax, -44(%rbp)
	movq	-8(%rbp), %rdi
	callq	gdk_pixbuf_get_height@PLT
	xorl	%edi, %edi
	movl	$1, %esi
	movl	$8, %edx
	movl	%eax, -48(%rbp)
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	callq	gdk_pixbuf_new@PLT
	xorl	%esi, %esi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gdk_pixbuf_fill@PLT
	movl	$4, %ecx
	movl	-28(%rbp), %edx
	subl	-12(%rbp), %edx
	subl	-20(%rbp), %edx
	movl	%edx, -52(%rbp)
	movl	-32(%rbp), %edx
	subl	-16(%rbp), %edx
	subl	-24(%rbp), %edx
	movl	%edx, -60(%rbp)
	movl	-44(%rbp), %edx
	subl	-12(%rbp), %edx
	subl	-20(%rbp), %edx
	movl	%edx, -56(%rbp)
	movl	-48(%rbp), %edx
	subl	-16(%rbp), %edx
	subl	-24(%rbp), %edx
	movl	%edx, -64(%rbp)
	movl	-52(%rbp), %eax
	cltd
	idivl	%ecx
	movl	-56(%rbp), %esi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	cltd
	idivl	%ecx
	movl	-68(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB33_2
# BB#1:                                 # %cond.true
	movl	$4, %eax
	movl	-52(%rbp), %ecx
	movl	%eax, -72(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-72(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB33_3
.LBB33_2:                               # %cond.false
	movl	$4, %eax
	movl	-56(%rbp), %ecx
	movl	%eax, -80(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-80(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB33_3:                               # %cond.end
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	$4, %ecx
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-52(%rbp), %eax
	cltd
	idivl	%ecx
	movl	-56(%rbp), %esi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	cltd
	idivl	%ecx
	movl	-84(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB33_5
# BB#4:                                 # %cond.true.16
	movl	$4, %eax
	movl	-52(%rbp), %ecx
	movl	%eax, -88(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-88(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB33_6
.LBB33_5:                               # %cond.false.18
	movl	$4, %eax
	movl	-56(%rbp), %ecx
	movl	%eax, -96(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-96(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB33_6:                               # %cond.end.20
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	$4, %ecx
	addl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-60(%rbp), %eax
	cltd
	idivl	%ecx
	movl	-64(%rbp), %esi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	idivl	%ecx
	movl	-100(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB33_8
# BB#7:                                 # %cond.true.26
	movl	$4, %eax
	movl	-60(%rbp), %ecx
	movl	%eax, -104(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-104(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB33_9
.LBB33_8:                               # %cond.false.28
	movl	$4, %eax
	movl	-64(%rbp), %ecx
	movl	%eax, -112(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-112(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB33_9:                               # %cond.end.30
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	$4, %ecx
	addl	-16(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-60(%rbp), %eax
	cltd
	idivl	%ecx
	movl	-64(%rbp), %esi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	idivl	%ecx
	movl	-116(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB33_11
# BB#10:                                # %cond.true.36
	movl	$4, %eax
	movl	-60(%rbp), %ecx
	movl	%eax, -120(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-120(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB33_12
.LBB33_11:                              # %cond.false.38
	movl	$4, %eax
	movl	-64(%rbp), %ecx
	movl	%eax, -128(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-128(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB33_12:                              # %cond.end.40
	movl	-124(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-28(%rbp), %eax
	subl	-12(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-32(%rbp), %eax
	subl	-16(%rbp), %eax
	subl	-24(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-44(%rbp), %eax
	subl	-12(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-48(%rbp), %eax
	subl	-16(%rbp), %eax
	subl	-24(%rbp), %eax
	movl	%eax, -64(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %eax
	movl	-16(%rbp), %r8d
	movq	-40(%rbp), %r9
	movl	%ecx, %esi
	movl	%ecx, %edx
	movl	%eax, %ecx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gdk_pixbuf_copy_area@PLT
	xorl	%eax, %eax
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edx
	movq	-40(%rbp), %r9
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %r8d
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	%r8d, -136(%rbp)        # 4-byte Spill
	movl	%eax, %r8d
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	%eax, 8(%rsp)
	callq	draw_frame_row
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movl	-44(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	-20(%rbp), %ecx
	movl	-16(%rbp), %r8d
	movq	-40(%rbp), %r9
	movl	-28(%rbp), %esi
	subl	-20(%rbp), %esi
	movl	%esi, -140(%rbp)        # 4-byte Spill
	movl	%eax, %esi
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movl	$0, 8(%rsp)
	callq	gdk_pixbuf_copy_area@PLT
	xorl	%eax, %eax
	movq	-8(%rbp), %rdi
	movl	-60(%rbp), %esi
	movl	-64(%rbp), %edx
	movq	-40(%rbp), %r9
	movl	-16(%rbp), %ecx
	movl	-12(%rbp), %r8d
	movl	%ecx, -144(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	%r8d, -148(%rbp)        # 4-byte Spill
	movl	%eax, %r8d
	movl	-144(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movl	-148(%rbp), %eax        # 4-byte Reload
	movl	%eax, 8(%rsp)
	callq	draw_frame_column
	movq	-8(%rbp), %rdi
	movl	-44(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	-48(%rbp), %ecx
	subl	-24(%rbp), %ecx
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %r8d
	movq	-40(%rbp), %r9
	movl	-28(%rbp), %esi
	subl	-20(%rbp), %esi
	movl	-32(%rbp), %r10d
	subl	-24(%rbp), %r10d
	movl	%esi, -152(%rbp)        # 4-byte Spill
	movl	%eax, %esi
	movl	%edx, -156(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-156(%rbp), %ecx        # 4-byte Reload
	movl	-152(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	gdk_pixbuf_copy_area@PLT
	movq	-8(%rbp), %rdi
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edx
	movl	-48(%rbp), %eax
	subl	-24(%rbp), %eax
	movl	-32(%rbp), %ecx
	subl	-24(%rbp), %ecx
	movq	-40(%rbp), %r9
	movl	-12(%rbp), %r8d
	movl	-24(%rbp), %r10d
	movl	%ecx, -160(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	-160(%rbp), %eax        # 4-byte Reload
	movl	%r8d, -164(%rbp)        # 4-byte Spill
	movl	%eax, %r8d
	movl	-164(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	draw_frame_row
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	movl	-48(%rbp), %eax
	subl	-24(%rbp), %eax
	movl	-12(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movq	-40(%rbp), %r9
	movl	-32(%rbp), %edx
	subl	-24(%rbp), %edx
	movl	%edx, -168(%rbp)        # 4-byte Spill
	movl	%eax, %edx
	movl	$0, (%rsp)
	movl	-168(%rbp), %eax        # 4-byte Reload
	movl	%eax, 8(%rsp)
	callq	gdk_pixbuf_copy_area@PLT
	movq	-8(%rbp), %rdi
	movl	-60(%rbp), %esi
	movl	-64(%rbp), %edx
	movl	-44(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	-28(%rbp), %ecx
	subl	-20(%rbp), %ecx
	movq	-40(%rbp), %r9
	movl	-16(%rbp), %r8d
	movl	-20(%rbp), %r10d
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	-172(%rbp), %eax        # 4-byte Reload
	movl	%r8d, -176(%rbp)        # 4-byte Spill
	movl	%eax, %r8d
	movl	-176(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	draw_frame_column
	movq	-40(%rbp), %rax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	stretch_frame_image, .Lfunc_end33-stretch_frame_image
	.cfi_endproc

	.align	16, 0x90
	.type	draw_frame_row,@function
draw_frame_row:                         # @draw_frame_row
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp106:
	.cfi_def_cfa_offset 16
.Ltmp107:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp108:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	%r9, -32(%rbp)
	movl	%r10d, -36(%rbp)
	movl	%eax, -40(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	$0, -48(%rbp)
.LBB34_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -44(%rbp)
	jle	.LBB34_6
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB34_1 Depth=1
	movl	-44(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jle	.LBB34_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB34_1 Depth=1
	movl	-16(%rbp), %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB34_5
.LBB34_4:                               # %cond.false
                                        #   in Loop: Header=BB34_1 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB34_5:                               # %cond.end
                                        #   in Loop: Header=BB34_1 Depth=1
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-20(%rbp), %edx
	movl	-52(%rbp), %ecx
	movl	-40(%rbp), %r8d
	movq	-32(%rbp), %r9
	movl	-36(%rbp), %eax
	addl	-48(%rbp), %eax
	movl	-24(%rbp), %r10d
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	gdk_pixbuf_copy_area@PLT
	movl	-52(%rbp), %eax
	movl	-44(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -44(%rbp)
	movl	-52(%rbp), %eax
	addl	-48(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB34_1
.LBB34_6:                               # %while.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	draw_frame_row, .Lfunc_end34-draw_frame_row
	.cfi_endproc

	.align	16, 0x90
	.type	draw_frame_column,@function
draw_frame_column:                      # @draw_frame_column
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp109:
	.cfi_def_cfa_offset 16
.Ltmp110:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp111:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	%r9, -32(%rbp)
	movl	%r10d, -36(%rbp)
	movl	%eax, -40(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	$0, -48(%rbp)
.LBB35_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -44(%rbp)
	jle	.LBB35_6
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB35_1 Depth=1
	movl	-44(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jle	.LBB35_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB35_1 Depth=1
	movl	-16(%rbp), %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB35_5
.LBB35_4:                               # %cond.false
                                        #   in Loop: Header=BB35_1 Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB35_5:                               # %cond.end
                                        #   in Loop: Header=BB35_1 Depth=1
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	movl	-52(%rbp), %r8d
	movq	-32(%rbp), %r9
	movl	-24(%rbp), %eax
	movl	-36(%rbp), %r10d
	addl	-48(%rbp), %r10d
	movl	%eax, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	gdk_pixbuf_copy_area@PLT
	movl	-52(%rbp), %eax
	movl	-44(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -44(%rbp)
	movl	-52(%rbp), %eax
	addl	-48(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB35_1
.LBB35_6:                               # %while.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	draw_frame_column, .Lfunc_end35-draw_frame_column
	.cfi_endproc

	.type	gimp_page_selector_get_type.g_define_type_id__volatile,@object # @gimp_page_selector_get_type.g_define_type_id__volatile
	.local	gimp_page_selector_get_type.g_define_type_id__volatile
	.comm	gimp_page_selector_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpPageSelector"
	.size	.L.str, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"LibGimpWidgets"
	.size	.L.str.1, 15

	.type	.L__func__.gimp_page_selector_set_n_pages,@object # @__func__.gimp_page_selector_set_n_pages
.L__func__.gimp_page_selector_set_n_pages:
	.asciz	"gimp_page_selector_set_n_pages"
	.size	.L__func__.gimp_page_selector_set_n_pages, 31

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_PAGE_SELECTOR (selector)"
	.size	.L.str.2, 33

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"n_pages >= 0"
	.size	.L.str.3, 13

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp20-libgimp"
	.size	.L.str.4, 15

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Page %d"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"n-pages"
	.size	.L.str.6, 8

	.type	.L__func__.gimp_page_selector_get_n_pages,@object # @__func__.gimp_page_selector_get_n_pages
.L__func__.gimp_page_selector_get_n_pages:
	.asciz	"gimp_page_selector_get_n_pages"
	.size	.L__func__.gimp_page_selector_get_n_pages, 31

	.type	.L__func__.gimp_page_selector_set_target,@object # @__func__.gimp_page_selector_set_target
.L__func__.gimp_page_selector_set_target:
	.asciz	"gimp_page_selector_set_target"
	.size	.L__func__.gimp_page_selector_set_target, 30

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"target <= GIMP_PAGE_SELECTOR_TARGET_IMAGES"
	.size	.L.str.7, 43

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"target"
	.size	.L.str.8, 7

	.type	.L__func__.gimp_page_selector_get_target,@object # @__func__.gimp_page_selector_get_target
.L__func__.gimp_page_selector_get_target:
	.asciz	"gimp_page_selector_get_target"
	.size	.L__func__.gimp_page_selector_get_target, 30

	.type	.L__func__.gimp_page_selector_set_page_thumbnail,@object # @__func__.gimp_page_selector_set_page_thumbnail
.L__func__.gimp_page_selector_set_page_thumbnail:
	.asciz	"gimp_page_selector_set_page_thumbnail"
	.size	.L__func__.gimp_page_selector_set_page_thumbnail, 38

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"thumbnail == NULL || GDK_IS_PIXBUF (thumbnail)"
	.size	.L.str.9, 47

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"page_no >= 0 && page_no < priv->n_pages"
	.size	.L.str.10, 40

	.type	.L__func__.gimp_page_selector_get_page_thumbnail,@object # @__func__.gimp_page_selector_get_page_thumbnail
.L__func__.gimp_page_selector_get_page_thumbnail:
	.asciz	"gimp_page_selector_get_page_thumbnail"
	.size	.L__func__.gimp_page_selector_get_page_thumbnail, 38

	.type	.L__func__.gimp_page_selector_set_page_label,@object # @__func__.gimp_page_selector_set_page_label
.L__func__.gimp_page_selector_set_page_label:
	.asciz	"gimp_page_selector_set_page_label"
	.size	.L__func__.gimp_page_selector_set_page_label, 34

	.type	.L__func__.gimp_page_selector_get_page_label,@object # @__func__.gimp_page_selector_get_page_label
.L__func__.gimp_page_selector_get_page_label:
	.asciz	"gimp_page_selector_get_page_label"
	.size	.L__func__.gimp_page_selector_get_page_label, 34

	.type	.L__func__.gimp_page_selector_select_all,@object # @__func__.gimp_page_selector_select_all
.L__func__.gimp_page_selector_select_all:
	.asciz	"gimp_page_selector_select_all"
	.size	.L__func__.gimp_page_selector_select_all, 30

	.type	.L__func__.gimp_page_selector_unselect_all,@object # @__func__.gimp_page_selector_unselect_all
.L__func__.gimp_page_selector_unselect_all:
	.asciz	"gimp_page_selector_unselect_all"
	.size	.L__func__.gimp_page_selector_unselect_all, 32

	.type	.L__func__.gimp_page_selector_select_page,@object # @__func__.gimp_page_selector_select_page
.L__func__.gimp_page_selector_select_page:
	.asciz	"gimp_page_selector_select_page"
	.size	.L__func__.gimp_page_selector_select_page, 31

	.type	.L__func__.gimp_page_selector_unselect_page,@object # @__func__.gimp_page_selector_unselect_page
.L__func__.gimp_page_selector_unselect_page:
	.asciz	"gimp_page_selector_unselect_page"
	.size	.L__func__.gimp_page_selector_unselect_page, 33

	.type	.L__func__.gimp_page_selector_page_is_selected,@object # @__func__.gimp_page_selector_page_is_selected
.L__func__.gimp_page_selector_page_is_selected:
	.asciz	"gimp_page_selector_page_is_selected"
	.size	.L__func__.gimp_page_selector_page_is_selected, 36

	.type	.L__func__.gimp_page_selector_get_selected_pages,@object # @__func__.gimp_page_selector_get_selected_pages
.L__func__.gimp_page_selector_get_selected_pages:
	.asciz	"gimp_page_selector_get_selected_pages"
	.size	.L__func__.gimp_page_selector_get_selected_pages, 38

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"n_selected_pages != NULL"
	.size	.L.str.11, 25

	.type	.L__func__.gimp_page_selector_select_range,@object # @__func__.gimp_page_selector_select_range
.L__func__.gimp_page_selector_select_range:
	.asciz	"gimp_page_selector_select_range"
	.size	.L__func__.gimp_page_selector_select_range, 32

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.zero	1
	.size	.L.str.12, 1

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	","
	.size	.L.str.13, 2

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%i"
	.size	.L.str.14, 3

	.type	.L__func__.gimp_page_selector_get_selected_range,@object # @__func__.gimp_page_selector_get_selected_range
.L__func__.gimp_page_selector_get_selected_range:
	.asciz	"gimp_page_selector_get_selected_range"
	.size	.L__func__.gimp_page_selector_get_selected_range, 38

	.type	gimp_page_selector_parent_class,@object # @gimp_page_selector_parent_class
	.local	gimp_page_selector_parent_class
	.comm	gimp_page_selector_parent_class,8,8
	.type	GimpPageSelector_private_offset,@object # @GimpPageSelector_private_offset
	.local	GimpPageSelector_private_offset
	.comm	GimpPageSelector_private_offset,4,4
	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"selection-changed"
	.size	.L.str.15, 18

	.type	selector_signals,@object # @selector_signals
	.local	selector_signals
	.comm	selector_signals,8,4
	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"activate"
	.size	.L.str.16, 9

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.17, 54

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimppageselector.c"
	.size	.L.str.18, 19

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"property"
	.size	.L.str.19, 9

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"item-activated"
	.size	.L.str.20, 15

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Nothing selected"
	.size	.L.str.21, 17

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Select _All"
	.size	.L.str.22, 12

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"clicked"
	.size	.L.str.23, 8

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"focus-out-event"
	.size	.L.str.24, 16

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Select _range:"
	.size	.L.str.25, 15

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Open _pages as"
	.size	.L.str.26, 15

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gtk-file"
	.size	.L.str.27, 9

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"One page selected"
	.size	.L.str.28, 18

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"%d page selected"
	.size	.L.str.29, 17

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"All %d pages selected"
	.size	.L.str.30, 22

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"%d pages selected"
	.size	.L.str.31, 18

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"%d"
	.size	.L.str.32, 3

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"%d-%d"
	.size	.L.str.33, 6

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"frame"
	.size	.L.str.34, 6

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"gimp-frame"
	.size	.L.str.35, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
