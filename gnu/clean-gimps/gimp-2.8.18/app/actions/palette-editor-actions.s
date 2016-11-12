	.text
	.file	"palette-editor-actions.bc"
	.globl	palette_editor_actions_setup
	.align	16, 0x90
	.type	palette_editor_actions_setup,@function
palette_editor_actions_setup:           # @palette_editor_actions_setup
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
	movabsq	$palette_editor_actions, %rdx
	movl	$3, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_add_actions
	movabsq	$.L.str, %rsi
	movabsq	$palette_editor_toggle_actions, %rdx
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_add_toggle_actions
	movabsq	$.L.str, %rsi
	movabsq	$palette_editor_new_actions, %rdx
	movl	$2, %ecx
	movabsq	$palette_editor_new_color_cmd_callback, %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-16(%rbp), %r8          # 8-byte Reload
	callq	gimp_action_group_add_enum_actions
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$palette_editor_zoom_actions, %rdx
	movl	$3, %ecx
	movabsq	$palette_editor_zoom_cmd_callback, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, %r8
	callq	gimp_action_group_add_enum_actions
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	palette_editor_actions_setup, .Lfunc_end0-palette_editor_actions_setup
	.cfi_endproc

	.globl	palette_editor_actions_update
	.align	16, 0x90
	.type	palette_editor_actions_update,@function
palette_editor_actions_update:          # @palette_editor_actions_update
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
	movq	-16(%rbp), %rsi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	gimp_palette_editor_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_data_editor_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -116(%rbp)
	movq	-32(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB1_4
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	cmpl	$0, 168(%rax)
	je	.LBB1_3
# BB#2:                                 # %if.then.6
	movl	$1, -44(%rbp)
.LBB1_3:                                # %if.end
	jmp	.LBB1_4
.LBB1_4:                                # %if.end.7
	movq	-32(%rbp), %rax
	cmpq	$0, 144(%rax)
	je	.LBB1_6
# BB#5:                                 # %if.then.9
	leaq	-80(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gimp_context_get_foreground
	leaq	-112(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gimp_context_get_background
.LBB1_6:                                # %if.end.12
	movq	-32(%rbp), %rdi
	callq	gimp_data_editor_get_edit_active
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, -116(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, -44(%rbp)
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movb	%dl, -145(%rbp)         # 1-byte Spill
	je	.LBB1_8
# BB#7:                                 # %land.rhs
	movq	-24(%rbp), %rax
	cmpq	$0, 240(%rax)
	setne	%cl
	movb	%cl, -145(%rbp)         # 1-byte Spill
.LBB1_8:                                # %land.end
	movb	-145(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.1, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpl	$0, -44(%rbp)
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movb	%al, -161(%rbp)         # 1-byte Spill
	je	.LBB1_10
# BB#9:                                 # %land.rhs.17
	movq	-24(%rbp), %rax
	cmpq	$0, 240(%rax)
	setne	%cl
	movb	%cl, -161(%rbp)         # 1-byte Spill
.LBB1_10:                               # %land.end.20
	movb	-161(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.2, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-160(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.3, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -44(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.4, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -44(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	callq	gimp_action_group_set_action_sensitive
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	cmpq	$0, 144(%rsi)
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	je	.LBB1_12
# BB#11:                                # %cond.true
	leaq	-80(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB1_13
.LBB1_12:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB1_13
.LBB1_13:                               # %cond.end
	movq	-184(%rbp), %rax        # 8-byte Reload
	movabsq	$.L.str.3, %rsi
	xorl	%ecx, %ecx
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	cmpq	$0, 144(%rax)
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	je	.LBB1_15
# BB#14:                                # %cond.true.32
	leaq	-112(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jmp	.LBB1_16
.LBB1_15:                               # %cond.false.33
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	jmp	.LBB1_16
.LBB1_16:                               # %cond.end.34
	movq	-200(%rbp), %rax        # 8-byte Reload
	movabsq	$.L.str.4, %rsi
	xorl	%ecx, %ecx
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movabsq	$.L.str.5, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -40(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.6, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -40(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.7, %rsi
	movq	-8(%rbp), %rdi
	cmpq	$0, -40(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_sensitive
	movabsq	$.L.str.8, %rsi
	movq	-8(%rbp), %rdi
	cmpl	$0, -116(%rbp)
	setne	%r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	callq	gimp_action_group_set_action_active
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	palette_editor_actions_update, .Lfunc_end1-palette_editor_actions_update
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"palette-editor-action"
	.size	.L.str, 22

	.type	palette_editor_actions,@object # @palette_editor_actions
	.section	.rodata,"a",@progbits
	.align	16
palette_editor_actions:
	.quad	.L.str.9
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.12
	.quad	.L.str.1
	.quad	.L.str.13
	.quad	.L.str.14
	.quad	.L.str.15
	.quad	.L.str.16
	.quad	palette_editor_edit_color_cmd_callback
	.quad	.L.str.17
	.quad	.L.str.2
	.quad	.L.str.18
	.quad	.L.str.19
	.quad	.L.str.15
	.quad	.L.str.20
	.quad	palette_editor_delete_color_cmd_callback
	.quad	.L.str.21
	.size	palette_editor_actions, 168

	.type	palette_editor_toggle_actions,@object # @palette_editor_toggle_actions
	.align	16
palette_editor_toggle_actions:
	.quad	.L.str.8
	.quad	.L.str.22
	.quad	.L.str.23
	.quad	0
	.quad	0
	.quad	data_editor_edit_active_cmd_callback
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.24
	.size	palette_editor_toggle_actions, 64

	.type	palette_editor_new_actions,@object # @palette_editor_new_actions
	.align	16
palette_editor_new_actions:
	.quad	.L.str.3
	.quad	.L.str.25
	.quad	.L.str.26
	.quad	.L.str.15
	.quad	.L.str.27
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.28
	.quad	.L.str.4
	.quad	.L.str.25
	.quad	.L.str.29
	.quad	.L.str.15
	.quad	.L.str.30
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.28
	.size	palette_editor_new_actions, 112

	.type	palette_editor_zoom_actions,@object # @palette_editor_zoom_actions
	.align	16
palette_editor_zoom_actions:
	.quad	.L.str.6
	.quad	.L.str.31
	.quad	.L.str.32
	.quad	.L.str.15
	.quad	.L.str.33
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.34
	.quad	.L.str.5
	.quad	.L.str.35
	.quad	.L.str.36
	.quad	.L.str.15
	.quad	.L.str.37
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.38
	.quad	.L.str.7
	.quad	.L.str.39
	.quad	.L.str.40
	.quad	.L.str.15
	.quad	.L.str.41
	.long	5                       # 0x5
	.long	0                       # 0x0
	.quad	.L.str.42
	.size	palette_editor_zoom_actions, 168

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"palette-editor-edit-color"
	.size	.L.str.1, 26

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"palette-editor-delete-color"
	.size	.L.str.2, 28

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"palette-editor-new-color-fg"
	.size	.L.str.3, 28

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"palette-editor-new-color-bg"
	.size	.L.str.4, 28

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"palette-editor-zoom-out"
	.size	.L.str.5, 24

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"palette-editor-zoom-in"
	.size	.L.str.6, 23

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"palette-editor-zoom-all"
	.size	.L.str.7, 24

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"palette-editor-edit-active"
	.size	.L.str.8, 27

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"palette-editor-popup"
	.size	.L.str.9, 21

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gtk-select-color"
	.size	.L.str.10, 17

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Palette Editor Menu"
	.size	.L.str.11, 20

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp-palette-editor-dialog"
	.size	.L.str.12, 27

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gtk-edit"
	.size	.L.str.13, 9

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"_Edit Color..."
	.size	.L.str.14, 15

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.zero	1
	.size	.L.str.15, 1

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Edit this entry"
	.size	.L.str.16, 16

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gimp-palette-editor-edit"
	.size	.L.str.17, 25

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gtk-delete"
	.size	.L.str.18, 11

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"_Delete Color"
	.size	.L.str.19, 14

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Delete this entry"
	.size	.L.str.20, 18

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimp-palette-editor-delete"
	.size	.L.str.21, 27

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gimp-linked"
	.size	.L.str.22, 12

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Edit Active Palette"
	.size	.L.str.23, 20

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gimp-palette-editor-edit-active"
	.size	.L.str.24, 32

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gtk-new"
	.size	.L.str.25, 8

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"New Color from _FG"
	.size	.L.str.26, 19

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Create a new entry from the foreground color"
	.size	.L.str.27, 45

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gimp-palette-editor-new"
	.size	.L.str.28, 24

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"New Color from _BG"
	.size	.L.str.29, 19

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Create a new entry from the background color"
	.size	.L.str.30, 45

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gtk-zoom-in"
	.size	.L.str.31, 12

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Zoom _In"
	.size	.L.str.32, 9

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Zoom in"
	.size	.L.str.33, 8

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"gimp-palette-editor-zoom-in"
	.size	.L.str.34, 28

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"gtk-zoom-out"
	.size	.L.str.35, 13

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Zoom _Out"
	.size	.L.str.36, 10

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Zoom out"
	.size	.L.str.37, 9

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"gimp-palette-editor-zoom-out"
	.size	.L.str.38, 29

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"gtk-zoom-fit"
	.size	.L.str.39, 13

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Zoom _All"
	.size	.L.str.40, 10

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Zoom all"
	.size	.L.str.41, 9

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"gimp-palette-editor-zoom-all"
	.size	.L.str.42, 29


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
