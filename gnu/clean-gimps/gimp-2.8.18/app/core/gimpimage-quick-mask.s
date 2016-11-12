	.text
	.file	"gimpimage-quick-mask.bc"
	.globl	gimp_image_set_quick_mask_state
	.align	16, 0x90
	.type	gimp_image_set_quick_mask_state,@function
gimp_image_set_quick_mask_state:        # @gimp_image_set_quick_mask_state
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_set_quick_mask_state, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_42
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rdi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gimp_image_get_quick_mask_state
	movl	-92(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB0_14
# BB#13:                                # %if.then.13
	jmp	.LBB0_42
.LBB0_14:                               # %if.end.14
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_image_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 280(%rax)
	je	.LBB0_16
# BB#15:                                # %if.then.18
	movq	-24(%rbp), %rax
	movl	280(%rax), %ecx
	andl	$2, %ecx
	cmpl	$0, %ecx
	setne	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movl	%ecx, -44(%rbp)
	jmp	.LBB0_17
.LBB0_16:                               # %if.else.21
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_active_channel
	cmpq	$0, %rax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -44(%rbp)
.LBB0_17:                               # %if.end.25
	cmpl	$0, -12(%rbp)
	je	.LBB0_19
# BB#18:                                # %cond.true
	xorl	%eax, %eax
	movl	$2, %ecx
	cmpl	$0, -44(%rbp)
	cmovnel	%ecx, %eax
	orl	$1, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB0_20
.LBB0_19:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB0_20
.LBB0_20:                               # %cond.end
	movl	-108(%rbp), %eax        # 4-byte Reload
	movq	-24(%rbp), %rcx
	movl	%eax, 280(%rcx)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_quick_mask
	movq	%rax, -40(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB0_31
# BB#21:                                # %if.then.33
	cmpq	$0, -40(%rbp)
	jne	.LBB0_30
# BB#22:                                # %if.then.35
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.2, %rsi
	movl	$10, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movl	$10, %esi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	movq	-32(%rbp), %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	gimp_channel_is_empty
	cmpl	$0, %eax
	je	.LBB0_26
# BB#23:                                # %if.then.40
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_floating_selection
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB0_25
# BB#24:                                # %if.then.44
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-80(%rbp), %rdi
	callq	floating_sel_to_layer
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB0_25:                               # %if.end.46
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_image_get_width
	movq	-8(%rbp), %rdi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	movabsq	$.L.str.3, %rcx
	movq	-24(%rbp), %rdi
	addq	$288, %rdi              # imm = 0x120
	movq	-136(%rbp), %rdx        # 8-byte Reload
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movl	-140(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	movq	-152(%rbp), %r8         # 8-byte Reload
	callq	gimp_channel_new
	xorl	%edx, %edx
	movl	%edx, %esi
	xorl	%edx, %edx
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_channel_clear
	jmp	.LBB0_27
.LBB0_26:                               # %if.else.50
	movq	-32(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_item_duplicate
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_channel_clear
	xorl	%edx, %edx
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$288, %rax              # imm = 0x120
	movq	%rax, %rsi
	callq	gimp_channel_set_color
	movq	-40(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	gimp_item_rename
	movl	%eax, -188(%rbp)        # 4-byte Spill
.LBB0_27:                               # %if.end.61
	movq	-24(%rbp), %rax
	cmpl	$0, 284(%rax)
	je	.LBB0_29
# BB#28:                                # %if.then.63
	xorl	%esi, %esi
	movq	-40(%rbp), %rdi
	callq	gimp_channel_invert
.LBB0_29:                               # %if.end.64
	xorl	%eax, %eax
	movl	%eax, %edx
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_image_add_channel
	movq	-8(%rbp), %rdi
	movl	%eax, -192(%rbp)        # 4-byte Spill
	callq	gimp_image_undo_group_end
	movl	%eax, -196(%rbp)        # 4-byte Spill
.LBB0_30:                               # %if.end.67
	jmp	.LBB0_41
.LBB0_31:                               # %if.else.68
	cmpq	$0, -40(%rbp)
	je	.LBB0_40
# BB#32:                                # %if.then.70
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_floating_selection
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.4, %rsi
	movl	$10, %ecx
	movl	%ecx, %edx
	movq	%rax, -88(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	g_dpgettext
	movl	$10, %esi
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	movq	-24(%rbp), %rdx
	cmpl	$0, 284(%rdx)
	movl	%eax, -212(%rbp)        # 4-byte Spill
	je	.LBB0_34
# BB#33:                                # %if.then.78
	movl	$1, %esi
	movq	-40(%rbp), %rdi
	callq	gimp_channel_invert
.LBB0_34:                               # %if.end.79
	cmpq	$0, -88(%rbp)
	je	.LBB0_37
# BB#35:                                # %land.lhs.true.81
	movq	-88(%rbp), %rdi
	callq	gimp_layer_get_floating_sel_drawable
	movq	-40(%rbp), %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-224(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB0_37
# BB#36:                                # %if.then.87
	movq	-88(%rbp), %rdi
	callq	floating_sel_anchor
.LBB0_37:                               # %if.end.88
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_mask
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gimp_selection_get_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_selection_load
	movl	$1, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_image_remove_channel
	cmpl	$0, -44(%rbp)
	jne	.LBB0_39
# BB#38:                                # %if.then.93
	movq	-8(%rbp), %rdi
	callq	gimp_image_unset_active_channel
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB0_39:                               # %if.end.95
	movq	-8(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movl	%eax, -252(%rbp)        # 4-byte Spill
.LBB0_40:                               # %if.end.97
	jmp	.LBB0_41
.LBB0_41:                               # %if.end.98
	movq	-8(%rbp), %rdi
	callq	gimp_image_quick_mask_changed
.LBB0_42:                               # %return
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_image_set_quick_mask_state, .Lfunc_end0-gimp_image_set_quick_mask_state
	.cfi_endproc

	.globl	gimp_image_get_quick_mask_state
	.align	16, 0x90
	.type	gimp_image_get_quick_mask_state,@function
gimp_image_get_quick_mask_state:        # @gimp_image_get_quick_mask_state
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_get_quick_mask_state, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB1_13
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	280(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB1_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_image_get_quick_mask_state, .Lfunc_end1-gimp_image_get_quick_mask_state
	.cfi_endproc

	.globl	gimp_image_get_quick_mask
	.align	16, 0x90
	.type	gimp_image_get_quick_mask,@function
gimp_image_get_quick_mask:              # @gimp_image_get_quick_mask
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_get_quick_mask, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB2_13
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	movabsq	$.L.str.3, %rsi
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_channel_by_name
	movq	%rax, -8(%rbp)
.LBB2_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_image_get_quick_mask, .Lfunc_end2-gimp_image_get_quick_mask
	.cfi_endproc

	.globl	gimp_image_set_quick_mask_color
	.align	16, 0x90
	.type	gimp_image_set_quick_mask_color,@function
gimp_image_set_quick_mask_color:        # @gimp_image_set_quick_mask_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_set_quick_mask_color, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_19
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB3_15
# BB#14:                                # %if.then.13
	jmp	.LBB3_16
.LBB3_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_set_quick_mask_color, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_19
.LBB3_16:                               # %if.end.15
	jmp	.LBB3_17
.LBB3_17:                               # %do.end.16
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rdi
	movq	%rdi, 288(%rax)
	movq	8(%rsi), %rdi
	movq	%rdi, 296(%rax)
	movq	16(%rsi), %rdi
	movq	%rdi, 304(%rax)
	movq	24(%rsi), %rsi
	movq	%rsi, 312(%rax)
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_quick_mask
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB3_19
# BB#18:                                # %if.then.21
	movl	$1, %edx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_channel_set_color
.LBB3_19:                               # %if.end.22
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_image_set_quick_mask_color, .Lfunc_end3-gimp_image_set_quick_mask_color
	.cfi_endproc

	.globl	gimp_image_get_quick_mask_color
	.align	16, 0x90
	.type	gimp_image_get_quick_mask_color,@function
gimp_image_get_quick_mask_color:        # @gimp_image_get_quick_mask_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_get_quick_mask_color, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_18
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB4_15
# BB#14:                                # %if.then.13
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_get_quick_mask_color, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_18
.LBB4_16:                               # %if.end.15
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.16
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	288(%rax), %rcx
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rcx, (%rsi)
	movq	296(%rax), %rcx
	movq	%rcx, 8(%rsi)
	movq	304(%rax), %rcx
	movq	%rcx, 16(%rsi)
	movq	312(%rax), %rax
	movq	%rax, 24(%rsi)
.LBB4_18:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_image_get_quick_mask_color, .Lfunc_end4-gimp_image_get_quick_mask_color
	.cfi_endproc

	.globl	gimp_image_quick_mask_invert
	.align	16, 0x90
	.type	gimp_image_quick_mask_invert,@function
gimp_image_quick_mask_invert:           # @gimp_image_quick_mask_invert
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_quick_mask_invert, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_17
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 280(%rax)
	je	.LBB5_16
# BB#13:                                # %if.then.14
	movq	-8(%rbp), %rdi
	callq	gimp_image_get_quick_mask
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB5_15
# BB#14:                                # %if.then.18
	movl	$1, %esi
	movq	-48(%rbp), %rdi
	callq	gimp_channel_invert
.LBB5_15:                               # %if.end.19
	jmp	.LBB5_16
.LBB5_16:                               # %if.end.20
	movq	-16(%rbp), %rax
	cmpl	$0, 284(%rax)
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	-16(%rbp), %rax
	movl	%edx, 284(%rax)
.LBB5_17:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_image_quick_mask_invert, .Lfunc_end5-gimp_image_quick_mask_invert
	.cfi_endproc

	.globl	gimp_image_get_quick_mask_inverted
	.align	16, 0x90
	.type	gimp_image_get_quick_mask_inverted,@function
gimp_image_get_quick_mask_inverted:     # @gimp_image_get_quick_mask_inverted
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp20:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_image_get_quick_mask_inverted, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	284(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB6_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_image_get_quick_mask_inverted, .Lfunc_end6-gimp_image_get_quick_mask_inverted
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_image_set_quick_mask_state,@object # @__func__.gimp_image_set_quick_mask_state
.L__func__.gimp_image_set_quick_mask_state:
	.asciz	"gimp_image_set_quick_mask_state"
	.size	.L__func__.gimp_image_set_quick_mask_state, 32

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"undo-type\004Enable Quick Mask"
	.size	.L.str.2, 28

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Qmask"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"undo-type\004Disable Quick Mask"
	.size	.L.str.4, 29

	.type	.L__func__.gimp_image_get_quick_mask_state,@object # @__func__.gimp_image_get_quick_mask_state
.L__func__.gimp_image_get_quick_mask_state:
	.asciz	"gimp_image_get_quick_mask_state"
	.size	.L__func__.gimp_image_get_quick_mask_state, 32

	.type	.L__func__.gimp_image_set_quick_mask_color,@object # @__func__.gimp_image_set_quick_mask_color
.L__func__.gimp_image_set_quick_mask_color:
	.asciz	"gimp_image_set_quick_mask_color"
	.size	.L__func__.gimp_image_set_quick_mask_color, 32

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"color != NULL"
	.size	.L.str.5, 14

	.type	.L__func__.gimp_image_get_quick_mask_color,@object # @__func__.gimp_image_get_quick_mask_color
.L__func__.gimp_image_get_quick_mask_color:
	.asciz	"gimp_image_get_quick_mask_color"
	.size	.L__func__.gimp_image_get_quick_mask_color, 32

	.type	.L__func__.gimp_image_get_quick_mask,@object # @__func__.gimp_image_get_quick_mask
.L__func__.gimp_image_get_quick_mask:
	.asciz	"gimp_image_get_quick_mask"
	.size	.L__func__.gimp_image_get_quick_mask, 26

	.type	.L__func__.gimp_image_quick_mask_invert,@object # @__func__.gimp_image_quick_mask_invert
.L__func__.gimp_image_quick_mask_invert:
	.asciz	"gimp_image_quick_mask_invert"
	.size	.L__func__.gimp_image_quick_mask_invert, 29

	.type	.L__func__.gimp_image_get_quick_mask_inverted,@object # @__func__.gimp_image_get_quick_mask_inverted
.L__func__.gimp_image_get_quick_mask_inverted:
	.asciz	"gimp_image_get_quick_mask_inverted"
	.size	.L__func__.gimp_image_get_quick_mask_inverted, 35


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
