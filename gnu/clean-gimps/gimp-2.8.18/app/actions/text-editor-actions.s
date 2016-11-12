	.text
	.file	"text-editor-actions.bc"
	.globl	text_editor_actions_setup
	.align	16, 0x90
	.type	text_editor_actions_setup,@function
text_editor_actions_setup:              # @text_editor_actions_setup
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
	movabsq	$text_editor_actions, %rdx
	movl	$3, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_add_actions
	movabsq	$.L.str, %rsi
	movabsq	$text_editor_direction_actions, %rdx
	movl	$2, %ecx
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	movabsq	$text_editor_direction_cmd_callback, %rdi
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
	.size	text_editor_actions_setup, .Lfunc_end0-text_editor_actions_setup
	.cfi_endproc

	.globl	text_editor_actions_update
	.align	16, 0x90
	.type	text_editor_actions_update,@function
text_editor_actions_update:             # @text_editor_actions_update
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
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_text_editor_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movl	264(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	je	.LBB1_1
	jmp	.LBB1_4
.LBB1_4:                                # %entry
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	je	.LBB1_2
	jmp	.LBB1_3
.LBB1_1:                                # %sw.bb
	movabsq	$.L.str.1, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_active
	jmp	.LBB1_3
.LBB1_2:                                # %sw.bb.2
	movabsq	$.L.str.2, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_active
.LBB1_3:                                # %sw.epilog
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	text_editor_actions_update, .Lfunc_end1-text_editor_actions_update
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"text-editor-action"
	.size	.L.str, 19

	.type	text_editor_actions,@object # @text_editor_actions
	.section	.rodata,"a",@progbits
	.align	16
text_editor_actions:
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	.L.str.8
	.quad	.L.str.9
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	text_editor_load_cmd_callback
	.quad	0
	.quad	.L.str.12
	.quad	.L.str.13
	.quad	.L.str.14
	.quad	.L.str.10
	.quad	.L.str.15
	.quad	text_editor_clear_cmd_callback
	.quad	0
	.size	text_editor_actions, 168

	.type	text_editor_direction_actions,@object # @text_editor_direction_actions
	.align	16
text_editor_direction_actions:
	.quad	.L.str.1
	.quad	.L.str.16
	.quad	.L.str.17
	.quad	.L.str.10
	.quad	.L.str.18
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	.L.str.2
	.quad	.L.str.19
	.quad	.L.str.20
	.quad	.L.str.10
	.quad	.L.str.21
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.size	text_editor_direction_actions, 112

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"text-editor-direction-ltr"
	.size	.L.str.1, 26

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"text-editor-direction-rtl"
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"text-editor-toolbar"
	.size	.L.str.3, 20

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gtk-edit"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Text Editor Toolbar"
	.size	.L.str.5, 20

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-text-editor-dialog"
	.size	.L.str.6, 24

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"text-editor-load"
	.size	.L.str.7, 17

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gtk-open"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Open"
	.size	.L.str.9, 5

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.zero	1
	.size	.L.str.10, 1

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Load text from file"
	.size	.L.str.11, 20

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"text-editor-clear"
	.size	.L.str.12, 18

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gtk-clear"
	.size	.L.str.13, 10

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Clear"
	.size	.L.str.14, 6

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Clear all text"
	.size	.L.str.15, 15

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimp-text-dir-ltr"
	.size	.L.str.16, 18

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"LTR"
	.size	.L.str.17, 4

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"From left to right"
	.size	.L.str.18, 19

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp-text-dir-rtl"
	.size	.L.str.19, 18

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"RTL"
	.size	.L.str.20, 4

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"From right to left"
	.size	.L.str.21, 19


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
