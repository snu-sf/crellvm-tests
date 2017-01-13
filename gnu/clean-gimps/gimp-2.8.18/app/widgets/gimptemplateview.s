	.text
	.file	"gimptemplateview.bc"
	.globl	gimp_template_view_get_type
	.align	16, 0x90
	.type	gimp_template_view_get_type,@function
gimp_template_view_get_type:            # @gimp_template_view_get_type
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
	movq	gimp_template_view_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_template_view_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_container_editor_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$848, %edx              # imm = 0x350
	movabsq	$gimp_template_view_class_intern_init, %rdi
	movl	$184, %r8d
	movabsq	$gimp_template_view_init, %rcx
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
	movabsq	$gimp_template_view_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_template_view_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_template_view_get_type, .Lfunc_end0-gimp_template_view_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_template_view_class_intern_init,@function
gimp_template_view_class_intern_init:   # @gimp_template_view_class_intern_init
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
	movq	%rax, gimp_template_view_parent_class
	cmpl	$0, GimpTemplateView_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpTemplateView_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_template_view_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_template_view_class_intern_init, .Lfunc_end1-gimp_template_view_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_template_view_init,@function
gimp_template_view_init:                # @gimp_template_view_init
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
	movq	$0, 144(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 152(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 160(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 168(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 176(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_template_view_init, .Lfunc_end2-gimp_template_view_init
	.cfi_endproc

	.globl	gimp_template_view_new
	.align	16, 0x90
	.type	gimp_template_view_new,@function
gimp_template_view_new:                 # @gimp_template_view_new
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
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$520, %rsp              # imm = 0x208
.Ltmp12:
	.cfi_offset %rbx, -56
.Ltmp13:
	.cfi_offset %r12, -48
.Ltmp14:
	.cfi_offset %r13, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movl	%ecx, -76(%rbp)
	movl	%r8d, -80(%rbp)
	movq	%r9, -88(%rbp)
# BB#1:                                 # %do.body
	movq	-64(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_container_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -124(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -124(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_template_view_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB3_59
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-72(%rbp), %rax
	movq	%rax, -136(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -144(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB3_15
# BB#14:                                # %if.then.20
	movl	$0, -148(%rbp)
	jmp	.LBB3_20
.LBB3_15:                               # %if.else.21
	movq	-136(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_18
# BB#16:                                # %land.lhs.true.24
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-144(%rbp), %rax
	jne	.LBB3_18
# BB#17:                                # %if.then.28
	movl	$1, -148(%rbp)
	jmp	.LBB3_19
.LBB3_18:                               # %if.else.29
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -148(%rbp)
.LBB3_19:                               # %if.end.31
	jmp	.LBB3_20
.LBB3_20:                               # %if.end.32
	movl	-148(%rbp), %eax
	movl	%eax, -152(%rbp)
	cmpl	$0, -152(%rbp)
	je	.LBB3_22
# BB#21:                                # %if.then.35
	jmp	.LBB3_23
.LBB3_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_template_view_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB3_59
.LBB3_23:                               # %if.end.37
	jmp	.LBB3_24
.LBB3_24:                               # %do.end.38
	jmp	.LBB3_25
.LBB3_25:                               # %do.body.39
	cmpl	$0, -76(%rbp)
	jle	.LBB3_28
# BB#26:                                # %land.lhs.true.41
	cmpl	$2048, -76(%rbp)        # imm = 0x800
	jg	.LBB3_28
# BB#27:                                # %if.then.43
	jmp	.LBB3_29
.LBB3_28:                               # %if.else.44
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_template_view_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB3_59
.LBB3_29:                               # %if.end.45
	jmp	.LBB3_30
.LBB3_30:                               # %do.end.46
	jmp	.LBB3_31
.LBB3_31:                               # %do.body.47
	cmpl	$0, -80(%rbp)
	jl	.LBB3_34
# BB#32:                                # %land.lhs.true.49
	cmpl	$16, -80(%rbp)
	jg	.LBB3_34
# BB#33:                                # %if.then.51
	jmp	.LBB3_35
.LBB3_34:                               # %if.else.52
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_template_view_new, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB3_59
.LBB3_35:                               # %if.end.53
	jmp	.LBB3_36
.LBB3_36:                               # %do.end.54
	jmp	.LBB3_37
.LBB3_37:                               # %do.body.55
	cmpq	$0, -88(%rbp)
	je	.LBB3_46
# BB#38:                                # %lor.lhs.false
	movq	-88(%rbp), %rax
	movq	%rax, -160(%rbp)
	callq	gimp_menu_factory_get_type
	movq	%rax, -168(%rbp)
	cmpq	$0, -160(%rbp)
	jne	.LBB3_40
# BB#39:                                # %if.then.65
	movl	$0, -172(%rbp)
	jmp	.LBB3_45
.LBB3_40:                               # %if.else.66
	movq	-160(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_43
# BB#41:                                # %land.lhs.true.69
	movq	-160(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-168(%rbp), %rax
	jne	.LBB3_43
# BB#42:                                # %if.then.73
	movl	$1, -172(%rbp)
	jmp	.LBB3_44
.LBB3_43:                               # %if.else.74
	movq	-160(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -172(%rbp)
.LBB3_44:                               # %if.end.76
	jmp	.LBB3_45
.LBB3_45:                               # %if.end.77
	movl	-172(%rbp), %eax
	movl	%eax, -176(%rbp)
	cmpl	$0, -176(%rbp)
	je	.LBB3_47
.LBB3_46:                               # %if.then.80
	jmp	.LBB3_48
.LBB3_47:                               # %if.else.81
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_template_view_new, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB3_59
.LBB3_48:                               # %if.end.82
	jmp	.LBB3_49
.LBB3_49:                               # %do.end.83
	callq	gimp_template_view_get_type
	movabsq	$.L.str.7, %rsi
	movabsq	$.L.str.8, %rcx
	movabsq	$.L.str.9, %r9
	movabsq	$.L.str.10, %rdx
	movabsq	$.L.str.11, %rdi
	movabsq	$.L.str.12, %r8
	movabsq	$.L.str.13, %r10
	movabsq	$.L.str.14, %r11
	movabsq	$.L.str.15, %rbx
	movabsq	$.L.str.16, %r14
	xorl	%r15d, %r15d
	movl	%r15d, %r12d
	movl	-52(%rbp), %r15d
	movq	-64(%rbp), %r13
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movq	-72(%rbp), %rax
	movq	%rsi, -224(%rbp)        # 8-byte Spill
	movl	-76(%rbp), %esi
	movl	%esi, -228(%rbp)        # 4-byte Spill
	movl	-80(%rbp), %esi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movq	-88(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-224(%rbp), %rax        # 8-byte Reload
	movl	%esi, -260(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -272(%rbp)        # 8-byte Spill
	movl	%r15d, %edx
	movq	%r8, -280(%rbp)         # 8-byte Spill
	movq	%r13, %r8
	movq	-240(%rbp), %r13        # 8-byte Reload
	movq	%r13, (%rsp)
	movq	-272(%rbp), %r13        # 8-byte Reload
	movq	%r13, 8(%rsp)
	movl	-228(%rbp), %r15d       # 4-byte Reload
	movl	%r15d, 16(%rsp)
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	%rax, 24(%rsp)
	movl	-260(%rbp), %r15d       # 4-byte Reload
	movl	%r15d, 32(%rsp)
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	%rax, 40(%rsp)
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	%rax, 48(%rsp)
	movq	%r10, 56(%rsp)
	movq	%r11, 64(%rsp)
	movq	%rbx, 72(%rsp)
	movq	%r14, 80(%rsp)
	movq	$0, 88(%rsp)
	movb	$0, %al
	movq	%r12, -288(%rbp)        # 8-byte Spill
	callq	g_object_new
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -184(%rbp)
	callq	gimp_container_tree_view_get_type
	movq	%rax, -192(%rbp)
	cmpq	$0, -184(%rbp)
	jne	.LBB3_51
# BB#50:                                # %if.then.96
	movl	$0, -196(%rbp)
	jmp	.LBB3_56
.LBB3_51:                               # %if.else.97
	movq	-184(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_54
# BB#52:                                # %land.lhs.true.100
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-192(%rbp), %rax
	jne	.LBB3_54
# BB#53:                                # %if.then.104
	movl	$1, -196(%rbp)
	jmp	.LBB3_55
.LBB3_54:                               # %if.else.105
	movq	-184(%rbp), %rdi
	movq	-192(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -196(%rbp)
.LBB3_55:                               # %if.end.107
	jmp	.LBB3_56
.LBB3_56:                               # %if.end.108
	movl	-196(%rbp), %eax
	movl	%eax, -200(%rbp)
	cmpl	$0, -200(%rbp)
	je	.LBB3_58
# BB#57:                                # %if.then.111
	movq	-104(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-304(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_template_view_tree_name_edited, %rsi
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rdi
	movq	-96(%rbp), %rax
	movq	%rax, %rdx
	callq	gimp_container_tree_view_connect_name_edited
.LBB3_58:                               # %if.end.116
	movq	-104(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.17, %rsi
	movabsq	$.L.str.18, %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	-96(%rbp), %rcx
	movq	%rax, 144(%rcx)
	movq	-104(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-320(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.17, %rsi
	movabsq	$.L.str.19, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	-96(%rbp), %rcx
	movq	%rax, 152(%rcx)
	movq	-104(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.17, %rsi
	movabsq	$.L.str.20, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	-96(%rbp), %rcx
	movq	%rax, 160(%rcx)
	movq	-104(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-336(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.17, %rsi
	movabsq	$.L.str.21, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	-96(%rbp), %rcx
	movq	%rax, 168(%rcx)
	movq	-104(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.17, %rsi
	movabsq	$.L.str.22, %rdx
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	-96(%rbp), %rcx
	movq	%rax, 176(%rcx)
	movq	-104(%rbp), %rax
	movq	128(%rax), %rdi
	movq	-96(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rdi, -352(%rbp)        # 8-byte Spill
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	gtk_button_get_type
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gimp_template_get_type
	movq	-352(%rbp), %rdi        # 8-byte Reload
	movq	-368(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_container_view_enable_dnd
	movq	-104(%rbp), %rax
	movq	128(%rax), %rdi
	movq	-96(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	gtk_button_get_type
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	gimp_template_get_type
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	-392(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_container_view_enable_dnd
	movq	-104(%rbp), %rax
	movq	128(%rax), %rdi
	movq	-96(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rdi, -400(%rbp)        # 8-byte Spill
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	gtk_button_get_type
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	gimp_template_get_type
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	-416(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_container_view_enable_dnd
	movq	-104(%rbp), %rax
	movq	128(%rax), %rdi
	movq	-96(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	gtk_button_get_type
	movq	-432(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	gimp_template_get_type
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	-440(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_container_view_enable_dnd
	movq	-104(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-448(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_ui_manager
	movq	-104(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gimp_ui_manager_update
	movq	-96(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	gtk_widget_get_type
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -48(%rbp)
.LBB3_59:                               # %return
	movq	-48(%rbp), %rax
	addq	$520, %rsp              # imm = 0x208
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_template_view_new, .Lfunc_end3-gimp_template_view_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_template_view_tree_name_edited,@function
gimp_template_view_tree_name_edited:    # @gimp_template_view_tree_name_edited
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	128(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	callq	gtk_tree_path_new_from_string
	leaq	-80(%rbp), %rsi
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	144(%rax), %rdi
	movq	-48(%rbp), %rdx
	callq	gtk_tree_model_get_iter
	cmpl	$0, %eax
	je	.LBB4_9
# BB#1:                                 # %if.then
	leaq	-80(%rbp), %rsi
	xorl	%edx, %edx
	leaq	-88(%rbp), %rcx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-40(%rbp), %rax
	movq	144(%rax), %rdi
	movb	$0, %al
	callq	gtk_tree_model_get
	movq	-88(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then.12
	movabsq	$.L.str.23, %rax
	movq	%rax, -104(%rbp)
.LBB4_3:                                # %if.end
	cmpq	$0, -24(%rbp)
	jne	.LBB4_5
# BB#4:                                 # %if.then.14
	movabsq	$.L.str.23, %rax
	movq	%rax, -24(%rbp)
.LBB4_5:                                # %if.end.15
	movq	-104(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB4_7
# BB#6:                                 # %if.then.18
	movq	-96(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_object_set_name
	jmp	.LBB4_8
.LBB4_7:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-88(%rbp), %rcx
	movq	40(%rcx), %rdi
	callq	gimp_viewable_get_description
	movq	%rax, -112(%rbp)
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-80(%rbp), %rsi
	movl	$1, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-112(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_tree_store_set
	movq	-112(%rbp), %rdi
	callq	g_free
.LBB4_8:                                # %if.end.24
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB4_9:                                # %if.end.25
	movq	-48(%rbp), %rdi
	callq	gtk_tree_path_free
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_template_view_tree_name_edited, .Lfunc_end4-gimp_template_view_tree_name_edited
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_template_view_class_init,@function
gimp_template_view_class_init:          # @gimp_template_view_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp22:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_template_view_activate_item, %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rsi, 832(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_template_view_class_init, .Lfunc_end5-gimp_template_view_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_template_view_activate_item,@function
gimp_template_view_activate_item:       # @gimp_template_view_activate_item
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_template_view_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	gimp_template_view_parent_class, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	cmpq	$0, 832(%rax)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	gimp_template_view_parent_class, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	832(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
.LBB6_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	128(%rax), %rdi
	callq	gimp_container_view_get_container
	movq	%rax, -32(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB6_5
# BB#3:                                 # %land.lhs.true
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_container_have
	cmpl	$0, %eax
	je	.LBB6_5
# BB#4:                                 # %if.then.14
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_button_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_button_clicked
.LBB6_5:                                # %if.end.17
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_template_view_activate_item, .Lfunc_end6-gimp_template_view_activate_item
	.cfi_endproc

	.type	gimp_template_view_get_type.g_define_type_id__volatile,@object # @gimp_template_view_get_type.g_define_type_id__volatile
	.local	gimp_template_view_get_type.g_define_type_id__volatile
	.comm	gimp_template_view_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpTemplateView"
	.size	.L.str, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_template_view_new,@object # @__func__.gimp_template_view_new
.L__func__.gimp_template_view_new:
	.asciz	"gimp_template_view_new"
	.size	.L__func__.gimp_template_view_new, 23

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
	.asciz	"view_size > 0 && view_size <= GIMP_VIEWABLE_MAX_PREVIEW_SIZE"
	.size	.L.str.4, 61

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"view_border_width >= 0 && view_border_width <= GIMP_VIEW_MAX_BORDER_WIDTH"
	.size	.L.str.5, 74

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"menu_factory == NULL || GIMP_IS_MENU_FACTORY (menu_factory)"
	.size	.L.str.6, 60

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"view-type"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"container"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"context"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"view-size"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"view-border-width"
	.size	.L.str.11, 18

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"menu-factory"
	.size	.L.str.12, 13

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"menu-identifier"
	.size	.L.str.13, 16

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"<Templates>"
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"ui-path"
	.size	.L.str.15, 8

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"/templates-popup"
	.size	.L.str.16, 17

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"templates"
	.size	.L.str.17, 10

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"templates-create-image"
	.size	.L.str.18, 23

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"templates-new"
	.size	.L.str.19, 14

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"templates-duplicate"
	.size	.L.str.20, 20

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"templates-edit"
	.size	.L.str.21, 15

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"templates-delete"
	.size	.L.str.22, 17

	.type	gimp_template_view_parent_class,@object # @gimp_template_view_parent_class
	.local	gimp_template_view_parent_class
	.comm	gimp_template_view_parent_class,8,8
	.type	GimpTemplateView_private_offset,@object # @GimpTemplateView_private_offset
	.local	GimpTemplateView_private_offset
	.comm	GimpTemplateView_private_offset,4,4
	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.zero	1
	.size	.L.str.23, 1


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
