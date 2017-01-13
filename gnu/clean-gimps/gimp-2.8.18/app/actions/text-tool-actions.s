	.text
	.file	"text-tool-actions.bc"
	.globl	text_tool_actions_setup
	.align	16, 0x90
	.type	text_tool_actions_setup,@function
text_tool_actions_setup:                # @text_tool_actions_setup
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
	movabsq	$text_tool_actions, %rdx
	movl	$10, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_add_actions
	movabsq	$.L.str, %rsi
	movabsq	$text_tool_direction_actions, %rdx
	movl	$2, %ecx
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	movabsq	$text_tool_direction_cmd_callback, %rdi
	movq	-8(%rbp), %r10
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	-16(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	callq	gimp_action_group_add_radio_actions
	movabsq	$.L.str.1, %rsi
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_action_group_set_action_hide_empty
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	text_tool_actions_setup, .Lfunc_end0-text_tool_actions_setup
	.cfi_endproc

	.globl	text_tool_actions_update
	.align	16, 0x90
	.type	text_tool_actions_update,@function
text_tool_actions_update:               # @text_tool_actions_update
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gimp_text_tool_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_tool_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	56(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -40(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -80(%rbp)
	movl	$0, -84(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_text_layer
	movl	%eax, -76(%rbp)
.LBB1_2:                                # %if.end
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_active_vectors
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_text_tool_get_has_text_selection
	movl	%eax, -80(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_shell
	movl	$69, %ecx
	movl	%ecx, %esi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	328(%rax), %rdi
	callq	gtk_widget_get_clipboard
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	gtk_clipboard_wait_is_text_available
	movl	%eax, -84(%rbp)
	movq	-64(%rbp), %rsi
	movq	328(%rsi), %rdi
	callq	gtk_widget_get_settings
	movabsq	$.L.str.2, %rsi
	leaq	-88(%rbp), %rdx
	movabsq	$.L.str.3, %rcx
	leaq	-92(%rbp), %r8
	xorl	%r9d, %r9d
                                        # kill: R9<def> R9D<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_get
	movabsq	$.L.str.4, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -80(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.5, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -80(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.6, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -84(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.7, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -80(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.8, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -76(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.9, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -40(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.10, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -76(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	xorl	%edx, %edx
	movb	%dl, %al
	movq	-8(%rbp), %rdi
	cmpl	$0, -76(%rbp)
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movb	%al, -129(%rbp)         # 1-byte Spill
	je	.LBB1_4
# BB#3:                                 # %land.rhs
	cmpq	$0, -56(%rbp)
	setne	%al
	movb	%al, -129(%rbp)         # 1-byte Spill
.LBB1_4:                                # %land.end
	movb	-129(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.11, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.1, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -88(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_visible
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	text_tool_actions_update, .Lfunc_end1-text_tool_actions_update
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"text-tool-action"
	.size	.L.str, 17

	.type	text_tool_actions,@object # @text_tool_actions
	.section	.rodata,"a",@progbits
	.align	16
text_tool_actions:
	.quad	.L.str.12
	.quad	0
	.quad	.L.str.13
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.1
	.quad	0
	.quad	.L.str.14
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.4
	.quad	.L.str.15
	.quad	.L.str.16
	.quad	0
	.quad	0
	.quad	text_tool_cut_cmd_callback
	.quad	0
	.quad	.L.str.5
	.quad	.L.str.17
	.quad	.L.str.18
	.quad	0
	.quad	0
	.quad	text_tool_copy_cmd_callback
	.quad	0
	.quad	.L.str.6
	.quad	.L.str.19
	.quad	.L.str.20
	.quad	0
	.quad	0
	.quad	text_tool_paste_cmd_callback
	.quad	0
	.quad	.L.str.7
	.quad	.L.str.21
	.quad	.L.str.22
	.quad	0
	.quad	0
	.quad	text_tool_delete_cmd_callback
	.quad	0
	.quad	.L.str.9
	.quad	.L.str.23
	.quad	.L.str.24
	.quad	0
	.quad	0
	.quad	text_tool_load_cmd_callback
	.quad	0
	.quad	.L.str.8
	.quad	.L.str.25
	.quad	.L.str.26
	.quad	.L.str.27
	.quad	.L.str.28
	.quad	text_tool_clear_cmd_callback
	.quad	0
	.quad	.L.str.10
	.quad	.L.str.29
	.quad	.L.str.30
	.quad	.L.str.27
	.quad	.L.str.31
	.quad	text_tool_text_to_path_cmd_callback
	.quad	0
	.quad	.L.str.11
	.quad	.L.str.29
	.quad	.L.str.32
	.quad	.L.str.27
	.quad	.L.str.33
	.quad	text_tool_text_along_path_cmd_callback
	.quad	0
	.size	text_tool_actions, 560

	.type	text_tool_direction_actions,@object # @text_tool_direction_actions
	.align	16
text_tool_direction_actions:
	.quad	.L.str.34
	.quad	.L.str.35
	.quad	.L.str.36
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.quad	.L.str.37
	.quad	.L.str.38
	.quad	.L.str.39
	.quad	0
	.quad	0
	.long	1                       # 0x1
	.zero	4
	.quad	0
	.size	text_tool_direction_actions, 112

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"text-tool-input-methods-menu"
	.size	.L.str.1, 29

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gtk-show-input-method-menu"
	.size	.L.str.2, 27

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gtk-show-unicode-menu"
	.size	.L.str.3, 22

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"text-tool-cut"
	.size	.L.str.4, 14

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"text-tool-copy"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"text-tool-paste"
	.size	.L.str.6, 16

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"text-tool-delete"
	.size	.L.str.7, 17

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"text-tool-clear"
	.size	.L.str.8, 16

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"text-tool-load"
	.size	.L.str.9, 15

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"text-tool-text-to-path"
	.size	.L.str.10, 23

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"text-tool-text-along-path"
	.size	.L.str.11, 26

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"text-tool-popup"
	.size	.L.str.12, 16

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Text Tool Menu"
	.size	.L.str.13, 15

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Input _Methods"
	.size	.L.str.14, 15

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gtk-cut"
	.size	.L.str.15, 8

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Cu_t"
	.size	.L.str.16, 5

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gtk-copy"
	.size	.L.str.17, 9

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"_Copy"
	.size	.L.str.18, 6

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gtk-paste"
	.size	.L.str.19, 10

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"_Paste"
	.size	.L.str.20, 7

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gtk-delete"
	.size	.L.str.21, 11

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"_Delete"
	.size	.L.str.22, 8

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gtk-open"
	.size	.L.str.23, 9

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"_Open text file..."
	.size	.L.str.24, 19

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gtk-clear"
	.size	.L.str.25, 10

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Cl_ear"
	.size	.L.str.26, 7

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.zero	1
	.size	.L.str.27, 1

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Clear all text"
	.size	.L.str.28, 15

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gimp-path"
	.size	.L.str.29, 10

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"_Path from Text"
	.size	.L.str.30, 16

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Create a path from the outlines of the current text"
	.size	.L.str.31, 52

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Text _along Path"
	.size	.L.str.32, 17

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Bend the text along the currently active path"
	.size	.L.str.33, 46

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"text-tool-direction-ltr"
	.size	.L.str.34, 24

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"gimp-text-dir-ltr"
	.size	.L.str.35, 18

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"From left to right"
	.size	.L.str.36, 19

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"text-tool-direction-rtl"
	.size	.L.str.37, 24

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"gimp-text-dir-rtl"
	.size	.L.str.38, 18

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"From right to left"
	.size	.L.str.39, 19


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
