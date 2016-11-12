	.text
	.file	"gimpsettingseditor.bc"
	.globl	gimp_settings_editor_get_type
	.align	16, 0x90
	.type	gimp_settings_editor_get_type,@function
gimp_settings_editor_get_type:          # @gimp_settings_editor_get_type
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
	movq	gimp_settings_editor_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_settings_editor_get_type.g_define_type_id__volatile, %rax
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
	callq	gtk_box_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$824, %edx              # imm = 0x338
	movabsq	$gimp_settings_editor_class_intern_init, %rdi
	movl	$128, %r8d
	movabsq	$gimp_settings_editor_init, %rcx
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
	movabsq	$gimp_settings_editor_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_settings_editor_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_settings_editor_get_type, .Lfunc_end0-gimp_settings_editor_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_settings_editor_class_intern_init,@function
gimp_settings_editor_class_intern_init: # @gimp_settings_editor_class_intern_init
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
	movq	%rax, gimp_settings_editor_parent_class
	cmpl	$0, GimpSettingsEditor_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpSettingsEditor_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_settings_editor_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_settings_editor_class_intern_init, .Lfunc_end1-gimp_settings_editor_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_settings_editor_init,@function
gimp_settings_editor_init:              # @gimp_settings_editor_init
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
	callq	gtk_orientable_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gtk_orientable_set_orientation
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_box_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$6, %esi
	movq	%rax, %rdi
	callq	gtk_box_set_spacing
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_settings_editor_init, .Lfunc_end2-gimp_settings_editor_init
	.cfi_endproc

	.globl	gimp_settings_editor_new
	.align	16, 0x90
	.type	gimp_settings_editor_new,@function
gimp_settings_editor_new:               # @gimp_settings_editor_new
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
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_get_type
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
	movabsq	$.L__func__.gimp_settings_editor_new, %rsi
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
	callq	gimp_config_interface_get_type
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
	movabsq	$.L__func__.gimp_settings_editor_new, %rsi
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
	callq	gimp_container_get_type
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
	movabsq	$.L__func__.gimp_settings_editor_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_37
.LBB3_35:                               # %if.end.65
	jmp	.LBB3_36
.LBB3_36:                               # %do.end.66
	callq	gimp_settings_editor_get_type
	movabsq	$.L.str.5, %rsi
	movabsq	$.L.str.6, %rcx
	movabsq	$.L.str.7, %r9
	xorl	%edx, %edx
	movl	%edx, %edi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %r8
	movq	-32(%rbp), %r10
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%r10, (%rsp)
	movq	$0, 8(%rsp)
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -8(%rbp)
.LBB3_37:                               # %return
	movq	-8(%rbp), %rax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_settings_editor_new, .Lfunc_end3-gimp_settings_editor_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_settings_editor_class_init,@function
gimp_settings_editor_class_init:        # @gimp_settings_editor_class_init
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
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$gimp_settings_editor_get_property, %rsi
	movabsq	$gimp_settings_editor_set_property, %rdi
	movabsq	$gimp_settings_editor_finalize, %rcx
	movabsq	$gimp_settings_editor_constructed, %rdx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdx, 72(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 48(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 32(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_get_type
	movabsq	$.L.str.5, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movl	$235, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movabsq	$.L.str.6, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$235, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$2, %esi
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_container_get_type
	movabsq	$.L.str.7, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$235, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$3, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movl	$64, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_settings_editor_class_init, .Lfunc_end4-gimp_settings_editor_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_settings_editor_constructed,@function
gimp_settings_editor_constructed:       # @gimp_settings_editor_constructed
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
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_settings_editor_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_settings_editor_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	gimp_settings_editor_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_settings_editor_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB5_2:                                # %if.end
	jmp	.LBB5_3
.LBB5_3:                                # %do.body
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB5_5
# BB#4:                                 # %if.then.9
	movl	$0, -52(%rbp)
	jmp	.LBB5_10
.LBB5_5:                                # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_8
# BB#6:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB5_8
# BB#7:                                 # %if.then.12
	movl	$1, -52(%rbp)
	jmp	.LBB5_9
.LBB5_8:                                # %if.else.13
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB5_9:                                # %if.end.15
	jmp	.LBB5_10
.LBB5_10:                               # %if.end.16
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB5_12
# BB#11:                                # %if.then.18
	jmp	.LBB5_13
.LBB5_12:                               # %if.else.19
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.8, %rsi
	movl	$166, %edx
	movabsq	$.L__func__.gimp_settings_editor_constructed, %rcx
	movabsq	$.L.str.9, %r8
	callq	g_assertion_message_expr
.LBB5_13:                               # %if.end.20
	jmp	.LBB5_14
.LBB5_14:                               # %do.end
	jmp	.LBB5_15
.LBB5_15:                               # %do.body.21
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_config_interface_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB5_17
# BB#16:                                # %if.then.30
	movl	$0, -76(%rbp)
	jmp	.LBB5_22
.LBB5_17:                               # %if.else.31
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_20
# BB#18:                                # %land.lhs.true.34
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB5_20
# BB#19:                                # %if.then.38
	movl	$1, -76(%rbp)
	jmp	.LBB5_21
.LBB5_20:                               # %if.else.39
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB5_21:                               # %if.end.41
	jmp	.LBB5_22
.LBB5_22:                               # %if.end.42
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB5_24
# BB#23:                                # %if.then.45
	jmp	.LBB5_25
.LBB5_24:                               # %if.else.46
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.8, %rsi
	movl	$167, %edx
	movabsq	$.L__func__.gimp_settings_editor_constructed, %rcx
	movabsq	$.L.str.10, %r8
	callq	g_assertion_message_expr
.LBB5_25:                               # %if.end.47
	jmp	.LBB5_26
.LBB5_26:                               # %do.end.48
	jmp	.LBB5_27
.LBB5_27:                               # %do.body.49
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB5_29
# BB#28:                                # %if.then.58
	movl	$0, -100(%rbp)
	jmp	.LBB5_34
.LBB5_29:                               # %if.else.59
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_32
# BB#30:                                # %land.lhs.true.62
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB5_32
# BB#31:                                # %if.then.66
	movl	$1, -100(%rbp)
	jmp	.LBB5_33
.LBB5_32:                               # %if.else.67
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB5_33:                               # %if.end.69
	jmp	.LBB5_34
.LBB5_34:                               # %if.end.70
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB5_36
# BB#35:                                # %if.then.73
	jmp	.LBB5_37
.LBB5_36:                               # %if.else.74
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.8, %rsi
	movl	$168, %edx
	movabsq	$.L__func__.gimp_settings_editor_constructed, %rcx
	movabsq	$.L.str.11, %r8
	callq	g_assertion_message_expr
.LBB5_37:                               # %if.end.75
	jmp	.LBB5_38
.LBB5_38:                               # %do.end.76
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_get_user_context
	movl	$16, %edx
	xorl	%ecx, %ecx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_tree_view_new
	movl	$200, %ecx
	movq	-24(%rbp), %rsi
	movq	%rax, 32(%rsi)
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	movl	%ecx, %esi
	movl	%ecx, %edx
	callq	gtk_widget_set_size_request
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-24(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_settings_editor_row_separator_func, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	288(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdx
	callq	gtk_tree_view_set_row_separator_func
	movabsq	$.L.str.12, %rsi
	movabsq	$gimp_settings_editor_select_item, %rax
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-152(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$gimp_settings_editor_name_edited, %rcx
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_container_tree_view_connect_name_edited
	movq	-32(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.14, %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.13, %rsi
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	movabsq	$gimp_settings_editor_import_clicked, %rdx
	movq	-16(%rbp), %rdi
	movq	-176(%rbp), %r8         # 8-byte Reload
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rdx, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	movq	-192(%rbp), %r8         # 8-byte Reload
	movq	-200(%rbp), %r9         # 8-byte Reload
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	gimp_editor_add_button
	movq	-24(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.16, %rdi
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.15, %rsi
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movabsq	$gimp_settings_editor_export_clicked, %rdx
	movq	-16(%rbp), %rdi
	movq	-216(%rbp), %r8         # 8-byte Reload
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rdx, -232(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	movq	-232(%rbp), %r8         # 8-byte Reload
	movq	-240(%rbp), %r9         # 8-byte Reload
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	gimp_editor_add_button
	movq	-24(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.18, %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.17, %rsi
	xorl	%r10d, %r10d
	movl	%r10d, %ecx
	movabsq	$gimp_settings_editor_delete_clicked, %rdx
	movq	-16(%rbp), %rdi
	movq	-256(%rbp), %r8         # 8-byte Reload
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rdx, -272(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	movq	-272(%rbp), %r8         # 8-byte Reload
	movq	-280(%rbp), %r9         # 8-byte Reload
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	gimp_editor_add_button
	xorl	%esi, %esi
	movq	-24(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdi
	callq	gtk_widget_set_sensitive
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_settings_editor_constructed, .Lfunc_end5-gimp_settings_editor_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_settings_editor_finalize,@function
gimp_settings_editor_finalize:          # @gimp_settings_editor_finalize
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
	callq	gimp_settings_editor_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
.LBB6_2:                                # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB6_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
.LBB6_4:                                # %if.end.8
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_settings_editor_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_settings_editor_finalize, .Lfunc_end6-gimp_settings_editor_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_settings_editor_set_property,@function
gimp_settings_editor_set_property:      # @gimp_settings_editor_set_property
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
	callq	gimp_settings_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB7_1
	jmp	.LBB7_8
.LBB7_8:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB7_2
	jmp	.LBB7_9
.LBB7_9:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB7_3
	jmp	.LBB7_4
.LBB7_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi)
	jmp	.LBB7_7
.LBB7_2:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_dup_object
	movq	-40(%rbp), %rdi
	movq	%rax, 8(%rdi)
	jmp	.LBB7_7
.LBB7_3:                                # %sw.bb.5
	movq	-24(%rbp), %rdi
	callq	g_value_dup_object
	movq	-40(%rbp), %rdi
	movq	%rax, 16(%rdi)
	jmp	.LBB7_7
.LBB7_4:                                # %sw.default
	jmp	.LBB7_5
.LBB7_5:                                # %do.body
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
	movabsq	$.L.str.21, %rdi
	movabsq	$.L.str.8, %rsi
	movl	$264, %edx              # imm = 0x108
	movabsq	$.L.str.22, %rcx
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#6:                                 # %do.end
	jmp	.LBB7_7
.LBB7_7:                                # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_settings_editor_set_property, .Lfunc_end7-gimp_settings_editor_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_settings_editor_get_property,@function
gimp_settings_editor_get_property:      # @gimp_settings_editor_get_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_settings_editor_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB8_1
	jmp	.LBB8_8
.LBB8_8:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB8_2
	jmp	.LBB8_9
.LBB8_9:                                # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	je	.LBB8_3
	jmp	.LBB8_4
.LBB8_1:                                # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB8_7
.LBB8_2:                                # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB8_7
.LBB8_3:                                # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB8_7
.LBB8_4:                                # %sw.default
	jmp	.LBB8_5
.LBB8_5:                                # %do.body
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
	movabsq	$.L.str.21, %rdi
	movabsq	$.L.str.8, %rsi
	movl	$292, %edx              # imm = 0x124
	movabsq	$.L.str.22, %rcx
	movl	-92(%rbp), %r8d         # 4-byte Reload
	movq	-104(%rbp), %r9         # 8-byte Reload
	movq	-112(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#6:                                 # %do.end
	jmp	.LBB8_7
.LBB8_7:                                # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_settings_editor_get_property, .Lfunc_end8-gimp_settings_editor_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_settings_editor_row_separator_func,@function
gimp_settings_editor_row_separator_func: # @gimp_settings_editor_row_separator_func
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
	movl	$1, %eax
	leaq	-32(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, %edx
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-32(%rbp), %rdi
	callq	g_free
	cmpq	$0, -32(%rbp)
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_settings_editor_row_separator_func, .Lfunc_end9-gimp_settings_editor_row_separator_func
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_settings_editor_select_item,@function
gimp_settings_editor_select_item:       # @gimp_settings_editor_select_item
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	gimp_settings_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movl	$80, %r8d
	movl	%r8d, %esi
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movb	%r8b, %r9b
	movq	-40(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-40(%rbp), %rax
	cmpq	$0, 24(%rax)
	movb	%r9b, -57(%rbp)         # 1-byte Spill
	je	.LBB10_2
# BB#1:                                 # %land.rhs
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	cmpq	$0, %rax
	setne	%cl
	movb	%cl, -57(%rbp)          # 1-byte Spill
.LBB10_2:                               # %land.end
	movb	-57(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -44(%rbp)
	movq	-40(%rbp), %rdx
	movq	48(%rdx), %rdi
	movl	-44(%rbp), %esi
	callq	gtk_widget_set_sensitive
	movq	-40(%rbp), %rdx
	movq	56(%rdx), %rdi
	movl	-44(%rbp), %esi
	callq	gtk_widget_set_sensitive
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_settings_editor_select_item, .Lfunc_end10-gimp_settings_editor_select_item
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_settings_editor_name_edited,@function
gimp_settings_editor_name_edited:       # @gimp_settings_editor_name_edited
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	gimp_settings_editor_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_tree_path_new_from_string
	leaq	-88(%rbp), %rsi
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	144(%rax), %rdi
	movq	-56(%rbp), %rdx
	callq	gtk_tree_model_get_iter
	cmpl	$0, %eax
	je	.LBB11_12
# BB#1:                                 # %if.then
	leaq	-88(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-96(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-48(%rbp), %rax
	movq	144(%rax), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-96(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then.11
	movabsq	$.L.str.19, %rax
	movq	%rax, -112(%rbp)
.LBB11_3:                               # %if.end
	cmpq	$0, -24(%rbp)
	jne	.LBB11_5
# BB#4:                                 # %if.then.13
	movabsq	$.L.str.19, %rax
	movq	%rax, -24(%rbp)
.LBB11_5:                               # %if.end.14
	movq	-24(%rbp), %rdi
	callq	g_strdup
	movq	%rax, %rdi
	callq	g_strchug
	movq	%rax, %rdi
	callq	g_strchomp
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rdi
	callq	strlen
	cmpq	$0, %rax
	je	.LBB11_10
# BB#6:                                 # %land.lhs.true
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB11_10
# BB#7:                                 # %if.then.22
	movabsq	$.L.str.20, %rsi
	leaq	-124(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-104(%rbp), %rdi
	movb	$0, %al
	callq	g_object_get
	cmpl	$0, -124(%rbp)
	jbe	.LBB11_9
# BB#8:                                 # %if.then.23
	movabsq	$.L.str.20, %rsi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-104(%rbp), %rdi
	movb	$0, %al
	callq	g_object_set
.LBB11_9:                               # %if.end.24
	movq	-104(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	gimp_object_take_name
	jmp	.LBB11_11
.LBB11_10:                              # %if.else
	movq	-120(%rbp), %rdi
	callq	g_free
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-96(%rbp), %rdi
	movq	40(%rdi), %rdi
	callq	gimp_viewable_get_description
	movq	%rax, -120(%rbp)
	movq	-48(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-88(%rbp), %rsi
	movl	$1, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-120(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_tree_store_set
	movq	-120(%rbp), %rdi
	callq	g_free
.LBB11_11:                              # %if.end.30
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB11_12:                              # %if.end.31
	movq	-56(%rbp), %rdi
	callq	gtk_tree_path_free
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_settings_editor_name_edited, .Lfunc_end11-gimp_settings_editor_name_edited
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_settings_editor_import_clicked,@function
gimp_settings_editor_import_clicked:    # @gimp_settings_editor_import_clicked
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_settings_editor_import_clicked, .Lfunc_end12-gimp_settings_editor_import_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_settings_editor_export_clicked,@function
gimp_settings_editor_export_clicked:    # @gimp_settings_editor_export_clicked
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_settings_editor_export_clicked, .Lfunc_end13-gimp_settings_editor_export_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_settings_editor_delete_clicked,@function
gimp_settings_editor_delete_clicked:    # @gimp_settings_editor_delete_clicked
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_settings_editor_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB14_5
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_get_neighbor_of
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB14_4
# BB#2:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	cmpq	$0, %rax
	jne	.LBB14_4
# BB#3:                                 # %if.then.9
	movq	$0, -32(%rbp)
.LBB14_4:                               # %if.end
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_remove
	movq	-24(%rbp), %rsi
	movq	32(%rsi), %rsi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_view_select_item
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB14_5:                               # %if.end.20
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_settings_editor_delete_clicked, .Lfunc_end14-gimp_settings_editor_delete_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB15_2
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
.LBB15_2:                               # %entry
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
.Lfunc_end15:
	.size	g_warning, .Lfunc_end15-g_warning
	.cfi_endproc

	.type	gimp_settings_editor_get_type.g_define_type_id__volatile,@object # @gimp_settings_editor_get_type.g_define_type_id__volatile
	.local	gimp_settings_editor_get_type.g_define_type_id__volatile
	.comm	gimp_settings_editor_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpSettingsEditor"
	.size	.L.str, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_settings_editor_new,@object # @__func__.gimp_settings_editor_new
.L__func__.gimp_settings_editor_new:
	.asciz	"gimp_settings_editor_new"
	.size	.L__func__.gimp_settings_editor_new, 25

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_CONFIG (config)"
	.size	.L.str.3, 24

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GIMP_IS_CONTAINER (container)"
	.size	.L.str.4, 30

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"config"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"container"
	.size	.L.str.7, 10

	.type	gimp_settings_editor_parent_class,@object # @gimp_settings_editor_parent_class
	.local	gimp_settings_editor_parent_class
	.comm	gimp_settings_editor_parent_class,8,8
	.type	GimpSettingsEditor_private_offset,@object # @GimpSettingsEditor_private_offset
	.local	GimpSettingsEditor_private_offset
	.comm	GimpSettingsEditor_private_offset,4,4
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimpsettingseditor.c"
	.size	.L.str.8, 21

	.type	.L__func__.gimp_settings_editor_constructed,@object # @__func__.gimp_settings_editor_constructed
.L__func__.gimp_settings_editor_constructed:
	.asciz	"gimp_settings_editor_constructed"
	.size	.L__func__.gimp_settings_editor_constructed, 33

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"GIMP_IS_GIMP (private->gimp)"
	.size	.L.str.9, 29

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"GIMP_IS_CONFIG (private->config)"
	.size	.L.str.10, 33

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"GIMP_IS_CONTAINER (private->container)"
	.size	.L.str.11, 39

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"select-item"
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gtk-open"
	.size	.L.str.13, 9

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Import settings from a file"
	.size	.L.str.14, 28

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gtk-save"
	.size	.L.str.15, 9

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Export the selected settings to a file"
	.size	.L.str.16, 39

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gtk-delete"
	.size	.L.str.17, 11

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Delete the selected settings"
	.size	.L.str.18, 29

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.zero	1
	.size	.L.str.19, 1

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"time"
	.size	.L.str.20, 5

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.21, 54

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"property"
	.size	.L.str.22, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
