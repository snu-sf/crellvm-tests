	.text
	.file	"file-commands.bc"
	.globl	file_open_cmd_callback
	.align	16, 0x90
	.type	file_open_cmd_callback,@function
file_open_cmd_callback:                 # @file_open_cmd_callback
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
	callq	action_data_get_gimp
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	jmp	.LBB0_5
.LBB0_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_4
# BB#3:                                 # %if.then.3
	jmp	.LBB0_5
.LBB0_4:                                # %if.end.4
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rcx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	file_open_dialog_show
.LBB0_5:                                # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	file_open_cmd_callback, .Lfunc_end0-file_open_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	file_open_dialog_show,@function
file_open_dialog_show:                  # @file_open_dialog_show
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	%r9d, -44(%rbp)
	callq	gimp_dialog_factory_get_singleton
	movq	-16(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_screen
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movabsq	$.L.str.21, %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dialog_factory_dialog_new
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB1_9
# BB#1:                                 # %if.then
	cmpq	$0, -40(%rbp)
	jne	.LBB1_4
# BB#2:                                 # %land.lhs.true
	cmpq	$0, -32(%rbp)
	je	.LBB1_4
# BB#3:                                 # %if.then.5
	movq	-32(%rbp), %rdi
	callq	gimp_image_get_uri
	movq	%rax, -40(%rbp)
.LBB1_4:                                # %if.end
	cmpq	$0, -40(%rbp)
	jne	.LBB1_6
# BB#5:                                 # %if.then.8
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.22, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -40(%rbp)
.LBB1_6:                                # %if.end.11
	cmpq	$0, -40(%rbp)
	je	.LBB1_8
# BB#7:                                 # %if.then.13
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_uri
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB1_8:                                # %if.end.17
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_window_set_title
	movq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_file_dialog_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movl	-44(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_file_dialog_set_open_image
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_toplevel
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_window_set_transient_for
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
.LBB1_9:                                # %if.end.29
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	file_open_dialog_show, .Lfunc_end1-file_open_dialog_show
	.cfi_endproc

	.globl	file_open_as_layers_cmd_callback
	.align	16, 0x90
	.type	file_open_as_layers_cmd_callback,@function
file_open_as_layers_cmd_callback:       # @file_open_as_layers_cmd_callback
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_gimp
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	jmp	.LBB2_7
.LBB2_2:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB2_4
# BB#3:                                 # %if.then.3
	jmp	.LBB2_7
.LBB2_4:                                # %if.end.4
	movq	-16(%rbp), %rdi
	callq	action_data_get_display
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB2_6
# BB#5:                                 # %if.then.7
	movq	-40(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -48(%rbp)
.LBB2_6:                                # %if.end.9
	movabsq	$.L.str.1, %rdi
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$1, %r9d
	movq	-48(%rbp), %rcx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	file_open_dialog_show
.LBB2_7:                                # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	file_open_as_layers_cmd_callback, .Lfunc_end2-file_open_as_layers_cmd_callback
	.cfi_endproc

	.globl	file_open_location_cmd_callback
	.align	16, 0x90
	.type	file_open_location_cmd_callback,@function
file_open_location_cmd_callback:        # @file_open_location_cmd_callback
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	jmp	.LBB3_3
.LBB3_2:                                # %if.end
	callq	gimp_dialog_factory_get_singleton
	movq	-24(%rbp), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_screen
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movabsq	$.L.str.2, %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movl	$1, %r9d
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dialog_factory_dialog_new
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB3_3:                                # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	file_open_location_cmd_callback, .Lfunc_end3-file_open_location_cmd_callback
	.cfi_endproc

	.globl	file_open_recent_cmd_callback
	.align	16, 0x90
	.type	file_open_recent_cmd_callback,@function
file_open_recent_cmd_callback:          # @file_open_recent_cmd_callback
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
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_gimp
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	jmp	.LBB4_14
.LBB4_2:                                # %if.end
	movq	-32(%rbp), %rax
	movq	544(%rax), %rdi
	callq	gimp_container_get_n_children
	movl	%eax, -44(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.LBB4_4
# BB#3:                                 # %if.then.2
	jmp	.LBB4_14
.LBB4_4:                                # %if.end.3
	movq	-32(%rbp), %rax
	movq	544(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_container_get_child_by_index
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB4_14
# BB#5:                                 # %if.then.7
	movq	$0, -88(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_display
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB4_7
# BB#6:                                 # %if.then.10
	jmp	.LBB4_14
.LBB4_7:                                # %if.end.11
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-40(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_object_ref
	movq	-56(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_display_get_image
	cmpq	$0, %rax
	je	.LBB4_9
# BB#8:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB4_10
.LBB4_9:                                # %cond.false
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB4_10:                               # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	action_data_get_context
	movq	-64(%rbp), %rdx
	movq	-40(%rbp), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	xorl	%r8d, %r8d
	leaq	-76(%rbp), %r9
	leaq	-88(%rbp), %rdx
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	-152(%rbp), %rcx        # 8-byte Reload
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	%rax, %rcx
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	file_open_with_display
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB4_13
# BB#11:                                # %land.lhs.true
	cmpl	$4, -76(%rbp)
	je	.LBB4_13
# BB#12:                                # %if.then.23
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, %rdi
	callq	file_utils_uri_display_name
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -96(%rbp)
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$2, %edx
	movq	-96(%rbp), %r8
	movq	-88(%rbp), %rsi
	movq	8(%rsi), %r9
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	-176(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	gimp_message
	leaq	-88(%rbp), %rdi
	callq	g_clear_error
	movq	-96(%rbp), %rdi
	callq	g_free
.LBB4_13:                               # %if.end.28
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB4_14:                               # %if.end.29
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	file_open_recent_cmd_callback, .Lfunc_end4-file_open_recent_cmd_callback
	.cfi_endproc

	.globl	file_save_cmd_callback
	.align	16, 0x90
	.type	file_save_cmd_callback,@function
file_save_cmd_callback:                 # @file_save_cmd_callback
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
	pushq	%r14
	pushq	%rbx
	subq	$336, %rsp              # imm = 0x150
.Ltmp18:
	.cfi_offset %rbx, -32
.Ltmp19:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$0, -92(%rbp)
	movq	-40(%rbp), %rdi
	callq	action_data_get_gimp
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	jmp	.LBB5_42
.LBB5_2:                                # %if.end
	movq	-40(%rbp), %rdi
	callq	action_data_get_display
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB5_4
# BB#3:                                 # %if.then.3
	jmp	.LBB5_42
.LBB5_4:                                # %if.end.4
	movq	-40(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB5_6
# BB#5:                                 # %if.then.7
	jmp	.LBB5_42
.LBB5_6:                                # %if.end.8
	movq	-56(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -64(%rbp)
	movl	-28(%rbp), %ecx
	movl	%ecx, -76(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_image_get_active_drawable
	cmpq	$0, %rax
	jne	.LBB5_8
# BB#7:                                 # %if.then.12
	jmp	.LBB5_42
.LBB5_8:                                # %if.end.13
	movq	-64(%rbp), %rdi
	callq	gimp_image_get_uri
	movq	%rax, -88(%rbp)
	movl	-76(%rbp), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdi
	subq	$6, %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	ja	.LBB5_38
# BB#43:                                # %if.end.13
	movq	-144(%rbp), %rax        # 8-byte Reload
	movq	.LJTI5_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB5_9:                                # %sw.bb
	movq	-64(%rbp), %rdi
	callq	gimp_image_is_dirty
	cmpl	$0, %eax
	jne	.LBB5_12
# BB#10:                                # %lor.lhs.false
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$0, 576(%rax)
	je	.LBB5_12
# BB#11:                                # %lor.lhs.false.21
	cmpq	$0, -88(%rbp)
	jne	.LBB5_19
.LBB5_12:                               # %if.then.22
	movq	-64(%rbp), %rdi
	callq	gimp_image_get_save_proc
	movq	%rax, -104(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB5_15
# BB#13:                                # %land.lhs.true
	cmpq	$0, -104(%rbp)
	jne	.LBB5_15
# BB#14:                                # %if.then.26
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	376(%rcx), %rcx
	movq	72(%rcx), %rdi
	movq	-88(%rbp), %rsi
	callq	file_procedure_find
	movq	%rax, -104(%rbp)
.LBB5_15:                               # %if.end.29
	cmpq	$0, -88(%rbp)
	je	.LBB5_18
# BB#16:                                # %land.lhs.true.31
	cmpq	$0, -104(%rbp)
	je	.LBB5_18
# BB#17:                                # %if.then.33
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %r9d
	movl	$1, %ecx
	xorl	%edx, %edx
	movq	-48(%rbp), %rsi
	movq	-64(%rbp), %rdi
	movq	-88(%rbp), %r8
	movq	-104(%rbp), %r10
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-176(%rbp), %rax        # 8-byte Reload
	movl	%edx, -180(%rbp)        # 4-byte Spill
	movq	%rax, %rdx
	movl	%ecx, -184(%rbp)        # 4-byte Spill
	movq	%r8, %rcx
	movq	%r10, %r8
	movl	$1, (%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$1, 24(%rsp)
	callq	file_save_dialog_save_image
	movl	%eax, -92(%rbp)
	jmp	.LBB5_38
.LBB5_18:                               # %if.end.37
	jmp	.LBB5_20
.LBB5_19:                               # %if.else
	movl	$80, %eax
	movl	%eax, %esi
	movq	-64(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-56(%rbp), %rcx
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.4, %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	-200(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_message_literal
	movl	$1, -92(%rbp)
	jmp	.LBB5_38
.LBB5_20:                               # %if.end.41
	jmp	.LBB5_21
.LBB5_21:                               # %sw.bb.42
	movabsq	$.L.str.5, %rdi
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r8d, %r8d
	cmpl	$3, -76(%rbp)
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %r9d
	movq	-56(%rbp), %rdx
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	-224(%rbp), %rsi        # 8-byte Reload
	movq	-208(%rbp), %r10        # 8-byte Reload
	movq	%rdx, -232(%rbp)        # 8-byte Spill
	movq	%r10, %rdx
	movq	%rax, %rcx
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	file_save_dialog_show
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jmp	.LBB5_38
.LBB5_22:                               # %sw.bb.46
	movabsq	$.L.str.6, %rdi
	movq	-48(%rbp), %rax
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	%rdx, -248(%rbp)        # 8-byte Spill
	movq	%rax, -256(%rbp)        # 8-byte Spill
	movq	%rsi, -264(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdx
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	-264(%rbp), %rsi        # 8-byte Reload
	movq	-248(%rbp), %rcx        # 8-byte Reload
	movq	%rdx, -272(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	%rax, %rcx
	movq	-272(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	file_save_dialog_show
	movq	%rax, -280(%rbp)        # 8-byte Spill
	jmp	.LBB5_38
.LBB5_23:                               # %sw.bb.49
	movq	-48(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	callq	file_export_dialog_show
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jmp	.LBB5_38
.LBB5_24:                               # %sw.bb.51
	movq	$0, -112(%rbp)
	movq	$0, -120(%rbp)
	movl	$0, -124(%rbp)
	cmpl	$5, -76(%rbp)
	jne	.LBB5_28
# BB#25:                                # %if.then.55
	movq	-64(%rbp), %rdi
	callq	gimp_image_get_exported_uri
	movq	%rax, -112(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_image_get_export_proc
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB5_27
# BB#26:                                # %if.then.59
	movq	-48(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	callq	file_export_dialog_show
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jmp	.LBB5_38
.LBB5_27:                               # %if.end.61
	movl	$0, -124(%rbp)
	jmp	.LBB5_31
.LBB5_28:                               # %if.else.62
	cmpl	$6, -76(%rbp)
	jne	.LBB5_30
# BB#29:                                # %if.then.65
	movq	-64(%rbp), %rdi
	callq	gimp_image_get_imported_uri
	movq	%rax, -112(%rbp)
	movl	$1, -124(%rbp)
.LBB5_30:                               # %if.end.67
	jmp	.LBB5_31
.LBB5_31:                               # %if.end.68
	cmpq	$0, -112(%rbp)
	je	.LBB5_34
# BB#32:                                # %land.lhs.true.70
	cmpq	$0, -120(%rbp)
	jne	.LBB5_34
# BB#33:                                # %if.then.72
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	376(%rcx), %rcx
	movq	80(%rcx), %rdi
	movq	-112(%rbp), %rsi
	callq	file_procedure_find
	movq	%rax, -120(%rbp)
.LBB5_34:                               # %if.end.76
	cmpq	$0, -112(%rbp)
	je	.LBB5_37
# BB#35:                                # %land.lhs.true.78
	cmpq	$0, -120(%rbp)
	je	.LBB5_37
# BB#36:                                # %if.then.80
	movq	-112(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -136(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %r9d
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-48(%rbp), %rsi
	movq	-64(%rbp), %rdi
	movq	-136(%rbp), %r8
	movq	-120(%rbp), %r10
	movl	-124(%rbp), %r11d
	cmpl	$0, -124(%rbp)
	setne	%bl
	xorb	$-1, %bl
	andb	$1, %bl
	movzbl	%bl, %r14d
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-312(%rbp), %rax        # 8-byte Reload
	movl	%edx, -316(%rbp)        # 4-byte Spill
	movq	%rax, %rdx
	movl	%ecx, -320(%rbp)        # 4-byte Spill
	movq	%r8, %rcx
	movq	%r10, %r8
	movl	$0, (%rsp)
	movl	%r11d, 8(%rsp)
	movl	%r14d, 16(%rsp)
	movl	$1, 24(%rsp)
	callq	file_save_dialog_save_image
	movl	%eax, -92(%rbp)
	movq	-136(%rbp), %rdi
	callq	g_free
.LBB5_37:                               # %if.end.86
	jmp	.LBB5_38
.LBB5_38:                               # %sw.epilog
	cmpl	$3, -76(%rbp)
	jne	.LBB5_42
# BB#39:                                # %land.lhs.true.89
	cmpl	$0, -92(%rbp)
	je	.LBB5_42
# BB#40:                                # %land.lhs.true.91
	movq	-64(%rbp), %rdi
	callq	gimp_image_is_dirty
	cmpl	$0, %eax
	jne	.LBB5_42
# BB#41:                                # %if.then.94
	movq	-56(%rbp), %rdi
	callq	gimp_display_close
.LBB5_42:                               # %if.end.95
	addq	$336, %rsp              # imm = 0x150
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	file_save_cmd_callback, .Lfunc_end5-file_save_cmd_callback
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_9
	.quad	.LBB5_21
	.quad	.LBB5_22
	.quad	.LBB5_9
	.quad	.LBB5_23
	.quad	.LBB5_24
	.quad	.LBB5_24

	.text
	.align	16, 0x90
	.type	file_save_dialog_show,@function
file_save_dialog_show:                  # @file_save_dialog_show
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp22:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movq	16(%rbp), %rax
	movl	$80, %r10d
	movl	%r10d, %r11d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	movq	%r11, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.23, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB6_4
# BB#1:                                 # %if.then
	callq	gimp_dialog_factory_get_singleton
	movq	-24(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_screen
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movabsq	$.L.str.23, %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dialog_factory_dialog_new
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB6_3
# BB#2:                                 # %if.then.6
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_toplevel
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_window_set_transient_for
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.23, %rsi
	movabsq	$gtk_widget_destroy, %rdi
	movq	-56(%rbp), %rdx
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-96(%rbp), %rcx         # 8-byte Reload
	callq	g_object_set_data_full
	movabsq	$.L.str.17, %rsi
	movabsq	$file_save_dialog_response, %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.24, %rsi
	movabsq	$file_save_dialog_destroyed, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB6_3:                                # %if.end
	jmp	.LBB6_4
.LBB6_4:                                # %if.end.15
	cmpq	$0, -56(%rbp)
	je	.LBB6_6
# BB#5:                                 # %if.then.17
	movq	-56(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_window_set_title
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_file_dialog_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movl	-36(%rbp), %ecx
	movl	-40(%rbp), %r9d
	movq	-48(%rbp), %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movq	%rdx, -168(%rbp)        # 8-byte Spill
	movl	%ecx, -172(%rbp)        # 4-byte Spill
	movl	%r9d, -176(%rbp)        # 4-byte Spill
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	-160(%rbp), %rsi        # 8-byte Reload
	movq	-168(%rbp), %rdx        # 8-byte Reload
	movl	-172(%rbp), %ecx        # 4-byte Reload
	movl	-176(%rbp), %r9d        # 4-byte Reload
	movq	%rax, (%rsp)
	callq	gimp_file_dialog_set_save_image
	movq	-56(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
.LBB6_6:                                # %if.end.26
	movq	-56(%rbp), %rax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	file_save_dialog_show, .Lfunc_end6-file_save_dialog_show
	.cfi_endproc

	.align	16, 0x90
	.type	file_export_dialog_show,@function
file_export_dialog_show:                # @file_export_dialog_show
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.25, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB7_4
# BB#1:                                 # %if.then
	callq	gimp_dialog_factory_get_singleton
	movq	-24(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_screen
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movabsq	$.L.str.25, %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dialog_factory_dialog_new
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB7_3
# BB#2:                                 # %if.then.6
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_toplevel
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_window_set_transient_for
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.25, %rsi
	movabsq	$gtk_widget_destroy, %rdi
	movq	-32(%rbp), %rdx
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	g_object_set_data_full
	movabsq	$.L.str.17, %rsi
	movabsq	$file_export_dialog_response, %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.24, %rsi
	movabsq	$file_export_dialog_destroyed, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB7_3:                                # %if.end
	jmp	.LBB7_4
.LBB7_4:                                # %if.end.15
	cmpq	$0, -32(%rbp)
	je	.LBB7_6
# BB#5:                                 # %if.then.17
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_file_dialog_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	$1, %r8d
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	movl	-132(%rbp), %r9d        # 4-byte Reload
	movq	$0, (%rsp)
	callq	gimp_file_dialog_set_save_image
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
.LBB7_6:                                # %if.end.22
	movq	-32(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	file_export_dialog_show, .Lfunc_end7-file_export_dialog_show
	.cfi_endproc

	.globl	file_create_template_cmd_callback
	.align	16, 0x90
	.type	file_create_template_cmd_callback,@function
file_create_template_cmd_callback:      # @file_create_template_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp28:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$128, %rsp
.Ltmp29:
	.cfi_offset %rbx, -32
.Ltmp30:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	action_data_get_display
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	jmp	.LBB8_3
.LBB8_2:                                # %if.end
	movq	-40(%rbp), %rdi
	callq	gimp_display_get_image
	movabsq	$.L.str.7, %rdi
	movq	%rax, -48(%rbp)
	callq	gettext
	movq	-40(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_display_get_shell
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	-48(%rbp), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$gimp_standard_help_func, %rdx
	movabsq	$.L.str.8, %rcx
	xorl	%r8d, %r8d
	movl	%r8d, %r9d
	movabsq	$.L.str.10, %rsi
	movabsq	$file_new_template_callback, %rdi
	movq	-48(%rbp), %r10
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%r11, %rdi
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	%rbx, %rsi
	movq	-88(%rbp), %r8          # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	-96(%rbp), %r14         # 8-byte Reload
	movq	%r14, 16(%rsp)
	movq	%r10, 24(%rsp)
	callq	gimp_query_string_box
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gtk_widget_show
.LBB8_3:                                # %return
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end8:
	.size	file_create_template_cmd_callback, .Lfunc_end8-file_create_template_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	file_new_template_callback,@function
file_new_template_callback:             # @file_new_template_callback
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
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB9_2
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rdi
	callq	strlen
	cmpq	$0, %rax
	jne	.LBB9_3
.LBB9_2:                                # %if.then
	movabsq	$.L.str.26, %rdi
	callq	gettext
	movq	%rax, -16(%rbp)
.LBB9_3:                                # %if.end
	movq	-16(%rbp), %rdi
	callq	gimp_template_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	gimp_template_set_from_image
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	552(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_add
	movq	-32(%rbp), %rsi
	movq	%rsi, %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	g_object_unref
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	file_new_template_callback, .Lfunc_end9-file_new_template_callback
	.cfi_endproc

	.globl	file_revert_cmd_callback
	.align	16, 0x90
	.type	file_revert_cmd_callback,@function
file_revert_cmd_callback:               # @file_revert_cmd_callback
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
.Ltmp37:
	.cfi_offset %rbx, -40
.Ltmp38:
	.cfi_offset %r14, -32
.Ltmp39:
	.cfi_offset %r15, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	action_data_get_display
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	jmp	.LBB10_10
.LBB10_2:                               # %if.end
	movq	-48(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_uri
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB10_4
# BB#3:                                 # %if.then.4
	movq	-56(%rbp), %rdi
	callq	gimp_image_get_imported_uri
	movq	%rax, -72(%rbp)
.LBB10_4:                               # %if.end.6
	movl	$80, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.11, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -64(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB10_6
# BB#5:                                 # %if.then.10
	movl	$80, %eax
	movl	%eax, %esi
	movq	-56(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-48(%rbp), %rcx
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.12, %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$2, %edx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_message_literal
	jmp	.LBB10_10
.LBB10_6:                               # %if.else
	cmpq	$0, -64(%rbp)
	je	.LBB10_8
# BB#7:                                 # %if.then.14
	movq	-64(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
	jmp	.LBB10_9
.LBB10_8:                               # %if.else.17
	movabsq	$.L.str.13, %rdi
	callq	gettext
	movq	-48(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_display_get_shell
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.14, %rsi
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.15, %r9
	movabsq	$.L.str.16, %rdi
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967291, %r10d      # imm = 0xFFFFFFFB
	xorl	%r11d, %r11d
	movl	%r11d, %ebx
	movq	-112(%rbp), %r14        # 8-byte Reload
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	%rsi, -136(%rbp)        # 8-byte Spill
	movl	%edx, -140(%rbp)        # 4-byte Spill
	movq	%rax, %rdx
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$-6, 8(%rsp)
	movq	-136(%rbp), %r15        # 8-byte Reload
	movq	%r15, 16(%rsp)
	movl	$-5, 24(%rsp)
	movq	$0, 32(%rsp)
	movb	$0, %al
	movq	%rbx, -152(%rbp)        # 8-byte Spill
	movl	%r10d, -156(%rbp)       # 4-byte Spill
	callq	gimp_message_dialog_new
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4294967291, %esi       # imm = 0xFFFFFFFB
	movl	$4294967290, %edx       # imm = 0xFFFFFFFA
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movabsq	$.L.str.10, %rsi
	movabsq	$gtk_widget_destroy, %rdi
	movl	$2, %r8d
	movq	-48(%rbp), %r9
	movq	-64(%rbp), %rbx
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	-176(%rbp), %rdx        # 8-byte Reload
	movq	%rbx, %rcx
	callq	g_signal_connect_object
	movabsq	$.L.str.17, %rsi
	movabsq	$file_revert_confirm_response, %rcx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-72(%rbp), %rdi
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	file_utils_uri_display_name
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_message_dialog_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.18, %rdi
	movq	264(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-56(%rbp), %rdi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gimp_image_get_display_name
	movq	-80(%rbp), %rcx
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	-224(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	movb	$0, %al
	callq	gimp_message_box_set_primary_text
	movq	-80(%rbp), %rdi
	callq	g_free
	movq	-64(%rbp), %rcx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	callq	gimp_message_dialog_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.19, %rdi
	movq	264(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	gimp_message_box_set_text
	movl	$80, %r9d
	movl	%r9d, %esi
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.11, %rsi
	movq	-64(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
.LBB10_9:                               # %if.end.37
	jmp	.LBB10_10
.LBB10_10:                              # %if.end.38
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	file_revert_cmd_callback, .Lfunc_end10-file_revert_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	file_revert_confirm_response,@function
file_revert_confirm_response:           # @file_revert_confirm_response
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
	pushq	%rbx
	subq	$184, %rsp
.Ltmp43:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.11, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	g_object_set_data
	cmpl	$-5, -20(%rbp)
	jne	.LBB11_9
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	$0, -80(%rbp)
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_uri
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then.4
	movq	-40(%rbp), %rdi
	callq	gimp_image_get_imported_uri
	movq	%rax, -64(%rbp)
.LBB11_3:                               # %if.end
	movq	-48(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_get_user_context
	movq	-32(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	leaq	-68(%rbp), %rdi
	leaq	-80(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-64(%rbp), %r8
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	-104(%rbp), %r11        # 8-byte Reload
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	$0, (%rsp)
	movl	$0, 8(%rsp)
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	-136(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 32(%rsp)
	callq	file_open_image
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB11_5
# BB#4:                                 # %if.then.11
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	gimp_displays_reconnect
	movq	-56(%rbp), %rdi
	callq	gimp_image_flush
	movq	-56(%rbp), %rdx
	movq	%rdx, %rdi
	callq	g_object_unref
	jmp	.LBB11_8
.LBB11_5:                               # %if.else
	cmpl	$4, -68(%rbp)
	je	.LBB11_7
# BB#6:                                 # %if.then.13
	movq	-64(%rbp), %rdi
	callq	file_utils_uri_display_name
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.27, %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$2, %edx
	movq	-88(%rbp), %r8
	movq	-80(%rbp), %rsi
	movq	8(%rsi), %r9
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	gimp_message
	leaq	-80(%rbp), %rdi
	callq	g_clear_error
	movq	-88(%rbp), %rdi
	callq	g_free
.LBB11_7:                               # %if.end.17
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.18
	jmp	.LBB11_9
.LBB11_9:                               # %if.end.19
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end11:
	.size	file_revert_confirm_response, .Lfunc_end11-file_revert_confirm_response
	.cfi_endproc

	.globl	file_close_all_cmd_callback
	.align	16, 0x90
	.type	file_close_all_cmd_callback,@function
file_close_all_cmd_callback:            # @file_close_all_cmd_callback
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp46:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
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
	movq	-24(%rbp), %rdi
	callq	gimp_displays_dirty
	cmpl	$0, %eax
	jne	.LBB12_4
# BB#3:                                 # %if.then.3
	movq	-24(%rbp), %rdi
	callq	gimp_displays_close
	jmp	.LBB12_7
.LBB12_4:                               # %if.else
	movq	-16(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB12_6
# BB#5:                                 # %if.then.6
	jmp	.LBB12_7
.LBB12_6:                               # %if.end.7
	callq	gimp_dialog_factory_get_singleton
	movq	-32(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_screen
	movabsq	$.L.str.20, %rdx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dialog_factory_dialog_raise
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB12_7:                               # %if.end.11
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	file_close_all_cmd_callback, .Lfunc_end12-file_close_all_cmd_callback
	.cfi_endproc

	.globl	file_quit_cmd_callback
	.align	16, 0x90
	.type	file_quit_cmd_callback,@function
file_quit_cmd_callback:                 # @file_quit_cmd_callback
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_gimp
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB13_2
# BB#1:                                 # %if.then
	jmp	.LBB13_3
.LBB13_2:                               # %if.end
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	callq	gimp_exit
.LBB13_3:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	file_quit_cmd_callback, .Lfunc_end13-file_quit_cmd_callback
	.cfi_endproc

	.globl	file_file_open_dialog
	.align	16, 0x90
	.type	file_file_open_dialog,@function
file_file_open_dialog:                  # @file_file_open_dialog
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
	subq	$48, %rsp
	movabsq	$.L.str, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	xorl	%r9d, %r9d
	movq	-16(%rbp), %r8
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	file_open_dialog_show
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	file_file_open_dialog, .Lfunc_end14-file_file_open_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	file_save_dialog_response,@function
file_save_dialog_response:              # @file_save_dialog_response
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$-23, -12(%rbp)
	jne	.LBB15_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_file_dialog_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_get_transient_for
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_file_chooser_get_current_folder_uri
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_file_chooser_get_uri
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	file_utils_uri_display_basename
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rdi
	callq	g_free
	movq	-32(%rbp), %rax
	movq	280(%rax), %rax
	movq	32(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	280(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	file_export_dialog_show
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_current_folder_uri
	movq	-48(%rbp), %rdx
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_current_name
	movq	-56(%rbp), %rdi
	callq	g_free
	movq	-72(%rbp), %rdi
	callq	g_free
.LBB15_2:                               # %if.end
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	file_save_dialog_response, .Lfunc_end15-file_save_dialog_response
	.cfi_endproc

	.align	16, 0x90
	.type	file_save_dialog_destroyed,@function
file_save_dialog_destroyed:             # @file_save_dialog_destroyed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp58:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gimp_file_dialog_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	280(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB16_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.23, %rsi
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	callq	g_object_set_data
.LBB16_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	file_save_dialog_destroyed, .Lfunc_end16-file_save_dialog_destroyed
	.cfi_endproc

	.align	16, 0x90
	.type	file_export_dialog_response,@function
file_export_dialog_response:            # @file_export_dialog_response
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp61:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$-23, -12(%rbp)
	jne	.LBB17_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_file_dialog_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_get_transient_for
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_file_chooser_get_current_folder_uri
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_file_chooser_get_uri
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	file_utils_uri_display_basename
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rdi
	callq	g_free
	movq	-32(%rbp), %rax
	movq	280(%rax), %rax
	movq	32(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	280(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.5, %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-120(%rbp), %r8         # 8-byte Reload
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movq	-136(%rbp), %rdx        # 8-byte Reload
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-148(%rbp), %r8d        # 4-byte Reload
	movl	-148(%rbp), %r9d        # 4-byte Reload
	movq	$0, (%rsp)
	callq	file_save_dialog_show
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_current_folder_uri
	movq	-48(%rbp), %rcx
	movl	%eax, -164(%rbp)        # 4-byte Spill
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	callq	gtk_file_chooser_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_file_chooser_set_current_name
	movq	-56(%rbp), %rdi
	callq	g_free
	movq	-72(%rbp), %rdi
	callq	g_free
.LBB17_2:                               # %if.end
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	file_export_dialog_response, .Lfunc_end17-file_export_dialog_response
	.cfi_endproc

	.align	16, 0x90
	.type	file_export_dialog_destroyed,@function
file_export_dialog_destroyed:           # @file_export_dialog_destroyed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gimp_file_dialog_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	280(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB18_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.25, %rsi
	xorl	%edx, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, %rdi
	callq	g_object_set_data
.LBB18_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	file_export_dialog_destroyed, .Lfunc_end18-file_export_dialog_destroyed
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Open Image"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Open Image as Layers"
	.size	.L.str.1, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-file-open-location-dialog"
	.size	.L.str.2, 31

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Opening '%s' failed:\n\n%s"
	.size	.L.str.3, 25

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"No changes need to be saved"
	.size	.L.str.4, 28

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Save Image"
	.size	.L.str.5, 11

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Save a Copy of the Image"
	.size	.L.str.6, 25

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Create New Template"
	.size	.L.str.7, 20

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-file-save-as-template"
	.size	.L.str.8, 27

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Enter a name for this template"
	.size	.L.str.9, 31

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"disconnect"
	.size	.L.str.10, 11

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"revert-confirm-dialog"
	.size	.L.str.11, 22

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Revert failed. No file name associated with this image."
	.size	.L.str.12, 56

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Revert Image"
	.size	.L.str.13, 13

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gtk-revert-to-saved"
	.size	.L.str.14, 20

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimp-file-revert"
	.size	.L.str.15, 17

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gtk-cancel"
	.size	.L.str.16, 11

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"response"
	.size	.L.str.17, 9

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Revert '%s' to '%s'?"
	.size	.L.str.18, 21

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"By reverting the image to the state saved on disk, you will lose all changes, including all undo information."
	.size	.L.str.19, 110

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gimp-close-all-dialog"
	.size	.L.str.20, 22

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimp-file-open-dialog"
	.size	.L.str.21, 22

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gimp-file-open-last-uri"
	.size	.L.str.22, 24

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gimp-file-save-dialog"
	.size	.L.str.23, 22

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"destroy"
	.size	.L.str.24, 8

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gimp-file-export-dialog"
	.size	.L.str.25, 24

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"(Unnamed Template)"
	.size	.L.str.26, 19

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Reverting to '%s' failed:\n\n%s"
	.size	.L.str.27, 30


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
