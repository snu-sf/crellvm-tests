	.text
	.file	"channels-commands.bc"
	.globl	channels_edit_attributes_cmd_callback
	.align	16, 0x90
	.type	channels_edit_attributes_cmd_callback,@function
channels_edit_attributes_cmd_callback:  # @channels_edit_attributes_cmd_callback
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$232, %rsp
.Ltmp3:
	.cfi_offset %rbx, -40
.Ltmp4:
	.cfi_offset %r14, -32
.Ltmp5:
	.cfi_offset %r15, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	jmp	.LBB0_7
.LBB0_2:                                # %if.end
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_active_channel
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB0_4
# BB#3:                                 # %if.then.3
	jmp	.LBB0_7
.LBB0_4:                                # %if.end.4
	movq	-40(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB0_6
# BB#5:                                 # %if.then.7
	jmp	.LBB0_7
.LBB0_6:                                # %if.end.8
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	action_data_get_context
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rsi
	addq	$40, %rsi
	movq	-64(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movabsq	$.L.str, %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.3, %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.4, %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.5, %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.1, %rcx
	movabsq	$.L.str.2, %rsi
	xorl	%edx, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movq	-96(%rbp), %r9          # 8-byte Reload
	movl	%edx, -156(%rbp)        # 4-byte Spill
	movq	%r9, %rdx
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	movq	%r10, %rcx
	movq	-112(%rbp), %r8         # 8-byte Reload
	movq	-120(%rbp), %r9         # 8-byte Reload
	movq	-128(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	-168(%rbp), %r11        # 8-byte Reload
	movq	%r11, 8(%rsp)
	movq	-152(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 16(%rsp)
	movq	-136(%rbp), %r14        # 8-byte Reload
	movq	%r14, 24(%rsp)
	movq	%r11, 32(%rsp)
	movq	-144(%rbp), %r14        # 8-byte Reload
	movq	%r14, 40(%rsp)
	movq	%rax, 48(%rsp)
	movl	$0, 56(%rsp)
	callq	channel_options_dialog_new
	movabsq	$.L.str.6, %rsi
	movabsq	$channels_edit_channel_response, %rcx
	xorl	%r15d, %r15d
	movl	%r15d, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-176(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-48(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
.LBB0_7:                                # %return
	addq	$232, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	channels_edit_attributes_cmd_callback, .Lfunc_end0-channels_edit_attributes_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4547007122018943789     # double 1.0E-4
	.text
	.align	16, 0x90
	.type	channels_edit_channel_response,@function
channels_edit_channel_response:         # @channels_edit_channel_response
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$-5, -12(%rbp)
	jne	.LBB1_19
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -76(%rbp)
	movl	$0, -80(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_button_get_color
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB1_3
# BB#2:                                 # %if.then.8
	movl	$1, -76(%rbp)
.LBB1_3:                                # %if.end
	leaq	-72(%rbp), %rdi
	movq	-32(%rbp), %rax
	addq	$40, %rax
	movq	%rax, %rsi
	callq	gimp_rgba_distance
	movsd	.LCPI1_0, %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB1_5
# BB#4:                                 # %if.then.12
	movl	$1, -80(%rbp)
.LBB1_5:                                # %if.end.13
	cmpl	$0, -76(%rbp)
	je	.LBB1_8
# BB#6:                                 # %land.lhs.true
	cmpl	$0, -80(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then.16
	movabsq	$.L.str, %rdi
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$19, %esi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB1_8:                                # %if.end.19
	cmpl	$0, -76(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.21
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_item_rename
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB1_10:                               # %if.end.25
	cmpl	$0, -80(%rbp)
	je	.LBB1_12
# BB#11:                                # %if.then.27
	leaq	-72(%rbp), %rsi
	movl	$1, %edx
	movq	-32(%rbp), %rdi
	callq	gimp_channel_set_color
.LBB1_12:                               # %if.end.28
	cmpl	$0, -76(%rbp)
	je	.LBB1_15
# BB#13:                                # %land.lhs.true.30
	cmpl	$0, -80(%rbp)
	je	.LBB1_15
# BB#14:                                # %if.then.32
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_image_undo_group_end
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB1_15:                               # %if.end.35
	cmpl	$0, -76(%rbp)
	jne	.LBB1_17
# BB#16:                                # %lor.lhs.false
	cmpl	$0, -80(%rbp)
	je	.LBB1_18
.LBB1_17:                               # %if.then.38
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_image_flush
.LBB1_18:                               # %if.end.40
	jmp	.LBB1_19
.LBB1_19:                               # %if.end.41
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_destroy
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	channels_edit_channel_response, .Lfunc_end1-channels_edit_channel_response
	.cfi_endproc

	.globl	channels_new_cmd_callback
	.align	16, 0x90
	.type	channels_new_cmd_callback,@function
channels_new_cmd_callback:              # @channels_new_cmd_callback
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$208, %rsp
.Ltmp12:
	.cfi_offset %rbx, -48
.Ltmp13:
	.cfi_offset %r12, -40
.Ltmp14:
	.cfi_offset %r14, -32
.Ltmp15:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	jmp	.LBB2_8
.LBB2_2:                                # %if.end
	movq	-48(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB2_4
# BB#3:                                 # %if.then.3
	jmp	.LBB2_8
.LBB2_4:                                # %if.end.4
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	action_data_get_context
	movq	-72(%rbp), %rcx
	cmpq	$0, channel_name
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	je	.LBB2_6
# BB#5:                                 # %cond.true
	movq	channel_name, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB2_7
.LBB2_6:                                # %cond.false
	movabsq	$.L.str.7, %rdi
	callq	gettext
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB2_7:                                # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movabsq	$.L.str.8, %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.11, %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.12, %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.5, %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$channel_color, %r8
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.10, %rdx
	movl	$1, %ecx
	movq	-80(%rbp), %r9          # 8-byte Reload
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	-88(%rbp), %r10         # 8-byte Reload
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movq	%r10, %rdx
	movq	-96(%rbp), %r11         # 8-byte Reload
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	movq	%r11, %rcx
	movq	-112(%rbp), %r9         # 8-byte Reload
	movq	-120(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	-144(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 8(%rsp)
	movq	-152(%rbp), %r14        # 8-byte Reload
	movq	%r14, 16(%rsp)
	movq	-128(%rbp), %r15        # 8-byte Reload
	movq	%r15, 24(%rsp)
	movq	%rbx, 32(%rsp)
	movq	-136(%rbp), %r15        # 8-byte Reload
	movq	%r15, 40(%rsp)
	movq	%rax, 48(%rsp)
	movl	$1, 56(%rsp)
	callq	channel_options_dialog_new
	movabsq	$.L.str.6, %rsi
	movabsq	$channels_new_channel_response, %rcx
	xorl	%r12d, %r12d
	movl	%r12d, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-168(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-56(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
.LBB2_8:                                # %return
	addq	$208, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	channels_new_cmd_callback, .Lfunc_end2-channels_new_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	channels_new_channel_response,@function
channels_new_channel_response:          # @channels_new_channel_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$-5, -12(%rbp)
	jne	.LBB3_7
# BB#1:                                 # %if.then
	cmpq	$0, channel_name
	je	.LBB3_3
# BB#2:                                 # %if.then.1
	movq	channel_name, %rdi
	callq	g_free
.LBB3_3:                                # %if.end
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	%rax, %rdi
	callq	g_strdup
	movq	%rax, channel_name
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$channel_color, %rsi
	movq	%rax, %rdi
	callq	gimp_color_button_get_color
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	cmpl	$0, %eax
	je	.LBB3_5
# BB#4:                                 # %if.then.11
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_image_get_mask
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_item_duplicate
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	channel_name, %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_name
	movabsq	$channel_color, %rsi
	xorl	%edx, %edx
	movq	-32(%rbp), %rdi
	callq	gimp_channel_set_color
	jmp	.LBB3_6
.LBB3_5:                                # %if.else
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_image_get_width
	movq	-24(%rbp), %rdi
	movq	32(%rdi), %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	movabsq	$channel_color, %r8
	movq	channel_name, %rcx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	-108(%rbp), %esi        # 4-byte Reload
	movl	%eax, %edx
	callq	gimp_channel_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$3, %edx
	movq	-24(%rbp), %rcx
	movq	40(%rcx), %rsi
	movq	%rax, %rdi
	callq	gimp_drawable_fill_by_type
.LBB3_6:                                # %if.end.29
	movl	$1, %eax
	movl	%eax, %edx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$1, %r8d
	movq	-24(%rbp), %rsi
	movq	32(%rsi), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_image_add_channel
	movq	-24(%rbp), %rdx
	movq	32(%rdx), %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	callq	gimp_image_flush
.LBB3_7:                                # %if.end.33
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_destroy
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	channels_new_channel_response, .Lfunc_end3-channels_new_channel_response
	.cfi_endproc

	.globl	channels_new_last_vals_cmd_callback
	.align	16, 0x90
	.type	channels_new_last_vals_cmd_callback,@function
channels_new_last_vals_cmd_callback:    # @channels_new_last_vals_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	jmp	.LBB4_13
.LBB4_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_action_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	48(%rax), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_channel_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB4_4
# BB#3:                                 # %if.then.5
	movl	$0, -92(%rbp)
	jmp	.LBB4_9
.LBB4_4:                                # %if.else
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_7
# BB#5:                                 # %land.lhs.true
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB4_7
# BB#6:                                 # %if.then.8
	movl	$1, -92(%rbp)
	jmp	.LBB4_8
.LBB4_7:                                # %if.else.9
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB4_8:                                # %if.end.11
	jmp	.LBB4_9
.LBB4_9:                                # %if.end.12
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB4_11
# BB#10:                                # %if.then.14
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_action_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	48(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_width
	movl	%eax, -36(%rbp)
	movq	-104(%rbp), %rsi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_height
	movl	%eax, -40(%rbp)
	movq	-104(%rbp), %rsi
	movq	40(%rsi), %rdi
	movq	%rdi, -72(%rbp)
	movq	48(%rsi), %rdi
	movq	%rdi, -64(%rbp)
	movq	56(%rsi), %rdi
	movq	%rdi, -56(%rbp)
	movq	64(%rsi), %rsi
	movq	%rsi, -48(%rbp)
	jmp	.LBB4_12
.LBB4_11:                               # %if.else.28
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_width
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_height
	movl	%eax, -40(%rbp)
	movq	channel_color, %rdi
	movq	%rdi, -72(%rbp)
	movq	channel_color+8, %rdi
	movq	%rdi, -64(%rbp)
	movq	channel_color+16, %rdi
	movq	%rdi, -56(%rbp)
	movq	channel_color+24, %rdi
	movq	%rdi, -48(%rbp)
.LBB4_12:                               # %if.end.31
	movabsq	$.L.str.8, %rdi
	movq	-24(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$29, %esi
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	leaq	-72(%rbp), %r8
	movq	-24(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movq	channel_name, %rcx
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	gimp_channel_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_drawable_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	action_data_get_context
	movl	$3, %edx
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_drawable_fill_by_type
	movl	$1, %edx
                                        # kill: RDX<def> EDX<kill>
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$1, %r8d
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_image_add_channel
	movq	-24(%rbp), %rdi
	movl	%eax, -180(%rbp)        # 4-byte Spill
	callq	gimp_image_undo_group_end
	movq	-24(%rbp), %rdi
	movl	%eax, -184(%rbp)        # 4-byte Spill
	callq	gimp_image_flush
.LBB4_13:                               # %return
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	channels_new_last_vals_cmd_callback, .Lfunc_end4-channels_new_last_vals_cmd_callback
	.cfi_endproc

	.globl	channels_raise_cmd_callback
	.align	16, 0x90
	.type	channels_raise_cmd_callback,@function
channels_raise_cmd_callback:            # @channels_raise_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	jmp	.LBB5_5
.LBB5_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_channel
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_4
# BB#3:                                 # %if.then.3
	jmp	.LBB5_5
.LBB5_4:                                # %if.end.4
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
.LBB5_5:                                # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	channels_raise_cmd_callback, .Lfunc_end5-channels_raise_cmd_callback
	.cfi_endproc

	.globl	channels_raise_to_top_cmd_callback
	.align	16, 0x90
	.type	channels_raise_to_top_cmd_callback,@function
channels_raise_to_top_cmd_callback:     # @channels_raise_to_top_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	jmp	.LBB6_5
.LBB6_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_channel
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB6_4
# BB#3:                                 # %if.then.3
	jmp	.LBB6_5
.LBB6_4:                                # %if.end.4
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
.LBB6_5:                                # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	channels_raise_to_top_cmd_callback, .Lfunc_end6-channels_raise_to_top_cmd_callback
	.cfi_endproc

	.globl	channels_lower_cmd_callback
	.align	16, 0x90
	.type	channels_lower_cmd_callback,@function
channels_lower_cmd_callback:            # @channels_lower_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	jmp	.LBB7_5
.LBB7_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_channel
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB7_4
# BB#3:                                 # %if.then.3
	jmp	.LBB7_5
.LBB7_4:                                # %if.end.4
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
.LBB7_5:                                # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	channels_lower_cmd_callback, .Lfunc_end7-channels_lower_cmd_callback
	.cfi_endproc

	.globl	channels_lower_to_bottom_cmd_callback
	.align	16, 0x90
	.type	channels_lower_to_bottom_cmd_callback,@function
channels_lower_to_bottom_cmd_callback:  # @channels_lower_to_bottom_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	jmp	.LBB8_5
.LBB8_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_channel
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB8_4
# BB#3:                                 # %if.then.3
	jmp	.LBB8_5
.LBB8_4:                                # %if.end.4
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
.LBB8_5:                                # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	channels_lower_to_bottom_cmd_callback, .Lfunc_end8-channels_lower_to_bottom_cmd_callback
	.cfi_endproc

	.globl	channels_duplicate_cmd_callback
	.align	16, 0x90
	.type	channels_duplicate_cmd_callback,@function
channels_duplicate_cmd_callback:        # @channels_duplicate_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movl	$1, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	callq	gimp_component_editor_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB9_7
.LBB9_2:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_5
# BB#3:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB9_5
# BB#4:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB9_6
.LBB9_5:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB9_6:                                # %if.end
	jmp	.LBB9_7
.LBB9_7:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB9_11
# BB#8:                                 # %if.then.8
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB9_10
# BB#9:                                 # %if.then.14
	jmp	.LBB9_17
.LBB9_10:                               # %if.end.15
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_component_editor_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	208(%rax), %ecx
	movl	%ecx, -68(%rbp)
	callq	gimp_channel_type_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-80(%rbp), %r8
	movl	-68(%rbp), %ecx
	movq	%rax, %rdi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	-112(%rbp), %r9         # 8-byte Reload
	callq	gimp_enum_get_value
	movabsq	$.L.str.13, %rdi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	gettext
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_strdup_printf
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movq	%rax, -88(%rbp)
	movq	-24(%rbp), %rdi
	movl	-68(%rbp), %esi
	movq	-88(%rbp), %rdx
	callq	gimp_channel_new_from_component
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r10d, %r10d
	movq	%rax, %rdi
	movl	%r10d, %esi
	movl	%r10d, %edx
	callq	gimp_item_set_visible
	movq	-88(%rbp), %rdi
	callq	g_free
	jmp	.LBB9_16
.LBB9_11:                               # %if.else.25
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB9_13
# BB#12:                                # %if.then.29
	jmp	.LBB9_17
.LBB9_13:                               # %if.end.30
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_channel
	movq	%rax, -96(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB9_15
# BB#14:                                # %if.then.33
	jmp	.LBB9_17
.LBB9_15:                               # %if.end.34
	movq	-96(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_item_duplicate
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_channel_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-96(%rbp), %rdi
	callq	gimp_channel_get_parent
	movq	%rax, -40(%rbp)
.LBB9_16:                               # %if.end.43
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$1, %r8d
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_image_add_channel
	movq	-24(%rbp), %rdi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	gimp_image_flush
.LBB9_17:                               # %return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	channels_duplicate_cmd_callback, .Lfunc_end9-channels_duplicate_cmd_callback
	.cfi_endproc

	.globl	channels_delete_cmd_callback
	.align	16, 0x90
	.type	channels_delete_cmd_callback,@function
channels_delete_cmd_callback:           # @channels_delete_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
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
	callq	gimp_image_get_active_channel
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB10_4
# BB#3:                                 # %if.then.3
	jmp	.LBB10_5
.LBB10_4:                               # %if.end.4
	movl	$1, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_image_remove_channel
	movq	-24(%rbp), %rdi
	callq	gimp_image_flush
.LBB10_5:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	channels_delete_cmd_callback, .Lfunc_end10-channels_delete_cmd_callback
	.cfi_endproc

	.globl	channels_to_selection_cmd_callback
	.align	16, 0x90
	.type	channels_to_selection_cmd_callback,@function
channels_to_selection_cmd_callback:     # @channels_to_selection_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-12(%rbp), %esi
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	callq	gimp_component_editor_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB11_7
.LBB11_2:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_5
# BB#3:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB11_5
# BB#4:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB11_6
.LBB11_5:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB11_6:                               # %if.end
	jmp	.LBB11_7
.LBB11_7:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB11_11
# BB#8:                                 # %if.then.8
	movq	-24(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB11_10
# BB#9:                                 # %if.then.12
	jmp	.LBB11_17
.LBB11_10:                              # %if.end.13
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_component_editor_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	208(%rax), %ecx
	movl	%ecx, -68(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_mask
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movl	-68(%rbp), %esi
	movl	-28(%rbp), %edx
	movq	%rax, %rdi
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_channel_select_component
	jmp	.LBB11_16
.LBB11_11:                              # %if.else.17
	movq	-24(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB11_13
# BB#12:                                # %if.then.21
	jmp	.LBB11_17
.LBB11_13:                              # %if.end.22
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_active_channel
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB11_15
# BB#14:                                # %if.then.25
	jmp	.LBB11_17
.LBB11_15:                              # %if.end.26
	movq	-80(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorps	%xmm0, %xmm0
	movl	-28(%rbp), %esi
	movq	%rax, %rdi
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	movsd	-112(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gimp_item_to_selection
.LBB11_16:                              # %if.end.29
	movq	-40(%rbp), %rdi
	callq	gimp_image_flush
.LBB11_17:                              # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	channels_to_selection_cmd_callback, .Lfunc_end11-channels_to_selection_cmd_callback
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Channel Attributes"
	.size	.L.str, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-channel-edit"
	.size	.L.str.1, 18

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gtk-edit"
	.size	.L.str.2, 9

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Edit Channel Attributes"
	.size	.L.str.3, 24

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Edit Channel Color"
	.size	.L.str.4, 19

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"_Fill opacity:"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"response"
	.size	.L.str.6, 9

	.type	channel_color,@object   # @channel_color
	.data
	.align	8
channel_color:
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4602678819172646912     # double 0.5
	.size	channel_color, 32

	.type	channel_name,@object    # @channel_name
	.local	channel_name
	.comm	channel_name,8,8
	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"Channel"
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"New Channel"
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-channel-new"
	.size	.L.str.9, 17

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-channel"
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"New Channel Options"
	.size	.L.str.11, 20

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"New Channel Color"
	.size	.L.str.12, 18

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"%s Channel Copy"
	.size	.L.str.13, 16


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
