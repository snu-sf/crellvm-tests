	.text
	.file	"gimpimagemap.bc"
	.globl	gimp_image_map_get_type
	.align	16, 0x90
	.type	gimp_image_map_get_type,@function
gimp_image_map_get_type:                # @gimp_image_map_get_type
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
	movq	gimp_image_map_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_image_map_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_object_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$168, %edx
	movabsq	$gimp_image_map_class_intern_init, %rdi
	movl	$288, %r8d              # imm = 0x120
	movabsq	$gimp_image_map_init, %rcx
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
	callq	gimp_pickable_interface_get_type
	movabsq	$gimp_image_map_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_image_map_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_image_map_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_image_map_get_type, .Lfunc_end0-gimp_image_map_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_map_class_intern_init,@function
gimp_image_map_class_intern_init:       # @gimp_image_map_class_intern_init
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
	movq	%rax, gimp_image_map_parent_class
	cmpl	$0, GimpImageMap_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpImageMap_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_image_map_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_image_map_class_intern_init, .Lfunc_end1-gimp_image_map_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_map_init,@function
gimp_image_map_init:                    # @gimp_image_map_init
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
	movq	$0, 32(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 40(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 48(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 56(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 60(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 64(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 72(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 208(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 264(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 272(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 280(%rdi)
	movq	-8(%rbp), %rdi
	cmpq	$0, 272(%rdi)
	je	.LBB2_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	272(%rax), %rdi
	callq	g_timer_stop
.LBB2_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_image_map_init, .Lfunc_end2-gimp_image_map_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_map_pickable_iface_init,@function
gimp_image_map_pickable_iface_init:     # @gimp_image_map_pickable_iface_init
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
	movabsq	$gimp_image_map_get_pixel_at, %rax
	movabsq	$gimp_image_map_get_tiles, %rcx
	movabsq	$gimp_image_map_get_bytes, %rdx
	movabsq	$gimp_image_map_get_image_type, %rsi
	movabsq	$gimp_image_map_get_image, %r8
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%r8, 24(%rdi)
	movq	-8(%rbp), %rdi
	movq	%rsi, 32(%rdi)
	movq	-8(%rbp), %rsi
	movq	%rdx, 40(%rsi)
	movq	-8(%rbp), %rdx
	movq	%rcx, 48(%rdx)
	movq	-8(%rbp), %rcx
	movq	%rax, 56(%rcx)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_image_map_pickable_iface_init, .Lfunc_end3-gimp_image_map_pickable_iface_init
	.cfi_endproc

	.globl	gimp_image_map_new
	.align	16, 0x90
	.type	gimp_image_map_new,@function
gimp_image_map_new:                     # @gimp_image_map_new
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_image_map_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_39
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB4_15
# BB#14:                                # %if.then.16
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.17
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_image_map_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_39
.LBB4_16:                               # %if.end.18
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.19
	jmp	.LBB4_18
.LBB4_18:                               # %do.body.20
	cmpq	$0, -32(%rbp)
	je	.LBB4_27
# BB#19:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gegl_node_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB4_21
# BB#20:                                # %if.then.30
	movl	$0, -100(%rbp)
	jmp	.LBB4_26
.LBB4_21:                               # %if.else.31
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_24
# BB#22:                                # %land.lhs.true.34
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB4_24
# BB#23:                                # %if.then.38
	movl	$1, -100(%rbp)
	jmp	.LBB4_25
.LBB4_24:                               # %if.else.39
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB4_25:                               # %if.end.41
	jmp	.LBB4_26
.LBB4_26:                               # %if.end.42
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB4_28
.LBB4_27:                               # %if.then.45
	jmp	.LBB4_29
.LBB4_28:                               # %if.else.46
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_image_map_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_39
.LBB4_29:                               # %if.end.47
	jmp	.LBB4_30
.LBB4_30:                               # %do.end.48
	jmp	.LBB4_31
.LBB4_31:                               # %do.body.49
	cmpq	$0, -32(%rbp)
	jne	.LBB4_33
# BB#32:                                # %lor.lhs.false.51
	cmpq	$0, -40(%rbp)
	je	.LBB4_34
.LBB4_33:                               # %if.then.53
	jmp	.LBB4_35
.LBB4_34:                               # %if.else.54
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_image_map_new, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_39
.LBB4_35:                               # %if.end.55
	jmp	.LBB4_36
.LBB4_36:                               # %do.end.56
	callq	gimp_image_map_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-56(%rbp), %rsi
	movq	%rax, 32(%rsi)
	movq	-24(%rbp), %rdi
	callq	g_strdup
	movq	-56(%rbp), %rsi
	movq	%rax, 40(%rsi)
	cmpq	$0, -32(%rbp)
	je	.LBB4_38
# BB#37:                                # %if.then.64
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-56(%rbp), %rdi
	movq	%rax, 240(%rdi)
.LBB4_38:                               # %if.end.67
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 64(%rcx)
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 72(%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_preview_freeze
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB4_39:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_image_map_new, .Lfunc_end4-gimp_image_map_new
	.cfi_endproc

	.globl	gimp_image_map_apply
	.align	16, 0x90
	.type	gimp_image_map_apply,@function
gimp_image_map_apply:                   # @gimp_image_map_apply
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
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_image_map_get_type
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_image_map_apply, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_31
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_image_map_cancel_any_idle_jobs
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	jne	.LBB5_14
# BB#13:                                # %if.then.15
	jmp	.LBB5_31
.LBB5_14:                               # %if.end.16
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-32(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$4, %rdi
	movq	%rsi, %rcx
	addq	$8, %rcx
	movq	%rsi, %rdx
	addq	$12, %rdx
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-104(%rbp), %r8         # 8-byte Reload
	callq	gimp_item_mask_intersect
	cmpl	$0, %eax
	jne	.LBB5_16
# BB#15:                                # %if.then.22
	jmp	.LBB5_31
.LBB5_16:                               # %if.end.23
	leaq	-32(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_image_map_update_undo_tiles
	movq	-8(%rbp), %rsi
	cmpq	$0, 240(%rsi)
	je	.LBB5_27
# BB#17:                                # %if.then.25
	movq	-8(%rbp), %rax
	cmpq	$0, 216(%rax)
	jne	.LBB5_26
# BB#18:                                # %if.then.27
	callq	gegl_node_new
	movabsq	$.L.str.7, %rsi
	movl	$1, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-8(%rbp), %rdi
	movq	%rax, 216(%rdi)
	movq	-8(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	movabsq	$.L.str.8, %rsi
	movabsq	$.L.str.9, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-8(%rbp), %rdi
	movq	216(%rdi), %rdi
	movb	$0, %al
	callq	gegl_node_new_child
	movabsq	$.L.str.8, %rsi
	movabsq	$.L.str.10, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-8(%rbp), %rdi
	movq	%rax, 224(%rdi)
	movq	-8(%rbp), %rax
	movq	216(%rax), %rdi
	movb	$0, %al
	callq	gegl_node_new_child
	movq	-8(%rbp), %rcx
	movq	%rax, 232(%rcx)
	movq	-8(%rbp), %rax
	movq	216(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	240(%rax), %rsi
	callq	gegl_node_add_child
	movabsq	$.L.str.8, %rsi
	movabsq	$.L.str.11, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-8(%rbp), %rdi
	movq	216(%rdi), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	gegl_node_new_child
	movabsq	$.L.str.12, %rsi
	leaq	-64(%rbp), %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-8(%rbp), %rdi
	movq	%rax, 248(%rdi)
	movq	-8(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_get
	movabsq	$.L.str.13, %rsi
	movabsq	$gimp_image_map_data_written, %rcx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-120(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-64(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_object_unref
	movabsq	$.L.str.14, %rsi
	movq	-8(%rbp), %rax
	movq	240(%rax), %rdi
	callq	gegl_node_has_pad
	cmpl	$0, %eax
	je	.LBB5_21
# BB#19:                                # %land.lhs.true.46
	movabsq	$.L.str.15, %rsi
	movq	-8(%rbp), %rax
	movq	240(%rax), %rdi
	callq	gegl_node_has_pad
	cmpl	$0, %eax
	je	.LBB5_21
# BB#20:                                # %if.then.50
	xorl	%eax, %eax
	movl	%eax, %r8d
	movq	-8(%rbp), %rcx
	movq	224(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	232(%rcx), %rsi
	movq	-8(%rbp), %rcx
	movq	240(%rcx), %rdx
	movq	-8(%rbp), %rcx
	movq	248(%rcx), %rcx
	movb	$0, %al
	callq	gegl_node_link_many
	jmp	.LBB5_25
.LBB5_21:                               # %if.else.55
	movabsq	$.L.str.15, %rsi
	movq	-8(%rbp), %rax
	movq	240(%rax), %rdi
	callq	gegl_node_has_pad
	cmpl	$0, %eax
	je	.LBB5_23
# BB#22:                                # %if.then.59
	movabsq	$.L.str.8, %rsi
	movabsq	$.L.str.16, %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movq	216(%rdi), %rdi
	movb	$0, %al
	callq	gegl_node_new_child
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	movq	%rax, -72(%rbp)
	movq	-8(%rbp), %rax
	movq	224(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	232(%rax), %rsi
	movq	-72(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	248(%rax), %rcx
	movb	$0, %al
	callq	gegl_node_link_many
	movabsq	$.L.str.15, %rsi
	movabsq	$.L.str.17, %rcx
	movq	-8(%rbp), %rdx
	movq	240(%rdx), %rdi
	movq	-72(%rbp), %rdx
	callq	gegl_node_connect_to
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB5_24
.LBB5_23:                               # %if.else.68
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	224(%rdx), %rdi
	movq	-8(%rbp), %rdx
	movq	232(%rdx), %rsi
	movq	-8(%rbp), %rdx
	movq	248(%rdx), %rdx
	movb	$0, %al
	callq	gegl_node_link_many
.LBB5_24:                               # %if.end.72
	jmp	.LBB5_25
.LBB5_25:                               # %if.end.73
	jmp	.LBB5_26
.LBB5_26:                               # %if.end.74
	movabsq	$.L.str.18, %rsi
	movabsq	$.L.str.19, %rcx
	movl	$1, %r8d
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-8(%rbp), %rdx
	movq	224(%rdx), %rdi
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movb	$0, %al
	callq	gegl_node_set
	movabsq	$.L.str.20, %rsi
	movabsq	$.L.str.21, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-8(%rbp), %rdi
	movq	232(%rdi), %rdi
	cvtsi2sdl	-32(%rbp), %xmm0
	cvtsi2sdl	-28(%rbp), %xmm1
	movb	$2, %al
	callq	gegl_node_set
	movq	-8(%rbp), %rcx
	movq	248(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	gimp_drawable_get_shadow_tiles
	movabsq	$.L.str.18, %rsi
	movabsq	$.L.str.19, %rcx
	movl	$1, %r8d
	xorl	%r10d, %r10d
	movl	%r10d, %r9d
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	gegl_node_set
	leaq	-32(%rbp), %rsi
	movq	-8(%rbp), %rcx
	movq	248(%rcx), %rdi
	callq	gegl_node_new_processor
	movq	-8(%rbp), %rcx
	movq	%rax, 256(%rcx)
	jmp	.LBB5_28
.LBB5_27:                               # %if.else.85
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	addq	$80, %rcx
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rsi
	movl	-24(%rbp), %r8d
	movl	-20(%rbp), %r9d
	movq	%rcx, %rdi
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	$0, (%rsp)
	callq	pixel_region_init
	movq	-8(%rbp), %rsi
	addq	$144, %rsi
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_shadow_tiles
	movl	$1, %ecx
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %r8d
	movl	-24(%rbp), %r9d
	movl	-20(%rbp), %r10d
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	movl	$2, %edi
	movq	-8(%rbp), %rax
	addq	$80, %rax
	movq	-8(%rbp), %rsi
	addq	$144, %rsi
	movq	%rsi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-168(%rbp), %rdx        # 8-byte Reload
	movb	$0, %al
	callq	pixel_regions_register
	movq	-8(%rbp), %rdx
	movq	%rax, 208(%rdx)
.LBB5_28:                               # %if.end.98
	movq	-8(%rbp), %rax
	cmpq	$0, 272(%rax)
	je	.LBB5_30
# BB#29:                                # %if.then.100
	movq	-8(%rbp), %rax
	movq	$0, 280(%rax)
	movq	-8(%rbp), %rax
	movq	272(%rax), %rdi
	callq	g_timer_start
	movq	-8(%rbp), %rax
	movq	272(%rax), %rdi
	callq	g_timer_stop
.LBB5_30:                               # %if.end.103
	movabsq	$gimp_image_map_do, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_idle_add
	movq	-8(%rbp), %rcx
	movl	%eax, 264(%rcx)
.LBB5_31:                               # %return
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_image_map_apply, .Lfunc_end5-gimp_image_map_apply
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_map_cancel_any_idle_jobs,@function
gimp_image_map_cancel_any_idle_jobs:    # @gimp_image_map_cancel_any_idle_jobs
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, 264(%rdi)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	264(%rax), %edi
	callq	g_source_remove
	movq	-8(%rbp), %rcx
	movl	$0, 264(%rcx)
	movq	-8(%rbp), %rdi
	movl	%eax, -12(%rbp)         # 4-byte Spill
	callq	gimp_image_map_kill_any_idle_processors
.LBB6_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_image_map_cancel_any_idle_jobs, .Lfunc_end6-gimp_image_map_cancel_any_idle_jobs
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_map_update_undo_tiles,@function
gimp_image_map_update_undo_tiles:       # @gimp_image_map_update_undo_tiles
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	cmpq	$0, 48(%rsi)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	56(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rax
	movl	60(%rax), %ecx
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	tile_manager_width
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rdi
	movq	48(%rdi), %rdi
	callq	tile_manager_height
	movl	%eax, -32(%rbp)
	jmp	.LBB7_3
.LBB7_2:                                # %if.else
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
.LBB7_3:                                # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB7_8
# BB#4:                                 # %lor.lhs.false
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	(%rcx), %eax
	jne	.LBB7_8
# BB#5:                                 # %lor.lhs.false.8
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jne	.LBB7_8
# BB#6:                                 # %lor.lhs.false.10
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jne	.LBB7_8
# BB#7:                                 # %lor.lhs.false.12
	movl	-32(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	12(%rcx), %eax
	je	.LBB7_15
.LBB7_8:                                # %if.then.14
	movq	-8(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB7_11
# BB#9:                                 # %lor.lhs.false.17
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jne	.LBB7_11
# BB#10:                                # %lor.lhs.false.20
	movl	-32(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	12(%rcx), %eax
	je	.LBB7_14
.LBB7_11:                               # %if.then.23
	movq	-8(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB7_13
# BB#12:                                # %if.then.26
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	tile_manager_unref
.LBB7_13:                               # %if.end.28
	movq	-16(%rbp), %rax
	movl	8(%rax), %edi
	movq	-16(%rbp), %rax
	movl	12(%rax), %esi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	%edi, -36(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -40(%rbp)         # 4-byte Spill
	callq	gimp_drawable_bytes
	movl	-36(%rbp), %edi         # 4-byte Reload
	movl	-40(%rbp), %esi         # 4-byte Reload
	movl	%eax, %edx
	callq	tile_manager_new
	movq	-8(%rbp), %rcx
	movq	%rax, 48(%rcx)
.LBB7_14:                               # %if.end.34
	movq	-8(%rbp), %rax
	addq	$80, %rax
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_tiles
	xorl	%edx, %edx
	movq	-16(%rbp), %rcx
	movl	(%rcx), %esi
	movq	-16(%rbp), %rcx
	movl	4(%rcx), %ecx
	movq	-16(%rbp), %rdi
	movl	8(%rdi), %r8d
	movq	-16(%rbp), %rdi
	movl	12(%rdi), %r9d
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movl	-52(%rbp), %r10d        # 4-byte Reload
	movl	%edx, -56(%rbp)         # 4-byte Spill
	movl	%r10d, %edx
	movl	$0, (%rsp)
	callq	pixel_region_init
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-8(%rbp), %rax
	addq	$144, %rax
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	-16(%rbp), %rdi
	movl	8(%rdi), %r8d
	movq	-16(%rbp), %rdi
	movl	12(%rdi), %r9d
	movq	%rax, %rdi
	movl	%edx, -60(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	$1, (%rsp)
	callq	pixel_region_init
	movq	-8(%rbp), %rax
	addq	$80, %rax
	movq	-8(%rbp), %rsi
	addq	$144, %rsi
	movq	%rax, %rdi
	callq	copy_region
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 56(%rax)
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 60(%rax)
.LBB7_15:                               # %if.end.50
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_image_map_update_undo_tiles, .Lfunc_end7-gimp_image_map_update_undo_tiles
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_image_map_data_written,@function
gimp_image_map_data_written:            # @gimp_image_map_data_written
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
	pushq	%rbx
	subq	$200, %rsp
.Ltmp27:
	.cfi_offset %rbx, -24
	leaq	-96(%rbp), %rax
	xorl	%ecx, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	48(%rdx), %rsi
	movq	-24(%rbp), %rdx
	movl	(%rdx), %r8d
	movq	-32(%rbp), %rdx
	subl	56(%rdx), %r8d
	movq	-24(%rbp), %rdx
	movl	4(%rdx), %r9d
	movq	-32(%rbp), %rdx
	subl	60(%rdx), %r9d
	movq	-24(%rbp), %rdx
	movl	8(%rdx), %r10d
	movq	-24(%rbp), %rdx
	movl	12(%rdx), %r11d
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	%r10d, %r8d
	movl	%r11d, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_drawable_get_tiles
	leaq	-160(%rbp), %rdi
	movl	$1, %ecx
	movq	-24(%rbp), %rsi
	movl	(%rsi), %edx
	movq	-24(%rbp), %rsi
	movl	4(%rsi), %r8d
	movq	-24(%rbp), %rsi
	movl	8(%rsi), %r9d
	movq	-24(%rbp), %rsi
	movl	12(%rsi), %r10d
	movq	%rax, %rsi
	movl	%ecx, -168(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	leaq	-96(%rbp), %rdi
	leaq	-160(%rbp), %rsi
	callq	copy_region
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_drawable_get_shadow_tiles
	leaq	-96(%rbp), %rdi
	xorl	%ecx, %ecx
	movq	-24(%rbp), %rsi
	movl	(%rsi), %edx
	movq	-24(%rbp), %rsi
	movl	4(%rsi), %r8d
	movq	-24(%rbp), %rsi
	movl	8(%rsi), %r9d
	movq	-24(%rbp), %rsi
	movl	12(%rsi), %r10d
	movq	%rax, %rsi
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	leaq	-96(%rbp), %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	movl	$24, %r8d
	movq	-32(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	-24(%rbp), %rbx
	movl	(%rbx), %ecx
	movq	-24(%rbp), %rbx
	movl	4(%rbx), %r9d
	movl	%ecx, -176(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	%r9d, -180(%rbp)        # 4-byte Spill
	movq	%rax, %r9
	movq	$0, (%rsp)
	movl	-176(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, 8(%rsp)
	movl	-180(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, 16(%rsp)
	callq	gimp_drawable_apply_region
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-24(%rbp), %rax
	movl	(%rax), %esi
	movq	-24(%rbp), %rax
	movl	4(%rax), %edx
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	12(%rax), %r8d
	callq	gimp_drawable_update
	movq	-32(%rbp), %rax
	cmpq	$0, 272(%rax)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-24(%rbp), %rax
	imull	12(%rax), %ecx
	movslq	%ecx, %rax
	movq	-32(%rbp), %rdx
	addq	280(%rdx), %rax
	movq	%rax, 280(%rdx)
.LBB8_2:                                # %if.end
	addq	$200, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_image_map_data_written, .Lfunc_end8-gimp_image_map_data_written
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4607182418800017408     # double 1
.LCPI9_1:
	.quad	4696837146684686336     # double 1.0E+6
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI9_2:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI9_3:
	.quad	4841369599423283200     # double 4.503600e+15
	.quad	4985484787499139072     # double 1.934281e+25
	.text
	.align	16, 0x90
	.type	gimp_image_map_do,@function
gimp_image_map_do:                      # @gimp_image_map_do
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	$0, 264(%rax)
	movq	-16(%rbp), %rdi
	callq	gimp_image_map_kill_any_idle_processors
	movl	$0, -4(%rbp)
	jmp	.LBB9_26
.LBB9_2:                                # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 216(%rax)
	je	.LBB9_12
# BB#3:                                 # %if.then.4
	movq	-16(%rbp), %rax
	cmpq	$0, 272(%rax)
	je	.LBB9_5
# BB#4:                                 # %if.then.6
	movq	-16(%rbp), %rax
	movq	272(%rax), %rdi
	callq	g_timer_continue
.LBB9_5:                                # %if.end.8
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	256(%rcx), %rdi
	callq	gegl_processor_work
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rcx
	cmpq	$0, 272(%rcx)
	je	.LBB9_7
# BB#6:                                 # %if.then.12
	movq	-16(%rbp), %rax
	movq	272(%rax), %rdi
	callq	g_timer_stop
.LBB9_7:                                # %if.end.14
	cmpl	$0, -20(%rbp)
	jne	.LBB9_11
# BB#8:                                 # %if.then.16
	movq	-16(%rbp), %rax
	cmpq	$0, 272(%rax)
	je	.LBB9_10
# BB#9:                                 # %if.then.19
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rdx
	movq	280(%rcx), %xmm0        # xmm0 = mem[0],zero
	movaps	.LCPI9_2(%rip), %xmm1   # xmm1 = [1127219200,1160773632,0,0]
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movapd	.LCPI9_3(%rip), %xmm1   # xmm1 = [4.503600e+15,1.934281e+25]
	subpd	%xmm1, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	addpd	%xmm0, %xmm1
	movq	-16(%rbp), %rcx
	movq	272(%rcx), %rdi
	movsd	%xmm1, -184(%rbp)       # 8-byte Spill
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	callq	g_timer_elapsed
	movabsq	$.L.str.24, %rdi
	movsd	.LCPI9_1, %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-184(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	-192(%rbp), %rsi        # 8-byte Reload
	movb	$1, %al
	callq	g_printerr
.LBB9_10:                               # %if.end.22
	movq	-16(%rbp), %rax
	movq	256(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	xorl	%edx, %edx
	movq	-16(%rbp), %rax
	movq	$0, 256(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 264(%rax)
	movq	-16(%rbp), %rax
	movl	image_map_signals, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
	movl	$0, -4(%rbp)
	jmp	.LBB9_26
.LBB9_11:                               # %if.end.26
	jmp	.LBB9_25
.LBB9_12:                               # %if.else
	movl	$0, -24(%rbp)
.LBB9_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$16, -24(%rbp)
	jge	.LBB9_24
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB9_13 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 272(%rax)
	je	.LBB9_16
# BB#15:                                # %if.then.30
                                        #   in Loop: Header=BB9_13 Depth=1
	movq	-16(%rbp), %rax
	movq	272(%rax), %rdi
	callq	g_timer_continue
.LBB9_16:                               # %if.end.32
                                        #   in Loop: Header=BB9_13 Depth=1
	leaq	-88(%rbp), %rdi
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movl	180(%rcx), %edx
	movl	%edx, -156(%rbp)
	movq	-16(%rbp), %rcx
	movl	184(%rcx), %edx
	movl	%edx, -160(%rbp)
	movq	-16(%rbp), %rcx
	movl	188(%rcx), %edx
	movl	%edx, -164(%rbp)
	movq	-16(%rbp), %rcx
	movl	192(%rcx), %edx
	movl	%edx, -168(%rbp)
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rsi
	movl	-156(%rbp), %edx
	movq	-16(%rbp), %rcx
	subl	56(%rcx), %edx
	movl	-160(%rbp), %r8d
	movq	-16(%rbp), %rcx
	subl	60(%rcx), %r8d
	movl	-164(%rbp), %r9d
	movl	-168(%rbp), %r10d
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	%eax, -196(%rbp)        # 4-byte Spill
	callq	pixel_region_init
	movq	-16(%rbp), %rsi
	movq	32(%rsi), %rdi
	callq	gimp_drawable_get_tiles
	leaq	-152(%rbp), %rdi
	movl	$1, %ecx
	movl	-156(%rbp), %edx
	movl	-160(%rbp), %r8d
	movl	-164(%rbp), %r9d
	movl	-168(%rbp), %r10d
	movq	%rax, %rsi
	movl	%ecx, -200(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	leaq	-88(%rbp), %rdi
	leaq	-152(%rbp), %rsi
	callq	copy_region
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	-16(%rbp), %rsi
	movq	72(%rsi), %rdi
	movq	-16(%rbp), %rsi
	addq	$80, %rsi
	movq	-16(%rbp), %r11
	addq	$144, %r11
	movq	%r11, %rdx
	callq	*%rax
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_drawable_get_shadow_tiles
	leaq	-88(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	-156(%rbp), %edx
	movl	-160(%rbp), %r8d
	movl	-164(%rbp), %r9d
	movl	-168(%rbp), %r10d
	movq	%rax, %rsi
	movl	%ecx, -204(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	leaq	-88(%rbp), %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movl	$24, %r8d
	movq	-16(%rbp), %rdi
	movq	32(%rdi), %rdi
	movl	-156(%rbp), %ecx
	movl	-160(%rbp), %r9d
	movl	%ecx, -208(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	%r9d, -212(%rbp)        # 4-byte Spill
	movq	%rax, %r9
	movq	$0, (%rsp)
	movl	-208(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, 8(%rsp)
	movl	-212(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, 16(%rsp)
	callq	gimp_drawable_apply_region
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	movl	-156(%rbp), %esi
	movl	-160(%rbp), %edx
	movl	-164(%rbp), %ecx
	movl	-168(%rbp), %r8d
	callq	gimp_drawable_update
	movq	-16(%rbp), %rax
	movq	208(%rax), %rdi
	callq	pixel_regions_process
	movq	-16(%rbp), %rdi
	movq	%rax, 208(%rdi)
	movq	-16(%rbp), %rax
	cmpq	$0, 272(%rax)
	je	.LBB9_18
# BB#17:                                # %if.then.54
                                        #   in Loop: Header=BB9_13 Depth=1
	movq	-16(%rbp), %rax
	movq	272(%rax), %rdi
	callq	g_timer_stop
	movl	-164(%rbp), %ecx
	imull	-168(%rbp), %ecx
	movslq	%ecx, %rax
	movq	-16(%rbp), %rdi
	addq	280(%rdi), %rax
	movq	%rax, 280(%rdi)
.LBB9_18:                               # %if.end.59
                                        #   in Loop: Header=BB9_13 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, 208(%rax)
	jne	.LBB9_22
# BB#19:                                # %if.then.63
	movq	-16(%rbp), %rax
	cmpq	$0, 272(%rax)
	je	.LBB9_21
# BB#20:                                # %if.then.66
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rdx
	movq	280(%rcx), %xmm0        # xmm0 = mem[0],zero
	movaps	.LCPI9_2(%rip), %xmm1   # xmm1 = [1127219200,1160773632,0,0]
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movapd	.LCPI9_3(%rip), %xmm1   # xmm1 = [4.503600e+15,1.934281e+25]
	subpd	%xmm1, %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	addpd	%xmm0, %xmm1
	movq	-16(%rbp), %rcx
	movq	272(%rcx), %rdi
	movsd	%xmm1, -224(%rbp)       # 8-byte Spill
	movq	%rdx, -232(%rbp)        # 8-byte Spill
	callq	g_timer_elapsed
	movabsq	$.L.str.24, %rdi
	movsd	.LCPI9_1, %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-224(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movq	-232(%rbp), %rsi        # 8-byte Reload
	movb	$1, %al
	callq	g_printerr
.LBB9_21:                               # %if.end.74
	xorl	%edx, %edx
	movq	-16(%rbp), %rax
	movl	$0, 264(%rax)
	movq	-16(%rbp), %rax
	movl	image_map_signals, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
	movl	$0, -4(%rbp)
	jmp	.LBB9_26
.LBB9_22:                               # %if.end.76
                                        #   in Loop: Header=BB9_13 Depth=1
	jmp	.LBB9_23
.LBB9_23:                               # %for.inc
                                        #   in Loop: Header=BB9_13 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB9_13
.LBB9_24:                               # %for.end
	jmp	.LBB9_25
.LBB9_25:                               # %if.end.77
	xorl	%edx, %edx
	movq	-16(%rbp), %rax
	movl	image_map_signals, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
	movl	$1, -4(%rbp)
.LBB9_26:                               # %return
	movl	-4(%rbp), %eax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_image_map_do, .Lfunc_end9-gimp_image_map_do
	.cfi_endproc

	.globl	gimp_image_map_commit
	.align	16, 0x90
	.type	gimp_image_map_commit,@function
gimp_image_map_commit:                  # @gimp_image_map_commit
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_image_map_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_image_map_commit, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_21
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-8(%rbp), %rax
	cmpl	$0, 264(%rax)
	je	.LBB10_17
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movl	264(%rax), %edi
	callq	g_source_remove
	movq	-8(%rbp), %rcx
	movl	$0, 264(%rcx)
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB10_14:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi
	callq	gimp_image_map_do
	cmpl	$0, %eax
	je	.LBB10_16
# BB#15:                                # %while.body
                                        #   in Loop: Header=BB10_14 Depth=1
	jmp	.LBB10_14
.LBB10_16:                              # %while.end
	jmp	.LBB10_17
.LBB10_17:                              # %if.end.18
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	jne	.LBB10_19
# BB#18:                                # %if.then.23
	jmp	.LBB10_21
.LBB10_19:                              # %if.end.24
	movq	-8(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB10_21
# BB#20:                                # %if.then.26
	movq	-8(%rbp), %rax
	movl	56(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movq	-8(%rbp), %rax
	movl	60(%rax), %ecx
	movl	%ecx, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	tile_manager_width
	movl	%eax, -44(%rbp)
	movq	-8(%rbp), %rdi
	movq	48(%rdi), %rdi
	callq	tile_manager_height
	xorl	%ecx, %ecx
	movl	%eax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rsi
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %eax
	movl	-44(%rbp), %r8d
	movl	-48(%rbp), %r9d
	movq	-8(%rbp), %r10
	movq	48(%r10), %r10
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movl	%eax, %ecx
	movq	%r10, (%rsp)
	movl	$0, 8(%rsp)
	callq	gimp_drawable_push_undo
	movq	-8(%rbp), %rsi
	movq	48(%rsi), %rdi
	callq	tile_manager_unref
	movq	-8(%rbp), %rsi
	movq	$0, 48(%rsi)
.LBB10_21:                              # %if.end.39
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_image_map_commit, .Lfunc_end10-gimp_image_map_commit
	.cfi_endproc

	.globl	gimp_image_map_clear
	.align	16, 0x90
	.type	gimp_image_map_clear,@function
gimp_image_map_clear:                   # @gimp_image_map_clear
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
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_image_map_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_image_map_clear, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_19
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_image_map_cancel_any_idle_jobs
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	jne	.LBB11_14
# BB#13:                                # %if.then.15
	jmp	.LBB11_19
.LBB11_14:                              # %if.end.16
	movq	-8(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB11_19
# BB#15:                                # %if.then.18
	movq	-8(%rbp), %rax
	movl	56(%rax), %ecx
	movl	%ecx, -164(%rbp)
	movq	-8(%rbp), %rax
	movl	60(%rax), %ecx
	movl	%ecx, -168(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	tile_manager_width
	movl	%eax, -172(%rbp)
	movq	-8(%rbp), %rdi
	movq	48(%rdi), %rdi
	callq	tile_manager_height
	leaq	-96(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	%eax, -176(%rbp)
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rsi
	movl	-172(%rbp), %r8d
	movl	-176(%rbp), %r9d
	movl	%ecx, %edx
	movl	$0, (%rsp)
	callq	pixel_region_init
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rdi
	callq	gimp_drawable_get_tiles
	leaq	-160(%rbp), %rdi
	movl	$1, %ecx
	movl	-164(%rbp), %edx
	movl	-168(%rbp), %r8d
	movl	-172(%rbp), %r9d
	movl	-176(%rbp), %r10d
	movq	%rax, %rsi
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$1, (%rsp)
	callq	pixel_region_init
	movl	-108(%rbp), %ecx
	cmpl	-44(%rbp), %ecx
	je	.LBB11_17
# BB#16:                                # %if.then.34
	movabsq	$.L.str.22, %rdi
	movb	$0, %al
	callq	g_message
	jmp	.LBB11_18
.LBB11_17:                              # %if.else.35
	leaq	-96(%rbp), %rdi
	leaq	-160(%rbp), %rsi
	callq	copy_region
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rdi
	movl	-164(%rbp), %esi
	movl	-168(%rbp), %edx
	movl	-172(%rbp), %ecx
	movl	-176(%rbp), %r8d
	callq	gimp_drawable_update
.LBB11_18:                              # %if.end.37
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	callq	tile_manager_unref
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
.LBB11_19:                              # %if.end.40
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_image_map_clear, .Lfunc_end11-gimp_image_map_clear
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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
	movl	$32, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end12:
	.size	g_message, .Lfunc_end12-g_message
	.cfi_endproc

	.globl	gimp_image_map_abort
	.align	16, 0x90
	.type	gimp_image_map_abort,@function
gimp_image_map_abort:                   # @gimp_image_map_abort
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_image_map_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_image_map_abort, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_15
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_image_map_cancel_any_idle_jobs
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	jne	.LBB13_14
# BB#13:                                # %if.then.15
	jmp	.LBB13_15
.LBB13_14:                              # %if.end.16
	movq	-8(%rbp), %rdi
	callq	gimp_image_map_clear
.LBB13_15:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_image_map_abort, .Lfunc_end13-gimp_image_map_abort
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_map_class_init,@function
gimp_image_map_class_init:              # @gimp_image_map_class_init
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
	subq	$80, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$.L.str.23, %rdi
	movl	$1, %edx
	movl	$160, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	xorl	%r8d, %r8d
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-24(%rbp), %rax         # 8-byte Reload
	movl	%r8d, -28(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movq	%r9, -40(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-40(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movq	%r10, -48(%rbp)         # 8-byte Spill
	callq	g_signal_new
	movabsq	$gimp_image_map_finalize, %rsi
	movabsq	$gimp_image_map_dispose, %rdi
	movl	%eax, image_map_signals
	movq	-16(%rbp), %r8
	movq	%rdi, 40(%r8)
	movq	-16(%rbp), %rdi
	movq	%rsi, 48(%rdi)
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_image_map_class_init, .Lfunc_end14-gimp_image_map_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_map_dispose,@function
gimp_image_map_dispose:                 # @gimp_image_map_dispose
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_image_map_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB15_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_preview_thaw
.LBB15_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_image_map_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_image_map_dispose, .Lfunc_end15-gimp_image_map_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_map_finalize,@function
gimp_image_map_finalize:                # @gimp_image_map_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_image_map_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB16_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 40(%rax)
.LBB16_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB16_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	tile_manager_unref
	movq	-16(%rbp), %rax
	movq	$0, 48(%rax)
.LBB16_4:                               # %if.end.8
	movq	-16(%rbp), %rdi
	callq	gimp_image_map_cancel_any_idle_jobs
	movq	-16(%rbp), %rdi
	cmpq	$0, 216(%rdi)
	je	.LBB16_6
# BB#5:                                 # %if.then.10
	movq	-16(%rbp), %rax
	movq	216(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 216(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 224(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 232(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 248(%rax)
.LBB16_6:                               # %if.end.13
	movq	-16(%rbp), %rax
	cmpq	$0, 240(%rax)
	je	.LBB16_8
# BB#7:                                 # %if.then.15
	movq	-16(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 240(%rax)
.LBB16_8:                               # %if.end.18
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB16_10
# BB#9:                                 # %if.then.20
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_drawable_free_shadow_tiles
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
.LBB16_10:                              # %if.end.24
	movq	-16(%rbp), %rax
	cmpq	$0, 272(%rax)
	je	.LBB16_12
# BB#11:                                # %if.then.26
	movq	-16(%rbp), %rax
	movq	272(%rax), %rdi
	callq	g_timer_destroy
	movq	-16(%rbp), %rax
	movq	$0, 272(%rax)
.LBB16_12:                              # %if.end.29
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_image_map_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_image_map_finalize, .Lfunc_end16-gimp_image_map_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_map_get_image,@function
gimp_image_map_get_image:               # @gimp_image_map_get_image
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_image_map_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_pickable_get_image
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_image_map_get_image, .Lfunc_end17-gimp_image_map_get_image
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_map_get_image_type,@function
gimp_image_map_get_image_type:          # @gimp_image_map_get_image_type
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_image_map_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_pickable_get_image_type
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_image_map_get_image_type, .Lfunc_end18-gimp_image_map_get_image_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_map_get_bytes,@function
gimp_image_map_get_bytes:               # @gimp_image_map_get_bytes
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_image_map_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_pickable_get_bytes
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_image_map_get_bytes, .Lfunc_end19-gimp_image_map_get_bytes
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_map_get_tiles,@function
gimp_image_map_get_tiles:               # @gimp_image_map_get_tiles
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_image_map_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB20_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB20_3
.LBB20_2:                               # %if.else
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_pickable_get_tiles
	movq	%rax, -8(%rbp)
.LBB20_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_image_map_get_tiles, .Lfunc_end20-gimp_image_map_get_tiles
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_map_get_pixel_at,@function
gimp_image_map_get_pixel_at:            # @gimp_image_map_get_pixel_at
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	gimp_image_map_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	cmpl	$0, -20(%rbp)
	jl	.LBB21_12
# BB#1:                                 # %land.lhs.true
	movl	-20(%rbp), %eax
	movq	-48(%rbp), %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gimp_item_get_width
	movl	-84(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB21_12
# BB#2:                                 # %land.lhs.true.6
	cmpl	$0, -24(%rbp)
	jl	.LBB21_12
# BB#3:                                 # %land.lhs.true.8
	movl	-24(%rbp), %eax
	movq	-48(%rbp), %rdi
	movl	%eax, -88(%rbp)         # 4-byte Spill
	callq	gimp_item_get_height
	movl	-88(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jge	.LBB21_12
# BB#4:                                 # %if.then
	movq	-40(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB21_11
# BB#5:                                 # %if.then.11
	movq	-40(%rbp), %rax
	movl	56(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movq	-40(%rbp), %rax
	movl	60(%rax), %ecx
	movl	%ecx, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdi
	callq	tile_manager_width
	movl	%eax, -60(%rbp)
	movq	-40(%rbp), %rdi
	movq	48(%rdi), %rdi
	callq	tile_manager_height
	movl	%eax, -64(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.LBB21_10
# BB#6:                                 # %land.lhs.true.17
	movl	-20(%rbp), %eax
	movl	-52(%rbp), %ecx
	addl	-60(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB21_10
# BB#7:                                 # %land.lhs.true.19
	movl	-24(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jl	.LBB21_10
# BB#8:                                 # %land.lhs.true.21
	movl	-24(%rbp), %eax
	movl	-56(%rbp), %ecx
	addl	-64(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB21_10
# BB#9:                                 # %if.then.24
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdi
	movl	-20(%rbp), %ecx
	subl	-52(%rbp), %ecx
	movl	-24(%rbp), %edx
	subl	-56(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rcx
	callq	tile_manager_read_pixel_data_1
	movl	$1, -4(%rbp)
	jmp	.LBB21_13
.LBB21_10:                              # %if.end
	jmp	.LBB21_11
.LBB21_11:                              # %if.end.27
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_pickable_get_pixel_at
	movl	%eax, -4(%rbp)
	jmp	.LBB21_13
.LBB21_12:                              # %if.else
	movl	$0, -4(%rbp)
.LBB21_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_image_map_get_pixel_at, .Lfunc_end21-gimp_image_map_get_pixel_at
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_image_map_kill_any_idle_processors,@function
gimp_image_map_kill_any_idle_processors: # @gimp_image_map_kill_any_idle_processors
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 256(%rdi)
	je	.LBB22_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	256(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-8(%rbp), %rax
	movq	$0, 256(%rax)
.LBB22_2:                               # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 208(%rax)
	je	.LBB22_4
# BB#3:                                 # %if.then.4
	movq	-8(%rbp), %rax
	movq	208(%rax), %rdi
	callq	pixel_regions_process_stop
	movq	-8(%rbp), %rax
	movq	$0, 208(%rax)
.LBB22_4:                               # %if.end.7
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_image_map_kill_any_idle_processors, .Lfunc_end22-gimp_image_map_kill_any_idle_processors
	.cfi_endproc

	.type	gimp_image_map_get_type.g_define_type_id__volatile,@object # @gimp_image_map_get_type.g_define_type_id__volatile
	.local	gimp_image_map_get_type.g_define_type_id__volatile
	.comm	gimp_image_map_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpImageMap"
	.size	.L.str, 13

	.type	gimp_image_map_get_type.g_implement_interface_info,@object # @gimp_image_map_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_image_map_get_type.g_implement_interface_info:
	.quad	gimp_image_map_pickable_iface_init
	.quad	0
	.quad	0
	.size	gimp_image_map_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_image_map_new,@object # @__func__.gimp_image_map_new
.L__func__.gimp_image_map_new:
	.asciz	"gimp_image_map_new"
	.size	.L__func__.gimp_image_map_new, 19

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_DRAWABLE (drawable)"
	.size	.L.str.2, 28

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp_item_is_attached (GIMP_ITEM (drawable))"
	.size	.L.str.3, 45

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"operation == NULL || GEGL_IS_NODE (operation)"
	.size	.L.str.4, 46

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"operation != NULL || apply_func != NULL"
	.size	.L.str.5, 40

	.type	.L__func__.gimp_image_map_apply,@object # @__func__.gimp_image_map_apply
.L__func__.gimp_image_map_apply:
	.asciz	"gimp_image_map_apply"
	.size	.L__func__.gimp_image_map_apply, 21

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP_IS_IMAGE_MAP (image_map)"
	.size	.L.str.6, 30

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"dont-cache"
	.size	.L.str.7, 11

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"operation"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp:tilemanager-source"
	.size	.L.str.9, 24

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gegl:translate"
	.size	.L.str.10, 15

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp:tilemanager-sink"
	.size	.L.str.11, 22

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gegl-operation"
	.size	.L.str.12, 15

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"data-written"
	.size	.L.str.13, 13

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"input"
	.size	.L.str.14, 6

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"output"
	.size	.L.str.15, 7

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gegl:over"
	.size	.L.str.16, 10

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"aux"
	.size	.L.str.17, 4

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"tile-manager"
	.size	.L.str.18, 13

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"linear"
	.size	.L.str.19, 7

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"x"
	.size	.L.str.20, 2

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"y"
	.size	.L.str.21, 2

	.type	.L__func__.gimp_image_map_commit,@object # @__func__.gimp_image_map_commit
.L__func__.gimp_image_map_commit:
	.asciz	"gimp_image_map_commit"
	.size	.L__func__.gimp_image_map_commit, 22

	.type	.L__func__.gimp_image_map_clear,@object # @__func__.gimp_image_map_clear
.L__func__.gimp_image_map_clear:
	.asciz	"gimp_image_map_clear"
	.size	.L__func__.gimp_image_map_clear, 21

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"image depth change, unable to restore original image"
	.size	.L.str.22, 53

	.type	.L__func__.gimp_image_map_abort,@object # @__func__.gimp_image_map_abort
.L__func__.gimp_image_map_abort:
	.asciz	"gimp_image_map_abort"
	.size	.L__func__.gimp_image_map_abort, 21

	.type	gimp_image_map_parent_class,@object # @gimp_image_map_parent_class
	.local	gimp_image_map_parent_class
	.comm	gimp_image_map_parent_class,8,8
	.type	GimpImageMap_private_offset,@object # @GimpImageMap_private_offset
	.local	GimpImageMap_private_offset
	.comm	GimpImageMap_private_offset,4,4
	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"flush"
	.size	.L.str.23, 6

	.type	image_map_signals,@object # @image_map_signals
	.local	image_map_signals
	.comm	image_map_signals,4,4
	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"%s: %g MPixels/sec\n"
	.size	.L.str.24, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
