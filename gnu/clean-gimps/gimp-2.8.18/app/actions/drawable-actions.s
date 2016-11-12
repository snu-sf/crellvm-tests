	.text
	.file	"drawable-actions.bc"
	.globl	drawable_actions_setup
	.align	16, 0x90
	.type	drawable_actions_setup,@function
drawable_actions_setup:                 # @drawable_actions_setup
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
	subq	$16, %rsp
	movabsq	$.L.str, %rsi
	movabsq	$drawable_actions, %rdx
	movl	$4, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_add_actions
	movabsq	$.L.str, %rsi
	movabsq	$drawable_toggle_actions, %rdx
	movl	$3, %ecx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_add_toggle_actions
	movabsq	$.L.str, %rsi
	movabsq	$drawable_flip_actions, %rdx
	movl	$2, %ecx
	movabsq	$drawable_flip_cmd_callback, %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-16(%rbp), %r8          # 8-byte Reload
	callq	gimp_action_group_add_enum_actions
	movabsq	$.L.str, %rsi
	movabsq	$drawable_rotate_actions, %rdx
	movl	$3, %ecx
	movabsq	$drawable_rotate_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	movabsq	$.L.str.1, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_always_show_image
	movabsq	$.L.str.2, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_always_show_image
	movabsq	$.L.str.3, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_always_show_image
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	drawable_actions_setup, .Lfunc_end0-drawable_actions_setup
	.cfi_endproc

	.globl	drawable_actions_update
	.align	16, 0x90
	.type	drawable_actions_update,@function
drawable_actions_update:                # @drawable_actions_update
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
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -64(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB1_20
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB1_19
# BB#2:                                 # %if.then.3
	movq	-32(%rbp), %rdi
	callq	gimp_drawable_type
	movb	$1, %cl
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	movb	%cl, -105(%rbp)         # 1-byte Spill
	je	.LBB1_4
# BB#3:                                 # %lor.rhs
	cmpl	$1, -68(%rbp)
	sete	%al
	movb	%al, -105(%rbp)         # 1-byte Spill
.LBB1_4:                                # %lor.end
	movb	-105(%rbp), %al         # 1-byte Reload
	movb	$1, %cl
	andb	$1, %al
	movzbl	%al, %edx
	movl	%edx, -36(%rbp)
	cmpl	$4, -68(%rbp)
	movb	%cl, -106(%rbp)         # 1-byte Spill
	je	.LBB1_6
# BB#5:                                 # %lor.rhs.7
	cmpl	$5, -68(%rbp)
	sete	%al
	movb	%al, -106(%rbp)         # 1-byte Spill
.LBB1_6:                                # %lor.end.9
	movb	-106(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -40(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, -88(%rbp)
	callq	gimp_layer_mask_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB1_8
# BB#7:                                 # %if.then.13
	movl	$0, -100(%rbp)
	jmp	.LBB1_13
.LBB1_8:                                # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_11
# BB#9:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB1_11
# BB#10:                                # %if.then.17
	movl	$1, -100(%rbp)
	jmp	.LBB1_12
.LBB1_11:                               # %if.else.18
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB1_12:                               # %if.end
	jmp	.LBB1_13
.LBB1_13:                               # %if.end.20
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB1_15
# BB#14:                                # %if.then.22
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_layer_mask_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_layer_mask_get_layer
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -80(%rbp)
	jmp	.LBB1_16
.LBB1_15:                               # %if.else.28
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -80(%rbp)
.LBB1_16:                               # %if.end.31
	movq	-80(%rbp), %rdi
	callq	gimp_item_get_visible
	movl	%eax, -44(%rbp)
	movq	-80(%rbp), %rdi
	callq	gimp_item_get_linked
	movl	%eax, -48(%rbp)
	movq	-80(%rbp), %rdi
	callq	gimp_item_get_lock_content
	movl	%eax, -52(%rbp)
	movq	-80(%rbp), %rdi
	callq	gimp_item_can_lock_content
	movl	%eax, -56(%rbp)
	movq	-80(%rbp), %rdi
	callq	gimp_item_is_content_locked
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -60(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	je	.LBB1_18
# BB#17:                                # %if.then.42
	movl	$1, -64(%rbp)
.LBB1_18:                               # %if.end.43
	jmp	.LBB1_19
.LBB1_19:                               # %if.end.44
	jmp	.LBB1_20
.LBB1_20:                               # %if.end.45
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdi
	cmpl	$0, -60(%rbp)
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movb	%cl, -153(%rbp)         # 1-byte Spill
	je	.LBB1_23
# BB#21:                                # %land.lhs.true.47
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -64(%rbp)
	movb	%cl, -153(%rbp)         # 1-byte Spill
	jne	.LBB1_23
# BB#22:                                # %land.rhs
	cmpl	$0, -40(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -153(%rbp)         # 1-byte Spill
.LBB1_23:                               # %land.end
	movb	-153(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.4, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-152(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpl	$0, -60(%rbp)
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movb	%al, -169(%rbp)         # 1-byte Spill
	je	.LBB1_26
# BB#24:                                # %land.lhs.true.54
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -64(%rbp)
	movb	%cl, -169(%rbp)         # 1-byte Spill
	jne	.LBB1_26
# BB#25:                                # %land.rhs.56
	cmpl	$0, -40(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -169(%rbp)         # 1-byte Spill
.LBB1_26:                               # %land.end.60
	movb	-169(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.5, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-168(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpl	$0, -60(%rbp)
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movb	%al, -185(%rbp)         # 1-byte Spill
	je	.LBB1_29
# BB#27:                                # %land.lhs.true.65
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -64(%rbp)
	movb	%cl, -185(%rbp)         # 1-byte Spill
	jne	.LBB1_29
# BB#28:                                # %land.rhs.67
	cmpl	$0, -36(%rbp)
	setne	%al
	movb	%al, -185(%rbp)         # 1-byte Spill
.LBB1_29:                               # %land.end.69
	movb	-185(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.6, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-184(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpl	$0, -60(%rbp)
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movb	%al, -201(%rbp)         # 1-byte Spill
	je	.LBB1_31
# BB#30:                                # %land.rhs.74
	cmpl	$0, -64(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -201(%rbp)         # 1-byte Spill
.LBB1_31:                               # %land.end.78
	movb	-201(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.7, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-200(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.8, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.9, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.10, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -56(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.8, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -44(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_active
	movabsq	$.L.str.9, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -48(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_active
	movabsq	$.L.str.10, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -52(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_active
	movabsq	$.L.str.11, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -60(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.12, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -60(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.1, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -60(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.2, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -60(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.3, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -60(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	drawable_actions_update, .Lfunc_end1-drawable_actions_update
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"drawable-action"
	.size	.L.str, 16

	.type	drawable_actions,@object # @drawable_actions
	.section	.rodata,"a",@progbits
	.align	16
drawable_actions:
	.quad	.L.str.4
	.quad	0
	.quad	.L.str.13
	.quad	0
	.quad	.L.str.14
	.quad	drawable_equalize_cmd_callback
	.quad	.L.str.15
	.quad	.L.str.5
	.quad	.L.str.16
	.quad	.L.str.17
	.quad	0
	.quad	.L.str.18
	.quad	drawable_invert_cmd_callback
	.quad	.L.str.19
	.quad	.L.str.6
	.quad	0
	.quad	.L.str.20
	.quad	0
	.quad	.L.str.21
	.quad	drawable_levels_stretch_cmd_callback
	.quad	.L.str.22
	.quad	.L.str.7
	.quad	0
	.quad	.L.str.23
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	drawable_offset_cmd_callback
	.quad	.L.str.26
	.size	drawable_actions, 224

	.type	drawable_toggle_actions,@object # @drawable_toggle_actions
	.align	16
drawable_toggle_actions:
	.quad	.L.str.8
	.quad	.L.str.27
	.quad	.L.str.28
	.quad	0
	.quad	.L.str.29
	.quad	drawable_visible_cmd_callback
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.30
	.quad	.L.str.9
	.quad	.L.str.31
	.quad	.L.str.32
	.quad	0
	.quad	.L.str.33
	.quad	drawable_linked_cmd_callback
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.34
	.quad	.L.str.10
	.quad	0
	.quad	.L.str.35
	.quad	0
	.quad	.L.str.36
	.quad	drawable_lock_content_cmd_callback
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.size	drawable_toggle_actions, 192

	.type	drawable_flip_actions,@object # @drawable_flip_actions
	.align	16
drawable_flip_actions:
	.quad	.L.str.11
	.quad	.L.str.37
	.quad	.L.str.38
	.quad	0
	.quad	.L.str.39
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.40
	.quad	.L.str.12
	.quad	.L.str.41
	.quad	.L.str.42
	.quad	0
	.quad	.L.str.43
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.44
	.size	drawable_flip_actions, 112

	.type	drawable_rotate_actions,@object # @drawable_rotate_actions
	.align	16
drawable_rotate_actions:
	.quad	.L.str.1
	.quad	.L.str.45
	.quad	.L.str.46
	.quad	0
	.quad	.L.str.47
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.48
	.quad	.L.str.2
	.quad	.L.str.49
	.quad	.L.str.50
	.quad	0
	.quad	.L.str.51
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.52
	.quad	.L.str.3
	.quad	.L.str.53
	.quad	.L.str.54
	.quad	0
	.quad	.L.str.55
	.long	2                       # 0x2
	.long	0                       # 0x0
	.quad	.L.str.56
	.size	drawable_rotate_actions, 168

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"drawable-rotate-90"
	.size	.L.str.1, 19

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"drawable-rotate-180"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"drawable-rotate-270"
	.size	.L.str.3, 20

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"drawable-equalize"
	.size	.L.str.4, 18

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"drawable-invert"
	.size	.L.str.5, 16

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"drawable-levels-stretch"
	.size	.L.str.6, 24

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"drawable-offset"
	.size	.L.str.7, 16

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"drawable-visible"
	.size	.L.str.8, 17

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"drawable-linked"
	.size	.L.str.9, 16

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"drawable-lock-content"
	.size	.L.str.10, 22

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"drawable-flip-horizontal"
	.size	.L.str.11, 25

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"drawable-flip-vertical"
	.size	.L.str.12, 23

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"_Equalize"
	.size	.L.str.13, 10

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Automatic contrast enhancement"
	.size	.L.str.14, 31

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimp-layer-equalize"
	.size	.L.str.15, 20

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimp-invert"
	.size	.L.str.16, 12

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"In_vert"
	.size	.L.str.17, 8

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Invert the colors"
	.size	.L.str.18, 18

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp-layer-invert"
	.size	.L.str.19, 18

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"_White Balance"
	.size	.L.str.20, 15

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Automatic white balance correction"
	.size	.L.str.21, 35

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gimp-layer-white-balance"
	.size	.L.str.22, 25

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"_Offset..."
	.size	.L.str.23, 11

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"<primary><shift>O"
	.size	.L.str.24, 18

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Shift the pixels, optionally wrapping them at the borders"
	.size	.L.str.25, 58

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"gimp-layer-offset"
	.size	.L.str.26, 18

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gimp-visible"
	.size	.L.str.27, 13

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"_Visible"
	.size	.L.str.28, 9

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Toggle visibility"
	.size	.L.str.29, 18

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"gimp-layer-visible"
	.size	.L.str.30, 19

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gimp-linked"
	.size	.L.str.31, 12

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"_Linked"
	.size	.L.str.32, 8

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Toggle the linked state"
	.size	.L.str.33, 24

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"gimp-layer-linked"
	.size	.L.str.34, 18

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"L_ock pixels"
	.size	.L.str.35, 13

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Keep the pixels on this drawable from being modified"
	.size	.L.str.36, 53

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"gimp-flip-horizontal"
	.size	.L.str.37, 21

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Flip _Horizontally"
	.size	.L.str.38, 19

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Flip horizontally"
	.size	.L.str.39, 18

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"gimp-layer-flip-horizontal"
	.size	.L.str.40, 27

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"gimp-flip-vertical"
	.size	.L.str.41, 19

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Flip _Vertically"
	.size	.L.str.42, 17

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Flip vertically"
	.size	.L.str.43, 16

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"gimp-layer-flip-vertical"
	.size	.L.str.44, 25

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"gimp-rotate-90"
	.size	.L.str.45, 15

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Rotate 90\302\260 _clockwise"
	.size	.L.str.46, 23

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Rotate 90 degrees to the right"
	.size	.L.str.47, 31

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"gimp-layer-rotate-90"
	.size	.L.str.48, 21

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"gimp-rotate-180"
	.size	.L.str.49, 16

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Rotate _180\302\260"
	.size	.L.str.50, 14

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Turn upside-down"
	.size	.L.str.51, 17

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"gimp-layer-rotate-180"
	.size	.L.str.52, 22

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"gimp-rotate-270"
	.size	.L.str.53, 16

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Rotate 90\302\260 counter-clock_wise"
	.size	.L.str.54, 31

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Rotate 90 degrees to the left"
	.size	.L.str.55, 30

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"gimp-layer-rotate-270"
	.size	.L.str.56, 22


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
