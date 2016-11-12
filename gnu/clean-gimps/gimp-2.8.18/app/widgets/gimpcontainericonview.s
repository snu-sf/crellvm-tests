	.text
	.file	"gimpcontainericonview.bc"
	.globl	gimp_container_icon_view_get_type
	.align	16, 0x90
	.type	gimp_container_icon_view_get_type,@function
gimp_container_icon_view_get_type:      # @gimp_container_icon_view_get_type
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
	movq	gimp_container_icon_view_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_container_icon_view_get_type.g_define_type_id__volatile, %rax
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
	movl	$824, %edx              # imm = 0x338
	movabsq	$gimp_container_icon_view_class_intern_init, %rdi
	movl	$320, %r8d              # imm = 0x140
	movabsq	$gimp_container_icon_view_init, %rcx
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
	movabsq	$gimp_container_icon_view_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_container_icon_view_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_container_icon_view_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_container_icon_view_get_type, .Lfunc_end0-gimp_container_icon_view_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_icon_view_class_intern_init,@function
gimp_container_icon_view_class_intern_init: # @gimp_container_icon_view_class_intern_init
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
	movq	%rax, gimp_container_icon_view_parent_class
	cmpl	$0, GimpContainerIconView_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpContainerIconView_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_container_icon_view_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_container_icon_view_class_intern_init, .Lfunc_end1-gimp_container_icon_view_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_icon_view_init,@function
gimp_container_icon_view_init:          # @gimp_container_icon_view_init
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
	callq	gimp_container_icon_view_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	-8(%rbp), %rsi
	movq	%rax, 312(%rsi)
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
	.size	gimp_container_icon_view_init, .Lfunc_end2-gimp_container_icon_view_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_icon_view_view_iface_init,@function
gimp_container_icon_view_view_iface_init: # @gimp_container_icon_view_view_iface_init
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
	movabsq	$gimp_container_icon_view_get_selected, %rcx
	movabsq	$gimp_container_icon_view_set_view_size, %rdx
	movabsq	$gimp_container_icon_view_clear_items, %rsi
	movabsq	$gimp_container_icon_view_select_item, %rdi
	movabsq	$gimp_container_icon_view_rename_item, %r8
	movabsq	$gimp_container_icon_view_reorder_item, %r9
	movabsq	$gimp_container_icon_view_remove_item, %r10
	movabsq	$gimp_container_icon_view_insert_item, %r11
	movabsq	$gimp_container_icon_view_set_selection_mode, %rbx
	movabsq	$gimp_container_icon_view_set_context, %r14
	movabsq	$gimp_container_icon_view_set_container, %r15
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
	.size	gimp_container_icon_view_view_iface_init, .Lfunc_end3-gimp_container_icon_view_view_iface_init
	.cfi_endproc

	.globl	gimp_container_icon_view_new
	.align	16, 0x90
	.type	gimp_container_icon_view_new,@function
gimp_container_icon_view_new:           # @gimp_container_icon_view_new
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
	movabsq	$.L__func__.gimp_container_icon_view_new, %rsi
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
	movabsq	$.L__func__.gimp_container_icon_view_new, %rsi
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
	movabsq	$.L__func__.gimp_container_icon_view_new, %rsi
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
	movabsq	$.L__func__.gimp_container_icon_view_new, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_43
.LBB4_37:                               # %if.end.56
	jmp	.LBB4_38
.LBB4_38:                               # %do.end.57
	callq	gimp_container_icon_view_get_type
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
	xorl	%edx, %edx
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movl	-28(%rbp), %esi
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
	.size	gimp_container_icon_view_new, .Lfunc_end4-gimp_container_icon_view_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_icon_view_class_init,@function
gimp_container_icon_view_class_init:    # @gimp_container_icon_view_class_init
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
	movl	$8, %ecx
	movl	%ecx, %esi
	movabsq	$gimp_container_icon_view_popup_menu, %rdi
	movabsq	$gimp_container_icon_view_unmap, %rdx
	movabsq	$gimp_container_icon_view_finalize, %r8
	movabsq	$gimp_container_icon_view_constructed, %r9
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%r9, 72(%rax)
	movq	-16(%rbp), %rax
	movq	%r8, 48(%rax)
	movq	-24(%rbp), %rax
	movq	%rdx, 216(%rax)
	movq	-24(%rbp), %rax
	movq	%rdi, 632(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_container_icon_view_class_init, .Lfunc_end5-gimp_container_icon_view_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_icon_view_constructed,@function
gimp_container_icon_view_constructed:   # @gimp_container_icon_view_constructed
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$280, %rsp              # imm = 0x118
.Ltmp25:
	.cfi_offset %rbx, -40
.Ltmp26:
	.cfi_offset %r14, -32
.Ltmp27:
	.cfi_offset %r15, -24
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_container_icon_view_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_container_box_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -56(%rbp)
	movq	gimp_container_icon_view_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_container_icon_view_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-32(%rbp), %rdi
	callq	*%rax
.LBB6_2:                                # %if.end
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	152(%rax), %esi
	movq	-40(%rbp), %rax
	addq	$160, %rax
	movq	%rax, %rdx
	callq	gimp_container_tree_store_new
	movq	-40(%rbp), %rdx
	movq	%rax, 144(%rdx)
	callq	gtk_icon_view_get_type
	movabsq	$.L.str.6, %rsi
	movabsq	$.L.str.7, %rcx
	xorl	%r8d, %r8d
	movabsq	$.L.str.8, %r9
	movabsq	$.L.str.9, %rdx
	movabsq	$.L.str.10, %rdi
	movl	$1, %r10d
	movabsq	$.L.str.11, %r11
	xorl	%ebx, %ebx
	movl	%ebx, %r14d
	movq	-40(%rbp), %r15
	movq	144(%r15), %r15
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%r15, %rdx
	movl	$0, (%rsp)
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$0, 16(%rsp)
	movq	-88(%rbp), %r15         # 8-byte Reload
	movq	%r15, 24(%rsp)
	movl	$1, 32(%rsp)
	movq	%r11, 40(%rsp)
	movl	$1, 48(%rsp)
	movq	$0, 56(%rsp)
	movb	$0, %al
	movl	%r10d, -100(%rbp)       # 4-byte Spill
	movq	%r14, -112(%rbp)        # 8-byte Spill
	callq	g_object_new
	movq	-40(%rbp), %rcx
	movq	%rax, 288(%rcx)
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-56(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rcx
	movq	288(%rcx), %rcx
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_container_add
	movq	-40(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_show
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_view_set_dnd_widget
	callq	gimp_cell_renderer_viewable_new
	movq	-40(%rbp), %rcx
	movq	%rax, 296(%rcx)
	movq	-40(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_cell_layout_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-40(%rbp), %rcx
	movq	296(%rcx), %rsi
	movq	%rax, %rdi
	callq	gtk_cell_layout_pack_start
	movq	-40(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_cell_layout_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movq	-40(%rbp), %rsi
	movq	296(%rsi), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_cell_layout_set_attributes
	movq	-40(%rbp), %rdx
	movq	144(%rdx), %rdx
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	callq	gimp_container_tree_store_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rdx
	movq	296(%rdx), %rsi
	movq	%rax, %rdi
	callq	gimp_container_tree_store_add_renderer_cell
	movabsq	$.L.str.13, %rsi
	movabsq	$gimp_container_icon_view_selection_changed, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdx
	movq	288(%rdx), %rdx
	movq	-40(%rbp), %rdi
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-192(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.14, %rsi
	movabsq	$gimp_container_icon_view_item_activated, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdx
	movq	288(%rdx), %rdx
	movq	-40(%rbp), %rdi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-200(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.15, %rsi
	movabsq	$gimp_container_icon_view_tooltip, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdx
	movq	288(%rdx), %rdx
	movq	-40(%rbp), %rdi
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-216(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -232(%rbp)        # 8-byte Spill
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_container_icon_view_constructed, .Lfunc_end6-gimp_container_icon_view_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_icon_view_finalize,@function
gimp_container_icon_view_finalize:      # @gimp_container_icon_view_finalize
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
	subq	$16, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	gimp_container_icon_view_parent_class, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_container_icon_view_finalize, .Lfunc_end7-gimp_container_icon_view_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_icon_view_unmap,@function
gimp_container_icon_view_unmap:         # @gimp_container_icon_view_unmap
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	gimp_container_icon_view_parent_class, %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	216(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_container_icon_view_unmap, .Lfunc_end8-gimp_container_icon_view_unmap
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_icon_view_popup_menu,@function
gimp_container_icon_view_popup_menu:    # @gimp_container_icon_view_popup_menu
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_container_icon_view_menu_position, %rsi
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-24(%rbp), %rdx         # 8-byte Reload
	callq	gimp_editor_popup_menu
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_container_icon_view_popup_menu, .Lfunc_end9-gimp_container_icon_view_popup_menu
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_icon_view_selection_changed,@function
gimp_container_icon_view_selection_changed: # @gimp_container_icon_view_selection_changed
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
	callq	gimp_container_icon_view_get_selected
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
.Lfunc_end10:
	.size	gimp_container_icon_view_selection_changed, .Lfunc_end10-gimp_container_icon_view_selection_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_icon_view_item_activated,@function
gimp_container_icon_view_item_activated: # @gimp_container_icon_view_item_activated
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
	subq	$80, %rsp
	leaq	-56(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	144(%rdx), %rdi
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	callq	gtk_tree_model_get_iter
	leaq	-56(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-64(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rdi
	movq	144(%rdi), %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-24(%rbp), %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rcx
	movq	40(%rcx), %rsi
	movq	%rax, %rdi
	callq	gimp_container_view_item_activated
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_container_icon_view_item_activated, .Lfunc_end11-gimp_container_icon_view_item_activated
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_icon_view_tooltip,@function
gimp_container_icon_view_tooltip:       # @gimp_container_icon_view_tooltip
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
	callq	gtk_icon_view_get_type
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
	callq	gtk_icon_view_get_tooltip_context
	cmpl	$0, %eax
	jne	.LBB12_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB12_7
.LBB12_2:                               # %if.end
	leaq	-88(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-56(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-48(%rbp), %rax
	movq	144(%rax), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	cmpq	$0, -56(%rbp)
	je	.LBB12_6
# BB#3:                                 # %if.then.4
	leaq	-120(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	40(%rax), %rdi
	callq	gimp_viewable_get_description
	movq	%rax, -112(%rbp)
	cmpq	$0, -120(%rbp)
	je	.LBB12_5
# BB#4:                                 # %if.then.7
	movq	-40(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	gtk_tooltip_set_text
	movq	-16(%rbp), %rsi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	callq	gtk_icon_view_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	-96(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	296(%rdi), %rcx
	movq	%rax, %rdi
	callq	gtk_icon_view_set_tooltip_cell
	movl	$1, -100(%rbp)
	movq	-120(%rbp), %rdi
	callq	g_free
.LBB12_5:                               # %if.end.10
	movq	-112(%rbp), %rdi
	callq	g_free
	movq	-56(%rbp), %rdi
	callq	g_object_unref
.LBB12_6:                               # %if.end.11
	movq	-96(%rbp), %rdi
	callq	gtk_tree_path_free
	movl	-100(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB12_7:                               # %return
	movl	-4(%rbp), %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_container_icon_view_tooltip, .Lfunc_end12-gimp_container_icon_view_tooltip
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_icon_view_get_selected,@function
gimp_container_icon_view_get_selected:  # @gimp_container_icon_view_get_selected
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
	movq	-8(%rbp), %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_container_icon_view_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	288(%rax), %rdi
	callq	gtk_icon_view_get_selected_items
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_list_length
	movl	%eax, -36(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB13_11
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB13_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB13_10
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB13_2 Depth=1
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-80(%rbp), %rsi
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-112(%rbp), %rdx        # 8-byte Reload
	callq	gtk_tree_model_get_iter
	leaq	-80(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-88(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rdi
	movq	144(%rdi), %rdi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-88(%rbp), %rcx
	cmpq	$0, 40(%rcx)
	je	.LBB13_5
# BB#4:                                 # %if.then.11
                                        #   in Loop: Header=BB13_2 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-88(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-16(%rbp), %rsi
	movq	%rax, (%rsi)
.LBB13_5:                               # %if.end
                                        #   in Loop: Header=BB13_2 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB13_2 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB13_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB13_2 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB13_9
.LBB13_8:                               # %cond.false
                                        #   in Loop: Header=BB13_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB13_9
.LBB13_9:                               # %cond.end
                                        #   in Loop: Header=BB13_2 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	jmp	.LBB13_2
.LBB13_10:                              # %for.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	g_list_reverse
	movq	-16(%rbp), %rdi
	movq	%rax, (%rdi)
.LBB13_11:                              # %if.end.16
	movabsq	$gtk_tree_path_free, %rax
	movq	-32(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_list_free_full
	movl	-36(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_container_icon_view_get_selected, .Lfunc_end13-gimp_container_icon_view_get_selected
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_icon_view_menu_position,@function
gimp_container_icon_view_menu_position: # @gimp_container_icon_view_menu_position
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	gimp_container_icon_view_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
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
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gtk_widget_get_has_window
	cmpl	$0, %eax
	jne	.LBB14_2
# BB#1:                                 # %if.then
	movl	-64(%rbp), %eax
	movq	-16(%rbp), %rcx
	addl	(%rcx), %eax
	movl	%eax, (%rcx)
	movl	-60(%rbp), %eax
	movq	-24(%rbp), %rcx
	addl	(%rcx), %eax
	movl	%eax, (%rcx)
.LBB14_2:                               # %if.end
	movq	-48(%rbp), %rdi
	callq	gtk_widget_get_style
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movl	536(%rax), %ecx
	movq	-16(%rbp), %rax
	addl	(%rax), %ecx
	movl	%ecx, (%rax)
	movq	-72(%rbp), %rax
	movl	540(%rax), %ecx
	movq	-24(%rbp), %rax
	addl	(%rax), %ecx
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	gimp_menu_position
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_container_icon_view_menu_position, .Lfunc_end14-gimp_container_icon_view_menu_position
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_icon_view_set_container,@function
gimp_container_icon_view_set_container: # @gimp_container_icon_view_set_container
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
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_container_icon_view_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_container_view_get_container
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB15_8
# BB#1:                                 # %if.then
	cmpq	$0, -16(%rbp)
	jne	.LBB15_7
# BB#2:                                 # %if.then.4
	movq	-24(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_container_get_children_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dnd_viewable_source_remove
	cmpl	$0, %eax
	je	.LBB15_6
# BB#3:                                 # %if.then.11
	movq	-32(%rbp), %rdi
	callq	gimp_container_get_children_type
	movq	%rax, %rdi
	callq	g_type_class_peek
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	cmpq	$0, 192(%rax)
	je	.LBB15_5
# BB#4:                                 # %if.then.17
	movq	-24(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dnd_pixbuf_source_remove
.LBB15_5:                               # %if.end
	movq	-24(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_drag_source_unset
.LBB15_6:                               # %if.end.24
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_container_icon_view_button_press, %rdx
	movq	-24(%rbp), %rdi
	movq	288(%rdi), %rdi
	movq	-24(%rbp), %r9
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-88(%rbp), %r10         # 8-byte Reload
	movq	%r9, -96(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-96(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB15_7:                               # %if.end.27
	jmp	.LBB15_15
.LBB15_8:                               # %if.else
	cmpq	$0, -16(%rbp)
	je	.LBB15_14
# BB#9:                                 # %if.then.29
	movq	-24(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_container_get_children_type
	movl	$768, %esi              # imm = 0x300
	movl	$2, %ecx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_dnd_drag_source_set_by_type
	cmpl	$0, %eax
	je	.LBB15_13
# BB#10:                                # %if.then.36
	movq	-24(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_container_get_children_type
	movabsq	$gimp_container_icon_view_drag_viewable, %rdx
	movq	-24(%rbp), %rsi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-144(%rbp), %rcx        # 8-byte Reload
	callq	gimp_dnd_viewable_source_add
	movq	-16(%rbp), %rdi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	gimp_container_get_children_type
	movq	%rax, %rdi
	callq	g_type_class_peek
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	cmpq	$0, 192(%rax)
	je	.LBB15_12
# BB#11:                                # %if.then.48
	movq	-24(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_container_icon_view_drag_pixbuf, %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-176(%rbp), %rdx        # 8-byte Reload
	callq	gimp_dnd_pixbuf_source_add
.LBB15_12:                              # %if.end.52
	jmp	.LBB15_13
.LBB15_13:                              # %if.end.53
	movabsq	$.L.str.16, %rsi
	movabsq	$gimp_container_icon_view_button_press, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	288(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-184(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -192(%rbp)        # 8-byte Spill
.LBB15_14:                              # %if.end.56
	jmp	.LBB15_15
.LBB15_15:                              # %if.end.57
	movq	parent_view_iface, %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_container_icon_view_set_container, .Lfunc_end15-gimp_container_icon_view_set_container
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_icon_view_set_context,@function
gimp_container_icon_view_set_context:   # @gimp_container_icon_view_set_context
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_container_icon_view_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	parent_view_iface, %rax
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-24(%rbp), %rax
	cmpq	$0, 144(%rax)
	je	.LBB16_2
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
.LBB16_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_container_icon_view_set_context, .Lfunc_end16-gimp_container_icon_view_set_context
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_icon_view_set_selection_mode,@function
gimp_container_icon_view_set_selection_mode: # @gimp_container_icon_view_set_selection_mode
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_container_icon_view_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	288(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	gtk_icon_view_set_selection_mode
	movq	parent_view_iface, %rax
	movq	56(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_container_icon_view_set_selection_mode, .Lfunc_end17-gimp_container_icon_view_set_selection_mode
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_icon_view_insert_item,@function
gimp_container_icon_view_insert_item:   # @gimp_container_icon_view_insert_item
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	gimp_container_icon_view_get_type
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
	cmpq	$0, -24(%rbp)
	je	.LBB18_2
# BB#1:                                 # %if.then
	jmp	.LBB18_2
.LBB18_2:                               # %if.end
	movq	-48(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_container_icon_view_insert_item, .Lfunc_end18-gimp_container_icon_view_insert_item
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_icon_view_remove_item,@function
gimp_container_icon_view_remove_item:   # @gimp_container_icon_view_remove_item
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_container_icon_view_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_store_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_container_tree_store_remove_item
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_container_icon_view_remove_item, .Lfunc_end19-gimp_container_icon_view_remove_item
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_icon_view_reorder_item,@function
gimp_container_icon_view_reorder_item:  # @gimp_container_icon_view_reorder_item
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	gimp_container_icon_view_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -52(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB20_6
# BB#1:                                 # %if.then
	leaq	-88(%rbp), %rsi
	movq	-40(%rbp), %rdi
	callq	gimp_container_icon_view_get_selected_single
	movl	%eax, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB20_5
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
	je	.LBB20_4
# BB#3:                                 # %if.then.6
	movl	$0, -52(%rbp)
.LBB20_4:                               # %if.end
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB20_5:                               # %if.end.7
	jmp	.LBB20_6
.LBB20_6:                               # %if.end.8
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
	je	.LBB20_8
# BB#7:                                 # %if.then.13
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_container_view_select_item
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB20_8:                               # %if.end.15
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_container_icon_view_reorder_item, .Lfunc_end20-gimp_container_icon_view_reorder_item
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_icon_view_rename_item,@function
gimp_container_icon_view_rename_item:   # @gimp_container_icon_view_rename_item
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_container_icon_view_get_type
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
	movl	%eax, -60(%rbp)         # 4-byte Spill
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_container_icon_view_rename_item, .Lfunc_end21-gimp_container_icon_view_rename_item
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_icon_view_select_item,@function
gimp_container_icon_view_select_item:   # @gimp_container_icon_view_select_item
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	gimp_container_icon_view_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB22_5
# BB#1:                                 # %land.lhs.true
	cmpq	$0, -24(%rbp)
	je	.LBB22_5
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
	je	.LBB22_4
# BB#3:                                 # %if.then.7
	jmp	.LBB22_4
.LBB22_4:                               # %if.end
	movq	-48(%rbp), %rdi
	callq	gtk_tree_path_free
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_container_icon_view_selection_changed, %rdi
	movq	-32(%rbp), %rdx
	movq	288(%rdx), %rdx
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
	movq	-32(%rbp), %rdi
	movq	288(%rdi), %rdi
	movq	-40(%rbp), %rsi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gtk_icon_view_select_path
	xorl	%eax, %eax
	movl	%eax, %edx
	xorl	%ecx, %ecx
	movq	-32(%rbp), %rsi
	movq	288(%rsi), %rdi
	movq	-40(%rbp), %rsi
	callq	gtk_icon_view_set_cursor
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_container_icon_view_selection_changed, %rdx
	movq	-32(%rbp), %rdi
	movq	288(%rdi), %rdi
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
	xorl	%edx, %edx
	xorps	%xmm0, %xmm0
	movq	-32(%rbp), %rdi
	movq	288(%rdi), %rdi
	movq	-40(%rbp), %rsi
	movss	%xmm0, -108(%rbp)       # 4-byte Spill
	movss	-108(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	gtk_icon_view_scroll_to_path
	movq	-40(%rbp), %rdi
	callq	gtk_tree_path_free
	jmp	.LBB22_8
.LBB22_5:                               # %if.else
	cmpq	$0, -24(%rbp)
	jne	.LBB22_7
# BB#6:                                 # %if.then.15
	movq	-32(%rbp), %rax
	movq	288(%rax), %rdi
	callq	gtk_icon_view_unselect_all
.LBB22_7:                               # %if.end.17
	jmp	.LBB22_8
.LBB22_8:                               # %if.end.18
	movl	$1, %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_container_icon_view_select_item, .Lfunc_end22-gimp_container_icon_view_select_item
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_icon_view_clear_items,@function
gimp_container_icon_view_clear_items:   # @gimp_container_icon_view_clear_items
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
.Ltmp77:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp78:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_container_icon_view_get_type
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
.Lfunc_end23:
	.size	gimp_container_icon_view_clear_items, .Lfunc_end23-gimp_container_icon_view_clear_items
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_icon_view_set_view_size,@function
gimp_container_icon_view_set_view_size: # @gimp_container_icon_view_set_view_size
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_container_icon_view_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 144(%rax)
	je	.LBB24_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_store_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_container_tree_store_set_view_size
.LBB24_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 288(%rax)
	je	.LBB24_4
# BB#3:                                 # %if.then.7
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rax
	movq	288(%rax), %rdi
	callq	gtk_icon_view_set_columns
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movq	-16(%rbp), %rax
	movq	288(%rax), %rdi
	callq	gtk_icon_view_set_item_width
.LBB24_4:                               # %if.end.10
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_container_icon_view_set_view_size, .Lfunc_end24-gimp_container_icon_view_set_view_size
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_icon_view_button_press,@function
gimp_container_icon_view_button_press:  # @gimp_container_icon_view_button_press
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	312(%rdx), %rdx
	movq	$0, (%rdx)
	movq	-8(%rbp), %rdx
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	callq	gtk_icon_view_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rdx
	cvttsd2si	24(%rdx), %esi
	movq	-16(%rbp), %rdx
	cvttsd2si	32(%rdx), %edx
	movq	%rax, %rdi
	callq	gtk_icon_view_get_path_at_pos
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB25_2
# BB#1:                                 # %if.then
	leaq	-72(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	144(%rax), %rdi
	movq	-32(%rbp), %rdx
	callq	gtk_tree_model_get_iter
	leaq	-72(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-40(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rdi
	movq	144(%rdi), %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rsi
	movq	312(%rsi), %rsi
	movq	%rcx, (%rsi)
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_object_unref
	movq	-32(%rbp), %rdi
	callq	gtk_tree_path_free
.LBB25_2:                               # %if.end
	xorl	%eax, %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_container_icon_view_button_press, .Lfunc_end25-gimp_container_icon_view_button_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_icon_view_drag_viewable,@function
gimp_container_icon_view_drag_viewable: # @gimp_container_icon_view_drag_viewable
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_container_icon_view_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB26_2
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
.LBB26_2:                               # %if.end
	movq	-40(%rbp), %rax
	movq	312(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB26_4
# BB#3:                                 # %if.then.6
	movq	-40(%rbp), %rax
	movq	312(%rax), %rax
	movq	(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB26_5
.LBB26_4:                               # %if.end.9
	movq	$0, -8(%rbp)
.LBB26_5:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_container_icon_view_drag_viewable, .Lfunc_end26-gimp_container_icon_view_drag_viewable
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_icon_view_drag_pixbuf,@function
gimp_container_icon_view_drag_pixbuf:   # @gimp_container_icon_view_drag_pixbuf
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_container_icon_view_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	312(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB27_3
# BB#1:                                 # %land.lhs.true
	leaq	-44(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	40(%rax), %rdi
	callq	gimp_viewable_get_size
	cmpl	$0, %eax
	je	.LBB27_3
# BB#2:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	24(%rax), %rsi
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %ecx
	callq	gimp_viewable_get_new_pixbuf
	movq	%rax, -8(%rbp)
	jmp	.LBB27_4
.LBB27_3:                               # %if.end
	movq	$0, -8(%rbp)
.LBB27_4:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_container_icon_view_drag_pixbuf, .Lfunc_end27-gimp_container_icon_view_drag_pixbuf
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_icon_view_get_selected_single,@function
gimp_container_icon_view_get_selected_single: # @gimp_container_icon_view_get_selected_single
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	288(%rsi), %rdi
	callq	gtk_icon_view_get_selected_items
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_list_length
	cmpl	$1, %eax
	jne	.LBB28_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_tree_model_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	callq	gtk_tree_model_get_iter
	movl	$1, -28(%rbp)
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB28_3
.LBB28_2:                               # %if.else
	movl	$0, -28(%rbp)
.LBB28_3:                               # %if.end
	movabsq	$gtk_tree_path_free, %rax
	movq	-24(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_list_free_full
	movl	-28(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_container_icon_view_get_selected_single, .Lfunc_end28-gimp_container_icon_view_get_selected_single
	.cfi_endproc

	.type	gimp_container_icon_view_get_type.g_define_type_id__volatile,@object # @gimp_container_icon_view_get_type.g_define_type_id__volatile
	.local	gimp_container_icon_view_get_type.g_define_type_id__volatile
	.comm	gimp_container_icon_view_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpContainerIconView"
	.size	.L.str, 22

	.type	gimp_container_icon_view_get_type.g_implement_interface_info,@object # @gimp_container_icon_view_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_container_icon_view_get_type.g_implement_interface_info:
	.quad	gimp_container_icon_view_view_iface_init
	.quad	0
	.quad	0
	.size	gimp_container_icon_view_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_container_icon_view_new,@object # @__func__.gimp_container_icon_view_new
.L__func__.gimp_container_icon_view_new:
	.asciz	"gimp_container_icon_view_new"
	.size	.L__func__.gimp_container_icon_view_new, 29

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

	.type	gimp_container_icon_view_parent_class,@object # @gimp_container_icon_view_parent_class
	.local	gimp_container_icon_view_parent_class
	.comm	gimp_container_icon_view_parent_class,8,8
	.type	GimpContainerIconView_private_offset,@object # @GimpContainerIconView_private_offset
	.local	GimpContainerIconView_private_offset
	.comm	GimpContainerIconView_private_offset,4,4
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"model"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"row-spacing"
	.size	.L.str.7, 12

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"column-spacing"
	.size	.L.str.8, 15

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"margin"
	.size	.L.str.9, 7

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"item-padding"
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"has-tooltip"
	.size	.L.str.11, 12

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"renderer"
	.size	.L.str.12, 9

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"selection-changed"
	.size	.L.str.13, 18

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"item-activated"
	.size	.L.str.14, 15

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"query-tooltip"
	.size	.L.str.15, 14

	.type	parent_view_iface,@object # @parent_view_iface
	.local	parent_view_iface
	.comm	parent_view_iface,8,8
	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"button-press-event"
	.size	.L.str.16, 19


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
