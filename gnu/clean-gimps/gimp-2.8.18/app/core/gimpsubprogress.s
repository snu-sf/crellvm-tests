	.text
	.file	"gimpsubprogress.bc"
	.globl	gimp_sub_progress_get_type
	.align	16, 0x90
	.type	gimp_sub_progress_get_type,@function
gimp_sub_progress_get_type:             # @gimp_sub_progress_get_type
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
	subq	$64, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_sub_progress_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_sub_progress_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$.L.str, %rdi
	callq	g_intern_static_string
	movl	$80, %ecx
	movl	%ecx, %edi
	movl	$136, %edx
	movabsq	$gimp_sub_progress_class_intern_init, %rsi
	movl	$48, %r8d
	movabsq	$gimp_sub_progress_init, %r9
	xorl	%ecx, %ecx
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-40(%rbp), %rax         # 8-byte Reload
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rcx
	movl	$0, (%rsp)
	callq	g_type_register_static_simple
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movabsq	$gimp_sub_progress_get_type.g_implement_interface_info, %rdx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_sub_progress_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_sub_progress_get_type.g_define_type_id__volatile, %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_sub_progress_get_type, .Lfunc_end0-gimp_sub_progress_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_sub_progress_class_intern_init,@function
gimp_sub_progress_class_intern_init:    # @gimp_sub_progress_class_intern_init
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
	movq	%rax, gimp_sub_progress_parent_class
	cmpl	$0, GimpSubProgress_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpSubProgress_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_sub_progress_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_sub_progress_class_intern_init, .Lfunc_end1-gimp_sub_progress_class_intern_init
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_sub_progress_init,@function
gimp_sub_progress_init:                 # @gimp_sub_progress_init
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
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	$0, 24(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm1, 32(%rdi)
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 40(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_sub_progress_init, .Lfunc_end2-gimp_sub_progress_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_sub_progress_iface_init,@function
gimp_sub_progress_iface_init:           # @gimp_sub_progress_iface_init
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
.Ltmp12:
	.cfi_offset %rbx, -24
	movabsq	$gimp_sub_progress_message, %rax
	movabsq	$gimp_sub_progress_get_window_id, %rcx
	movabsq	$gimp_sub_progress_pulse, %rdx
	movabsq	$gimp_sub_progress_get_value, %rsi
	movabsq	$gimp_sub_progress_set_value, %r8
	movabsq	$gimp_sub_progress_set_text, %r9
	movabsq	$gimp_sub_progress_is_active, %r10
	movabsq	$gimp_sub_progress_end, %r11
	movabsq	$gimp_sub_progress_start, %rbx
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rbx, 16(%rdi)
	movq	-16(%rbp), %rdi
	movq	%r11, 24(%rdi)
	movq	-16(%rbp), %rdi
	movq	%r10, 32(%rdi)
	movq	-16(%rbp), %rdi
	movq	%r9, 40(%rdi)
	movq	-16(%rbp), %rdi
	movq	%r8, 48(%rdi)
	movq	-16(%rbp), %rdi
	movq	%rsi, 56(%rdi)
	movq	-16(%rbp), %rsi
	movq	%rdx, 64(%rsi)
	movq	-16(%rbp), %rdx
	movq	%rcx, 72(%rdx)
	movq	-16(%rbp), %rcx
	movq	%rax, 80(%rcx)
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_sub_progress_iface_init, .Lfunc_end3-gimp_sub_progress_iface_init
	.cfi_endproc

	.globl	gimp_sub_progress_new
	.align	16, 0x90
	.type	gimp_sub_progress_new,@function
gimp_sub_progress_new:                  # @gimp_sub_progress_new
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB4_10
# BB#2:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_progress_interface_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB4_4
# BB#3:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB4_9
.LBB4_4:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_7
# BB#5:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB4_7
# BB#6:                                 # %if.then.4
	movl	$1, -44(%rbp)
	jmp	.LBB4_8
.LBB4_7:                                # %if.else.5
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB4_8:                                # %if.end
	jmp	.LBB4_9
.LBB4_9:                                # %if.end.7
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB4_11
.LBB4_10:                               # %if.then.9
	jmp	.LBB4_12
.LBB4_11:                               # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_sub_progress_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_16
.LBB4_12:                               # %if.end.11
	jmp	.LBB4_13
.LBB4_13:                               # %do.end
	callq	gimp_sub_progress_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB4_15
# BB#14:                                # %if.then.15
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_ref
	movq	-24(%rbp), %rdi
	movq	%rax, 24(%rdi)
.LBB4_15:                               # %if.end.18
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_progress_interface_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB4_16:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_sub_progress_new, .Lfunc_end4-gimp_sub_progress_new
	.cfi_endproc

	.globl	gimp_sub_progress_set_range
	.align	16, 0x90
	.type	gimp_sub_progress_set_range,@function
gimp_sub_progress_set_range:            # @gimp_sub_progress_set_range
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
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_sub_progress_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_sub_progress_set_range, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_18
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB5_15
# BB#14:                                # %if.then.13
	jmp	.LBB5_16
.LBB5_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_sub_progress_set_range, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_18
.LBB5_16:                               # %if.end.15
	jmp	.LBB5_17
.LBB5_17:                               # %do.end.16
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 32(%rax)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 40(%rax)
.LBB5_18:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_sub_progress_set_range, .Lfunc_end5-gimp_sub_progress_set_range
	.cfi_endproc

	.globl	gimp_sub_progress_set_step
	.align	16, 0x90
	.type	gimp_sub_progress_set_step,@function
gimp_sub_progress_set_step:             # @gimp_sub_progress_set_step
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_sub_progress_get_type
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
	movabsq	$.L__func__.gimp_sub_progress_set_step, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_19
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	jmp	.LBB6_13
.LBB6_13:                               # %do.body.11
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB6_16
# BB#14:                                # %land.lhs.true.13
	cmpl	$0, -16(%rbp)
	jle	.LBB6_16
# BB#15:                                # %if.then.15
	jmp	.LBB6_17
.LBB6_16:                               # %if.else.16
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_sub_progress_set_step, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_19
.LBB6_17:                               # %if.end.17
	jmp	.LBB6_18
.LBB6_18:                               # %do.end.18
	cvtsi2sdl	-12(%rbp), %xmm0
	cvtsi2sdl	-16(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 32(%rax)
	movl	-12(%rbp), %ecx
	addl	$1, %ecx
	cvtsi2sdl	%ecx, %xmm0
	cvtsi2sdl	-16(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 40(%rax)
.LBB6_19:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_sub_progress_set_step, .Lfunc_end6-gimp_sub_progress_set_step
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_sub_progress_class_init,@function
gimp_sub_progress_class_init:           # @gimp_sub_progress_class_init
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
	subq	$16, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$gimp_sub_progress_finalize, %rsi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rsi, 48(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_sub_progress_class_init, .Lfunc_end7-gimp_sub_progress_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_sub_progress_finalize,@function
gimp_sub_progress_finalize:             # @gimp_sub_progress_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_sub_progress_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB8_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
.LBB8_2:                                # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_sub_progress_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_sub_progress_finalize, .Lfunc_end8-gimp_sub_progress_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_sub_progress_start,@function
gimp_sub_progress_start:                # @gimp_sub_progress_start
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
	xorl	%eax, %eax
                                        # kill: RAX<def> EAX<kill>
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_sub_progress_start, .Lfunc_end9-gimp_sub_progress_start
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_sub_progress_end,@function
gimp_sub_progress_end:                  # @gimp_sub_progress_end
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_sub_progress_end, .Lfunc_end10-gimp_sub_progress_end
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_sub_progress_is_active,@function
gimp_sub_progress_is_active:            # @gimp_sub_progress_is_active
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_sub_progress_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	callq	gimp_progress_is_active
	movl	%eax, -4(%rbp)
	jmp	.LBB11_3
.LBB11_2:                               # %if.end
	movl	$0, -4(%rbp)
.LBB11_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_sub_progress_is_active, .Lfunc_end11-gimp_sub_progress_is_active
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_sub_progress_set_text,@function
gimp_sub_progress_set_text:             # @gimp_sub_progress_set_text
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_sub_progress_set_text, .Lfunc_end12-gimp_sub_progress_set_text
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_sub_progress_set_value,@function
gimp_sub_progress_set_value:            # @gimp_sub_progress_set_value
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_sub_progress_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-24(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	40(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-24(%rbp), %rax
	subsd	32(%rax), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	callq	gimp_progress_set_value
.LBB13_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_sub_progress_set_value, .Lfunc_end13-gimp_sub_progress_set_value
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_sub_progress_get_value,@function
gimp_sub_progress_get_value:            # @gimp_sub_progress_get_value
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_sub_progress_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB14_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	callq	gimp_progress_get_value
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB14_3
.LBB14_2:                               # %if.end
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
.LBB14_3:                               # %return
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_sub_progress_get_value, .Lfunc_end14-gimp_sub_progress_get_value
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_sub_progress_pulse,@function
gimp_sub_progress_pulse:                # @gimp_sub_progress_pulse
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_sub_progress_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB15_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	gimp_progress_pulse
.LBB15_2:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_sub_progress_pulse, .Lfunc_end15-gimp_sub_progress_pulse
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_sub_progress_get_window_id,@function
gimp_sub_progress_get_window_id:        # @gimp_sub_progress_get_window_id
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_sub_progress_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB16_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	callq	gimp_progress_get_window_id
	movl	%eax, -4(%rbp)
	jmp	.LBB16_3
.LBB16_2:                               # %if.end
	movl	$0, -4(%rbp)
.LBB16_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_sub_progress_get_window_id, .Lfunc_end16-gimp_sub_progress_get_window_id
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_sub_progress_message,@function
gimp_sub_progress_message:              # @gimp_sub_progress_message
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
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	gimp_sub_progress_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB17_2
# BB#1:                                 # %if.then
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %r8
	callq	gimp_progress_message
	movl	%eax, -4(%rbp)
	jmp	.LBB17_3
.LBB17_2:                               # %if.end
	movl	$0, -4(%rbp)
.LBB17_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_sub_progress_message, .Lfunc_end17-gimp_sub_progress_message
	.cfi_endproc

	.type	gimp_sub_progress_get_type.g_define_type_id__volatile,@object # @gimp_sub_progress_get_type.g_define_type_id__volatile
	.local	gimp_sub_progress_get_type.g_define_type_id__volatile
	.comm	gimp_sub_progress_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpSubProgress"
	.size	.L.str, 16

	.type	gimp_sub_progress_get_type.g_implement_interface_info,@object # @gimp_sub_progress_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_sub_progress_get_type.g_implement_interface_info:
	.quad	gimp_sub_progress_iface_init
	.quad	0
	.quad	0
	.size	gimp_sub_progress_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_sub_progress_new,@object # @__func__.gimp_sub_progress_new
.L__func__.gimp_sub_progress_new:
	.asciz	"gimp_sub_progress_new"
	.size	.L__func__.gimp_sub_progress_new, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"progress == NULL || GIMP_IS_PROGRESS (progress)"
	.size	.L.str.2, 48

	.type	.L__func__.gimp_sub_progress_set_range,@object # @__func__.gimp_sub_progress_set_range
.L__func__.gimp_sub_progress_set_range:
	.asciz	"gimp_sub_progress_set_range"
	.size	.L__func__.gimp_sub_progress_set_range, 28

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GIMP_IS_SUB_PROGRESS (progress)"
	.size	.L.str.3, 32

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"start < end"
	.size	.L.str.4, 12

	.type	.L__func__.gimp_sub_progress_set_step,@object # @__func__.gimp_sub_progress_set_step
.L__func__.gimp_sub_progress_set_step:
	.asciz	"gimp_sub_progress_set_step"
	.size	.L__func__.gimp_sub_progress_set_step, 27

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"index < num_steps && num_steps > 0"
	.size	.L.str.5, 35

	.type	gimp_sub_progress_parent_class,@object # @gimp_sub_progress_parent_class
	.local	gimp_sub_progress_parent_class
	.comm	gimp_sub_progress_parent_class,8,8
	.type	GimpSubProgress_private_offset,@object # @GimpSubProgress_private_offset
	.local	GimpSubProgress_private_offset
	.comm	GimpSubProgress_private_offset,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
