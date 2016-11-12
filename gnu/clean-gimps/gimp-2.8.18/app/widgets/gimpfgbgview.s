	.text
	.file	"gimpfgbgview.bc"
	.globl	gimp_fg_bg_view_get_type
	.align	16, 0x90
	.type	gimp_fg_bg_view_get_type,@function
gimp_fg_bg_view_get_type:               # @gimp_fg_bg_view_get_type
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
	movq	gimp_fg_bg_view_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_fg_bg_view_get_type.g_define_type_id__volatile, %rax
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
	callq	gtk_widget_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$720, %edx              # imm = 0x2D0
	movabsq	$gimp_fg_bg_view_class_intern_init, %rdi
	movl	$104, %r8d
	movabsq	$gimp_fg_bg_view_init, %rcx
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
	movabsq	$gimp_fg_bg_view_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_fg_bg_view_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_fg_bg_view_get_type, .Lfunc_end0-gimp_fg_bg_view_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_fg_bg_view_class_intern_init,@function
gimp_fg_bg_view_class_intern_init:      # @gimp_fg_bg_view_class_intern_init
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
	movq	%rax, gimp_fg_bg_view_parent_class
	cmpl	$0, GimpFgBgView_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpFgBgView_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_fg_bg_view_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_fg_bg_view_class_intern_init, .Lfunc_end1-gimp_fg_bg_view_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_fg_bg_view_init,@function
gimp_fg_bg_view_init:                   # @gimp_fg_bg_view_init
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_widget_set_has_window
	movq	-8(%rbp), %rax
	movq	$0, 96(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_fg_bg_view_init, .Lfunc_end2-gimp_fg_bg_view_init
	.cfi_endproc

	.globl	gimp_fg_bg_view_new
	.align	16, 0x90
	.type	gimp_fg_bg_view_new,@function
gimp_fg_bg_view_new:                    # @gimp_fg_bg_view_new
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB3_10
# BB#2:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB3_4
# BB#3:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB3_9
.LBB3_4:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_7
# BB#5:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB3_7
# BB#6:                                 # %if.then.4
	movl	$1, -36(%rbp)
	jmp	.LBB3_8
.LBB3_7:                                # %if.else.5
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB3_8:                                # %if.end
	jmp	.LBB3_9
.LBB3_9:                                # %if.end.7
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB3_11
.LBB3_10:                               # %if.then.9
	jmp	.LBB3_12
.LBB3_11:                               # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_fg_bg_view_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_14
.LBB3_12:                               # %if.end.11
	jmp	.LBB3_13
.LBB3_13:                               # %do.end
	callq	gimp_fg_bg_view_get_type
	movabsq	$.L.str.3, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -8(%rbp)
.LBB3_14:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_fg_bg_view_new, .Lfunc_end3-gimp_fg_bg_view_new
	.cfi_endproc

	.globl	gimp_fg_bg_view_set_context
	.align	16, 0x90
	.type	gimp_fg_bg_view_set_context,@function
gimp_fg_bg_view_set_context:            # @gimp_fg_bg_view_set_context
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_fg_bg_view_get_type
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
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_fg_bg_view_set_context, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_32
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB4_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB4_16
# BB#15:                                # %if.then.21
	movl	$0, -60(%rbp)
	jmp	.LBB4_21
.LBB4_16:                               # %if.else.22
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_19
# BB#17:                                # %land.lhs.true.25
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB4_19
# BB#18:                                # %if.then.29
	movl	$1, -60(%rbp)
	jmp	.LBB4_20
.LBB4_19:                               # %if.else.30
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB4_20:                               # %if.end.32
	jmp	.LBB4_21
.LBB4_21:                               # %if.end.33
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB4_23
.LBB4_22:                               # %if.then.36
	jmp	.LBB4_24
.LBB4_23:                               # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_fg_bg_view_set_context, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_32
.LBB4_24:                               # %if.end.38
	jmp	.LBB4_25
.LBB4_25:                               # %do.end.39
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	96(%rcx), %rax
	jne	.LBB4_27
# BB#26:                                # %if.then.42
	jmp	.LBB4_32
.LBB4_27:                               # %if.end.43
	movq	-8(%rbp), %rax
	cmpq	$0, 96(%rax)
	je	.LBB4_29
# BB#28:                                # %if.then.46
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gtk_widget_queue_draw, %rdx
	movq	-8(%rbp), %rdi
	movq	96(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	%r9, -80(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-80(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movq	-8(%rbp), %rdi
	movq	96(%rdi), %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	g_object_unref
	movq	-8(%rbp), %rdi
	movq	$0, 96(%rdi)
.LBB4_29:                               # %if.end.51
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 96(%rcx)
	cmpq	$0, -16(%rbp)
	je	.LBB4_31
# BB#30:                                # %if.then.54
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movabsq	$.L.str.5, %rsi
	movabsq	$gtk_widget_queue_draw, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$2, %r9d
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %r10
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	%r10, %rcx
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.6, %rsi
	movabsq	$gtk_widget_queue_draw, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	movl	$2, %r9d
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB4_31:                               # %if.end.58
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.3, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB4_32:                               # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_fg_bg_view_set_context, .Lfunc_end4-gimp_fg_bg_view_set_context
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_fg_bg_view_class_init,@function
gimp_fg_bg_view_class_init:             # @gimp_fg_bg_view_class_init
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
	subq	$48, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_fg_bg_view_expose, %rsi
	movabsq	$gimp_fg_bg_view_get_property, %rdi
	movabsq	$gimp_fg_bg_view_set_property, %rcx
	movabsq	$gimp_fg_bg_view_dispose, %rdx
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 32(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 392(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movabsq	$.L.str.3, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movl	$227, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_fg_bg_view_class_init, .Lfunc_end5-gimp_fg_bg_view_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_fg_bg_view_dispose,@function
gimp_fg_bg_view_dispose:                # @gimp_fg_bg_view_dispose
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_fg_bg_view_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 96(%rax)
	je	.LBB6_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_fg_bg_view_set_context
.LBB6_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_fg_bg_view_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_fg_bg_view_dispose, .Lfunc_end6-gimp_fg_bg_view_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_fg_bg_view_set_property,@function
gimp_fg_bg_view_set_property:           # @gimp_fg_bg_view_set_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_fg_bg_view_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB7_2
	jmp	.LBB7_1
.LBB7_1:                                # %sw.bb
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_object
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_fg_bg_view_set_context
	jmp	.LBB7_5
.LBB7_2:                                # %sw.default
	jmp	.LBB7_3
.LBB7_3:                                # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movl	-60(%rbp), %r8d
	movq	-56(%rbp), %rax
	movq	8(%rax), %r9
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	movq	%r9, -104(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.7, %rdi
	movabsq	$.L.str.8, %rsi
	movl	$118, %edx
	movabsq	$.L.str.9, %rcx
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB7_5
.LBB7_5:                                # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_fg_bg_view_set_property, .Lfunc_end7-gimp_fg_bg_view_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_fg_bg_view_get_property,@function
gimp_fg_bg_view_get_property:           # @gimp_fg_bg_view_get_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_fg_bg_view_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB8_2
	jmp	.LBB8_1
.LBB8_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB8_5
.LBB8_2:                                # %sw.default
	jmp	.LBB8_3
.LBB8_3:                                # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movl	-60(%rbp), %r8d
	movq	-56(%rbp), %rax
	movq	8(%rax), %r9
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -80(%rbp)         # 4-byte Spill
	movq	%r9, -88(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.7, %rdi
	movabsq	$.L.str.8, %rsi
	movl	$138, %edx
	movabsq	$.L.str.9, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB8_5
.LBB8_5:                                # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_fg_bg_view_get_property, .Lfunc_end8-gimp_fg_bg_view_get_property
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_fg_bg_view_expose,@function
gimp_fg_bg_view_expose:                 # @gimp_fg_bg_view_expose
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
	subq	$168, %rsp
.Ltmp30:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	callq	gimp_fg_bg_view_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_style
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_window
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_is_drawable
	cmpl	$0, %eax
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movl	$0, -12(%rbp)
	jmp	.LBB9_7
.LBB9_2:                                # %if.end
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gdk_cairo_create
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	40(%rax), %rsi
	callq	gdk_cairo_region
	movq	-64(%rbp), %rdi
	callq	cairo_clip
	leaq	-80(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movq	-64(%rbp), %rdi
	cvtsi2sdl	-80(%rbp), %xmm0
	cvtsi2sdl	-76(%rbp), %xmm1
	callq	cairo_translate
	movl	$4, %ecx
	imull	$3, -72(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -84(%rbp)
	imull	$3, -68(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -88(%rbp)
	movq	-40(%rbp), %rsi
	cmpq	$0, 96(%rsi)
	je	.LBB9_4
# BB#3:                                 # %if.then.11
	leaq	-120(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	96(%rax), %rdi
	callq	gimp_context_get_background
	leaq	-120(%rbp), %rsi
	movq	-64(%rbp), %rdi
	callq	gimp_cairo_set_source_rgb
	movq	-64(%rbp), %rdi
	movl	-72(%rbp), %ecx
	subl	-84(%rbp), %ecx
	addl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm0
	movl	-68(%rbp), %ecx
	subl	-88(%rbp), %ecx
	addl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm1
	movl	-84(%rbp), %ecx
	subl	$2, %ecx
	cvtsi2sdl	%ecx, %xmm2
	movl	-88(%rbp), %ecx
	subl	$2, %ecx
	cvtsi2sdl	%ecx, %xmm3
	callq	cairo_rectangle
	movq	-64(%rbp), %rdi
	callq	cairo_fill
.LBB9_4:                                # %if.end.23
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-24(%rbp), %r9
	movl	-80(%rbp), %eax
	addl	-72(%rbp), %eax
	subl	-84(%rbp), %eax
	movl	-76(%rbp), %r10d
	addl	-68(%rbp), %r10d
	subl	-88(%rbp), %r10d
	movl	-84(%rbp), %r11d
	movl	-88(%rbp), %ebx
	movq	$0, (%rsp)
	movl	%eax, 8(%rsp)
	movl	%r10d, 16(%rsp)
	movl	%r11d, 24(%rsp)
	movl	%ebx, 32(%rsp)
	callq	gtk_paint_shadow
	movq	-40(%rbp), %rsi
	cmpq	$0, 96(%rsi)
	je	.LBB9_6
# BB#5:                                 # %if.then.34
	leaq	-120(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	96(%rax), %rdi
	callq	gimp_context_get_foreground
	leaq	-120(%rbp), %rsi
	movq	-64(%rbp), %rdi
	callq	gimp_cairo_set_source_rgb
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movq	-64(%rbp), %rdi
	movl	-84(%rbp), %ecx
	subl	$2, %ecx
	cvtsi2sdl	%ecx, %xmm2
	movl	-88(%rbp), %ecx
	subl	$2, %ecx
	cvtsi2sdl	%ecx, %xmm3
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_rectangle
	movq	-64(%rbp), %rdi
	callq	cairo_fill
.LBB9_6:                                # %if.end.40
	xorl	%edx, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-24(%rbp), %r9
	movl	-80(%rbp), %eax
	movl	-76(%rbp), %r10d
	movl	-84(%rbp), %r11d
	movl	-88(%rbp), %ebx
	movq	$0, (%rsp)
	movl	%eax, 8(%rsp)
	movl	%r10d, 16(%rsp)
	movl	%r11d, 24(%rsp)
	movl	%ebx, 32(%rsp)
	callq	gtk_paint_shadow
	movq	-64(%rbp), %rdi
	callq	cairo_destroy
	movl	$1, -12(%rbp)
.LBB9_7:                                # %return
	movl	-12(%rbp), %eax
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_fg_bg_view_expose, .Lfunc_end9-gimp_fg_bg_view_expose
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB10_2
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
.LBB10_2:                               # %entry
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
.Lfunc_end10:
	.size	g_warning, .Lfunc_end10-g_warning
	.cfi_endproc

	.type	gimp_fg_bg_view_get_type.g_define_type_id__volatile,@object # @gimp_fg_bg_view_get_type.g_define_type_id__volatile
	.local	gimp_fg_bg_view_get_type.g_define_type_id__volatile
	.comm	gimp_fg_bg_view_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpFgBgView"
	.size	.L.str, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_fg_bg_view_new,@object # @__func__.gimp_fg_bg_view_new
.L__func__.gimp_fg_bg_view_new:
	.asciz	"gimp_fg_bg_view_new"
	.size	.L__func__.gimp_fg_bg_view_new, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"context == NULL || GIMP_IS_CONTEXT (context)"
	.size	.L.str.2, 45

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"context"
	.size	.L.str.3, 8

	.type	.L__func__.gimp_fg_bg_view_set_context,@object # @__func__.gimp_fg_bg_view_set_context
.L__func__.gimp_fg_bg_view_set_context:
	.asciz	"gimp_fg_bg_view_set_context"
	.size	.L__func__.gimp_fg_bg_view_set_context, 28

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_FG_BG_VIEW (view)"
	.size	.L.str.4, 26

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"foreground-changed"
	.size	.L.str.5, 19

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"background-changed"
	.size	.L.str.6, 19

	.type	gimp_fg_bg_view_parent_class,@object # @gimp_fg_bg_view_parent_class
	.local	gimp_fg_bg_view_parent_class
	.comm	gimp_fg_bg_view_parent_class,8,8
	.type	GimpFgBgView_private_offset,@object # @GimpFgBgView_private_offset
	.local	GimpFgBgView_private_offset
	.comm	GimpFgBgView_private_offset,4,4
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.7, 54

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimpfgbgview.c"
	.size	.L.str.8, 15

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"property"
	.size	.L.str.9, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
