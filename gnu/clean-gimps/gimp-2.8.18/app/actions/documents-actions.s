	.text
	.file	"documents-actions.bc"
	.globl	documents_actions_setup
	.align	16, 0x90
	.type	documents_actions_setup,@function
documents_actions_setup:                # @documents_actions_setup
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
	movabsq	$documents_actions, %rdx
	movl	$10, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_add_actions
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	documents_actions_setup, .Lfunc_end0-documents_actions_setup
	.cfi_endproc

	.globl	documents_actions_update
	.align	16, 0x90
	.type	documents_actions_update,@function
documents_actions_update:               # @documents_actions_update
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	gimp_context_get_imagefile
	movq	%rax, -32(%rbp)
.LBB1_2:                                # %if.end
	movabsq	$.L.str.1, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.2, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.3, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.4, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.5, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.6, %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.7, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
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
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	documents_actions_update, .Lfunc_end1-documents_actions_update
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"documents-action"
	.size	.L.str, 17

	.type	documents_actions,@object # @documents_actions
	.section	.rodata,"a",@progbits
	.align	16
documents_actions:
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	.L.str.12
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.13
	.quad	.L.str.1
	.quad	.L.str.14
	.quad	.L.str.15
	.quad	.L.str.16
	.quad	.L.str.17
	.quad	documents_open_cmd_callback
	.quad	.L.str.18
	.quad	.L.str.2
	.quad	0
	.quad	.L.str.19
	.quad	.L.str.16
	.quad	.L.str.20
	.quad	documents_raise_or_open_cmd_callback
	.quad	.L.str.18
	.quad	.L.str.3
	.quad	0
	.quad	.L.str.21
	.quad	.L.str.16
	.quad	.L.str.22
	.quad	documents_file_open_dialog_cmd_callback
	.quad	.L.str.18
	.quad	.L.str.4
	.quad	.L.str.23
	.quad	.L.str.24
	.quad	.L.str.16
	.quad	.L.str.25
	.quad	documents_copy_location_cmd_callback
	.quad	.L.str.26
	.quad	.L.str.5
	.quad	.L.str.27
	.quad	.L.str.28
	.quad	.L.str.16
	.quad	.L.str.29
	.quad	documents_remove_cmd_callback
	.quad	.L.str.30
	.quad	.L.str.6
	.quad	.L.str.31
	.quad	.L.str.32
	.quad	.L.str.16
	.quad	.L.str.33
	.quad	documents_clear_cmd_callback
	.quad	.L.str.34
	.quad	.L.str.7
	.quad	.L.str.35
	.quad	.L.str.36
	.quad	.L.str.16
	.quad	.L.str.37
	.quad	documents_recreate_preview_cmd_callback
	.quad	.L.str.38
	.quad	.L.str.8
	.quad	0
	.quad	.L.str.39
	.quad	.L.str.16
	.quad	.L.str.40
	.quad	documents_reload_previews_cmd_callback
	.quad	.L.str.38
	.quad	.L.str.9
	.quad	0
	.quad	.L.str.41
	.quad	.L.str.16
	.quad	.L.str.42
	.quad	documents_remove_dangling_cmd_callback
	.quad	.L.str.38
	.size	documents_actions, 560

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"documents-open"
	.size	.L.str.1, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"documents-raise-or-open"
	.size	.L.str.2, 24

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"documents-file-open-dialog"
	.size	.L.str.3, 27

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"documents-copy-location"
	.size	.L.str.4, 24

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"documents-remove"
	.size	.L.str.5, 17

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"documents-clear"
	.size	.L.str.6, 16

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"documents-recreate-preview"
	.size	.L.str.7, 27

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"documents-reload-previews"
	.size	.L.str.8, 26

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"documents-remove-dangling"
	.size	.L.str.9, 26

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"documents-popup"
	.size	.L.str.10, 16

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"document-open-recent"
	.size	.L.str.11, 21

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Documents Menu"
	.size	.L.str.12, 15

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp-document-dialog"
	.size	.L.str.13, 21

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gtk-open"
	.size	.L.str.14, 9

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"_Open Image"
	.size	.L.str.15, 12

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.zero	1
	.size	.L.str.16, 1

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Open the selected entry"
	.size	.L.str.17, 24

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp-document-open"
	.size	.L.str.18, 19

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"_Raise or Open Image"
	.size	.L.str.19, 21

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Raise window if already open"
	.size	.L.str.20, 29

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"File Open _Dialog"
	.size	.L.str.21, 18

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Open image dialog"
	.size	.L.str.22, 18

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gtk-copy"
	.size	.L.str.23, 9

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Copy Image _Location"
	.size	.L.str.24, 21

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Copy image location to clipboard"
	.size	.L.str.25, 33

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"gimp-document-copy-location"
	.size	.L.str.26, 28

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gtk-remove"
	.size	.L.str.27, 11

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Remove _Entry"
	.size	.L.str.28, 14

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Remove the selected entry"
	.size	.L.str.29, 26

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"gimp-document-remove"
	.size	.L.str.30, 21

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gtk-clear"
	.size	.L.str.31, 10

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"_Clear History"
	.size	.L.str.32, 15

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Clear the entire document history"
	.size	.L.str.33, 34

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"gimp-document-clear"
	.size	.L.str.34, 20

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"gtk-refresh"
	.size	.L.str.35, 12

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Recreate _Preview"
	.size	.L.str.36, 18

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Recreate preview"
	.size	.L.str.37, 17

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"gimp-document-refresh"
	.size	.L.str.38, 22

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Reload _all Previews"
	.size	.L.str.39, 21

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Reload all previews"
	.size	.L.str.40, 20

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Remove Dangling E_ntries"
	.size	.L.str.41, 25

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Remove entries for which the corresponding file is not available"
	.size	.L.str.42, 65


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
