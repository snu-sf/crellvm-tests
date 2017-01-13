	.text
	.file	"images-actions.bc"
	.globl	images_actions_setup
	.align	16, 0x90
	.type	images_actions_setup,@function
images_actions_setup:                   # @images_actions_setup
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
	movabsq	$images_actions, %rdx
	movl	$4, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_add_actions
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	images_actions_setup, .Lfunc_end0-images_actions_setup
	.cfi_endproc

	.globl	images_actions_update
	.align	16, 0x90
	.type	images_actions_update,@function
images_actions_update:                  # @images_actions_update
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB1_4
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	gimp_context_get_image
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then.3
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_display_count
	movl	%eax, -36(%rbp)
.LBB1_3:                                # %if.end
	jmp	.LBB1_4
.LBB1_4:                                # %if.end.5
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
	xorl	%edx, %edx
	movb	%dl, %al
	movq	-8(%rbp), %rdi
	cmpq	$0, -32(%rbp)
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movb	%al, -49(%rbp)          # 1-byte Spill
	je	.LBB1_6
# BB#5:                                 # %land.rhs
	cmpl	$0, -36(%rbp)
	sete	%al
	movb	%al, -49(%rbp)          # 1-byte Spill
.LBB1_6:                                # %land.end
	movb	-49(%rbp), %al          # 1-byte Reload
	movabsq	$.L.str.3, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	images_actions_update, .Lfunc_end1-images_actions_update
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"images-action"
	.size	.L.str, 14

	.type	images_actions,@object  # @images_actions
	.section	.rodata,"a",@progbits
	.align	16
images_actions:
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
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	images_raise_views_cmd_callback
	.quad	0
	.quad	.L.str.2
	.quad	.L.str.12
	.quad	.L.str.13
	.quad	.L.str.10
	.quad	.L.str.14
	.quad	images_new_view_cmd_callback
	.quad	0
	.quad	.L.str.3
	.quad	.L.str.15
	.quad	.L.str.16
	.quad	.L.str.10
	.quad	.L.str.17
	.quad	images_delete_image_cmd_callback
	.quad	0
	.size	images_actions, 224

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"images-raise-views"
	.size	.L.str.1, 19

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"images-new-view"
	.size	.L.str.2, 16

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"images-delete"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"images-popup"
	.size	.L.str.4, 13

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-images"
	.size	.L.str.5, 12

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Images Menu"
	.size	.L.str.6, 12

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-image-dialog"
	.size	.L.str.7, 18

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gtk-goto-top"
	.size	.L.str.8, 13

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"_Raise Views"
	.size	.L.str.9, 13

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.zero	1
	.size	.L.str.10, 1

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Raise this image's displays"
	.size	.L.str.11, 28

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gtk-new"
	.size	.L.str.12, 8

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"_New View"
	.size	.L.str.13, 10

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Create a new display for this image"
	.size	.L.str.14, 36

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gtk-delete"
	.size	.L.str.15, 11

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"_Delete Image"
	.size	.L.str.16, 14

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Delete this image"
	.size	.L.str.17, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
