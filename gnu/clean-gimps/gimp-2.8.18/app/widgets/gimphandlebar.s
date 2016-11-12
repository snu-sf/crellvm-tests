	.text
	.file	"gimphandlebar.bc"
	.globl	gimp_handle_bar_get_type
	.align	16, 0x90
	.type	gimp_handle_bar_get_type,@function
gimp_handle_bar_get_type:               # @gimp_handle_bar_get_type
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
	movq	gimp_handle_bar_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_handle_bar_get_type.g_define_type_id__volatile, %rax
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
	callq	gtk_event_box_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$824, %edx              # imm = 0x338
	movabsq	$gimp_handle_bar_class_intern_init, %rdi
	movl	$184, %r8d
	movabsq	$gimp_handle_bar_init, %rcx
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
	movabsq	$gimp_handle_bar_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_handle_bar_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_handle_bar_get_type, .Lfunc_end0-gimp_handle_bar_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_handle_bar_class_intern_init,@function
gimp_handle_bar_class_intern_init:      # @gimp_handle_bar_class_intern_init
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
	movq	%rax, gimp_handle_bar_parent_class
	cmpl	$0, GimpHandleBar_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpHandleBar_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_handle_bar_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_handle_bar_class_intern_init, .Lfunc_end1-gimp_handle_bar_class_intern_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_handle_bar_init,@function
gimp_handle_bar_init:                   # @gimp_handle_bar_init
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$784, %esi              # imm = 0x310
	movq	%rax, %rdi
	callq	gtk_widget_add_events
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_event_box_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_event_box_set_visible_window
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	-8(%rbp), %rax
	movl	$0, 120(%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm1, 152(%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm0, 160(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_handle_bar_init, .Lfunc_end2-gimp_handle_bar_init
	.cfi_endproc

	.globl	gimp_handle_bar_new
	.align	16, 0x90
	.type	gimp_handle_bar_new,@function
gimp_handle_bar_new:                    # @gimp_handle_bar_new
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	callq	gimp_handle_bar_get_type
	movabsq	$.L.str.1, %rsi
	xorl	%edi, %edi
	movl	%edi, %ecx
	movl	-4(%rbp), %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_handle_bar_new, .Lfunc_end3-gimp_handle_bar_new
	.cfi_endproc

	.globl	gimp_handle_bar_set_adjustment
	.align	16, 0x90
	.type	gimp_handle_bar_set_adjustment,@function
gimp_handle_bar_set_adjustment:         # @gimp_handle_bar_set_adjustment
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_handle_bar_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_handle_bar_set_adjustment, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_44
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	cmpl	$0, -12(%rbp)
	jl	.LBB4_16
# BB#14:                                # %land.lhs.true.13
	cmpl	$2, -12(%rbp)
	jg	.LBB4_16
# BB#15:                                # %if.then.15
	jmp	.LBB4_17
.LBB4_16:                               # %if.else.16
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_handle_bar_set_adjustment, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_44
.LBB4_17:                               # %if.end.17
	jmp	.LBB4_18
.LBB4_18:                               # %do.end.18
	jmp	.LBB4_19
.LBB4_19:                               # %do.body.19
	cmpq	$0, -24(%rbp)
	je	.LBB4_28
# BB#20:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gtk_adjustment_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB4_22
# BB#21:                                # %if.then.29
	movl	$0, -68(%rbp)
	jmp	.LBB4_27
.LBB4_22:                               # %if.else.30
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_25
# BB#23:                                # %land.lhs.true.33
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB4_25
# BB#24:                                # %if.then.37
	movl	$1, -68(%rbp)
	jmp	.LBB4_26
.LBB4_25:                               # %if.else.38
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB4_26:                               # %if.end.40
	jmp	.LBB4_27
.LBB4_27:                               # %if.end.41
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB4_29
.LBB4_28:                               # %if.then.44
	jmp	.LBB4_30
.LBB4_29:                               # %if.else.45
	movabsq	$.L.str.2, %rdi
	movabsq	$.L__func__.gimp_handle_bar_set_adjustment, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_44
.LBB4_30:                               # %if.end.46
	jmp	.LBB4_31
.LBB4_31:                               # %do.end.47
	movq	-24(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rdx
	cmpq	128(%rdx,%rcx,8), %rax
	jne	.LBB4_33
# BB#32:                                # %if.then.49
	jmp	.LBB4_44
.LBB4_33:                               # %if.end.50
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	$0, 128(%rcx,%rax,8)
	je	.LBB4_35
# BB#34:                                # %if.then.55
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_handle_bar_adjustment_changed, %rdx
	movslq	-12(%rbp), %rdi
	movq	-8(%rbp), %r9
	movq	128(%r9,%rdi,8), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-80(%rbp), %r10         # 8-byte Reload
	movq	%r9, -88(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-88(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	movslq	-12(%rbp), %rdi
	movq	-8(%rbp), %r8
	movq	128(%r8,%rdi,8), %rdi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	g_object_unref
	movslq	-12(%rbp), %rdi
	movq	-8(%rbp), %r8
	movq	$0, 128(%r8,%rdi,8)
.LBB4_35:                               # %if.end.66
	movq	-24(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rax, 128(%rdx,%rcx,8)
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	$0, 128(%rcx,%rax,8)
	je	.LBB4_37
# BB#36:                                # %if.then.74
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	128(%rcx,%rax,8), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movabsq	$.L.str.6, %rsi
	movabsq	$gimp_handle_bar_adjustment_changed, %rcx
	xorl	%edx, %edx
	movl	%edx, %r8d
	xorl	%r9d, %r9d
	movslq	-12(%rbp), %rdi
	movq	-8(%rbp), %r10
	movq	128(%r10,%rdi,8), %rdi
	movq	-8(%rbp), %r10
	movq	%rcx, %rdx
	movq	%r10, %rcx
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB4_37:                               # %if.end.83
	movq	-8(%rbp), %rax
	cmpq	$0, 128(%rax)
	je	.LBB4_39
# BB#38:                                # %if.then.87
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gtk_adjustment_get_lower
	movq	-8(%rbp), %rax
	movsd	%xmm0, 152(%rax)
	jmp	.LBB4_40
.LBB4_39:                               # %if.else.91
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	128(%rcx,%rax,8), %rdi
	callq	gtk_adjustment_get_lower
	movq	-8(%rbp), %rax
	movsd	%xmm0, 152(%rax)
.LBB4_40:                               # %if.end.97
	movq	-8(%rbp), %rax
	cmpq	$0, 144(%rax)
	je	.LBB4_42
# BB#41:                                # %if.then.101
	movq	-8(%rbp), %rax
	movq	144(%rax), %rdi
	callq	gtk_adjustment_get_upper
	movq	-8(%rbp), %rax
	movsd	%xmm0, 160(%rax)
	jmp	.LBB4_43
.LBB4_42:                               # %if.else.105
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	128(%rcx,%rax,8), %rdi
	callq	gtk_adjustment_get_upper
	movq	-8(%rbp), %rax
	movsd	%xmm0, 160(%rax)
.LBB4_43:                               # %if.end.111
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	128(%rcx,%rax,8), %rdi
	movq	-8(%rbp), %rsi
	callq	gimp_handle_bar_adjustment_changed
.LBB4_44:                               # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_handle_bar_set_adjustment, .Lfunc_end4-gimp_handle_bar_set_adjustment
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_handle_bar_adjustment_changed,@function
gimp_handle_bar_adjustment_changed:     # @gimp_handle_bar_adjustment_changed
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_queue_draw
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_handle_bar_adjustment_changed, .Lfunc_end5-gimp_handle_bar_adjustment_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_handle_bar_class_init,@function
gimp_handle_bar_class_init:             # @gimp_handle_bar_class_init
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
	movabsq	$gimp_handle_bar_motion_notify, %rsi
	movabsq	$gimp_handle_bar_button_release, %rdi
	movabsq	$gimp_handle_bar_button_press, %rcx
	movabsq	$gimp_handle_bar_expose, %rdx
	movabsq	$gimp_handle_bar_get_property, %r8
	movabsq	$gimp_handle_bar_set_property, %r9
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%r9, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%r8, 32(%rax)
	movq	-24(%rbp), %rax
	movq	%rdx, 392(%rax)
	movq	-24(%rbp), %rax
	movq	%rcx, 344(%rax)
	movq	-24(%rbp), %rax
	movq	%rdi, 352(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 368(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gtk_orientation_get_type
	movabsq	$.L.str.1, %rdi
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	xorl	%r8d, %r8d
	movl	$235, %r9d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$1, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_handle_bar_class_init, .Lfunc_end6-gimp_handle_bar_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_handle_bar_set_property,@function
gimp_handle_bar_set_property:           # @gimp_handle_bar_set_property
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_handle_bar_get_type
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
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, 120(%rdi)
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
	movl	$118, %edx
	movabsq	$.L.str.9, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB7_5
.LBB7_5:                                # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_handle_bar_set_property, .Lfunc_end7-gimp_handle_bar_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_handle_bar_get_property,@function
gimp_handle_bar_get_property:           # @gimp_handle_bar_get_property
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
	callq	gimp_handle_bar_get_type
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
	movl	120(%rax), %esi
	callq	g_value_set_enum
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
	.size	gimp_handle_bar_get_property, .Lfunc_end8-gimp_handle_bar_get_property
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4602678819172646912     # double 0.5
.LCPI9_1:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_handle_bar_expose,@function
gimp_handle_bar_expose:                 # @gimp_handle_bar_expose
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	callq	gimp_handle_bar_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-40(%rbp), %rsi
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_border_width
	movl	%eax, -56(%rbp)
	movl	%eax, -52(%rbp)
	movl	-32(%rbp), %eax
	movl	-52(%rbp), %ecx
	shll	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -60(%rbp)
	movl	-28(%rbp), %eax
	movl	-56(%rbp), %ecx
	shll	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -64(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_has_window
	cmpl	$0, %eax
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movl	-40(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	-36(%rbp), %eax
	addl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
.LBB9_2:                                # %if.end
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_cairo_create
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rsi
	callq	gdk_cairo_region
	movq	-48(%rbp), %rdi
	callq	cairo_clip
	movsd	.LCPI9_1, %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rdi
	callq	cairo_set_line_width
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rdi
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	cairo_translate
	movl	$0, -68(%rbp)
.LBB9_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -68(%rbp)
	jge	.LBB9_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB9_3 Depth=1
	movslq	-68(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	$-1, 168(%rcx,%rax,4)
	movslq	-68(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	$0, 128(%rcx,%rax,8)
	je	.LBB9_6
# BB#5:                                 # %if.then.18
                                        #   in Loop: Header=BB9_3 Depth=1
	cvtsi2sdl	-60(%rbp), %xmm0
	movslq	-68(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	128(%rcx,%rax,8), %rdi
	movsd	%xmm0, -104(%rbp)       # 8-byte Spill
	callq	gtk_adjustment_get_value
	movsd	.LCPI9_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI9_1, %xmm2         # xmm2 = mem[0],zero
	movq	-24(%rbp), %rax
	subsd	152(%rax), %xmm0
	movsd	-104(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	mulsd	%xmm0, %xmm3
	movq	-24(%rbp), %rax
	movsd	160(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	subsd	152(%rax), %xmm0
	addsd	%xmm2, %xmm0
	divsd	%xmm0, %xmm3
	addsd	%xmm1, %xmm3
	cvttsd2si	%xmm3, %edx
	movslq	-68(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	%edx, 168(%rcx,%rax,4)
	movq	-48(%rbp), %rdi
	cvtsi2sdl	-68(%rbp), %xmm0
	movaps	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	cvtsi2sdl	-68(%rbp), %xmm0
	movaps	%xmm1, %xmm3
	mulsd	%xmm0, %xmm3
	cvtsi2sdl	-68(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -112(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm1
	movsd	-112(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_set_source_rgb
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %edx
	movslq	-68(%rbp), %rax
	movq	-24(%rbp), %rcx
	addl	168(%rcx,%rax,4), %edx
	cvtsi2sdl	%edx, %xmm0
	cvtsi2sdl	-56(%rbp), %xmm1
	callq	cairo_move_to
	movl	$2, %edx
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %esi
	movslq	-68(%rbp), %rax
	movq	-24(%rbp), %rcx
	addl	168(%rcx,%rax,4), %esi
	movl	-64(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, %eax
	movl	%edx, -116(%rbp)        # 4-byte Spill
	cltd
	movl	-116(%rbp), %r8d        # 4-byte Reload
	idivl	%r8d
	subl	%eax, %esi
	cvtsi2sdl	%esi, %xmm0
	movl	-56(%rbp), %eax
	addl	-64(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	callq	cairo_line_to
	movl	$2, %eax
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %esi
	movslq	-68(%rbp), %rcx
	movq	-24(%rbp), %r9
	addl	168(%r9,%rcx,4), %esi
	movl	-64(%rbp), %r8d
	subl	$1, %r8d
	movl	%eax, -120(%rbp)        # 4-byte Spill
	movl	%r8d, %eax
	cltd
	movl	-120(%rbp), %r8d        # 4-byte Reload
	idivl	%r8d
	addl	%eax, %esi
	cvtsi2sdl	%esi, %xmm0
	movl	-56(%rbp), %eax
	addl	-64(%rbp), %eax
	subl	$1, %eax
	cvtsi2sdl	%eax, %xmm1
	callq	cairo_line_to
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %eax
	movslq	-68(%rbp), %rcx
	movq	-24(%rbp), %r9
	addl	168(%r9,%rcx,4), %eax
	cvtsi2sdl	%eax, %xmm0
	cvtsi2sdl	-56(%rbp), %xmm1
	callq	cairo_line_to
	movq	-48(%rbp), %rdi
	callq	cairo_fill_preserve
	xorps	%xmm0, %xmm0
	movq	-48(%rbp), %rdi
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	movsd	-128(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-128(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	cairo_set_source_rgb
	movq	-48(%rbp), %rdi
	callq	cairo_stroke
.LBB9_6:                                # %if.end.73
                                        #   in Loop: Header=BB9_3 Depth=1
	jmp	.LBB9_7
.LBB9_7:                                # %for.inc
                                        #   in Loop: Header=BB9_3 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB9_3
.LBB9_8:                                # %for.end
	movq	-48(%rbp), %rdi
	callq	cairo_destroy
	xorl	%eax, %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_handle_bar_expose, .Lfunc_end9-gimp_handle_bar_expose
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI10_0:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI10_1:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	gimp_handle_bar_button_press,@function
gimp_handle_bar_button_press:           # @gimp_handle_bar_button_press
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gimp_handle_bar_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-48(%rbp), %rsi
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_border_width
	movl	%eax, -52(%rbp)
	movl	-40(%rbp), %eax
	movl	-52(%rbp), %ecx
	shll	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -56(%rbp)
	cmpl	$1, -56(%rbp)
	jge	.LBB10_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB10_13
.LBB10_2:                               # %if.end
	movl	$2147483647, -68(%rbp)  # imm = 0x7FFFFFFF
	movl	$0, -72(%rbp)
.LBB10_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$3, -72(%rbp)
	jge	.LBB10_12
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB10_3 Depth=1
	movslq	-72(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpl	$-1, 168(%rcx,%rax,4)
	je	.LBB10_10
# BB#5:                                 # %if.then.8
                                        #   in Loop: Header=BB10_3 Depth=1
	movq	-24(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movslq	-72(%rbp), %rax
	movq	-32(%rbp), %rcx
	cvtsi2sdl	168(%rcx,%rax,4), %xmm1
	subsd	%xmm1, %xmm0
	cvtsi2sdl	-52(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movapd	.LCPI10_1(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	cvtsi2sdl	-68(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	ja	.LBB10_8
# BB#6:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB10_3 Depth=1
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movapd	.LCPI10_1(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	cvtsi2sdl	-68(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB10_9
	jp	.LBB10_9
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB10_3 Depth=1
	xorps	%xmm0, %xmm0
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB10_9
.LBB10_8:                               # %if.then.24
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	-72(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 180(%rcx)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movapd	.LCPI10_1(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -68(%rbp)
.LBB10_9:                               # %if.end.27
                                        #   in Loop: Header=BB10_3 Depth=1
	jmp	.LBB10_10
.LBB10_10:                              # %if.end.28
                                        #   in Loop: Header=BB10_3 Depth=1
	jmp	.LBB10_11
.LBB10_11:                              # %for.inc
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	.LBB10_3
.LBB10_12:                              # %for.end
	movsd	.LCPI10_0, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	cvtsi2sdl	-52(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	cvtsi2sdl	-56(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	movq	-32(%rbp), %rax
	movsd	160(%rax), %xmm2        # xmm2 = mem[0],zero
	movq	-32(%rbp), %rax
	subsd	152(%rax), %xmm2
	addsd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm1
	movsd	%xmm1, -64(%rbp)
	movq	-32(%rbp), %rax
	movslq	180(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	128(%rcx,%rax,8), %rdi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gtk_adjustment_set_value
	movl	$1, -4(%rbp)
.LBB10_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_handle_bar_button_press, .Lfunc_end10-gimp_handle_bar_button_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_handle_bar_button_release,@function
gimp_handle_bar_button_release:         # @gimp_handle_bar_button_release
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
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_handle_bar_button_release, .Lfunc_end11-gimp_handle_bar_button_release
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI12_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_handle_bar_motion_notify,@function
gimp_handle_bar_motion_notify:          # @gimp_handle_bar_motion_notify
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	callq	gimp_handle_bar_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-48(%rbp), %rsi
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_container_get_border_width
	movl	%eax, -52(%rbp)
	movl	-40(%rbp), %eax
	movl	-52(%rbp), %ecx
	shll	$1, %ecx
	subl	%ecx, %eax
	movl	%eax, -56(%rbp)
	cmpl	$1, -56(%rbp)
	jge	.LBB12_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB12_3
.LBB12_2:                               # %if.end
	movsd	.LCPI12_0, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	cvtsi2sdl	-52(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	cvtsi2sdl	-56(%rbp), %xmm2
	divsd	%xmm2, %xmm1
	movq	-32(%rbp), %rax
	movsd	160(%rax), %xmm2        # xmm2 = mem[0],zero
	movq	-32(%rbp), %rax
	subsd	152(%rax), %xmm2
	addsd	%xmm0, %xmm2
	mulsd	%xmm2, %xmm1
	movsd	%xmm1, -64(%rbp)
	movq	-32(%rbp), %rax
	movslq	180(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	128(%rcx,%rax,8), %rdi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gtk_adjustment_set_value
	movl	$1, -4(%rbp)
.LBB12_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_handle_bar_motion_notify, .Lfunc_end12-gimp_handle_bar_motion_notify
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB13_2
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
.LBB13_2:                               # %entry
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
	movl	$.L.str.2, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end13:
	.size	g_warning, .Lfunc_end13-g_warning
	.cfi_endproc

	.type	gimp_handle_bar_get_type.g_define_type_id__volatile,@object # @gimp_handle_bar_get_type.g_define_type_id__volatile
	.local	gimp_handle_bar_get_type.g_define_type_id__volatile
	.comm	gimp_handle_bar_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpHandleBar"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"orientation"
	.size	.L.str.1, 12

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Gimp-Widgets"
	.size	.L.str.2, 13

	.type	.L__func__.gimp_handle_bar_set_adjustment,@object # @__func__.gimp_handle_bar_set_adjustment
.L__func__.gimp_handle_bar_set_adjustment:
	.asciz	"gimp_handle_bar_set_adjustment"
	.size	.L__func__.gimp_handle_bar_set_adjustment, 31

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_HANDLE_BAR (bar)"
	.size	.L.str.3, 25

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"handle_no >= 0 && handle_no <= 2"
	.size	.L.str.4, 33

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"adjustment == NULL || GTK_IS_ADJUSTMENT (adjustment)"
	.size	.L.str.5, 53

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"value-changed"
	.size	.L.str.6, 14

	.type	gimp_handle_bar_parent_class,@object # @gimp_handle_bar_parent_class
	.local	gimp_handle_bar_parent_class
	.comm	gimp_handle_bar_parent_class,8,8
	.type	GimpHandleBar_private_offset,@object # @GimpHandleBar_private_offset
	.local	GimpHandleBar_private_offset
	.comm	GimpHandleBar_private_offset,4,4
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.7, 54

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimphandlebar.c"
	.size	.L.str.8, 16

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"property"
	.size	.L.str.9, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
