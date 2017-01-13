	.text
	.file	"gimpdisplayshell-transform.bc"
	.globl	gimp_display_shell_transform_coords
	.align	16, 0x90
	.type	gimp_display_shell_transform_coords,@function
gimp_display_shell_transform_coords:    # @gimp_display_shell_transform_coords
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_transform_coords, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_23
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB0_15
# BB#14:                                # %if.then.13
	jmp	.LBB0_16
.LBB0_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_transform_coords, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_23
.LBB0_16:                               # %if.end.15
	jmp	.LBB0_17
.LBB0_17:                               # %do.end.16
	jmp	.LBB0_18
.LBB0_18:                               # %do.body.17
	cmpq	$0, -24(%rbp)
	je	.LBB0_20
# BB#19:                                # %if.then.19
	jmp	.LBB0_21
.LBB0_20:                               # %if.else.20
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_transform_coords, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_23
.LBB0_21:                               # %if.end.21
	jmp	.LBB0_22
.LBB0_22:                               # %do.end.22
	movl	$64, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	%rcx, %rdi
	callq	memcpy
	movq	-16(%rbp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movq	-8(%rbp), %rcx
	mulsd	200(%rcx), %xmm0
	callq	rint
	cvttsd2si	%xmm0, %eax
	cvtsi2sdl	%eax, %xmm0
	movq	-24(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	movq	-16(%rbp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movq	-8(%rbp), %rcx
	mulsd	208(%rcx), %xmm0
	callq	rint
	cvttsd2si	%xmm0, %eax
	cvtsi2sdl	%eax, %xmm0
	movq	-24(%rbp), %rcx
	movsd	%xmm0, 8(%rcx)
	movq	-8(%rbp), %rcx
	cvtsi2sdl	188(%rcx), %xmm0
	movq	-24(%rbp), %rcx
	movsd	(%rcx), %xmm1           # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, (%rcx)
	movq	-8(%rbp), %rcx
	cvtsi2sdl	192(%rcx), %xmm0
	movq	-24(%rbp), %rcx
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 8(%rcx)
.LBB0_23:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_display_shell_transform_coords, .Lfunc_end0-gimp_display_shell_transform_coords
	.cfi_endproc

	.globl	gimp_display_shell_untransform_coords
	.align	16, 0x90
	.type	gimp_display_shell_untransform_coords,@function
gimp_display_shell_untransform_coords:  # @gimp_display_shell_untransform_coords
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB1_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB1_8
.LBB1_3:                                # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB1_7
.LBB1_6:                                # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB1_7:                                # %if.end
	jmp	.LBB1_8
.LBB1_8:                                # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB1_10
# BB#9:                                 # %if.then.8
	jmp	.LBB1_11
.LBB1_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_untransform_coords, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_23
.LBB1_11:                               # %if.end.10
	jmp	.LBB1_12
.LBB1_12:                               # %do.end
	jmp	.LBB1_13
.LBB1_13:                               # %do.body.11
	cmpq	$0, -16(%rbp)
	je	.LBB1_15
# BB#14:                                # %if.then.13
	jmp	.LBB1_16
.LBB1_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_untransform_coords, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_23
.LBB1_16:                               # %if.end.15
	jmp	.LBB1_17
.LBB1_17:                               # %do.end.16
	jmp	.LBB1_18
.LBB1_18:                               # %do.body.17
	cmpq	$0, -24(%rbp)
	je	.LBB1_20
# BB#19:                                # %if.then.19
	jmp	.LBB1_21
.LBB1_20:                               # %if.else.20
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_untransform_coords, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_23
.LBB1_21:                               # %if.end.21
	jmp	.LBB1_22
.LBB1_22:                               # %do.end.22
	movl	$64, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	%rcx, %rdi
	callq	memcpy
	movq	-16(%rbp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movq	-8(%rbp), %rcx
	cvtsi2sdl	188(%rcx), %xmm1
	addsd	%xmm1, %xmm0
	movq	-24(%rbp), %rcx
	movsd	%xmm0, (%rcx)
	movq	-16(%rbp), %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movq	-8(%rbp), %rcx
	cvtsi2sdl	192(%rcx), %xmm1
	addsd	%xmm1, %xmm0
	movq	-24(%rbp), %rcx
	movsd	%xmm0, 8(%rcx)
	movq	-8(%rbp), %rcx
	movsd	200(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rcx
	movsd	(%rcx), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, (%rcx)
	movq	-8(%rbp), %rcx
	movsd	208(%rcx), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rcx
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 8(%rcx)
.LBB1_23:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_display_shell_untransform_coords, .Lfunc_end1-gimp_display_shell_untransform_coords
	.cfi_endproc

	.globl	gimp_display_shell_transform_xy
	.align	16, 0x90
	.type	gimp_display_shell_transform_xy,@function
gimp_display_shell_transform_xy:        # @gimp_display_shell_transform_xy
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_transform_xy, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_35
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	jmp	.LBB2_13
.LBB2_13:                               # %do.body.11
	cmpq	$0, -32(%rbp)
	je	.LBB2_15
# BB#14:                                # %if.then.13
	jmp	.LBB2_16
.LBB2_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_transform_xy, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_35
.LBB2_16:                               # %if.end.15
	jmp	.LBB2_17
.LBB2_17:                               # %do.end.16
	jmp	.LBB2_18
.LBB2_18:                               # %do.body.17
	cmpq	$0, -40(%rbp)
	je	.LBB2_20
# BB#19:                                # %if.then.19
	jmp	.LBB2_21
.LBB2_20:                               # %if.else.20
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_transform_xy, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_35
.LBB2_21:                               # %if.end.21
	jmp	.LBB2_22
.LBB2_22:                               # %do.end.22
	cvttsd2si	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movslq	236(%rcx), %rcx
	imulq	%rcx, %rax
	movq	-8(%rbp), %rcx
	movslq	244(%rcx), %rcx
	cqto
	idivq	%rcx
	movq	%rax, -48(%rbp)
	cvttsd2si	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movslq	240(%rcx), %rcx
	imulq	%rcx, %rax
	movq	-8(%rbp), %rcx
	movslq	248(%rcx), %rcx
	cqto
	idivq	%rcx
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movslq	188(%rax), %rax
	movq	-48(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -48(%rbp)
	movq	-8(%rbp), %rax
	movslq	192(%rax), %rax
	movq	-56(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -56(%rbp)
	cmpq	$2147483647, -48(%rbp)  # imm = 0x7FFFFFFF
	jle	.LBB2_24
# BB#23:                                # %cond.true
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB2_28
.LBB2_24:                               # %cond.false
	cmpq	$-2147483648, -48(%rbp) # imm = 0xFFFFFFFF80000000
	jge	.LBB2_26
# BB#25:                                # %cond.true.37
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB2_27
.LBB2_26:                               # %cond.false.38
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB2_27:                               # %cond.end
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB2_28:                               # %cond.end.39
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	cmpq	$2147483647, -56(%rbp)  # imm = 0x7FFFFFFF
	jle	.LBB2_30
# BB#29:                                # %cond.true.44
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB2_34
.LBB2_30:                               # %cond.false.45
	cmpq	$-2147483648, -56(%rbp) # imm = 0xFFFFFFFF80000000
	jge	.LBB2_32
# BB#31:                                # %cond.true.48
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB2_33
.LBB2_32:                               # %cond.false.49
	movq	-56(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB2_33:                               # %cond.end.50
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB2_34:                               # %cond.end.52
	movq	-104(%rbp), %rax        # 8-byte Reload
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
.LBB2_35:                               # %return
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_display_shell_transform_xy, .Lfunc_end2-gimp_display_shell_transform_xy
	.cfi_endproc

	.globl	gimp_display_shell_untransform_xy
	.align	16, 0x90
	.type	gimp_display_shell_untransform_xy,@function
gimp_display_shell_untransform_xy:      # @gimp_display_shell_untransform_xy
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movl	%r9d, -36(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_display_shell_get_type
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
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_untransform_xy, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_41
.LBB3_11:                               # %if.end.10
	jmp	.LBB3_12
.LBB3_12:                               # %do.end
	jmp	.LBB3_13
.LBB3_13:                               # %do.body.11
	cmpq	$0, -24(%rbp)
	je	.LBB3_15
# BB#14:                                # %if.then.13
	jmp	.LBB3_16
.LBB3_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_untransform_xy, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_41
.LBB3_16:                               # %if.end.15
	jmp	.LBB3_17
.LBB3_17:                               # %do.end.16
	jmp	.LBB3_18
.LBB3_18:                               # %do.body.17
	cmpq	$0, -32(%rbp)
	je	.LBB3_20
# BB#19:                                # %if.then.19
	jmp	.LBB3_21
.LBB3_20:                               # %if.else.20
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_untransform_xy, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_41
.LBB3_21:                               # %if.end.21
	jmp	.LBB3_22
.LBB3_22:                               # %do.end.22
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movslq	188(%rcx), %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movslq	192(%rcx), %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movslq	244(%rax), %rax
	imulq	-48(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movslq	248(%rax), %rax
	imulq	-56(%rbp), %rax
	movq	%rax, -56(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB3_24
# BB#23:                                # %cond.true
	movq	-8(%rbp), %rax
	movl	244(%rax), %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	jmp	.LBB3_25
.LBB3_24:                               # %cond.false
	movq	-8(%rbp), %rax
	movl	244(%rax), %ecx
	sarl	$1, %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
.LBB3_25:                               # %cond.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	addq	-48(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB3_27
# BB#26:                                # %cond.true.36
	movq	-8(%rbp), %rax
	movl	248(%rax), %ecx
	movl	%ecx, -88(%rbp)         # 4-byte Spill
	jmp	.LBB3_28
.LBB3_27:                               # %cond.false.38
	movq	-8(%rbp), %rax
	movl	248(%rax), %ecx
	sarl	$1, %ecx
	movl	%ecx, -88(%rbp)         # 4-byte Spill
.LBB3_28:                               # %cond.end.41
	movl	-88(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	addq	-56(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	movq	-8(%rbp), %rcx
	movslq	236(%rcx), %rcx
	movq	-48(%rbp), %rax
	cqto
	idivq	%rcx
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movslq	240(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %rax
	cqto
	movq	-96(%rbp), %rcx         # 8-byte Reload
	idivq	%rcx
	movq	%rax, -56(%rbp)
	cmpq	$2147483647, -48(%rbp)  # imm = 0x7FFFFFFF
	jle	.LBB3_30
# BB#29:                                # %cond.true.50
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB3_34
.LBB3_30:                               # %cond.false.51
	cmpq	$-2147483648, -48(%rbp) # imm = 0xFFFFFFFF80000000
	jge	.LBB3_32
# BB#31:                                # %cond.true.54
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB3_33
.LBB3_32:                               # %cond.false.55
	movq	-48(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB3_33:                               # %cond.end.56
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB3_34:                               # %cond.end.58
	movq	-104(%rbp), %rax        # 8-byte Reload
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	cmpq	$2147483647, -56(%rbp)  # imm = 0x7FFFFFFF
	jle	.LBB3_36
# BB#35:                                # %cond.true.63
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB3_40
.LBB3_36:                               # %cond.false.64
	cmpq	$-2147483648, -56(%rbp) # imm = 0xFFFFFFFF80000000
	jge	.LBB3_38
# BB#37:                                # %cond.true.67
	movq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB3_39
.LBB3_38:                               # %cond.false.68
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
.LBB3_39:                               # %cond.end.69
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB3_40:                               # %cond.end.71
	movq	-120(%rbp), %rax        # 8-byte Reload
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
.LBB3_41:                               # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_display_shell_untransform_xy, .Lfunc_end3-gimp_display_shell_untransform_xy
	.cfi_endproc

	.globl	gimp_display_shell_transform_xy_f
	.align	16, 0x90
	.type	gimp_display_shell_transform_xy_f,@function
gimp_display_shell_transform_xy_f:      # @gimp_display_shell_transform_xy_f
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB4_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB4_8
.LBB4_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB4_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB4_7
.LBB4_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB4_7:                                # %if.end
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB4_10
# BB#9:                                 # %if.then.8
	jmp	.LBB4_11
.LBB4_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_transform_xy_f, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_23
.LBB4_11:                               # %if.end.10
	jmp	.LBB4_12
.LBB4_12:                               # %do.end
	jmp	.LBB4_13
.LBB4_13:                               # %do.body.11
	cmpq	$0, -32(%rbp)
	je	.LBB4_15
# BB#14:                                # %if.then.13
	jmp	.LBB4_16
.LBB4_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_transform_xy_f, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_23
.LBB4_16:                               # %if.end.15
	jmp	.LBB4_17
.LBB4_17:                               # %do.end.16
	jmp	.LBB4_18
.LBB4_18:                               # %do.body.17
	cmpq	$0, -40(%rbp)
	je	.LBB4_20
# BB#19:                                # %if.then.19
	jmp	.LBB4_21
.LBB4_20:                               # %if.else.20
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_transform_xy_f, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB4_23
.LBB4_21:                               # %if.end.21
	jmp	.LBB4_22
.LBB4_22:                               # %do.end.22
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	mulsd	200(%rax), %xmm0
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movq	-8(%rbp), %rax
	subl	188(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	mulsd	208(%rax), %xmm0
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movq	-8(%rbp), %rax
	subl	192(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB4_23:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_display_shell_transform_xy_f, .Lfunc_end4-gimp_display_shell_transform_xy_f
	.cfi_endproc

	.globl	gimp_display_shell_untransform_xy_f
	.align	16, 0x90
	.type	gimp_display_shell_untransform_xy_f,@function
gimp_display_shell_untransform_xy_f:    # @gimp_display_shell_untransform_xy_f
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_untransform_xy_f, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_23
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	cmpq	$0, -32(%rbp)
	je	.LBB5_15
# BB#14:                                # %if.then.13
	jmp	.LBB5_16
.LBB5_15:                               # %if.else.14
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_untransform_xy_f, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_23
.LBB5_16:                               # %if.end.15
	jmp	.LBB5_17
.LBB5_17:                               # %do.end.16
	jmp	.LBB5_18
.LBB5_18:                               # %do.body.17
	cmpq	$0, -40(%rbp)
	je	.LBB5_20
# BB#19:                                # %if.then.19
	jmp	.LBB5_21
.LBB5_20:                               # %if.else.20
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_untransform_xy_f, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_23
.LBB5_21:                               # %if.end.21
	jmp	.LBB5_22
.LBB5_22:                               # %do.end.22
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	cvtsi2sdl	188(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	divsd	200(%rax), %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	cvtsi2sdl	192(%rax), %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	divsd	208(%rax), %xmm0
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB5_23:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_display_shell_untransform_xy_f, .Lfunc_end5-gimp_display_shell_untransform_xy_f
	.cfi_endproc

	.globl	gimp_display_shell_transform_segments
	.align	16, 0x90
	.type	gimp_display_shell_transform_segments,@function
gimp_display_shell_transform_segments:  # @gimp_display_shell_transform_segments
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
	movl	%ecx, -28(%rbp)
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm1, -48(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_transform_segments, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_16
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movl	$0, -52(%rbp)
.LBB6_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB6_16
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB6_13 Depth=1
	movslq	-52(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-16(%rbp), %rax
	cvtsi2sdl	(%rax), %xmm0
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
	movslq	-52(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-16(%rbp), %rax
	cvtsi2sdl	8(%rax), %xmm0
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -96(%rbp)
	movslq	-52(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-16(%rbp), %rax
	cvtsi2sdl	4(%rax), %xmm0
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -104(%rbp)
	movslq	-52(%rbp), %rax
	imulq	$20, %rax, %rax
	addq	-16(%rbp), %rax
	cvtsi2sdl	12(%rax), %xmm0
	addsd	-48(%rbp), %xmm0
	movsd	%xmm0, -112(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	mulsd	200(%rax), %xmm0
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movq	-8(%rbp), %rax
	subl	188(%rax), %ecx
	movslq	-52(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	mulsd	200(%rax), %xmm0
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movq	-8(%rbp), %rax
	subl	188(%rax), %ecx
	movslq	-52(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	movl	%ecx, 8(%rax)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	mulsd	208(%rax), %xmm0
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movq	-8(%rbp), %rax
	subl	192(%rax), %ecx
	movslq	-52(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	movl	%ecx, 4(%rax)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	mulsd	208(%rax), %xmm0
	callq	rint
	cvttsd2si	%xmm0, %ecx
	movq	-8(%rbp), %rax
	subl	192(%rax), %ecx
	movslq	-52(%rbp), %rax
	shlq	$4, %rax
	addq	-24(%rbp), %rax
	movl	%ecx, 12(%rax)
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB6_13 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB6_13
.LBB6_16:                               # %for.end
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_display_shell_transform_segments, .Lfunc_end6-gimp_display_shell_transform_segments
	.cfi_endproc

	.globl	gimp_display_shell_untransform_viewport
	.align	16, 0x90
	.type	gimp_display_shell_untransform_viewport,@function
gimp_display_shell_untransform_viewport: # @gimp_display_shell_untransform_viewport
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_display_shell_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB7_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB7_8
.LBB7_3:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB7_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB7_7
.LBB7_6:                                # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB7_7:                                # %if.end
	jmp	.LBB7_8
.LBB7_8:                                # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB7_10
# BB#9:                                 # %if.then.8
	jmp	.LBB7_11
.LBB7_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_display_shell_untransform_viewport, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_28
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	xorl	%eax, %eax
	leaq	-52(%rbp), %rcx
	leaq	-56(%rbp), %r8
	movq	-8(%rbp), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	movl	%eax, %r9d
	callq	gimp_display_shell_untransform_xy
	leaq	-60(%rbp), %rcx
	leaq	-64(%rbp), %r8
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %r10
	movl	296(%r10), %esi
	movq	-8(%rbp), %r10
	movl	300(%r10), %edx
	callq	gimp_display_shell_untransform_xy
	movq	-8(%rbp), %rcx
	movq	128(%rcx), %rdi
	callq	gimp_display_get_image
	movq	%rax, -48(%rbp)
	cmpl	$0, -52(%rbp)
	jge	.LBB7_14
# BB#13:                                # %if.then.13
	movl	$0, -52(%rbp)
.LBB7_14:                               # %if.end.14
	cmpl	$0, -56(%rbp)
	jge	.LBB7_16
# BB#15:                                # %if.then.16
	movl	$0, -56(%rbp)
.LBB7_16:                               # %if.end.17
	movl	-60(%rbp), %eax
	movq	-48(%rbp), %rdi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gimp_image_get_width
	movl	-92(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB7_18
# BB#17:                                # %if.then.20
	movq	-48(%rbp), %rdi
	callq	gimp_image_get_width
	movl	%eax, -60(%rbp)
.LBB7_18:                               # %if.end.22
	movl	-64(%rbp), %eax
	movq	-48(%rbp), %rdi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	gimp_image_get_height
	movl	-96(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	jle	.LBB7_20
# BB#19:                                # %if.then.25
	movq	-48(%rbp), %rdi
	callq	gimp_image_get_height
	movl	%eax, -64(%rbp)
.LBB7_20:                               # %if.end.27
	cmpq	$0, -16(%rbp)
	je	.LBB7_22
# BB#21:                                # %if.then.29
	movl	-52(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB7_22:                               # %if.end.30
	cmpq	$0, -24(%rbp)
	je	.LBB7_24
# BB#23:                                # %if.then.32
	movl	-56(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB7_24:                               # %if.end.33
	cmpq	$0, -32(%rbp)
	je	.LBB7_26
# BB#25:                                # %if.then.35
	movl	-60(%rbp), %eax
	subl	-52(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB7_26:                               # %if.end.36
	cmpq	$0, -40(%rbp)
	je	.LBB7_28
# BB#27:                                # %if.then.38
	movl	-64(%rbp), %eax
	subl	-56(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB7_28:                               # %if.end.40
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_display_shell_untransform_viewport, .Lfunc_end7-gimp_display_shell_untransform_viewport
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Display"
	.size	.L.str, 13

	.type	.L__func__.gimp_display_shell_transform_coords,@object # @__func__.gimp_display_shell_transform_coords
.L__func__.gimp_display_shell_transform_coords:
	.asciz	"gimp_display_shell_transform_coords"
	.size	.L__func__.gimp_display_shell_transform_coords, 36

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_DISPLAY_SHELL (shell)"
	.size	.L.str.1, 30

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"image_coords != NULL"
	.size	.L.str.2, 21

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"display_coords != NULL"
	.size	.L.str.3, 23

	.type	.L__func__.gimp_display_shell_untransform_coords,@object # @__func__.gimp_display_shell_untransform_coords
.L__func__.gimp_display_shell_untransform_coords:
	.asciz	"gimp_display_shell_untransform_coords"
	.size	.L__func__.gimp_display_shell_untransform_coords, 38

	.type	.L__func__.gimp_display_shell_transform_xy,@object # @__func__.gimp_display_shell_transform_xy
.L__func__.gimp_display_shell_transform_xy:
	.asciz	"gimp_display_shell_transform_xy"
	.size	.L__func__.gimp_display_shell_transform_xy, 32

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"nx != NULL"
	.size	.L.str.4, 11

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"ny != NULL"
	.size	.L.str.5, 11

	.type	.L__func__.gimp_display_shell_untransform_xy,@object # @__func__.gimp_display_shell_untransform_xy
.L__func__.gimp_display_shell_untransform_xy:
	.asciz	"gimp_display_shell_untransform_xy"
	.size	.L__func__.gimp_display_shell_untransform_xy, 34

	.type	.L__func__.gimp_display_shell_transform_xy_f,@object # @__func__.gimp_display_shell_transform_xy_f
.L__func__.gimp_display_shell_transform_xy_f:
	.asciz	"gimp_display_shell_transform_xy_f"
	.size	.L__func__.gimp_display_shell_transform_xy_f, 34

	.type	.L__func__.gimp_display_shell_untransform_xy_f,@object # @__func__.gimp_display_shell_untransform_xy_f
.L__func__.gimp_display_shell_untransform_xy_f:
	.asciz	"gimp_display_shell_untransform_xy_f"
	.size	.L__func__.gimp_display_shell_untransform_xy_f, 36

	.type	.L__func__.gimp_display_shell_transform_segments,@object # @__func__.gimp_display_shell_transform_segments
.L__func__.gimp_display_shell_transform_segments:
	.asciz	"gimp_display_shell_transform_segments"
	.size	.L__func__.gimp_display_shell_transform_segments, 38

	.type	.L__func__.gimp_display_shell_untransform_viewport,@object # @__func__.gimp_display_shell_untransform_viewport
.L__func__.gimp_display_shell_untransform_viewport:
	.asciz	"gimp_display_shell_untransform_viewport"
	.size	.L__func__.gimp_display_shell_untransform_viewport, 40


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
