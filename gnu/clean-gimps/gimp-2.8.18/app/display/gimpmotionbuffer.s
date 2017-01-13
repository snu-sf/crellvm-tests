	.text
	.file	"gimpmotionbuffer.bc"
	.globl	gimp_motion_buffer_get_type
	.align	16, 0x90
	.type	gimp_motion_buffer_get_type,@function
gimp_motion_buffer_get_type:            # @gimp_motion_buffer_get_type
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
	movq	gimp_motion_buffer_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_motion_buffer_get_type.g_define_type_id__volatile, %rax
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
	movl	$176, %edx
	movabsq	$gimp_motion_buffer_class_intern_init, %rdi
	movl	$168, %r8d
	movabsq	$gimp_motion_buffer_init, %rcx
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
	movabsq	$gimp_motion_buffer_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_motion_buffer_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_motion_buffer_get_type, .Lfunc_end0-gimp_motion_buffer_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_motion_buffer_class_intern_init,@function
gimp_motion_buffer_class_intern_init:   # @gimp_motion_buffer_class_intern_init
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
	movq	%rax, gimp_motion_buffer_parent_class
	cmpl	$0, GimpMotionBuffer_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpMotionBuffer_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_motion_buffer_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_motion_buffer_class_intern_init, .Lfunc_end1-gimp_motion_buffer_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_motion_buffer_init,@function
gimp_motion_buffer_init:                # @gimp_motion_buffer_init
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
	xorl	%eax, %eax
	movl	$64, %edx
	movq	%rdi, -8(%rbp)
	movl	%eax, %edi
	movl	%eax, %esi
	callq	g_array_new
	xorl	%edx, %edx
	movl	$64, %esi
	movq	-8(%rbp), %rcx
	movq	%rax, 136(%rcx)
	movl	%edx, %edi
	movl	%esi, -12(%rbp)         # 4-byte Spill
	movl	%edx, %esi
	movl	-12(%rbp), %edx         # 4-byte Reload
	callq	g_array_new
	movq	-8(%rbp), %rcx
	movq	%rax, 144(%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_motion_buffer_init, .Lfunc_end2-gimp_motion_buffer_init
	.cfi_endproc

	.globl	gimp_motion_buffer_new
	.align	16, 0x90
	.type	gimp_motion_buffer_new,@function
gimp_motion_buffer_new:                 # @gimp_motion_buffer_new
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
	callq	gimp_motion_buffer_get_type
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_motion_buffer_new, .Lfunc_end3-gimp_motion_buffer_new
	.cfi_endproc

	.globl	gimp_motion_buffer_begin_stroke
	.align	16, 0x90
	.type	gimp_motion_buffer_begin_stroke,@function
gimp_motion_buffer_begin_stroke:        # @gimp_motion_buffer_begin_stroke
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_motion_buffer_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_motion_buffer_begin_stroke, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_18
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB4_15
# BB#14:                                # %if.then.13
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_motion_buffer_begin_stroke, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_18
.LBB4_16:                               # %if.end.15
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.16
	movl	$64, %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rsi
	addq	$72, %rsi
	movq	%rcx, %rdi
	callq	memcpy
.LBB4_18:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_motion_buffer_begin_stroke, .Lfunc_end4-gimp_motion_buffer_begin_stroke
	.cfi_endproc

	.globl	gimp_motion_buffer_end_stroke
	.align	16, 0x90
	.type	gimp_motion_buffer_end_stroke,@function
gimp_motion_buffer_end_stroke:          # @gimp_motion_buffer_end_stroke
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_motion_buffer_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_motion_buffer_end_stroke, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_15
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	movq	-8(%rbp), %rax
	cmpl	$0, 156(%rax)
	je	.LBB5_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movl	156(%rax), %edi
	callq	g_source_remove
	movq	-8(%rbp), %rcx
	movl	$0, 156(%rcx)
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB5_14:                               # %if.end.16
	movq	-8(%rbp), %rdi
	callq	gimp_motion_buffer_event_queue_timeout
	movl	%eax, -40(%rbp)         # 4-byte Spill
.LBB5_15:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_motion_buffer_end_stroke, .Lfunc_end5-gimp_motion_buffer_end_stroke
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_motion_buffer_event_queue_timeout,@function
gimp_motion_buffer_event_queue_timeout: # @gimp_motion_buffer_event_queue_timeout
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$0, 152(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 156(%rdi)
	movq	-8(%rbp), %rdi
	movq	144(%rdi), %rdi
	cmpl	$0, 8(%rdi)
	jbe	.LBB6_2
# BB#1:                                 # %if.then
	leaq	-72(%rbp), %rax
	movl	$64, %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rsi
	movq	144(%rsi), %rsi
	movl	8(%rsi), %ecx
	subl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rdi
	movq	144(%rdi), %rdi
	movq	(%rdi), %rdi
	shlq	$6, %rsi
	addq	%rsi, %rdi
	movq	%rax, %rsi
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	memcpy
	movq	-8(%rbp), %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	callq	gimp_motion_buffer_push_event_history
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	160(%rax), %esi
	movq	-8(%rbp), %rax
	movl	32(%rax), %edx
	callq	gimp_motion_buffer_request_stroke
.LBB6_2:                                # %if.end
	xorl	%eax, %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_motion_buffer_event_queue_timeout, .Lfunc_end6-gimp_motion_buffer_event_queue_timeout
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4607182418800017408     # double 1
.LCPI7_1:
	.quad	4562254508917369340     # double 0.001
.LCPI7_2:
	.quad	4599075939470750515     # double 0.29999999999999999
.LCPI7_3:
	.quad	4604480259023595110     # double 0.69999999999999996
.LCPI7_5:
	.quad	4611686018427387904     # double 2
.LCPI7_6:
	.quad	4613937818241073152     # double 3
.LCPI7_7:
	.quad	4609434218613702656     # double 1.5
.LCPI7_8:
	.quad	-4620693217682128896    # double -0.5
.LCPI7_9:
	.quad	4602678819172646912     # double 0.5
.LCPI7_10:
	.quad	4618441417868443648     # double 6
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI7_4:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.globl	gimp_motion_buffer_motion_event
	.align	16, 0x90
	.type	gimp_motion_buffer_motion_event,@function
gimp_motion_buffer_motion_event:        # @gimp_motion_buffer_motion_event
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
	subq	$496, %rsp              # imm = 0x1F0
	movsd	.LCPI7_0, %xmm2         # xmm2 = mem[0],zero
	xorps	%xmm3, %xmm3
	movsd	.LCPI7_1, %xmm4         # xmm4 = mem[0],zero
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm1, -48(%rbp)
	movl	%ecx, -52(%rbp)
	movsd	%xmm4, -64(%rbp)
	movsd	%xmm3, -72(%rbp)
	movsd	%xmm3, -80(%rbp)
	movsd	%xmm2, -88(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)
	callq	gimp_motion_buffer_get_type
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -108(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-104(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -108(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-96(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -108(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-108(%rbp), %eax
	movl	%eax, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_motion_buffer_motion_event, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB7_91
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	jmp	.LBB7_13
.LBB7_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB7_15
# BB#14:                                # %if.then.13
	jmp	.LBB7_16
.LBB7_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_motion_buffer_motion_event, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB7_91
.LBB7_16:                               # %if.end.15
	jmp	.LBB7_17
.LBB7_17:                               # %do.end.16
	movsd	.LCPI7_2, %xmm0         # xmm0 = mem[0],zero
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-16(%rbp), %rcx
	movsd	40(%rcx), %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI7_3(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	movl	-28(%rbp), %eax
	movl	36(%rcx), %edx
	subl	%edx, %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -64(%rbp)
	movq	-16(%rbp), %rcx
	cmpl	$0, 36(%rcx)
	jne	.LBB7_19
# BB#18:                                # %if.then.21
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, 48(%rax)
	jmp	.LBB7_90
.LBB7_19:                               # %if.else.22
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movl	$64, %eax
	movl	%eax, %edx
	leaq	-176(%rbp), %rcx
	movq	-16(%rbp), %rsi
	addq	$72, %rsi
	movq	%rcx, %rdi
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	movsd	%xmm1, -248(%rbp)       # 8-byte Spill
	callq	memcpy
	movsd	-248(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -208(%rbp)
	movsd	%xmm0, -216(%rbp)
	movsd	-176(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	-24(%rbp), %rcx
	subsd	(%rcx), %xmm1
	movsd	%xmm1, -72(%rbp)
	movsd	-168(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	-24(%rbp), %rcx
	subsd	8(%rcx), %xmm1
	movsd	%xmm1, -80(%rbp)
	movsd	-240(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	-40(%rbp), %xmm1
	movsd	-240(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	-48(%rbp), %xmm2
	ucomisd	%xmm1, %xmm2
	jbe	.LBB7_21
# BB#20:                                # %cond.true
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	divsd	-40(%rbp), %xmm0
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
	jmp	.LBB7_22
.LBB7_21:                               # %cond.false
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	divsd	-48(%rbp), %xmm0
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
.LBB7_22:                               # %cond.end
	movsd	-256(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI7_5, %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -184(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movapd	.LCPI7_4(%rip), %xmm1   # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	-184(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_25
# BB#23:                                # %land.lhs.true.42
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movapd	.LCPI7_4(%rip), %xmm1   # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	-184(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_25
# BB#24:                                # %if.then.46
	movl	$0, -4(%rbp)
	jmp	.LBB7_91
.LBB7_25:                               # %if.end.47
	xorps	%xmm0, %xmm0
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-72(%rbp), %xmm1
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-80(%rbp), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sqrt
	movsd	%xmm0, -192(%rbp)
	movsd	%xmm0, -88(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-264(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB7_27
	jp	.LBB7_27
# BB#26:                                # %if.then.54
	movq	-16(%rbp), %rax
	movsd	120(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, 48(%rax)
	jmp	.LBB7_40
.LBB7_27:                               # %if.else.58
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movsd	%xmm0, -272(%rbp)       # 8-byte Spill
	jbe	.LBB7_29
# BB#28:                                # %cond.true.62
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
	jmp	.LBB7_30
.LBB7_29:                               # %cond.false.63
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -280(%rbp)       # 8-byte Spill
.LBB7_30:                               # %cond.end.64
	movsd	-280(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI7_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI7_6, %xmm2         # xmm2 = mem[0],zero
	movsd	-272(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	mulsd	%xmm0, %xmm3
	movsd	%xmm3, -224(%rbp)
	movsd	-224(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-64(%rbp), %xmm0
	divsd	%xmm2, %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, 48(%rax)
	movq	-16(%rbp), %rax
	movsd	120(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	48(%rax), %xmm2         # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movsd	%xmm0, -288(%rbp)       # 8-byte Spill
	jbe	.LBB7_32
# BB#31:                                # %cond.true.75
	movsd	.LCPI7_2, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
	jmp	.LBB7_33
.LBB7_32:                               # %cond.false.76
	movq	-24(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
.LBB7_33:                               # %cond.end.78
	movsd	-296(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI7_2, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI7_0, %xmm2         # xmm2 = mem[0],zero
	subsd	%xmm0, %xmm2
	movsd	-288(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm2, %xmm0
	movq	-24(%rbp), %rax
	movsd	48(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	48(%rax), %xmm3         # xmm3 = mem[0],zero
	ucomisd	%xmm1, %xmm3
	movsd	%xmm0, -304(%rbp)       # 8-byte Spill
	movsd	%xmm2, -312(%rbp)       # 8-byte Spill
	jbe	.LBB7_35
# BB#34:                                # %cond.true.86
	movsd	.LCPI7_2, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -320(%rbp)       # 8-byte Spill
	jmp	.LBB7_36
.LBB7_35:                               # %cond.false.87
	movq	-24(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -320(%rbp)       # 8-byte Spill
.LBB7_36:                               # %cond.end.89
	movsd	-320(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI7_0, %xmm1         # xmm1 = mem[0],zero
	movsd	-312(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movsd	-304(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm2, %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, 48(%rax)
	movq	-24(%rbp), %rax
	ucomisd	48(%rax), %xmm1
	jbe	.LBB7_38
# BB#37:                                # %cond.true.97
	movq	-24(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -328(%rbp)       # 8-byte Spill
	jmp	.LBB7_39
.LBB7_38:                               # %cond.false.99
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -328(%rbp)       # 8-byte Spill
	jmp	.LBB7_39
.LBB7_39:                               # %cond.end.100
	movsd	-328(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, 48(%rax)
.LBB7_40:                               # %if.end.103
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movapd	.LCPI7_4(%rip), %xmm1   # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	-48(%rbp), %xmm1
	movsd	%xmm0, -336(%rbp)       # 8-byte Spill
	jbe	.LBB7_42
# BB#41:                                # %cond.true.107
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -344(%rbp)       # 8-byte Spill
	jmp	.LBB7_43
.LBB7_42:                               # %cond.false.108
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -344(%rbp)       # 8-byte Spill
.LBB7_43:                               # %cond.end.109
	movsd	-344(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI7_7, %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	-336(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB7_48
# BB#44:                                # %land.lhs.true.114
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movapd	.LCPI7_4(%rip), %xmm1   # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	-48(%rbp), %xmm1
	movsd	%xmm0, -352(%rbp)       # 8-byte Spill
	jbe	.LBB7_46
# BB#45:                                # %cond.true.118
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -360(%rbp)       # 8-byte Spill
	jmp	.LBB7_47
.LBB7_46:                               # %cond.false.119
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -360(%rbp)       # 8-byte Spill
.LBB7_47:                               # %cond.end.120
	movsd	-360(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI7_7, %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	-352(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	ja	.LBB7_49
.LBB7_48:                               # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	cmpl	$4, 8(%rax)
	jae	.LBB7_50
.LBB7_49:                               # %if.then.127
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -208(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -216(%rbp)
	jmp	.LBB7_63
.LBB7_50:                               # %if.else.128
	movl	$3, -228(%rbp)
.LBB7_51:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movsd	-208(%rbp), %xmm0       # xmm0 = mem[0],zero
	movapd	.LCPI7_4(%rip), %xmm1   # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	-48(%rbp), %xmm1
	movsd	%xmm0, -368(%rbp)       # 8-byte Spill
	jbe	.LBB7_53
# BB#52:                                # %cond.true.134
                                        #   in Loop: Header=BB7_51 Depth=1
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -376(%rbp)       # 8-byte Spill
	jmp	.LBB7_54
.LBB7_53:                               # %cond.false.135
                                        #   in Loop: Header=BB7_51 Depth=1
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -376(%rbp)       # 8-byte Spill
.LBB7_54:                               # %cond.end.136
                                        #   in Loop: Header=BB7_51 Depth=1
	movsd	-376(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI7_7, %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	-368(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB7_59
# BB#55:                                # %lor.lhs.false.141
                                        #   in Loop: Header=BB7_51 Depth=1
	movsd	-216(%rbp), %xmm0       # xmm0 = mem[0],zero
	movapd	.LCPI7_4(%rip), %xmm1   # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	-48(%rbp), %xmm1
	movsd	%xmm0, -384(%rbp)       # 8-byte Spill
	jbe	.LBB7_57
# BB#56:                                # %cond.true.145
                                        #   in Loop: Header=BB7_51 Depth=1
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -392(%rbp)       # 8-byte Spill
	jmp	.LBB7_58
.LBB7_57:                               # %cond.false.146
                                        #   in Loop: Header=BB7_51 Depth=1
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -392(%rbp)       # 8-byte Spill
.LBB7_58:                               # %cond.end.147
                                        #   in Loop: Header=BB7_51 Depth=1
	movsd	-392(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorl	%eax, %eax
	movb	%al, %cl
	movsd	.LCPI7_7, %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	-384(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movb	%cl, -393(%rbp)         # 1-byte Spill
	jbe	.LBB7_60
.LBB7_59:                               # %land.rhs
                                        #   in Loop: Header=BB7_51 Depth=1
	cmpl	$0, -228(%rbp)
	setge	%al
	movb	%al, -393(%rbp)         # 1-byte Spill
.LBB7_60:                               # %land.end
                                        #   in Loop: Header=BB7_51 Depth=1
	movb	-393(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB7_61
	jmp	.LBB7_62
.LBB7_61:                               # %while.body
                                        #   in Loop: Header=BB7_51 Depth=1
	movl	$64, %eax
	movl	%eax, %edx
	leaq	-176(%rbp), %rcx
	movslq	-228(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	136(%rdi), %rdi
	movq	(%rdi), %rdi
	shlq	$6, %rsi
	addq	%rsi, %rdi
	movq	%rdi, -408(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	-408(%rbp), %rsi        # 8-byte Reload
	callq	memcpy
	movsd	-176(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-24(%rbp), %rcx
	subsd	(%rcx), %xmm0
	movsd	%xmm0, -208(%rbp)
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-24(%rbp), %rcx
	subsd	8(%rcx), %xmm0
	movsd	%xmm0, -216(%rbp)
	movl	-228(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -228(%rbp)
	jmp	.LBB7_51
.LBB7_62:                               # %while.end
	jmp	.LBB7_63
.LBB7_63:                               # %if.end.161
	movsd	-208(%rbp), %xmm0       # xmm0 = mem[0],zero
	movapd	.LCPI7_4(%rip), %xmm1   # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	-48(%rbp), %xmm1
	movsd	%xmm0, -416(%rbp)       # 8-byte Spill
	jbe	.LBB7_65
# BB#64:                                # %cond.true.165
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -424(%rbp)       # 8-byte Spill
	jmp	.LBB7_66
.LBB7_65:                               # %cond.false.166
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -424(%rbp)       # 8-byte Spill
.LBB7_66:                               # %cond.end.167
	movsd	-424(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI7_7, %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	-416(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB7_71
# BB#67:                                # %lor.lhs.false.172
	movsd	-216(%rbp), %xmm0       # xmm0 = mem[0],zero
	movapd	.LCPI7_4(%rip), %xmm1   # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	-48(%rbp), %xmm1
	movsd	%xmm0, -432(%rbp)       # 8-byte Spill
	jbe	.LBB7_69
# BB#68:                                # %cond.true.176
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -440(%rbp)       # 8-byte Spill
	jmp	.LBB7_70
.LBB7_69:                               # %cond.false.177
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -440(%rbp)       # 8-byte Spill
.LBB7_70:                               # %cond.end.178
	movsd	-440(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI7_7, %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	-432(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_72
.LBB7_71:                               # %if.then.183
	movq	-16(%rbp), %rax
	movsd	128(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, 56(%rax)
	jmp	.LBB7_73
.LBB7_72:                               # %if.else.186
	leaq	-176(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_coords_direction
	movq	-24(%rbp), %rsi
	movsd	%xmm0, 56(%rsi)
.LBB7_73:                               # %if.end.189
	movsd	.LCPI7_8, %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	56(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	56(%rax), %xmm2         # xmm2 = mem[0],zero
	movsd	%xmm0, -448(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -456(%rbp)       # 8-byte Spill
	callq	floor
	movsd	-456(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movq	-24(%rbp), %rax
	movsd	%xmm1, 56(%rax)
	movq	-24(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	subsd	128(%rax), %xmm0
	movsd	%xmm0, -200(%rbp)
	movsd	-448(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	-200(%rbp), %xmm0
	jbe	.LBB7_75
# BB#74:                                # %if.then.201
	movsd	.LCPI7_9, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI7_0, %xmm1         # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	movaps	%xmm0, %xmm2
	mulsd	56(%rax), %xmm2
	movq	-16(%rbp), %rax
	movsd	128(%rax), %xmm3        # xmm3 = mem[0],zero
	subsd	%xmm1, %xmm3
	mulsd	%xmm3, %xmm0
	addsd	%xmm0, %xmm2
	movq	-24(%rbp), %rax
	movsd	%xmm2, 56(%rax)
	jmp	.LBB7_79
.LBB7_75:                               # %if.else.210
	movsd	.LCPI7_9, %xmm0         # xmm0 = mem[0],zero
	movsd	-200(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_77
# BB#76:                                # %if.then.213
	movsd	.LCPI7_9, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI7_0, %xmm1         # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	movaps	%xmm0, %xmm2
	mulsd	56(%rax), %xmm2
	movq	-16(%rbp), %rax
	addsd	128(%rax), %xmm1
	mulsd	%xmm1, %xmm0
	addsd	%xmm0, %xmm2
	movq	-24(%rbp), %rax
	movsd	%xmm2, 56(%rax)
	jmp	.LBB7_78
.LBB7_77:                               # %if.else.222
	movsd	.LCPI7_9, %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movaps	%xmm0, %xmm1
	mulsd	56(%rax), %xmm1
	movq	-16(%rbp), %rax
	mulsd	128(%rax), %xmm0
	addsd	%xmm0, %xmm1
	movq	-24(%rbp), %rax
	movsd	%xmm1, 56(%rax)
.LBB7_78:                               # %if.end.230
	jmp	.LBB7_79
.LBB7_79:                               # %if.end.231
	movsd	.LCPI7_10, %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	56(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	56(%rax), %xmm2         # xmm2 = mem[0],zero
	movsd	%xmm0, -464(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -472(%rbp)       # 8-byte Spill
	callq	floor
	movsd	-472(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movq	-24(%rbp), %rax
	movsd	%xmm1, 56(%rax)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-464(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jb	.LBB7_86
# BB#80:                                # %land.lhs.true.239
	cmpl	$0, -52(%rbp)
	je	.LBB7_86
# BB#81:                                # %land.lhs.true.241
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	cmpl	$2, 8(%rax)
	jb	.LBB7_86
# BB#82:                                # %if.then.246
	movq	-16(%rbp), %rax
	cmpl	$0, 152(%rax)
	je	.LBB7_84
# BB#83:                                # %if.then.248
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_motion_buffer_interpolate_stroke
	jmp	.LBB7_85
.LBB7_84:                               # %if.else.249
	movq	-16(%rbp), %rax
	movl	$1, 152(%rax)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_motion_buffer_push_event_history
.LBB7_85:                               # %if.end.251
	jmp	.LBB7_89
.LBB7_86:                               # %if.else.252
	movq	-16(%rbp), %rax
	cmpl	$0, 152(%rax)
	je	.LBB7_88
# BB#87:                                # %if.then.255
	movq	-16(%rbp), %rax
	movl	$0, 152(%rax)
.LBB7_88:                               # %if.end.257
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	gimp_motion_buffer_push_event_history
.LBB7_89:                               # %if.end.258
	jmp	.LBB7_90
.LBB7_90:                               # %if.end.259
	movl	$1, %edx
	movq	-16(%rbp), %rax
	movq	144(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	callq	g_array_append_vals
	movl	$64, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	-16(%rbp), %rsi
	addq	$72, %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -480(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-480(%rbp), %rsi        # 8-byte Reload
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	memcpy
	movl	-28(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 36(%rax)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, 40(%rax)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, 48(%rax)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, 56(%rax)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, 64(%rax)
	movl	$1, -4(%rbp)
.LBB7_91:                               # %return
	movl	-4(%rbp), %eax
	addq	$496, %rsp              # imm = 0x1F0
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_motion_buffer_motion_event, .Lfunc_end7-gimp_motion_buffer_motion_event
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4613937818241073152     # double 3
	.text
	.align	16, 0x90
	.type	gimp_motion_buffer_interpolate_stroke,@function
gimp_motion_buffer_interpolate_stroke:  # @gimp_motion_buffer_interpolate_stroke
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
	pushq	%rbx
	subq	$344, %rsp              # imm = 0x158
.Ltmp27:
	.cfi_offset %rbx, -24
	xorl	%eax, %eax
	movl	$64, %edx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	136(%rsi), %rsi
	movl	8(%rsi), %ecx
	subl	$1, %ecx
	movl	%ecx, -36(%rbp)
	movl	%eax, %edi
	movl	%eax, %esi
	callq	g_array_new
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	leaq	-32(%rbp), %r8
	xorl	%ecx, %ecx
	movl	%ecx, %r9d
	movq	%rax, -32(%rbp)
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-16(%rbp), %r10
	movq	136(%r10), %r10
	movq	(%r10), %r10
	shlq	$6, %rax
	addq	%rax, %r10
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %r11
	movq	136(%r11), %r11
	movq	(%r11), %r11
	shlq	$6, %rax
	addq	%rax, %r11
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rbx
	movups	(%rbx), %xmm1
	movups	16(%rbx), %xmm2
	movups	32(%rbx), %xmm3
	movups	48(%rbx), %xmm4
	movq	%rsp, %rbx
	movups	%xmm4, 240(%rbx)
	movups	%xmm3, 224(%rbx)
	movups	%xmm2, 208(%rbx)
	movups	%xmm1, 192(%rbx)
	movups	(%rax), %xmm1
	movups	16(%rax), %xmm2
	movups	32(%rax), %xmm3
	movups	48(%rax), %xmm4
	movups	%xmm4, 176(%rbx)
	movups	%xmm3, 160(%rbx)
	movups	%xmm2, 144(%rbx)
	movups	%xmm1, 128(%rbx)
	movups	(%r11), %xmm1
	movups	16(%r11), %xmm2
	movups	32(%r11), %xmm3
	movups	48(%r11), %xmm4
	movups	%xmm4, 112(%rbx)
	movups	%xmm3, 96(%rbx)
	movups	%xmm2, 80(%rbx)
	movups	%xmm1, 64(%rbx)
	movups	(%r10), %xmm1
	movups	16(%r10), %xmm2
	movups	32(%r10), %xmm3
	movups	48(%r10), %xmm4
	movups	%xmm4, 48(%rbx)
	movups	%xmm3, 32(%rbx)
	movups	%xmm2, 16(%rbx)
	movups	%xmm1, (%rbx)
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movsd	.LCPI8_0(%rip), %xmm1   # xmm1 = mem[0],zero
	leaq	-32(%rbp), %rdi
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%r8, -64(%rbp)          # 8-byte Spill
	callq	gimp_coords_interpolate_catmull
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	callq	gimp_motion_buffer_push_event_history
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movq	144(%rax), %rdi
	callq	g_array_set_size
	movq	-16(%rbp), %rdi
	movq	144(%rdi), %rdi
	movq	-32(%rbp), %r8
	movq	(%r8), %r8
	movq	-32(%rbp), %r9
	movl	8(%r9), %edx
	movq	%r8, %rsi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_array_append_vals
	movl	$1, %esi
	movq	-32(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	g_array_free
	movq	%rax, -88(%rbp)         # 8-byte Spill
	addq	$344, %rsp              # imm = 0x158
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_motion_buffer_interpolate_stroke, .Lfunc_end8-gimp_motion_buffer_interpolate_stroke
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_motion_buffer_push_event_history,@function
gimp_motion_buffer_push_event_history:  # @gimp_motion_buffer_push_event_history
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	136(%rsi), %rsi
	cmpl	$4, 8(%rsi)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	136(%rax), %rdi
	callq	g_array_remove_index
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB9_2:                                # %if.end
	movl	$1, %edx
	movq	-8(%rbp), %rax
	movq	136(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_array_append_vals
	movq	%rax, -32(%rbp)         # 8-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_motion_buffer_push_event_history, .Lfunc_end9-gimp_motion_buffer_push_event_history
	.cfi_endproc

	.globl	gimp_motion_buffer_get_last_motion_time
	.align	16, 0x90
	.type	gimp_motion_buffer_get_last_motion_time,@function
gimp_motion_buffer_get_last_motion_time: # @gimp_motion_buffer_get_last_motion_time
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_motion_buffer_get_type
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
	movabsq	$.L__func__.gimp_motion_buffer_get_last_motion_time, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB10_13
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB10_13:                              # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_motion_buffer_get_last_motion_time, .Lfunc_end10-gimp_motion_buffer_get_last_motion_time
	.cfi_endproc

	.globl	gimp_motion_buffer_request_stroke
	.align	16, 0x90
	.type	gimp_motion_buffer_request_stroke,@function
gimp_motion_buffer_request_stroke:      # @gimp_motion_buffer_request_stroke
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	$0, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_motion_buffer_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_motion_buffer_request_stroke, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB11_22
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	movq	-8(%rbp), %rax
	cmpl	$0, 152(%rax)
	je	.LBB11_14
# BB#13:                                # %if.then.12
	movq	-8(%rbp), %rax
	movl	160(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movl	$1, -24(%rbp)
	jmp	.LBB11_15
.LBB11_14:                              # %if.else.13
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
.LBB11_15:                              # %if.end.14
	movq	-8(%rbp), %rax
	cmpl	$0, 156(%rax)
	je	.LBB11_17
# BB#16:                                # %if.then.16
	movq	-8(%rbp), %rax
	movl	156(%rax), %edi
	callq	g_source_remove
	movq	-8(%rbp), %rcx
	movl	$0, 156(%rcx)
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB11_17:                              # %if.end.20
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 160(%rcx)
.LBB11_18:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	movl	8(%rax), %ecx
	cmpl	-24(%rbp), %ecx
	jbe	.LBB11_20
# BB#19:                                # %while.body
                                        #   in Loop: Header=BB11_18 Depth=1
	leaq	-112(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	gimp_motion_buffer_pop_event_queue
	xorl	%edx, %edx
	leaq	-112(%rbp), %rcx
	movq	-8(%rbp), %rsi
	movl	motion_buffer_signals, %eax
	movl	-16(%rbp), %r8d
	movl	-20(%rbp), %r9d
	movq	%rsi, %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	g_signal_emit
	jmp	.LBB11_18
.LBB11_20:                              # %while.end
	movq	-8(%rbp), %rax
	cmpl	$0, 152(%rax)
	je	.LBB11_22
# BB#21:                                # %if.then.26
	movl	$50, %edi
	movabsq	$gimp_motion_buffer_event_queue_timeout, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	g_timeout_add
	movq	-8(%rbp), %rcx
	movl	%eax, 156(%rcx)
.LBB11_22:                              # %if.end.29
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_motion_buffer_request_stroke, .Lfunc_end11-gimp_motion_buffer_request_stroke
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_motion_buffer_pop_event_queue,@function
gimp_motion_buffer_pop_event_queue:     # @gimp_motion_buffer_pop_event_queue
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
	subq	$48, %rsp
	xorl	%eax, %eax
	movl	$64, %ecx
	movl	%ecx, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	144(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movl	%eax, -28(%rbp)         # 4-byte Spill
	callq	memcpy
	movq	-8(%rbp), %rdx
	movq	144(%rdx), %rdi
	movl	-28(%rbp), %esi         # 4-byte Reload
	callq	g_array_remove_index
	movq	%rax, -40(%rbp)         # 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_motion_buffer_pop_event_queue, .Lfunc_end12-gimp_motion_buffer_pop_event_queue
	.cfi_endproc

	.globl	gimp_motion_buffer_request_hover
	.align	16, 0x90
	.type	gimp_motion_buffer_request_hover,@function
gimp_motion_buffer_request_hover:       # @gimp_motion_buffer_request_hover
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_motion_buffer_get_type
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
	movabsq	$.L__func__.gimp_motion_buffer_request_hover, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_14
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	movq	-8(%rbp), %rax
	movq	144(%rax), %rax
	cmpl	$0, 8(%rax)
	jbe	.LBB13_14
# BB#13:                                # %if.then.12
	xorl	%edx, %edx
	leaq	-104(%rbp), %rax
	movl	$64, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rdi
	movq	144(%rdi), %rdi
	movl	8(%rdi), %ecx
	subl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edi
	movq	-8(%rbp), %r8
	movq	144(%r8), %r8
	movq	(%r8), %r8
	shlq	$6, %rdi
	addq	%rdi, %r8
	movq	%rax, %rdi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movq	-112(%rbp), %r8         # 8-byte Reload
	movl	%edx, -116(%rbp)        # 4-byte Spill
	movq	%r8, %rdx
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-8(%rbp), %rax
	movl	motion_buffer_signals+4, %esi
	movl	-12(%rbp), %r8d
	movl	-16(%rbp), %r9d
	movq	%rax, %rdi
	movl	-116(%rbp), %edx        # 4-byte Reload
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movb	$0, %al
	callq	g_signal_emit
	xorl	%esi, %esi
	movq	-8(%rbp), %rcx
	movq	144(%rcx), %rdi
	callq	g_array_set_size
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB13_14:                              # %if.end.19
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_motion_buffer_request_hover, .Lfunc_end13-gimp_motion_buffer_request_hover
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_motion_buffer_class_init,@function
gimp_motion_buffer_class_init:          # @gimp_motion_buffer_class_init
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$184, %rsp
.Ltmp46:
	.cfi_offset %rbx, -56
.Ltmp47:
	.cfi_offset %r12, -48
.Ltmp48:
	.cfi_offset %r13, -40
.Ltmp49:
	.cfi_offset %r14, -32
.Ltmp50:
	.cfi_offset %r15, -24
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	gdk_modifier_type_get_type
	movabsq	$.L.str.5, %rdi
	movl	$1, %edx
	movl	$160, %ecx
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movabsq	$gimp_marshal_VOID__POINTER_UINT_FLAGS, %r9
	movl	$4, %r8d
	movl	%r8d, %r10d
	movl	$3, %r8d
	movl	$68, %r11d
	movl	%r11d, %ebx
	movl	$28, %r11d
	movl	%r11d, %r14d
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%r15, %rsi
	movq	-72(%rbp), %r12         # 8-byte Reload
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movq	%r12, %r8
	movq	%r9, -88(%rbp)          # 8-byte Spill
	movq	%r12, %r9
	movq	-88(%rbp), %r13         # 8-byte Reload
	movq	%r13, (%rsp)
	movq	$4, 8(%rsp)
	movl	$3, 16(%rsp)
	movq	$68, 24(%rsp)
	movq	$28, 32(%rsp)
	movq	%rax, 40(%rsp)
	movb	$0, %al
	movq	%r14, -96(%rbp)         # 8-byte Spill
	movq	%rbx, -104(%rbp)        # 8-byte Spill
	movq	%r10, -112(%rbp)        # 8-byte Spill
	callq	g_signal_new
	movl	%eax, motion_buffer_signals
	movq	-48(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	callq	gdk_modifier_type_get_type
	movabsq	$.L.str.6, %rdi
	movl	$1, %edx
	movl	$168, %ecx
	xorl	%r11d, %r11d
	movl	%r11d, %esi
	movabsq	$gimp_marshal_VOID__POINTER_FLAGS_BOOLEAN, %r8
	movl	$4, %r11d
	movl	%r11d, %r9d
	movl	$3, %r11d
	movl	$68, %r10d
	movl	%r10d, %ebx
	movl	$20, %r10d
	movl	%r10d, %r14d
	movq	-120(%rbp), %r15        # 8-byte Reload
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movq	%r15, %rsi
	movq	-128(%rbp), %r12        # 8-byte Reload
	movq	%r8, -136(%rbp)         # 8-byte Spill
	movq	%r12, %r8
	movq	%r9, -144(%rbp)         # 8-byte Spill
	movq	%r12, %r9
	movq	-136(%rbp), %r13        # 8-byte Reload
	movq	%r13, (%rsp)
	movq	$4, 8(%rsp)
	movl	$3, 16(%rsp)
	movq	$68, 24(%rsp)
	movq	%rax, 32(%rsp)
	movq	$20, 40(%rsp)
	movb	$0, %al
	movq	%r14, -152(%rbp)        # 8-byte Spill
	movq	%rbx, -160(%rbp)        # 8-byte Spill
	movl	%r11d, -164(%rbp)       # 4-byte Spill
	callq	g_signal_new
	movabsq	$gimp_motion_buffer_get_property, %rsi
	movabsq	$gimp_motion_buffer_set_property, %rdi
	movabsq	$gimp_motion_buffer_finalize, %r8
	movabsq	$gimp_motion_buffer_dispose, %r9
	movl	%eax, motion_buffer_signals+4
	movq	-56(%rbp), %rbx
	movq	%r9, 40(%rbx)
	movq	-56(%rbp), %r9
	movq	%r8, 48(%r9)
	movq	-56(%rbp), %r8
	movq	%rdi, 24(%r8)
	movq	-56(%rbp), %rdi
	movq	%rsi, 32(%rdi)
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_motion_buffer_class_init, .Lfunc_end14-gimp_motion_buffer_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_motion_buffer_dispose,@function
gimp_motion_buffer_dispose:             # @gimp_motion_buffer_dispose
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_motion_buffer_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 156(%rax)
	je	.LBB15_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	156(%rax), %edi
	callq	g_source_remove
	movq	-16(%rbp), %rcx
	movl	$0, 156(%rcx)
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB15_2:                               # %if.end
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_motion_buffer_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	40(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_motion_buffer_dispose, .Lfunc_end15-gimp_motion_buffer_dispose
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_motion_buffer_finalize,@function
gimp_motion_buffer_finalize:            # @gimp_motion_buffer_finalize
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_motion_buffer_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 136(%rax)
	je	.LBB16_2
# BB#1:                                 # %if.then
	movl	$1, %esi
	movq	-16(%rbp), %rax
	movq	136(%rax), %rdi
	callq	g_array_free
	movq	-16(%rbp), %rdi
	movq	$0, 136(%rdi)
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB16_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 144(%rax)
	je	.LBB16_4
# BB#3:                                 # %if.then.6
	movl	$1, %esi
	movq	-16(%rbp), %rax
	movq	144(%rax), %rdi
	callq	g_array_free
	movq	-16(%rbp), %rdi
	movq	$0, 144(%rdi)
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB16_4:                               # %if.end.10
	movl	$80, %eax
	movl	%eax, %esi
	movq	gimp_motion_buffer_parent_class, %rcx
	movq	%rcx, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_motion_buffer_finalize, .Lfunc_end16-gimp_motion_buffer_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_motion_buffer_set_property,@function
gimp_motion_buffer_set_property:        # @gimp_motion_buffer_set_property
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %sw.default
	jmp	.LBB17_2
.LBB17_2:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movl	-52(%rbp), %r8d
	movq	-48(%rbp), %rax
	movq	8(%rax), %r9
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -56(%rbp)         # 4-byte Spill
	movq	%r9, -64(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-40(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.7, %rdi
	movabsq	$.L.str.8, %rsi
	movl	$173, %edx
	movabsq	$.L.str.9, %rcx
	movl	-56(%rbp), %r8d         # 4-byte Reload
	movq	-64(%rbp), %r9          # 8-byte Reload
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#3:                                 # %do.end
	jmp	.LBB17_4
.LBB17_4:                               # %sw.epilog
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_motion_buffer_set_property, .Lfunc_end17-gimp_motion_buffer_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_motion_buffer_get_property,@function
gimp_motion_buffer_get_property:        # @gimp_motion_buffer_get_property
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %sw.default
	jmp	.LBB18_2
.LBB18_2:                               # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	-12(%rbp), %ecx
	movl	%ecx, -52(%rbp)
	movl	-52(%rbp), %r8d
	movq	-48(%rbp), %rax
	movq	8(%rax), %r9
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	%r8d, -56(%rbp)         # 4-byte Spill
	movq	%r9, -64(%rbp)          # 8-byte Spill
	callq	g_type_name
	movq	-40(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	g_type_name
	movabsq	$.L.str.7, %rdi
	movabsq	$.L.str.8, %rsi
	movl	$187, %edx
	movabsq	$.L.str.9, %rcx
	movl	-56(%rbp), %r8d         # 4-byte Reload
	movq	-64(%rbp), %r9          # 8-byte Reload
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#3:                                 # %do.end
	jmp	.LBB18_4
.LBB18_4:                               # %sw.epilog
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_motion_buffer_get_property, .Lfunc_end18-gimp_motion_buffer_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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

	.type	gimp_motion_buffer_get_type.g_define_type_id__volatile,@object # @gimp_motion_buffer_get_type.g_define_type_id__volatile
	.local	gimp_motion_buffer_get_type.g_define_type_id__volatile
	.comm	gimp_motion_buffer_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpMotionBuffer"
	.size	.L.str, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Display"
	.size	.L.str.1, 13

	.type	.L__func__.gimp_motion_buffer_begin_stroke,@object # @__func__.gimp_motion_buffer_begin_stroke
.L__func__.gimp_motion_buffer_begin_stroke:
	.asciz	"gimp_motion_buffer_begin_stroke"
	.size	.L__func__.gimp_motion_buffer_begin_stroke, 32

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_MOTION_BUFFER (buffer)"
	.size	.L.str.2, 31

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"last_motion != NULL"
	.size	.L.str.3, 20

	.type	.L__func__.gimp_motion_buffer_end_stroke,@object # @__func__.gimp_motion_buffer_end_stroke
.L__func__.gimp_motion_buffer_end_stroke:
	.asciz	"gimp_motion_buffer_end_stroke"
	.size	.L__func__.gimp_motion_buffer_end_stroke, 30

	.type	.L__func__.gimp_motion_buffer_motion_event,@object # @__func__.gimp_motion_buffer_motion_event
.L__func__.gimp_motion_buffer_motion_event:
	.asciz	"gimp_motion_buffer_motion_event"
	.size	.L__func__.gimp_motion_buffer_motion_event, 32

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"coords != NULL"
	.size	.L.str.4, 15

	.type	.L__func__.gimp_motion_buffer_get_last_motion_time,@object # @__func__.gimp_motion_buffer_get_last_motion_time
.L__func__.gimp_motion_buffer_get_last_motion_time:
	.asciz	"gimp_motion_buffer_get_last_motion_time"
	.size	.L__func__.gimp_motion_buffer_get_last_motion_time, 40

	.type	.L__func__.gimp_motion_buffer_request_stroke,@object # @__func__.gimp_motion_buffer_request_stroke
.L__func__.gimp_motion_buffer_request_stroke:
	.asciz	"gimp_motion_buffer_request_stroke"
	.size	.L__func__.gimp_motion_buffer_request_stroke, 34

	.type	motion_buffer_signals,@object # @motion_buffer_signals
	.local	motion_buffer_signals
	.comm	motion_buffer_signals,8,4
	.type	.L__func__.gimp_motion_buffer_request_hover,@object # @__func__.gimp_motion_buffer_request_hover
.L__func__.gimp_motion_buffer_request_hover:
	.asciz	"gimp_motion_buffer_request_hover"
	.size	.L__func__.gimp_motion_buffer_request_hover, 33

	.type	gimp_motion_buffer_parent_class,@object # @gimp_motion_buffer_parent_class
	.local	gimp_motion_buffer_parent_class
	.comm	gimp_motion_buffer_parent_class,8,8
	.type	GimpMotionBuffer_private_offset,@object # @GimpMotionBuffer_private_offset
	.local	GimpMotionBuffer_private_offset
	.comm	GimpMotionBuffer_private_offset,4,4
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"stroke"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"hover"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.7, 54

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimpmotionbuffer.c"
	.size	.L.str.8, 19

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"property"
	.size	.L.str.9, 9


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
