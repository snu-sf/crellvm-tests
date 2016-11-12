	.text
	.file	"ico-dialog.bc"
	.globl	ico_dialog_new
	.align	16, 0x90
	.type	ico_dialog_new,@function
ico_dialog_new:                         # @ico_dialog_new
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
	subq	$144, %rsp
	movabsq	$.L.str, %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	gettext
	movabsq	$.L.str.1, %rsi
	movabsq	$.L.str.2, %rdx
	movq	%rax, %rdi
	callq	gimp_export_dialog_new
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-16(%rbp), %rdi
	callq	gimp_export_dialog_get_content_area
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
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
	movabsq	$.L.str.4, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gimp_frame_new
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movq	%rax, %rdi
	movq	%rax, %rsi
	callq	gtk_scrolled_window_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	gtk_scrolled_window_set_policy
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movl	$1, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rsi
	movq	-32(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	g_object_set_data
	movq	-48(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_scrolled_window_add_with_viewport
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_hint_box_get_type
	movabsq	$.L.str.9, %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.6, %rsi
	movabsq	$.L.str.7, %rdx
	movabsq	$.L.str.8, %rcx
	xorl	%r8d, %r8d
	movl	%r8d, %r9d
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %r8
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r10d, %r10d
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r10d, %edx
	movl	%r10d, %ecx
	movl	%r10d, %r8d
	callq	gtk_box_pack_end
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rsi
	movq	-56(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-144(%rbp), %rdx        # 8-byte Reload
	callq	g_object_set_data
	movq	-16(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	ico_dialog_new, .Lfunc_end0-ico_dialog_new
	.cfi_endproc

	.globl	ico_dialog_add_icon
	.align	16, 0x90
	.type	ico_dialog_add_icon,@function
ico_dialog_add_icon:                    # @ico_dialog_add_icon
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
	subq	$4176, %rsp             # imm = 0x1050
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -4152(%rbp)
	movl	-12(%rbp), %edi
	callq	ico_preview_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movq	-4152(%rbp), %rcx
	callq	ico_create_icon_hbox
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -4160(%rbp)       # 8-byte Spill
	callq	gtk_box_get_type
	movq	-4160(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -4164(%rbp)       # 4-byte Spill
	movl	-4164(%rbp), %ecx       # 4-byte Reload
	movl	-4164(%rbp), %r8d       # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movl	$4096, %ecx             # imm = 0x1000
	movl	%ecx, %esi
	movabsq	$.L.str.11, %rdx
	leaq	-4144(%rbp), %rdi
	movl	-12(%rbp), %ecx
	movb	$0, %al
	callq	g_snprintf
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rdx
	movq	%rdx, %rdi
	movl	%eax, -4168(%rbp)       # 4-byte Spill
	callq	g_type_check_instance_cast
	leaq	-4144(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movslq	-16(%rbp), %rax
	movq	-4152(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	(%rdx,%rax,4), %edx
	callq	ico_dialog_update_icon_preview
	movq	-8(%rbp), %rdi
	movq	-4152(%rbp), %rsi
	callq	ico_dialog_check_compat
	addq	$4176, %rsp             # imm = 0x1050
	popq	%rbp
	retq
.Lfunc_end1:
	.size	ico_dialog_add_icon, .Lfunc_end1-ico_dialog_add_icon
	.cfi_endproc

	.align	16, 0x90
	.type	ico_preview_new,@function
ico_preview_new:                        # @ico_preview_new
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
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_drawable_width
	movl	%eax, -28(%rbp)
	movl	-4(%rbp), %edi
	callq	gimp_drawable_height
	movl	%eax, -32(%rbp)
	movl	-4(%rbp), %edi
	cmpl	$128, -28(%rbp)
	movl	%edi, -36(%rbp)         # 4-byte Spill
	jge	.LBB2_2
# BB#1:                                 # %cond.true
	movl	-28(%rbp), %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB2_3
.LBB2_2:                                # %cond.false
	movl	$128, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB2_3
.LBB2_3:                                # %cond.end
	movl	-40(%rbp), %eax         # 4-byte Reload
	cmpl	$128, -32(%rbp)
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jge	.LBB2_5
# BB#4:                                 # %cond.true.3
	movl	-32(%rbp), %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB2_6
.LBB2_5:                                # %cond.false.4
	movl	$128, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB2_6
.LBB2_6:                                # %cond.end.5
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	$1, %ecx
	movl	-36(%rbp), %edi         # 4-byte Reload
	movl	-44(%rbp), %esi         # 4-byte Reload
	movl	%eax, %edx
	callq	gimp_drawable_get_thumbnail
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_image_new_from_pixbuf
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	ico_preview_new, .Lfunc_end2-ico_preview_new
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI3_0:
	.long	1065353216              # float 1
.LCPI3_1:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	ico_create_icon_hbox,@function
ico_create_icon_hbox:                   # @ico_create_icon_hbox
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
.Ltmp12:
	.cfi_offset %rbx, -40
.Ltmp13:
	.cfi_offset %r14, -32
.Ltmp14:
	.cfi_offset %r15, -24
	xorl	%eax, %eax
	movl	$6, %r8d
	movq	%rdi, -32(%rbp)
	movl	%esi, -36(%rbp)
	movl	%edx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%eax, %edi
	movl	%r8d, %esi
	callq	gtk_box_new
	movss	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI3_1, %xmm1         # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	movq	%rax, -56(%rbp)
	movss	%xmm2, -92(%rbp)        # 4-byte Spill
	movss	-92(%rbp), %xmm3        # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	callq	gtk_alignment_new
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -108(%rbp)        # 4-byte Spill
	movl	-108(%rbp), %ecx        # 4-byte Reload
	movl	-108(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rsi
	movslq	-36(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.13, %rsi
	movslq	-40(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.14, %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	g_object_set_data
	movq	-72(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	cmpq	$0, ico_create_icon_hbox.size
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movl	$1, %edi
	callq	gtk_size_group_new
	movq	%rax, ico_create_icon_hbox.size
.LBB3_2:                                # %if.end
	movq	ico_create_icon_hbox.size, %rdi
	movq	-72(%rbp), %rsi
	callq	gtk_size_group_add_widget
	movl	$1, %edi
	movl	$2, %esi
	callq	gtk_box_new
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	movl	-132(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.15, %rdi
	callq	gettext
	movabsq	$.L.str.16, %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.17, %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.18, %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.19, %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %esi
	movl	$4, %ecx
	movl	$8, %r9d
	movl	$24, %edx
	movl	$32, %r8d
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	-144(%rbp), %r11        # 8-byte Reload
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	-152(%rbp), %rbx        # 8-byte Reload
	movl	%edx, -180(%rbp)        # 4-byte Spill
	movq	%rbx, %rdx
	movq	-160(%rbp), %r14        # 8-byte Reload
	movl	%r8d, -184(%rbp)        # 4-byte Spill
	movq	%r14, %r8
	movq	-168(%rbp), %r15        # 8-byte Reload
	movq	%r15, (%rsp)
	movl	$24, 8(%rsp)
	movq	%rax, 16(%rsp)
	movl	$32, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	callq	gimp_int_combo_box_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movslq	-40(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	(%rsi), %rsi
	movl	(%rsi,%rdx,4), %esi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_set_active
	movabsq	$.L.str.20, %rsi
	movabsq	$ico_dialog_bpp_changed, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-80(%rbp), %rdi
	movq	-56(%rbp), %r11
	movq	%r11, %rcx
	movl	%eax, -196(%rbp)        # 4-byte Spill
	callq	g_signal_connect_data
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.21, %rsi
	movq	-80(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movq	-64(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.22, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_check_button_new_with_label
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movslq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdi
	movq	16(%rdi), %rdi
	movl	(%rdi,%rsi,4), %esi
	movq	%rax, %rdi
	callq	gtk_toggle_button_set_active
	movabsq	$.L.str.23, %rsi
	movabsq	$ico_dialog_toggle_compress, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rdi
	movq	-56(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movq	-64(%rbp), %rcx
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-88(%rbp), %rdi
	callq	gtk_widget_show
	movq	-56(%rbp), %rax
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	ico_create_icon_hbox, .Lfunc_end3-ico_create_icon_hbox
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4636737291354636288     # double 100
	.text
	.align	16, 0x90
	.type	ico_dialog_update_icon_preview,@function
ico_dialog_update_icon_preview:         # @ico_dialog_update_icon_preview
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
	pushq	%rbx
	subq	$632, %rsp              # imm = 0x278
.Ltmp18:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	ico_dialog_get_layer_preview
	movq	%rax, -32(%rbp)
	movl	-20(%rbp), %edi
	callq	gimp_drawable_width
	movl	%eax, -44(%rbp)
	movl	-20(%rbp), %edi
	callq	gimp_drawable_height
	movl	%eax, -48(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	jmp	.LBB4_46
.LBB4_2:                                # %if.end
	cmpl	$8, -24(%rbp)
	jg	.LBB4_25
# BB#3:                                 # %if.then.3
	movl	-20(%rbp), %edi
	callq	gimp_item_get_image
	movl	%eax, -164(%rbp)
	movl	-44(%rbp), %edi
	movl	-48(%rbp), %esi
	movl	-164(%rbp), %eax
	movl	%edi, -368(%rbp)        # 4-byte Spill
	movl	%eax, %edi
	movl	%esi, -372(%rbp)        # 4-byte Spill
	callq	gimp_image_base_type
	movl	-368(%rbp), %edi        # 4-byte Reload
	movl	-372(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	gimp_image_new
	movl	%eax, -168(%rbp)
	movl	-168(%rbp), %edi
	callq	gimp_image_undo_disable
	movl	-20(%rbp), %edi
	movl	%eax, -376(%rbp)        # 4-byte Spill
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	je	.LBB4_5
# BB#4:                                 # %if.then.18
	leaq	-196(%rbp), %rsi
	movl	-164(%rbp), %edi
	callq	gimp_image_get_colormap
	movq	%rax, -192(%rbp)
	movl	-168(%rbp), %edi
	movq	-192(%rbp), %rsi
	movl	-196(%rbp), %edx
	callq	gimp_image_set_colormap
	movq	-192(%rbp), %rdi
	movl	%eax, -380(%rbp)        # 4-byte Spill
	callq	g_free
.LBB4_5:                                # %if.end.21
	movl	-168(%rbp), %edi
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-20(%rbp), %eax
	movl	%edi, -384(%rbp)        # 4-byte Spill
	movl	%eax, %edi
	movl	%ecx, -388(%rbp)        # 4-byte Spill
	movl	%edx, -392(%rbp)        # 4-byte Spill
	callq	gimp_drawable_type
	movabsq	$.L.str.26, %rsi
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movl	-384(%rbp), %edi        # 4-byte Reload
	movl	-392(%rbp), %edx        # 4-byte Reload
	movl	-388(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_layer_new
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movl	%eax, -172(%rbp)
	movl	-168(%rbp), %edi
	movl	-172(%rbp), %esi
	callq	gimp_image_insert_layer
	movl	-20(%rbp), %edi
	movl	%eax, -396(%rbp)        # 4-byte Spill
	callq	gimp_drawable_get
	movq	%rax, -56(%rbp)
	movl	-172(%rbp), %edi
	callq	gimp_drawable_get
	leaq	-112(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rsi
	movl	-44(%rbp), %r8d
	movl	-48(%rbp), %r9d
	movl	%ecx, %edx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-160(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-64(%rbp), %rsi
	movl	-44(%rbp), %r8d
	movl	-48(%rbp), %r9d
	movl	%edx, -400(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	-44(%rbp), %ecx
	imull	-48(%rbp), %ecx
	shll	$2, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc
	leaq	-112(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rsi
	movl	-44(%rbp), %r8d
	movl	-48(%rbp), %r9d
	movl	%ecx, %edx
	callq	gimp_pixel_rgn_get_rect
	leaq	-160(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-184(%rbp), %rsi
	movl	-44(%rbp), %r8d
	movl	-48(%rbp), %r9d
	movl	%ecx, %edx
	callq	gimp_pixel_rgn_set_rect
	movq	-64(%rbp), %rdi
	callq	gimp_drawable_detach
	movq	-56(%rbp), %rdi
	callq	gimp_drawable_detach
	movl	-20(%rbp), %edi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	je	.LBB4_7
# BB#6:                                 # %if.then.31
	movl	-168(%rbp), %edi
	callq	gimp_image_convert_rgb
	movl	%eax, -404(%rbp)        # 4-byte Spill
.LBB4_7:                                # %if.end.33
	movl	$1, %eax
	xorl	%ecx, %ecx
	movabsq	$.L.str.27, %rdx
	movl	-168(%rbp), %edi
	movl	-24(%rbp), %esi
	movl	%ecx, -408(%rbp)        # 4-byte Spill
	movl	%esi, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	%eax, %esi
	shll	%cl, %esi
	movl	%esi, -412(%rbp)        # 4-byte Spill
	movl	%eax, %esi
	movl	-408(%rbp), %r8d        # 4-byte Reload
	movq	%rdx, -424(%rbp)        # 8-byte Spill
	movl	%r8d, %edx
	movl	-412(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	movl	-408(%rbp), %r9d        # 4-byte Reload
	movq	-424(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	gimp_image_convert_indexed
	leaq	-196(%rbp), %rsi
	movl	-168(%rbp), %edi
	movl	%eax, -428(%rbp)        # 4-byte Spill
	callq	gimp_image_get_colormap
	movl	$1, %ecx
	movq	%rax, -192(%rbp)
	movl	-196(%rbp), %edx
	movl	-24(%rbp), %edi
	movl	%ecx, -432(%rbp)        # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-432(%rbp), %edi        # 4-byte Reload
	shll	%cl, %edi
	cmpl	%edi, %edx
	jne	.LBB4_18
# BB#8:                                 # %land.lhs.true
	movq	-192(%rbp), %rdi
	movl	-196(%rbp), %esi
	callq	ico_cmap_contains_black
	cmpl	$0, %eax
	jne	.LBB4_18
# BB#9:                                 # %if.then.41
	movl	-20(%rbp), %edi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	je	.LBB4_11
# BB#10:                                # %if.then.44
	movq	-192(%rbp), %rdi
	callq	g_free
	leaq	-196(%rbp), %rsi
	movl	-164(%rbp), %edi
	callq	gimp_image_get_colormap
	movq	%rax, -192(%rbp)
	movl	-168(%rbp), %edi
	movq	-192(%rbp), %rsi
	movl	-196(%rbp), %edx
	callq	gimp_image_set_colormap
	movl	%eax, -436(%rbp)        # 4-byte Spill
	jmp	.LBB4_15
.LBB4_11:                               # %if.else
	movl	-20(%rbp), %edi
	callq	gimp_drawable_is_gray
	cmpl	$0, %eax
	je	.LBB4_13
# BB#12:                                # %if.then.49
	movl	-168(%rbp), %edi
	callq	gimp_image_convert_grayscale
	movl	%eax, -440(%rbp)        # 4-byte Spill
	jmp	.LBB4_14
.LBB4_13:                               # %if.else.51
	movl	-168(%rbp), %edi
	callq	gimp_image_convert_rgb
	movl	%eax, -444(%rbp)        # 4-byte Spill
.LBB4_14:                               # %if.end.53
	jmp	.LBB4_15
.LBB4_15:                               # %if.end.54
	movl	-172(%rbp), %edi
	callq	gimp_drawable_get
	leaq	-160(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rsi
	movl	-44(%rbp), %r8d
	movl	-48(%rbp), %r9d
	movl	%edx, -448(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-160(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-184(%rbp), %rsi
	movl	-44(%rbp), %r8d
	movl	-48(%rbp), %r9d
	movl	%ecx, %edx
	callq	gimp_pixel_rgn_set_rect
	movq	-64(%rbp), %rdi
	callq	gimp_drawable_detach
	movl	-20(%rbp), %edi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB4_17
# BB#16:                                # %if.then.58
	movl	-168(%rbp), %edi
	callq	gimp_image_convert_rgb
	movl	%eax, -452(%rbp)        # 4-byte Spill
.LBB4_17:                               # %if.end.60
	movl	$1, %eax
	xorl	%ecx, %ecx
	movabsq	$.L.str.27, %rdx
	movl	-168(%rbp), %edi
	movl	-24(%rbp), %esi
	movl	%ecx, -456(%rbp)        # 4-byte Spill
	movl	%esi, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	%eax, %esi
	shll	%cl, %esi
	subl	$1, %esi
	movl	%esi, -460(%rbp)        # 4-byte Spill
	movl	%eax, %esi
	movl	-456(%rbp), %r8d        # 4-byte Reload
	movq	%rdx, -472(%rbp)        # 8-byte Spill
	movl	%r8d, %edx
	movl	-460(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	movl	-456(%rbp), %r9d        # 4-byte Reload
	movq	-472(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	gimp_image_convert_indexed
	movl	%eax, -476(%rbp)        # 4-byte Spill
.LBB4_18:                               # %if.end.63
	movq	-192(%rbp), %rdi
	callq	g_free
	movq	-184(%rbp), %rdi
	callq	g_free
	movl	-172(%rbp), %edi
	cmpl	$128, -44(%rbp)
	movl	%edi, -480(%rbp)        # 4-byte Spill
	jge	.LBB4_20
# BB#19:                                # %cond.true
	movl	-44(%rbp), %eax
	movl	%eax, -484(%rbp)        # 4-byte Spill
	jmp	.LBB4_21
.LBB4_20:                               # %cond.false
	movl	$128, %eax
	movl	%eax, -484(%rbp)        # 4-byte Spill
	jmp	.LBB4_21
.LBB4_21:                               # %cond.end
	movl	-484(%rbp), %eax        # 4-byte Reload
	cmpl	$128, -48(%rbp)
	movl	%eax, -488(%rbp)        # 4-byte Spill
	jge	.LBB4_23
# BB#22:                                # %cond.true.68
	movl	-48(%rbp), %eax
	movl	%eax, -492(%rbp)        # 4-byte Spill
	jmp	.LBB4_24
.LBB4_23:                               # %cond.false.69
	movl	$128, %eax
	movl	%eax, -492(%rbp)        # 4-byte Spill
	jmp	.LBB4_24
.LBB4_24:                               # %cond.end.70
	movl	-492(%rbp), %eax        # 4-byte Reload
	movl	$1, %ecx
	movl	-480(%rbp), %edi        # 4-byte Reload
	movl	-488(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	gimp_drawable_get_thumbnail
	movq	%rax, -40(%rbp)
	movl	-168(%rbp), %edi
	callq	gimp_image_delete
	movl	%eax, -496(%rbp)        # 4-byte Spill
	jmp	.LBB4_45
.LBB4_25:                               # %if.else.74
	cmpl	$24, -24(%rbp)
	jne	.LBB4_37
# BB#26:                                # %if.then.77
	movl	-20(%rbp), %edi
	callq	gimp_item_get_image
	movl	%eax, -316(%rbp)
	movl	-44(%rbp), %edi
	movl	-48(%rbp), %esi
	movl	-316(%rbp), %eax
	movl	%edi, -500(%rbp)        # 4-byte Spill
	movl	%eax, %edi
	movl	%esi, -504(%rbp)        # 4-byte Spill
	callq	gimp_image_base_type
	movl	-500(%rbp), %edi        # 4-byte Reload
	movl	-504(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	gimp_image_new
	movl	%eax, -320(%rbp)
	movl	-320(%rbp), %edi
	callq	gimp_image_undo_disable
	movl	-20(%rbp), %edi
	movl	%eax, -508(%rbp)        # 4-byte Spill
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	je	.LBB4_28
# BB#27:                                # %if.then.102
	leaq	-364(%rbp), %rsi
	movl	-316(%rbp), %edi
	callq	gimp_image_get_colormap
	movq	%rax, -360(%rbp)
	movl	-320(%rbp), %edi
	movq	-360(%rbp), %rsi
	movl	-364(%rbp), %edx
	callq	gimp_image_set_colormap
	movq	-360(%rbp), %rdi
	movl	%eax, -512(%rbp)        # 4-byte Spill
	callq	g_free
.LBB4_28:                               # %if.end.109
	movl	-320(%rbp), %edi
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-20(%rbp), %eax
	movl	%edi, -516(%rbp)        # 4-byte Spill
	movl	%eax, %edi
	movl	%ecx, -520(%rbp)        # 4-byte Spill
	movl	%edx, -524(%rbp)        # 4-byte Spill
	callq	gimp_drawable_type
	movabsq	$.L.str.26, %rsi
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movl	-516(%rbp), %edi        # 4-byte Reload
	movl	-524(%rbp), %edx        # 4-byte Reload
	movl	-520(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_layer_new
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movl	%eax, -324(%rbp)
	movl	-320(%rbp), %edi
	movl	-324(%rbp), %esi
	callq	gimp_image_insert_layer
	movl	-20(%rbp), %edi
	movl	%eax, -528(%rbp)        # 4-byte Spill
	callq	gimp_drawable_get
	movq	%rax, -208(%rbp)
	movl	-324(%rbp), %edi
	callq	gimp_drawable_get
	leaq	-264(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -216(%rbp)
	movq	-208(%rbp), %rsi
	movl	-44(%rbp), %r8d
	movl	-48(%rbp), %r9d
	movl	%ecx, %edx
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	leaq	-312(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-216(%rbp), %rsi
	movl	-44(%rbp), %r8d
	movl	-48(%rbp), %r9d
	movl	%edx, -532(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_pixel_rgn_init
	movl	-44(%rbp), %ecx
	imull	-48(%rbp), %ecx
	shll	$2, %ecx
	movslq	%ecx, %rdi
	callq	g_malloc
	leaq	-264(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	%rax, -336(%rbp)
	movq	-336(%rbp), %rsi
	movl	-44(%rbp), %r8d
	movl	-48(%rbp), %r9d
	movl	%ecx, %edx
	callq	gimp_pixel_rgn_get_rect
	leaq	-312(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-336(%rbp), %rsi
	movl	-44(%rbp), %r8d
	movl	-48(%rbp), %r9d
	movl	%ecx, %edx
	callq	gimp_pixel_rgn_set_rect
	movq	-336(%rbp), %rdi
	callq	g_free
	movq	-216(%rbp), %rdi
	callq	gimp_drawable_detach
	movq	-208(%rbp), %rdi
	callq	gimp_drawable_detach
	movl	-20(%rbp), %edi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	je	.LBB4_30
# BB#29:                                # %if.then.121
	movl	-320(%rbp), %edi
	callq	gimp_image_convert_rgb
	movl	%eax, -536(%rbp)        # 4-byte Spill
.LBB4_30:                               # %if.end.123
	movabsq	$.L.str.28, %rdi
	leaq	-348(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$13, %r8d
	movl	$16, %eax
	movl	$127, %r9d
	movl	$22, %r10d
	movl	-320(%rbp), %r11d
	movl	-324(%rbp), %ebx
	movl	%r9d, -540(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$16, (%rsp)
	movl	%ebx, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$127, 24(%rsp)
	movl	$22, 32(%rsp)
	movl	%eax, -544(%rbp)        # 4-byte Spill
	movb	$0, %al
	movl	%r10d, -548(%rbp)       # 4-byte Spill
	callq	gimp_run_procedure
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rdi
	movl	-348(%rbp), %esi
	callq	gimp_destroy_params
	movl	-324(%rbp), %edi
	cmpl	$128, -44(%rbp)
	movl	%edi, -552(%rbp)        # 4-byte Spill
	jge	.LBB4_32
# BB#31:                                # %cond.true.127
	movl	-44(%rbp), %eax
	movl	%eax, -556(%rbp)        # 4-byte Spill
	jmp	.LBB4_33
.LBB4_32:                               # %cond.false.128
	movl	$128, %eax
	movl	%eax, -556(%rbp)        # 4-byte Spill
	jmp	.LBB4_33
.LBB4_33:                               # %cond.end.129
	movl	-556(%rbp), %eax        # 4-byte Reload
	cmpl	$128, -48(%rbp)
	movl	%eax, -560(%rbp)        # 4-byte Spill
	jge	.LBB4_35
# BB#34:                                # %cond.true.133
	movl	-48(%rbp), %eax
	movl	%eax, -564(%rbp)        # 4-byte Spill
	jmp	.LBB4_36
.LBB4_35:                               # %cond.false.134
	movl	$128, %eax
	movl	%eax, -564(%rbp)        # 4-byte Spill
	jmp	.LBB4_36
.LBB4_36:                               # %cond.end.135
	movl	-564(%rbp), %eax        # 4-byte Reload
	movl	$1, %ecx
	movl	-552(%rbp), %edi        # 4-byte Reload
	movl	-560(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	gimp_drawable_get_thumbnail
	movq	%rax, -40(%rbp)
	movl	-320(%rbp), %edi
	callq	gimp_image_delete
	movl	%eax, -568(%rbp)        # 4-byte Spill
	jmp	.LBB4_44
.LBB4_37:                               # %if.else.139
	movl	-20(%rbp), %edi
	cmpl	$128, -44(%rbp)
	movl	%edi, -572(%rbp)        # 4-byte Spill
	jge	.LBB4_39
# BB#38:                                # %cond.true.142
	movl	-44(%rbp), %eax
	movl	%eax, -576(%rbp)        # 4-byte Spill
	jmp	.LBB4_40
.LBB4_39:                               # %cond.false.143
	movl	$128, %eax
	movl	%eax, -576(%rbp)        # 4-byte Spill
	jmp	.LBB4_40
.LBB4_40:                               # %cond.end.144
	movl	-576(%rbp), %eax        # 4-byte Reload
	cmpl	$128, -48(%rbp)
	movl	%eax, -580(%rbp)        # 4-byte Spill
	jge	.LBB4_42
# BB#41:                                # %cond.true.148
	movl	-48(%rbp), %eax
	movl	%eax, -584(%rbp)        # 4-byte Spill
	jmp	.LBB4_43
.LBB4_42:                               # %cond.false.149
	movl	$128, %eax
	movl	%eax, -584(%rbp)        # 4-byte Spill
	jmp	.LBB4_43
.LBB4_43:                               # %cond.end.150
	movl	-584(%rbp), %eax        # 4-byte Reload
	movl	$1, %ecx
	movl	-572(%rbp), %edi        # 4-byte Reload
	movl	-580(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	gimp_drawable_get_thumbnail
	movq	%rax, -40(%rbp)
.LBB4_44:                               # %if.end.153
	jmp	.LBB4_45
.LBB4_45:                               # %if.end.154
	movq	-32(%rbp), %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	gtk_image_get_type
	movq	-592(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_image_set_from_pixbuf
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB4_46:                               # %return
	addq	$632, %rsp              # imm = 0x278
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	ico_dialog_update_icon_preview, .Lfunc_end4-ico_dialog_update_icon_preview
	.cfi_endproc

	.align	16, 0x90
	.type	ico_dialog_check_compat,@function
ico_dialog_check_compat:                # @ico_dialog_check_compat
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	32(%rcx), %eax
	jge	.LBB5_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movslq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	24(%rcx), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_drawable_width
	cmpl	$255, %eax
	jg	.LBB5_5
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB5_1 Depth=1
	movslq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	24(%rcx), %rcx
	movl	(%rcx,%rax,4), %edi
	callq	gimp_drawable_height
	cmpl	$255, %eax
	jg	.LBB5_5
# BB#4:                                 # %lor.lhs.false.7
                                        #   in Loop: Header=BB5_1 Depth=1
	movslq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	cmpl	$0, (%rcx,%rax,4)
	je	.LBB5_6
.LBB5_5:                                # %if.then
	movl	$1, -28(%rbp)
	jmp	.LBB5_8
.LBB5_6:                                # %if.end
                                        #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_7
.LBB5_7:                                # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB5_1
.LBB5_8:                                # %for.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gtk_widget_set_visible
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	ico_dialog_check_compat, .Lfunc_end5-ico_dialog_check_compat
	.cfi_endproc

	.align	16, 0x90
	.type	ico_dialog_bpp_changed,@function
ico_dialog_bpp_changed:                 # @ico_dialog_bpp_changed
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_toplevel
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_int_combo_box_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-36(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_int_combo_box_get_active
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-24(%rbp), %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -48(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -48(%rbp)
	je	.LBB6_3
# BB#2:                                 # %if.then
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.24, %rsi
	movl	$446, %edx              # imm = 0x1BE
	movabsq	$.L__func__.ico_dialog_bpp_changed, %rcx
	movabsq	$.L.str.25, %r8
	callq	g_assertion_message_expr
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %do.end
	movabsq	$.L.str.12, %rsi
	movq	-16(%rbp), %rdi
	callq	g_object_get_data
	movabsq	$.L.str.13, %rsi
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_object_get_data
	movl	%eax, %ecx
	movl	%ecx, -32(%rbp)
	movl	-36(%rbp), %ecx
	movslq	-32(%rbp), %rax
	movq	-48(%rbp), %rsi
	movq	(%rsi), %rsi
	movl	%ecx, (%rsi,%rax,4)
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-36(%rbp), %edx
	callq	ico_dialog_update_icon_preview
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	ico_dialog_bpp_changed, .Lfunc_end6-ico_dialog_bpp_changed
	.cfi_endproc

	.align	16, 0x90
	.type	ico_dialog_toggle_compress,@function
ico_dialog_toggle_compress:             # @ico_dialog_toggle_compress
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_toplevel
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -40(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -40(%rbp)
	je	.LBB7_3
# BB#2:                                 # %if.then
	jmp	.LBB7_4
.LBB7_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.24, %rsi
	movl	$468, %edx              # imm = 0x1D4
	movabsq	$.L__func__.ico_dialog_toggle_compress, %rcx
	movabsq	$.L.str.25, %r8
	callq	g_assertion_message_expr
.LBB7_4:                                # %if.end
	jmp	.LBB7_5
.LBB7_5:                                # %do.end
	movabsq	$.L.str.13, %rsi
	movq	-16(%rbp), %rdi
	callq	g_object_get_data
	movl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movslq	-28(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	16(%rdi), %rdi
	movl	%eax, (%rdi,%rsi,4)
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	ico_dialog_check_compat
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	ico_dialog_toggle_compress, .Lfunc_end7-ico_dialog_toggle_compress
	.cfi_endproc

	.align	16, 0x90
	.type	ico_dialog_get_layer_preview,@function
ico_dialog_get_layer_preview:           # @ico_dialog_get_layer_preview
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
	subq	$4160, %rsp             # imm = 0x1040
	movl	$4096, %eax             # imm = 0x1000
	movl	%eax, %ecx
	movabsq	$.L.str.11, %rdx
	leaq	-4144(%rbp), %r8
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	-20(%rbp), %eax
	movq	%r8, %rdi
	movq	%rcx, %rsi
	movl	%eax, %ecx
	movb	$0, %al
	callq	g_snprintf
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdx
	movq	%rdx, %rdi
	movl	%eax, -4148(%rbp)       # 4-byte Spill
	callq	g_type_check_instance_cast
	leaq	-4144(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB8_5
.LBB8_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.14, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -32(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB8_4
# BB#3:                                 # %if.then.7
	movq	$0, -8(%rbp)
	jmp	.LBB8_5
.LBB8_4:                                # %if.end.8
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB8_5:                                # %return
	movq	-8(%rbp), %rax
	addq	$4160, %rsp             # imm = 0x1040
	popq	%rbp
	retq
.Lfunc_end8:
	.size	ico_dialog_get_layer_preview, .Lfunc_end8-ico_dialog_get_layer_preview
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Windows Icon"
	.size	.L.str, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"file-ico"
	.size	.L.str.1, 9

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"plug-in-winicon"
	.size	.L.str.2, 16

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"save_info"
	.size	.L.str.3, 10

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Icon Details"
	.size	.L.str.4, 13

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"icons_vbox"
	.size	.L.str.5, 11

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"stock-id"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-warning"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"hint"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Large icons and compression are not supported by all programs. Older applications may not open this file correctly."
	.size	.L.str.9, 116

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"warning"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"layer_%i_hbox"
	.size	.L.str.11, 14

	.type	ico_create_icon_hbox.size,@object # @ico_create_icon_hbox.size
	.local	ico_create_icon_hbox.size
	.comm	ico_create_icon_hbox.size,8,8
	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"icon_layer"
	.size	.L.str.12, 11

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"icon_layer_num"
	.size	.L.str.13, 15

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"icon_preview"
	.size	.L.str.14, 13

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"1 bpp, 1-bit alpha, 2-slot palette"
	.size	.L.str.15, 35

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"4 bpp, 1-bit alpha, 16-slot palette"
	.size	.L.str.16, 36

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"8 bpp, 1-bit alpha, 256-slot palette"
	.size	.L.str.17, 37

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"24 bpp, 1-bit alpha, no palette"
	.size	.L.str.18, 32

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"32 bpp, 8-bit alpha, no palette"
	.size	.L.str.19, 32

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"changed"
	.size	.L.str.20, 8

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"icon_menu"
	.size	.L.str.21, 10

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Compressed (PNG)"
	.size	.L.str.22, 17

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"toggled"
	.size	.L.str.23, 8

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"ico-dialog.c"
	.size	.L.str.24, 13

	.type	.L__func__.ico_dialog_bpp_changed,@object # @__func__.ico_dialog_bpp_changed
.L__func__.ico_dialog_bpp_changed:
	.asciz	"ico_dialog_bpp_changed"
	.size	.L__func__.ico_dialog_bpp_changed, 23

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"info"
	.size	.L.str.25, 5

	.type	.L__func__.ico_dialog_toggle_compress,@object # @__func__.ico_dialog_toggle_compress
.L__func__.ico_dialog_toggle_compress:
	.asciz	"ico_dialog_toggle_compress"
	.size	.L__func__.ico_dialog_toggle_compress, 27

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"temporary"
	.size	.L.str.26, 10

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"dummy"
	.size	.L.str.27, 6

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"plug-in-threshold-alpha"
	.size	.L.str.28, 24


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
