	.text
	.file	"gimpdisplay.bc"
	.globl	gimp_display_get_type
	.align	16, 0x90
	.type	gimp_display_get_type,@function
gimp_display_get_type:                  # @gimp_display_get_type
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_display_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_display_get_type.g_define_type_id__volatile, %rax
	movq	%rax, %rdi
	callq	g_once_init_enter
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB0_2:                                # %land.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB0_4
# BB#3:                                 # %if.then
	callq	gimp_object_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$160, %edx
	movabsq	$gimp_display_class_intern_init, %rdi
	movl	$48, %r8d
	movabsq	$gimp_display_init, %rcx
	xorl	%esi, %esi
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movl	$0, (%rsp)
	callq	g_type_register_static_simple
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movabsq	$gimp_display_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_display_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_display_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_display_get_type, .Lfunc_end0-gimp_display_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_class_intern_init,@function
gimp_display_class_intern_init:         # @gimp_display_class_intern_init
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_class_peek_parent
	movq	%rax, gimp_display_parent_class
	cmpl	$0, GimpDisplay_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpDisplay_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_display_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_display_class_intern_init, .Lfunc_end1-gimp_display_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_init,@function
gimp_display_init:                      # @gimp_display_init
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_display_init, .Lfunc_end2-gimp_display_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_progress_iface_init,@function
gimp_display_progress_iface_init:       # @gimp_display_progress_iface_init
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
	pushq	%rbx
.Ltmp12:
	.cfi_offset %rbx, -24
	movabsq	$gimp_display_progress_message, %rax
	movabsq	$gimp_display_progress_get_window_id, %rcx
	movabsq	$gimp_display_progress_pulse, %rdx
	movabsq	$gimp_display_progress_get_value, %rsi
	movabsq	$gimp_display_progress_set_value, %r8
	movabsq	$gimp_display_progress_set_text, %r9
	movabsq	$gimp_display_progress_is_active, %r10
	movabsq	$gimp_display_progress_end, %r11
	movabsq	$gimp_display_progress_start, %rbx
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rbx, 16(%rdi)
	movq	-16(%rbp), %rdi
	movq	%r11, 24(%rdi)
	movq	-16(%rbp), %rdi
	movq	%r10, 32(%rdi)
	movq	-16(%rbp), %rdi
	movq	%r9, 40(%rdi)
	movq	-16(%rbp), %rdi
	movq	%r8, 48(%rdi)
	movq	-16(%rbp), %rdi
	movq	%rsi, 56(%rdi)
	movq	-16(%rbp), %rsi
	movq	%rdx, 64(%rsi)
	movq	-16(%rbp), %rdx
	movq	%rcx, 72(%rdx)
	movq	-16(%rbp), %rcx
	movq	%rax, 80(%rcx)
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_display_progress_iface_init, .Lfunc_end3-gimp_display_progress_iface_init
	.cfi_endproc

	.globl	gimp_display_new
	.align	16, 0x90
	.type	gimp_display_new,@function
gimp_display_new:                       # @gimp_display_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp15:
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movsd	%xmm0, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	$0, -88(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -116(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -116(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_display_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_38
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB4_22
# BB#14:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB4_16
# BB#15:                                # %if.then.21
	movl	$0, -140(%rbp)
	jmp	.LBB4_21
.LBB4_16:                               # %if.else.22
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_19
# BB#17:                                # %land.lhs.true.25
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB4_19
# BB#18:                                # %if.then.29
	movl	$1, -140(%rbp)
	jmp	.LBB4_20
.LBB4_19:                               # %if.else.30
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB4_20:                               # %if.end.32
	jmp	.LBB4_21
.LBB4_21:                               # %if.end.33
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB4_23
.LBB4_22:                               # %if.then.36
	jmp	.LBB4_24
.LBB4_23:                               # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_display_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_38
.LBB4_24:                               # %if.end.38
	jmp	.LBB4_25
.LBB4_25:                               # %do.end.39
	movq	-16(%rbp), %rax
	cmpl	$0, 68(%rax)
	je	.LBB4_27
# BB#26:                                # %if.then.41
	movq	$0, -8(%rbp)
	jmp	.LBB4_38
.LBB4_27:                               # %if.end.42
	callq	gimp_display_get_type
	movabsq	$.L.str.4, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_display_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -80(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB4_29
# BB#28:                                # %if.then.48
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_display_set_image
.LBB4_29:                               # %if.end.49
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	cmpl	$0, 728(%rax)
	je	.LBB4_35
# BB#30:                                # %if.then.53
	movq	-16(%rbp), %rdi
	callq	gimp_get_user_context
	movq	%rax, %rdi
	callq	gimp_context_get_display
	movq	%rax, -152(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB4_32
# BB#31:                                # %if.then.58
	movq	-16(%rbp), %rax
	movq	416(%rax), %rdi
	callq	gimp_container_get_first_child
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_display_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -152(%rbp)
.LBB4_32:                               # %if.end.62
	cmpq	$0, -152(%rbp)
	je	.LBB4_34
# BB#33:                                # %if.then.64
	movq	-152(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rdi
	callq	gimp_display_shell_get_window
	movq	%rax, -88(%rbp)
.LBB4_34:                               # %if.end.69
	jmp	.LBB4_35
.LBB4_35:                               # %if.end.70
	cmpq	$0, -88(%rbp)
	jne	.LBB4_37
# BB#36:                                # %if.then.72
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rcx
	callq	gimp_image_window_new
	movq	%rax, -88(%rbp)
.LBB4_37:                               # %if.end.75
	movq	-72(%rbp), %rdi
	movl	-28(%rbp), %esi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-56(%rbp), %rdx
	callq	gimp_display_shell_new
	movq	-80(%rbp), %rdx
	movq	%rax, 24(%rdx)
	movq	-72(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	gimp_image_window_add_shell
	movq	-96(%rbp), %rdi
	callq	gimp_display_shell_present
	movq	-64(%rbp), %rdi
	callq	gimp_dialog_factory_show_with_display
	movq	-96(%rbp), %rdi
	callq	gimp_display_shell_get_statusbar
	movabsq	$.L.str.5, %rsi
	movabsq	$gimp_display_progress_canceled, %rdx
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-72(%rbp), %rdi
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-192(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movq	-16(%rbp), %rcx
	movq	416(%rcx), %rdi
	movq	-72(%rbp), %rcx
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_add
	movq	-72(%rbp), %rcx
	movq	%rcx, -8(%rbp)
	movl	%eax, -220(%rbp)        # 4-byte Spill
.LBB4_38:                               # %return
	movq	-8(%rbp), %rax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_display_new, .Lfunc_end4-gimp_display_new
	.cfi_endproc

	.globl	gimp_display_set_image
	.align	16, 0x90
	.type	gimp_display_set_image,@function
gimp_display_set_image:                 # @gimp_display_set_image
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_display_set_image, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_40
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB5_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB5_16
# BB#15:                                # %if.then.21
	movl	$0, -84(%rbp)
	jmp	.LBB5_21
.LBB5_16:                               # %if.else.22
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_19
# BB#17:                                # %land.lhs.true.25
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB5_19
# BB#18:                                # %if.then.29
	movl	$1, -84(%rbp)
	jmp	.LBB5_20
.LBB5_19:                               # %if.else.30
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB5_20:                               # %if.end.32
	jmp	.LBB5_21
.LBB5_21:                               # %if.end.33
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB5_23
.LBB5_22:                               # %if.then.36
	jmp	.LBB5_24
.LBB5_23:                               # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_display_set_image, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_40
.LBB5_24:                               # %if.end.38
	jmp	.LBB5_25
.LBB5_25:                               # %do.end.39
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_display_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB5_27
# BB#26:                                # %if.then.45
	movl	$2, %esi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rdx
	callq	tool_manager_control_active
	movq	-40(%rbp), %rdi
	callq	gimp_display_shell_disconnect
	movq	-8(%rbp), %rdi
	callq	gimp_display_disconnect
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gimp_image_dec_display_count
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB5_27:                               # %if.end.48
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	cmpq	$0, -16(%rbp)
	je	.LBB5_31
# BB#28:                                # %if.then.51
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-16(%rbp), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_image_get_instance_count
	movq	-24(%rbp), %rdi
	movl	%eax, 16(%rdi)
	movq	-16(%rbp), %rdi
	callq	gimp_image_inc_instance_count
	movq	-16(%rbp), %rdi
	callq	gimp_image_inc_display_count
	movq	-8(%rbp), %rdi
	callq	gimp_display_connect
	cmpq	$0, -40(%rbp)
	je	.LBB5_30
# BB#29:                                # %if.then.55
	movq	-40(%rbp), %rdi
	callq	gimp_display_shell_connect
.LBB5_30:                               # %if.end.56
	jmp	.LBB5_31
.LBB5_31:                               # %if.end.57
	cmpq	$0, -32(%rbp)
	je	.LBB5_33
# BB#32:                                # %if.then.59
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB5_33:                               # %if.end.60
	cmpq	$0, -40(%rbp)
	je	.LBB5_38
# BB#34:                                # %if.then.62
	cmpq	$0, -16(%rbp)
	je	.LBB5_36
# BB#35:                                # %if.then.64
	movq	-40(%rbp), %rdi
	callq	gimp_display_shell_reconnect
	jmp	.LBB5_37
.LBB5_36:                               # %if.else.65
	movq	-40(%rbp), %rdi
	callq	gimp_display_shell_icon_update
.LBB5_37:                               # %if.end.66
	jmp	.LBB5_38
.LBB5_38:                               # %if.end.67
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB5_40
# BB#39:                                # %if.then.69
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.8, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB5_40:                               # %if.end.71
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_display_set_image, .Lfunc_end5-gimp_display_set_image
	.cfi_endproc

	.globl	gimp_display_get_shell
	.align	16, 0x90
	.type	gimp_display_get_shell,@function
gimp_display_get_shell:                 # @gimp_display_get_shell
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_display_get_shell, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_display_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_display_shell_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB6_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_display_get_shell, .Lfunc_end6-gimp_display_get_shell
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_progress_canceled,@function
gimp_display_progress_canceled:         # @gimp_display_progress_canceled
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_progress_cancel
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_display_progress_canceled, .Lfunc_end7-gimp_display_progress_canceled
	.cfi_endproc

	.globl	gimp_display_delete
	.align	16, 0x90
	.type	gimp_display_delete,@function
gimp_display_delete:                    # @gimp_display_delete
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_display_delete, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_24
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_display_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	416(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_remove
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rdi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gimp_display_set_image
	movq	-8(%rbp), %rsi
	movq	32(%rsi), %rdi
	callq	tool_manager_get_active
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB8_15
# BB#13:                                # %land.lhs.true.19
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB8_15
# BB#14:                                # %if.then.21
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rdi
	callq	tool_manager_focus_display_active
.LBB8_15:                               # %if.end.23
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_area_list_free
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB8_23
# BB#16:                                # %if.then.26
	movq	-8(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gimp_display_shell_get_window
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
	cmpq	$0, -64(%rbp)
	je	.LBB8_21
# BB#17:                                # %if.then.34
	movq	-64(%rbp), %rdi
	callq	gimp_image_window_get_n_shells
	cmpl	$1, %eax
	jle	.LBB8_19
# BB#18:                                # %if.then.37
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_image_window_remove_shell
	movq	-56(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_destroy
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	jmp	.LBB8_20
.LBB8_19:                               # %if.else.41
	movq	-64(%rbp), %rdi
	callq	gimp_image_window_destroy
.LBB8_20:                               # %if.end.42
	jmp	.LBB8_22
.LBB8_21:                               # %if.else.43
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB8_22:                               # %if.end.44
	jmp	.LBB8_23
.LBB8_23:                               # %if.end.45
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB8_24:                               # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_display_delete, .Lfunc_end8-gimp_display_delete
	.cfi_endproc

	.globl	gimp_display_close
	.align	16, 0x90
	.type	gimp_display_close,@function
gimp_display_close:                     # @gimp_display_close
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_display_close, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_15
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	416(%rax), %rdi
	callq	gimp_container_get_n_children
	cmpl	$1, %eax
	jle	.LBB9_14
# BB#13:                                # %if.then.13
	movq	-8(%rbp), %rdi
	callq	gimp_display_delete
	jmp	.LBB9_15
.LBB9_14:                               # %if.else.14
	movq	-8(%rbp), %rdi
	callq	gimp_display_empty
.LBB9_15:                               # %if.end.15
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_display_close, .Lfunc_end9-gimp_display_close
	.cfi_endproc

	.globl	gimp_display_empty
	.align	16, 0x90
	.type	gimp_display_empty,@function
gimp_display_empty:                     # @gimp_display_empty
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_display_empty, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_25
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_display_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
# BB#13:                                # %do.body.13
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB10_15
# BB#14:                                # %if.then.22
	movl	$0, -60(%rbp)
	jmp	.LBB10_20
.LBB10_15:                              # %if.else.23
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_18
# BB#16:                                # %land.lhs.true.26
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB10_18
# BB#17:                                # %if.then.30
	movl	$1, -60(%rbp)
	jmp	.LBB10_19
.LBB10_18:                              # %if.else.31
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB10_19:                              # %if.end.33
	jmp	.LBB10_20
.LBB10_20:                              # %if.end.34
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB10_22
# BB#21:                                # %if.then.37
	jmp	.LBB10_23
.LBB10_22:                              # %if.else.38
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_display_empty, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_25
.LBB10_23:                              # %if.end.39
	jmp	.LBB10_24
.LBB10_24:                              # %do.end.40
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_display_set_image
	movq	-8(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, %rdi
	callq	gimp_display_shell_empty
.LBB10_25:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_display_empty, .Lfunc_end10-gimp_display_empty
	.cfi_endproc

	.globl	gimp_display_get_ID
	.align	16, 0x90
	.type	gimp_display_get_ID,@function
gimp_display_get_ID:                    # @gimp_display_get_ID
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_display_get_ID, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$-1, -4(%rbp)
	jmp	.LBB11_13
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_display_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB11_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_display_get_ID, .Lfunc_end11-gimp_display_get_ID
	.cfi_endproc

	.globl	gimp_display_get_by_ID
	.align	16, 0x90
	.type	gimp_display_get_by_ID,@function
gimp_display_get_by_ID:                 # @gimp_display_get_by_ID
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_display_get_by_ID, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB12_22
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_get_display_iter
	movq	%rax, -32(%rbp)
.LBB12_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB12_21
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB12_13 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	gimp_display_get_ID
	cmpl	-20(%rbp), %eax
	jne	.LBB12_16
# BB#15:                                # %if.then.16
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB12_22
.LBB12_16:                              # %if.end.17
                                        #   in Loop: Header=BB12_13 Depth=1
	jmp	.LBB12_17
.LBB12_17:                              # %for.inc
                                        #   in Loop: Header=BB12_13 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB12_19
# BB#18:                                # %cond.true
                                        #   in Loop: Header=BB12_13 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB12_20
.LBB12_19:                              # %cond.false
                                        #   in Loop: Header=BB12_13 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB12_20
.LBB12_20:                              # %cond.end
                                        #   in Loop: Header=BB12_13 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB12_13
.LBB12_21:                              # %for.end
	movq	$0, -8(%rbp)
.LBB12_22:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_display_get_by_ID, .Lfunc_end12-gimp_display_get_by_ID
	.cfi_endproc

	.globl	gimp_display_get_action_name
	.align	16, 0x90
	.type	gimp_display_get_action_name,@function
gimp_display_get_action_name:           # @gimp_display_get_action_name
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_display_get_action_name, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB13_13
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_display_get_ID
	movabsq	$.L.str.7, %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -8(%rbp)
.LBB13_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_display_get_action_name, .Lfunc_end13-gimp_display_get_action_name
	.cfi_endproc

	.globl	gimp_display_get_gimp
	.align	16, 0x90
	.type	gimp_display_get_gimp,@function
gimp_display_get_gimp:                  # @gimp_display_get_gimp
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_display_get_gimp, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB14_13
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB14_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_display_get_gimp, .Lfunc_end14-gimp_display_get_gimp
	.cfi_endproc

	.globl	gimp_display_get_image
	.align	16, 0x90
	.type	gimp_display_get_image,@function
gimp_display_get_image:                 # @gimp_display_get_image
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_display_get_image, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB15_13
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_display_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB15_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_display_get_image, .Lfunc_end15-gimp_display_get_image
	.cfi_endproc

	.globl	gimp_display_get_instance
	.align	16, 0x90
	.type	gimp_display_get_instance,@function
gimp_display_get_instance:              # @gimp_display_get_instance
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB16_8
.LBB16_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB16_7:                               # %if.end
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.8
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_display_get_instance, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB16_13
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_display_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	16(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB16_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_display_get_instance, .Lfunc_end16-gimp_display_get_instance
	.cfi_endproc

	.globl	gimp_display_fill
	.align	16, 0x90
	.type	gimp_display_fill,@function
gimp_display_fill:                      # @gimp_display_fill
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB17_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB17_8
.LBB17_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB17_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB17_7
.LBB17_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB17_7:                               # %if.end
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB17_10
# BB#9:                                 # %if.then.8
	jmp	.LBB17_11
.LBB17_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_display_fill, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB17_30
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	jmp	.LBB17_13
.LBB17_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB17_15
# BB#14:                                # %if.then.20
	movl	$0, -84(%rbp)
	jmp	.LBB17_20
.LBB17_15:                              # %if.else.21
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_18
# BB#16:                                # %land.lhs.true.24
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB17_18
# BB#17:                                # %if.then.28
	movl	$1, -84(%rbp)
	jmp	.LBB17_19
.LBB17_18:                              # %if.else.29
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB17_19:                              # %if.end.31
	jmp	.LBB17_20
.LBB17_20:                              # %if.end.32
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB17_22
# BB#21:                                # %if.then.35
	jmp	.LBB17_23
.LBB17_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_display_fill, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB17_30
.LBB17_23:                              # %if.end.37
	jmp	.LBB17_24
.LBB17_24:                              # %do.end.38
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_display_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
# BB#25:                                # %do.body.41
	movq	-40(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB17_27
# BB#26:                                # %if.then.44
	jmp	.LBB17_28
.LBB17_27:                              # %if.else.45
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_display_fill, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB17_30
.LBB17_28:                              # %if.end.46
	jmp	.LBB17_29
.LBB17_29:                              # %do.end.47
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_display_set_image
	movq	-8(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_display_shell_fill
.LBB17_30:                              # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_display_fill, .Lfunc_end17-gimp_display_fill
	.cfi_endproc

	.globl	gimp_display_update_area
	.align	16, 0x90
	.type	gimp_display_update_area,@function
gimp_display_update_area:               # @gimp_display_update_area
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB18_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB18_8
.LBB18_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB18_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB18_7
.LBB18_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB18_7:                               # %if.end
	jmp	.LBB18_8
.LBB18_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB18_10
# BB#9:                                 # %if.then.8
	jmp	.LBB18_11
.LBB18_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_display_update_area, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB18_39
.LBB18_11:                              # %if.end.10
	jmp	.LBB18_12
.LBB18_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_display_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB18_14
# BB#13:                                # %if.then.14
	movq	-8(%rbp), %rdi
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	callq	gimp_display_paint_area
	jmp	.LBB18_39
.LBB18_14:                              # %if.else.15
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gimp_image_get_width
	movl	%eax, -76(%rbp)
	movq	-40(%rbp), %rdi
	movq	8(%rdi), %rdi
	callq	gimp_image_get_height
	movl	%eax, -80(%rbp)
	movl	-16(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jle	.LBB18_16
# BB#15:                                # %cond.true
	movl	-76(%rbp), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB18_20
.LBB18_16:                              # %cond.false
	cmpl	$0, -16(%rbp)
	jge	.LBB18_18
# BB#17:                                # %cond.true.24
	xorl	%eax, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB18_19
.LBB18_18:                              # %cond.false.25
	movl	-16(%rbp), %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB18_19:                              # %cond.end
	movl	-96(%rbp), %eax         # 4-byte Reload
	movl	%eax, -92(%rbp)         # 4-byte Spill
.LBB18_20:                              # %cond.end.26
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	-20(%rbp), %ecx
	cmpl	-80(%rbp), %ecx
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jle	.LBB18_22
# BB#21:                                # %cond.true.29
	movl	-80(%rbp), %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB18_26
.LBB18_22:                              # %cond.false.30
	cmpl	$0, -20(%rbp)
	jge	.LBB18_24
# BB#23:                                # %cond.true.32
	xorl	%eax, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB18_25
.LBB18_24:                              # %cond.false.33
	movl	-20(%rbp), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB18_25:                              # %cond.end.34
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB18_26:                              # %cond.end.36
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	-16(%rbp), %ecx
	addl	-24(%rbp), %ecx
	cmpl	-76(%rbp), %ecx
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jle	.LBB18_28
# BB#27:                                # %cond.true.39
	movl	-76(%rbp), %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB18_32
.LBB18_28:                              # %cond.false.40
	movl	-16(%rbp), %eax
	addl	-24(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB18_30
# BB#29:                                # %cond.true.43
	xorl	%eax, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB18_31
.LBB18_30:                              # %cond.false.44
	movl	-16(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB18_31:                              # %cond.end.46
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB18_32:                              # %cond.end.48
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	-20(%rbp), %ecx
	addl	-28(%rbp), %ecx
	cmpl	-80(%rbp), %ecx
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jle	.LBB18_34
# BB#33:                                # %cond.true.52
	movl	-80(%rbp), %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB18_38
.LBB18_34:                              # %cond.false.53
	movl	-20(%rbp), %eax
	addl	-28(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB18_36
# BB#35:                                # %cond.true.56
	xorl	%eax, %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB18_37
.LBB18_36:                              # %cond.false.57
	movl	-20(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB18_37:                              # %cond.end.59
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB18_38:                              # %cond.end.61
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	-100(%rbp), %edi        # 4-byte Reload
	movl	-112(%rbp), %esi        # 4-byte Reload
	movl	-124(%rbp), %edx        # 4-byte Reload
	movl	%eax, %ecx
	callq	gimp_area_new
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-72(%rbp), %rsi
	callq	gimp_area_list_process
	movq	-40(%rbp), %rsi
	movq	%rax, 32(%rsi)
.LBB18_39:                              # %if.end.66
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_display_update_area, .Lfunc_end18-gimp_display_update_area
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI19_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	gimp_display_paint_area,@function
gimp_display_paint_area:                # @gimp_display_paint_area
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_display_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gimp_image_get_width
	movl	%eax, -44(%rbp)
	movq	-32(%rbp), %rsi
	movq	8(%rsi), %rdi
	callq	gimp_image_get_height
	movl	%eax, -48(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jle	.LBB19_2
# BB#1:                                 # %cond.true
	movl	-44(%rbp), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB19_6
.LBB19_2:                               # %cond.false
	cmpl	$0, -12(%rbp)
	jge	.LBB19_4
# BB#3:                                 # %cond.true.7
	xorl	%eax, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB19_5
.LBB19_4:                               # %cond.false.8
	movl	-12(%rbp), %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB19_5:                               # %cond.end
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB19_6:                               # %cond.end.9
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -52(%rbp)
	movl	-16(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jle	.LBB19_8
# BB#7:                                 # %cond.true.12
	movl	-48(%rbp), %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB19_12
.LBB19_8:                               # %cond.false.13
	cmpl	$0, -16(%rbp)
	jge	.LBB19_10
# BB#9:                                 # %cond.true.15
	xorl	%eax, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB19_11
.LBB19_10:                              # %cond.false.16
	movl	-16(%rbp), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB19_11:                              # %cond.end.17
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB19_12:                              # %cond.end.19
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	%eax, -56(%rbp)
	movl	-12(%rbp), %eax
	addl	-20(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jle	.LBB19_14
# BB#13:                                # %cond.true.22
	movl	-44(%rbp), %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB19_18
.LBB19_14:                              # %cond.false.23
	movl	-12(%rbp), %eax
	addl	-20(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB19_16
# BB#15:                                # %cond.true.26
	xorl	%eax, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB19_17
.LBB19_16:                              # %cond.false.27
	movl	-12(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB19_17:                              # %cond.end.29
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB19_18:                              # %cond.end.31
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	%eax, -60(%rbp)
	movl	-16(%rbp), %eax
	addl	-24(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jle	.LBB19_20
# BB#19:                                # %cond.true.35
	movl	-48(%rbp), %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB19_24
.LBB19_20:                              # %cond.false.36
	movl	-16(%rbp), %eax
	addl	-24(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB19_22
# BB#21:                                # %cond.true.39
	xorl	%eax, %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB19_23
.LBB19_22:                              # %cond.false.40
	movl	-16(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB19_23:                              # %cond.end.42
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB19_24:                              # %cond.end.44
	movl	-132(%rbp), %eax        # 4-byte Reload
	leaq	-72(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movl	%eax, -64(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-60(%rbp), %eax
	subl	-52(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-64(%rbp), %eax
	subl	-56(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rdi
	cvtsi2sdl	-12(%rbp), %xmm0
	cvtsi2sdl	-16(%rbp), %xmm1
	callq	gimp_display_shell_transform_xy_f
	leaq	-88(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	movq	-40(%rbp), %rdi
	movl	-12(%rbp), %eax
	addl	-20(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movl	-16(%rbp), %eax
	addl	-24(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	callq	gimp_display_shell_transform_xy_f
	movsd	.LCPI19_0, %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -52(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-144(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -56(%rbp)
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	-88(%rbp), %xmm0
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movl	%eax, -60(%rbp)
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	-96(%rbp), %xmm0
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movl	%eax, -64(%rbp)
	movq	-40(%rbp), %rdi
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edx
	movl	-60(%rbp), %eax
	subl	-52(%rbp), %eax
	movl	-64(%rbp), %ecx
	subl	-56(%rbp), %ecx
	movl	%ecx, -148(%rbp)        # 4-byte Spill
	movl	%eax, %ecx
	movl	-148(%rbp), %r8d        # 4-byte Reload
	callq	gimp_display_shell_expose_area
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_display_paint_area, .Lfunc_end19-gimp_display_paint_area
	.cfi_endproc

	.globl	gimp_display_flush
	.align	16, 0x90
	.type	gimp_display_flush,@function
gimp_display_flush:                     # @gimp_display_flush
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB20_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB20_8
.LBB20_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB20_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB20_7
.LBB20_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB20_7:                               # %if.end
	jmp	.LBB20_8
.LBB20_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB20_10
# BB#9:                                 # %if.then.8
	jmp	.LBB20_11
.LBB20_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_display_flush, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB20_13
.LBB20_11:                              # %if.end.10
	jmp	.LBB20_12
.LBB20_12:                              # %do.end
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_display_flush_whenever
.LBB20_13:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_display_flush, .Lfunc_end20-gimp_display_flush
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_flush_whenever,@function
gimp_display_flush_whenever:            # @gimp_display_flush_whenever
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_display_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB21_12
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB21_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB21_11
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB21_2 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	movq	-40(%rbp), %rax
	cmpl	8(%rax), %ecx
	je	.LBB21_6
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB21_2 Depth=1
	movq	-40(%rbp), %rax
	movl	4(%rax), %ecx
	movq	-40(%rbp), %rax
	cmpl	12(%rax), %ecx
	je	.LBB21_6
# BB#5:                                 # %if.then.5
                                        #   in Loop: Header=BB21_2 Depth=1
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	(%rax), %esi
	movq	-40(%rbp), %rax
	movl	4(%rax), %edx
	movq	-40(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-40(%rbp), %rax
	subl	(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	12(%rax), %r8d
	movq	-40(%rbp), %rax
	subl	4(%rax), %r8d
	callq	gimp_display_paint_area
.LBB21_6:                               # %if.end
                                        #   in Loop: Header=BB21_2 Depth=1
	jmp	.LBB21_7
.LBB21_7:                               # %for.inc
                                        #   in Loop: Header=BB21_2 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB21_9
# BB#8:                                 # %cond.true
                                        #   in Loop: Header=BB21_2 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB21_10
.LBB21_9:                               # %cond.false
                                        #   in Loop: Header=BB21_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB21_10
.LBB21_10:                              # %cond.end
                                        #   in Loop: Header=BB21_2 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB21_2
.LBB21_11:                              # %for.end
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gimp_area_list_free
	movq	-24(%rbp), %rax
	movq	$0, 32(%rax)
.LBB21_12:                              # %if.end.16
	cmpl	$0, -12(%rbp)
	je	.LBB21_16
# BB#13:                                # %if.then.18
	callq	g_get_monotonic_time
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	40(%rcx), %rax
	cmpq	$20000, %rax            # imm = 0x4E20
	jbe	.LBB21_15
# BB#14:                                # %if.then.23
	movq	-8(%rbp), %rdi
	callq	gimp_display_get_shell
	movq	-48(%rbp), %rdi
	movl	%edi, %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	gimp_display_shell_flush
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, 40(%rdi)
.LBB21_15:                              # %if.end.26
	jmp	.LBB21_17
.LBB21_16:                              # %if.else
	movq	-8(%rbp), %rdi
	callq	gimp_display_get_shell
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	callq	gimp_display_shell_flush
.LBB21_17:                              # %if.end.28
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_display_flush_whenever, .Lfunc_end21-gimp_display_flush_whenever
	.cfi_endproc

	.globl	gimp_display_flush_now
	.align	16, 0x90
	.type	gimp_display_flush_now,@function
gimp_display_flush_now:                 # @gimp_display_flush_now
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_display_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB22_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB22_8
.LBB22_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB22_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB22_7
.LBB22_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB22_7:                               # %if.end
	jmp	.LBB22_8
.LBB22_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB22_10
# BB#9:                                 # %if.then.8
	jmp	.LBB22_11
.LBB22_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_display_flush_now, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB22_13
.LBB22_11:                              # %if.end.10
	jmp	.LBB22_12
.LBB22_12:                              # %do.end
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	gimp_display_flush_whenever
.LBB22_13:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_display_flush_now, .Lfunc_end22-gimp_display_flush_now
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_class_init,@function
gimp_display_class_init:                # @gimp_display_class_init
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
	subq	$80, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$.L.str.12, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	xorl	%ecx, %ecx
	movl	$2147483647, %r8d       # imm = 0x7FFFFFFF
	movl	$225, %edx
	movabsq	$gimp_display_get_property, %r9
	movabsq	$gimp_display_set_property, %r10
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%r10, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%r9, 32(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	-24(%rbp), %r9          # 8-byte Reload
	movl	%edx, -28(%rbp)         # 4-byte Spill
	movq	%r9, %rdx
	movl	%ecx, -32(%rbp)         # 4-byte Spill
	movl	-32(%rbp), %r9d         # 4-byte Reload
	movl	$225, (%rsp)
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_param_spec_int
	movl	$1, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	callq	gimp_get_type
	movabsq	$.L.str.4, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$235, %r8d
	movq	%rdx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$2, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_image_get_type
	movabsq	$.L.str.8, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$225, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$3, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_display_shell_get_type
	movabsq	$.L.str.13, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$225, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$4, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movl	$48, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_display_class_init, .Lfunc_end23-gimp_display_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_set_property,@function
gimp_display_set_property:              # @gimp_display_set_property
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gimp_display_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_display_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -48(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -100(%rbp)        # 4-byte Spill
	movl	%r9d, -104(%rbp)        # 4-byte Spill
	je	.LBB24_7
	jmp	.LBB24_13
.LBB24_13:                              # %entry
	movl	-100(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	je	.LBB24_1
	jmp	.LBB24_14
.LBB24_14:                              # %entry
	movl	-100(%rbp), %eax        # 4-byte Reload
	addl	$-3, %eax
	subl	$2, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jb	.LBB24_7
	jmp	.LBB24_9
.LBB24_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	-40(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_display_config_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, 40(%rsi)
.LBB24_2:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movl	424(%rax), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, 424(%rax)
	movl	%ecx, -52(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	cmpl	$2147483647, 424(%rax)  # imm = 0x7FFFFFFF
	jne	.LBB24_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB24_2 Depth=1
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movl	$1, 424(%rax)
.LBB24_4:                               # %if.end
                                        #   in Loop: Header=BB24_2 Depth=1
	jmp	.LBB24_5
.LBB24_5:                               # %do.cond
                                        #   in Loop: Header=BB24_2 Depth=1
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdi
	movl	-52(%rbp), %esi
	callq	gimp_display_get_by_ID
	cmpq	$0, %rax
	jne	.LBB24_2
# BB#6:                                 # %do.end
	movl	-52(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB24_12
.LBB24_7:                               # %sw.bb.17
	jmp	.LBB24_8
.LBB24_8:                               # %do.body.18
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$227, %edx
	movabsq	$.L__func__.gimp_display_set_property, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	g_assertion_message_expr
.LBB24_9:                               # %sw.default
	jmp	.LBB24_10
.LBB24_10:                              # %do.body.21
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -76(%rbp)
	movl	-76(%rbp), %r8d
	movq	-72(%rbp), %rax
	movq	8(%rax), %r9
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -124(%rbp)        # 4-byte Spill
	movq	%r9, -136(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-64(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$231, %edx
	movabsq	$.L.str.16, %rcx
	movl	-124(%rbp), %r8d        # 4-byte Reload
	movq	-136(%rbp), %r9         # 8-byte Reload
	movq	-144(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#11:                                # %do.end.27
	jmp	.LBB24_12
.LBB24_12:                              # %sw.epilog
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_display_set_property, .Lfunc_end24-gimp_display_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_get_property,@function
gimp_display_get_property:              # @gimp_display_get_property
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_display_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_display_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -48(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$3, %r8d
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	%r8d, -100(%rbp)        # 4-byte Spill
	ja	.LBB25_5
# BB#9:                                 # %entry
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	.LJTI25_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB25_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB25_8
.LBB25_2:                               # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB25_8
.LBB25_3:                               # %sw.bb.5
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB25_8
.LBB25_4:                               # %sw.bb.6
	movq	-24(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB25_8
.LBB25_5:                               # %sw.default
	jmp	.LBB25_6
.LBB25_6:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -68(%rbp)
	movl	-68(%rbp), %r8d
	movq	-64(%rbp), %rax
	movq	8(%rax), %r9
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -104(%rbp)        # 4-byte Spill
	movq	%r9, -112(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-56(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.15, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$264, %edx              # imm = 0x108
	movabsq	$.L.str.16, %rcx
	movl	-104(%rbp), %r8d        # 4-byte Reload
	movq	-112(%rbp), %r9         # 8-byte Reload
	movq	-120(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#7:                                 # %do.end
	jmp	.LBB25_8
.LBB25_8:                               # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_display_get_property, .Lfunc_end25-gimp_display_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI25_0:
	.quad	.LBB25_1
	.quad	.LBB25_2
	.quad	.LBB25_3
	.quad	.LBB25_4

	.text
	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB26_2
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
.LBB26_2:                               # %entry
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
	movl	$.L.str.1, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end26:
	.size	g_warning, .Lfunc_end26-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_progress_start,@function
gimp_display_progress_start:            # @gimp_display_progress_start
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_display_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_display_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB27_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movq	%rax, %rdi
	callq	gimp_progress_start
	movq	%rax, -8(%rbp)
	jmp	.LBB27_3
.LBB27_2:                               # %if.end
	movq	$0, -8(%rbp)
.LBB27_3:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_display_progress_start, .Lfunc_end27-gimp_display_progress_start
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_progress_end,@function
gimp_display_progress_end:              # @gimp_display_progress_end
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_display_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_display_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB28_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_progress_end
.LBB28_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_display_progress_end, .Lfunc_end28-gimp_display_progress_end
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_progress_is_active,@function
gimp_display_progress_is_active:        # @gimp_display_progress_is_active
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_display_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_display_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB29_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_progress_is_active
	movl	%eax, -4(%rbp)
	jmp	.LBB29_3
.LBB29_2:                               # %if.end
	movl	$0, -4(%rbp)
.LBB29_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_display_progress_is_active, .Lfunc_end29-gimp_display_progress_is_active
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_progress_set_text,@function
gimp_display_progress_set_text:         # @gimp_display_progress_set_text
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_display_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_display_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB30_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_progress_set_text
.LBB30_2:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_display_progress_set_text, .Lfunc_end30-gimp_display_progress_set_text
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_progress_set_value,@function
gimp_display_progress_set_value:        # @gimp_display_progress_set_value
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
	movsd	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_display_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_display_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB31_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_progress_set_value
.LBB31_2:                               # %if.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_display_progress_set_value, .Lfunc_end31-gimp_display_progress_set_value
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_progress_get_value,@function
gimp_display_progress_get_value:        # @gimp_display_progress_get_value
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_display_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_display_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB32_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_progress_get_value
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB32_3
.LBB32_2:                               # %if.end
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
.LBB32_3:                               # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_display_progress_get_value, .Lfunc_end32-gimp_display_progress_get_value
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_progress_pulse,@function
gimp_display_progress_pulse:            # @gimp_display_progress_pulse
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_display_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_display_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB33_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_progress_pulse
.LBB33_2:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_display_progress_pulse, .Lfunc_end33-gimp_display_progress_pulse
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_progress_get_window_id,@function
gimp_display_progress_get_window_id:    # @gimp_display_progress_get_window_id
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_display_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_display_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB34_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_progress_get_window_id
	movl	%eax, -4(%rbp)
	jmp	.LBB34_3
.LBB34_2:                               # %if.end
	movl	$0, -4(%rbp)
.LBB34_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_display_progress_get_window_id, .Lfunc_end34-gimp_display_progress_get_window_id
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_display_progress_message,@function
gimp_display_progress_message:          # @gimp_display_progress_message
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	gimp_display_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_display_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB35_2
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	movq	%rax, %rdi
	callq	gimp_progress_message
	movl	%eax, -4(%rbp)
	jmp	.LBB35_3
.LBB35_2:                               # %if.end
	movl	$0, -4(%rbp)
.LBB35_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_display_progress_message, .Lfunc_end35-gimp_display_progress_message
	.cfi_endproc

	.type	gimp_display_get_type.g_define_type_id__volatile,@object # @gimp_display_get_type.g_define_type_id__volatile
	.local	gimp_display_get_type.g_define_type_id__volatile
	.comm	gimp_display_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpDisplay"
	.size	.L.str, 12

	.type	gimp_display_get_type.g_implement_interface_info,@object # @gimp_display_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_display_get_type.g_implement_interface_info:
	.quad	gimp_display_progress_iface_init
	.quad	0
	.quad	0
	.size	gimp_display_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Display"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_display_new,@object # @__func__.gimp_display_new
.L__func__.gimp_display_new:
	.asciz	"gimp_display_new"
	.size	.L__func__.gimp_display_new, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"image == NULL || GIMP_IS_IMAGE (image)"
	.size	.L.str.3, 39

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"cancel"
	.size	.L.str.5, 7

	.type	.L__func__.gimp_display_delete,@object # @__func__.gimp_display_delete
.L__func__.gimp_display_delete:
	.asciz	"gimp_display_delete"
	.size	.L__func__.gimp_display_delete, 20

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP_IS_DISPLAY (display)"
	.size	.L.str.6, 26

	.type	.L__func__.gimp_display_close,@object # @__func__.gimp_display_close
.L__func__.gimp_display_close:
	.asciz	"gimp_display_close"
	.size	.L__func__.gimp_display_close, 19

	.type	.L__func__.gimp_display_get_ID,@object # @__func__.gimp_display_get_ID
.L__func__.gimp_display_get_ID:
	.asciz	"gimp_display_get_ID"
	.size	.L__func__.gimp_display_get_ID, 20

	.type	.L__func__.gimp_display_get_by_ID,@object # @__func__.gimp_display_get_by_ID
.L__func__.gimp_display_get_by_ID:
	.asciz	"gimp_display_get_by_ID"
	.size	.L__func__.gimp_display_get_by_ID, 23

	.type	.L__func__.gimp_display_get_action_name,@object # @__func__.gimp_display_get_action_name
.L__func__.gimp_display_get_action_name:
	.asciz	"gimp_display_get_action_name"
	.size	.L__func__.gimp_display_get_action_name, 29

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"windows-display-%04d"
	.size	.L.str.7, 21

	.type	.L__func__.gimp_display_get_gimp,@object # @__func__.gimp_display_get_gimp
.L__func__.gimp_display_get_gimp:
	.asciz	"gimp_display_get_gimp"
	.size	.L__func__.gimp_display_get_gimp, 22

	.type	.L__func__.gimp_display_get_image,@object # @__func__.gimp_display_get_image
.L__func__.gimp_display_get_image:
	.asciz	"gimp_display_get_image"
	.size	.L__func__.gimp_display_get_image, 23

	.type	.L__func__.gimp_display_set_image,@object # @__func__.gimp_display_set_image
.L__func__.gimp_display_set_image:
	.asciz	"gimp_display_set_image"
	.size	.L__func__.gimp_display_set_image, 23

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"image"
	.size	.L.str.8, 6

	.type	.L__func__.gimp_display_get_instance,@object # @__func__.gimp_display_get_instance
.L__func__.gimp_display_get_instance:
	.asciz	"gimp_display_get_instance"
	.size	.L__func__.gimp_display_get_instance, 26

	.type	.L__func__.gimp_display_get_shell,@object # @__func__.gimp_display_get_shell
.L__func__.gimp_display_get_shell:
	.asciz	"gimp_display_get_shell"
	.size	.L__func__.gimp_display_get_shell, 23

	.type	.L__func__.gimp_display_empty,@object # @__func__.gimp_display_empty
.L__func__.gimp_display_empty:
	.asciz	"gimp_display_empty"
	.size	.L__func__.gimp_display_empty, 19

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"GIMP_IS_IMAGE (private->image)"
	.size	.L.str.9, 31

	.type	.L__func__.gimp_display_fill,@object # @__func__.gimp_display_fill
.L__func__.gimp_display_fill:
	.asciz	"gimp_display_fill"
	.size	.L__func__.gimp_display_fill, 18

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.10, 22

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"private->image == NULL"
	.size	.L.str.11, 23

	.type	.L__func__.gimp_display_update_area,@object # @__func__.gimp_display_update_area
.L__func__.gimp_display_update_area:
	.asciz	"gimp_display_update_area"
	.size	.L__func__.gimp_display_update_area, 25

	.type	.L__func__.gimp_display_flush,@object # @__func__.gimp_display_flush
.L__func__.gimp_display_flush:
	.asciz	"gimp_display_flush"
	.size	.L__func__.gimp_display_flush, 19

	.type	.L__func__.gimp_display_flush_now,@object # @__func__.gimp_display_flush_now
.L__func__.gimp_display_flush_now:
	.asciz	"gimp_display_flush_now"
	.size	.L__func__.gimp_display_flush_now, 23

	.type	gimp_display_parent_class,@object # @gimp_display_parent_class
	.local	gimp_display_parent_class
	.comm	gimp_display_parent_class,8,8
	.type	GimpDisplay_private_offset,@object # @GimpDisplay_private_offset
	.local	GimpDisplay_private_offset
	.comm	GimpDisplay_private_offset,4,4
	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"id"
	.size	.L.str.12, 3

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"shell"
	.size	.L.str.13, 6

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimpdisplay.c"
	.size	.L.str.14, 14

	.type	.L__func__.gimp_display_set_property,@object # @__func__.gimp_display_set_property
.L__func__.gimp_display_set_property:
	.asciz	"gimp_display_set_property"
	.size	.L__func__.gimp_display_set_property, 26

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.15, 54

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"property"
	.size	.L.str.16, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
