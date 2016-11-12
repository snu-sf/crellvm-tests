	.text
	.file	"gimpdrawable-operation.bc"
	.globl	gimp_drawable_apply_operation
	.align	16, 0x90
	.type	gimp_drawable_apply_operation,@function
gimp_drawable_apply_operation:          # @gimp_drawable_apply_operation
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
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_apply_operation, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_51
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB0_15
# BB#14:                                # %if.then.16
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.17
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_apply_operation, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_51
.LBB0_16:                               # %if.end.18
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.19
	jmp	.LBB0_18
.LBB0_18:                               # %do.body.20
	cmpq	$0, -16(%rbp)
	je	.LBB0_27
# BB#19:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB0_21
# BB#20:                                # %if.then.30
	movl	$0, -100(%rbp)
	jmp	.LBB0_26
.LBB0_21:                               # %if.else.31
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_24
# BB#22:                                # %land.lhs.true.34
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB0_24
# BB#23:                                # %if.then.38
	movl	$1, -100(%rbp)
	jmp	.LBB0_25
.LBB0_24:                               # %if.else.39
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB0_25:                               # %if.end.41
	jmp	.LBB0_26
.LBB0_26:                               # %if.end.42
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB0_28
.LBB0_27:                               # %if.then.45
	jmp	.LBB0_29
.LBB0_28:                               # %if.else.46
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_apply_operation, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_51
.LBB0_29:                               # %if.end.47
	jmp	.LBB0_30
.LBB0_30:                               # %do.end.48
	jmp	.LBB0_31
.LBB0_31:                               # %do.body.49
	cmpq	$0, -24(%rbp)
	je	.LBB0_33
# BB#32:                                # %if.then.51
	jmp	.LBB0_34
.LBB0_33:                               # %if.else.52
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_apply_operation, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_51
.LBB0_34:                               # %if.end.53
	jmp	.LBB0_35
.LBB0_35:                               # %do.end.54
	jmp	.LBB0_36
.LBB0_36:                               # %do.body.55
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gegl_node_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB0_38
# BB#37:                                # %if.then.64
	movl	$0, -124(%rbp)
	jmp	.LBB0_43
.LBB0_38:                               # %if.else.65
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_41
# BB#39:                                # %land.lhs.true.68
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB0_41
# BB#40:                                # %if.then.72
	movl	$1, -124(%rbp)
	jmp	.LBB0_42
.LBB0_41:                               # %if.else.73
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB0_42:                               # %if.end.75
	jmp	.LBB0_43
.LBB0_43:                               # %if.end.76
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB0_45
# BB#44:                                # %if.then.79
	jmp	.LBB0_46
.LBB0_45:                               # %if.else.80
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_apply_operation, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_51
.LBB0_46:                               # %if.end.81
	jmp	.LBB0_47
.LBB0_47:                               # %do.end.82
	movq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$4, %rdi
	movq	%rsi, %rcx
	addq	$8, %rcx
	movq	%rsi, %rdx
	addq	$12, %rdx
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-160(%rbp), %r8         # 8-byte Reload
	callq	gimp_item_mask_intersect
	cmpl	$0, %eax
	jne	.LBB0_49
# BB#48:                                # %if.then.87
	jmp	.LBB0_51
.LBB0_49:                               # %if.end.88
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-36(%rbp), %r8d
	movq	-8(%rbp), %rax
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%r8d, -172(%rbp)        # 4-byte Spill
	movq	%rsi, -184(%rbp)        # 8-byte Spill
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_shadow_tiles
	leaq	-56(%rbp), %rcx
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	-184(%rbp), %rsi        # 8-byte Reload
	movq	-192(%rbp), %rdx        # 8-byte Reload
	movq	-200(%rbp), %r9         # 8-byte Reload
	movq	%rcx, -208(%rbp)        # 8-byte Spill
	movq	%r9, %rcx
	movl	-172(%rbp), %r8d        # 4-byte Reload
	movq	%rax, %r9
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	gimp_drawable_apply_operation_private
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	gimp_drawable_merge_shadow_tiles
	movq	-8(%rbp), %rdi
	callq	gimp_drawable_free_shadow_tiles
	movq	-8(%rbp), %rdi
	movl	-56(%rbp), %esi
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-44(%rbp), %r8d
	callq	gimp_drawable_update
	cmpq	$0, -16(%rbp)
	je	.LBB0_51
# BB#50:                                # %if.then.95
	movq	-16(%rbp), %rdi
	callq	gimp_progress_end
.LBB0_51:                               # %if.end.96
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_drawable_apply_operation, .Lfunc_end0-gimp_drawable_apply_operation
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_drawable_apply_operation_private,@function
gimp_drawable_apply_operation_private:  # @gimp_drawable_apply_operation_private
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
	subq	$160, %rsp
	movq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	movq	%rax, -56(%rbp)
	callq	gegl_node_new
	movabsq	$.L.str.7, %rsi
	movl	$1, %edx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	movq	-64(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	gimp_drawable_get_tiles
	movabsq	$.L.str.8, %rsi
	movabsq	$.L.str.9, %rdx
	movabsq	$.L.str.10, %rcx
	movabsq	$.L.str.11, %r9
	xorl	%r8d, %r8d
	movl	%r8d, %edi
	movl	-36(%rbp), %r8d
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movl	%r8d, -116(%rbp)        # 4-byte Spill
	movq	%rax, %r8
	movl	-116(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gegl_node_new_child
	movabsq	$.L.str.8, %rsi
	movabsq	$.L.str.12, %rdx
	movabsq	$.L.str.10, %rcx
	movabsq	$.L.str.11, %r9
	xorl	%r11d, %r11d
	movl	%r11d, %edi
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	-48(%rbp), %r8
	movl	-36(%rbp), %r11d
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%r11d, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	gegl_node_new_child
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gegl_node_add_child
	xorl	%r11d, %r11d
	movl	%r11d, %ecx
	movq	-72(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-80(%rbp), %rdx
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	gegl_node_link_many
	movq	-80(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gegl_node_new_processor
	movq	%rax, -88(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB1_2
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_progress_start
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB1_2:                                # %if.end
	jmp	.LBB1_3
.LBB1_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	leaq	-96(%rbp), %rsi
	movq	-88(%rbp), %rdi
	callq	gegl_processor_work
	cmpl	$0, %eax
	je	.LBB1_7
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB1_3 Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB1_6
# BB#5:                                 # %if.then.10
                                        #   in Loop: Header=BB1_3 Depth=1
	movq	-16(%rbp), %rdi
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_progress_set_value
.LBB1_6:                                # %if.end.11
                                        #   in Loop: Header=BB1_3 Depth=1
	jmp	.LBB1_3
.LBB1_7:                                # %while.end
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_drawable_apply_operation_private, .Lfunc_end1-gimp_drawable_apply_operation_private
	.cfi_endproc

	.globl	gimp_drawable_apply_operation_to_tiles
	.align	16, 0x90
	.type	gimp_drawable_apply_operation_to_tiles,@function
gimp_drawable_apply_operation_to_tiles: # @gimp_drawable_apply_operation_to_tiles
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_apply_operation_to_tiles, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_54
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	jmp	.LBB2_13
.LBB2_13:                               # %do.body.11
	movq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB2_15
# BB#14:                                # %if.then.16
	jmp	.LBB2_16
.LBB2_15:                               # %if.else.17
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_apply_operation_to_tiles, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_54
.LBB2_16:                               # %if.end.18
	jmp	.LBB2_17
.LBB2_17:                               # %do.end.19
	jmp	.LBB2_18
.LBB2_18:                               # %do.body.20
	cmpq	$0, -16(%rbp)
	je	.LBB2_27
# BB#19:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB2_21
# BB#20:                                # %if.then.30
	movl	$0, -108(%rbp)
	jmp	.LBB2_26
.LBB2_21:                               # %if.else.31
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_24
# BB#22:                                # %land.lhs.true.34
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB2_24
# BB#23:                                # %if.then.38
	movl	$1, -108(%rbp)
	jmp	.LBB2_25
.LBB2_24:                               # %if.else.39
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB2_25:                               # %if.end.41
	jmp	.LBB2_26
.LBB2_26:                               # %if.end.42
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB2_28
.LBB2_27:                               # %if.then.45
	jmp	.LBB2_29
.LBB2_28:                               # %if.else.46
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_apply_operation_to_tiles, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_54
.LBB2_29:                               # %if.end.47
	jmp	.LBB2_30
.LBB2_30:                               # %do.end.48
	jmp	.LBB2_31
.LBB2_31:                               # %do.body.49
	cmpq	$0, -24(%rbp)
	je	.LBB2_33
# BB#32:                                # %if.then.51
	jmp	.LBB2_34
.LBB2_33:                               # %if.else.52
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_apply_operation_to_tiles, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_54
.LBB2_34:                               # %if.end.53
	jmp	.LBB2_35
.LBB2_35:                               # %do.end.54
	jmp	.LBB2_36
.LBB2_36:                               # %do.body.55
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gegl_node_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB2_38
# BB#37:                                # %if.then.64
	movl	$0, -132(%rbp)
	jmp	.LBB2_43
.LBB2_38:                               # %if.else.65
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_41
# BB#39:                                # %land.lhs.true.68
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB2_41
# BB#40:                                # %if.then.72
	movl	$1, -132(%rbp)
	jmp	.LBB2_42
.LBB2_41:                               # %if.else.73
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB2_42:                               # %if.end.75
	jmp	.LBB2_43
.LBB2_43:                               # %if.end.76
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB2_45
# BB#44:                                # %if.then.79
	jmp	.LBB2_46
.LBB2_45:                               # %if.else.80
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_apply_operation_to_tiles, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_54
.LBB2_46:                               # %if.end.81
	jmp	.LBB2_47
.LBB2_47:                               # %do.end.82
	jmp	.LBB2_48
.LBB2_48:                               # %do.body.83
	cmpq	$0, -48(%rbp)
	je	.LBB2_50
# BB#49:                                # %if.then.85
	jmp	.LBB2_51
.LBB2_50:                               # %if.else.86
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_drawable_apply_operation_to_tiles, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_54
.LBB2_51:                               # %if.end.87
	jmp	.LBB2_52
.LBB2_52:                               # %do.end.88
	movl	$0, -64(%rbp)
	movl	$0, -60(%rbp)
	movq	-48(%rbp), %rdi
	callq	tile_manager_width
	movl	%eax, -56(%rbp)
	movq	-48(%rbp), %rdi
	callq	tile_manager_height
	leaq	-64(%rbp), %rdi
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %r8
	movl	-36(%rbp), %eax
	movq	-48(%rbp), %r9
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%r8, %rcx
	movl	%eax, %r8d
	movq	-152(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	gimp_drawable_apply_operation_private
	cmpq	$0, -16(%rbp)
	je	.LBB2_54
# BB#53:                                # %if.then.92
	movq	-16(%rbp), %rdi
	callq	gimp_progress_end
.LBB2_54:                               # %if.end.93
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_drawable_apply_operation_to_tiles, .Lfunc_end2-gimp_drawable_apply_operation_to_tiles
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_drawable_apply_operation,@object # @__func__.gimp_drawable_apply_operation
.L__func__.gimp_drawable_apply_operation:
	.asciz	"gimp_drawable_apply_operation"
	.size	.L__func__.gimp_drawable_apply_operation, 30

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_DRAWABLE (drawable)"
	.size	.L.str.1, 28

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp_item_is_attached (GIMP_ITEM (drawable))"
	.size	.L.str.2, 45

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"progress == NULL || GIMP_IS_PROGRESS (progress)"
	.size	.L.str.3, 48

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"undo_desc != NULL"
	.size	.L.str.4, 18

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"GEGL_IS_NODE (operation)"
	.size	.L.str.5, 25

	.type	.L__func__.gimp_drawable_apply_operation_to_tiles,@object # @__func__.gimp_drawable_apply_operation_to_tiles
.L__func__.gimp_drawable_apply_operation_to_tiles:
	.asciz	"gimp_drawable_apply_operation_to_tiles"
	.size	.L__func__.gimp_drawable_apply_operation_to_tiles, 39

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"new_tiles != NULL"
	.size	.L.str.6, 18

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
	.asciz	"tile-manager"
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"linear"
	.size	.L.str.11, 7

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp:tilemanager-sink"
	.size	.L.str.12, 22


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
