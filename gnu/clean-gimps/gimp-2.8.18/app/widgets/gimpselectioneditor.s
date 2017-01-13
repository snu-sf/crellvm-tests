	.text
	.file	"gimpselectioneditor.bc"
	.globl	gimp_selection_editor_get_type
	.align	16, 0x90
	.type	gimp_selection_editor_get_type,@function
gimp_selection_editor_get_type:         # @gimp_selection_editor_get_type
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
	movq	gimp_selection_editor_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_selection_editor_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_selection_editor_class_intern_init, %rdi
	movl	$208, %r8d
	movabsq	$gimp_selection_editor_init, %rcx
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
	movabsq	$gimp_selection_editor_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_selection_editor_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_selection_editor_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_selection_editor_get_type, .Lfunc_end0-gimp_selection_editor_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_selection_editor_class_intern_init,@function
gimp_selection_editor_class_intern_init: # @gimp_selection_editor_class_intern_init
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
	movq	%rax, gimp_selection_editor_parent_class
	cmpl	$0, GimpSelectionEditor_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpSelectionEditor_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_selection_editor_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_selection_editor_class_intern_init, .Lfunc_end1-gimp_selection_editor_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_selection_editor_init,@function
gimp_selection_editor_init:             # @gimp_selection_editor_init
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
	subq	$96, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	gtk_frame_new
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movl	%edx, -36(%rbp)         # 4-byte Spill
	movl	-36(%rbp), %ecx         # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rdi
	callq	gtk_widget_show
	callq	gimp_view_get_type
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_selection_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	$96, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_view_new_by_types
	movq	-8(%rbp), %rdx
	movq	%rax, 152(%rdx)
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.19, %rsi
	movq	112(%rax), %rdi
	callq	gimp_view_renderer_set_background
	movl	$96, %ecx
	movq	-8(%rbp), %rax
	movq	152(%rax), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_widget_set_size_request
	movq	-8(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_view_set_expand
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	152(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-8(%rbp), %rax
	movq	152(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.20, %rsi
	movabsq	$gimp_selection_view_button_press, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	152(%rdi), %rdi
	movq	-8(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$gimp_selection_editor_drop_color, %rsi
	movq	-8(%rbp), %rcx
	movq	152(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_dnd_color_dest_add
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_widget_set_sensitive
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_selection_editor_init, .Lfunc_end2-gimp_selection_editor_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_selection_editor_docked_iface_init,@function
gimp_selection_editor_docked_iface_init: # @gimp_selection_editor_docked_iface_init
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
	movabsq	$gimp_selection_editor_set_context, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 72(%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_selection_editor_docked_iface_init, .Lfunc_end3-gimp_selection_editor_docked_iface_init
	.cfi_endproc

	.globl	gimp_selection_editor_new
	.align	16, 0x90
	.type	gimp_selection_editor_new,@function
gimp_selection_editor_new:              # @gimp_selection_editor_new
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_menu_factory_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_selection_editor_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	callq	gimp_selection_editor_get_type
	movabsq	$.L.str.3, %rsi
	movabsq	$.L.str.4, %rcx
	movabsq	$.L.str.5, %r8
	movabsq	$.L.str.6, %r9
	movabsq	$.L.str.7, %rdx
	xorl	%edi, %edi
	movl	%edi, %r10d
	movq	-16(%rbp), %r11
	movq	%rax, %rdi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%r11, %rdx
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	movq	%r10, -56(%rbp)         # 8-byte Spill
	callq	g_object_new
	movq	%rax, -8(%rbp)
.LBB4_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_selection_editor_new, .Lfunc_end4-gimp_selection_editor_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_selection_editor_class_init,@function
gimp_selection_editor_class_init:       # @gimp_selection_editor_class_init
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_image_editor_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_selection_editor_set_image, %rsi
	movabsq	$gimp_selection_editor_constructed, %rdi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdi, 72(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 824(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_selection_editor_class_init, .Lfunc_end5-gimp_selection_editor_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_selection_editor_constructed,@function
gimp_selection_editor_constructed:      # @gimp_selection_editor_constructed
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
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_selection_editor_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_selection_editor_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_selection_editor_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB6_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rsi
	movabsq	$.L.str.9, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	-16(%rbp), %rcx
	movq	%rax, 160(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rsi
	movabsq	$.L.str.10, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	-16(%rbp), %rcx
	movq	%rax, 168(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rsi
	movabsq	$.L.str.11, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	-16(%rbp), %rcx
	movq	%rax, 176(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rsi
	movabsq	$.L.str.12, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	-16(%rbp), %rcx
	movq	%rax, 184(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.13, %rsi
	movabsq	$.L.str.14, %rdx
	movabsq	$.L.str.15, %rcx
	movl	$1, %r8d
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	-16(%rbp), %rcx
	movq	%rax, 192(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rsi
	movabsq	$.L.str.16, %rdx
	movabsq	$.L.str.17, %rcx
	movl	$1, %r8d
	xorl	%r10d, %r10d
	movl	%r10d, %r9d
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	-16(%rbp), %rcx
	movq	%rax, 200(%rcx)
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_selection_editor_constructed, .Lfunc_end6-gimp_selection_editor_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_selection_editor_set_image,@function
gimp_selection_editor_set_image:        # @gimp_selection_editor_set_image
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_selection_editor_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 144(%rax)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_selection_editor_mask_changed, %rdx
	movq	-8(%rbp), %rdi
	movq	144(%rdi), %rdi
	movq	-24(%rbp), %r9
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-40(%rbp), %r10         # 8-byte Reload
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB7_2:                                # %if.end
	movq	gimp_selection_editor_parent_class, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_image_editor_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	824(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	cmpq	$0, -16(%rbp)
	je	.LBB7_4
# BB#3:                                 # %if.then.8
	movabsq	$.L.str.18, %rsi
	movabsq	$gimp_selection_editor_mask_changed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-24(%rbp), %rcx
	movq	152(%rcx), %rcx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_image_get_mask
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_view_set_viewable
	jmp	.LBB7_5
.LBB7_4:                                # %if.else
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gimp_view_set_viewable
.LBB7_5:                                # %if.end.18
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_selection_editor_set_image, .Lfunc_end7-gimp_selection_editor_set_image
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_selection_editor_mask_changed,@function
gimp_selection_editor_mask_changed:     # @gimp_selection_editor_mask_changed
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	152(%rsi), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gimp_view_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	112(%rax), %rdi
	callq	gimp_view_renderer_invalidate
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_selection_editor_mask_changed, .Lfunc_end8-gimp_selection_editor_mask_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_selection_editor_set_context,@function
gimp_selection_editor_set_context:      # @gimp_selection_editor_set_context
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_selection_editor_get_type
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
	movq	152(%rax), %rax
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
.Lfunc_end9:
	.size	gimp_selection_editor_set_context, .Lfunc_end9-gimp_selection_editor_set_context
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_selection_view_button_press,@function
gimp_selection_view_button_press:       # @gimp_selection_view_button_press
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
	pushq	%r14
	pushq	%rbx
	subq	$208, %rsp
.Ltmp33:
	.cfi_offset %rbx, -32
.Ltmp34:
	.cfi_offset %r14, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	-48(%rbp), %rdx
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	callq	gimp_image_editor_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	$0, 144(%rax)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movl	$1, -20(%rbp)
	jmp	.LBB10_9
.LBB10_2:                               # %if.end
	movq	-48(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_view_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.21, %rsi
	movq	112(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	144(%rax), %rax
	movq	32(%rax), %rdi
	callq	gimp_get_tool_info
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB10_4
# BB#3:                                 # %if.then.8
	movl	$1, -20(%rbp)
	jmp	.LBB10_9
.LBB10_4:                               # %if.end.9
	movq	-72(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_selection_options_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_region_select_options_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB10_6
# BB#5:                                 # %if.then.18
	movl	$1, -20(%rbp)
	jmp	.LBB10_9
.LBB10_6:                               # %if.end.19
	movq	-40(%rbp), %rax
	movl	48(%rax), %edi
	callq	gimp_modifiers_to_channel_op
	movl	%eax, -100(%rbp)
	movq	-56(%rbp), %rcx
	movq	144(%rcx), %rdi
	callq	gimp_image_get_width
	cvtsi2sdl	%eax, %xmm0
	movq	-40(%rbp), %rcx
	mulsd	24(%rcx), %xmm0
	movq	-64(%rbp), %rcx
	cvtsi2sdl	48(%rcx), %xmm1
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -104(%rbp)
	movq	-56(%rbp), %rcx
	movq	144(%rcx), %rdi
	callq	gimp_image_get_height
	xorl	%r9d, %r9d
	xorps	%xmm0, %xmm0
	xorl	%edx, %edx
	movl	%edx, %ecx
	leaq	-144(%rbp), %rdi
	cvtsi2sdl	%eax, %xmm1
	movq	-40(%rbp), %rsi
	mulsd	32(%rsi), %xmm1
	movq	-64(%rbp), %rsi
	cvtsi2sdl	52(%rsi), %xmm2
	divsd	%xmm2, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -108(%rbp)
	movq	-56(%rbp), %rsi
	movq	144(%rsi), %rsi
	movq	-96(%rbp), %r8
	movl	-104(%rbp), %edx
	movl	-108(%rbp), %eax
	movq	-88(%rbp), %r10
	movl	388(%r10), %r11d
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	%r8, %rsi
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	movl	%eax, %ecx
	movl	%r11d, %r8d
	movq	$0, (%rsp)
	movq	-184(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	$0, 16(%rsp)
	callq	gimp_image_pick_color
	cmpl	$0, %eax
	je	.LBB10_8
# BB#7:                                 # %if.then.37
	movq	-56(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gimp_image_get_mask
	leaq	-144(%rbp), %rcx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rdi
	movl	388(%rdi), %edx
	movq	-88(%rbp), %rdi
	cvttsd2si	392(%rdi), %r8d
	movq	-88(%rbp), %rdi
	movl	384(%rdi), %r9d
	movq	-88(%rbp), %rdi
	movl	400(%rdi), %r10d
	movl	-100(%rbp), %r11d
	movq	-80(%rbp), %rdi
	movl	356(%rdi), %ebx
	movq	-80(%rbp), %rdi
	movl	360(%rdi), %r14d
	movq	-80(%rbp), %rdi
	movsd	368(%rdi), %xmm0        # xmm0 = mem[0],zero
	movq	-80(%rbp), %rdi
	movsd	368(%rdi), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rdi
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%r14d, 24(%rsp)
	callq	gimp_channel_select_by_color
	movq	-56(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gimp_image_flush
.LBB10_8:                               # %if.end.44
	movl	$1, -20(%rbp)
.LBB10_9:                               # %return
	movl	-20(%rbp), %eax
	addq	$208, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_selection_view_button_press, .Lfunc_end10-gimp_selection_view_button_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_selection_editor_drop_color,@function
gimp_selection_editor_drop_color:       # @gimp_selection_editor_drop_color
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
	pushq	%r14
	pushq	%rbx
	subq	$128, %rsp
.Ltmp38:
	.cfi_offset %rbx, -32
.Ltmp39:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-48(%rbp), %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	gimp_image_editor_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	$0, 144(%rax)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	jmp	.LBB11_7
.LBB11_2:                               # %if.end
	movabsq	$.L.str.21, %rsi
	movq	-56(%rbp), %rax
	movq	144(%rax), %rax
	movq	32(%rax), %rdi
	callq	gimp_get_tool_info
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB11_4
# BB#3:                                 # %if.then.5
	jmp	.LBB11_7
.LBB11_4:                               # %if.end.6
	movq	-64(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_selection_options_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_region_select_options_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB11_6
# BB#5:                                 # %if.then.15
	jmp	.LBB11_7
.LBB11_6:                               # %if.end.16
	movq	-56(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gimp_image_get_mask
	movq	-88(%rbp), %rsi
	movq	-80(%rbp), %rdi
	movl	388(%rdi), %edx
	movq	-40(%rbp), %rcx
	movq	-80(%rbp), %rdi
	cvttsd2si	392(%rdi), %r8d
	movq	-80(%rbp), %rdi
	movl	384(%rdi), %r9d
	movq	-80(%rbp), %rdi
	movl	400(%rdi), %r10d
	movq	-72(%rbp), %rdi
	movl	352(%rdi), %r11d
	movq	-72(%rbp), %rdi
	movl	356(%rdi), %ebx
	movq	-72(%rbp), %rdi
	movl	360(%rdi), %r14d
	movq	-72(%rbp), %rdi
	movsd	368(%rdi), %xmm0        # xmm0 = mem[0],zero
	movq	-72(%rbp), %rdi
	movsd	368(%rdi), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rdi
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%r14d, 24(%rsp)
	callq	gimp_channel_select_by_color
	movq	-56(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gimp_image_flush
.LBB11_7:                               # %return
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_selection_editor_drop_color, .Lfunc_end11-gimp_selection_editor_drop_color
	.cfi_endproc

	.type	gimp_selection_editor_get_type.g_define_type_id__volatile,@object # @gimp_selection_editor_get_type.g_define_type_id__volatile
	.local	gimp_selection_editor_get_type.g_define_type_id__volatile
	.comm	gimp_selection_editor_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpSelectionEditor"
	.size	.L.str, 20

	.type	gimp_selection_editor_get_type.g_implement_interface_info,@object # @gimp_selection_editor_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_selection_editor_get_type.g_implement_interface_info:
	.quad	gimp_selection_editor_docked_iface_init
	.quad	0
	.quad	0
	.size	gimp_selection_editor_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_selection_editor_new,@object # @__func__.gimp_selection_editor_new
.L__func__.gimp_selection_editor_new:
	.asciz	"gimp_selection_editor_new"
	.size	.L__func__.gimp_selection_editor_new, 26

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_MENU_FACTORY (menu_factory)"
	.size	.L.str.2, 36

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
	.asciz	"<Selection>"
	.size	.L.str.5, 12

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"ui-path"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"/selection-popup"
	.size	.L.str.7, 17

	.type	gimp_selection_editor_parent_class,@object # @gimp_selection_editor_parent_class
	.local	gimp_selection_editor_parent_class
	.comm	gimp_selection_editor_parent_class,8,8
	.type	GimpSelectionEditor_private_offset,@object # @GimpSelectionEditor_private_offset
	.local	GimpSelectionEditor_private_offset
	.comm	GimpSelectionEditor_private_offset,4,4
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"select"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"select-all"
	.size	.L.str.9, 11

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"select-none"
	.size	.L.str.10, 12

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"select-invert"
	.size	.L.str.11, 14

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"select-save"
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"vectors"
	.size	.L.str.13, 8

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"vectors-selection-to-vectors"
	.size	.L.str.14, 29

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"vectors-selection-to-vectors-advanced"
	.size	.L.str.15, 38

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"select-stroke"
	.size	.L.str.16, 14

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"select-stroke-last-values"
	.size	.L.str.17, 26

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"mask-changed"
	.size	.L.str.18, 13

	.type	parent_docked_iface,@object # @parent_docked_iface
	.local	parent_docked_iface
	.comm	parent_docked_iface,8,8
	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp-texture"
	.size	.L.str.19, 13

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"button-press-event"
	.size	.L.str.20, 19

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimp-by-color-select-tool"
	.size	.L.str.21, 26


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
