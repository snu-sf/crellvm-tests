	.text
	.file	"colormap-actions.bc"
	.globl	colormap_actions_setup
	.align	16, 0x90
	.type	colormap_actions_setup,@function
colormap_actions_setup:                 # @colormap_actions_setup
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
	movabsq	$colormap_actions, %rdx
	movl	$2, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_add_actions
	movabsq	$.L.str, %rsi
	movabsq	$colormap_add_color_actions, %rdx
	movl	$2, %ecx
	movabsq	$colormap_add_color_cmd_callback, %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-16(%rbp), %r8          # 8-byte Reload
	callq	gimp_action_group_add_enum_actions
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	colormap_actions_setup, .Lfunc_end0-colormap_actions_setup
	.cfi_endproc

	.globl	colormap_actions_update
	.align	16, 0x90
	.type	colormap_actions_update,@function
colormap_actions_update:                # @colormap_actions_update
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB1_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	gimp_image_base_type
	cmpl	$2, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_colormap_size
	movl	%eax, -40(%rbp)
.LBB1_2:                                # %if.end
	cmpq	$0, -32(%rbp)
	je	.LBB1_4
# BB#3:                                 # %if.then.5
	leaq	-72(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_foreground
	leaq	-104(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	gimp_context_get_background
.LBB1_4:                                # %if.end.6
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movb	%cl, -113(%rbp)         # 1-byte Spill
	je	.LBB1_7
# BB#5:                                 # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -36(%rbp)
	movb	%cl, -113(%rbp)         # 1-byte Spill
	je	.LBB1_7
# BB#6:                                 # %land.rhs
	cmpl	$0, -40(%rbp)
	setg	%al
	movb	%al, -113(%rbp)         # 1-byte Spill
.LBB1_7:                                # %land.end
	movb	-113(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.1, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movb	%al, -129(%rbp)         # 1-byte Spill
	je	.LBB1_10
# BB#8:                                 # %land.lhs.true.14
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -36(%rbp)
	movb	%cl, -129(%rbp)         # 1-byte Spill
	je	.LBB1_10
# BB#9:                                 # %land.rhs.16
	cmpl	$256, -40(%rbp)         # imm = 0x100
	setl	%al
	movb	%al, -129(%rbp)         # 1-byte Spill
.LBB1_10:                               # %land.end.19
	movb	-129(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.2, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	xorl	%ecx, %ecx
	movb	%cl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -24(%rbp)
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movb	%al, -145(%rbp)         # 1-byte Spill
	je	.LBB1_13
# BB#11:                                # %land.lhs.true.24
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -36(%rbp)
	movb	%cl, -145(%rbp)         # 1-byte Spill
	je	.LBB1_13
# BB#12:                                # %land.rhs.26
	cmpl	$256, -40(%rbp)         # imm = 0x100
	setl	%al
	movb	%al, -145(%rbp)         # 1-byte Spill
.LBB1_13:                               # %land.end.29
	movb	-145(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.3, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	je	.LBB1_15
# BB#14:                                # %cond.true
	leaq	-72(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB1_16
.LBB1_15:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB1_16
.LBB1_16:                               # %cond.end
	movq	-168(%rbp), %rax        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	xorl	%ecx, %ecx
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	je	.LBB1_18
# BB#17:                                # %cond.true.35
	leaq	-104(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB1_19
.LBB1_18:                               # %cond.false.36
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB1_19
.LBB1_19:                               # %cond.end.37
	movq	-184(%rbp), %rax        # 8-byte Reload
	movabsq	$.L.str.3, %rsi
	xorl	%ecx, %ecx
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_action_group_set_action_color
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	colormap_actions_update, .Lfunc_end1-colormap_actions_update
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"colormap-action"
	.size	.L.str, 16

	.type	colormap_actions,@object # @colormap_actions
	.section	.rodata,"a",@progbits
	.align	16
colormap_actions:
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	.L.str.6
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.7
	.quad	.L.str.1
	.quad	.L.str.8
	.quad	.L.str.9
	.quad	0
	.quad	.L.str.10
	.quad	colormap_edit_color_cmd_callback
	.quad	.L.str.11
	.size	colormap_actions, 112

	.type	colormap_add_color_actions,@object # @colormap_add_color_actions
	.align	16
colormap_add_color_actions:
	.quad	.L.str.2
	.quad	.L.str.12
	.quad	.L.str.13
	.quad	.L.str.14
	.quad	.L.str.15
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.16
	.quad	.L.str.3
	.quad	.L.str.12
	.quad	.L.str.17
	.quad	.L.str.14
	.quad	.L.str.18
	.long	1                       # 0x1
	.long	0                       # 0x0
	.quad	.L.str.16
	.size	colormap_add_color_actions, 112

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"colormap-edit-color"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"colormap-add-color-from-fg"
	.size	.L.str.2, 27

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"colormap-add-color-from-bg"
	.size	.L.str.3, 27

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"colormap-popup"
	.size	.L.str.4, 15

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-colormap"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Colormap Menu"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-indexed-palette-dialog"
	.size	.L.str.7, 28

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gtk-edit"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"_Edit Color..."
	.size	.L.str.9, 15

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Edit this color"
	.size	.L.str.10, 16

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp-indexed-palette-edit"
	.size	.L.str.11, 26

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gtk-add"
	.size	.L.str.12, 8

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"_Add Color from FG"
	.size	.L.str.13, 19

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.zero	1
	.size	.L.str.14, 1

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Add current foreground color"
	.size	.L.str.15, 29

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimp-indexed-palette-add"
	.size	.L.str.16, 25

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"_Add Color from BG"
	.size	.L.str.17, 19

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Add current background color"
	.size	.L.str.18, 29


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
