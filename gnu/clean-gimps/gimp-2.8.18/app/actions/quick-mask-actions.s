	.text
	.file	"quick-mask-actions.bc"
	.globl	quick_mask_actions_setup
	.align	16, 0x90
	.type	quick_mask_actions_setup,@function
quick_mask_actions_setup:               # @quick_mask_actions_setup
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
	subq	$32, %rsp
	movabsq	$.L.str, %rsi
	movabsq	$quick_mask_actions, %rdx
	movl	$2, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_add_actions
	movabsq	$.L.str, %rsi
	movabsq	$quick_mask_toggle_actions, %rdx
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_add_toggle_actions
	movabsq	$.L.str, %rsi
	movabsq	$quick_mask_invert_actions, %rdx
	movl	$2, %ecx
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	movabsq	$quick_mask_invert_cmd_callback, %rdi
	movq	-8(%rbp), %r10
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	-16(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	gimp_action_group_add_radio_actions
	movq	%rax, -24(%rbp)         # 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	quick_mask_actions_setup, .Lfunc_end0-quick_mask_actions_setup
	.cfi_endproc

	.globl	quick_mask_actions_update
	.align	16, 0x90
	.type	quick_mask_actions_update,@function
quick_mask_actions_update:              # @quick_mask_actions_update
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_quick_mask_state
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_quick_mask_inverted
	leaq	-64(%rbp), %rsi
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_quick_mask_color
.LBB1_2:                                # %if.end
	movabsq	$.L.str.1, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.1, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -28(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_active
	movabsq	$.L.str.2, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.3, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	cmpl	$0, -32(%rbp)
	je	.LBB1_4
# BB#3:                                 # %if.then.10
	movabsq	$.L.str.2, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_active
	jmp	.LBB1_5
.LBB1_4:                                # %if.else
	movabsq	$.L.str.3, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_active
.LBB1_5:                                # %if.end.11
	movabsq	$.L.str.4, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	cmpq	$0, -24(%rbp)
	je	.LBB1_7
# BB#6:                                 # %if.then.15
	movabsq	$.L.str.4, %rsi
	leaq	-64(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_color
.LBB1_7:                                # %if.end.16
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	quick_mask_actions_update, .Lfunc_end1-quick_mask_actions_update
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"quick-mask-action"
	.size	.L.str, 18

	.type	quick_mask_actions,@object # @quick_mask_actions
	.section	.rodata,"a",@progbits
	.align	16
quick_mask_actions:
	.quad	.L.str.5
	.quad	0
	.quad	.L.str.6
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.7
	.quad	.L.str.4
	.quad	0
	.quad	.L.str.8
	.quad	0
	.quad	0
	.quad	quick_mask_configure_cmd_callback
	.quad	.L.str.9
	.size	quick_mask_actions, 112

	.type	quick_mask_toggle_actions,@object # @quick_mask_toggle_actions
	.align	16
quick_mask_toggle_actions:
	.quad	.L.str.1
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	.L.str.12
	.quad	.L.str.13
	.quad	quick_mask_toggle_cmd_callback
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.14
	.size	quick_mask_toggle_actions, 64

	.type	quick_mask_invert_actions,@object # @quick_mask_invert_actions
	.align	16
quick_mask_invert_actions:
	.quad	.L.str.2
	.quad	0
	.quad	.L.str.15
	.quad	0
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.16
	.quad	.L.str.3
	.quad	0
	.quad	.L.str.17
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.16
	.size	quick_mask_invert_actions, 112

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"quick-mask-toggle"
	.size	.L.str.1, 18

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"quick-mask-invert-on"
	.size	.L.str.2, 21

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"quick-mask-invert-off"
	.size	.L.str.3, 22

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"quick-mask-configure"
	.size	.L.str.4, 21

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"quick-mask-popup"
	.size	.L.str.5, 17

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Quick Mask Menu"
	.size	.L.str.6, 16

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-quick-mask"
	.size	.L.str.7, 16

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"_Configure Color and Opacity..."
	.size	.L.str.8, 32

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-quick-mask-edit"
	.size	.L.str.9, 21

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-quick-mask-on"
	.size	.L.str.10, 19

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Toggle _Quick Mask"
	.size	.L.str.11, 19

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"<shift>Q"
	.size	.L.str.12, 9

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Toggle Quick Mask on/off"
	.size	.L.str.13, 25

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp-quick-mask-toggle"
	.size	.L.str.14, 23

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Mask _Selected Areas"
	.size	.L.str.15, 21

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimp-quick-mask-invert"
	.size	.L.str.16, 23

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Mask _Unselected Areas"
	.size	.L.str.17, 23


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
