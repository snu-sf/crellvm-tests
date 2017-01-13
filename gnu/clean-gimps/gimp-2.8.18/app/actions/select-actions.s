	.text
	.file	"select-actions.bc"
	.globl	select_actions_setup
	.align	16, 0x90
	.type	select_actions_setup,@function
select_actions_setup:                   # @select_actions_setup
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
	movabsq	$select_actions, %rdx
	movl	$14, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_add_actions
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	select_actions_setup, .Lfunc_end0-select_actions_setup
	.cfi_endproc

	.globl	select_actions_update
	.align	16, 0x90
	.type	select_actions_update,@function
select_actions_update:                  # @select_actions_update
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
	subq	$224, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB1_6
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB1_5
# BB#2:                                 # %if.then.3
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_content_locked
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -44(%rbp)
	movq	-32(%rbp), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_viewable_get_children
	cmpq	$0, %rax
	je	.LBB1_4
# BB#3:                                 # %if.then.12
	movl	$1, -48(%rbp)
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %if.end.13
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_floating_selection
	cmpq	$0, %rax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -36(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, %rdi
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -40(%rbp)
.LBB1_6:                                # %if.end.20
	movabsq	$.L.str.1, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	xorl	%edx, %edx
	movb	%dl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movb	%al, -73(%rbp)          # 1-byte Spill
	je	.LBB1_8
# BB#7:                                 # %land.rhs
	cmpl	$0, -40(%rbp)
	setne	%al
	movb	%al, -73(%rbp)          # 1-byte Spill
.LBB1_8:                                # %land.end
	movb	-73(%rbp), %al          # 1-byte Reload
	movabsq	$.L.str.2, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.3, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpl	$0, -44(%rbp)
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movb	%al, -89(%rbp)          # 1-byte Spill
	je	.LBB1_11
# BB#9:                                 # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -48(%rbp)
	movb	%cl, -89(%rbp)          # 1-byte Spill
	jne	.LBB1_11
# BB#10:                                # %land.rhs.31
	cmpl	$0, -40(%rbp)
	setne	%al
	movb	%al, -89(%rbp)          # 1-byte Spill
.LBB1_11:                               # %land.end.33
	movb	-89(%rbp), %al          # 1-byte Reload
	movabsq	$.L.str.4, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movb	%al, -105(%rbp)         # 1-byte Spill
	je	.LBB1_13
# BB#12:                                # %land.rhs.38
	cmpl	$0, -40(%rbp)
	setne	%al
	movb	%al, -105(%rbp)         # 1-byte Spill
.LBB1_13:                               # %land.end.40
	movb	-105(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.5, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movb	%al, -121(%rbp)         # 1-byte Spill
	je	.LBB1_15
# BB#14:                                # %land.rhs.45
	cmpl	$0, -40(%rbp)
	setne	%al
	movb	%al, -121(%rbp)         # 1-byte Spill
.LBB1_15:                               # %land.end.47
	movb	-121(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.6, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movb	%al, -137(%rbp)         # 1-byte Spill
	je	.LBB1_17
# BB#16:                                # %land.rhs.52
	cmpl	$0, -40(%rbp)
	setne	%al
	movb	%al, -137(%rbp)         # 1-byte Spill
.LBB1_17:                               # %land.end.54
	movb	-137(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.7, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movb	%al, -153(%rbp)         # 1-byte Spill
	je	.LBB1_19
# BB#18:                                # %land.rhs.59
	cmpl	$0, -40(%rbp)
	setne	%al
	movb	%al, -153(%rbp)         # 1-byte Spill
.LBB1_19:                               # %land.end.61
	movb	-153(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.8, %rsi
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
	cmpq	$0, -32(%rbp)
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movb	%al, -169(%rbp)         # 1-byte Spill
	je	.LBB1_21
# BB#20:                                # %land.rhs.66
	cmpl	$0, -40(%rbp)
	setne	%al
	movb	%al, -169(%rbp)         # 1-byte Spill
.LBB1_21:                               # %land.end.68
	movb	-169(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.9, %rsi
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
	cmpq	$0, -32(%rbp)
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movb	%al, -185(%rbp)         # 1-byte Spill
	je	.LBB1_23
# BB#22:                                # %land.rhs.73
	cmpl	$0, -36(%rbp)
	setne	%al
	xorb	$-1, %al
	movb	%al, -185(%rbp)         # 1-byte Spill
.LBB1_23:                               # %land.end.77
	movb	-185(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.10, %rsi
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
	cmpl	$0, -44(%rbp)
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	movb	%al, -201(%rbp)         # 1-byte Spill
	je	.LBB1_26
# BB#24:                                # %land.lhs.true.82
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -48(%rbp)
	movb	%cl, -201(%rbp)         # 1-byte Spill
	jne	.LBB1_26
# BB#25:                                # %land.rhs.84
	cmpl	$0, -40(%rbp)
	setne	%al
	movb	%al, -201(%rbp)         # 1-byte Spill
.LBB1_26:                               # %land.end.86
	movb	-201(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.11, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-200(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpl	$0, -44(%rbp)
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movb	%al, -217(%rbp)         # 1-byte Spill
	je	.LBB1_29
# BB#27:                                # %land.lhs.true.91
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -48(%rbp)
	movb	%cl, -217(%rbp)         # 1-byte Spill
	jne	.LBB1_29
# BB#28:                                # %land.rhs.93
	cmpl	$0, -40(%rbp)
	setne	%al
	movb	%al, -217(%rbp)         # 1-byte Spill
.LBB1_29:                               # %land.end.95
	movb	-217(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.12, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-216(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	select_actions_update, .Lfunc_end1-select_actions_update
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"select-action"
	.size	.L.str, 14

	.type	select_actions,@object  # @select_actions
	.section	.rodata,"a",@progbits
	.align	16
select_actions:
	.quad	.L.str.13
	.quad	.L.str.14
	.quad	.L.str.15
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.16
	.quad	.L.str.17
	.quad	0
	.quad	.L.str.18
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.1
	.quad	.L.str.19
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	.L.str.22
	.quad	select_all_cmd_callback
	.quad	.L.str.19
	.quad	.L.str.2
	.quad	.L.str.23
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	.L.str.26
	.quad	select_none_cmd_callback
	.quad	.L.str.23
	.quad	.L.str.3
	.quad	.L.str.27
	.quad	.L.str.28
	.quad	.L.str.29
	.quad	.L.str.30
	.quad	select_invert_cmd_callback
	.quad	.L.str.31
	.quad	.L.str.4
	.quad	.L.str.32
	.quad	.L.str.33
	.quad	.L.str.34
	.quad	.L.str.35
	.quad	select_float_cmd_callback
	.quad	.L.str.36
	.quad	.L.str.5
	.quad	0
	.quad	.L.str.37
	.quad	0
	.quad	.L.str.38
	.quad	select_feather_cmd_callback
	.quad	.L.str.39
	.quad	.L.str.6
	.quad	0
	.quad	.L.str.40
	.quad	0
	.quad	.L.str.41
	.quad	select_sharpen_cmd_callback
	.quad	.L.str.42
	.quad	.L.str.7
	.quad	.L.str.43
	.quad	.L.str.44
	.quad	0
	.quad	.L.str.45
	.quad	select_shrink_cmd_callback
	.quad	.L.str.43
	.quad	.L.str.8
	.quad	.L.str.46
	.quad	.L.str.47
	.quad	0
	.quad	.L.str.48
	.quad	select_grow_cmd_callback
	.quad	.L.str.46
	.quad	.L.str.9
	.quad	.L.str.49
	.quad	.L.str.50
	.quad	0
	.quad	.L.str.51
	.quad	select_border_cmd_callback
	.quad	.L.str.49
	.quad	.L.str.10
	.quad	.L.str.52
	.quad	.L.str.53
	.quad	0
	.quad	.L.str.54
	.quad	select_save_cmd_callback
	.quad	.L.str.52
	.quad	.L.str.11
	.quad	.L.str.55
	.quad	.L.str.56
	.quad	0
	.quad	.L.str.57
	.quad	select_stroke_cmd_callback
	.quad	.L.str.55
	.quad	.L.str.12
	.quad	.L.str.55
	.quad	.L.str.58
	.quad	0
	.quad	.L.str.59
	.quad	select_stroke_last_vals_cmd_callback
	.quad	.L.str.55
	.size	select_actions, 784

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"select-all"
	.size	.L.str.1, 11

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"select-none"
	.size	.L.str.2, 12

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"select-invert"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"select-float"
	.size	.L.str.4, 13

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"select-feather"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"select-sharpen"
	.size	.L.str.6, 15

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"select-shrink"
	.size	.L.str.7, 14

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"select-grow"
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"select-border"
	.size	.L.str.9, 14

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"select-save"
	.size	.L.str.10, 12

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"select-stroke"
	.size	.L.str.11, 14

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"select-stroke-last-values"
	.size	.L.str.12, 26

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"selection-popup"
	.size	.L.str.13, 16

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp-tool-rect-select"
	.size	.L.str.14, 22

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Selection Editor Menu"
	.size	.L.str.15, 22

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimp-selection-dialog"
	.size	.L.str.16, 22

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"select-menu"
	.size	.L.str.17, 12

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"_Select"
	.size	.L.str.18, 8

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp-selection-all"
	.size	.L.str.19, 19

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"_All"
	.size	.L.str.20, 5

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"<primary>A"
	.size	.L.str.21, 11

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Select everything"
	.size	.L.str.22, 18

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gimp-selection-none"
	.size	.L.str.23, 20

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"_None"
	.size	.L.str.24, 6

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"<primary><shift>A"
	.size	.L.str.25, 18

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Dismiss the selection"
	.size	.L.str.26, 22

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gimp-invert"
	.size	.L.str.27, 12

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"_Invert"
	.size	.L.str.28, 8

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"<primary>I"
	.size	.L.str.29, 11

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Invert the selection"
	.size	.L.str.30, 21

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gimp-selection-invert"
	.size	.L.str.31, 22

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"gimp-floating-selection"
	.size	.L.str.32, 24

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"_Float"
	.size	.L.str.33, 7

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"<primary><shift>L"
	.size	.L.str.34, 18

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Create a floating selection"
	.size	.L.str.35, 28

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"gimp-selection-float"
	.size	.L.str.36, 21

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Fea_ther..."
	.size	.L.str.37, 12

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Blur the selection border so that it fades out smoothly"
	.size	.L.str.38, 56

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"gimp-selection-feather"
	.size	.L.str.39, 23

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"_Sharpen"
	.size	.L.str.40, 9

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Remove fuzziness from the selection"
	.size	.L.str.41, 36

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"gimp-selection-sharpen"
	.size	.L.str.42, 23

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"gimp-selection-shrink"
	.size	.L.str.43, 22

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"S_hrink..."
	.size	.L.str.44, 11

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Contract the selection"
	.size	.L.str.45, 23

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"gimp-selection-grow"
	.size	.L.str.46, 20

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"_Grow..."
	.size	.L.str.47, 9

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Enlarge the selection"
	.size	.L.str.48, 22

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"gimp-selection-border"
	.size	.L.str.49, 22

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Bo_rder..."
	.size	.L.str.50, 11

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Replace the selection by its border"
	.size	.L.str.51, 36

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"gimp-selection-to-channel"
	.size	.L.str.52, 26

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Save to _Channel"
	.size	.L.str.53, 17

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Save the selection to a channel"
	.size	.L.str.54, 32

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"gimp-selection-stroke"
	.size	.L.str.55, 22

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"_Stroke Selection..."
	.size	.L.str.56, 21

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Paint along the selection outline"
	.size	.L.str.57, 34

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"_Stroke Selection"
	.size	.L.str.58, 18

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Stroke the selection with last used values"
	.size	.L.str.59, 43


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
