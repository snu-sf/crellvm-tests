	.text
	.file	"gimpcolorpanel.bc"
	.globl	gimp_color_panel_get_type
	.align	16, 0x90
	.type	gimp_color_panel_get_type,@function
gimp_color_panel_get_type:              # @gimp_color_panel_get_type
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
	movq	gimp_color_panel_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_color_panel_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_color_button_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$984, %edx              # imm = 0x3D8
	movabsq	$gimp_color_panel_class_intern_init, %rdi
	movl	$208, %r8d
	movabsq	$gimp_color_panel_init, %rcx
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
	movabsq	$gimp_color_panel_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_color_panel_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_color_panel_get_type, .Lfunc_end0-gimp_color_panel_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_panel_class_intern_init,@function
gimp_color_panel_class_intern_init:     # @gimp_color_panel_class_intern_init
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
	movq	%rax, gimp_color_panel_parent_class
	cmpl	$0, GimpColorPanel_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpColorPanel_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_color_panel_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_color_panel_class_intern_init, .Lfunc_end1-gimp_color_panel_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_panel_init,@function
gimp_color_panel_init:                  # @gimp_color_panel_init
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
	movq	-8(%rbp), %rdi
	movq	$0, 192(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 200(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_color_panel_init, .Lfunc_end2-gimp_color_panel_init
	.cfi_endproc

	.globl	gimp_color_panel_new
	.align	16, 0x90
	.type	gimp_color_panel_new,@function
gimp_color_panel_new:                   # @gimp_color_panel_new
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
	subq	$120, %rsp
.Ltmp12:
	.cfi_offset %rbx, -40
.Ltmp13:
	.cfi_offset %r14, -32
.Ltmp14:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	%ecx, -56(%rbp)
	movl	%r8d, -60(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -40(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_color_panel_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -32(%rbp)
	jmp	.LBB3_21
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	jmp	.LBB3_6
.LBB3_6:                                # %do.body.1
	cmpq	$0, -48(%rbp)
	je	.LBB3_8
# BB#7:                                 # %if.then.3
	jmp	.LBB3_9
.LBB3_8:                                # %if.else.4
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_color_panel_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -32(%rbp)
	jmp	.LBB3_21
.LBB3_9:                                # %if.end.5
	jmp	.LBB3_10
.LBB3_10:                               # %do.end.6
	jmp	.LBB3_11
.LBB3_11:                               # %do.body.7
	cmpl	$0, -56(%rbp)
	jle	.LBB3_13
# BB#12:                                # %if.then.9
	jmp	.LBB3_14
.LBB3_13:                               # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_color_panel_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -32(%rbp)
	jmp	.LBB3_21
.LBB3_14:                               # %if.end.11
	jmp	.LBB3_15
.LBB3_15:                               # %do.end.12
	jmp	.LBB3_16
.LBB3_16:                               # %do.body.13
	cmpl	$0, -60(%rbp)
	jle	.LBB3_18
# BB#17:                                # %if.then.15
	jmp	.LBB3_19
.LBB3_18:                               # %if.else.16
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_color_panel_new, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -32(%rbp)
	jmp	.LBB3_21
.LBB3_19:                               # %if.end.17
	jmp	.LBB3_20
.LBB3_20:                               # %do.end.18
	callq	gimp_color_panel_get_type
	movabsq	$.L.str.6, %rsi
	movabsq	$.L.str.7, %rcx
	movabsq	$.L.str.8, %r9
	movabsq	$.L.str.9, %rdx
	movabsq	$.L.str.10, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-40(%rbp), %r11
	movl	-52(%rbp), %r8d
	movq	-48(%rbp), %rbx
	movl	-56(%rbp), %r14d
	movl	-60(%rbp), %r15d
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%r11, %rdx
	movq	%rbx, (%rsp)
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	%r14d, 16(%rsp)
	movq	-72(%rbp), %r11         # 8-byte Reload
	movq	%r11, 24(%rsp)
	movl	%r15d, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	movq	%r10, -88(%rbp)         # 8-byte Spill
	callq	g_object_new
	movq	%rax, -32(%rbp)
.LBB3_21:                               # %return
	movq	-32(%rbp), %rax
	addq	$120, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_color_panel_new, .Lfunc_end3-gimp_color_panel_new
	.cfi_endproc

	.globl	gimp_color_panel_set_context
	.align	16, 0x90
	.type	gimp_color_panel_set_context,@function
gimp_color_panel_set_context:           # @gimp_color_panel_set_context
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_color_panel_get_type
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
	movabsq	$.L__func__.gimp_color_panel_set_context, %rsi
	movabsq	$.L.str.11, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_26
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
	movabsq	$.L__func__.gimp_color_panel_set_context, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_26
.LBB4_24:                               # %if.end.38
	jmp	.LBB4_25
.LBB4_25:                               # %do.end.39
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 192(%rcx)
.LBB4_26:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_color_panel_set_context, .Lfunc_end4-gimp_color_panel_set_context
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_panel_class_init,@function
gimp_color_panel_class_init:            # @gimp_color_panel_class_init
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
	subq	$64, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_button_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_color_panel_get_action_type, %rsi
	movabsq	$gimp_color_panel_color_changed, %rdi
	movabsq	$gimp_color_panel_clicked, %rcx
	movabsq	$gimp_color_panel_button_press, %rdx
	movabsq	$gimp_color_panel_dispose, %r8
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%r8, 40(%rax)
	movq	-24(%rbp), %rax
	movq	%rdx, 344(%rax)
	movq	-32(%rbp), %rax
	movq	%rcx, 840(%rax)
	movq	-40(%rbp), %rax
	movq	%rdi, 944(%rax)
	movq	-40(%rbp), %rax
	movq	%rsi, 952(%rax)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_color_panel_class_init, .Lfunc_end5-gimp_color_panel_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_panel_dispose,@function
gimp_color_panel_dispose:               # @gimp_color_panel_dispose
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_color_panel_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 200(%rax)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gtk_widget_destroy
	movq	-16(%rbp), %rax
	movq	$0, 200(%rax)
.LBB6_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_color_panel_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_color_panel_dispose, .Lfunc_end6-gimp_color_panel_dispose
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_color_panel_button_press,@function
gimp_color_panel_button_press:          # @gimp_color_panel_button_press
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
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, %rdi
	callq	gdk_event_triggers_context_menu
	cmpl	$0, %eax
	je	.LBB7_4
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_color_panel_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_ui_manager_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	gtk_ui_manager_get_action_groups
	movabsq	$.L.str.13, %rsi
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	gtk_action_group_get_action
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-40(%rbp), %rax
	cmpq	$0, 192(%rax)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	callq	gtk_action_set_visible
	movabsq	$.L.str.14, %rsi
	movq	-56(%rbp), %rdi
	callq	gtk_action_group_get_action
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-40(%rbp), %rax
	cmpq	$0, 192(%rax)
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	callq	gtk_action_set_visible
	movq	-40(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB7_3
# BB#2:                                 # %if.then.15
	movabsq	$.L.str.13, %rsi
	movq	-56(%rbp), %rdi
	callq	gtk_action_group_get_action
	leaq	-96(%rbp), %rsi
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	192(%rax), %rdi
	callq	gimp_context_get_foreground
	movabsq	$.L.str.8, %rsi
	leaq	-96(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	movabsq	$.L.str.14, %rsi
	movq	-56(%rbp), %rdi
	callq	gtk_action_group_get_action
	leaq	-96(%rbp), %rsi
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	192(%rax), %rdi
	callq	gimp_context_get_background
	movabsq	$.L.str.8, %rsi
	leaq	-96(%rbp), %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
.LBB7_3:                                # %if.end
	movabsq	$.L.str.15, %rsi
	movq	-56(%rbp), %rdi
	callq	gtk_action_group_get_action
	leaq	-96(%rbp), %rdi
	xorps	%xmm0, %xmm0
	movsd	.LCPI7_0, %xmm3         # xmm3 = mem[0],zero
	movq	%rax, -64(%rbp)
	movsd	%xmm0, -128(%rbp)       # 8-byte Spill
	movsd	-128(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-128(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	callq	gimp_rgba_set
	movabsq	$.L.str.8, %rsi
	leaq	-96(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	movabsq	$.L.str.16, %rsi
	movq	-56(%rbp), %rdi
	callq	gtk_action_group_get_action
	leaq	-96(%rbp), %rdi
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rax, -64(%rbp)
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	movsd	-136(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-136(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-136(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	callq	gimp_rgba_set
	movabsq	$.L.str.8, %rsi
	leaq	-96(%rbp), %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
.LBB7_4:                                # %if.end.22
	movq	gimp_color_panel_parent_class, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	cmpq	$0, 344(%rax)
	je	.LBB7_6
# BB#5:                                 # %if.then.26
	movq	gimp_color_panel_parent_class, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	344(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movl	%eax, -4(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.end.31
	movl	$0, -4(%rbp)
.LBB7_7:                                # %return
	movl	-4(%rbp), %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_color_panel_button_press, .Lfunc_end7-gimp_color_panel_button_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_panel_clicked,@function
gimp_color_panel_clicked:               # @gimp_color_panel_clicked
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
	subq	$216, %rsp
.Ltmp30:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	callq	gimp_color_panel_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-56(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_button_get_color
	movq	-24(%rbp), %rax
	cmpq	$0, 200(%rax)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	192(%rax), %rsi
	movq	-16(%rbp), %rax
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	152(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rdx
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_color_button_has_alpha
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	leaq	-56(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	%rdx, %rdi
	movq	-80(%rbp), %r8          # 8-byte Reload
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%r9, %rdx
	movq	-136(%rbp), %r10        # 8-byte Reload
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	movq	%r10, %rcx
	movq	%r10, %r8
	movq	-112(%rbp), %r9         # 8-byte Reload
	movq	$0, (%rsp)
	movq	$0, 8(%rsp)
	movq	-128(%rbp), %r11        # 8-byte Reload
	movq	%r11, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%eax, 32(%rsp)
	callq	gimp_color_dialog_new
	movabsq	$.L.str.17, %rsi
	movabsq	$gtk_widget_destroyed, %rcx
	xorl	%ebx, %ebx
	movl	%ebx, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	%rax, 200(%rdx)
	movq	-24(%rbp), %rax
	movq	200(%rax), %rax
	movq	-24(%rbp), %rdx
	addq	$200, %rdx
	movq	%rax, %rdi
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-152(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.18, %rsi
	movabsq	$gimp_color_panel_dialog_update, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-24(%rbp), %rdx
	movq	200(%rdx), %rdx
	movq	-24(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB8_2:                                # %if.end
	movq	-24(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_window_present
	addq	$216, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_color_panel_clicked, .Lfunc_end8-gimp_color_panel_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_panel_color_changed,@function
gimp_color_panel_color_changed:         # @gimp_color_panel_color_changed
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_color_panel_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 200(%rax)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_button_get_color
	movq	-16(%rbp), %rax
	movq	200(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_color_dialog_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_dialog_set_color
.LBB9_2:                                # %if.end
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_color_panel_color_changed, .Lfunc_end9-gimp_color_panel_color_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_panel_get_action_type,@function
gimp_color_panel_get_action_type:       # @gimp_color_panel_get_action_type
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	gimp_action_get_type
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_color_panel_get_action_type, .Lfunc_end10-gimp_color_panel_get_action_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_color_panel_dialog_update,@function
gimp_color_panel_dialog_update:         # @gimp_color_panel_dialog_update
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	-20(%rbp), %edx
	testl	%edx, %edx
	movl	%edx, -36(%rbp)         # 4-byte Spill
	je	.LBB11_2
	jmp	.LBB11_5
.LBB11_5:                               # %entry
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	je	.LBB11_3
	jmp	.LBB11_6
.LBB11_6:                               # %entry
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jne	.LBB11_4
	jmp	.LBB11_1
.LBB11_1:                               # %sw.bb
	jmp	.LBB11_4
.LBB11_2:                               # %sw.bb.1
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_color_button_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_color_button_set_color
.LBB11_3:                               # %sw.bb.3
	movq	-32(%rbp), %rax
	movq	200(%rax), %rdi
	callq	gtk_widget_hide
.LBB11_4:                               # %sw.epilog
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_color_panel_dialog_update, .Lfunc_end11-gimp_color_panel_dialog_update
	.cfi_endproc

	.type	gimp_color_panel_get_type.g_define_type_id__volatile,@object # @gimp_color_panel_get_type.g_define_type_id__volatile
	.local	gimp_color_panel_get_type.g_define_type_id__volatile
	.comm	gimp_color_panel_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpColorPanel"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_color_panel_new,@object # @__func__.gimp_color_panel_new
.L__func__.gimp_color_panel_new:
	.asciz	"gimp_color_panel_new"
	.size	.L__func__.gimp_color_panel_new, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"title != NULL"
	.size	.L.str.2, 14

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"color != NULL"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"width > 0"
	.size	.L.str.4, 10

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"height > 0"
	.size	.L.str.5, 11

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"title"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"type"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"color"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"area-width"
	.size	.L.str.9, 11

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"area-height"
	.size	.L.str.10, 12

	.type	.L__func__.gimp_color_panel_set_context,@object # @__func__.gimp_color_panel_set_context
.L__func__.gimp_color_panel_set_context:
	.asciz	"gimp_color_panel_set_context"
	.size	.L__func__.gimp_color_panel_set_context, 29

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"GIMP_IS_COLOR_PANEL (panel)"
	.size	.L.str.11, 28

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"context == NULL || GIMP_IS_CONTEXT (context)"
	.size	.L.str.12, 45

	.type	gimp_color_panel_parent_class,@object # @gimp_color_panel_parent_class
	.local	gimp_color_panel_parent_class
	.comm	gimp_color_panel_parent_class,8,8
	.type	GimpColorPanel_private_offset,@object # @GimpColorPanel_private_offset
	.local	GimpColorPanel_private_offset
	.comm	GimpColorPanel_private_offset,4,4
	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"color-button-use-foreground"
	.size	.L.str.13, 28

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"color-button-use-background"
	.size	.L.str.14, 28

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"color-button-use-black"
	.size	.L.str.15, 23

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"color-button-use-white"
	.size	.L.str.16, 23

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"destroy"
	.size	.L.str.17, 8

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"update"
	.size	.L.str.18, 7


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
