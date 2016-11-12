	.text
	.file	"gimpdatafactoryview.bc"
	.globl	gimp_data_factory_view_get_type
	.align	16, 0x90
	.type	gimp_data_factory_view_get_type,@function
gimp_data_factory_view_get_type:        # @gimp_data_factory_view_get_type
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
	movq	gimp_data_factory_view_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_data_factory_view_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_data_factory_view_class_intern_init, %rdi
	movl	$152, %r8d
	movabsq	$gimp_data_factory_view_init, %rcx
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
	movabsq	$gimp_data_factory_view_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_data_factory_view_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_data_factory_view_get_type, .Lfunc_end0-gimp_data_factory_view_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_factory_view_class_intern_init,@function
gimp_data_factory_view_class_intern_init: # @gimp_data_factory_view_class_intern_init
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
	movq	%rax, gimp_data_factory_view_parent_class
	cmpl	$0, GimpDataFactoryView_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpDataFactoryView_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_data_factory_view_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_data_factory_view_class_intern_init, .Lfunc_end1-gimp_data_factory_view_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_factory_view_init,@function
gimp_data_factory_view_init:            # @gimp_data_factory_view_init
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
	callq	gimp_data_factory_view_get_type
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	-8(%rbp), %rsi
	movq	%rax, 144(%rsi)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	$0, 40(%rax)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	$0, 48(%rax)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	$0, 56(%rax)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	$0, 64(%rax)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	$0, 72(%rax)
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movq	$0, 80(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_data_factory_view_init, .Lfunc_end2-gimp_data_factory_view_init
	.cfi_endproc

	.globl	gimp_data_factory_view_new
	.align	16, 0x90
	.type	gimp_data_factory_view_new,@function
gimp_data_factory_view_new:             # @gimp_data_factory_view_new
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
	subq	$360, %rsp              # imm = 0x168
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
	movq	32(%rbp), %rax
	movq	24(%rbp), %r10
	movq	16(%rbp), %r11
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movl	%ecx, -76(%rbp)
	movl	%r8d, -80(%rbp)
	movq	%r9, -88(%rbp)
	movq	%r11, -96(%rbp)
	movq	%r10, -104(%rbp)
	movq	%rax, -112(%rbp)
# BB#1:                                 # %do.body
	movq	-64(%rbp), %rax
	movq	%rax, -120(%rbp)
	callq	gimp_data_factory_get_type
	movq	%rax, -128(%rbp)
	cmpq	$0, -120(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -132(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-120(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -132(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-120(%rbp), %rdi
	movq	-128(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -132(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-132(%rbp), %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -136(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_factory_view_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB3_55
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-72(%rbp), %rax
	movq	%rax, -144(%rbp)
	callq	gimp_context_get_type
	movq	%rax, -152(%rbp)
	cmpq	$0, -144(%rbp)
	jne	.LBB3_15
# BB#14:                                # %if.then.20
	movl	$0, -156(%rbp)
	jmp	.LBB3_20
.LBB3_15:                               # %if.else.21
	movq	-144(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_18
# BB#16:                                # %land.lhs.true.24
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-152(%rbp), %rax
	jne	.LBB3_18
# BB#17:                                # %if.then.28
	movl	$1, -156(%rbp)
	jmp	.LBB3_19
.LBB3_18:                               # %if.else.29
	movq	-144(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -156(%rbp)
.LBB3_19:                               # %if.end.31
	jmp	.LBB3_20
.LBB3_20:                               # %if.end.32
	movl	-156(%rbp), %eax
	movl	%eax, -160(%rbp)
	cmpl	$0, -160(%rbp)
	je	.LBB3_22
# BB#21:                                # %if.then.35
	jmp	.LBB3_23
.LBB3_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_factory_view_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB3_55
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
	movabsq	$.L__func__.gimp_data_factory_view_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB3_55
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
	movabsq	$.L__func__.gimp_data_factory_view_new, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB3_55
.LBB3_35:                               # %if.end.53
	jmp	.LBB3_36
.LBB3_36:                               # %do.end.54
	jmp	.LBB3_37
.LBB3_37:                               # %do.body.55
	cmpq	$0, -88(%rbp)
	je	.LBB3_46
# BB#38:                                # %lor.lhs.false
	movq	-88(%rbp), %rax
	movq	%rax, -168(%rbp)
	callq	gimp_menu_factory_get_type
	movq	%rax, -176(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.LBB3_40
# BB#39:                                # %if.then.65
	movl	$0, -180(%rbp)
	jmp	.LBB3_45
.LBB3_40:                               # %if.else.66
	movq	-168(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_43
# BB#41:                                # %land.lhs.true.69
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-176(%rbp), %rax
	jne	.LBB3_43
# BB#42:                                # %if.then.73
	movl	$1, -180(%rbp)
	jmp	.LBB3_44
.LBB3_43:                               # %if.else.74
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -180(%rbp)
.LBB3_44:                               # %if.end.76
	jmp	.LBB3_45
.LBB3_45:                               # %if.end.77
	movl	-180(%rbp), %eax
	movl	%eax, -184(%rbp)
	cmpl	$0, -184(%rbp)
	je	.LBB3_47
.LBB3_46:                               # %if.then.80
	jmp	.LBB3_48
.LBB3_47:                               # %if.else.81
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_factory_view_new, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB3_55
.LBB3_48:                               # %if.end.82
	jmp	.LBB3_49
.LBB3_49:                               # %do.end.83
	jmp	.LBB3_50
.LBB3_50:                               # %do.body.84
	cmpq	$0, -112(%rbp)
	je	.LBB3_52
# BB#51:                                # %if.then.86
	jmp	.LBB3_53
.LBB3_52:                               # %if.else.87
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_factory_view_new, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -48(%rbp)
	jmp	.LBB3_55
.LBB3_53:                               # %if.end.88
	jmp	.LBB3_54
.LBB3_54:                               # %do.end.89
	callq	gimp_data_factory_view_get_type
	movabsq	$.L.str.8, %rsi
	movabsq	$.L.str.9, %rcx
	movabsq	$.L.str.10, %r9
	movabsq	$.L.str.11, %rdx
	movabsq	$.L.str.12, %rdi
	movabsq	$.L.str.13, %r8
	movabsq	$.L.str.14, %r10
	movabsq	$.L.str.15, %r11
	movabsq	$.L.str.16, %rbx
	xorl	%r14d, %r14d
	movl	%r14d, %r15d
	movl	-52(%rbp), %r14d
	movq	-64(%rbp), %r12
	movq	-72(%rbp), %r13
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	movl	-76(%rbp), %esi
	movl	%esi, -196(%rbp)        # 4-byte Spill
	movl	-80(%rbp), %esi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movq	-88(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movq	-96(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	movq	-104(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movq	-112(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movq	-208(%rbp), %rax        # 8-byte Reload
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-192(%rbp), %rax        # 8-byte Reload
	movl	%esi, -252(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -264(%rbp)        # 8-byte Spill
	movl	%r14d, %edx
	movq	%r8, -272(%rbp)         # 8-byte Spill
	movq	%r12, %r8
	movq	%r13, (%rsp)
	movq	-264(%rbp), %r12        # 8-byte Reload
	movq	%r12, 8(%rsp)
	movl	-196(%rbp), %r14d       # 4-byte Reload
	movl	%r14d, 16(%rsp)
	movq	-248(%rbp), %r13        # 8-byte Reload
	movq	%r13, 24(%rsp)
	movl	-252(%rbp), %r14d       # 4-byte Reload
	movl	%r14d, 32(%rsp)
	movq	-272(%rbp), %rax        # 8-byte Reload
	movq	%rax, 40(%rsp)
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, 48(%rsp)
	movq	%r10, 56(%rsp)
	movq	-224(%rbp), %rax        # 8-byte Reload
	movq	%rax, 64(%rsp)
	movq	%r11, 72(%rsp)
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	%rax, 80(%rsp)
	movq	%rbx, 88(%rsp)
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	%rax, 96(%rsp)
	movq	$0, 104(%rsp)
	movb	$0, %al
	movq	%r15, -280(%rbp)        # 8-byte Spill
	callq	g_object_new
	movq	%rax, -48(%rbp)
.LBB3_55:                               # %return
	movq	-48(%rbp), %rax
	addq	$360, %rsp              # imm = 0x168
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_data_factory_view_new, .Lfunc_end3-gimp_data_factory_view_new
	.cfi_endproc

	.globl	gimp_data_factory_view_get_edit_button
	.align	16, 0x90
	.type	gimp_data_factory_view_get_edit_button,@function
gimp_data_factory_view_get_edit_button: # @gimp_data_factory_view_get_edit_button
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_data_factory_view_get_type
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
	movabsq	$.L__func__.gimp_data_factory_view_get_edit_button, %rsi
	movabsq	$.L.str.17, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_13
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB4_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_data_factory_view_get_edit_button, .Lfunc_end4-gimp_data_factory_view_get_edit_button
	.cfi_endproc

	.globl	gimp_data_factory_view_get_duplicate_button
	.align	16, 0x90
	.type	gimp_data_factory_view_get_duplicate_button,@function
gimp_data_factory_view_get_duplicate_button: # @gimp_data_factory_view_get_duplicate_button
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_data_factory_view_get_type
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
	movabsq	$.L__func__.gimp_data_factory_view_get_duplicate_button, %rsi
	movabsq	$.L.str.17, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_13
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	64(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB5_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_data_factory_view_get_duplicate_button, .Lfunc_end5-gimp_data_factory_view_get_duplicate_button
	.cfi_endproc

	.globl	gimp_data_factory_view_get_data_factory
	.align	16, 0x90
	.type	gimp_data_factory_view_get_data_factory,@function
gimp_data_factory_view_get_data_factory: # @gimp_data_factory_view_get_data_factory
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_data_factory_view_get_type
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
	movabsq	$.L__func__.gimp_data_factory_view_get_data_factory, %rsi
	movabsq	$.L.str.17, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB6_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_data_factory_view_get_data_factory, .Lfunc_end6-gimp_data_factory_view_get_data_factory
	.cfi_endproc

	.globl	gimp_data_factory_view_get_children_type
	.align	16, 0x90
	.type	gimp_data_factory_view_get_children_type,@function
gimp_data_factory_view_get_children_type: # @gimp_data_factory_view_get_children_type
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
	callq	gimp_data_factory_view_get_type
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
	movabsq	$.L__func__.gimp_data_factory_view_get_children_type, %rsi
	movabsq	$.L.str.17, %rdx
	callq	g_return_if_fail_warning
	movq	$4, -8(%rbp)
	jmp	.LBB7_13
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	(%rax), %rdi
	callq	gimp_data_factory_get_container
	movq	%rax, %rdi
	callq	gimp_container_get_children_type
	movq	%rax, -8(%rbp)
.LBB7_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_data_factory_view_get_children_type, .Lfunc_end7-gimp_data_factory_view_get_children_type
	.cfi_endproc

	.globl	gimp_data_factory_view_has_data_new_func
	.align	16, 0x90
	.type	gimp_data_factory_view_has_data_new_func,@function
gimp_data_factory_view_has_data_new_func: # @gimp_data_factory_view_has_data_new_func
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_data_factory_view_get_type
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
	movabsq	$.L__func__.gimp_data_factory_view_has_data_new_func, %rsi
	movabsq	$.L.str.17, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB8_13
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	(%rax), %rdi
	callq	gimp_data_factory_has_data_new_func
	movl	%eax, -4(%rbp)
.LBB8_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_data_factory_view_has_data_new_func, .Lfunc_end8-gimp_data_factory_view_has_data_new_func
	.cfi_endproc

	.globl	gimp_data_factory_view_have
	.align	16, 0x90
	.type	gimp_data_factory_view_have,@function
gimp_data_factory_view_have:            # @gimp_data_factory_view_have
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
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_data_factory_view_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB9_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB9_8
.LBB9_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB9_7
.LBB9_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB9_7:                                # %if.end
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB9_10
# BB#9:                                 # %if.then.8
	jmp	.LBB9_11
.LBB9_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_data_factory_view_have, %rsi
	movabsq	$.L.str.17, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB9_13
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	(%rax), %rdi
	callq	gimp_data_factory_get_container
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_container_have
	movl	%eax, -4(%rbp)
.LBB9_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_data_factory_view_have, .Lfunc_end9-gimp_data_factory_view_have
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_factory_view_class_init,@function
gimp_data_factory_view_class_init:      # @gimp_data_factory_view_class_init
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
	subq	$48, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_data_factory_view_activate_item, %rsi
	movabsq	$gimp_data_factory_view_select_item, %rdi
	movabsq	$gimp_data_factory_view_get_property, %rcx
	movabsq	$gimp_data_factory_view_set_property, %rdx
	movabsq	$gimp_data_factory_view_dispose, %r8
	movabsq	$gimp_data_factory_view_constructed, %r9
	movabsq	$gimp_data_factory_view_constructor, %r10
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%r10, 16(%rax)
	movq	-16(%rbp), %rax
	movq	%r9, 72(%rax)
	movq	-16(%rbp), %rax
	movq	%r8, 40(%rax)
	movq	-16(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	%rdi, 824(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, 832(%rax)
	movq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	callq	gimp_data_factory_get_type
	movabsq	$.L.str.9, %rdi
	xorl	%r11d, %r11d
	movl	%r11d, %ecx
	movl	$235, %r8d
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$1, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.16, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	movl	$235, %r8d
	movq	-16(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rax, %rdx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	callq	g_param_spec_string
	movl	$2, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movl	$88, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_data_factory_view_class_init, .Lfunc_end10-gimp_data_factory_view_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_factory_view_constructor,@function
gimp_data_factory_view_constructor:     # @gimp_data_factory_view_constructor
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
	subq	$80, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	gimp_data_factory_view_parent_class, %rdx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_class_cast
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	*%rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_data_factory_view_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-32(%rbp), %rax
	movq	144(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_data_factory_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.7
	movl	$1, -60(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.8
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.10
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.12
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.13
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.18, %rsi
	movl	$178, %edx
	movabsq	$.L__func__.gimp_data_factory_view_constructor, %rcx
	movabsq	$.L.str.19, %r8
	callq	g_assertion_message_expr
.LBB11_11:                              # %if.end.14
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	jmp	.LBB11_13
.LBB11_13:                              # %do.body.15
	movq	-32(%rbp), %rax
	movq	144(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB11_15
# BB#14:                                # %if.then.18
	jmp	.LBB11_16
.LBB11_15:                              # %if.else.19
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.18, %rsi
	movl	$179, %edx
	movabsq	$.L__func__.gimp_data_factory_view_constructor, %rcx
	movabsq	$.L.str.20, %r8
	callq	g_assertion_message_expr
.LBB11_16:                              # %if.end.20
	jmp	.LBB11_17
.LBB11_17:                              # %do.end.21
	movq	-32(%rbp), %rax
	movq	144(%rax), %rax
	movq	(%rax), %rdi
	callq	gimp_data_factory_get_container
	movq	%rax, %rdi
	callq	gimp_tagged_container_new
	movabsq	$.L.str.21, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-32(%rbp), %rdi
	movq	144(%rdi), %rdi
	movq	%rax, 16(%rdi)
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	144(%rdi), %rdi
	movq	16(%rdi), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_set
	movq	-40(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_data_factory_view_constructor, .Lfunc_end11-gimp_data_factory_view_constructor
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_factory_view_constructed,@function
gimp_data_factory_view_constructed:     # @gimp_data_factory_view_constructed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
.Ltmp42:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp43:
	.cfi_def_cfa_register %rbp
	subq	$272, %rsp              # imm = 0x110
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_data_factory_view_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -24(%rbp)
	movq	gimp_data_factory_view_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	cmpq	$0, 72(%rax)
	je	.LBB12_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_data_factory_view_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	72(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
.LBB12_2:                               # %if.end
	movl	$3, %esi
	movq	-24(%rbp), %rdi
	callq	gimp_container_editor_set_selection_mode
	movq	-24(%rbp), %rdi
	movq	128(%rdi), %rdi
	movq	%rdi, -40(%rbp)
	callq	gimp_container_tree_view_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB12_4
# BB#3:                                 # %if.then.9
	movl	$0, -52(%rbp)
	jmp	.LBB12_9
.LBB12_4:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_7
# BB#5:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB12_7
# BB#6:                                 # %if.then.12
	movl	$1, -52(%rbp)
	jmp	.LBB12_8
.LBB12_7:                               # %if.else.13
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB12_8:                               # %if.end.15
	jmp	.LBB12_9
.LBB12_9:                               # %if.end.16
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB12_11
# BB#10:                                # %if.then.18
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$gimp_data_factory_view_tree_name_edited, %rsi
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	callq	gimp_container_tree_view_connect_name_edited
.LBB12_11:                              # %if.end.23
	movabsq	$.L.str.22, %rdi
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	8(%rax), %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-16(%rbp), %rsi
	movq	144(%rsi), %rsi
	movq	8(%rsi), %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	-16(%rbp), %rcx
	movq	144(%rcx), %rcx
	movq	%rax, 48(%rcx)
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	-16(%rbp), %rdi
	callq	gimp_data_factory_view_has_data_new_func
	cmpl	$0, %eax
	je	.LBB12_13
# BB#12:                                # %if.then.34
	movabsq	$.L.str.23, %rdi
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	8(%rax), %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-16(%rbp), %rsi
	movq	144(%rsi), %rsi
	movq	8(%rsi), %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	-16(%rbp), %rcx
	movq	144(%rcx), %rcx
	movq	%rax, 56(%rcx)
	movq	-32(%rbp), %rdi
	callq	g_free
.LBB12_13:                              # %if.end.45
	movabsq	$.L.str.24, %rdi
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	8(%rax), %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-16(%rbp), %rsi
	movq	144(%rsi), %rsi
	movq	8(%rsi), %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	-16(%rbp), %rcx
	movq	144(%rcx), %rcx
	movq	%rax, 64(%rcx)
	movq	-32(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.25, %rdi
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	8(%rax), %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-16(%rbp), %rdx
	movq	144(%rdx), %rdx
	movq	8(%rdx), %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	-16(%rbp), %rcx
	movq	144(%rcx), %rcx
	movq	%rax, 72(%rcx)
	movq	-32(%rbp), %rdi
	callq	g_free
	movabsq	$.L.str.26, %rdi
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	8(%rax), %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	movq	-16(%rbp), %rdx
	movq	144(%rdx), %rdx
	movq	8(%rdx), %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_editor_add_action_button
	movq	-16(%rbp), %rcx
	movq	144(%rcx), %rcx
	movq	%rax, 80(%rcx)
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_tagged_container_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	gimp_combo_tag_entry_new
	movq	-16(%rbp), %rcx
	movq	144(%rcx), %rcx
	movq	%rax, 24(%rcx)
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%r8d, %r8d
	movq	-16(%rbp), %rcx
	movq	144(%rcx), %rcx
	movq	24(%rcx), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	gtk_box_pack_start
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%edx, %edx
	movq	-16(%rbp), %rsi
	movq	144(%rsi), %rsi
	movq	24(%rsi), %rsi
	movq	%rax, %rdi
	callq	gtk_box_reorder_child
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	24(%rax), %rdi
	callq	gtk_widget_show
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_tagged_container_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, %rdi
	callq	gimp_combo_tag_entry_new
	movq	-16(%rbp), %rdi
	movq	144(%rdi), %rdi
	movq	%rax, 32(%rdi)
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_tag_entry_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	144(%rsi), %rsi
	movq	40(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_tag_entry_set_selected_items
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	40(%rax), %rdi
	callq	g_list_free
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	$0, 40(%rax)
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rsi
	movq	144(%rsi), %rsi
	movq	32(%rsi), %rsi
	movq	%rax, %rdi
	movl	%ecx, %edx
	movl	%ecx, -180(%rbp)        # 4-byte Spill
	movl	-180(%rbp), %r8d        # 4-byte Reload
	callq	gtk_box_pack_start
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	32(%rax), %rdi
	callq	gtk_widget_show
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	48(%rax), %rax
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	gtk_button_get_type
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	144(%rsi), %rsi
	movq	(%rsi), %rdi
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	gimp_data_factory_get_container
	movq	%rax, %rdi
	callq	gimp_container_get_children_type
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	-208(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_container_view_enable_dnd
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	64(%rax), %rax
	movq	%rdi, -216(%rbp)        # 8-byte Spill
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	gtk_button_get_type
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rdx
	movq	144(%rdx), %rdx
	movq	(%rdx), %rdi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	gimp_data_factory_get_container
	movq	%rax, %rdi
	callq	gimp_container_get_children_type
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	-232(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_container_view_enable_dnd
	movq	-24(%rbp), %rax
	movq	128(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	72(%rax), %rax
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	gtk_button_get_type
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rdx
	movq	144(%rdx), %rdx
	movq	(%rdx), %rdi
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	gimp_data_factory_get_container
	movq	%rax, %rdi
	callq	gimp_container_get_children_type
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	-256(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_container_view_enable_dnd
	movq	-24(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	gimp_editor_get_type
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_editor_get_ui_manager
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	gimp_ui_manager_update
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_data_factory_view_constructed, .Lfunc_end12-gimp_data_factory_view_constructed
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_factory_view_dispose,@function
gimp_data_factory_view_dispose:         # @gimp_data_factory_view_dispose
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_data_factory_view_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	cmpq	$0, 16(%rax)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	$0, 16(%rax)
.LBB13_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB13_4
# BB#3:                                 # %if.then.8
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	$0, (%rax)
.LBB13_4:                               # %if.end.13
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB13_6
# BB#5:                                 # %if.then.16
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	8(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	$0, 8(%rax)
.LBB13_6:                               # %if.end.21
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_data_factory_view_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_data_factory_view_dispose, .Lfunc_end13-gimp_data_factory_view_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_factory_view_set_property,@function
gimp_data_factory_view_set_property:    # @gimp_data_factory_view_set_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_data_factory_view_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB14_1
	jmp	.LBB14_7
.LBB14_7:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB14_2
	jmp	.LBB14_3
.LBB14_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_dup_object
	movq	-40(%rbp), %rdi
	movq	144(%rdi), %rdi
	movq	%rax, (%rdi)
	jmp	.LBB14_6
.LBB14_2:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_dup_string
	movq	-40(%rbp), %rdi
	movq	144(%rdi), %rdi
	movq	%rax, 8(%rdi)
	jmp	.LBB14_6
.LBB14_3:                               # %sw.default
	jmp	.LBB14_4
.LBB14_4:                               # %do.body
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
	movabsq	$.L.str.28, %rdi
	movabsq	$.L.str.18, %rsi
	movl	$338, %edx              # imm = 0x152
	movabsq	$.L.str.29, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#5:                                 # %do.end
	jmp	.LBB14_6
.LBB14_6:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_data_factory_view_set_property, .Lfunc_end14-gimp_data_factory_view_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_factory_view_get_property,@function
gimp_data_factory_view_get_property:    # @gimp_data_factory_view_get_property
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_data_factory_view_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%r9d, -80(%rbp)         # 4-byte Spill
	je	.LBB15_1
	jmp	.LBB15_7
.LBB15_7:                               # %entry
	movl	-76(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	je	.LBB15_2
	jmp	.LBB15_3
.LBB15_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB15_6
.LBB15_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	movq	8(%rax), %rsi
	callq	g_value_set_string
	jmp	.LBB15_6
.LBB15_3:                               # %sw.default
	jmp	.LBB15_4
.LBB15_4:                               # %do.body
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
	movabsq	$.L.str.28, %rdi
	movabsq	$.L.str.18, %rsi
	movl	$362, %edx              # imm = 0x16A
	movabsq	$.L.str.29, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#5:                                 # %do.end
	jmp	.LBB15_6
.LBB15_6:                               # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_data_factory_view_get_property, .Lfunc_end15-gimp_data_factory_view_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_factory_view_select_item,@function
gimp_data_factory_view_select_item:     # @gimp_data_factory_view_select_item
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp55:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_data_factory_view_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	gimp_data_factory_view_parent_class, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	cmpq	$0, 824(%rax)
	je	.LBB16_2
# BB#1:                                 # %if.then
	movq	gimp_data_factory_view_parent_class, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	824(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
.LBB16_2:                               # %if.end
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	cmpq	$0, 32(%rax)
	je	.LBB16_4
# BB#3:                                 # %if.then.8
	movq	-8(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_container_view_interface_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-40(%rbp), %rsi
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	-32(%rbp), %rdi
	callq	gimp_container_view_get_selected
	movq	-24(%rbp), %rsi
	movq	144(%rsi), %rsi
	movq	32(%rsi), %rsi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	callq	gimp_tag_entry_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_tag_entry_set_selected_items
	movq	-40(%rbp), %rdi
	callq	g_list_free
	jmp	.LBB16_7
.LBB16_4:                               # %if.else
	cmpq	$0, -16(%rbp)
	je	.LBB16_6
# BB#5:                                 # %if.then.18
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	movq	40(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movq	-24(%rbp), %rsi
	movq	144(%rsi), %rsi
	movq	%rax, 40(%rsi)
.LBB16_6:                               # %if.end.23
	jmp	.LBB16_7
.LBB16_7:                               # %if.end.24
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_data_factory_view_select_item, .Lfunc_end16-gimp_data_factory_view_select_item
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_factory_view_activate_item,@function
gimp_data_factory_view_activate_item:   # @gimp_data_factory_view_activate_item
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp58:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_data_factory_view_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_data_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -32(%rbp)
	movq	gimp_data_factory_view_parent_class, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	cmpq	$0, 832(%rax)
	je	.LBB17_2
# BB#1:                                 # %if.then
	movq	gimp_data_factory_view_parent_class, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	832(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
.LBB17_2:                               # %if.end
	cmpq	$0, -32(%rbp)
	je	.LBB17_8
# BB#3:                                 # %land.lhs.true
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_data_factory_view_have
	cmpl	$0, %eax
	je	.LBB17_8
# BB#4:                                 # %if.then.14
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	cmpq	$0, 48(%rax)
	je	.LBB17_7
# BB#5:                                 # %land.lhs.true.16
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	movq	48(%rax), %rdi
	callq	gtk_widget_is_sensitive
	cmpl	$0, %eax
	je	.LBB17_7
# BB#6:                                 # %if.then.21
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	movq	48(%rax), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gtk_button_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_button_clicked
.LBB17_7:                               # %if.end.26
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.27
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_data_factory_view_activate_item, .Lfunc_end17-gimp_data_factory_view_activate_item
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_data_factory_view_tree_name_edited,@function
gimp_data_factory_view_tree_name_edited: # @gimp_data_factory_view_tree_name_edited
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp61:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	callq	gimp_container_editor_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	128(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_container_tree_view_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
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
	je	.LBB18_8
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
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	gimp_data_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -96(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB18_3
# BB#2:                                 # %if.then.11
	movabsq	$.L.str.27, %rax
	movq	%rax, -24(%rbp)
.LBB18_3:                               # %if.end
	movq	-24(%rbp), %rdi
	callq	g_strdup
	movq	%rax, %rdi
	callq	g_strchug
	movq	%rax, %rdi
	callq	g_strchomp
	movl	$24, %esi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	movabsq	$gimp_data_factory_view_tree_name_edited, %rdi
	movq	%rax, -104(%rbp)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %r9
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movl	%ecx, %edx
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	%r9, -144(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	-144(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	callq	g_signal_handlers_block_matched
	movq	-96(%rbp), %rdi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	gimp_data_is_writable
	cmpl	$0, %eax
	je	.LBB18_6
# BB#4:                                 # %land.lhs.true
	movq	-104(%rbp), %rdi
	callq	strlen
	cmpq	$0, %rax
	je	.LBB18_6
# BB#5:                                 # %if.then.20
	movq	-96(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-104(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_take_name
	jmp	.LBB18_7
.LBB18_6:                               # %if.else
	movq	-104(%rbp), %rdi
	callq	g_free
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-88(%rbp), %rdi
	movq	40(%rdi), %rdi
	callq	gimp_viewable_get_description
	movq	%rax, -104(%rbp)
	movq	-40(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gtk_tree_store_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	leaq	-80(%rbp), %rsi
	movl	$1, %edx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-104(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_tree_store_set
	movq	-104(%rbp), %rdi
	callq	g_free
.LBB18_7:                               # %if.end.28
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_data_factory_view_tree_name_edited, %rdx
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %r9
	movq	%rdx, -176(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-176(%rbp), %r10        # 8-byte Reload
	movq	%r9, -184(%rbp)         # 8-byte Spill
	movq	%r10, %r9
	movq	-184(%rbp), %r11        # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_unblock_matched
	movq	-88(%rbp), %rdi
	movl	%eax, -188(%rbp)        # 4-byte Spill
	callq	g_object_unref
.LBB18_8:                               # %if.end.30
	movq	-48(%rbp), %rdi
	callq	gtk_tree_path_free
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_data_factory_view_tree_name_edited, .Lfunc_end18-gimp_data_factory_view_tree_name_edited
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
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
	je	.LBB19_2
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
.LBB19_2:                               # %entry
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
.Lfunc_end19:
	.size	g_warning, .Lfunc_end19-g_warning
	.cfi_endproc

	.type	gimp_data_factory_view_get_type.g_define_type_id__volatile,@object # @gimp_data_factory_view_get_type.g_define_type_id__volatile
	.local	gimp_data_factory_view_get_type.g_define_type_id__volatile
	.comm	gimp_data_factory_view_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpDataFactoryView"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Widgets"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_data_factory_view_new,@object # @__func__.gimp_data_factory_view_new
.L__func__.gimp_data_factory_view_new:
	.asciz	"gimp_data_factory_view_new"
	.size	.L__func__.gimp_data_factory_view_new, 27

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_DATA_FACTORY (factory)"
	.size	.L.str.2, 31

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
	.asciz	"action_group != NULL"
	.size	.L.str.7, 21

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"view-type"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"data-factory"
	.size	.L.str.9, 13

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"context"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"view-size"
	.size	.L.str.11, 10

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"view-border-width"
	.size	.L.str.12, 18

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"menu-factory"
	.size	.L.str.13, 13

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"menu-identifier"
	.size	.L.str.14, 16

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"ui-path"
	.size	.L.str.15, 8

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"action-group"
	.size	.L.str.16, 13

	.type	.L__func__.gimp_data_factory_view_get_edit_button,@object # @__func__.gimp_data_factory_view_get_edit_button
.L__func__.gimp_data_factory_view_get_edit_button:
	.asciz	"gimp_data_factory_view_get_edit_button"
	.size	.L__func__.gimp_data_factory_view_get_edit_button, 39

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"GIMP_IS_DATA_FACTORY_VIEW (factory_view)"
	.size	.L.str.17, 41

	.type	.L__func__.gimp_data_factory_view_get_duplicate_button,@object # @__func__.gimp_data_factory_view_get_duplicate_button
.L__func__.gimp_data_factory_view_get_duplicate_button:
	.asciz	"gimp_data_factory_view_get_duplicate_button"
	.size	.L__func__.gimp_data_factory_view_get_duplicate_button, 44

	.type	.L__func__.gimp_data_factory_view_get_data_factory,@object # @__func__.gimp_data_factory_view_get_data_factory
.L__func__.gimp_data_factory_view_get_data_factory:
	.asciz	"gimp_data_factory_view_get_data_factory"
	.size	.L__func__.gimp_data_factory_view_get_data_factory, 40

	.type	.L__func__.gimp_data_factory_view_get_children_type,@object # @__func__.gimp_data_factory_view_get_children_type
.L__func__.gimp_data_factory_view_get_children_type:
	.asciz	"gimp_data_factory_view_get_children_type"
	.size	.L__func__.gimp_data_factory_view_get_children_type, 41

	.type	.L__func__.gimp_data_factory_view_has_data_new_func,@object # @__func__.gimp_data_factory_view_has_data_new_func
.L__func__.gimp_data_factory_view_has_data_new_func:
	.asciz	"gimp_data_factory_view_has_data_new_func"
	.size	.L__func__.gimp_data_factory_view_has_data_new_func, 41

	.type	.L__func__.gimp_data_factory_view_have,@object # @__func__.gimp_data_factory_view_have
.L__func__.gimp_data_factory_view_have:
	.asciz	"gimp_data_factory_view_have"
	.size	.L__func__.gimp_data_factory_view_have, 28

	.type	gimp_data_factory_view_parent_class,@object # @gimp_data_factory_view_parent_class
	.local	gimp_data_factory_view_parent_class
	.comm	gimp_data_factory_view_parent_class,8,8
	.type	GimpDataFactoryView_private_offset,@object # @GimpDataFactoryView_private_offset
	.local	GimpDataFactoryView_private_offset
	.comm	GimpDataFactoryView_private_offset,4,4
	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimpdatafactoryview.c"
	.size	.L.str.18, 22

	.type	.L__func__.gimp_data_factory_view_constructor,@object # @__func__.gimp_data_factory_view_constructor
.L__func__.gimp_data_factory_view_constructor:
	.asciz	"gimp_data_factory_view_constructor"
	.size	.L__func__.gimp_data_factory_view_constructor, 35

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"GIMP_IS_DATA_FACTORY (factory_view->priv->factory)"
	.size	.L.str.19, 51

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"factory_view->priv->action_group != NULL"
	.size	.L.str.20, 41

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"container"
	.size	.L.str.21, 10

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"%s-edit"
	.size	.L.str.22, 8

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"%s-new"
	.size	.L.str.23, 7

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"%s-duplicate"
	.size	.L.str.24, 13

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"%s-delete"
	.size	.L.str.25, 10

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"%s-refresh"
	.size	.L.str.26, 11

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.zero	1
	.size	.L.str.27, 1

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.28, 54

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"property"
	.size	.L.str.29, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
