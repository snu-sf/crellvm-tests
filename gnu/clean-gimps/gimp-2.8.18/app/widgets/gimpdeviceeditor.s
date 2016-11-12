	.text
	.file	"gimpdeviceeditor.bc"
	.globl	gimp_device_editor_get_type
	.align	16, 0x90
	.type	gimp_device_editor_get_type,@function
gimp_device_editor_get_type:            # @gimp_device_editor_get_type
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
	movq	gimp_device_editor_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_device_editor_get_type.g_define_type_id__volatile, %rax
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
	callq	gtk_paned_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$904, %edx              # imm = 0x388
	movabsq	$gimp_device_editor_class_intern_init, %rdi
	movl	$216, %r8d
	movabsq	$gimp_device_editor_init, %rcx
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
	movabsq	$gimp_device_editor_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_device_editor_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_device_editor_get_type, .Lfunc_end0-gimp_device_editor_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_device_editor_class_intern_init,@function
gimp_device_editor_class_intern_init:   # @gimp_device_editor_class_intern_init
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
	movq	%rax, gimp_device_editor_parent_class
	cmpl	$0, GimpDeviceEditor_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpDeviceEditor_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_device_editor_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_device_editor_class_intern_init, .Lfunc_end1-gimp_device_editor_class_intern_init
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI2_0:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	gimp_device_editor_init,@function
gimp_device_editor_init:                # @gimp_device_editor_init
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
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_device_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_orientable_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_orientable_set_orientation
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_settings
	movl	$4, %esi
	leaq	-44(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gtk_icon_size_lookup_for_settings
	xorl	%esi, %esi
	movl	%esi, %ecx
	xorl	%esi, %esi
	movl	-48(%rbp), %edx
	movq	%rcx, %rdi
	movl	%esi, -76(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	-76(%rbp), %ecx         # 4-byte Reload
	movl	%eax, -80(%rbp)         # 4-byte Spill
	callq	gimp_container_tree_view_new
	movl	$200, %esi
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_set_size_request
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_paned_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_paned_pack1
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_show
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$.L.str.11, %rsi
	movabsq	$gimp_device_editor_select_device, %rdi
	xorl	%r8d, %r8d
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	g_signal_connect_object
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.13, %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.12, %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movabsq	$gimp_device_editor_delete_clicked, %rdx
	movq	-8(%rbp), %rdi
	movq	-128(%rbp), %r9         # 8-byte Reload
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	movq	-144(%rbp), %r8         # 8-byte Reload
	movq	-152(%rbp), %r9         # 8-byte Reload
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	gimp_editor_add_button
	xorl	%esi, %esi
	movq	-16(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	gtk_widget_set_sensitive
	movl	$1, %edi
	movl	$12, %esi
	callq	gtk_box_new
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_paned_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_paned_pack2
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_event_box_new
	movl	$3, %esi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_set_state
	movq	-24(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	movl	-172(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	movl	$6, %esi
	callq	gtk_box_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-32(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	gtk_label_new
	movq	-16(%rbp), %rsi
	movq	%rax, 32(%rsi)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %esi
	movq	%rax, %rdi
	callq	gtk_label_set_ellipsize
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_label_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %esi
	movl	$700, %edx              # imm = 0x2BC
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_label_set_attributes
	movq	-40(%rbp), %rdi
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gtk_widget_show
	callq	gtk_image_new
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movl	$24, %edx
	movq	-16(%rbp), %rdi
	movq	%rax, 40(%rdi)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	gtk_widget_set_size_request
	movq	-40(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rsi
	movq	40(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	movl	-236(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_end
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	gtk_widget_show
	callq	gtk_notebook_new
	movq	-16(%rbp), %rsi
	movq	%rax, 48(%rsi)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_notebook_set_show_border
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_notebook_set_show_tabs
	movq	-24(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.14, %rsi
	movabsq	$gimp_device_editor_switch_page, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	48(%rdi), %rdi
	movq	-8(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movq	%rax, -272(%rbp)        # 8-byte Spill
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_device_editor_init, .Lfunc_end2-gimp_device_editor_init
	.cfi_endproc

	.globl	gimp_device_editor_new
	.align	16, 0x90
	.type	gimp_device_editor_new,@function
gimp_device_editor_new:                 # @gimp_device_editor_new
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_device_editor_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_13
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	callq	gimp_device_editor_get_type
	movabsq	$.L.str.3, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -8(%rbp)
.LBB3_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_device_editor_new, .Lfunc_end3-gimp_device_editor_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_device_editor_class_init,@function
gimp_device_editor_class_init:          # @gimp_device_editor_class_init
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$gimp_device_editor_get_property, %rsi
	movabsq	$gimp_device_editor_set_property, %rdi
	movabsq	$gimp_device_editor_dispose, %rcx
	movabsq	$gimp_device_editor_constructed, %rdx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 40(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 32(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_get_type
	movabsq	$.L.str.3, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movl	$235, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movl	$56, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_device_editor_class_init, .Lfunc_end4-gimp_device_editor_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_device_editor_constructed,@function
gimp_device_editor_constructed:         # @gimp_device_editor_constructed
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_device_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_device_editor_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	gimp_device_editor_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_device_editor_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB5_2:                                # %if.end
	jmp	.LBB5_3
.LBB5_3:                                # %do.body
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB5_5
# BB#4:                                 # %if.then.9
	movl	$0, -60(%rbp)
	jmp	.LBB5_10
.LBB5_5:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_8
# BB#6:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB5_8
# BB#7:                                 # %if.then.12
	movl	$1, -60(%rbp)
	jmp	.LBB5_9
.LBB5_8:                                # %if.else.13
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB5_9:                                # %if.end.15
	jmp	.LBB5_10
.LBB5_10:                               # %if.end.16
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB5_12
# BB#11:                                # %if.then.18
	jmp	.LBB5_13
.LBB5_12:                               # %if.else.19
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.4, %rsi
	movl	$223, %edx
	movabsq	$.L__func__.gimp_device_editor_constructed, %rcx
	movabsq	$.L.str.5, %r8
	callq	g_assertion_message_expr
.LBB5_13:                               # %if.end.20
	jmp	.LBB5_14
.LBB5_14:                               # %do.end
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_devices_get_manager
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rsi
	movabsq	$gimp_device_editor_remove_device, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_container_view_set_container
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_get_user_context
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_view_set_context
	movabsq	$.L.str.7, %rsi
	movabsq	$gimp_device_editor_add_device, %rax
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-144(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.8, %rsi
	movabsq	$gimp_device_editor_device_changed, %rcx
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_container_add_handler
	movq	-24(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movq	-32(%rbp), %rcx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	callq	gimp_list_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	40(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB5_15:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB5_21
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB5_15 Depth=1
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	callq	gimp_device_editor_add_device
# BB#17:                                # %for.inc
                                        #   in Loop: Header=BB5_15 Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB5_19
# BB#18:                                # %cond.true
                                        #   in Loop: Header=BB5_15 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB5_20
.LBB5_19:                               # %cond.false
                                        #   in Loop: Header=BB5_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB5_20
.LBB5_20:                               # %cond.end
                                        #   in Loop: Header=BB5_15 Depth=1
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
	jmp	.LBB5_15
.LBB5_21:                               # %for.end
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_device_editor_constructed, .Lfunc_end5-gimp_device_editor_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_device_editor_dispose,@function
gimp_device_editor_dispose:             # @gimp_device_editor_dispose
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_device_editor_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_devices_get_manager
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_device_editor_add_device, %rdi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %r9
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %edx
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-56(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_device_editor_remove_device, %rdi
	movq	-24(%rbp), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movq	-16(%rbp), %rdi
	cmpl	$0, 8(%rdi)
	movl	%eax, -72(%rbp)         # 4-byte Spill
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	8(%rax), %esi
	callq	gimp_container_remove_handler
	movq	-16(%rbp), %rax
	movl	$0, 8(%rax)
.LBB6_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_device_editor_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_device_editor_dispose, .Lfunc_end6-gimp_device_editor_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_device_editor_set_property,@function
gimp_device_editor_set_property:        # @gimp_device_editor_set_property
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_device_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB7_2
	jmp	.LBB7_1
.LBB7_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
	jmp	.LBB7_5
.LBB7_2:                                # %sw.default
	jmp	.LBB7_3
.LBB7_3:                                # %do.body
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
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.4, %rsi
	movl	$297, %edx              # imm = 0x129
	movabsq	$.L.str.10, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
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
	.size	gimp_device_editor_set_property, .Lfunc_end7-gimp_device_editor_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_device_editor_get_property,@function
gimp_device_editor_get_property:        # @gimp_device_editor_get_property
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
	callq	gimp_device_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB8_2
	jmp	.LBB8_1
.LBB8_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
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
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.4, %rsi
	movl	$317, %edx              # imm = 0x13D
	movabsq	$.L.str.10, %rcx
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
	.size	gimp_device_editor_get_property, .Lfunc_end8-gimp_device_editor_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_device_editor_remove_device,@function
gimp_device_editor_remove_device:       # @gimp_device_editor_remove_device
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
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	gimp_device_editor_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rdx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_view_lookup
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB9_4
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %edx
	leaq	-56(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	144(%rax), %rdi
	movq	-40(%rbp), %rsi
	movb	$0, %al
	callq	gtk_tree_model_get
	cmpq	$0, -56(%rbp)
	je	.LBB9_3
# BB#2:                                 # %if.then.12
	movq	-56(%rbp), %rdi
	callq	gtk_widget_destroy
.LBB9_3:                                # %if.end
	jmp	.LBB9_4
.LBB9_4:                                # %if.end.13
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_device_editor_remove_device, .Lfunc_end9-gimp_device_editor_remove_device
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_device_editor_add_device,@function
gimp_device_editor_add_device:          # @gimp_device_editor_add_device
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	gimp_device_editor_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_device_info_editor_new
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_notebook_append_page
	movq	-40(%rbp), %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gtk_widget_show
	movq	-32(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rdx
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_view_lookup
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB10_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_device_info_get_device
	movl	$4, %edx
	movl	$3, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	cmpq	$0, %rax
	setne	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %r11d
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movl	%r9d, -148(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$-1, (%rsp)
	movb	$0, %al
	callq	gtk_tree_store_set
.LBB10_2:                               # %if.end
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_device_editor_add_device, .Lfunc_end10-gimp_device_editor_add_device
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_device_editor_device_changed,@function
gimp_device_editor_device_changed:      # @gimp_device_editor_device_changed
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_device_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_view_lookup
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_device_info_get_device
	movl	$3, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	cmpq	$0, %rax
	setne	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %ecx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movb	$0, %al
	callq	gtk_tree_store_set
.LBB11_2:                               # %if.end
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_device_editor_device_changed, .Lfunc_end11-gimp_device_editor_device_changed
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB12_2
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
.LBB12_2:                               # %entry
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
	movl	$.L.str.1, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end12:
	.size	g_warning, .Lfunc_end12-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_device_editor_select_device,@function
gimp_device_editor_select_device:       # @gimp_device_editor_select_device
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	gimp_device_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB13_5
# BB#1:                                 # %land.lhs.true
	cmpq	$0, -24(%rbp)
	je	.LBB13_5
# BB#2:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %edx
	leaq	-56(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	144(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movb	$0, %al
	callq	gtk_tree_model_get
	cmpq	$0, -56(%rbp)
	je	.LBB13_4
# BB#3:                                 # %if.then.7
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_notebook_page_num
	movl	%eax, -60(%rbp)
	movq	-40(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-60(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_notebook_set_current_page
.LBB13_4:                               # %if.end
	jmp	.LBB13_5
.LBB13_5:                               # %if.end.14
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_device_editor_select_device, .Lfunc_end13-gimp_device_editor_select_device
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_device_editor_delete_clicked,@function
gimp_device_editor_delete_clicked:      # @gimp_device_editor_delete_clicked
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
	pushq	%rbx
	subq	$200, %rsp
.Ltmp45:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_device_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_container_view_get_selected
	cmpl	$0, %eax
	jne	.LBB14_2
# BB#1:                                 # %if.then
	jmp	.LBB14_3
.LBB14_2:                               # %if.end
	movabsq	$.L.str.15, %rdi
	callq	gettext
	movq	-24(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_toplevel
	movabsq	$.L.str.16, %rsi
	movl	$2, %ecx
	movabsq	$gimp_standard_help_func, %r8
	xorl	%edx, %edx
	movl	%edx, %r9d
	movabsq	$.L.str.17, %rdi
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movabsq	$.L.str.12, %r10
	movl	$4294967291, %r11d      # imm = 0xFFFFFFFB
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	movl	%edx, -92(%rbp)         # 4-byte Spill
	movq	%rax, %rdx
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r10, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movl	%r11d, -96(%rbp)        # 4-byte Spill
	callq	gimp_message_dialog_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movabsq	$.L.str.18, %rsi
	movabsq	$gimp_device_editor_delete_response, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %r10
	movq	-24(%rbp), %rbx
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	%rbx, %rcx
	callq	g_signal_connect_data
	movq	-40(%rbp), %rcx
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	gimp_message_dialog_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.19, %rdi
	movq	264(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-48(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	gimp_message_box_set_primary_text
	movq	-40(%rbp), %rcx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	callq	gimp_message_dialog_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.20, %rdi
	movq	264(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_message_box_set_text
	movq	-48(%rbp), %rdi
	callq	g_list_free
	movq	-24(%rbp), %rcx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_widget_set_sensitive
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
.LBB14_3:                               # %return
	addq	$200, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_device_editor_delete_clicked, .Lfunc_end14-gimp_device_editor_delete_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_device_editor_switch_page,@function
gimp_device_editor_switch_page:         # @gimp_device_editor_switch_page
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
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	gimp_device_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movl	$0, -60(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_notebook_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-20(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_notebook_get_nth_page
	movabsq	$.L.str.21, %rsi
	leaq	-56(%rbp), %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_get
	movq	-40(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gtk_label_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_object_get_name
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_label_set_text
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_image_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rcx
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_stock_id
	movl	$4, %edx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_image_set_from_stock
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	-56(%rbp), %rdi
	callq	gimp_device_info_get_device
	cmpq	$0, %rax
	jne	.LBB15_2
# BB#1:                                 # %if.then
	movl	$1, -60(%rbp)
.LBB15_2:                               # %if.end
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdi
	movl	-60(%rbp), %esi
	callq	gtk_widget_set_sensitive
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_device_editor_switch_page, .Lfunc_end15-gimp_device_editor_switch_page
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_device_editor_delete_response,@function
gimp_device_editor_delete_response:     # @gimp_device_editor_delete_response
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	gimp_device_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
	cmpl	$-5, -12(%rbp)
	jne	.LBB16_4
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_container_view_get_selected
	cmpl	$0, %eax
	je	.LBB16_3
# BB#2:                                 # %if.then.5
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_devices_get_manager
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	gimp_container_remove
	movq	-40(%rbp), %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	g_list_free
.LBB16_3:                               # %if.end
	jmp	.LBB16_4
.LBB16_4:                               # %if.end.10
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_widget_set_sensitive
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_device_editor_delete_response, .Lfunc_end16-gimp_device_editor_delete_response
	.cfi_endproc

	.type	gimp_device_editor_get_type.g_define_type_id__volatile,@object # @gimp_device_editor_get_type.g_define_type_id__volatile
	.local	gimp_device_editor_get_type.g_define_type_id__volatile
	.comm	gimp_device_editor_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpDeviceEditor"
	.size	.L.str, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_device_editor_new,@object # @__func__.gimp_device_editor_new
.L__func__.gimp_device_editor_new:
	.asciz	"gimp_device_editor_new"
	.size	.L__func__.gimp_device_editor_new, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp"
	.size	.L.str.3, 5

	.type	gimp_device_editor_parent_class,@object # @gimp_device_editor_parent_class
	.local	gimp_device_editor_parent_class
	.comm	gimp_device_editor_parent_class,8,8
	.type	GimpDeviceEditor_private_offset,@object # @GimpDeviceEditor_private_offset
	.local	GimpDeviceEditor_private_offset
	.comm	GimpDeviceEditor_private_offset,4,4
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimpdeviceeditor.c"
	.size	.L.str.4, 19

	.type	.L__func__.gimp_device_editor_constructed,@object # @__func__.gimp_device_editor_constructed
.L__func__.gimp_device_editor_constructed:
	.asciz	"gimp_device_editor_constructed"
	.size	.L__func__.gimp_device_editor_constructed, 31

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GIMP_IS_GIMP (private->gimp)"
	.size	.L.str.5, 29

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"remove"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"add"
	.size	.L.str.7, 4

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"name-changed"
	.size	.L.str.8, 13

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.9, 54

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"property"
	.size	.L.str.10, 9

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"select-item"
	.size	.L.str.11, 12

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gtk-delete"
	.size	.L.str.12, 11

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Delete the selected device"
	.size	.L.str.13, 27

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"switch-page"
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Delete Device Settings"
	.size	.L.str.15, 23

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimp-question"
	.size	.L.str.16, 14

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gtk-cancel"
	.size	.L.str.17, 11

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"response"
	.size	.L.str.18, 9

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Delete \"%s\"?"
	.size	.L.str.19, 13

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"You are about to delete this device's stored settings.\nThe next time this device is plugged, default settings will be used."
	.size	.L.str.20, 124

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"info"
	.size	.L.str.21, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
