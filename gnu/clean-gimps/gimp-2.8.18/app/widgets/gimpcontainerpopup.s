	.text
	.file	"gimpcontainerpopup.bc"
	.globl	gimp_container_popup_get_type
	.align	16, 0x90
	.type	gimp_container_popup_get_type,@function
gimp_container_popup_get_type:          # @gimp_container_popup_get_type
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
	movq	gimp_container_popup_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_container_popup_get_type.g_define_type_id__volatile, %rax
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
	movl	$920, %edx              # imm = 0x398
	movabsq	$gimp_container_popup_class_intern_init, %rdi
	movl	$328, %r8d              # imm = 0x148
	movabsq	$gimp_container_popup_init, %rcx
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
	movabsq	$gimp_container_popup_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_container_popup_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_container_popup_get_type, .Lfunc_end0-gimp_container_popup_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_popup_class_intern_init,@function
gimp_container_popup_class_intern_init: # @gimp_container_popup_class_intern_init
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
	movq	%rax, gimp_container_popup_parent_class
	cmpl	$0, GimpContainerPopup_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpContainerPopup_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_container_popup_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_container_popup_class_intern_init, .Lfunc_end1-gimp_container_popup_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_popup_init,@function
gimp_container_popup_init:              # @gimp_container_popup_init
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
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$0, 264(%rdi)
	movq	-8(%rbp), %rdi
	movl	$24, 268(%rdi)
	movq	-8(%rbp), %rdi
	movl	$24, 272(%rdi)
	movq	-8(%rbp), %rdi
	movl	$1, 276(%rdi)
	movq	%rcx, %rdi
	callq	gtk_frame_new
	movq	-8(%rbp), %rcx
	movq	%rax, 280(%rcx)
	movq	-8(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	gtk_frame_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$2, %esi
	movq	%rax, %rdi
	callq	gtk_frame_set_shadow_type
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gtk_container_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rcx
	movq	280(%rcx), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-8(%rbp), %rax
	movq	280(%rax), %rdi
	callq	gtk_widget_show
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_container_popup_init, .Lfunc_end2-gimp_container_popup_init
	.cfi_endproc

	.globl	gimp_container_popup_new
	.align	16, 0x90
	.type	gimp_container_popup_new,@function
gimp_container_popup_new:               # @gimp_container_popup_new
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
	subq	$200, %rsp
.Ltmp12:
	.cfi_offset %rbx, -24
	movq	40(%rbp), %rax
	movq	32(%rbp), %r10
	movq	24(%rbp), %r11
	movq	16(%rbp), %rbx
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	%r9d, -48(%rbp)
	movq	%rbx, -56(%rbp)
	movq	%r11, -64(%rbp)
	movq	%r10, -72(%rbp)
	movq	%rax, -80(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -108(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -108(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_popup_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB3_75
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB3_15
# BB#14:                                # %if.then.20
	movl	$0, -132(%rbp)
	jmp	.LBB3_20
.LBB3_15:                               # %if.else.21
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_18
# BB#16:                                # %land.lhs.true.24
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB3_18
# BB#17:                                # %if.then.28
	movl	$1, -132(%rbp)
	jmp	.LBB3_19
.LBB3_18:                               # %if.else.29
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB3_19:                               # %if.end.31
	jmp	.LBB3_20
.LBB3_20:                               # %if.end.32
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB3_22
# BB#21:                                # %if.then.35
	jmp	.LBB3_23
.LBB3_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_popup_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB3_75
.LBB3_23:                               # %if.end.37
	jmp	.LBB3_24
.LBB3_24:                               # %do.end.38
	jmp	.LBB3_25
.LBB3_25:                               # %do.body.39
	cmpl	$0, -40(%rbp)
	jle	.LBB3_28
# BB#26:                                # %land.lhs.true.41
	cmpl	$256, -40(%rbp)         # imm = 0x100
	jg	.LBB3_28
# BB#27:                                # %if.then.43
	jmp	.LBB3_29
.LBB3_28:                               # %if.else.44
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_popup_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB3_75
.LBB3_29:                               # %if.end.45
	jmp	.LBB3_30
.LBB3_30:                               # %do.end.46
	jmp	.LBB3_31
.LBB3_31:                               # %do.body.47
	cmpl	$0, -44(%rbp)
	jle	.LBB3_34
# BB#32:                                # %land.lhs.true.49
	cmpl	$256, -44(%rbp)         # imm = 0x100
	jg	.LBB3_34
# BB#33:                                # %if.then.51
	jmp	.LBB3_35
.LBB3_34:                               # %if.else.52
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_popup_new, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB3_75
.LBB3_35:                               # %if.end.53
	jmp	.LBB3_36
.LBB3_36:                               # %do.end.54
	jmp	.LBB3_37
.LBB3_37:                               # %do.body.55
	cmpl	$0, -48(%rbp)
	jl	.LBB3_40
# BB#38:                                # %land.lhs.true.57
	cmpl	$16, -48(%rbp)
	jg	.LBB3_40
# BB#39:                                # %if.then.59
	jmp	.LBB3_41
.LBB3_40:                               # %if.else.60
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_popup_new, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB3_75
.LBB3_41:                               # %if.end.61
	jmp	.LBB3_42
.LBB3_42:                               # %do.end.62
	jmp	.LBB3_43
.LBB3_43:                               # %do.body.63
	cmpq	$0, -56(%rbp)
	je	.LBB3_52
# BB#44:                                # %lor.lhs.false
	movq	-56(%rbp), %rax
	movq	%rax, -144(%rbp)
	callq	gimp_dialog_factory_get_type
	movq	%rax, -152(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB3_46
# BB#45:                                # %if.then.73
	movl	$0, -156(%rbp)
	jmp	.LBB3_51
.LBB3_46:                               # %if.else.74
	movq	-144(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_49
# BB#47:                                # %land.lhs.true.77
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB3_49
# BB#48:                                # %if.then.81
	movl	$1, -156(%rbp)
	jmp	.LBB3_50
.LBB3_49:                               # %if.else.82
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -156(%rbp)
.LBB3_50:                               # %if.end.84
	jmp	.LBB3_51
.LBB3_51:                               # %if.end.85
	movl	-156(%rbp), %eax
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	je	.LBB3_53
.LBB3_52:                               # %if.then.88
	jmp	.LBB3_54
.LBB3_53:                               # %if.else.89
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_popup_new, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB3_75
.LBB3_54:                               # %if.end.90
	jmp	.LBB3_55
.LBB3_55:                               # %do.end.91
	cmpq	$0, -56(%rbp)
	je	.LBB3_72
# BB#56:                                # %if.then.93
	jmp	.LBB3_57
.LBB3_57:                               # %do.body.94
	cmpq	$0, -64(%rbp)
	je	.LBB3_59
# BB#58:                                # %if.then.96
	jmp	.LBB3_60
.LBB3_59:                               # %if.else.97
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_popup_new, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB3_75
.LBB3_60:                               # %if.end.98
	jmp	.LBB3_61
.LBB3_61:                               # %do.end.99
	jmp	.LBB3_62
.LBB3_62:                               # %do.body.100
	cmpq	$0, -72(%rbp)
	je	.LBB3_64
# BB#63:                                # %if.then.102
	jmp	.LBB3_65
.LBB3_64:                               # %if.else.103
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_popup_new, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB3_75
.LBB3_65:                               # %if.end.104
	jmp	.LBB3_66
.LBB3_66:                               # %do.end.105
	jmp	.LBB3_67
.LBB3_67:                               # %do.body.106
	cmpq	$0, -80(%rbp)
	je	.LBB3_69
# BB#68:                                # %if.then.108
	jmp	.LBB3_70
.LBB3_69:                               # %if.else.109
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_popup_new, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB3_75
.LBB3_70:                               # %if.end.110
	jmp	.LBB3_71
.LBB3_71:                               # %do.end.111
	jmp	.LBB3_72
.LBB3_72:                               # %if.end.112
	callq	gimp_container_popup_get_type
	movabsq	$.L.str.11, %rsi
	movl	$1, %edx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gtk_window_set_resizable
	movabsq	$.L.str.12, %rsi
	movq	-24(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, 240(%rcx)
	movq	-32(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, 248(%rcx)
	movq	-32(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-32(%rbp), %rdx
	callq	gimp_context_new
	movq	-88(%rbp), %rcx
	movq	%rax, 256(%rcx)
	movl	-36(%rbp), %r8d
	movq	-88(%rbp), %rax
	movl	%r8d, 264(%rax)
	movl	-40(%rbp), %r8d
	movq	-88(%rbp), %rax
	movl	%r8d, 268(%rax)
	movl	-44(%rbp), %r8d
	movq	-88(%rbp), %rax
	movl	%r8d, 272(%rax)
	movl	-48(%rbp), %r8d
	movq	-88(%rbp), %rax
	movl	%r8d, 276(%rax)
	movq	-88(%rbp), %rax
	movq	256(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_container_get_children_type
	movq	%rax, %rdi
	callq	gimp_context_type_to_signal_name
	movabsq	$gimp_container_popup_context_changed, %rcx
	xorl	%r8d, %r8d
                                        # kill: R8<def> R8D<kill>
	xorl	%r9d, %r9d
	movq	-88(%rbp), %rdx
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movq	%rdx, -184(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	-184(%rbp), %rcx        # 8-byte Reload
	callq	g_signal_connect_data
	cmpq	$0, -56(%rbp)
	movq	%rax, -192(%rbp)        # 8-byte Spill
	je	.LBB3_74
# BB#73:                                # %if.then.129
	movq	-56(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, 296(%rcx)
	movq	-64(%rbp), %rdi
	callq	g_strdup
	movq	-88(%rbp), %rcx
	movq	%rax, 304(%rcx)
	movq	-72(%rbp), %rdi
	callq	g_strdup
	movq	-88(%rbp), %rcx
	movq	%rax, 312(%rcx)
	movq	-80(%rbp), %rdi
	callq	g_strdup
	movq	-88(%rbp), %rcx
	movq	%rax, 320(%rcx)
.LBB3_74:                               # %if.end.137
	movq	-88(%rbp), %rdi
	callq	gimp_container_popup_create_view
	movq	-88(%rbp), %rdi
	movq	%rdi, -200(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
.LBB3_75:                               # %return
	movq	-16(%rbp), %rax
	addq	$200, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_container_popup_new, .Lfunc_end3-gimp_container_popup_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_popup_context_changed,@function
gimp_container_popup_context_changed:   # @gimp_container_popup_context_changed
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -36(%rbp)
	callq	gtk_get_current_event
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB4_5
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	cmpl	$4, (%rax)
	je	.LBB4_3
# BB#2:                                 # %lor.lhs.false
	movq	-32(%rbp), %rax
	cmpl	$7, (%rax)
	jne	.LBB4_4
.LBB4_3:                                # %if.then.3
	movl	$1, -36(%rbp)
.LBB4_4:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	gdk_event_free
.LBB4_5:                                # %if.end.4
	cmpl	$0, -36(%rbp)
	je	.LBB4_7
# BB#6:                                 # %if.then.6
	xorl	%edx, %edx
	movq	-24(%rbp), %rax
	movl	popup_signals+4, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB4_7:                                # %if.end.7
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_container_popup_context_changed, .Lfunc_end4-gimp_container_popup_context_changed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_popup_create_view,@function
gimp_container_popup_create_view:       # @gimp_container_popup_create_view
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$400, %rsp              # imm = 0x190
.Ltmp19:
	.cfi_offset %rbx, -48
.Ltmp20:
	.cfi_offset %r12, -40
.Ltmp21:
	.cfi_offset %r14, -32
.Ltmp22:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	callq	gimp_container_editor_get_type
	movabsq	$.L.str.19, %rsi
	movabsq	$.L.str.20, %rcx
	movabsq	$.L.str.21, %r9
	movabsq	$.L.str.22, %rdi
	movabsq	$.L.str.23, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-40(%rbp), %r11
	movl	264(%r11), %r8d
	movq	-40(%rbp), %r11
	movq	240(%r11), %r11
	movq	-40(%rbp), %rbx
	movq	256(%rbx), %rbx
	movq	-40(%rbp), %r14
	movl	272(%r14), %r15d
	movq	-40(%rbp), %r14
	movl	276(%r14), %r12d
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movl	%r8d, %edx
	movq	%r11, %r8
	movq	%rbx, (%rsp)
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	%r15d, 16(%rsp)
	movq	-104(%rbp), %r11        # 8-byte Reload
	movq	%r11, 24(%rsp)
	movl	%r12d, 32(%rsp)
	movq	$0, 40(%rsp)
	movb	$0, %al
	movq	%r10, -112(%rbp)        # 8-byte Spill
	callq	g_object_new
	movq	-40(%rbp), %rcx
	movq	%rax, 288(%rcx)
	movq	-40(%rbp), %rax
	movq	288(%rax), %rax
	movq	128(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_container_view_set_reorderable
	movq	-40(%rbp), %rax
	cmpl	$0, 264(%rax)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	callq	gtk_entry_new
	movq	%rax, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	288(%rax), %rax
	movq	128(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	movl	-132(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_end
	movq	-40(%rbp), %rax
	movq	288(%rax), %rax
	movq	128(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	288(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_tree_view_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rsi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movq	%rsi, -176(%rbp)        # 8-byte Spill
	callq	gtk_entry_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_tree_view_set_search_entry
	movq	-64(%rbp), %rdi
	callq	gtk_widget_show
.LBB5_2:                                # %if.end
	movq	-40(%rbp), %rax
	movq	288(%rax), %rax
	movq	128(%rax), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gimp_container_box_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movl	268(%rsi), %ecx
	movq	-40(%rbp), %rsi
	movl	276(%rsi), %edx
	shll	$1, %edx
	addl	%edx, %ecx
	imull	$6, %ecx, %esi
	movq	-40(%rbp), %rdi
	movl	268(%rdi), %ecx
	movq	-40(%rbp), %rdi
	movl	276(%rdi), %edx
	shll	$1, %edx
	addl	%edx, %ecx
	imull	$10, %ecx, %edx
	movq	%rax, %rdi
	callq	gimp_container_box_set_size_request
	movq	-40(%rbp), %rax
	movq	288(%rax), %rax
	movq	128(%rax), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_editor_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB5_4
# BB#3:                                 # %if.then.37
	movl	$0, -84(%rbp)
	jmp	.LBB5_9
.LBB5_4:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_7
# BB#5:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB5_7
# BB#6:                                 # %if.then.41
	movl	$1, -84(%rbp)
	jmp	.LBB5_8
.LBB5_7:                                # %if.else.42
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB5_8:                                # %if.end.44
	jmp	.LBB5_9
.LBB5_9:                                # %if.end.45
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB5_11
# BB#10:                                # %if.then.47
	movq	-40(%rbp), %rax
	movq	288(%rax), %rax
	movq	128(%rax), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_editor_set_show_name
.LBB5_11:                               # %if.end.52
	movq	-40(%rbp), %rax
	movq	280(%rax), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	288(%rsi), %rsi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movq	%rsi, -216(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-208(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_container_add
	movq	-40(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rax
	movq	288(%rax), %rax
	movq	128(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-232(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.25, %rdi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.24, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$gimp_container_popup_smaller_clicked, %rdx
	movq	-40(%rbp), %r8
	movq	-240(%rbp), %r9         # 8-byte Reload
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	%rdx, -256(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	-248(%rbp), %rcx        # 8-byte Reload
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	%r8, -264(%rbp)         # 8-byte Spill
	movq	%rax, %r8
	movq	-248(%rbp), %r9         # 8-byte Reload
	movq	-264(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	gimp_editor_add_button
	movabsq	$.L.str.27, %rdi
	movq	-48(%rbp), %rcx
	movq	%rax, -272(%rbp)        # 8-byte Spill
	movq	%rcx, -280(%rbp)        # 8-byte Spill
	callq	gettext
	movabsq	$.L.str.26, %rsi
	xorl	%r11d, %r11d
	movl	%r11d, %ecx
	movabsq	$gimp_container_popup_larger_clicked, %rdx
	movq	-40(%rbp), %rdi
	movq	-280(%rbp), %r8         # 8-byte Reload
	movq	%rdi, -288(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rdx, -296(%rbp)        # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	movq	-296(%rbp), %r8         # 8-byte Reload
	movq	-304(%rbp), %r9         # 8-byte Reload
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	callq	gimp_editor_add_button
	movq	-48(%rbp), %rdi
	movq	%rax, -312(%rbp)        # 8-byte Spill
	movq	%rdi, -320(%rbp)        # 8-byte Spill
	callq	gimp_view_type_get_type
	movabsq	$.L.str.28, %rdx
	movabsq	$gimp_container_popup_view_type_toggled, %rcx
	movq	-40(%rbp), %rsi
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -328(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-328(%rbp), %r8         # 8-byte Reload
	callq	gimp_editor_add_stock_box
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gtk_radio_button_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rcx
	movl	264(%rcx), %esi
	movq	%rax, %rdi
	callq	gimp_int_radio_group_set_active
	movq	-40(%rbp), %rax
	cmpq	$0, 296(%rax)
	je	.LBB5_13
# BB#12:                                # %if.then.75
	xorl	%eax, %eax
	movl	%eax, %ecx
	movabsq	$gimp_container_popup_dialog_clicked, %rdx
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	312(%rsi), %rsi
	movq	-40(%rbp), %r8
	movq	320(%r8), %r8
	movq	-40(%rbp), %r9
	movq	%rdx, -344(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	-352(%rbp), %r10        # 8-byte Reload
	movq	%r9, -360(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-360(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	gimp_editor_add_button
	movq	%rax, -368(%rbp)        # 8-byte Spill
.LBB5_13:                               # %if.end.77
	movq	-40(%rbp), %rax
	movq	288(%rax), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_grab_focus
	addq	$400, %rsp              # imm = 0x190
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_container_popup_create_view, .Lfunc_end5-gimp_container_popup_create_view
	.cfi_endproc

	.globl	gimp_container_popup_show
	.align	16, 0x90
	.type	gimp_container_popup_show,@function
gimp_container_popup_show:              # @gimp_container_popup_show
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
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_container_popup_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -108(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -108(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_popup_show, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_36
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gtk_widget_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB6_15
# BB#14:                                # %if.then.20
	movl	$0, -132(%rbp)
	jmp	.LBB6_20
.LBB6_15:                               # %if.else.21
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_18
# BB#16:                                # %land.lhs.true.24
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB6_18
# BB#17:                                # %if.then.28
	movl	$1, -132(%rbp)
	jmp	.LBB6_19
.LBB6_18:                               # %if.else.29
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB6_19:                               # %if.end.31
	jmp	.LBB6_20
.LBB6_20:                               # %if.end.32
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB6_22
# BB#21:                                # %if.then.35
	jmp	.LBB6_23
.LBB6_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_popup_show, %rsi
	movabsq	$.L.str.14, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_36
.LBB6_23:                               # %if.end.37
	jmp	.LBB6_24
.LBB6_24:                               # %do.end.38
	movq	-8(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_widget_size_request
	leaq	-48(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_window
	leaq	-72(%rbp), %rsi
	leaq	-76(%rbp), %rdx
	movq	%rax, %rdi
	callq	gdk_window_get_origin
	movq	-16(%rbp), %rdi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	gtk_widget_get_has_window
	cmpl	$0, %eax
	jne	.LBB6_26
# BB#25:                                # %if.then.45
	movl	-48(%rbp), %eax
	addl	-72(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	-44(%rbp), %eax
	addl	-76(%rbp), %eax
	movl	%eax, -76(%rbp)
.LBB6_26:                               # %if.end.49
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_screen
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	-72(%rbp), %esi
	movl	-76(%rbp), %edx
	callq	gdk_screen_get_monitor_at_point
	leaq	-64(%rbp), %rdx
	movl	%eax, -68(%rbp)
	movq	-24(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	gdk_screen_get_monitor_geometry
	movq	-16(%rbp), %rdi
	callq	gtk_widget_get_direction
	cmpl	$2, %eax
	jne	.LBB6_30
# BB#27:                                # %if.then.54
	movl	-72(%rbp), %eax
	addl	-40(%rbp), %eax
	subl	-32(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB6_29
# BB#28:                                # %if.then.59
	movl	-40(%rbp), %eax
	subl	-32(%rbp), %eax
	movl	-80(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -80(%rbp)
.LBB6_29:                               # %if.end.64
	jmp	.LBB6_33
.LBB6_30:                               # %if.else.65
	movl	-72(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %eax
	addl	-32(%rbp), %eax
	movl	-64(%rbp), %ecx
	addl	-56(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB6_32
# BB#31:                                # %if.then.72
	movl	-40(%rbp), %eax
	subl	-32(%rbp), %eax
	addl	-80(%rbp), %eax
	movl	%eax, -80(%rbp)
.LBB6_32:                               # %if.end.77
	jmp	.LBB6_33
.LBB6_33:                               # %if.end.78
	movl	-76(%rbp), %eax
	addl	-36(%rbp), %eax
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	-60(%rbp), %ecx
	addl	-52(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB6_35
# BB#34:                                # %if.then.86
	movl	-76(%rbp), %eax
	subl	-28(%rbp), %eax
	movl	%eax, -84(%rbp)
.LBB6_35:                               # %if.end.89
	movq	-8(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_window_set_screen
	movq	-8(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_toplevel
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gtk_window_set_transient_for
	movq	-8(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	gtk_window_get_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	-80(%rbp), %esi
	movl	-84(%rbp), %edx
	movq	%rax, %rdi
	callq	gtk_window_move
	movq	-8(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_show
.LBB6_36:                               # %return
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_container_popup_show, .Lfunc_end6-gimp_container_popup_show
	.cfi_endproc

	.globl	gimp_container_popup_get_view_type
	.align	16, 0x90
	.type	gimp_container_popup_get_view_type,@function
gimp_container_popup_get_view_type:     # @gimp_container_popup_get_view_type
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_container_popup_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_popup_get_view_type, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB7_13
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-16(%rbp), %rax
	movl	264(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB7_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_container_popup_get_view_type, .Lfunc_end7-gimp_container_popup_get_view_type
	.cfi_endproc

	.globl	gimp_container_popup_set_view_type
	.align	16, 0x90
	.type	gimp_container_popup_set_view_type,@function
gimp_container_popup_set_view_type:     # @gimp_container_popup_set_view_type
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_container_popup_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB8_8
.LBB8_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB8_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB8_7:                                # %if.end
	jmp	.LBB8_8
.LBB8_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB8_10
# BB#9:                                 # %if.then.8
	jmp	.LBB8_11
.LBB8_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_popup_set_view_type, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_14
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	264(%rcx), %eax
	je	.LBB8_14
# BB#13:                                # %if.then.13
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 264(%rcx)
	movq	-8(%rbp), %rcx
	movq	288(%rcx), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_widget_destroy
	movq	-8(%rbp), %rdi
	callq	gimp_container_popup_create_view
.LBB8_14:                               # %if.end.17
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_container_popup_set_view_type, .Lfunc_end8-gimp_container_popup_set_view_type
	.cfi_endproc

	.globl	gimp_container_popup_get_view_size
	.align	16, 0x90
	.type	gimp_container_popup_get_view_size,@function
gimp_container_popup_get_view_size:     # @gimp_container_popup_get_view_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_container_popup_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_popup_get_view_size, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	movl	$24, -4(%rbp)
	jmp	.LBB9_13
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movq	-16(%rbp), %rax
	movl	272(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB9_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_container_popup_get_view_size, .Lfunc_end9-gimp_container_popup_get_view_size
	.cfi_endproc

	.globl	gimp_container_popup_set_view_size
	.align	16, 0x90
	.type	gimp_container_popup_set_view_size,@function
gimp_container_popup_set_view_size:     # @gimp_container_popup_set_view_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp37:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_container_popup_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_container_popup_set_view_size, %rsi
	movabsq	$.L.str.13, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_26
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	288(%rax), %rax
	movq	128(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_container_box_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	136(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_bin_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_bin_get_child
	leaq	-48(%rbp), %rsi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	gtk_widget_get_allocation
	movl	$192, %ecx
	movl	-12(%rbp), %edx
	movl	-40(%rbp), %r8d
	movq	-8(%rbp), %rax
	movl	276(%rax), %r9d
	shll	$1, %r9d
	subl	%r9d, %r8d
	cmpl	%r8d, %ecx
	movl	%edx, -92(%rbp)         # 4-byte Spill
	jge	.LBB10_14
# BB#13:                                # %cond.true
	movl	$192, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jmp	.LBB10_15
.LBB10_14:                              # %cond.false
	movl	-40(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	276(%rcx), %edx
	shll	$1, %edx
	subl	%edx, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
.LBB10_15:                              # %cond.end
	movl	-96(%rbp), %eax         # 4-byte Reload
	movl	-92(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB10_20
# BB#16:                                # %cond.true.23
	movl	$192, %eax
	movl	-40(%rbp), %ecx
	movq	-8(%rbp), %rdx
	movl	276(%rdx), %esi
	shll	$1, %esi
	subl	%esi, %ecx
	cmpl	%ecx, %eax
	jge	.LBB10_18
# BB#17:                                # %cond.true.29
	movl	$192, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB10_19
.LBB10_18:                              # %cond.false.30
	movl	-40(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	276(%rcx), %edx
	shll	$1, %edx
	subl	%edx, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB10_19:                              # %cond.end.35
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB10_24
.LBB10_20:                              # %cond.false.37
	cmpl	$12, -12(%rbp)
	jge	.LBB10_22
# BB#21:                                # %cond.true.39
	movl	$12, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB10_23
.LBB10_22:                              # %cond.false.40
	movl	-12(%rbp), %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB10_23:                              # %cond.end.41
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB10_24:                              # %cond.end.43
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	272(%rcx), %eax
	je	.LBB10_26
# BB#25:                                # %if.then.47
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 272(%rcx)
	movq	-8(%rbp), %rcx
	movq	288(%rcx), %rcx
	movq	128(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movl	272(%rcx), %esi
	movq	-8(%rbp), %rcx
	movl	276(%rcx), %edx
	callq	gimp_container_view_set_view_size
.LBB10_26:                              # %if.end.53
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_container_popup_set_view_size, .Lfunc_end10-gimp_container_popup_set_view_size
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_popup_class_init,@function
gimp_container_popup_class_init:        # @gimp_container_popup_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp40:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$160, %rsp
.Ltmp41:
	.cfi_offset %rbx, -32
.Ltmp42:
	.cfi_offset %r14, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.15, %rdi
	movl	$34, %edx
	movl	$904, %ecx              # imm = 0x388
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	xorl	%r8d, %r8d
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	%r8d, -68(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movq	%r9, -80(%rbp)          # 8-byte Spill
	movq	%rax, %r9
	movq	-80(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movq	%r10, -88(%rbp)         # 8-byte Spill
	callq	g_signal_new
	movabsq	$.L.str.16, %rdi
	movl	$34, %edx
	movl	$912, %ecx              # imm = 0x390
	xorl	%ebx, %ebx
	movl	%ebx, %esi
	movabsq	$g_cclosure_marshal_VOID__VOID, %r8
	movl	$4, %ebx
	movl	%ebx, %r9d
	xorl	%ebx, %ebx
	movl	%eax, popup_signals
	movq	-24(%rbp), %r10
	movq	(%r10), %r10
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%r10, %rsi
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r8, -104(%rbp)         # 8-byte Spill
	movq	%r10, %r8
	movq	%r9, -112(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-104(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	movq	$4, 8(%rsp)
	movl	$0, 16(%rsp)
	movb	$0, %al
	movl	%ebx, -116(%rbp)        # 4-byte Spill
	callq	g_signal_new
	movabsq	$gimp_container_popup_real_confirm, %rsi
	movabsq	$gimp_container_popup_real_cancel, %rdi
	movabsq	$gimp_container_popup_key_press, %r8
	movabsq	$gimp_container_popup_button_press, %r9
	movabsq	$gimp_container_popup_map, %r10
	movabsq	$gimp_container_popup_finalize, %r11
	movl	%eax, popup_signals+4
	movq	-32(%rbp), %r14
	movq	%r11, 48(%r14)
	movq	-40(%rbp), %r11
	movq	%r10, 208(%r11)
	movq	-40(%rbp), %r10
	movq	%r9, 344(%r10)
	movq	-40(%rbp), %r9
	movq	%r8, 400(%r9)
	movq	-24(%rbp), %r8
	movq	%rdi, 904(%r8)
	movq	-24(%rbp), %rdi
	movq	%rsi, 912(%rdi)
	movq	-24(%rbp), %rsi
	movq	%rsi, %rdi
	callq	gtk_binding_set_by_class
	movl	$65307, %esi            # imm = 0xFF1B
	xorl	%ecx, %ecx
	movabsq	$.L.str.15, %rdi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %edx
	movq	-128(%rbp), %rax        # 8-byte Reload
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	movq	%rax, %rcx
	movl	-132(%rbp), %r8d        # 4-byte Reload
	movb	$0, %al
	callq	gtk_binding_entry_add_signal
	movl	$65293, %esi            # imm = 0xFF0D
	xorl	%edx, %edx
	movabsq	$.L.str.16, %rcx
	movq	-48(%rbp), %rdi
	movl	%edx, -136(%rbp)        # 4-byte Spill
	movl	-136(%rbp), %r8d        # 4-byte Reload
	movb	$0, %al
	callq	gtk_binding_entry_add_signal
	movl	$65421, %esi            # imm = 0xFF8D
	xorl	%edx, %edx
	movabsq	$.L.str.16, %rcx
	movq	-48(%rbp), %rdi
	movl	%edx, -140(%rbp)        # 4-byte Spill
	movl	-140(%rbp), %r8d        # 4-byte Reload
	movb	$0, %al
	callq	gtk_binding_entry_add_signal
	movl	$65076, %esi            # imm = 0xFE34
	xorl	%edx, %edx
	movabsq	$.L.str.16, %rcx
	movq	-48(%rbp), %rdi
	movl	%edx, -144(%rbp)        # 4-byte Spill
	movl	-144(%rbp), %r8d        # 4-byte Reload
	movb	$0, %al
	callq	gtk_binding_entry_add_signal
	movl	$32, %esi
	xorl	%edx, %edx
	movabsq	$.L.str.16, %rcx
	movq	-48(%rbp), %rdi
	movl	%edx, -148(%rbp)        # 4-byte Spill
	movl	-148(%rbp), %r8d        # 4-byte Reload
	movb	$0, %al
	callq	gtk_binding_entry_add_signal
	movl	$65408, %esi            # imm = 0xFF80
	xorl	%edx, %edx
	movabsq	$.L.str.16, %rcx
	movq	-48(%rbp), %rdi
	movl	%edx, -152(%rbp)        # 4-byte Spill
	movl	-152(%rbp), %r8d        # 4-byte Reload
	movb	$0, %al
	callq	gtk_binding_entry_add_signal
	addq	$160, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_container_popup_class_init, .Lfunc_end11-gimp_container_popup_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_popup_finalize,@function
gimp_container_popup_finalize:          # @gimp_container_popup_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_container_popup_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 256(%rax)
	je	.LBB12_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	256(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 256(%rax)
.LBB12_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 304(%rax)
	je	.LBB12_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	304(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 304(%rax)
.LBB12_4:                               # %if.end.8
	movq	-16(%rbp), %rax
	cmpq	$0, 312(%rax)
	je	.LBB12_6
# BB#5:                                 # %if.then.10
	movq	-16(%rbp), %rax
	movq	312(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 312(%rax)
.LBB12_6:                               # %if.end.13
	movq	-16(%rbp), %rax
	cmpq	$0, 320(%rax)
	je	.LBB12_8
# BB#7:                                 # %if.then.15
	movq	-16(%rbp), %rax
	movq	320(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 320(%rax)
.LBB12_8:                               # %if.end.18
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_container_popup_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_container_popup_finalize, .Lfunc_end12-gimp_container_popup_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_popup_map,@function
gimp_container_popup_map:               # @gimp_container_popup_map
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	gimp_container_popup_parent_class, %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	208(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_window
	movl	$1, %esi
	movl	$772, %edx              # imm = 0x304
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-24(%rbp), %rcx         # 8-byte Reload
	movq	-24(%rbp), %r8          # 8-byte Reload
	callq	gdk_pointer_grab
	cmpl	$0, %eax
	jne	.LBB13_5
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_window
	movl	$1, %esi
	xorl	%edx, %edx
	movq	%rax, %rdi
	callq	gdk_keyboard_grab
	cmpl	$0, %eax
	jne	.LBB13_3
# BB#2:                                 # %if.then.7
	movq	-8(%rbp), %rdi
	callq	gtk_grab_add
	movabsq	$.L.str.17, %rsi
	movabsq	$gimp_container_popup_grab_notify, %rdi
	xorl	%eax, %eax
	movl	%eax, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-32(%rbp), %rcx         # 8-byte Reload
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	-40(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.18, %rsi
	movabsq	$gimp_container_popup_grab_broken_event, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB13_6
.LBB13_3:                               # %if.else
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_display
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gdk_display_pointer_ungrab
# BB#4:                                 # %if.end
	jmp	.LBB13_5
.LBB13_5:                               # %if.end.11
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	popup_signals, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB13_6:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_container_popup_map, .Lfunc_end13-gimp_container_popup_map
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_popup_button_press,@function
gimp_container_popup_button_press:      # @gimp_container_popup_button_press
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -28(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	callq	gtk_get_event_widget
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB14_7
# BB#1:                                 # %if.then
	leaq	-48(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gtk_widget_get_allocation
	xorps	%xmm0, %xmm0
	movq	-16(%rbp), %rsi
	ucomisd	24(%rsi), %xmm0
	ja	.LBB14_5
# BB#2:                                 # %lor.lhs.false
	xorps	%xmm0, %xmm0
	movq	-16(%rbp), %rax
	ucomisd	32(%rax), %xmm0
	ja	.LBB14_5
# BB#3:                                 # %lor.lhs.false.3
	movq	-16(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-40(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	ja	.LBB14_5
# BB#4:                                 # %lor.lhs.false.7
	movq	-16(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-36(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB14_6
.LBB14_5:                               # %if.then.12
	movl	$1, -28(%rbp)
.LBB14_6:                               # %if.end
	jmp	.LBB14_10
.LBB14_7:                               # %if.else
	movq	-24(%rbp), %rdi
	callq	gtk_widget_get_toplevel
	cmpq	-8(%rbp), %rax
	je	.LBB14_9
# BB#8:                                 # %if.then.16
	movl	$1, -28(%rbp)
.LBB14_9:                               # %if.end.17
	jmp	.LBB14_10
.LBB14_10:                              # %if.end.18
	cmpl	$0, -28(%rbp)
	je	.LBB14_12
# BB#11:                                # %if.then.19
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	popup_signals, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB14_12:                              # %if.end.20
	movl	-28(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_container_popup_button_press, .Lfunc_end14-gimp_container_popup_button_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_popup_key_press,@function
gimp_container_popup_key_press:         # @gimp_container_popup_key_press
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, %rdi
	callq	gtk_binding_set_by_class
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	28(%rax), %esi
	movq	-24(%rbp), %rax
	movl	24(%rax), %edx
	movq	-16(%rbp), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movl	%edx, -48(%rbp)         # 4-byte Spill
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gtk_object_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movl	-44(%rbp), %esi         # 4-byte Reload
	movl	-48(%rbp), %edx         # 4-byte Reload
	movq	%rax, %rcx
	callq	gtk_binding_set_activate
	cmpl	$0, %eax
	je	.LBB15_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB15_3
.LBB15_2:                               # %if.end
	movq	gimp_container_popup_parent_class, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	400(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	*%rax
	movl	%eax, -4(%rbp)
.LBB15_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_container_popup_key_press, .Lfunc_end15-gimp_container_popup_key_press
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_popup_real_cancel,@function
gimp_container_popup_real_cancel:       # @gimp_container_popup_real_cancel
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	callq	gtk_grab_get_current
	cmpq	-16(%rbp), %rax
	jne	.LBB16_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gtk_grab_remove
.LBB16_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	gtk_widget_destroy
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_container_popup_real_cancel, .Lfunc_end16-gimp_container_popup_real_cancel
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_popup_real_confirm,@function
gimp_container_popup_real_confirm:      # @gimp_container_popup_real_confirm
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	256(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_container_get_children_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_context_get_by_type
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	248(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	240(%rax), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_container_get_children_type
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_context_set_by_type
	callq	gtk_grab_get_current
	cmpq	-16(%rbp), %rax
	jne	.LBB17_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	gtk_grab_remove
.LBB17_2:                               # %if.end
	movq	-16(%rbp), %rdi
	callq	gtk_widget_destroy
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_container_popup_real_confirm, .Lfunc_end17-gimp_container_popup_real_confirm
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_popup_grab_notify,@function
gimp_container_popup_grab_notify:       # @gimp_container_popup_grab_notify
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	je	.LBB18_2
# BB#1:                                 # %if.then
	jmp	.LBB18_5
.LBB18_2:                               # %if.end
	callq	gtk_grab_get_current
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	gtk_widget_is_ancestor
	cmpl	$0, %eax
	je	.LBB18_4
# BB#3:                                 # %if.then.3
	jmp	.LBB18_5
.LBB18_4:                               # %if.end.4
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	popup_signals, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_signal_emit
.LBB18_5:                               # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_container_popup_grab_notify, .Lfunc_end18-gimp_container_popup_grab_notify
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_popup_grab_broken_event,@function
gimp_container_popup_grab_broken_event: # @gimp_container_popup_grab_broken_event
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
	subq	$16, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	%eax, %esi
	callq	gimp_container_popup_grab_notify
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_container_popup_grab_broken_event, .Lfunc_end19-gimp_container_popup_grab_broken_event
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI20_0:
	.quad	4605380978949069210     # double 0.80000000000000004
	.text
	.align	16, 0x90
	.type	gimp_container_popup_smaller_clicked,@function
gimp_container_popup_smaller_clicked:   # @gimp_container_popup_smaller_clicked
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
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	288(%rsi), %rsi
	movq	128(%rsi), %rdi
	movq	%rcx, %rsi
	callq	gimp_container_view_get_view_size
	movsd	.LCPI20_0, %xmm0        # xmm0 = mem[0],zero
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	cvtsi2sdl	-20(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %esi
	callq	gimp_container_popup_set_view_size
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_container_popup_smaller_clicked, .Lfunc_end20-gimp_container_popup_smaller_clicked
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI21_0:
	.quad	4608083138725491507     # double 1.2
	.text
	.align	16, 0x90
	.type	gimp_container_popup_larger_clicked,@function
gimp_container_popup_larger_clicked:    # @gimp_container_popup_larger_clicked
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
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	288(%rsi), %rsi
	movq	128(%rsi), %rdi
	movq	%rcx, %rsi
	callq	gimp_container_view_get_view_size
	movsd	.LCPI21_0, %xmm0        # xmm0 = mem[0],zero
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	cvtsi2sdl	-20(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %esi
	callq	gimp_container_popup_set_view_size
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_container_popup_larger_clicked, .Lfunc_end21-gimp_container_popup_larger_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_popup_view_type_toggled,@function
gimp_container_popup_view_type_toggled: # @gimp_container_popup_view_type_toggled
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gtk_toggle_button_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_toggle_button_get_active
	cmpl	$0, %eax
	je	.LBB22_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.29, %rsi
	movq	%rax, %rdi
	callq	g_object_get_data
	movl	%eax, %edx
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_container_popup_set_view_type
.LBB22_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_container_popup_view_type_toggled, .Lfunc_end22-gimp_container_popup_view_type_toggled
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_container_popup_dialog_clicked,@function
gimp_container_popup_dialog_clicked:    # @gimp_container_popup_dialog_clicked
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	256(%rsi), %rsi
	movq	32(%rsi), %rdi
	callq	gimp_get_window_strategy
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_window_strategy_interface_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	256(%rsi), %rsi
	movq	32(%rsi), %rsi
	movq	-16(%rbp), %rdi
	movq	296(%rdi), %rdx
	movq	-8(%rbp), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_screen
	movq	-16(%rbp), %rdx
	movq	304(%rdx), %r8
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	gimp_window_strategy_show_dockable_dialog
	xorl	%edx, %edx
	movq	-16(%rbp), %rcx
	movl	popup_signals+4, %esi
	movq	%rcx, %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movb	$0, %al
	callq	g_signal_emit
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_container_popup_dialog_clicked, .Lfunc_end23-gimp_container_popup_dialog_clicked
	.cfi_endproc

	.type	gimp_container_popup_get_type.g_define_type_id__volatile,@object # @gimp_container_popup_get_type.g_define_type_id__volatile
	.local	gimp_container_popup_get_type.g_define_type_id__volatile
	.comm	gimp_container_popup_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpContainerPopup"
	.size	.L.str, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_container_popup_new,@object # @__func__.gimp_container_popup_new
.L__func__.gimp_container_popup_new:
	.asciz	"gimp_container_popup_new"
	.size	.L__func__.gimp_container_popup_new, 25

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_CONTAINER (container)"
	.size	.L.str.2, 30

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_CONTEXT (context)"
	.size	.L.str.3, 26

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"default_view_size > 0 && default_view_size <= GIMP_VIEWABLE_MAX_POPUP_SIZE"
	.size	.L.str.4, 75

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"view_size > 0 && view_size <= GIMP_VIEWABLE_MAX_POPUP_SIZE"
	.size	.L.str.5, 59

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"view_border_width >= 0 && view_border_width <= GIMP_VIEW_MAX_BORDER_WIDTH"
	.size	.L.str.6, 74

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"dialog_factory == NULL || GIMP_IS_DIALOG_FACTORY (dialog_factory)"
	.size	.L.str.7, 66

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"dialog_identifier != NULL"
	.size	.L.str.8, 26

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"dialog_stock_id != NULL"
	.size	.L.str.9, 24

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"dialog_tooltip != NULL"
	.size	.L.str.10, 23

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"type"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"popup"
	.size	.L.str.12, 6

	.type	.L__func__.gimp_container_popup_show,@object # @__func__.gimp_container_popup_show
.L__func__.gimp_container_popup_show:
	.asciz	"gimp_container_popup_show"
	.size	.L__func__.gimp_container_popup_show, 26

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"GIMP_IS_CONTAINER_POPUP (popup)"
	.size	.L.str.13, 32

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"GTK_IS_WIDGET (widget)"
	.size	.L.str.14, 23

	.type	.L__func__.gimp_container_popup_get_view_type,@object # @__func__.gimp_container_popup_get_view_type
.L__func__.gimp_container_popup_get_view_type:
	.asciz	"gimp_container_popup_get_view_type"
	.size	.L__func__.gimp_container_popup_get_view_type, 35

	.type	.L__func__.gimp_container_popup_set_view_type,@object # @__func__.gimp_container_popup_set_view_type
.L__func__.gimp_container_popup_set_view_type:
	.asciz	"gimp_container_popup_set_view_type"
	.size	.L__func__.gimp_container_popup_set_view_type, 35

	.type	.L__func__.gimp_container_popup_get_view_size,@object # @__func__.gimp_container_popup_get_view_size
.L__func__.gimp_container_popup_get_view_size:
	.asciz	"gimp_container_popup_get_view_size"
	.size	.L__func__.gimp_container_popup_get_view_size, 35

	.type	.L__func__.gimp_container_popup_set_view_size,@object # @__func__.gimp_container_popup_set_view_size
.L__func__.gimp_container_popup_set_view_size:
	.asciz	"gimp_container_popup_set_view_size"
	.size	.L__func__.gimp_container_popup_set_view_size, 35

	.type	gimp_container_popup_parent_class,@object # @gimp_container_popup_parent_class
	.local	gimp_container_popup_parent_class
	.comm	gimp_container_popup_parent_class,8,8
	.type	GimpContainerPopup_private_offset,@object # @GimpContainerPopup_private_offset
	.local	GimpContainerPopup_private_offset
	.comm	GimpContainerPopup_private_offset,4,4
	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"cancel"
	.size	.L.str.15, 7

	.type	popup_signals,@object   # @popup_signals
	.local	popup_signals
	.comm	popup_signals,8,4
	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"confirm"
	.size	.L.str.16, 8

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"grab-notify"
	.size	.L.str.17, 12

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"grab-broken-event"
	.size	.L.str.18, 18

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"view-type"
	.size	.L.str.19, 10

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"container"
	.size	.L.str.20, 10

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"context"
	.size	.L.str.21, 8

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"view-size"
	.size	.L.str.22, 10

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"view-border-width"
	.size	.L.str.23, 18

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gtk-zoom-out"
	.size	.L.str.24, 13

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Smaller Previews"
	.size	.L.str.25, 17

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"gtk-zoom-in"
	.size	.L.str.26, 12

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Larger Previews"
	.size	.L.str.27, 16

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gimp"
	.size	.L.str.28, 5

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gimp-item-data"
	.size	.L.str.29, 15


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
