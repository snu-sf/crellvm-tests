	.text
	.file	"edit-commands.bc"
	.globl	edit_undo_cmd_callback
	.align	16, 0x90
	.type	edit_undo_cmd_callback,@function
edit_undo_cmd_callback:                 # @edit_undo_cmd_callback
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	jmp	.LBB0_4
.LBB0_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_undo
	cmpl	$0, %eax
	je	.LBB0_4
# BB#3:                                 # %if.then.3
	movq	-24(%rbp), %rdi
	callq	gimp_image_flush
.LBB0_4:                                # %if.end.4
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	edit_undo_cmd_callback, .Lfunc_end0-edit_undo_cmd_callback
	.cfi_endproc

	.globl	edit_redo_cmd_callback
	.align	16, 0x90
	.type	edit_redo_cmd_callback,@function
edit_redo_cmd_callback:                 # @edit_redo_cmd_callback
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	jmp	.LBB1_4
.LBB1_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_redo
	cmpl	$0, %eax
	je	.LBB1_4
# BB#3:                                 # %if.then.3
	movq	-24(%rbp), %rdi
	callq	gimp_image_flush
.LBB1_4:                                # %if.end.4
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	edit_redo_cmd_callback, .Lfunc_end1-edit_redo_cmd_callback
	.cfi_endproc

	.globl	edit_strong_undo_cmd_callback
	.align	16, 0x90
	.type	edit_strong_undo_cmd_callback,@function
edit_strong_undo_cmd_callback:          # @edit_strong_undo_cmd_callback
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	jmp	.LBB2_4
.LBB2_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_strong_undo
	cmpl	$0, %eax
	je	.LBB2_4
# BB#3:                                 # %if.then.3
	movq	-24(%rbp), %rdi
	callq	gimp_image_flush
.LBB2_4:                                # %if.end.4
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	edit_strong_undo_cmd_callback, .Lfunc_end2-edit_strong_undo_cmd_callback
	.cfi_endproc

	.globl	edit_strong_redo_cmd_callback
	.align	16, 0x90
	.type	edit_strong_redo_cmd_callback,@function
edit_strong_redo_cmd_callback:          # @edit_strong_redo_cmd_callback
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	jmp	.LBB3_4
.LBB3_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_strong_redo
	cmpl	$0, %eax
	je	.LBB3_4
# BB#3:                                 # %if.then.3
	movq	-24(%rbp), %rdi
	callq	gimp_image_flush
.LBB3_4:                                # %if.end.4
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	edit_strong_redo_cmd_callback, .Lfunc_end3-edit_strong_redo_cmd_callback
	.cfi_endproc

	.globl	edit_undo_clear_cmd_callback
	.align	16, 0x90
	.type	edit_undo_clear_cmd_callback,@function
edit_undo_clear_cmd_callback:           # @edit_undo_clear_cmd_callback
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
.Ltmp15:
	.cfi_offset %rbx, -40
.Ltmp16:
	.cfi_offset %r14, -32
.Ltmp17:
	.cfi_offset %r15, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	jmp	.LBB4_7
.LBB4_2:                                # %if.end
	movq	-40(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB4_4
# BB#3:                                 # %if.then.3
	jmp	.LBB4_7
.LBB4_4:                                # %if.end.4
	movabsq	$.L.str, %rdi
	callq	gettext
	movabsq	$.L.str.1, %rsi
	movl	$3, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.2, %r9
	movabsq	$.L.str.3, %rdi
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movabsq	$.L.str.4, %r10
	movl	$4294967291, %r11d      # imm = 0xFFFFFFFB
	xorl	%ebx, %ebx
	movl	%ebx, %r14d
	movq	-72(%rbp), %r15
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%edx, -116(%rbp)        # 4-byte Spill
	movq	%r15, %rdx
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	%r10, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movq	%r14, -128(%rbp)        # 8-byte Spill
	movl	%r11d, -132(%rbp)       # 4-byte Spill
	callq	gimp_message_dialog_new
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-72(%rbp), %rdi
	callq	gtk_widget_get_toplevel
	movabsq	$.L.str.5, %rsi
	movabsq	$gtk_widget_destroy, %rdi
	movl	$2, %r8d
	movq	-80(%rbp), %r9
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movq	%r9, %rcx
	callq	g_signal_connect_object
	movabsq	$.L.str.6, %rsi
	movabsq	$gtk_widget_destroy, %rcx
	movl	$2, %r8d
	movq	-48(%rbp), %rdx
	movq	-80(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	g_signal_connect_object
	movq	-80(%rbp), %rcx
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	callq	gimp_message_dialog_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.7, %rdi
	movq	264(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_message_box_set_primary_text
	movq	-48(%rbp), %rdi
	callq	gimp_image_get_undo_stack
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	callq	gimp_image_get_redo_stack
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-104(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	movq	%rax, -96(%rbp)
	movq	-104(%rbp), %rax
	addq	-96(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-104(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	addq	-96(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-104(%rbp), %rax
	addq	-96(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	callq	g_format_size
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gimp_message_dialog_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rdi
	movq	264(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-88(%rbp), %rdx
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_message_box_set_text
	movq	-88(%rbp), %rdi
	callq	g_free
	movq	-80(%rbp), %rcx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	callq	gimp_dialog_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dialog_run
	cmpl	$-5, %eax
	jne	.LBB4_6
# BB#5:                                 # %if.then.33
	movq	-48(%rbp), %rdi
	callq	gimp_image_undo_disable
	movq	-48(%rbp), %rdi
	movl	%eax, -236(%rbp)        # 4-byte Spill
	callq	gimp_image_undo_enable
	movq	-48(%rbp), %rdi
	movl	%eax, -240(%rbp)        # 4-byte Spill
	callq	gimp_image_flush
.LBB4_6:                                # %if.end.36
	movq	-80(%rbp), %rdi
	callq	gtk_widget_destroy
.LBB4_7:                                # %return
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	edit_undo_clear_cmd_callback, .Lfunc_end4-edit_undo_clear_cmd_callback
	.cfi_endproc

	.globl	edit_cut_cmd_callback
	.align	16, 0x90
	.type	edit_cut_cmd_callback,@function
edit_cut_cmd_callback:                  # @edit_cut_cmd_callback
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	jmp	.LBB5_9
.LBB5_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_4
# BB#3:                                 # %if.then.3
	jmp	.LBB5_9
.LBB5_4:                                # %if.end.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	action_data_get_context
	leaq	-40(%rbp), %rcx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_edit_cut
	cmpq	$0, %rax
	je	.LBB5_8
# BB#5:                                 # %if.then.8
	movq	-16(%rbp), %rdi
	callq	action_data_get_display
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB5_7
# BB#6:                                 # %if.then.11
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-48(%rbp), %rcx
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_message_literal
.LBB5_7:                                # %if.end.14
	movq	-24(%rbp), %rdi
	callq	gimp_image_flush
	jmp	.LBB5_9
.LBB5_8:                                # %if.else
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	action_data_get_display
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	-40(%rbp), %rsi
	movq	8(%rsi), %rcx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_message_literal
	leaq	-40(%rbp), %rdi
	callq	g_clear_error
.LBB5_9:                                # %if.end.18
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	edit_cut_cmd_callback, .Lfunc_end5-edit_cut_cmd_callback
	.cfi_endproc

	.globl	edit_copy_cmd_callback
	.align	16, 0x90
	.type	edit_copy_cmd_callback,@function
edit_copy_cmd_callback:                 # @edit_copy_cmd_callback
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	jmp	.LBB6_9
.LBB6_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB6_4
# BB#3:                                 # %if.then.3
	jmp	.LBB6_9
.LBB6_4:                                # %if.end.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	action_data_get_context
	leaq	-40(%rbp), %rcx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_edit_copy
	cmpq	$0, %rax
	je	.LBB6_8
# BB#5:                                 # %if.then.8
	movq	-16(%rbp), %rdi
	callq	action_data_get_display
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB6_7
# BB#6:                                 # %if.then.11
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-48(%rbp), %rcx
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_message_literal
.LBB6_7:                                # %if.end.14
	movq	-24(%rbp), %rdi
	callq	gimp_image_flush
	jmp	.LBB6_9
.LBB6_8:                                # %if.else
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	action_data_get_display
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	-40(%rbp), %rsi
	movq	8(%rsi), %rcx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_message_literal
	leaq	-40(%rbp), %rdi
	callq	g_clear_error
.LBB6_9:                                # %if.end.18
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	edit_copy_cmd_callback, .Lfunc_end6-edit_copy_cmd_callback
	.cfi_endproc

	.globl	edit_copy_visible_cmd_callback
	.align	16, 0x90
	.type	edit_copy_visible_cmd_callback,@function
edit_copy_visible_cmd_callback:         # @edit_copy_visible_cmd_callback
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
	movq	%rsi, -16(%rbp)
	movq	$0, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	jmp	.LBB7_7
.LBB7_2:                                # %if.end
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	action_data_get_context
	leaq	-32(%rbp), %rdx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_edit_copy_visible
	cmpq	$0, %rax
	je	.LBB7_6
# BB#3:                                 # %if.then.4
	movq	-16(%rbp), %rdi
	callq	action_data_get_display
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB7_5
# BB#4:                                 # %if.then.7
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-40(%rbp), %rcx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_message_literal
.LBB7_5:                                # %if.end.10
	movq	-24(%rbp), %rdi
	callq	gimp_image_flush
	jmp	.LBB7_7
.LBB7_6:                                # %if.else
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	action_data_get_display
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	-32(%rbp), %rsi
	movq	8(%rsi), %rcx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_message_literal
	leaq	-32(%rbp), %rdi
	callq	g_clear_error
.LBB7_7:                                # %if.end.14
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	edit_copy_visible_cmd_callback, .Lfunc_end7-edit_copy_visible_cmd_callback
	.cfi_endproc

	.globl	edit_paste_cmd_callback
	.align	16, 0x90
	.type	edit_paste_cmd_callback,@function
edit_paste_cmd_callback:                # @edit_paste_cmd_callback
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_display
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB8_3
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rdi
	callq	gimp_display_get_image
	cmpq	$0, %rax
	je	.LBB8_3
# BB#2:                                 # %if.then
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	callq	edit_paste
	jmp	.LBB8_4
.LBB8_3:                                # %if.else
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	edit_paste_as_new_cmd_callback
.LBB8_4:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	edit_paste_cmd_callback, .Lfunc_end8-edit_paste_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	edit_paste,@function
edit_paste:                             # @edit_paste
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_display_get_image
	leaq	-40(%rbp), %rsi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_clipboard_get_svg
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB9_4
# BB#1:                                 # %if.then
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$1, %eax
	movl	%eax, %r9d
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %r10
	movq	-40(%rbp), %rdx
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%r10, %rsi
	movl	$-1, (%rsp)
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gimp_vectors_import_buffer
	cmpl	$0, %eax
	je	.LBB9_3
# BB#2:                                 # %if.then.4
	movq	-24(%rbp), %rdi
	callq	gimp_image_flush
.LBB9_3:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	g_free
	jmp	.LBB9_10
.LBB9_4:                                # %if.else
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_clipboard_get_buffer
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB9_8
# BB#5:                                 # %if.then.8
	movq	-8(%rbp), %rdi
	callq	gimp_display_get_shell
	leaq	-60(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	leaq	-68(%rbp), %rcx
	leaq	-72(%rbp), %r8
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_display_shell_untransform_viewport
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_image_get_active_drawable
	movq	-48(%rbp), %rdx
	movl	-12(%rbp), %ecx
	movl	-60(%rbp), %r8d
	movl	-64(%rbp), %r9d
	movl	-68(%rbp), %r10d
	movl	-72(%rbp), %r11d
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	callq	gimp_edit_paste
	cmpq	$0, %rax
	je	.LBB9_7
# BB#6:                                 # %if.then.13
	movq	-24(%rbp), %rdi
	callq	gimp_image_flush
.LBB9_7:                                # %if.end.14
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	jmp	.LBB9_9
.LBB9_8:                                # %if.else.15
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.11, %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_message_literal
.LBB9_9:                                # %if.end.19
	jmp	.LBB9_10
.LBB9_10:                               # %if.end.20
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	edit_paste, .Lfunc_end9-edit_paste
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	edit_paste_as_new_cmd_callback
	.align	16, 0x90
	.type	edit_paste_as_new_cmd_callback,@function
edit_paste_as_new_cmd_callback:         # @edit_paste_as_new_cmd_callback
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
	callq	action_data_get_gimp
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	jmp	.LBB10_5
.LBB10_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_clipboard_get_buffer
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB10_4
# BB#3:                                 # %if.then.3
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	action_data_get_image
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_new_from_buffer
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	xorl	%edx, %edx
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_create_display
	movq	-40(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	g_object_unref
	jmp	.LBB10_5
.LBB10_4:                               # %if.else
	movabsq	$.L.str.11, %rdi
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_message_literal
.LBB10_5:                               # %if.end.9
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	edit_paste_as_new_cmd_callback, .Lfunc_end10-edit_paste_as_new_cmd_callback
	.cfi_endproc

	.globl	edit_paste_into_cmd_callback
	.align	16, 0x90
	.type	edit_paste_into_cmd_callback,@function
edit_paste_into_cmd_callback:           # @edit_paste_into_cmd_callback
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_display
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	jmp	.LBB11_3
.LBB11_2:                               # %if.end
	movl	$1, %esi
	movq	-24(%rbp), %rdi
	callq	edit_paste
.LBB11_3:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	edit_paste_into_cmd_callback, .Lfunc_end11-edit_paste_into_cmd_callback
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	edit_paste_as_new_layer_cmd_callback
	.align	16, 0x90
	.type	edit_paste_as_new_layer_cmd_callback,@function
edit_paste_as_new_layer_cmd_callback:   # @edit_paste_as_new_layer_cmd_callback
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
	callq	action_data_get_gimp
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB12_2
# BB#1:                                 # %if.then
	jmp	.LBB12_7
.LBB12_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB12_4
# BB#3:                                 # %if.then.3
	jmp	.LBB12_7
.LBB12_4:                               # %if.end.4
	movq	-24(%rbp), %rdi
	callq	gimp_clipboard_get_buffer
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB12_6
# BB#5:                                 # %if.then.7
	movq	-40(%rbp), %rdi
	callq	gimp_buffer_get_tiles
	movq	-32(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_image_base_type_with_alpha
	movabsq	$.L.str.12, %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	gettext
	movsd	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero
	xorl	%r8d, %r8d
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movl	-68(%rbp), %edx         # 4-byte Reload
	movq	%rax, %rcx
	callq	gimp_layer_new_from_tiles
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movl	$1, %edx
                                        # kill: RDX<def> EDX<kill>
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	$1, %r8d
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	gimp_image_add_layer
	movq	-32(%rbp), %rdi
	movl	%eax, -72(%rbp)         # 4-byte Spill
	callq	gimp_image_flush
	jmp	.LBB12_7
.LBB12_6:                               # %if.else
	movabsq	$.L.str.11, %rdi
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_message_literal
.LBB12_7:                               # %if.end.14
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	edit_paste_as_new_layer_cmd_callback, .Lfunc_end12-edit_paste_as_new_layer_cmd_callback
	.cfi_endproc

	.globl	edit_named_cut_cmd_callback
	.align	16, 0x90
	.type	edit_named_cut_cmd_callback,@function
edit_named_cut_cmd_callback:            # @edit_named_cut_cmd_callback
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
	pushq	%r14
	pushq	%rbx
	subq	$112, %rsp
.Ltmp45:
	.cfi_offset %rbx, -32
.Ltmp46:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB13_2
# BB#1:                                 # %if.then
	jmp	.LBB13_5
.LBB13_2:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB13_4
# BB#3:                                 # %if.then.3
	jmp	.LBB13_5
.LBB13_4:                               # %if.end.4
	movabsq	$.L.str.13, %rdi
	callq	gettext
	movabsq	$.L.str.15, %rdi
	movq	-48(%rbp), %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$gimp_standard_help_func, %rdx
	movabsq	$.L.str.14, %rcx
	xorl	%r8d, %r8d
	movl	%r8d, %r9d
	movabsq	$.L.str.6, %rsi
	movabsq	$cut_named_buffer_callback, %rdi
	movq	-40(%rbp), %r10
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%r11, %rdi
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%rbx, %rsi
	movq	-80(%rbp), %r8          # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-88(%rbp), %r14         # 8-byte Reload
	movq	%r14, 16(%rsp)
	movq	%r10, 24(%rsp)
	callq	gimp_query_string_box
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
.LBB13_5:                               # %return
	addq	$112, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end13:
	.size	edit_named_cut_cmd_callback, .Lfunc_end13-edit_named_cut_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	cut_named_buffer_callback,@function
cut_named_buffer_callback:              # @cut_named_buffer_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp49:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -40(%rbp)
	movq	$0, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB14_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.20, %rdi
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_message_literal
	jmp	.LBB14_8
.LBB14_2:                               # %if.end
	cmpq	$0, -16(%rbp)
	je	.LBB14_4
# BB#3:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	strlen
	cmpq	$0, %rax
	jne	.LBB14_5
.LBB14_4:                               # %if.then.7
	movabsq	$.L.str.21, %rdi
	callq	gettext
	movq	%rax, -16(%rbp)
.LBB14_5:                               # %if.end.9
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gimp_get_user_context
	leaq	-48(%rbp), %r8
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_edit_named_cut
	cmpq	$0, %rax
	je	.LBB14_7
# BB#6:                                 # %if.then.14
	movq	-32(%rbp), %rdi
	callq	gimp_image_flush
	jmp	.LBB14_8
.LBB14_7:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$1, %edx
	movq	-32(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	callq	gimp_message_literal
	leaq	-48(%rbp), %rdi
	callq	g_clear_error
.LBB14_8:                               # %if.end.16
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	cut_named_buffer_callback, .Lfunc_end14-cut_named_buffer_callback
	.cfi_endproc

	.globl	edit_fade_cmd_callback
	.align	16, 0x90
	.type	edit_fade_cmd_callback,@function
edit_fade_cmd_callback:                 # @edit_fade_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
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
	jmp	.LBB15_6
.LBB15_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB15_4
# BB#3:                                 # %if.then.3
	jmp	.LBB15_6
.LBB15_4:                               # %if.end.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	fade_dialog_new
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB15_6
# BB#5:                                 # %if.then.7
	movabsq	$.L.str.6, %rsi
	movabsq	$gtk_widget_destroy, %rax
	movl	$2, %r8d
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_object
	movq	-40(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_show
.LBB15_6:                               # %if.end.9
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	edit_fade_cmd_callback, .Lfunc_end15-edit_fade_cmd_callback
	.cfi_endproc

	.globl	edit_named_copy_cmd_callback
	.align	16, 0x90
	.type	edit_named_copy_cmd_callback,@function
edit_named_copy_cmd_callback:           # @edit_named_copy_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp55:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$112, %rsp
.Ltmp56:
	.cfi_offset %rbx, -32
.Ltmp57:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB16_2
# BB#1:                                 # %if.then
	jmp	.LBB16_5
.LBB16_2:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB16_4
# BB#3:                                 # %if.then.3
	jmp	.LBB16_5
.LBB16_4:                               # %if.end.4
	movabsq	$.L.str.16, %rdi
	callq	gettext
	movabsq	$.L.str.15, %rdi
	movq	-48(%rbp), %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$gimp_standard_help_func, %rdx
	movabsq	$.L.str.17, %rcx
	xorl	%r8d, %r8d
	movl	%r8d, %r9d
	movabsq	$.L.str.6, %rsi
	movabsq	$copy_named_buffer_callback, %rdi
	movq	-40(%rbp), %r10
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%r11, %rdi
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%rbx, %rsi
	movq	-80(%rbp), %r8          # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-88(%rbp), %r14         # 8-byte Reload
	movq	%r14, 16(%rsp)
	movq	%r10, 24(%rsp)
	callq	gimp_query_string_box
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
.LBB16_5:                               # %return
	addq	$112, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end16:
	.size	edit_named_copy_cmd_callback, .Lfunc_end16-edit_named_copy_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	copy_named_buffer_callback,@function
copy_named_buffer_callback:             # @copy_named_buffer_callback
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -40(%rbp)
	movq	$0, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB17_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.22, %rdi
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_message_literal
	jmp	.LBB17_8
.LBB17_2:                               # %if.end
	cmpq	$0, -16(%rbp)
	je	.LBB17_4
# BB#3:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	strlen
	cmpq	$0, %rax
	jne	.LBB17_5
.LBB17_4:                               # %if.then.7
	movabsq	$.L.str.21, %rdi
	callq	gettext
	movq	%rax, -16(%rbp)
.LBB17_5:                               # %if.end.9
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gimp_get_user_context
	leaq	-48(%rbp), %r8
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_edit_named_copy
	cmpq	$0, %rax
	je	.LBB17_7
# BB#6:                                 # %if.then.14
	movq	-32(%rbp), %rdi
	callq	gimp_image_flush
	jmp	.LBB17_8
.LBB17_7:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$1, %edx
	movq	-32(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	callq	gimp_message_literal
	leaq	-48(%rbp), %rdi
	callq	g_clear_error
.LBB17_8:                               # %if.end.16
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	copy_named_buffer_callback, .Lfunc_end17-copy_named_buffer_callback
	.cfi_endproc

	.globl	edit_named_copy_visible_cmd_callback
	.align	16, 0x90
	.type	edit_named_copy_visible_cmd_callback,@function
edit_named_copy_visible_cmd_callback:   # @edit_named_copy_visible_cmd_callback
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
	pushq	%r14
	pushq	%rbx
	subq	$112, %rsp
.Ltmp64:
	.cfi_offset %rbx, -32
.Ltmp65:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB18_2
# BB#1:                                 # %if.then
	jmp	.LBB18_5
.LBB18_2:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB18_4
# BB#3:                                 # %if.then.3
	jmp	.LBB18_5
.LBB18_4:                               # %if.end.4
	movabsq	$.L.str.18, %rdi
	callq	gettext
	movabsq	$.L.str.15, %rdi
	movq	-48(%rbp), %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-40(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$gimp_standard_help_func, %rdx
	movabsq	$.L.str.17, %rcx
	xorl	%r8d, %r8d
	movl	%r8d, %r9d
	movabsq	$.L.str.6, %rsi
	movabsq	$copy_named_visible_buffer_callback, %rdi
	movq	-40(%rbp), %r10
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%r11, %rdi
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%rbx, %rsi
	movq	-80(%rbp), %r8          # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-88(%rbp), %r14         # 8-byte Reload
	movq	%r14, 16(%rsp)
	movq	%r10, 24(%rsp)
	callq	gimp_query_string_box
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
.LBB18_5:                               # %return
	addq	$112, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end18:
	.size	edit_named_copy_visible_cmd_callback, .Lfunc_end18-edit_named_copy_visible_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	copy_named_visible_buffer_callback,@function
copy_named_visible_buffer_callback:     # @copy_named_visible_buffer_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB19_2
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	strlen
	cmpq	$0, %rax
	jne	.LBB19_3
.LBB19_2:                               # %if.then
	movabsq	$.L.str.21, %rdi
	callq	gettext
	movq	%rax, -16(%rbp)
.LBB19_3:                               # %if.end
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gimp_get_user_context
	leaq	-40(%rbp), %rcx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_edit_named_copy_visible
	cmpq	$0, %rax
	je	.LBB19_5
# BB#4:                                 # %if.then.8
	movq	-32(%rbp), %rdi
	callq	gimp_image_flush
	jmp	.LBB19_6
.LBB19_5:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$1, %edx
	movq	-32(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	callq	gimp_message_literal
	leaq	-40(%rbp), %rdi
	callq	g_clear_error
.LBB19_6:                               # %if.end.10
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	copy_named_visible_buffer_callback, .Lfunc_end19-copy_named_visible_buffer_callback
	.cfi_endproc

	.globl	edit_named_paste_cmd_callback
	.align	16, 0x90
	.type	edit_named_paste_cmd_callback,@function
edit_named_paste_cmd_callback:          # @edit_named_paste_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_gimp
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB20_2
# BB#1:                                 # %if.then
	jmp	.LBB20_5
.LBB20_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB20_4
# BB#3:                                 # %if.then.3
	jmp	.LBB20_5
.LBB20_4:                               # %if.end.4
	movq	-24(%rbp), %rdi
	callq	gimp_get_window_strategy
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_window_strategy_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_dialog_factory_get_singleton
	movq	-32(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_screen
	movabsq	$.L.str.19, %r8
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_window_strategy_show_dockable_dialog
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB20_5:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	edit_named_paste_cmd_callback, .Lfunc_end20-edit_named_paste_cmd_callback
	.cfi_endproc

	.globl	edit_clear_cmd_callback
	.align	16, 0x90
	.type	edit_clear_cmd_callback,@function
edit_clear_cmd_callback:                # @edit_clear_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB21_2
# BB#1:                                 # %if.then
	jmp	.LBB21_5
.LBB21_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB21_4
# BB#3:                                 # %if.then.3
	jmp	.LBB21_5
.LBB21_4:                               # %if.end.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	action_data_get_context
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_edit_clear
	movq	-24(%rbp), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	gimp_image_flush
.LBB21_5:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	edit_clear_cmd_callback, .Lfunc_end21-edit_clear_cmd_callback
	.cfi_endproc

	.globl	edit_fill_cmd_callback
	.align	16, 0x90
	.type	edit_fill_cmd_callback,@function
edit_fill_cmd_callback:                 # @edit_fill_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB22_2
# BB#1:                                 # %if.then
	jmp	.LBB22_5
.LBB22_2:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB22_4
# BB#3:                                 # %if.then.3
	jmp	.LBB22_5
.LBB22_4:                               # %if.end.4
	movl	-12(%rbp), %eax
	movl	%eax, -44(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	action_data_get_context
	movl	-44(%rbp), %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_edit_fill
	movq	-32(%rbp), %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	gimp_image_flush
.LBB22_5:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	edit_fill_cmd_callback, .Lfunc_end22-edit_fill_cmd_callback
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Clear Undo History"
	.size	.L.str, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-warning"
	.size	.L.str.1, 13

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-edit-undo-clear"
	.size	.L.str.2, 21

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gtk-cancel"
	.size	.L.str.3, 11

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gtk-clear"
	.size	.L.str.4, 10

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"unmap"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"disconnect"
	.size	.L.str.6, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Really clear image's undo history?"
	.size	.L.str.7, 35

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Clearing the undo history of this image will gain %s of memory."
	.size	.L.str.8, 64

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Cut pixels to the clipboard"
	.size	.L.str.9, 28

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Copied pixels to the clipboard"
	.size	.L.str.10, 31

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"There is no image data in the clipboard to paste."
	.size	.L.str.11, 50

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Clipboard"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Cut Named"
	.size	.L.str.13, 10

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp-buffer-cut"
	.size	.L.str.14, 16

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Enter a name for this buffer"
	.size	.L.str.15, 29

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Copy Named"
	.size	.L.str.16, 11

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gimp-buffer-copy"
	.size	.L.str.17, 17

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Copy Visible Named "
	.size	.L.str.18, 20

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp-buffer-list|gimp-buffer-grid"
	.size	.L.str.19, 34

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"There is no active layer or channel to cut from."
	.size	.L.str.20, 49

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"(Unnamed Buffer)"
	.size	.L.str.21, 17

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"There is no active layer or channel to copy from."
	.size	.L.str.22, 50


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
