	.text
	.file	"gimpthumbbox.bc"
	.globl	gimp_thumb_box_get_type
	.align	16, 0x90
	.type	gimp_thumb_box_get_type,@function
gimp_thumb_box_get_type:                # @gimp_thumb_box_get_type
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
	movq	gimp_thumb_box_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_thumb_box_get_type.g_define_type_id__volatile, %rax
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
	callq	gtk_frame_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$832, %edx              # imm = 0x340
	movabsq	$gimp_thumb_box_class_intern_init, %rdi
	movl	$232, %r8d
	movabsq	$gimp_thumb_box_init, %rcx
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
	callq	gimp_progress_interface_get_type
	movabsq	$gimp_thumb_box_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_thumb_box_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_thumb_box_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_thumb_box_get_type, .Lfunc_end0-gimp_thumb_box_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_thumb_box_class_intern_init,@function
gimp_thumb_box_class_intern_init:       # @gimp_thumb_box_class_intern_init
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
	movq	%rax, gimp_thumb_box_parent_class
	cmpl	$0, GimpThumbBox_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpThumbBox_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_thumb_box_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_thumb_box_class_intern_init, .Lfunc_end1-gimp_thumb_box_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_thumb_box_init,@function
gimp_thumb_box_init:                    # @gimp_thumb_box_init
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-8(%rbp), %rax
	movl	$0, 224(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_thumb_box_init, .Lfunc_end2-gimp_thumb_box_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_thumb_box_progress_iface_init,@function
gimp_thumb_box_progress_iface_init:     # @gimp_thumb_box_progress_iface_init
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
	movabsq	$gimp_thumb_box_progress_message, %rax
	movabsq	$gimp_thumb_box_progress_pulse, %rcx
	movabsq	$gimp_thumb_box_progress_get_value, %rdx
	movabsq	$gimp_thumb_box_progress_set_value, %rsi
	movabsq	$gimp_thumb_box_progress_is_active, %r8
	movabsq	$gimp_thumb_box_progress_end, %r9
	movabsq	$gimp_thumb_box_progress_start, %r10
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%r10, 16(%rdi)
	movq	-8(%rbp), %rdi
	movq	%r9, 24(%rdi)
	movq	-8(%rbp), %rdi
	movq	%r8, 32(%rdi)
	movq	-8(%rbp), %rdi
	movq	%rsi, 48(%rdi)
	movq	-8(%rbp), %rsi
	movq	%rdx, 56(%rsi)
	movq	-8(%rbp), %rdx
	movq	%rcx, 64(%rdx)
	movq	-8(%rbp), %rcx
	movq	%rax, 80(%rcx)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_thumb_box_progress_iface_init, .Lfunc_end3-gimp_thumb_box_progress_iface_init
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI4_0:
	.long	1056964608              # float 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_1:
	.quad	4605681218924226942     # double 0.83333333333329995
	.text
	.globl	gimp_thumb_box_new
	.align	16, 0x90
	.type	gimp_thumb_box_new,@function
gimp_thumb_box_new:                     # @gimp_thumb_box_new
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
	subq	$528, %rsp              # imm = 0x210
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -124(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -124(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_thumb_box_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_16
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	callq	gimp_thumb_box_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rax, 160(%rsi)
	callq	gtk_event_box_new
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.3, %rsi
	movabsq	$gimp_thumb_box_ebox_button_press, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-144(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.4, %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_get_toggle_behavior_mask
	movl	%eax, %edi
	callq	gimp_get_mod_string
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_strdup_printf
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	gimp_help_set_help_data
	movq	-80(%rbp), %rdi
	callq	g_free
	movl	$1, %edi
	xorl	%esi, %esi
	callq	gtk_box_new
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_button_new
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.5, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new_with_mnemonic
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI4_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-64(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-72(%rbp), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.3, %rsi
	movabsq	$gtk_true, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-64(%rbp), %r10
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%rax, %rdx
	movq	-200(%rbp), %rcx        # 8-byte Reload
	movq	-200(%rbp), %r8         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.6, %rsi
	movabsq	$gtk_true, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rdi
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movq	-208(%rbp), %r8         # 8-byte Reload
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.7, %rsi
	movabsq	$gtk_true, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rdi
	movq	%rdx, -224(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-224(%rbp), %rcx        # 8-byte Reload
	movq	-224(%rbp), %r8         # 8-byte Reload
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.8, %rsi
	movabsq	$gtk_true, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rdi
	movq	%rdx, -240(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-240(%rbp), %rcx        # 8-byte Reload
	movq	-240(%rbp), %r8         # 8-byte Reload
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movl	$1, %edi
	movl	$6, %esi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-32(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	%ecx, %esi
	callq	gtk_box_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_homogeneous
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
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_imagefile_new
	movabsq	$.L.str.9, %rsi
	movabsq	$gimp_thumb_box_imagefile_info_changed, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %r10
	movq	%rax, 168(%r10)
	movq	-24(%rbp), %rax
	movq	168(%rax), %rax
	movq	-24(%rbp), %r10
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-304(%rbp), %rdx        # 8-byte Reload
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	-24(%rbp), %rcx
	movq	168(%rcx), %rdi
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_imagefile_get_thumbnail
	movabsq	$.L.str.10, %rsi
	movabsq	$gimp_thumb_box_thumb_state_notify, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -320(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-320(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	leaq	-84(%rbp), %rdi
	leaq	-88(%rbp), %rsi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gimp_view_renderer_get_frame_size
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	32(%rcx), %rcx
	movl	352(%rcx), %r9d
	movl	-84(%rbp), %r11d
	cmpl	-88(%rbp), %r11d
	movq	%rax, -352(%rbp)        # 8-byte Spill
	movl	%r9d, -356(%rbp)        # 4-byte Spill
	jle	.LBB4_14
# BB#13:                                # %cond.true
	movl	-84(%rbp), %eax
	movl	%eax, -360(%rbp)        # 4-byte Spill
	jmp	.LBB4_15
.LBB4_14:                               # %cond.false
	movl	-88(%rbp), %eax
	movl	%eax, -360(%rbp)        # 4-byte Spill
.LBB4_15:                               # %cond.end
	movl	-360(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movl	-356(%rbp), %edx        # 4-byte Reload
	addl	%eax, %edx
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	-352(%rbp), %rsi        # 8-byte Reload
	movl	%ecx, -364(%rbp)        # 4-byte Spill
	movl	-364(%rbp), %r8d        # 4-byte Reload
	callq	gimp_view_new
	movq	-24(%rbp), %rsi
	movq	%rax, 184(%rsi)
	movq	-56(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%ecx, %ecx
	movl	$2, %r8d
	movq	-24(%rbp), %rsi
	movq	184(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rax
	movq	184(%rax), %rdi
	callq	gtk_widget_show
	movq	-72(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	184(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_mnemonic_widget
	movabsq	$.L.str.11, %rsi
	movabsq	$gimp_thumb_box_thumbnail_clicked, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdi
	movq	184(%rdi), %rdi
	movq	-24(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.12, %rdi
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gettext
	movq	%rax, %rdi
	callq	gtk_label_new
	movq	-24(%rbp), %rcx
	movq	%rax, 192(%rcx)
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_ellipsize
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_justify
	movq	-24(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-416(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %esi
	movl	$1, %edx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_label_set_attributes
	movq	-40(%rbp), %rdi
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	192(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -428(%rbp)        # 4-byte Spill
	movl	-428(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rax
	movq	192(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.13, %rdi
	callq	gtk_label_new
	movq	-24(%rbp), %rsi
	movq	%rax, 200(%rsi)
	movq	-24(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movss	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-24(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_justify
	movq	-24(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_line_wrap
	movq	-24(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$15, %esi
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$1, %al
	callq	gimp_label_set_attributes
	movq	-40(%rbp), %rdi
	movq	%rdi, -472(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	200(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -476(%rbp)        # 4-byte Spill
	movl	-476(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gtk_widget_show
	callq	gtk_progress_bar_new
	movq	-24(%rbp), %rsi
	movq	%rax, 216(%rsi)
	movq	-24(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	gtk_progress_bar_get_type
	movq	-488(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.14, %rsi
	movq	%rax, %rdi
	callq	gtk_progress_bar_set_text
	movq	-40(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	216(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -500(%rbp)        # 4-byte Spill
	movl	-500(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_end
	movl	$1, %esi
	movq	-24(%rbp), %rax
	movq	216(%rax), %rdi
	callq	gtk_widget_set_no_show_all
	leaq	-96(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gtk_widget_size_request
	leaq	-104(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	216(%rax), %rdi
	callq	gtk_widget_size_request
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rax
	movq	200(%rax), %rdi
	movl	-92(%rbp), %edx
	callq	gtk_widget_set_size_request
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rax
	movq	192(%rax), %rdi
	movl	-104(%rbp), %esi
	callq	gtk_widget_set_size_request
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rax
	movq	216(%rax), %rdi
	movl	-100(%rbp), %edx
	callq	gtk_widget_set_size_request
	movq	-24(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	gtk_progress_bar_get_type
	movq	-512(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.15, %rsi
	movq	%rax, %rdi
	callq	gtk_progress_bar_set_text
	movq	-24(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-520(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB4_16:                               # %return
	movq	-8(%rbp), %rax
	addq	$528, %rsp              # imm = 0x210
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_thumb_box_new, .Lfunc_end4-gimp_thumb_box_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_thumb_box_ebox_button_press,@function
gimp_thumb_box_ebox_button_press:       # @gimp_thumb_box_ebox_button_press
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movl	48(%rdx), %esi
	movq	-24(%rbp), %rdx
	callq	gimp_thumb_box_thumbnail_clicked
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_thumb_box_ebox_button_press, .Lfunc_end5-gimp_thumb_box_ebox_button_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_thumb_box_imagefile_info_changed,@function
gimp_thumb_box_imagefile_info_changed:  # @gimp_thumb_box_imagefile_info_changed
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	200(%rsi), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_imagefile_get_desc_string
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_label_set_text
	movabsq	$.L.str.18, %rsi
	movabsq	$this_is_ugly, %rax
	movabsq	$.L.str.19, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movl	$1, %r9d
	movq	-16(%rbp), %rdi
	movq	200(%rdi), %rdi
	movq	%rax, %rdx
	callq	g_signal_connect_data
	movq	%rax, -40(%rbp)         # 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_thumb_box_imagefile_info_changed, .Lfunc_end6-gimp_thumb_box_imagefile_info_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_thumb_box_thumb_state_notify,@function
gimp_thumb_box_thumb_state_notify:      # @gimp_thumb_box_thumb_state_notify
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	cmpl	$0, 224(%rdx)
	je	.LBB7_2
# BB#1:                                 # %if.then
	jmp	.LBB7_7
.LBB7_2:                                # %if.end
	movq	-8(%rbp), %rax
	cmpl	$1, 24(%rax)
	jne	.LBB7_4
# BB#3:                                 # %if.then.1
	jmp	.LBB7_7
.LBB7_4:                                # %if.end.2
	movq	-8(%rbp), %rax
	movl	92(%rax), %ecx
	orl	$2, %ecx
	subl	$6, %ecx
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	je	.LBB7_5
	jmp	.LBB7_6
.LBB7_5:                                # %sw.bb
	movl	$300, %edi              # imm = 0x12C
	movabsq	$gimp_thumb_box_auto_thumbnail, %rax
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	callq	g_idle_add_full
	movq	-24(%rbp), %rcx
	movl	%eax, 224(%rcx)
	jmp	.LBB7_7
.LBB7_6:                                # %sw.default
	jmp	.LBB7_7
.LBB7_7:                                # %sw.epilog
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_thumb_box_thumb_state_notify, .Lfunc_end7-gimp_thumb_box_thumb_state_notify
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_thumb_box_thumbnail_clicked,@function
gimp_thumb_box_thumbnail_clicked:       # @gimp_thumb_box_thumbnail_clicked
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movl	%esi, -36(%rbp)         # 4-byte Spill
	callq	gimp_get_toggle_behavior_mask
	xorl	%esi, %esi
	movl	$1, %ecx
	movl	-36(%rbp), %r8d         # 4-byte Reload
	andl	%eax, %r8d
	cmpl	$0, %r8d
	cmovnel	%ecx, %esi
	movq	-32(%rbp), %rdi         # 8-byte Reload
	callq	gimp_thumb_box_create_thumbnails
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_thumb_box_thumbnail_clicked, .Lfunc_end8-gimp_thumb_box_thumbnail_clicked
	.cfi_endproc

	.globl	gimp_thumb_box_take_uri
	.align	16, 0x90
	.type	gimp_thumb_box_take_uri,@function
gimp_thumb_box_take_uri:                # @gimp_thumb_box_take_uri
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_thumb_box_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_thumb_box_take_uri, %rsi
	movabsq	$.L.str.16, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_18
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movq	-8(%rbp), %rax
	cmpl	$0, 224(%rax)
	je	.LBB9_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movl	224(%rax), %edi
	callq	g_source_remove
	movq	-8(%rbp), %rcx
	movl	$0, 224(%rcx)
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB9_14:                               # %if.end.16
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_take_name
	cmpq	$0, -16(%rbp)
	je	.LBB9_16
# BB#15:                                # %if.then.20
	movq	-16(%rbp), %rdi
	callq	file_utils_uri_display_basename
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-48(%rbp), %rdi
	callq	g_free
	jmp	.LBB9_17
.LBB9_16:                               # %if.else.25
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_label_set_text
.LBB9_17:                               # %if.end.30
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpq	$0, -16(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movq	%rax, %rdi
	callq	gtk_widget_set_sensitive
	movq	-8(%rbp), %rax
	movq	168(%rax), %rdi
	callq	gimp_imagefile_update
.LBB9_18:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_thumb_box_take_uri, .Lfunc_end9-gimp_thumb_box_take_uri
	.cfi_endproc

	.globl	gimp_thumb_box_take_uris
	.align	16, 0x90
	.type	gimp_thumb_box_take_uris,@function
gimp_thumb_box_take_uris:               # @gimp_thumb_box_take_uris
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_thumb_box_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_thumb_box_take_uris, %rsi
	movabsq	$.L.str.16, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_15
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-8(%rbp), %rax
	cmpq	$0, 176(%rax)
	je	.LBB10_14
# BB#13:                                # %if.then.13
	movabsq	$g_free, %rsi
	movq	-8(%rbp), %rax
	movq	176(%rax), %rdi
	callq	g_slist_free_full
	movq	-8(%rbp), %rax
	movq	$0, 176(%rax)
.LBB10_14:                              # %if.end.16
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 176(%rcx)
.LBB10_15:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_thumb_box_take_uris, .Lfunc_end10-gimp_thumb_box_take_uris
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_thumb_box_class_init,@function
gimp_thumb_box_class_init:              # @gimp_thumb_box_class_init
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
	subq	$32, %rsp
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
	movabsq	$gimp_thumb_box_style_set, %rsi
	movabsq	$gimp_thumb_box_finalize, %rdi
	movabsq	$gimp_thumb_box_dispose, %rcx
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rcx, 40(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 48(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 280(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_thumb_box_class_init, .Lfunc_end11-gimp_thumb_box_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_thumb_box_dispose,@function
gimp_thumb_box_dispose:                 # @gimp_thumb_box_dispose
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_thumb_box_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 224(%rax)
	je	.LBB12_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	224(%rax), %edi
	callq	g_source_remove
	movq	-16(%rbp), %rcx
	movl	$0, 224(%rcx)
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB12_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_thumb_box_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	movq	-16(%rbp), %rax
	movq	$0, 216(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_thumb_box_dispose, .Lfunc_end12-gimp_thumb_box_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_thumb_box_finalize,@function
gimp_thumb_box_finalize:                # @gimp_thumb_box_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_thumb_box_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_thumb_box_take_uris
	movq	-16(%rbp), %rax
	cmpq	$0, 168(%rax)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 168(%rax)
.LBB13_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_thumb_box_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_thumb_box_finalize, .Lfunc_end13-gimp_thumb_box_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_thumb_box_style_set,@function
gimp_thumb_box_style_set:               # @gimp_thumb_box_style_set
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_thumb_box_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_style
	movq	%rax, -32(%rbp)
	movq	gimp_thumb_box_parent_class, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	280(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	xorl	%esi, %esi
	movq	-24(%rbp), %rax
	movq	184(%rax), %rdi
	movq	-32(%rbp), %rax
	addq	$384, %rax              # imm = 0x180
	movq	%rax, %rdx
	callq	gtk_widget_modify_bg
	movl	$4, %esi
	movq	-24(%rbp), %rax
	movq	184(%rax), %rdi
	movq	-32(%rbp), %rax
	addq	$384, %rax              # imm = 0x180
	movq	%rax, %rdx
	callq	gtk_widget_modify_bg
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	xorl	%esi, %esi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$384, %rax              # imm = 0x180
	movq	%rax, %rdx
	callq	gtk_widget_modify_bg
	movl	$4, %esi
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$384, %rax              # imm = 0x180
	movq	%rax, %rdx
	callq	gtk_widget_modify_bg
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_thumb_box_style_set, .Lfunc_end14-gimp_thumb_box_style_set
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_thumb_box_progress_start,@function
gimp_thumb_box_progress_start:          # @gimp_thumb_box_progress_start
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gimp_thumb_box_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 216(%rax)
	jne	.LBB15_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB15_14
.LBB15_2:                               # %if.end
	movq	-40(%rbp), %rax
	cmpl	$0, 208(%rax)
	jne	.LBB15_13
# BB#3:                                 # %if.then.4
	movq	-40(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_progress_bar_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gtk_progress_bar_set_fraction
	movq	-40(%rbp), %rax
	movl	$1, 208(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_toplevel
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_file_dialog_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB15_5
# BB#4:                                 # %if.then.14
	movl	$0, -76(%rbp)
	jmp	.LBB15_10
.LBB15_5:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_8
# BB#6:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB15_8
# BB#7:                                 # %if.then.17
	movl	$1, -76(%rbp)
	jmp	.LBB15_9
.LBB15_8:                               # %if.else.18
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB15_9:                               # %if.end.20
	jmp	.LBB15_10
.LBB15_10:                              # %if.end.21
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB15_12
# BB#11:                                # %if.then.23
	movq	-56(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967290, %esi       # imm = 0xFFFFFFFA
	movl	-28(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_dialog_set_response_sensitive
.LBB15_12:                              # %if.end.26
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB15_14
.LBB15_13:                              # %if.end.27
	movq	$0, -8(%rbp)
.LBB15_14:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_thumb_box_progress_start, .Lfunc_end15-gimp_thumb_box_progress_start
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_thumb_box_progress_end,@function
gimp_thumb_box_progress_end:            # @gimp_thumb_box_progress_end
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_thumb_box_progress_is_active
	cmpl	$0, %eax
	je	.LBB16_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_thumb_box_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_progress_bar_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_progress_bar_set_fraction
	movq	-16(%rbp), %rax
	movl	$0, 208(%rax)
.LBB16_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_thumb_box_progress_end, .Lfunc_end16-gimp_thumb_box_progress_end
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_thumb_box_progress_is_active,@function
gimp_thumb_box_progress_is_active:      # @gimp_thumb_box_progress_is_active
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_thumb_box_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 216(%rax)
	movb	%dl, -25(%rbp)          # 1-byte Spill
	je	.LBB17_2
# BB#1:                                 # %land.rhs
	movq	-16(%rbp), %rax
	cmpl	$0, 208(%rax)
	setne	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB17_2:                               # %land.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_thumb_box_progress_is_active, .Lfunc_end17-gimp_thumb_box_progress_is_active
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_thumb_box_progress_set_value,@function
gimp_thumb_box_progress_set_value:      # @gimp_thumb_box_progress_set_value
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_thumb_box_progress_is_active
	cmpl	$0, %eax
	je	.LBB18_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_thumb_box_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_progress_bar_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gtk_progress_bar_set_fraction
.LBB18_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_thumb_box_progress_set_value, .Lfunc_end18-gimp_thumb_box_progress_set_value
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_thumb_box_progress_get_value,@function
gimp_thumb_box_progress_get_value:      # @gimp_thumb_box_progress_get_value
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_thumb_box_progress_is_active
	cmpl	$0, %eax
	je	.LBB19_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_thumb_box_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_progress_bar_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_progress_bar_get_fraction
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB19_3
.LBB19_2:                               # %if.end
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
.LBB19_3:                               # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_thumb_box_progress_get_value, .Lfunc_end19-gimp_thumb_box_progress_get_value
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_thumb_box_progress_pulse,@function
gimp_thumb_box_progress_pulse:          # @gimp_thumb_box_progress_pulse
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_thumb_box_progress_is_active
	cmpl	$0, %eax
	je	.LBB20_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_thumb_box_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_progress_bar_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_progress_bar_pulse
.LBB20_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_thumb_box_progress_pulse, .Lfunc_end20-gimp_thumb_box_progress_pulse
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_thumb_box_progress_message,@function
gimp_thumb_box_progress_message:        # @gimp_thumb_box_progress_message
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
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_thumb_box_progress_message, .Lfunc_end21-gimp_thumb_box_progress_message
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI22_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_thumb_box_create_thumbnails,@function
gimp_thumb_box_create_thumbnails:       # @gimp_thumb_box_create_thumbnails
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
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	160(%rdi), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$0, 352(%rax)
	jne	.LBB22_2
# BB#1:                                 # %if.then
	jmp	.LBB22_45
.LBB22_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_toplevel
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_file_dialog_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB22_4
# BB#3:                                 # %if.then.7
	movl	$0, -84(%rbp)
	jmp	.LBB22_9
.LBB22_4:                               # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_7
# BB#5:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB22_7
# BB#6:                                 # %if.then.11
	movl	$1, -84(%rbp)
	jmp	.LBB22_8
.LBB22_7:                               # %if.else.12
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB22_8:                               # %if.end.14
	jmp	.LBB22_9
.LBB22_9:                               # %if.end.15
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB22_11
# BB#10:                                # %if.then.17
	movq	-48(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_file_dialog_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
.LBB22_11:                              # %if.end.20
	movq	-24(%rbp), %rdi
	callq	gimp_set_busy
	cmpq	$0, -40(%rbp)
	je	.LBB22_13
# BB#12:                                # %if.then.22
	xorl	%esi, %esi
	movq	-40(%rbp), %rdi
	callq	gimp_file_dialog_set_sensitive
	jmp	.LBB22_14
.LBB22_13:                              # %if.else.23
	xorl	%esi, %esi
	movq	-48(%rbp), %rdi
	callq	gtk_widget_set_sensitive
.LBB22_14:                              # %if.end.24
	movq	-8(%rbp), %rax
	cmpq	$0, 176(%rax)
	je	.LBB22_16
# BB#15:                                # %if.then.26
	movq	-8(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gtk_widget_hide
	movq	-8(%rbp), %rax
	movq	216(%rax), %rdi
	callq	gtk_widget_show
.LBB22_16:                              # %if.end.28
	movq	-8(%rbp), %rax
	movq	176(%rax), %rdi
	callq	g_slist_length
	movl	%eax, -60(%rbp)
	cmpl	$1, -60(%rbp)
	jle	.LBB22_34
# BB#17:                                # %if.then.32
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.15, %rsi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	gimp_progress_start
	movq	-8(%rbp), %rsi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_sub_progress_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_sub_progress_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movl	-60(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_sub_progress_set_step
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movl	$1, -64(%rbp)
.LBB22_18:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_20 Depth 2
	cmpq	$0, -56(%rbp)
	je	.LBB22_30
# BB#19:                                # %for.body
                                        #   in Loop: Header=BB22_18 Depth=1
	movabsq	$.L.str.17, %rdi
	callq	gettext
	movl	-64(%rbp), %esi
	movl	-60(%rbp), %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -96(%rbp)
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_progress_bar_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_progress_bar_set_text
	movq	-96(%rbp), %rdi
	callq	g_free
	xorps	%xmm0, %xmm0
	movq	-32(%rbp), %rdi
	callq	gimp_progress_set_value
.LBB22_20:                              # %while.cond
                                        #   Parent Loop BB22_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	gtk_events_pending
	cmpl	$0, %eax
	je	.LBB22_22
# BB#21:                                # %while.body
                                        #   in Loop: Header=BB22_20 Depth=2
	callq	gtk_main_iteration
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jmp	.LBB22_20
.LBB22_22:                              # %while.end
                                        #   in Loop: Header=BB22_18 Depth=1
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movl	352(%rax), %edx
	movl	-12(%rbp), %ecx
	movq	-32(%rbp), %r8
	callq	gimp_thumb_box_create_thumbnail
	cmpq	$0, -40(%rbp)
	je	.LBB22_25
# BB#23:                                # %land.lhs.true.55
                                        #   in Loop: Header=BB22_18 Depth=1
	movq	-40(%rbp), %rax
	cmpl	$0, 348(%rax)
	je	.LBB22_25
# BB#24:                                # %if.then.57
	jmp	.LBB22_37
.LBB22_25:                              # %if.end.58
                                        #   in Loop: Header=BB22_18 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_sub_progress_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-64(%rbp), %esi
	movl	-60(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_sub_progress_set_step
# BB#26:                                # %for.inc
                                        #   in Loop: Header=BB22_18 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB22_28
# BB#27:                                # %cond.true
                                        #   in Loop: Header=BB22_18 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB22_29
.LBB22_28:                              # %cond.false
                                        #   in Loop: Header=BB22_18 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB22_29
.LBB22_29:                              # %cond.end
                                        #   in Loop: Header=BB22_18 Depth=1
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	movl	-64(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -64(%rbp)
	jmp	.LBB22_18
.LBB22_30:                              # %for.end
	movabsq	$.L.str.17, %rdi
	callq	gettext
	movl	-60(%rbp), %esi
	movl	-60(%rbp), %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -96(%rbp)
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_progress_bar_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_progress_bar_set_text
	movq	-96(%rbp), %rdi
	callq	g_free
	xorps	%xmm0, %xmm0
	movq	-32(%rbp), %rdi
	callq	gimp_progress_set_value
.LBB22_31:                              # %while.cond.68
                                        # =>This Inner Loop Header: Depth=1
	callq	gtk_events_pending
	cmpl	$0, %eax
	je	.LBB22_33
# BB#32:                                # %while.body.71
                                        #   in Loop: Header=BB22_31 Depth=1
	callq	gtk_main_iteration
	movl	%eax, -196(%rbp)        # 4-byte Spill
	jmp	.LBB22_31
.LBB22_33:                              # %while.end.73
	jmp	.LBB22_34
.LBB22_34:                              # %if.end.74
	movq	-8(%rbp), %rax
	cmpq	$0, 176(%rax)
	je	.LBB22_36
# BB#35:                                # %if.then.77
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	176(%rax), %rax
	movq	(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movl	352(%rax), %edx
	movl	-12(%rbp), %ecx
	movq	-32(%rbp), %r8
	callq	gimp_thumb_box_create_thumbnail
	movsd	.LCPI22_0, %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rdi
	callq	gimp_progress_set_value
.LBB22_36:                              # %if.end.82
	jmp	.LBB22_37
.LBB22_37:                              # %canceled.83
	cmpl	$1, -60(%rbp)
	jle	.LBB22_39
# BB#38:                                # %if.then.85
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_progress_end
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_progress_bar_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.15, %rsi
	movq	%rax, %rdi
	callq	gtk_progress_bar_set_text
.LBB22_39:                              # %if.end.91
	movq	-8(%rbp), %rax
	cmpq	$0, 176(%rax)
	je	.LBB22_41
# BB#40:                                # %if.then.94
	movq	-8(%rbp), %rax
	movq	216(%rax), %rdi
	callq	gtk_widget_hide
	movq	-8(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gtk_widget_show
.LBB22_41:                              # %if.end.97
	cmpq	$0, -40(%rbp)
	je	.LBB22_43
# BB#42:                                # %if.then.99
	movl	$1, %esi
	movq	-40(%rbp), %rdi
	callq	gimp_file_dialog_set_sensitive
	jmp	.LBB22_44
.LBB22_43:                              # %if.else.100
	movl	$1, %esi
	movq	-48(%rbp), %rdi
	callq	gtk_widget_set_sensitive
.LBB22_44:                              # %if.end.101
	movq	-24(%rbp), %rdi
	callq	gimp_unset_busy
.LBB22_45:                              # %return
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_thumb_box_create_thumbnails, .Lfunc_end22-gimp_thumb_box_create_thumbnails
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_thumb_box_create_thumbnail,@function
gimp_thumb_box_create_thumbnail:        # @gimp_thumb_box_create_thumbnail
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	file_utils_filename_from_uri
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB23_4
# BB#1:                                 # %if.then
	movl	$1, %esi
	movq	-40(%rbp), %rdi
	callq	g_file_test
	movl	%eax, -60(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_free
	cmpl	$0, -60(%rbp)
	jne	.LBB23_3
# BB#2:                                 # %if.then.3
	jmp	.LBB23_8
.LBB23_3:                               # %if.end
	jmp	.LBB23_4
.LBB23_4:                               # %if.end.4
	movq	-8(%rbp), %rax
	movq	168(%rax), %rdi
	callq	gimp_imagefile_get_thumbnail
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	file_utils_uri_display_basename
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	192(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-56(%rbp), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_name
	cmpl	$0, -24(%rbp)
	jne	.LBB23_7
# BB#5:                                 # %lor.lhs.false
	movq	-48(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_thumbnail_peek_thumb
	cmpl	$7, %eax
	jae	.LBB23_8
# BB#6:                                 # %land.lhs.true
	movq	-48(%rbp), %rdi
	callq	gimp_thumbnail_has_failed
	cmpl	$0, %eax
	jne	.LBB23_8
.LBB23_7:                               # %if.then.17
	movq	-8(%rbp), %rax
	movq	168(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	160(%rax), %rsi
	movq	-32(%rbp), %rdx
	movl	-20(%rbp), %ecx
	cmpl	$0, -24(%rbp)
	setne	%r8b
	xorb	$-1, %r8b
	andb	$1, %r8b
	movzbl	%r8b, %r8d
	callq	gimp_imagefile_create_thumbnail
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB23_8:                               # %if.end.21
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_thumb_box_create_thumbnail, .Lfunc_end23-gimp_thumb_box_create_thumbnail
	.cfi_endproc

	.align	16, 0x90
	.type	this_is_ugly,@function
this_is_ugly:                           # @this_is_ugly
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_queue_resize
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$this_is_ugly, %rdx
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %r9
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%r9, -40(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-40(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -44(%rbp)         # 4-byte Spill
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	this_is_ugly, .Lfunc_end24-this_is_ugly
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_thumb_box_auto_thumbnail,@function
gimp_thumb_box_auto_thumbnail:          # @gimp_thumb_box_auto_thumbnail
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	160(%rdi), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	168(%rdi), %rdi
	callq	gimp_imagefile_get_thumbnail
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, 224(%rax)
	movq	-32(%rbp), %rax
	cmpl	$4, 24(%rax)
	jne	.LBB25_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB25_13
.LBB25_2:                               # %if.end
	movq	-32(%rbp), %rax
	movl	92(%rax), %ecx
	orl	$2, %ecx
	subl	$6, %ecx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	je	.LBB25_3
	jmp	.LBB25_11
.LBB25_3:                               # %sw.bb
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	cmpq	360(%rcx), %rax
	jae	.LBB25_10
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rdi
	callq	gimp_thumbnail_has_failed
	cmpl	$0, %eax
	jne	.LBB25_10
# BB#5:                                 # %land.lhs.true.6
	movq	-24(%rbp), %rax
	movq	376(%rax), %rax
	movq	64(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	file_procedure_find_by_extension
	cmpq	$0, %rax
	je	.LBB25_10
# BB#6:                                 # %if.then.9
	movq	-32(%rbp), %rax
	cmpq	$0, 48(%rax)
	jle	.LBB25_8
# BB#7:                                 # %if.then.12
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_format_size
	movabsq	$.L.str.21, %rdi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.20, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_label_set_text
	movq	-56(%rbp), %rdi
	callq	g_free
	movq	-48(%rbp), %rdi
	callq	g_free
	jmp	.LBB25_9
.LBB25_8:                               # %if.else
	movq	-16(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.21, %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_label_set_text
.LBB25_9:                               # %if.end.23
	movq	-16(%rbp), %rax
	movq	168(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	160(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r8d
	movq	-24(%rbp), %rsi
	movq	32(%rsi), %rsi
	movl	352(%rsi), %ecx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_imagefile_create_thumbnail_weak
.LBB25_10:                              # %if.end.29
	jmp	.LBB25_12
.LBB25_11:                              # %sw.default
	jmp	.LBB25_12
.LBB25_12:                              # %sw.epilog
	movl	$0, -4(%rbp)
.LBB25_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_thumb_box_auto_thumbnail, .Lfunc_end25-gimp_thumb_box_auto_thumbnail
	.cfi_endproc

	.type	gimp_thumb_box_get_type.g_define_type_id__volatile,@object # @gimp_thumb_box_get_type.g_define_type_id__volatile
	.local	gimp_thumb_box_get_type.g_define_type_id__volatile
	.comm	gimp_thumb_box_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpThumbBox"
	.size	.L.str, 13

	.type	gimp_thumb_box_get_type.g_implement_interface_info,@object # @gimp_thumb_box_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_thumb_box_get_type.g_implement_interface_info:
	.quad	gimp_thumb_box_progress_iface_init
	.quad	0
	.quad	0
	.size	gimp_thumb_box_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_thumb_box_new,@object # @__func__.gimp_thumb_box_new
.L__func__.gimp_thumb_box_new:
	.asciz	"gimp_thumb_box_new"
	.size	.L__func__.gimp_thumb_box_new, 19

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"button-press-event"
	.size	.L.str.3, 19

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Click to update preview\n%s-Click to force update even if preview is up-to-date"
	.size	.L.str.4, 79

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Pr_eview"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"button-release-event"
	.size	.L.str.6, 21

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"enter-notify-event"
	.size	.L.str.7, 19

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"leave-notify-event"
	.size	.L.str.8, 19

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"info-changed"
	.size	.L.str.9, 13

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"notify::thumb-state"
	.size	.L.str.10, 20

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"clicked"
	.size	.L.str.11, 8

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"No selection"
	.size	.L.str.12, 13

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	" \n \n \n "
	.size	.L.str.13, 8

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Fog"
	.size	.L.str.14, 4

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.zero	1
	.size	.L.str.15, 1

	.type	.L__func__.gimp_thumb_box_take_uri,@object # @__func__.gimp_thumb_box_take_uri
.L__func__.gimp_thumb_box_take_uri:
	.asciz	"gimp_thumb_box_take_uri"
	.size	.L__func__.gimp_thumb_box_take_uri, 24

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"GIMP_IS_THUMB_BOX (box)"
	.size	.L.str.16, 24

	.type	.L__func__.gimp_thumb_box_take_uris,@object # @__func__.gimp_thumb_box_take_uris
.L__func__.gimp_thumb_box_take_uris:
	.asciz	"gimp_thumb_box_take_uris"
	.size	.L__func__.gimp_thumb_box_take_uris, 25

	.type	gimp_thumb_box_parent_class,@object # @gimp_thumb_box_parent_class
	.local	gimp_thumb_box_parent_class
	.comm	gimp_thumb_box_parent_class,8,8
	.type	GimpThumbBox_private_offset,@object # @GimpThumbBox_private_offset
	.local	GimpThumbBox_private_offset
	.comm	GimpThumbBox_private_offset,4,4
	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Thumbnail %d of %d"
	.size	.L.str.17, 19

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"size-allocate"
	.size	.L.str.18, 14

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"this too"
	.size	.L.str.19, 9

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"%s\n%s"
	.size	.L.str.20, 6

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Creating preview..."
	.size	.L.str.21, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
