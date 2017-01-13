	.text
	.file	"brushes-actions.bc"
	.globl	brushes_actions_setup
	.align	16, 0x90
	.type	brushes_actions_setup,@function
brushes_actions_setup:                  # @brushes_actions_setup
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
	movabsq	$brushes_actions, %rdx
	movl	$7, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_action_group_add_actions
	movabsq	$.L.str, %rsi
	movabsq	$brushes_edit_actions, %rdx
	movl	$1, %ecx
	movabsq	$data_edit_cmd_callback, %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-16(%rbp), %r8          # 8-byte Reload
	callq	gimp_action_group_add_string_actions
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	brushes_actions_setup, .Lfunc_end0-brushes_actions_setup
	.cfi_endproc

	.globl	brushes_actions_update
	.align	16, 0x90
	.type	brushes_actions_update,@function
brushes_actions_update:                 # @brushes_actions_update
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
	movq	-16(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB1_6
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	gimp_context_get_brush
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_sel_count
	cmpl	$1, %eax
	jle	.LBB1_3
# BB#2:                                 # %if.then.3
	movq	$0, -32(%rbp)
.LBB1_3:                                # %if.end
	cmpq	$0, -32(%rbp)
	je	.LBB1_5
# BB#4:                                 # %if.then.5
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_data_get_filename
	movq	%rax, -48(%rbp)
.LBB1_5:                                # %if.end.9
	jmp	.LBB1_6
.LBB1_6:                                # %if.end.10
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
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movb	%al, -89(%rbp)          # 1-byte Spill
	je	.LBB1_16
# BB#7:                                 # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -48(%rbp)
	movb	%cl, -89(%rbp)          # 1-byte Spill
	je	.LBB1_16
# BB#8:                                 # %land.rhs
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_brush_generated_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB1_10
# BB#9:                                 # %if.then.16
	movl	$0, -68(%rbp)
	jmp	.LBB1_15
.LBB1_10:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_13
# BB#11:                                # %land.lhs.true.18
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB1_13
# BB#12:                                # %if.then.22
	movl	$1, -68(%rbp)
	jmp	.LBB1_14
.LBB1_13:                               # %if.else.23
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB1_14:                               # %if.end.25
	jmp	.LBB1_15
.LBB1_15:                               # %if.end.26
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	setne	%cl
	xorb	$-1, %cl
	movb	%cl, -89(%rbp)          # 1-byte Spill
.LBB1_16:                               # %land.end
	movb	-89(%rbp), %al          # 1-byte Reload
	movabsq	$.L.str.2, %rsi
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
	je	.LBB1_18
# BB#17:                                # %land.rhs.31
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 304(%rax)
	setne	%cl
	movb	%cl, -105(%rbp)         # 1-byte Spill
.LBB1_18:                               # %land.end.34
	movb	-105(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.3, %rsi
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
	je	.LBB1_20
# BB#19:                                # %land.rhs.39
	cmpq	$0, -48(%rbp)
	setne	%al
	movb	%al, -121(%rbp)         # 1-byte Spill
.LBB1_20:                               # %land.end.41
	movb	-121(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.4, %rsi
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
	je	.LBB1_22
# BB#21:                                # %land.rhs.46
	movq	-40(%rbp), %rdi
	callq	gimp_data_is_deletable
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -137(%rbp)         # 1-byte Spill
.LBB1_22:                               # %land.end.49
	movb	-137(%rbp), %al         # 1-byte Reload
	movabsq	$.L.str.5, %rsi
	andb	$1, %al
	movzbl	%al, %ecx
	cmpl	$0, %ecx
	setne	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	callq	gimp_action_group_set_action_sensitive
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	brushes_actions_update, .Lfunc_end1-brushes_actions_update
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"brushes-action"
	.size	.L.str, 15

	.type	brushes_actions,@object # @brushes_actions
	.section	.rodata,"a",@progbits
	.align	16
brushes_actions:
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	.L.str.8
	.quad	0
	.quad	0
	.quad	0
	.quad	.L.str.9
	.quad	.L.str.2
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	.L.str.12
	.quad	.L.str.13
	.quad	data_open_as_image_cmd_callback
	.quad	.L.str.14
	.quad	.L.str.15
	.quad	.L.str.16
	.quad	.L.str.17
	.quad	.L.str.12
	.quad	.L.str.18
	.quad	data_new_cmd_callback
	.quad	.L.str.19
	.quad	.L.str.3
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	0
	.quad	.L.str.22
	.quad	data_duplicate_cmd_callback
	.quad	.L.str.23
	.quad	.L.str.4
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	.L.str.12
	.quad	.L.str.26
	.quad	data_copy_location_cmd_callback
	.quad	.L.str.27
	.quad	.L.str.5
	.quad	.L.str.28
	.quad	.L.str.29
	.quad	.L.str.12
	.quad	.L.str.30
	.quad	data_delete_cmd_callback
	.quad	.L.str.31
	.quad	.L.str.32
	.quad	.L.str.33
	.quad	.L.str.34
	.quad	.L.str.12
	.quad	.L.str.35
	.quad	data_refresh_cmd_callback
	.quad	.L.str.36
	.size	brushes_actions, 392

	.type	brushes_edit_actions,@object # @brushes_edit_actions
	.align	16
brushes_edit_actions:
	.quad	.L.str.1
	.quad	.L.str.37
	.quad	.L.str.38
	.quad	0
	.quad	.L.str.39
	.quad	.L.str.40
	.quad	.L.str.41
	.size	brushes_edit_actions, 56

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"brushes-edit"
	.size	.L.str.1, 13

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"brushes-open-as-image"
	.size	.L.str.2, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"brushes-duplicate"
	.size	.L.str.3, 18

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"brushes-copy-location"
	.size	.L.str.4, 22

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"brushes-delete"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"brushes-popup"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-tool-paintbrush"
	.size	.L.str.7, 21

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Brushes Menu"
	.size	.L.str.8, 13

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-brush-dialog"
	.size	.L.str.9, 18

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gtk-open"
	.size	.L.str.10, 9

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"_Open Brush as Image"
	.size	.L.str.11, 21

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.zero	1
	.size	.L.str.12, 1

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Open brush as image"
	.size	.L.str.13, 20

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp-brush-open-as-image"
	.size	.L.str.14, 25

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"brushes-new"
	.size	.L.str.15, 12

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gtk-new"
	.size	.L.str.16, 8

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"_New Brush"
	.size	.L.str.17, 11

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Create a new brush"
	.size	.L.str.18, 19

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp-brush-new"
	.size	.L.str.19, 15

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gimp-duplicate"
	.size	.L.str.20, 15

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"D_uplicate Brush"
	.size	.L.str.21, 17

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Duplicate this brush"
	.size	.L.str.22, 21

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gimp-brush-duplicate"
	.size	.L.str.23, 21

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gtk-copy"
	.size	.L.str.24, 9

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Copy Brush _Location"
	.size	.L.str.25, 21

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Copy brush file location to clipboard"
	.size	.L.str.26, 38

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gimp-brush-copy-location"
	.size	.L.str.27, 25

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gtk-delete"
	.size	.L.str.28, 11

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"_Delete Brush"
	.size	.L.str.29, 14

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Delete this brush"
	.size	.L.str.30, 18

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gimp-brush-delete"
	.size	.L.str.31, 18

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"brushes-refresh"
	.size	.L.str.32, 16

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"gtk-refresh"
	.size	.L.str.33, 12

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"_Refresh Brushes"
	.size	.L.str.34, 17

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Refresh brushes"
	.size	.L.str.35, 16

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"gimp-brush-refresh"
	.size	.L.str.36, 19

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"gtk-edit"
	.size	.L.str.37, 9

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"_Edit Brush..."
	.size	.L.str.38, 15

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Edit this brush"
	.size	.L.str.39, 16

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"gimp-brush-editor"
	.size	.L.str.40, 18

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"gimp-brush-edit"
	.size	.L.str.41, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
