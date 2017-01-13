	.text
	.file	"drawable-commands.bc"
	.globl	drawable_equalize_cmd_callback
	.align	16, 0x90
	.type	drawable_equalize_cmd_callback,@function
drawable_equalize_cmd_callback:         # @drawable_equalize_cmd_callback
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	jmp	.LBB0_9
.LBB0_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_4
# BB#3:                                 # %if.then.3
	jmp	.LBB0_9
.LBB0_4:                                # %if.end.4
	movq	-16(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB0_6
# BB#5:                                 # %if.then.7
	jmp	.LBB0_9
.LBB0_6:                                # %if.end.8
	movq	-32(%rbp), %rdi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	je	.LBB0_8
# BB#7:                                 # %if.then.11
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-40(%rbp), %rcx
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str, %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$1, %edx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_message_literal
	jmp	.LBB0_9
.LBB0_8:                                # %if.end.14
	movl	$1, %esi
	movq	-32(%rbp), %rdi
	callq	gimp_drawable_equalize
	movq	-24(%rbp), %rdi
	callq	gimp_image_flush
.LBB0_9:                                # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	drawable_equalize_cmd_callback, .Lfunc_end0-drawable_equalize_cmd_callback
	.cfi_endproc

	.globl	drawable_invert_cmd_callback
	.align	16, 0x90
	.type	drawable_invert_cmd_callback,@function
drawable_invert_cmd_callback:           # @drawable_invert_cmd_callback
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	jmp	.LBB1_11
.LBB1_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB1_4
# BB#3:                                 # %if.then.3
	jmp	.LBB1_11
.LBB1_4:                                # %if.end.4
	movq	-16(%rbp), %rdi
	callq	action_data_get_display
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB1_6
# BB#5:                                 # %if.then.7
	jmp	.LBB1_11
.LBB1_6:                                # %if.end.8
	movq	-16(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB1_8
# BB#7:                                 # %if.then.11
	jmp	.LBB1_11
.LBB1_8:                                # %if.end.12
	movq	-32(%rbp), %rdi
	callq	gimp_drawable_is_indexed
	cmpl	$0, %eax
	je	.LBB1_10
# BB#9:                                 # %if.then.15
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-48(%rbp), %rcx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.1, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$1, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_message_literal
	jmp	.LBB1_11
.LBB1_10:                               # %if.end.18
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_drawable_invert
	movq	-24(%rbp), %rdi
	callq	gimp_image_flush
.LBB1_11:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	drawable_invert_cmd_callback, .Lfunc_end1-drawable_invert_cmd_callback
	.cfi_endproc

	.globl	drawable_levels_stretch_cmd_callback
	.align	16, 0x90
	.type	drawable_levels_stretch_cmd_callback,@function
drawable_levels_stretch_cmd_callback:   # @drawable_levels_stretch_cmd_callback
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	jmp	.LBB2_11
.LBB2_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB2_4
# BB#3:                                 # %if.then.3
	jmp	.LBB2_11
.LBB2_4:                                # %if.end.4
	movq	-16(%rbp), %rdi
	callq	action_data_get_display
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB2_6
# BB#5:                                 # %if.then.7
	jmp	.LBB2_11
.LBB2_6:                                # %if.end.8
	movq	-16(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB2_8
# BB#7:                                 # %if.then.11
	jmp	.LBB2_11
.LBB2_8:                                # %if.end.12
	movq	-32(%rbp), %rdi
	callq	gimp_drawable_is_rgb
	cmpl	$0, %eax
	jne	.LBB2_10
# BB#9:                                 # %if.then.15
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-48(%rbp), %rcx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.2, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$1, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_message_literal
	jmp	.LBB2_11
.LBB2_10:                               # %if.end.18
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_drawable_levels_stretch
	movq	-24(%rbp), %rdi
	callq	gimp_image_flush
.LBB2_11:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	drawable_levels_stretch_cmd_callback, .Lfunc_end2-drawable_levels_stretch_cmd_callback
	.cfi_endproc

	.globl	drawable_offset_cmd_callback
	.align	16, 0x90
	.type	drawable_offset_cmd_callback,@function
drawable_offset_cmd_callback:           # @drawable_offset_cmd_callback
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
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	jmp	.LBB3_7
.LBB3_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB3_4
# BB#3:                                 # %if.then.3
	jmp	.LBB3_7
.LBB3_4:                                # %if.end.4
	movq	-16(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB3_6
# BB#5:                                 # %if.then.7
	jmp	.LBB3_7
.LBB3_6:                                # %if.end.8
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	action_data_get_context
	movq	-40(%rbp), %rdx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	offset_dialog_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
.LBB3_7:                                # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	drawable_offset_cmd_callback, .Lfunc_end3-drawable_offset_cmd_callback
	.cfi_endproc

	.globl	drawable_linked_cmd_callback
	.align	16, 0x90
	.type	drawable_linked_cmd_callback,@function
drawable_linked_cmd_callback:           # @drawable_linked_cmd_callback
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	jmp	.LBB4_18
.LBB4_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB4_4
# BB#3:                                 # %if.then.3
	jmp	.LBB4_18
.LBB4_4:                                # %if.end.4
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_toggle_action_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_action_get_active
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rsi
	movq	%rsi, -48(%rbp)
	callq	gimp_layer_mask_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB4_6
# BB#5:                                 # %if.then.10
	movl	$0, -60(%rbp)
	jmp	.LBB4_11
.LBB4_6:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_9
# BB#7:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB4_9
# BB#8:                                 # %if.then.13
	movl	$1, -60(%rbp)
	jmp	.LBB4_10
.LBB4_9:                                # %if.else.14
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB4_10:                               # %if.end.16
	jmp	.LBB4_11
.LBB4_11:                               # %if.end.17
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB4_13
# BB#12:                                # %if.then.19
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_layer_mask_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_layer_mask_get_layer
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
.LBB4_13:                               # %if.end.25
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_linked
	movl	-108(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	je	.LBB4_18
# BB#14:                                # %if.then.30
	movl	$1, -76(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_undo_get_type
	movl	$52, %edx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_can_compress
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB4_17
# BB#15:                                # %land.lhs.true.36
	movq	-72(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_undo_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	72(%rax), %rax
	movq	-32(%rbp), %rsi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-144(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB4_17
# BB#16:                                # %if.then.42
	movl	$0, -76(%rbp)
.LBB4_17:                               # %if.end.43
	movq	-32(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-36(%rbp), %esi
	movl	-76(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_item_set_linked
	movq	-24(%rbp), %rdi
	callq	gimp_image_flush
.LBB4_18:                               # %if.end.46
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	drawable_linked_cmd_callback, .Lfunc_end4-drawable_linked_cmd_callback
	.cfi_endproc

	.globl	drawable_visible_cmd_callback
	.align	16, 0x90
	.type	drawable_visible_cmd_callback,@function
drawable_visible_cmd_callback:          # @drawable_visible_cmd_callback
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	jmp	.LBB5_18
.LBB5_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_4
# BB#3:                                 # %if.then.3
	jmp	.LBB5_18
.LBB5_4:                                # %if.end.4
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_toggle_action_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_action_get_active
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rsi
	movq	%rsi, -48(%rbp)
	callq	gimp_layer_mask_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB5_6
# BB#5:                                 # %if.then.10
	movl	$0, -60(%rbp)
	jmp	.LBB5_11
.LBB5_6:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_9
# BB#7:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB5_9
# BB#8:                                 # %if.then.13
	movl	$1, -60(%rbp)
	jmp	.LBB5_10
.LBB5_9:                                # %if.else.14
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB5_10:                               # %if.end.16
	jmp	.LBB5_11
.LBB5_11:                               # %if.end.17
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB5_13
# BB#12:                                # %if.then.19
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_layer_mask_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_layer_mask_get_layer
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
.LBB5_13:                               # %if.end.25
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_visible
	movl	-108(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	je	.LBB5_18
# BB#14:                                # %if.then.30
	movl	$1, -76(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_undo_get_type
	movl	$51, %edx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_can_compress
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB5_17
# BB#15:                                # %land.lhs.true.36
	movq	-72(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_undo_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	72(%rax), %rax
	movq	-32(%rbp), %rsi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-144(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB5_17
# BB#16:                                # %if.then.42
	movl	$0, -76(%rbp)
.LBB5_17:                               # %if.end.43
	movq	-32(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-36(%rbp), %esi
	movl	-76(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_item_set_visible
	movq	-24(%rbp), %rdi
	callq	gimp_image_flush
.LBB5_18:                               # %if.end.46
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	drawable_visible_cmd_callback, .Lfunc_end5-drawable_visible_cmd_callback
	.cfi_endproc

	.globl	drawable_lock_content_cmd_callback
	.align	16, 0x90
	.type	drawable_lock_content_cmd_callback,@function
drawable_lock_content_cmd_callback:     # @drawable_lock_content_cmd_callback
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	jmp	.LBB6_15
.LBB6_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB6_4
# BB#3:                                 # %if.then.3
	jmp	.LBB6_15
.LBB6_4:                                # %if.end.4
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_toggle_action_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_action_get_active
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rsi
	movq	%rsi, -48(%rbp)
	callq	gimp_layer_mask_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB6_6
# BB#5:                                 # %if.then.10
	movl	$0, -60(%rbp)
	jmp	.LBB6_11
.LBB6_6:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_9
# BB#7:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB6_9
# BB#8:                                 # %if.then.13
	movl	$1, -60(%rbp)
	jmp	.LBB6_10
.LBB6_9:                                # %if.else.14
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB6_10:                               # %if.end.16
	jmp	.LBB6_11
.LBB6_11:                               # %if.end.17
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB6_13
# BB#12:                                # %if.then.19
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_layer_mask_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_layer_mask_get_layer
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
.LBB6_13:                               # %if.end.25
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_lock_content
	movl	-100(%rbp), %edx        # 4-byte Reload
	cmpl	%eax, %edx
	je	.LBB6_15
# BB#14:                                # %if.then.30
	movl	$1, -68(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-36(%rbp), %esi
	movl	-68(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_item_set_lock_content
	movq	-24(%rbp), %rdi
	callq	gimp_image_flush
.LBB6_15:                               # %if.end.34
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	drawable_lock_content_cmd_callback, .Lfunc_end6-drawable_lock_content_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4611686018427387904     # double 2
	.text
	.globl	drawable_flip_cmd_callback
	.align	16, 0x90
	.type	drawable_flip_cmd_callback,@function
drawable_flip_cmd_callback:             # @drawable_flip_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp23:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	xorps	%xmm0, %xmm0
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movsd	%xmm0, -72(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	jmp	.LBB7_14
.LBB7_2:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB7_4
# BB#3:                                 # %if.then.3
	jmp	.LBB7_14
.LBB7_4:                                # %if.end.4
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB7_6
# BB#5:                                 # %if.then.7
	jmp	.LBB7_14
.LBB7_6:                                # %if.end.8
	movq	-40(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movl	-12(%rbp), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	je	.LBB7_7
	jmp	.LBB7_15
.LBB7_15:                               # %if.end.8
	movl	-84(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB7_8
	jmp	.LBB7_9
.LBB7_7:                                # %sw.bb
	cvtsi2sdl	-60(%rbp), %xmm0
	movq	-48(%rbp), %rdi
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	callq	gimp_item_get_width
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movsd	-96(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	jmp	.LBB7_10
.LBB7_8:                                # %sw.bb.13
	cvtsi2sdl	-64(%rbp), %xmm0
	movq	-48(%rbp), %rdi
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	callq	gimp_item_get_height
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movsd	-104(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	jmp	.LBB7_10
.LBB7_9:                                # %sw.default
	jmp	.LBB7_10
.LBB7_10:                               # %sw.epilog
	movq	-48(%rbp), %rdi
	callq	gimp_item_get_linked
	cmpl	$0, %eax
	je	.LBB7_12
# BB#11:                                # %if.then.21
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movl	-12(%rbp), %edx
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_item_linked_flip
	jmp	.LBB7_13
.LBB7_12:                               # %if.else
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movl	-12(%rbp), %edx
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_item_flip
.LBB7_13:                               # %if.end.22
	movq	-32(%rbp), %rdi
	callq	gimp_image_flush
.LBB7_14:                               # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	drawable_flip_cmd_callback, .Lfunc_end7-drawable_flip_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4611686018427387904     # double 2
	.text
	.globl	drawable_rotate_cmd_callback
	.align	16, 0x90
	.type	drawable_rotate_cmd_callback,@function
drawable_rotate_cmd_callback:           # @drawable_rotate_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -84(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	jmp	.LBB8_19
.LBB8_2:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB8_4
# BB#3:                                 # %if.then.3
	jmp	.LBB8_19
.LBB8_4:                                # %if.end.4
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB8_6
# BB#5:                                 # %if.then.7
	jmp	.LBB8_19
.LBB8_6:                                # %if.end.8
	movq	-40(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_item_get_offset
	cvtsi2sdl	-60(%rbp), %xmm0
	movq	-56(%rbp), %rdi
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	callq	gimp_item_get_width
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movsd	-128(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	cvtsi2sdl	-64(%rbp), %xmm0
	movq	-56(%rbp), %rdi
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	callq	gimp_item_get_height
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movq	-56(%rbp), %rdx
	movq	%rdx, -96(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB8_8
# BB#7:                                 # %if.then.20
	movl	$0, -108(%rbp)
	jmp	.LBB8_13
.LBB8_8:                                # %if.else
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_11
# BB#9:                                 # %land.lhs.true
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB8_11
# BB#10:                                # %if.then.24
	movl	$1, -108(%rbp)
	jmp	.LBB8_12
.LBB8_11:                               # %if.else.25
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB8_12:                               # %if.end.27
	jmp	.LBB8_13
.LBB8_13:                               # %if.end.28
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB8_15
# BB#14:                                # %if.then.30
	movl	$1, -84(%rbp)
.LBB8_15:                               # %if.end.31
	movq	-56(%rbp), %rdi
	callq	gimp_item_get_linked
	cmpl	$0, %eax
	je	.LBB8_17
# BB#16:                                # %if.then.34
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	-12(%rbp), %edx
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_item_linked_rotate
	jmp	.LBB8_18
.LBB8_17:                               # %if.else.35
	movq	-56(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	-12(%rbp), %edx
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-84(%rbp), %ecx
	callq	gimp_item_rotate
.LBB8_18:                               # %if.end.36
	movq	-32(%rbp), %rdi
	callq	gimp_image_flush
.LBB8_19:                               # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	drawable_rotate_cmd_callback, .Lfunc_end8-drawable_rotate_cmd_callback
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Equalize does not operate on indexed layers."
	.size	.L.str, 45

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Invert does not operate on indexed layers."
	.size	.L.str.1, 43

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"White Balance operates only on RGB color layers."
	.size	.L.str.2, 49


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
