	.text
	.file	"gimpwindow.bc"
	.globl	gimp_window_get_type
	.align	16, 0x90
	.type	gimp_window_get_type,@function
gimp_window_get_type:                   # @gimp_window_get_type
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
	movq	gimp_window_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_window_get_type.g_define_type_id__volatile, %rax
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
	callq	gtk_window_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$904, %edx              # imm = 0x388
	movabsq	$gimp_window_class_intern_init, %rdi
	movl	$248, %r8d
	movabsq	$gimp_window_init, %rcx
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
	movabsq	$gimp_window_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_window_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_window_get_type, .Lfunc_end0-gimp_window_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_window_class_intern_init,@function
gimp_window_class_intern_init:          # @gimp_window_class_intern_init
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
	movq	%rax, gimp_window_parent_class
	cmpl	$0, GimpWindow_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpWindow_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_window_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_window_class_intern_init, .Lfunc_end1-gimp_window_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_window_init,@function
gimp_window_init:                       # @gimp_window_init
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
	.size	gimp_window_init, .Lfunc_end2-gimp_window_init
	.cfi_endproc

	.globl	gimp_window_set_primary_focus_widget
	.align	16, 0x90
	.type	gimp_window_set_primary_focus_widget,@function
gimp_window_set_primary_focus_widget:   # @gimp_window_set_primary_focus_widget
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_window_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_window_set_primary_focus_widget, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_35
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB3_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB3_16
# BB#15:                                # %if.then.21
	movl	$0, -60(%rbp)
	jmp	.LBB3_21
.LBB3_16:                               # %if.else.22
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_19
# BB#17:                                # %land.lhs.true.25
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB3_19
# BB#18:                                # %if.then.29
	movl	$1, -60(%rbp)
	jmp	.LBB3_20
.LBB3_19:                               # %if.else.30
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB3_20:                               # %if.end.32
	jmp	.LBB3_21
.LBB3_21:                               # %if.end.33
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB3_23
.LBB3_22:                               # %if.then.36
	jmp	.LBB3_24
.LBB3_23:                               # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_window_set_primary_focus_widget, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_35
.LBB3_24:                               # %if.end.38
	jmp	.LBB3_25
.LBB3_25:                               # %do.end.39
	jmp	.LBB3_26
.LBB3_26:                               # %do.body.40
	cmpq	$0, -16(%rbp)
	je	.LBB3_28
# BB#27:                                # %lor.lhs.false.42
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_toplevel
	movq	-8(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB3_29
.LBB3_28:                               # %if.then.47
	jmp	.LBB3_30
.LBB3_29:                               # %if.else.48
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_window_set_primary_focus_widget, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_35
.LBB3_30:                               # %if.end.49
	jmp	.LBB3_31
.LBB3_31:                               # %do.end.50
	movq	-8(%rbp), %rax
	cmpq	$0, 240(%rax)
	je	.LBB3_33
# BB#32:                                # %if.then.52
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	240(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rcx
	addq	$240, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_object_remove_weak_pointer
.LBB3_33:                               # %if.end.56
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 240(%rcx)
	movq	-8(%rbp), %rax
	cmpq	$0, 240(%rax)
	je	.LBB3_35
# BB#34:                                # %if.then.60
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	240(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rcx
	addq	$240, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_object_add_weak_pointer
.LBB3_35:                               # %if.end.64
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_window_set_primary_focus_widget, .Lfunc_end3-gimp_window_set_primary_focus_widget
	.cfi_endproc

	.globl	gimp_window_get_primary_focus_widget
	.align	16, 0x90
	.type	gimp_window_get_primary_focus_widget,@function
gimp_window_get_primary_focus_widget:   # @gimp_window_get_primary_focus_widget
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_window_get_type
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
	movabsq	$.L__func__.gimp_window_get_primary_focus_widget, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB4_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_window_get_primary_focus_widget, .Lfunc_end4-gimp_window_get_primary_focus_widget
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_window_class_init,@function
gimp_window_class_init:                 # @gimp_window_class_init
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
	subq	$32, %rsp
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
	movabsq	$gimp_window_key_press_event, %rsi
	movabsq	$gimp_window_dispose, %rdi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdi, 40(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 400(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_window_class_init, .Lfunc_end5-gimp_window_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_window_dispose,@function
gimp_window_dispose:                    # @gimp_window_dispose
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gimp_window_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	callq	gimp_window_set_primary_focus_widget
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	gimp_window_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_window_dispose, .Lfunc_end6-gimp_window_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_window_key_press_event,@function
gimp_window_key_press_event:            # @gimp_window_key_press_event
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
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	callq	gimp_window_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gtk_window_get_focus
	movq	%rax, -48(%rbp)
	movl	$0, -60(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gtk_editable_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB7_7
.LBB7_2:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_5
# BB#3:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB7_5
# BB#4:                                 # %if.then.8
	movl	$1, -84(%rbp)
	jmp	.LBB7_6
.LBB7_5:                                # %if.else.9
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB7_6:                                # %if.end
	jmp	.LBB7_7
.LBB7_7:                                # %if.end.11
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	jne	.LBB7_24
# BB#8:                                 # %lor.lhs.false
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gtk_text_view_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB7_10
# BB#9:                                 # %if.then.21
	movl	$0, -108(%rbp)
	jmp	.LBB7_15
.LBB7_10:                               # %if.else.22
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_13
# BB#11:                                # %land.lhs.true.25
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB7_13
# BB#12:                                # %if.then.29
	movl	$1, -108(%rbp)
	jmp	.LBB7_14
.LBB7_13:                               # %if.else.30
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB7_14:                               # %if.end.32
	jmp	.LBB7_15
.LBB7_15:                               # %if.end.33
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	jne	.LBB7_24
# BB#16:                                # %lor.lhs.false.36
	movq	-48(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_canvas_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB7_18
# BB#17:                                # %if.then.45
	movl	$0, -132(%rbp)
	jmp	.LBB7_23
.LBB7_18:                               # %if.else.46
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_21
# BB#19:                                # %land.lhs.true.49
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB7_21
# BB#20:                                # %if.then.53
	movl	$1, -132(%rbp)
	jmp	.LBB7_22
.LBB7_21:                               # %if.else.54
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB7_22:                               # %if.end.56
	jmp	.LBB7_23
.LBB7_23:                               # %if.end.57
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB7_31
.LBB7_24:                               # %if.then.60
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gtk_window_propagate_key_event
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB7_30
# BB#25:                                # %if.then.63
	jmp	.LBB7_26
.LBB7_26:                               # %do.body
	movl	gimp_log_flags, %eax
	andl	$16384, %eax            # imm = 0x4000
	cmpl	$0, %eax
	je	.LBB7_28
# BB#27:                                # %if.then.65
	movl	$16384, %edi            # imm = 0x4000
	movabsq	$.L__func__.gimp_window_key_press_event, %rsi
	movl	$95, %edx
	movabsq	$.L.str.5, %rcx
	movb	$0, %al
	callq	gimp_log
.LBB7_28:                               # %if.end.66
	jmp	.LBB7_29
.LBB7_29:                               # %do.end
	jmp	.LBB7_30
.LBB7_30:                               # %if.end.67
	jmp	.LBB7_31
.LBB7_31:                               # %if.end.68
	movq	-24(%rbp), %rax
	cmpl	$65307, 28(%rax)        # imm = 0xFF1B
	jne	.LBB7_37
# BB#32:                                # %land.lhs.true.70
	movq	-32(%rbp), %rax
	cmpq	$0, 240(%rax)
	je	.LBB7_37
# BB#33:                                # %if.then.72
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	240(%rcx), %rax
	je	.LBB7_35
# BB#34:                                # %if.then.75
	movq	-32(%rbp), %rax
	movq	240(%rax), %rdi
	callq	gtk_widget_grab_focus
	jmp	.LBB7_36
.LBB7_35:                               # %if.else.77
	movq	-16(%rbp), %rdi
	callq	gtk_widget_error_bell
.LBB7_36:                               # %if.end.78
	movl	$1, -4(%rbp)
	jmp	.LBB7_74
.LBB7_37:                               # %if.end.79
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_modifier_mask
	movl	%eax, -52(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_settings
	movabsq	$.L.str.6, %rsi
	leaq	-56(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_get
	cmpl	$0, -56(%rbp)
	je	.LBB7_39
# BB#38:                                # %if.then.83
	movq	-40(%rbp), %rdi
	callq	gtk_window_get_mnemonic_modifier
	orl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB7_39:                               # %if.end.85
	cmpl	$0, -60(%rbp)
	jne	.LBB7_48
# BB#40:                                # %land.lhs.true.87
	movq	-24(%rbp), %rax
	movl	24(%rax), %ecx
	andl	-52(%rbp), %ecx
	cmpl	$0, %ecx
	je	.LBB7_48
# BB#41:                                # %if.then.90
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gtk_window_activate_key
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB7_47
# BB#42:                                # %if.then.93
	jmp	.LBB7_43
.LBB7_43:                               # %do.body.94
	movl	gimp_log_flags, %eax
	andl	$16384, %eax            # imm = 0x4000
	cmpl	$0, %eax
	je	.LBB7_45
# BB#44:                                # %if.then.97
	movl	$16384, %edi            # imm = 0x4000
	movabsq	$.L__func__.gimp_window_key_press_event, %rsi
	movl	$126, %edx
	movabsq	$.L.str.7, %rcx
	movb	$0, %al
	callq	gimp_log
.LBB7_45:                               # %if.end.98
	jmp	.LBB7_46
.LBB7_46:                               # %do.end.99
	jmp	.LBB7_47
.LBB7_47:                               # %if.end.100
	jmp	.LBB7_48
.LBB7_48:                               # %if.end.101
	cmpl	$0, -60(%rbp)
	jne	.LBB7_56
# BB#49:                                # %if.then.103
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gtk_window_propagate_key_event
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB7_55
# BB#50:                                # %if.then.106
	jmp	.LBB7_51
.LBB7_51:                               # %do.body.107
	movl	gimp_log_flags, %eax
	andl	$16384, %eax            # imm = 0x4000
	cmpl	$0, %eax
	je	.LBB7_53
# BB#52:                                # %if.then.110
	movl	$16384, %edi            # imm = 0x4000
	movabsq	$.L__func__.gimp_window_key_press_event, %rsi
	movl	$136, %edx
	movabsq	$.L.str.8, %rcx
	movb	$0, %al
	callq	gimp_log
.LBB7_53:                               # %if.end.111
	jmp	.LBB7_54
.LBB7_54:                               # %do.end.112
	jmp	.LBB7_55
.LBB7_55:                               # %if.end.113
	jmp	.LBB7_56
.LBB7_56:                               # %if.end.114
	cmpl	$0, -60(%rbp)
	jne	.LBB7_65
# BB#57:                                # %land.lhs.true.116
	movq	-24(%rbp), %rax
	movl	24(%rax), %ecx
	andl	-52(%rbp), %ecx
	cmpl	$0, %ecx
	jne	.LBB7_65
# BB#58:                                # %if.then.120
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gtk_window_activate_key
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB7_64
# BB#59:                                # %if.then.123
	jmp	.LBB7_60
.LBB7_60:                               # %do.body.124
	movl	gimp_log_flags, %eax
	andl	$16384, %eax            # imm = 0x4000
	cmpl	$0, %eax
	je	.LBB7_62
# BB#61:                                # %if.then.127
	movl	$16384, %edi            # imm = 0x4000
	movabsq	$.L__func__.gimp_window_key_press_event, %rsi
	movl	$146, %edx
	movabsq	$.L.str.9, %rcx
	movb	$0, %al
	callq	gimp_log
.LBB7_62:                               # %if.end.128
	jmp	.LBB7_63
.LBB7_63:                               # %do.end.129
	jmp	.LBB7_64
.LBB7_64:                               # %if.end.130
	jmp	.LBB7_65
.LBB7_65:                               # %if.end.131
	cmpl	$0, -60(%rbp)
	jne	.LBB7_73
# BB#66:                                # %if.then.133
	callq	gtk_window_get_type
	movq	%rax, %rdi
	callq	g_type_parent
	movq	%rax, %rdi
	callq	g_type_class_peek_static
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	400(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB7_72
# BB#67:                                # %if.then.140
	jmp	.LBB7_68
.LBB7_68:                               # %do.body.141
	movl	gimp_log_flags, %eax
	andl	$16384, %eax            # imm = 0x4000
	cmpl	$0, %eax
	je	.LBB7_70
# BB#69:                                # %if.then.144
	movl	$16384, %edi            # imm = 0x4000
	movabsq	$.L__func__.gimp_window_key_press_event, %rsi
	movl	$160, %edx
	movabsq	$.L.str.10, %rcx
	movb	$0, %al
	callq	gimp_log
.LBB7_70:                               # %if.end.145
	jmp	.LBB7_71
.LBB7_71:                               # %do.end.146
	jmp	.LBB7_72
.LBB7_72:                               # %if.end.147
	jmp	.LBB7_73
.LBB7_73:                               # %if.end.148
	movl	-60(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB7_74:                               # %return
	movl	-4(%rbp), %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_window_key_press_event, .Lfunc_end7-gimp_window_key_press_event
	.cfi_endproc

	.type	gimp_window_get_type.g_define_type_id__volatile,@object # @gimp_window_get_type.g_define_type_id__volatile
	.local	gimp_window_get_type.g_define_type_id__volatile
	.comm	gimp_window_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpWindow"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_window_set_primary_focus_widget,@object # @__func__.gimp_window_set_primary_focus_widget
.L__func__.gimp_window_set_primary_focus_widget:
	.asciz	"gimp_window_set_primary_focus_widget"
	.size	.L__func__.gimp_window_set_primary_focus_widget, 37

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_WINDOW (window)"
	.size	.L.str.2, 24

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"primary_focus == NULL || GTK_IS_WIDGET (primary_focus)"
	.size	.L.str.3, 55

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"primary_focus == NULL || gtk_widget_get_toplevel (primary_focus) == GTK_WIDGET (window)"
	.size	.L.str.4, 88

	.type	.L__func__.gimp_window_get_primary_focus_widget,@object # @__func__.gimp_window_get_primary_focus_widget
.L__func__.gimp_window_get_primary_focus_widget:
	.asciz	"gimp_window_get_primary_focus_widget"
	.size	.L__func__.gimp_window_get_primary_focus_widget, 37

	.type	gimp_window_parent_class,@object # @gimp_window_parent_class
	.local	gimp_window_parent_class
	.comm	gimp_window_parent_class,8,8
	.type	GimpWindow_private_offset,@object # @GimpWindow_private_offset
	.local	GimpWindow_private_offset
	.comm	GimpWindow_private_offset,4,4
	.type	.L__func__.gimp_window_key_press_event,@object # @__func__.gimp_window_key_press_event
.L__func__.gimp_window_key_press_event:
	.asciz	"gimp_window_key_press_event"
	.size	.L__func__.gimp_window_key_press_event, 28

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"handled by gtk_window_propagate_key_event(text_widget)"
	.size	.L.str.5, 55

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gtk-enable-mnemonics"
	.size	.L.str.6, 21

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"handled by gtk_window_activate_key(modified)"
	.size	.L.str.7, 45

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"handled by gtk_window_propagate_key_event(other_widget)"
	.size	.L.str.8, 56

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"handled by gtk_window_activate_key(unmodified)"
	.size	.L.str.9, 47

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"handled by widget_class->key_press_event()"
	.size	.L.str.10, 43


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
