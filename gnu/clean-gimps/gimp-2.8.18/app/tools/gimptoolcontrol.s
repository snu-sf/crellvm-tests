	.text
	.file	"gimptoolcontrol.bc"
	.globl	gimp_tool_control_get_type
	.align	16, 0x90
	.type	gimp_tool_control_get_type,@function
gimp_tool_control_get_type:             # @gimp_tool_control_get_type
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
	movq	gimp_tool_control_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_tool_control_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_tool_control_class_intern_init, %rdi
	movl	$192, %r8d
	movabsq	$gimp_tool_control_init, %rcx
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
	movabsq	$gimp_tool_control_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_tool_control_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_tool_control_get_type, .Lfunc_end0-gimp_tool_control_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_control_class_intern_init,@function
gimp_tool_control_class_intern_init:    # @gimp_tool_control_class_intern_init
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
	movq	%rax, gimp_tool_control_parent_class
	cmpl	$0, GimpToolControl_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpToolControl_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_tool_control_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_tool_control_class_intern_init, .Lfunc_end1-gimp_tool_control_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_control_init,@function
gimp_tool_control_init:                 # @gimp_tool_control_init
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
	movl	$0, 32(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 36(%rdi)
	movq	-8(%rbp), %rdi
	movl	$1, 40(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 56(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 60(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 64(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 68(%rdi)
	movq	-8(%rbp), %rdi
	movl	$1, 72(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 76(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 80(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 84(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 88(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 92(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 112(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 96(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 100(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 104(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 108(%rdi)
	movq	-8(%rbp), %rdi
	movl	$1025, 116(%rdi)        # imm = 0x401
	movq	-8(%rbp), %rdi
	movl	$0, 120(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 124(%rdi)
	movq	-8(%rbp), %rdi
	movl	$-1, 128(%rdi)
	movq	-8(%rbp), %rdi
	movl	$-1, 132(%rdi)
	movq	-8(%rbp), %rdi
	movl	$-1, 136(%rdi)
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
	movq	-8(%rbp), %rdi
	movq	$0, 184(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_tool_control_init, .Lfunc_end2-gimp_tool_control_init
	.cfi_endproc

	.globl	gimp_tool_control_activate
	.align	16, 0x90
	.type	gimp_tool_control_activate,@function
gimp_tool_control_activate:             # @gimp_tool_control_activate
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB3_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB3_8
.LBB3_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB3_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB3_7
.LBB3_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB3_7:                                # %if.end
	jmp	.LBB3_8
.LBB3_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.8
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_activate, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_18
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	movq	-8(%rbp), %rax
	cmpl	$0, 32(%rax)
	jne	.LBB3_15
# BB#14:                                # %if.then.13
	jmp	.LBB3_16
.LBB3_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_activate, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_18
.LBB3_16:                               # %if.end.15
	jmp	.LBB3_17
.LBB3_17:                               # %do.end.16
	movq	-8(%rbp), %rax
	movl	$1, 32(%rax)
.LBB3_18:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_tool_control_activate, .Lfunc_end3-gimp_tool_control_activate
	.cfi_endproc

	.globl	gimp_tool_control_halt
	.align	16, 0x90
	.type	gimp_tool_control_halt,@function
gimp_tool_control_halt:                 # @gimp_tool_control_halt
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_halt, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_18
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	movq	-8(%rbp), %rax
	cmpl	$1, 32(%rax)
	jne	.LBB4_15
# BB#14:                                # %if.then.13
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_halt, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_18
.LBB4_16:                               # %if.end.15
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.16
	movq	-8(%rbp), %rax
	movl	$0, 32(%rax)
.LBB4_18:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_tool_control_halt, .Lfunc_end4-gimp_tool_control_halt
	.cfi_endproc

	.globl	gimp_tool_control_is_active
	.align	16, 0x90
	.type	gimp_tool_control_is_active,@function
gimp_tool_control_is_active:            # @gimp_tool_control_is_active
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_control_get_type
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
	movabsq	$.L__func__.gimp_tool_control_is_active, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB5_13
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB5_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_tool_control_is_active, .Lfunc_end5-gimp_tool_control_is_active
	.cfi_endproc

	.globl	gimp_tool_control_pause
	.align	16, 0x90
	.type	gimp_tool_control_pause,@function
gimp_tool_control_pause:                # @gimp_tool_control_pause
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_pause, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_13
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 36(%rax)
.LBB6_13:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_tool_control_pause, .Lfunc_end6-gimp_tool_control_pause
	.cfi_endproc

	.globl	gimp_tool_control_resume
	.align	16, 0x90
	.type	gimp_tool_control_resume,@function
gimp_tool_control_resume:               # @gimp_tool_control_resume
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_resume, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_18
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	movq	-8(%rbp), %rax
	cmpl	$0, 36(%rax)
	jle	.LBB7_15
# BB#14:                                # %if.then.13
	jmp	.LBB7_16
.LBB7_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_resume, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_18
.LBB7_16:                               # %if.end.15
	jmp	.LBB7_17
.LBB7_17:                               # %do.end.16
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 36(%rax)
.LBB7_18:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_tool_control_resume, .Lfunc_end7-gimp_tool_control_resume
	.cfi_endproc

	.globl	gimp_tool_control_is_paused
	.align	16, 0x90
	.type	gimp_tool_control_is_paused,@function
gimp_tool_control_is_paused:            # @gimp_tool_control_is_paused
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_control_get_type
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
	movabsq	$.L__func__.gimp_tool_control_is_paused, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB8_13
.LBB8_11:                               # %if.end.10
	jmp	.LBB8_12
.LBB8_12:                               # %do.end
	movq	-16(%rbp), %rax
	cmpl	$0, 36(%rax)
	setg	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -4(%rbp)
.LBB8_13:                               # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_tool_control_is_paused, .Lfunc_end8-gimp_tool_control_is_paused
	.cfi_endproc

	.globl	gimp_tool_control_set_preserve
	.align	16, 0x90
	.type	gimp_tool_control_set_preserve,@function
gimp_tool_control_set_preserve:         # @gimp_tool_control_set_preserve
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_control_get_type
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
	movabsq	$.L__func__.gimp_tool_control_set_preserve, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_13
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, -12(%rbp)
	cmovnel	%ecx, %eax
	movq	-8(%rbp), %rdx
	movl	%eax, 40(%rdx)
.LBB9_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_tool_control_set_preserve, .Lfunc_end9-gimp_tool_control_set_preserve
	.cfi_endproc

	.globl	gimp_tool_control_get_preserve
	.align	16, 0x90
	.type	gimp_tool_control_get_preserve,@function
gimp_tool_control_get_preserve:         # @gimp_tool_control_get_preserve
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
	callq	gimp_tool_control_get_type
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
	movabsq	$.L__func__.gimp_tool_control_get_preserve, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB10_13
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-16(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB10_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_tool_control_get_preserve, .Lfunc_end10-gimp_tool_control_get_preserve
	.cfi_endproc

	.globl	gimp_tool_control_push_preserve
	.align	16, 0x90
	.type	gimp_tool_control_push_preserve,@function
gimp_tool_control_push_preserve:        # @gimp_tool_control_push_preserve
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_push_preserve, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_13
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-8(%rbp), %rax
	movslq	40(%rax), %rsi
	callq	g_slist_prepend
	xorl	%ecx, %ecx
	movl	$1, %edx
	movq	-8(%rbp), %rsi
	movq	%rax, 48(%rsi)
	cmpl	$0, -12(%rbp)
	cmovnel	%edx, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 40(%rax)
.LBB11_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_tool_control_push_preserve, .Lfunc_end11-gimp_tool_control_push_preserve
	.cfi_endproc

	.globl	gimp_tool_control_pop_preserve
	.align	16, 0x90
	.type	gimp_tool_control_pop_preserve,@function
gimp_tool_control_pop_preserve:         # @gimp_tool_control_pop_preserve
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_pop_preserve, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_18
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	jmp	.LBB12_13
.LBB12_13:                              # %do.body.11
	movq	-8(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB12_15
# BB#14:                                # %if.then.13
	jmp	.LBB12_16
.LBB12_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_pop_preserve, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_18
.LBB12_16:                              # %if.end.15
	jmp	.LBB12_17
.LBB12_17:                              # %do.end.16
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	(%rax), %rax
	movl	%eax, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 40(%rax)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	48(%rax), %rsi
	callq	g_slist_delete_link
	movq	-8(%rbp), %rsi
	movq	%rax, 48(%rsi)
.LBB12_18:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_tool_control_pop_preserve, .Lfunc_end12-gimp_tool_control_pop_preserve
	.cfi_endproc

	.globl	gimp_tool_control_set_scroll_lock
	.align	16, 0x90
	.type	gimp_tool_control_set_scroll_lock,@function
gimp_tool_control_set_scroll_lock:      # @gimp_tool_control_set_scroll_lock
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
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_control_get_type
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
	movabsq	$.L__func__.gimp_tool_control_set_scroll_lock, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_13
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, -12(%rbp)
	cmovnel	%ecx, %eax
	movq	-8(%rbp), %rdx
	movl	%eax, 56(%rdx)
.LBB13_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_tool_control_set_scroll_lock, .Lfunc_end13-gimp_tool_control_set_scroll_lock
	.cfi_endproc

	.globl	gimp_tool_control_get_scroll_lock
	.align	16, 0x90
	.type	gimp_tool_control_get_scroll_lock,@function
gimp_tool_control_get_scroll_lock:      # @gimp_tool_control_get_scroll_lock
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_get_scroll_lock, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB14_13
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	movq	-16(%rbp), %rax
	movl	56(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB14_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_tool_control_get_scroll_lock, .Lfunc_end14-gimp_tool_control_get_scroll_lock
	.cfi_endproc

	.globl	gimp_tool_control_set_handle_empty_image
	.align	16, 0x90
	.type	gimp_tool_control_set_handle_empty_image,@function
gimp_tool_control_set_handle_empty_image: # @gimp_tool_control_set_handle_empty_image
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_set_handle_empty_image, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB15_13
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, -12(%rbp)
	cmovnel	%ecx, %eax
	movq	-8(%rbp), %rdx
	movl	%eax, 60(%rdx)
.LBB15_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_tool_control_set_handle_empty_image, .Lfunc_end15-gimp_tool_control_set_handle_empty_image
	.cfi_endproc

	.globl	gimp_tool_control_get_handle_empty_image
	.align	16, 0x90
	.type	gimp_tool_control_get_handle_empty_image,@function
gimp_tool_control_get_handle_empty_image: # @gimp_tool_control_get_handle_empty_image
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB16_8
.LBB16_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB16_7:                               # %if.end
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.8
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_get_handle_empty_image, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB16_13
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	movq	-16(%rbp), %rax
	movl	60(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB16_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_tool_control_get_handle_empty_image, .Lfunc_end16-gimp_tool_control_get_handle_empty_image
	.cfi_endproc

	.globl	gimp_tool_control_set_dirty_mask
	.align	16, 0x90
	.type	gimp_tool_control_set_dirty_mask,@function
gimp_tool_control_set_dirty_mask:       # @gimp_tool_control_set_dirty_mask
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
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB17_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB17_8
.LBB17_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB17_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB17_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB17_7
.LBB17_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB17_7:                               # %if.end
	jmp	.LBB17_8
.LBB17_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB17_10
# BB#9:                                 # %if.then.8
	jmp	.LBB17_11
.LBB17_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_set_dirty_mask, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB17_13
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 64(%rcx)
.LBB17_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_tool_control_set_dirty_mask, .Lfunc_end17-gimp_tool_control_set_dirty_mask
	.cfi_endproc

	.globl	gimp_tool_control_get_dirty_mask
	.align	16, 0x90
	.type	gimp_tool_control_get_dirty_mask,@function
gimp_tool_control_get_dirty_mask:       # @gimp_tool_control_get_dirty_mask
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB18_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB18_8
.LBB18_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB18_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB18_7
.LBB18_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB18_7:                               # %if.end
	jmp	.LBB18_8
.LBB18_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB18_10
# BB#9:                                 # %if.then.8
	jmp	.LBB18_11
.LBB18_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_get_dirty_mask, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB18_13
.LBB18_11:                              # %if.end.10
	jmp	.LBB18_12
.LBB18_12:                              # %do.end
	movq	-16(%rbp), %rax
	movl	64(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB18_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_tool_control_get_dirty_mask, .Lfunc_end18-gimp_tool_control_get_dirty_mask
	.cfi_endproc

	.globl	gimp_tool_control_set_motion_mode
	.align	16, 0x90
	.type	gimp_tool_control_set_motion_mode,@function
gimp_tool_control_set_motion_mode:      # @gimp_tool_control_set_motion_mode
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB19_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB19_8
.LBB19_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB19_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB19_7
.LBB19_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB19_7:                               # %if.end
	jmp	.LBB19_8
.LBB19_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB19_10
# BB#9:                                 # %if.then.8
	jmp	.LBB19_11
.LBB19_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_set_motion_mode, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB19_13
.LBB19_11:                              # %if.end.10
	jmp	.LBB19_12
.LBB19_12:                              # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 68(%rcx)
.LBB19_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_tool_control_set_motion_mode, .Lfunc_end19-gimp_tool_control_set_motion_mode
	.cfi_endproc

	.globl	gimp_tool_control_get_motion_mode
	.align	16, 0x90
	.type	gimp_tool_control_get_motion_mode,@function
gimp_tool_control_get_motion_mode:      # @gimp_tool_control_get_motion_mode
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB20_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB20_8
.LBB20_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB20_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB20_7
.LBB20_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB20_7:                               # %if.end
	jmp	.LBB20_8
.LBB20_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB20_10
# BB#9:                                 # %if.then.8
	jmp	.LBB20_11
.LBB20_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_get_motion_mode, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB20_13
.LBB20_11:                              # %if.end.10
	jmp	.LBB20_12
.LBB20_12:                              # %do.end
	movq	-16(%rbp), %rax
	movl	68(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB20_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_tool_control_get_motion_mode, .Lfunc_end20-gimp_tool_control_get_motion_mode
	.cfi_endproc

	.globl	gimp_tool_control_set_snap_to
	.align	16, 0x90
	.type	gimp_tool_control_set_snap_to,@function
gimp_tool_control_set_snap_to:          # @gimp_tool_control_set_snap_to
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
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB21_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB21_8
.LBB21_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB21_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB21_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB21_7
.LBB21_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB21_7:                               # %if.end
	jmp	.LBB21_8
.LBB21_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB21_10
# BB#9:                                 # %if.then.8
	jmp	.LBB21_11
.LBB21_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_set_snap_to, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB21_13
.LBB21_11:                              # %if.end.10
	jmp	.LBB21_12
.LBB21_12:                              # %do.end
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, -12(%rbp)
	cmovnel	%ecx, %eax
	movq	-8(%rbp), %rdx
	movl	%eax, 72(%rdx)
.LBB21_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_tool_control_set_snap_to, .Lfunc_end21-gimp_tool_control_set_snap_to
	.cfi_endproc

	.globl	gimp_tool_control_get_snap_to
	.align	16, 0x90
	.type	gimp_tool_control_get_snap_to,@function
gimp_tool_control_get_snap_to:          # @gimp_tool_control_get_snap_to
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB22_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB22_8
.LBB22_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB22_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB22_7
.LBB22_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB22_7:                               # %if.end
	jmp	.LBB22_8
.LBB22_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB22_10
# BB#9:                                 # %if.then.8
	jmp	.LBB22_11
.LBB22_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_get_snap_to, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB22_13
.LBB22_11:                              # %if.end.10
	jmp	.LBB22_12
.LBB22_12:                              # %do.end
	movq	-16(%rbp), %rax
	movl	72(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB22_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_tool_control_get_snap_to, .Lfunc_end22-gimp_tool_control_get_snap_to
	.cfi_endproc

	.globl	gimp_tool_control_set_wants_click
	.align	16, 0x90
	.type	gimp_tool_control_set_wants_click,@function
gimp_tool_control_set_wants_click:      # @gimp_tool_control_set_wants_click
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB23_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB23_8
.LBB23_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB23_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB23_7
.LBB23_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB23_7:                               # %if.end
	jmp	.LBB23_8
.LBB23_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB23_10
# BB#9:                                 # %if.then.8
	jmp	.LBB23_11
.LBB23_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_set_wants_click, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB23_13
.LBB23_11:                              # %if.end.10
	jmp	.LBB23_12
.LBB23_12:                              # %do.end
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, -12(%rbp)
	cmovnel	%ecx, %eax
	movq	-8(%rbp), %rdx
	movl	%eax, 96(%rdx)
.LBB23_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_tool_control_set_wants_click, .Lfunc_end23-gimp_tool_control_set_wants_click
	.cfi_endproc

	.globl	gimp_tool_control_get_wants_click
	.align	16, 0x90
	.type	gimp_tool_control_get_wants_click,@function
gimp_tool_control_get_wants_click:      # @gimp_tool_control_get_wants_click
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB24_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB24_8
.LBB24_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB24_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB24_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB24_7
.LBB24_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB24_7:                               # %if.end
	jmp	.LBB24_8
.LBB24_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB24_10
# BB#9:                                 # %if.then.8
	jmp	.LBB24_11
.LBB24_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_get_wants_click, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB24_13
.LBB24_11:                              # %if.end.10
	jmp	.LBB24_12
.LBB24_12:                              # %do.end
	movq	-16(%rbp), %rax
	movl	96(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB24_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_tool_control_get_wants_click, .Lfunc_end24-gimp_tool_control_get_wants_click
	.cfi_endproc

	.globl	gimp_tool_control_set_wants_double_click
	.align	16, 0x90
	.type	gimp_tool_control_set_wants_double_click,@function
gimp_tool_control_set_wants_double_click: # @gimp_tool_control_set_wants_double_click
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB25_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB25_8
.LBB25_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB25_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB25_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB25_7
.LBB25_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB25_7:                               # %if.end
	jmp	.LBB25_8
.LBB25_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB25_10
# BB#9:                                 # %if.then.8
	jmp	.LBB25_11
.LBB25_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_set_wants_double_click, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB25_13
.LBB25_11:                              # %if.end.10
	jmp	.LBB25_12
.LBB25_12:                              # %do.end
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, -12(%rbp)
	cmovnel	%ecx, %eax
	movq	-8(%rbp), %rdx
	movl	%eax, 100(%rdx)
.LBB25_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_tool_control_set_wants_double_click, .Lfunc_end25-gimp_tool_control_set_wants_double_click
	.cfi_endproc

	.globl	gimp_tool_control_get_wants_double_click
	.align	16, 0x90
	.type	gimp_tool_control_get_wants_double_click,@function
gimp_tool_control_get_wants_double_click: # @gimp_tool_control_get_wants_double_click
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB26_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB26_8
.LBB26_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB26_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB26_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB26_7
.LBB26_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB26_7:                               # %if.end
	jmp	.LBB26_8
.LBB26_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB26_10
# BB#9:                                 # %if.then.8
	jmp	.LBB26_11
.LBB26_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_get_wants_double_click, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB26_13
.LBB26_11:                              # %if.end.10
	jmp	.LBB26_12
.LBB26_12:                              # %do.end
	movq	-16(%rbp), %rax
	movl	100(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB26_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_tool_control_get_wants_double_click, .Lfunc_end26-gimp_tool_control_get_wants_double_click
	.cfi_endproc

	.globl	gimp_tool_control_set_wants_triple_click
	.align	16, 0x90
	.type	gimp_tool_control_set_wants_triple_click,@function
gimp_tool_control_set_wants_triple_click: # @gimp_tool_control_set_wants_triple_click
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB27_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB27_8
.LBB27_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB27_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB27_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB27_7
.LBB27_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB27_7:                               # %if.end
	jmp	.LBB27_8
.LBB27_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB27_10
# BB#9:                                 # %if.then.8
	jmp	.LBB27_11
.LBB27_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_set_wants_triple_click, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB27_13
.LBB27_11:                              # %if.end.10
	jmp	.LBB27_12
.LBB27_12:                              # %do.end
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, -12(%rbp)
	cmovnel	%ecx, %eax
	movq	-8(%rbp), %rdx
	movl	%eax, 104(%rdx)
.LBB27_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_tool_control_set_wants_triple_click, .Lfunc_end27-gimp_tool_control_set_wants_triple_click
	.cfi_endproc

	.globl	gimp_tool_control_get_wants_triple_click
	.align	16, 0x90
	.type	gimp_tool_control_get_wants_triple_click,@function
gimp_tool_control_get_wants_triple_click: # @gimp_tool_control_get_wants_triple_click
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB28_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB28_8
.LBB28_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB28_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB28_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB28_7
.LBB28_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB28_7:                               # %if.end
	jmp	.LBB28_8
.LBB28_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB28_10
# BB#9:                                 # %if.then.8
	jmp	.LBB28_11
.LBB28_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_get_wants_triple_click, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB28_13
.LBB28_11:                              # %if.end.10
	jmp	.LBB28_12
.LBB28_12:                              # %do.end
	movq	-16(%rbp), %rax
	movl	104(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB28_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_tool_control_get_wants_triple_click, .Lfunc_end28-gimp_tool_control_get_wants_triple_click
	.cfi_endproc

	.globl	gimp_tool_control_set_wants_all_key_events
	.align	16, 0x90
	.type	gimp_tool_control_set_wants_all_key_events,@function
gimp_tool_control_set_wants_all_key_events: # @gimp_tool_control_set_wants_all_key_events
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB29_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB29_8
.LBB29_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB29_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB29_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB29_7
.LBB29_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB29_7:                               # %if.end
	jmp	.LBB29_8
.LBB29_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB29_10
# BB#9:                                 # %if.then.8
	jmp	.LBB29_11
.LBB29_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_set_wants_all_key_events, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB29_13
.LBB29_11:                              # %if.end.10
	jmp	.LBB29_12
.LBB29_12:                              # %do.end
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, -12(%rbp)
	cmovnel	%ecx, %eax
	movq	-8(%rbp), %rdx
	movl	%eax, 108(%rdx)
.LBB29_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_tool_control_set_wants_all_key_events, .Lfunc_end29-gimp_tool_control_set_wants_all_key_events
	.cfi_endproc

	.globl	gimp_tool_control_get_wants_all_key_events
	.align	16, 0x90
	.type	gimp_tool_control_get_wants_all_key_events,@function
gimp_tool_control_get_wants_all_key_events: # @gimp_tool_control_get_wants_all_key_events
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp92:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB30_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB30_8
.LBB30_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB30_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB30_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB30_7
.LBB30_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB30_7:                               # %if.end
	jmp	.LBB30_8
.LBB30_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB30_10
# BB#9:                                 # %if.then.8
	jmp	.LBB30_11
.LBB30_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_get_wants_all_key_events, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB30_13
.LBB30_11:                              # %if.end.10
	jmp	.LBB30_12
.LBB30_12:                              # %do.end
	movq	-16(%rbp), %rax
	movl	108(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB30_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_tool_control_get_wants_all_key_events, .Lfunc_end30-gimp_tool_control_get_wants_all_key_events
	.cfi_endproc

	.globl	gimp_tool_control_set_snap_offsets
	.align	16, 0x90
	.type	gimp_tool_control_set_snap_offsets,@function
gimp_tool_control_set_snap_offsets:     # @gimp_tool_control_set_snap_offsets
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp95:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB31_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB31_8
.LBB31_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB31_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB31_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB31_7
.LBB31_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB31_7:                               # %if.end
	jmp	.LBB31_8
.LBB31_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB31_10
# BB#9:                                 # %if.then.8
	jmp	.LBB31_11
.LBB31_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_set_snap_offsets, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB31_13
.LBB31_11:                              # %if.end.10
	jmp	.LBB31_12
.LBB31_12:                              # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 76(%rcx)
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 80(%rcx)
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 84(%rcx)
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 88(%rcx)
.LBB31_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_tool_control_set_snap_offsets, .Lfunc_end31-gimp_tool_control_set_snap_offsets
	.cfi_endproc

	.globl	gimp_tool_control_get_snap_offsets
	.align	16, 0x90
	.type	gimp_tool_control_get_snap_offsets,@function
gimp_tool_control_get_snap_offsets:     # @gimp_tool_control_get_snap_offsets
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp98:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB32_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB32_8
.LBB32_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB32_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB32_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB32_7
.LBB32_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB32_7:                               # %if.end
	jmp	.LBB32_8
.LBB32_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB32_10
# BB#9:                                 # %if.then.8
	jmp	.LBB32_11
.LBB32_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_get_snap_offsets, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB32_20
.LBB32_11:                              # %if.end.10
	jmp	.LBB32_12
.LBB32_12:                              # %do.end
	cmpq	$0, -16(%rbp)
	je	.LBB32_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movl	76(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
.LBB32_14:                              # %if.end.13
	cmpq	$0, -24(%rbp)
	je	.LBB32_16
# BB#15:                                # %if.then.15
	movq	-8(%rbp), %rax
	movl	80(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
.LBB32_16:                              # %if.end.16
	cmpq	$0, -32(%rbp)
	je	.LBB32_18
# BB#17:                                # %if.then.18
	movq	-8(%rbp), %rax
	movl	84(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
.LBB32_18:                              # %if.end.19
	cmpq	$0, -40(%rbp)
	je	.LBB32_20
# BB#19:                                # %if.then.21
	movq	-8(%rbp), %rax
	movl	88(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
.LBB32_20:                              # %if.end.22
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_tool_control_get_snap_offsets, .Lfunc_end32-gimp_tool_control_get_snap_offsets
	.cfi_endproc

	.globl	gimp_tool_control_set_precision
	.align	16, 0x90
	.type	gimp_tool_control_set_precision,@function
gimp_tool_control_set_precision:        # @gimp_tool_control_set_precision
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp99:
	.cfi_def_cfa_offset 16
.Ltmp100:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp101:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB33_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB33_8
.LBB33_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB33_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB33_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB33_7
.LBB33_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB33_7:                               # %if.end
	jmp	.LBB33_8
.LBB33_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB33_10
# BB#9:                                 # %if.then.8
	jmp	.LBB33_11
.LBB33_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_set_precision, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB33_13
.LBB33_11:                              # %if.end.10
	jmp	.LBB33_12
.LBB33_12:                              # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 92(%rcx)
.LBB33_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_tool_control_set_precision, .Lfunc_end33-gimp_tool_control_set_precision
	.cfi_endproc

	.globl	gimp_tool_control_get_precision
	.align	16, 0x90
	.type	gimp_tool_control_get_precision,@function
gimp_tool_control_get_precision:        # @gimp_tool_control_get_precision
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp104:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB34_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB34_8
.LBB34_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB34_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB34_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB34_7
.LBB34_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB34_7:                               # %if.end
	jmp	.LBB34_8
.LBB34_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB34_10
# BB#9:                                 # %if.then.8
	jmp	.LBB34_11
.LBB34_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_get_precision, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB34_13
.LBB34_11:                              # %if.end.10
	jmp	.LBB34_12
.LBB34_12:                              # %do.end
	movq	-16(%rbp), %rax
	movl	92(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB34_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_tool_control_get_precision, .Lfunc_end34-gimp_tool_control_get_precision
	.cfi_endproc

	.globl	gimp_tool_control_set_toggled
	.align	16, 0x90
	.type	gimp_tool_control_set_toggled,@function
gimp_tool_control_set_toggled:          # @gimp_tool_control_set_toggled
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp105:
	.cfi_def_cfa_offset 16
.Ltmp106:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp107:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB35_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB35_8
.LBB35_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB35_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB35_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB35_7
.LBB35_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB35_7:                               # %if.end
	jmp	.LBB35_8
.LBB35_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB35_10
# BB#9:                                 # %if.then.8
	jmp	.LBB35_11
.LBB35_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_set_toggled, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB35_13
.LBB35_11:                              # %if.end.10
	jmp	.LBB35_12
.LBB35_12:                              # %do.end
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpl	$0, -12(%rbp)
	cmovnel	%ecx, %eax
	movq	-8(%rbp), %rdx
	movl	%eax, 112(%rdx)
.LBB35_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	gimp_tool_control_set_toggled, .Lfunc_end35-gimp_tool_control_set_toggled
	.cfi_endproc

	.globl	gimp_tool_control_get_toggled
	.align	16, 0x90
	.type	gimp_tool_control_get_toggled,@function
gimp_tool_control_get_toggled:          # @gimp_tool_control_get_toggled
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp108:
	.cfi_def_cfa_offset 16
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp110:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB36_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB36_8
.LBB36_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB36_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB36_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB36_7
.LBB36_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB36_7:                               # %if.end
	jmp	.LBB36_8
.LBB36_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB36_10
# BB#9:                                 # %if.then.8
	jmp	.LBB36_11
.LBB36_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_get_toggled, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB36_13
.LBB36_11:                              # %if.end.10
	jmp	.LBB36_12
.LBB36_12:                              # %do.end
	movq	-16(%rbp), %rax
	movl	112(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB36_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	gimp_tool_control_get_toggled, .Lfunc_end36-gimp_tool_control_get_toggled
	.cfi_endproc

	.globl	gimp_tool_control_set_cursor
	.align	16, 0x90
	.type	gimp_tool_control_set_cursor,@function
gimp_tool_control_set_cursor:           # @gimp_tool_control_set_cursor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp113:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB37_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB37_8
.LBB37_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB37_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB37_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB37_7
.LBB37_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB37_7:                               # %if.end
	jmp	.LBB37_8
.LBB37_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB37_10
# BB#9:                                 # %if.then.8
	jmp	.LBB37_11
.LBB37_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_set_cursor, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB37_13
.LBB37_11:                              # %if.end.10
	jmp	.LBB37_12
.LBB37_12:                              # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 116(%rcx)
.LBB37_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	gimp_tool_control_set_cursor, .Lfunc_end37-gimp_tool_control_set_cursor
	.cfi_endproc

	.globl	gimp_tool_control_set_tool_cursor
	.align	16, 0x90
	.type	gimp_tool_control_set_tool_cursor,@function
gimp_tool_control_set_tool_cursor:      # @gimp_tool_control_set_tool_cursor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp114:
	.cfi_def_cfa_offset 16
.Ltmp115:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp116:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB38_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB38_8
.LBB38_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB38_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB38_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB38_7
.LBB38_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB38_7:                               # %if.end
	jmp	.LBB38_8
.LBB38_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB38_10
# BB#9:                                 # %if.then.8
	jmp	.LBB38_11
.LBB38_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_set_tool_cursor, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB38_13
.LBB38_11:                              # %if.end.10
	jmp	.LBB38_12
.LBB38_12:                              # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 120(%rcx)
.LBB38_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	gimp_tool_control_set_tool_cursor, .Lfunc_end38-gimp_tool_control_set_tool_cursor
	.cfi_endproc

	.globl	gimp_tool_control_set_cursor_modifier
	.align	16, 0x90
	.type	gimp_tool_control_set_cursor_modifier,@function
gimp_tool_control_set_cursor_modifier:  # @gimp_tool_control_set_cursor_modifier
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp117:
	.cfi_def_cfa_offset 16
.Ltmp118:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp119:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB39_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB39_8
.LBB39_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB39_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB39_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB39_7
.LBB39_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB39_7:                               # %if.end
	jmp	.LBB39_8
.LBB39_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB39_10
# BB#9:                                 # %if.then.8
	jmp	.LBB39_11
.LBB39_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_set_cursor_modifier, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB39_13
.LBB39_11:                              # %if.end.10
	jmp	.LBB39_12
.LBB39_12:                              # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 124(%rcx)
.LBB39_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	gimp_tool_control_set_cursor_modifier, .Lfunc_end39-gimp_tool_control_set_cursor_modifier
	.cfi_endproc

	.globl	gimp_tool_control_set_toggle_cursor
	.align	16, 0x90
	.type	gimp_tool_control_set_toggle_cursor,@function
gimp_tool_control_set_toggle_cursor:    # @gimp_tool_control_set_toggle_cursor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp120:
	.cfi_def_cfa_offset 16
.Ltmp121:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp122:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB40_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB40_8
.LBB40_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB40_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB40_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB40_7
.LBB40_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB40_7:                               # %if.end
	jmp	.LBB40_8
.LBB40_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB40_10
# BB#9:                                 # %if.then.8
	jmp	.LBB40_11
.LBB40_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_set_toggle_cursor, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB40_13
.LBB40_11:                              # %if.end.10
	jmp	.LBB40_12
.LBB40_12:                              # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 128(%rcx)
.LBB40_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	gimp_tool_control_set_toggle_cursor, .Lfunc_end40-gimp_tool_control_set_toggle_cursor
	.cfi_endproc

	.globl	gimp_tool_control_set_toggle_tool_cursor
	.align	16, 0x90
	.type	gimp_tool_control_set_toggle_tool_cursor,@function
gimp_tool_control_set_toggle_tool_cursor: # @gimp_tool_control_set_toggle_tool_cursor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp123:
	.cfi_def_cfa_offset 16
.Ltmp124:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp125:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB41_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB41_8
.LBB41_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB41_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB41_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB41_7
.LBB41_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB41_7:                               # %if.end
	jmp	.LBB41_8
.LBB41_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB41_10
# BB#9:                                 # %if.then.8
	jmp	.LBB41_11
.LBB41_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_set_toggle_tool_cursor, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB41_13
.LBB41_11:                              # %if.end.10
	jmp	.LBB41_12
.LBB41_12:                              # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 132(%rcx)
.LBB41_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	gimp_tool_control_set_toggle_tool_cursor, .Lfunc_end41-gimp_tool_control_set_toggle_tool_cursor
	.cfi_endproc

	.globl	gimp_tool_control_set_toggle_cursor_modifier
	.align	16, 0x90
	.type	gimp_tool_control_set_toggle_cursor_modifier,@function
gimp_tool_control_set_toggle_cursor_modifier: # @gimp_tool_control_set_toggle_cursor_modifier
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp126:
	.cfi_def_cfa_offset 16
.Ltmp127:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp128:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB42_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB42_8
.LBB42_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB42_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB42_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB42_7
.LBB42_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB42_7:                               # %if.end
	jmp	.LBB42_8
.LBB42_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB42_10
# BB#9:                                 # %if.then.8
	jmp	.LBB42_11
.LBB42_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_set_toggle_cursor_modifier, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB42_13
.LBB42_11:                              # %if.end.10
	jmp	.LBB42_12
.LBB42_12:                              # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 136(%rcx)
.LBB42_13:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	gimp_tool_control_set_toggle_cursor_modifier, .Lfunc_end42-gimp_tool_control_set_toggle_cursor_modifier
	.cfi_endproc

	.globl	gimp_tool_control_get_cursor
	.align	16, 0x90
	.type	gimp_tool_control_get_cursor,@function
gimp_tool_control_get_cursor:           # @gimp_tool_control_get_cursor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp129:
	.cfi_def_cfa_offset 16
.Ltmp130:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp131:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB43_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB43_8
.LBB43_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB43_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB43_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB43_7
.LBB43_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB43_7:                               # %if.end
	jmp	.LBB43_8
.LBB43_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB43_10
# BB#9:                                 # %if.then.8
	jmp	.LBB43_11
.LBB43_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_get_cursor, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB43_16
.LBB43_11:                              # %if.end.10
	jmp	.LBB43_12
.LBB43_12:                              # %do.end
	movq	-16(%rbp), %rax
	cmpl	$0, 112(%rax)
	je	.LBB43_15
# BB#13:                                # %land.lhs.true.12
	movq	-16(%rbp), %rax
	cmpl	$-1, 128(%rax)
	je	.LBB43_15
# BB#14:                                # %if.then.14
	movq	-16(%rbp), %rax
	movl	128(%rax), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB43_16
.LBB43_15:                              # %if.end.16
	movq	-16(%rbp), %rax
	movl	116(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB43_16:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	gimp_tool_control_get_cursor, .Lfunc_end43-gimp_tool_control_get_cursor
	.cfi_endproc

	.globl	gimp_tool_control_get_tool_cursor
	.align	16, 0x90
	.type	gimp_tool_control_get_tool_cursor,@function
gimp_tool_control_get_tool_cursor:      # @gimp_tool_control_get_tool_cursor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp132:
	.cfi_def_cfa_offset 16
.Ltmp133:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp134:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB44_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB44_8
.LBB44_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB44_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB44_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB44_7
.LBB44_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB44_7:                               # %if.end
	jmp	.LBB44_8
.LBB44_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB44_10
# BB#9:                                 # %if.then.8
	jmp	.LBB44_11
.LBB44_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_get_tool_cursor, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB44_16
.LBB44_11:                              # %if.end.10
	jmp	.LBB44_12
.LBB44_12:                              # %do.end
	movq	-16(%rbp), %rax
	cmpl	$0, 112(%rax)
	je	.LBB44_15
# BB#13:                                # %land.lhs.true.12
	movq	-16(%rbp), %rax
	cmpl	$-1, 132(%rax)
	je	.LBB44_15
# BB#14:                                # %if.then.14
	movq	-16(%rbp), %rax
	movl	132(%rax), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB44_16
.LBB44_15:                              # %if.end.16
	movq	-16(%rbp), %rax
	movl	120(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB44_16:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	gimp_tool_control_get_tool_cursor, .Lfunc_end44-gimp_tool_control_get_tool_cursor
	.cfi_endproc

	.globl	gimp_tool_control_get_cursor_modifier
	.align	16, 0x90
	.type	gimp_tool_control_get_cursor_modifier,@function
gimp_tool_control_get_cursor_modifier:  # @gimp_tool_control_get_cursor_modifier
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp135:
	.cfi_def_cfa_offset 16
.Ltmp136:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp137:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB45_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB45_8
.LBB45_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB45_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB45_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB45_7
.LBB45_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB45_7:                               # %if.end
	jmp	.LBB45_8
.LBB45_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB45_10
# BB#9:                                 # %if.then.8
	jmp	.LBB45_11
.LBB45_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_get_cursor_modifier, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB45_16
.LBB45_11:                              # %if.end.10
	jmp	.LBB45_12
.LBB45_12:                              # %do.end
	movq	-16(%rbp), %rax
	cmpl	$0, 112(%rax)
	je	.LBB45_15
# BB#13:                                # %land.lhs.true.12
	movq	-16(%rbp), %rax
	cmpl	$-1, 136(%rax)
	je	.LBB45_15
# BB#14:                                # %if.then.14
	movq	-16(%rbp), %rax
	movl	136(%rax), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB45_16
.LBB45_15:                              # %if.end.16
	movq	-16(%rbp), %rax
	movl	124(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB45_16:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	gimp_tool_control_get_cursor_modifier, .Lfunc_end45-gimp_tool_control_get_cursor_modifier
	.cfi_endproc

	.globl	gimp_tool_control_set_action_value_1
	.align	16, 0x90
	.type	gimp_tool_control_set_action_value_1,@function
gimp_tool_control_set_action_value_1:   # @gimp_tool_control_set_action_value_1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp138:
	.cfi_def_cfa_offset 16
.Ltmp139:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp140:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB46_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB46_8
.LBB46_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB46_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB46_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB46_7
.LBB46_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB46_7:                               # %if.end
	jmp	.LBB46_8
.LBB46_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB46_10
# BB#9:                                 # %if.then.8
	jmp	.LBB46_11
.LBB46_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_set_action_value_1, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB46_14
.LBB46_11:                              # %if.end.10
	jmp	.LBB46_12
.LBB46_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	144(%rcx), %rax
	je	.LBB46_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movq	144(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	-8(%rbp), %rdi
	movq	%rax, 144(%rdi)
.LBB46_14:                              # %if.end.16
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	gimp_tool_control_set_action_value_1, .Lfunc_end46-gimp_tool_control_set_action_value_1
	.cfi_endproc

	.globl	gimp_tool_control_get_action_value_1
	.align	16, 0x90
	.type	gimp_tool_control_get_action_value_1,@function
gimp_tool_control_get_action_value_1:   # @gimp_tool_control_get_action_value_1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp141:
	.cfi_def_cfa_offset 16
.Ltmp142:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp143:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB47_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB47_8
.LBB47_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB47_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB47_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB47_7
.LBB47_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB47_7:                               # %if.end
	jmp	.LBB47_8
.LBB47_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB47_10
# BB#9:                                 # %if.then.8
	jmp	.LBB47_11
.LBB47_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_get_action_value_1, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB47_13
.LBB47_11:                              # %if.end.10
	jmp	.LBB47_12
.LBB47_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB47_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	gimp_tool_control_get_action_value_1, .Lfunc_end47-gimp_tool_control_get_action_value_1
	.cfi_endproc

	.globl	gimp_tool_control_set_action_value_2
	.align	16, 0x90
	.type	gimp_tool_control_set_action_value_2,@function
gimp_tool_control_set_action_value_2:   # @gimp_tool_control_set_action_value_2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp144:
	.cfi_def_cfa_offset 16
.Ltmp145:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp146:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB48_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB48_8
.LBB48_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB48_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB48_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB48_7
.LBB48_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB48_7:                               # %if.end
	jmp	.LBB48_8
.LBB48_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB48_10
# BB#9:                                 # %if.then.8
	jmp	.LBB48_11
.LBB48_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_set_action_value_2, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB48_14
.LBB48_11:                              # %if.end.10
	jmp	.LBB48_12
.LBB48_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	152(%rcx), %rax
	je	.LBB48_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movq	152(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	-8(%rbp), %rdi
	movq	%rax, 152(%rdi)
.LBB48_14:                              # %if.end.16
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	gimp_tool_control_set_action_value_2, .Lfunc_end48-gimp_tool_control_set_action_value_2
	.cfi_endproc

	.globl	gimp_tool_control_get_action_value_2
	.align	16, 0x90
	.type	gimp_tool_control_get_action_value_2,@function
gimp_tool_control_get_action_value_2:   # @gimp_tool_control_get_action_value_2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp147:
	.cfi_def_cfa_offset 16
.Ltmp148:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp149:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB49_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB49_8
.LBB49_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB49_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB49_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB49_7
.LBB49_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB49_7:                               # %if.end
	jmp	.LBB49_8
.LBB49_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB49_10
# BB#9:                                 # %if.then.8
	jmp	.LBB49_11
.LBB49_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_get_action_value_2, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB49_13
.LBB49_11:                              # %if.end.10
	jmp	.LBB49_12
.LBB49_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB49_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	gimp_tool_control_get_action_value_2, .Lfunc_end49-gimp_tool_control_get_action_value_2
	.cfi_endproc

	.globl	gimp_tool_control_set_action_value_3
	.align	16, 0x90
	.type	gimp_tool_control_set_action_value_3,@function
gimp_tool_control_set_action_value_3:   # @gimp_tool_control_set_action_value_3
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp150:
	.cfi_def_cfa_offset 16
.Ltmp151:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp152:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB50_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB50_8
.LBB50_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB50_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB50_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB50_7
.LBB50_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB50_7:                               # %if.end
	jmp	.LBB50_8
.LBB50_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB50_10
# BB#9:                                 # %if.then.8
	jmp	.LBB50_11
.LBB50_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_set_action_value_3, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB50_14
.LBB50_11:                              # %if.end.10
	jmp	.LBB50_12
.LBB50_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	160(%rcx), %rax
	je	.LBB50_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movq	160(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	-8(%rbp), %rdi
	movq	%rax, 160(%rdi)
.LBB50_14:                              # %if.end.16
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	gimp_tool_control_set_action_value_3, .Lfunc_end50-gimp_tool_control_set_action_value_3
	.cfi_endproc

	.globl	gimp_tool_control_get_action_value_3
	.align	16, 0x90
	.type	gimp_tool_control_get_action_value_3,@function
gimp_tool_control_get_action_value_3:   # @gimp_tool_control_get_action_value_3
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp153:
	.cfi_def_cfa_offset 16
.Ltmp154:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp155:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB51_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB51_8
.LBB51_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB51_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB51_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB51_7
.LBB51_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB51_7:                               # %if.end
	jmp	.LBB51_8
.LBB51_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB51_10
# BB#9:                                 # %if.then.8
	jmp	.LBB51_11
.LBB51_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_get_action_value_3, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB51_13
.LBB51_11:                              # %if.end.10
	jmp	.LBB51_12
.LBB51_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB51_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	gimp_tool_control_get_action_value_3, .Lfunc_end51-gimp_tool_control_get_action_value_3
	.cfi_endproc

	.globl	gimp_tool_control_set_action_value_4
	.align	16, 0x90
	.type	gimp_tool_control_set_action_value_4,@function
gimp_tool_control_set_action_value_4:   # @gimp_tool_control_set_action_value_4
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp156:
	.cfi_def_cfa_offset 16
.Ltmp157:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp158:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB52_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB52_8
.LBB52_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB52_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB52_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB52_7
.LBB52_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB52_7:                               # %if.end
	jmp	.LBB52_8
.LBB52_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB52_10
# BB#9:                                 # %if.then.8
	jmp	.LBB52_11
.LBB52_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_set_action_value_4, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB52_14
.LBB52_11:                              # %if.end.10
	jmp	.LBB52_12
.LBB52_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	168(%rcx), %rax
	je	.LBB52_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movq	168(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	-8(%rbp), %rdi
	movq	%rax, 168(%rdi)
.LBB52_14:                              # %if.end.16
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	gimp_tool_control_set_action_value_4, .Lfunc_end52-gimp_tool_control_set_action_value_4
	.cfi_endproc

	.globl	gimp_tool_control_get_action_value_4
	.align	16, 0x90
	.type	gimp_tool_control_get_action_value_4,@function
gimp_tool_control_get_action_value_4:   # @gimp_tool_control_get_action_value_4
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp159:
	.cfi_def_cfa_offset 16
.Ltmp160:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp161:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB53_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB53_8
.LBB53_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB53_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB53_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB53_7
.LBB53_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB53_7:                               # %if.end
	jmp	.LBB53_8
.LBB53_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB53_10
# BB#9:                                 # %if.then.8
	jmp	.LBB53_11
.LBB53_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_get_action_value_4, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB53_13
.LBB53_11:                              # %if.end.10
	jmp	.LBB53_12
.LBB53_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB53_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	gimp_tool_control_get_action_value_4, .Lfunc_end53-gimp_tool_control_get_action_value_4
	.cfi_endproc

	.globl	gimp_tool_control_set_action_object_1
	.align	16, 0x90
	.type	gimp_tool_control_set_action_object_1,@function
gimp_tool_control_set_action_object_1:  # @gimp_tool_control_set_action_object_1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp162:
	.cfi_def_cfa_offset 16
.Ltmp163:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp164:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB54_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB54_8
.LBB54_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB54_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB54_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB54_7
.LBB54_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB54_7:                               # %if.end
	jmp	.LBB54_8
.LBB54_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB54_10
# BB#9:                                 # %if.then.8
	jmp	.LBB54_11
.LBB54_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_set_action_object_1, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB54_14
.LBB54_11:                              # %if.end.10
	jmp	.LBB54_12
.LBB54_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	176(%rcx), %rax
	je	.LBB54_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movq	176(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	-8(%rbp), %rdi
	movq	%rax, 176(%rdi)
.LBB54_14:                              # %if.end.16
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end54:
	.size	gimp_tool_control_set_action_object_1, .Lfunc_end54-gimp_tool_control_set_action_object_1
	.cfi_endproc

	.globl	gimp_tool_control_get_action_object_1
	.align	16, 0x90
	.type	gimp_tool_control_get_action_object_1,@function
gimp_tool_control_get_action_object_1:  # @gimp_tool_control_get_action_object_1
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp165:
	.cfi_def_cfa_offset 16
.Ltmp166:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp167:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB55_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB55_8
.LBB55_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB55_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB55_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB55_7
.LBB55_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB55_7:                               # %if.end
	jmp	.LBB55_8
.LBB55_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB55_10
# BB#9:                                 # %if.then.8
	jmp	.LBB55_11
.LBB55_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_get_action_object_1, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB55_13
.LBB55_11:                              # %if.end.10
	jmp	.LBB55_12
.LBB55_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB55_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	gimp_tool_control_get_action_object_1, .Lfunc_end55-gimp_tool_control_get_action_object_1
	.cfi_endproc

	.globl	gimp_tool_control_set_action_object_2
	.align	16, 0x90
	.type	gimp_tool_control_set_action_object_2,@function
gimp_tool_control_set_action_object_2:  # @gimp_tool_control_set_action_object_2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp168:
	.cfi_def_cfa_offset 16
.Ltmp169:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp170:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB56_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB56_8
.LBB56_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB56_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB56_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB56_7
.LBB56_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB56_7:                               # %if.end
	jmp	.LBB56_8
.LBB56_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB56_10
# BB#9:                                 # %if.then.8
	jmp	.LBB56_11
.LBB56_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_set_action_object_2, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB56_14
.LBB56_11:                              # %if.end.10
	jmp	.LBB56_12
.LBB56_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	184(%rcx), %rax
	je	.LBB56_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movq	184(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rdi
	callq	g_strdup
	movq	-8(%rbp), %rdi
	movq	%rax, 184(%rdi)
.LBB56_14:                              # %if.end.16
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	gimp_tool_control_set_action_object_2, .Lfunc_end56-gimp_tool_control_set_action_object_2
	.cfi_endproc

	.globl	gimp_tool_control_get_action_object_2
	.align	16, 0x90
	.type	gimp_tool_control_get_action_object_2,@function
gimp_tool_control_get_action_object_2:  # @gimp_tool_control_get_action_object_2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp171:
	.cfi_def_cfa_offset 16
.Ltmp172:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp173:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_tool_control_get_type
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB57_3
# BB#2:                                 # %if.then
	movl	$0, -36(%rbp)
	jmp	.LBB57_8
.LBB57_3:                               # %if.else
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB57_6
# BB#4:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB57_6
# BB#5:                                 # %if.then.3
	movl	$1, -36(%rbp)
	jmp	.LBB57_7
.LBB57_6:                               # %if.else.4
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -36(%rbp)
.LBB57_7:                               # %if.end
	jmp	.LBB57_8
.LBB57_8:                               # %if.end.6
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB57_10
# BB#9:                                 # %if.then.8
	jmp	.LBB57_11
.LBB57_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_tool_control_get_action_object_2, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB57_13
.LBB57_11:                              # %if.end.10
	jmp	.LBB57_12
.LBB57_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB57_13:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	gimp_tool_control_get_action_object_2, .Lfunc_end57-gimp_tool_control_get_action_object_2
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_control_class_init,@function
gimp_tool_control_class_init:           # @gimp_tool_control_class_init
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp174:
	.cfi_def_cfa_offset 16
.Ltmp175:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp176:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$gimp_tool_control_finalize, %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rsi, 48(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end58:
	.size	gimp_tool_control_class_init, .Lfunc_end58-gimp_tool_control_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_tool_control_finalize,@function
gimp_tool_control_finalize:             # @gimp_tool_control_finalize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp177:
	.cfi_def_cfa_offset 16
.Ltmp178:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp179:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_tool_control_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_slist_free
	movq	-16(%rbp), %rax
	movq	144(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	152(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	160(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	168(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	176(%rax), %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	184(%rax), %rdi
	callq	g_free
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	gimp_tool_control_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end59:
	.size	gimp_tool_control_finalize, .Lfunc_end59-gimp_tool_control_finalize
	.cfi_endproc

	.type	gimp_tool_control_get_type.g_define_type_id__volatile,@object # @gimp_tool_control_get_type.g_define_type_id__volatile
	.local	gimp_tool_control_get_type.g_define_type_id__volatile
	.comm	gimp_tool_control_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpToolControl"
	.size	.L.str, 16

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Tools"
	.size	.L.str.1, 11

	.type	.L__func__.gimp_tool_control_activate,@object # @__func__.gimp_tool_control_activate
.L__func__.gimp_tool_control_activate:
	.asciz	"gimp_tool_control_activate"
	.size	.L__func__.gimp_tool_control_activate, 27

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_TOOL_CONTROL (control)"
	.size	.L.str.2, 31

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"control->active == FALSE"
	.size	.L.str.3, 25

	.type	.L__func__.gimp_tool_control_halt,@object # @__func__.gimp_tool_control_halt
.L__func__.gimp_tool_control_halt:
	.asciz	"gimp_tool_control_halt"
	.size	.L__func__.gimp_tool_control_halt, 23

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"control->active == TRUE"
	.size	.L.str.4, 24

	.type	.L__func__.gimp_tool_control_is_active,@object # @__func__.gimp_tool_control_is_active
.L__func__.gimp_tool_control_is_active:
	.asciz	"gimp_tool_control_is_active"
	.size	.L__func__.gimp_tool_control_is_active, 28

	.type	.L__func__.gimp_tool_control_pause,@object # @__func__.gimp_tool_control_pause
.L__func__.gimp_tool_control_pause:
	.asciz	"gimp_tool_control_pause"
	.size	.L__func__.gimp_tool_control_pause, 24

	.type	.L__func__.gimp_tool_control_resume,@object # @__func__.gimp_tool_control_resume
.L__func__.gimp_tool_control_resume:
	.asciz	"gimp_tool_control_resume"
	.size	.L__func__.gimp_tool_control_resume, 25

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"control->paused_count > 0"
	.size	.L.str.5, 26

	.type	.L__func__.gimp_tool_control_is_paused,@object # @__func__.gimp_tool_control_is_paused
.L__func__.gimp_tool_control_is_paused:
	.asciz	"gimp_tool_control_is_paused"
	.size	.L__func__.gimp_tool_control_is_paused, 28

	.type	.L__func__.gimp_tool_control_set_preserve,@object # @__func__.gimp_tool_control_set_preserve
.L__func__.gimp_tool_control_set_preserve:
	.asciz	"gimp_tool_control_set_preserve"
	.size	.L__func__.gimp_tool_control_set_preserve, 31

	.type	.L__func__.gimp_tool_control_get_preserve,@object # @__func__.gimp_tool_control_get_preserve
.L__func__.gimp_tool_control_get_preserve:
	.asciz	"gimp_tool_control_get_preserve"
	.size	.L__func__.gimp_tool_control_get_preserve, 31

	.type	.L__func__.gimp_tool_control_push_preserve,@object # @__func__.gimp_tool_control_push_preserve
.L__func__.gimp_tool_control_push_preserve:
	.asciz	"gimp_tool_control_push_preserve"
	.size	.L__func__.gimp_tool_control_push_preserve, 32

	.type	.L__func__.gimp_tool_control_pop_preserve,@object # @__func__.gimp_tool_control_pop_preserve
.L__func__.gimp_tool_control_pop_preserve:
	.asciz	"gimp_tool_control_pop_preserve"
	.size	.L__func__.gimp_tool_control_pop_preserve, 31

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"control->preserve_stack != NULL"
	.size	.L.str.6, 32

	.type	.L__func__.gimp_tool_control_set_scroll_lock,@object # @__func__.gimp_tool_control_set_scroll_lock
.L__func__.gimp_tool_control_set_scroll_lock:
	.asciz	"gimp_tool_control_set_scroll_lock"
	.size	.L__func__.gimp_tool_control_set_scroll_lock, 34

	.type	.L__func__.gimp_tool_control_get_scroll_lock,@object # @__func__.gimp_tool_control_get_scroll_lock
.L__func__.gimp_tool_control_get_scroll_lock:
	.asciz	"gimp_tool_control_get_scroll_lock"
	.size	.L__func__.gimp_tool_control_get_scroll_lock, 34

	.type	.L__func__.gimp_tool_control_set_handle_empty_image,@object # @__func__.gimp_tool_control_set_handle_empty_image
.L__func__.gimp_tool_control_set_handle_empty_image:
	.asciz	"gimp_tool_control_set_handle_empty_image"
	.size	.L__func__.gimp_tool_control_set_handle_empty_image, 41

	.type	.L__func__.gimp_tool_control_get_handle_empty_image,@object # @__func__.gimp_tool_control_get_handle_empty_image
.L__func__.gimp_tool_control_get_handle_empty_image:
	.asciz	"gimp_tool_control_get_handle_empty_image"
	.size	.L__func__.gimp_tool_control_get_handle_empty_image, 41

	.type	.L__func__.gimp_tool_control_set_dirty_mask,@object # @__func__.gimp_tool_control_set_dirty_mask
.L__func__.gimp_tool_control_set_dirty_mask:
	.asciz	"gimp_tool_control_set_dirty_mask"
	.size	.L__func__.gimp_tool_control_set_dirty_mask, 33

	.type	.L__func__.gimp_tool_control_get_dirty_mask,@object # @__func__.gimp_tool_control_get_dirty_mask
.L__func__.gimp_tool_control_get_dirty_mask:
	.asciz	"gimp_tool_control_get_dirty_mask"
	.size	.L__func__.gimp_tool_control_get_dirty_mask, 33

	.type	.L__func__.gimp_tool_control_set_motion_mode,@object # @__func__.gimp_tool_control_set_motion_mode
.L__func__.gimp_tool_control_set_motion_mode:
	.asciz	"gimp_tool_control_set_motion_mode"
	.size	.L__func__.gimp_tool_control_set_motion_mode, 34

	.type	.L__func__.gimp_tool_control_get_motion_mode,@object # @__func__.gimp_tool_control_get_motion_mode
.L__func__.gimp_tool_control_get_motion_mode:
	.asciz	"gimp_tool_control_get_motion_mode"
	.size	.L__func__.gimp_tool_control_get_motion_mode, 34

	.type	.L__func__.gimp_tool_control_set_snap_to,@object # @__func__.gimp_tool_control_set_snap_to
.L__func__.gimp_tool_control_set_snap_to:
	.asciz	"gimp_tool_control_set_snap_to"
	.size	.L__func__.gimp_tool_control_set_snap_to, 30

	.type	.L__func__.gimp_tool_control_get_snap_to,@object # @__func__.gimp_tool_control_get_snap_to
.L__func__.gimp_tool_control_get_snap_to:
	.asciz	"gimp_tool_control_get_snap_to"
	.size	.L__func__.gimp_tool_control_get_snap_to, 30

	.type	.L__func__.gimp_tool_control_set_wants_click,@object # @__func__.gimp_tool_control_set_wants_click
.L__func__.gimp_tool_control_set_wants_click:
	.asciz	"gimp_tool_control_set_wants_click"
	.size	.L__func__.gimp_tool_control_set_wants_click, 34

	.type	.L__func__.gimp_tool_control_get_wants_click,@object # @__func__.gimp_tool_control_get_wants_click
.L__func__.gimp_tool_control_get_wants_click:
	.asciz	"gimp_tool_control_get_wants_click"
	.size	.L__func__.gimp_tool_control_get_wants_click, 34

	.type	.L__func__.gimp_tool_control_set_wants_double_click,@object # @__func__.gimp_tool_control_set_wants_double_click
.L__func__.gimp_tool_control_set_wants_double_click:
	.asciz	"gimp_tool_control_set_wants_double_click"
	.size	.L__func__.gimp_tool_control_set_wants_double_click, 41

	.type	.L__func__.gimp_tool_control_get_wants_double_click,@object # @__func__.gimp_tool_control_get_wants_double_click
.L__func__.gimp_tool_control_get_wants_double_click:
	.asciz	"gimp_tool_control_get_wants_double_click"
	.size	.L__func__.gimp_tool_control_get_wants_double_click, 41

	.type	.L__func__.gimp_tool_control_set_wants_triple_click,@object # @__func__.gimp_tool_control_set_wants_triple_click
.L__func__.gimp_tool_control_set_wants_triple_click:
	.asciz	"gimp_tool_control_set_wants_triple_click"
	.size	.L__func__.gimp_tool_control_set_wants_triple_click, 41

	.type	.L__func__.gimp_tool_control_get_wants_triple_click,@object # @__func__.gimp_tool_control_get_wants_triple_click
.L__func__.gimp_tool_control_get_wants_triple_click:
	.asciz	"gimp_tool_control_get_wants_triple_click"
	.size	.L__func__.gimp_tool_control_get_wants_triple_click, 41

	.type	.L__func__.gimp_tool_control_set_wants_all_key_events,@object # @__func__.gimp_tool_control_set_wants_all_key_events
.L__func__.gimp_tool_control_set_wants_all_key_events:
	.asciz	"gimp_tool_control_set_wants_all_key_events"
	.size	.L__func__.gimp_tool_control_set_wants_all_key_events, 43

	.type	.L__func__.gimp_tool_control_get_wants_all_key_events,@object # @__func__.gimp_tool_control_get_wants_all_key_events
.L__func__.gimp_tool_control_get_wants_all_key_events:
	.asciz	"gimp_tool_control_get_wants_all_key_events"
	.size	.L__func__.gimp_tool_control_get_wants_all_key_events, 43

	.type	.L__func__.gimp_tool_control_set_snap_offsets,@object # @__func__.gimp_tool_control_set_snap_offsets
.L__func__.gimp_tool_control_set_snap_offsets:
	.asciz	"gimp_tool_control_set_snap_offsets"
	.size	.L__func__.gimp_tool_control_set_snap_offsets, 35

	.type	.L__func__.gimp_tool_control_get_snap_offsets,@object # @__func__.gimp_tool_control_get_snap_offsets
.L__func__.gimp_tool_control_get_snap_offsets:
	.asciz	"gimp_tool_control_get_snap_offsets"
	.size	.L__func__.gimp_tool_control_get_snap_offsets, 35

	.type	.L__func__.gimp_tool_control_set_precision,@object # @__func__.gimp_tool_control_set_precision
.L__func__.gimp_tool_control_set_precision:
	.asciz	"gimp_tool_control_set_precision"
	.size	.L__func__.gimp_tool_control_set_precision, 32

	.type	.L__func__.gimp_tool_control_get_precision,@object # @__func__.gimp_tool_control_get_precision
.L__func__.gimp_tool_control_get_precision:
	.asciz	"gimp_tool_control_get_precision"
	.size	.L__func__.gimp_tool_control_get_precision, 32

	.type	.L__func__.gimp_tool_control_set_toggled,@object # @__func__.gimp_tool_control_set_toggled
.L__func__.gimp_tool_control_set_toggled:
	.asciz	"gimp_tool_control_set_toggled"
	.size	.L__func__.gimp_tool_control_set_toggled, 30

	.type	.L__func__.gimp_tool_control_get_toggled,@object # @__func__.gimp_tool_control_get_toggled
.L__func__.gimp_tool_control_get_toggled:
	.asciz	"gimp_tool_control_get_toggled"
	.size	.L__func__.gimp_tool_control_get_toggled, 30

	.type	.L__func__.gimp_tool_control_set_cursor,@object # @__func__.gimp_tool_control_set_cursor
.L__func__.gimp_tool_control_set_cursor:
	.asciz	"gimp_tool_control_set_cursor"
	.size	.L__func__.gimp_tool_control_set_cursor, 29

	.type	.L__func__.gimp_tool_control_set_tool_cursor,@object # @__func__.gimp_tool_control_set_tool_cursor
.L__func__.gimp_tool_control_set_tool_cursor:
	.asciz	"gimp_tool_control_set_tool_cursor"
	.size	.L__func__.gimp_tool_control_set_tool_cursor, 34

	.type	.L__func__.gimp_tool_control_set_cursor_modifier,@object # @__func__.gimp_tool_control_set_cursor_modifier
.L__func__.gimp_tool_control_set_cursor_modifier:
	.asciz	"gimp_tool_control_set_cursor_modifier"
	.size	.L__func__.gimp_tool_control_set_cursor_modifier, 38

	.type	.L__func__.gimp_tool_control_set_toggle_cursor,@object # @__func__.gimp_tool_control_set_toggle_cursor
.L__func__.gimp_tool_control_set_toggle_cursor:
	.asciz	"gimp_tool_control_set_toggle_cursor"
	.size	.L__func__.gimp_tool_control_set_toggle_cursor, 36

	.type	.L__func__.gimp_tool_control_set_toggle_tool_cursor,@object # @__func__.gimp_tool_control_set_toggle_tool_cursor
.L__func__.gimp_tool_control_set_toggle_tool_cursor:
	.asciz	"gimp_tool_control_set_toggle_tool_cursor"
	.size	.L__func__.gimp_tool_control_set_toggle_tool_cursor, 41

	.type	.L__func__.gimp_tool_control_set_toggle_cursor_modifier,@object # @__func__.gimp_tool_control_set_toggle_cursor_modifier
.L__func__.gimp_tool_control_set_toggle_cursor_modifier:
	.asciz	"gimp_tool_control_set_toggle_cursor_modifier"
	.size	.L__func__.gimp_tool_control_set_toggle_cursor_modifier, 45

	.type	.L__func__.gimp_tool_control_get_cursor,@object # @__func__.gimp_tool_control_get_cursor
.L__func__.gimp_tool_control_get_cursor:
	.asciz	"gimp_tool_control_get_cursor"
	.size	.L__func__.gimp_tool_control_get_cursor, 29

	.type	.L__func__.gimp_tool_control_get_tool_cursor,@object # @__func__.gimp_tool_control_get_tool_cursor
.L__func__.gimp_tool_control_get_tool_cursor:
	.asciz	"gimp_tool_control_get_tool_cursor"
	.size	.L__func__.gimp_tool_control_get_tool_cursor, 34

	.type	.L__func__.gimp_tool_control_get_cursor_modifier,@object # @__func__.gimp_tool_control_get_cursor_modifier
.L__func__.gimp_tool_control_get_cursor_modifier:
	.asciz	"gimp_tool_control_get_cursor_modifier"
	.size	.L__func__.gimp_tool_control_get_cursor_modifier, 38

	.type	.L__func__.gimp_tool_control_set_action_value_1,@object # @__func__.gimp_tool_control_set_action_value_1
.L__func__.gimp_tool_control_set_action_value_1:
	.asciz	"gimp_tool_control_set_action_value_1"
	.size	.L__func__.gimp_tool_control_set_action_value_1, 37

	.type	.L__func__.gimp_tool_control_get_action_value_1,@object # @__func__.gimp_tool_control_get_action_value_1
.L__func__.gimp_tool_control_get_action_value_1:
	.asciz	"gimp_tool_control_get_action_value_1"
	.size	.L__func__.gimp_tool_control_get_action_value_1, 37

	.type	.L__func__.gimp_tool_control_set_action_value_2,@object # @__func__.gimp_tool_control_set_action_value_2
.L__func__.gimp_tool_control_set_action_value_2:
	.asciz	"gimp_tool_control_set_action_value_2"
	.size	.L__func__.gimp_tool_control_set_action_value_2, 37

	.type	.L__func__.gimp_tool_control_get_action_value_2,@object # @__func__.gimp_tool_control_get_action_value_2
.L__func__.gimp_tool_control_get_action_value_2:
	.asciz	"gimp_tool_control_get_action_value_2"
	.size	.L__func__.gimp_tool_control_get_action_value_2, 37

	.type	.L__func__.gimp_tool_control_set_action_value_3,@object # @__func__.gimp_tool_control_set_action_value_3
.L__func__.gimp_tool_control_set_action_value_3:
	.asciz	"gimp_tool_control_set_action_value_3"
	.size	.L__func__.gimp_tool_control_set_action_value_3, 37

	.type	.L__func__.gimp_tool_control_get_action_value_3,@object # @__func__.gimp_tool_control_get_action_value_3
.L__func__.gimp_tool_control_get_action_value_3:
	.asciz	"gimp_tool_control_get_action_value_3"
	.size	.L__func__.gimp_tool_control_get_action_value_3, 37

	.type	.L__func__.gimp_tool_control_set_action_value_4,@object # @__func__.gimp_tool_control_set_action_value_4
.L__func__.gimp_tool_control_set_action_value_4:
	.asciz	"gimp_tool_control_set_action_value_4"
	.size	.L__func__.gimp_tool_control_set_action_value_4, 37

	.type	.L__func__.gimp_tool_control_get_action_value_4,@object # @__func__.gimp_tool_control_get_action_value_4
.L__func__.gimp_tool_control_get_action_value_4:
	.asciz	"gimp_tool_control_get_action_value_4"
	.size	.L__func__.gimp_tool_control_get_action_value_4, 37

	.type	.L__func__.gimp_tool_control_set_action_object_1,@object # @__func__.gimp_tool_control_set_action_object_1
.L__func__.gimp_tool_control_set_action_object_1:
	.asciz	"gimp_tool_control_set_action_object_1"
	.size	.L__func__.gimp_tool_control_set_action_object_1, 38

	.type	.L__func__.gimp_tool_control_get_action_object_1,@object # @__func__.gimp_tool_control_get_action_object_1
.L__func__.gimp_tool_control_get_action_object_1:
	.asciz	"gimp_tool_control_get_action_object_1"
	.size	.L__func__.gimp_tool_control_get_action_object_1, 38

	.type	.L__func__.gimp_tool_control_set_action_object_2,@object # @__func__.gimp_tool_control_set_action_object_2
.L__func__.gimp_tool_control_set_action_object_2:
	.asciz	"gimp_tool_control_set_action_object_2"
	.size	.L__func__.gimp_tool_control_set_action_object_2, 38

	.type	.L__func__.gimp_tool_control_get_action_object_2,@object # @__func__.gimp_tool_control_get_action_object_2
.L__func__.gimp_tool_control_get_action_object_2:
	.asciz	"gimp_tool_control_get_action_object_2"
	.size	.L__func__.gimp_tool_control_get_action_object_2, 38

	.type	gimp_tool_control_parent_class,@object # @gimp_tool_control_parent_class
	.local	gimp_tool_control_parent_class
	.comm	gimp_tool_control_parent_class,8,8
	.type	GimpToolControl_private_offset,@object # @GimpToolControl_private_offset
	.local	GimpToolControl_private_offset
	.comm	GimpToolControl_private_offset,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
