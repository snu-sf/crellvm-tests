	.text
	.file	"layers-commands.bc"
	.globl	layers_text_tool_cmd_callback
	.align	16, 0x90
	.type	layers_text_tool_cmd_callback,@function
layers_text_tool_cmd_callback:          # @layers_text_tool_cmd_callback
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	jmp	.LBB0_35
.LBB0_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_4
# BB#3:                                 # %if.then.3
	jmp	.LBB0_35
.LBB0_4:                                # %if.end.4
	movq	-16(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB0_6
# BB#5:                                 # %if.then.7
	jmp	.LBB0_35
.LBB0_6:                                # %if.end.8
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_text_layer
	cmpl	$0, %eax
	jne	.LBB0_8
# BB#7:                                 # %if.then.13
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	layers_edit_attributes_cmd_callback
	jmp	.LBB0_35
.LBB0_8:                                # %if.end.14
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	tool_manager_get_active
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_text_tool_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB0_10
# BB#9:                                 # %if.then.18
	movl	$0, -68(%rbp)
	jmp	.LBB0_15
.LBB0_10:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_13
# BB#11:                                # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB0_13
# BB#12:                                # %if.then.21
	movl	$1, -68(%rbp)
	jmp	.LBB0_14
.LBB0_13:                               # %if.else.22
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB0_14:                               # %if.end.24
	jmp	.LBB0_15
.LBB0_15:                               # %if.end.25
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	jne	.LBB0_26
# BB#16:                                # %if.then.27
	movabsq	$.L.str, %rsi
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_get_tool_info
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_tool_info_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB0_18
# BB#17:                                # %if.then.39
	movl	$0, -100(%rbp)
	jmp	.LBB0_23
.LBB0_18:                               # %if.else.40
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_21
# BB#19:                                # %land.lhs.true.43
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB0_21
# BB#20:                                # %if.then.47
	movl	$1, -100(%rbp)
	jmp	.LBB0_22
.LBB0_21:                               # %if.else.48
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB0_22:                               # %if.end.50
	jmp	.LBB0_23
.LBB0_23:                               # %if.end.51
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB0_25
# BB#24:                                # %if.then.54
	movq	-16(%rbp), %rdi
	callq	action_data_get_context
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_context_set_tool
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	tool_manager_get_active
	movq	%rax, -48(%rbp)
.LBB0_25:                               # %if.end.58
	jmp	.LBB0_26
.LBB0_26:                               # %if.end.59
	movq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_text_tool_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB0_28
# BB#27:                                # %if.then.68
	movl	$0, -124(%rbp)
	jmp	.LBB0_33
.LBB0_28:                               # %if.else.69
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_31
# BB#29:                                # %land.lhs.true.72
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB0_31
# BB#30:                                # %if.then.76
	movl	$1, -124(%rbp)
	jmp	.LBB0_32
.LBB0_31:                               # %if.else.77
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB0_32:                               # %if.end.79
	jmp	.LBB0_33
.LBB0_33:                               # %if.end.80
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB0_35
# BB#34:                                # %if.then.83
	movq	-48(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_text_tool_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_text_tool_set_layer
.LBB0_35:                               # %if.end.86
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	layers_text_tool_cmd_callback, .Lfunc_end0-layers_text_tool_cmd_callback
	.cfi_endproc

	.globl	layers_edit_attributes_cmd_callback
	.align	16, 0x90
	.type	layers_edit_attributes_cmd_callback,@function
layers_edit_attributes_cmd_callback:    # @layers_edit_attributes_cmd_callback
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
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	jmp	.LBB1_7
.LBB1_2:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB1_4
# BB#3:                                 # %if.then.3
	jmp	.LBB1_7
.LBB1_4:                                # %if.end.4
	movq	-16(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB1_6
# BB#5:                                 # %if.then.7
	jmp	.LBB1_7
.LBB1_6:                                # %if.end.8
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	-40(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	action_data_get_context
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gimp_object_get_name
	movabsq	$.L.str.1, %rdi
	movl	layer_fill_type, %r9d
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	%r9d, -100(%rbp)        # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.4, %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.2, %rcx
	movabsq	$.L.str.3, %rsi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movq	-96(%rbp), %r8          # 8-byte Reload
	movl	-100(%rbp), %r9d        # 4-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	-128(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	-120(%rbp), %r11        # 8-byte Reload
	movq	%r11, 16(%rsp)
	movq	%rax, 24(%rsp)
	movq	%r10, 32(%rsp)
	callq	layer_options_dialog_new
	movabsq	$.L.str.5, %rsi
	movabsq	$layers_edit_layer_response, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-136(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
.LBB1_7:                                # %return
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	layers_edit_attributes_cmd_callback, .Lfunc_end1-layers_edit_attributes_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	layers_edit_layer_response,@function
layers_edit_layer_response:             # @layers_edit_layer_response
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$-5, -12(%rbp)
	jne	.LBB2_10
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB2_6
# BB#2:                                 # %if.then.6
	movq	$0, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-48(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_item_rename
	cmpl	$0, %eax
	je	.LBB2_4
# BB#3:                                 # %if.then.11
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	gimp_image_flush
	jmp	.LBB2_5
.LBB2_4:                                # %if.else
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	32(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_message_literal
	leaq	-48(%rbp), %rdi
	callq	g_clear_error
	jmp	.LBB2_11
.LBB2_5:                                # %if.end
	jmp	.LBB2_6
.LBB2_6:                                # %if.end.14
	movq	-24(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB2_9
# BB#7:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_is_text_layer
	cmpl	$0, %eax
	je	.LBB2_9
# BB#8:                                 # %if.then.20
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	movabsq	$.L.str.20, %rsi
	xorl	%edx, %edx
	movl	%edx, %ecx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %edx
	movb	$0, %al
	callq	g_object_set
.LBB2_9:                                # %if.end.25
	jmp	.LBB2_10
.LBB2_10:                               # %if.end.26
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_destroy
.LBB2_11:                               # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	layers_edit_layer_response, .Lfunc_end2-layers_edit_layer_response
	.cfi_endproc

	.globl	layers_new_cmd_callback
	.align	16, 0x90
	.type	layers_new_cmd_callback,@function
layers_new_cmd_callback:                # @layers_new_cmd_callback
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	jmp	.LBB3_12
.LBB3_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB3_4
# BB#3:                                 # %if.then.3
	jmp	.LBB3_12
.LBB3_4:                                # %if.end.4
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_floating_selection
	movq	%rax, -48(%rbp)
	cmpq	$0, %rax
	je	.LBB3_8
# BB#5:                                 # %if.then.7
	leaq	-56(%rbp), %rsi
	movq	$0, -56(%rbp)
	movq	-48(%rbp), %rdi
	callq	floating_sel_to_layer
	cmpl	$0, %eax
	jne	.LBB3_7
# BB#6:                                 # %if.then.10
	movl	$80, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-40(%rbp), %rcx
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	-56(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_message_literal
	leaq	-56(%rbp), %rdi
	callq	g_clear_error
	jmp	.LBB3_12
.LBB3_7:                                # %if.end.12
	movq	-32(%rbp), %rdi
	callq	gimp_image_flush
	jmp	.LBB3_12
.LBB3_8:                                # %if.end.13
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	action_data_get_context
	movq	-40(%rbp), %rcx
	cmpq	$0, layer_name
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	je	.LBB3_10
# BB#9:                                 # %cond.true
	movq	layer_name, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB3_11
.LBB3_10:                               # %cond.false
	movabsq	$.L.str.6, %rdi
	callq	gettext
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB3_11:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movabsq	$.L.str.7, %rdi
	movl	layer_fill_type, %r9d
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movl	%r9d, -108(%rbp)        # 4-byte Spill
	callq	gettext
	movabsq	$.L.str.10, %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %rcx
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movq	-104(%rbp), %r8         # 8-byte Reload
	movl	-108(%rbp), %r9d        # 4-byte Reload
	movq	-120(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	-128(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	movq	-136(%rbp), %r11        # 8-byte Reload
	movq	%r11, 16(%rsp)
	movq	%rax, 24(%rsp)
	movq	%r10, 32(%rsp)
	callq	layer_options_dialog_new
	movabsq	$.L.str.5, %rsi
	movabsq	$layers_new_layer_response, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-144(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
.LBB3_12:                               # %return
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	layers_new_cmd_callback, .Lfunc_end3-layers_new_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	layers_new_layer_response,@function
layers_new_layer_response:              # @layers_new_layer_response
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$-5, -12(%rbp)
	jne	.LBB4_7
# BB#1:                                 # %if.then
	cmpq	$0, layer_name
	je	.LBB4_3
# BB#2:                                 # %if.then.1
	movq	layer_name, %rdi
	callq	g_free
.LBB4_3:                                # %if.end
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, layer_name
	movq	-24(%rbp), %rax
	movl	32(%rax), %ecx
	movl	%ecx, layer_fill_type
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 36(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_size_entry_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_size_entry_get_refval
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 40(%rax)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-24(%rbp), %rax
	movl	36(%rax), %esi
	movq	-24(%rbp), %rax
	movl	40(%rax), %edx
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%edx, -68(%rbp)         # 4-byte Spill
	movl	%esi, -72(%rbp)         # 4-byte Spill
	callq	gimp_image_base_type_with_alpha
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%r9d, %r9d
	movq	layer_name, %r8
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	-72(%rbp), %esi         # 4-byte Reload
	movl	-68(%rbp), %edx         # 4-byte Reload
	movl	%eax, %ecx
	callq	gimp_layer_new
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB4_5
# BB#4:                                 # %if.then.21
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	56(%rsi), %rsi
	movl	layer_fill_type, %edx
	movq	%rax, %rdi
	callq	gimp_drawable_fill_by_type
	movl	$1, %edx
                                        # kill: RDX<def> EDX<kill>
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$1, %r8d
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_image_add_layer
	movq	-24(%rbp), %rdx
	movq	48(%rdx), %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gimp_image_flush
	jmp	.LBB4_6
.LBB4_5:                                # %if.else
	movabsq	$.L.str.18, %rdi
	movabsq	$.L__func__.layers_new_layer_response, %rsi
	movb	$0, %al
	callq	g_warning
.LBB4_6:                                # %if.end.27
	jmp	.LBB4_7
.LBB4_7:                                # %if.end.28
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_destroy
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	layers_new_layer_response, .Lfunc_end4-layers_new_layer_response
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	layers_new_last_vals_cmd_callback
	.align	16, 0x90
	.type	layers_new_last_vals_cmd_callback,@function
layers_new_last_vals_cmd_callback:      # @layers_new_last_vals_cmd_callback
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
	subq	$240, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	jmp	.LBB5_19
.LBB5_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_4
# BB#3:                                 # %if.then.3
	jmp	.LBB5_19
.LBB5_4:                                # %if.end.4
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_floating_selection
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	je	.LBB5_8
# BB#5:                                 # %if.then.7
	leaq	-88(%rbp), %rsi
	movq	$0, -88(%rbp)
	movq	-40(%rbp), %rdi
	callq	floating_sel_to_layer
	cmpl	$0, %eax
	jne	.LBB5_7
# BB#6:                                 # %if.then.10
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-32(%rbp), %rcx
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	-88(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_message_literal
	leaq	-88(%rbp), %rdi
	callq	g_clear_error
	jmp	.LBB5_19
.LBB5_7:                                # %if.end.12
	movq	-24(%rbp), %rdi
	callq	gimp_image_flush
	jmp	.LBB5_19
.LBB5_8:                                # %if.end.13
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_action_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	48(%rax), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_layer_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB5_10
# BB#9:                                 # %if.then.18
	movl	$0, -108(%rbp)
	jmp	.LBB5_15
.LBB5_10:                               # %if.else
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_13
# BB#11:                                # %land.lhs.true
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB5_13
# BB#12:                                # %if.then.21
	movl	$1, -108(%rbp)
	jmp	.LBB5_14
.LBB5_13:                               # %if.else.22
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB5_14:                               # %if.end.24
	jmp	.LBB5_15
.LBB5_15:                               # %if.end.25
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB5_17
# BB#16:                                # %if.then.27
	movq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_action_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	48(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movq	-120(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	%eax, -52(%rbp)
	movq	-120(%rbp), %rdx
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	%eax, -56(%rbp)
	movq	-120(%rbp), %rdi
	callq	gimp_layer_get_opacity
	movsd	%xmm0, -72(%rbp)
	movq	-120(%rbp), %rdi
	callq	gimp_layer_get_mode
	movl	%eax, -76(%rbp)
	jmp	.LBB5_18
.LBB5_17:                               # %if.else.44
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_width
	movl	%eax, -52(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_height
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movl	%eax, -56(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -64(%rbp)
	movsd	%xmm0, -72(%rbp)
	movl	$0, -76(%rbp)
.LBB5_18:                               # %if.end.47
	movabsq	$.L.str.7, %rdi
	movq	-24(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$29, %esi
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	movq	-24(%rbp), %rdi
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edx
	movq	-24(%rbp), %rcx
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movl	%eax, -196(%rbp)        # 4-byte Spill
	movl	%edx, -200(%rbp)        # 4-byte Spill
	movl	%esi, -204(%rbp)        # 4-byte Spill
	callq	gimp_image_base_type_with_alpha
	movq	layer_name, %r8
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-76(%rbp), %r9d
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movl	-204(%rbp), %esi        # 4-byte Reload
	movl	-200(%rbp), %edx        # 4-byte Reload
	movl	%eax, %ecx
	callq	gimp_layer_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	action_data_get_context
	movl	layer_fill_type, %edx
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_drawable_fill_by_type
	movq	-48(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	-60(%rbp), %esi
	movl	-64(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_item_translate
	movl	$1, %ecx
	movl	%ecx, %edx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$1, %r8d
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_image_add_layer
	movq	-24(%rbp), %rdi
	movl	%eax, -236(%rbp)        # 4-byte Spill
	callq	gimp_image_undo_group_end
	movq	-24(%rbp), %rdi
	movl	%eax, -240(%rbp)        # 4-byte Spill
	callq	gimp_image_flush
.LBB5_19:                               # %return
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	layers_new_last_vals_cmd_callback, .Lfunc_end5-layers_new_last_vals_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	layers_new_from_visible_cmd_callback
	.align	16, 0x90
	.type	layers_new_from_visible_cmd_callback,@function
layers_new_from_visible_cmd_callback:   # @layers_new_from_visible_cmd_callback
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	jmp	.LBB6_3
.LBB6_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_projection
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_pickable_interface_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_pickable_flush
	movq	-40(%rbp), %rdi
	callq	gimp_pickable_get_tiles
	movq	-24(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_image_base_type_with_alpha
	movabsq	$.L.str.11, %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	gettext
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	xorl	%r8d, %r8d
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movl	-68(%rbp), %edx         # 4-byte Reload
	movq	%rax, %rcx
	callq	gimp_layer_new_from_tiles
	movl	$1, %edx
                                        # kill: RDX<def> EDX<kill>
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$1, %r8d
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_image_add_layer
	movq	-24(%rbp), %rdi
	movl	%eax, -72(%rbp)         # 4-byte Spill
	callq	gimp_image_flush
.LBB6_3:                                # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	layers_new_from_visible_cmd_callback, .Lfunc_end6-layers_new_from_visible_cmd_callback
	.cfi_endproc

	.globl	layers_new_group_cmd_callback
	.align	16, 0x90
	.type	layers_new_group_cmd_callback,@function
layers_new_group_cmd_callback:          # @layers_new_group_cmd_callback
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	jmp	.LBB7_3
.LBB7_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_group_layer_new
	movl	$1, %ecx
	movl	%ecx, %edx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$1, %r8d
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_image_add_layer
	movq	-24(%rbp), %rdi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	gimp_image_flush
.LBB7_3:                                # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	layers_new_group_cmd_callback, .Lfunc_end7-layers_new_group_cmd_callback
	.cfi_endproc

	.globl	layers_select_cmd_callback
	.align	16, 0x90
	.type	layers_select_cmd_callback,@function
layers_select_cmd_callback:             # @layers_select_cmd_callback
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	jmp	.LBB8_8
.LBB8_2:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB8_4
# BB#3:                                 # %if.then.3
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_container
	movq	%rax, -48(%rbp)
	jmp	.LBB8_5
.LBB8_4:                                # %if.else
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_layers
	movq	%rax, -48(%rbp)
.LBB8_5:                                # %if.end.8
	movl	-12(%rbp), %edi
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	callq	action_select_object
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB8_8
# BB#6:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.LBB8_8
# BB#7:                                 # %if.then.11
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_image_set_active_layer
	movq	-32(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_image_flush
.LBB8_8:                                # %if.end.13
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	layers_select_cmd_callback, .Lfunc_end8-layers_select_cmd_callback
	.cfi_endproc

	.globl	layers_raise_cmd_callback
	.align	16, 0x90
	.type	layers_raise_cmd_callback,@function
layers_raise_cmd_callback:              # @layers_raise_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	jmp	.LBB9_5
.LBB9_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB9_4
# BB#3:                                 # %if.then.3
	jmp	.LBB9_5
.LBB9_4:                                # %if.end.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_raise_item
	movq	-24(%rbp), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	gimp_image_flush
.LBB9_5:                                # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	layers_raise_cmd_callback, .Lfunc_end9-layers_raise_cmd_callback
	.cfi_endproc

	.globl	layers_raise_to_top_cmd_callback
	.align	16, 0x90
	.type	layers_raise_to_top_cmd_callback,@function
layers_raise_to_top_cmd_callback:       # @layers_raise_to_top_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	jmp	.LBB10_5
.LBB10_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB10_4
# BB#3:                                 # %if.then.3
	jmp	.LBB10_5
.LBB10_4:                               # %if.end.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_raise_item_to_top
	movq	-24(%rbp), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	gimp_image_flush
.LBB10_5:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	layers_raise_to_top_cmd_callback, .Lfunc_end10-layers_raise_to_top_cmd_callback
	.cfi_endproc

	.globl	layers_lower_cmd_callback
	.align	16, 0x90
	.type	layers_lower_cmd_callback,@function
layers_lower_cmd_callback:              # @layers_lower_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	jmp	.LBB11_5
.LBB11_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB11_4
# BB#3:                                 # %if.then.3
	jmp	.LBB11_5
.LBB11_4:                               # %if.end.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_lower_item
	movq	-24(%rbp), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	gimp_image_flush
.LBB11_5:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	layers_lower_cmd_callback, .Lfunc_end11-layers_lower_cmd_callback
	.cfi_endproc

	.globl	layers_lower_to_bottom_cmd_callback
	.align	16, 0x90
	.type	layers_lower_to_bottom_cmd_callback,@function
layers_lower_to_bottom_cmd_callback:    # @layers_lower_to_bottom_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB12_2
# BB#1:                                 # %if.then
	jmp	.LBB12_5
.LBB12_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB12_4
# BB#3:                                 # %if.then.3
	jmp	.LBB12_5
.LBB12_4:                               # %if.end.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_lower_item_to_bottom
	movq	-24(%rbp), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	gimp_image_flush
.LBB12_5:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	layers_lower_to_bottom_cmd_callback, .Lfunc_end12-layers_lower_to_bottom_cmd_callback
	.cfi_endproc

	.globl	layers_duplicate_cmd_callback
	.align	16, 0x90
	.type	layers_duplicate_cmd_callback,@function
layers_duplicate_cmd_callback:          # @layers_duplicate_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB13_2
# BB#1:                                 # %if.then
	jmp	.LBB13_5
.LBB13_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB13_4
# BB#3:                                 # %if.then.3
	jmp	.LBB13_5
.LBB13_4:                               # %if.end.4
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_item_duplicate
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_layer_get_parent
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$1, %r8d
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_add_layer
	movq	-24(%rbp), %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gimp_image_flush
.LBB13_5:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	layers_duplicate_cmd_callback, .Lfunc_end13-layers_duplicate_cmd_callback
	.cfi_endproc

	.globl	layers_anchor_cmd_callback
	.align	16, 0x90
	.type	layers_anchor_cmd_callback,@function
layers_anchor_cmd_callback:             # @layers_anchor_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB14_2
# BB#1:                                 # %if.then
	jmp	.LBB14_6
.LBB14_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB14_4
# BB#3:                                 # %if.then.3
	jmp	.LBB14_6
.LBB14_4:                               # %if.end.4
	movq	-32(%rbp), %rdi
	callq	gimp_layer_is_floating_sel
	cmpl	$0, %eax
	je	.LBB14_6
# BB#5:                                 # %if.then.7
	movq	-32(%rbp), %rdi
	callq	floating_sel_anchor
	movq	-24(%rbp), %rdi
	callq	gimp_image_flush
.LBB14_6:                               # %if.end.8
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	layers_anchor_cmd_callback, .Lfunc_end14-layers_anchor_cmd_callback
	.cfi_endproc

	.globl	layers_merge_down_cmd_callback
	.align	16, 0x90
	.type	layers_merge_down_cmd_callback,@function
layers_merge_down_cmd_callback:         # @layers_merge_down_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB15_2
# BB#1:                                 # %if.then
	jmp	.LBB15_5
.LBB15_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB15_4
# BB#3:                                 # %if.then.3
	jmp	.LBB15_5
.LBB15_4:                               # %if.end.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	action_data_get_context
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_merge_down
	movq	-24(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_flush
.LBB15_5:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	layers_merge_down_cmd_callback, .Lfunc_end15-layers_merge_down_cmd_callback
	.cfi_endproc

	.globl	layers_merge_group_cmd_callback
	.align	16, 0x90
	.type	layers_merge_group_cmd_callback,@function
layers_merge_group_cmd_callback:        # @layers_merge_group_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB16_2
# BB#1:                                 # %if.then
	jmp	.LBB16_5
.LBB16_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB16_4
# BB#3:                                 # %if.then.3
	jmp	.LBB16_5
.LBB16_4:                               # %if.end.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_group_layer_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_merge_group_layer
	movq	-24(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_flush
.LBB16_5:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	layers_merge_group_cmd_callback, .Lfunc_end16-layers_merge_group_cmd_callback
	.cfi_endproc

	.globl	layers_delete_cmd_callback
	.align	16, 0x90
	.type	layers_delete_cmd_callback,@function
layers_delete_cmd_callback:             # @layers_delete_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB17_2
# BB#1:                                 # %if.then
	jmp	.LBB17_5
.LBB17_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB17_4
# BB#3:                                 # %if.then.3
	jmp	.LBB17_5
.LBB17_4:                               # %if.end.4
	movl	$1, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_image_remove_layer
	movq	-24(%rbp), %rdi
	callq	gimp_image_flush
.LBB17_5:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	layers_delete_cmd_callback, .Lfunc_end17-layers_delete_cmd_callback
	.cfi_endproc

	.globl	layers_text_discard_cmd_callback
	.align	16, 0x90
	.type	layers_text_discard_cmd_callback,@function
layers_text_discard_cmd_callback:       # @layers_text_discard_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB18_2
# BB#1:                                 # %if.then
	jmp	.LBB18_13
.LBB18_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB18_4
# BB#3:                                 # %if.then.3
	jmp	.LBB18_13
.LBB18_4:                               # %if.end.4
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_text_layer_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB18_6
# BB#5:                                 # %if.then.7
	movl	$0, -52(%rbp)
	jmp	.LBB18_11
.LBB18_6:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_9
# BB#7:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB18_9
# BB#8:                                 # %if.then.10
	movl	$1, -52(%rbp)
	jmp	.LBB18_10
.LBB18_9:                               # %if.else.11
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB18_10:                              # %if.end.13
	jmp	.LBB18_11
.LBB18_11:                              # %if.end.14
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB18_13
# BB#12:                                # %if.then.16
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_text_layer_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_text_layer_discard
.LBB18_13:                              # %if.end.19
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	layers_text_discard_cmd_callback, .Lfunc_end18-layers_text_discard_cmd_callback
	.cfi_endproc

	.globl	layers_text_to_vectors_cmd_callback
	.align	16, 0x90
	.type	layers_text_to_vectors_cmd_callback,@function
layers_text_to_vectors_cmd_callback:    # @layers_text_to_vectors_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB19_2
# BB#1:                                 # %if.then
	jmp	.LBB19_13
.LBB19_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB19_4
# BB#3:                                 # %if.then.3
	jmp	.LBB19_13
.LBB19_4:                               # %if.end.4
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_text_layer_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB19_6
# BB#5:                                 # %if.then.7
	movl	$0, -52(%rbp)
	jmp	.LBB19_11
.LBB19_6:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_9
# BB#7:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB19_9
# BB#8:                                 # %if.then.10
	movl	$1, -52(%rbp)
	jmp	.LBB19_10
.LBB19_9:                               # %if.else.11
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB19_10:                              # %if.end.13
	jmp	.LBB19_11
.LBB19_11:                              # %if.end.14
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB19_13
# BB#12:                                # %if.then.16
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_text_layer_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	104(%rax), %rsi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	gimp_text_vectors_new
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-68(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movq	-64(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	-68(%rbp), %esi
	movl	-72(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_item_translate
	movl	$1, %ecx
	movl	%ecx, %edx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$1, %r8d
	movq	-24(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_image_add_vectors
	movq	-24(%rbp), %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	gimp_image_flush
.LBB19_13:                              # %if.end.28
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	layers_text_to_vectors_cmd_callback, .Lfunc_end19-layers_text_to_vectors_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI20_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	layers_text_along_vectors_cmd_callback
	.align	16, 0x90
	.type	layers_text_along_vectors_cmd_callback,@function
layers_text_along_vectors_cmd_callback: # @layers_text_along_vectors_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB20_2
# BB#1:                                 # %if.then
	jmp	.LBB20_17
.LBB20_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB20_4
# BB#3:                                 # %if.then.3
	jmp	.LBB20_17
.LBB20_4:                               # %if.end.4
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB20_6
# BB#5:                                 # %if.then.7
	jmp	.LBB20_17
.LBB20_6:                               # %if.end.8
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_vectors
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB20_8
# BB#7:                                 # %if.then.11
	jmp	.LBB20_17
.LBB20_8:                               # %if.end.12
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_text_layer_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB20_10
# BB#9:                                 # %if.then.15
	movl	$0, -60(%rbp)
	jmp	.LBB20_15
.LBB20_10:                              # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_13
# BB#11:                                # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB20_13
# BB#12:                                # %if.then.18
	movl	$1, -60(%rbp)
	jmp	.LBB20_14
.LBB20_13:                              # %if.else.19
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB20_14:                              # %if.end.21
	jmp	.LBB20_15
.LBB20_15:                              # %if.end.22
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB20_17
# BB#16:                                # %if.then.24
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_text_layer_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	104(%rax), %rsi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	gimp_text_vectors_new
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movsd	.LCPI20_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	%eax, %xmm1
	mulsd	%xmm1, %xmm0
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	callq	gimp_vectors_warp_vectors
	movq	-72(%rbp), %rsi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	gimp_item_set_visible
	movl	$1, %edx
                                        # kill: RDX<def> EDX<kill>
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$1, %r8d
	movq	-24(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_image_add_vectors
	movq	-24(%rbp), %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	gimp_image_flush
.LBB20_17:                              # %if.end.35
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	layers_text_along_vectors_cmd_callback, .Lfunc_end20-layers_text_along_vectors_cmd_callback
	.cfi_endproc

	.globl	layers_resize_cmd_callback
	.align	16, 0x90
	.type	layers_resize_cmd_callback,@function
layers_resize_cmd_callback:             # @layers_resize_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$184, %rsp
.Ltmp66:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB21_2
# BB#1:                                 # %if.then
	jmp	.LBB21_19
.LBB21_2:                               # %if.end
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB21_4
# BB#3:                                 # %if.then.3
	jmp	.LBB21_19
.LBB21_4:                               # %if.end.4
	movq	-24(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB21_6
# BB#5:                                 # %if.then.7
	jmp	.LBB21_19
.LBB21_6:                               # %if.end.8
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_image_window_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB21_8
# BB#7:                                 # %if.then.11
	movl	$0, -84(%rbp)
	jmp	.LBB21_13
.LBB21_8:                               # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_11
# BB#9:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB21_11
# BB#10:                                # %if.then.14
	movl	$1, -84(%rbp)
	jmp	.LBB21_12
.LBB21_11:                              # %if.else.15
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB21_12:                              # %if.end.17
	jmp	.LBB21_13
.LBB21_13:                              # %if.end.18
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB21_15
# BB#14:                                # %if.then.20
	movq	-24(%rbp), %rdi
	callq	action_data_get_display
	movq	%rax, -32(%rbp)
.LBB21_15:                              # %if.end.22
	cmpl	$65536, layer_resize_unit # imm = 0x10000
	je	.LBB21_18
# BB#16:                                # %land.lhs.true.24
	cmpq	$0, -32(%rbp)
	je	.LBB21_18
# BB#17:                                # %if.then.26
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_shell
	movl	184(%rax), %ecx
	movl	%ecx, layer_resize_unit
.LBB21_18:                              # %if.end.28
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	action_data_get_context
	movabsq	$.L.str.12, %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-56(%rbp), %r8
	movl	layer_resize_unit, %ecx
	movq	-24(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%r8, -128(%rbp)         # 8-byte Spill
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	callq	action_data_get_context
	movabsq	$.L.str.13, %rsi
	movabsq	$gimp_standard_help_func, %r9
	movabsq	$layers_resize_layer_callback, %rdi
	movq	-104(%rbp), %r8         # 8-byte Reload
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	-128(%rbp), %r8         # 8-byte Reload
	movq	-152(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movl	-132(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 8(%rsp)
	movq	-144(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 16(%rsp)
	movq	%rax, 24(%rsp)
	callq	resize_dialog_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
.LBB21_19:                              # %return
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end21:
	.size	layers_resize_cmd_callback, .Lfunc_end21-layers_resize_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	layers_resize_layer_callback,@function
layers_resize_layer_callback:           # @layers_resize_layer_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp69:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	32(%rbp), %rax
	movl	24(%rbp), %r10d
	movl	16(%rbp), %r11d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movl	%r11d, -36(%rbp)
	movl	%r10d, -40(%rbp)
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movl	-28(%rbp), %ecx
	movl	%ecx, layer_resize_unit
	cmpl	$0, -20(%rbp)
	jle	.LBB22_6
# BB#1:                                 # %land.lhs.true
	cmpl	$0, -24(%rbp)
	jle	.LBB22_6
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-20(%rbp), %ecx
	movq	-64(%rbp), %rdi
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	callq	gimp_item_get_width
	movl	-84(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB22_5
# BB#3:                                 # %land.lhs.true.7
	movl	-24(%rbp), %eax
	movq	-64(%rbp), %rdi
	movl	%eax, -88(%rbp)         # 4-byte Spill
	callq	gimp_item_get_height
	movl	-88(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB22_5
# BB#4:                                 # %if.then.10
	jmp	.LBB22_7
.LBB22_5:                               # %if.end
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-32(%rbp), %r8d
	movl	-36(%rbp), %r9d
	callq	gimp_item_resize
	movq	-64(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, %rdi
	callq	gimp_image_flush
	jmp	.LBB22_7
.LBB22_6:                               # %if.else
	movabsq	$.L.str.25, %rdi
	movb	$0, %al
	callq	g_warning
.LBB22_7:                               # %if.end.12
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	layers_resize_layer_callback, .Lfunc_end22-layers_resize_layer_callback
	.cfi_endproc

	.globl	layers_resize_to_image_cmd_callback
	.align	16, 0x90
	.type	layers_resize_to_image_cmd_callback,@function
layers_resize_to_image_cmd_callback:    # @layers_resize_to_image_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp72:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB23_2
# BB#1:                                 # %if.then
	jmp	.LBB23_5
.LBB23_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB23_4
# BB#3:                                 # %if.then.3
	jmp	.LBB23_5
.LBB23_4:                               # %if.end.4
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	action_data_get_context
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_layer_resize_to_image
	movq	-24(%rbp), %rdi
	callq	gimp_image_flush
.LBB23_5:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	layers_resize_to_image_cmd_callback, .Lfunc_end23-layers_resize_to_image_cmd_callback
	.cfi_endproc

	.globl	layers_scale_cmd_callback
	.align	16, 0x90
	.type	layers_scale_cmd_callback,@function
layers_scale_cmd_callback:              # @layers_scale_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp73:
	.cfi_def_cfa_offset 16
.Ltmp74:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp75:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$168, %rsp
.Ltmp76:
	.cfi_offset %rbx, -40
.Ltmp77:
	.cfi_offset %r14, -32
.Ltmp78:
	.cfi_offset %r15, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	-40(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB24_2
# BB#1:                                 # %if.then
	jmp	.LBB24_21
.LBB24_2:                               # %if.end
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB24_4
# BB#3:                                 # %if.then.3
	jmp	.LBB24_21
.LBB24_4:                               # %if.end.4
	movq	-40(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB24_6
# BB#5:                                 # %if.then.7
	jmp	.LBB24_21
.LBB24_6:                               # %if.end.8
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_image_window_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB24_8
# BB#7:                                 # %if.then.11
	movl	$0, -100(%rbp)
	jmp	.LBB24_13
.LBB24_8:                               # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB24_11
# BB#9:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB24_11
# BB#10:                                # %if.then.14
	movl	$1, -100(%rbp)
	jmp	.LBB24_12
.LBB24_11:                              # %if.else.15
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB24_12:                              # %if.end.17
	jmp	.LBB24_13
.LBB24_13:                              # %if.end.18
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB24_15
# BB#14:                                # %if.then.20
	movq	-40(%rbp), %rdi
	callq	action_data_get_display
	movq	%rax, -48(%rbp)
.LBB24_15:                              # %if.end.22
	cmpl	$65536, layer_scale_unit # imm = 0x10000
	je	.LBB24_18
# BB#16:                                # %land.lhs.true.24
	cmpq	$0, -48(%rbp)
	je	.LBB24_18
# BB#17:                                # %if.then.26
	movq	-48(%rbp), %rdi
	callq	gimp_display_get_shell
	movl	184(%rax), %ecx
	movl	%ecx, layer_scale_unit
.LBB24_18:                              # %if.end.28
	cmpl	$-1, layer_scale_interp
	jne	.LBB24_20
# BB#19:                                # %if.then.30
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movl	64(%rax), %ecx
	movl	%ecx, layer_scale_interp
.LBB24_20:                              # %if.end.31
	movq	-64(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	action_data_get_context
	movabsq	$.L.str.14, %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.15, %rsi
	movabsq	$gimp_standard_help_func, %r9
	movabsq	$layers_scale_layer_callback, %rdi
	movq	-72(%rbp), %r8
	movl	layer_scale_unit, %ecx
	movl	layer_scale_interp, %edx
	movq	-48(%rbp), %r10
	movq	-120(%rbp), %r11        # 8-byte Reload
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%r11, %rdi
	movq	-128(%rbp), %rbx        # 8-byte Reload
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movq	%rbx, %rsi
	movl	%edx, -148(%rbp)        # 4-byte Spill
	movq	%rax, %rdx
	movq	-144(%rbp), %rax        # 8-byte Reload
	movl	%ecx, -152(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movq	%rax, (%rsp)
	movl	-152(%rbp), %r14d       # 4-byte Reload
	movl	%r14d, 8(%rsp)
	movl	-148(%rbp), %r14d       # 4-byte Reload
	movl	%r14d, 16(%rsp)
	movq	-136(%rbp), %r15        # 8-byte Reload
	movq	%r15, 24(%rsp)
	movq	%r10, 32(%rsp)
	callq	scale_dialog_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
.LBB24_21:                              # %return
	addq	$168, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	layers_scale_cmd_callback, .Lfunc_end24-layers_scale_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	layers_scale_layer_callback,@function
layers_scale_layer_callback:            # @layers_scale_layer_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
.Ltmp80:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp81:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	24(%rbp), %rax
	movl	16(%rbp), %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm1, -48(%rbp)
	movl	%r10d, -52(%rbp)
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_display_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -72(%rbp)
	movl	-28(%rbp), %ecx
	movl	%ecx, layer_scale_unit
	movl	-32(%rbp), %ecx
	movl	%ecx, layer_scale_interp
	cmpl	$0, -20(%rbp)
	jle	.LBB25_13
# BB#1:                                 # %land.lhs.true
	cmpl	$0, -24(%rbp)
	jle	.LBB25_13
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -80(%rbp)
	movq	$0, -96(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-20(%rbp), %ecx
	movq	-80(%rbp), %rdi
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	callq	gimp_item_get_width
	movl	-116(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB25_5
# BB#3:                                 # %land.lhs.true.7
	movl	-24(%rbp), %eax
	movq	-80(%rbp), %rdi
	movl	%eax, -120(%rbp)        # 4-byte Spill
	callq	gimp_item_get_height
	movl	-120(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB25_5
# BB#4:                                 # %if.then.10
	jmp	.LBB25_14
.LBB25_5:                               # %if.end
	cmpq	$0, -72(%rbp)
	je	.LBB25_7
# BB#6:                                 # %if.then.11
	movq	-72(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -88(%rbp)
	jmp	.LBB25_8
.LBB25_7:                               # %if.else
	callq	gimp_progress_dialog_new
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -88(%rbp)
.LBB25_8:                               # %if.end.17
	movabsq	$.L.str.23, %rdi
	movq	-88(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_progress_start
	movl	$1, %r9d
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-32(%rbp), %ecx
	movq	-88(%rbp), %r8
	callq	gimp_item_scale_by_origin
	cmpq	$0, -88(%rbp)
	je	.LBB25_10
# BB#9:                                 # %if.then.21
	movq	-88(%rbp), %rdi
	callq	gimp_progress_end
.LBB25_10:                              # %if.end.22
	cmpq	$0, -96(%rbp)
	je	.LBB25_12
# BB#11:                                # %if.then.24
	movq	-96(%rbp), %rdi
	callq	gtk_widget_destroy
.LBB25_12:                              # %if.end.25
	movq	-80(%rbp), %rdi
	callq	gimp_item_get_image
	movq	%rax, %rdi
	callq	gimp_image_flush
	jmp	.LBB25_14
.LBB25_13:                              # %if.else.27
	movabsq	$.L.str.24, %rdi
	movb	$0, %al
	callq	g_warning
.LBB25_14:                              # %if.end.28
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	layers_scale_layer_callback, .Lfunc_end25-layers_scale_layer_callback
	.cfi_endproc

	.globl	layers_crop_cmd_callback
	.align	16, 0x90
	.type	layers_crop_cmd_callback,@function
layers_crop_cmd_callback:               # @layers_crop_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp82:
	.cfi_def_cfa_offset 16
.Ltmp83:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp84:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB26_2
# BB#1:                                 # %if.then
	jmp	.LBB26_9
.LBB26_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB26_4
# BB#3:                                 # %if.then.3
	jmp	.LBB26_9
.LBB26_4:                               # %if.end.4
	movq	-16(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB26_6
# BB#5:                                 # %if.then.7
	jmp	.LBB26_9
.LBB26_6:                               # %if.end.8
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_mask
	leaq	-44(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	leaq	-52(%rbp), %rcx
	leaq	-56(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_channel_bounds
	cmpl	$0, %eax
	jne	.LBB26_8
# BB#7:                                 # %if.then.12
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-40(%rbp), %rcx
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.16, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$1, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_message_literal
	jmp	.LBB26_9
.LBB26_8:                               # %if.end.15
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_item_get_offset
	movabsq	$.L.str.17, %rdi
	movl	-44(%rbp), %ecx
	movl	-60(%rbp), %r8d
	subl	%ecx, %r8d
	movl	%r8d, -60(%rbp)
	movl	-48(%rbp), %ecx
	movl	-64(%rbp), %r8d
	subl	%ecx, %r8d
	movl	%r8d, -64(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$22, %esi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	movq	-32(%rbp), %rdx
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	action_data_get_context
	movl	-52(%rbp), %ecx
	subl	-44(%rbp), %ecx
	movl	-56(%rbp), %r8d
	subl	-48(%rbp), %r8d
	movl	-60(%rbp), %r9d
	movl	-64(%rbp), %r10d
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movl	%ecx, %edx
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	callq	gimp_item_resize
	movq	-24(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movq	-24(%rbp), %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	gimp_image_flush
.LBB26_9:                               # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	layers_crop_cmd_callback, .Lfunc_end26-layers_crop_cmd_callback
	.cfi_endproc

	.globl	layers_mask_add_cmd_callback
	.align	16, 0x90
	.type	layers_mask_add_cmd_callback,@function
layers_mask_add_cmd_callback:           # @layers_mask_add_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp85:
	.cfi_def_cfa_offset 16
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp87:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB27_2
# BB#1:                                 # %if.then
	jmp	.LBB27_7
.LBB27_2:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB27_4
# BB#3:                                 # %if.then.3
	jmp	.LBB27_7
.LBB27_4:                               # %if.end.4
	movq	-16(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB27_6
# BB#5:                                 # %if.then.7
	jmp	.LBB27_7
.LBB27_6:                               # %if.end.8
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	action_data_get_context
	movq	-48(%rbp), %rdx
	movl	layer_add_mask_type, %ecx
	movl	layer_mask_invert, %r8d
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	layer_add_mask_dialog_new
	movabsq	$.L.str.5, %rsi
	movabsq	$layers_add_mask_response, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-64(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_show
.LBB27_7:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	layers_mask_add_cmd_callback, .Lfunc_end27-layers_mask_add_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	layers_add_mask_response,@function
layers_add_mask_response:               # @layers_add_mask_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp88:
	.cfi_def_cfa_offset 16
.Ltmp89:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp90:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$-5, -12(%rbp)
	jne	.LBB28_7
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_image
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$6, 16(%rax)
	jne	.LBB28_4
# BB#2:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpq	$0, 24(%rax)
	jne	.LBB28_4
# BB#3:                                 # %if.then.5
	movl	$80, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.21, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$1, %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_message_literal
	jmp	.LBB28_8
.LBB28_4:                               # %if.end
	movabsq	$.L.str.22, %rdi
	movq	-24(%rbp), %rax
	movl	16(%rax), %ecx
	movl	%ecx, layer_add_mask_type
	movq	-24(%rbp), %rax
	movl	32(%rax), %ecx
	movl	%ecx, layer_mask_invert
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$24, %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	movq	-32(%rbp), %rdi
	movl	layer_add_mask_type, %esi
	movq	-24(%rbp), %rdx
	movq	24(%rdx), %rdx
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gimp_layer_create_mask
	movq	%rax, -48(%rbp)
	cmpl	$0, layer_mask_invert
	je	.LBB28_6
# BB#5:                                 # %if.then.14
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_channel_invert
.LBB28_6:                               # %if.end.17
	movl	$1, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_layer_add_mask
	movq	-40(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_image_undo_group_end
	movq	-40(%rbp), %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	gimp_image_flush
.LBB28_7:                               # %if.end.20
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_destroy
.LBB28_8:                               # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	layers_add_mask_response, .Lfunc_end28-layers_add_mask_response
	.cfi_endproc

	.globl	layers_mask_apply_cmd_callback
	.align	16, 0x90
	.type	layers_mask_apply_cmd_callback,@function
layers_mask_apply_cmd_callback:         # @layers_mask_apply_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp91:
	.cfi_def_cfa_offset 16
.Ltmp92:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp93:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB29_2
# BB#1:                                 # %if.then
	jmp	.LBB29_6
.LBB29_2:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB29_4
# BB#3:                                 # %if.then.3
	jmp	.LBB29_6
.LBB29_4:                               # %if.end.4
	movl	-12(%rbp), %eax
	movl	%eax, -44(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_layer_get_mask
	cmpq	$0, %rax
	je	.LBB29_6
# BB#5:                                 # %if.then.7
	movl	$1, %edx
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	gimp_layer_apply_mask
	movq	-32(%rbp), %rdi
	callq	gimp_image_flush
.LBB29_6:                               # %if.end.8
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	layers_mask_apply_cmd_callback, .Lfunc_end29-layers_mask_apply_cmd_callback
	.cfi_endproc

	.globl	layers_mask_edit_cmd_callback
	.align	16, 0x90
	.type	layers_mask_edit_cmd_callback,@function
layers_mask_edit_cmd_callback:          # @layers_mask_edit_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp94:
	.cfi_def_cfa_offset 16
.Ltmp95:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp96:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB30_2
# BB#1:                                 # %if.then
	jmp	.LBB30_6
.LBB30_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB30_4
# BB#3:                                 # %if.then.3
	jmp	.LBB30_6
.LBB30_4:                               # %if.end.4
	movq	-32(%rbp), %rdi
	callq	gimp_layer_get_mask
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB30_6
# BB#5:                                 # %if.then.7
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_toggle_action_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_action_get_active
	movl	%eax, -44(%rbp)
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	gimp_layer_mask_set_edit
	movq	-24(%rbp), %rdi
	callq	gimp_image_flush
.LBB30_6:                               # %if.end.11
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	layers_mask_edit_cmd_callback, .Lfunc_end30-layers_mask_edit_cmd_callback
	.cfi_endproc

	.globl	layers_mask_show_cmd_callback
	.align	16, 0x90
	.type	layers_mask_show_cmd_callback,@function
layers_mask_show_cmd_callback:          # @layers_mask_show_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp97:
	.cfi_def_cfa_offset 16
.Ltmp98:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp99:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB31_2
# BB#1:                                 # %if.then
	jmp	.LBB31_6
.LBB31_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB31_4
# BB#3:                                 # %if.then.3
	jmp	.LBB31_6
.LBB31_4:                               # %if.end.4
	movq	-32(%rbp), %rdi
	callq	gimp_layer_get_mask
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB31_6
# BB#5:                                 # %if.then.7
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_toggle_action_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_action_get_active
	movl	$1, %edx
	movl	%eax, -44(%rbp)
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	gimp_layer_mask_set_show
	movq	-24(%rbp), %rdi
	callq	gimp_image_flush
.LBB31_6:                               # %if.end.11
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	layers_mask_show_cmd_callback, .Lfunc_end31-layers_mask_show_cmd_callback
	.cfi_endproc

	.globl	layers_mask_disable_cmd_callback
	.align	16, 0x90
	.type	layers_mask_disable_cmd_callback,@function
layers_mask_disable_cmd_callback:       # @layers_mask_disable_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp100:
	.cfi_def_cfa_offset 16
.Ltmp101:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp102:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB32_2
# BB#1:                                 # %if.then
	jmp	.LBB32_6
.LBB32_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB32_4
# BB#3:                                 # %if.then.3
	jmp	.LBB32_6
.LBB32_4:                               # %if.end.4
	movq	-32(%rbp), %rdi
	callq	gimp_layer_get_mask
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB32_6
# BB#5:                                 # %if.then.7
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_toggle_action_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_action_get_active
	movl	$1, %edx
	movl	%eax, -44(%rbp)
	movq	-40(%rbp), %rdi
	cmpl	$0, -44(%rbp)
	setne	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	callq	gimp_layer_mask_set_apply
	movq	-24(%rbp), %rdi
	callq	gimp_image_flush
.LBB32_6:                               # %if.end.12
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	layers_mask_disable_cmd_callback, .Lfunc_end32-layers_mask_disable_cmd_callback
	.cfi_endproc

	.globl	layers_mask_to_selection_cmd_callback
	.align	16, 0x90
	.type	layers_mask_to_selection_cmd_callback,@function
layers_mask_to_selection_cmd_callback:  # @layers_mask_to_selection_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp103:
	.cfi_def_cfa_offset 16
.Ltmp104:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp105:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB33_2
# BB#1:                                 # %if.then
	jmp	.LBB33_6
.LBB33_2:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB33_4
# BB#3:                                 # %if.then.3
	jmp	.LBB33_6
.LBB33_4:                               # %if.end.4
	movq	-40(%rbp), %rdi
	callq	gimp_layer_get_mask
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB33_6
# BB#5:                                 # %if.then.7
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_item_to_selection
	movq	-32(%rbp), %rdi
	callq	gimp_image_flush
.LBB33_6:                               # %if.end.10
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	layers_mask_to_selection_cmd_callback, .Lfunc_end33-layers_mask_to_selection_cmd_callback
	.cfi_endproc

	.globl	layers_alpha_add_cmd_callback
	.align	16, 0x90
	.type	layers_alpha_add_cmd_callback,@function
layers_alpha_add_cmd_callback:          # @layers_alpha_add_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp106:
	.cfi_def_cfa_offset 16
.Ltmp107:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp108:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB34_2
# BB#1:                                 # %if.then
	jmp	.LBB34_6
.LBB34_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB34_4
# BB#3:                                 # %if.then.3
	jmp	.LBB34_6
.LBB34_4:                               # %if.end.4
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	jne	.LBB34_6
# BB#5:                                 # %if.then.9
	movq	-32(%rbp), %rdi
	callq	gimp_layer_add_alpha
	movq	-24(%rbp), %rdi
	callq	gimp_image_flush
.LBB34_6:                               # %if.end.10
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	layers_alpha_add_cmd_callback, .Lfunc_end34-layers_alpha_add_cmd_callback
	.cfi_endproc

	.globl	layers_alpha_remove_cmd_callback
	.align	16, 0x90
	.type	layers_alpha_remove_cmd_callback,@function
layers_alpha_remove_cmd_callback:       # @layers_alpha_remove_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp109:
	.cfi_def_cfa_offset 16
.Ltmp110:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp111:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB35_2
# BB#1:                                 # %if.then
	jmp	.LBB35_6
.LBB35_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB35_4
# BB#3:                                 # %if.then.3
	jmp	.LBB35_6
.LBB35_4:                               # %if.end.4
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_drawable_has_alpha
	cmpl	$0, %eax
	je	.LBB35_6
# BB#5:                                 # %if.then.9
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	action_data_get_context
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_layer_flatten
	movq	-24(%rbp), %rdi
	callq	gimp_image_flush
.LBB35_6:                               # %if.end.11
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	layers_alpha_remove_cmd_callback, .Lfunc_end35-layers_alpha_remove_cmd_callback
	.cfi_endproc

	.globl	layers_alpha_to_selection_cmd_callback
	.align	16, 0x90
	.type	layers_alpha_to_selection_cmd_callback,@function
layers_alpha_to_selection_cmd_callback: # @layers_alpha_to_selection_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp112:
	.cfi_def_cfa_offset 16
.Ltmp113:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp114:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB36_2
# BB#1:                                 # %if.then
	jmp	.LBB36_5
.LBB36_2:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB36_4
# BB#3:                                 # %if.then.3
	jmp	.LBB36_5
.LBB36_4:                               # %if.end.4
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_item_to_selection
	movq	-32(%rbp), %rdi
	callq	gimp_image_flush
.LBB36_5:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	layers_alpha_to_selection_cmd_callback, .Lfunc_end36-layers_alpha_to_selection_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI37_0:
	.quad	4607182418800017408     # double 1
.LCPI37_1:
	.quad	4571171282956062736     # double 0.0039215686274509803
.LCPI37_2:
	.quad	4576918229304087675     # double 0.01
.LCPI37_3:
	.quad	4591870180066957722     # double 0.10000000000000001
	.text
	.globl	layers_opacity_cmd_callback
	.align	16, 0x90
	.type	layers_opacity_cmd_callback,@function
layers_opacity_cmd_callback:            # @layers_opacity_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp115:
	.cfi_def_cfa_offset 16
.Ltmp116:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp117:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$1, -60(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB37_2
# BB#1:                                 # %if.then
	jmp	.LBB37_8
.LBB37_2:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB37_4
# BB#3:                                 # %if.then.3
	jmp	.LBB37_8
.LBB37_4:                               # %if.end.4
	movq	-32(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_undo_get_type
	movl	$56, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_can_compress
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB37_7
# BB#5:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_undo_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	72(%rax), %rax
	movq	-40(%rbp), %rsi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB37_7
# BB#6:                                 # %if.then.12
	movl	$0, -60(%rbp)
.LBB37_7:                               # %if.end.13
	movl	-12(%rbp), %edi
	movq	-40(%rbp), %rax
	movl	%edi, -100(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	callq	gimp_layer_get_opacity
	xorps	%xmm1, %xmm1
	movsd	.LCPI37_0, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI37_1, %xmm4        # xmm4 = mem[0],zero
	movsd	.LCPI37_2, %xmm5        # xmm5 = mem[0],zero
	movsd	.LCPI37_3, %xmm6        # xmm6 = mem[0],zero
	xorl	%esi, %esi
	movl	-100(%rbp), %edi        # 4-byte Reload
	movsd	%xmm1, -112(%rbp)       # 8-byte Spill
	movsd	%xmm2, -120(%rbp)       # 8-byte Spill
	movsd	-120(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	-112(%rbp), %xmm7       # 8-byte Reload
                                        # xmm7 = mem[0],zero
	callq	action_select_value
	movsd	%xmm0, -48(%rbp)
	movq	-40(%rbp), %rdi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %esi
	callq	gimp_layer_set_opacity
	movq	-32(%rbp), %rdi
	callq	gimp_image_flush
.LBB37_8:                               # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	layers_opacity_cmd_callback, .Lfunc_end37-layers_opacity_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI38_0:
	.quad	4626322717216342016     # double 20
.LCPI38_1:
	.quad	4607182418800017408     # double 1
	.text
	.globl	layers_mode_cmd_callback
	.align	16, 0x90
	.type	layers_mode_cmd_callback,@function
layers_mode_cmd_callback:               # @layers_mode_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp118:
	.cfi_def_cfa_offset 16
.Ltmp119:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp120:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$1, -60(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB38_2
# BB#1:                                 # %if.then
	jmp	.LBB38_8
.LBB38_2:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB38_4
# BB#3:                                 # %if.then.3
	jmp	.LBB38_8
.LBB38_4:                               # %if.end.4
	movq	-32(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_undo_get_type
	movl	$55, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_can_compress
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB38_7
# BB#5:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_undo_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	72(%rax), %rax
	movq	-40(%rbp), %rsi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB38_7
# BB#6:                                 # %if.then.12
	movl	$0, -60(%rbp)
.LBB38_7:                               # %if.end.13
	movq	-40(%rbp), %rdi
	callq	gimp_layer_get_mode
	movl	%eax, -44(%rbp)
	movl	-12(%rbp), %edi
	movl	-44(%rbp), %eax
	movl	%edi, -100(%rbp)        # 4-byte Spill
	movl	%eax, %edi
	callq	layers_mode_index
	xorps	%xmm0, %xmm0
	movsd	.LCPI38_0, %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI38_1, %xmm1        # xmm1 = mem[0],zero
	xorl	%esi, %esi
	cvtsi2sdl	%eax, %xmm3
	movl	-100(%rbp), %edi        # 4-byte Reload
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	-112(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm1, -120(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-112(%rbp), %xmm4       # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	-120(%rbp), %xmm5       # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	-120(%rbp), %xmm6       # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movsd	-112(%rbp), %xmm7       # 8-byte Reload
                                        # xmm7 = mem[0],zero
	callq	action_select_value
	cvttsd2si	%xmm0, %eax
	movl	%eax, -48(%rbp)
	movq	-40(%rbp), %rdi
	movslq	-48(%rbp), %rcx
	movl	layer_modes(,%rcx,4), %esi
	movl	-60(%rbp), %edx
	callq	gimp_layer_set_mode
	movq	-32(%rbp), %rdi
	callq	gimp_image_flush
.LBB38_8:                               # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	layers_mode_cmd_callback, .Lfunc_end38-layers_mode_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	layers_mode_index,@function
layers_mode_index:                      # @layers_mode_index
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp121:
	.cfi_def_cfa_offset 16
.Ltmp122:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp123:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	$0, -8(%rbp)
.LBB39_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movslq	-8(%rbp), %rdx
	cmpq	$20, %rdx
	movb	%cl, -9(%rbp)           # 1-byte Spill
	jae	.LBB39_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB39_1 Depth=1
	movslq	-8(%rbp), %rax
	movl	layer_modes(,%rax,4), %ecx
	cmpl	-4(%rbp), %ecx
	setne	%dl
	movb	%dl, -9(%rbp)           # 1-byte Spill
.LBB39_3:                               # %land.end
                                        #   in Loop: Header=BB39_1 Depth=1
	movb	-9(%rbp), %al           # 1-byte Reload
	testb	$1, %al
	jne	.LBB39_4
	jmp	.LBB39_5
.LBB39_4:                               # %while.body
                                        #   in Loop: Header=BB39_1 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB39_1
.LBB39_5:                               # %while.end
	movl	-8(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end39:
	.size	layers_mode_index, .Lfunc_end39-layers_mode_index
	.cfi_endproc

	.globl	layers_lock_alpha_cmd_callback
	.align	16, 0x90
	.type	layers_lock_alpha_cmd_callback,@function
layers_lock_alpha_cmd_callback:         # @layers_lock_alpha_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp124:
	.cfi_def_cfa_offset 16
.Ltmp125:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp126:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB40_2
# BB#1:                                 # %if.then
	jmp	.LBB40_9
.LBB40_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_layer
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB40_4
# BB#3:                                 # %if.then.3
	jmp	.LBB40_9
.LBB40_4:                               # %if.end.4
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_toggle_action_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_action_get_active
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	gimp_layer_get_lock_alpha
	movl	-68(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB40_9
# BB#5:                                 # %if.then.9
	movl	$1, -52(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_undo_get_type
	movl	$57, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_can_compress
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB40_8
# BB#6:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_undo_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	72(%rax), %rax
	movq	-32(%rbp), %rsi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB40_8
# BB#7:                                 # %if.then.18
	movl	$0, -52(%rbp)
.LBB40_8:                               # %if.end.19
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-52(%rbp), %edx
	callq	gimp_layer_set_lock_alpha
	movq	-24(%rbp), %rdi
	callq	gimp_image_flush
.LBB40_9:                               # %if.end.20
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	layers_lock_alpha_cmd_callback, .Lfunc_end40-layers_lock_alpha_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp127:
	.cfi_def_cfa_offset 16
.Ltmp128:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp129:
	.cfi_def_cfa_register %rbp
	subq	$384, %rsp              # imm = 0x180
	testb	%al, %al
	movaps	%xmm7, -224(%rbp)       # 16-byte Spill
	movaps	%xmm6, -240(%rbp)       # 16-byte Spill
	movaps	%xmm5, -256(%rbp)       # 16-byte Spill
	movaps	%xmm4, -272(%rbp)       # 16-byte Spill
	movaps	%xmm3, -288(%rbp)       # 16-byte Spill
	movaps	%xmm2, -304(%rbp)       # 16-byte Spill
	movaps	%xmm1, -320(%rbp)       # 16-byte Spill
	movaps	%xmm0, -336(%rbp)       # 16-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r9, -352(%rbp)         # 8-byte Spill
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	je	.LBB41_2
# BB#1:                                 # %entry
	movaps	-336(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -160(%rbp)
	movaps	-320(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -144(%rbp)
	movaps	-304(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -128(%rbp)
	movaps	-288(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -112(%rbp)
	movaps	-272(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -96(%rbp)
	movaps	-256(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -80(%rbp)
	movaps	-240(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -64(%rbp)
	movaps	-224(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -48(%rbp)
.LBB41_2:                               # %entry
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -184(%rbp)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -192(%rbp)
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -200(%rbp)
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	leaq	-208(%rbp), %r8
	movq	%r8, -16(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rdx
	movl	$.L.str.19, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end41:
	.size	g_warning, .Lfunc_end41-g_warning
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-text-tool"
	.size	.L.str, 15

	.type	layer_fill_type,@object # @layer_fill_type
	.data
	.align	4
layer_fill_type:
	.long	3                       # 0x3
	.size	layer_fill_type, 4

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Layer Attributes"
	.size	.L.str.1, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-layer-edit"
	.size	.L.str.2, 16

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gtk-edit"
	.size	.L.str.3, 9

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Edit Layer Attributes"
	.size	.L.str.4, 22

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"response"
	.size	.L.str.5, 9

	.type	layer_name,@object      # @layer_name
	.local	layer_name
	.comm	layer_name,8,8
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Layer"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"New Layer"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-layer-new"
	.size	.L.str.8, 15

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-layer"
	.size	.L.str.9, 11

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Create a New Layer"
	.size	.L.str.10, 19

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Visible"
	.size	.L.str.11, 8

	.type	layer_resize_unit,@object # @layer_resize_unit
	.local	layer_resize_unit
	.comm	layer_resize_unit,4,4
	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Set Layer Boundary Size"
	.size	.L.str.12, 24

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp-layer-resize"
	.size	.L.str.13, 18

	.type	layer_scale_unit,@object # @layer_scale_unit
	.local	layer_scale_unit
	.comm	layer_scale_unit,4,4
	.type	layer_scale_interp,@object # @layer_scale_interp
	.data
	.align	4
layer_scale_interp:
	.long	4294967295              # 0xffffffff
	.size	layer_scale_interp, 4

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"Scale Layer"
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimp-layer-scale"
	.size	.L.str.15, 17

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Cannot crop because the current selection is empty."
	.size	.L.str.16, 52

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Crop Layer"
	.size	.L.str.17, 11

	.type	layer_add_mask_type,@object # @layer_add_mask_type
	.local	layer_add_mask_type
	.comm	layer_add_mask_type,4,4
	.type	layer_mask_invert,@object # @layer_mask_invert
	.local	layer_mask_invert
	.comm	layer_mask_invert,4,4
	.type	layer_modes,@object     # @layer_modes
	.section	.rodata,"a",@progbits
	.align	16
layer_modes:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	15                      # 0xf
	.long	4                       # 0x4
	.long	5                       # 0x5
	.long	16                      # 0x10
	.long	17                      # 0x11
	.long	18                      # 0x12
	.long	19                      # 0x13
	.long	20                      # 0x14
	.long	21                      # 0x15
	.long	6                       # 0x6
	.long	7                       # 0x7
	.long	8                       # 0x8
	.long	9                       # 0x9
	.long	10                      # 0xa
	.long	11                      # 0xb
	.long	12                      # 0xc
	.long	13                      # 0xd
	.long	14                      # 0xe
	.size	layer_modes, 84

	.type	.L.str.18,@object       # @.str.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.18:
	.asciz	"%s: could not allocate new layer"
	.size	.L.str.18, 33

	.type	.L__func__.layers_new_layer_response,@object # @__func__.layers_new_layer_response
.L__func__.layers_new_layer_response:
	.asciz	"layers_new_layer_response"
	.size	.L__func__.layers_new_layer_response, 26

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Gimp-Actions"
	.size	.L.str.19, 13

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"auto-rename"
	.size	.L.str.20, 12

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Please select a channel first"
	.size	.L.str.21, 30

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Add Layer Mask"
	.size	.L.str.22, 15

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Scaling"
	.size	.L.str.23, 8

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Scale Error: Both width and height must be greater than zero."
	.size	.L.str.24, 62

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Resize Error: Both width and height must be greater than zero."
	.size	.L.str.25, 63


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
