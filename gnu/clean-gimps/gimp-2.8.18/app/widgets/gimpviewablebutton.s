	.text
	.file	"gimpviewablebutton.bc"
	.globl	gimp_viewable_button_get_type
	.align	16, 0x90
	.type	gimp_viewable_button_get_type,@function
gimp_viewable_button_get_type:          # @gimp_viewable_button_get_type
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
	movq	gimp_viewable_button_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_viewable_button_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_button_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$944, %edx              # imm = 0x3B0
	movabsq	$gimp_viewable_button_class_intern_init, %rdi
	movl	$224, %r8d
	movabsq	$gimp_viewable_button_init, %rcx
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
	movabsq	$gimp_viewable_button_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_viewable_button_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_viewable_button_get_type, .Lfunc_end0-gimp_viewable_button_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_viewable_button_class_intern_init,@function
gimp_viewable_button_class_intern_init: # @gimp_viewable_button_class_intern_init
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
	movq	%rax, gimp_viewable_button_parent_class
	cmpl	$0, GimpViewableButton_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpViewableButton_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_viewable_button_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_viewable_button_class_intern_init, .Lfunc_end1-gimp_viewable_button_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_viewable_button_init,@function
gimp_viewable_button_init:              # @gimp_viewable_button_init
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
	movl	$0, 168(%rdi)
	movq	-8(%rbp), %rdi
	movl	$24, 172(%rdi)
	movq	-8(%rbp), %rdi
	movl	$24, 176(%rdi)
	movq	-8(%rbp), %rdi
	movl	$1, 180(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_viewable_button_init, .Lfunc_end2-gimp_viewable_button_init
	.cfi_endproc

	.globl	gimp_viewable_button_new
	.align	16, 0x90
	.type	gimp_viewable_button_new,@function
gimp_viewable_button_new:               # @gimp_viewable_button_new
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
	subq	$184, %rsp
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
	movq	%rax, -104(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -116(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -116(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_button_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB3_69
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB3_15
# BB#14:                                # %if.then.20
	movl	$0, -140(%rbp)
	jmp	.LBB3_20
.LBB3_15:                               # %if.else.21
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_18
# BB#16:                                # %land.lhs.true.24
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB3_18
# BB#17:                                # %if.then.28
	movl	$1, -140(%rbp)
	jmp	.LBB3_19
.LBB3_18:                               # %if.else.29
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB3_19:                               # %if.end.31
	jmp	.LBB3_20
.LBB3_20:                               # %if.end.32
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB3_22
# BB#21:                                # %if.then.35
	jmp	.LBB3_23
.LBB3_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_button_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB3_69
.LBB3_23:                               # %if.end.37
	jmp	.LBB3_24
.LBB3_24:                               # %do.end.38
	jmp	.LBB3_25
.LBB3_25:                               # %do.body.39
	cmpl	$0, -44(%rbp)
	jle	.LBB3_28
# BB#26:                                # %land.lhs.true.41
	cmpl	$64, -44(%rbp)
	jg	.LBB3_28
# BB#27:                                # %if.then.43
	jmp	.LBB3_29
.LBB3_28:                               # %if.else.44
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_button_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB3_69
.LBB3_29:                               # %if.end.45
	jmp	.LBB3_30
.LBB3_30:                               # %do.end.46
	jmp	.LBB3_31
.LBB3_31:                               # %do.body.47
	cmpl	$0, -48(%rbp)
	jl	.LBB3_34
# BB#32:                                # %land.lhs.true.49
	cmpl	$16, -48(%rbp)
	jg	.LBB3_34
# BB#33:                                # %if.then.51
	jmp	.LBB3_35
.LBB3_34:                               # %if.else.52
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_button_new, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB3_69
.LBB3_35:                               # %if.end.53
	jmp	.LBB3_36
.LBB3_36:                               # %do.end.54
	jmp	.LBB3_37
.LBB3_37:                               # %do.body.55
	cmpq	$0, -56(%rbp)
	je	.LBB3_46
# BB#38:                                # %lor.lhs.false
	movq	-56(%rbp), %rax
	movq	%rax, -152(%rbp)
	callq	gimp_dialog_factory_get_type
	movq	%rax, -160(%rbp)
	cmpq	$0, -152(%rbp)
	jne	.LBB3_40
# BB#39:                                # %if.then.65
	movl	$0, -164(%rbp)
	jmp	.LBB3_45
.LBB3_40:                               # %if.else.66
	movq	-152(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_43
# BB#41:                                # %land.lhs.true.69
	movq	-152(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-160(%rbp), %rax
	jne	.LBB3_43
# BB#42:                                # %if.then.73
	movl	$1, -164(%rbp)
	jmp	.LBB3_44
.LBB3_43:                               # %if.else.74
	movq	-152(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -164(%rbp)
.LBB3_44:                               # %if.end.76
	jmp	.LBB3_45
.LBB3_45:                               # %if.end.77
	movl	-164(%rbp), %eax
	movl	%eax, -168(%rbp)
	cmpl	$0, -168(%rbp)
	je	.LBB3_47
.LBB3_46:                               # %if.then.80
	jmp	.LBB3_48
.LBB3_47:                               # %if.else.81
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_button_new, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB3_69
.LBB3_48:                               # %if.end.82
	jmp	.LBB3_49
.LBB3_49:                               # %do.end.83
	cmpq	$0, -56(%rbp)
	je	.LBB3_66
# BB#50:                                # %if.then.85
	jmp	.LBB3_51
.LBB3_51:                               # %do.body.86
	cmpq	$0, -64(%rbp)
	je	.LBB3_53
# BB#52:                                # %if.then.88
	jmp	.LBB3_54
.LBB3_53:                               # %if.else.89
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_button_new, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB3_69
.LBB3_54:                               # %if.end.90
	jmp	.LBB3_55
.LBB3_55:                               # %do.end.91
	jmp	.LBB3_56
.LBB3_56:                               # %do.body.92
	cmpq	$0, -72(%rbp)
	je	.LBB3_58
# BB#57:                                # %if.then.94
	jmp	.LBB3_59
.LBB3_58:                               # %if.else.95
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_button_new, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB3_69
.LBB3_59:                               # %if.end.96
	jmp	.LBB3_60
.LBB3_60:                               # %do.end.97
	jmp	.LBB3_61
.LBB3_61:                               # %do.body.98
	cmpq	$0, -80(%rbp)
	je	.LBB3_63
# BB#62:                                # %if.then.100
	jmp	.LBB3_64
.LBB3_63:                               # %if.else.101
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_button_new, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -16(%rbp)
	jmp	.LBB3_69
.LBB3_64:                               # %if.end.102
	jmp	.LBB3_65
.LBB3_65:                               # %do.end.103
	jmp	.LBB3_66
.LBB3_66:                               # %if.end.104
	callq	gimp_viewable_button_get_type
	movabsq	$.L.str.10, %rsi
	movabsq	$.L.str.11, %rcx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movl	-36(%rbp), %edx
	movl	-44(%rbp), %r8d
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -88(%rbp)
	movq	-24(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, 152(%rcx)
	movq	-32(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, 160(%rcx)
	movl	-40(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	%edx, 176(%rax)
	movl	-48(%rbp), %edx
	movq	-88(%rbp), %rax
	movl	%edx, 180(%rax)
	cmpq	$0, -56(%rbp)
	je	.LBB3_68
# BB#67:                                # %if.then.112
	movq	-56(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, 184(%rcx)
	movq	-64(%rbp), %rdi
	callq	g_strdup
	movq	-88(%rbp), %rcx
	movq	%rax, 192(%rcx)
	movq	-72(%rbp), %rdi
	callq	g_strdup
	movq	-88(%rbp), %rcx
	movq	%rax, 200(%rcx)
	movq	-80(%rbp), %rdi
	callq	g_strdup
	movq	-88(%rbp), %rcx
	movq	%rax, 208(%rcx)
.LBB3_68:                               # %if.end.120
	movq	-24(%rbp), %rdi
	callq	gimp_container_get_children_type
	movq	%rax, %rdi
	callq	gimp_context_type_to_prop_name
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -96(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movq	-96(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-88(%rbp), %rdi
	movl	176(%rdi), %ecx
	movq	%rax, %rdi
	callq	gimp_prop_view_new
	movq	-88(%rbp), %rdx
	movq	%rax, 216(%rdx)
	movq	-88(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rdx
	movq	216(%rdx), %rsi
	movq	%rax, %rdi
	callq	gtk_container_add
	movq	-88(%rbp), %rax
	movq	216(%rax), %rdi
	callq	gtk_widget_show
	movq	-88(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
.LBB3_69:                               # %return
	movq	-16(%rbp), %rax
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_viewable_button_new, .Lfunc_end3-gimp_viewable_button_new
	.cfi_endproc

	.globl	gimp_viewable_button_get_view_type
	.align	16, 0x90
	.type	gimp_viewable_button_get_view_type,@function
gimp_viewable_button_get_view_type:     # @gimp_viewable_button_get_view_type
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_viewable_button_get_type
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
	movabsq	$.L__func__.gimp_viewable_button_get_view_type, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-16(%rbp), %rax
	movl	168(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB4_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_viewable_button_get_view_type, .Lfunc_end4-gimp_viewable_button_get_view_type
	.cfi_endproc

	.globl	gimp_viewable_button_set_view_type
	.align	16, 0x90
	.type	gimp_viewable_button_set_view_type,@function
gimp_viewable_button_set_view_type:     # @gimp_viewable_button_set_view_type
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_viewable_button_get_type
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
	movabsq	$.L__func__.gimp_viewable_button_set_view_type, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_14
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	168(%rcx), %eax
	je	.LBB5_14
# BB#13:                                # %if.then.12
	movl	$80, %eax
	movl	%eax, %esi
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 168(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.10, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB5_14:                               # %if.end.15
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_viewable_button_set_view_type, .Lfunc_end5-gimp_viewable_button_set_view_type
	.cfi_endproc

	.globl	gimp_viewable_button_get_view_size
	.align	16, 0x90
	.type	gimp_viewable_button_get_view_size,@function
gimp_viewable_button_get_view_size:     # @gimp_viewable_button_get_view_size
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_viewable_button_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_viewable_button_get_view_size, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	movl	$24, -4(%rbp)
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-16(%rbp), %rax
	movl	172(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB6_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_viewable_button_get_view_size, .Lfunc_end6-gimp_viewable_button_get_view_size
	.cfi_endproc

	.globl	gimp_viewable_button_set_view_size
	.align	16, 0x90
	.type	gimp_viewable_button_set_view_size,@function
gimp_viewable_button_set_view_size:     # @gimp_viewable_button_set_view_size
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_viewable_button_get_type
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
	movabsq	$.L__func__.gimp_viewable_button_set_view_size, %rsi
	movabsq	$.L.str.12, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_14
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	172(%rcx), %eax
	je	.LBB7_14
# BB#13:                                # %if.then.12
	movl	$80, %eax
	movl	%eax, %esi
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 172(%rcx)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.11, %rsi
	movq	%rax, %rdi
	callq	g_object_notify
.LBB7_14:                               # %if.end.15
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_viewable_button_set_view_size, .Lfunc_end7-gimp_viewable_button_set_view_size
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_viewable_button_class_init,@function
gimp_viewable_button_class_init:        # @gimp_viewable_button_class_init
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
	subq	$80, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gtk_button_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_viewable_button_clicked, %rsi
	movabsq	$gimp_viewable_button_scroll_event, %rdi
	movabsq	$gimp_viewable_button_set_property, %rcx
	movabsq	$gimp_viewable_button_get_property, %rdx
	movabsq	$gimp_viewable_button_finalize, %r8
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%r8, 48(%rax)
	movq	-16(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 24(%rax)
	movq	-24(%rbp), %rax
	movq	%rdi, 360(%rax)
	movq	-32(%rbp), %rax
	movq	%rsi, 840(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_view_type_get_type
	movabsq	$.L.str.10, %rdi
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r8d, %r8d
	movl	$227, %r9d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$1, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.11, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movl	$12, %ecx
	movl	$192, %r8d
	movl	$24, %r9d
	movl	$227, %esi
	movq	-16(%rbp), %rdx
	movl	%esi, -60(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movl	$227, (%rsp)
	callq	g_param_spec_int
	movl	$2, %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_viewable_button_class_init, .Lfunc_end8-gimp_viewable_button_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_viewable_button_finalize,@function
gimp_viewable_button_finalize:          # @gimp_viewable_button_finalize
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_viewable_button_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 192(%rax)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	192(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 192(%rax)
.LBB9_2:                                # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 200(%rax)
	je	.LBB9_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	200(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 200(%rax)
.LBB9_4:                                # %if.end.8
	movq	-16(%rbp), %rax
	cmpq	$0, 208(%rax)
	je	.LBB9_6
# BB#5:                                 # %if.then.10
	movq	-16(%rbp), %rax
	movq	208(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 208(%rax)
.LBB9_6:                                # %if.end.13
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_viewable_button_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_viewable_button_finalize, .Lfunc_end9-gimp_viewable_button_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_viewable_button_get_property,@function
gimp_viewable_button_get_property:      # @gimp_viewable_button_get_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_viewable_button_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB10_1
	jmp	.LBB10_7
.LBB10_7:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB10_2
	jmp	.LBB10_3
.LBB10_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	168(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB10_6
.LBB10_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	172(%rax), %esi
	callq	g_value_set_int
	jmp	.LBB10_6
.LBB10_3:                               # %sw.default
	jmp	.LBB10_4
.LBB10_4:                               # %do.body
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
	movl	%r8d, -88(%rbp)         # 4-byte Spill
	movq	%r9, -96(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.13, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$178, %edx
	movabsq	$.L.str.15, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#5:                                 # %do.end
	jmp	.LBB10_6
.LBB10_6:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_viewable_button_get_property, .Lfunc_end10-gimp_viewable_button_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_viewable_button_set_property,@function
gimp_viewable_button_set_property:      # @gimp_viewable_button_set_property
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_viewable_button_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB11_1
	jmp	.LBB11_7
.LBB11_7:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB11_2
	jmp	.LBB11_3
.LBB11_1:                               # %sw.bb
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_enum
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_viewable_button_set_view_type
	jmp	.LBB11_6
.LBB11_2:                               # %sw.bb.3
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_value_get_int
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_viewable_button_set_view_size
	jmp	.LBB11_6
.LBB11_3:                               # %sw.default
	jmp	.LBB11_4
.LBB11_4:                               # %do.body
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
	movl	%r8d, -108(%rbp)        # 4-byte Spill
	movq	%r9, -120(%rbp)         # 8-byte Spill
	callq	g_type_name
	movq	-48(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.13, %rdi
	movabsq	$.L.str.14, %rsi
	movl	$156, %edx
	movabsq	$.L.str.15, %rcx
	movl	-108(%rbp), %r8d        # 4-byte Reload
	movq	-120(%rbp), %r9         # 8-byte Reload
	movq	-128(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#5:                                 # %do.end
	jmp	.LBB11_6
.LBB11_6:                               # %sw.epilog
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_viewable_button_set_property, .Lfunc_end11-gimp_viewable_button_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_viewable_button_scroll_event,@function
gimp_viewable_button_scroll_event:      # @gimp_viewable_button_scroll_event
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	gimp_viewable_button_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	160(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_container_get_children_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_context_get_by_type
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	152(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_container_get_child_index
	movl	%eax, -36(%rbp)
	cmpl	$-1, -36(%rbp)
	je	.LBB12_17
# BB#1:                                 # %if.then
	movl	-36(%rbp), %eax
	movl	%eax, -44(%rbp)
	movq	-24(%rbp), %rcx
	movq	152(%rcx), %rdi
	callq	gimp_container_get_n_children
	movl	%eax, -40(%rbp)
	movq	-16(%rbp), %rcx
	cmpl	$0, 44(%rcx)
	jne	.LBB12_6
# BB#2:                                 # %if.then.9
	cmpl	$0, -36(%rbp)
	jle	.LBB12_4
# BB#3:                                 # %if.then.11
	movl	-44(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB12_5
.LBB12_4:                               # %if.else
	movl	-40(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -44(%rbp)
.LBB12_5:                               # %if.end
	jmp	.LBB12_12
.LBB12_6:                               # %if.else.12
	movq	-16(%rbp), %rax
	cmpl	$1, 44(%rax)
	jne	.LBB12_11
# BB#7:                                 # %if.then.15
	movl	-36(%rbp), %eax
	movl	-40(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB12_9
# BB#8:                                 # %if.then.18
	movl	$0, -44(%rbp)
	jmp	.LBB12_10
.LBB12_9:                               # %if.else.19
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
.LBB12_10:                              # %if.end.20
	jmp	.LBB12_11
.LBB12_11:                              # %if.end.21
	jmp	.LBB12_12
.LBB12_12:                              # %if.end.22
	movl	-44(%rbp), %eax
	cmpl	-36(%rbp), %eax
	je	.LBB12_16
# BB#13:                                # %if.then.24
	movq	-24(%rbp), %rax
	movq	152(%rax), %rdi
	movl	-44(%rbp), %esi
	callq	gimp_container_get_child_by_index
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB12_15
# BB#14:                                # %if.then.27
	movq	-24(%rbp), %rax
	movq	160(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_container_get_children_type
	movq	-32(%rbp), %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_context_set_by_type
.LBB12_15:                              # %if.end.31
	jmp	.LBB12_16
.LBB12_16:                              # %if.end.32
	jmp	.LBB12_17
.LBB12_17:                              # %if.end.33
	movl	$1, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_viewable_button_scroll_event, .Lfunc_end12-gimp_viewable_button_scroll_event
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_viewable_button_clicked,@function
gimp_viewable_button_clicked:           # @gimp_viewable_button_clicked
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
	subq	$120, %rsp
.Ltmp43:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_viewable_button_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	152(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	160(%rax), %rsi
	movq	-24(%rbp), %rax
	movl	168(%rax), %edx
	movq	-24(%rbp), %rax
	movl	176(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	172(%rax), %r8d
	movq	-24(%rbp), %rax
	movl	180(%rax), %r9d
	movq	-24(%rbp), %rax
	movq	184(%rax), %rax
	movq	-24(%rbp), %r10
	movq	192(%r10), %r10
	movq	-24(%rbp), %r11
	movq	200(%r11), %r11
	movq	-24(%rbp), %rbx
	movq	208(%rbx), %rbx
	movq	%rax, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%r11, 16(%rsp)
	movq	%rbx, 24(%rsp)
	callq	gimp_container_popup_new
	movabsq	$.L.str.16, %rsi
	movabsq	$gimp_viewable_button_popup_closed, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %r10
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	%r10, %rcx
	callq	g_signal_connect_data
	movabsq	$.L.str.17, %rsi
	movabsq	$gimp_viewable_button_popup_closed, %rcx
	xorl	%r9d, %r9d
	movl	%r9d, %r8d
	xorl	%r9d, %r9d
	movq	-32(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	g_signal_connect_data
	movq	-32(%rbp), %rcx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	gimp_container_popup_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rcx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_popup_show
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_viewable_button_clicked, .Lfunc_end13-gimp_viewable_button_clicked
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB14_2
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
.LBB14_2:                               # %entry
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
.Lfunc_end14:
	.size	g_warning, .Lfunc_end14-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_viewable_button_popup_closed,@function
gimp_viewable_button_popup_closed:      # @gimp_viewable_button_popup_closed
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
	movq	-8(%rbp), %rsi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	callq	gimp_container_popup_get_view_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_viewable_button_set_view_type
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	gimp_container_popup_get_view_size
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	gimp_viewable_button_set_view_size
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_viewable_button_popup_closed, .Lfunc_end15-gimp_viewable_button_popup_closed
	.cfi_endproc

	.type	gimp_viewable_button_get_type.g_define_type_id__volatile,@object # @gimp_viewable_button_get_type.g_define_type_id__volatile
	.local	gimp_viewable_button_get_type.g_define_type_id__volatile
	.comm	gimp_viewable_button_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpViewableButton"
	.size	.L.str, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_viewable_button_new,@object # @__func__.gimp_viewable_button_new
.L__func__.gimp_viewable_button_new:
	.asciz	"gimp_viewable_button_new"
	.size	.L__func__.gimp_viewable_button_new, 25

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
	.asciz	"view_size > 0 && view_size <= GIMP_VIEWABLE_MAX_BUTTON_SIZE"
	.size	.L.str.4, 60

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"view_border_width >= 0 && view_border_width <= GIMP_VIEW_MAX_BORDER_WIDTH"
	.size	.L.str.5, 74

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"dialog_factory == NULL || GIMP_IS_DIALOG_FACTORY (dialog_factory)"
	.size	.L.str.6, 66

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"dialog_identifier != NULL"
	.size	.L.str.7, 26

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"dialog_stock_id != NULL"
	.size	.L.str.8, 24

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"dialog_tooltip != NULL"
	.size	.L.str.9, 23

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"popup-view-type"
	.size	.L.str.10, 16

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"popup-view-size"
	.size	.L.str.11, 16

	.type	.L__func__.gimp_viewable_button_get_view_type,@object # @__func__.gimp_viewable_button_get_view_type
.L__func__.gimp_viewable_button_get_view_type:
	.asciz	"gimp_viewable_button_get_view_type"
	.size	.L__func__.gimp_viewable_button_get_view_type, 35

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"GIMP_IS_VIEWABLE_BUTTON (button)"
	.size	.L.str.12, 33

	.type	.L__func__.gimp_viewable_button_set_view_type,@object # @__func__.gimp_viewable_button_set_view_type
.L__func__.gimp_viewable_button_set_view_type:
	.asciz	"gimp_viewable_button_set_view_type"
	.size	.L__func__.gimp_viewable_button_set_view_type, 35

	.type	.L__func__.gimp_viewable_button_get_view_size,@object # @__func__.gimp_viewable_button_get_view_size
.L__func__.gimp_viewable_button_get_view_size:
	.asciz	"gimp_viewable_button_get_view_size"
	.size	.L__func__.gimp_viewable_button_get_view_size, 35

	.type	.L__func__.gimp_viewable_button_set_view_size,@object # @__func__.gimp_viewable_button_set_view_size
.L__func__.gimp_viewable_button_set_view_size:
	.asciz	"gimp_viewable_button_set_view_size"
	.size	.L__func__.gimp_viewable_button_set_view_size, 35

	.type	gimp_viewable_button_parent_class,@object # @gimp_viewable_button_parent_class
	.local	gimp_viewable_button_parent_class
	.comm	gimp_viewable_button_parent_class,8,8
	.type	GimpViewableButton_private_offset,@object # @GimpViewableButton_private_offset
	.local	GimpViewableButton_private_offset
	.comm	GimpViewableButton_private_offset,4,4
	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.13, 54

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimpviewablebutton.c"
	.size	.L.str.14, 21

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"property"
	.size	.L.str.15, 9

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"cancel"
	.size	.L.str.16, 7

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"confirm"
	.size	.L.str.17, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
