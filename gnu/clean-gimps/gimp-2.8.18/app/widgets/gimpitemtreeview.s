	.text
	.file	"gimpitemtreeview.bc"
	.globl	gimp_item_tree_view_get_type
	.align	16, 0x90
	.type	gimp_item_tree_view_get_type,@function
gimp_item_tree_view_get_type:           # @gimp_item_tree_view_get_type
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
	subq	$96, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_item_tree_view_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_item_tree_view_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_container_tree_view_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$1072, %edx             # imm = 0x430
	movabsq	$gimp_item_tree_view_class_intern_init, %rdi
	movl	$336, %r8d              # imm = 0x150
	movabsq	$gimp_item_tree_view_init, %rcx
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
	callq	gimp_container_view_interface_get_type
	movabsq	$gimp_item_tree_view_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movq	-24(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_docked_interface_get_type
	movabsq	$gimp_item_tree_view_get_type.g_implement_interface_info.1, %rdx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_item_tree_view_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_item_tree_view_get_type.g_define_type_id__volatile, %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_item_tree_view_get_type, .Lfunc_end0-gimp_item_tree_view_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_tree_view_class_intern_init,@function
gimp_item_tree_view_class_intern_init:  # @gimp_item_tree_view_class_intern_init
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
	movq	%rax, gimp_item_tree_view_parent_class
	cmpl	$0, GimpItemTreeView_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpItemTreeView_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_item_tree_view_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_item_tree_view_class_intern_init, .Lfunc_end1-gimp_item_tree_view_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_tree_view_init,@function
gimp_item_tree_view_init:               # @gimp_item_tree_view_init
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_item_tree_view_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	$20, %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rsi
	movq	%rax, 328(%rsi)
	movq	-16(%rbp), %rax
	addq	$160, %rax
	movq	-16(%rbp), %rsi
	addq	$152, %rsi
	movq	%rax, %rdi
	callq	gimp_container_tree_store_columns_add
	movl	$20, %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rsi
	movq	328(%rsi), %rsi
	movl	%eax, 88(%rsi)
	movq	-16(%rbp), %rsi
	addq	$160, %rsi
	movq	-16(%rbp), %rdi
	addq	$152, %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-40(%rbp), %rsi         # 8-byte Reload
	callq	gimp_container_tree_store_columns_add
	movl	$20, %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rsi
	movq	328(%rsi), %rsi
	movl	%eax, 92(%rsi)
	movq	-16(%rbp), %rsi
	addq	$160, %rsi
	movq	-16(%rbp), %rdi
	addq	$152, %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	gimp_container_tree_store_columns_add
	movl	$1, %esi
	movq	-8(%rbp), %rdx
	movq	328(%rdx), %rdx
	movl	%eax, 96(%rdx)
	movq	-16(%rbp), %rdi
	callq	gimp_container_tree_view_set_dnd_drop_to_empty
	movq	-8(%rbp), %rdx
	movq	328(%rdx), %rdx
	movq	$0, (%rdx)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_item_tree_view_init, .Lfunc_end2-gimp_item_tree_view_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_tree_view_view_iface_init,@function
gimp_item_tree_view_view_iface_init:    # @gimp_item_tree_view_view_iface_init
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
	movabsq	$gimp_item_tree_view_context_item, %rdi
	movabsq	$gimp_item_tree_view_activate_item, %rcx
	movabsq	$gimp_item_tree_view_select_item, %rdx
	movabsq	$gimp_item_tree_view_insert_item_after, %rsi
	movabsq	$gimp_item_tree_view_insert_item, %r8
	movabsq	$gimp_item_tree_view_set_context, %r9
	movabsq	$gimp_item_tree_view_set_container, %r10
	movq	%rax, parent_view_iface
	movq	-8(%rbp), %rax
	movq	%r10, 40(%rax)
	movq	-8(%rbp), %rax
	movq	%r9, 48(%rax)
	movq	-8(%rbp), %rax
	movq	%r8, 64(%rax)
	movq	-8(%rbp), %rax
	movq	%rsi, 72(%rax)
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	%rcx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	%rdi, 32(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_item_tree_view_view_iface_init, .Lfunc_end3-gimp_item_tree_view_view_iface_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_tree_view_docked_iface_init,@function
gimp_item_tree_view_docked_iface_init:  # @gimp_item_tree_view_docked_iface_init
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	$0, 40(%rdi)
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_item_tree_view_docked_iface_init, .Lfunc_end4-gimp_item_tree_view_docked_iface_init
	.cfi_endproc

	.globl	gimp_item_tree_view_new
	.align	16, 0x90
	.type	gimp_item_tree_view_new,@function
gimp_item_tree_view_new:                # @gimp_item_tree_view_new
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
	subq	$184, %rsp
.Ltmp18:
	.cfi_offset %rbx, -24
	movq	16(%rbp), %rax
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movq	%rax, -64(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_tree_view_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB5_3
# BB#2:                                 # %if.then
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_item_tree_view_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB5_53
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %do.end
	jmp	.LBB5_6
.LBB5_6:                                # %do.body.2
	cmpl	$0, -28(%rbp)
	jle	.LBB5_9
# BB#7:                                 # %land.lhs.true
	cmpl	$2048, -28(%rbp)        # imm = 0x800
	jg	.LBB5_9
# BB#8:                                 # %if.then.4
	jmp	.LBB5_10
.LBB5_9:                                # %if.else.5
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_item_tree_view_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB5_53
.LBB5_10:                               # %if.end.6
	jmp	.LBB5_11
.LBB5_11:                               # %do.end.7
	jmp	.LBB5_12
.LBB5_12:                               # %do.body.8
	cmpl	$0, -32(%rbp)
	jl	.LBB5_15
# BB#13:                                # %land.lhs.true.10
	cmpl	$16, -32(%rbp)
	jg	.LBB5_15
# BB#14:                                # %if.then.12
	jmp	.LBB5_16
.LBB5_15:                               # %if.else.13
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_item_tree_view_new, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB5_53
.LBB5_16:                               # %if.end.14
	jmp	.LBB5_17
.LBB5_17:                               # %do.end.15
	jmp	.LBB5_18
.LBB5_18:                               # %do.body.16
	cmpq	$0, -40(%rbp)
	je	.LBB5_27
# BB#19:                                # %lor.lhs.false
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB5_21
# BB#20:                                # %if.then.20
	movl	$0, -92(%rbp)
	jmp	.LBB5_26
.LBB5_21:                               # %if.else.21
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_24
# BB#22:                                # %land.lhs.true.23
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB5_24
# BB#23:                                # %if.then.26
	movl	$1, -92(%rbp)
	jmp	.LBB5_25
.LBB5_24:                               # %if.else.27
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB5_25:                               # %if.end.29
	jmp	.LBB5_26
.LBB5_26:                               # %if.end.30
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB5_28
.LBB5_27:                               # %if.then.32
	jmp	.LBB5_29
.LBB5_28:                               # %if.else.33
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_item_tree_view_new, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB5_53
.LBB5_29:                               # %if.end.34
	jmp	.LBB5_30
.LBB5_30:                               # %do.end.35
	jmp	.LBB5_31
.LBB5_31:                               # %do.body.36
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_menu_factory_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB5_33
# BB#32:                                # %if.then.45
	movl	$0, -116(%rbp)
	jmp	.LBB5_38
.LBB5_33:                               # %if.else.46
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_36
# BB#34:                                # %land.lhs.true.49
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB5_36
# BB#35:                                # %if.then.53
	movl	$1, -116(%rbp)
	jmp	.LBB5_37
.LBB5_36:                               # %if.else.54
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB5_37:                               # %if.end.56
	jmp	.LBB5_38
.LBB5_38:                               # %if.end.57
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB5_40
# BB#39:                                # %if.then.60
	jmp	.LBB5_41
.LBB5_40:                               # %if.else.61
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_item_tree_view_new, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB5_53
.LBB5_41:                               # %if.end.62
	jmp	.LBB5_42
.LBB5_42:                               # %do.end.63
	jmp	.LBB5_43
.LBB5_43:                               # %do.body.64
	cmpq	$0, -56(%rbp)
	je	.LBB5_45
# BB#44:                                # %if.then.66
	jmp	.LBB5_46
.LBB5_45:                               # %if.else.67
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_item_tree_view_new, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB5_53
.LBB5_46:                               # %if.end.68
	jmp	.LBB5_47
.LBB5_47:                               # %do.end.69
	jmp	.LBB5_48
.LBB5_48:                               # %do.body.70
	cmpq	$0, -64(%rbp)
	je	.LBB5_50
# BB#49:                                # %if.then.72
	jmp	.LBB5_51
.LBB5_50:                               # %if.else.73
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_item_tree_view_new, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB5_53
.LBB5_51:                               # %if.end.74
	jmp	.LBB5_52
.LBB5_52:                               # %do.end.75
	movabsq	$.L.str.10, %rsi
	movl	$1, %edx
	movabsq	$.L.str.11, %rcx
	movabsq	$.L.str.12, %r9
	movabsq	$.L.str.13, %rax
	xorl	%edi, %edi
	movl	%edi, %r8d
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %r10
	movq	-56(%rbp), %r11
	movq	-64(%rbp), %rbx
	movq	%r8, -136(%rbp)         # 8-byte Spill
	movq	%r10, %r8
	movq	%r11, (%rsp)
	movq	%rax, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_container_view_set_view_size
	movq	-72(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_item_tree_view_set_image
	movq	-72(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
.LBB5_53:                               # %return
	movq	-16(%rbp), %rax
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_item_tree_view_new, .Lfunc_end5-gimp_item_tree_view_new
	.cfi_endproc

	.globl	gimp_item_tree_view_set_image
	.align	16, 0x90
	.type	gimp_item_tree_view_set_image,@function
gimp_item_tree_view_set_image:          # @gimp_item_tree_view_set_image
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_item_tree_view_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_item_tree_view_set_image, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_26
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB6_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB6_16
# BB#15:                                # %if.then.21
	movl	$0, -60(%rbp)
	jmp	.LBB6_21
.LBB6_16:                               # %if.else.22
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_19
# BB#17:                                # %land.lhs.true.25
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB6_19
# BB#18:                                # %if.then.29
	movl	$1, -60(%rbp)
	jmp	.LBB6_20
.LBB6_19:                               # %if.else.30
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB6_20:                               # %if.end.32
	jmp	.LBB6_21
.LBB6_21:                               # %if.end.33
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB6_23
.LBB6_22:                               # %if.then.36
	jmp	.LBB6_24
.LBB6_23:                               # %if.else.37
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_item_tree_view_set_image, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_26
.LBB6_24:                               # %if.end.38
	jmp	.LBB6_25
.LBB6_25:                               # %do.end.39
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	view_signals, %esi
	movq	-16(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
	movq	-8(%rbp), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_ui_manager
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_ui_manager_update
.LBB6_26:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_item_tree_view_set_image, .Lfunc_end6-gimp_item_tree_view_set_image
	.cfi_endproc

	.globl	gimp_item_tree_view_get_image
	.align	16, 0x90
	.type	gimp_item_tree_view_get_image,@function
gimp_item_tree_view_get_image:          # @gimp_item_tree_view_get_image
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
	movq	%rax, -24(%rbp)
	callq	gimp_item_tree_view_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_item_tree_view_get_image, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_13
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	328(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB7_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_item_tree_view_get_image, .Lfunc_end7-gimp_item_tree_view_get_image
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI8_0:
	.long	1056964608              # float 0.5
	.text
	.globl	gimp_item_tree_view_add_options
	.align	16, 0x90
	.type	gimp_item_tree_view_add_options,@function
gimp_item_tree_view_add_options:        # @gimp_item_tree_view_add_options
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
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_item_tree_view_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_item_tree_view_add_options, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_36
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	jmp	.LBB8_13
.LBB8_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB8_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB8_20
.LBB8_15:                               # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB8_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB8_19
.LBB8_18:                               # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB8_19:                               # %if.end.31
	jmp	.LBB8_20
.LBB8_20:                               # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB8_22
# BB#21:                                # %if.then.35
	jmp	.LBB8_23
.LBB8_22:                               # %if.else.36
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_item_tree_view_add_options, %rsi
	movabsq	$.L.str.15, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_36
.LBB8_23:                               # %if.end.37
	jmp	.LBB8_24
.LBB8_24:                               # %do.end.38
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.16, %rsi
	leaq	-28(%rbp), %rdx
	movabsq	$.L.str.17, %rcx
	leaq	-32(%rbp), %r8
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_widget_style_get
	movq	-8(%rbp), %rcx
	movq	328(%rcx), %rcx
	cmpq	$0, 8(%rcx)
	jne	.LBB8_29
# BB#25:                                # %if.then.42
	movl	$1, %edi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movl	-28(%rbp), %esi
	callq	gtk_box_new
	movq	-8(%rbp), %rcx
	movq	328(%rcx), %rcx
	movq	%rax, 8(%rcx)
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-8(%rbp), %rcx
	movq	328(%rcx), %rcx
	movq	8(%rcx), %rsi
	movq	%rax, %rdi
	movl	%edx, -132(%rbp)        # 4-byte Spill
	movl	-132(%rbp), %ecx        # 4-byte Reload
	movl	-132(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-8(%rbp), %rsi
	movq	328(%rsi), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_box_reorder_child
	movq	-8(%rbp), %rax
	movq	328(%rax), %rax
	movq	8(%rax), %rdi
	callq	gtk_widget_show
	movq	-8(%rbp), %rax
	movq	328(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB8_27
# BB#26:                                # %lor.lhs.false
	movq	-88(%rbp), %rax
	movq	920(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	328(%rcx), %rcx
	movq	(%rcx), %rdi
	callq	*%rax
	cmpq	$0, %rax
	jne	.LBB8_28
.LBB8_27:                               # %if.then.64
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	328(%rax), %rax
	movq	8(%rax), %rdi
	callq	gtk_widget_set_sensitive
.LBB8_28:                               # %if.end.67
	jmp	.LBB8_29
.LBB8_29:                               # %if.end.68
	cmpq	$0, -16(%rbp)
	je	.LBB8_35
# BB#30:                                # %if.then.70
	xorl	%edi, %edi
	movl	$0, -108(%rbp)
	movl	-32(%rbp), %esi
	callq	gtk_box_new
	movq	%rax, -96(%rbp)
	movq	-8(%rbp), %rax
	movq	328(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-96(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	movl	-156(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-96(%rbp), %rdi
	callq	gtk_widget_show
	movq	-8(%rbp), %rax
	movq	328(%rax), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB8_32
# BB#31:                                # %if.then.81
	movl	$1, %edi
	callq	gtk_size_group_new
	movq	-8(%rbp), %rcx
	movq	328(%rcx), %rcx
	movq	%rax, 16(%rcx)
	movl	$1, -108(%rbp)
.LBB8_32:                               # %if.end.85
	movq	-16(%rbp), %rdi
	callq	gtk_label_new
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_misc_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorps	%xmm0, %xmm0
	movss	.LCPI8_0, %xmm1         # xmm1 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_misc_set_alignment
	movq	-8(%rbp), %rax
	movq	328(%rax), %rax
	movq	16(%rax), %rdi
	movq	-104(%rbp), %rsi
	callq	gtk_size_group_add_widget
	movq	-96(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	movl	-180(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-104(%rbp), %rdi
	callq	gtk_widget_show
	cmpl	$0, -108(%rbp)
	je	.LBB8_34
# BB#33:                                # %if.then.94
	movq	-8(%rbp), %rax
	movq	328(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB8_34:                               # %if.end.97
	movq	-96(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
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
	jmp	.LBB8_36
.LBB8_35:                               # %if.else.100
	movq	-8(%rbp), %rax
	movq	328(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	movl	-204(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rdi
	callq	gtk_widget_show
.LBB8_36:                               # %if.end.105
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_item_tree_view_add_options, .Lfunc_end8-gimp_item_tree_view_add_options
	.cfi_endproc

	.globl	gimp_item_tree_view_get_lock_box
	.align	16, 0x90
	.type	gimp_item_tree_view_get_lock_box,@function
gimp_item_tree_view_get_lock_box:       # @gimp_item_tree_view_get_lock_box
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_item_tree_view_get_type
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
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_item_tree_view_get_lock_box, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_15
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	328(%rax), %rax
	cmpq	$0, 24(%rax)
	jne	.LBB9_14
# BB#13:                                # %if.then.12
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.17, %rsi
	leaq	-44(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_widget_style_get
	xorl	%edi, %edi
	movl	-44(%rbp), %esi
	callq	gtk_box_new
	movabsq	$.L.str.18, %rdi
	movq	-16(%rbp), %rcx
	movq	328(%rcx), %rcx
	movq	%rax, 24(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gettext
	movq	-16(%rbp), %rcx
	movq	328(%rcx), %rcx
	movq	24(%rcx), %rdx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_item_tree_view_add_options
	movq	-16(%rbp), %rax
	movq	328(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rcx
	movq	328(%rcx), %rcx
	movq	24(%rcx), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_parent
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_set_child_packing
.LBB9_14:                               # %if.end.28
	movq	-16(%rbp), %rax
	movq	328(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB9_15:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_item_tree_view_get_lock_box, .Lfunc_end9-gimp_item_tree_view_get_lock_box
	.cfi_endproc

	.globl	gimp_item_tree_view_get_new_button
	.align	16, 0x90
	.type	gimp_item_tree_view_get_new_button,@function
gimp_item_tree_view_get_new_button:     # @gimp_item_tree_view_get_new_button
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_item_tree_view_get_type
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
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_item_tree_view_get_new_button, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_13
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	328(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB10_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_item_tree_view_get_new_button, .Lfunc_end10-gimp_item_tree_view_get_new_button
	.cfi_endproc

	.globl	gimp_item_tree_view_get_edit_button
	.align	16, 0x90
	.type	gimp_item_tree_view_get_edit_button,@function
gimp_item_tree_view_get_edit_button:    # @gimp_item_tree_view_get_edit_button
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_item_tree_view_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_item_tree_view_get_edit_button, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB11_13
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	328(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB11_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_item_tree_view_get_edit_button, .Lfunc_end11-gimp_item_tree_view_get_edit_button
	.cfi_endproc

	.globl	gimp_item_tree_view_get_drop_index
	.align	16, 0x90
	.type	gimp_item_tree_view_get_drop_index,@function
gimp_item_tree_view_get_drop_index:     # @gimp_item_tree_view_get_drop_index
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movl	$-1, -44(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_item_tree_view_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_item_tree_view_get_drop_index, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB12_41
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	jmp	.LBB12_13
.LBB12_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB12_22
# BB#14:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_viewable_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB12_16
# BB#15:                                # %if.then.21
	movl	$0, -92(%rbp)
	jmp	.LBB12_21
.LBB12_16:                              # %if.else.22
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_19
# BB#17:                                # %land.lhs.true.25
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB12_19
# BB#18:                                # %if.then.29
	movl	$1, -92(%rbp)
	jmp	.LBB12_20
.LBB12_19:                              # %if.else.30
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB12_20:                              # %if.end.32
	jmp	.LBB12_21
.LBB12_21:                              # %if.end.33
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB12_23
.LBB12_22:                              # %if.then.36
	jmp	.LBB12_24
.LBB12_23:                              # %if.else.37
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_item_tree_view_get_drop_index, %rsi
	movabsq	$.L.str.19, %rdx
	callq	g_return_if_fail_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB12_41
.LBB12_24:                              # %if.end.38
	jmp	.LBB12_25
.LBB12_25:                              # %do.end.39
	jmp	.LBB12_26
.LBB12_26:                              # %do.body.40
	cmpq	$0, -40(%rbp)
	je	.LBB12_28
# BB#27:                                # %if.then.42
	jmp	.LBB12_29
.LBB12_28:                              # %if.else.43
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_item_tree_view_get_drop_index, %rsi
	movabsq	$.L.str.20, %rdx
	callq	g_return_if_fail_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB12_41
.LBB12_29:                              # %if.end.44
	jmp	.LBB12_30
.LBB12_30:                              # %do.end.45
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	cmpq	$0, -24(%rbp)
	je	.LBB12_40
# BB#31:                                # %if.then.47
	movq	-24(%rbp), %rdi
	callq	gimp_viewable_get_parent
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_index
	movl	%eax, -44(%rbp)
	cmpl	$3, -28(%rbp)
	jne	.LBB12_36
# BB#32:                                # %if.then.53
	movq	-24(%rbp), %rdi
	callq	gimp_viewable_get_children
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB12_34
# BB#33:                                # %if.then.57
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$0, -44(%rbp)
	jmp	.LBB12_35
.LBB12_34:                              # %if.else.58
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
.LBB12_35:                              # %if.end.59
	jmp	.LBB12_39
.LBB12_36:                              # %if.else.60
	cmpl	$1, -28(%rbp)
	jne	.LBB12_38
# BB#37:                                # %if.then.62
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
.LBB12_38:                              # %if.end.64
	jmp	.LBB12_39
.LBB12_39:                              # %if.end.65
	jmp	.LBB12_40
.LBB12_40:                              # %if.end.66
	movl	-44(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB12_41:                              # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_item_tree_view_get_drop_index, .Lfunc_end12-gimp_item_tree_view_get_drop_index
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_tree_view_class_init,@function
gimp_item_tree_view_class_init:         # @gimp_item_tree_view_class_init
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
	pushq	%r14
	pushq	%rbx
	subq	$128, %rsp
.Ltmp43:
	.cfi_offset %rbx, -32
.Ltmp44:
	.cfi_offset %r14, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movabsq	$.L.str.21, %rdi
	movl	$2, %edx
	movl	$888, %ecx              # imm = 0x378
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$g_cclosure_marshal_VOID__OBJECT, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	movl	$1, %r8d
	movq	-72(%rbp), %r11         # 8-byte Reload
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%r11, %rsi
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	movq	%rbx, %r8
	movq	%r9, -96(%rbp)          # 8-byte Spill
	movq	%rbx, %r9
	movq	-96(%rbp), %r14         # 8-byte Reload
	movq	%r14, (%rsp)
	movq	$4, 8(%rsp)
	movl	$1, 16(%rsp)
	movq	%rax, 24(%rsp)
	movb	$0, %al
	movq	%r10, -104(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movl	$152, %ecx
	movl	%ecx, %esi
	movabsq	$gimp_item_tree_view_real_set_image, %rdi
	movabsq	$gimp_item_tree_view_drop_viewable, %r8
	movabsq	$gimp_item_tree_view_drop_possible, %r9
	movabsq	$gimp_item_tree_view_style_set, %r10
	movabsq	$gimp_item_tree_view_dispose, %r11
	movabsq	$gimp_item_tree_view_constructed, %rbx
	movl	%eax, view_signals
	movq	-32(%rbp), %r14
	movq	%rbx, 72(%r14)
	movq	-32(%rbp), %rbx
	movq	%r11, 40(%rbx)
	movq	-40(%rbp), %r11
	movq	%r10, 280(%r11)
	movq	-48(%rbp), %r10
	movq	%r9, 832(%r10)
	movq	-48(%rbp), %r9
	movq	%r8, 840(%r9)
	movq	-24(%rbp), %r8
	movq	%rdi, 888(%r8)
	movq	-24(%rbp), %rdi
	movq	$4, 896(%rdi)
	movq	-24(%rbp), %rdi
	movq	$0, 904(%rdi)
	movq	-24(%rbp), %rdi
	movq	$0, 912(%rdi)
	movq	-24(%rbp), %rdi
	movq	$0, 920(%rdi)
	movq	-24(%rbp), %rdi
	movq	$0, 928(%rdi)
	movq	-24(%rbp), %rdi
	movq	$0, 936(%rdi)
	movq	-24(%rbp), %rdi
	movq	$0, 944(%rdi)
	movq	-24(%rbp), %rdi
	movq	$0, 952(%rdi)
	movq	-24(%rbp), %rdi
	movq	$0, 960(%rdi)
	movq	-24(%rbp), %rdi
	movq	$0, 976(%rdi)
	movq	-24(%rbp), %rdi
	movq	$0, 984(%rdi)
	movq	-24(%rbp), %rdi
	movq	$0, 992(%rdi)
	movq	-24(%rbp), %rdi
	movq	$0, 1000(%rdi)
	movq	-24(%rbp), %rdi
	movq	$0, 1008(%rdi)
	movq	-24(%rbp), %rdi
	movq	$0, 1016(%rdi)
	movq	-24(%rbp), %rdi
	movq	$0, 1024(%rdi)
	movq	-24(%rbp), %rdi
	movq	$0, 1032(%rdi)
	movq	-24(%rbp), %rdi
	movq	$0, 1040(%rdi)
	movq	-24(%rbp), %rdi
	movq	$0, 1048(%rdi)
	movq	-24(%rbp), %rdi
	movq	$0, 1056(%rdi)
	movq	-24(%rbp), %rdi
	movq	$0, 1064(%rdi)
	movq	-24(%rbp), %rdi
	callq	g_type_class_add_private
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_item_tree_view_class_init, .Lfunc_end13-gimp_item_tree_view_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_tree_view_constructed,@function
gimp_item_tree_view_constructed:        # @gimp_item_tree_view_constructed
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
	subq	$320, %rsp              # imm = 0x140
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_tree_view_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -40(%rbp)
	movq	gimp_item_tree_view_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_item_tree_view_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB14_2:                               # %if.end
	movabsq	$gimp_item_tree_view_name_edited, %rax
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gimp_container_tree_view_connect_name_edited
	movabsq	$.L.str.22, %rsi
	movabsq	$gimp_item_tree_view_row_expanded, %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rcx
	movq	288(%rcx), %rcx
	movq	-32(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.23, %rsi
	movabsq	$gimp_item_tree_view_item_pre_clicked, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdx
	movq	304(%rdx), %rdx
	movq	-40(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_column_new
	xorl	%edx, %edx
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	288(%rax), %rdi
	movq	-48(%rbp), %rsi
	callq	gtk_tree_view_insert_column
	movabsq	$.L.str.24, %rdi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	gimp_cell_renderer_toggle_new
	movabsq	$.L.str.25, %rsi
	xorl	%edx, %edx
	movabsq	$.L.str.26, %rcx
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	-40(%rbp), %rdi
	movq	328(%rdi), %rdi
	movq	%rax, 104(%rdi)
	movq	-40(%rbp), %rax
	movq	328(%rax), %rax
	movq	104(%rax), %rax
	movq	%rax, %rdi
	movl	%edx, -136(%rbp)        # 4-byte Spill
	movl	-136(%rbp), %r8d        # 4-byte Reload
	movb	$0, %al
	callq	g_object_set
	xorl	%edx, %edx
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	328(%rcx), %rcx
	movq	104(%rcx), %rsi
	callq	gtk_tree_view_column_pack_start
	movabsq	$.L.str.27, %rdx
	movabsq	$.L.str.28, %r8
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	328(%rsi), %rsi
	movq	104(%rsi), %rsi
	movq	-40(%rbp), %r9
	movq	328(%r9), %r9
	movl	88(%r9), %r10d
	movq	-40(%rbp), %r9
	movq	328(%r9), %r9
	movl	92(%r9), %r9d
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movl	%r10d, %ecx
	movq	$0, (%rsp)
	movb	$0, %al
	callq	gtk_tree_view_column_set_attributes
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movq	328(%rdx), %rdx
	movq	104(%rdx), %rsi
	callq	gimp_container_tree_view_add_toggle_cell
	movabsq	$.L.str.29, %rsi
	movabsq	$gimp_item_tree_view_eye_clicked, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdi
	movq	328(%rdi), %rdi
	movq	104(%rdi), %rdi
	movq	-40(%rbp), %r11
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_column_new
	movl	$1, %edx
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	288(%rax), %rdi
	movq	-48(%rbp), %rsi
	callq	gtk_tree_view_insert_column
	movabsq	$.L.str.30, %rdi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	gimp_cell_renderer_toggle_new
	movabsq	$.L.str.25, %rsi
	xorl	%edx, %edx
	movabsq	$.L.str.26, %rcx
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	-40(%rbp), %rdi
	movq	328(%rdi), %rdi
	movq	%rax, 112(%rdi)
	movq	-40(%rbp), %rax
	movq	328(%rax), %rax
	movq	112(%rax), %rax
	movq	%rax, %rdi
	movl	%edx, -160(%rbp)        # 4-byte Spill
	movl	-160(%rbp), %r8d        # 4-byte Reload
	movb	$0, %al
	callq	g_object_set
	xorl	%edx, %edx
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	328(%rcx), %rcx
	movq	112(%rcx), %rsi
	callq	gtk_tree_view_column_pack_start
	movabsq	$.L.str.27, %rdx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	328(%rcx), %rcx
	movq	112(%rcx), %rsi
	movq	-40(%rbp), %rcx
	movq	328(%rcx), %rcx
	movl	96(%rcx), %ecx
	movb	$0, %al
	callq	gtk_tree_view_column_set_attributes
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movq	328(%rdx), %rdx
	movq	112(%rdx), %rsi
	callq	gimp_container_tree_view_add_toggle_cell
	movabsq	$.L.str.29, %rsi
	movabsq	$gimp_item_tree_view_chain_clicked, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdi
	movq	328(%rdi), %rdi
	movq	112(%rdi), %rdi
	movq	-40(%rbp), %r11
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movq	-40(%rbp), %rcx
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movq	%rax, %rdi
	callq	gimp_container_view_set_dnd_widget
	movq	-32(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movl	$6, %ecx
	movq	-16(%rbp), %rdx
	movq	896(%rdx), %rdx
	movq	%rax, %rdi
	callq	gimp_dnd_drag_dest_set_by_type
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	960(%rdx), %rsi
	movq	-16(%rbp), %rdx
	movq	976(%rdx), %rdx
	movl	%eax, -188(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	-40(%rbp), %rcx
	movq	328(%rcx), %rcx
	movq	%rax, 40(%rcx)
	movq	-40(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rcx
	movq	328(%rcx), %rcx
	movq	40(%rcx), %rcx
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	callq	gtk_button_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rcx
	movq	896(%rcx), %rdx
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_view_enable_dnd
	movl	$1, %r8d
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	960(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	984(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	992(%rax), %rcx
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movabsq	$gimp_item_tree_view_new_dropped, %rdx
	movq	-40(%rbp), %rcx
	movq	328(%rcx), %rcx
	movq	%rax, 48(%rcx)
	movq	-40(%rbp), %rax
	movq	328(%rax), %rax
	movq	48(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	896(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	callq	gimp_dnd_viewable_dest_add
	movl	$1, %r8d
	xorl	%r10d, %r10d
	movl	%r10d, %r9d
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	960(%rcx), %rsi
	movq	-16(%rbp), %rcx
	movq	1000(%rcx), %rdx
	movq	-16(%rbp), %rcx
	movq	1008(%rcx), %rcx
	movl	%eax, -220(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movl	$1, %r8d
	xorl	%r10d, %r10d
	movl	%r10d, %r9d
	movq	-40(%rbp), %rcx
	movq	328(%rcx), %rcx
	movq	%rax, 56(%rcx)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	960(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	1016(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	1024(%rax), %rcx
	movb	$0, %al
	callq	gimp_editor_add_action_button
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-40(%rbp), %rdx
	movq	328(%rdx), %rdx
	movq	%rax, 64(%rdx)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	960(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	1032(%rax), %rdx
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	-40(%rbp), %rcx
	movq	328(%rcx), %rcx
	movq	%rax, 72(%rcx)
	movq	-40(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rcx
	movq	328(%rcx), %rcx
	movq	72(%rcx), %rcx
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	callq	gtk_button_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rcx
	movq	896(%rcx), %rdx
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_view_enable_dnd
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	960(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	1040(%rax), %rdx
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	-40(%rbp), %rcx
	movq	328(%rcx), %rcx
	movq	%rax, 80(%rcx)
	movq	-40(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rcx
	movq	328(%rcx), %rcx
	movq	80(%rcx), %rcx
	movq	%rax, -264(%rbp)        # 8-byte Spill
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	callq	gtk_button_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rcx
	movq	896(%rcx), %rdx
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_view_enable_dnd
	movq	-40(%rbp), %rdi
	callq	gimp_item_tree_view_get_lock_box
	movq	%rax, -56(%rbp)
	callq	gtk_toggle_button_new
	movq	-40(%rbp), %rcx
	movq	328(%rcx), %rcx
	movq	%rax, 32(%rcx)
	movq	-56(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-40(%rbp), %rcx
	movq	328(%rcx), %rcx
	movq	32(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movq	-56(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-40(%rbp), %rsi
	movq	328(%rsi), %rsi
	movq	32(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_box_reorder_child
	movq	-40(%rbp), %rax
	movq	328(%rax), %rax
	movq	32(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.31, %rsi
	movabsq	$gimp_item_tree_view_lock_content_toggled, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdi
	movq	328(%rdi), %rdi
	movq	32(%rdi), %rdi
	movq	-40(%rbp), %r11
	movq	%rax, %rdx
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movq	-40(%rbp), %rcx
	movq	328(%rcx), %rcx
	movq	32(%rcx), %rdi
	movq	-16(%rbp), %rcx
	movq	1056(%rcx), %rsi
	movq	-16(%rbp), %rcx
	movq	1064(%rcx), %rdx
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_help_set_help_data
	movq	-40(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.32, %rsi
	leaq	-68(%rbp), %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_widget_style_get
	movq	-16(%rbp), %rcx
	movq	1048(%rcx), %rdi
	movl	-68(%rbp), %esi
	callq	gtk_image_new_from_stock
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	328(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_item_tree_view_constructed, .Lfunc_end14-gimp_item_tree_view_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_tree_view_dispose,@function
gimp_item_tree_view_dispose:            # @gimp_item_tree_view_dispose
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_item_tree_view_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	328(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB15_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_item_tree_view_set_image
.LBB15_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_item_tree_view_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_item_tree_view_dispose, .Lfunc_end15-gimp_item_tree_view_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_tree_view_style_set,@function
gimp_item_tree_view_style_set:          # @gimp_item_tree_view_style_set
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
	pushq	%r14
	pushq	%rbx
	subq	$320, %rsp              # imm = 0x140
.Ltmp54:
	.cfi_offset %rbx, -32
.Ltmp55:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	callq	gimp_item_tree_view_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.35, %rsi
	leaq	-60(%rbp), %rdx
	movabsq	$.L.str.32, %rcx
	leaq	-64(%rbp), %r8
	movabsq	$.L.str.16, %r9
	leaq	-68(%rbp), %rdi
	movabsq	$.L.str.17, %r10
	leaq	-72(%rbp), %r11
	xorl	%ebx, %ebx
	movl	%ebx, %r14d
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-200(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r11, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, %al
	movq	%r14, -208(%rbp)        # 8-byte Spill
	callq	gtk_widget_style_get
	movq	-40(%rbp), %rcx
	movq	328(%rcx), %rcx
	cmpq	$0, 8(%rcx)
	je	.LBB16_18
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	328(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-68(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_box_set_spacing
	movq	-40(%rbp), %rax
	movq	328(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_children
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB16_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB16_17
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB16_2 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gtk_box_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB16_5
# BB#4:                                 # %if.then.14
                                        #   in Loop: Header=BB16_2 Depth=1
	movl	$0, -100(%rbp)
	jmp	.LBB16_10
.LBB16_5:                               # %if.else
                                        #   in Loop: Header=BB16_2 Depth=1
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_8
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB16_2 Depth=1
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB16_8
# BB#7:                                 # %if.then.17
                                        #   in Loop: Header=BB16_2 Depth=1
	movl	$1, -100(%rbp)
	jmp	.LBB16_9
.LBB16_8:                               # %if.else.18
                                        #   in Loop: Header=BB16_2 Depth=1
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB16_9:                               # %if.end
                                        #   in Loop: Header=BB16_2 Depth=1
	jmp	.LBB16_10
.LBB16_10:                              # %if.end.20
                                        #   in Loop: Header=BB16_2 Depth=1
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB16_12
# BB#11:                                # %if.then.22
                                        #   in Loop: Header=BB16_2 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-72(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_box_set_spacing
.LBB16_12:                              # %if.end.25
                                        #   in Loop: Header=BB16_2 Depth=1
	jmp	.LBB16_13
.LBB16_13:                              # %for.inc
                                        #   in Loop: Header=BB16_2 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB16_15
# BB#14:                                # %cond.true
                                        #   in Loop: Header=BB16_2 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jmp	.LBB16_16
.LBB16_15:                              # %cond.false
                                        #   in Loop: Header=BB16_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	jmp	.LBB16_16
.LBB16_16:                              # %cond.end
                                        #   in Loop: Header=BB16_2 Depth=1
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	jmp	.LBB16_2
.LBB16_17:                              # %for.end
	movq	-48(%rbp), %rdi
	callq	g_list_free
.LBB16_18:                              # %if.end.27
	movq	-40(%rbp), %rax
	movq	328(%rax), %rax
	cmpq	$0, 24(%rax)
	je	.LBB16_47
# BB#19:                                # %if.then.30
	movq	-40(%rbp), %rax
	movq	328(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-72(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_box_set_spacing
	movq	-40(%rbp), %rax
	movq	328(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_children
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB16_20:                              # %for.cond.40
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB16_46
# BB#21:                                # %for.body.42
                                        #   in Loop: Header=BB16_20 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gtk_button_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB16_23
# BB#22:                                # %if.then.54
                                        #   in Loop: Header=BB16_20 Depth=1
	movl	$0, -132(%rbp)
	jmp	.LBB16_28
.LBB16_23:                              # %if.else.55
                                        #   in Loop: Header=BB16_20 Depth=1
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_26
# BB#24:                                # %land.lhs.true.58
                                        #   in Loop: Header=BB16_20 Depth=1
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB16_26
# BB#25:                                # %if.then.62
                                        #   in Loop: Header=BB16_20 Depth=1
	movl	$1, -132(%rbp)
	jmp	.LBB16_27
.LBB16_26:                              # %if.else.63
                                        #   in Loop: Header=BB16_20 Depth=1
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB16_27:                              # %if.end.65
                                        #   in Loop: Header=BB16_20 Depth=1
	jmp	.LBB16_28
.LBB16_28:                              # %if.end.66
                                        #   in Loop: Header=BB16_20 Depth=1
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB16_41
# BB#29:                                # %if.then.69
                                        #   in Loop: Header=BB16_20 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gtk_button_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-60(%rbp), %esi
	movq	%rax, %rdi
	callq	gtk_button_set_relief
	movq	-112(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -152(%rbp)
	callq	gtk_image_get_type
	movq	%rax, -160(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB16_31
# BB#30:                                # %if.then.84
                                        #   in Loop: Header=BB16_20 Depth=1
	movl	$0, -164(%rbp)
	jmp	.LBB16_36
.LBB16_31:                              # %if.else.85
                                        #   in Loop: Header=BB16_20 Depth=1
	movq	-152(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_34
# BB#32:                                # %land.lhs.true.88
                                        #   in Loop: Header=BB16_20 Depth=1
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB16_34
# BB#33:                                # %if.then.92
                                        #   in Loop: Header=BB16_20 Depth=1
	movl	$1, -164(%rbp)
	jmp	.LBB16_35
.LBB16_34:                              # %if.else.93
                                        #   in Loop: Header=BB16_20 Depth=1
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -164(%rbp)
.LBB16_35:                              # %if.end.95
                                        #   in Loop: Header=BB16_20 Depth=1
	jmp	.LBB16_36
.LBB16_36:                              # %if.end.96
                                        #   in Loop: Header=BB16_20 Depth=1
	movl	-164(%rbp), %eax
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB16_40
# BB#37:                                # %if.then.99
                                        #   in Loop: Header=BB16_20 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gtk_image_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-184(%rbp), %rsi
	leaq	-172(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_image_get_stock
	movl	-64(%rbp), %ecx
	cmpl	-172(%rbp), %ecx
	je	.LBB16_39
# BB#38:                                # %if.then.105
                                        #   in Loop: Header=BB16_20 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gtk_image_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-184(%rbp), %rsi
	movl	-64(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_image_set_from_stock
.LBB16_39:                              # %if.end.108
                                        #   in Loop: Header=BB16_20 Depth=1
	jmp	.LBB16_40
.LBB16_40:                              # %if.end.109
                                        #   in Loop: Header=BB16_20 Depth=1
	jmp	.LBB16_41
.LBB16_41:                              # %if.end.110
                                        #   in Loop: Header=BB16_20 Depth=1
	jmp	.LBB16_42
.LBB16_42:                              # %for.inc.111
                                        #   in Loop: Header=BB16_20 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB16_44
# BB#43:                                # %cond.true.113
                                        #   in Loop: Header=BB16_20 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jmp	.LBB16_45
.LBB16_44:                              # %cond.false.115
                                        #   in Loop: Header=BB16_20 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	jmp	.LBB16_45
.LBB16_45:                              # %cond.end.116
                                        #   in Loop: Header=BB16_20 Depth=1
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	jmp	.LBB16_20
.LBB16_46:                              # %for.end.118
	movq	-48(%rbp), %rdi
	callq	g_list_free
.LBB16_47:                              # %if.end.119
	movq	gimp_item_tree_view_parent_class, %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	280(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	*%rax
	addq	$320, %rsp              # imm = 0x140
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_item_tree_view_style_set, .Lfunc_end16-gimp_item_tree_view_style_set
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_tree_view_drop_possible,@function
gimp_item_tree_view_drop_possible:      # @gimp_item_tree_view_drop_possible
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
	subq	$144, %rsp
	movq	24(%rbp), %rax
	movq	16(%rbp), %r10
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movq	%r10, -64(%rbp)
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_item_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB17_2
# BB#1:                                 # %if.then
	movl	$0, -92(%rbp)
	jmp	.LBB17_7
.LBB17_2:                               # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_5
# BB#3:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB17_5
# BB#4:                                 # %if.then.3
	movl	$1, -92(%rbp)
	jmp	.LBB17_6
.LBB17_5:                               # %if.else.4
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB17_6:                               # %if.end
	jmp	.LBB17_7
.LBB17_7:                               # %if.end.6
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB17_15
# BB#8:                                 # %land.lhs.true.8
	cmpq	$0, -40(%rbp)
	je	.LBB17_10
# BB#9:                                 # %lor.lhs.false
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	-40(%rbp), %rsi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	-112(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB17_15
.LBB17_10:                              # %if.then.17
	cmpq	$0, -64(%rbp)
	je	.LBB17_12
# BB#11:                                # %if.then.19
	movl	-52(%rbp), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB17_12:                              # %if.end.20
	cmpq	$0, -72(%rbp)
	je	.LBB17_14
# BB#13:                                # %if.then.22
	movq	-72(%rbp), %rax
	movl	$2, (%rax)
.LBB17_14:                              # %if.end.23
	movl	$1, -4(%rbp)
	jmp	.LBB17_16
.LBB17_15:                              # %if.end.24
	movq	gimp_item_tree_view_parent_class, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	832(%rax), %rax
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	movl	-52(%rbp), %r9d
	movq	-64(%rbp), %r10
	movq	-72(%rbp), %r11
	movq	%r10, (%rsp)
	movq	%r11, 8(%rsp)
	callq	*%rax
	movl	%eax, -4(%rbp)
.LBB17_16:                              # %return
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_item_tree_view_drop_possible, .Lfunc_end17-gimp_item_tree_view_drop_possible
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_tree_view_drop_viewable,@function
gimp_item_tree_view_drop_viewable:      # @gimp_item_tree_view_drop_viewable
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_tree_view_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movl	$-1, -52(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	328(%rax), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	-120(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB18_2
# BB#1:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	896(%rax), %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	jne	.LBB18_5
.LBB18_2:                               # %if.then
	movq	-40(%rbp), %rax
	movq	896(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB18_4
# BB#3:                                 # %if.then.13
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB18_4:                               # %if.end
	leaq	-80(%rbp), %rax
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movq	%rax, %rcx
	callq	gimp_item_tree_view_get_drop_index
	movl	%eax, -52(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rcx
	movq	328(%rcx), %rcx
	movq	(%rcx), %rsi
	movq	-64(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_convert
	xorl	%r8d, %r8d
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	movl	%r8d, %esi
	movl	%r8d, %edx
	callq	gimp_item_set_linked
	movl	$1, %r8d
	movq	-40(%rbp), %rax
	movq	936(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	328(%rcx), %rcx
	movq	(%rcx), %rdi
	movq	-72(%rbp), %rsi
	movq	-80(%rbp), %rdx
	movl	-52(%rbp), %ecx
	callq	*%rax
	jmp	.LBB18_12
.LBB18_5:                               # %if.else
	cmpq	$0, -24(%rbp)
	je	.LBB18_11
# BB#6:                                 # %if.then.25
	movq	-16(%rbp), %rdi
	callq	gimp_viewable_get_parent
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_index
	leaq	-96(%rbp), %rsi
	movl	%eax, -100(%rbp)
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movl	-28(%rbp), %edx
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	-160(%rbp), %rcx        # 8-byte Reload
	callq	gimp_item_tree_view_get_drop_index
	movl	%eax, -104(%rbp)
	movq	-88(%rbp), %rcx
	cmpq	-96(%rbp), %rcx
	jne	.LBB18_10
# BB#7:                                 # %if.then.35
	movl	-100(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jge	.LBB18_9
# BB#8:                                 # %if.then.37
	movl	-104(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -104(%rbp)
.LBB18_9:                               # %if.end.38
	jmp	.LBB18_10
.LBB18_10:                              # %if.end.39
	movq	-48(%rbp), %rax
	movq	328(%rax), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r8d
	xorl	%ecx, %ecx
	movl	%ecx, %r9d
	movq	-96(%rbp), %rdx
	movl	-104(%rbp), %ecx
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_reorder_item
	movl	%eax, -180(%rbp)        # 4-byte Spill
.LBB18_11:                              # %if.end.45
	jmp	.LBB18_12
.LBB18_12:                              # %if.end.46
	movq	-48(%rbp), %rax
	movq	328(%rax), %rax
	movq	(%rax), %rdi
	callq	gimp_image_flush
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_item_tree_view_drop_viewable, .Lfunc_end18-gimp_item_tree_view_drop_viewable
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_tree_view_real_set_image,@function
gimp_item_tree_view_real_set_image:     # @gimp_item_tree_view_real_set_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	328(%rsi), %rsi
	movq	(%rsi), %rsi
	cmpq	-16(%rbp), %rsi
	jne	.LBB19_2
# BB#1:                                 # %if.then
	jmp	.LBB19_6
.LBB19_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	328(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB19_4
# BB#3:                                 # %if.then.4
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_item_tree_view_item_changed, %rdx
	movq	-8(%rbp), %rdi
	movq	328(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-32(%rbp), %r10         # 8-byte Reload
	movq	%r9, -40(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-40(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_item_tree_view_size_changed, %rdi
	movq	-8(%rbp), %r9
	movq	328(%r9), %r9
	movq	(%r9), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-48(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movq	-8(%rbp), %rdi
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gimp_container_view_set_container
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_item_tree_view_image_flush, %rax
	movq	-8(%rbp), %rdi
	movq	328(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	-8(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -72(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB19_4:                               # %if.end.15
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	328(%rcx), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	328(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB19_6
# BB#5:                                 # %if.then.21
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	912(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	328(%rcx), %rcx
	movq	(%rcx), %rdi
	callq	*%rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_container_view_set_container
	movabsq	$gimp_item_tree_view_item_changed, %rax
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rcx
	movq	328(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	904(%rsi), %rsi
	movq	-8(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rax, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.36, %rsi
	movabsq	$gimp_item_tree_view_size_changed, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	328(%rdx), %rdx
	movq	(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_item_tree_view_image_flush, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	328(%rdx), %rdx
	movq	(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-8(%rbp), %rcx
	movq	328(%rcx), %rcx
	movq	(%rcx), %rdi
	movq	-8(%rbp), %rsi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_tree_view_item_changed
.LBB19_6:                               # %if.end.39
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_item_tree_view_real_set_image, .Lfunc_end19-gimp_item_tree_view_real_set_image
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_tree_view_name_edited,@function
gimp_item_tree_view_name_edited:        # @gimp_item_tree_view_name_edited
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp67:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_tree_path_new_from_string
	leaq	-80(%rbp), %rsi
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	144(%rax), %rdi
	movq	-48(%rbp), %rdx
	callq	gtk_tree_model_get_iter
	cmpl	$0, %eax
	je	.LBB20_12
# BB#1:                                 # %if.then
	leaq	-80(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-88(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	$0, -112(%rbp)
	movq	-40(%rbp), %rax
	movq	144(%rax), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-88(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB20_3
# BB#2:                                 # %if.then.9
	movabsq	$.L.str.33, %rax
	movq	%rax, -104(%rbp)
.LBB20_3:                               # %if.end
	cmpq	$0, -24(%rbp)
	jne	.LBB20_5
# BB#4:                                 # %if.then.11
	movabsq	$.L.str.33, %rax
	movq	%rax, -24(%rbp)
.LBB20_5:                               # %if.end.12
	movq	-104(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB20_8
# BB#6:                                 # %land.lhs.true
	leaq	-112(%rbp), %rdx
	movq	-96(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_item_rename
	cmpl	$0, %eax
	je	.LBB20_8
# BB#7:                                 # %if.then.17
	movq	-96(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, %rdi
	callq	gimp_image_flush
	jmp	.LBB20_11
.LBB20_8:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-88(%rbp), %rcx
	movq	40(%rcx), %rdi
	callq	gimp_viewable_get_description
	movq	%rax, -120(%rbp)
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-80(%rbp), %rsi
	movl	$1, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-120(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_tree_store_set
	movq	-120(%rbp), %rdi
	callq	g_free
	cmpq	$0, -112(%rbp)
	je	.LBB20_10
# BB#9:                                 # %if.then.25
	movl	$80, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movq	328(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	32(%rcx), %rdi
	movq	-32(%rbp), %rcx
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	-112(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_message_literal
	leaq	-112(%rbp), %rdi
	callq	g_clear_error
.LBB20_10:                              # %if.end.27
	jmp	.LBB20_11
.LBB20_11:                              # %if.end.28
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB20_12:                              # %if.end.29
	movq	-48(%rbp), %rdi
	callq	gtk_tree_path_free
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_item_tree_view_name_edited, .Lfunc_end20-gimp_item_tree_view_name_edited
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_tree_view_row_expanded,@function
gimp_item_tree_view_row_expanded:       # @gimp_item_tree_view_row_expanded
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp68:
	.cfi_def_cfa_offset 16
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp70:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	328(%rcx), %rcx
	cmpl	$0, 144(%rcx)
	jne	.LBB21_5
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	leaq	-48(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	144(%rax), %rdi
	movq	-16(%rbp), %rsi
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-48(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	920(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	328(%rcx), %rcx
	movq	(%rcx), %rdi
	callq	*%rax
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB21_4
# BB#2:                                 # %land.lhs.true
	movq	-64(%rbp), %rdi
	callq	gimp_item_get_parent
	cmpq	-56(%rbp), %rax
	jne	.LBB21_4
# BB#3:                                 # %if.then.8
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_view_select_item
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB21_4:                               # %if.end
	jmp	.LBB21_5
.LBB21_5:                               # %if.end.14
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_item_tree_view_row_expanded, .Lfunc_end21-gimp_item_tree_view_row_expanded
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_tree_view_item_pre_clicked,@function
gimp_item_tree_view_item_pre_clicked:   # @gimp_item_tree_view_item_pre_clicked
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
.Ltmp72:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp73:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	$0, -84(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_tree_path_new_from_string
	leaq	-80(%rbp), %rsi
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	144(%rax), %rdi
	movq	-48(%rbp), %rdx
	callq	gtk_tree_model_get_iter
	cmpl	$0, %eax
	je	.LBB22_5
# BB#1:                                 # %land.lhs.true
	movl	-20(%rbp), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	.LBB22_5
# BB#2:                                 # %if.then
	movq	-32(%rbp), %rdi
	callq	gimp_item_tree_view_get_image
	leaq	-80(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-104(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, -96(%rbp)
	movq	$0, -104(%rbp)
	movq	-40(%rbp), %rax
	movq	144(%rax), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	cmpq	$0, -104(%rbp)
	je	.LBB22_4
# BB#3:                                 # %if.then.8
	movq	-104(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -112(%rbp)
	movl	-20(%rbp), %edi
	callq	gimp_modifiers_to_channel_op
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movl	%eax, -116(%rbp)
	movq	-112(%rbp), %rdi
	movl	-116(%rbp), %esi
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	movsd	-144(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_item_to_selection
	movq	-96(%rbp), %rdi
	callq	gimp_image_flush
	movq	-104(%rbp), %rdi
	callq	g_object_unref
	movl	$1, -84(%rbp)
.LBB22_4:                               # %if.end
	jmp	.LBB22_5
.LBB22_5:                               # %if.end.12
	movq	-48(%rbp), %rdi
	callq	gtk_tree_path_free
	movl	-84(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_item_tree_view_item_pre_clicked, .Lfunc_end22-gimp_item_tree_view_item_pre_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_tree_view_eye_clicked,@function
gimp_item_tree_view_eye_clicked:        # @gimp_item_tree_view_eye_clicked
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp76:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$51, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	callq	gimp_item_tree_view_toggle_clicked
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_item_tree_view_eye_clicked, .Lfunc_end23-gimp_item_tree_view_eye_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_tree_view_chain_clicked,@function
gimp_item_tree_view_chain_clicked:      # @gimp_item_tree_view_chain_clicked
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
.Ltmp78:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp79:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$52, %r8d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	callq	gimp_item_tree_view_toggle_clicked
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_item_tree_view_chain_clicked, .Lfunc_end24-gimp_item_tree_view_chain_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_tree_view_new_dropped,@function
gimp_item_tree_view_new_dropped:        # @gimp_item_tree_view_new_dropped
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
.Ltmp81:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp82:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 992(%rax)
	je	.LBB25_6
# BB#1:                                 # %land.lhs.true
	cmpq	$0, -24(%rbp)
	je	.LBB25_6
# BB#2:                                 # %land.lhs.true.3
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_container_view_lookup
	cmpq	$0, %rax
	je	.LBB25_6
# BB#3:                                 # %if.then
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_ui_manager
	movq	-40(%rbp), %rsi
	movq	960(%rsi), %rsi
	movq	-40(%rbp), %rdi
	movq	992(%rdi), %rdx
	movq	%rax, %rdi
	callq	gimp_ui_manager_find_action
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB25_5
# BB#4:                                 # %if.then.12
	movabsq	$.L.str.34, %rsi
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-56(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movb	$0, %al
	callq	g_object_set
	movq	-56(%rbp), %rdi
	callq	gtk_action_activate
	movabsq	$.L.str.34, %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-56(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movb	$0, %al
	callq	g_object_set
.LBB25_5:                               # %if.end
	jmp	.LBB25_6
.LBB25_6:                               # %if.end.13
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_item_tree_view_new_dropped, .Lfunc_end25-gimp_item_tree_view_new_dropped
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_tree_view_lock_content_toggled,@function
gimp_item_tree_view_lock_content_toggled: # @gimp_item_tree_view_lock_content_toggled
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp83:
	.cfi_def_cfa_offset 16
.Ltmp84:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp85:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	328(%rsi), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	920(%rsi), %rsi
	movq	-24(%rbp), %rdi
	callq	*%rsi
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB26_4
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_item_get_lock_content
	cmpl	-36(%rbp), %eax
	je	.LBB26_3
# BB#2:                                 # %if.then.6
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_item_tree_view_lock_content_changed, %rdx
	movl	$1, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %r9
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-56(%rbp), %r10         # 8-byte Reload
	movq	%r9, -64(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	gimp_item_set_lock_content
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_item_tree_view_lock_content_changed, %rdi
	movq	-32(%rbp), %r9
	movq	-16(%rbp), %r10
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-80(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movq	-24(%rbp), %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gimp_image_flush
.LBB26_3:                               # %if.end
	jmp	.LBB26_4
.LBB26_4:                               # %if.end.9
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_item_tree_view_lock_content_toggled, .Lfunc_end26-gimp_item_tree_view_lock_content_toggled
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_tree_view_toggle_clicked,@function
gimp_item_tree_view_toggle_clicked:     # @gimp_item_tree_view_toggle_clicked
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp86:
	.cfi_def_cfa_offset 16
.Ltmp87:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp88:
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movl	-36(%rbp), %edx
	movl	%edx, %r8d
	subl	$51, %r8d
	movl	%edx, -172(%rbp)        # 4-byte Spill
	movl	%r8d, -176(%rbp)        # 4-byte Spill
	je	.LBB27_1
	jmp	.LBB27_17
.LBB27_17:                              # %entry
	movl	-172(%rbp), %eax        # 4-byte Reload
	subl	$52, %eax
	movl	%eax, -180(%rbp)        # 4-byte Spill
	je	.LBB27_2
	jmp	.LBB27_3
.LBB27_1:                               # %sw.bb
	movabsq	$gimp_item_toggle_exclusive_visible, %rax
	movabsq	$gimp_item_set_visible, %rcx
	movq	%rcx, -96(%rbp)
	movq	%rax, -104(%rbp)
	jmp	.LBB27_4
.LBB27_2:                               # %sw.bb.2
	movabsq	$gimp_item_toggle_exclusive_linked, %rax
	movabsq	$gimp_item_set_linked, %rcx
	movq	%rcx, -96(%rbp)
	movq	%rax, -104(%rbp)
	jmp	.LBB27_4
.LBB27_3:                               # %sw.default
	jmp	.LBB27_16
.LBB27_4:                               # %sw.epilog
	movq	-16(%rbp), %rdi
	callq	gtk_tree_path_new_from_string
	leaq	-88(%rbp), %rsi
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	144(%rax), %rdi
	movq	-56(%rbp), %rdx
	callq	gtk_tree_model_get_iter
	cmpl	$0, %eax
	je	.LBB27_15
# BB#5:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_container_view_get_context
	leaq	-88(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-120(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, -112(%rbp)
	movq	-48(%rbp), %rax
	movq	144(%rax), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	movabsq	$.L.str.27, %rsi
	leaq	-140(%rbp), %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	g_object_get
	movq	-120(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -128(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-128(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, -136(%rbp)
	movl	-20(%rbp), %r8d
	andl	$1, %r8d
	cmpl	$0, %r8d
	je	.LBB27_8
# BB#6:                                 # %land.lhs.true
	cmpq	$0, -104(%rbp)
	je	.LBB27_8
# BB#7:                                 # %if.then.14
	movq	-104(%rbp), %rax
	movq	-128(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	*%rax
	jmp	.LBB27_14
.LBB27_8:                               # %if.else
	movl	$1, -156(%rbp)
	movq	-136(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	callq	gimp_item_undo_get_type
	movl	-36(%rbp), %edx
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_can_compress
	movq	%rax, -152(%rbp)
	cmpq	$0, -152(%rbp)
	je	.LBB27_11
# BB#9:                                 # %land.lhs.true.18
	movq	-152(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_item_undo_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	72(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB27_11
# BB#10:                                # %if.then.22
	movl	$0, -156(%rbp)
.LBB27_11:                              # %if.end
	movq	-96(%rbp), %rax
	movq	-128(%rbp), %rdi
	cmpl	$0, -140(%rbp)
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	movl	-156(%rbp), %edx
	callq	*%rax
	cmpl	$0, -156(%rbp)
	jne	.LBB27_13
# BB#12:                                # %if.then.25
	movq	-152(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	gimp_undo_refresh_preview
.LBB27_13:                              # %if.end.26
	jmp	.LBB27_14
.LBB27_14:                              # %if.end.27
	movq	-136(%rbp), %rdi
	callq	gimp_image_flush
.LBB27_15:                              # %if.end.28
	movq	-56(%rbp), %rdi
	callq	gtk_tree_path_free
.LBB27_16:                              # %return
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_item_tree_view_toggle_clicked, .Lfunc_end27-gimp_item_tree_view_toggle_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_tree_view_lock_content_changed,@function
gimp_item_tree_view_lock_content_changed: # @gimp_item_tree_view_lock_content_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp89:
	.cfi_def_cfa_offset 16
.Ltmp90:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp91:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	328(%rsi), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	920(%rsi), %rsi
	movq	-24(%rbp), %rdi
	callq	*%rsi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB28_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	gimp_item_tree_view_update_options
.LBB28_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_item_tree_view_lock_content_changed, .Lfunc_end28-gimp_item_tree_view_lock_content_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_tree_view_update_options,@function
gimp_item_tree_view_update_options:     # @gimp_item_tree_view_update_options
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp92:
	.cfi_def_cfa_offset 16
.Ltmp93:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp94:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_item_get_lock_content
	movq	-8(%rbp), %rsi
	movq	328(%rsi), %rsi
	movq	32(%rsi), %rsi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movl	-20(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB29_2
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_item_tree_view_lock_content_toggled, %rdx
	movq	-8(%rbp), %rdi
	movq	328(%rdi), %rdi
	movq	32(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-40(%rbp), %r10         # 8-byte Reload
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-8(%rbp), %rdi
	movq	328(%rdi), %rdi
	movq	32(%rdi), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_get_lock_content
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	gtk_toggle_button_set_active
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_item_tree_view_lock_content_toggled, %rdi
	movq	-8(%rbp), %r9
	movq	328(%r9), %r9
	movq	32(%r9), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-80(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB29_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	328(%rax), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_item_can_lock_content
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	gtk_widget_set_sensitive
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_item_tree_view_update_options, .Lfunc_end29-gimp_item_tree_view_update_options
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_tree_view_item_changed,@function
gimp_item_tree_view_item_changed:       # @gimp_item_tree_view_item_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp95:
	.cfi_def_cfa_offset 16
.Ltmp96:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp97:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	920(%rsi), %rsi
	movq	-16(%rbp), %rdi
	movq	328(%rdi), %rdi
	movq	(%rdi), %rdi
	callq	*%rsi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_container_view_select_item
	movl	%eax, -36(%rbp)         # 4-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_item_tree_view_item_changed, .Lfunc_end30-gimp_item_tree_view_item_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_tree_view_size_changed,@function
gimp_item_tree_view_size_changed:       # @gimp_item_tree_view_size_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp98:
	.cfi_def_cfa_offset 16
.Ltmp99:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp100:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-32(%rbp), %rsi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_container_view_get_view_size
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	callq	gimp_container_view_set_view_size
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_item_tree_view_size_changed, .Lfunc_end31-gimp_item_tree_view_size_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_tree_view_image_flush,@function
gimp_item_tree_view_image_flush:        # @gimp_item_tree_view_image_flush
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp101:
	.cfi_def_cfa_offset 16
.Ltmp102:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp103:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_ui_manager
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	gimp_ui_manager_update
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_item_tree_view_image_flush, .Lfunc_end32-gimp_item_tree_view_image_flush
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_tree_view_set_container,@function
gimp_item_tree_view_set_container:      # @gimp_item_tree_view_set_container
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp104:
	.cfi_def_cfa_offset 16
.Ltmp105:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp106:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_item_tree_view_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_container_view_get_container
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB33_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	328(%rax), %rax
	movq	120(%rax), %rdi
	callq	gimp_tree_handler_disconnect
	movq	-24(%rbp), %rax
	movq	328(%rax), %rax
	movq	$0, 120(%rax)
	movq	-24(%rbp), %rax
	movq	328(%rax), %rax
	movq	128(%rax), %rdi
	callq	gimp_tree_handler_disconnect
	movq	-24(%rbp), %rax
	movq	328(%rax), %rax
	movq	$0, 128(%rax)
	movq	-24(%rbp), %rax
	movq	328(%rax), %rax
	movq	136(%rax), %rdi
	callq	gimp_tree_handler_disconnect
	movq	-24(%rbp), %rax
	movq	328(%rax), %rax
	movq	$0, 136(%rax)
.LBB33_2:                               # %if.end
	movq	parent_view_iface, %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	cmpq	$0, -16(%rbp)
	je	.LBB33_4
# BB#3:                                 # %if.then.12
	movabsq	$.L.str.38, %rsi
	movabsq	$gimp_item_tree_view_visible_changed, %rax
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	%rax, %rdx
	callq	gimp_tree_handler_connect
	movabsq	$.L.str.39, %rsi
	movabsq	$gimp_item_tree_view_linked_changed, %rcx
	movq	-24(%rbp), %rdx
	movq	328(%rdx), %rdx
	movq	%rax, 120(%rdx)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	gimp_tree_handler_connect
	movabsq	$.L.str.40, %rsi
	movabsq	$gimp_item_tree_view_lock_content_changed, %rcx
	movq	-24(%rbp), %rdx
	movq	328(%rdx), %rdx
	movq	%rax, 128(%rdx)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	gimp_tree_handler_connect
	movq	-24(%rbp), %rcx
	movq	328(%rcx), %rcx
	movq	%rax, 136(%rcx)
.LBB33_4:                               # %if.end.22
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_item_tree_view_set_container, .Lfunc_end33-gimp_item_tree_view_set_container
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_tree_view_set_context,@function
gimp_item_tree_view_set_context:        # @gimp_item_tree_view_set_context
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp107:
	.cfi_def_cfa_offset 16
.Ltmp108:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp109:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_item_tree_view_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_container_view_get_context
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB34_2
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_item_tree_view_set_image, %rdx
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %r9
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	%r9, -80(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-80(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB34_2:                               # %if.end
	movq	parent_view_iface, %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	cmpq	$0, -16(%rbp)
	je	.LBB34_6
# BB#3:                                 # %if.then.7
	movq	-24(%rbp), %rax
	cmpq	$0, 312(%rax)
	jne	.LBB34_5
# BB#4:                                 # %if.then.9
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 312(%rcx)
.LBB34_5:                               # %if.end.11
	movabsq	$.L.str.41, %rsi
	movabsq	$gimp_item_tree_view_set_image, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-16(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-16(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_context_get_image
	movq	%rax, -40(%rbp)
.LBB34_6:                               # %if.end.14
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_item_tree_view_set_image
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_item_tree_view_set_context, .Lfunc_end34-gimp_item_tree_view_set_context
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_tree_view_insert_item,@function
gimp_item_tree_view_insert_item:        # @gimp_item_tree_view_insert_item
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp110:
	.cfi_def_cfa_offset 16
.Ltmp111:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp112:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_tree_view_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	328(%rax), %rax
	movl	$1, 144(%rax)
	movq	parent_view_iface, %rax
	movq	64(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	callq	*%rax
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	328(%rax), %rax
	movl	$0, 144(%rax)
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	328(%rdx), %rdx
	movl	88(%rdx), %edx
	movq	-56(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movl	%edx, -116(%rbp)        # 4-byte Spill
	callq	gimp_item_get_visible
	movq	-48(%rbp), %rsi
	movq	328(%rsi), %rsi
	movl	92(%rsi), %r8d
	movq	-56(%rbp), %rdi
	movl	%eax, -120(%rbp)        # 4-byte Spill
	movl	%r8d, -124(%rbp)        # 4-byte Spill
	callq	gimp_item_get_visible
	xorl	%ecx, %ecx
	movb	%cl, %r9b
	cmpl	$0, %eax
	movb	%r9b, -125(%rbp)        # 1-byte Spill
	je	.LBB35_2
# BB#1:                                 # %land.rhs
	movq	-56(%rbp), %rdi
	callq	gimp_item_is_visible
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	movb	%cl, -125(%rbp)         # 1-byte Spill
.LBB35_2:                               # %land.end
	movb	-125(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %r9d
	movq	-48(%rbp), %rcx
	movq	328(%rcx), %rcx
	movl	96(%rcx), %edx
	movq	-56(%rbp), %rdi
	movl	%r9d, -132(%rbp)        # 4-byte Spill
	movl	%edx, -136(%rbp)        # 4-byte Spill
	callq	gimp_item_get_linked
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movl	-116(%rbp), %r9d        # 4-byte Reload
	movl	%edx, -140(%rbp)        # 4-byte Spill
	movl	%r9d, %edx
	movl	-120(%rbp), %ecx        # 4-byte Reload
	movl	-124(%rbp), %r8d        # 4-byte Reload
	movl	-132(%rbp), %r9d        # 4-byte Reload
	movl	-136(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, (%rsp)
	movl	%eax, 8(%rsp)
	movl	$-1, 16(%rsp)
	movb	$0, %al
	callq	gtk_tree_store_set
	movq	-64(%rbp), %rsi
	movq	%rsi, %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_item_tree_view_insert_item, .Lfunc_end35-gimp_item_tree_view_insert_item
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_tree_view_insert_item_after,@function
gimp_item_tree_view_insert_item_after:  # @gimp_item_tree_view_insert_item_after
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp113:
	.cfi_def_cfa_offset 16
.Ltmp114:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp115:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_tree_view_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	920(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	328(%rdx), %rdx
	movq	(%rdx), %rdi
	callq	*%rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-16(%rbp), %rdx
	cmpq	%rdx, %rax
	jne	.LBB36_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_container_view_select_item
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB36_2:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	gimp_item_tree_view_insert_item_after, .Lfunc_end36-gimp_item_tree_view_insert_item_after
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_tree_view_select_item,@function
gimp_item_tree_view_select_item:        # @gimp_item_tree_view_select_item
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp116:
	.cfi_def_cfa_offset 16
.Ltmp117:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp118:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	gimp_item_tree_view_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	parent_view_iface, %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	*%rax
	movl	%eax, -40(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB37_4
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	920(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	328(%rcx), %rcx
	movq	(%rcx), %rdi
	callq	*%rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	%rcx, %rax
	je	.LBB37_3
# BB#2:                                 # %if.then.4
	movq	-48(%rbp), %rax
	movq	928(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	328(%rcx), %rcx
	movq	(%rcx), %rdi
	movq	-16(%rbp), %rcx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movq	-72(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	movq	-32(%rbp), %rax
	movq	328(%rax), %rax
	movq	(%rax), %rdi
	callq	gimp_image_flush
.LBB37_3:                               # %if.end
	movl	$1, -36(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_item_tree_view_update_options
.LBB37_4:                               # %if.end.13
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_ui_manager
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_ui_manager_update
	movq	-32(%rbp), %rax
	movq	328(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB37_6
# BB#5:                                 # %if.then.19
	movq	-32(%rbp), %rax
	movq	328(%rax), %rax
	movq	8(%rax), %rdi
	movl	-36(%rbp), %esi
	callq	gtk_widget_set_sensitive
.LBB37_6:                               # %if.end.22
	movl	-40(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	gimp_item_tree_view_select_item, .Lfunc_end37-gimp_item_tree_view_select_item
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_tree_view_activate_item,@function
gimp_item_tree_view_activate_item:      # @gimp_item_tree_view_activate_item
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp119:
	.cfi_def_cfa_offset 16
.Ltmp120:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp121:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	movq	parent_view_iface, %rdx
	cmpq	$0, 24(%rdx)
	je	.LBB38_2
# BB#1:                                 # %if.then
	movq	parent_view_iface, %rax
	movq	24(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	*%rax
.LBB38_2:                               # %if.end
	movq	-32(%rbp), %rax
	cmpq	$0, 968(%rax)
	je	.LBB38_4
# BB#3:                                 # %if.then.3
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_ui_manager
	movq	-32(%rbp), %rsi
	movq	960(%rsi), %rsi
	movq	-32(%rbp), %rdi
	movq	968(%rdi), %rdx
	movq	%rax, %rdi
	callq	gimp_ui_manager_activate_action
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB38_4:                               # %if.end.8
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	gimp_item_tree_view_activate_item, .Lfunc_end38-gimp_item_tree_view_activate_item
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_tree_view_context_item,@function
gimp_item_tree_view_context_item:       # @gimp_item_tree_view_context_item
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp122:
	.cfi_def_cfa_offset 16
.Ltmp123:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp124:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	parent_view_iface, %rdx
	cmpq	$0, 32(%rdx)
	je	.LBB39_2
# BB#1:                                 # %if.then
	movq	parent_view_iface, %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	*%rax
.LBB39_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	-40(%rbp), %rdx         # 8-byte Reload
	callq	gimp_editor_popup_menu
	movl	%eax, -44(%rbp)         # 4-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	gimp_item_tree_view_context_item, .Lfunc_end39-gimp_item_tree_view_context_item
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_tree_view_visible_changed,@function
gimp_item_tree_view_visible_changed:    # @gimp_item_tree_view_visible_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp125:
	.cfi_def_cfa_offset 16
.Ltmp126:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp127:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_container_view_lookup
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB40_6
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	328(%rdi), %rdi
	movl	88(%rdi), %edx
	movq	-8(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movl	%edx, -92(%rbp)         # 4-byte Spill
	callq	gimp_item_get_visible
	movq	-16(%rbp), %rsi
	movq	328(%rsi), %rsi
	movl	92(%rsi), %r8d
	movq	-8(%rbp), %rdi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	movl	%r8d, -100(%rbp)        # 4-byte Spill
	callq	gimp_item_get_visible
	xorl	%edx, %edx
	movb	%dl, %cl
	cmpl	$0, %eax
	movb	%cl, -101(%rbp)         # 1-byte Spill
	je	.LBB40_3
# BB#2:                                 # %land.rhs
	movq	-8(%rbp), %rdi
	callq	gimp_item_is_visible
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	movb	%cl, -101(%rbp)         # 1-byte Spill
.LBB40_3:                               # %land.end
	movb	-101(%rbp), %al         # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	andb	$1, %al
	movzbl	%al, %r9d
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movl	-92(%rbp), %edx         # 4-byte Reload
	movl	-96(%rbp), %r8d         # 4-byte Reload
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	-100(%rbp), %r8d        # 4-byte Reload
	movl	$-1, (%rsp)
	movb	$0, %al
	callq	gtk_tree_store_set
	movq	-8(%rbp), %rsi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB40_5
# BB#4:                                 # %if.then.17
	movabsq	$gimp_item_tree_view_visible_changed, %rax
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	gimp_container_foreach
.LBB40_5:                               # %if.end
	jmp	.LBB40_6
.LBB40_6:                               # %if.end.18
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	gimp_item_tree_view_visible_changed, .Lfunc_end40-gimp_item_tree_view_visible_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_item_tree_view_linked_changed,@function
gimp_item_tree_view_linked_changed:     # @gimp_item_tree_view_linked_changed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp128:
	.cfi_def_cfa_offset 16
.Ltmp129:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp130:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	callq	gimp_container_view_lookup
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB41_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	328(%rdi), %rdi
	movl	96(%rdi), %edx
	movq	-8(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movl	%edx, -84(%rbp)         # 4-byte Spill
	callq	gimp_item_get_linked
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movl	-84(%rbp), %edx         # 4-byte Reload
	movl	%eax, %ecx
	movb	$0, %al
	callq	gtk_tree_store_set
.LBB41_2:                               # %if.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	gimp_item_tree_view_linked_changed, .Lfunc_end41-gimp_item_tree_view_linked_changed
	.cfi_endproc

	.type	gimp_item_tree_view_get_type.g_define_type_id__volatile,@object # @gimp_item_tree_view_get_type.g_define_type_id__volatile
	.local	gimp_item_tree_view_get_type.g_define_type_id__volatile
	.comm	gimp_item_tree_view_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpItemTreeView"
	.size	.L.str, 17

	.type	gimp_item_tree_view_get_type.g_implement_interface_info,@object # @gimp_item_tree_view_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_item_tree_view_get_type.g_implement_interface_info:
	.quad	gimp_item_tree_view_view_iface_init
	.quad	0
	.quad	0
	.size	gimp_item_tree_view_get_type.g_implement_interface_info, 24

	.type	gimp_item_tree_view_get_type.g_implement_interface_info.1,@object # @gimp_item_tree_view_get_type.g_implement_interface_info.1
	.align	8
gimp_item_tree_view_get_type.g_implement_interface_info.1:
	.quad	gimp_item_tree_view_docked_iface_init
	.quad	0
	.quad	0
	.size	gimp_item_tree_view_get_type.g_implement_interface_info.1, 24

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"Gimp-Widgets"
	.size	.L.str.2, 13

	.type	.L__func__.gimp_item_tree_view_new,@object # @__func__.gimp_item_tree_view_new
.L__func__.gimp_item_tree_view_new:
	.asciz	"gimp_item_tree_view_new"
	.size	.L__func__.gimp_item_tree_view_new, 24

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"g_type_is_a (view_type, GIMP_TYPE_ITEM_TREE_VIEW)"
	.size	.L.str.3, 50

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"view_size > 0 && view_size <= GIMP_VIEWABLE_MAX_PREVIEW_SIZE"
	.size	.L.str.4, 61

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"view_border_width >= 0 && view_border_width <= GIMP_VIEW_MAX_BORDER_WIDTH"
	.size	.L.str.5, 74

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"image == NULL || GIMP_IS_IMAGE (image)"
	.size	.L.str.6, 39

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"GIMP_IS_MENU_FACTORY (menu_factory)"
	.size	.L.str.7, 36

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"menu_identifier != NULL"
	.size	.L.str.8, 24

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"ui_path != NULL"
	.size	.L.str.9, 16

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"reorderable"
	.size	.L.str.10, 12

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"menu-factory"
	.size	.L.str.11, 13

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"menu-identifier"
	.size	.L.str.12, 16

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"ui-path"
	.size	.L.str.13, 8

	.type	.L__func__.gimp_item_tree_view_set_image,@object # @__func__.gimp_item_tree_view_set_image
.L__func__.gimp_item_tree_view_set_image:
	.asciz	"gimp_item_tree_view_set_image"
	.size	.L__func__.gimp_item_tree_view_set_image, 30

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"GIMP_IS_ITEM_TREE_VIEW (view)"
	.size	.L.str.14, 30

	.type	view_signals,@object    # @view_signals
	.local	view_signals
	.comm	view_signals,4,4
	.type	.L__func__.gimp_item_tree_view_get_image,@object # @__func__.gimp_item_tree_view_get_image
.L__func__.gimp_item_tree_view_get_image:
	.asciz	"gimp_item_tree_view_get_image"
	.size	.L__func__.gimp_item_tree_view_get_image, 30

	.type	.L__func__.gimp_item_tree_view_add_options,@object # @__func__.gimp_item_tree_view_add_options
.L__func__.gimp_item_tree_view_add_options:
	.asciz	"gimp_item_tree_view_add_options"
	.size	.L__func__.gimp_item_tree_view_add_options, 32

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"GTK_IS_WIDGET (options)"
	.size	.L.str.15, 24

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"content-spacing"
	.size	.L.str.16, 16

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"button-spacing"
	.size	.L.str.17, 15

	.type	.L__func__.gimp_item_tree_view_get_lock_box,@object # @__func__.gimp_item_tree_view_get_lock_box
.L__func__.gimp_item_tree_view_get_lock_box:
	.asciz	"gimp_item_tree_view_get_lock_box"
	.size	.L__func__.gimp_item_tree_view_get_lock_box, 33

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Lock:"
	.size	.L.str.18, 6

	.type	.L__func__.gimp_item_tree_view_get_new_button,@object # @__func__.gimp_item_tree_view_get_new_button
.L__func__.gimp_item_tree_view_get_new_button:
	.asciz	"gimp_item_tree_view_get_new_button"
	.size	.L__func__.gimp_item_tree_view_get_new_button, 35

	.type	.L__func__.gimp_item_tree_view_get_edit_button,@object # @__func__.gimp_item_tree_view_get_edit_button
.L__func__.gimp_item_tree_view_get_edit_button:
	.asciz	"gimp_item_tree_view_get_edit_button"
	.size	.L__func__.gimp_item_tree_view_get_edit_button, 36

	.type	.L__func__.gimp_item_tree_view_get_drop_index,@object # @__func__.gimp_item_tree_view_get_drop_index
.L__func__.gimp_item_tree_view_get_drop_index:
	.asciz	"gimp_item_tree_view_get_drop_index"
	.size	.L__func__.gimp_item_tree_view_get_drop_index, 35

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"dest_viewable == NULL || GIMP_IS_VIEWABLE (dest_viewable)"
	.size	.L.str.19, 58

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"parent != NULL"
	.size	.L.str.20, 15

	.type	gimp_item_tree_view_parent_class,@object # @gimp_item_tree_view_parent_class
	.local	gimp_item_tree_view_parent_class
	.comm	gimp_item_tree_view_parent_class,8,8
	.type	GimpItemTreeView_private_offset,@object # @GimpItemTreeView_private_offset
	.local	GimpItemTreeView_private_offset
	.comm	GimpItemTreeView_private_offset,4,4
	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"set-image"
	.size	.L.str.21, 10

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"row-expanded"
	.size	.L.str.22, 13

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"pre-clicked"
	.size	.L.str.23, 12

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gimp-visible"
	.size	.L.str.24, 13

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"xpad"
	.size	.L.str.25, 5

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"ypad"
	.size	.L.str.26, 5

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"active"
	.size	.L.str.27, 7

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"inconsistent"
	.size	.L.str.28, 13

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"clicked"
	.size	.L.str.29, 8

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"gimp-linked"
	.size	.L.str.30, 12

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"toggled"
	.size	.L.str.31, 8

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"button-icon-size"
	.size	.L.str.32, 17

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.zero	1
	.size	.L.str.33, 1

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"viewable"
	.size	.L.str.34, 9

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"button-relief"
	.size	.L.str.35, 14

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"size-changed"
	.size	.L.str.36, 13

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"flush"
	.size	.L.str.37, 6

	.type	parent_view_iface,@object # @parent_view_iface
	.local	parent_view_iface
	.comm	parent_view_iface,8,8
	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"visibility-changed"
	.size	.L.str.38, 19

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"linked-changed"
	.size	.L.str.39, 15

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"lock-content-changed"
	.size	.L.str.40, 21

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"image-changed"
	.size	.L.str.41, 14


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
