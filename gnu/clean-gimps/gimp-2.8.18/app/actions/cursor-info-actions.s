	.text
	.file	"cursor-info-actions.bc"
	.globl	cursor_info_actions_setup
	.align	16, 0x90
	.type	cursor_info_actions_setup,@function
cursor_info_actions_setup:              # @cursor_info_actions_setup
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
	movabsq	$cursor_info_actions, %rdx
	movl	$1, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_add_actions
	movabsq	$.L.str, %rsi
	movabsq	$cursor_info_toggle_actions, %rdx
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_add_toggle_actions
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	cursor_info_actions_setup, .Lfunc_end0-cursor_info_actions_setup
	.cfi_endproc

	.globl	cursor_info_actions_update
	.align	16, 0x90
	.type	cursor_info_actions_update,@function
cursor_info_actions_update:             # @cursor_info_actions_update
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_cursor_view_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_cursor_view_get_sample_merged
	movabsq	$.L.str.1, %rsi
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	callq	gimp_action_group_set_action_active
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	cursor_info_actions_update, .Lfunc_end1-cursor_info_actions_update
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cursor-info-action"
	.size	.L.str, 19

	.type	cursor_info_actions,@object # @cursor_info_actions
	.section	.rodata,"a",@progbits
	.align	16
cursor_info_actions:
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.5
	.size	cursor_info_actions, 56

	.type	cursor_info_toggle_actions,@object # @cursor_info_toggle_actions
	.align	16
cursor_info_toggle_actions:
	.quad	.L.str.1
	.quad	0
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	.L.str.8
	.quad	cursor_info_sample_merged_cmd_callback
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.9
	.size	cursor_info_toggle_actions, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"cursor-info-sample-merged"
	.size	.L.str.1, 26

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"cursor-info-popup"
	.size	.L.str.2, 18

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-cursor"
	.size	.L.str.3, 12

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Pointer Information Menu"
	.size	.L.str.4, 25

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-pointer-info-dialog"
	.size	.L.str.5, 25

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"_Sample Merged"
	.size	.L.str.6, 15

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.zero	1
	.size	.L.str.7, 1

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Use the composite color of all visible layers"
	.size	.L.str.8, 46

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-pointer-info-sample-merged"
	.size	.L.str.9, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
