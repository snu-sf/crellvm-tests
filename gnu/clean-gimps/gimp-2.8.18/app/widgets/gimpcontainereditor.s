	.text
	.file	"gimpcontainereditor.bc"
	.globl	gimp_container_editor_get_type
	.align	16, 0x90
	.type	gimp_container_editor_get_type,@function
gimp_container_editor_get_type:         # @gimp_container_editor_get_type
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
	movq	gimp_container_editor_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_container_editor_get_type.g_define_type_id__volatile, %rax
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
	callq	gtk_box_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$848, %edx              # imm = 0x350
	movabsq	$gimp_container_editor_class_intern_init, %rdi
	movl	$144, %r8d
	movabsq	$gimp_container_editor_init, %rcx
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
	movabsq	$gimp_container_editor_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_container_editor_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_container_editor_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_container_editor_get_type, .Lfunc_end0-gimp_container_editor_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_editor_class_intern_init,@function
gimp_container_editor_class_intern_init: # @gimp_container_editor_class_intern_init
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
	movq	%rax, gimp_container_editor_parent_class
	cmpl	$0, GimpContainerEditor_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpContainerEditor_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_container_editor_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_container_editor_class_intern_init, .Lfunc_end1-gimp_container_editor_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_editor_init,@function
gimp_container_editor_init:             # @gimp_container_editor_init
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_orientable_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_orientable_set_orientation
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	-8(%rbp), %rsi
	movq	%rax, 136(%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_container_editor_init, .Lfunc_end2-gimp_container_editor_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_editor_docked_iface_init,@function
gimp_container_editor_docked_iface_init: # @gimp_container_editor_docked_iface_init
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
	movabsq	$gimp_container_editor_get_show_button_bar, %rax
	movabsq	$gimp_container_editor_set_show_button_bar, %rcx
	movabsq	$gimp_container_editor_has_button_bar, %rdx
	movabsq	$gimp_container_editor_get_menu, %rsi
	movabsq	$gimp_container_editor_set_context, %r8
	movabsq	$gimp_container_editor_get_preview, %r9
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%r9, 40(%rdi)
	movq	-8(%rbp), %rdi
	movq	%r8, 72(%rdi)
	movq	-8(%rbp), %rdi
	movq	%rsi, 56(%rdi)
	movq	-8(%rbp), %rsi
	movq	%rdx, 80(%rsi)
	movq	-8(%rbp), %rdx
	movq	%rcx, 88(%rdx)
	movq	-8(%rbp), %rcx
	movq	%rax, 96(%rcx)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_container_editor_docked_iface_init, .Lfunc_end3-gimp_container_editor_docked_iface_init
	.cfi_endproc

	.globl	gimp_container_editor_get_selection_mode
	.align	16, 0x90
	.type	gimp_container_editor_get_selection_mode,@function
gimp_container_editor_get_selection_mode: # @gimp_container_editor_get_selection_mode
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
	movq	-8(%rbp), %rdi
	movq	128(%rdi), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_container_view_get_selection_mode
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_container_editor_get_selection_mode, .Lfunc_end4-gimp_container_editor_get_selection_mode
	.cfi_endproc

	.globl	gimp_container_editor_set_selection_mode
	.align	16, 0x90
	.type	gimp_container_editor_set_selection_mode,@function
gimp_container_editor_set_selection_mode: # @gimp_container_editor_set_selection_mode
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
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	128(%rdi), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_container_view_set_selection_mode
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_container_editor_set_selection_mode, .Lfunc_end5-gimp_container_editor_set_selection_mode
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_editor_class_init,@function
gimp_container_editor_class_init:       # @gimp_container_editor_class_init
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
	subq	$112, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$gimp_container_editor_real_context_item, %rsi
	movabsq	$gimp_container_editor_get_property, %rdi
	movabsq	$gimp_container_editor_set_property, %rcx
	movabsq	$gimp_container_editor_dispose, %rdx
	movabsq	$gimp_container_editor_constructed, %r8
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%r8, 72(%rax)
	movq	-16(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 32(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 824(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 832(%rax)
	movq	-8(%rbp), %rax
	movq	%rsi, 840(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_view_type_get_type
	movabsq	$.L.str.1, %rdi
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r8d, %r8d
	movl	$235, %r9d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$1, %esi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movabsq	$.L.str.2, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$235, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$2, %esi
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movabsq	$.L.str.3, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$235, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$3, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.4, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movl	$1, %ecx
	movl	$2048, %r8d             # imm = 0x800
	movl	$32, %r9d
	movl	$231, %esi
	movq	-16(%rbp), %rdx
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movl	$231, (%rsp)
	callq	g_param_spec_int
	movl	$4, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.5, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$16, %r8d
	movl	$1, %r9d
	movl	$231, %esi
	movq	-16(%rbp), %rdx
	movl	%esi, -60(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movl	$231, (%rsp)
	callq	g_param_spec_int
	movl	$5, %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_menu_factory_get_type
	movabsq	$.L.str.6, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$235, %r8d
	movq	%rdx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$6, %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.7, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movl	$235, %r8d
	movq	-16(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rax, %rdx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	callq	g_param_spec_string
	movl	$7, %esi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.8, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movl	$235, %r8d
	movq	-16(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rax, %rdx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	callq	g_param_spec_string
	movl	$8, %esi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movl	$56, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_container_editor_class_init, .Lfunc_end6-gimp_container_editor_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_editor_constructed,@function
gimp_container_editor_constructed:      # @gimp_container_editor_constructed
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
	subq	$272, %rsp              # imm = 0x110
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	movq	gimp_container_editor_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_container_editor_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB7_2:                                # %if.end
	jmp	.LBB7_3
.LBB7_3:                                # %do.body
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB7_5
# BB#4:                                 # %if.then.7
	movl	$0, -36(%rbp)
	jmp	.LBB7_10
.LBB7_5:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_8
# BB#6:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB7_8
# BB#7:                                 # %if.then.10
	movl	$1, -36(%rbp)
	jmp	.LBB7_9
.LBB7_8:                                # %if.else.11
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB7_9:                                # %if.end.13
	jmp	.LBB7_10
.LBB7_10:                               # %if.end.14
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB7_12
# BB#11:                                # %if.then.16
	jmp	.LBB7_13
.LBB7_12:                               # %if.else.17
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.10, %rsi
	movl	$229, %edx
	movabsq	$.L__func__.gimp_container_editor_constructed, %rcx
	movabsq	$.L.str.11, %r8
	callq	g_assertion_message_expr
.LBB7_13:                               # %if.end.18
	jmp	.LBB7_14
.LBB7_14:                               # %do.end
	jmp	.LBB7_15
.LBB7_15:                               # %do.body.19
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB7_17
# BB#16:                                # %if.then.29
	movl	$0, -60(%rbp)
	jmp	.LBB7_22
.LBB7_17:                               # %if.else.30
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_20
# BB#18:                                # %land.lhs.true.33
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB7_20
# BB#19:                                # %if.then.37
	movl	$1, -60(%rbp)
	jmp	.LBB7_21
.LBB7_20:                               # %if.else.38
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB7_21:                               # %if.end.40
	jmp	.LBB7_22
.LBB7_22:                               # %if.end.41
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB7_24
# BB#23:                                # %if.then.44
	jmp	.LBB7_25
.LBB7_24:                               # %if.else.45
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.10, %rsi
	movl	$230, %edx
	movabsq	$.L__func__.gimp_container_editor_constructed, %rcx
	movabsq	$.L.str.12, %r8
	callq	g_assertion_message_expr
.LBB7_25:                               # %if.end.46
	jmp	.LBB7_26
.LBB7_26:                               # %do.end.47
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	je	.LBB7_28
	jmp	.LBB7_45
.LBB7_45:                               # %do.end.47
	movl	-108(%rbp), %eax        # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jne	.LBB7_29
	jmp	.LBB7_27
.LBB7_27:                               # %sw.bb
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	16(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movl	24(%rax), %edx
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movl	28(%rax), %ecx
	callq	gimp_container_grid_view_new
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, 128(%rsi)
	jmp	.LBB7_31
.LBB7_28:                               # %sw.bb.58
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	16(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movl	24(%rax), %edx
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movl	28(%rax), %ecx
	callq	gimp_container_tree_view_new
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, 128(%rsi)
	jmp	.LBB7_31
.LBB7_29:                               # %sw.default
	jmp	.LBB7_30
.LBB7_30:                               # %do.body.71
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.10, %rsi
	movl	$259, %edx              # imm = 0x103
	movabsq	$.L__func__.gimp_container_editor_constructed, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	g_assertion_message_expr
.LBB7_31:                               # %sw.epilog
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_list_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB7_33
# BB#32:                                # %if.then.83
	movl	$0, -84(%rbp)
	jmp	.LBB7_38
.LBB7_33:                               # %if.else.84
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_36
# BB#34:                                # %land.lhs.true.87
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB7_36
# BB#35:                                # %if.then.91
	movl	$1, -84(%rbp)
	jmp	.LBB7_37
.LBB7_36:                               # %if.else.92
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB7_37:                               # %if.end.94
	jmp	.LBB7_38
.LBB7_38:                               # %if.end.95
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB7_40
# BB#39:                                # %if.then.98
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	136(%rsi), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	callq	gimp_list_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpq	$0, 56(%rax)
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movq	-144(%rbp), %rdi        # 8-byte Reload
	callq	gimp_container_view_set_reorderable
.LBB7_40:                               # %if.end.107
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	cmpq	$0, 32(%rax)
	je	.LBB7_44
# BB#41:                                # %land.lhs.true.110
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	cmpq	$0, 40(%rax)
	je	.LBB7_44
# BB#42:                                # %land.lhs.true.113
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	cmpq	$0, 48(%rax)
	je	.LBB7_44
# BB#43:                                # %if.then.116
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	136(%rsi), %rsi
	movq	32(%rsi), %rsi
	movq	-16(%rbp), %rdi
	movq	136(%rdi), %rdi
	movq	40(%rdi), %rdx
	movq	-16(%rbp), %rdi
	movq	136(%rdi), %rdi
	movq	48(%rdi), %rcx
	movq	-16(%rbp), %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-168(%rbp), %r8         # 8-byte Reload
	callq	gimp_editor_create_menu
.LBB7_44:                               # %if.end.126
	movq	-16(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	128(%rsi), %rsi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.13, %rsi
	movabsq	$gimp_container_editor_select_item, %rax
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdi
	movq	128(%rdi), %rdi
	movq	-16(%rbp), %r9
	movq	%rax, %rdx
	movq	%r9, %rcx
	callq	g_signal_connect_object
	movabsq	$.L.str.14, %rsi
	movabsq	$gimp_container_editor_activate_item, %rcx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdx
	movq	128(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movabsq	$.L.str.15, %rsi
	movabsq	$gimp_container_editor_context_item, %rcx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rdx
	movq	128(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-224(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movq	-16(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	16(%rcx), %rdi
	movq	-16(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	8(%rcx), %rcx
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_container_get_children_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_context_get_by_type
	movq	%rax, -96(%rbp)
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	-96(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	movq	%rsi, -264(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	-264(%rbp), %rcx        # 8-byte Reload
	callq	gimp_container_editor_select_item
	movl	%eax, -268(%rbp)        # 4-byte Spill
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_container_editor_constructed, .Lfunc_end7-gimp_container_editor_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_editor_dispose,@function
gimp_container_editor_dispose:          # @gimp_container_editor_dispose
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	$0, 8(%rax)
.LBB8_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	cmpq	$0, 16(%rax)
	je	.LBB8_4
# BB#3:                                 # %if.then.8
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	$0, 16(%rax)
.LBB8_4:                                # %if.end.13
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	cmpq	$0, 32(%rax)
	je	.LBB8_6
# BB#5:                                 # %if.then.16
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	$0, 32(%rax)
.LBB8_6:                                # %if.end.21
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	cmpq	$0, 40(%rax)
	je	.LBB8_8
# BB#7:                                 # %if.then.24
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	40(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	$0, 40(%rax)
.LBB8_8:                                # %if.end.29
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	cmpq	$0, 48(%rax)
	je	.LBB8_10
# BB#9:                                 # %if.then.32
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	48(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	$0, 48(%rax)
.LBB8_10:                               # %if.end.37
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_container_editor_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_container_editor_dispose, .Lfunc_end8-gimp_container_editor_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_editor_set_property,@function
gimp_container_editor_set_property:     # @gimp_container_editor_set_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$7, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB9_9
# BB#13:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI9_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB9_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movq	136(%rdi), %rdi
	movl	%eax, (%rdi)
	jmp	.LBB9_12
.LBB9_2:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_dup_object
	movq	-40(%rbp), %rdi
	movq	136(%rdi), %rdi
	movq	%rax, 8(%rdi)
	jmp	.LBB9_12
.LBB9_3:                                # %sw.bb.6
	movq	-24(%rbp), %rdi
	callq	g_value_dup_object
	movq	-40(%rbp), %rdi
	movq	136(%rdi), %rdi
	movq	%rax, 16(%rdi)
	jmp	.LBB9_12
.LBB9_4:                                # %sw.bb.9
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movq	136(%rdi), %rdi
	movl	%eax, 24(%rdi)
	jmp	.LBB9_12
.LBB9_5:                                # %sw.bb.12
	movq	-24(%rbp), %rdi
	callq	g_value_get_int
	movq	-40(%rbp), %rdi
	movq	136(%rdi), %rdi
	movl	%eax, 28(%rdi)
	jmp	.LBB9_12
.LBB9_6:                                # %sw.bb.15
	movq	-24(%rbp), %rdi
	callq	g_value_dup_object
	movq	-40(%rbp), %rdi
	movq	136(%rdi), %rdi
	movq	%rax, 32(%rdi)
	jmp	.LBB9_12
.LBB9_7:                                # %sw.bb.18
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	136(%rdi), %rdi
	movq	%rax, 40(%rdi)
	jmp	.LBB9_12
.LBB9_8:                                # %sw.bb.21
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	136(%rdi), %rdi
	movq	%rax, 48(%rdi)
	jmp	.LBB9_12
.LBB9_9:                                # %sw.default
	jmp	.LBB9_10
.LBB9_10:                               # %do.body
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
	movabsq	$.L.str.16, %rdi
	movabsq	$.L.str.10, %rsi
	movl	$382, %edx              # imm = 0x17E
	movabsq	$.L.str.17, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#11:                                # %do.end
	jmp	.LBB9_12
.LBB9_12:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_container_editor_set_property, .Lfunc_end9-gimp_container_editor_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI9_0:
	.quad	.LBB9_1
	.quad	.LBB9_2
	.quad	.LBB9_3
	.quad	.LBB9_4
	.quad	.LBB9_5
	.quad	.LBB9_6
	.quad	.LBB9_7
	.quad	.LBB9_8

	.text
	.align	16, 0x90
	.type	gimp_container_editor_get_property,@function
gimp_container_editor_get_property:     # @gimp_container_editor_get_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$7, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB10_9
# BB#13:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI10_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB10_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	136(%rax), %rax
	movl	(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB10_12
.LBB10_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	136(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB10_12
.LBB10_3:                               # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	136(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB10_12
.LBB10_4:                               # %sw.bb.6
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	136(%rax), %rax
	movl	24(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB10_12
.LBB10_5:                               # %sw.bb.8
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	136(%rax), %rax
	movl	28(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB10_12
.LBB10_6:                               # %sw.bb.10
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	136(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB10_12
.LBB10_7:                               # %sw.bb.12
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	136(%rax), %rax
	movq	40(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB10_12
.LBB10_8:                               # %sw.bb.14
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	136(%rax), %rax
	movq	48(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB10_12
.LBB10_9:                               # %sw.default
	jmp	.LBB10_10
.LBB10_10:                              # %do.body
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
	movabsq	$.L.str.16, %rdi
	movabsq	$.L.str.10, %rsi
	movl	$430, %edx              # imm = 0x1AE
	movabsq	$.L.str.17, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#11:                                # %do.end
	jmp	.LBB10_12
.LBB10_12:                              # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_container_editor_get_property, .Lfunc_end10-gimp_container_editor_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI10_0:
	.quad	.LBB10_1
	.quad	.LBB10_2
	.quad	.LBB10_3
	.quad	.LBB10_4
	.quad	.LBB10_5
	.quad	.LBB10_6
	.quad	.LBB10_7
	.quad	.LBB10_8

	.text
	.align	16, 0x90
	.type	gimp_container_editor_real_context_item,@function
gimp_container_editor_real_context_item: # @gimp_container_editor_real_context_item
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
	movq	-8(%rbp), %rsi
	movq	128(%rsi), %rdi
	callq	gimp_container_view_get_container
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB11_3
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_have
	cmpl	$0, %eax
	je	.LBB11_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	gimp_editor_popup_menu
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB11_3:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_container_editor_real_context_item, .Lfunc_end11-gimp_container_editor_real_context_item
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_editor_select_item,@function
gimp_container_editor_select_item:      # @gimp_container_editor_select_item
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	cmpq	$0, 824(%rcx)
	je	.LBB12_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	824(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
.LBB12_2:                               # %if.end
	movq	-32(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_ui_manager
	cmpq	$0, %rax
	je	.LBB12_4
# BB#3:                                 # %if.then.5
	movq	-32(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_ui_manager
	movq	-32(%rbp), %rsi
	movq	128(%rsi), %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_popup_data
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_ui_manager_update
.LBB12_4:                               # %if.end.14
	movl	$1, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_container_editor_select_item, .Lfunc_end12-gimp_container_editor_select_item
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_editor_activate_item,@function
gimp_container_editor_activate_item:    # @gimp_container_editor_activate_item
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	cmpq	$0, 832(%rcx)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	832(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
.LBB13_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_container_editor_activate_item, .Lfunc_end13-gimp_container_editor_activate_item
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_editor_context_item,@function
gimp_container_editor_context_item:     # @gimp_container_editor_context_item
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	cmpq	$0, 840(%rcx)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	840(%rax), %rax
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
.LBB14_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_container_editor_context_item, .Lfunc_end14-gimp_container_editor_context_item
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB15_2
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
.LBB15_2:                               # %entry
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
	movl	$.L.str.9, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end15:
	.size	g_warning, .Lfunc_end15-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_editor_get_preview,@function
gimp_container_editor_get_preview:      # @gimp_container_editor_get_preview
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
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_docked_interface_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_docked_get_preview
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_container_editor_get_preview, .Lfunc_end16-gimp_container_editor_get_preview
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_editor_set_context,@function
gimp_container_editor_set_context:      # @gimp_container_editor_set_context
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_docked_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_docked_set_context
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_container_editor_set_context, .Lfunc_end17-gimp_container_editor_set_context
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_editor_get_menu,@function
gimp_container_editor_get_menu:         # @gimp_container_editor_get_menu
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_docked_interface_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_docked_get_menu
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_container_editor_get_menu, .Lfunc_end18-gimp_container_editor_get_menu
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_editor_has_button_bar,@function
gimp_container_editor_has_button_bar:   # @gimp_container_editor_has_button_bar
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_docked_interface_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_docked_has_button_bar
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_container_editor_has_button_bar, .Lfunc_end19-gimp_container_editor_has_button_bar
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_editor_set_show_button_bar,@function
gimp_container_editor_set_show_button_bar: # @gimp_container_editor_set_show_button_bar
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
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_docked_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_docked_set_show_button_bar
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_container_editor_set_show_button_bar, .Lfunc_end20-gimp_container_editor_set_show_button_bar
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_editor_get_show_button_bar,@function
gimp_container_editor_get_show_button_bar: # @gimp_container_editor_get_show_button_bar
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_docked_interface_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_docked_get_show_button_bar
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_container_editor_get_show_button_bar, .Lfunc_end21-gimp_container_editor_get_show_button_bar
	.cfi_endproc

	.type	gimp_container_editor_get_type.g_define_type_id__volatile,@object # @gimp_container_editor_get_type.g_define_type_id__volatile
	.local	gimp_container_editor_get_type.g_define_type_id__volatile
	.comm	gimp_container_editor_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpContainerEditor"
	.size	.L.str, 20

	.type	gimp_container_editor_get_type.g_implement_interface_info,@object # @gimp_container_editor_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_container_editor_get_type.g_implement_interface_info:
	.quad	gimp_container_editor_docked_iface_init
	.quad	0
	.quad	0
	.size	gimp_container_editor_get_type.g_implement_interface_info, 24

	.type	gimp_container_editor_parent_class,@object # @gimp_container_editor_parent_class
	.local	gimp_container_editor_parent_class
	.comm	gimp_container_editor_parent_class,8,8
	.type	GimpContainerEditor_private_offset,@object # @GimpContainerEditor_private_offset
	.local	GimpContainerEditor_private_offset
	.comm	GimpContainerEditor_private_offset,4,4
	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"view-type"
	.size	.L.str.1, 10

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"container"
	.size	.L.str.2, 10

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"context"
	.size	.L.str.3, 8

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"view-size"
	.size	.L.str.4, 10

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"view-border-width"
	.size	.L.str.5, 18

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"menu-factory"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"menu-identifier"
	.size	.L.str.7, 16

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"ui-path"
	.size	.L.str.8, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Gimp-Widgets"
	.size	.L.str.9, 13

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimpcontainereditor.c"
	.size	.L.str.10, 22

	.type	.L__func__.gimp_container_editor_constructed,@object # @__func__.gimp_container_editor_constructed
.L__func__.gimp_container_editor_constructed:
	.asciz	"gimp_container_editor_constructed"
	.size	.L__func__.gimp_container_editor_constructed, 34

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"GIMP_IS_CONTAINER (editor->priv->container)"
	.size	.L.str.11, 44

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"GIMP_IS_CONTEXT (editor->priv->context)"
	.size	.L.str.12, 40

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"select-item"
	.size	.L.str.13, 12

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"activate-item"
	.size	.L.str.14, 14

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"context-item"
	.size	.L.str.15, 13

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.16, 54

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"property"
	.size	.L.str.17, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
