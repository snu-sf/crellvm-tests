	.text
	.file	"brush-editor-actions.bc"
	.globl	brush_editor_actions_setup
	.align	16, 0x90
	.type	brush_editor_actions_setup,@function
brush_editor_actions_setup:             # @brush_editor_actions_setup
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
	movabsq	$brush_editor_actions, %rdx
	movl	$1, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_add_actions
	movabsq	$.L.str, %rsi
	movabsq	$brush_editor_toggle_actions, %rdx
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_add_toggle_actions
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	brush_editor_actions_setup, .Lfunc_end0-brush_editor_actions_setup
	.cfi_endproc

	.globl	brush_editor_actions_update
	.align	16, 0x90
	.type	brush_editor_actions_update,@function
brush_editor_actions_update:            # @brush_editor_actions_update
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
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_data_editor_get_edit_active
	movabsq	$.L.str.1, %rsi
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, -28(%rbp)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	callq	gimp_action_group_set_action_active
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	brush_editor_actions_update, .Lfunc_end1-brush_editor_actions_update
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"brush-editor-action"
	.size	.L.str, 20

	.type	brush_editor_actions,@object # @brush_editor_actions
	.section	.rodata,"a",@progbits
	.align	16
brush_editor_actions:
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.5
	.size	brush_editor_actions, 56

	.type	brush_editor_toggle_actions,@object # @brush_editor_toggle_actions
	.align	16
brush_editor_toggle_actions:
	.quad	.L.str.1
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	0
	.quad	0
	.quad	data_editor_edit_active_cmd_callback
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.8
	.size	brush_editor_toggle_actions, 64

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"brush-editor-edit-active"
	.size	.L.str.1, 25

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"brush-editor-popup"
	.size	.L.str.2, 19

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-tool-paintbrush"
	.size	.L.str.3, 21

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Brush Editor Menu"
	.size	.L.str.4, 18

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-brush-editor-dialog"
	.size	.L.str.5, 25

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-linked"
	.size	.L.str.6, 12

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Edit Active Brush"
	.size	.L.str.7, 18

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-brush-editor-edit-active"
	.size	.L.str.8, 30


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
