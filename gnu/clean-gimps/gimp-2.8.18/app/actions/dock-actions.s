	.text
	.file	"dock-actions.bc"
	.globl	dock_actions_setup
	.align	16, 0x90
	.type	dock_actions_setup,@function
dock_actions_setup:                     # @dock_actions_setup
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
	movabsq	$dock_actions, %rdx
	movl	$3, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_add_actions
	movabsq	$.L.str, %rsi
	movabsq	$dock_toggle_actions, %rdx
	movl	$2, %ecx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_add_toggle_actions
	movabsq	$.L.str.1, %rsi
	movq	-8(%rbp), %rdi
	callq	window_actions_setup
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	dock_actions_setup, .Lfunc_end0-dock_actions_setup
	.cfi_endproc

	.globl	dock_actions_update
	.align	16, 0x90
	.type	dock_actions_update,@function
dock_actions_update:                    # @dock_actions_update
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_toplevel
	movq	%rax, -32(%rbp)
.LBB1_2:                                # %if.end
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_dock_window_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB1_4
# BB#3:                                 # %if.then.4
	movl	$0, -52(%rbp)
	jmp	.LBB1_9
.LBB1_4:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_7
# BB#5:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB1_7
# BB#6:                                 # %if.then.7
	movl	$1, -52(%rbp)
	jmp	.LBB1_8
.LBB1_7:                                # %if.else.8
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB1_8:                                # %if.end.10
	jmp	.LBB1_9
.LBB1_9:                                # %if.end.11
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB1_14
# BB#10:                                # %if.then.13
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_dock_window_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_dock_window_has_toolbox
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	je	.LBB1_12
# BB#11:                                # %if.then.21
	movabsq	$.L.str.2, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_visible
	movabsq	$.L.str.3, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_visible
	movq	-8(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	callq	gimp_dock_window_get_show_image_menu
	movabsq	$.L.str.2, %rsi
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_active
	movq	-8(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	callq	gimp_dock_window_get_auto_follow_active
	movabsq	$.L.str.3, %rsi
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_active
	jmp	.LBB1_13
.LBB1_12:                               # %if.else.27
	movabsq	$.L.str.2, %rsi
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_visible
	movabsq	$.L.str.3, %rsi
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_visible
.LBB1_13:                               # %if.end.28
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	window_actions_update
	jmp	.LBB1_24
.LBB1_14:                               # %if.else.29
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_image_window_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB1_16
# BB#15:                                # %if.then.38
	movl	$0, -92(%rbp)
	jmp	.LBB1_21
.LBB1_16:                               # %if.else.39
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_19
# BB#17:                                # %land.lhs.true.42
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB1_19
# BB#18:                                # %if.then.47
	movl	$1, -92(%rbp)
	jmp	.LBB1_20
.LBB1_19:                               # %if.else.48
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB1_20:                               # %if.end.50
	jmp	.LBB1_21
.LBB1_21:                               # %if.end.51
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB1_23
# BB#22:                                # %if.then.54
	movabsq	$.L.str.2, %rsi
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_visible
	movabsq	$.L.str.3, %rsi
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_visible
.LBB1_23:                               # %if.end.55
	jmp	.LBB1_24
.LBB1_24:                               # %if.end.56
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	dock_actions_update, .Lfunc_end1-dock_actions_update
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"dock-action"
	.size	.L.str, 12

	.type	dock_actions,@object    # @dock_actions
	.section	.rodata,"a",@progbits
	.align	16
dock_actions:
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	.L.str.6
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.1
	.quad	.L.str.7
	.quad	.L.str.8
	.quad	.L.str.9
	.quad	.L.str.10
	.quad	0
	.quad	window_close_cmd_callback
	.quad	.L.str.11
	.quad	.L.str.12
	.quad	0
	.quad	.L.str.13
	.quad	0
	.quad	.L.str.14
	.quad	window_open_display_cmd_callback
	.quad	0
	.size	dock_actions, 168

	.type	dock_toggle_actions,@object # @dock_toggle_actions
	.align	16
dock_toggle_actions:
	.quad	.L.str.2
	.quad	0
	.quad	.L.str.15
	.quad	0
	.quad	0
	.quad	dock_toggle_image_menu_cmd_callback
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.16
	.quad	.L.str.3
	.quad	0
	.quad	.L.str.17
	.quad	0
	.quad	0
	.quad	dock_toggle_auto_cmd_callback
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.18
	.size	dock_toggle_actions, 128

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"gimp-dock-change-screen"
	.size	.L.str.1, 24

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"dock-show-image-menu"
	.size	.L.str.2, 21

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"dock-auto-follow-active"
	.size	.L.str.3, 24

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"dock-move-to-screen-menu"
	.size	.L.str.4, 25

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-move-to-screen"
	.size	.L.str.5, 20

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"M_ove to Screen"
	.size	.L.str.6, 16

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"dock-close"
	.size	.L.str.7, 11

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gtk-close"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Close Dock"
	.size	.L.str.9, 11

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.zero	1
	.size	.L.str.10, 1

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp-dock-close"
	.size	.L.str.11, 16

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"dock-open-display"
	.size	.L.str.12, 18

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"_Open Display..."
	.size	.L.str.13, 17

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Connect to another display"
	.size	.L.str.14, 27

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"_Show Image Selection"
	.size	.L.str.15, 22

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimp-dock-image-menu"
	.size	.L.str.16, 21

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Auto _Follow Active Image"
	.size	.L.str.17, 26

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp-dock-auto-button"
	.size	.L.str.18, 22


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
