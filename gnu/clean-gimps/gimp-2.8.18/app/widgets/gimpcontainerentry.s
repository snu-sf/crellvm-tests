	.text
	.file	"gimpcontainerentry.bc"
	.globl	gimp_container_entry_get_type
	.align	16, 0x90
	.type	gimp_container_entry_get_type,@function
gimp_container_entry_get_type:          # @gimp_container_entry_get_type
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
	movq	gimp_container_entry_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_container_entry_get_type.g_define_type_id__volatile, %rax
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
	callq	gtk_entry_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$824, %edx              # imm = 0x338
	movabsq	$gimp_container_entry_class_intern_init, %rdi
	movl	$208, %r8d
	movabsq	$gimp_container_entry_init, %rcx
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
	movabsq	$gimp_container_entry_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_container_entry_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_container_entry_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_container_entry_get_type, .Lfunc_end0-gimp_container_entry_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_entry_class_intern_init,@function
gimp_container_entry_class_intern_init: # @gimp_container_entry_class_intern_init
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
	movq	%rax, gimp_container_entry_parent_class
	cmpl	$0, GimpContainerEntry_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpContainerEntry_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_container_entry_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_container_entry_class_intern_init, .Lfunc_end1-gimp_container_entry_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_entry_init,@function
gimp_container_entry_init:              # @gimp_container_entry_init
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -84(%rbp)
	callq	gtk_entry_completion_get_type
	movabsq	$.L.str.5, %rsi
	movl	$1, %edx
	movabsq	$.L.str.6, %rcx
	xorl	%r8d, %r8d
	movabsq	$.L.str.7, %r9
	xorl	%r10d, %r10d
	movl	%r10d, %edi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	$0, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	g_object_new
	leaq	-84(%rbp), %rsi
	leaq	-80(%rbp), %rdi
	movq	%rax, -16(%rbp)
	callq	gimp_container_tree_store_columns_init
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-80(%rbp), %rdx
	movl	-84(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_container_tree_store_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_container_tree_store_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_container_tree_store_set_use_name
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gtk_entry_completion_set_model
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_entry_set_completion
	movabsq	$.L.str.8, %rsi
	movabsq	$gimp_container_entry_match_selected, %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-128(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_object_unref
	callq	gimp_cell_renderer_viewable_new
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_cell_layout_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_cell_layout_pack_start
	movq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_cell_layout_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rdx
	xorl	%ecx, %ecx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_cell_layout_set_attributes
	movq	-24(%rbp), %rdx
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	callq	gimp_container_tree_store_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_container_tree_store_add_renderer_cell
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	callq	gtk_entry_completion_set_text_column
	movabsq	$.L.str.10, %rsi
	movabsq	$gimp_container_entry_changed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-168(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -176(%rbp)        # 8-byte Spill
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_container_entry_init, .Lfunc_end2-gimp_container_entry_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_entry_view_iface_init,@function
gimp_container_entry_view_iface_init:   # @gimp_container_entry_view_iface_init
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
	pushq	%rbx
	pushq	%rax
.Ltmp12:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
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
	movabsq	$gimp_container_entry_set_view_size, %rcx
	movabsq	$gimp_container_entry_clear_items, %rdx
	movabsq	$gimp_container_entry_select_item, %rsi
	movabsq	$gimp_container_entry_rename_item, %rdi
	movabsq	$gimp_container_entry_reorder_item, %r8
	movabsq	$gimp_container_entry_remove_item, %r9
	movabsq	$gimp_container_entry_insert_item, %r10
	movabsq	$gimp_container_entry_set_context, %r11
	movq	-16(%rbp), %rbx
	movq	%r11, 48(%rbx)
	movq	-16(%rbp), %r11
	movq	%r10, 64(%r11)
	movq	-16(%rbp), %r10
	movq	%r9, 80(%r10)
	movq	-16(%rbp), %r9
	movq	%r8, 88(%r9)
	movq	-16(%rbp), %r8
	movq	%rdi, 96(%r8)
	movq	-16(%rbp), %rdi
	movq	%rsi, 16(%rdi)
	movq	-16(%rbp), %rsi
	movq	%rdx, 104(%rsi)
	movq	-16(%rbp), %rdx
	movq	%rcx, 112(%rdx)
	movq	-16(%rbp), %rcx
	movq	%rax, 128(%rcx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_container_entry_view_iface_init, .Lfunc_end3-gimp_container_entry_view_iface_init
	.cfi_endproc

	.globl	gimp_container_entry_new
	.align	16, 0x90
	.type	gimp_container_entry_new,@function
gimp_container_entry_new:               # @gimp_container_entry_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp15:
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
# BB#6:                                 # %if.then.5
	movl	$1, -68(%rbp)
	jmp	.LBB4_8
.LBB4_7:                                # %if.else.6
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB4_8:                                # %if.end
	jmp	.LBB4_9
.LBB4_9:                                # %if.end.8
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB4_11
.LBB4_10:                               # %if.then.10
	jmp	.LBB4_12
.LBB4_11:                               # %if.else.11
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_entry_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_31
.LBB4_12:                               # %if.end.12
	jmp	.LBB4_13
.LBB4_13:                               # %do.end
	jmp	.LBB4_14
.LBB4_14:                               # %do.body.13
	cmpq	$0, -24(%rbp)
	je	.LBB4_23
# BB#15:                                # %lor.lhs.false.15
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB4_17
# BB#16:                                # %if.then.24
	movl	$0, -92(%rbp)
	jmp	.LBB4_22
.LBB4_17:                               # %if.else.25
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_20
# BB#18:                                # %land.lhs.true.28
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB4_20
# BB#19:                                # %if.then.32
	movl	$1, -92(%rbp)
	jmp	.LBB4_21
.LBB4_20:                               # %if.else.33
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB4_21:                               # %if.end.35
	jmp	.LBB4_22
.LBB4_22:                               # %if.end.36
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB4_24
.LBB4_23:                               # %if.then.39
	jmp	.LBB4_25
.LBB4_24:                               # %if.else.40
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_entry_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_31
.LBB4_25:                               # %if.end.41
	jmp	.LBB4_26
.LBB4_26:                               # %do.end.42
	callq	gimp_container_entry_get_type
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
	je	.LBB4_28
# BB#27:                                # %if.then.48
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_container_view_set_container
.LBB4_28:                               # %if.end.49
	cmpq	$0, -24(%rbp)
	je	.LBB4_30
# BB#29:                                # %if.then.51
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_container_view_set_context
.LBB4_30:                               # %if.end.52
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB4_31:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_container_entry_new, .Lfunc_end4-gimp_container_entry_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_entry_class_init,@function
gimp_container_entry_class_init:        # @gimp_container_entry_class_init
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
	subq	$16, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$gimp_container_view_get_property, %rsi
	movabsq	$gimp_container_view_set_property, %rdi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdi, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 32(%rax)
	movq	-16(%rbp), %rdi
	callq	gimp_container_view_install_properties
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_container_entry_class_init, .Lfunc_end5-gimp_container_entry_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_entry_set_context,@function
gimp_container_entry_set_context:       # @gimp_container_entry_set_context
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
	movq	-8(%rbp), %rdi
	callq	gimp_container_entry_get_model
	movq	%rax, -24(%rbp)
	movq	parent_view_iface, %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	cmpq	$0, -24(%rbp)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_store_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_container_tree_store_set_context
.LBB6_2:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_container_entry_set_context, .Lfunc_end6-gimp_container_entry_set_context
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_entry_insert_item,@function
gimp_container_entry_insert_item:       # @gimp_container_entry_insert_item
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
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_container_entry_get_model
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_store_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	%rax, %rdi
	callq	gimp_container_tree_store_insert_item
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_container_entry_insert_item, .Lfunc_end7-gimp_container_entry_insert_item
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_entry_remove_item,@function
gimp_container_entry_remove_item:       # @gimp_container_entry_remove_item
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
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_container_entry_get_model
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_store_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_container_tree_store_remove_item
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_container_entry_remove_item, .Lfunc_end8-gimp_container_entry_remove_item
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_entry_reorder_item,@function
gimp_container_entry_reorder_item:      # @gimp_container_entry_reorder_item
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_container_entry_get_model
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_store_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_container_tree_store_reorder_item
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_container_entry_reorder_item, .Lfunc_end9-gimp_container_entry_reorder_item
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_entry_rename_item,@function
gimp_container_entry_rename_item:       # @gimp_container_entry_rename_item
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_container_entry_get_model
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_store_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_container_tree_store_rename_item
	movl	%eax, -44(%rbp)         # 4-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_container_entry_rename_item, .Lfunc_end10-gimp_container_entry_rename_item
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_entry_select_item,@function
gimp_container_entry_select_item:       # @gimp_container_entry_select_item
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movabsq	$gimp_container_entry_changed, %rdx
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movl	%ecx, %edx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-32(%rbp), %rdi
	cmpq	$0, -40(%rbp)
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	je	.LBB11_2
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB11_3
.LBB11_2:                               # %cond.false
	movabsq	$.L.str.4, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB11_3
.LBB11_3:                               # %cond.end
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_entry_set_text
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_container_entry_changed, %rax
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %r9
	movl	%ecx, %edx
	movq	%r9, -96(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movl	$1, %ecx
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_container_entry_select_item, .Lfunc_end11-gimp_container_entry_select_item
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_entry_clear_items,@function
gimp_container_entry_clear_items:       # @gimp_container_entry_clear_items
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_container_entry_get_model
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB12_2
# BB#1:                                 # %if.then
	jmp	.LBB12_3
.LBB12_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_store_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_container_tree_store_clear_items
	movq	parent_view_iface, %rax
	movq	104(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB12_3:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_container_entry_clear_items, .Lfunc_end12-gimp_container_entry_clear_items
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_entry_set_view_size,@function
gimp_container_entry_set_view_size:     # @gimp_container_entry_set_view_size
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_container_entry_get_model
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_store_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_container_tree_store_set_view_size
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_container_entry_set_view_size, .Lfunc_end13-gimp_container_entry_set_view_size
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_entry_get_model,@function
gimp_container_entry_get_model:         # @gimp_container_entry_get_model
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_completion
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	gtk_entry_completion_get_model
	movq	%rax, -8(%rbp)
	jmp	.LBB14_3
.LBB14_2:                               # %if.end
	movq	$0, -8(%rbp)
.LBB14_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_container_entry_get_model, .Lfunc_end14-gimp_container_entry_get_model
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_entry_changed,@function
gimp_container_entry_changed:           # @gimp_container_entry_changed
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_container_view_get_container
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB15_2
# BB#1:                                 # %if.then
	jmp	.LBB15_4
.LBB15_2:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	gtk_entry_get_text
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_container_get_child_by_name
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB15_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_view_item_selected
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB15_4:                               # %if.end.9
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_container_entry_changed, .Lfunc_end15-gimp_container_entry_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_entry_match_selected,@function
gimp_container_entry_match_selected:    # @gimp_container_entry_match_selected
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
	subq	$48, %rsp
	xorl	%eax, %eax
	leaq	-40(%rbp), %r8
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	%eax, %edx
	movq	%r8, %rcx
	movl	%r9d, %r8d
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rcx
	movq	40(%rcx), %rsi
	callq	gimp_container_view_item_selected
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	g_object_unref
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_container_entry_match_selected, .Lfunc_end16-gimp_container_entry_match_selected
	.cfi_endproc

	.type	gimp_container_entry_get_type.g_define_type_id__volatile,@object # @gimp_container_entry_get_type.g_define_type_id__volatile
	.local	gimp_container_entry_get_type.g_define_type_id__volatile
	.comm	gimp_container_entry_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpContainerEntry"
	.size	.L.str, 19

	.type	gimp_container_entry_get_type.g_implement_interface_info,@object # @gimp_container_entry_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_container_entry_get_type.g_implement_interface_info:
	.quad	gimp_container_entry_view_iface_init
	.quad	0
	.quad	0
	.size	gimp_container_entry_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_container_entry_new,@object # @__func__.gimp_container_entry_new
.L__func__.gimp_container_entry_new:
	.asciz	"gimp_container_entry_new"
	.size	.L__func__.gimp_container_entry_new, 25

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"container == NULL || GIMP_IS_CONTAINER (container)"
	.size	.L.str.2, 51

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"context == NULL || GIMP_IS_CONTEXT (context)"
	.size	.L.str.3, 45

	.type	gimp_container_entry_parent_class,@object # @gimp_container_entry_parent_class
	.local	gimp_container_entry_parent_class
	.comm	gimp_container_entry_parent_class,8,8
	.type	GimpContainerEntry_private_offset,@object # @GimpContainerEntry_private_offset
	.local	GimpContainerEntry_private_offset
	.comm	GimpContainerEntry_private_offset,4,4
	.type	parent_view_iface,@object # @parent_view_iface
	.local	parent_view_iface
	.comm	parent_view_iface,8,8
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.zero	1
	.size	.L.str.4, 1

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"inline-completion"
	.size	.L.str.5, 18

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"popup-single-match"
	.size	.L.str.6, 19

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"popup-set-width"
	.size	.L.str.7, 16

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"match-selected"
	.size	.L.str.8, 15

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"renderer"
	.size	.L.str.9, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"changed"
	.size	.L.str.10, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
