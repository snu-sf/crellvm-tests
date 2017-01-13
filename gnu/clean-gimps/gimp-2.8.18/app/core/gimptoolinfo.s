	.text
	.file	"gimptoolinfo.bc"
	.globl	gimp_tool_info_get_type
	.align	16, 0x90
	.type	gimp_tool_info_get_type,@function
gimp_tool_info_get_type:                # @gimp_tool_info_get_type
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
	movq	gimp_tool_info_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_tool_info_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_viewable_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$280, %edx              # imm = 0x118
	movabsq	$gimp_tool_info_class_intern_init, %rdi
	movl	$144, %r8d
	movabsq	$gimp_tool_info_init, %rcx
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
	movabsq	$gimp_tool_info_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_tool_info_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_tool_info_get_type, .Lfunc_end0-gimp_tool_info_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_info_class_intern_init,@function
gimp_tool_info_class_intern_init:       # @gimp_tool_info_class_intern_init
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
	movq	%rax, gimp_tool_info_parent_class
	cmpl	$0, GimpToolInfo_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpToolInfo_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_tool_info_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_tool_info_class_intern_init, .Lfunc_end1-gimp_tool_info_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_info_init,@function
gimp_tool_info_init:                    # @gimp_tool_info_init
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
	movq	$0, 32(%rdi)
	movq	-8(%rbp), %rdi
	movq	$4, 40(%rdi)
	movq	-8(%rbp), %rdi
	movq	$4, 48(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 56(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 64(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 72(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 80(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 88(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 96(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 104(%rdi)
	movq	-8(%rbp), %rdi
	movl	$1, 112(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 120(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 128(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_tool_info_init, .Lfunc_end2-gimp_tool_info_init
	.cfi_endproc

	.globl	gimp_tool_info_new
	.align	16, 0x90
	.type	gimp_tool_info_new,@function
gimp_tool_info_new:                     # @gimp_tool_info_new
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
	pushq	%r12
	pushq	%rbx
	subq	$208, %rsp
.Ltmp12:
	.cfi_offset %rbx, -48
.Ltmp13:
	.cfi_offset %r12, -40
.Ltmp14:
	.cfi_offset %r14, -32
.Ltmp15:
	.cfi_offset %r15, -24
	movq	64(%rbp), %rax
	movq	56(%rbp), %r10
	movq	48(%rbp), %r11
	movq	40(%rbp), %rbx
	movq	32(%rbp), %r14
	movq	24(%rbp), %r15
	movq	16(%rbp), %r12
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movl	%ecx, -68(%rbp)
	movq	%r8, -80(%rbp)
	movq	%r9, -88(%rbp)
	movq	%r12, -96(%rbp)
	movq	%r15, -104(%rbp)
	movq	%r14, -112(%rbp)
	movq	%rbx, -120(%rbp)
	movq	%r11, -128(%rbp)
	movq	%r10, -136(%rbp)
	movq	%rax, -144(%rbp)
# BB#1:                                 # %do.body
	movq	-48(%rbp), %rax
	movq	%rax, -168(%rbp)
	callq	gimp_get_type
	movq	%rax, -176(%rbp)
	cmpq	$0, -168(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -180(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-168(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-176(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -180(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-168(%rbp), %rdi
	movq	-176(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -180(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-180(%rbp), %eax
	movl	%eax, -184(%rbp)
	cmpl	$0, -184(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_info_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB3_65
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	cmpq	$0, -80(%rbp)
	je	.LBB3_15
# BB#14:                                # %if.then.13
	jmp	.LBB3_16
.LBB3_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_info_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB3_65
.LBB3_16:                               # %if.end.15
	jmp	.LBB3_17
.LBB3_17:                               # %do.end.16
	jmp	.LBB3_18
.LBB3_18:                               # %do.body.17
	cmpq	$0, -88(%rbp)
	je	.LBB3_20
# BB#19:                                # %if.then.19
	jmp	.LBB3_21
.LBB3_20:                               # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_info_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB3_65
.LBB3_21:                               # %if.end.21
	jmp	.LBB3_22
.LBB3_22:                               # %do.end.22
	jmp	.LBB3_23
.LBB3_23:                               # %do.body.23
	cmpq	$0, -96(%rbp)
	je	.LBB3_25
# BB#24:                                # %if.then.25
	jmp	.LBB3_26
.LBB3_25:                               # %if.else.26
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_info_new, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB3_65
.LBB3_26:                               # %if.end.27
	jmp	.LBB3_27
.LBB3_27:                               # %do.end.28
	jmp	.LBB3_28
.LBB3_28:                               # %do.body.29
	cmpq	$0, -104(%rbp)
	je	.LBB3_30
# BB#29:                                # %if.then.31
	jmp	.LBB3_31
.LBB3_30:                               # %if.else.32
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_info_new, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB3_65
.LBB3_31:                               # %if.end.33
	jmp	.LBB3_32
.LBB3_32:                               # %do.end.34
	jmp	.LBB3_33
.LBB3_33:                               # %do.body.35
	cmpq	$0, -128(%rbp)
	je	.LBB3_35
# BB#34:                                # %if.then.37
	jmp	.LBB3_36
.LBB3_35:                               # %if.else.38
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_info_new, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB3_65
.LBB3_36:                               # %if.end.39
	jmp	.LBB3_37
.LBB3_37:                               # %do.end.40
	jmp	.LBB3_38
.LBB3_38:                               # %do.body.41
	cmpq	$0, -136(%rbp)
	je	.LBB3_40
# BB#39:                                # %if.then.43
	jmp	.LBB3_41
.LBB3_40:                               # %if.else.44
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_info_new, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB3_65
.LBB3_41:                               # %if.end.45
	jmp	.LBB3_42
.LBB3_42:                               # %do.end.46
	jmp	.LBB3_43
.LBB3_43:                               # %do.body.47
	cmpq	$0, -144(%rbp)
	je	.LBB3_45
# BB#44:                                # %if.then.49
	jmp	.LBB3_46
.LBB3_45:                               # %if.else.50
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_info_new, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB3_65
.LBB3_46:                               # %if.end.51
	jmp	.LBB3_47
.LBB3_47:                               # %do.end.52
	movq	-48(%rbp), %rax
	movq	344(%rax), %rdi
	movq	-136(%rbp), %rsi
	callq	gimp_container_get_child_by_name
	movq	%rax, -152(%rbp)
# BB#48:                                # %do.body.54
	movq	-152(%rbp), %rax
	movq	%rax, -192(%rbp)
	callq	gimp_paint_info_get_type
	movq	%rax, -200(%rbp)
	cmpq	$0, -192(%rbp)
	jne	.LBB3_50
# BB#49:                                # %if.then.63
	movl	$0, -204(%rbp)
	jmp	.LBB3_55
.LBB3_50:                               # %if.else.64
	movq	-192(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_53
# BB#51:                                # %land.lhs.true.67
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-200(%rbp), %rax
	jne	.LBB3_53
# BB#52:                                # %if.then.71
	movl	$1, -204(%rbp)
	jmp	.LBB3_54
.LBB3_53:                               # %if.else.72
	movq	-192(%rbp), %rdi
	movq	-200(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -204(%rbp)
.LBB3_54:                               # %if.end.74
	jmp	.LBB3_55
.LBB3_55:                               # %if.end.75
	movl	-204(%rbp), %eax
	movl	%eax, -208(%rbp)
	cmpl	$0, -208(%rbp)
	je	.LBB3_57
# BB#56:                                # %if.then.78
	jmp	.LBB3_58
.LBB3_57:                               # %if.else.79
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_info_new, %rsi
	movabsq	$.L.str.10, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -40(%rbp)
	jmp	.LBB3_65
.LBB3_58:                               # %if.end.80
	jmp	.LBB3_59
.LBB3_59:                               # %do.end.81
	callq	gimp_tool_info_get_type
	movabsq	$.L.str.11, %rsi
	movabsq	$.L.str.12, %rcx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	-80(%rbp), %rdx
	movq	-144(%rbp), %r8
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -160(%rbp)
	movq	-48(%rbp), %rax
	movq	-160(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-56(%rbp), %rax
	movq	-160(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-64(%rbp), %rax
	movq	-160(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movl	-68(%rbp), %r10d
	movq	-160(%rbp), %rax
	movl	%r10d, 56(%rax)
	movq	-88(%rbp), %rdi
	callq	g_strdup
	movq	-160(%rbp), %rcx
	movq	%rax, 64(%rcx)
	movq	-96(%rbp), %rdi
	callq	g_strdup
	movq	-160(%rbp), %rcx
	movq	%rax, 72(%rcx)
	movq	-104(%rbp), %rdi
	callq	g_strdup
	movq	-160(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movq	-112(%rbp), %rdi
	callq	g_strdup
	movq	-160(%rbp), %rcx
	movq	%rax, 88(%rcx)
	movq	-120(%rbp), %rdi
	callq	g_strdup
	movq	-160(%rbp), %rcx
	movq	%rax, 96(%rcx)
	movq	-128(%rbp), %rdi
	callq	g_strdup
	movq	-160(%rbp), %rcx
	movq	%rax, 104(%rcx)
	movq	-152(%rbp), %rax
	movq	-160(%rbp), %rcx
	movq	%rax, 128(%rcx)
	movq	-160(%rbp), %rax
	movq	48(%rax), %rax
	movq	-152(%rbp), %rcx
	cmpq	48(%rcx), %rax
	jne	.LBB3_61
# BB#60:                                # %if.then.103
	movq	-152(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-160(%rbp), %rdi
	movq	%rax, 120(%rdi)
	jmp	.LBB3_62
.LBB3_61:                               # %if.else.105
	movabsq	$.L.str.13, %rsi
	movabsq	$.L.str.11, %rcx
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-160(%rbp), %rdx
	movq	48(%rdx), %rdi
	movq	-48(%rbp), %rdx
	movq	-80(%rbp), %r8
	movb	$0, %al
	callq	g_object_new
	movq	-160(%rbp), %rcx
	movq	%rax, 120(%rcx)
.LBB3_62:                               # %if.end.109
	movabsq	$.L.str.14, %rsi
	movabsq	$.L.str.15, %rcx
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-160(%rbp), %rdx
	movq	120(%rdx), %rdx
	movq	-160(%rbp), %rdi
	movq	-160(%rbp), %r8
	movq	%rdi, -224(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	-224(%rbp), %rdx        # 8-byte Reload
	movb	$0, %al
	callq	g_object_set
	movq	-160(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	%rcx, -232(%rbp)        # 8-byte Spill
	callq	gimp_tool_options_get_type
	movq	-232(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB3_64
# BB#63:                                # %if.then.114
	movq	-48(%rbp), %rax
	movq	504(%rax), %rdi
	callq	gimp_data_factory_get_container
	movabsq	$gimp_tool_info_filter_preset, %rsi
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rdi
	movq	-160(%rbp), %rax
	movq	%rax, %rdx
	callq	gimp_filtered_container_new
	movq	-160(%rbp), %rdx
	movq	%rax, 136(%rdx)
.LBB3_64:                               # %if.end.119
	movq	-160(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB3_65:                               # %return
	movq	-40(%rbp), %rax
	addq	$208, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_tool_info_new, .Lfunc_end3-gimp_tool_info_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_info_filter_preset,@function
gimp_tool_info_filter_preset:           # @gimp_tool_info_filter_preset
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_tool_preset_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	344(%rax), %rax
	cmpq	-32(%rbp), %rax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_tool_info_filter_preset, .Lfunc_end4-gimp_tool_info_filter_preset
	.cfi_endproc

	.globl	gimp_tool_info_set_standard
	.align	16, 0x90
	.type	gimp_tool_info_set_standard,@function
gimp_tool_info_set_standard:            # @gimp_tool_info_set_standard
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
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
	movabsq	$.L__func__.gimp_tool_info_set_standard, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_31
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB5_22
# BB#14:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_tool_info_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB5_16
# BB#15:                                # %if.then.21
	movl	$0, -60(%rbp)
	jmp	.LBB5_21
.LBB5_16:                               # %if.else.22
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_19
# BB#17:                                # %land.lhs.true.25
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB5_19
# BB#18:                                # %if.then.29
	movl	$1, -60(%rbp)
	jmp	.LBB5_20
.LBB5_19:                               # %if.else.30
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB5_20:                               # %if.end.32
	jmp	.LBB5_21
.LBB5_21:                               # %if.end.33
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB5_23
.LBB5_22:                               # %if.then.36
	jmp	.LBB5_24
.LBB5_23:                               # %if.else.37
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_info_set_standard, %rsi
	movabsq	$.L.str.16, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_31
.LBB5_24:                               # %if.end.38
	jmp	.LBB5_25
.LBB5_25:                               # %do.end.39
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	536(%rcx), %rax
	je	.LBB5_31
# BB#26:                                # %if.then.41
	movq	-8(%rbp), %rax
	cmpq	$0, 536(%rax)
	je	.LBB5_28
# BB#27:                                # %if.then.44
	movq	-8(%rbp), %rax
	movq	536(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB5_28:                               # %if.end.46
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 536(%rcx)
	movq	-8(%rbp), %rax
	cmpq	$0, 536(%rax)
	je	.LBB5_30
# BB#29:                                # %if.then.50
	movq	-8(%rbp), %rax
	movq	536(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB5_30:                               # %if.end.53
	jmp	.LBB5_31
.LBB5_31:                               # %if.end.54
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_tool_info_set_standard, .Lfunc_end5-gimp_tool_info_set_standard
	.cfi_endproc

	.globl	gimp_tool_info_get_standard
	.align	16, 0x90
	.type	gimp_tool_info_get_standard,@function
gimp_tool_info_get_standard:            # @gimp_tool_info_get_standard
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_get_type
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
	movabsq	$.L__func__.gimp_tool_info_get_standard, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	536(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB6_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_tool_info_get_standard, .Lfunc_end6-gimp_tool_info_get_standard
	.cfi_endproc

	.globl	gimp_tool_info_build_options_filename
	.align	16, 0x90
	.type	gimp_tool_info_build_options_filename,@function
gimp_tool_info_build_options_filename:  # @gimp_tool_info_build_options_filename
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_tool_info_get_type
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
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_info_build_options_filename, %rsi
	movabsq	$.L.str.17, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB7_16
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB7_14
# BB#13:                                # %if.then.13
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movb	$0, %al
	callq	g_strconcat
	movq	%rax, -48(%rbp)
	jmp	.LBB7_15
.LBB7_14:                               # %if.else.15
	movq	-32(%rbp), %rdi
	callq	g_strdup
	movq	%rax, -48(%rbp)
.LBB7_15:                               # %if.end.17
	callq	gimp_directory
	movabsq	$.L.str.18, %rsi
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_build_filename
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_free
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB7_16:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_tool_info_build_options_filename, .Lfunc_end7-gimp_tool_info_build_options_filename
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_info_class_init,@function
gimp_tool_info_class_init:              # @gimp_tool_info_class_init
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
	pushq	%rbx
	subq	$56, %rsp
.Ltmp31:
	.cfi_offset %rbx, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$.L.str.19, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$1, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movabsq	$gimp_tool_info_get_description, %rdx
	movabsq	$gimp_tool_info_set_property, %r9
	movabsq	$gimp_tool_info_get_property, %r10
	movabsq	$gimp_tool_info_finalize, %r11
	movabsq	$gimp_tool_info_dispose, %rbx
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rbx, 40(%rax)
	movq	-24(%rbp), %rax
	movq	%r11, 48(%rax)
	movq	-24(%rbp), %rax
	movq	%r10, 32(%rax)
	movq	-24(%rbp), %rax
	movq	%r9, 24(%rax)
	movq	-32(%rbp), %rax
	movq	%rdx, 248(%rax)
	movq	-24(%rbp), %rax
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	g_param_spec_boolean
	movl	$1, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_tool_info_class_init, .Lfunc_end8-gimp_tool_info_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_info_dispose,@function
gimp_tool_info_dispose:                 # @gimp_tool_info_dispose
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_tool_info_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 120(%rax)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movl	$80, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	120(%rcx), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	g_object_run_dispose
	movq	-16(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 120(%rax)
.LBB9_2:                                # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 136(%rax)
	je	.LBB9_4
# BB#3:                                 # %if.then.7
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 136(%rax)
.LBB9_4:                                # %if.end.10
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_tool_info_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_tool_info_dispose, .Lfunc_end9-gimp_tool_info_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_info_finalize,@function
gimp_tool_info_finalize:                # @gimp_tool_info_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_tool_info_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB10_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	64(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 64(%rax)
.LBB10_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB10_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	72(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 72(%rax)
.LBB10_4:                               # %if.end.8
	movq	-16(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	.LBB10_6
# BB#5:                                 # %if.then.10
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 80(%rax)
.LBB10_6:                               # %if.end.13
	movq	-16(%rbp), %rax
	cmpq	$0, 88(%rax)
	je	.LBB10_8
# BB#7:                                 # %if.then.15
	movq	-16(%rbp), %rax
	movq	88(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 88(%rax)
.LBB10_8:                               # %if.end.18
	movq	-16(%rbp), %rax
	cmpq	$0, 96(%rax)
	je	.LBB10_10
# BB#9:                                 # %if.then.20
	movq	-16(%rbp), %rax
	movq	96(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 96(%rax)
.LBB10_10:                              # %if.end.23
	movq	-16(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB10_12
# BB#11:                                # %if.then.25
	movq	-16(%rbp), %rax
	movq	104(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 104(%rax)
.LBB10_12:                              # %if.end.28
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_tool_info_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_tool_info_finalize, .Lfunc_end10-gimp_tool_info_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_info_get_property,@function
gimp_tool_info_get_property:            # @gimp_tool_info_get_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_tool_info_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB11_2
	jmp	.LBB11_1
.LBB11_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	112(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB11_5
.LBB11_2:                               # %sw.default
	jmp	.LBB11_3
.LBB11_3:                               # %do.body
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
	movabsq	$.L.str.20, %rdi
	movabsq	$.L.str.21, %rsi
	movl	$183, %edx
	movabsq	$.L.str.22, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB11_5
.LBB11_5:                               # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_tool_info_get_property, .Lfunc_end11-gimp_tool_info_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_info_set_property,@function
gimp_tool_info_set_property:            # @gimp_tool_info_set_property
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_tool_info_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	subl	$1, %r8d
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	jne	.LBB12_2
	jmp	.LBB12_1
.LBB12_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 112(%rdi)
	jmp	.LBB12_5
.LBB12_2:                               # %sw.default
	jmp	.LBB12_3
.LBB12_3:                               # %do.body
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
	movabsq	$.L.str.20, %rdi
	movabsq	$.L.str.21, %rsi
	movl	$202, %edx
	movabsq	$.L.str.22, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-96(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#4:                                 # %do.end
	jmp	.LBB12_5
.LBB12_5:                               # %sw.epilog
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_tool_info_set_property, .Lfunc_end12-gimp_tool_info_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_info_get_description,@function
gimp_tool_info_get_description:         # @gimp_tool_info_get_description
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_tool_info_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdi
	callq	g_strdup
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_tool_info_get_description, .Lfunc_end13-gimp_tool_info_get_description
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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

	.type	gimp_tool_info_get_type.g_define_type_id__volatile,@object # @gimp_tool_info_get_type.g_define_type_id__volatile
	.local	gimp_tool_info_get_type.g_define_type_id__volatile
	.comm	gimp_tool_info_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpToolInfo"
	.size	.L.str, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_tool_info_new,@object # @__func__.gimp_tool_info_new
.L__func__.gimp_tool_info_new:
	.asciz	"gimp_tool_info_new"
	.size	.L__func__.gimp_tool_info_new, 19

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"identifier != NULL"
	.size	.L.str.3, 19

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"blurb != NULL"
	.size	.L.str.4, 14

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"help != NULL"
	.size	.L.str.5, 13

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"menu_label != NULL"
	.size	.L.str.6, 19

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"help_id != NULL"
	.size	.L.str.7, 16

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"paint_core_name != NULL"
	.size	.L.str.8, 24

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"stock_id != NULL"
	.size	.L.str.9, 17

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"GIMP_IS_PAINT_INFO (paint_info)"
	.size	.L.str.10, 32

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"name"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"stock-id"
	.size	.L.str.12, 9

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"tool"
	.size	.L.str.14, 5

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"tool-info"
	.size	.L.str.15, 10

	.type	.L__func__.gimp_tool_info_set_standard,@object # @__func__.gimp_tool_info_set_standard
.L__func__.gimp_tool_info_set_standard:
	.asciz	"gimp_tool_info_set_standard"
	.size	.L__func__.gimp_tool_info_set_standard, 28

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"! tool_info || GIMP_IS_TOOL_INFO (tool_info)"
	.size	.L.str.16, 45

	.type	.L__func__.gimp_tool_info_get_standard,@object # @__func__.gimp_tool_info_get_standard
.L__func__.gimp_tool_info_get_standard:
	.asciz	"gimp_tool_info_get_standard"
	.size	.L__func__.gimp_tool_info_get_standard, 28

	.type	.L__func__.gimp_tool_info_build_options_filename,@object # @__func__.gimp_tool_info_build_options_filename
.L__func__.gimp_tool_info_build_options_filename:
	.asciz	"gimp_tool_info_build_options_filename"
	.size	.L__func__.gimp_tool_info_build_options_filename, 38

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"GIMP_IS_TOOL_INFO (tool_info)"
	.size	.L.str.17, 30

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"tool-options"
	.size	.L.str.18, 13

	.type	gimp_tool_info_parent_class,@object # @gimp_tool_info_parent_class
	.local	gimp_tool_info_parent_class
	.comm	gimp_tool_info_parent_class,8,8
	.type	GimpToolInfo_private_offset,@object # @GimpToolInfo_private_offset
	.local	GimpToolInfo_private_offset
	.comm	GimpToolInfo_private_offset,4,4
	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"visible"
	.size	.L.str.19, 8

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.20, 54

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimptoolinfo.c"
	.size	.L.str.21, 15

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"property"
	.size	.L.str.22, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
