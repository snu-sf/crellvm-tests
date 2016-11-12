	.text
	.file	"vectors-commands.bc"
	.globl	vectors_vectors_tool_cmd_callback
	.align	16, 0x90
	.type	vectors_vectors_tool_cmd_callback,@function
vectors_vectors_tool_cmd_callback:      # @vectors_vectors_tool_cmd_callback
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	jmp	.LBB0_31
.LBB0_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_vectors
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_4
# BB#3:                                 # %if.then.3
	jmp	.LBB0_31
.LBB0_4:                                # %if.end.4
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	tool_manager_get_active
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_vector_tool_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB0_6
# BB#5:                                 # %if.then.8
	movl	$0, -60(%rbp)
	jmp	.LBB0_11
.LBB0_6:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_9
# BB#7:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB0_9
# BB#8:                                 # %if.then.11
	movl	$1, -60(%rbp)
	jmp	.LBB0_10
.LBB0_9:                                # %if.else.12
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB0_10:                               # %if.end.14
	jmp	.LBB0_11
.LBB0_11:                               # %if.end.15
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	jne	.LBB0_22
# BB#12:                                # %if.then.17
	movabsq	$.L.str, %rsi
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_get_tool_info
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_tool_info_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB0_14
# BB#13:                                # %if.then.29
	movl	$0, -92(%rbp)
	jmp	.LBB0_19
.LBB0_14:                               # %if.else.30
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_17
# BB#15:                                # %land.lhs.true.33
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB0_17
# BB#16:                                # %if.then.37
	movl	$1, -92(%rbp)
	jmp	.LBB0_18
.LBB0_17:                               # %if.else.38
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB0_18:                               # %if.end.40
	jmp	.LBB0_19
.LBB0_19:                               # %if.end.41
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB0_21
# BB#20:                                # %if.then.44
	movq	-16(%rbp), %rdi
	callq	action_data_get_context
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_context_set_tool
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	tool_manager_get_active
	movq	%rax, -40(%rbp)
.LBB0_21:                               # %if.end.48
	jmp	.LBB0_22
.LBB0_22:                               # %if.end.49
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_vector_tool_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB0_24
# BB#23:                                # %if.then.58
	movl	$0, -116(%rbp)
	jmp	.LBB0_29
.LBB0_24:                               # %if.else.59
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_27
# BB#25:                                # %land.lhs.true.62
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB0_27
# BB#26:                                # %if.then.66
	movl	$1, -116(%rbp)
	jmp	.LBB0_28
.LBB0_27:                               # %if.else.67
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB0_28:                               # %if.end.69
	jmp	.LBB0_29
.LBB0_29:                               # %if.end.70
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB0_31
# BB#30:                                # %if.then.73
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_vector_tool_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_vector_tool_set_vectors
.LBB0_31:                               # %if.end.76
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	vectors_vectors_tool_cmd_callback, .Lfunc_end0-vectors_vectors_tool_cmd_callback
	.cfi_endproc

	.globl	vectors_edit_attributes_cmd_callback
	.align	16, 0x90
	.type	vectors_edit_attributes_cmd_callback,@function
vectors_edit_attributes_cmd_callback:   # @vectors_edit_attributes_cmd_callback
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
	pushq	%rbx
	subq	$168, %rsp
.Ltmp6:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	jmp	.LBB1_7
.LBB1_2:                                # %if.end
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_active_vectors
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB1_4
# BB#3:                                 # %if.then.3
	jmp	.LBB1_7
.LBB1_4:                                # %if.end.4
	movq	-24(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB1_6
# BB#5:                                 # %if.then.7
	jmp	.LBB1_7
.LBB1_6:                                # %if.end.8
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	action_data_get_context
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	callq	gimp_object_get_name
	movabsq	$.L.str.1, %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.4, %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.2, %rcx
	movabsq	$.L.str.3, %rsi
	movabsq	$.L.str.5, %rdi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-72(%rbp), %r8          # 8-byte Reload
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movq	%r9, %rcx
	movq	-96(%rbp), %r8          # 8-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-128(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	-120(%rbp), %r11        # 8-byte Reload
	movq	%r11, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, 24(%rsp)
	callq	vectors_options_dialog_new
	movabsq	$.L.str.6, %rsi
	movabsq	$vectors_edit_vectors_response, %rcx
	xorl	%ebx, %ebx
	movl	%ebx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-136(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
.LBB1_7:                                # %return
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	vectors_edit_attributes_cmd_callback, .Lfunc_end1-vectors_edit_attributes_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	vectors_edit_vectors_response,@function
vectors_edit_vectors_response:          # @vectors_edit_vectors_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp9:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$-5, -12(%rbp)
	jne	.LBB2_4
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_entry_get_text
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB2_3
# BB#2:                                 # %if.then.6
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_item_rename
	movq	-24(%rbp), %rdx
	movq	16(%rdx), %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	gimp_image_flush
.LBB2_3:                                # %if.end
	jmp	.LBB2_4
.LBB2_4:                                # %if.end.10
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_destroy
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	vectors_edit_vectors_response, .Lfunc_end2-vectors_edit_vectors_response
	.cfi_endproc

	.globl	vectors_new_cmd_callback
	.align	16, 0x90
	.type	vectors_new_cmd_callback,@function
vectors_new_cmd_callback:               # @vectors_new_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp12:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$168, %rsp
.Ltmp13:
	.cfi_offset %rbx, -40
.Ltmp14:
	.cfi_offset %r14, -32
.Ltmp15:
	.cfi_offset %r15, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	jmp	.LBB3_8
.LBB3_2:                                # %if.end
	movq	-40(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB3_4
# BB#3:                                 # %if.then.3
	jmp	.LBB3_8
.LBB3_4:                                # %if.end.4
	movq	-56(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	action_data_get_context
	movq	-64(%rbp), %rcx
	cmpq	$0, vectors_name
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	je	.LBB3_6
# BB#5:                                 # %cond.true
	movq	vectors_name, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB3_7
.LBB3_6:                                # %cond.false
	movabsq	$.L.str.7, %rdi
	callq	gettext
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB3_7:                                # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movabsq	$.L.str.8, %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.11, %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movabsq	$.L.str.9, %rdi
	movabsq	$.L.str.10, %rdx
	movabsq	$.L.str.12, %r8
	movq	-72(%rbp), %r9          # 8-byte Reload
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	-80(%rbp), %r10         # 8-byte Reload
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movq	%r10, %rdx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	-104(%rbp), %r11        # 8-byte Reload
	movq	%r8, -136(%rbp)         # 8-byte Spill
	movq	%r11, %r8
	movq	-112(%rbp), %r9         # 8-byte Reload
	movq	-120(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, (%rsp)
	movq	-128(%rbp), %r14        # 8-byte Reload
	movq	%r14, 8(%rsp)
	movq	%rax, 16(%rsp)
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%rax, 24(%rsp)
	callq	vectors_options_dialog_new
	movabsq	$.L.str.6, %rsi
	movabsq	$vectors_new_vectors_response, %rcx
	xorl	%r15d, %r15d
	movl	%r15d, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-144(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-48(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
.LBB3_8:                                # %return
	addq	$168, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	vectors_new_cmd_callback, .Lfunc_end3-vectors_new_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	vectors_new_vectors_response,@function
vectors_new_vectors_response:           # @vectors_new_vectors_response
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$-5, -12(%rbp)
	jne	.LBB4_4
# BB#1:                                 # %if.then
	cmpq	$0, vectors_name
	je	.LBB4_3
# BB#2:                                 # %if.then.1
	movq	vectors_name, %rdi
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
	movq	%rax, vectors_name
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	movq	vectors_name, %rsi
	callq	gimp_vectors_new
	movl	$1, %ecx
	movl	%ecx, %edx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$1, %r8d
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_image_add_vectors
	movq	-24(%rbp), %rdx
	movq	16(%rdx), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	gimp_image_flush
.LBB4_4:                                # %if.end.9
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	gtk_widget_destroy
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	vectors_new_vectors_response, .Lfunc_end4-vectors_new_vectors_response
	.cfi_endproc

	.globl	vectors_new_last_vals_cmd_callback
	.align	16, 0x90
	.type	vectors_new_last_vals_cmd_callback,@function
vectors_new_last_vals_cmd_callback:     # @vectors_new_last_vals_cmd_callback
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	jmp	.LBB5_3
.LBB5_2:                                # %if.end
	movq	-24(%rbp), %rdi
	movq	vectors_name, %rsi
	callq	gimp_vectors_new
	movl	$1, %ecx
	movl	%ecx, %edx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$1, %r8d
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_image_add_vectors
	movq	-24(%rbp), %rdi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	callq	gimp_image_flush
.LBB5_3:                                # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	vectors_new_last_vals_cmd_callback, .Lfunc_end5-vectors_new_last_vals_cmd_callback
	.cfi_endproc

	.globl	vectors_raise_cmd_callback
	.align	16, 0x90
	.type	vectors_raise_cmd_callback,@function
vectors_raise_cmd_callback:             # @vectors_raise_cmd_callback
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
	jne	.LBB6_2
# BB#1:                                 # %if.then
	jmp	.LBB6_5
.LBB6_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_vectors
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
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_raise_item
	movq	-24(%rbp), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	gimp_image_flush
.LBB6_5:                                # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	vectors_raise_cmd_callback, .Lfunc_end6-vectors_raise_cmd_callback
	.cfi_endproc

	.globl	vectors_raise_to_top_cmd_callback
	.align	16, 0x90
	.type	vectors_raise_to_top_cmd_callback,@function
vectors_raise_to_top_cmd_callback:      # @vectors_raise_to_top_cmd_callback
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
	jne	.LBB7_2
# BB#1:                                 # %if.then
	jmp	.LBB7_5
.LBB7_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_vectors
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
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_raise_item_to_top
	movq	-24(%rbp), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	gimp_image_flush
.LBB7_5:                                # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	vectors_raise_to_top_cmd_callback, .Lfunc_end7-vectors_raise_to_top_cmd_callback
	.cfi_endproc

	.globl	vectors_lower_cmd_callback
	.align	16, 0x90
	.type	vectors_lower_cmd_callback,@function
vectors_lower_cmd_callback:             # @vectors_lower_cmd_callback
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
	jne	.LBB8_2
# BB#1:                                 # %if.then
	jmp	.LBB8_5
.LBB8_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_vectors
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
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_lower_item
	movq	-24(%rbp), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	gimp_image_flush
.LBB8_5:                                # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	vectors_lower_cmd_callback, .Lfunc_end8-vectors_lower_cmd_callback
	.cfi_endproc

	.globl	vectors_lower_to_bottom_cmd_callback
	.align	16, 0x90
	.type	vectors_lower_to_bottom_cmd_callback,@function
vectors_lower_to_bottom_cmd_callback:   # @vectors_lower_to_bottom_cmd_callback
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
	jne	.LBB9_2
# BB#1:                                 # %if.then
	jmp	.LBB9_5
.LBB9_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_vectors
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
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_lower_item_to_bottom
	movq	-24(%rbp), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	gimp_image_flush
.LBB9_5:                                # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	vectors_lower_to_bottom_cmd_callback, .Lfunc_end9-vectors_lower_to_bottom_cmd_callback
	.cfi_endproc

	.globl	vectors_duplicate_cmd_callback
	.align	16, 0x90
	.type	vectors_duplicate_cmd_callback,@function
vectors_duplicate_cmd_callback:         # @vectors_duplicate_cmd_callback
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
	subq	$80, %rsp
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
	callq	gimp_image_get_active_vectors
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB10_4
# BB#3:                                 # %if.then.3
	jmp	.LBB10_5
.LBB10_4:                               # %if.end.4
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
	callq	gimp_vectors_get_type
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
	callq	gimp_vectors_get_parent
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$1, %r8d
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_add_vectors
	movq	-24(%rbp), %rdi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gimp_image_flush
.LBB10_5:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	vectors_duplicate_cmd_callback, .Lfunc_end10-vectors_duplicate_cmd_callback
	.cfi_endproc

	.globl	vectors_delete_cmd_callback
	.align	16, 0x90
	.type	vectors_delete_cmd_callback,@function
vectors_delete_cmd_callback:            # @vectors_delete_cmd_callback
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
	jne	.LBB11_2
# BB#1:                                 # %if.then
	jmp	.LBB11_5
.LBB11_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_vectors
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB11_4
# BB#3:                                 # %if.then.3
	jmp	.LBB11_5
.LBB11_4:                               # %if.end.4
	movl	$1, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_image_remove_vectors
	movq	-24(%rbp), %rdi
	callq	gimp_image_flush
.LBB11_5:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	vectors_delete_cmd_callback, .Lfunc_end11-vectors_delete_cmd_callback
	.cfi_endproc

	.globl	vectors_merge_visible_cmd_callback
	.align	16, 0x90
	.type	vectors_merge_visible_cmd_callback,@function
vectors_merge_visible_cmd_callback:     # @vectors_merge_visible_cmd_callback
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB12_2
# BB#1:                                 # %if.then
	jmp	.LBB12_9
.LBB12_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_vectors
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB12_4
# BB#3:                                 # %if.then.3
	jmp	.LBB12_9
.LBB12_4:                               # %if.end.4
	movq	-16(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB12_6
# BB#5:                                 # %if.then.7
	jmp	.LBB12_9
.LBB12_6:                               # %if.end.8
	leaq	-48(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gimp_image_merge_visible_vectors
	cmpq	$0, %rax
	jne	.LBB12_8
# BB#7:                                 # %if.then.11
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-40(%rbp), %rcx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_message_literal
	leaq	-48(%rbp), %rdi
	callq	g_clear_error
	jmp	.LBB12_9
.LBB12_8:                               # %if.end.13
	movq	-24(%rbp), %rdi
	callq	gimp_image_flush
.LBB12_9:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	vectors_merge_visible_cmd_callback, .Lfunc_end12-vectors_merge_visible_cmd_callback
	.cfi_endproc

	.globl	vectors_to_selection_cmd_callback
	.align	16, 0x90
	.type	vectors_to_selection_cmd_callback,@function
vectors_to_selection_cmd_callback:      # @vectors_to_selection_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB13_2
# BB#1:                                 # %if.then
	jmp	.LBB13_5
.LBB13_2:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_active_vectors
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB13_4
# BB#3:                                 # %if.then.3
	jmp	.LBB13_5
.LBB13_4:                               # %if.end.4
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
.LBB13_5:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	vectors_to_selection_cmd_callback, .Lfunc_end13-vectors_to_selection_cmd_callback
	.cfi_endproc

	.globl	vectors_selection_to_vectors_cmd_callback
	.align	16, 0x90
	.type	vectors_selection_to_vectors_cmd_callback,@function
vectors_selection_to_vectors_cmd_callback: # @vectors_selection_to_vectors_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -72(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB14_2
# BB#1:                                 # %if.then
	jmp	.LBB14_11
.LBB14_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB14_4
# BB#3:                                 # %if.then.3
	jmp	.LBB14_11
.LBB14_4:                               # %if.end.4
	cmpl	$0, -12(%rbp)
	je	.LBB14_6
# BB#5:                                 # %if.then.6
	movabsq	$.L.str.13, %rsi
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	520(%rax), %rdi
	callq	gimp_pdb_lookup_procedure
	movq	%rax, -48(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else
	movabsq	$.L.str.14, %rsi
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	520(%rax), %rdi
	callq	gimp_pdb_lookup_procedure
	movq	%rax, -48(%rbp)
.LBB14_7:                               # %if.end.11
	cmpq	$0, -48(%rbp)
	jne	.LBB14_9
# BB#8:                                 # %if.then.13
	movl	$80, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-40(%rbp), %rcx
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movabsq	$.L.str.15, %rcx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_message_literal
	jmp	.LBB14_11
.LBB14_9:                               # %if.end.16
	movq	-24(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, %rdi
	callq	gimp_context_get_display
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_procedure_get_arguments
	movl	$2, %esi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_value_array_truncate
	xorl	%esi, %esi
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_value_set_int
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	addq	$24, %rax
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_value_set_image
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	action_data_get_context
	movq	-64(%rbp), %rsi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %r8
	movq	-64(%rbp), %rsi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%r8, -128(%rbp)         # 8-byte Spill
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-72(%rbp), %rsi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %r8          # 8-byte Reload
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	-128(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	gimp_procedure_execute_async
	movq	-56(%rbp), %rdi
	callq	g_value_array_free
	cmpq	$0, -72(%rbp)
	je	.LBB14_11
# BB#10:                                # %if.then.29
	movl	$80, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-40(%rbp), %rcx
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movq	-72(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_message_literal
	movq	-72(%rbp), %rdi
	callq	g_error_free
.LBB14_11:                              # %if.end.32
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	vectors_selection_to_vectors_cmd_callback, .Lfunc_end14-vectors_selection_to_vectors_cmd_callback
	.cfi_endproc

	.globl	vectors_stroke_cmd_callback
	.align	16, 0x90
	.type	vectors_stroke_cmd_callback,@function
vectors_stroke_cmd_callback:            # @vectors_stroke_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp51:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB15_2
# BB#1:                                 # %if.then
	jmp	.LBB15_9
.LBB15_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_vectors
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB15_4
# BB#3:                                 # %if.then.3
	jmp	.LBB15_9
.LBB15_4:                               # %if.end.4
	movq	-16(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB15_6
# BB#5:                                 # %if.then.7
	jmp	.LBB15_9
.LBB15_6:                               # %if.end.8
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB15_8
# BB#7:                                 # %if.then.11
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-48(%rbp), %rcx
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.16, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$1, %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_message_literal
	jmp	.LBB15_9
.LBB15_8:                               # %if.end.14
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	action_data_get_context
	movabsq	$.L.str.17, %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.18, %rsi
	movq	-48(%rbp), %r9
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rax, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movq	-104(%rbp), %r8         # 8-byte Reload
	callq	stroke_dialog_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
.LBB15_9:                               # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	vectors_stroke_cmd_callback, .Lfunc_end15-vectors_stroke_cmd_callback
	.cfi_endproc

	.globl	vectors_stroke_last_vals_cmd_callback
	.align	16, 0x90
	.type	vectors_stroke_last_vals_cmd_callback,@function
vectors_stroke_last_vals_cmd_callback:  # @vectors_stroke_last_vals_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp54:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -72(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB16_2
# BB#1:                                 # %if.then
	jmp	.LBB16_17
.LBB16_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_vectors
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB16_4
# BB#3:                                 # %if.then.3
	jmp	.LBB16_17
.LBB16_4:                               # %if.end.4
	movq	-16(%rbp), %rdi
	callq	action_data_get_context
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB16_6
# BB#5:                                 # %if.then.7
	jmp	.LBB16_17
.LBB16_6:                               # %if.end.8
	movq	-16(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB16_8
# BB#7:                                 # %if.then.11
	jmp	.LBB16_17
.LBB16_8:                               # %if.end.12
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB16_10
# BB#9:                                 # %if.then.15
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-56(%rbp), %rcx
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.16, %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$1, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_message_literal
	jmp	.LBB16_17
.LBB16_10:                              # %if.end.18
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.19, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB16_12
# BB#11:                                # %if.then.23
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB16_13
.LBB16_12:                              # %if.else
	movl	$1, %edx
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_stroke_options_new
	movq	%rax, -64(%rbp)
.LBB16_13:                              # %if.end.27
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$1, %r9d
	leaq	-72(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	$0, (%rsp)
	movq	-120(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	gimp_item_stroke
	cmpl	$0, %eax
	jne	.LBB16_15
# BB#14:                                # %if.then.32
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-56(%rbp), %rcx
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	-72(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_message_literal
	leaq	-72(%rbp), %rdi
	callq	g_clear_error
	jmp	.LBB16_16
.LBB16_15:                              # %if.else.35
	movq	-24(%rbp), %rdi
	callq	gimp_image_flush
.LBB16_16:                              # %if.end.36
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB16_17:                              # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	vectors_stroke_last_vals_cmd_callback, .Lfunc_end16-vectors_stroke_last_vals_cmd_callback
	.cfi_endproc

	.globl	vectors_copy_cmd_callback
	.align	16, 0x90
	.type	vectors_copy_cmd_callback,@function
vectors_copy_cmd_callback:              # @vectors_copy_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB17_2
# BB#1:                                 # %if.then
	jmp	.LBB17_6
.LBB17_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_vectors
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB17_4
# BB#3:                                 # %if.then.3
	jmp	.LBB17_6
.LBB17_4:                               # %if.end.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_vectors_export_string
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB17_6
# BB#5:                                 # %if.then.7
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_clipboard_set_svg
	movq	-40(%rbp), %rdi
	callq	g_free
.LBB17_6:                               # %if.end.8
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	vectors_copy_cmd_callback, .Lfunc_end17-vectors_copy_cmd_callback
	.cfi_endproc

	.globl	vectors_paste_cmd_callback
	.align	16, 0x90
	.type	vectors_paste_cmd_callback,@function
vectors_paste_cmd_callback:             # @vectors_paste_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp60:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB18_2
# BB#1:                                 # %if.then
	jmp	.LBB18_9
.LBB18_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB18_4
# BB#3:                                 # %if.then.3
	jmp	.LBB18_9
.LBB18_4:                               # %if.end.4
	leaq	-48(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_clipboard_get_svg
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB18_9
# BB#5:                                 # %if.then.7
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$1, %eax
	movl	%eax, %r9d
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	xorl	%edx, %edx
	movl	%edx, %esi
	leaq	-56(%rbp), %rdi
	movq	$0, -56(%rbp)
	movq	-24(%rbp), %r10
	movq	-40(%rbp), %r11
	movq	-48(%rbp), %rdx
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%r11, %rsi
	movl	$-1, (%rsp)
	movq	$0, 8(%rsp)
	movq	-64(%rbp), %r10         # 8-byte Reload
	movq	%r10, 16(%rsp)
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	gimp_vectors_import_buffer
	cmpl	$0, %eax
	jne	.LBB18_7
# BB#6:                                 # %if.then.10
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-32(%rbp), %rcx
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movabsq	$.L.str.20, %rcx
	movq	-56(%rbp), %rsi
	movq	8(%rsi), %r8
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_message
	leaq	-56(%rbp), %rdi
	callq	g_clear_error
	jmp	.LBB18_8
.LBB18_7:                               # %if.else
	movq	-24(%rbp), %rdi
	callq	gimp_image_flush
.LBB18_8:                               # %if.end.13
	movq	-40(%rbp), %rdi
	callq	g_free
.LBB18_9:                               # %if.end.14
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	vectors_paste_cmd_callback, .Lfunc_end18-vectors_paste_cmd_callback
	.cfi_endproc

	.globl	vectors_export_cmd_callback
	.align	16, 0x90
	.type	vectors_export_cmd_callback,@function
vectors_export_cmd_callback:            # @vectors_export_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp63:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB19_2
# BB#1:                                 # %if.then
	jmp	.LBB19_9
.LBB19_2:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_active_vectors
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB19_4
# BB#3:                                 # %if.then.3
	jmp	.LBB19_9
.LBB19_4:                               # %if.end.4
	movq	-16(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB19_6
# BB#5:                                 # %if.then.7
	jmp	.LBB19_9
.LBB19_6:                               # %if.end.8
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	vectors_export_active_only, %edx
	callq	vectors_export_dialog_new
	movl	$80, %edx
	movl	%edx, %esi
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.21, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB19_8
# BB#7:                                 # %if.then.13
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_current_folder
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB19_8:                               # %if.end.18
	movabsq	$.L.str.6, %rsi
	movabsq	$vectors_export_response, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_widget_show
.LBB19_9:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	vectors_export_cmd_callback, .Lfunc_end19-vectors_export_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	vectors_export_response,@function
vectors_export_response:                # @vectors_export_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
.Ltmp65:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp66:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$-5, -12(%rbp)
	jne	.LBB20_6
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -56(%rbp)
	movq	-24(%rbp), %rax
	movl	16(%rax), %ecx
	movl	%ecx, vectors_export_active_only
	movq	-32(%rbp), %rdi
	callq	gtk_file_chooser_get_filename
	movq	%rax, -48(%rbp)
	cmpl	$0, vectors_export_active_only
	je	.LBB20_3
# BB#2:                                 # %if.then.3
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gimp_image_get_active_vectors
	movq	%rax, -40(%rbp)
.LBB20_3:                               # %if.end
	leaq	-56(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	gimp_vectors_export_file
	cmpl	$0, %eax
	jne	.LBB20_5
# BB#4:                                 # %if.then.8
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	32(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movabsq	$.L.str.20, %rcx
	movq	-56(%rbp), %rsi
	movq	8(%rsi), %r8
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_message
	movq	-56(%rbp), %rdi
	callq	g_error_free
	jmp	.LBB20_7
.LBB20_5:                               # %if.end.11
	movq	-48(%rbp), %rdi
	callq	g_free
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	32(%rdi), %rdi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_current_folder
	movabsq	$.L.str.21, %rsi
	movabsq	$g_free, %rcx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data_full
.LBB20_6:                               # %if.end.16
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
.LBB20_7:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	vectors_export_response, .Lfunc_end20-vectors_export_response
	.cfi_endproc

	.globl	vectors_import_cmd_callback
	.align	16, 0x90
	.type	vectors_import_cmd_callback,@function
vectors_import_cmd_callback:            # @vectors_import_cmd_callback
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB21_2
# BB#1:                                 # %if.then
	jmp	.LBB21_7
.LBB21_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB21_4
# BB#3:                                 # %if.then.3
	jmp	.LBB21_7
.LBB21_4:                               # %if.end.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	vectors_import_merge, %edx
	movl	vectors_import_scale, %ecx
	callq	vectors_import_dialog_new
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.22, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB21_6
# BB#5:                                 # %if.then.9
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_current_folder
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB21_6:                               # %if.end.14
	movabsq	$.L.str.6, %rsi
	movabsq	$vectors_import_response, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_show
.LBB21_7:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	vectors_import_cmd_callback, .Lfunc_end21-vectors_import_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	vectors_import_response,@function
vectors_import_response:                # @vectors_import_response
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$-5, -12(%rbp)
	jne	.LBB22_5
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	$0, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	16(%rax), %ecx
	movl	%ecx, vectors_import_merge
	movq	-24(%rbp), %rax
	movl	20(%rax), %ecx
	movl	%ecx, vectors_import_scale
	movq	-32(%rbp), %rdi
	callq	gtk_file_chooser_get_filename
	movl	$1, %ecx
	movl	%ecx, %r8d
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-48(%rbp), %rdi
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rdx
	movl	vectors_import_merge, %ecx
	movl	vectors_import_scale, %r10d
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rdx, %rsi
	movl	%ecx, %edx
	movl	%r10d, %ecx
	movq	$0, (%rsp)
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	callq	gimp_vectors_import_file
	cmpl	$0, %eax
	je	.LBB22_3
# BB#2:                                 # %if.then.4
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gimp_image_flush
	jmp	.LBB22_4
.LBB22_3:                               # %if.else
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	32(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$2, %edx
	movabsq	$.L.str.20, %rcx
	movq	-48(%rbp), %rsi
	movq	8(%rsi), %r8
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_message
	movq	-48(%rbp), %rdi
	callq	g_error_free
	jmp	.LBB22_6
.LBB22_4:                               # %if.end
	movq	-40(%rbp), %rdi
	callq	g_free
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	32(%rdi), %rdi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_current_folder
	movabsq	$.L.str.22, %rsi
	movabsq	$g_free, %rcx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_set_data_full
.LBB22_5:                               # %if.end.12
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
.LBB22_6:                               # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	vectors_import_response, .Lfunc_end22-vectors_import_response
	.cfi_endproc

	.globl	vectors_visible_cmd_callback
	.align	16, 0x90
	.type	vectors_visible_cmd_callback,@function
vectors_visible_cmd_callback:           # @vectors_visible_cmd_callback
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB23_2
# BB#1:                                 # %if.then
	jmp	.LBB23_9
.LBB23_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_vectors
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB23_4
# BB#3:                                 # %if.then.3
	jmp	.LBB23_9
.LBB23_4:                               # %if.end.4
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
	movq	-32(%rbp), %rsi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_visible
	movl	-68(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB23_9
# BB#5:                                 # %if.then.11
	movl	$1, -52(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_undo_get_type
	movl	$51, %edx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_can_compress
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB23_8
# BB#6:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_undo_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	72(%rax), %rax
	movq	-32(%rbp), %rsi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-104(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB23_8
# BB#7:                                 # %if.then.20
	movl	$0, -52(%rbp)
.LBB23_8:                               # %if.end.21
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-36(%rbp), %esi
	movl	-52(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_item_set_visible
	movq	-24(%rbp), %rdi
	callq	gimp_image_flush
.LBB23_9:                               # %if.end.24
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	vectors_visible_cmd_callback, .Lfunc_end23-vectors_visible_cmd_callback
	.cfi_endproc

	.globl	vectors_linked_cmd_callback
	.align	16, 0x90
	.type	vectors_linked_cmd_callback,@function
vectors_linked_cmd_callback:            # @vectors_linked_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
.Ltmp77:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp78:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB24_2
# BB#1:                                 # %if.then
	jmp	.LBB24_9
.LBB24_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_vectors
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB24_4
# BB#3:                                 # %if.then.3
	jmp	.LBB24_9
.LBB24_4:                               # %if.end.4
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
	movq	-32(%rbp), %rsi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_linked
	movl	-68(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB24_9
# BB#5:                                 # %if.then.11
	movl	$1, -52(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_item_undo_get_type
	movl	$52, %edx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_undo_can_compress
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB24_8
# BB#6:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_item_undo_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	72(%rax), %rax
	movq	-32(%rbp), %rsi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-104(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB24_8
# BB#7:                                 # %if.then.20
	movl	$0, -52(%rbp)
.LBB24_8:                               # %if.end.21
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_item_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-36(%rbp), %esi
	movl	-52(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_item_set_linked
	movq	-24(%rbp), %rdi
	callq	gimp_image_flush
.LBB24_9:                               # %if.end.24
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	vectors_linked_cmd_callback, .Lfunc_end24-vectors_linked_cmd_callback
	.cfi_endproc

	.globl	vectors_lock_content_cmd_callback
	.align	16, 0x90
	.type	vectors_lock_content_cmd_callback,@function
vectors_lock_content_cmd_callback:      # @vectors_lock_content_cmd_callback
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB25_2
# BB#1:                                 # %if.then
	jmp	.LBB25_6
.LBB25_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_vectors
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB25_4
# BB#3:                                 # %if.then.3
	jmp	.LBB25_6
.LBB25_4:                               # %if.end.4
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_toggle_action_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_action_get_active
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rsi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_item_get_lock_content
	movl	-52(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB25_6
# BB#5:                                 # %if.then.11
	movl	$1, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_item_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_item_set_lock_content
	movq	-24(%rbp), %rdi
	callq	gimp_image_flush
.LBB25_6:                               # %if.end.14
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	vectors_lock_content_cmd_callback, .Lfunc_end25-vectors_lock_content_cmd_callback
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-vector-tool"
	.size	.L.str, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Path Attributes"
	.size	.L.str.1, 16

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-vectors-edit"
	.size	.L.str.2, 18

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gtk-edit"
	.size	.L.str.3, 9

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Edit Path Attributes"
	.size	.L.str.4, 21

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-path-edit"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"response"
	.size	.L.str.6, 9

	.type	vectors_name,@object    # @vectors_name
	.local	vectors_name
	.comm	vectors_name,8,8
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Path"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"New Path"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-vectors-new"
	.size	.L.str.9, 17

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-path"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"New Path Options"
	.size	.L.str.11, 17

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp-path-new"
	.size	.L.str.12, 14

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"plug-in-sel2path-advanced"
	.size	.L.str.13, 26

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"plug-in-sel2path"
	.size	.L.str.14, 17

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Selection to path procedure lookup failed."
	.size	.L.str.15, 43

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"There is no active layer or channel to stroke to."
	.size	.L.str.16, 50

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Stroke Path"
	.size	.L.str.17, 12

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp-path-stroke"
	.size	.L.str.18, 17

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"saved-stroke-options"
	.size	.L.str.19, 21

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"%s"
	.size	.L.str.20, 3

	.type	vectors_export_active_only,@object # @vectors_export_active_only
	.data
	.align	4
vectors_export_active_only:
	.long	1                       # 0x1
	.size	vectors_export_active_only, 4

	.type	.L.str.21,@object       # @.str.21
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.21:
	.asciz	"gimp-vectors-export-folder"
	.size	.L.str.21, 27

	.type	vectors_import_merge,@object # @vectors_import_merge
	.local	vectors_import_merge
	.comm	vectors_import_merge,4,4
	.type	vectors_import_scale,@object # @vectors_import_scale
	.local	vectors_import_scale
	.comm	vectors_import_scale,4,4
	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gimp-vectors-import-folder"
	.size	.L.str.22, 27


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
