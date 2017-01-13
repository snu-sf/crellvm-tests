	.text
	.file	"image-commands.bc"
	.globl	image_new_cmd_callback
	.align	16, 0x90
	.type	image_new_cmd_callback,@function
image_new_cmd_callback:                 # @image_new_cmd_callback
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
	callq	action_data_get_widget
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	jmp	.LBB0_4
.LBB0_2:                                # %if.end
	callq	gimp_dialog_factory_get_singleton
	movq	-24(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_screen
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movabsq	$.L.str, %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	xorl	%r9d, %r9d
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_dialog_factory_dialog_new
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB0_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	image_new_dialog_set
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
.LBB0_4:                                # %if.end.9
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	image_new_cmd_callback, .Lfunc_end0-image_new_cmd_callback
	.cfi_endproc

	.globl	image_convert_cmd_callback
	.align	16, 0x90
	.type	image_convert_cmd_callback,@function
image_convert_cmd_callback:             # @image_convert_cmd_callback
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
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -64(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	jmp	.LBB1_16
.LBB1_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB1_4
# BB#3:                                 # %if.then.3
	jmp	.LBB1_16
.LBB1_4:                                # %if.end.4
	movq	-24(%rbp), %rdi
	callq	action_data_get_display
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB1_6
# BB#5:                                 # %if.then.7
	jmp	.LBB1_16
.LBB1_6:                                # %if.end.8
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_radio_action_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_radio_action_get_current_value
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	movq	-32(%rbp), %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gimp_image_base_type
	movl	-84(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB1_8
# BB#7:                                 # %if.then.13
	jmp	.LBB1_16
.LBB1_8:                                # %if.end.14
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	subl	$2, %ecx
	movl	%eax, -88(%rbp)         # 4-byte Spill
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	jb	.LBB1_9
	jmp	.LBB1_17
.LBB1_17:                               # %if.end.14
	movl	-88(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB1_12
	jmp	.LBB1_15
.LBB1_9:                                # %sw.bb
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	-64(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movl	-52(%rbp), %ecx
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movl	%ecx, %esi
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	%eax, %r8d
	movl	%eax, %r9d
	movl	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, 24(%rsp)
	callq	gimp_image_convert
	cmpl	$0, %eax
	jne	.LBB1_11
# BB#10:                                # %if.then.17
	movl	$80, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-40(%rbp), %rcx
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	-64(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_message_literal
	leaq	-64(%rbp), %rdi
	callq	g_clear_error
	jmp	.LBB1_16
.LBB1_11:                               # %if.end.19
	jmp	.LBB1_15
.LBB1_12:                               # %sw.bb.20
	movl	$80, %eax
	movl	%eax, %esi
	movq	-40(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.1, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB1_14
# BB#13:                                # %if.then.24
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	action_data_get_context
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movq	-144(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	convert_dialog_new
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.1, %rsi
	movq	-72(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rdx
	callq	g_object_set_data
	movabsq	$.L.str.2, %rsi
	movabsq	$image_convert_dialog_unset, %rax
	movl	$2, %r8d
	movq	-72(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-160(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movq	%rax, -168(%rbp)        # 8-byte Spill
.LBB1_14:                               # %if.end.31
	movq	-72(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
.LBB1_15:                               # %sw.epilog
	movq	-32(%rbp), %rdi
	callq	gimp_image_flush
.LBB1_16:                               # %return
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	image_convert_cmd_callback, .Lfunc_end1-image_convert_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	image_convert_dialog_unset,@function
image_convert_dialog_unset:             # @image_convert_dialog_unset
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
	subq	$16, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.1, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	g_object_set_data
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	image_convert_dialog_unset, .Lfunc_end2-image_convert_dialog_unset
	.cfi_endproc

	.globl	image_resize_cmd_callback
	.align	16, 0x90
	.type	image_resize_cmd_callback,@function
image_resize_cmd_callback:              # @image_resize_cmd_callback
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
	pushq	%rbx
	subq	$168, %rsp
.Ltmp12:
	.cfi_offset %rbx, -40
.Ltmp13:
	.cfi_offset %r14, -32
.Ltmp14:
	.cfi_offset %r15, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	jmp	.LBB3_9
.LBB3_2:                                # %if.end
	movq	-40(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB3_4
# BB#3:                                 # %if.then.3
	jmp	.LBB3_9
.LBB3_4:                                # %if.end.4
	movq	-40(%rbp), %rdi
	callq	action_data_get_display
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB3_6
# BB#5:                                 # %if.then.7
	jmp	.LBB3_9
.LBB3_6:                                # %if.end.8
	movl	$16, %eax
	movl	%eax, %edi
	callq	g_slice_alloc
	movq	%rax, -48(%rbp)
	movq	-72(%rbp), %rax
	movq	-48(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-40(%rbp), %rdi
	callq	action_data_get_context
	movq	-48(%rbp), %rdi
	movq	%rax, (%rdi)
	cmpl	$65536, image_resize_unit # imm = 0x10000
	je	.LBB3_8
# BB#7:                                 # %if.then.12
	movq	-72(%rbp), %rdi
	callq	gimp_display_get_shell
	movl	184(%rax), %ecx
	movl	%ecx, image_resize_unit
.LBB3_8:                                # %if.end.14
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	action_data_get_context
	movabsq	$.L.str.3, %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.4, %rsi
	movabsq	$gimp_standard_help_func, %r9
	movabsq	$image_resize_callback, %rdi
	movq	-64(%rbp), %r8
	movl	image_resize_unit, %ecx
	movq	-48(%rbp), %rdx
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	-104(%rbp), %r11        # 8-byte Reload
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movq	%r11, %rsi
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-120(%rbp), %rax        # 8-byte Reload
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movq	%rax, (%rsp)
	movl	-132(%rbp), %ebx        # 4-byte Reload
	movl	%ebx, 8(%rsp)
	movq	-112(%rbp), %r14        # 8-byte Reload
	movq	%r14, 16(%rsp)
	movq	-128(%rbp), %r15        # 8-byte Reload
	movq	%r15, 24(%rsp)
	callq	resize_dialog_new
	movabsq	$.L.str.5, %rsi
	movabsq	$gtk_widget_destroy, %rcx
	movl	$2, %r8d
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -144(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-144(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	-80(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	g_type_check_instance_cast
	movabsq	$image_resize_options_free, %rcx
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_object_weak_ref
	movq	-80(%rbp), %rdi
	callq	gtk_widget_show
.LBB3_9:                                # %return
	addq	$168, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	image_resize_cmd_callback, .Lfunc_end3-image_resize_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	image_resize_callback,@function
image_resize_callback:                  # @image_resize_callback
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
	subq	$144, %rsp
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
	movq	%rax, -56(%rbp)
	movl	-28(%rbp), %ecx
	movl	%ecx, image_resize_unit
	cmpl	$0, -20(%rbp)
	jle	.LBB4_8
# BB#1:                                 # %land.lhs.true
	cmpl	$0, -24(%rbp)
	jle	.LBB4_8
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
	movl	-20(%rbp), %ecx
	movq	-64(%rbp), %rdi
	movl	%ecx, -100(%rbp)        # 4-byte Spill
	callq	gimp_image_get_width
	movl	-100(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB4_5
# BB#3:                                 # %land.lhs.true.7
	movl	-24(%rbp), %eax
	movq	-64(%rbp), %rdi
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	movl	-104(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB4_5
# BB#4:                                 # %if.then.10
	jmp	.LBB4_9
.LBB4_5:                                # %if.end
	movq	-72(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_progress_start
	movq	%rax, -88(%rbp)
	movq	-64(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-32(%rbp), %r8d
	movl	-36(%rbp), %r9d
	movl	-40(%rbp), %r10d
	movq	-88(%rbp), %rax
	movl	%r10d, (%rsp)
	movq	%rax, 8(%rsp)
	callq	gimp_image_resize_with_layers
	cmpq	$0, -88(%rbp)
	je	.LBB4_7
# BB#6:                                 # %if.then.15
	movq	-88(%rbp), %rdi
	callq	gimp_progress_end
.LBB4_7:                                # %if.end.16
	movq	-64(%rbp), %rdi
	callq	gimp_image_flush
	jmp	.LBB4_9
.LBB4_8:                                # %if.else
	movabsq	$.L.str.13, %rdi
	movb	$0, %al
	callq	g_warning
.LBB4_9:                                # %if.end.17
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	image_resize_callback, .Lfunc_end4-image_resize_callback
	.cfi_endproc

	.align	16, 0x90
	.type	image_resize_options_free,@function
image_resize_options_free:              # @image_resize_options_free
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movl	$16, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#2:                                 # %do.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	image_resize_options_free, .Lfunc_end5-image_resize_options_free
	.cfi_endproc

	.globl	image_resize_to_layers_cmd_callback
	.align	16, 0x90
	.type	image_resize_to_layers_cmd_callback,@function
image_resize_to_layers_cmd_callback:    # @image_resize_to_layers_cmd_callback
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_display
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	jmp	.LBB6_5
.LBB6_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_progress_start
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	action_data_get_context
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_resize_to_layers
	cmpq	$0, -40(%rbp)
	je	.LBB6_4
# BB#3:                                 # %if.then.8
	movq	-40(%rbp), %rdi
	callq	gimp_progress_end
.LBB6_4:                                # %if.end.9
	movq	-32(%rbp), %rdi
	callq	gimp_image_flush
.LBB6_5:                                # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	image_resize_to_layers_cmd_callback, .Lfunc_end6-image_resize_to_layers_cmd_callback
	.cfi_endproc

	.globl	image_resize_to_selection_cmd_callback
	.align	16, 0x90
	.type	image_resize_to_selection_cmd_callback,@function
image_resize_to_selection_cmd_callback: # @image_resize_to_selection_cmd_callback
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_display
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	jmp	.LBB7_5
.LBB7_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.6, %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_progress_start
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	action_data_get_context
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_resize_to_selection
	cmpq	$0, -40(%rbp)
	je	.LBB7_4
# BB#3:                                 # %if.then.8
	movq	-40(%rbp), %rdi
	callq	gimp_progress_end
.LBB7_4:                                # %if.end.9
	movq	-32(%rbp), %rdi
	callq	gimp_image_flush
.LBB7_5:                                # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	image_resize_to_selection_cmd_callback, .Lfunc_end7-image_resize_to_selection_cmd_callback
	.cfi_endproc

	.globl	image_print_size_cmd_callback
	.align	16, 0x90
	.type	image_print_size_cmd_callback,@function
image_print_size_cmd_callback:          # @image_print_size_cmd_callback
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
	pushq	%rbx
	subq	$136, %rsp
.Ltmp30:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_display
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	jmp	.LBB8_5
.LBB8_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB8_4
# BB#3:                                 # %if.then.3
	jmp	.LBB8_5
.LBB8_4:                                # %if.end.4
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	action_data_get_context
	movabsq	$.L.str.7, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.8, %rdi
	movabsq	$gimp_standard_help_func, %r9
	movabsq	$image_print_size_callback, %rcx
	xorl	%edx, %edx
	movl	%edx, %esi
	movq	-48(%rbp), %r8
	movq	-64(%rbp), %r10         # 8-byte Reload
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%r10, %rdi
	movq	-72(%rbp), %r11         # 8-byte Reload
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%r11, %rsi
	movq	%rax, %rdx
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	%rax, (%rsp)
	movq	-96(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, 8(%rsp)
	movq	$0, 16(%rsp)
	callq	print_size_dialog_new
	movabsq	$.L.str.5, %rsi
	movabsq	$gtk_widget_destroy, %rcx
	movl	$2, %r8d
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movq	-56(%rbp), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_widget_show
.LBB8_5:                                # %return
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end8:
	.size	image_print_size_cmd_callback, .Lfunc_end8-image_print_size_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	image_print_size_callback,@function
image_print_size_callback:              # @image_print_size_callback
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
	leaq	-56(%rbp), %rsi
	leaq	-64(%rbp), %rdx
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_resolution
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-56(%rbp), %xmm0
	jne	.LBB9_4
	jp	.LBB9_4
# BB#1:                                 # %land.lhs.true
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-64(%rbp), %xmm0
	jne	.LBB9_4
	jp	.LBB9_4
# BB#2:                                 # %land.lhs.true.2
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	gimp_image_get_unit
	movl	-68(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB9_4
# BB#3:                                 # %if.then
	jmp	.LBB9_5
.LBB9_4:                                # %if.end
	movabsq	$.L.str.15, %rdi
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$1, %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	movq	-16(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	gimp_image_set_resolution
	movq	-16(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_image_set_unit
	movq	-16(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movq	-16(%rbp), %rdi
	movl	%eax, -88(%rbp)         # 4-byte Spill
	callq	gimp_image_flush
.LBB9_5:                                # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	image_print_size_callback, .Lfunc_end9-image_print_size_callback
	.cfi_endproc

	.globl	image_scale_cmd_callback
	.align	16, 0x90
	.type	image_scale_cmd_callback,@function
image_scale_cmd_callback:               # @image_scale_cmd_callback
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_display
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	jmp	.LBB10_9
.LBB10_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB10_4
# BB#3:                                 # %if.then.3
	jmp	.LBB10_9
.LBB10_4:                               # %if.end.4
	movq	-24(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -32(%rbp)
	cmpl	$65536, image_scale_unit # imm = 0x10000
	je	.LBB10_6
# BB#5:                                 # %if.then.6
	movq	-24(%rbp), %rdi
	callq	gimp_display_get_shell
	movl	184(%rax), %ecx
	movl	%ecx, image_scale_unit
.LBB10_6:                               # %if.end.8
	cmpl	$-1, image_scale_interp
	jne	.LBB10_8
# BB#7:                                 # %if.then.10
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movl	64(%rax), %ecx
	movl	%ecx, image_scale_interp
.LBB10_8:                               # %if.end.11
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	action_data_get_context
	movabsq	$image_scale_callback, %r9
	movq	-40(%rbp), %rdx
	movl	image_scale_unit, %ecx
	movl	image_scale_interp, %r8d
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	%rax, %rsi
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	image_scale_dialog_new
	movabsq	$.L.str.5, %rsi
	movabsq	$gtk_widget_destroy, %rdx
	movl	$2, %r8d
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_object
	movq	-48(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_show
.LBB10_9:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	image_scale_cmd_callback, .Lfunc_end10-image_scale_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	image_scale_callback,@function
image_scale_callback:                   # @image_scale_callback
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
	subq	$176, %rsp
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
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_image_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-80(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	movq	%rax, -72(%rbp)
	movl	-28(%rbp), %ecx
	movl	%ecx, image_scale_unit
	movl	-32(%rbp), %ecx
	movl	%ecx, image_scale_interp
	movq	-72(%rbp), %rdi
	callq	gimp_image_get_resolution
	cmpl	$0, -20(%rbp)
	jle	.LBB11_14
# BB#1:                                 # %land.lhs.true
	cmpl	$0, -24(%rbp)
	jle	.LBB11_14
# BB#2:                                 # %if.then
	movl	-20(%rbp), %eax
	movq	-72(%rbp), %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	gimp_image_get_width
	movl	-108(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB11_8
# BB#3:                                 # %land.lhs.true.5
	movl	-24(%rbp), %eax
	movq	-72(%rbp), %rdi
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	movl	-112(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB11_8
# BB#4:                                 # %land.lhs.true.8
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-80(%rbp), %xmm0
	jne	.LBB11_8
	jp	.LBB11_8
# BB#5:                                 # %land.lhs.true.10
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-88(%rbp), %xmm0
	jne	.LBB11_8
	jp	.LBB11_8
# BB#6:                                 # %land.lhs.true.12
	movl	-52(%rbp), %eax
	movq	-72(%rbp), %rdi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	gimp_image_get_unit
	movl	-116(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB11_8
# BB#7:                                 # %if.then.15
	jmp	.LBB11_15
.LBB11_8:                               # %if.end
	movabsq	$.L.str.16, %rdi
	movq	-72(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %esi
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_image_undo_group_start
	movq	-72(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	gimp_image_set_resolution
	movq	-72(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	gimp_image_set_unit
	movl	-20(%rbp), %eax
	movq	-72(%rbp), %rdi
	movl	%eax, -136(%rbp)        # 4-byte Spill
	callq	gimp_image_get_width
	movl	-136(%rbp), %esi        # 4-byte Reload
	cmpl	%eax, %esi
	jne	.LBB11_10
# BB#9:                                 # %lor.lhs.false
	movl	-24(%rbp), %eax
	movq	-72(%rbp), %rdi
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	gimp_image_get_height
	movl	-140(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	je	.LBB11_13
.LBB11_10:                              # %if.then.22
	movq	-64(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.17, %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_progress_start
	movq	%rax, -96(%rbp)
	movq	-72(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-32(%rbp), %ecx
	movq	-96(%rbp), %r8
	callq	gimp_image_scale
	cmpq	$0, -96(%rbp)
	je	.LBB11_12
# BB#11:                                # %if.then.27
	movq	-96(%rbp), %rdi
	callq	gimp_progress_end
.LBB11_12:                              # %if.end.28
	jmp	.LBB11_13
.LBB11_13:                              # %if.end.29
	movq	-72(%rbp), %rdi
	callq	gimp_image_undo_group_end
	movq	-72(%rbp), %rdi
	movl	%eax, -164(%rbp)        # 4-byte Spill
	callq	gimp_image_flush
	jmp	.LBB11_15
.LBB11_14:                              # %if.else
	movabsq	$.L.str.18, %rdi
	movb	$0, %al
	callq	g_warning
.LBB11_15:                              # %if.end.31
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	image_scale_callback, .Lfunc_end11-image_scale_callback
	.cfi_endproc

	.globl	image_flip_cmd_callback
	.align	16, 0x90
	.type	image_flip_cmd_callback,@function
image_flip_cmd_callback:                # @image_flip_cmd_callback
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_display
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB12_2
# BB#1:                                 # %if.then
	jmp	.LBB12_5
.LBB12_2:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.9, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_progress_start
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	action_data_get_context
	movl	-12(%rbp), %edx
	movq	-48(%rbp), %rcx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_flip
	cmpq	$0, -48(%rbp)
	je	.LBB12_4
# BB#3:                                 # %if.then.8
	movq	-48(%rbp), %rdi
	callq	gimp_progress_end
.LBB12_4:                               # %if.end.9
	movq	-40(%rbp), %rdi
	callq	gimp_image_flush
.LBB12_5:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	image_flip_cmd_callback, .Lfunc_end12-image_flip_cmd_callback
	.cfi_endproc

	.globl	image_rotate_cmd_callback
	.align	16, 0x90
	.type	image_rotate_cmd_callback,@function
image_rotate_cmd_callback:              # @image_rotate_cmd_callback
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	action_data_get_display
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB13_2
# BB#1:                                 # %if.then
	jmp	.LBB13_5
.LBB13_2:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gettext
	xorl	%edx, %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_progress_start
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	action_data_get_context
	movl	-12(%rbp), %edx
	movq	-48(%rbp), %rcx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_rotate
	cmpq	$0, -48(%rbp)
	je	.LBB13_4
# BB#3:                                 # %if.then.8
	movq	-48(%rbp), %rdi
	callq	gimp_progress_end
.LBB13_4:                               # %if.end.9
	movq	-40(%rbp), %rdi
	callq	gimp_image_flush
.LBB13_5:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	image_rotate_cmd_callback, .Lfunc_end13-image_rotate_cmd_callback
	.cfi_endproc

	.globl	image_crop_cmd_callback
	.align	16, 0x90
	.type	image_crop_cmd_callback,@function
image_crop_cmd_callback:                # @image_crop_cmd_callback
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB14_2
# BB#1:                                 # %if.then
	jmp	.LBB14_7
.LBB14_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB14_4
# BB#3:                                 # %if.then.3
	jmp	.LBB14_7
.LBB14_4:                               # %if.end.4
	movq	-24(%rbp), %rdi
	callq	gimp_image_get_mask
	leaq	-36(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	leaq	-44(%rbp), %rcx
	leaq	-48(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_channel_bounds
	cmpl	$0, %eax
	jne	.LBB14_6
# BB#5:                                 # %if.then.8
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-32(%rbp), %rcx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.11, %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gettext
	movl	$1, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_message_literal
	jmp	.LBB14_7
.LBB14_6:                               # %if.end.11
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	action_data_get_context
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %r8d
	movl	-44(%rbp), %r9d
	movl	-48(%rbp), %r10d
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	%esi, -76(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movl	-76(%rbp), %r11d        # 4-byte Reload
	movl	%edx, -80(%rbp)         # 4-byte Spill
	movl	%r11d, %edx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	movl	%r8d, %ecx
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	$1, 8(%rsp)
	callq	gimp_image_crop
	movq	-24(%rbp), %rdi
	callq	gimp_image_flush
.LBB14_7:                               # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	image_crop_cmd_callback, .Lfunc_end14-image_crop_cmd_callback
	.cfi_endproc

	.globl	image_duplicate_cmd_callback
	.align	16, 0x90
	.type	image_duplicate_cmd_callback,@function
image_duplicate_cmd_callback:           # @image_duplicate_cmd_callback
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_display
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB15_2
# BB#1:                                 # %if.then
	jmp	.LBB15_3
.LBB15_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_image_duplicate
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	184(%rax), %edx
	movq	-40(%rbp), %rax
	movq	256(%rax), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movl	%edx, -60(%rbp)         # 4-byte Spill
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_zoom_model_get_factor
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movl	-60(%rbp), %edx         # 4-byte Reload
	callq	gimp_create_display
	movq	-48(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_object_unref
.LBB15_3:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	image_duplicate_cmd_callback, .Lfunc_end15-image_duplicate_cmd_callback
	.cfi_endproc

	.globl	image_merge_layers_cmd_callback
	.align	16, 0x90
	.type	image_merge_layers_cmd_callback,@function
image_merge_layers_cmd_callback:        # @image_merge_layers_cmd_callback
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB16_2
# BB#1:                                 # %if.then
	jmp	.LBB16_5
.LBB16_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB16_4
# BB#3:                                 # %if.then.3
	jmp	.LBB16_5
.LBB16_4:                               # %if.end.4
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	action_data_get_context
	movq	-40(%rbp), %rdx
	movl	image_merge_layers_type, %ecx
	movl	image_merge_layers_merge_active_group, %r8d
	movl	image_merge_layers_discard_invisible, %r9d
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	image_merge_layers_dialog_new
	movabsq	$.L.str.12, %rsi
	movabsq	$image_merge_layers_response, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-56(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_show
.LBB16_5:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	image_merge_layers_cmd_callback, .Lfunc_end16-image_merge_layers_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	image_merge_layers_response,@function
image_merge_layers_response:            # @image_merge_layers_response
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	cmpl	$-5, -12(%rbp)
	jne	.LBB17_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, image_merge_layers_type
	movq	-24(%rbp), %rax
	movl	28(%rax), %ecx
	movl	%ecx, image_merge_layers_merge_active_group
	movq	-24(%rbp), %rax
	movl	32(%rax), %ecx
	movl	%ecx, image_merge_layers_discard_invisible
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rsi
	movl	image_merge_layers_type, %edx
	movl	image_merge_layers_merge_active_group, %ecx
	movl	image_merge_layers_discard_invisible, %r8d
	callq	gimp_image_merge_visible_layers
	movq	-24(%rbp), %rsi
	movq	8(%rsi), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_image_flush
.LBB17_2:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	image_merge_layers_response, .Lfunc_end17-image_merge_layers_response
	.cfi_endproc

	.globl	image_flatten_image_cmd_callback
	.align	16, 0x90
	.type	image_flatten_image_cmd_callback,@function
image_flatten_image_cmd_callback:       # @image_flatten_image_cmd_callback
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_image
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB18_2
# BB#1:                                 # %if.then
	jmp	.LBB18_7
.LBB18_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	action_data_get_widget
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB18_4
# BB#3:                                 # %if.then.3
	jmp	.LBB18_7
.LBB18_4:                               # %if.end.4
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	action_data_get_context
	leaq	-40(%rbp), %rdx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_image_flatten
	cmpq	$0, %rax
	jne	.LBB18_6
# BB#5:                                 # %if.then.8
	movl	$80, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-32(%rbp), %rcx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movl	$1, %edx
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_message_literal
	leaq	-40(%rbp), %rdi
	callq	g_clear_error
	jmp	.LBB18_7
.LBB18_6:                               # %if.end.10
	movq	-24(%rbp), %rdi
	callq	gimp_image_flush
.LBB18_7:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	image_flatten_image_cmd_callback, .Lfunc_end18-image_flatten_image_cmd_callback
	.cfi_endproc

	.globl	image_configure_grid_cmd_callback
	.align	16, 0x90
	.type	image_configure_grid_cmd_callback,@function
image_configure_grid_cmd_callback:      # @image_configure_grid_cmd_callback
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_display
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB19_2
# BB#1:                                 # %if.then
	jmp	.LBB19_5
.LBB19_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	$0, 632(%rax)
	jne	.LBB19_4
# BB#3:                                 # %if.then.4
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	action_data_get_context
	movq	-40(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	grid_dialog_new
	movq	-40(%rbp), %rdx
	movq	%rax, 632(%rdx)
	movq	-40(%rbp), %rax
	movq	632(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rdx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_toplevel
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_window_set_transient_for
	movq	-40(%rbp), %rax
	movq	632(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_destroy_with_parent
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-40(%rbp), %rax
	movq	632(%rax), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rdx
	addq	$632, %rdx              # imm = 0x278
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	g_object_add_weak_pointer
.LBB19_4:                               # %if.end.24
	movq	-40(%rbp), %rax
	movq	632(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
.LBB19_5:                               # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	image_configure_grid_cmd_callback, .Lfunc_end19-image_configure_grid_cmd_callback
	.cfi_endproc

	.globl	image_properties_cmd_callback
	.align	16, 0x90
	.type	image_properties_cmd_callback,@function
image_properties_cmd_callback:          # @image_properties_cmd_callback
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	action_data_get_display
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB20_2
# BB#1:                                 # %if.then
	jmp	.LBB20_3
.LBB20_2:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	gimp_display_get_image
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	action_data_get_context
	movq	-40(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	image_properties_dialog_new
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rdx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_toplevel
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_window_set_transient_for
	movq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_destroy_with_parent
	movq	-48(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
.LBB20_3:                               # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	image_properties_cmd_callback, .Lfunc_end20-image_properties_cmd_callback
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB21_2
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
.LBB21_2:                               # %entry
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
	movl	$.L.str.14, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end21:
	.size	g_warning, .Lfunc_end21-g_warning
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-image-new-dialog"
	.size	.L.str, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"image-convert-dialog"
	.size	.L.str.1, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"destroy"
	.size	.L.str.2, 8

	.type	image_resize_unit,@object # @image_resize_unit
	.local	image_resize_unit
	.comm	image_resize_unit,4,4
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Set Image Canvas Size"
	.size	.L.str.3, 22

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-image-resize"
	.size	.L.str.4, 18

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"disconnect"
	.size	.L.str.5, 11

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Resizing"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Set Image Print Resolution"
	.size	.L.str.7, 27

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-image-print-size"
	.size	.L.str.8, 22

	.type	image_scale_unit,@object # @image_scale_unit
	.local	image_scale_unit
	.comm	image_scale_unit,4,4
	.type	image_scale_interp,@object # @image_scale_interp
	.data
	.align	4
image_scale_interp:
	.long	4294967295              # 0xffffffff
	.size	image_scale_interp, 4

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"Flipping"
	.size	.L.str.9, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Rotating"
	.size	.L.str.10, 9

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Cannot crop because the current selection is empty."
	.size	.L.str.11, 52

	.type	image_merge_layers_type,@object # @image_merge_layers_type
	.local	image_merge_layers_type
	.comm	image_merge_layers_type,4,4
	.type	image_merge_layers_merge_active_group,@object # @image_merge_layers_merge_active_group
	.data
	.align	4
image_merge_layers_merge_active_group:
	.long	1                       # 0x1
	.size	image_merge_layers_merge_active_group, 4

	.type	image_merge_layers_discard_invisible,@object # @image_merge_layers_discard_invisible
	.local	image_merge_layers_discard_invisible
	.comm	image_merge_layers_discard_invisible,4,4
	.type	.L.str.12,@object       # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"response"
	.size	.L.str.12, 9

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Resize Error: Both width and height must be greater than zero."
	.size	.L.str.13, 63

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Gimp-Actions"
	.size	.L.str.14, 13

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Change Print Size"
	.size	.L.str.15, 18

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Scale Image"
	.size	.L.str.16, 12

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Scaling"
	.size	.L.str.17, 8

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Scale Error: Both width and height must be greater than zero."
	.size	.L.str.18, 62


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
