	.text
	.file	"gimpcontainertreeview.bc"
	.globl	gimp_container_tree_view_get_type
	.align	16, 0x90
	.type	gimp_container_tree_view_get_type,@function
gimp_container_tree_view_get_type:      # @gimp_container_tree_view_get_type
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
	movq	gimp_container_tree_view_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_container_tree_view_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_container_box_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$888, %edx              # imm = 0x378
	movabsq	$gimp_container_tree_view_class_intern_init, %rdi
	movl	$328, %r8d              # imm = 0x148
	movabsq	$gimp_container_tree_view_init, %rcx
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
	movabsq	$gimp_container_tree_view_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_container_tree_view_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_container_tree_view_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_container_tree_view_get_type, .Lfunc_end0-gimp_container_tree_view_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_tree_view_class_intern_init,@function
gimp_container_tree_view_class_intern_init: # @gimp_container_tree_view_class_intern_init
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
	movq	%rax, gimp_container_tree_view_parent_class
	cmpl	$0, GimpContainerTreeView_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpContainerTreeView_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_container_tree_view_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_container_tree_view_class_intern_init, .Lfunc_end1-gimp_container_tree_view_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_tree_view_init,@function
gimp_container_tree_view_init:          # @gimp_container_tree_view_init
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
	callq	gimp_container_box_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	-8(%rbp), %rsi
	movq	%rax, 320(%rsi)
	movq	-8(%rbp), %rax
	addq	$160, %rax
	movq	-8(%rbp), %rsi
	addq	$152, %rsi
	movq	%rax, %rdi
	callq	gimp_container_tree_store_columns_init
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_scrolled_window_set_shadow_type
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_scrolled_window_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_scrolled_window_set_policy
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_container_tree_view_init, .Lfunc_end2-gimp_container_tree_view_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_tree_view_view_iface_init,@function
gimp_container_tree_view_view_iface_init: # @gimp_container_tree_view_view_iface_init
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
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
.Ltmp12:
	.cfi_offset %rbx, -48
.Ltmp13:
	.cfi_offset %r12, -40
.Ltmp14:
	.cfi_offset %r14, -32
.Ltmp15:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	g_type_interface_peek_parent
	movq	%rax, parent_view_iface
	cmpq	$0, parent_view_iface
	jne	.LBB3_2
# BB#1:                                 # %if.then
	callq	gimp_container_view_interface_get_type
	movq	%rax, %rdi
	callq	g_type_default_interface_peek
	movq	%rax, parent_view_iface
.LBB3_2:                                # %if.end
	movabsq	$gtk_tree_iter_free, %rax
	movabsq	$gimp_container_tree_view_get_selected, %rcx
	movabsq	$gimp_container_tree_view_set_view_size, %rdx
	movabsq	$gimp_container_tree_view_clear_items, %rsi
	movabsq	$gimp_container_tree_view_select_item, %rdi
	movabsq	$gimp_container_tree_view_rename_item, %r8
	movabsq	$gimp_container_tree_view_reorder_item, %r9
	movabsq	$gimp_container_tree_view_remove_item, %r10
	movabsq	$gimp_container_tree_view_insert_item, %r11
	movabsq	$gimp_container_tree_view_set_selection_mode, %rbx
	movabsq	$gimp_container_tree_view_set_context, %r14
	movabsq	$gimp_container_tree_view_set_container, %r15
	movq	-40(%rbp), %r12
	movq	%r15, 40(%r12)
	movq	-40(%rbp), %r15
	movq	%r14, 48(%r15)
	movq	-40(%rbp), %r14
	movq	%rbx, 56(%r14)
	movq	-40(%rbp), %rbx
	movq	%r11, 64(%rbx)
	movq	-40(%rbp), %r11
	movq	%r10, 80(%r11)
	movq	-40(%rbp), %r10
	movq	%r9, 88(%r10)
	movq	-40(%rbp), %r9
	movq	%r8, 96(%r9)
	movq	-40(%rbp), %r8
	movq	%rdi, 16(%r8)
	movq	-40(%rbp), %rdi
	movq	%rsi, 104(%rdi)
	movq	-40(%rbp), %rsi
	movq	%rdx, 112(%rsi)
	movq	-40(%rbp), %rdx
	movq	%rcx, 120(%rdx)
	movq	-40(%rbp), %rcx
	movq	%rax, 128(%rcx)
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_container_tree_view_view_iface_init, .Lfunc_end3-gimp_container_tree_view_view_iface_init
	.cfi_endproc

	.globl	gimp_container_tree_view_new
	.align	16, 0x90
	.type	gimp_container_tree_view_new,@function
gimp_container_tree_view_new:           # @gimp_container_tree_view_new
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB4_10
# BB#2:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB4_4
# BB#3:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB4_9
.LBB4_4:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_7
# BB#5:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB4_7
# BB#6:                                 # %if.then.4
	movl	$1, -68(%rbp)
	jmp	.LBB4_8
.LBB4_7:                                # %if.else.5
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB4_8:                                # %if.end
	jmp	.LBB4_9
.LBB4_9:                                # %if.end.7
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB4_11
.LBB4_10:                               # %if.then.9
	jmp	.LBB4_12
.LBB4_11:                               # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_tree_view_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_43
.LBB4_12:                               # %if.end.11
	jmp	.LBB4_13
.LBB4_13:                               # %do.end
	jmp	.LBB4_14
.LBB4_14:                               # %do.body.12
	cmpq	$0, -24(%rbp)
	je	.LBB4_23
# BB#15:                                # %lor.lhs.false.14
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB4_17
# BB#16:                                # %if.then.23
	movl	$0, -92(%rbp)
	jmp	.LBB4_22
.LBB4_17:                               # %if.else.24
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_20
# BB#18:                                # %land.lhs.true.27
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB4_20
# BB#19:                                # %if.then.31
	movl	$1, -92(%rbp)
	jmp	.LBB4_21
.LBB4_20:                               # %if.else.32
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB4_21:                               # %if.end.34
	jmp	.LBB4_22
.LBB4_22:                               # %if.end.35
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB4_24
.LBB4_23:                               # %if.then.38
	jmp	.LBB4_25
.LBB4_24:                               # %if.else.39
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_tree_view_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_43
.LBB4_25:                               # %if.end.40
	jmp	.LBB4_26
.LBB4_26:                               # %do.end.41
	jmp	.LBB4_27
.LBB4_27:                               # %do.body.42
	cmpl	$0, -28(%rbp)
	jle	.LBB4_30
# BB#28:                                # %land.lhs.true.44
	cmpl	$2048, -28(%rbp)        # imm = 0x800
	jg	.LBB4_30
# BB#29:                                # %if.then.46
	jmp	.LBB4_31
.LBB4_30:                               # %if.else.47
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_tree_view_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_43
.LBB4_31:                               # %if.end.48
	jmp	.LBB4_32
.LBB4_32:                               # %do.end.49
	jmp	.LBB4_33
.LBB4_33:                               # %do.body.50
	cmpl	$0, -32(%rbp)
	jl	.LBB4_36
# BB#34:                                # %land.lhs.true.52
	cmpl	$16, -32(%rbp)
	jg	.LBB4_36
# BB#35:                                # %if.then.54
	jmp	.LBB4_37
.LBB4_36:                               # %if.else.55
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_tree_view_new, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_43
.LBB4_37:                               # %if.end.56
	jmp	.LBB4_38
.LBB4_38:                               # %do.end.57
	callq	gimp_container_tree_view_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	callq	gimp_container_view_set_view_size
	cmpq	$0, -16(%rbp)
	je	.LBB4_40
# BB#39:                                # %if.then.63
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_container_view_set_container
.LBB4_40:                               # %if.end.64
	cmpq	$0, -24(%rbp)
	je	.LBB4_42
# BB#41:                                # %if.then.66
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_container_view_set_context
.LBB4_42:                               # %if.end.67
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB4_43:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_container_tree_view_new, .Lfunc_end4-gimp_container_tree_view_new
	.cfi_endproc

	.globl	gimp_container_tree_view_get_name_cell
	.align	16, 0x90
	.type	gimp_container_tree_view_get_name_cell,@function
gimp_container_tree_view_get_name_cell: # @gimp_container_tree_view_get_name_cell
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_container_tree_view_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_tree_view_get_name_cell, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_13
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	320(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB5_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_container_tree_view_get_name_cell, .Lfunc_end5-gimp_container_tree_view_get_name_cell
	.cfi_endproc

	.globl	gimp_container_tree_view_set_main_column_title
	.align	16, 0x90
	.type	gimp_container_tree_view_set_main_column_title,@function
gimp_container_tree_view_set_main_column_title: # @gimp_container_tree_view_set_main_column_title
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_container_tree_view_get_type
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_tree_view_set_main_column_title, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	296(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	gtk_tree_view_column_set_title
.LBB6_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_container_tree_view_set_main_column_title, .Lfunc_end6-gimp_container_tree_view_set_main_column_title
	.cfi_endproc

	.globl	gimp_container_tree_view_add_toggle_cell
	.align	16, 0x90
	.type	gimp_container_tree_view_add_toggle_cell,@function
gimp_container_tree_view_add_toggle_cell: # @gimp_container_tree_view_add_toggle_cell
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_container_tree_view_get_type
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_tree_view_add_toggle_cell, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_25
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_cell_renderer_toggle_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB7_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB7_20
.LBB7_15:                               # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB7_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB7_19
.LBB7_18:                               # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB7_19:                               # %if.end.31
	jmp	.LBB7_20
.LBB7_20:                               # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB7_22
# BB#21:                                # %if.then.35
	jmp	.LBB7_23
.LBB7_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_tree_view_add_toggle_cell, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_25
.LBB7_23:                               # %if.end.37
	jmp	.LBB7_24
.LBB7_24:                               # %do.end.38
	movq	-8(%rbp), %rax
	movq	320(%rax), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-8(%rbp), %rsi
	movq	320(%rsi), %rsi
	movq	%rax, 32(%rsi)
.LBB7_25:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_container_tree_view_add_toggle_cell, .Lfunc_end7-gimp_container_tree_view_add_toggle_cell
	.cfi_endproc

	.globl	gimp_container_tree_view_add_renderer_cell
	.align	16, 0x90
	.type	gimp_container_tree_view_add_renderer_cell,@function
gimp_container_tree_view_add_renderer_cell: # @gimp_container_tree_view_add_renderer_cell
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_container_tree_view_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_tree_view_add_renderer_cell, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_25
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	jmp	.LBB8_13
.LBB8_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_cell_renderer_viewable_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB8_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB8_20
.LBB8_15:                               # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB8_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB8_19
.LBB8_18:                               # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB8_19:                               # %if.end.31
	jmp	.LBB8_20
.LBB8_20:                               # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB8_22
# BB#21:                                # %if.then.35
	jmp	.LBB8_23
.LBB8_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_tree_view_add_renderer_cell, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_25
.LBB8_23:                               # %if.end.37
	jmp	.LBB8_24
.LBB8_24:                               # %do.end.38
	movq	-8(%rbp), %rax
	movq	320(%rax), %rax
	movq	40(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-8(%rbp), %rsi
	movq	320(%rsi), %rsi
	movq	%rax, 40(%rsi)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_store_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_container_tree_store_add_renderer_cell
.LBB8_25:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_container_tree_view_add_renderer_cell, .Lfunc_end8-gimp_container_tree_view_add_renderer_cell
	.cfi_endproc

	.globl	gimp_container_tree_view_set_dnd_drop_to_empty
	.align	16, 0x90
	.type	gimp_container_tree_view_set_dnd_drop_to_empty,@function
gimp_container_tree_view_set_dnd_drop_to_empty: # @gimp_container_tree_view_set_dnd_drop_to_empty
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_container_tree_view_get_type
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
	movabsq	$.L__func__.gimp_container_tree_view_set_dnd_drop_to_empty, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_13
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	320(%rcx), %rcx
	movl	%eax, 60(%rcx)
.LBB9_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_container_tree_view_set_dnd_drop_to_empty, .Lfunc_end9-gimp_container_tree_view_set_dnd_drop_to_empty
	.cfi_endproc

	.globl	gimp_container_tree_view_connect_name_edited
	.align	16, 0x90
	.type	gimp_container_tree_view_connect_name_edited,@function
gimp_container_tree_view_connect_name_edited: # @gimp_container_tree_view_connect_name_edited
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_container_tree_view_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_tree_view_connect_name_edited, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_20
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	jmp	.LBB10_13
.LBB10_13:                              # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB10_15
# BB#14:                                # %if.then.13
	jmp	.LBB10_16
.LBB10_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_tree_view_connect_name_edited, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_20
.LBB10_16:                              # %if.end.15
	jmp	.LBB10_17
.LBB10_17:                              # %do.end.16
	movabsq	$.L.str.10, %rsi
	movl	$2, %edx
	movabsq	$.L.str.11, %rcx
	movl	$1, %r8d
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-8(%rbp), %rdi
	movq	320(%rdi), %rdi
	movq	8(%rdi), %rdi
	movb	$0, %al
	callq	g_object_set
	movq	-8(%rbp), %rcx
	movq	320(%rcx), %rcx
	movq	16(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	320(%rcx), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, %rsi
	callq	g_list_find
	cmpq	$0, %rax
	jne	.LBB10_19
# BB#18:                                # %if.then.22
	movq	-8(%rbp), %rax
	movq	320(%rax), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	320(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-8(%rbp), %rsi
	movq	320(%rsi), %rsi
	movq	%rax, 16(%rsi)
.LBB10_19:                              # %if.end.30
	movabsq	$.L.str.12, %rsi
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rcx
	movq	320(%rcx), %rcx
	movq	8(%rcx), %rcx
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-56(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB10_20:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_container_tree_view_connect_name_edited, .Lfunc_end10-gimp_container_tree_view_connect_name_edited
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_tree_view_class_init,@function
gimp_container_tree_view_class_init:    # @gimp_container_tree_view_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
.Ltmp40:
	.cfi_offset %rbx, -56
.Ltmp41:
	.cfi_offset %r12, -48
.Ltmp42:
	.cfi_offset %r13, -40
.Ltmp43:
	.cfi_offset %r14, -32
.Ltmp44:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.13, %rdi
	movl	$34, %edx
	movl	$824, %ecx              # imm = 0x338
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	xorl	%r8d, %r8d
	movabsq	$gimp_container_tree_view_real_drop_viewable, %r11
	movabsq	$gimp_container_tree_view_real_drop_possible, %rbx
	movabsq	$gimp_container_tree_view_real_edit_name, %r14
	movabsq	$gimp_container_tree_view_popup_menu, %r15
	movabsq	$gimp_container_tree_view_unmap, %r12
	movabsq	$gimp_container_tree_view_finalize, %r13
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movabsq	$gimp_container_tree_view_constructed, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rsi, 72(%rax)
	movq	-56(%rbp), %rax
	movq	%r13, 48(%rax)
	movq	-64(%rbp), %rax
	movq	%r12, 216(%rax)
	movq	-64(%rbp), %rax
	movq	%r15, 632(%rax)
	movq	-48(%rbp), %rax
	movq	%r14, 824(%rax)
	movq	-48(%rbp), %rax
	movq	%rbx, 832(%rax)
	movq	-48(%rbp), %rax
	movq	%r11, 840(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 848(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 856(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 864(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 872(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 880(%rax)
	movq	-48(%rbp), %rax
	movq	(%rax), %rsi
	movq	-104(%rbp), %rax        # 8-byte Reload
	movl	%r8d, -108(%rbp)        # 4-byte Spill
	movq	%rax, %r8
	movq	%r9, -120(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-120(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movq	%r10, -128(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movl	%eax, tree_view_signals
	movq	-48(%rbp), %rsi
	movq	%rsi, %rdi
	callq	gtk_binding_set_by_class
	movl	$65471, %esi            # imm = 0xFFBF
	xorl	%ecx, %ecx
	movabsq	$.L.str.13, %rdi
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %edx
	movq	-136(%rbp), %rax        # 8-byte Reload
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-140(%rbp), %r8d        # 4-byte Reload
	movb	$0, %al
	callq	gtk_binding_entry_add_signal
	movl	$64, %edx
	movl	%edx, %esi
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_class_add_private
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_container_tree_view_class_init, .Lfunc_end11-gimp_container_tree_view_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_tree_view_constructed,@function
gimp_container_tree_view_constructed:   # @gimp_container_tree_view_constructed
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$392, %rsp              # imm = 0x188
.Ltmp48:
	.cfi_offset %rbx, -56
.Ltmp49:
	.cfi_offset %r12, -48
.Ltmp50:
	.cfi_offset %r13, -40
.Ltmp51:
	.cfi_offset %r14, -32
.Ltmp52:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_container_box_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -72(%rbp)
	movq	gimp_container_tree_view_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB12_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_container_tree_view_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-48(%rbp), %rdi
	callq	*%rax
.LBB12_2:                               # %if.end
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rax
	movl	152(%rax), %esi
	movq	-56(%rbp), %rax
	addq	$160, %rax
	movq	%rax, %rdx
	callq	gimp_container_tree_store_new
	movq	-56(%rbp), %rdx
	movq	%rax, 144(%rdx)
	callq	gtk_tree_view_get_type
	movq	-56(%rbp), %rdx
	movq	144(%rdx), %rdx
	movq	-64(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_interface_peek
	movabsq	$.L.str.14, %rsi
	movabsq	$.L.str.15, %rcx
	movl	$1, %r8d
	movabsq	$.L.str.16, %r9
	xorl	%r10d, %r10d
	movabsq	$.L.str.17, %rdx
	movabsq	$.L.str.18, %rdi
	movabsq	$.L.str.19, %r11
	xorl	%ebx, %ebx
	movl	%ebx, %r14d
	movl	136(%rax), %ebx
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-112(%rbp), %r15        # 8-byte Reload
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%r15, %rdx
	movl	$0, (%rsp)
	movq	-136(%rbp), %r12        # 8-byte Reload
	movq	%r12, 8(%rsp)
	movl	$0, 16(%rsp)
	movq	-128(%rbp), %r13        # 8-byte Reload
	movq	%r13, 24(%rsp)
	movl	$1, 32(%rsp)
	movq	%r11, 40(%rsp)
	movl	%ebx, 48(%rsp)
	movq	$0, 56(%rsp)
	movb	$0, %al
	movq	%r14, -144(%rbp)        # 8-byte Spill
	movl	%r10d, -148(%rbp)       # 4-byte Spill
	callq	g_object_new
	movq	-56(%rbp), %rcx
	movq	%rax, 288(%rcx)
	movq	-56(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-72(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rcx
	movq	288(%rcx), %rcx
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_container_add
	movq	-56(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_show
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_view_set_dnd_widget
	callq	gtk_tree_view_column_new
	xorl	%edx, %edx
	movq	-56(%rbp), %rcx
	movq	%rax, 296(%rcx)
	movq	-56(%rbp), %rax
	movq	288(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	296(%rax), %rsi
	callq	gtk_tree_view_insert_column
	movq	-56(%rbp), %rcx
	movq	288(%rcx), %rdi
	movq	-56(%rbp), %rcx
	movq	296(%rcx), %rsi
	movl	%eax, -204(%rbp)        # 4-byte Spill
	callq	gtk_tree_view_set_expander_column
	movl	$1, %esi
	movq	-56(%rbp), %rcx
	movq	288(%rcx), %rdi
	callq	gtk_tree_view_set_enable_tree_lines
	callq	gimp_cell_renderer_viewable_new
	xorl	%edx, %edx
	movq	-56(%rbp), %rcx
	movq	%rax, 304(%rcx)
	movq	-56(%rbp), %rax
	movq	296(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	304(%rax), %rsi
	callq	gtk_tree_view_column_pack_start
	movabsq	$.L.str.20, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movq	-56(%rbp), %rax
	movq	296(%rax), %rdi
	movq	-56(%rbp), %rax
	movq	304(%rax), %rsi
	movb	$0, %al
	callq	gtk_tree_view_column_set_attributes
	callq	gtk_cell_renderer_text_new
	movabsq	$.L.str.21, %rsi
	xorps	%xmm0, %xmm0
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-56(%rbp), %rdi
	movq	320(%rdi), %rdi
	movq	%rax, 8(%rdi)
	movq	-56(%rbp), %rax
	movq	320(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	movb	$1, %al
	callq	g_object_set
	xorl	%edx, %edx
	movq	-56(%rbp), %rsi
	movq	296(%rsi), %rdi
	movq	-56(%rbp), %rsi
	movq	320(%rsi), %rsi
	movq	8(%rsi), %rsi
	callq	gtk_tree_view_column_pack_end
	movabsq	$.L.str.22, %rdx
	movl	$1, %ecx
	movabsq	$.L.str.23, %r8
	movl	$2, %r9d
	movabsq	$.L.str.24, %rsi
	movl	$3, %r10d
	xorl	%ebx, %ebx
	movl	%ebx, %edi
	movq	-56(%rbp), %r11
	movq	296(%r11), %r11
	movq	-56(%rbp), %r14
	movq	320(%r14), %r14
	movq	8(%r14), %r14
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	movq	%r14, %rsi
	movq	-224(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movl	$3, 8(%rsp)
	movq	$0, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -228(%rbp)       # 4-byte Spill
	callq	gtk_tree_view_column_set_attributes
	movabsq	$.L.str.25, %rsi
	movabsq	$gimp_container_tree_view_name_started, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi
	movq	320(%rdi), %rdi
	movq	8(%rdi), %rdi
	movq	-56(%rbp), %r11
	movq	%r11, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.26, %rsi
	movabsq	$gimp_container_tree_view_name_canceled, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdx
	movq	320(%rdx), %rdx
	movq	8(%rdx), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-240(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-56(%rbp), %rdi
	movq	-56(%rbp), %rcx
	movq	304(%rcx), %rsi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_container_tree_view_add_renderer_cell
	movq	-56(%rbp), %rax
	movq	288(%rax), %rdi
	callq	gtk_tree_view_get_selection
	movabsq	$.L.str.27, %rsi
	movabsq	$gimp_container_tree_view_selection_changed, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdx
	movq	320(%rdx), %rdx
	movq	%rax, (%rdx)
	movq	-56(%rbp), %rax
	movq	320(%rax), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -264(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-264(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.28, %rsi
	movabsq	$gimp_container_tree_view_drag_failed, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdx
	movq	288(%rdx), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-272(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.29, %rsi
	movabsq	$gimp_container_tree_view_drag_leave, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdx
	movq	288(%rdx), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-288(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.30, %rsi
	movabsq	$gimp_container_tree_view_drag_motion, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdx
	movq	288(%rdx), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -304(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-304(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.31, %rsi
	movabsq	$gimp_container_tree_view_drag_drop, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdx
	movq	288(%rdx), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-320(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.32, %rsi
	movabsq	$gimp_container_tree_view_drag_data_received, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdx
	movq	288(%rdx), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-336(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.33, %rsi
	movabsq	$gimp_container_tree_view_tooltip, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdx
	movq	288(%rdx), %rdx
	movq	-56(%rbp), %rdi
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-352(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -368(%rbp)        # 8-byte Spill
	addq	$392, %rsp              # imm = 0x188
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_container_tree_view_constructed, .Lfunc_end12-gimp_container_tree_view_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_tree_view_finalize,@function
gimp_container_tree_view_finalize:      # @gimp_container_tree_view_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	320(%rax), %rax
	cmpq	$0, 32(%rax)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	320(%rax), %rax
	movq	32(%rax), %rdi
	callq	g_list_free
	movq	-16(%rbp), %rax
	movq	320(%rax), %rax
	movq	$0, 32(%rax)
.LBB13_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	320(%rax), %rax
	cmpq	$0, 40(%rax)
	je	.LBB13_4
# BB#3:                                 # %if.then.8
	movq	-16(%rbp), %rax
	movq	320(%rax), %rax
	movq	40(%rax), %rdi
	callq	g_list_free
	movq	-16(%rbp), %rax
	movq	320(%rax), %rax
	movq	$0, 40(%rax)
.LBB13_4:                               # %if.end.13
	movq	-16(%rbp), %rax
	movq	320(%rax), %rax
	cmpq	$0, 16(%rax)
	je	.LBB13_6
# BB#5:                                 # %if.then.16
	movq	-16(%rbp), %rax
	movq	320(%rax), %rax
	movq	16(%rax), %rdi
	callq	g_list_free
	movq	-16(%rbp), %rax
	movq	320(%rax), %rax
	movq	$0, 16(%rax)
.LBB13_6:                               # %if.end.21
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_container_tree_view_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_container_tree_view_finalize, .Lfunc_end13-gimp_container_tree_view_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_tree_view_unmap,@function
gimp_container_tree_view_unmap:         # @gimp_container_tree_view_unmap
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	320(%rax), %rax
	cmpl	$0, 48(%rax)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	320(%rax), %rax
	movl	48(%rax), %edi
	callq	g_source_remove
	movq	-16(%rbp), %rcx
	movq	320(%rcx), %rcx
	movl	$0, 48(%rcx)
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB14_2:                               # %if.end
	movq	gimp_container_tree_view_parent_class, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	216(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_container_tree_view_unmap, .Lfunc_end14-gimp_container_tree_view_unmap
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_tree_view_popup_menu,@function
gimp_container_tree_view_popup_menu:    # @gimp_container_tree_view_popup_menu
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_container_tree_view_menu_position, %rsi
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-24(%rbp), %rdx         # 8-byte Reload
	callq	gimp_editor_popup_menu
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_container_tree_view_popup_menu, .Lfunc_end15-gimp_container_tree_view_popup_menu
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_tree_view_real_edit_name,@function
gimp_container_tree_view_real_edit_name: # @gimp_container_tree_view_real_edit_name
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	320(%rdi), %rdi
	movq	16(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	320(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	callq	g_list_find
	cmpq	$0, %rax
	je	.LBB16_3
# BB#1:                                 # %land.lhs.true
	leaq	-40(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_container_tree_view_get_selected_single
	cmpl	$0, %eax
	je	.LBB16_3
# BB#2:                                 # %if.then
	leaq	-40(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gtk_tree_model_get_path
	movl	$1, %r8d
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	288(%rax), %rdi
	movq	-48(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	296(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	320(%rax), %rax
	movq	8(%rax), %rcx
	callq	gtk_tree_view_set_cursor_on_cell
	movq	-48(%rbp), %rdi
	callq	gtk_tree_path_free
.LBB16_3:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_container_tree_view_real_edit_name, .Lfunc_end16-gimp_container_tree_view_real_edit_name
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_tree_view_name_started,@function
gimp_container_tree_view_name_started:  # @gimp_container_tree_view_name_started
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_tree_path_new_from_string
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.34, %rsi
	movabsq	$gimp_container_tree_view_edit_focus_out, %rcx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	leaq	-72(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movq	144(%rcx), %rdi
	movq	-40(%rbp), %rdx
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_iter
	cmpl	$0, %eax
	je	.LBB17_2
# BB#1:                                 # %if.then
	leaq	-72(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-80(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rax
	movq	144(%rax), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-80(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	%rcx, %rdi
	callq	gimp_object_get_name
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_text
.LBB17_2:                               # %if.end
	movq	-40(%rbp), %rdi
	callq	gtk_tree_path_free
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_container_tree_view_name_started, .Lfunc_end17-gimp_container_tree_view_name_started
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_tree_view_name_canceled,@function
gimp_container_tree_view_name_canceled: # @gimp_container_tree_view_name_canceled
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
	subq	$80, %rsp
	leaq	-48(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	callq	gimp_container_tree_view_get_selected_single
	cmpl	$0, %eax
	je	.LBB18_2
# BB#1:                                 # %if.then
	leaq	-48(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-56(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rax
	movq	144(%rax), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	-56(%rbp), %rcx
	movq	40(%rcx), %rdi
	callq	gimp_viewable_get_description
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-48(%rbp), %rsi
	movl	$1, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-64(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_tree_store_set
	movq	-64(%rbp), %rdi
	callq	g_free
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
.LBB18_2:                               # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_container_tree_view_name_canceled, .Lfunc_end18-gimp_container_tree_view_name_canceled
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_tree_view_selection_changed,@function
gimp_container_tree_view_selection_changed: # @gimp_container_tree_view_selection_changed
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
	callq	gimp_container_tree_view_get_selected
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gimp_container_view_multi_selected
	movq	-32(%rbp), %rdi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	g_list_free
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_container_tree_view_selection_changed, .Lfunc_end19-gimp_container_tree_view_selection_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_tree_view_tooltip,@function
gimp_container_tree_view_tooltip:       # @gimp_container_tree_view_tooltip
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
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movl	$0, -100(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-20(%rbp), %rsi
	leaq	-24(%rbp), %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	leaq	-96(%rbp), %r9
	leaq	-88(%rbp), %rdi
	movl	-28(%rbp), %ecx
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	gtk_tree_view_get_tooltip_context
	cmpl	$0, %eax
	jne	.LBB20_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB20_7
.LBB20_2:                               # %if.end
	leaq	-88(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-56(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-48(%rbp), %rax
	movq	144(%rax), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	cmpq	$0, -56(%rbp)
	je	.LBB20_6
# BB#3:                                 # %if.then.4
	leaq	-120(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	40(%rax), %rdi
	callq	gimp_viewable_get_description
	movq	%rax, -112(%rbp)
	cmpq	$0, -120(%rbp)
	je	.LBB20_5
# BB#4:                                 # %if.then.7
	movq	-40(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	gtk_tooltip_set_text
	movq	-16(%rbp), %rsi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	-96(%rbp), %rdx
	movq	%rax, %rdi
	callq	gtk_tree_view_set_tooltip_row
	movl	$1, -100(%rbp)
	movq	-120(%rbp), %rdi
	callq	g_free
.LBB20_5:                               # %if.end.10
	movq	-112(%rbp), %rdi
	callq	g_free
	movq	-56(%rbp), %rdi
	callq	g_object_unref
.LBB20_6:                               # %if.end.11
	movq	-96(%rbp), %rdi
	callq	gtk_tree_path_free
	movl	-100(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB20_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_container_tree_view_tooltip, .Lfunc_end20-gimp_container_tree_view_tooltip
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_tree_view_edit_focus_out,@function
gimp_container_tree_view_edit_focus_out: # @gimp_container_tree_view_edit_focus_out
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
	movabsq	$.L.str.35, %rax
	xorl	%ecx, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rax, %rsi
	movl	%ecx, %edx
	movb	$0, %al
	callq	g_signal_emit_by_name
	movl	$1, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_container_tree_view_edit_focus_out, .Lfunc_end21-gimp_container_tree_view_edit_focus_out
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_tree_view_get_selected_single,@function
gimp_container_tree_view_get_selected_single: # @gimp_container_tree_view_get_selected_single
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	288(%rsi), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_selection
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_tree_selection_count_selected_rows
	cmpl	$1, %eax
	jne	.LBB22_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	gtk_tree_selection_get_selected_rows
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	gtk_tree_model_get_iter
	movabsq	$gtk_tree_path_free, %rdx
	movq	-40(%rbp), %rdi
	movq	%rdx, %rsi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	g_list_free_full
	movl	$1, -4(%rbp)
	jmp	.LBB22_3
.LBB22_2:                               # %if.else
	movl	$0, -4(%rbp)
.LBB22_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_container_tree_view_get_selected_single, .Lfunc_end22-gimp_container_tree_view_get_selected_single
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_tree_view_get_selected,@function
gimp_container_tree_view_get_selected:  # @gimp_container_tree_view_get_selected
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
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_tree_view_get_selection
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_tree_selection_count_selected_rows
	movl	%eax, -44(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB23_2
# BB#1:                                 # %if.then
	movl	-44(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB23_12
.LBB23_2:                               # %if.end
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rdi
	callq	gtk_tree_selection_get_selected_rows
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB23_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB23_11
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB23_3 Depth=1
	movq	-32(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-96(%rbp), %rsi
	movq	-64(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-136(%rbp), %rdx        # 8-byte Reload
	callq	gtk_tree_model_get_iter
	leaq	-96(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-104(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rdi
	movq	144(%rdi), %rdi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-104(%rbp), %rcx
	cmpq	$0, 40(%rcx)
	je	.LBB23_6
# BB#5:                                 # %if.then.13
                                        #   in Loop: Header=BB23_3 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-104(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-24(%rbp), %rsi
	movq	%rax, (%rsi)
.LBB23_6:                               # %if.end.16
                                        #   in Loop: Header=BB23_3 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB23_3 Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB23_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB23_3 Depth=1
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB23_10
.LBB23_9:                               # %cond.false
                                        #   in Loop: Header=BB23_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB23_10
.LBB23_10:                              # %cond.end
                                        #   in Loop: Header=BB23_3 Depth=1
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, -64(%rbp)
	jmp	.LBB23_3
.LBB23_11:                              # %for.end
	movabsq	$gtk_tree_path_free, %rax
	movq	-56(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_list_free_full
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_list_reverse
	movq	-24(%rbp), %rsi
	movq	%rax, (%rsi)
	movl	-44(%rbp), %ecx
	movl	%ecx, -4(%rbp)
.LBB23_12:                              # %return
	movl	-4(%rbp), %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_container_tree_view_get_selected, .Lfunc_end23-gimp_container_tree_view_get_selected
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_tree_view_menu_position,@function
gimp_container_tree_view_menu_position: # @gimp_container_tree_view_menu_position
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-64(%rbp), %rsi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movq	-48(%rbp), %rdi
	callq	gtk_widget_get_window
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	gdk_window_get_origin
	movq	-48(%rbp), %rdi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	gtk_widget_get_has_window
	cmpl	$0, %eax
	jne	.LBB24_2
# BB#1:                                 # %if.then
	movl	-64(%rbp), %eax
	movq	-16(%rbp), %rcx
	addl	(%rcx), %eax
	movl	%eax, (%rcx)
	movl	-60(%rbp), %eax
	movq	-24(%rbp), %rcx
	addl	(%rcx), %eax
	movl	%eax, (%rcx)
.LBB24_2:                               # %if.end
	leaq	-96(%rbp), %rsi
	movq	-40(%rbp), %rdi
	callq	gimp_container_tree_view_get_selected_single
	cmpl	$0, %eax
	je	.LBB24_10
# BB#3:                                 # %if.then.12
	leaq	-96(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gtk_tree_model_get_path
	leaq	-120(%rbp), %rcx
	movq	%rax, -104(%rbp)
	movq	-40(%rbp), %rax
	movq	288(%rax), %rdi
	movq	-104(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	296(%rax), %rdx
	callq	gtk_tree_view_get_cell_area
	movq	-104(%rbp), %rdi
	callq	gtk_tree_path_free
	movl	$2, %r8d
	movl	-116(%rbp), %r9d
	movl	-108(%rbp), %eax
	cltd
	idivl	%r8d
	addl	%eax, %r9d
	movl	%r9d, -124(%rbp)
	movl	-124(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jle	.LBB24_5
# BB#4:                                 # %cond.true
	movl	-52(%rbp), %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
	jmp	.LBB24_9
.LBB24_5:                               # %cond.false
	cmpl	$0, -124(%rbp)
	jge	.LBB24_7
# BB#6:                                 # %cond.true.20
	xorl	%eax, %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jmp	.LBB24_8
.LBB24_7:                               # %cond.false.21
	movl	-124(%rbp), %eax
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB24_8:                               # %cond.end
	movl	-164(%rbp), %eax        # 4-byte Reload
	movl	%eax, -160(%rbp)        # 4-byte Spill
.LBB24_9:                               # %cond.end.22
	movl	-160(%rbp), %eax        # 4-byte Reload
	movl	$2, %ecx
	movl	%eax, -124(%rbp)
	movl	-56(%rbp), %eax
	cltd
	idivl	%ecx
	movq	-16(%rbp), %rsi
	addl	(%rsi), %eax
	movl	%eax, (%rsi)
	movl	-124(%rbp), %eax
	movq	-24(%rbp), %rsi
	addl	(%rsi), %eax
	movl	%eax, (%rsi)
	jmp	.LBB24_11
.LBB24_10:                              # %if.else
	movq	-48(%rbp), %rdi
	callq	gtk_widget_get_style
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movl	536(%rax), %ecx
	movq	-16(%rbp), %rax
	addl	(%rax), %ecx
	movl	%ecx, (%rax)
	movq	-136(%rbp), %rax
	movl	540(%rax), %ecx
	movq	-24(%rbp), %rax
	addl	(%rax), %ecx
	movl	%ecx, (%rax)
.LBB24_11:                              # %if.end.30
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	gimp_menu_position
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_container_tree_view_menu_position, .Lfunc_end24-gimp_container_tree_view_menu_position
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_tree_view_set_container,@function
gimp_container_tree_view_set_container: # @gimp_container_tree_view_set_container
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_container_view_get_container
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB25_8
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_container_tree_view_row_expanded, %rdx
	movq	-24(%rbp), %rdi
	movq	320(%rdi), %rdi
	movq	$0, 24(%rdi)
	movq	-24(%rbp), %rdi
	movq	288(%rdi), %rdi
	movq	-24(%rbp), %r9
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-48(%rbp), %r10         # 8-byte Reload
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-56(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	cmpq	$0, -16(%rbp)
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jne	.LBB25_7
# BB#2:                                 # %if.then.6
	movq	-24(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_container_get_children_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dnd_viewable_source_remove
	cmpl	$0, %eax
	je	.LBB25_6
# BB#3:                                 # %if.then.13
	movq	-32(%rbp), %rdi
	callq	gimp_container_get_children_type
	movq	%rax, %rdi
	callq	g_type_class_peek
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	cmpq	$0, 192(%rax)
	je	.LBB25_5
# BB#4:                                 # %if.then.19
	movq	-24(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dnd_pixbuf_source_remove
.LBB25_5:                               # %if.end
	movq	-24(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_drag_source_unset
.LBB25_6:                               # %if.end.26
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_container_tree_view_button_press, %rdx
	movq	-24(%rbp), %rdi
	movq	288(%rdi), %rdi
	movq	-24(%rbp), %r9
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r9, -120(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-120(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB25_7:                               # %if.end.29
	jmp	.LBB25_15
.LBB25_8:                               # %if.else
	cmpq	$0, -16(%rbp)
	je	.LBB25_14
# BB#9:                                 # %if.then.31
	movq	-24(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_container_get_children_type
	movl	$768, %esi              # imm = 0x300
	movl	$2, %ecx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_dnd_drag_source_set_by_type
	cmpl	$0, %eax
	je	.LBB25_13
# BB#10:                                # %if.then.38
	movq	-24(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_container_get_children_type
	movabsq	$gimp_container_tree_view_drag_viewable, %rdx
	movq	-24(%rbp), %rsi
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-168(%rbp), %rcx        # 8-byte Reload
	callq	gimp_dnd_viewable_source_add
	movq	-16(%rbp), %rdi
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	gimp_container_get_children_type
	movq	%rax, %rdi
	callq	g_type_class_peek
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	cmpq	$0, 192(%rax)
	je	.LBB25_12
# BB#11:                                # %if.then.50
	movq	-24(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_container_tree_view_drag_pixbuf, %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-200(%rbp), %rdx        # 8-byte Reload
	callq	gimp_dnd_pixbuf_source_add
.LBB25_12:                              # %if.end.54
	jmp	.LBB25_13
.LBB25_13:                              # %if.end.55
	movabsq	$.L.str.36, %rsi
	movabsq	$gimp_container_tree_view_button_press, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	288(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-208(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -216(%rbp)        # 8-byte Spill
.LBB25_14:                              # %if.end.58
	jmp	.LBB25_15
.LBB25_15:                              # %if.end.59
	movq	parent_view_iface, %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	cmpq	$0, -16(%rbp)
	je	.LBB25_17
# BB#16:                                # %if.then.61
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movq	144(%rcx), %rdi
	movq	-24(%rbp), %rcx
	movq	288(%rcx), %rsi
	callq	gimp_container_tree_view_expand_rows
	movabsq	$.L.str.37, %rsi
	movabsq	$gimp_container_tree_view_row_expanded, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	288(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-224(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.38, %rsi
	movabsq	$gimp_container_tree_view_row_expanded, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	288(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-232(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB25_17:                              # %if.end.67
	movq	-24(%rbp), %rax
	movq	288(%rax), %rdi
	callq	gtk_tree_view_columns_autosize
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_container_tree_view_set_container, .Lfunc_end25-gimp_container_tree_view_set_container
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_tree_view_set_context,@function
gimp_container_tree_view_set_context:   # @gimp_container_tree_view_set_context
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 144(%rax)
	je	.LBB26_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_store_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_container_tree_store_set_context
.LBB26_2:                               # %if.end
	movq	parent_view_iface, %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_container_tree_view_set_context, .Lfunc_end26-gimp_container_tree_view_set_context
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_tree_view_set_selection_mode,@function
gimp_container_tree_view_set_selection_mode: # @gimp_container_tree_view_set_selection_mode
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	320(%rax), %rax
	movq	(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	gtk_tree_selection_set_mode
	movq	parent_view_iface, %rax
	movq	56(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_container_tree_view_set_selection_mode, .Lfunc_end27-gimp_container_tree_view_set_selection_mode
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_tree_view_insert_item,@function
gimp_container_tree_view_insert_item:   # @gimp_container_tree_view_insert_item
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_store_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	%rax, %rdi
	callq	gimp_container_tree_store_insert_item
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_container_tree_view_insert_item, .Lfunc_end28-gimp_container_tree_view_insert_item
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_tree_view_remove_item,@function
gimp_container_tree_view_remove_item:   # @gimp_container_tree_view_remove_item
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_store_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_container_tree_store_remove_item
	cmpq	$0, -40(%rbp)
	je	.LBB29_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	288(%rax), %rdi
	callq	gtk_tree_view_columns_autosize
.LBB29_2:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_container_tree_view_remove_item, .Lfunc_end29-gimp_container_tree_view_remove_item
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_tree_view_reorder_item,@function
gimp_container_tree_view_reorder_item:  # @gimp_container_tree_view_reorder_item
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -52(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB30_6
# BB#1:                                 # %if.then
	leaq	-88(%rbp), %rsi
	movq	-40(%rbp), %rdi
	callq	gimp_container_tree_view_get_selected_single
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB30_5
# BB#2:                                 # %if.then.4
	leaq	-88(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-96(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-40(%rbp), %rax
	movq	144(%rax), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-96(%rbp), %rcx
	movq	40(%rcx), %rcx
	cmpq	-16(%rbp), %rcx
	je	.LBB30_4
# BB#3:                                 # %if.then.6
	movl	$0, -52(%rbp)
.LBB30_4:                               # %if.end
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB30_5:                               # %if.end.7
	jmp	.LBB30_6
.LBB30_6:                               # %if.end.8
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_container_tree_store_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_container_tree_store_reorder_item
	cmpl	$0, -52(%rbp)
	je	.LBB30_8
# BB#7:                                 # %if.then.13
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_container_view_select_item
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB30_8:                               # %if.end.15
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_container_tree_view_reorder_item, .Lfunc_end30-gimp_container_tree_view_reorder_item
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_tree_view_rename_item,@function
gimp_container_tree_view_rename_item:   # @gimp_container_tree_view_rename_item
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_store_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_container_tree_store_rename_item
	cmpl	$0, %eax
	je	.LBB31_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	288(%rax), %rdi
	callq	gtk_tree_view_columns_autosize
.LBB31_2:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_container_tree_view_rename_item, .Lfunc_end31-gimp_container_tree_view_rename_item
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_tree_view_select_item,@function
gimp_container_tree_view_select_item:   # @gimp_container_tree_view_select_item
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB32_5
# BB#1:                                 # %land.lhs.true
	cmpq	$0, -24(%rbp)
	je	.LBB32_5
# BB#2:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	144(%rax), %rdi
	movq	-56(%rbp), %rsi
	callq	gtk_tree_model_get_path
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_tree_path_copy
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gtk_tree_path_up
	cmpl	$0, %eax
	je	.LBB32_4
# BB#3:                                 # %if.then.7
	movq	-32(%rbp), %rax
	movq	288(%rax), %rdi
	movq	-48(%rbp), %rsi
	callq	gtk_tree_view_expand_to_path
.LBB32_4:                               # %if.end
	movq	-48(%rbp), %rdi
	callq	gtk_tree_path_free
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_container_tree_view_selection_changed, %rdi
	movq	-32(%rbp), %rdx
	movq	320(%rdx), %rdx
	movq	(%rdx), %rdx
	movq	-32(%rbp), %r9
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	%r9, -80(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-80(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_block_matched
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rdi
	movq	288(%rdi), %rdi
	movq	-40(%rbp), %rsi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gtk_tree_view_set_cursor
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_container_tree_view_selection_changed, %rdx
	movq	-32(%rbp), %rdi
	movq	320(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	-32(%rbp), %r9
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r9, -104(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-104(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_unblock_matched
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movq	-32(%rbp), %rdi
	movq	288(%rdi), %rdi
	movq	-40(%rbp), %rsi
	movss	%xmm0, -108(%rbp)       # 4-byte Spill
	movss	-108(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	gtk_tree_view_scroll_to_cell
	movq	-40(%rbp), %rdi
	callq	gtk_tree_path_free
	jmp	.LBB32_8
.LBB32_5:                               # %if.else
	cmpq	$0, -24(%rbp)
	jne	.LBB32_7
# BB#6:                                 # %if.then.15
	movq	-32(%rbp), %rax
	movq	320(%rax), %rax
	movq	(%rax), %rdi
	callq	gtk_tree_selection_unselect_all
.LBB32_7:                               # %if.end.18
	jmp	.LBB32_8
.LBB32_8:                               # %if.end.19
	movl	$1, %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_container_tree_view_select_item, .Lfunc_end32-gimp_container_tree_view_select_item
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_tree_view_clear_items,@function
gimp_container_tree_view_clear_items:   # @gimp_container_tree_view_clear_items
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_store_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_container_tree_store_clear_items
	movq	parent_view_iface, %rax
	movq	104(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_container_tree_view_clear_items, .Lfunc_end33-gimp_container_tree_view_clear_items
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_tree_view_set_view_size,@function
gimp_container_tree_view_set_view_size: # @gimp_container_tree_view_set_view_size
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-40(%rbp), %rsi
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_container_view_get_view_size
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, 144(%rsi)
	je	.LBB34_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_store_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_container_tree_store_set_view_size
.LBB34_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB34_4
# BB#3:                                 # %if.then.10
	jmp	.LBB34_14
.LBB34_4:                               # %if.end.11
	movq	-16(%rbp), %rax
	movq	320(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB34_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB34_13
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB34_5 Depth=1
	movabsq	$.L.str.39, %rsi
	leaq	-48(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdi
	movq	(%rdi), %rdi
	movb	$0, %al
	callq	g_object_get
	cmpq	$0, -48(%rbp)
	je	.LBB34_8
# BB#7:                                 # %if.then.14
                                        #   in Loop: Header=BB34_5 Depth=1
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_style
	movl	$4, %edx
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	-36(%rbp), %ecx
	movq	-64(%rbp), %rax
	movl	536(%rax), %r8d
	shll	$1, %r8d
	subl	%r8d, %ecx
	movl	-36(%rbp), %r8d
	movq	-64(%rbp), %rax
	movl	540(%rax), %r9d
	shll	$1, %r9d
	subl	%r9d, %r8d
	callq	gimp_get_icon_size
	movabsq	$.L.str.40, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movl	%eax, -52(%rbp)
	movq	-32(%rbp), %rdi
	movq	(%rdi), %rdi
	movl	-52(%rbp), %edx
	movb	$0, %al
	callq	g_object_set
	movq	-48(%rbp), %rdi
	callq	g_free
.LBB34_8:                               # %if.end.20
                                        #   in Loop: Header=BB34_5 Depth=1
	jmp	.LBB34_9
.LBB34_9:                               # %for.inc
                                        #   in Loop: Header=BB34_5 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB34_11
# BB#10:                                # %cond.true
                                        #   in Loop: Header=BB34_5 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB34_12
.LBB34_11:                              # %cond.false
                                        #   in Loop: Header=BB34_5 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB34_12
.LBB34_12:                              # %cond.end
                                        #   in Loop: Header=BB34_5 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB34_5
.LBB34_13:                              # %for.end
	movq	-16(%rbp), %rax
	movq	288(%rax), %rdi
	callq	gtk_tree_view_columns_autosize
.LBB34_14:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_container_tree_view_set_view_size, .Lfunc_end34-gimp_container_tree_view_set_view_size
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_tree_view_row_expanded,@function
gimp_container_tree_view_row_expanded:  # @gimp_container_tree_view_row_expanded
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
	subq	$112, %rsp
	xorl	%eax, %eax
	leaq	-40(%rbp), %r8
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	144(%rcx), %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, %edx
	movq	%r8, %rcx
	movl	%r9d, %r8d
	movb	$0, %al
	callq	gtk_tree_model_get
	cmpq	$0, -40(%rbp)
	je	.LBB35_4
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gtk_tree_view_row_expanded
	movl	%eax, -44(%rbp)
	movq	-40(%rbp), %rsi
	movq	40(%rsi), %rdi
	movl	-44(%rbp), %esi
	callq	gimp_viewable_set_expanded
	cmpl	$0, -44(%rbp)
	je	.LBB35_3
# BB#2:                                 # %if.then.2
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_container_tree_view_row_expanded, %rdx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %r9
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
	movq	144(%rdi), %rdi
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	gimp_container_tree_view_expand_rows
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_container_tree_view_row_expanded, %rdx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %r9
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-80(%rbp), %r10         # 8-byte Reload
	movq	%r9, -88(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-88(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB35_3:                               # %if.end
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB35_4:                               # %if.end.6
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_container_tree_view_row_expanded, .Lfunc_end35-gimp_container_tree_view_row_expanded
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_tree_view_button_press,@function
gimp_container_tree_view_button_press:  # @gimp_container_tree_view_button_press
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
	subq	$272, %rsp              # imm = 0x110
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	320(%rax), %rax
	movq	$0, 24(%rax)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_has_focus
	cmpl	$0, %eax
	jne	.LBB36_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gtk_widget_grab_focus
.LBB36_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rcx
	leaq	-48(%rbp), %r8
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	-24(%rbp), %rsi
	cvttsd2si	24(%rsi), %esi
	movq	-24(%rbp), %rdi
	cvttsd2si	32(%rdi), %edx
	movq	%rax, %rdi
	movq	$0, (%rsp)
	callq	gtk_tree_view_get_path_at_pos
	cmpl	$0, %eax
	je	.LBB36_68
# BB#3:                                 # %if.then.8
	movq	$0, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movl	$1, -140(%rbp)
	movq	-32(%rbp), %rax
	movq	320(%rax), %rax
	movq	(%rax), %rdi
	callq	gtk_tree_selection_get_mode
	leaq	-136(%rbp), %rsi
	cmpl	$3, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -144(%rbp)
	movq	-32(%rbp), %rdi
	movq	144(%rdi), %rdi
	movq	-56(%rbp), %rdx
	callq	gtk_tree_model_get_iter
	leaq	-136(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-64(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rdi
	movq	144(%rdi), %rdi
	movl	%eax, -204(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gtk_tree_model_get
	leaq	-104(%rbp), %rcx
	movq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	320(%rdi), %rdi
	movq	%rsi, 24(%rdi)
	movq	-32(%rbp), %rsi
	movq	288(%rsi), %rdi
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	gtk_tree_view_get_cell_area
	leaq	-136(%rbp), %rdx
	xorl	%r8d, %r8d
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	144(%rcx), %rsi
	movl	%r8d, %ecx
	callq	gtk_tree_view_column_cell_set_cell_data
	movq	-24(%rbp), %rdx
	cmpl	$1, 52(%rdx)
	jne	.LBB36_9
# BB#4:                                 # %land.lhs.true
	leaq	-136(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gtk_tree_model_iter_has_child
	cmpl	$0, %eax
	je	.LBB36_9
# BB#5:                                 # %land.lhs.true.22
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	288(%rcx), %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_expander_column
	movq	-216(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB36_9
# BB#6:                                 # %if.then.27
	movq	-48(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_cell_layout_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_cell_layout_get_cells
	leaq	-104(%rbp), %rcx
	movq	%rax, -152(%rbp)
	movq	-16(%rbp), %rdi
	movq	-152(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	cvttsd2si	24(%rax), %r8d
	movq	-24(%rbp), %rax
	cvttsd2si	32(%rax), %r9d
	callq	gimp_container_tree_view_find_click_cell
	cmpq	$0, %rax
	jne	.LBB36_8
# BB#7:                                 # %if.then.37
	movq	-152(%rbp), %rdi
	callq	g_list_free
	movq	-56(%rbp), %rdi
	callq	gtk_tree_path_free
	movq	-64(%rbp), %rdi
	callq	g_object_unref
	movl	$0, -4(%rbp)
	jmp	.LBB36_71
.LBB36_8:                               # %if.end.38
	movq	-152(%rbp), %rdi
	callq	g_list_free
.LBB36_9:                               # %if.end.39
	leaq	-104(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	320(%rax), %rax
	movq	32(%rax), %rsi
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	cvttsd2si	24(%rax), %r8d
	movq	-24(%rbp), %rax
	cvttsd2si	32(%rax), %r9d
	callq	gimp_container_tree_view_find_click_cell
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB36_11
# BB#10:                                # %if.then.47
	leaq	-104(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	320(%rax), %rax
	movq	40(%rax), %rsi
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	cvttsd2si	24(%rax), %r8d
	movq	-24(%rbp), %rax
	cvttsd2si	32(%rax), %r9d
	callq	gimp_container_tree_view_find_click_cell
	movq	%rax, -80(%rbp)
.LBB36_11:                              # %if.end.54
	cmpq	$0, -72(%rbp)
	jne	.LBB36_14
# BB#12:                                # %land.lhs.true.56
	cmpq	$0, -80(%rbp)
	jne	.LBB36_14
# BB#13:                                # %if.then.58
	leaq	-104(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	320(%rax), %rax
	movq	16(%rax), %rsi
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	cvttsd2si	24(%rax), %r8d
	movq	-24(%rbp), %rax
	cvttsd2si	32(%rax), %r9d
	callq	gimp_container_tree_view_find_click_cell
	movq	%rax, -88(%rbp)
.LBB36_14:                              # %if.end.65
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-24(%rbp), %rdi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gdk_event_triggers_context_menu
	cmpl	$0, %eax
	je	.LBB36_20
# BB#15:                                # %if.then.69
	movq	-40(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	40(%rax), %rsi
	callq	gimp_container_view_item_selected
	cmpl	$0, %eax
	je	.LBB36_19
# BB#16:                                # %if.then.72
	movq	-40(%rbp), %rdi
	callq	gimp_container_view_get_container
	cmpq	$0, %rax
	je	.LBB36_18
# BB#17:                                # %if.then.75
	movq	-40(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	40(%rax), %rsi
	callq	gimp_container_view_item_context
.LBB36_18:                              # %if.end.77
	jmp	.LBB36_19
.LBB36_19:                              # %if.end.78
	jmp	.LBB36_64
.LBB36_20:                              # %if.else
	movq	-24(%rbp), %rax
	cmpl	$1, 52(%rax)
	jne	.LBB36_56
# BB#21:                                # %if.then.82
	movq	-24(%rbp), %rax
	cmpl	$4, (%rax)
	jne	.LBB36_42
# BB#22:                                # %if.then.85
	cmpq	$0, -72(%rbp)
	jne	.LBB36_31
# BB#23:                                # %if.then.87
	movq	-56(%rbp), %rdi
	callq	gtk_tree_path_to_string
	movq	%rax, -160(%rbp)
	movl	$0, -140(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB36_25
# BB#24:                                # %if.then.90
	movq	-80(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	48(%rax), %edx
	callq	gimp_cell_renderer_viewable_pre_clicked
	movl	%eax, -140(%rbp)
.LBB36_25:                              # %if.end.92
	cmpl	$0, -140(%rbp)
	jne	.LBB36_30
# BB#26:                                # %if.then.94
	cmpl	$0, -144(%rbp)
	je	.LBB36_28
# BB#27:                                # %if.then.96
	jmp	.LBB36_29
.LBB36_28:                              # %if.else.97
	movq	-40(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	40(%rax), %rsi
	callq	gimp_container_view_item_selected
	movl	%eax, -140(%rbp)
.LBB36_29:                              # %if.end.100
	jmp	.LBB36_30
.LBB36_30:                              # %if.end.101
	movq	-160(%rbp), %rdi
	callq	g_free
.LBB36_31:                              # %if.end.102
	movq	-40(%rbp), %rdi
	callq	gimp_container_view_get_container
	cmpq	$0, %rax
	je	.LBB36_41
# BB#32:                                # %if.then.105
	leaq	-136(%rbp), %rdx
	xorl	%eax, %eax
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	144(%rcx), %rsi
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	gtk_tree_view_column_cell_set_cell_data
	cmpq	$0, -72(%rbp)
	jne	.LBB36_34
# BB#33:                                # %lor.lhs.false
	cmpq	$0, -80(%rbp)
	je	.LBB36_40
.LBB36_34:                              # %if.then.109
	movq	-56(%rbp), %rdi
	callq	gtk_tree_path_to_string
	movq	%rax, -168(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB36_36
# BB#35:                                # %if.then.113
	movq	-72(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	48(%rax), %edx
	callq	gimp_cell_renderer_toggle_clicked
	jmp	.LBB36_39
.LBB36_36:                              # %if.else.115
	cmpq	$0, -80(%rbp)
	je	.LBB36_38
# BB#37:                                # %if.then.117
	movq	-80(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	48(%rax), %edx
	callq	gimp_cell_renderer_viewable_clicked
.LBB36_38:                              # %if.end.119
	jmp	.LBB36_39
.LBB36_39:                              # %if.end.120
	movq	-168(%rbp), %rdi
	callq	g_free
.LBB36_40:                              # %if.end.121
	jmp	.LBB36_41
.LBB36_41:                              # %if.end.122
	jmp	.LBB36_55
.LBB36_42:                              # %if.else.123
	movq	-24(%rbp), %rax
	cmpl	$5, (%rax)
	jne	.LBB36_54
# BB#43:                                # %if.then.127
	movl	$1, -172(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB36_45
# BB#44:                                # %if.then.129
	movq	-40(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	40(%rax), %rsi
	callq	gimp_container_view_item_selected
	movl	%eax, -172(%rbp)
.LBB36_45:                              # %if.end.132
	cmpl	$0, -172(%rbp)
	je	.LBB36_53
# BB#46:                                # %if.then.134
	cmpq	$0, -88(%rbp)
	je	.LBB36_48
# BB#47:                                # %if.then.136
	movl	$1, %r8d
	movq	-32(%rbp), %rax
	movq	288(%rax), %rdi
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-88(%rbp), %rcx
	callq	gtk_tree_view_set_cursor_on_cell
	jmp	.LBB36_52
.LBB36_48:                              # %if.else.138
	cmpq	$0, -72(%rbp)
	jne	.LBB36_51
# BB#49:                                # %land.lhs.true.140
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -236(%rbp)        # 4-byte Spill
	callq	gimp_get_all_modifiers_mask
	movl	-236(%rbp), %ecx        # 4-byte Reload
	andl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB36_51
# BB#50:                                # %if.then.144
	movq	-40(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	40(%rax), %rsi
	callq	gimp_container_view_item_activated
.LBB36_51:                              # %if.end.146
	jmp	.LBB36_52
.LBB36_52:                              # %if.end.147
	jmp	.LBB36_53
.LBB36_53:                              # %if.end.148
	jmp	.LBB36_54
.LBB36_54:                              # %if.end.149
	jmp	.LBB36_55
.LBB36_55:                              # %if.end.150
	jmp	.LBB36_63
.LBB36_56:                              # %if.else.151
	movq	-24(%rbp), %rax
	cmpl	$2, 52(%rax)
	jne	.LBB36_62
# BB#57:                                # %if.then.155
	movq	-24(%rbp), %rax
	cmpl	$4, (%rax)
	jne	.LBB36_61
# BB#58:                                # %if.then.159
	cmpq	$0, -80(%rbp)
	je	.LBB36_60
# BB#59:                                # %if.then.161
	movq	-56(%rbp), %rdi
	callq	gtk_tree_path_to_string
	movq	%rax, -184(%rbp)
	movq	-80(%rbp), %rdi
	movq	-184(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	48(%rax), %edx
	callq	gimp_cell_renderer_viewable_clicked
	movq	-184(%rbp), %rdi
	callq	g_free
.LBB36_60:                              # %if.end.165
	jmp	.LBB36_61
.LBB36_61:                              # %if.end.166
	jmp	.LBB36_62
.LBB36_62:                              # %if.end.167
	jmp	.LBB36_63
.LBB36_63:                              # %if.end.168
	jmp	.LBB36_64
.LBB36_64:                              # %if.end.169
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-56(%rbp), %rdi
	callq	gtk_tree_path_free
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	cmpl	$0, -144(%rbp)
	je	.LBB36_66
# BB#65:                                # %cond.true
	movl	-140(%rbp), %eax
	movl	%eax, -240(%rbp)        # 4-byte Spill
	jmp	.LBB36_67
.LBB36_66:                              # %cond.false
	movl	$1, %eax
	movl	%eax, -240(%rbp)        # 4-byte Spill
	jmp	.LBB36_67
.LBB36_67:                              # %cond.end
	movl	-240(%rbp), %eax        # 4-byte Reload
	movl	%eax, -4(%rbp)
	jmp	.LBB36_71
.LBB36_68:                              # %if.else.171
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	gdk_event_triggers_context_menu
	cmpl	$0, %eax
	je	.LBB36_70
# BB#69:                                # %if.then.174
	movq	-32(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movq	%rsi, -256(%rbp)        # 8-byte Spill
	movq	-256(%rbp), %rdx        # 8-byte Reload
	callq	gimp_editor_popup_menu
	movl	%eax, -260(%rbp)        # 4-byte Spill
.LBB36_70:                              # %if.end.178
	movl	$1, -4(%rbp)
.LBB36_71:                              # %return
	movl	-4(%rbp), %eax
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end36:
	.size	gimp_container_tree_view_button_press, .Lfunc_end36-gimp_container_tree_view_button_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_tree_view_drag_viewable,@function
gimp_container_tree_view_drag_viewable: # @gimp_container_tree_view_drag_viewable
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB37_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_container_view_get_context
	movq	-24(%rbp), %rsi
	movq	%rax, (%rsi)
.LBB37_2:                               # %if.end
	movq	-40(%rbp), %rax
	movq	320(%rax), %rax
	cmpq	$0, 24(%rax)
	je	.LBB37_4
# BB#3:                                 # %if.then.6
	movq	-40(%rbp), %rax
	movq	320(%rax), %rax
	movq	24(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB37_5
.LBB37_4:                               # %if.end.9
	movq	$0, -8(%rbp)
.LBB37_5:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	gimp_container_tree_view_drag_viewable, .Lfunc_end37-gimp_container_tree_view_drag_viewable
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_tree_view_drag_pixbuf,@function
gimp_container_tree_view_drag_pixbuf:   # @gimp_container_tree_view_drag_pixbuf
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	320(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB38_3
# BB#1:                                 # %land.lhs.true
	leaq	-44(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	40(%rax), %rdi
	callq	gimp_viewable_get_size
	cmpl	$0, %eax
	je	.LBB38_3
# BB#2:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	24(%rax), %rsi
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %ecx
	callq	gimp_viewable_get_new_pixbuf
	movq	%rax, -8(%rbp)
	jmp	.LBB38_4
.LBB38_3:                               # %if.end
	movq	$0, -8(%rbp)
.LBB38_4:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	gimp_container_tree_view_drag_pixbuf, .Lfunc_end38-gimp_container_tree_view_drag_pixbuf
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_tree_view_expand_rows,@function
gimp_container_tree_view_expand_rows:   # @gimp_container_tree_view_expand_rows
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp131:
	.cfi_def_cfa_offset 16
.Ltmp132:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp133:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	leaq	-56(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	%rax, %rsi
	callq	gtk_tree_model_iter_children
	cmpl	$0, %eax
	je	.LBB39_12
# BB#1:                                 # %if.then
	jmp	.LBB39_2
.LBB39_2:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	leaq	-56(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gtk_tree_model_iter_has_child
	cmpl	$0, %eax
	je	.LBB39_9
# BB#3:                                 # %if.then.3
                                        #   in Loop: Header=BB39_2 Depth=1
	leaq	-56(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-64(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-8(%rbp), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	cmpq	$0, -64(%rbp)
	je	.LBB39_8
# BB#4:                                 # %if.then.5
                                        #   in Loop: Header=BB39_2 Depth=1
	leaq	-56(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gtk_tree_model_get_path
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	40(%rax), %rdi
	callq	gimp_viewable_get_expanded
	cmpl	$0, %eax
	je	.LBB39_6
# BB#5:                                 # %if.then.9
                                        #   in Loop: Header=BB39_2 Depth=1
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gtk_tree_view_expand_row
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB39_7
.LBB39_6:                               # %if.else
                                        #   in Loop: Header=BB39_2 Depth=1
	movq	-16(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gtk_tree_view_collapse_row
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB39_7:                               # %if.end
                                        #   in Loop: Header=BB39_2 Depth=1
	movq	-72(%rbp), %rdi
	callq	gtk_tree_path_free
	movq	-64(%rbp), %rdi
	callq	g_object_unref
.LBB39_8:                               # %if.end.12
                                        #   in Loop: Header=BB39_2 Depth=1
	leaq	-56(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_container_tree_view_expand_rows
.LBB39_9:                               # %if.end.13
                                        #   in Loop: Header=BB39_2 Depth=1
	jmp	.LBB39_10
.LBB39_10:                              # %do.cond
                                        #   in Loop: Header=BB39_2 Depth=1
	leaq	-56(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gtk_tree_model_iter_next
	cmpl	$0, %eax
	jne	.LBB39_2
# BB#11:                                # %do.end
	jmp	.LBB39_12
.LBB39_12:                              # %if.end.16
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	gimp_container_tree_view_expand_rows, .Lfunc_end39-gimp_container_tree_view_expand_rows
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_tree_view_find_click_cell,@function
gimp_container_tree_view_find_click_cell: # @gimp_container_tree_view_find_click_cell
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp134:
	.cfi_def_cfa_offset 16
.Ltmp135:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp136:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	%r9d, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_direction
	cmpl	$2, %eax
	sete	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %eax
	movl	%eax, -60(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -56(%rbp)
.LBB40_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB40_16
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	gtk_cell_renderer_get_visible
	cmpl	$0, %eax
	je	.LBB40_11
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB40_1 Depth=1
	leaq	-76(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movq	-32(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gtk_tree_view_column_cell_get_position
	cmpl	$0, %eax
	je	.LBB40_11
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB40_1 Depth=1
	leaq	-84(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	movq	-72(%rbp), %rdi
	callq	gtk_cell_renderer_get_padding
	cmpl	$0, -60(%rbp)
	je	.LBB40_6
# BB#5:                                 # %if.then.6
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	movq	-40(%rbp), %rax
	addl	8(%rax), %ecx
	subl	-76(%rbp), %ecx
	subl	-80(%rbp), %ecx
	movl	%ecx, -92(%rbp)
	jmp	.LBB40_7
.LBB40_6:                               # %if.else
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	-76(%rbp), %eax
	movq	-40(%rbp), %rcx
	addl	(%rcx), %eax
	movl	%eax, -92(%rbp)
.LBB40_7:                               # %if.end
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	-44(%rbp), %eax
	movl	-92(%rbp), %ecx
	addl	-84(%rbp), %ecx
	cmpl	%ecx, %eax
	jl	.LBB40_10
# BB#8:                                 # %land.lhs.true.15
                                        #   in Loop: Header=BB40_1 Depth=1
	movl	-44(%rbp), %eax
	movl	-92(%rbp), %ecx
	addl	-80(%rbp), %ecx
	subl	-84(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB40_10
# BB#9:                                 # %if.then.20
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB40_17
.LBB40_10:                              # %if.end.21
                                        #   in Loop: Header=BB40_1 Depth=1
	jmp	.LBB40_11
.LBB40_11:                              # %if.end.22
                                        #   in Loop: Header=BB40_1 Depth=1
	jmp	.LBB40_12
.LBB40_12:                              # %for.inc
                                        #   in Loop: Header=BB40_1 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB40_14
# BB#13:                                # %cond.true
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB40_15
.LBB40_14:                              # %cond.false
                                        #   in Loop: Header=BB40_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB40_15
.LBB40_15:                              # %cond.end
                                        #   in Loop: Header=BB40_1 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	jmp	.LBB40_1
.LBB40_16:                              # %for.end
	movq	$0, -8(%rbp)
.LBB40_17:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	gimp_container_tree_view_find_click_cell, .Lfunc_end40-gimp_container_tree_view_find_click_cell
	.cfi_endproc

	.type	gimp_container_tree_view_get_type.g_define_type_id__volatile,@object # @gimp_container_tree_view_get_type.g_define_type_id__volatile
	.local	gimp_container_tree_view_get_type.g_define_type_id__volatile
	.comm	gimp_container_tree_view_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpContainerTreeView"
	.size	.L.str, 22

	.type	gimp_container_tree_view_get_type.g_implement_interface_info,@object # @gimp_container_tree_view_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_container_tree_view_get_type.g_implement_interface_info:
	.quad	gimp_container_tree_view_view_iface_init
	.quad	0
	.quad	0
	.size	gimp_container_tree_view_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_container_tree_view_new,@object # @__func__.gimp_container_tree_view_new
.L__func__.gimp_container_tree_view_new:
	.asciz	"gimp_container_tree_view_new"
	.size	.L__func__.gimp_container_tree_view_new, 29

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"container == NULL || GIMP_IS_CONTAINER (container)"
	.size	.L.str.2, 51

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"context == NULL || GIMP_IS_CONTEXT (context)"
	.size	.L.str.3, 45

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"view_size > 0 && view_size <= GIMP_VIEWABLE_MAX_PREVIEW_SIZE"
	.size	.L.str.4, 61

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"view_border_width >= 0 && view_border_width <= GIMP_VIEW_MAX_BORDER_WIDTH"
	.size	.L.str.5, 74

	.type	.L__func__.gimp_container_tree_view_get_name_cell,@object # @__func__.gimp_container_tree_view_get_name_cell
.L__func__.gimp_container_tree_view_get_name_cell:
	.asciz	"gimp_container_tree_view_get_name_cell"
	.size	.L__func__.gimp_container_tree_view_get_name_cell, 39

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP_IS_CONTAINER_TREE_VIEW (tree_view)"
	.size	.L.str.6, 40

	.type	.L__func__.gimp_container_tree_view_set_main_column_title,@object # @__func__.gimp_container_tree_view_set_main_column_title
.L__func__.gimp_container_tree_view_set_main_column_title:
	.asciz	"gimp_container_tree_view_set_main_column_title"
	.size	.L__func__.gimp_container_tree_view_set_main_column_title, 47

	.type	.L__func__.gimp_container_tree_view_add_toggle_cell,@object # @__func__.gimp_container_tree_view_add_toggle_cell
.L__func__.gimp_container_tree_view_add_toggle_cell:
	.asciz	"gimp_container_tree_view_add_toggle_cell"
	.size	.L__func__.gimp_container_tree_view_add_toggle_cell, 41

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"GIMP_IS_CELL_RENDERER_TOGGLE (cell)"
	.size	.L.str.7, 36

	.type	.L__func__.gimp_container_tree_view_add_renderer_cell,@object # @__func__.gimp_container_tree_view_add_renderer_cell
.L__func__.gimp_container_tree_view_add_renderer_cell:
	.asciz	"gimp_container_tree_view_add_renderer_cell"
	.size	.L__func__.gimp_container_tree_view_add_renderer_cell, 43

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP_IS_CELL_RENDERER_VIEWABLE (cell)"
	.size	.L.str.8, 38

	.type	.L__func__.gimp_container_tree_view_set_dnd_drop_to_empty,@object # @__func__.gimp_container_tree_view_set_dnd_drop_to_empty
.L__func__.gimp_container_tree_view_set_dnd_drop_to_empty:
	.asciz	"gimp_container_tree_view_set_dnd_drop_to_empty"
	.size	.L__func__.gimp_container_tree_view_set_dnd_drop_to_empty, 47

	.type	.L__func__.gimp_container_tree_view_connect_name_edited,@object # @__func__.gimp_container_tree_view_connect_name_edited
.L__func__.gimp_container_tree_view_connect_name_edited:
	.asciz	"gimp_container_tree_view_connect_name_edited"
	.size	.L__func__.gimp_container_tree_view_connect_name_edited, 45

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"callback != NULL"
	.size	.L.str.9, 17

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"mode"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"editable"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"edited"
	.size	.L.str.12, 7

	.type	gimp_container_tree_view_parent_class,@object # @gimp_container_tree_view_parent_class
	.local	gimp_container_tree_view_parent_class
	.comm	gimp_container_tree_view_parent_class,8,8
	.type	GimpContainerTreeView_private_offset,@object # @GimpContainerTreeView_private_offset
	.local	GimpContainerTreeView_private_offset
	.comm	GimpContainerTreeView_private_offset,4,4
	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"edit-name"
	.size	.L.str.13, 10

	.type	tree_view_signals,@object # @tree_view_signals
	.local	tree_view_signals
	.comm	tree_view_signals,4,4
	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"model"
	.size	.L.str.14, 6

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"search-column"
	.size	.L.str.15, 14

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"enable-search"
	.size	.L.str.16, 14

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"headers-visible"
	.size	.L.str.17, 16

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"has-tooltip"
	.size	.L.str.18, 12

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"show-expanders"
	.size	.L.str.19, 15

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"renderer"
	.size	.L.str.20, 9

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"xalign"
	.size	.L.str.21, 7

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"text"
	.size	.L.str.22, 5

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"attributes"
	.size	.L.str.23, 11

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"sensitive"
	.size	.L.str.24, 10

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"editing-started"
	.size	.L.str.25, 16

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"editing-canceled"
	.size	.L.str.26, 17

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"changed"
	.size	.L.str.27, 8

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"drag-failed"
	.size	.L.str.28, 12

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"drag-leave"
	.size	.L.str.29, 11

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"drag-motion"
	.size	.L.str.30, 12

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"drag-drop"
	.size	.L.str.31, 10

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"drag-data-received"
	.size	.L.str.32, 19

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"query-tooltip"
	.size	.L.str.33, 14

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"focus-out-event"
	.size	.L.str.34, 16

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"activate"
	.size	.L.str.35, 9

	.type	parent_view_iface,@object # @parent_view_iface
	.local	parent_view_iface
	.comm	parent_view_iface,8,8
	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"button-press-event"
	.size	.L.str.36, 19

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"row-collapsed"
	.size	.L.str.37, 14

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"row-expanded"
	.size	.L.str.38, 13

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"stock-id"
	.size	.L.str.39, 9

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"stock-size"
	.size	.L.str.40, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
