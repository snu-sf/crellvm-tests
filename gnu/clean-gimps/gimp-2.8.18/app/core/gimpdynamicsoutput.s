	.text
	.file	"gimpdynamicsoutput.bc"
	.globl	gimp_dynamics_output_get_type
	.align	16, 0x90
	.type	gimp_dynamics_output_get_type,@function
gimp_dynamics_output_get_type:          # @gimp_dynamics_output_get_type
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
	movq	gimp_dynamics_output_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_dynamics_output_get_type.g_define_type_id__volatile, %rax
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
	movabsq	$gimp_dynamics_output_class_intern_init, %rdi
	movl	$32, %r8d
	movabsq	$gimp_dynamics_output_init, %rcx
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
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movabsq	$gimp_dynamics_output_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_dynamics_output_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_dynamics_output_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_dynamics_output_get_type, .Lfunc_end0-gimp_dynamics_output_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dynamics_output_class_intern_init,@function
gimp_dynamics_output_class_intern_init: # @gimp_dynamics_output_class_intern_init
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
	movq	%rax, gimp_dynamics_output_parent_class
	cmpl	$0, GimpDynamicsOutput_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpDynamicsOutput_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_dynamics_output_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_dynamics_output_class_intern_init, .Lfunc_end1-gimp_dynamics_output_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dynamics_output_init,@function
gimp_dynamics_output_init:              # @gimp_dynamics_output_init
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
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_dynamics_output_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movabsq	$.L.str.13, %rsi
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_dynamics_output_create_curve
	movabsq	$.L.str.14, %rsi
	movq	-16(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movq	-8(%rbp), %rdi
	callq	gimp_dynamics_output_create_curve
	movabsq	$.L.str.15, %rsi
	movq	-16(%rbp), %rdi
	movq	%rax, 40(%rdi)
	movq	-8(%rbp), %rdi
	callq	gimp_dynamics_output_create_curve
	movabsq	$.L.str.16, %rsi
	movq	-16(%rbp), %rdi
	movq	%rax, 48(%rdi)
	movq	-8(%rbp), %rdi
	callq	gimp_dynamics_output_create_curve
	movabsq	$.L.str.17, %rsi
	movq	-16(%rbp), %rdi
	movq	%rax, 56(%rdi)
	movq	-8(%rbp), %rdi
	callq	gimp_dynamics_output_create_curve
	movabsq	$.L.str.18, %rsi
	movq	-16(%rbp), %rdi
	movq	%rax, 64(%rdi)
	movq	-8(%rbp), %rdi
	callq	gimp_dynamics_output_create_curve
	movabsq	$.L.str.19, %rsi
	movq	-16(%rbp), %rdi
	movq	%rax, 72(%rdi)
	movq	-8(%rbp), %rdi
	callq	gimp_dynamics_output_create_curve
	movq	-16(%rbp), %rsi
	movq	%rax, 80(%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_dynamics_output_init, .Lfunc_end2-gimp_dynamics_output_init
	.cfi_endproc

	.globl	gimp_dynamics_output_new
	.align	16, 0x90
	.type	gimp_dynamics_output_new,@function
gimp_dynamics_output_new:               # @gimp_dynamics_output_new
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_dynamics_output_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_6
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	callq	gimp_dynamics_output_get_type
	movabsq	$.L.str.3, %rsi
	movabsq	$.L.str.4, %rcx
	xorl	%edx, %edx
	movl	%edx, %r9d
	movq	-16(%rbp), %rdx
	movl	-20(%rbp), %r8d
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_object_new
	movq	%rax, -8(%rbp)
.LBB3_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_dynamics_output_new, .Lfunc_end3-gimp_dynamics_output_new
	.cfi_endproc

	.globl	gimp_dynamics_output_is_enabled
	.align	16, 0x90
	.type	gimp_dynamics_output_is_enabled,@function
gimp_dynamics_output_is_enabled:        # @gimp_dynamics_output_is_enabled
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_dynamics_output_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movb	$1, %cl
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 4(%rax)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB4_7
# BB#1:                                 # %lor.lhs.false
	movb	$1, %al
	movq	-16(%rbp), %rcx
	cmpl	$0, 8(%rcx)
	movb	%al, -25(%rbp)          # 1-byte Spill
	jne	.LBB4_7
# BB#2:                                 # %lor.lhs.false.3
	movb	$1, %al
	movq	-16(%rbp), %rcx
	cmpl	$0, 12(%rcx)
	movb	%al, -25(%rbp)          # 1-byte Spill
	jne	.LBB4_7
# BB#3:                                 # %lor.lhs.false.5
	movb	$1, %al
	movq	-16(%rbp), %rcx
	cmpl	$0, 16(%rcx)
	movb	%al, -25(%rbp)          # 1-byte Spill
	jne	.LBB4_7
# BB#4:                                 # %lor.lhs.false.7
	movb	$1, %al
	movq	-16(%rbp), %rcx
	cmpl	$0, 20(%rcx)
	movb	%al, -25(%rbp)          # 1-byte Spill
	jne	.LBB4_7
# BB#5:                                 # %lor.lhs.false.9
	movb	$1, %al
	movq	-16(%rbp), %rcx
	cmpl	$0, 24(%rcx)
	movb	%al, -25(%rbp)          # 1-byte Spill
	jne	.LBB4_7
# BB#6:                                 # %lor.rhs
	movq	-16(%rbp), %rax
	cmpl	$0, 28(%rax)
	setne	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB4_7:                                # %lor.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_dynamics_output_is_enabled, .Lfunc_end4-gimp_dynamics_output_is_enabled
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4607182418800017408     # double 1
.LCPI5_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	gimp_dynamics_output_get_linear_value
	.align	16, 0x90
	.type	gimp_dynamics_output_get_linear_value,@function
gimp_dynamics_output_get_linear_value:  # @gimp_dynamics_output_get_linear_value
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	callq	gimp_dynamics_output_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	%rax, -40(%rbp)
	movsd	%xmm1, -48(%rbp)
	movsd	%xmm0, -56(%rbp)
	movl	$0, -60(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$0, 4(%rax)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gimp_curve_map_value
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movl	-60(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -60(%rbp)
.LBB5_2:                                # %if.end
	movq	-40(%rbp), %rax
	cmpl	$0, 8(%rax)
	je	.LBB5_4
# BB#3:                                 # %if.then.4
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-16(%rbp), %rax
	subsd	48(%rax), %xmm0
	callq	gimp_curve_map_value
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movl	-60(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -60(%rbp)
.LBB5_4:                                # %if.end.8
	movq	-40(%rbp), %rax
	cmpl	$0, 12(%rax)
	je	.LBB5_6
# BB#5:                                 # %if.then.10
	movsd	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI5_1, %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-16(%rbp), %rax
	addsd	56(%rax), %xmm0
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	fmod
	movq	-88(%rbp), %rdi         # 8-byte Reload
	callq	gimp_curve_map_value
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movl	-60(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -60(%rbp)
.LBB5_6:                                # %if.end.16
	movq	-40(%rbp), %rax
	cmpl	$0, 16(%rax)
	je	.LBB5_8
# BB#7:                                 # %if.then.18
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movq	56(%rax), %rdi
	movq	-16(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	24(%rax), %xmm1
	movq	-16(%rbp), %rax
	movsd	32(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-16(%rbp), %rax
	mulsd	32(%rax), %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm0, -96(%rbp)        # 8-byte Spill
	movaps	%xmm1, %xmm0
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	sqrt
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movaps	%xmm1, %xmm0
	callq	gimp_curve_map_value
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movl	-60(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -60(%rbp)
.LBB5_8:                                # %if.end.28
	movq	-40(%rbp), %rax
	cmpl	$0, 20(%rax)
	je	.LBB5_10
# BB#9:                                 # %if.then.30
	movq	-16(%rbp), %rax
	movsd	40(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	64(%rax), %rdi
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_curve_map_value
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movl	-60(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -60(%rbp)
.LBB5_10:                               # %if.end.35
	movq	-40(%rbp), %rax
	cmpl	$0, 24(%rax)
	je	.LBB5_12
# BB#11:                                # %if.then.37
	xorps	%xmm0, %xmm0
	movsd	.LCPI5_0, %xmm1         # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	movq	72(%rax), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	g_random_double_range
	movq	-112(%rbp), %rdi        # 8-byte Reload
	callq	gimp_curve_map_value
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movl	-60(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -60(%rbp)
.LBB5_12:                               # %if.end.42
	movq	-40(%rbp), %rax
	cmpl	$0, 28(%rax)
	je	.LBB5_14
# BB#13:                                # %if.then.44
	movq	-40(%rbp), %rax
	movq	80(%rax), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_curve_map_value
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movl	-60(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -60(%rbp)
.LBB5_14:                               # %if.end.48
	cmpl	$0, -60(%rbp)
	jle	.LBB5_16
# BB#15:                                # %if.then.49
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-60(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
.LBB5_16:                               # %if.end.50
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_dynamics_output_get_linear_value, .Lfunc_end5-gimp_dynamics_output_get_linear_value
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4607182418800017408     # double 1
.LCPI6_1:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI6_2:
	.quad	-4616189618054758400    # double -1
.LCPI6_3:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	gimp_dynamics_output_get_angular_value
	.align	16, 0x90
	.type	gimp_dynamics_output_get_angular_value,@function
gimp_dynamics_output_get_angular_value: # @gimp_dynamics_output_get_angular_value
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	callq	gimp_dynamics_output_get_type
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	xorps	%xmm0, %xmm0
	movq	%rax, -40(%rbp)
	movsd	%xmm0, -48(%rbp)
	movsd	%xmm0, -56(%rbp)
	movl	$0, -60(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$0, 4(%rax)
	je	.LBB6_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gimp_curve_map_value
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movl	-60(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -60(%rbp)
.LBB6_2:                                # %if.end
	movq	-40(%rbp), %rax
	cmpl	$0, 8(%rax)
	je	.LBB6_4
# BB#3:                                 # %if.then.4
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-16(%rbp), %rax
	subsd	48(%rax), %xmm0
	callq	gimp_curve_map_value
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movl	-60(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -60(%rbp)
.LBB6_4:                                # %if.end.8
	movq	-40(%rbp), %rax
	cmpl	$0, 12(%rax)
	je	.LBB6_6
# BB#5:                                 # %if.then.10
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-16(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gimp_curve_map_value
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movl	-60(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -60(%rbp)
.LBB6_6:                                # %if.end.14
	movq	-40(%rbp), %rax
	cmpl	$0, 16(%rax)
	je	.LBB6_25
# BB#7:                                 # %if.then.16
	xorps	%xmm0, %xmm0
	movq	-16(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, -72(%rbp)
	movq	-16(%rbp), %rax
	movsd	32(%rax), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, -80(%rbp)
	movsd	%xmm0, -88(%rbp)
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB6_15
	jp	.LBB6_15
# BB#8:                                 # %if.then.17
	xorps	%xmm0, %xmm0
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jb	.LBB6_10
# BB#9:                                 # %if.then.19
	movsd	.LCPI6_3, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
	jmp	.LBB6_14
.LBB6_10:                               # %if.else
	xorps	%xmm0, %xmm0
	ucomisd	-80(%rbp), %xmm0
	jbe	.LBB6_12
# BB#11:                                # %if.then.21
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -88(%rbp)
	jmp	.LBB6_13
.LBB6_12:                               # %if.else.22
	movsd	.LCPI6_2, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
.LBB6_13:                               # %if.end.23
	jmp	.LBB6_14
.LBB6_14:                               # %if.end.24
	jmp	.LBB6_18
.LBB6_15:                               # %if.else.25
	movsd	.LCPI6_2, %xmm0         # xmm0 = mem[0],zero
	mulsd	-80(%rbp), %xmm0
	divsd	-72(%rbp), %xmm0
	callq	atan
	xorps	%xmm1, %xmm1
	movsd	.LCPI6_1, %xmm2         # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB6_17
# BB#16:                                # %if.then.29
	movsd	.LCPI6_3, %xmm0         # xmm0 = mem[0],zero
	addsd	-88(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
.LBB6_17:                               # %if.end.31
	jmp	.LBB6_18
.LBB6_18:                               # %if.end.32
	movsd	.LCPI6_3, %xmm0         # xmm0 = mem[0],zero
	addsd	-88(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
.LBB6_19:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB6_21
# BB#20:                                # %while.body
                                        #   in Loop: Header=BB6_19 Depth=1
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -88(%rbp)
	jmp	.LBB6_19
.LBB6_21:                               # %while.end
	jmp	.LBB6_22
.LBB6_22:                               # %while.cond.36
                                        # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	ucomisd	-88(%rbp), %xmm0
	jbe	.LBB6_24
# BB#23:                                # %while.body.38
                                        #   in Loop: Header=BB6_22 Depth=1
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	addsd	-88(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
	jmp	.LBB6_22
.LBB6_24:                               # %while.end.40
	movq	-40(%rbp), %rax
	movq	56(%rax), %rdi
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_curve_map_value
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movl	-60(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -60(%rbp)
.LBB6_25:                               # %if.end.44
	movq	-40(%rbp), %rax
	cmpl	$0, 20(%rax)
	je	.LBB6_27
# BB#26:                                # %if.then.46
	movsd	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI6_3, %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	addsd	40(%rax), %xmm0
	callq	fmod
	movsd	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -96(%rbp)
	movq	-40(%rbp), %rax
	movq	64(%rax), %rdi
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_curve_map_value
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movl	-60(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -60(%rbp)
.LBB6_27:                               # %if.end.53
	movq	-40(%rbp), %rax
	cmpl	$0, 24(%rax)
	je	.LBB6_29
# BB#28:                                # %if.then.55
	xorps	%xmm0, %xmm0
	movsd	.LCPI6_0, %xmm1         # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	movq	72(%rax), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	g_random_double_range
	movq	-112(%rbp), %rdi        # 8-byte Reload
	callq	gimp_curve_map_value
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movl	-60(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -60(%rbp)
.LBB6_29:                               # %if.end.60
	movq	-40(%rbp), %rax
	cmpl	$0, 28(%rax)
	je	.LBB6_31
# BB#30:                                # %if.then.62
	movq	-40(%rbp), %rax
	movq	80(%rax), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_curve_map_value
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movl	-60(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -60(%rbp)
.LBB6_31:                               # %if.end.66
	cmpl	$0, -60(%rbp)
	jle	.LBB6_33
# BB#32:                                # %if.then.68
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-60(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
.LBB6_33:                               # %if.end.70
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_dynamics_output_get_angular_value, .Lfunc_end6-gimp_dynamics_output_get_angular_value
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4607182418800017408     # double 1
.LCPI7_1:
	.quad	4606056518893174784     # double 0.875
.LCPI7_2:
	.quad	4593671619917905920     # double 0.125
.LCPI7_3:
	.quad	4600427019358961664     # double 0.375
.LCPI7_4:
	.quad	4603804719079489536     # double 0.625
.LCPI7_5:
	.quad	-4616189618054758400    # double -1
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI7_6:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.globl	gimp_dynamics_output_get_aspect_value
	.align	16, 0x90
	.type	gimp_dynamics_output_get_aspect_value,@function
gimp_dynamics_output_get_aspect_value:  # @gimp_dynamics_output_get_aspect_value
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	callq	gimp_dynamics_output_get_type
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	%rax, -40(%rbp)
	movsd	%xmm1, -48(%rbp)
	movl	$0, -52(%rbp)
	movsd	%xmm0, -64(%rbp)
	movsd	%xmm0, -72(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$0, 4(%rax)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gimp_curve_map_value
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movl	-52(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -52(%rbp)
.LBB7_2:                                # %if.end
	movq	-40(%rbp), %rax
	cmpl	$0, 8(%rax)
	je	.LBB7_4
# BB#3:                                 # %if.then.4
	movq	-40(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-16(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gimp_curve_map_value
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movl	-52(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -52(%rbp)
.LBB7_4:                                # %if.end.8
	movq	-40(%rbp), %rax
	cmpl	$0, 12(%rax)
	je	.LBB7_13
# BB#5:                                 # %if.then.10
	movq	-40(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-16(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gimp_curve_map_value
	movsd	.LCPI7_1, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -80(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB7_7
# BB#6:                                 # %land.lhs.true
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-80(%rbp), %xmm0
	jae	.LBB7_11
.LBB7_7:                                # %lor.lhs.false
	xorps	%xmm0, %xmm0
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_9
# BB#8:                                 # %land.lhs.true.15
	movsd	.LCPI7_2, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-80(%rbp), %xmm0
	ja	.LBB7_11
.LBB7_9:                                # %lor.lhs.false.17
	movsd	.LCPI7_3, %xmm0         # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_12
# BB#10:                                # %land.lhs.true.19
	movsd	.LCPI7_4, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-80(%rbp), %xmm0
	jbe	.LBB7_12
.LBB7_11:                               # %if.then.21
	movsd	.LCPI7_5, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
.LBB7_12:                               # %if.end.22
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
.LBB7_13:                               # %if.end.25
	movq	-40(%rbp), %rax
	cmpl	$0, 16(%rax)
	je	.LBB7_18
# BB#14:                                # %if.then.27
	movq	-16(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movapd	.LCPI7_6(%rip), %xmm1   # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movsd	32(%rax), %xmm1         # xmm1 = mem[0],zero
	movapd	.LCPI7_6(%rip), %xmm2   # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB7_16
# BB#15:                                # %cond.true
	movq	-16(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movapd	.LCPI7_6(%rip), %xmm1   # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	jmp	.LBB7_17
.LBB7_16:                               # %cond.false
	movq	-16(%rbp), %rax
	movsd	32(%rax), %xmm0         # xmm0 = mem[0],zero
	movapd	.LCPI7_6(%rip), %xmm1   # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm0
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
.LBB7_17:                               # %cond.end
	movsd	-120(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
	movq	-40(%rbp), %rax
	movq	56(%rax), %rdi
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_curve_map_value
	movsd	%xmm0, -88(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movl	-52(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -52(%rbp)
.LBB7_18:                               # %if.end.38
	movq	-40(%rbp), %rax
	cmpl	$0, 20(%rax)
	je	.LBB7_27
# BB#19:                                # %if.then.40
	movq	-40(%rbp), %rax
	movq	64(%rax), %rdi
	movq	-16(%rbp), %rax
	movsd	40(%rax), %xmm0         # xmm0 = mem[0],zero
	callq	gimp_curve_map_value
	movsd	.LCPI7_1, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -96(%rbp)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB7_21
# BB#20:                                # %land.lhs.true.44
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-96(%rbp), %xmm0
	jae	.LBB7_25
.LBB7_21:                               # %lor.lhs.false.46
	xorps	%xmm0, %xmm0
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_23
# BB#22:                                # %land.lhs.true.48
	movsd	.LCPI7_2, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-96(%rbp), %xmm0
	ja	.LBB7_25
.LBB7_23:                               # %lor.lhs.false.50
	movsd	.LCPI7_3, %xmm0         # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_26
# BB#24:                                # %land.lhs.true.52
	movsd	.LCPI7_4, %xmm0         # xmm0 = mem[0],zero
	ucomisd	-96(%rbp), %xmm0
	jbe	.LBB7_26
.LBB7_25:                               # %if.then.54
	movsd	.LCPI7_5, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)
.LBB7_26:                               # %if.end.55
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
.LBB7_27:                               # %if.end.58
	movq	-40(%rbp), %rax
	cmpl	$0, 24(%rax)
	je	.LBB7_29
# BB#28:                                # %if.then.60
	xorps	%xmm0, %xmm0
	movsd	.LCPI7_0, %xmm1         # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	movq	72(%rax), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	g_random_double_range
	movq	-128(%rbp), %rdi        # 8-byte Reload
	callq	gimp_curve_map_value
	movsd	%xmm0, -104(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movl	-52(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -52(%rbp)
.LBB7_29:                               # %if.end.65
	movq	-40(%rbp), %rax
	cmpl	$0, 28(%rax)
	je	.LBB7_31
# BB#30:                                # %if.then.67
	movq	-40(%rbp), %rax
	movq	80(%rax), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_curve_map_value
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movl	-52(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -52(%rbp)
.LBB7_31:                               # %if.end.71
	cmpl	$0, -52(%rbp)
	jle	.LBB7_33
# BB#32:                                # %if.then.73
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-52(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
.LBB7_33:                               # %if.end.74
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-64(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_35
# BB#34:                                # %cond.true.77
	movsd	.LCPI7_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
	jmp	.LBB7_39
.LBB7_35:                               # %cond.false.78
	movsd	.LCPI7_5, %xmm0         # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-64(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB7_37
# BB#36:                                # %cond.true.82
	movsd	.LCPI7_5, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
	jmp	.LBB7_38
.LBB7_37:                               # %cond.false.83
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-64(%rbp), %xmm0
	movsd	%xmm0, -144(%rbp)       # 8-byte Spill
.LBB7_38:                               # %cond.end.85
	movsd	-144(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)       # 8-byte Spill
.LBB7_39:                               # %cond.end.87
	movsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_dynamics_output_get_aspect_value, .Lfunc_end7-gimp_dynamics_output_get_aspect_value
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dynamics_output_class_init,@function
gimp_dynamics_output_class_init:        # @gimp_dynamics_output_class_init
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
	subq	$144, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$.L.str.5, %rdi
	movabsq	$gimp_dynamics_output_get_property, %rsi
	movabsq	$gimp_dynamics_output_set_property, %rcx
	movabsq	$gimp_dynamics_output_finalize, %rdx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-16(%rbp), %rax
	movq	%rcx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 32(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gettext
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_dynamics_output_type_get_type
	movabsq	$.L.str.4, %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	xorl	%r8d, %r8d
	movl	$231, %r9d
	movq	-32(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	g_param_spec_enum
	movl	$1, %esi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.6, %rdi
	xorl	%esi, %esi
	movl	%esi, %eax
	xorl	%ecx, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$2, %esi
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.7, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$3, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.8, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$4, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.9, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$5, %esi
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.10, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$6, %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.11, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$7, %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movabsq	$.L.str.12, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	movl	$487, %r8d              # imm = 0x1E7
	movq	-16(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	callq	g_param_spec_boolean
	movl	$8, %esi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	callq	gimp_curve_get_type
	movabsq	$.L.str.13, %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	$771, %r8d              # imm = 0x303
	movq	%rdx, %rsi
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$9, %esi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	callq	gimp_curve_get_type
	movabsq	$.L.str.14, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$771, %r8d              # imm = 0x303
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$10, %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	callq	gimp_curve_get_type
	movabsq	$.L.str.15, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$771, %r8d              # imm = 0x303
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$11, %esi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	callq	gimp_curve_get_type
	movabsq	$.L.str.16, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$771, %r8d              # imm = 0x303
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$12, %esi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	gimp_curve_get_type
	movabsq	$.L.str.17, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$771, %r8d              # imm = 0x303
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$13, %esi
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	gimp_curve_get_type
	movabsq	$.L.str.18, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$771, %r8d              # imm = 0x303
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$14, %esi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movq	-16(%rbp), %rdi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	callq	gimp_curve_get_type
	movabsq	$.L.str.19, %rdi
	xorl	%esi, %esi
	movl	%esi, %ecx
	movl	$771, %r8d              # imm = 0x303
	movq	%rcx, %rsi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	g_param_spec_object
	movl	$15, %esi
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	g_object_class_install_property
	movl	$88, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_class_add_private
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_dynamics_output_class_init, .Lfunc_end8-gimp_dynamics_output_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dynamics_output_finalize,@function
gimp_dynamics_output_finalize:          # @gimp_dynamics_output_finalize
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_dynamics_output_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	gimp_dynamics_output_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_dynamics_output_finalize, .Lfunc_end9-gimp_dynamics_output_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dynamics_output_set_property,@function
gimp_dynamics_output_set_property:      # @gimp_dynamics_output_set_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_dynamics_output_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$14, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB10_16
# BB#20:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI10_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB10_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	callq	g_value_get_enum
	movq	-40(%rbp), %rdi
	movl	%eax, (%rdi)
	jmp	.LBB10_19
.LBB10_2:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 4(%rdi)
	jmp	.LBB10_19
.LBB10_3:                               # %sw.bb.5
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 8(%rdi)
	jmp	.LBB10_19
.LBB10_4:                               # %sw.bb.7
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 12(%rdi)
	jmp	.LBB10_19
.LBB10_5:                               # %sw.bb.9
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 16(%rdi)
	jmp	.LBB10_19
.LBB10_6:                               # %sw.bb.11
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 20(%rdi)
	jmp	.LBB10_19
.LBB10_7:                               # %sw.bb.13
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 24(%rdi)
	jmp	.LBB10_19
.LBB10_8:                               # %sw.bb.15
	movq	-24(%rbp), %rdi
	callq	g_value_get_boolean
	movq	-40(%rbp), %rdi
	movl	%eax, 28(%rdi)
	jmp	.LBB10_19
.LBB10_9:                               # %sw.bb.17
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	-40(%rbp), %rdi
	movq	32(%rdi), %rsi
	movq	%rax, %rdi
	callq	gimp_dynamics_output_copy_curve
	jmp	.LBB10_19
.LBB10_10:                              # %sw.bb.19
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	-40(%rbp), %rdi
	movq	40(%rdi), %rsi
	movq	%rax, %rdi
	callq	gimp_dynamics_output_copy_curve
	jmp	.LBB10_19
.LBB10_11:                              # %sw.bb.21
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	-40(%rbp), %rdi
	movq	48(%rdi), %rsi
	movq	%rax, %rdi
	callq	gimp_dynamics_output_copy_curve
	jmp	.LBB10_19
.LBB10_12:                              # %sw.bb.23
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	-40(%rbp), %rdi
	movq	56(%rdi), %rsi
	movq	%rax, %rdi
	callq	gimp_dynamics_output_copy_curve
	jmp	.LBB10_19
.LBB10_13:                              # %sw.bb.25
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	-40(%rbp), %rdi
	movq	64(%rdi), %rsi
	movq	%rax, %rdi
	callq	gimp_dynamics_output_copy_curve
	jmp	.LBB10_19
.LBB10_14:                              # %sw.bb.27
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	-40(%rbp), %rdi
	movq	72(%rdi), %rsi
	movq	%rax, %rdi
	callq	gimp_dynamics_output_copy_curve
	jmp	.LBB10_19
.LBB10_15:                              # %sw.bb.29
	movq	-24(%rbp), %rdi
	callq	g_value_get_object
	movq	-40(%rbp), %rdi
	movq	80(%rdi), %rsi
	movq	%rax, %rdi
	callq	gimp_dynamics_output_copy_curve
	jmp	.LBB10_19
.LBB10_16:                              # %sw.default
	jmp	.LBB10_17
.LBB10_17:                              # %do.body
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
	movabsq	$.L.str.20, %rdi
	movabsq	$.L.str.21, %rsi
	movl	$330, %edx              # imm = 0x14A
	movabsq	$.L.str.22, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#18:                                # %do.end
	jmp	.LBB10_19
.LBB10_19:                              # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_dynamics_output_set_property, .Lfunc_end10-gimp_dynamics_output_set_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI10_0:
	.quad	.LBB10_1
	.quad	.LBB10_2
	.quad	.LBB10_3
	.quad	.LBB10_4
	.quad	.LBB10_5
	.quad	.LBB10_6
	.quad	.LBB10_7
	.quad	.LBB10_8
	.quad	.LBB10_9
	.quad	.LBB10_10
	.quad	.LBB10_11
	.quad	.LBB10_12
	.quad	.LBB10_13
	.quad	.LBB10_14
	.quad	.LBB10_15

	.text
	.align	16, 0x90
	.type	gimp_dynamics_output_get_property,@function
gimp_dynamics_output_get_property:      # @gimp_dynamics_output_get_property
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	gimp_dynamics_output_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_instance_get_private
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %r8d
	decl	%r8d
	movl	%r8d, %eax
	subl	$14, %r8d
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	ja	.LBB11_16
# BB#20:                                # %entry
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI11_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB11_1:                               # %sw.bb
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	(%rax), %esi
	callq	g_value_set_enum
	jmp	.LBB11_19
.LBB11_2:                               # %sw.bb.2
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	4(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB11_19
.LBB11_3:                               # %sw.bb.3
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	8(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB11_19
.LBB11_4:                               # %sw.bb.4
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	12(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB11_19
.LBB11_5:                               # %sw.bb.5
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	16(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB11_19
.LBB11_6:                               # %sw.bb.6
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	20(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB11_19
.LBB11_7:                               # %sw.bb.7
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	24(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB11_19
.LBB11_8:                               # %sw.bb.8
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	28(%rax), %esi
	callq	g_value_set_boolean
	jmp	.LBB11_19
.LBB11_9:                               # %sw.bb.9
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB11_19
.LBB11_10:                              # %sw.bb.10
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB11_19
.LBB11_11:                              # %sw.bb.11
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB11_19
.LBB11_12:                              # %sw.bb.12
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB11_19
.LBB11_13:                              # %sw.bb.13
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB11_19
.LBB11_14:                              # %sw.bb.14
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB11_19
.LBB11_15:                              # %sw.bb.15
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, %rsi
	callq	g_value_set_object
	jmp	.LBB11_19
.LBB11_16:                              # %sw.default
	jmp	.LBB11_17
.LBB11_17:                              # %do.body
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
	movabsq	$.L.str.20, %rdi
	movabsq	$.L.str.21, %rsi
	movl	$406, %edx              # imm = 0x196
	movabsq	$.L.str.22, %rcx
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	-96(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#18:                                # %do.end
	jmp	.LBB11_19
.LBB11_19:                              # %sw.epilog
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_dynamics_output_get_property, .Lfunc_end11-gimp_dynamics_output_get_property
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI11_0:
	.quad	.LBB11_1
	.quad	.LBB11_2
	.quad	.LBB11_3
	.quad	.LBB11_4
	.quad	.LBB11_5
	.quad	.LBB11_6
	.quad	.LBB11_7
	.quad	.LBB11_8
	.quad	.LBB11_9
	.quad	.LBB11_10
	.quad	.LBB11_11
	.quad	.LBB11_12
	.quad	.LBB11_13
	.quad	.LBB11_14
	.quad	.LBB11_15

	.text
	.align	16, 0x90
	.type	gimp_dynamics_output_copy_curve,@function
gimp_dynamics_output_copy_curve:        # @gimp_dynamics_output_copy_curve
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
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB12_3
# BB#1:                                 # %land.lhs.true
	cmpq	$0, -16(%rbp)
	je	.LBB12_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	callq	gimp_config_interface_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$256, %edx              # imm = 0x100
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	gimp_config_copy
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB12_3:                               # %if.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_dynamics_output_copy_curve, .Lfunc_end12-gimp_dynamics_output_copy_curve
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB13_2
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
.LBB13_2:                               # %entry
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
.Lfunc_end13:
	.size	g_warning, .Lfunc_end13-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dynamics_output_create_curve,@function
gimp_dynamics_output_create_curve:      # @gimp_dynamics_output_create_curve
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_curve_new
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	gimp_curve_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movabsq	$.L.str.23, %rsi
	movabsq	$gimp_dynamics_output_curve_dirty, %rdi
	xorl	%r8d, %r8d
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-40(%rbp), %rdx         # 8-byte Reload
	callq	g_signal_connect_object
	movq	-24(%rbp), %rcx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_dynamics_output_create_curve, .Lfunc_end14-gimp_dynamics_output_create_curve
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_dynamics_output_curve_dirty,@function
gimp_dynamics_output_curve_dirty:       # @gimp_dynamics_output_curve_dirty
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
	subq	$32, %rsp
	movl	$80, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	g_type_check_instance_cast
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	gimp_object_get_name
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_object_notify
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_dynamics_output_curve_dirty, .Lfunc_end15-gimp_dynamics_output_curve_dirty
	.cfi_endproc

	.type	gimp_dynamics_output_get_type.g_define_type_id__volatile,@object # @gimp_dynamics_output_get_type.g_define_type_id__volatile
	.local	gimp_dynamics_output_get_type.g_define_type_id__volatile
	.comm	gimp_dynamics_output_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpDynamicsOutput"
	.size	.L.str, 19

	.type	gimp_dynamics_output_get_type.g_implement_interface_info,@object # @gimp_dynamics_output_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_dynamics_output_get_type.g_implement_interface_info:
	.zero	24
	.size	gimp_dynamics_output_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-Core"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_dynamics_output_new,@object # @__func__.gimp_dynamics_output_new
.L__func__.gimp_dynamics_output_new:
	.asciz	"gimp_dynamics_output_new"
	.size	.L__func__.gimp_dynamics_output_new, 25

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"name != NULL"
	.size	.L.str.2, 13

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"name"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"type"
	.size	.L.str.4, 5

	.type	gimp_dynamics_output_parent_class,@object # @gimp_dynamics_output_parent_class
	.local	gimp_dynamics_output_parent_class
	.comm	gimp_dynamics_output_parent_class,8,8
	.type	GimpDynamicsOutput_private_offset,@object # @GimpDynamicsOutput_private_offset
	.local	GimpDynamicsOutput_private_offset
	.comm	GimpDynamicsOutput_private_offset,4,4
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Output type"
	.size	.L.str.5, 12

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"use-pressure"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"use-velocity"
	.size	.L.str.7, 13

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"use-direction"
	.size	.L.str.8, 14

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"use-tilt"
	.size	.L.str.9, 9

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"use-wheel"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"use-random"
	.size	.L.str.11, 11

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"use-fade"
	.size	.L.str.12, 9

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"pressure-curve"
	.size	.L.str.13, 15

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"velocity-curve"
	.size	.L.str.14, 15

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"direction-curve"
	.size	.L.str.15, 16

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"tilt-curve"
	.size	.L.str.16, 11

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"wheel-curve"
	.size	.L.str.17, 12

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"random-curve"
	.size	.L.str.18, 13

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"fade-curve"
	.size	.L.str.19, 11

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.20, 54

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimpdynamicsoutput.c"
	.size	.L.str.21, 21

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"property"
	.size	.L.str.22, 9

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"dirty"
	.size	.L.str.23, 6


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
