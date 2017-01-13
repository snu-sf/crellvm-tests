	.text
	.file	"gimplayer-floating-sel.bc"
	.globl	floating_sel_attach
	.align	16, 0x90
	.type	floating_sel_attach,@function
floating_sel_attach:                    # @floating_sel_attach
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.floating_sel_attach, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_44
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB0_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB0_20
.LBB0_15:                               # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB0_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB0_19
.LBB0_18:                               # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB0_19:                               # %if.end.31
	jmp	.LBB0_20
.LBB0_20:                               # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB0_22
# BB#21:                                # %if.then.35
	jmp	.LBB0_23
.LBB0_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.floating_sel_attach, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_44
.LBB0_23:                               # %if.end.37
	jmp	.LBB0_24
.LBB0_24:                               # %do.end.38
	jmp	.LBB0_25
.LBB0_25:                               # %do.body.39
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_attached
	cmpl	$0, %eax
	je	.LBB0_27
# BB#26:                                # %if.then.44
	jmp	.LBB0_28
.LBB0_27:                               # %if.else.45
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.floating_sel_attach, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_44
.LBB0_28:                               # %if.end.46
	jmp	.LBB0_29
.LBB0_29:                               # %do.end.47
	jmp	.LBB0_30
.LBB0_30:                               # %do.body.48
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB0_32
# BB#31:                                # %if.then.52
	jmp	.LBB0_33
.LBB0_32:                               # %if.else.53
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.floating_sel_attach, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_44
.LBB0_33:                               # %if.end.54
	jmp	.LBB0_34
.LBB0_34:                               # %do.end.55
	jmp	.LBB0_35
.LBB0_35:                               # %do.body.56
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	-16(%rbp), %rsi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	-120(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB0_37
# BB#36:                                # %if.then.64
	jmp	.LBB0_38
.LBB0_37:                               # %if.else.65
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.floating_sel_attach, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_44
.LBB0_38:                               # %if.end.66
	jmp	.LBB0_39
.LBB0_39:                               # %do.end.67
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_floating_selection
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB0_43
# BB#40:                                # %if.then.73
	movq	-32(%rbp), %rdi
	callq	floating_sel_anchor
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	cmpq	%rax, %rdi
	jne	.LBB0_42
# BB#41:                                # %if.then.75
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -16(%rbp)
.LBB0_42:                               # %if.end.77
	jmp	.LBB0_43
.LBB0_43:                               # %if.end.78
	movl	$1, %esi
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_layer_set_lock_alpha
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_layer_set_floating_sel_drawable
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	gimp_image_add_layer
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB0_44:                               # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	floating_sel_attach, .Lfunc_end0-floating_sel_attach
	.cfi_endproc

	.globl	floating_sel_anchor
	.align	16, 0x90
	.type	floating_sel_anchor,@function
floating_sel_anchor:                    # @floating_sel_anchor
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.floating_sel_anchor, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_18
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	jmp	.LBB1_13
.LBB1_13:                               # %do.body.11
	movq	-8(%rbp), %rdi
	callq	gimp_layer_is_floating_sel
	cmpl	$0, %eax
	je	.LBB1_15
# BB#14:                                # %if.then.14
	jmp	.LBB1_16
.LBB1_15:                               # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.floating_sel_anchor, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_18
.LBB1_16:                               # %if.end.16
	jmp	.LBB1_17
.LBB1_17:                               # %do.end.17
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.7, %rsi
	movl	$10, %ecx
	movl	%ecx, %edx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	g_dpgettext
	movl	$28, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	movq	-8(%rbp), %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	floating_sel_composite
	movl	$1, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	gimp_image_remove_layer
	movq	-16(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movq	-16(%rbp), %rdi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	gimp_image_get_mask
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_invalidate_boundary
.LBB1_18:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	floating_sel_anchor, .Lfunc_end1-floating_sel_anchor
	.cfi_endproc

	.align	16, 0x90
	.type	floating_sel_composite,@function
floating_sel_composite:                 # @floating_sel_composite
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$424, %rsp              # imm = 0x1A8
.Ltmp9:
	.cfi_offset %rbx, -56
.Ltmp10:
	.cfi_offset %r12, -48
.Ltmp11:
	.cfi_offset %r13, -40
.Ltmp12:
	.cfi_offset %r14, -32
.Ltmp13:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -108(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -108(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.floating_sel_composite, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_33
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	jmp	.LBB2_13
.LBB2_13:                               # %do.body.11
	movq	-48(%rbp), %rdi
	callq	gimp_layer_is_floating_sel
	cmpl	$0, %eax
	je	.LBB2_15
# BB#14:                                # %if.then.14
	jmp	.LBB2_16
.LBB2_15:                               # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.floating_sel_composite, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_33
.LBB2_16:                               # %if.end.16
	jmp	.LBB2_17
.LBB2_17:                               # %do.end.17
	movq	-48(%rbp), %rdi
	callq	gimp_layer_get_floating_sel_drawable
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movq	-56(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-68(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movq	-48(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_visible
	cmpl	$0, %eax
	je	.LBB2_33
# BB#18:                                # %land.lhs.true.27
	movl	-60(%rbp), %edi
	movl	-64(%rbp), %esi
	movq	-48(%rbp), %rax
	movl	%edi, -236(%rbp)        # 4-byte Spill
	movl	%esi, -240(%rbp)        # 4-byte Spill
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-48(%rbp), %rsi
	movl	%eax, -252(%rbp)        # 4-byte Spill
	movq	%rsi, -264(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	-68(%rbp), %r8d
	movl	-72(%rbp), %r9d
	movq	-56(%rbp), %rsi
	movl	%eax, -268(%rbp)        # 4-byte Spill
	movl	%r8d, -272(%rbp)        # 4-byte Spill
	movl	%r9d, -276(%rbp)        # 4-byte Spill
	movq	%rsi, -288(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movq	-56(%rbp), %rsi
	movl	%eax, -292(%rbp)        # 4-byte Spill
	movq	%rsi, -304(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	leaq	-76(%rbp), %rsi
	leaq	-80(%rbp), %rdi
	leaq	-84(%rbp), %rcx
	leaq	-88(%rbp), %rdx
	movl	-236(%rbp), %r8d        # 4-byte Reload
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movl	%r8d, %edi
	movl	-240(%rbp), %r9d        # 4-byte Reload
	movq	%rsi, -320(%rbp)        # 8-byte Spill
	movl	%r9d, %esi
	movl	-252(%rbp), %r10d       # 4-byte Reload
	movq	%rdx, -328(%rbp)        # 8-byte Spill
	movl	%r10d, %edx
	movl	-268(%rbp), %r11d       # 4-byte Reload
	movq	%rcx, -336(%rbp)        # 8-byte Spill
	movl	%r11d, %ecx
	movl	-272(%rbp), %r8d        # 4-byte Reload
	movl	-276(%rbp), %r9d        # 4-byte Reload
	movl	-292(%rbp), %ebx        # 4-byte Reload
	movl	%ebx, (%rsp)
	movl	%eax, 8(%rsp)
	movq	-320(%rbp), %r14        # 8-byte Reload
	movq	%r14, 16(%rsp)
	movq	-312(%rbp), %r15        # 8-byte Reload
	movq	%r15, 24(%rsp)
	movq	-336(%rbp), %r12        # 8-byte Reload
	movq	%r12, 32(%rsp)
	movq	-328(%rbp), %r13        # 8-byte Reload
	movq	%r13, 40(%rsp)
	callq	gimp_rectangle_intersect
	cmpl	$0, %eax
	je	.LBB2_33
# BB#19:                                # %if.then.42
	movl	$0, -180(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	leaq	-176(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	-76(%rbp), %edx
	subl	-60(%rbp), %edx
	movl	-80(%rbp), %r8d
	subl	-64(%rbp), %r8d
	movl	-84(%rbp), %r9d
	movl	-88(%rbp), %r10d
	movq	%rax, %rsi
	movl	%ecx, -348(%rbp)        # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	callq	pixel_region_init
	movq	-56(%rbp), %rax
	movq	%rax, -192(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -200(%rbp)
	cmpq	$0, -192(%rbp)
	jne	.LBB2_21
# BB#20:                                # %if.then.57
	movl	$0, -204(%rbp)
	jmp	.LBB2_26
.LBB2_21:                               # %if.else.58
	movq	-192(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_24
# BB#22:                                # %land.lhs.true.61
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-200(%rbp), %rax
	jne	.LBB2_24
# BB#23:                                # %if.then.65
	movl	$1, -204(%rbp)
	jmp	.LBB2_25
.LBB2_24:                               # %if.else.66
	movq	-192(%rbp), %rdi
	movq	-200(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -204(%rbp)
.LBB2_25:                               # %if.end.68
	jmp	.LBB2_26
.LBB2_26:                               # %if.end.69
	movl	-204(%rbp), %eax
	movl	%eax, -208(%rbp)
	cmpl	$0, -208(%rbp)
	je	.LBB2_30
# BB#27:                                # %if.then.72
	movq	-56(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_layer_get_lock_alpha
	movl	%eax, -180(%rbp)
	cmpl	$0, -180(%rbp)
	je	.LBB2_29
# BB#28:                                # %if.then.77
	movq	-56(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gimp_layer_set_lock_alpha
.LBB2_29:                               # %if.end.80
	jmp	.LBB2_30
.LBB2_30:                               # %if.end.81
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_layer_get_opacity
	movq	-48(%rbp), %rdi
	movsd	%xmm0, -384(%rbp)       # 8-byte Spill
	callq	gimp_layer_get_mode
	leaq	-176(%rbp), %rsi
	movl	$1, %edx
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movl	-76(%rbp), %ecx
	subl	-68(%rbp), %ecx
	movl	-80(%rbp), %r8d
	subl	-72(%rbp), %r8d
	movq	-376(%rbp), %r9         # 8-byte Reload
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	-392(%rbp), %r10        # 8-byte Reload
	movl	%ecx, -396(%rbp)        # 4-byte Spill
	movq	%r10, %rcx
	movsd	-384(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	%r8d, -400(%rbp)        # 4-byte Spill
	movl	%eax, %r8d
	movq	%r10, %r9
	movq	$0, (%rsp)
	movl	-396(%rbp), %eax        # 4-byte Reload
	movl	%eax, 8(%rsp)
	movl	-400(%rbp), %eax        # 4-byte Reload
	movl	%eax, 16(%rsp)
	callq	gimp_drawable_apply_region
	cmpl	$0, -180(%rbp)
	je	.LBB2_32
# BB#31:                                # %if.then.87
	movq	-56(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	gimp_layer_set_lock_alpha
.LBB2_32:                               # %if.end.90
	jmp	.LBB2_33
.LBB2_33:                               # %if.end.91
	addq	$424, %rsp              # imm = 0x1A8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	floating_sel_composite, .Lfunc_end2-floating_sel_composite
	.cfi_endproc

	.globl	floating_sel_to_layer
	.align	16, 0x90
	.type	floating_sel_to_layer,@function
floating_sel_to_layer:                  # @floating_sel_to_layer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.floating_sel_to_layer, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_33
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-16(%rbp), %rdi
	callq	gimp_layer_is_floating_sel
	cmpl	$0, %eax
	je	.LBB3_15
# BB#14:                                # %if.then.14
	jmp	.LBB3_16
.LBB3_15:                               # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.floating_sel_to_layer, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_33
.LBB3_16:                               # %if.end.16
	jmp	.LBB3_17
.LBB3_17:                               # %do.end.17
	jmp	.LBB3_18
.LBB3_18:                               # %do.body.18
	cmpq	$0, -24(%rbp)
	je	.LBB3_20
# BB#19:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB3_21
.LBB3_20:                               # %if.then.21
	jmp	.LBB3_22
.LBB3_21:                               # %if.else.22
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.floating_sel_to_layer, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_33
.LBB3_22:                               # %if.end.23
	jmp	.LBB3_23
.LBB3_23:                               # %do.end.24
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_layer_get_floating_sel_drawable
	movq	%rax, -72(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB3_25
# BB#24:                                # %if.then.37
	movl	$0, -84(%rbp)
	jmp	.LBB3_30
.LBB3_25:                               # %if.else.38
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_28
# BB#26:                                # %land.lhs.true.41
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB3_28
# BB#27:                                # %if.then.45
	movl	$1, -84(%rbp)
	jmp	.LBB3_29
.LBB3_28:                               # %if.else.46
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB3_29:                               # %if.end.48
	jmp	.LBB3_30
.LBB3_30:                               # %if.end.49
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB3_32
# BB#31:                                # %if.then.52
	movq	-24(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_error_quark
	movabsq	$.L.str.9, %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movq	%rax, %rcx
	callq	g_set_error_literal
	movl	$0, -4(%rbp)
	jmp	.LBB3_33
.LBB3_32:                               # %if.end.55
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.10, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-40(%rbp), %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movl	$26, %esi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	gimp_image_undo_push_fs_to_layer
	movq	-16(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_floating_sel_drawable
	movq	%rax, %rdi
	callq	gimp_drawable_detach_floating_sel
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_layer_set_floating_sel_drawable
	movl	$1, %r8d
	movq	-32(%rbp), %rdi
	movl	%r8d, %esi
	movl	%r8d, %edx
	callq	gimp_item_set_visible
	xorl	%esi, %esi
	movl	$1, %edx
	movq	-16(%rbp), %rdi
	callq	gimp_layer_set_lock_alpha
	movq	-40(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movq	-16(%rbp), %rcx
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_object_name_changed
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_item_get_width
	movq	-32(%rbp), %rdi
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	xorl	%edx, %edx
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movl	%edx, %esi
	movl	-172(%rbp), %ecx        # 4-byte Reload
	movl	%eax, %r8d
	callq	gimp_drawable_update
	movl	$1, -4(%rbp)
.LBB3_33:                               # %return
	movl	-4(%rbp), %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	floating_sel_to_layer, .Lfunc_end3-floating_sel_to_layer
	.cfi_endproc

	.globl	floating_sel_activate_drawable
	.align	16, 0x90
	.type	floating_sel_activate_drawable,@function
floating_sel_activate_drawable:         # @floating_sel_activate_drawable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.floating_sel_activate_drawable, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_37
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	movq	-8(%rbp), %rdi
	callq	gimp_layer_is_floating_sel
	cmpl	$0, %eax
	je	.LBB4_15
# BB#14:                                # %if.then.14
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.floating_sel_activate_drawable, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_37
.LBB4_16:                               # %if.end.16
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.17
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_layer_get_floating_sel_drawable
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_layer_mask_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB4_19
# BB#18:                                # %if.then.30
	movl	$0, -68(%rbp)
	jmp	.LBB4_24
.LBB4_19:                               # %if.else.31
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_22
# BB#20:                                # %land.lhs.true.34
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB4_22
# BB#21:                                # %if.then.38
	movl	$1, -68(%rbp)
	jmp	.LBB4_23
.LBB4_22:                               # %if.else.39
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB4_23:                               # %if.end.41
	jmp	.LBB4_24
.LBB4_24:                               # %if.end.42
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB4_26
# BB#25:                                # %if.then.45
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_layer_mask_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_layer_mask_get_layer
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_set_active_layer
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB4_37
.LBB4_26:                               # %if.else.51
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB4_28
# BB#27:                                # %if.then.60
	movl	$0, -100(%rbp)
	jmp	.LBB4_33
.LBB4_28:                               # %if.else.61
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_31
# BB#29:                                # %land.lhs.true.64
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB4_31
# BB#30:                                # %if.then.68
	movl	$1, -100(%rbp)
	jmp	.LBB4_32
.LBB4_31:                               # %if.else.69
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB4_32:                               # %if.end.71
	jmp	.LBB4_33
.LBB4_33:                               # %if.end.72
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB4_35
# BB#34:                                # %if.then.75
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_set_active_channel
	movq	%rax, -160(%rbp)        # 8-byte Spill
	jmp	.LBB4_36
.LBB4_35:                               # %if.else.79
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_set_active_layer
	movq	%rax, -184(%rbp)        # 8-byte Spill
.LBB4_36:                               # %if.end.83
	jmp	.LBB4_37
.LBB4_37:                               # %if.end.84
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	floating_sel_activate_drawable, .Lfunc_end4-floating_sel_activate_drawable
	.cfi_endproc

	.globl	floating_sel_boundary
	.align	16, 0x90
	.type	floating_sel_boundary,@function
floating_sel_boundary:                  # @floating_sel_boundary
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp22:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -116(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -116(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.floating_sel_boundary, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_34
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	movq	-16(%rbp), %rdi
	callq	gimp_layer_is_floating_sel
	cmpl	$0, %eax
	je	.LBB5_15
# BB#14:                                # %if.then.14
	jmp	.LBB5_16
.LBB5_15:                               # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.floating_sel_boundary, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_34
.LBB5_16:                               # %if.end.16
	jmp	.LBB5_17
.LBB5_17:                               # %do.end.17
	jmp	.LBB5_18
.LBB5_18:                               # %do.body.18
	cmpq	$0, -24(%rbp)
	je	.LBB5_20
# BB#19:                                # %if.then.20
	jmp	.LBB5_21
.LBB5_20:                               # %if.else.21
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.floating_sel_boundary, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_34
.LBB5_21:                               # %if.end.22
	jmp	.LBB5_22
.LBB5_22:                               # %do.end.23
	movq	-16(%rbp), %rax
	cmpl	$0, 80(%rax)
	jne	.LBB5_33
# BB#23:                                # %if.then.25
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	%eax, -124(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	%eax, -128(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-132(%rbp), %rsi
	leaq	-136(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movq	-16(%rbp), %rax
	cmpq	$0, 88(%rax)
	je	.LBB5_25
# BB#24:                                # %if.then.40
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB5_25:                               # %if.end.43
	movq	-16(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB5_31
# BB#26:                                # %if.then.48
	movq	-16(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_get_tiles
	leaq	-88(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	-124(%rbp), %r8d
	movl	-128(%rbp), %r9d
	movq	%rax, %rsi
	movl	%ecx, %edx
	movl	$0, (%rsp)
	callq	pixel_region_init
	leaq	-88(%rbp), %rdi
	xorl	%ecx, %ecx
	movl	$127, %edx
	movl	-124(%rbp), %r8d
	movl	-128(%rbp), %r9d
	movq	-16(%rbp), %rax
	addq	$72, %rax
	addq	$24, %rax
	movl	%ecx, %esi
	movl	%edx, -180(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	$127, (%rsp)
	movq	%rax, 8(%rsp)
	callq	boundary_find
	movq	-16(%rbp), %rdi
	movq	%rax, 88(%rdi)
	movl	$0, -92(%rbp)
.LBB5_27:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-92(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	96(%rcx), %eax
	jge	.LBB5_30
# BB#28:                                # %for.body
                                        #   in Loop: Header=BB5_27 Depth=1
	movl	-132(%rbp), %eax
	movslq	-92(%rbp), %rcx
	movq	-16(%rbp), %rdx
	imulq	$20, %rcx, %rcx
	addq	88(%rdx), %rcx
	addl	(%rcx), %eax
	movl	%eax, (%rcx)
	movl	-136(%rbp), %eax
	movslq	-92(%rbp), %rcx
	movq	-16(%rbp), %rdx
	imulq	$20, %rcx, %rcx
	addq	88(%rdx), %rcx
	addl	4(%rcx), %eax
	movl	%eax, 4(%rcx)
	movl	-132(%rbp), %eax
	movslq	-92(%rbp), %rcx
	movq	-16(%rbp), %rdx
	imulq	$20, %rcx, %rcx
	addq	88(%rdx), %rcx
	addl	8(%rcx), %eax
	movl	%eax, 8(%rcx)
	movl	-136(%rbp), %eax
	movslq	-92(%rbp), %rcx
	movq	-16(%rbp), %rdx
	imulq	$20, %rcx, %rcx
	addq	88(%rdx), %rcx
	addl	12(%rcx), %eax
	movl	%eax, 12(%rcx)
# BB#29:                                # %for.inc
                                        #   in Loop: Header=BB5_27 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB5_27
.LBB5_30:                               # %for.end
	jmp	.LBB5_32
.LBB5_31:                               # %if.else.76
	movl	$4, %eax
	movl	%eax, %edi
	movl	$20, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movl	$4, 96(%rcx)
	callq	g_malloc0_n
	movq	-16(%rbp), %rcx
	movq	%rax, 88(%rcx)
	movl	-132(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movl	%edx, (%rax)
	movl	-136(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movl	%edx, 4(%rax)
	movl	-132(%rbp), %edx
	addl	-124(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movl	%edx, 8(%rax)
	movl	-136(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movl	%edx, 12(%rax)
	movl	-132(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movl	%edx, 20(%rax)
	movl	-136(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movl	%edx, 24(%rax)
	movl	-132(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movl	%edx, 28(%rax)
	movl	-136(%rbp), %edx
	addl	-128(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movl	%edx, 32(%rax)
	movl	-132(%rbp), %edx
	addl	-124(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movl	%edx, 40(%rax)
	movl	-136(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movl	%edx, 44(%rax)
	movl	-132(%rbp), %edx
	addl	-124(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movl	%edx, 48(%rax)
	movl	-136(%rbp), %edx
	addl	-128(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movl	%edx, 52(%rax)
	movl	-132(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movl	%edx, 60(%rax)
	movl	-136(%rbp), %edx
	addl	-128(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movl	%edx, 64(%rax)
	movl	-132(%rbp), %edx
	addl	-124(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movl	%edx, 68(%rax)
	movl	-136(%rbp), %edx
	addl	-128(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movl	%edx, 72(%rax)
.LBB5_32:                               # %if.end.154
	movq	-16(%rbp), %rax
	movl	$1, 80(%rax)
.LBB5_33:                               # %if.end.157
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB5_34:                               # %return
	movq	-8(%rbp), %rax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	floating_sel_boundary, .Lfunc_end5-floating_sel_boundary
	.cfi_endproc

	.globl	floating_sel_invalidate
	.align	16, 0x90
	.type	floating_sel_invalidate,@function
floating_sel_invalidate:                # @floating_sel_invalidate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.floating_sel_invalidate, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_18
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	movq	-8(%rbp), %rdi
	callq	gimp_layer_is_floating_sel
	cmpl	$0, %eax
	je	.LBB6_15
# BB#14:                                # %if.then.14
	jmp	.LBB6_16
.LBB6_15:                               # %if.else.15
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.floating_sel_invalidate, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_18
.LBB6_16:                               # %if.end.16
	jmp	.LBB6_17
.LBB6_17:                               # %do.end.17
	movq	-8(%rbp), %rdi
	callq	gimp_layer_get_floating_sel_drawable
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_invalidate_preview
	movq	-8(%rbp), %rax
	movl	$0, 80(%rax)
.LBB6_18:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	floating_sel_invalidate, .Lfunc_end6-floating_sel_invalidate
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.floating_sel_attach,@object # @__func__.floating_sel_attach
.L__func__.floating_sel_attach:
	.asciz	"floating_sel_attach"
	.size	.L__func__.floating_sel_attach, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_LAYER (layer)"
	.size	.L.str.1, 22

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
	.asciz	"drawable != GIMP_DRAWABLE (layer)"
	.size	.L.str.4, 34

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp_item_get_image (GIMP_ITEM (layer)) == gimp_item_get_image (GIMP_ITEM (drawable))"
	.size	.L.str.5, 86

	.type	.L__func__.floating_sel_anchor,@object # @__func__.floating_sel_anchor
.L__func__.floating_sel_anchor:
	.asciz	"floating_sel_anchor"
	.size	.L__func__.floating_sel_anchor, 20

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp_layer_is_floating_sel (layer)"
	.size	.L.str.6, 35

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"undo-type\004Anchor Floating Selection"
	.size	.L.str.7, 36

	.type	.L__func__.floating_sel_to_layer,@object # @__func__.floating_sel_to_layer
.L__func__.floating_sel_to_layer:
	.asciz	"floating_sel_to_layer"
	.size	.L__func__.floating_sel_to_layer, 22

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"error == NULL || *error == NULL"
	.size	.L.str.8, 32

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Cannot create a new layer from the floating selection because it belongs to a layer mask or channel."
	.size	.L.str.9, 101

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"undo-type\004Floating Selection to Layer"
	.size	.L.str.10, 38

	.type	.L__func__.floating_sel_activate_drawable,@object # @__func__.floating_sel_activate_drawable
.L__func__.floating_sel_activate_drawable:
	.asciz	"floating_sel_activate_drawable"
	.size	.L__func__.floating_sel_activate_drawable, 31

	.type	.L__func__.floating_sel_boundary,@object # @__func__.floating_sel_boundary
.L__func__.floating_sel_boundary:
	.asciz	"floating_sel_boundary"
	.size	.L__func__.floating_sel_boundary, 22

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"n_segs != NULL"
	.size	.L.str.11, 15

	.type	.L__func__.floating_sel_invalidate,@object # @__func__.floating_sel_invalidate
.L__func__.floating_sel_invalidate:
	.asciz	"floating_sel_invalidate"
	.size	.L__func__.floating_sel_invalidate, 24

	.type	.L__func__.floating_sel_composite,@object # @__func__.floating_sel_composite
.L__func__.floating_sel_composite:
	.asciz	"floating_sel_composite"
	.size	.L__func__.floating_sel_composite, 23


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
