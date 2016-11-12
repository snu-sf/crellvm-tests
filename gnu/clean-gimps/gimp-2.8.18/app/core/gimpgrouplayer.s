	.text
	.file	"gimpgrouplayer.bc"
	.globl	gimp_group_layer_get_type
	.align	16, 0x90
	.type	gimp_group_layer_get_type,@function
gimp_group_layer_get_type:              # @gimp_group_layer_get_type
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
	movq	gimp_group_layer_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_group_layer_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_layer_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$712, %edx              # imm = 0x2C8
	movabsq	$gimp_group_layer_class_intern_init, %rdi
	movl	$104, %r8d
	movabsq	$gimp_group_layer_init, %rcx
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
	callq	gimp_projectable_interface_get_type
	movabsq	$gimp_group_layer_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movq	-24(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movabsq	$gimp_group_layer_get_type.g_implement_interface_info.1, %rdx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_group_layer_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_group_layer_get_type.g_define_type_id__volatile, %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_group_layer_get_type, .Lfunc_end0-gimp_group_layer_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_group_layer_class_intern_init,@function
gimp_group_layer_class_intern_init:     # @gimp_group_layer_class_intern_init
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
	movq	%rax, gimp_group_layer_parent_class
	cmpl	$0, GimpGroupLayer_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpGroupLayer_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_group_layer_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_group_layer_class_intern_init, .Lfunc_end1-gimp_group_layer_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_group_layer_init,@function
gimp_group_layer_init:                  # @gimp_group_layer_init
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_group_layer_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, %rdi
	callq	gimp_drawable_stack_new
	movabsq	$.L.str.25, %rsi
	movabsq	$gimp_group_layer_child_add, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-16(%rbp), %rax
	movl	$1, 36(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-40(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.26, %rsi
	movabsq	$gimp_group_layer_child_remove, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.27, %rsi
	movabsq	$gimp_group_layer_child_move, %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdi
	movq	-8(%rbp), %rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_container_add_handler
	movabsq	$.L.str.28, %rsi
	movabsq	$gimp_group_layer_child_move, %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdi
	movq	-8(%rbp), %rdx
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gimp_container_add_handler
	movabsq	$.L.str.29, %rsi
	movabsq	$gimp_group_layer_child_resize, %rcx
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdi
	movq	-8(%rbp), %rdx
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	gimp_container_add_handler
	movabsq	$.L.str.30, %rsi
	movabsq	$gimp_group_layer_stack_update, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	g_signal_connect_data
	movq	-8(%rbp), %rcx
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	gimp_projectable_interface_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_projection_new
	movabsq	$.L.str.30, %rsi
	movabsq	$gimp_group_layer_proj_update, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-144(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	%rax, -152(%rbp)        # 8-byte Spill
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_group_layer_init, .Lfunc_end2-gimp_group_layer_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_projectable_iface_init,@function
gimp_projectable_iface_init:            # @gimp_projectable_iface_init
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
	movabsq	$gimp_group_layer_get_layers, %rax
	movabsq	$gimp_viewable_invalidate_preview, %rcx
	movabsq	$gimp_group_layer_get_graph, %rdx
	movabsq	$gimp_viewable_get_size, %rsi
	movabsq	$gimp_item_get_offset, %r8
	movabsq	$gimp_drawable_type, %r9
	movabsq	$gimp_item_get_image, %r10
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%r10, 40(%rdi)
	movq	-8(%rbp), %rdi
	movq	%r9, 48(%rdi)
	movq	-8(%rbp), %rdi
	movq	%r8, 56(%rdi)
	movq	-8(%rbp), %rdi
	movq	%rsi, 64(%rdi)
	movq	-8(%rbp), %rsi
	movq	%rdx, 72(%rsi)
	movq	-8(%rbp), %rdx
	movq	%rcx, 80(%rdx)
	movq	-8(%rbp), %rcx
	movq	%rax, 88(%rcx)
	movq	-8(%rbp), %rax
	movq	$0, 96(%rax)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_projectable_iface_init, .Lfunc_end3-gimp_projectable_iface_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_pickable_iface_init,@function
gimp_pickable_iface_init:               # @gimp_pickable_iface_init
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
	movabsq	$gimp_group_layer_get_opacity_at, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, 64(%rdi)
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_pickable_iface_init, .Lfunc_end4-gimp_pickable_iface_init
	.cfi_endproc

	.globl	gimp_group_layer_new
	.align	16, 0x90
	.type	gimp_group_layer_new,@function
gimp_group_layer_new:                   # @gimp_group_layer_new
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_group_layer_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_15
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_image_base_type_with_alpha
	movl	%eax, -28(%rbp)
	callq	gimp_group_layer_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movl	$1, %r9d
	movq	-16(%rbp), %rsi
	movl	-28(%rbp), %r8d
	movq	%rax, %rdi
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	movl	-60(%rbp), %r10d        # 4-byte Reload
	movl	%r8d, -64(%rbp)         # 4-byte Spill
	movl	%r10d, %r8d
	movl	$1, (%rsp)
	movl	-64(%rbp), %r11d        # 4-byte Reload
	movl	%r11d, 8(%rsp)
	callq	gimp_drawable_new
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_group_layer_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_projection
	cmpl	$0, 128(%rax)
	je	.LBB5_14
# BB#13:                                # %if.then.18
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_group_layer_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	8(%rax), %rax
	movl	$1, 128(%rax)
.LBB5_14:                               # %if.end.22
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB5_15:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_group_layer_new, .Lfunc_end5-gimp_group_layer_new
	.cfi_endproc

	.globl	gimp_group_layer_get_projection
	.align	16, 0x90
	.type	gimp_group_layer_get_projection,@function
gimp_group_layer_get_projection:        # @gimp_group_layer_get_projection
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_group_layer_get_type
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
	movabsq	$.L__func__.gimp_group_layer_get_projection, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_group_layer_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB6_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_group_layer_get_projection, .Lfunc_end6-gimp_group_layer_get_projection
	.cfi_endproc

	.globl	gimp_group_layer_suspend_resize
	.align	16, 0x90
	.type	gimp_group_layer_suspend_resize,@function
gimp_group_layer_suspend_resize:        # @gimp_group_layer_suspend_resize
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_group_layer_get_type
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
	callq	g_type_check_instance_is_a
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
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_group_layer_suspend_resize, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_17
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	jne	.LBB7_14
# BB#13:                                # %if.then.15
	movl	$0, -12(%rbp)
.LBB7_14:                               # %if.end.16
	cmpl	$0, -12(%rbp)
	je	.LBB7_16
# BB#15:                                # %if.then.18
	movq	-24(%rbp), %rdi
	callq	gimp_item_get_image
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_image_undo_push_group_layer_suspend
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB7_16:                               # %if.end.21
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_group_layer_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	32(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 32(%rax)
.LBB7_17:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_group_layer_suspend_resize, .Lfunc_end7-gimp_group_layer_suspend_resize
	.cfi_endproc

	.globl	gimp_group_layer_resume_resize
	.align	16, 0x90
	.type	gimp_group_layer_resume_resize,@function
gimp_group_layer_resume_resize:         # @gimp_group_layer_resume_resize
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_group_layer_get_type
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
	movabsq	$.L__func__.gimp_group_layer_resume_resize, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_23
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_group_layer_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
# BB#13:                                # %do.body.13
	movq	-24(%rbp), %rax
	cmpl	$0, 32(%rax)
	jle	.LBB8_15
# BB#14:                                # %if.then.15
	jmp	.LBB8_16
.LBB8_15:                               # %if.else.16
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_group_layer_resume_resize, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_23
.LBB8_16:                               # %if.end.17
	jmp	.LBB8_17
.LBB8_17:                               # %do.end.18
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	jne	.LBB8_19
# BB#18:                                # %if.then.23
	movl	$0, -12(%rbp)
.LBB8_19:                               # %if.end.24
	cmpl	$0, -12(%rbp)
	je	.LBB8_21
# BB#20:                                # %if.then.26
	movq	-32(%rbp), %rdi
	callq	gimp_item_get_image
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_image_undo_push_group_layer_resume
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB8_21:                               # %if.end.29
	movq	-24(%rbp), %rax
	movl	32(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 32(%rax)
	movq	-24(%rbp), %rax
	cmpl	$0, 32(%rax)
	jne	.LBB8_23
# BB#22:                                # %if.then.33
	movq	-8(%rbp), %rdi
	callq	gimp_group_layer_update_size
.LBB8_23:                               # %if.end.34
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_group_layer_resume_resize, .Lfunc_end8-gimp_group_layer_resume_resize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_group_layer_update_size,@function
gimp_group_layer_update_size:           # @gimp_group_layer_update_size
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$296, %rsp              # imm = 0x128
.Ltmp30:
	.cfi_offset %rbx, -56
.Ltmp31:
	.cfi_offset %r12, -48
.Ltmp32:
	.cfi_offset %r13, -40
.Ltmp33:
	.cfi_offset %r14, -32
.Ltmp34:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gimp_group_layer_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_item_get_offset_x
	movl	%eax, -68(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_item_get_offset_y
	movl	%eax, -72(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_item_get_width
	movl	%eax, -76(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_item_get_height
	movl	%eax, -80(%rbp)
	movl	$0, -84(%rbp)
	movl	$0, -88(%rbp)
	movl	$1, -92(%rbp)
	movl	$1, -96(%rbp)
	movl	$1, -100(%rbp)
	movq	-56(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	callq	gimp_item_stack_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_stack_get_item_iter
	movq	%rax, -112(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -112(%rbp)
	je	.LBB9_10
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	cmpl	$0, -100(%rbp)
	je	.LBB9_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-120(%rbp), %rdi
	callq	gimp_item_get_offset_x
	movl	%eax, -84(%rbp)
	movq	-120(%rbp), %rdi
	callq	gimp_item_get_offset_y
	movl	%eax, -88(%rbp)
	movq	-120(%rbp), %rdi
	callq	gimp_item_get_width
	movl	%eax, -92(%rbp)
	movq	-120(%rbp), %rdi
	callq	gimp_item_get_height
	movl	%eax, -96(%rbp)
	movl	$0, -100(%rbp)
	jmp	.LBB9_5
.LBB9_4:                                # %if.else
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-84(%rbp), %edi
	movl	-88(%rbp), %esi
	movl	-92(%rbp), %edx
	movl	-96(%rbp), %ecx
	movq	-120(%rbp), %rax
	movl	%edi, -156(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	%ecx, -160(%rbp)        # 4-byte Spill
	movl	%esi, -164(%rbp)        # 4-byte Spill
	movl	%edx, -168(%rbp)        # 4-byte Spill
	callq	gimp_item_get_offset_x
	movq	-120(%rbp), %rdi
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	gimp_item_get_offset_y
	movq	-120(%rbp), %rdi
	movl	%eax, -176(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	movq	-120(%rbp), %rdi
	movl	%eax, -180(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	leaq	-84(%rbp), %rdi
	leaq	-88(%rbp), %r8
	leaq	-92(%rbp), %r9
	leaq	-96(%rbp), %r10
	movl	-156(%rbp), %ecx        # 4-byte Reload
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movl	%ecx, %edi
	movl	-164(%rbp), %esi        # 4-byte Reload
	movl	-168(%rbp), %edx        # 4-byte Reload
	movl	-160(%rbp), %ecx        # 4-byte Reload
	movl	-172(%rbp), %r11d       # 4-byte Reload
	movq	%r8, -200(%rbp)         # 8-byte Spill
	movl	%r11d, %r8d
	movl	-176(%rbp), %ebx        # 4-byte Reload
	movq	%r9, -208(%rbp)         # 8-byte Spill
	movl	%ebx, %r9d
	movl	-180(%rbp), %r14d       # 4-byte Reload
	movl	%r14d, (%rsp)
	movl	%eax, 8(%rsp)
	movq	-192(%rbp), %r15        # 8-byte Reload
	movq	%r15, 16(%rsp)
	movq	-200(%rbp), %r12        # 8-byte Reload
	movq	%r12, 24(%rsp)
	movq	-208(%rbp), %r13        # 8-byte Reload
	movq	%r13, 32(%rsp)
	movq	%r10, 40(%rsp)
	callq	gimp_rectangle_union
.LBB9_5:                                # %if.end
                                        #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_6
.LBB9_6:                                # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpq	$0, -112(%rbp)
	je	.LBB9_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB9_9
.LBB9_8:                                # %cond.false
                                        #   in Loop: Header=BB9_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	jmp	.LBB9_9
.LBB9_9:                                # %cond.end
                                        #   in Loop: Header=BB9_1 Depth=1
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, -112(%rbp)
	jmp	.LBB9_1
.LBB9_10:                               # %for.end
	movq	-56(%rbp), %rax
	cmpl	$0, 40(%rax)
	jne	.LBB9_15
# BB#11:                                # %lor.lhs.false
	movl	-84(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jne	.LBB9_15
# BB#12:                                # %lor.lhs.false.22
	movl	-88(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jne	.LBB9_15
# BB#13:                                # %lor.lhs.false.24
	movl	-92(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jne	.LBB9_15
# BB#14:                                # %lor.lhs.false.26
	movl	-96(%rbp), %eax
	cmpl	-80(%rbp), %eax
	je	.LBB9_23
.LBB9_15:                               # %if.then.28
	movq	-56(%rbp), %rax
	cmpl	$0, 40(%rax)
	jne	.LBB9_18
# BB#16:                                # %lor.lhs.false.31
	movl	-92(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jne	.LBB9_18
# BB#17:                                # %lor.lhs.false.33
	movl	-96(%rbp), %eax
	cmpl	-80(%rbp), %eax
	je	.LBB9_19
.LBB9_18:                               # %if.then.35
	movq	-56(%rbp), %rax
	movl	$0, 40(%rax)
	movl	-92(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, 44(%rax)
	movl	-96(%rbp), %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, 48(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_projectable_interface_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_projectable_structure_changed
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gimp_projection_get_tiles_at_level
	movq	%rax, -128(%rbp)
	movq	-56(%rbp), %rax
	movl	$0, 44(%rax)
	movq	-56(%rbp), %rax
	movl	$0, 48(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-128(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	movq	%rdx, -256(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_type
	xorl	%esi, %esi
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movl	-84(%rbp), %r9d
	movl	-88(%rbp), %r8d
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	-248(%rbp), %rcx        # 8-byte Reload
	movl	%r8d, -260(%rbp)        # 4-byte Spill
	movl	%eax, %r8d
	movl	-260(%rbp), %eax        # 4-byte Reload
	movl	%eax, (%rsp)
	callq	gimp_drawable_set_tiles_full
	jmp	.LBB9_20
.LBB9_19:                               # %if.else.47
	movq	-64(%rbp), %rdi
	movl	-84(%rbp), %esi
	movl	-88(%rbp), %edx
	callq	gimp_item_set_offset
	movq	-48(%rbp), %rdi
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	callq	gimp_projectable_interface_get_type
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-84(%rbp), %esi
	movl	-88(%rbp), %edx
	movl	-92(%rbp), %ecx
	movl	-96(%rbp), %r8d
	movq	%rax, %rdi
	callq	gimp_projectable_invalidate
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_pickable_flush
.LBB9_20:                               # %if.end.53
	movq	-56(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB9_22
# BB#21:                                # %if.then.55
	movabsq	$.L.str.21, %rsi
	movabsq	$.L.str.22, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	xorl	%eax, %eax
	movq	-56(%rbp), %rdi
	movq	24(%rdi), %rdi
	movl	%eax, %r8d
	subl	-84(%rbp), %r8d
	cvtsi2sdl	%r8d, %xmm0
	subl	-88(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	movb	$2, %al
	callq	gegl_node_set
.LBB9_22:                               # %if.end.59
	jmp	.LBB9_23
.LBB9_23:                               # %if.end.60
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_group_layer_update_size, .Lfunc_end9-gimp_group_layer_update_size
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_group_layer_class_init,@function
gimp_group_layer_class_init:            # @gimp_group_layer_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
.Ltmp38:
	.cfi_offset %rbx, -56
.Ltmp39:
	.cfi_offset %r12, -48
.Ltmp40:
	.cfi_offset %r13, -40
.Ltmp41:
	.cfi_offset %r14, -32
.Ltmp42:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -72(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.7, %rdi
	movabsq	$gimp_group_layer_transform, %rsi
	movabsq	$gimp_group_layer_rotate, %rcx
	movabsq	$gimp_group_layer_flip, %rdx
	movabsq	$gimp_group_layer_resize, %r8
	movabsq	$gimp_group_layer_scale, %r9
	movabsq	$gimp_group_layer_translate, %r10
	movabsq	$gimp_group_layer_convert, %r11
	movabsq	$gimp_group_layer_duplicate, %rbx
	movabsq	$gimp_group_layer_get_expanded, %r14
	movabsq	$gimp_group_layer_set_expanded, %r15
	movabsq	$gimp_group_layer_get_children, %r12
	movabsq	$gimp_group_layer_get_size, %r13
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movabsq	$.L.str.6, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movabsq	$gimp_group_layer_get_memsize, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movabsq	$gimp_group_layer_finalize, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movabsq	$gimp_group_layer_get_property, %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movabsq	$gimp_group_layer_set_property, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rax
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 24(%rax)
	movq	-56(%rbp), %rax
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 32(%rax)
	movq	-56(%rbp), %rax
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 48(%rax)
	movq	-64(%rbp), %rax
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 152(%rax)
	movq	-72(%rbp), %rax
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, 160(%rax)
	movq	-72(%rbp), %rax
	movq	%r13, 192(%rax)
	movq	-72(%rbp), %rax
	movq	%r12, 256(%rax)
	movq	-72(%rbp), %rax
	movq	%r15, 264(%rax)
	movq	-72(%rbp), %rax
	movq	%r14, 272(%rax)
	movq	-80(%rbp), %rax
	movq	%rbx, 344(%rax)
	movq	-80(%rbp), %rax
	movq	%r11, 352(%rax)
	movq	-80(%rbp), %rax
	movq	%r10, 368(%rax)
	movq	-80(%rbp), %rax
	movq	%r9, 376(%rax)
	movq	-80(%rbp), %rax
	movq	%r8, 384(%rax)
	movq	-80(%rbp), %rax
	movq	%rdx, 392(%rax)
	movq	-80(%rbp), %rax
	movq	-176(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, 400(%rax)
	movq	-80(%rbp), %rax
	movq	%rsi, 408(%rax)
	callq	gettext
	xorl	%esi, %esi
	movl	%esi, %edi
	movabsq	$.L.str.8, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 440(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.9, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 448(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.10, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 456(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.11, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 464(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.12, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 472(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.13, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 480(%rcx)
	callq	g_dpgettext
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movabsq	$.L.str.14, %rsi
	movl	$10, %r8d
	movl	%r8d, %edx
	movq	-80(%rbp), %rcx
	movq	%rax, 488(%rcx)
	callq	g_dpgettext
	movl	$56, %r8d
	movl	%r8d, %esi
	movabsq	$gimp_group_layer_convert_type, %rcx
	movabsq	$gimp_group_layer_estimate_memsize, %rdx
	movq	-80(%rbp), %rdi
	movq	%rax, 496(%rdi)
	movq	-88(%rbp), %rax
	movq	%rdx, 592(%rax)
	movq	-88(%rbp), %rax
	movq	%rcx, 616(%rax)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_group_layer_class_init, .Lfunc_end10-gimp_group_layer_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_group_layer_set_property,@function
gimp_group_layer_set_property:          # @gimp_group_layer_set_property
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %sw.default
	jmp	.LBB11_2
.LBB11_2:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movl	-52(%rbp), %r8d
	movq	-48(%rbp), %rax
	movq	8(%rax), %r9
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -56(%rbp)         # 4-byte Spill
	movq	%r9, -64(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-40(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.16, %rsi
	movl	$334, %edx              # imm = 0x14E
	movabsq	$.L.str.17, %rcx
	movl	-56(%rbp), %r8d         # 4-byte Reload
	movq	-64(%rbp), %r9          # 8-byte Reload
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#3:                                 # %do.end
	jmp	.LBB11_4
.LBB11_4:                               # %sw.epilog
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_group_layer_set_property, .Lfunc_end11-gimp_group_layer_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_group_layer_get_property,@function
gimp_group_layer_get_property:          # @gimp_group_layer_get_property
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %sw.default
	jmp	.LBB12_2
.LBB12_2:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movl	-52(%rbp), %r8d
	movq	-48(%rbp), %rax
	movq	8(%rax), %r9
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -56(%rbp)         # 4-byte Spill
	movq	%r9, -64(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-40(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.16, %rsi
	movl	$348, %edx              # imm = 0x15C
	movabsq	$.L.str.17, %rcx
	movl	-56(%rbp), %r8d         # 4-byte Reload
	movq	-64(%rbp), %r9          # 8-byte Reload
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#3:                                 # %do.end
	jmp	.LBB12_4
.LBB12_4:                               # %sw.epilog
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_group_layer_get_property, .Lfunc_end12-gimp_group_layer_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_group_layer_finalize,@function
gimp_group_layer_finalize:              # @gimp_group_layer_finalize
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_group_layer_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_group_layer_child_add, %rdx
	movq	-16(%rbp), %rdi
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
	movabsq	$gimp_group_layer_child_remove, %rdi
	movq	-16(%rbp), %r9
	movq	(%r9), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-48(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_group_layer_stack_update, %rdi
	movq	-16(%rbp), %r9
	movq	(%r9), %r9
	movq	-8(%rbp), %r10
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%ecx, %edx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movq	%r10, (%rsp)
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	g_signal_handlers_disconnect_matched
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movl	%eax, -72(%rbp)         # 4-byte Spill
	callq	g_object_unref
	movq	-16(%rbp), %rdi
	movq	$0, (%rdi)
.LBB13_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB13_4
# BB#3:                                 # %if.then.11
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
.LBB13_4:                               # %if.end.14
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB13_6
# BB#5:                                 # %if.then.16
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
.LBB13_6:                               # %if.end.19
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_group_layer_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_group_layer_finalize, .Lfunc_end13-gimp_group_layer_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_group_layer_get_memsize,@function
gimp_group_layer_get_memsize:           # @gimp_group_layer_get_memsize
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_group_layer_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	gimp_group_layer_parent_class, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	152(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-64(%rbp), %rsi         # 8-byte Reload
	addq	%rax, %rsi
	movq	%rsi, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_group_layer_get_memsize, .Lfunc_end14-gimp_group_layer_get_memsize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_group_layer_get_size,@function
gimp_group_layer_get_size:              # @gimp_group_layer_get_size
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_group_layer_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$0, 44(%rax)
	je	.LBB15_3
# BB#1:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	cmpl	$0, 48(%rax)
	je	.LBB15_3
# BB#2:                                 # %if.then
	movq	-40(%rbp), %rax
	movl	44(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-40(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	movl	$1, -4(%rbp)
	jmp	.LBB15_4
.LBB15_3:                               # %if.end
	movq	gimp_group_layer_parent_class, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	192(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	*%rax
	movl	%eax, -4(%rbp)
.LBB15_4:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_group_layer_get_size, .Lfunc_end15-gimp_group_layer_get_size
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_group_layer_get_children,@function
gimp_group_layer_get_children:          # @gimp_group_layer_get_children
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_group_layer_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_group_layer_get_children, .Lfunc_end16-gimp_group_layer_get_children
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_group_layer_set_expanded,@function
gimp_group_layer_set_expanded:          # @gimp_group_layer_set_expanded
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_group_layer_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_group_layer_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	-36(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, 36(%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_group_layer_set_expanded, .Lfunc_end17-gimp_group_layer_set_expanded
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_group_layer_get_expanded,@function
gimp_group_layer_get_expanded:          # @gimp_group_layer_get_expanded
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_group_layer_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_group_layer_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	36(%rax), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_group_layer_get_expanded, .Lfunc_end18-gimp_group_layer_get_expanded
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_group_layer_duplicate,@function
gimp_group_layer_duplicate:             # @gimp_group_layer_duplicate
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
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_is_a
	cmpl	$0, %eax
	je	.LBB19_3
# BB#2:                                 # %if.then
	jmp	.LBB19_4
.LBB19_3:                               # %if.else
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_group_layer_duplicate, %rsi
	movabsq	$.L.str.18, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB19_24
.LBB19_4:                               # %if.end
	jmp	.LBB19_5
.LBB19_5:                               # %do.end
	movq	gimp_group_layer_parent_class, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	344(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_group_layer_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB19_7
# BB#6:                                 # %if.then.7
	movl	$0, -52(%rbp)
	jmp	.LBB19_12
.LBB19_7:                               # %if.else.8
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_10
# BB#8:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB19_10
# BB#9:                                 # %if.then.11
	movl	$1, -52(%rbp)
	jmp	.LBB19_11
.LBB19_10:                              # %if.else.12
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB19_11:                              # %if.end.14
	jmp	.LBB19_12
.LBB19_12:                              # %if.end.15
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB19_23
# BB#13:                                # %if.then.17
	movq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_group_layer_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_group_layer_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_group_layer_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	xorl	%esi, %esi
	movq	%rax, -80(%rbp)
	movl	$0, -84(%rbp)
	movq	-72(%rbp), %rdi
	callq	gimp_group_layer_suspend_resize
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_item_stack_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_stack_get_item_iter
	movq	%rax, -96(%rbp)
.LBB19_14:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -96(%rbp)
	je	.LBB19_22
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB19_14 Depth=1
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rdi
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rsi
	callq	gimp_item_duplicate
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-104(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_object_set_name
	movq	-104(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_layer_get_mask
	movq	%rax, -120(%rbp)
	cmpq	$0, -120(%rbp)
	je	.LBB19_17
# BB#16:                                # %if.then.46
                                        #   in Loop: Header=BB19_14 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_layer_get_mask
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-120(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_object_set_name
.LBB19_17:                              # %if.end.54
                                        #   in Loop: Header=BB19_14 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movq	%rsi, -248(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_viewable_set_parent
	movq	-80(%rbp), %rax
	movq	(%rax), %rdi
	movq	-112(%rbp), %rax
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-84(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -84(%rbp)
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movl	%ecx, %edx
	callq	gimp_container_insert
	movl	%eax, -268(%rbp)        # 4-byte Spill
# BB#18:                                # %for.inc
                                        #   in Loop: Header=BB19_14 Depth=1
	cmpq	$0, -96(%rbp)
	je	.LBB19_20
# BB#19:                                # %cond.true
                                        #   in Loop: Header=BB19_14 Depth=1
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	jmp	.LBB19_21
.LBB19_20:                              # %cond.false
                                        #   in Loop: Header=BB19_14 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	jmp	.LBB19_21
.LBB19_21:                              # %cond.end
                                        #   in Loop: Header=BB19_14 Depth=1
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	%rax, -96(%rbp)
	jmp	.LBB19_14
.LBB19_22:                              # %for.end
	movq	-72(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_group_layer_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	xorl	%esi, %esi
	movl	$1, 40(%rax)
	movq	-72(%rbp), %rdi
	callq	gimp_group_layer_resume_resize
.LBB19_23:                              # %if.end.66
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB19_24:                              # %return
	movq	-8(%rbp), %rax
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_group_layer_duplicate, .Lfunc_end19-gimp_group_layer_duplicate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_group_layer_convert,@function
gimp_group_layer_convert:               # @gimp_group_layer_convert
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_group_layer_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_stack_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_stack_get_item_iter
	movq	%rax, -32(%rbp)
.LBB20_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB20_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	352(%rax), %rax
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB20_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB20_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB20_6
.LBB20_5:                               # %cond.false
                                        #   in Loop: Header=BB20_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB20_6
.LBB20_6:                               # %cond.end
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB20_1
.LBB20_7:                               # %for.end
	movq	gimp_group_layer_parent_class, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	352(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_group_layer_convert, .Lfunc_end20-gimp_group_layer_convert
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_group_layer_translate,@function
gimp_group_layer_translate:             # @gimp_group_layer_translate
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
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_group_layer_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_group_layer_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	xorl	%esi, %esi
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_group_layer_suspend_resize
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_stack_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_stack_get_item_iter
	movq	%rax, -56(%rbp)
.LBB21_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB21_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	callq	gimp_item_translate
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB21_1 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB21_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB21_6
.LBB21_5:                               # %cond.false
                                        #   in Loop: Header=BB21_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB21_6
.LBB21_6:                               # %cond.end
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	jmp	.LBB21_1
.LBB21_7:                               # %for.end
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_layer_get_mask
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB21_9
# BB#8:                                 # %if.then
	leaq	-68(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_offset
	movq	-48(%rbp), %rdx
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-68(%rbp), %esi
	movl	-72(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_item_set_offset
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_invalidate_preview
.LBB21_9:                               # %if.end
	xorl	%esi, %esi
	movq	-32(%rbp), %rdi
	callq	gimp_group_layer_resume_resize
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_group_layer_translate, .Lfunc_end21-gimp_group_layer_translate
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI22_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_group_layer_scale,@function
gimp_group_layer_scale:                 # @gimp_group_layer_scale
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
	subq	$272, %rsp              # imm = 0x110
	movq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_group_layer_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_group_layer_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -56(%rbp)
	cvtsi2sdl	-12(%rbp), %xmm0
	movq	-8(%rbp), %rdi
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	callq	gimp_item_get_width
	cvtsi2sdl	%eax, %xmm0
	movsd	-144(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -80(%rbp)
	cvtsi2sdl	-16(%rbp), %xmm0
	movq	-8(%rbp), %rdi
	movsd	%xmm0, -152(%rbp)       # 8-byte Spill
	callq	gimp_item_get_height
	cvtsi2sdl	%eax, %xmm0
	movsd	-152(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -88(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_offset_x
	movl	%eax, -92(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_offset_y
	movl	$1, %esi
	movl	%eax, -96(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_group_layer_suspend_resize
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	callq	gimp_item_stack_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_stack_get_item_iter
	movq	%rax, -72(%rbp)
.LBB22_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB22_13
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB22_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB22_5
.LBB22_4:                               # %cond.false
                                        #   in Loop: Header=BB22_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB22_5
.LBB22_5:                               # %cond.end
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-104(%rbp), %rdi
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	callq	gimp_item_get_width
	movsd	.LCPI22_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	movsd	-176(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -108(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-104(%rbp), %rdi
	movsd	%xmm0, -184(%rbp)       # 8-byte Spill
	callq	gimp_item_get_height
	movsd	.LCPI22_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	movsd	-184(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -112(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-104(%rbp), %rdi
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	callq	gimp_item_get_offset_x
	movsd	.LCPI22_0, %xmm0        # xmm0 = mem[0],zero
	subl	-92(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	-192(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -116(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-104(%rbp), %rdi
	movsd	%xmm0, -200(%rbp)       # 8-byte Spill
	callq	gimp_item_get_offset_y
	movsd	.LCPI22_0, %xmm0        # xmm0 = mem[0],zero
	subl	-96(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	-200(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -120(%rbp)
	movl	-20(%rbp), %eax
	addl	-116(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-24(%rbp), %eax
	addl	-120(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -108(%rbp)
	jle	.LBB22_8
# BB#6:                                 # %land.lhs.true
                                        #   in Loop: Header=BB22_1 Depth=1
	cmpl	$0, -112(%rbp)
	jle	.LBB22_8
# BB#7:                                 # %if.then
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-104(%rbp), %rdi
	movl	-108(%rbp), %esi
	movl	-112(%rbp), %edx
	movl	-116(%rbp), %ecx
	movl	-120(%rbp), %r8d
	movl	-28(%rbp), %r9d
	movq	-40(%rbp), %rax
	movq	%rax, (%rsp)
	callq	gimp_item_scale
	jmp	.LBB22_12
.LBB22_8:                               # %if.else
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB22_10
# BB#9:                                 # %if.then.42
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	gimp_item_get_image
	movq	-104(%rbp), %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_remove_layer
	jmp	.LBB22_11
.LBB22_10:                              # %if.else.46
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rdi
	movq	-104(%rbp), %rax
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_remove
	movl	%eax, -236(%rbp)        # 4-byte Spill
.LBB22_11:                              # %if.end
                                        #   in Loop: Header=BB22_1 Depth=1
	jmp	.LBB22_12
.LBB22_12:                              # %if.end.51
                                        #   in Loop: Header=BB22_1 Depth=1
	jmp	.LBB22_1
.LBB22_13:                              # %while.end
	movq	-48(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_layer_get_mask
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB22_15
# BB#14:                                # %if.then.56
	movq	-64(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movl	-28(%rbp), %r9d
	movq	-40(%rbp), %rdi
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	gimp_item_scale
.LBB22_15:                              # %if.end.59
	movl	$1, %esi
	movq	-48(%rbp), %rdi
	callq	gimp_group_layer_resume_resize
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_group_layer_scale, .Lfunc_end22-gimp_group_layer_scale
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_group_layer_resize,@function
gimp_group_layer_resize:                # @gimp_group_layer_resize
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$296, %rsp              # imm = 0x128
.Ltmp82:
	.cfi_offset %rbx, -56
.Ltmp83:
	.cfi_offset %r12, -48
.Ltmp84:
	.cfi_offset %r13, -40
.Ltmp85:
	.cfi_offset %r14, -32
.Ltmp86:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movl	%edx, -60(%rbp)
	movl	%ecx, -64(%rbp)
	movl	%r8d, -68(%rbp)
	movl	%r9d, -72(%rbp)
	movq	-48(%rbp), %rsi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	callq	gimp_group_layer_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_group_layer_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_item_get_offset_x
	subl	-68(%rbp), %eax
	movl	%eax, -108(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_item_get_offset_y
	movl	$1, %esi
	subl	-72(%rbp), %eax
	movl	%eax, -112(%rbp)
	movq	-80(%rbp), %rdi
	callq	gimp_group_layer_suspend_resize
	movq	-88(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	callq	gimp_item_stack_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_stack_get_item_iter
	movq	%rax, -104(%rbp)
.LBB23_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -104(%rbp)
	je	.LBB23_12
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	cmpq	$0, -104(%rbp)
	je	.LBB23_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB23_5
.LBB23_4:                               # %cond.false
                                        #   in Loop: Header=BB23_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB23_5
.LBB23_5:                               # %cond.end
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -104(%rbp)
	movl	-108(%rbp), %edi
	movl	-112(%rbp), %esi
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %ecx
	movq	-120(%rbp), %rax
	movl	%edi, -180(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	%ecx, -184(%rbp)        # 4-byte Spill
	movl	%esi, -188(%rbp)        # 4-byte Spill
	movl	%edx, -192(%rbp)        # 4-byte Spill
	callq	gimp_item_get_offset_x
	movq	-120(%rbp), %rdi
	movl	%eax, -196(%rbp)        # 4-byte Spill
	callq	gimp_item_get_offset_y
	movq	-120(%rbp), %rdi
	movl	%eax, -200(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	movq	-120(%rbp), %rdi
	movl	%eax, -204(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	leaq	-132(%rbp), %rdi
	leaq	-136(%rbp), %r8
	leaq	-124(%rbp), %r9
	leaq	-128(%rbp), %r10
	movl	-180(%rbp), %ecx        # 4-byte Reload
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movl	%ecx, %edi
	movl	-188(%rbp), %esi        # 4-byte Reload
	movl	-192(%rbp), %edx        # 4-byte Reload
	movl	-184(%rbp), %ecx        # 4-byte Reload
	movl	-196(%rbp), %r11d       # 4-byte Reload
	movq	%r8, -224(%rbp)         # 8-byte Spill
	movl	%r11d, %r8d
	movl	-200(%rbp), %ebx        # 4-byte Reload
	movq	%r9, -232(%rbp)         # 8-byte Spill
	movl	%ebx, %r9d
	movl	-204(%rbp), %r14d       # 4-byte Reload
	movl	%r14d, (%rsp)
	movl	%eax, 8(%rsp)
	movq	-216(%rbp), %r15        # 8-byte Reload
	movq	%r15, 16(%rsp)
	movq	-224(%rbp), %r12        # 8-byte Reload
	movq	%r12, 24(%rsp)
	movq	-232(%rbp), %r13        # 8-byte Reload
	movq	%r13, 32(%rsp)
	movq	%r10, 40(%rsp)
	callq	gimp_rectangle_intersect
	cmpl	$0, %eax
	je	.LBB23_7
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-120(%rbp), %rdi
	callq	gimp_item_get_offset_x
	subl	-132(%rbp), %eax
	movl	%eax, -140(%rbp)
	movq	-120(%rbp), %rdi
	callq	gimp_item_get_offset_y
	subl	-136(%rbp), %eax
	movl	%eax, -144(%rbp)
	movq	-120(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movl	-124(%rbp), %edx
	movl	-128(%rbp), %ecx
	movl	-140(%rbp), %r8d
	movl	-144(%rbp), %r9d
	callq	gimp_item_resize
	jmp	.LBB23_11
.LBB23_7:                               # %if.else
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB23_9
# BB#8:                                 # %if.then.23
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	gimp_item_get_image
	movq	-120(%rbp), %rdi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_remove_layer
	jmp	.LBB23_10
.LBB23_9:                               # %if.else.27
                                        #   in Loop: Header=BB23_1 Depth=1
	movq	-88(%rbp), %rax
	movq	(%rax), %rdi
	movq	-120(%rbp), %rax
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_remove
	movl	%eax, -268(%rbp)        # 4-byte Spill
.LBB23_10:                              # %if.end
                                        #   in Loop: Header=BB23_1 Depth=1
	jmp	.LBB23_11
.LBB23_11:                              # %if.end.32
                                        #   in Loop: Header=BB23_1 Depth=1
	jmp	.LBB23_1
.LBB23_12:                              # %while.end
	movq	-80(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_layer_get_mask
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB23_14
# BB#13:                                # %if.then.37
	movq	-96(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %ecx
	movl	-68(%rbp), %r8d
	movl	-72(%rbp), %r9d
	movq	%rax, %rdi
	callq	gimp_item_resize
.LBB23_14:                              # %if.end.40
	movl	$1, %esi
	movq	-80(%rbp), %rdi
	callq	gimp_group_layer_resume_resize
	addq	$296, %rsp              # imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_group_layer_resize, .Lfunc_end23-gimp_group_layer_resize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_group_layer_flip,@function
gimp_group_layer_flip:                  # @gimp_group_layer_flip
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gimp_group_layer_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_group_layer_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	$1, %esi
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_group_layer_suspend_resize
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_stack_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_stack_get_item_iter
	movq	%rax, -72(%rbp)
.LBB24_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB24_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB24_1 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-36(%rbp), %ecx
	callq	gimp_item_flip
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB24_1 Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB24_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB24_1 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB24_6
.LBB24_5:                               # %cond.false
                                        #   in Loop: Header=BB24_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB24_6
.LBB24_6:                               # %cond.end
                                        #   in Loop: Header=BB24_1 Depth=1
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
	jmp	.LBB24_1
.LBB24_7:                               # %for.end
	movq	-48(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_layer_get_mask
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB24_9
# BB#8:                                 # %if.then
	movq	-64(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-36(%rbp), %ecx
	movq	%rax, %rdi
	callq	gimp_item_flip
.LBB24_9:                               # %if.end
	movl	$1, %esi
	movq	-48(%rbp), %rdi
	callq	gimp_group_layer_resume_resize
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_group_layer_flip, .Lfunc_end24-gimp_group_layer_flip
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_group_layer_rotate,@function
gimp_group_layer_rotate:                # @gimp_group_layer_rotate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp92:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_group_layer_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_group_layer_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	$1, %esi
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_group_layer_suspend_resize
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_stack_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_stack_get_item_iter
	movq	%rax, -80(%rbp)
.LBB25_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB25_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB25_1 Depth=1
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-44(%rbp), %ecx
	callq	gimp_item_rotate
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB25_1 Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB25_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB25_1 Depth=1
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB25_6
.LBB25_5:                               # %cond.false
                                        #   in Loop: Header=BB25_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB25_6
.LBB25_6:                               # %cond.end
                                        #   in Loop: Header=BB25_1 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -80(%rbp)
	jmp	.LBB25_1
.LBB25_7:                               # %for.end
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_layer_get_mask
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB25_9
# BB#8:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-44(%rbp), %ecx
	movq	%rax, %rdi
	callq	gimp_item_rotate
.LBB25_9:                               # %if.end
	movl	$1, %esi
	movq	-56(%rbp), %rdi
	callq	gimp_group_layer_resume_resize
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_group_layer_rotate, .Lfunc_end25-gimp_group_layer_rotate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_group_layer_transform,@function
gimp_group_layer_transform:             # @gimp_group_layer_transform
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp95:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	24(%rbp), %rax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movl	%r10d, -40(%rbp)
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_group_layer_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_group_layer_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	$1, %esi
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_group_layer_suspend_resize
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_stack_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_stack_get_item_iter
	movq	%rax, -80(%rbp)
.LBB26_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB26_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	movl	-36(%rbp), %r9d
	movl	-40(%rbp), %r10d
	movq	-48(%rbp), %rax
	movl	%r10d, (%rsp)
	movq	%rax, 8(%rsp)
	callq	gimp_item_transform
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB26_1 Depth=1
	cmpq	$0, -80(%rbp)
	je	.LBB26_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB26_6
.LBB26_5:                               # %cond.false
                                        #   in Loop: Header=BB26_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB26_6
.LBB26_6:                               # %cond.end
                                        #   in Loop: Header=BB26_1 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -80(%rbp)
	jmp	.LBB26_1
.LBB26_7:                               # %for.end
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_layer_get_mask
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB26_9
# BB#8:                                 # %if.then
	movq	-72(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	movl	-36(%rbp), %r9d
	movl	-40(%rbp), %r10d
	movq	-48(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%r10d, (%rsp)
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	gimp_item_transform
.LBB26_9:                               # %if.end
	movl	$1, %esi
	movq	-56(%rbp), %rdi
	callq	gimp_group_layer_resume_resize
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_group_layer_transform, .Lfunc_end26-gimp_group_layer_transform
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_group_layer_estimate_memsize,@function
gimp_group_layer_estimate_memsize:      # @gimp_group_layer_estimate_memsize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp98:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_group_layer_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	$0, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_stack_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_stack_get_item_iter
	movq	%rax, -32(%rbp)
.LBB27_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB27_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB27_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	imull	-12(%rbp), %eax
	movq	-8(%rbp), %rsi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	-92(%rbp), %ecx         # 4-byte Reload
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-108(%rbp), %r8d        # 4-byte Reload
	idivl	%r8d
	movl	%eax, -60(%rbp)
	movq	-56(%rbp), %rsi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	imull	-16(%rbp), %eax
	movq	-8(%rbp), %rsi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	-124(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-140(%rbp), %r8d        # 4-byte Reload
	idivl	%r8d
	movl	%eax, -64(%rbp)
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %esi
	movl	-64(%rbp), %eax
	movl	%eax, %edx
	callq	gimp_drawable_estimate_memsize
	addq	-48(%rbp), %rax
	movq	%rax, -48(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB27_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB27_5
# BB#4:                                 # %cond.true
                                        #   in Loop: Header=BB27_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB27_6
.LBB27_5:                               # %cond.false
                                        #   in Loop: Header=BB27_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jmp	.LBB27_6
.LBB27_6:                               # %cond.end
                                        #   in Loop: Header=BB27_1 Depth=1
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB27_1
.LBB27_7:                               # %for.end
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$0, %eax
	je	.LBB27_9
# BB#8:                                 # %lor.lhs.false
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$1, %eax
	jne	.LBB27_10
.LBB27_9:                               # %cond.true.24
	xorl	%eax, %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
	jmp	.LBB27_17
.LBB27_10:                              # %cond.false.25
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$2, %eax
	je	.LBB27_12
# BB#11:                                # %lor.lhs.false.28
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$3, %eax
	jne	.LBB27_13
.LBB27_12:                              # %cond.true.31
	movl	$1, %eax
	movl	%eax, -160(%rbp)        # 4-byte Spill
	jmp	.LBB27_16
.LBB27_13:                              # %cond.false.32
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_type
	movb	$1, %cl
	cmpl	$4, %eax
	movb	%cl, -161(%rbp)         # 1-byte Spill
	je	.LBB27_15
# BB#14:                                # %lor.rhs
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_type
	cmpl	$5, %eax
	sete	%cl
	movb	%cl, -161(%rbp)         # 1-byte Spill
.LBB27_15:                              # %lor.end
	movb	-161(%rbp), %al         # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$2, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -160(%rbp)        # 4-byte Spill
.LBB27_16:                              # %cond.end.38
	movl	-160(%rbp), %eax        # 4-byte Reload
	movl	%eax, -156(%rbp)        # 4-byte Spill
.LBB27_17:                              # %cond.end.40
	movl	-156(%rbp), %eax        # 4-byte Reload
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %edi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	gimp_projection_estimate_memsize
	addq	-48(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	gimp_group_layer_parent_class, %rcx
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	592(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	*%rax
	movq	-176(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, %rax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_group_layer_estimate_memsize, .Lfunc_end27-gimp_group_layer_estimate_memsize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_group_layer_convert_type,@function
gimp_group_layer_convert_type:          # @gimp_group_layer_convert_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp99:
	.cfi_def_cfa_offset 16
.Ltmp100:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp101:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_group_layer_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_group_layer_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	cmpl	$0, -24(%rbp)
	je	.LBB28_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	gimp_image_undo_push_group_layer_convert
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB28_2:                               # %if.end
	cmpl	$0, -20(%rbp)
	jne	.LBB28_4
# BB#3:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB28_8
.LBB28_4:                               # %cond.false
	cmpl	$1, -20(%rbp)
	jne	.LBB28_6
# BB#5:                                 # %cond.true.9
	movl	$2, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB28_7
.LBB28_6:                               # %cond.false.10
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$4, %ecx
	cmpl	$2, -20(%rbp)
	cmovel	%ecx, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB28_7:                               # %cond.end
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB28_8:                               # %cond.end.13
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB28_20
# BB#9:                                 # %if.then.17
	cmpl	$0, -52(%rbp)
	je	.LBB28_11
# BB#10:                                # %lor.lhs.false
	cmpl	$1, -52(%rbp)
	jne	.LBB28_12
.LBB28_11:                              # %cond.true.20
	movl	$1, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB28_19
.LBB28_12:                              # %cond.false.21
	cmpl	$2, -52(%rbp)
	je	.LBB28_14
# BB#13:                                # %lor.lhs.false.23
	cmpl	$3, -52(%rbp)
	jne	.LBB28_15
.LBB28_14:                              # %cond.true.25
	movl	$3, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB28_18
.LBB28_15:                              # %cond.false.26
	movb	$1, %al
	cmpl	$4, -52(%rbp)
	movb	%al, -113(%rbp)         # 1-byte Spill
	je	.LBB28_17
# BB#16:                                # %lor.rhs
	cmpl	$5, -52(%rbp)
	sete	%al
	movb	%al, -113(%rbp)         # 1-byte Spill
.LBB28_17:                              # %lor.end
	movb	-113(%rbp), %al         # 1-byte Reload
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$5, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -112(%rbp)        # 4-byte Spill
.LBB28_18:                              # %cond.end.30
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB28_19:                              # %cond.end.32
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -52(%rbp)
.LBB28_20:                              # %if.end.34
	movl	-52(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movl	%eax, (%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	gimp_projectable_interface_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_projectable_structure_changed
	xorl	%esi, %esi
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gimp_projection_get_tiles_at_level
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movl	-52(%rbp), %r8d
	movq	-8(%rbp), %rax
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movl	%r8d, -148(%rbp)        # 4-byte Spill
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_offset_x
	movq	-8(%rbp), %rcx
	movl	%eax, -164(%rbp)        # 4-byte Spill
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_offset_y
	xorl	%esi, %esi
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movl	-148(%rbp), %r8d        # 4-byte Reload
	movl	-164(%rbp), %r9d        # 4-byte Reload
	movl	%eax, (%rsp)
	callq	gimp_drawable_set_tiles_full
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_group_layer_convert_type, .Lfunc_end28-gimp_group_layer_convert_type
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp104:
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
	je	.LBB29_2
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
.LBB29_2:                               # %entry
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
	movl	$.L.str.2, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end29:
	.size	g_warning, .Lfunc_end29-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_group_layer_child_add,@function
gimp_group_layer_child_add:             # @gimp_group_layer_child_add
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp105:
	.cfi_def_cfa_offset 16
.Ltmp106:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp107:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_group_layer_update
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_group_layer_child_add, .Lfunc_end30-gimp_group_layer_child_add
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_group_layer_child_remove,@function
gimp_group_layer_child_remove:          # @gimp_group_layer_child_remove
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp108:
	.cfi_def_cfa_offset 16
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp110:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_group_layer_update
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_group_layer_child_remove, .Lfunc_end31-gimp_group_layer_child_remove
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_group_layer_stack_update,@function
gimp_group_layer_stack_update:          # @gimp_group_layer_stack_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp113:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	%r9, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_projectable_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movq	%rax, %rdi
	callq	gimp_projectable_invalidate
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_group_layer_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_pickable_flush
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_group_layer_stack_update, .Lfunc_end32-gimp_group_layer_stack_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_group_layer_update,@function
gimp_group_layer_update:                # @gimp_group_layer_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp114:
	.cfi_def_cfa_offset 16
.Ltmp115:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp116:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_group_layer_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	cmpl	$0, 32(%rax)
	jne	.LBB33_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gimp_group_layer_update_size
.LBB33_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_group_layer_update, .Lfunc_end33-gimp_group_layer_update
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_group_layer_get_graph,@function
gimp_group_layer_get_graph:             # @gimp_group_layer_get_graph
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp117:
	.cfi_def_cfa_offset 16
.Ltmp118:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp119:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_group_layer_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_group_layer_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB34_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB34_3
.LBB34_2:                               # %if.end
	callq	gegl_node_new
	movq	-32(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_drawable_stack_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_stack_get_graph
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	gegl_node_add_child
	movq	-24(%rbp), %rcx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-52(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movabsq	$.L.str.19, %rsi
	movabsq	$.L.str.20, %rdx
	movabsq	$.L.str.21, %rcx
	movabsq	$.L.str.22, %r8
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	xorl	%r10d, %r10d
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	movl	%r10d, %r11d
	subl	-52(%rbp), %r11d
	cvtsi2sdl	%r11d, %xmm0
	subl	-56(%rbp), %r10d
	cvtsi2sdl	%r10d, %xmm1
	movb	$2, %al
	callq	gegl_node_new_child
	movabsq	$.L.str.23, %rsi
	movabsq	$.L.str.24, %rcx
	movq	-32(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	callq	gegl_node_connect_to
	movabsq	$.L.str.23, %rsi
	movq	-32(%rbp), %rcx
	movq	16(%rcx), %rdi
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	gegl_node_get_output_proxy
	movabsq	$.L.str.23, %rsi
	movabsq	$.L.str.24, %rcx
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-48(%rbp), %rdx
	callq	gegl_node_connect_to
	movq	-32(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -8(%rbp)
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB34_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_group_layer_get_graph, .Lfunc_end34-gimp_group_layer_get_graph
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_group_layer_get_layers,@function
gimp_group_layer_get_layers:            # @gimp_group_layer_get_layers
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp120:
	.cfi_def_cfa_offset 16
.Ltmp121:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp122:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_group_layer_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_item_stack_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_stack_get_item_iter
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_group_layer_get_layers, .Lfunc_end35-gimp_group_layer_get_layers
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_group_layer_get_opacity_at,@function
gimp_group_layer_get_opacity_at:        # @gimp_group_layer_get_opacity_at
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp123:
	.cfi_def_cfa_offset 16
.Ltmp124:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp125:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	popq	%rbp
	retq
.Lfunc_end36:
	.size	gimp_group_layer_get_opacity_at, .Lfunc_end36-gimp_group_layer_get_opacity_at
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_group_layer_child_move,@function
gimp_group_layer_child_move:            # @gimp_group_layer_child_move
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp126:
	.cfi_def_cfa_offset 16
.Ltmp127:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp128:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_group_layer_update
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	gimp_group_layer_child_move, .Lfunc_end37-gimp_group_layer_child_move
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_group_layer_child_resize,@function
gimp_group_layer_child_resize:          # @gimp_group_layer_child_resize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp129:
	.cfi_def_cfa_offset 16
.Ltmp130:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp131:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_group_layer_update
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	gimp_group_layer_child_resize, .Lfunc_end38-gimp_group_layer_child_resize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_group_layer_proj_update,@function
gimp_group_layer_proj_update:           # @gimp_group_layer_proj_update
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp132:
	.cfi_def_cfa_offset 16
.Ltmp133:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp134:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-16(%rbp), %ecx
	movq	-40(%rbp), %rsi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_offset_x
	movl	-60(%rbp), %ecx         # 4-byte Reload
	subl	%eax, %ecx
	movl	-20(%rbp), %eax
	movq	-40(%rbp), %rsi
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	movl	%eax, -80(%rbp)         # 4-byte Spill
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_offset_y
	movl	-80(%rbp), %ecx         # 4-byte Reload
	subl	%eax, %ecx
	movl	-24(%rbp), %eax
	movl	-28(%rbp), %r8d
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movl	%ecx, %edx
	movl	%eax, %ecx
	callq	gimp_drawable_update
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	gimp_group_layer_proj_update, .Lfunc_end39-gimp_group_layer_proj_update
	.cfi_endproc

	.type	gimp_group_layer_get_type.g_define_type_id__volatile,@object # @gimp_group_layer_get_type.g_define_type_id__volatile
	.local	gimp_group_layer_get_type.g_define_type_id__volatile
	.comm	gimp_group_layer_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpGroupLayer"
	.size	.L.str, 15

	.type	gimp_group_layer_get_type.g_implement_interface_info,@object # @gimp_group_layer_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_group_layer_get_type.g_implement_interface_info:
	.quad	gimp_projectable_iface_init
	.quad	0
	.quad	0
	.size	gimp_group_layer_get_type.g_implement_interface_info, 24

	.type	gimp_group_layer_get_type.g_implement_interface_info.1,@object # @gimp_group_layer_get_type.g_implement_interface_info.1
	.align	8
gimp_group_layer_get_type.g_implement_interface_info.1:
	.quad	gimp_pickable_iface_init
	.quad	0
	.quad	0
	.size	gimp_group_layer_get_type.g_implement_interface_info.1, 24

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"Gimp-Core"
	.size	.L.str.2, 10

	.type	.L__func__.gimp_group_layer_new,@object # @__func__.gimp_group_layer_new
.L__func__.gimp_group_layer_new:
	.asciz	"gimp_group_layer_new"
	.size	.L__func__.gimp_group_layer_new, 21

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.3, 22

	.type	.L__func__.gimp_group_layer_get_projection,@object # @__func__.gimp_group_layer_get_projection
.L__func__.gimp_group_layer_get_projection:
	.asciz	"gimp_group_layer_get_projection"
	.size	.L__func__.gimp_group_layer_get_projection, 32

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_GROUP_LAYER (group)"
	.size	.L.str.4, 28

	.type	.L__func__.gimp_group_layer_suspend_resize,@object # @__func__.gimp_group_layer_suspend_resize
.L__func__.gimp_group_layer_suspend_resize:
	.asciz	"gimp_group_layer_suspend_resize"
	.size	.L__func__.gimp_group_layer_suspend_resize, 32

	.type	.L__func__.gimp_group_layer_resume_resize,@object # @__func__.gimp_group_layer_resume_resize
.L__func__.gimp_group_layer_resume_resize:
	.asciz	"gimp_group_layer_resume_resize"
	.size	.L__func__.gimp_group_layer_resume_resize, 31

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"private->suspend_resize > 0"
	.size	.L.str.5, 28

	.type	gimp_group_layer_parent_class,@object # @gimp_group_layer_parent_class
	.local	gimp_group_layer_parent_class
	.comm	gimp_group_layer_parent_class,8,8
	.type	GimpGroupLayer_private_offset,@object # @GimpGroupLayer_private_offset
	.local	GimpGroupLayer_private_offset
	.comm	GimpGroupLayer_private_offset,4,4
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gtk-directory"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Layer Group"
	.size	.L.str.7, 12

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"undo-type\004Rename Layer Group"
	.size	.L.str.8, 29

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"undo-type\004Move Layer Group"
	.size	.L.str.9, 27

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"undo-type\004Scale Layer Group"
	.size	.L.str.10, 28

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"undo-type\004Resize Layer Group"
	.size	.L.str.11, 29

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"undo-type\004Flip Layer Group"
	.size	.L.str.12, 27

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"undo-type\004Rotate Layer Group"
	.size	.L.str.13, 29

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"undo-type\004Transform Layer Group"
	.size	.L.str.14, 32

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.15, 54

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimpgrouplayer.c"
	.size	.L.str.16, 17

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"property"
	.size	.L.str.17, 9

	.type	.L__func__.gimp_group_layer_duplicate,@object # @__func__.gimp_group_layer_duplicate
.L__func__.gimp_group_layer_duplicate:
	.asciz	"gimp_group_layer_duplicate"
	.size	.L__func__.gimp_group_layer_duplicate, 27

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"g_type_is_a (new_type, GIMP_TYPE_DRAWABLE)"
	.size	.L.str.18, 43

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"operation"
	.size	.L.str.19, 10

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gegl:translate"
	.size	.L.str.20, 15

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"x"
	.size	.L.str.21, 2

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"y"
	.size	.L.str.22, 2

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"output"
	.size	.L.str.23, 7

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"input"
	.size	.L.str.24, 6

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"add"
	.size	.L.str.25, 4

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"remove"
	.size	.L.str.26, 7

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"notify::offset-x"
	.size	.L.str.27, 17

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"notify::offset-y"
	.size	.L.str.28, 17

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"size-changed"
	.size	.L.str.29, 13

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"update"
	.size	.L.str.30, 7


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
