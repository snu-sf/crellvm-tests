	.text
	.file	"sample-points-actions.bc"
	.globl	sample_points_actions_setup
	.align	16, 0x90
	.type	sample_points_actions_setup,@function
sample_points_actions_setup:            # @sample_points_actions_setup
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
	movabsq	$sample_points_actions, %rdx
	movl	$1, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_add_actions
	movabsq	$.L.str, %rsi
	movabsq	$sample_points_toggle_actions, %rdx
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_add_toggle_actions
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	sample_points_actions_setup, .Lfunc_end0-sample_points_actions_setup
	.cfi_endproc

	.globl	sample_points_actions_update
	.align	16, 0x90
	.type	sample_points_actions_update,@function
sample_points_actions_update:           # @sample_points_actions_update
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
	callq	gimp_sample_point_editor_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_sample_point_editor_get_sample_merged
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
	.size	sample_points_actions_update, .Lfunc_end1-sample_points_actions_update
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"sample-points-action"
	.size	.L.str, 21

	.type	sample_points_actions,@object # @sample_points_actions
	.section	.rodata,"a",@progbits
	.align	16
sample_points_actions:
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.5
	.size	sample_points_actions, 56

	.type	sample_points_toggle_actions,@object # @sample_points_toggle_actions
	.align	16
sample_points_toggle_actions:
	.quad	.L.str.1
	.quad	0
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	.L.str.8
	.quad	sample_points_sample_merged_cmd_callback
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.9
	.size	sample_points_toggle_actions, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"sample-points-sample-merged"
	.size	.L.str.1, 28

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"sample-points-popup"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-sample-point"
	.size	.L.str.3, 18

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Sample Point Menu"
	.size	.L.str.4, 18

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-sample-point-dialog"
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
	.asciz	"gimp-sample-point-sample-merged"
	.size	.L.str.9, 32


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
