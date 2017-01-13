	.text
	.file	"gimpplugin.bc"
	.globl	gimp_plug_in_get_type
	.align	16, 0x90
	.type	gimp_plug_in_get_type,@function
gimp_plug_in_get_type:                  # @gimp_plug_in_get_type
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
	movq	gimp_plug_in_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_plug_in_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_object_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$160, %edx
	movabsq	$gimp_plug_in_class_intern_init, %rdi
	movl	$744, %r8d              # imm = 0x2E8
	movabsq	$gimp_plug_in_init, %rcx
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
	movabsq	$gimp_plug_in_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_plug_in_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_plug_in_get_type, .Lfunc_end0-gimp_plug_in_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_class_intern_init,@function
gimp_plug_in_class_intern_init:         # @gimp_plug_in_class_intern_init
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
	movq	%rax, gimp_plug_in_parent_class
	cmpl	$0, GimpPlugIn_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpPlugIn_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_plug_in_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_plug_in_class_intern_init, .Lfunc_end1-gimp_plug_in_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_init,@function
gimp_plug_in_init:                      # @gimp_plug_in_init
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
	movq	$0, 40(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 48(%rdi)
	movq	-8(%rbp), %rdi
	movb	52(%rdi), %al
	andb	$-2, %al
	movb	%al, 52(%rdi)
	movq	-8(%rbp), %rdi
	movb	52(%rdi), %al
	andb	$-3, %al
	movb	%al, 52(%rdi)
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
	movl	$0, 96(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 612(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 616(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 624(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 728(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 736(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_plug_in_init, .Lfunc_end2-gimp_plug_in_init
	.cfi_endproc

	.globl	gimp_plug_in_new
	.align	16, 0x90
	.type	gimp_plug_in_new,@function
gimp_plug_in_new:                       # @gimp_plug_in_new
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
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_plug_in_manager_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_67
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_pdb_context_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB3_15
# BB#14:                                # %if.then.20
	movl	$0, -100(%rbp)
	jmp	.LBB3_20
.LBB3_15:                               # %if.else.21
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_18
# BB#16:                                # %land.lhs.true.24
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB3_18
# BB#17:                                # %if.then.28
	movl	$1, -100(%rbp)
	jmp	.LBB3_19
.LBB3_18:                               # %if.else.29
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB3_19:                               # %if.end.31
	jmp	.LBB3_20
.LBB3_20:                               # %if.end.32
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB3_22
# BB#21:                                # %if.then.35
	jmp	.LBB3_23
.LBB3_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_67
.LBB3_23:                               # %if.end.37
	jmp	.LBB3_24
.LBB3_24:                               # %do.end.38
	jmp	.LBB3_25
.LBB3_25:                               # %do.body.39
	cmpq	$0, -32(%rbp)
	je	.LBB3_34
# BB#26:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	movq	%rax, -112(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -120(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB3_28
# BB#27:                                # %if.then.49
	movl	$0, -124(%rbp)
	jmp	.LBB3_33
.LBB3_28:                               # %if.else.50
	movq	-112(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_31
# BB#29:                                # %land.lhs.true.53
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-120(%rbp), %rax
	jne	.LBB3_31
# BB#30:                                # %if.then.57
	movl	$1, -124(%rbp)
	jmp	.LBB3_32
.LBB3_31:                               # %if.else.58
	movq	-112(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -124(%rbp)
.LBB3_32:                               # %if.end.60
	jmp	.LBB3_33
.LBB3_33:                               # %if.end.61
	movl	-124(%rbp), %eax
	movl	%eax, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB3_35
.LBB3_34:                               # %if.then.64
	jmp	.LBB3_36
.LBB3_35:                               # %if.else.65
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_new, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_67
.LBB3_36:                               # %if.end.66
	jmp	.LBB3_37
.LBB3_37:                               # %do.end.67
	jmp	.LBB3_38
.LBB3_38:                               # %do.body.68
	cmpq	$0, -40(%rbp)
	je	.LBB3_47
# BB#39:                                # %lor.lhs.false.70
	movq	-40(%rbp), %rax
	movq	%rax, -136(%rbp)
	callq	gimp_plug_in_procedure_get_type
	movq	%rax, -144(%rbp)
	cmpq	$0, -136(%rbp)
	jne	.LBB3_41
# BB#40:                                # %if.then.79
	movl	$0, -148(%rbp)
	jmp	.LBB3_46
.LBB3_41:                               # %if.else.80
	movq	-136(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_44
# BB#42:                                # %land.lhs.true.83
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-144(%rbp), %rax
	jne	.LBB3_44
# BB#43:                                # %if.then.87
	movl	$1, -148(%rbp)
	jmp	.LBB3_45
.LBB3_44:                               # %if.else.88
	movq	-136(%rbp), %rdi
	movq	-144(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -148(%rbp)
.LBB3_45:                               # %if.end.90
	jmp	.LBB3_46
.LBB3_46:                               # %if.end.91
	movl	-148(%rbp), %eax
	movl	%eax, -152(%rbp)
	cmpl	$0, -152(%rbp)
	je	.LBB3_48
.LBB3_47:                               # %if.then.94
	jmp	.LBB3_49
.LBB3_48:                               # %if.else.95
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_new, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_67
.LBB3_49:                               # %if.end.96
	jmp	.LBB3_50
.LBB3_50:                               # %do.end.97
	jmp	.LBB3_51
.LBB3_51:                               # %do.body.98
	cmpq	$0, -48(%rbp)
	je	.LBB3_53
# BB#52:                                # %lor.lhs.false.100
	movq	-48(%rbp), %rdi
	callq	g_path_is_absolute
	cmpl	$0, %eax
	je	.LBB3_54
.LBB3_53:                               # %if.then.103
	jmp	.LBB3_55
.LBB3_54:                               # %if.else.104
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_new, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_67
.LBB3_55:                               # %if.end.105
	jmp	.LBB3_56
.LBB3_56:                               # %do.end.106
	jmp	.LBB3_57
.LBB3_57:                               # %do.body.107
	cmpq	$0, -40(%rbp)
	jne	.LBB3_59
# BB#58:                                # %lor.lhs.false.109
	cmpq	$0, -48(%rbp)
	je	.LBB3_62
.LBB3_59:                               # %land.lhs.true.111
	cmpq	$0, -40(%rbp)
	je	.LBB3_61
# BB#60:                                # %land.lhs.true.113
	cmpq	$0, -48(%rbp)
	jne	.LBB3_62
.LBB3_61:                               # %if.then.115
	jmp	.LBB3_63
.LBB3_62:                               # %if.else.116
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_new, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_67
.LBB3_63:                               # %if.end.117
	jmp	.LBB3_64
.LBB3_64:                               # %do.end.118
	callq	gimp_plug_in_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB3_66
# BB#65:                                # %if.then.122
	movq	-40(%rbp), %rdi
	callq	gimp_plug_in_procedure_get_progname
	movq	%rax, -48(%rbp)
.LBB3_66:                               # %if.end.124
	movq	-56(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-48(%rbp), %rdi
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	g_filename_display_basename
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_object_take_name
	movq	-16(%rbp), %rax
	movq	-56(%rbp), %rsi
	movq	%rax, 32(%rsi)
	movq	-48(%rbp), %rdi
	callq	g_strdup
	movq	-56(%rbp), %rsi
	movq	%rax, 40(%rsi)
	movq	-56(%rbp), %rax
	addq	$632, %rax              # imm = 0x278
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	%rax, %rdi
	callq	gimp_plug_in_proc_frame_init
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_67:                               # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_plug_in_new, .Lfunc_end3-gimp_plug_in_new
	.cfi_endproc

	.globl	gimp_plug_in_open
	.align	16, 0x90
	.type	gimp_plug_in_open,@function
gimp_plug_in_open:                      # @gimp_plug_in_open
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
	subq	$400, %rsp              # imm = 0x190
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	$0, -200(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -224(%rbp)
	callq	gimp_plug_in_get_type
	movq	%rax, -232(%rbp)
	cmpq	$0, -224(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -236(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-224(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-224(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-232(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -236(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-224(%rbp), %rdi
	movq	-232(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -236(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-236(%rbp), %eax
	movl	%eax, -240(%rbp)
	cmpl	$0, -240(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_open, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB4_42
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	cmpl	$0, 48(%rax)
	jne	.LBB4_15
# BB#14:                                # %if.then.14
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.15
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_open, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB4_42
.LBB4_16:                               # %if.end.16
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.17
	leaq	-32(%rbp), %rdi
	callq	pipe
	cmpl	$-1, %eax
	je	.LBB4_19
# BB#18:                                # %lor.lhs.false
	leaq	-40(%rbp), %rdi
	callq	pipe
	cmpl	$-1, %eax
	jne	.LBB4_20
.LBB4_19:                               # %if.then.23
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-16(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	xorl	%edi, %edi
	movl	%edi, %esi
	movl	$2, %edx
	movabsq	$.L.str.10, %rcx
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	-272(%rbp), %r8         # 8-byte Reload
	movq	-280(%rbp), %r9         # 8-byte Reload
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	gimp_message
	movl	$0, -4(%rbp)
	jmp	.LBB4_42
.LBB4_20:                               # %if.end.28
	movl	-32(%rbp), %edi
	callq	g_io_channel_unix_new
	movq	-16(%rbp), %rcx
	movq	%rax, 64(%rcx)
	movl	-36(%rbp), %edi
	callq	g_io_channel_unix_new
	movq	-16(%rbp), %rcx
	movq	%rax, 72(%rcx)
	movl	-40(%rbp), %edi
	callq	g_io_channel_unix_new
	movq	-16(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movl	-28(%rbp), %edi
	callq	g_io_channel_unix_new
	movq	-16(%rbp), %rcx
	movq	%rax, 88(%rcx)
	movq	-16(%rbp), %rax
	movq	64(%rax), %rdi
	xorl	%edx, %edx
	movl	%edx, %eax
	movq	%rax, %rsi
	movl	%edx, -284(%rbp)        # 4-byte Spill
	movq	%rax, %rdx
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	g_io_channel_set_encoding
	movq	-16(%rbp), %rcx
	movq	72(%rcx), %rdi
	movq	-296(%rbp), %rsi        # 8-byte Reload
	movq	-296(%rbp), %rdx        # 8-byte Reload
	movl	%eax, -300(%rbp)        # 4-byte Spill
	callq	g_io_channel_set_encoding
	movq	-16(%rbp), %rcx
	movq	80(%rcx), %rdi
	movq	-296(%rbp), %rsi        # 8-byte Reload
	movq	-296(%rbp), %rdx        # 8-byte Reload
	movl	%eax, -304(%rbp)        # 4-byte Spill
	callq	g_io_channel_set_encoding
	movq	-16(%rbp), %rcx
	movq	88(%rcx), %rdi
	movq	-296(%rbp), %rsi        # 8-byte Reload
	movq	-296(%rbp), %rdx        # 8-byte Reload
	movl	%eax, -308(%rbp)        # 4-byte Spill
	callq	g_io_channel_set_encoding
	movq	-16(%rbp), %rcx
	movq	64(%rcx), %rdi
	movl	-284(%rbp), %esi        # 4-byte Reload
	movl	%eax, -312(%rbp)        # 4-byte Spill
	callq	g_io_channel_set_buffered
	movq	-16(%rbp), %rcx
	movq	72(%rcx), %rdi
	movl	-284(%rbp), %esi        # 4-byte Reload
	callq	g_io_channel_set_buffered
	movq	-16(%rbp), %rcx
	movq	80(%rcx), %rdi
	movl	-284(%rbp), %esi        # 4-byte Reload
	callq	g_io_channel_set_buffered
	movq	-16(%rbp), %rcx
	movq	88(%rcx), %rdi
	movl	-284(%rbp), %esi        # 4-byte Reload
	callq	g_io_channel_set_buffered
	movq	-16(%rbp), %rcx
	movq	64(%rcx), %rdi
	movl	$1, %eax
	movl	%eax, %esi
	movl	%eax, -316(%rbp)        # 4-byte Spill
	callq	g_io_channel_set_close_on_unref
	movq	-16(%rbp), %rcx
	movq	72(%rcx), %rdi
	movl	-316(%rbp), %esi        # 4-byte Reload
	callq	g_io_channel_set_close_on_unref
	movq	-16(%rbp), %rcx
	movq	80(%rcx), %rdi
	movl	-316(%rbp), %esi        # 4-byte Reload
	callq	g_io_channel_set_close_on_unref
	movq	-16(%rbp), %rcx
	movq	88(%rcx), %rdi
	movl	-316(%rbp), %esi        # 4-byte Reload
	callq	g_io_channel_set_close_on_unref
	movq	-16(%rbp), %rcx
	movq	80(%rcx), %rdi
	callq	g_io_channel_unix_get_fd
	movl	$.L.str.11, %esi
	movl	%esi, %ecx
	movl	-284(%rbp), %esi        # 4-byte Reload
	movb	%sil, %r8b
	movq	%rcx, %rdi
	movl	%eax, %esi
	movb	%r8b, %al
	movb	%r8b, -317(%rbp)        # 1-byte Spill
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	callq	g_strdup_printf
	movq	%rax, -168(%rbp)
	movq	-16(%rbp), %rax
	movq	88(%rax), %rdi
	callq	g_io_channel_unix_get_fd
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movl	%eax, %esi
	movb	-317(%rbp), %al         # 1-byte Reload
	callq	g_strdup_printf
	movq	%rax, -176(%rbp)
	movl	-20(%rbp), %esi
	movl	%esi, %r9d
	subl	$1, %r9d
	movl	%esi, -332(%rbp)        # 4-byte Spill
	movl	%r9d, -336(%rbp)        # 4-byte Spill
	je	.LBB4_23
	jmp	.LBB4_43
.LBB4_43:                               # %if.end.28
	movl	-332(%rbp), %eax        # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -340(%rbp)        # 4-byte Spill
	je	.LBB4_21
	jmp	.LBB4_44
.LBB4_44:                               # %if.end.28
	movl	-332(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -344(%rbp)        # 4-byte Spill
	je	.LBB4_22
	jmp	.LBB4_24
.LBB4_21:                               # %sw.bb
	movabsq	$.L.str.12, %rax
	movq	%rax, -184(%rbp)
	movl	$1, -208(%rbp)
	jmp	.LBB4_26
.LBB4_22:                               # %sw.bb.60
	movabsq	$.L.str.13, %rax
	movq	%rax, -184(%rbp)
	movl	$2, -208(%rbp)
	jmp	.LBB4_26
.LBB4_23:                               # %sw.bb.61
	movabsq	$.L.str.14, %rax
	movq	%rax, -184(%rbp)
	movl	$4, -208(%rbp)
	jmp	.LBB4_26
.LBB4_24:                               # %sw.default
	jmp	.LBB4_25
.LBB4_25:                               # %do.body.62
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.15, %rsi
	movl	$319, %edx              # imm = 0x13F
	movabsq	$.L__func__.gimp_plug_in_open, %rcx
	xorl	%eax, %eax
	movl	%eax, %r8d
	callq	g_assertion_message_expr
.LBB4_26:                               # %sw.epilog
	movabsq	$.L.str.11, %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	movl	88(%rax), %esi
	movb	$0, %al
	callq	g_strdup_printf
	leaq	-160(%rbp), %rdx
	movq	%rax, -192(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	152(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rsi
	callq	gimp_interpreter_db_resolve
	movq	%rax, -152(%rbp)
	movl	$0, -140(%rbp)
	cmpq	$0, -152(%rbp)
	je	.LBB4_28
# BB#27:                                # %if.then.71
	movq	-152(%rbp), %rax
	movl	-140(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -140(%rbp)
	movslq	%ecx, %rsi
	movq	%rax, -128(%rbp,%rsi,8)
.LBB4_28:                               # %if.end.73
	cmpq	$0, -160(%rbp)
	je	.LBB4_30
# BB#29:                                # %if.then.75
	movq	-160(%rbp), %rax
	movl	-140(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -140(%rbp)
	movslq	%ecx, %rsi
	movq	%rax, -128(%rbp,%rsi,8)
.LBB4_30:                               # %if.end.79
	leaq	-128(%rbp), %rax
	movabsq	$.L.str.16, %rcx
	movq	-16(%rbp), %rdx
	movq	40(%rdx), %rdx
	movl	-140(%rbp), %esi
	movl	%esi, %edi
	addl	$1, %edi
	movl	%edi, -140(%rbp)
	movslq	%esi, %r8
	movq	%rdx, -128(%rbp,%r8,8)
	movl	-140(%rbp), %esi
	movl	%esi, %edi
	addl	$1, %edi
	movl	%edi, -140(%rbp)
	movslq	%esi, %rdx
	movq	%rcx, -128(%rbp,%rdx,8)
	movq	-168(%rbp), %rcx
	movl	-140(%rbp), %esi
	movl	%esi, %edi
	addl	$1, %edi
	movl	%edi, -140(%rbp)
	movslq	%esi, %rdx
	movq	%rcx, -128(%rbp,%rdx,8)
	movq	-176(%rbp), %rcx
	movl	-140(%rbp), %esi
	movl	%esi, %edi
	addl	$1, %edi
	movl	%edi, -140(%rbp)
	movslq	%esi, %rdx
	movq	%rcx, -128(%rbp,%rdx,8)
	movq	-184(%rbp), %rcx
	movl	-140(%rbp), %esi
	movl	%esi, %edi
	addl	$1, %edi
	movl	%edi, -140(%rbp)
	movslq	%esi, %rdx
	movq	%rcx, -128(%rbp,%rdx,8)
	movq	-192(%rbp), %rcx
	movl	-140(%rbp), %esi
	movl	%esi, %edi
	addl	$1, %edi
	movl	%edi, -140(%rbp)
	movslq	%esi, %rdx
	movq	%rcx, -128(%rbp,%rdx,8)
	movl	-140(%rbp), %esi
	movl	%esi, %edi
	addl	$1, %edi
	movl	%edi, -140(%rbp)
	movslq	%esi, %rcx
	movq	$0, -128(%rbp,%rcx,8)
	movq	%rax, -136(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	160(%rax), %rdi
	callq	gimp_environ_table_get_envp
	movq	%rax, -48(%rbp)
	movl	$35, -212(%rbp)
	movl	$0, -204(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, 168(%rax)
	je	.LBB4_34
# BB#31:                                # %if.then.108
	leaq	-128(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	168(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rsi
	movl	-208(%rbp), %edx
	callq	gimp_plug_in_debug_argv
	movq	%rax, -248(%rbp)
	cmpq	$0, -248(%rbp)
	je	.LBB4_33
# BB#32:                                # %if.then.116
	movl	$1, -204(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -136(%rbp)
	movl	-212(%rbp), %ecx
	orl	$4, %ecx
	movl	%ecx, -212(%rbp)
.LBB4_33:                               # %if.end.117
	jmp	.LBB4_34
.LBB4_34:                               # %if.end.118
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$gimp_plug_in_prep_for_exec, %r8
	leaq	-200(%rbp), %rcx
	movq	-136(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movl	-212(%rbp), %eax
	movq	-16(%rbp), %r9
	movq	-16(%rbp), %r10
	addq	$56, %r10
	movq	%rcx, -352(%rbp)        # 8-byte Spill
	movl	%eax, %ecx
	movq	%r10, (%rsp)
	movq	-352(%rbp), %r10        # 8-byte Reload
	movq	%r10, 8(%rsp)
	callq	g_spawn_async
	cmpl	$0, %eax
	jne	.LBB4_36
# BB#35:                                # %if.then.121
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-16(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$2, %edx
	movabsq	$.L.str.17, %rcx
	movq	-200(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	-360(%rbp), %r8         # 8-byte Reload
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	-368(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movq	-376(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	gimp_message
	movq	-200(%rbp), %rdi
	callq	g_error_free
	jmp	.LBB4_39
.LBB4_36:                               # %if.end.127
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	g_io_channel_unref
	movq	-16(%rbp), %rax
	movq	$0, 80(%rax)
	movq	-16(%rbp), %rax
	movq	88(%rax), %rdi
	callq	g_io_channel_unref
	movq	-16(%rbp), %rax
	movq	$0, 88(%rax)
	cmpl	$0, -24(%rbp)
	jne	.LBB4_38
# BB#37:                                # %if.then.133
	movl	$27, %esi
	movq	-16(%rbp), %rax
	movq	64(%rax), %rdi
	callq	g_io_create_watch
	movabsq	$gimp_plug_in_recv_message, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-384(%rbp), %rsi        # 8-byte Reload
	callq	g_source_set_callback
	movl	$1, %esi
	movq	-256(%rbp), %rdi
	callq	g_source_set_can_recurse
	xorl	%esi, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-256(%rbp), %rdi
	callq	g_source_attach
	movq	-16(%rbp), %rcx
	movl	%eax, 96(%rcx)
	movq	-256(%rbp), %rdi
	callq	g_source_unref
.LBB4_38:                               # %if.end.138
	movq	-16(%rbp), %rax
	movb	52(%rax), %cl
	andb	$-2, %cl
	orb	$1, %cl
	movb	%cl, 52(%rax)
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 48(%rax)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_plug_in_manager_add_open_plug_in
.LBB4_39:                               # %cleanup
	cmpl	$0, -204(%rbp)
	je	.LBB4_41
# BB#40:                                # %if.then.142
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB4_41:                               # %if.end.143
	movq	-168(%rbp), %rdi
	callq	g_free
	movq	-176(%rbp), %rdi
	callq	g_free
	movq	-192(%rbp), %rdi
	callq	g_free
	movq	-152(%rbp), %rdi
	callq	g_free
	movq	-160(%rbp), %rdi
	callq	g_free
	movq	-16(%rbp), %rdi
	movb	52(%rdi), %al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
.LBB4_42:                               # %return
	movl	-4(%rbp), %eax
	addq	$400, %rsp              # imm = 0x190
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_plug_in_open, .Lfunc_end4-gimp_plug_in_open
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_prep_for_exec,@function
gimp_plug_in_prep_for_exec:             # @gimp_plug_in_prep_for_exec
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	64(%rdi), %rdi
	callq	g_io_channel_unref
	movq	-16(%rbp), %rdi
	movq	$0, 64(%rdi)
	movq	-16(%rbp), %rdi
	movq	72(%rdi), %rdi
	callq	g_io_channel_unref
	movq	-16(%rbp), %rdi
	movq	$0, 72(%rdi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_plug_in_prep_for_exec, .Lfunc_end5-gimp_plug_in_prep_for_exec
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_recv_message,@function
gimp_plug_in_recv_message:              # @gimp_plug_in_recv_message
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movl	$0, -44(%rbp)
	movq	-40(%rbp), %rdx
	cmpq	$0, 64(%rdx)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB6_19
.LBB6_2:                                # %if.end
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movl	-20(%rbp), %ecx
	andl	$3, %ecx
	cmpl	$0, %ecx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	je	.LBB6_7
# BB#3:                                 # %if.then.1
	leaq	-64(%rbp), %rax
	xorl	%esi, %esi
	movl	$16, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	memset
	movq	-40(%rbp), %rax
	movq	64(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_wire_read_msg
	cmpl	$0, %eax
	jne	.LBB6_5
# BB#4:                                 # %if.then.5
	movl	$1, %esi
	movq	-40(%rbp), %rdi
	callq	gimp_plug_in_close
	jmp	.LBB6_6
.LBB6_5:                                # %if.else
	leaq	-64(%rbp), %rsi
	movq	-40(%rbp), %rdi
	callq	gimp_plug_in_handle_message
	leaq	-64(%rbp), %rdi
	callq	gimp_wire_destroy
	movl	$1, -44(%rbp)
.LBB6_6:                                # %if.end.6
	jmp	.LBB6_7
.LBB6_7:                                # %if.end.7
	movl	-20(%rbp), %eax
	andl	$24, %eax
	cmpl	$0, %eax
	je	.LBB6_13
# BB#8:                                 # %if.then.10
	movl	-20(%rbp), %eax
	andl	$16, %eax
	cmpl	$0, %eax
	je	.LBB6_10
# BB#9:                                 # %if.then.13
	movq	-40(%rbp), %rax
	movb	52(%rax), %cl
	andb	$-3, %cl
	orb	$2, %cl
	movb	%cl, 52(%rax)
.LBB6_10:                               # %if.end.14
	movq	-40(%rbp), %rax
	movb	52(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB6_12
# BB#11:                                # %if.then.18
	movl	$1, %esi
	movq	-40(%rbp), %rdi
	callq	gimp_plug_in_close
.LBB6_12:                               # %if.end.19
	jmp	.LBB6_13
.LBB6_13:                               # %if.end.20
	cmpl	$0, -44(%rbp)
	jne	.LBB6_18
# BB#14:                                # %if.then.22
	movq	-40(%rbp), %rdi
	callq	gimp_plug_in_get_proc_frame
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB6_16
# BB#15:                                # %cond.true
	movq	-72(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB6_17
.LBB6_16:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB6_17
.LBB6_17:                               # %cond.end
	movq	-104(%rbp), %rax        # 8-byte Reload
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	movq	-80(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.32, %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-40(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_object_get_name
	movq	-40(%rbp), %rsi
	movq	40(%rsi), %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	movl	$2, %edx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	-136(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	gimp_message
.LBB6_18:                               # %if.end.31
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movl	$1, -4(%rbp)
.LBB6_19:                               # %return
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_plug_in_recv_message, .Lfunc_end6-gimp_plug_in_recv_message
	.cfi_endproc

	.globl	gimp_plug_in_close
	.align	16, 0x90
	.type	gimp_plug_in_close,@function
gimp_plug_in_close:                     # @gimp_plug_in_close
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_plug_in_get_type
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
	movabsq	$.L__func__.gimp_plug_in_close, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_55
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	movq	-8(%rbp), %rax
	movb	52(%rax), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB7_15
# BB#14:                                # %if.then.13
	jmp	.LBB7_16
.LBB7_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_close, %rsi
	movabsq	$.L.str.18, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_55
.LBB7_16:                               # %if.end.15
	jmp	.LBB7_17
.LBB7_17:                               # %do.end.16
	movq	-8(%rbp), %rax
	movb	52(%rax), %cl
	andb	$-2, %cl
	movb	%cl, 52(%rax)
	movq	-8(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB7_29
# BB#18:                                # %if.then.21
	cmpl	$0, -12(%rbp)
	je	.LBB7_21
# BB#19:                                # %land.lhs.true.24
	movq	-8(%rbp), %rax
	movb	52(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB7_21
# BB#20:                                # %if.then.29
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	callq	gp_quit_write
	movl	$10000, %ecx            # imm = 0x2710
	movl	%ecx, %edi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	callq	g_usleep
.LBB7_21:                               # %if.end.31
	cmpl	$0, -12(%rbp)
	je	.LBB7_28
# BB#22:                                # %if.then.33
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	cmpl	$0, 56(%rax)
	je	.LBB7_24
# BB#23:                                # %if.then.35
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.19, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_print
.LBB7_24:                               # %if.end.37
	xorl	%edi, %edi
	callq	getpgid
	movq	-8(%rbp), %rcx
	movl	56(%rcx), %edi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	callq	getpgid
	movl	-64(%rbp), %edi         # 4-byte Reload
	cmpl	%eax, %edi
	je	.LBB7_26
# BB#25:                                # %if.then.42
	movl	$9, %esi
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	subl	56(%rcx), %eax
	movl	%eax, %edi
	callq	kill
	movl	%eax, -44(%rbp)
	jmp	.LBB7_27
.LBB7_26:                               # %if.else.45
	movl	$9, %esi
	movq	-8(%rbp), %rax
	movl	56(%rax), %edi
	callq	kill
	movl	%eax, -44(%rbp)
.LBB7_27:                               # %if.end.48
	jmp	.LBB7_28
.LBB7_28:                               # %if.end.49
	leaq	-44(%rbp), %rsi
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	56(%rax), %edi
	callq	waitpid
	movq	-8(%rbp), %rsi
	movl	56(%rsi), %edi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	callq	g_spawn_close_pid
	movq	-8(%rbp), %rsi
	movl	$0, 56(%rsi)
.LBB7_29:                               # %if.end.54
	movq	-8(%rbp), %rax
	cmpl	$0, 96(%rax)
	je	.LBB7_31
# BB#30:                                # %if.then.56
	movq	-8(%rbp), %rax
	movl	96(%rax), %edi
	callq	g_source_remove
	movq	-8(%rbp), %rcx
	movl	$0, 96(%rcx)
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB7_31:                               # %if.end.60
	movq	-8(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB7_33
# BB#32:                                # %if.then.62
	movq	-8(%rbp), %rax
	movq	64(%rax), %rdi
	callq	g_io_channel_unref
	movq	-8(%rbp), %rax
	movq	$0, 64(%rax)
.LBB7_33:                               # %if.end.65
	movq	-8(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB7_35
# BB#34:                                # %if.then.68
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdi
	callq	g_io_channel_unref
	movq	-8(%rbp), %rax
	movq	$0, 72(%rax)
.LBB7_35:                               # %if.end.71
	movq	-8(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	.LBB7_37
# BB#36:                                # %if.then.73
	movq	-8(%rbp), %rax
	movq	80(%rax), %rdi
	callq	g_io_channel_unref
	movq	-8(%rbp), %rax
	movq	$0, 80(%rax)
.LBB7_37:                               # %if.end.76
	movq	-8(%rbp), %rax
	cmpq	$0, 88(%rax)
	je	.LBB7_39
# BB#38:                                # %if.then.78
	movq	-8(%rbp), %rax
	movq	88(%rax), %rdi
	callq	g_io_channel_unref
	movq	-8(%rbp), %rax
	movq	$0, 88(%rax)
.LBB7_39:                               # %if.end.81
	callq	gimp_wire_clear_error
.LBB7_40:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 728(%rax)
	je	.LBB7_45
# BB#41:                                # %while.body
                                        #   in Loop: Header=BB7_40 Depth=1
	movq	-8(%rbp), %rax
	movq	728(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB7_44
# BB#42:                                # %land.lhs.true.86
                                        #   in Loop: Header=BB7_40 Depth=1
	movq	-56(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_main_loop_is_running
	cmpl	$0, %eax
	je	.LBB7_44
# BB#43:                                # %if.then.90
                                        #   in Loop: Header=BB7_40 Depth=1
	movq	-56(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_main_loop_quit
.LBB7_44:                               # %if.end.92
                                        #   in Loop: Header=BB7_40 Depth=1
	movq	-8(%rbp), %rdi
	callq	gimp_plug_in_proc_frame_pop
	jmp	.LBB7_40
.LBB7_45:                               # %while.end
	movq	-8(%rbp), %rax
	cmpq	$0, 664(%rax)
	je	.LBB7_48
# BB#46:                                # %land.lhs.true.95
	movq	-8(%rbp), %rax
	movq	664(%rax), %rdi
	callq	g_main_loop_is_running
	cmpl	$0, %eax
	je	.LBB7_48
# BB#47:                                # %if.then.100
	movq	-8(%rbp), %rax
	movq	664(%rax), %rdi
	callq	g_main_loop_quit
.LBB7_48:                               # %if.end.103
	movq	-8(%rbp), %rax
	cmpq	$0, 624(%rax)
	je	.LBB7_51
# BB#49:                                # %land.lhs.true.105
	movq	-8(%rbp), %rax
	movq	624(%rax), %rdi
	callq	g_main_loop_is_running
	cmpl	$0, %eax
	je	.LBB7_51
# BB#50:                                # %if.then.109
	movq	-8(%rbp), %rax
	movq	624(%rax), %rdi
	callq	g_main_loop_quit
.LBB7_51:                               # %if.end.111
	jmp	.LBB7_52
.LBB7_52:                               # %while.cond.112
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 616(%rax)
	je	.LBB7_54
# BB#53:                                # %while.body.114
                                        #   in Loop: Header=BB7_52 Depth=1
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	616(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	gimp_plug_in_remove_temp_proc
	jmp	.LBB7_52
.LBB7_54:                               # %while.end.117
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rsi
	callq	gimp_plug_in_manager_remove_open_plug_in
.LBB7_55:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_plug_in_close, .Lfunc_end7-gimp_plug_in_close
	.cfi_endproc

	.globl	gimp_plug_in_proc_frame_pop
	.align	16, 0x90
	.type	gimp_plug_in_proc_frame_pop,@function
gimp_plug_in_proc_frame_pop:            # @gimp_plug_in_proc_frame_pop
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_plug_in_get_type
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
	movabsq	$.L__func__.gimp_plug_in_proc_frame_pop, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_18
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	jmp	.LBB8_13
.LBB8_13:                               # %do.body.11
	movq	-8(%rbp), %rax
	cmpq	$0, 728(%rax)
	je	.LBB8_15
# BB#14:                                # %if.then.13
	jmp	.LBB8_16
.LBB8_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_proc_frame_pop, %rsi
	movabsq	$.L.str.21, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_18
.LBB8_16:                               # %if.end.15
	jmp	.LBB8_17
.LBB8_17:                               # %do.end.16
	movq	-8(%rbp), %rax
	movq	728(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	gimp_plug_in_proc_frame_unref
	movq	-8(%rbp), %rax
	movq	728(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_remove
	movq	-8(%rbp), %rsi
	movq	%rax, 728(%rsi)
.LBB8_18:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_plug_in_proc_frame_pop, .Lfunc_end8-gimp_plug_in_proc_frame_pop
	.cfi_endproc

	.globl	gimp_plug_in_remove_temp_proc
	.align	16, 0x90
	.type	gimp_plug_in_remove_temp_proc,@function
gimp_plug_in_remove_temp_proc:          # @gimp_plug_in_remove_temp_proc
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_plug_in_get_type
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
	movabsq	$.L__func__.gimp_plug_in_remove_temp_proc, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_25
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	jmp	.LBB9_13
.LBB9_13:                               # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_temporary_procedure_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB9_15
# BB#14:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB9_20
.LBB9_15:                               # %if.else.21
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_18
# BB#16:                                # %land.lhs.true.24
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB9_18
# BB#17:                                # %if.then.28
	movl	$1, -60(%rbp)
	jmp	.LBB9_19
.LBB9_18:                               # %if.else.29
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB9_19:                               # %if.end.31
	jmp	.LBB9_20
.LBB9_20:                               # %if.end.32
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB9_22
# BB#21:                                # %if.then.35
	jmp	.LBB9_23
.LBB9_22:                               # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_remove_temp_proc, %rsi
	movabsq	$.L.str.29, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_25
.LBB9_23:                               # %if.end.37
	jmp	.LBB9_24
.LBB9_24:                               # %do.end.38
	movq	-8(%rbp), %rax
	movq	616(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_remove
	movq	-8(%rbp), %rsi
	movq	%rax, 616(%rsi)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_plug_in_manager_remove_temp_proc
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB9_25:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_plug_in_remove_temp_proc, .Lfunc_end9-gimp_plug_in_remove_temp_proc
	.cfi_endproc

	.globl	gimp_plug_in_get_proc_frame
	.align	16, 0x90
	.type	gimp_plug_in_get_proc_frame,@function
gimp_plug_in_get_proc_frame:            # @gimp_plug_in_get_proc_frame
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_plug_in_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_get_proc_frame, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB10_15
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-16(%rbp), %rax
	cmpq	$0, 728(%rax)
	je	.LBB10_14
# BB#13:                                # %if.then.12
	movq	-16(%rbp), %rax
	movq	728(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB10_15
.LBB10_14:                              # %if.else.14
	movq	-16(%rbp), %rax
	addq	$632, %rax              # imm = 0x278
	movq	%rax, -8(%rbp)
.LBB10_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_plug_in_get_proc_frame, .Lfunc_end10-gimp_plug_in_get_proc_frame
	.cfi_endproc

	.globl	gimp_plug_in_proc_frame_push
	.align	16, 0x90
	.type	gimp_plug_in_proc_frame_push,@function
gimp_plug_in_proc_frame_push:           # @gimp_plug_in_proc_frame_push
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
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_plug_in_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_proc_frame_push, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB11_50
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	jmp	.LBB11_13
.LBB11_13:                              # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)
	callq	gimp_pdb_context_get_type
	movq	%rax, -88(%rbp)
	cmpq	$0, -80(%rbp)
	jne	.LBB11_15
# BB#14:                                # %if.then.20
	movl	$0, -92(%rbp)
	jmp	.LBB11_20
.LBB11_15:                              # %if.else.21
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_18
# BB#16:                                # %land.lhs.true.24
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB11_18
# BB#17:                                # %if.then.28
	movl	$1, -92(%rbp)
	jmp	.LBB11_19
.LBB11_18:                              # %if.else.29
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -92(%rbp)
.LBB11_19:                              # %if.end.31
	jmp	.LBB11_20
.LBB11_20:                              # %if.end.32
	movl	-92(%rbp), %eax
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB11_22
# BB#21:                                # %if.then.35
	jmp	.LBB11_23
.LBB11_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_proc_frame_push, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB11_50
.LBB11_23:                              # %if.end.37
	jmp	.LBB11_24
.LBB11_24:                              # %do.end.38
	jmp	.LBB11_25
.LBB11_25:                              # %do.body.39
	cmpq	$0, -32(%rbp)
	je	.LBB11_34
# BB#26:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB11_28
# BB#27:                                # %if.then.49
	movl	$0, -116(%rbp)
	jmp	.LBB11_33
.LBB11_28:                              # %if.else.50
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_31
# BB#29:                                # %land.lhs.true.53
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB11_31
# BB#30:                                # %if.then.57
	movl	$1, -116(%rbp)
	jmp	.LBB11_32
.LBB11_31:                              # %if.else.58
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB11_32:                              # %if.end.60
	jmp	.LBB11_33
.LBB11_33:                              # %if.end.61
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB11_35
.LBB11_34:                              # %if.then.64
	jmp	.LBB11_36
.LBB11_35:                              # %if.else.65
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_proc_frame_push, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB11_50
.LBB11_36:                              # %if.end.66
	jmp	.LBB11_37
.LBB11_37:                              # %do.end.67
	jmp	.LBB11_38
.LBB11_38:                              # %do.body.68
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	gimp_temporary_procedure_get_type
	movq	%rax, -136(%rbp)
	cmpq	$0, -128(%rbp)
	jne	.LBB11_40
# BB#39:                                # %if.then.77
	movl	$0, -140(%rbp)
	jmp	.LBB11_45
.LBB11_40:                              # %if.else.78
	movq	-128(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_43
# BB#41:                                # %land.lhs.true.81
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-136(%rbp), %rax
	jne	.LBB11_43
# BB#42:                                # %if.then.85
	movl	$1, -140(%rbp)
	jmp	.LBB11_44
.LBB11_43:                              # %if.else.86
	movq	-128(%rbp), %rdi
	movq	-136(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -140(%rbp)
.LBB11_44:                              # %if.end.88
	jmp	.LBB11_45
.LBB11_45:                              # %if.end.89
	movl	-140(%rbp), %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -144(%rbp)
	je	.LBB11_47
# BB#46:                                # %if.then.92
	jmp	.LBB11_48
.LBB11_47:                              # %if.else.93
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_proc_frame_push, %rsi
	movabsq	$.L.str.20, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB11_50
.LBB11_48:                              # %if.end.94
	jmp	.LBB11_49
.LBB11_49:                              # %do.end.95
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	gimp_plug_in_procedure_get_type
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	-160(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	gimp_plug_in_proc_frame_new
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	728(%rax), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	-16(%rbp), %rdx
	movq	%rax, 728(%rdx)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB11_50:                              # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_plug_in_proc_frame_push, .Lfunc_end11-gimp_plug_in_proc_frame_push
	.cfi_endproc

	.globl	gimp_plug_in_main_loop
	.align	16, 0x90
	.type	gimp_plug_in_main_loop,@function
gimp_plug_in_main_loop:                 # @gimp_plug_in_main_loop
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_plug_in_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_main_loop, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_23
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	jmp	.LBB12_13
.LBB12_13:                              # %do.body.11
	movq	-8(%rbp), %rax
	cmpq	$0, 728(%rax)
	je	.LBB12_15
# BB#14:                                # %if.then.13
	jmp	.LBB12_16
.LBB12_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_main_loop, %rsi
	movabsq	$.L.str.21, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_23
.LBB12_16:                              # %if.end.15
	jmp	.LBB12_17
.LBB12_17:                              # %do.end.16
	movq	-8(%rbp), %rax
	movq	728(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
# BB#18:                                # %do.body.18
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	jne	.LBB12_20
# BB#19:                                # %if.then.20
	jmp	.LBB12_21
.LBB12_20:                              # %if.else.21
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_main_loop, %rsi
	movabsq	$.L.str.22, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_23
.LBB12_21:                              # %if.end.22
	jmp	.LBB12_22
.LBB12_22:                              # %do.end.23
	xorl	%eax, %eax
	movl	%eax, %edi
	xorl	%esi, %esi
	callq	g_main_loop_new
	movq	-16(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	callq	gimp_threads_leave
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_main_loop_run
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	callq	gimp_threads_enter
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_main_loop_unref
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
.LBB12_23:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_plug_in_main_loop, .Lfunc_end12-gimp_plug_in_main_loop
	.cfi_endproc

	.globl	gimp_plug_in_main_loop_quit
	.align	16, 0x90
	.type	gimp_plug_in_main_loop_quit,@function
gimp_plug_in_main_loop_quit:            # @gimp_plug_in_main_loop_quit
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_plug_in_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB13_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB13_8
.LBB13_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB13_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB13_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB13_7:                               # %if.end
	jmp	.LBB13_8
.LBB13_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB13_10
# BB#9:                                 # %if.then.8
	jmp	.LBB13_11
.LBB13_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_main_loop_quit, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_23
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	jmp	.LBB13_13
.LBB13_13:                              # %do.body.11
	movq	-8(%rbp), %rax
	cmpq	$0, 728(%rax)
	je	.LBB13_15
# BB#14:                                # %if.then.13
	jmp	.LBB13_16
.LBB13_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_main_loop_quit, %rsi
	movabsq	$.L.str.21, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_23
.LBB13_16:                              # %if.end.15
	jmp	.LBB13_17
.LBB13_17:                              # %do.end.16
	movq	-8(%rbp), %rax
	movq	728(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
# BB#18:                                # %do.body.18
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB13_20
# BB#19:                                # %if.then.20
	jmp	.LBB13_21
.LBB13_20:                              # %if.else.21
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_main_loop_quit, %rsi
	movabsq	$.L.str.23, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_23
.LBB13_21:                              # %if.end.22
	jmp	.LBB13_22
.LBB13_22:                              # %do.end.23
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_main_loop_quit
.LBB13_23:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_plug_in_main_loop_quit, .Lfunc_end13-gimp_plug_in_main_loop_quit
	.cfi_endproc

	.globl	gimp_plug_in_get_undo_desc
	.align	16, 0x90
	.type	gimp_plug_in_get_undo_desc,@function
gimp_plug_in_get_undo_desc:             # @gimp_plug_in_get_undo_desc
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	$0, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_plug_in_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_get_undo_desc, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB14_20
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_plug_in_get_proc_frame
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB14_16
# BB#13:                                # %if.then.13
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_plug_in_procedure_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -64(%rbp)
	cmpq	$0, -64(%rbp)
	je	.LBB14_15
# BB#14:                                # %if.then.18
	movq	-64(%rbp), %rdi
	callq	gimp_plug_in_procedure_get_label
	movq	%rax, -32(%rbp)
.LBB14_15:                              # %if.end.20
	jmp	.LBB14_16
.LBB14_16:                              # %if.end.21
	cmpq	$0, -32(%rbp)
	je	.LBB14_18
# BB#17:                                # %cond.true
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB14_19
.LBB14_18:                              # %cond.false
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB14_19:                              # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
.LBB14_20:                              # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_plug_in_get_undo_desc, .Lfunc_end14-gimp_plug_in_get_undo_desc
	.cfi_endproc

	.globl	gimp_plug_in_menu_register
	.align	16, 0x90
	.type	gimp_plug_in_menu_register,@function
gimp_plug_in_menu_register:             # @gimp_plug_in_menu_register
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
	subq	$208, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_plug_in_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_menu_register, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB15_42
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	jmp	.LBB15_13
.LBB15_13:                              # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB15_15
# BB#14:                                # %if.then.13
	jmp	.LBB15_16
.LBB15_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_menu_register, %rsi
	movabsq	$.L.str.24, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB15_42
.LBB15_16:                              # %if.end.15
	jmp	.LBB15_17
.LBB15_17:                              # %do.end.16
	jmp	.LBB15_18
.LBB15_18:                              # %do.body.17
	cmpq	$0, -32(%rbp)
	je	.LBB15_20
# BB#19:                                # %if.then.19
	jmp	.LBB15_21
.LBB15_20:                              # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_menu_register, %rsi
	movabsq	$.L.str.25, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB15_42
.LBB15_21:                              # %if.end.21
	jmp	.LBB15_22
.LBB15_22:                              # %do.end.22
	movq	-16(%rbp), %rax
	cmpq	$0, 736(%rax)
	je	.LBB15_24
# BB#23:                                # %if.then.24
	movq	-16(%rbp), %rax
	movq	736(%rax), %rax
	movq	40(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_plug_in_procedure_find
	movq	%rax, -40(%rbp)
.LBB15_24:                              # %if.end.27
	cmpq	$0, -40(%rbp)
	jne	.LBB15_26
# BB#25:                                # %if.then.29
	movq	-16(%rbp), %rax
	movq	616(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_plug_in_procedure_find
	movq	%rax, -40(%rbp)
.LBB15_26:                              # %if.end.31
	cmpq	$0, -40(%rbp)
	jne	.LBB15_28
# BB#27:                                # %if.then.33
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-16(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	gimp_filename_to_utf8
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$2, %edx
	movabsq	$.L.str.26, %rcx
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %r8
	movq	-80(%rbp), %r9          # 8-byte Reload
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movq	-88(%rbp), %r10         # 8-byte Reload
	movq	%r8, -104(%rbp)         # 8-byte Spill
	movq	%r10, %r8
	movq	%rax, %r9
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	gimp_message
	movl	$0, -4(%rbp)
	jmp	.LBB15_42
.LBB15_28:                              # %if.end.36
	movq	-40(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_procedure_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	32(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -116(%rbp)        # 4-byte Spill
	je	.LBB15_29
	jmp	.LBB15_43
.LBB15_43:                              # %if.end.36
	movl	-116(%rbp), %eax        # 4-byte Reload
	decl	%eax
	subl	$2, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jb	.LBB15_30
	jmp	.LBB15_44
.LBB15_44:                              # %if.end.36
	movl	-116(%rbp), %eax        # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -124(%rbp)        # 4-byte Spill
	je	.LBB15_34
	jmp	.LBB15_35
.LBB15_29:                              # %sw.bb
	movl	$0, -4(%rbp)
	jmp	.LBB15_42
.LBB15_30:                              # %sw.bb.39
	movq	-16(%rbp), %rax
	cmpl	$2, 48(%rax)
	je	.LBB15_33
# BB#31:                                # %land.lhs.true.41
	movq	-16(%rbp), %rax
	cmpl	$3, 48(%rax)
	je	.LBB15_33
# BB#32:                                # %if.then.44
	movl	$0, -4(%rbp)
	jmp	.LBB15_42
.LBB15_33:                              # %if.end.45
	jmp	.LBB15_34
.LBB15_34:                              # %sw.bb.46
	jmp	.LBB15_35
.LBB15_35:                              # %sw.epilog
	movq	-40(%rbp), %rax
	cmpq	$0, 152(%rax)
	jne	.LBB15_37
# BB#36:                                # %if.then.48
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-16(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$2, %edx
	movabsq	$.L.str.27, %rcx
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %r8
	movq	-136(%rbp), %r9         # 8-byte Reload
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	-144(%rbp), %r10        # 8-byte Reload
	movq	%r8, -160(%rbp)         # 8-byte Spill
	movq	%r10, %r8
	movq	%rax, %r9
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	gimp_message
	movl	$0, -4(%rbp)
	jmp	.LBB15_42
.LBB15_37:                              # %if.end.54
	movq	-40(%rbp), %rax
	movq	152(%rax), %rdi
	callq	strlen
	cmpq	$0, %rax
	jne	.LBB15_39
# BB#38:                                # %if.then.58
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-16(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	gimp_filename_to_utf8
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$2, %edx
	movabsq	$.L.str.28, %rcx
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %r8
	movq	-168(%rbp), %r9         # 8-byte Reload
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	-176(%rbp), %r10        # 8-byte Reload
	movq	%r8, -192(%rbp)         # 8-byte Spill
	movq	%r10, %r8
	movq	%rax, %r9
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	gimp_message
	movl	$0, -4(%rbp)
	jmp	.LBB15_42
.LBB15_39:                              # %if.end.64
	leaq	-48(%rbp), %rdx
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_plug_in_procedure_add_menu_path
	cmpl	$0, %eax
	jne	.LBB15_41
# BB#40:                                # %if.then.67
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	32(%rcx), %rdi
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rcx
	callq	gimp_message_literal
	leaq	-48(%rbp), %rdi
	callq	g_clear_error
	movl	$0, -4(%rbp)
	jmp	.LBB15_42
.LBB15_41:                              # %if.end.70
	movl	$1, -4(%rbp)
.LBB15_42:                              # %return
	movl	-4(%rbp), %eax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_plug_in_menu_register, .Lfunc_end15-gimp_plug_in_menu_register
	.cfi_endproc

	.globl	gimp_plug_in_set_error_handler
	.align	16, 0x90
	.type	gimp_plug_in_set_error_handler,@function
gimp_plug_in_set_error_handler:         # @gimp_plug_in_set_error_handler
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_plug_in_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB16_8
.LBB16_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB16_7:                               # %if.end
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.8
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_set_error_handler, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_14
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	movq	-8(%rbp), %rdi
	callq	gimp_plug_in_get_proc_frame
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB16_14
# BB#13:                                # %if.then.13
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 72(%rcx)
.LBB16_14:                              # %if.end.14
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_plug_in_set_error_handler, .Lfunc_end16-gimp_plug_in_set_error_handler
	.cfi_endproc

	.globl	gimp_plug_in_get_error_handler
	.align	16, 0x90
	.type	gimp_plug_in_get_error_handler,@function
gimp_plug_in_get_error_handler:         # @gimp_plug_in_get_error_handler
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_plug_in_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB17_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB17_8
.LBB17_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB17_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB17_7
.LBB17_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB17_7:                               # %if.end
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB17_10
# BB#9:                                 # %if.then.8
	jmp	.LBB17_11
.LBB17_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_get_error_handler, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB17_15
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	movq	-16(%rbp), %rdi
	callq	gimp_plug_in_get_proc_frame
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB17_14
# BB#13:                                # %if.then.13
	movq	-24(%rbp), %rax
	movl	72(%rax), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB17_15
.LBB17_14:                              # %if.end.14
	movl	$0, -4(%rbp)
.LBB17_15:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_plug_in_get_error_handler, .Lfunc_end17-gimp_plug_in_get_error_handler
	.cfi_endproc

	.globl	gimp_plug_in_add_temp_proc
	.align	16, 0x90
	.type	gimp_plug_in_add_temp_proc,@function
gimp_plug_in_add_temp_proc:             # @gimp_plug_in_add_temp_proc
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_plug_in_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB18_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB18_8
.LBB18_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB18_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB18_7
.LBB18_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB18_7:                               # %if.end
	jmp	.LBB18_8
.LBB18_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB18_10
# BB#9:                                 # %if.then.8
	jmp	.LBB18_11
.LBB18_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_add_temp_proc, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB18_27
.LBB18_11:                              # %if.end.10
	jmp	.LBB18_12
.LBB18_12:                              # %do.end
	jmp	.LBB18_13
.LBB18_13:                              # %do.body.11
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_temporary_procedure_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB18_15
# BB#14:                                # %if.then.20
	movl	$0, -84(%rbp)
	jmp	.LBB18_20
.LBB18_15:                              # %if.else.21
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_18
# BB#16:                                # %land.lhs.true.24
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB18_18
# BB#17:                                # %if.then.28
	movl	$1, -84(%rbp)
	jmp	.LBB18_19
.LBB18_18:                              # %if.else.29
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB18_19:                              # %if.end.31
	jmp	.LBB18_20
.LBB18_20:                              # %if.end.32
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB18_22
# BB#21:                                # %if.then.35
	jmp	.LBB18_23
.LBB18_22:                              # %if.else.36
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_plug_in_add_temp_proc, %rsi
	movabsq	$.L.str.29, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB18_27
.LBB18_23:                              # %if.end.37
	jmp	.LBB18_24
.LBB18_24:                              # %do.end.38
	movq	-8(%rbp), %rax
	movq	616(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	gimp_object_get_name
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_plug_in_procedure_find
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB18_26
# BB#25:                                # %if.then.42
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	gimp_temporary_procedure_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_plug_in_remove_temp_proc
.LBB18_26:                              # %if.end.45
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rsi
	callq	gimp_plug_in_manager_get_locale_domain
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rsi
	callq	gimp_plug_in_manager_get_help_domain
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	gimp_plug_in_procedure_get_type
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_plug_in_procedure_set_locale_domain
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_plug_in_procedure_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_plug_in_procedure_set_help_domain
	movq	-8(%rbp), %rax
	movq	616(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_slist_prepend
	movq	-8(%rbp), %rcx
	movq	%rax, 616(%rcx)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_plug_in_manager_add_temp_proc
.LBB18_27:                              # %return
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_plug_in_add_temp_proc, .Lfunc_end18-gimp_plug_in_add_temp_proc
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_class_init,@function
gimp_plug_in_class_init:                # @gimp_plug_in_class_init
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
	subq	$16, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$gimp_plug_in_finalize, %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rsi, 48(%rax)
	callq	gp_init
	movabsq	$gimp_plug_in_write, %rdi
	callq	gimp_wire_set_writer
	movabsq	$gimp_plug_in_flush, %rdi
	callq	gimp_wire_set_flusher
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_plug_in_class_init, .Lfunc_end19-gimp_plug_in_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_finalize,@function
gimp_plug_in_finalize:                  # @gimp_plug_in_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_plug_in_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	addq	$632, %rax              # imm = 0x278
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_plug_in_proc_frame_dispose
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	gimp_plug_in_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_plug_in_finalize, .Lfunc_end20-gimp_plug_in_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_write,@function
gimp_plug_in_write:                     # @gimp_plug_in_write
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	%rcx, -48(%rbp)
.LBB21_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	jbe	.LBB21_8
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-48(%rbp), %rax
	movslq	612(%rax), %rax
	addq	-32(%rbp), %rax
	cmpq	$512, %rax              # imm = 0x200
	jb	.LBB21_6
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	$512, %eax              # imm = 0x200
	movq	-48(%rbp), %rcx
	subl	612(%rcx), %eax
	movslq	%eax, %rcx
	movq	%rcx, -56(%rbp)
	movq	-48(%rbp), %rcx
	movslq	612(%rcx), %rcx
	movq	-48(%rbp), %rdx
	addq	$100, %rdx
	addq	%rcx, %rdx
	movq	-24(%rbp), %rsi
	movq	-56(%rbp), %rcx
	movq	%rdx, %rdi
	movq	%rcx, %rdx
	callq	memcpy
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movslq	612(%rdx), %rsi
	addq	%rcx, %rsi
	movl	%esi, %eax
	movl	%eax, 612(%rdx)
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	callq	gimp_wire_flush
	cmpl	$0, %eax
	jne	.LBB21_5
# BB#4:                                 # %if.then.10
	movl	$0, -4(%rbp)
	jmp	.LBB21_9
.LBB21_5:                               # %if.end
                                        #   in Loop: Header=BB21_1 Depth=1
	jmp	.LBB21_7
.LBB21_6:                               # %if.else
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movslq	612(%rax), %rax
	movq	-48(%rbp), %rcx
	addq	$100, %rcx
	addq	%rax, %rcx
	movq	-24(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movq	%rcx, %rdi
	callq	memcpy
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	movslq	612(%rcx), %rdx
	addq	%rax, %rdx
	movl	%edx, %r8d
	movl	%r8d, 612(%rcx)
.LBB21_7:                               # %if.end.19
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-56(%rbp), %rax
	addq	-24(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -32(%rbp)
	jmp	.LBB21_1
.LBB21_8:                               # %while.end
	movl	$1, -4(%rbp)
.LBB21_9:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_plug_in_write, .Lfunc_end21-gimp_plug_in_write
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_plug_in_flush,@function
gimp_plug_in_flush:                     # @gimp_plug_in_flush
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rsi
	cmpl	$0, 612(%rsi)
	jle	.LBB22_13
# BB#1:                                 # %if.then
	movq	$0, -48(%rbp)
	movl	$0, -52(%rbp)
.LBB22_2:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_4 Depth 2
	movl	-52(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	612(%rcx), %eax
	je	.LBB22_12
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB22_2 Depth=1
	jmp	.LBB22_4
.LBB22_4:                               # %do.body
                                        #   Parent Loop BB22_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	-64(%rbp), %rcx
	leaq	-48(%rbp), %r8
	movq	$0, -64(%rbp)
	movq	-16(%rbp), %rdi
	movslq	-52(%rbp), %rax
	movq	-32(%rbp), %rdx
	addq	$100, %rdx
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movl	612(%rax), %esi
	subl	-52(%rbp), %esi
	movslq	%esi, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	g_io_channel_write_chars
	movl	%eax, -36(%rbp)
# BB#5:                                 # %do.cond
                                        #   in Loop: Header=BB22_4 Depth=2
	cmpl	$3, -36(%rbp)
	je	.LBB22_4
# BB#6:                                 # %do.end
                                        #   in Loop: Header=BB22_2 Depth=1
	cmpl	$1, -36(%rbp)
	je	.LBB22_11
# BB#7:                                 # %if.then.8
	cmpq	$0, -48(%rbp)
	je	.LBB22_9
# BB#8:                                 # %if.then.9
	callq	g_get_prgname
	movq	%rax, %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.30, %rdi
	movq	-48(%rbp), %rcx
	movq	8(%rcx), %rdx
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_warning
	movq	-48(%rbp), %rdi
	callq	g_error_free
	jmp	.LBB22_10
.LBB22_9:                               # %if.else
	callq	g_get_prgname
	movq	%rax, %rdi
	callq	gimp_filename_to_utf8
	movabsq	$.L.str.31, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_warning
.LBB22_10:                              # %if.end
	movl	$0, -4(%rbp)
	jmp	.LBB22_14
.LBB22_11:                              # %if.end.14
                                        #   in Loop: Header=BB22_2 Depth=1
	movq	-64(%rbp), %rax
	movslq	-52(%rbp), %rcx
	addq	%rax, %rcx
	movl	%ecx, %edx
	movl	%edx, -52(%rbp)
	jmp	.LBB22_2
.LBB22_12:                              # %while.end
	movq	-32(%rbp), %rax
	movl	$0, 612(%rax)
.LBB22_13:                              # %if.end.18
	movl	$1, -4(%rbp)
.LBB22_14:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_plug_in_flush, .Lfunc_end22-gimp_plug_in_flush
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB23_2
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
.LBB23_2:                               # %entry
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
.Lfunc_end23:
	.size	g_warning, .Lfunc_end23-g_warning
	.cfi_endproc

	.type	gimp_plug_in_get_type.g_define_type_id__volatile,@object # @gimp_plug_in_get_type.g_define_type_id__volatile
	.local	gimp_plug_in_get_type.g_define_type_id__volatile
	.comm	gimp_plug_in_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpPlugIn"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Plug-In"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_plug_in_new,@object # @__func__.gimp_plug_in_new
.L__func__.gimp_plug_in_new:
	.asciz	"gimp_plug_in_new"
	.size	.L__func__.gimp_plug_in_new, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_PLUG_IN_MANAGER (manager)"
	.size	.L.str.2, 34

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_PDB_CONTEXT (context)"
	.size	.L.str.3, 30

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"progress == NULL || GIMP_IS_PROGRESS (progress)"
	.size	.L.str.4, 48

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"procedure == NULL || GIMP_IS_PLUG_IN_PROCEDURE (procedure)"
	.size	.L.str.5, 59

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"prog == NULL || g_path_is_absolute (prog)"
	.size	.L.str.6, 42

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"(procedure != NULL || prog != NULL) && ! (procedure != NULL && prog != NULL)"
	.size	.L.str.7, 77

	.type	.L__func__.gimp_plug_in_open,@object # @__func__.gimp_plug_in_open
.L__func__.gimp_plug_in_open:
	.asciz	"gimp_plug_in_open"
	.size	.L__func__.gimp_plug_in_open, 18

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"GIMP_IS_PLUG_IN (plug_in)"
	.size	.L.str.8, 26

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"plug_in->call_mode == GIMP_PLUG_IN_CALL_NONE"
	.size	.L.str.9, 45

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Unable to run plug-in \"%s\"\n(%s)\n\npipe() failed: %s"
	.size	.L.str.10, 51

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%d"
	.size	.L.str.11, 3

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"-query"
	.size	.L.str.12, 7

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"-init"
	.size	.L.str.13, 6

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"-run"
	.size	.L.str.14, 5

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimpplugin.c"
	.size	.L.str.15, 13

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"-gimp"
	.size	.L.str.16, 6

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Unable to run plug-in \"%s\"\n(%s)\n\n%s"
	.size	.L.str.17, 36

	.type	.L__func__.gimp_plug_in_close,@object # @__func__.gimp_plug_in_close
.L__func__.gimp_plug_in_close:
	.asciz	"gimp_plug_in_close"
	.size	.L__func__.gimp_plug_in_close, 19

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"plug_in->open"
	.size	.L.str.18, 14

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Terminating plug-in: '%s'\n"
	.size	.L.str.19, 27

	.type	.L__func__.gimp_plug_in_get_proc_frame,@object # @__func__.gimp_plug_in_get_proc_frame
.L__func__.gimp_plug_in_get_proc_frame:
	.asciz	"gimp_plug_in_get_proc_frame"
	.size	.L__func__.gimp_plug_in_get_proc_frame, 28

	.type	.L__func__.gimp_plug_in_proc_frame_push,@object # @__func__.gimp_plug_in_proc_frame_push
.L__func__.gimp_plug_in_proc_frame_push:
	.asciz	"gimp_plug_in_proc_frame_push"
	.size	.L__func__.gimp_plug_in_proc_frame_push, 29

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"GIMP_IS_TEMPORARY_PROCEDURE (procedure)"
	.size	.L.str.20, 40

	.type	.L__func__.gimp_plug_in_proc_frame_pop,@object # @__func__.gimp_plug_in_proc_frame_pop
.L__func__.gimp_plug_in_proc_frame_pop:
	.asciz	"gimp_plug_in_proc_frame_pop"
	.size	.L__func__.gimp_plug_in_proc_frame_pop, 28

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"plug_in->temp_proc_frames != NULL"
	.size	.L.str.21, 34

	.type	.L__func__.gimp_plug_in_main_loop,@object # @__func__.gimp_plug_in_main_loop
.L__func__.gimp_plug_in_main_loop:
	.asciz	"gimp_plug_in_main_loop"
	.size	.L__func__.gimp_plug_in_main_loop, 23

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"proc_frame->main_loop == NULL"
	.size	.L.str.22, 30

	.type	.L__func__.gimp_plug_in_main_loop_quit,@object # @__func__.gimp_plug_in_main_loop_quit
.L__func__.gimp_plug_in_main_loop_quit:
	.asciz	"gimp_plug_in_main_loop_quit"
	.size	.L__func__.gimp_plug_in_main_loop_quit, 28

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"proc_frame->main_loop != NULL"
	.size	.L.str.23, 30

	.type	.L__func__.gimp_plug_in_get_undo_desc,@object # @__func__.gimp_plug_in_get_undo_desc
.L__func__.gimp_plug_in_get_undo_desc:
	.asciz	"gimp_plug_in_get_undo_desc"
	.size	.L__func__.gimp_plug_in_get_undo_desc, 27

	.type	.L__func__.gimp_plug_in_menu_register,@object # @__func__.gimp_plug_in_menu_register
.L__func__.gimp_plug_in_menu_register:
	.asciz	"gimp_plug_in_menu_register"
	.size	.L__func__.gimp_plug_in_menu_register, 27

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"proc_name != NULL"
	.size	.L.str.24, 18

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"menu_path != NULL"
	.size	.L.str.25, 18

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Plug-in \"%s\"\n(%s)\nattempted to register the menu item \"%s\" for the procedure \"%s\".\nIt has however not installed that procedure.  This is not allowed."
	.size	.L.str.26, 150

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Plug-in \"%s\"\n(%s)\nattempted to register the menu item \"%s\" for procedure \"%s\".\nThe menu label given in gimp_install_procedure() already contained a path.  To make this work, pass just the menu's label to gimp_install_procedure()."
	.size	.L.str.27, 230

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Plug-in \"%s\"\n(%s)\nattempted to register the procedure \"%s\" in the menu \"%s\", but the procedure has no label.  This is not allowed."
	.size	.L.str.28, 131

	.type	.L__func__.gimp_plug_in_set_error_handler,@object # @__func__.gimp_plug_in_set_error_handler
.L__func__.gimp_plug_in_set_error_handler:
	.asciz	"gimp_plug_in_set_error_handler"
	.size	.L__func__.gimp_plug_in_set_error_handler, 31

	.type	.L__func__.gimp_plug_in_get_error_handler,@object # @__func__.gimp_plug_in_get_error_handler
.L__func__.gimp_plug_in_get_error_handler:
	.asciz	"gimp_plug_in_get_error_handler"
	.size	.L__func__.gimp_plug_in_get_error_handler, 31

	.type	.L__func__.gimp_plug_in_add_temp_proc,@object # @__func__.gimp_plug_in_add_temp_proc
.L__func__.gimp_plug_in_add_temp_proc:
	.asciz	"gimp_plug_in_add_temp_proc"
	.size	.L__func__.gimp_plug_in_add_temp_proc, 27

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"GIMP_IS_TEMPORARY_PROCEDURE (proc)"
	.size	.L.str.29, 35

	.type	.L__func__.gimp_plug_in_remove_temp_proc,@object # @__func__.gimp_plug_in_remove_temp_proc
.L__func__.gimp_plug_in_remove_temp_proc:
	.asciz	"gimp_plug_in_remove_temp_proc"
	.size	.L__func__.gimp_plug_in_remove_temp_proc, 30

	.type	gimp_plug_in_parent_class,@object # @gimp_plug_in_parent_class
	.local	gimp_plug_in_parent_class
	.comm	gimp_plug_in_parent_class,8,8
	.type	GimpPlugIn_private_offset,@object # @GimpPlugIn_private_offset
	.local	GimpPlugIn_private_offset
	.comm	GimpPlugIn_private_offset,4,4
	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"%s: plug_in_flush(): error: %s"
	.size	.L.str.30, 31

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"%s: plug_in_flush(): error"
	.size	.L.str.31, 27

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Plug-in crashed: \"%s\"\n(%s)\n\nThe dying plug-in may have messed up GIMP's internal state. You may want to save your images and restart GIMP to be on the safe side."
	.size	.L.str.32, 162


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
