	.text
	.file	"gimpimage-pick-color.bc"
	.globl	gimp_image_pick_color
	.align	16, 0x90
	.type	gimp_image_pick_color,@function
gimp_image_pick_color:                  # @gimp_image_pick_color
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
	subq	$176, %rsp
	movq	32(%rbp), %rax
	movq	24(%rbp), %r10
	movq	16(%rbp), %r11
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movsd	%xmm0, -48(%rbp)
	movq	%r11, -56(%rbp)
	movq	%r10, -64(%rbp)
	movq	%rax, -72(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -100(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_pick_color, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_43
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB0_22
# BB#14:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_drawable_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB0_16
# BB#15:                                # %if.then.21
	movl	$0, -124(%rbp)
	jmp	.LBB0_21
.LBB0_16:                               # %if.else.22
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_19
# BB#17:                                # %land.lhs.true.25
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB0_19
# BB#18:                                # %if.then.29
	movl	$1, -124(%rbp)
	jmp	.LBB0_20
.LBB0_19:                               # %if.else.30
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB0_20:                               # %if.end.32
	jmp	.LBB0_21
.LBB0_21:                               # %if.end.33
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB0_23
.LBB0_22:                               # %if.then.36
	jmp	.LBB0_24
.LBB0_23:                               # %if.else.37
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_pick_color, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_43
.LBB0_24:                               # %if.end.38
	jmp	.LBB0_25
.LBB0_25:                               # %do.end.39
	jmp	.LBB0_26
.LBB0_26:                               # %do.body.40
	cmpq	$0, -24(%rbp)
	je	.LBB0_28
# BB#27:                                # %lor.lhs.false.42
	movq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	cmpq	-16(%rbp), %rax
	jne	.LBB0_29
.LBB0_28:                               # %if.then.47
	jmp	.LBB0_30
.LBB0_29:                               # %if.else.48
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_pick_color, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB0_43
.LBB0_30:                               # %if.end.49
	jmp	.LBB0_31
.LBB0_31:                               # %do.end.50
	cmpl	$0, -36(%rbp)
	jne	.LBB0_37
# BB#32:                                # %if.then.52
	cmpq	$0, -24(%rbp)
	jne	.LBB0_34
# BB#33:                                # %if.then.54
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -24(%rbp)
.LBB0_34:                               # %if.end.56
	cmpq	$0, -24(%rbp)
	jne	.LBB0_36
# BB#35:                                # %if.then.58
	movl	$0, -4(%rbp)
	jmp	.LBB0_43
.LBB0_36:                               # %if.end.59
	jmp	.LBB0_37
.LBB0_37:                               # %if.end.60
	cmpl	$0, -36(%rbp)
	je	.LBB0_39
# BB#38:                                # %if.then.62
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_projection
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -80(%rbp)
	jmp	.LBB0_40
.LBB0_39:                               # %if.else.66
	movq	-24(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-132(%rbp), %rsi
	leaq	-136(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movl	-132(%rbp), %ecx
	movl	-28(%rbp), %r8d
	subl	%ecx, %r8d
	movl	%r8d, -28(%rbp)
	movl	-136(%rbp), %ecx
	movl	-32(%rbp), %r8d
	subl	%ecx, %r8d
	movl	%r8d, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -80(%rbp)
.LBB0_40:                               # %if.end.74
	cmpq	$0, -56(%rbp)
	je	.LBB0_42
# BB#41:                                # %if.then.76
	movq	-80(%rbp), %rdi
	callq	gimp_pickable_get_image_type
	movq	-56(%rbp), %rdi
	movl	%eax, (%rdi)
.LBB0_42:                               # %if.end.78
	movq	-80(%rbp), %rdi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	movl	-40(%rbp), %ecx
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-64(%rbp), %r8
	movq	-72(%rbp), %r9
	callq	gimp_pickable_pick_color
	movl	%eax, -4(%rbp)
.LBB0_43:                               # %return
	movl	-4(%rbp), %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_image_pick_color, .Lfunc_end0-gimp_image_pick_color
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_image_pick_color,@object # @__func__.gimp_image_pick_color
.L__func__.gimp_image_pick_color:
	.asciz	"gimp_image_pick_color"
	.size	.L__func__.gimp_image_pick_color, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"drawable == NULL || GIMP_IS_DRAWABLE (drawable)"
	.size	.L.str.2, 48

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"drawable == NULL || gimp_item_get_image (GIMP_ITEM (drawable)) == image"
	.size	.L.str.3, 72


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
