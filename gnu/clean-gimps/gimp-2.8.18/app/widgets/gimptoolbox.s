	.text
	.file	"gimptoolbox.bc"
	.globl	gimp_toolbox_get_type
	.align	16, 0x90
	.type	gimp_toolbox_get_type,@function
gimp_toolbox_get_type:                  # @gimp_toolbox_get_type
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
	movq	gimp_toolbox_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_toolbox_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_dock_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$872, %edx              # imm = 0x368
	movabsq	$gimp_toolbox_class_intern_init, %rdi
	movl	$144, %r8d
	movabsq	$gimp_toolbox_init, %rcx
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
	movabsq	$gimp_toolbox_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_toolbox_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_toolbox_get_type, .Lfunc_end0-gimp_toolbox_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_toolbox_class_intern_init,@function
gimp_toolbox_class_intern_init:         # @gimp_toolbox_class_intern_init
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
	movq	%rax, gimp_toolbox_parent_class
	cmpl	$0, GimpToolbox_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpToolbox_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_toolbox_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_toolbox_class_intern_init, .Lfunc_end1-gimp_toolbox_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_toolbox_init,@function
gimp_toolbox_init:                      # @gimp_toolbox_init
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
	callq	gimp_toolbox_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	-8(%rbp), %rsi
	movq	%rax, 136(%rsi)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_standard_help_func, %rsi
	movabsq	$.L.str.28, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	callq	gimp_help_connect
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_toolbox_init, .Lfunc_end2-gimp_toolbox_init
	.cfi_endproc

	.globl	gimp_toolbox_new
	.align	16, 0x90
	.type	gimp_toolbox_new,@function
gimp_toolbox_new:                       # @gimp_toolbox_new
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_dialog_factory_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_toolbox_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_37
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB3_15
# BB#14:                                # %if.then.20
	movl	$0, -76(%rbp)
	jmp	.LBB3_20
.LBB3_15:                               # %if.else.21
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_18
# BB#16:                                # %land.lhs.true.24
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB3_18
# BB#17:                                # %if.then.28
	movl	$1, -76(%rbp)
	jmp	.LBB3_19
.LBB3_18:                               # %if.else.29
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB3_19:                               # %if.end.31
	jmp	.LBB3_20
.LBB3_20:                               # %if.end.32
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB3_22
# BB#21:                                # %if.then.35
	jmp	.LBB3_23
.LBB3_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_toolbox_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_37
.LBB3_23:                               # %if.end.37
	jmp	.LBB3_24
.LBB3_24:                               # %do.end.38
	jmp	.LBB3_25
.LBB3_25:                               # %do.body.39
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_ui_manager_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB3_27
# BB#26:                                # %if.then.48
	movl	$0, -100(%rbp)
	jmp	.LBB3_32
.LBB3_27:                               # %if.else.49
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_30
# BB#28:                                # %land.lhs.true.52
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB3_30
# BB#29:                                # %if.then.56
	movl	$1, -100(%rbp)
	jmp	.LBB3_31
.LBB3_30:                               # %if.else.57
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB3_31:                               # %if.end.59
	jmp	.LBB3_32
.LBB3_32:                               # %if.end.60
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB3_34
# BB#33:                                # %if.then.63
	jmp	.LBB3_35
.LBB3_34:                               # %if.else.64
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_toolbox_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_37
.LBB3_35:                               # %if.end.65
	jmp	.LBB3_36
.LBB3_36:                               # %do.end.66
	callq	gimp_toolbox_get_type
	movabsq	$.L.str.5, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -8(%rbp)
.LBB3_37:                               # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_toolbox_new, .Lfunc_end3-gimp_toolbox_new
	.cfi_endproc

	.globl	gimp_toolbox_get_context
	.align	16, 0x90
	.type	gimp_toolbox_get_context,@function
gimp_toolbox_get_context:               # @gimp_toolbox_get_context
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
	callq	gimp_toolbox_get_type
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
	movabsq	$.L__func__.gimp_toolbox_get_context, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB4_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_toolbox_get_context, .Lfunc_end4-gimp_toolbox_get_context
	.cfi_endproc

	.globl	gimp_toolbox_set_drag_handler
	.align	16, 0x90
	.type	gimp_toolbox_set_drag_handler,@function
gimp_toolbox_set_drag_handler:          # @gimp_toolbox_set_drag_handler
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_toolbox_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_toolbox_set_drag_handler, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_13
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	%rax, 72(%rcx)
.LBB5_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_toolbox_set_drag_handler, .Lfunc_end5-gimp_toolbox_set_drag_handler
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_toolbox_class_init,@function
gimp_toolbox_class_init:                # @gimp_toolbox_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$56, %rsp
.Ltmp21:
	.cfi_offset %rbx, -40
.Ltmp22:
	.cfi_offset %r14, -32
.Ltmp23:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_dock_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_toolbox_book_removed, %rsi
	movabsq	$gimp_toolbox_book_added, %rdi
	movabsq	$gimp_toolbox_set_host_geometry_hints, %rcx
	movabsq	$gimp_toolbox_get_description, %rdx
	movabsq	$gimp_toolbox_button_press_event, %r8
	movabsq	$gimp_toolbox_size_allocate, %r9
	movabsq	$gimp_toolbox_get_property, %r10
	movabsq	$gimp_toolbox_set_property, %r11
	movabsq	$gimp_toolbox_dispose, %rbx
	movabsq	$gimp_toolbox_constructed, %r14
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%r14, 72(%rax)
	movq	-40(%rbp), %rax
	movq	%rbx, 40(%rax)
	movq	-40(%rbp), %rax
	movq	%r11, 24(%rax)
	movq	-40(%rbp), %rax
	movq	%r10, 32(%rax)
	movq	-48(%rbp), %rax
	movq	%r9, 248(%rax)
	movq	-48(%rbp), %rax
	movq	%r8, 344(%rax)
	movq	-56(%rbp), %rax
	movq	%rdx, 824(%rax)
	movq	-56(%rbp), %rax
	movq	%rcx, 832(%rax)
	movq	-56(%rbp), %rax
	movq	%rdi, 840(%rax)
	movq	-56(%rbp), %rax
	movq	%rsi, 848(%rax)
	movq	-40(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movabsq	$.L.str.5, %rdi
	xorl	%r15d, %r15d
	movl	%r15d, %ecx
	movl	$231, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movl	$88, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_toolbox_class_init, .Lfunc_end6-gimp_toolbox_class_init
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI7_0:
	.long	1040746633              # float 0.13333334
	.text
	.align	16, 0x90
	.type	gimp_toolbox_constructed,@function
gimp_toolbox_constructed:               # @gimp_toolbox_constructed
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
	subq	$480, %rsp              # imm = 0x1E0
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	callq	gimp_toolbox_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.5
	movl	$1, -68(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.6
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.8
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.10
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.11
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.7, %rsi
	movl	$204, %edx
	movabsq	$.L__func__.gimp_toolbox_constructed, %rcx
	movabsq	$.L.str.8, %r8
	callq	g_assertion_message_expr
.LBB7_11:                               # %if.end.12
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_dock_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_dock_get_main_vbox
	movl	$1, %edi
	movl	$2, %esi
	movq	%rax, -32(%rbp)
	callq	gtk_box_new
	movq	-16(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	%rax, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-16(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	8(%rcx), %rsi
	movq	%rax, %rdi
	movl	%edx, -108(%rbp)        # 4-byte Spill
	movl	-108(%rbp), %ecx        # 4-byte Reload
	movl	-108(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-16(%rbp), %rsi
	movq	136(%rsi), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_box_reorder_child
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	8(%rax), %rdi
	callq	gtk_widget_show
	movabsq	$.L.str.9, %rsi
	movabsq	$gimp_toolbox_drag_leave, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %r10
	movq	%rax, %rdx
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.10, %rsi
	movabsq	$gimp_toolbox_drag_motion, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.11, %rsi
	movabsq	$gimp_toolbox_drag_drop, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.9, %rsi
	movabsq	$gimp_toolbox_drag_leave, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	136(%rdx), %rdx
	movq	8(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-160(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.10, %rsi
	movabsq	$gimp_toolbox_drag_motion, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	136(%rdx), %rdx
	movq	8(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -176(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-176(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.11, %rsi
	movabsq	$gimp_toolbox_drag_drop, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	136(%rdx), %rdx
	movq	8(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-192(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gtk_frame_new
	movq	-16(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	%rax, 16(%rcx)
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	16(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	movl	%r9d, %r8d
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rax
	cmpl	$0, 644(%rax)
	je	.LBB7_14
# BB#13:                                # %if.then.58
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	16(%rax), %rdi
	callq	gtk_widget_show
.LBB7_14:                               # %if.end.61
	movabsq	$.L.str.12, %rsi
	movabsq	$gimp_toolbox_size_request_wilber, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	136(%rdx), %rdx
	movq	16(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -232(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-232(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.13, %rsi
	movabsq	$gimp_toolbox_expose_wilber, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rdx
	movq	136(%rdx), %rdx
	movq	16(%rdx), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-240(%rbp), %rcx        # 8-byte Reload
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movabsq	$.L.str.14, %rdi
	movq	-16(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	16(%rcx), %rcx
	movq	%rax, -256(%rbp)        # 8-byte Spill
	movq	%rcx, -264(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%r9d, %r9d
	movl	%r9d, %edx
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_help_set_help_data
	movabsq	$.L.str.15, %rsi
	movabsq	$toolbox_wilber_notify, %rax
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	136(%rdx), %rdx
	movq	16(%rdx), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -272(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-272(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	gimp_tool_palette_new
	movq	-16(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	%rax, 24(%rcx)
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	gimp_tool_palette_get_type
	movq	-288(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_tool_palette_set_toolbox
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	24(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	24(%rax), %rdi
	callq	gtk_widget_show
	xorl	%edi, %edi
	callq	gtk_hwrap_box_new
	movq	-16(%rbp), %rsi
	movq	136(%rsi), %rsi
	movq	%rax, 32(%rsi)
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gtk_wrap_box_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_wrap_box_set_justify
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gtk_wrap_box_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_wrap_box_set_line_justify
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gtk_wrap_box_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movss	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero,zero,zero
	movq	%rax, %rdi
	callq	gtk_wrap_box_set_aspect_ratio
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rsi
	movq	136(%rsi), %rsi
	movq	32(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -332(%rbp)        # 4-byte Spill
	movl	-332(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	32(%rax), %rdi
	callq	gtk_widget_show
	movq	-16(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_get_display
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	gdk_display_list_devices
	movq	%rax, -48(%rbp)
.LBB7_15:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB7_20
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB7_15 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$0, 40(%rax)
	jne	.LBB7_18
# BB#17:                                # %if.then.116
	jmp	.LBB7_20
.LBB7_18:                               # %if.end.117
                                        #   in Loop: Header=BB7_15 Depth=1
	jmp	.LBB7_19
.LBB7_19:                               # %for.inc
                                        #   in Loop: Header=BB7_15 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB7_15
.LBB7_20:                               # %for.end
	cmpq	$0, -48(%rbp)
	jne	.LBB7_22
# BB#21:                                # %if.then.119
	movq	-16(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$4, %esi
	movq	%rax, %rdi
	callq	gtk_widget_add_events
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_devices_add_widget
.LBB7_22:                               # %if.end.127
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	(%rax), %rsi
	callq	toolbox_create_color_area
	movq	-16(%rbp), %rsi
	movq	136(%rsi), %rsi
	movq	%rax, 40(%rsi)
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_wrap_box_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rsi
	movq	136(%rsi), %rsi
	movq	40(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -380(%rbp)        # 4-byte Spill
	movl	-380(%rbp), %r9d        # 4-byte Reload
	movl	$1, (%rsp)
	callq	gtk_wrap_box_pack_wrapped
	movq	-24(%rbp), %rax
	cmpl	$0, 632(%rax)
	je	.LBB7_24
# BB#23:                                # %if.then.139
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	40(%rax), %rdi
	callq	gtk_widget_show
.LBB7_24:                               # %if.end.142
	movabsq	$.L.str.16, %rsi
	movabsq	$toolbox_area_notify, %rax
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	136(%rdx), %rdx
	movq	40(%rdx), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -392(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-392(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	(%rcx), %rsi
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	toolbox_create_foo_area
	movq	-16(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	%rax, 48(%rcx)
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_wrap_box_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	48(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	movl	%r8d, -412(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-412(%rbp), %r9d        # 4-byte Reload
	callq	gtk_wrap_box_pack
	movq	-24(%rbp), %rax
	cmpl	$0, 636(%rax)
	je	.LBB7_26
# BB#25:                                # %if.then.157
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	48(%rax), %rdi
	callq	gtk_widget_show
.LBB7_26:                               # %if.end.160
	movabsq	$.L.str.17, %rsi
	movabsq	$toolbox_area_notify, %rax
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	136(%rdx), %rdx
	movq	48(%rdx), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -424(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-424(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	(%rcx), %rsi
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	toolbox_create_image_area
	movq	-16(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	%rax, 56(%rcx)
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gtk_wrap_box_get_type
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r8d
	xorl	%r9d, %r9d
	movq	-16(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	56(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	movl	%r8d, -444(%rbp)        # 4-byte Spill
	movl	%r9d, %r8d
	movl	-444(%rbp), %r9d        # 4-byte Reload
	callq	gtk_wrap_box_pack
	movq	-24(%rbp), %rax
	cmpl	$0, 640(%rax)
	je	.LBB7_28
# BB#27:                                # %if.then.175
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	56(%rax), %rdi
	callq	gtk_widget_show
.LBB7_28:                               # %if.end.178
	movabsq	$.L.str.18, %rsi
	movabsq	$toolbox_area_notify, %rax
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	136(%rdx), %rdx
	movq	56(%rdx), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -456(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-456(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_object
	movq	-16(%rbp), %rcx
	movq	%rax, -464(%rbp)        # 8-byte Spill
	movq	%rcx, -472(%rbp)        # 8-byte Spill
	callq	gimp_toolbox_get_type
	movq	-472(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	8(%rcx), %rsi
	movq	%rax, %rdi
	callq	gimp_toolbox_dnd_init
	addq	$480, %rsp              # imm = 0x1E0
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_toolbox_constructed, .Lfunc_end7-gimp_toolbox_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_toolbox_dispose,@function
gimp_toolbox_dispose:                   # @gimp_toolbox_dispose
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_toolbox_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movl	$1, 80(%rax)
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	$0, (%rax)
.LBB8_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_toolbox_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movl	$0, 80(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_toolbox_dispose, .Lfunc_end8-gimp_toolbox_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_toolbox_set_property,@function
gimp_toolbox_set_property:              # @gimp_toolbox_set_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_toolbox_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB9_2
	jmp	.LBB9_1
.LBB9_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_dup_object
	movq	-40(%rbp), %rdi
	movq	136(%rdi), %rdi
	movq	%rax, (%rdi)
	jmp	.LBB9_5
.LBB9_2:                                # %sw.default
	jmp	.LBB9_3
.LBB9_3:                                # %do.body
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
	movabsq	$.L.str.23, %rdi
	movabsq	$.L.str.7, %rsi
	movl	$364, %edx              # imm = 0x16C
	movabsq	$.L.str.24, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB9_5
.LBB9_5:                                # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_toolbox_set_property, .Lfunc_end9-gimp_toolbox_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_toolbox_get_property,@function
gimp_toolbox_get_property:              # @gimp_toolbox_get_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_toolbox_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB10_2
	jmp	.LBB10_1
.LBB10_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	136(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB10_5
.LBB10_2:                               # %sw.default
	jmp	.LBB10_3
.LBB10_3:                               # %do.body
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
	movabsq	$.L.str.23, %rdi
	movabsq	$.L.str.7, %rsi
	movl	$384, %edx              # imm = 0x180
	movabsq	$.L.str.24, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB10_5
.LBB10_5:                               # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_toolbox_get_property, .Lfunc_end10-gimp_toolbox_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_toolbox_size_allocate,@function
gimp_toolbox_size_allocate:             # @gimp_toolbox_size_allocate
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gimp_toolbox_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	gimp_toolbox_parent_class, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	248(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_gui_config_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-40(%rbp), %rsi
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movq	40(%rax), %rdi
	callq	gtk_widget_size_request
	leaq	-48(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movq	48(%rax), %rdi
	callq	gtk_widget_size_request
	leaq	-56(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movq	56(%rax), %rdi
	callq	gtk_widget_size_request
	movl	-40(%rbp), %ecx
	movl	-48(%rbp), %edx
	cmpl	-56(%rbp), %edx
	movl	%ecx, -108(%rbp)        # 4-byte Spill
	jle	.LBB11_2
# BB#1:                                 # %cond.true
	movl	-48(%rbp), %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB11_3
.LBB11_2:                               # %cond.false
	movl	-56(%rbp), %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB11_3:                               # %cond.end
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	-108(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB11_5
# BB#4:                                 # %cond.true.16
	movl	-40(%rbp), %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB11_9
.LBB11_5:                               # %cond.false.18
	movl	-48(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jle	.LBB11_7
# BB#6:                                 # %cond.true.22
	movl	-48(%rbp), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB11_8
.LBB11_7:                               # %cond.false.24
	movl	-56(%rbp), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB11_8:                               # %cond.end.26
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB11_9:                               # %cond.end.28
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	%eax, -60(%rbp)
	movl	-36(%rbp), %eax
	movl	-44(%rbp), %ecx
	cmpl	-52(%rbp), %ecx
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jle	.LBB11_11
# BB#10:                                # %cond.true.34
	movl	-44(%rbp), %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB11_12
.LBB11_11:                              # %cond.false.36
	movl	-52(%rbp), %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB11_12:                              # %cond.end.38
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	-124(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB11_14
# BB#13:                                # %cond.true.41
	movl	-36(%rbp), %eax
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB11_18
.LBB11_14:                              # %cond.false.43
	movl	-44(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jle	.LBB11_16
# BB#15:                                # %cond.true.47
	movl	-44(%rbp), %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB11_17
.LBB11_16:                              # %cond.false.49
	movl	-52(%rbp), %eax
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB11_17:                              # %cond.end.51
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	%eax, -132(%rbp)        # 4-byte Spill
.LBB11_18:                              # %cond.end.53
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	$1, %ecx
	movl	%eax, -64(%rbp)
	movq	-32(%rbp), %rdx
	movl	632(%rdx), %eax
	movq	-32(%rbp), %rdx
	addl	636(%rdx), %eax
	movq	-32(%rbp), %rdx
	addl	640(%rdx), %eax
	movl	%eax, -68(%rbp)
	movq	-16(%rbp), %rdx
	movl	8(%rdx), %eax
	cltd
	idivl	-60(%rbp)
	cmpl	%eax, %ecx
	jle	.LBB11_20
# BB#19:                                # %cond.true.58
	movl	$1, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB11_21
.LBB11_20:                              # %cond.false.59
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	cltd
	idivl	-60(%rbp)
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB11_21:                              # %cond.end.62
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	%eax, -76(%rbp)
	movl	-68(%rbp), %eax
	cltd
	idivl	-76(%rbp)
	movl	%eax, -72(%rbp)
	movl	-68(%rbp), %eax
	cltd
	idivl	-76(%rbp)
	cmpl	$0, %edx
	je	.LBB11_23
# BB#22:                                # %if.then
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
.LBB11_23:                              # %if.end
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movl	64(%rax), %ecx
	cmpl	-72(%rbp), %ecx
	jne	.LBB11_25
# BB#24:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movl	68(%rax), %ecx
	cmpl	-76(%rbp), %ecx
	je	.LBB11_26
.LBB11_25:                              # %if.then.71
	movl	$4294967295, %esi       # imm = 0xFFFFFFFF
	movl	-72(%rbp), %eax
	movq	-24(%rbp), %rcx
	movq	136(%rcx), %rcx
	movl	%eax, 64(%rcx)
	movl	-76(%rbp), %eax
	movq	-24(%rbp), %rcx
	movq	136(%rcx), %rcx
	movl	%eax, 68(%rcx)
	movq	-24(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	32(%rcx), %rdi
	movl	-72(%rbp), %eax
	imull	-64(%rbp), %eax
	movl	%eax, %edx
	callq	gtk_widget_set_size_request
.LBB11_26:                              # %if.end.77
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_toolbox_size_allocate, .Lfunc_end11-gimp_toolbox_size_allocate
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_toolbox_button_press_event,@function
gimp_toolbox_button_press_event:        # @gimp_toolbox_button_press_event
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_toolbox_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$4, (%rax)
	jne	.LBB12_3
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	cmpl	$2, 52(%rax)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$1, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_clipboard
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	136(%rax), %rax
	movq	(%rax), %rax
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_object_ref
	movabsq	$toolbox_paste_received, %rsi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gtk_clipboard_request_text
	movl	$1, -4(%rbp)
	jmp	.LBB12_4
.LBB12_3:                               # %if.end
	movl	$0, -4(%rbp)
.LBB12_4:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_toolbox_button_press_event, .Lfunc_end12-gimp_toolbox_button_press_event
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_toolbox_get_description,@function
gimp_toolbox_get_description:           # @gimp_toolbox_get_description
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
	subq	$64, %rsp
	movabsq	$.L.str.26, %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rax, %rdi
	callq	gettext
	movq	%rax, %rdi
	callq	g_string_new
	movq	%rax, -24(%rbp)
	movq	gimp_toolbox_parent_class, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_dock_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	824(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	*%rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB13_3
# BB#1:                                 # %land.lhs.true
	movq	-32(%rbp), %rdi
	callq	strlen
	cmpq	$0, %rax
	jbe	.LBB13_3
# BB#2:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.27, %rsi
	movl	$5, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	g_dpgettext
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_string_append
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	g_string_append
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB13_3:                               # %if.end
	movq	-32(%rbp), %rdi
	callq	g_free
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	callq	g_string_free
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_toolbox_get_description, .Lfunc_end13-gimp_toolbox_get_description
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_toolbox_set_host_geometry_hints,@function
gimp_toolbox_set_host_geometry_hints:   # @gimp_toolbox_set_host_geometry_hints
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	callq	gimp_toolbox_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_tool_palette_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-28(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_tool_palette_get_button_size
	cmpl	$0, %eax
	je	.LBB14_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-88(%rbp), %rdx
	movl	$170, %ecx
	movl	-28(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -88(%rbp)
	movl	$-1, -84(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	$0, -68(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	$1, -60(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_window_set_geometry_hints
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_dialog_factory_set_has_min_size
.LBB14_2:                               # %if.end
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_toolbox_set_host_geometry_hints, .Lfunc_end14-gimp_toolbox_set_host_geometry_hints
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_toolbox_book_added,@function
gimp_toolbox_book_added:                # @gimp_toolbox_book_added
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	gimp_toolbox_parent_class, %rsi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	gimp_dock_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	cmpq	$0, 840(%rax)
	je	.LBB15_2
# BB#1:                                 # %if.then
	movq	gimp_toolbox_parent_class, %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_dock_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	840(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
.LBB15_2:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	gimp_dock_get_dockbooks
	movq	%rax, %rdi
	callq	g_list_length
	cmpl	$1, %eax
	jne	.LBB15_4
# BB#3:                                 # %if.then.7
	movq	-8(%rbp), %rdi
	callq	gimp_dock_invalidate_geometry
.LBB15_4:                               # %if.end.8
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_toolbox_book_added, .Lfunc_end15-gimp_toolbox_book_added
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_toolbox_book_removed,@function
gimp_toolbox_book_removed:              # @gimp_toolbox_book_removed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_toolbox_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	gimp_toolbox_parent_class, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_dock_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	cmpq	$0, 848(%rax)
	je	.LBB16_2
# BB#1:                                 # %if.then
	movq	gimp_toolbox_parent_class, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_dock_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	848(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
.LBB16_2:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	gimp_dock_get_dockbooks
	cmpq	$0, %rax
	jne	.LBB16_5
# BB#3:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	136(%rax), %rax
	cmpl	$0, 80(%rax)
	jne	.LBB16_5
# BB#4:                                 # %if.then.10
	movq	-8(%rbp), %rdi
	callq	gimp_dock_invalidate_geometry
.LBB16_5:                               # %if.end.11
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_toolbox_book_removed, .Lfunc_end16-gimp_toolbox_book_removed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_toolbox_drag_leave,@function
gimp_toolbox_drag_leave:                # @gimp_toolbox_drag_leave
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movl	%eax, %esi
	callq	gimp_highlight_widget
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_toolbox_drag_leave, .Lfunc_end17-gimp_toolbox_drag_leave
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_toolbox_drag_motion,@function
gimp_toolbox_drag_motion:               # @gimp_toolbox_drag_motion
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %rsi
	movq	136(%rsi), %rsi
	movq	72(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	movl	-36(%rbp), %r9d
	callq	gimp_paned_box_will_handle_drag
	cmpl	$0, %eax
	je	.LBB18_2
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	movl	-36(%rbp), %edx
	callq	gdk_drag_status
	xorl	%esi, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_highlight_widget
	movl	$0, -4(%rbp)
	jmp	.LBB18_3
.LBB18_2:                               # %if.end
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gtk_drag_dest_find_target
	xorl	%ecx, %ecx
	movl	$4, %r8d
	cmpq	$0, %rax
	setne	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %r10d
	movl	%r10d, -52(%rbp)
	movq	-24(%rbp), %rdi
	cmpl	$0, -52(%rbp)
	cmovnel	%r8d, %ecx
	movl	-36(%rbp), %edx
	movl	%ecx, %esi
	callq	gdk_drag_status
	movq	-16(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	gimp_highlight_widget
	movl	$1, -4(%rbp)
.LBB18_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_toolbox_drag_motion, .Lfunc_end18-gimp_toolbox_drag_motion
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_toolbox_drag_drop,@function
gimp_toolbox_drag_drop:                 # @gimp_toolbox_drag_drop
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	%r9, -48(%rbp)
	movl	$0, -60(%rbp)
	movq	-48(%rbp), %rsi
	movq	136(%rsi), %rsi
	movq	72(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	movl	-36(%rbp), %r9d
	callq	gimp_paned_box_will_handle_drag
	cmpl	$0, %eax
	je	.LBB19_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB19_5
.LBB19_2:                               # %if.end
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gtk_drag_dest_find_target
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	je	.LBB19_4
# BB#3:                                 # %if.then.2
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movl	-36(%rbp), %ecx
	callq	gtk_drag_get_data
	movl	$1, -60(%rbp)
.LBB19_4:                               # %if.end.3
	movq	-24(%rbp), %rdi
	movl	-60(%rbp), %esi
	movq	-24(%rbp), %rax
	cmpl	$4, 64(%rax)
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	-36(%rbp), %ecx
	callq	gtk_drag_finish
	movl	$1, -4(%rbp)
.LBB19_5:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_toolbox_drag_drop, .Lfunc_end19-gimp_toolbox_drag_drop
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI20_0:
	.quad	4605681218924226942     # double 0.83333333333329995
	.text
	.align	16, 0x90
	.type	gimp_toolbox_size_request_wilber,@function
gimp_toolbox_size_request_wilber:       # @gimp_toolbox_size_request_wilber
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	136(%rdx), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	gimp_tool_palette_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-28(%rbp), %rsi
	leaq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_tool_palette_get_button_size
	cmpl	$0, %eax
	je	.LBB20_2
# BB#1:                                 # %if.then
	movsd	.LCPI20_0, %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-28(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	cvtsi2sdl	-32(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 4(%rcx)
	jmp	.LBB20_3
.LBB20_2:                               # %if.else
	movq	-16(%rbp), %rax
	movl	$16, (%rax)
	movq	-16(%rbp), %rax
	movl	$16, 4(%rax)
.LBB20_3:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_toolbox_size_request_wilber, .Lfunc_end20-gimp_toolbox_size_request_wilber
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_toolbox_expose_wilber,@function
gimp_toolbox_expose_wilber:             # @gimp_toolbox_expose_wilber
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_window
	movq	%rax, %rdi
	callq	gdk_cairo_create
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rsi
	callq	gdk_cairo_region
	movq	-24(%rbp), %rdi
	callq	cairo_clip
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_cairo_draw_toolbox_wilber
	movq	-24(%rbp), %rdi
	callq	cairo_destroy
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_toolbox_expose_wilber, .Lfunc_end21-gimp_toolbox_expose_wilber
	.cfi_endproc

	.align	16, 0x90
	.type	toolbox_wilber_notify,@function
toolbox_wilber_notify:                  # @toolbox_wilber_notify
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
	subq	$32, %rsp
	leaq	-28(%rbp), %rax
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movb	$0, %al
	callq	g_object_get
	movabsq	$.L.str.19, %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %r8d
	movq	%rdx, %rdi
	movl	%r8d, %edx
	movb	$0, %al
	callq	g_object_set
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	toolbox_wilber_notify, .Lfunc_end22-toolbox_wilber_notify
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI23_0:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	toolbox_create_color_area,@function
toolbox_create_color_area:              # @toolbox_create_color_area
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
	movss	.LCPI23_0, %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movss	%xmm0, -36(%rbp)        # 4-byte Spill
	movss	-36(%rbp), %xmm2        # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	%xmm1, -40(%rbp)        # 4-byte Spill
	movaps	%xmm2, %xmm1
	movss	-40(%rbp), %xmm2        # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	-40(%rbp), %xmm3        # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	callq	gtk_alignment_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.20, %rdx
	movq	-24(%rbp), %rdi
	callq	gimp_help_set_help_data
	movl	$54, %esi
	movl	$42, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_toolbox_color_area_create
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	toolbox_create_color_area, .Lfunc_end23-toolbox_create_color_area
	.cfi_endproc

	.align	16, 0x90
	.type	toolbox_area_notify,@function
toolbox_area_notify:                    # @toolbox_area_notify
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_parent
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 632(%rax)
	jne	.LBB24_3
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	cmpl	$0, 636(%rax)
	jne	.LBB24_3
# BB#2:                                 # %lor.lhs.false.2
	movq	-8(%rbp), %rax
	cmpl	$0, 640(%rax)
	je	.LBB24_4
.LBB24_3:                               # %if.then
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	leaq	-48(%rbp), %rsi
	movq	-24(%rbp), %rdi
	callq	gtk_widget_size_request
	movq	-32(%rbp), %rdi
	movl	-48(%rbp), %esi
	movl	-44(%rbp), %edx
	callq	gtk_widget_set_size_request
	jmp	.LBB24_5
.LBB24_4:                               # %if.else
	movq	-32(%rbp), %rdi
	callq	gtk_widget_hide
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	gtk_widget_set_size_request
.LBB24_5:                               # %if.end
	leaq	-36(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movb	$0, %al
	callq	g_object_get
	movabsq	$.L.str.19, %rsi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-24(%rbp), %rdx
	movl	-36(%rbp), %r8d
	movq	%rdx, %rdi
	movl	%r8d, %edx
	movb	$0, %al
	callq	g_object_set
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	toolbox_area_notify, .Lfunc_end24-toolbox_area_notify
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI25_0:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	toolbox_create_foo_area,@function
toolbox_create_foo_area:                # @toolbox_create_foo_area
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movss	.LCPI25_0, %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movss	%xmm0, -36(%rbp)        # 4-byte Spill
	movss	-36(%rbp), %xmm2        # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	%xmm1, -40(%rbp)        # 4-byte Spill
	movaps	%xmm2, %xmm1
	movss	-40(%rbp), %xmm2        # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	-40(%rbp), %xmm3        # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	callq	gtk_alignment_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.21, %rdx
	movq	-24(%rbp), %rdi
	callq	gimp_help_set_help_data
	movq	-8(%rbp), %rdi
	callq	gimp_toolbox_indicator_area_create
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	toolbox_create_foo_area, .Lfunc_end25-toolbox_create_foo_area
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI26_0:
	.long	1056964608              # float 0.5
	.text
	.align	16, 0x90
	.type	toolbox_create_image_area,@function
toolbox_create_image_area:              # @toolbox_create_image_area
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movss	.LCPI26_0, %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movss	%xmm0, -36(%rbp)        # 4-byte Spill
	movss	-36(%rbp), %xmm2        # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	%xmm1, -40(%rbp)        # 4-byte Spill
	movaps	%xmm2, %xmm1
	movss	-40(%rbp), %xmm2        # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movss	-40(%rbp), %xmm3        # 4-byte Reload
                                        # xmm3 = mem[0],zero,zero,zero
	callq	gtk_alignment_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movabsq	$.L.str.22, %rdx
	movq	-24(%rbp), %rdi
	callq	gimp_help_set_help_data
	movl	$52, %esi
	movl	$42, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_toolbox_image_area_create
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-32(%rbp), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	toolbox_create_image_area, .Lfunc_end26-toolbox_create_image_area
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
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
	je	.LBB27_2
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
.LBB27_2:                               # %entry
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
.Lfunc_end27:
	.size	g_warning, .Lfunc_end27-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	toolbox_paste_received,@function
toolbox_paste_received:                 # @toolbox_paste_received
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	callq	gimp_context_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB28_10
# BB#1:                                 # %if.then
	movl	$10, %esi
	movq	-16(%rbp), %rdi
	callq	strchr
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB28_3
# BB#2:                                 # %if.then.4
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, %rsi
	callq	g_strndup
	movq	%rax, -48(%rbp)
	jmp	.LBB28_4
.LBB28_3:                               # %if.else
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -48(%rbp)
.LBB28_4:                               # %if.end
	movq	-48(%rbp), %rdi
	callq	g_strchug
	movq	%rax, %rdi
	callq	g_strchomp
	movq	-48(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	strlen
	cmpq	$0, %rax
	je	.LBB28_9
# BB#5:                                 # %if.then.11
	xorl	%eax, %eax
	movl	%eax, %edx
	xorl	%r8d, %r8d
	leaq	-60(%rbp), %r9
	leaq	-72(%rbp), %rcx
	movq	$0, -72(%rbp)
	movq	-32(%rbp), %rsi
	movq	32(%rsi), %rdi
	movq	-32(%rbp), %rsi
	movq	-48(%rbp), %r10
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movq	%r10, %rcx
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	file_open_with_display
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB28_8
# BB#6:                                 # %land.lhs.true
	cmpl	$4, -60(%rbp)
	je	.LBB28_8
# BB#7:                                 # %if.then.14
	movq	-48(%rbp), %rdi
	callq	file_utils_uri_display_name
	movabsq	$.L.str.25, %rdi
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gettext
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$2, %edx
	movq	-80(%rbp), %r8
	movq	-72(%rbp), %rdi
	movq	8(%rdi), %r9
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	gimp_message
	leaq	-72(%rbp), %rdi
	callq	g_clear_error
	movq	-80(%rbp), %rdi
	callq	g_free
.LBB28_8:                               # %if.end.18
	jmp	.LBB28_9
.LBB28_9:                               # %if.end.19
	movq	-48(%rbp), %rdi
	callq	g_free
.LBB28_10:                              # %if.end.20
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	toolbox_paste_received, .Lfunc_end28-toolbox_paste_received
	.cfi_endproc

	.type	gimp_toolbox_get_type.g_define_type_id__volatile,@object # @gimp_toolbox_get_type.g_define_type_id__volatile
	.local	gimp_toolbox_get_type.g_define_type_id__volatile
	.comm	gimp_toolbox_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpToolbox"
	.size	.L.str, 12

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_toolbox_new,@object # @__func__.gimp_toolbox_new
.L__func__.gimp_toolbox_new:
	.asciz	"gimp_toolbox_new"
	.size	.L__func__.gimp_toolbox_new, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_DIALOG_FACTORY (factory)"
	.size	.L.str.2, 33

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.3, 26

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_UI_MANAGER (ui_manager)"
	.size	.L.str.4, 32

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"context"
	.size	.L.str.5, 8

	.type	.L__func__.gimp_toolbox_get_context,@object # @__func__.gimp_toolbox_get_context
.L__func__.gimp_toolbox_get_context:
	.asciz	"gimp_toolbox_get_context"
	.size	.L__func__.gimp_toolbox_get_context, 25

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"GIMP_IS_TOOLBOX (toolbox)"
	.size	.L.str.6, 26

	.type	.L__func__.gimp_toolbox_set_drag_handler,@object # @__func__.gimp_toolbox_set_drag_handler
.L__func__.gimp_toolbox_set_drag_handler:
	.asciz	"gimp_toolbox_set_drag_handler"
	.size	.L__func__.gimp_toolbox_set_drag_handler, 30

	.type	gimp_toolbox_parent_class,@object # @gimp_toolbox_parent_class
	.local	gimp_toolbox_parent_class
	.comm	gimp_toolbox_parent_class,8,8
	.type	GimpToolbox_private_offset,@object # @GimpToolbox_private_offset
	.local	GimpToolbox_private_offset
	.comm	GimpToolbox_private_offset,4,4
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimptoolbox.c"
	.size	.L.str.7, 14

	.type	.L__func__.gimp_toolbox_constructed,@object # @__func__.gimp_toolbox_constructed
.L__func__.gimp_toolbox_constructed:
	.asciz	"gimp_toolbox_constructed"
	.size	.L__func__.gimp_toolbox_constructed, 25

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP_IS_CONTEXT (toolbox->p->context)"
	.size	.L.str.8, 38

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"drag-leave"
	.size	.L.str.9, 11

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"drag-motion"
	.size	.L.str.10, 12

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"drag-drop"
	.size	.L.str.11, 10

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"size-request"
	.size	.L.str.12, 13

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"expose-event"
	.size	.L.str.13, 13

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Drop image files here to open them"
	.size	.L.str.14, 35

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"notify::toolbox-wilber"
	.size	.L.str.15, 23

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"notify::toolbox-color-area"
	.size	.L.str.16, 27

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"notify::toolbox-foo-area"
	.size	.L.str.17, 25

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"notify::toolbox-image-area"
	.size	.L.str.18, 27

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"visible"
	.size	.L.str.19, 8

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gimp-toolbox-color-area"
	.size	.L.str.20, 24

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimp-toolbox-indicator-area"
	.size	.L.str.21, 28

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gimp-toolbox-image-area"
	.size	.L.str.22, 24

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.23, 54

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"property"
	.size	.L.str.24, 9

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Opening '%s' failed:\n\n%s"
	.size	.L.str.25, 25

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Toolbox"
	.size	.L.str.26, 8

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"dock\004 - "
	.size	.L.str.27, 9

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gimp-toolbox"
	.size	.L.str.28, 13


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
