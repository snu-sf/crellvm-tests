	.text
	.file	"gimpcageconfig.bc"
	.globl	gimp_cage_config_get_type
	.align	16, 0x90
	.type	gimp_cage_config_get_type,@function
gimp_cage_config_get_type:              # @gimp_cage_config_get_type
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
	movq	gimp_cage_config_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_cage_config_get_type.g_define_type_id__volatile, %rax
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
	callq	gimp_image_map_config_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$280, %edx              # imm = 0x118
	movabsq	$gimp_cage_config_class_intern_init, %rdi
	movl	$72, %r8d
	movabsq	$gimp_cage_config_init, %rcx
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
	movabsq	$gimp_cage_config_get_type.g_implement_interface_info, %rdx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_add_interface_static
	movabsq	$gimp_cage_config_get_type.g_define_type_id__volatile, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_cage_config_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_cage_config_get_type, .Lfunc_end0-gimp_cage_config_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cage_config_class_intern_init,@function
gimp_cage_config_class_intern_init:     # @gimp_cage_config_class_intern_init
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
	movq	%rax, gimp_cage_config_parent_class
	cmpl	$0, GimpCageConfig_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpCageConfig_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_cage_config_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_cage_config_class_intern_init, .Lfunc_end1-gimp_cage_config_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cage_config_init,@function
gimp_cage_config_init:                  # @gimp_cage_config_init
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
	movl	$50, %ecx
	movq	%rdi, -8(%rbp)
	movl	%eax, %edi
	movl	%eax, %esi
	callq	g_array_sized_new
	movq	-8(%rbp), %r8
	movq	%rax, 40(%r8)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_cage_config_init, .Lfunc_end2-gimp_cage_config_init
	.cfi_endproc

	.globl	gimp_cage_config_get_n_points
	.align	16, 0x90
	.type	gimp_cage_config_get_n_points,@function
gimp_cage_config_get_n_points:          # @gimp_cage_config_get_n_points
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	movl	8(%rdi), %eax
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_cage_config_get_n_points, .Lfunc_end3-gimp_cage_config_get_n_points
	.cfi_endproc

	.globl	gimp_cage_config_add_cage_point
	.align	16, 0x90
	.type	gimp_cage_config_add_cage_point,@function
gimp_cage_config_add_cage_point:        # @gimp_cage_config_add_cage_point
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
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movl	8(%rax), %esi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_cage_config_insert_cage_point
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_cage_config_add_cage_point, .Lfunc_end4-gimp_cage_config_add_cage_point
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4577096516134976297     # double 0.010309278351
	.text
	.globl	gimp_cage_config_insert_cage_point
	.align	16, 0x90
	.type	gimp_cage_config_insert_cage_point,@function
gimp_cage_config_insert_cage_point:     # @gimp_cage_config_insert_cage_point
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)
	callq	gimp_cage_config_get_type
	movq	%rax, -112(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	movl	$0, -116(%rbp)
	jmp	.LBB5_8
.LBB5_3:                                # %if.else
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_6
# BB#4:                                 # %land.lhs.true
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3
	movl	$1, -116(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else.4
	movq	-104(%rbp), %rdi
	movq	-112(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -116(%rbp)
.LBB5_7:                                # %if.end
	jmp	.LBB5_8
.LBB5_8:                                # %if.end.6
	movl	-116(%rbp), %eax
	movl	%eax, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.8
	jmp	.LBB5_11
.LBB5_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_cage_config_insert_cage_point, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_23
.LBB5_11:                               # %if.end.10
	jmp	.LBB5_12
.LBB5_12:                               # %do.end
	jmp	.LBB5_13
.LBB5_13:                               # %do.body.11
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rcx
	cmpl	8(%rcx), %eax
	ja	.LBB5_15
# BB#14:                                # %if.then.13
	jmp	.LBB5_16
.LBB5_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_cage_config_insert_cage_point, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_23
.LBB5_16:                               # %if.end.15
	jmp	.LBB5_17
.LBB5_17:                               # %do.end.16
	jmp	.LBB5_18
.LBB5_18:                               # %do.body.17
	cmpl	$0, -12(%rbp)
	jl	.LBB5_20
# BB#19:                                # %if.then.19
	jmp	.LBB5_21
.LBB5_20:                               # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_cage_config_insert_cage_point, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_23
.LBB5_21:                               # %if.end.21
	jmp	.LBB5_22
.LBB5_22:                               # %do.end.22
	movl	$1, %ecx
	leaq	-96(%rbp), %rax
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movaps	%xmm0, %xmm1
	addsd	-24(%rbp), %xmm1
	movsd	%xmm1, -96(%rbp)
	movaps	%xmm0, %xmm1
	addsd	-32(%rbp), %xmm1
	movsd	%xmm1, -88(%rbp)
	movaps	%xmm0, %xmm1
	addsd	-24(%rbp), %xmm1
	movsd	%xmm1, -80(%rbp)
	addsd	-32(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdi
	movl	-12(%rbp), %esi
	movq	%rax, %rdx
	callq	g_array_insert_vals
	movq	-8(%rbp), %rdi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gimp_cage_config_compute_scaling_factor
	movq	-8(%rbp), %rdi
	callq	gimp_cage_config_compute_edges_normal
.LBB5_23:                               # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_cage_config_insert_cage_point, .Lfunc_end5-gimp_cage_config_insert_cage_point
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cage_config_compute_scaling_factor,@function
gimp_cage_config_compute_scaling_factor: # @gimp_cage_config_compute_scaling_factor
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)
	callq	gimp_cage_config_get_type
	movq	%rax, -80(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB6_3
# BB#2:                                 # %if.then
	movl	$0, -84(%rbp)
	jmp	.LBB6_8
.LBB6_3:                                # %if.else
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB6_6
# BB#4:                                 # %land.lhs.true
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-80(%rbp), %rax
	jne	.LBB6_6
# BB#5:                                 # %if.then.3
	movl	$1, -84(%rbp)
	jmp	.LBB6_7
.LBB6_6:                                # %if.else.4
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -84(%rbp)
.LBB6_7:                                # %if.end
	jmp	.LBB6_8
.LBB6_8:                                # %if.end.6
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB6_10
# BB#9:                                 # %if.then.8
	jmp	.LBB6_11
.LBB6_10:                               # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_cage_config_compute_scaling_factor, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_18
.LBB6_11:                               # %if.end.10
	jmp	.LBB6_12
.LBB6_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	cmpl	$2, 8(%rax)
	jae	.LBB6_14
# BB#13:                                # %if.then.12
	jmp	.LBB6_18
.LBB6_14:                               # %if.end.13
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movl	$1, -44(%rbp)
.LBB6_15:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rcx
	cmpl	8(%rcx), %eax
	ja	.LBB6_18
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB6_15 Depth=1
	leaq	-24(%rbp), %rdi
	movl	-44(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rcx
	xorl	%edx, %edx
	divl	8(%rcx)
	movl	%edx, %edx
	movl	%edx, %ecx
	movq	-8(%rbp), %rsi
	movq	40(%rsi), %rsi
	movq	(%rsi), %rsi
	shlq	$6, %rcx
	addq	%rcx, %rsi
	movq	%rsi, -56(%rbp)
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	gimp_vector2_sub
	leaq	-24(%rbp), %rdi
	callq	gimp_vector2_length
	leaq	-24(%rbp), %rdi
	movsd	%xmm0, -32(%rbp)
	movq	-64(%rbp), %rcx
	addq	$16, %rcx
	movq	-56(%rbp), %rdx
	addq	$16, %rdx
	movq	%rcx, %rsi
	callq	gimp_vector2_sub
	leaq	-24(%rbp), %rdi
	callq	gimp_vector2_length
	movsd	%xmm0, -40(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	divsd	-32(%rbp), %xmm0
	movq	-64(%rbp), %rcx
	movsd	%xmm0, 48(%rcx)
	movq	-56(%rbp), %rcx
	movq	%rcx, -64(%rbp)
# BB#17:                                # %for.inc
                                        #   in Loop: Header=BB6_15 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB6_15
.LBB6_18:                               # %for.end
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_cage_config_compute_scaling_factor, .Lfunc_end6-gimp_cage_config_compute_scaling_factor
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cage_config_compute_edges_normal,@function
gimp_cage_config_compute_edges_normal:  # @gimp_cage_config_compute_edges_normal
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_cage_config_get_type
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
	movabsq	$.L__func__.gimp_cage_config_compute_edges_normal, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_16
.LBB7_11:                               # %if.end.10
	jmp	.LBB7_12
.LBB7_12:                               # %do.end
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	$1, -28(%rbp)
.LBB7_13:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rcx
	cmpl	8(%rcx), %eax
	ja	.LBB7_16
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB7_13 Depth=1
	leaq	-24(%rbp), %rdi
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rcx
	xorl	%edx, %edx
	divl	8(%rcx)
	movl	%edx, %edx
	movl	%edx, %ecx
	movq	-8(%rbp), %rsi
	movq	40(%rsi), %rsi
	movq	(%rsi), %rsi
	shlq	$6, %rcx
	addq	%rcx, %rsi
	movq	%rsi, -40(%rbp)
	movq	-40(%rbp), %rcx
	addq	$16, %rcx
	movq	-48(%rbp), %rsi
	addq	$16, %rsi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-96(%rbp), %rdx         # 8-byte Reload
	callq	gimp_vector2_sub
	leaq	-24(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	callq	gimp_vector2_normal
	movsd	%xmm0, -88(%rbp)
	movsd	%xmm1, -80(%rbp)
	movq	-88(%rbp), %rcx
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movq	%rcx, 32(%rdx)
	movq	-80(%rbp), %rcx
	movq	%rcx, 40(%rdx)
	movq	-40(%rbp), %rcx
	movq	%rcx, -48(%rbp)
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB7_13 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB7_13
.LBB7_16:                               # %for.end
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_cage_config_compute_edges_normal, .Lfunc_end7-gimp_cage_config_compute_edges_normal
	.cfi_endproc

	.globl	gimp_cage_config_remove_last_cage_point
	.align	16, 0x90
	.type	gimp_cage_config_remove_last_cage_point,@function
gimp_cage_config_remove_last_cage_point: # @gimp_cage_config_remove_last_cage_point
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movl	8(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %esi
	callq	gimp_cage_config_remove_cage_point
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_cage_config_remove_last_cage_point, .Lfunc_end8-gimp_cage_config_remove_last_cage_point
	.cfi_endproc

	.globl	gimp_cage_config_remove_cage_point
	.align	16, 0x90
	.type	gimp_cage_config_remove_cage_point,@function
gimp_cage_config_remove_cage_point:     # @gimp_cage_config_remove_cage_point
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
	callq	gimp_cage_config_get_type
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
	movabsq	$.L__func__.gimp_cage_config_remove_cage_point, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_25
.LBB9_11:                               # %if.end.10
	jmp	.LBB9_12
.LBB9_12:                               # %do.end
	jmp	.LBB9_13
.LBB9_13:                               # %do.body.11
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB9_15
# BB#14:                                # %if.then.13
	jmp	.LBB9_16
.LBB9_15:                               # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_cage_config_remove_cage_point, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_25
.LBB9_16:                               # %if.end.15
	jmp	.LBB9_17
.LBB9_17:                               # %do.end.16
	jmp	.LBB9_18
.LBB9_18:                               # %do.body.17
	cmpl	$0, -12(%rbp)
	jl	.LBB9_20
# BB#19:                                # %if.then.19
	jmp	.LBB9_21
.LBB9_20:                               # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_cage_config_remove_cage_point, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_25
.LBB9_21:                               # %if.end.21
	jmp	.LBB9_22
.LBB9_22:                               # %do.end.22
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	cmpl	$0, 8(%rax)
	jbe	.LBB9_24
# BB#23:                                # %if.then.26
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movl	8(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %esi
	callq	g_array_remove_index
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB9_24:                               # %if.end.31
	movq	-8(%rbp), %rdi
	callq	gimp_cage_config_compute_scaling_factor
	movq	-8(%rbp), %rdi
	callq	gimp_cage_config_compute_edges_normal
.LBB9_25:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_cage_config_remove_cage_point, .Lfunc_end9-gimp_cage_config_remove_cage_point
	.cfi_endproc

	.globl	gimp_cage_config_remove_selected_points
	.align	16, 0x90
	.type	gimp_cage_config_remove_selected_points,@function
gimp_cage_config_remove_selected_points: # @gimp_cage_config_remove_selected_points
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_cage_config_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB10_8
.LBB10_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB10_7
.LBB10_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB10_7:                               # %if.end
	jmp	.LBB10_8
.LBB10_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB10_10
# BB#9:                                 # %if.then.8
	jmp	.LBB10_11
.LBB10_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_cage_config_remove_selected_points, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB10_19
.LBB10_11:                              # %if.end.10
	jmp	.LBB10_12
.LBB10_12:                              # %do.end
	movl	$0, -12(%rbp)
.LBB10_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB10_18
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB10_13 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	(%rcx), %rcx
	shlq	$6, %rax
	addq	%rax, %rcx
	movq	%rcx, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB10_16
# BB#15:                                # %if.then.14
                                        #   in Loop: Header=BB10_13 Depth=1
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	movl	-12(%rbp), %esi
	callq	g_array_remove_index
	movl	-12(%rbp), %esi
	addl	$-1, %esi
	movl	%esi, -12(%rbp)
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB10_16:                              # %if.end.17
                                        #   in Loop: Header=BB10_13 Depth=1
	jmp	.LBB10_17
.LBB10_17:                              # %for.inc
                                        #   in Loop: Header=BB10_13 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB10_13
.LBB10_18:                              # %for.end
	movq	-8(%rbp), %rdi
	callq	gimp_cage_config_compute_scaling_factor
	movq	-8(%rbp), %rdi
	callq	gimp_cage_config_compute_edges_normal
.LBB10_19:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_cage_config_remove_selected_points, .Lfunc_end10-gimp_cage_config_remove_selected_points
	.cfi_endproc

	.globl	gimp_cage_config_get_point_coordinate
	.align	16, 0x90
	.type	gimp_cage_config_get_point_coordinate,@function
gimp_cage_config_get_point_coordinate:  # @gimp_cage_config_get_point_coordinate
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movl	$16, %ecx
	movl	%ecx, %r8d
	leaq	-48(%rbp), %r9
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	%r9, %rdi
	movl	%eax, %esi
	movq	%r8, %rdx
	callq	memset
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_cage_config_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB11_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB11_8
.LBB11_3:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB11_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB11_10
# BB#9:                                 # %if.then.8
	jmp	.LBB11_11
.LBB11_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_cage_config_get_point_coordinate, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	-48(%rbp), %rdx
	movq	%rdx, -16(%rbp)
	movq	-40(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	jmp	.LBB11_32
.LBB11_11:                              # %if.end.10
	jmp	.LBB11_12
.LBB11_12:                              # %do.end
	jmp	.LBB11_13
.LBB11_13:                              # %do.body.11
	movl	-32(%rbp), %eax
	movq	-24(%rbp), %rcx
	movq	40(%rcx), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB11_15
# BB#14:                                # %if.then.13
	jmp	.LBB11_16
.LBB11_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_cage_config_get_point_coordinate, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movq	-48(%rbp), %rdx
	movq	%rdx, -16(%rbp)
	movq	-40(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	jmp	.LBB11_32
.LBB11_16:                              # %if.end.15
	jmp	.LBB11_17
.LBB11_17:                              # %do.end.16
	jmp	.LBB11_18
.LBB11_18:                              # %do.body.17
	cmpl	$0, -32(%rbp)
	jl	.LBB11_20
# BB#19:                                # %if.then.19
	jmp	.LBB11_21
.LBB11_20:                              # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_cage_config_get_point_coordinate, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	-48(%rbp), %rdx
	movq	%rdx, -16(%rbp)
	movq	-40(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	jmp	.LBB11_32
.LBB11_21:                              # %if.end.21
	jmp	.LBB11_22
.LBB11_22:                              # %do.end.22
	movslq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	(%rcx), %rcx
	shlq	$6, %rax
	addq	%rax, %rcx
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB11_27
# BB#23:                                # %if.then.25
	cmpl	$0, -28(%rbp)
	jne	.LBB11_25
# BB#24:                                # %if.then.27
	movq	-56(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	addsd	48(%rax), %xmm0
	movsd	%xmm0, -48(%rbp)
	movq	-56(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	addsd	56(%rax), %xmm0
	movsd	%xmm0, -40(%rbp)
	jmp	.LBB11_26
.LBB11_25:                              # %if.else.32
	movq	-56(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	addsd	48(%rax), %xmm0
	movsd	%xmm0, -48(%rbp)
	movq	-56(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	addsd	56(%rax), %xmm0
	movsd	%xmm0, -40(%rbp)
.LBB11_26:                              # %if.end.42
	jmp	.LBB11_31
.LBB11_27:                              # %if.else.43
	cmpl	$0, -28(%rbp)
	jne	.LBB11_29
# BB#28:                                # %if.then.45
	movq	-56(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movq	-56(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	jmp	.LBB11_30
.LBB11_29:                              # %if.else.52
	movq	-56(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movq	-56(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
.LBB11_30:                              # %if.end.59
	jmp	.LBB11_31
.LBB11_31:                              # %if.end.60
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB11_32:                              # %return
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_cage_config_get_point_coordinate, .Lfunc_end11-gimp_cage_config_get_point_coordinate
	.cfi_endproc

	.globl	gimp_cage_config_add_displacement
	.align	16, 0x90
	.type	gimp_cage_config_add_displacement,@function
gimp_cage_config_add_displacement:      # @gimp_cage_config_add_displacement
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_cage_config_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB12_8
.LBB12_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB12_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB12_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB12_7:                               # %if.end
	jmp	.LBB12_8
.LBB12_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB12_10
# BB#9:                                 # %if.then.8
	jmp	.LBB12_11
.LBB12_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_cage_config_add_displacement, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB12_13
.LBB12_11:                              # %if.end.10
	jmp	.LBB12_12
.LBB12_12:                              # %do.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 64(%rcx)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rcx
	movsd	%xmm0, 48(%rcx)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rcx
	movsd	%xmm0, 56(%rcx)
.LBB12_13:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_cage_config_add_displacement, .Lfunc_end12-gimp_cage_config_add_displacement
	.cfi_endproc

	.globl	gimp_cage_config_commit_displacement
	.align	16, 0x90
	.type	gimp_cage_config_commit_displacement,@function
gimp_cage_config_commit_displacement:   # @gimp_cage_config_commit_displacement
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
	callq	gimp_cage_config_get_type
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
	movabsq	$.L__func__.gimp_cage_config_commit_displacement, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_22
.LBB13_11:                              # %if.end.10
	jmp	.LBB13_12
.LBB13_12:                              # %do.end
	movl	$0, -12(%rbp)
.LBB13_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB13_21
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB13_13 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	(%rcx), %rcx
	shlq	$6, %rax
	addq	%rax, %rcx
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB13_19
# BB#15:                                # %if.then.15
                                        #   in Loop: Header=BB13_13 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$0, 64(%rax)
	jne	.LBB13_17
# BB#16:                                # %if.then.17
                                        #   in Loop: Header=BB13_13 Depth=1
	movq	-8(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	addsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	addsd	8(%rax), %xmm0
	movsd	%xmm0, 8(%rax)
	movq	-8(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	addsd	16(%rax), %xmm0
	movsd	%xmm0, 16(%rax)
	movq	-8(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	addsd	24(%rax), %xmm0
	movsd	%xmm0, 24(%rax)
	jmp	.LBB13_18
.LBB13_17:                              # %if.else.27
                                        #   in Loop: Header=BB13_13 Depth=1
	movq	-8(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	addsd	16(%rax), %xmm0
	movsd	%xmm0, 16(%rax)
	movq	-8(%rbp), %rax
	movsd	56(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	addsd	24(%rax), %xmm0
	movsd	%xmm0, 24(%rax)
.LBB13_18:                              # %if.end.36
                                        #   in Loop: Header=BB13_13 Depth=1
	jmp	.LBB13_19
.LBB13_19:                              # %if.end.37
                                        #   in Loop: Header=BB13_13 Depth=1
	jmp	.LBB13_20
.LBB13_20:                              # %for.inc
                                        #   in Loop: Header=BB13_13 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB13_13
.LBB13_21:                              # %for.end
	movq	-8(%rbp), %rdi
	callq	gimp_cage_config_compute_scaling_factor
	movq	-8(%rbp), %rdi
	callq	gimp_cage_config_compute_edges_normal
	movq	-8(%rbp), %rdi
	callq	gimp_cage_config_reset_displacement
.LBB13_22:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_cage_config_commit_displacement, .Lfunc_end13-gimp_cage_config_commit_displacement
	.cfi_endproc

	.globl	gimp_cage_config_reset_displacement
	.align	16, 0x90
	.type	gimp_cage_config_reset_displacement,@function
gimp_cage_config_reset_displacement:    # @gimp_cage_config_reset_displacement
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_cage_config_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB14_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB14_8
.LBB14_3:                               # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB14_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB14_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB14_7:                               # %if.end
	jmp	.LBB14_8
.LBB14_8:                               # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB14_10
# BB#9:                                 # %if.then.8
	jmp	.LBB14_11
.LBB14_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_cage_config_reset_displacement, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_13
.LBB14_11:                              # %if.end.10
	jmp	.LBB14_12
.LBB14_12:                              # %do.end
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, 48(%rax)
	movq	-8(%rbp), %rax
	movsd	%xmm0, 56(%rax)
.LBB14_13:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_cage_config_reset_displacement, .Lfunc_end14-gimp_cage_config_reset_displacement
	.cfi_endproc

	.globl	gimp_cage_config_get_bounding_box
	.align	16, 0x90
	.type	gimp_cage_config_get_bounding_box,@function
gimp_cage_config_get_bounding_box:      # @gimp_cage_config_get_bounding_box
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
	subq	$96, %rsp
	xorl	%esi, %esi
	movl	$16, %eax
	movl	%eax, %edx
	leaq	-40(%rbp), %rcx
	movq	%rdi, -24(%rbp)
	movq	%rcx, %rdi
	callq	memset
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_cage_config_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB15_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB15_8
.LBB15_3:                               # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB15_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB15_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB15_7:                               # %if.end
	jmp	.LBB15_8
.LBB15_8:                               # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB15_10
# BB#9:                                 # %if.then.8
	jmp	.LBB15_11
.LBB15_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_cage_config_get_bounding_box, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	-40(%rbp), %rdx
	movq	%rdx, -16(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	jmp	.LBB15_38
.LBB15_11:                              # %if.end.10
	jmp	.LBB15_12
.LBB15_12:                              # %do.end
	jmp	.LBB15_13
.LBB15_13:                              # %do.body.11
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	cmpl	$0, 8(%rax)
	jb	.LBB15_15
# BB#14:                                # %if.then.13
	jmp	.LBB15_16
.LBB15_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_cage_config_get_bounding_box, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	movq	-40(%rbp), %rdx
	movq	%rdx, -16(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	jmp	.LBB15_38
.LBB15_16:                              # %if.end.15
	jmp	.LBB15_17
.LBB15_17:                              # %do.end.16
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB15_19
# BB#18:                                # %if.then.20
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB15_38
.LBB15_19:                              # %if.end.21
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB15_21
# BB#20:                                # %if.then.24
	movq	-56(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	addsd	48(%rax), %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -40(%rbp)
	movq	-56(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	addsd	56(%rax), %xmm0
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -36(%rbp)
	jmp	.LBB15_22
.LBB15_21:                              # %if.else.30
	movq	-56(%rbp), %rax
	cvttsd2si	(%rax), %ecx
	movl	%ecx, -40(%rbp)
	movq	-56(%rbp), %rax
	cvttsd2si	8(%rax), %ecx
	movl	%ecx, -36(%rbp)
.LBB15_22:                              # %if.end.39
	movl	$1, -44(%rbp)
.LBB15_23:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movq	-24(%rbp), %rcx
	movq	40(%rcx), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB15_37
# BB#24:                                # %for.body
                                        #   in Loop: Header=BB15_23 Depth=1
	movslq	-44(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	(%rcx), %rcx
	shlq	$6, %rax
	addq	%rax, %rcx
	movq	%rcx, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB15_26
# BB#25:                                # %if.then.53
                                        #   in Loop: Header=BB15_23 Depth=1
	movq	-56(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	addsd	48(%rax), %xmm0
	movsd	%xmm0, -88(%rbp)
	movq	-56(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	addsd	56(%rax), %xmm0
	movsd	%xmm0, -96(%rbp)
	jmp	.LBB15_27
.LBB15_26:                              # %if.else.62
                                        #   in Loop: Header=BB15_23 Depth=1
	movq	-56(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
	movq	-56(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)
.LBB15_27:                              # %if.end.67
                                        #   in Loop: Header=BB15_23 Depth=1
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-40(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB15_29
# BB#28:                                # %if.then.72
                                        #   in Loop: Header=BB15_23 Depth=1
	cvtsi2sdl	-40(%rbp), %xmm0
	subsd	-88(%rbp), %xmm0
	cvtsi2sdl	-32(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -32(%rbp)
	cvttsd2si	-88(%rbp), %eax
	movl	%eax, -40(%rbp)
.LBB15_29:                              # %if.end.80
                                        #   in Loop: Header=BB15_23 Depth=1
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-36(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB15_31
# BB#30:                                # %if.then.85
                                        #   in Loop: Header=BB15_23 Depth=1
	cvtsi2sdl	-36(%rbp), %xmm0
	subsd	-96(%rbp), %xmm0
	cvtsi2sdl	-28(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, -28(%rbp)
	cvttsd2si	-96(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB15_31:                              # %if.end.94
                                        #   in Loop: Header=BB15_23 Depth=1
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-40(%rbp), %eax
	addl	-32(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB15_33
# BB#32:                                # %if.then.101
                                        #   in Loop: Header=BB15_23 Depth=1
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-40(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -32(%rbp)
.LBB15_33:                              # %if.end.107
                                        #   in Loop: Header=BB15_23 Depth=1
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-36(%rbp), %eax
	addl	-28(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB15_35
# BB#34:                                # %if.then.114
                                        #   in Loop: Header=BB15_23 Depth=1
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-36(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -28(%rbp)
.LBB15_35:                              # %if.end.120
                                        #   in Loop: Header=BB15_23 Depth=1
	jmp	.LBB15_36
.LBB15_36:                              # %for.inc
                                        #   in Loop: Header=BB15_23 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB15_23
.LBB15_37:                              # %for.end
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB15_38:                              # %return
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_cage_config_get_bounding_box, .Lfunc_end15-gimp_cage_config_get_bounding_box
	.cfi_endproc

	.globl	gimp_cage_config_reverse_cage
	.align	16, 0x90
	.type	gimp_cage_config_reverse_cage,@function
gimp_cage_config_reverse_cage:          # @gimp_cage_config_reverse_cage
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_cage_config_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB16_3
# BB#2:                                 # %if.then
	movl	$0, -100(%rbp)
	jmp	.LBB16_8
.LBB16_3:                               # %if.else
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB16_6
# BB#4:                                 # %land.lhs.true
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB16_6
# BB#5:                                 # %if.then.3
	movl	$1, -100(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.else.4
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB16_7:                               # %if.end
	jmp	.LBB16_8
.LBB16_8:                               # %if.end.6
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB16_10
# BB#9:                                 # %if.then.8
	jmp	.LBB16_11
.LBB16_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_cage_config_reverse_cage, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB16_17
.LBB16_11:                              # %if.end.10
	jmp	.LBB16_12
.LBB16_12:                              # %do.end
	movl	$0, -76(%rbp)
.LBB16_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rcx
	movl	8(%rcx), %edx
	shrl	$1, %edx
	cmpl	%edx, %eax
	jae	.LBB16_16
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB16_13 Depth=1
	movl	$64, %eax
	movl	%eax, %ecx
	leaq	-72(%rbp), %rdx
	movslq	-76(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	(%rdi), %rdi
	shlq	$6, %rsi
	addq	%rsi, %rdi
	movq	%rdx, %rsi
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	%rcx, %rdx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	callq	memcpy
	movslq	-76(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	(%rdx), %rdx
	shlq	$6, %rcx
	addq	%rcx, %rdx
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rcx
	movl	8(%rcx), %eax
	subl	-76(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rsi
	movq	40(%rsi), %rsi
	movq	(%rsi), %rsi
	shlq	$6, %rcx
	addq	%rcx, %rsi
	movq	%rdx, %rdi
	movq	-128(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rcx
	movl	8(%rcx), %eax
	subl	-76(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	(%rdx), %rdx
	shlq	$6, %rcx
	addq	%rcx, %rdx
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movq	-128(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB16_13 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB16_13
.LBB16_16:                              # %for.end
	movq	-8(%rbp), %rdi
	callq	gimp_cage_config_compute_scaling_factor
	movq	-8(%rbp), %rdi
	callq	gimp_cage_config_compute_edges_normal
.LBB16_17:                              # %return
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_cage_config_reverse_cage, .Lfunc_end16-gimp_cage_config_reverse_cage
	.cfi_endproc

	.globl	gimp_cage_config_reverse_cage_if_needed
	.align	16, 0x90
	.type	gimp_cage_config_reverse_cage_if_needed,@function
gimp_cage_config_reverse_cage_if_needed: # @gimp_cage_config_reverse_cage_if_needed
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	callq	gimp_cage_config_get_type
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
	movabsq	$.L__func__.gimp_cage_config_reverse_cage_if_needed, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB17_18
.LBB17_11:                              # %if.end.10
	jmp	.LBB17_12
.LBB17_12:                              # %do.end
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	movl	$0, -12(%rbp)
.LBB17_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB17_16
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB17_13 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	(%rcx), %rcx
	shlq	$6, %rax
	addq	%rax, %rcx
	movq	(%rcx), %rax
	movq	%rax, -64(%rbp)
	movq	8(%rcx), %rax
	movq	%rax, -56(%rbp)
	movl	-12(%rbp), %edx
	addl	$1, %edx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movl	%edx, %eax
	xorl	%edx, %edx
	movq	-112(%rbp), %rcx        # 8-byte Reload
	divl	8(%rcx)
	movl	%edx, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	(%rdi), %rdi
	shlq	$6, %rsi
	addq	%rsi, %rdi
	movq	(%rdi), %rsi
	movq	%rsi, -80(%rbp)
	movq	8(%rdi), %rsi
	movq	%rsi, -72(%rbp)
	movl	-12(%rbp), %edx
	addl	$2, %edx
	movq	-8(%rbp), %rsi
	movq	40(%rsi), %rsi
	movl	%edx, %eax
	xorl	%edx, %edx
	divl	8(%rsi)
	movl	%edx, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	(%rdi), %rdi
	shlq	$6, %rsi
	addq	%rsi, %rdi
	movq	(%rdi), %rsi
	movq	%rsi, -96(%rbp)
	movq	8(%rdi), %rsi
	movq	%rsi, -88(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-88(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-56(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	-96(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-72(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -104(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-24(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB17_13 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB17_13
.LBB17_16:                              # %for.end
	xorps	%xmm0, %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB17_18
# BB#17:                                # %if.then.48
	movq	-8(%rbp), %rdi
	callq	gimp_cage_config_reverse_cage
.LBB17_18:                              # %if.end.49
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_cage_config_reverse_cage_if_needed, .Lfunc_end17-gimp_cage_config_reverse_cage_if_needed
	.cfi_endproc

	.globl	gimp_cage_config_point_inside
	.align	16, 0x90
	.type	gimp_cage_config_point_inside,@function
gimp_cage_config_point_inside:          # @gimp_cage_config_point_inside
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movss	%xmm0, -20(%rbp)
	movss	%xmm1, -24(%rbp)
	movl	$0, -44(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	callq	gimp_cage_config_get_type
	movq	%rax, -64(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB18_3
# BB#2:                                 # %if.then
	movl	$0, -68(%rbp)
	jmp	.LBB18_8
.LBB18_3:                               # %if.else
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB18_6
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB18_6
# BB#5:                                 # %if.then.3
	movl	$1, -68(%rbp)
	jmp	.LBB18_7
.LBB18_6:                               # %if.else.4
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -68(%rbp)
.LBB18_7:                               # %if.end
	jmp	.LBB18_8
.LBB18_8:                               # %if.end.6
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
	cmpl	$0, -72(%rbp)
	je	.LBB18_10
# BB#9:                                 # %if.then.8
	jmp	.LBB18_11
.LBB18_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_cage_config_point_inside, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB18_23
.LBB18_11:                              # %if.end.10
	jmp	.LBB18_12
.LBB18_12:                              # %do.end
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movl	8(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-16(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	(%rdx), %rdx
	shlq	$6, %rax
	addq	%rax, %rdx
	movq	%rdx, -32(%rbp)
	movl	$0, -48(%rbp)
.LBB18_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB18_22
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB18_13 Depth=1
	movslq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	(%rcx), %rcx
	shlq	$6, %rax
	addq	%rax, %rcx
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	cvtss2sd	-24(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jb	.LBB18_16
# BB#15:                                # %land.lhs.true.23
                                        #   in Loop: Header=BB18_13 Depth=1
	cvtss2sd	-24(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB18_18
.LBB18_16:                              # %lor.lhs.false
                                        #   in Loop: Header=BB18_13 Depth=1
	movq	-32(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	cvtss2sd	-24(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jb	.LBB18_20
# BB#17:                                # %land.lhs.true.32
                                        #   in Loop: Header=BB18_13 Depth=1
	cvtss2sd	-24(%rbp), %xmm0
	movq	-40(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB18_20
.LBB18_18:                              # %land.lhs.true.37
                                        #   in Loop: Header=BB18_13 Depth=1
	cvtss2sd	-20(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	(%rax), %xmm1
	cvtss2sd	-24(%rbp), %xmm2
	movq	-40(%rbp), %rax
	subsd	8(%rax), %xmm2
	mulsd	%xmm2, %xmm1
	movq	-32(%rbp), %rax
	movsd	8(%rax), %xmm2          # xmm2 = mem[0],zero
	movq	-40(%rbp), %rax
	subsd	8(%rax), %xmm2
	divsd	%xmm2, %xmm1
	movq	-40(%rbp), %rax
	addsd	(%rax), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB18_20
# BB#19:                                # %if.then.51
                                        #   in Loop: Header=BB18_13 Depth=1
	cmpl	$0, -44(%rbp)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -44(%rbp)
.LBB18_20:                              # %if.end.53
                                        #   in Loop: Header=BB18_13 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
# BB#21:                                # %for.inc
                                        #   in Loop: Header=BB18_13 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB18_13
.LBB18_22:                              # %for.end
	movl	-44(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB18_23:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_cage_config_point_inside, .Lfunc_end18-gimp_cage_config_point_inside
	.cfi_endproc

	.globl	gimp_cage_config_select_point
	.align	16, 0x90
	.type	gimp_cage_config_select_point,@function
gimp_cage_config_select_point:          # @gimp_cage_config_select_point
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
	movq	%rax, -32(%rbp)
	callq	gimp_cage_config_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB19_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB19_8
.LBB19_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB19_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB19_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB19_7
.LBB19_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB19_7:                               # %if.end
	jmp	.LBB19_8
.LBB19_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB19_10
# BB#9:                                 # %if.then.8
	jmp	.LBB19_11
.LBB19_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_cage_config_select_point, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB19_29
.LBB19_11:                              # %if.end.10
	jmp	.LBB19_12
.LBB19_12:                              # %do.end
	jmp	.LBB19_13
.LBB19_13:                              # %do.body.11
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB19_15
# BB#14:                                # %if.then.13
	jmp	.LBB19_16
.LBB19_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_cage_config_select_point, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB19_29
.LBB19_16:                              # %if.end.15
	jmp	.LBB19_17
.LBB19_17:                              # %do.end.16
	jmp	.LBB19_18
.LBB19_18:                              # %do.body.17
	cmpl	$0, -12(%rbp)
	jl	.LBB19_20
# BB#19:                                # %if.then.19
	jmp	.LBB19_21
.LBB19_20:                              # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_cage_config_select_point, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB19_29
.LBB19_21:                              # %if.end.21
	jmp	.LBB19_22
.LBB19_22:                              # %do.end.22
	movl	$0, -16(%rbp)
.LBB19_23:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB19_29
# BB#24:                                # %for.body
                                        #   in Loop: Header=BB19_23 Depth=1
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	(%rcx), %rcx
	shlq	$6, %rax
	addq	%rax, %rcx
	movq	%rcx, -24(%rbp)
	movl	-16(%rbp), %edx
	cmpl	-12(%rbp), %edx
	jne	.LBB19_26
# BB#25:                                # %if.then.28
                                        #   in Loop: Header=BB19_23 Depth=1
	movq	-24(%rbp), %rax
	movl	$1, 56(%rax)
	jmp	.LBB19_27
.LBB19_26:                              # %if.else.29
                                        #   in Loop: Header=BB19_23 Depth=1
	movq	-24(%rbp), %rax
	movl	$0, 56(%rax)
.LBB19_27:                              # %if.end.31
                                        #   in Loop: Header=BB19_23 Depth=1
	jmp	.LBB19_28
.LBB19_28:                              # %for.inc
                                        #   in Loop: Header=BB19_23 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB19_23
.LBB19_29:                              # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_cage_config_select_point, .Lfunc_end19-gimp_cage_config_select_point
	.cfi_endproc

	.globl	gimp_cage_config_select_area
	.align	16, 0x90
	.type	gimp_cage_config_select_area,@function
gimp_cage_config_select_area:           # @gimp_cage_config_select_area
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
	subq	$64, %rsp
	movq	%rdx, -16(%rbp)
	movq	%rcx, -8(%rbp)
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_cage_config_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB20_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB20_8
.LBB20_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB20_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB20_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB20_7
.LBB20_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB20_7:                               # %if.end
	jmp	.LBB20_8
.LBB20_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB20_10
# BB#9:                                 # %if.then.8
	jmp	.LBB20_11
.LBB20_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_cage_config_select_area, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB20_13
.LBB20_11:                              # %if.end.10
	jmp	.LBB20_12
.LBB20_12:                              # %do.end
	movq	-24(%rbp), %rdi
	callq	gimp_cage_config_deselect_points
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rcx
	callq	gimp_cage_config_select_add_area
.LBB20_13:                              # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_cage_config_select_area, .Lfunc_end20-gimp_cage_config_select_area
	.cfi_endproc

	.globl	gimp_cage_config_deselect_points
	.align	16, 0x90
	.type	gimp_cage_config_deselect_points,@function
gimp_cage_config_deselect_points:       # @gimp_cage_config_deselect_points
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
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	callq	gimp_cage_config_get_type
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
	movabsq	$.L__func__.gimp_cage_config_deselect_points, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB21_16
.LBB21_11:                              # %if.end.10
	jmp	.LBB21_12
.LBB21_12:                              # %do.end
	movl	$0, -12(%rbp)
.LBB21_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB21_16
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB21_13 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	(%rcx), %rcx
	shlq	$6, %rax
	addq	%rax, %rcx
	movl	$0, 56(%rcx)
# BB#15:                                # %for.inc
                                        #   in Loop: Header=BB21_13 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB21_13
.LBB21_16:                              # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_cage_config_deselect_points, .Lfunc_end21-gimp_cage_config_deselect_points
	.cfi_endproc

	.globl	gimp_cage_config_select_add_area
	.align	16, 0x90
	.type	gimp_cage_config_select_add_area,@function
gimp_cage_config_select_add_area:       # @gimp_cage_config_select_add_area
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
	movq	%rdx, -16(%rbp)
	movq	%rcx, -8(%rbp)
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
# BB#1:                                 # %do.body
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	callq	gimp_cage_config_get_type
	movq	%rax, -56(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB22_3
# BB#2:                                 # %if.then
	movl	$0, -60(%rbp)
	jmp	.LBB22_8
.LBB22_3:                               # %if.else
	movq	-48(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB22_6
# BB#4:                                 # %land.lhs.true
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB22_6
# BB#5:                                 # %if.then.3
	movl	$1, -60(%rbp)
	jmp	.LBB22_7
.LBB22_6:                               # %if.else.4
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -60(%rbp)
.LBB22_7:                               # %if.end
	jmp	.LBB22_8
.LBB22_8:                               # %if.end.6
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB22_10
# BB#9:                                 # %if.then.8
	jmp	.LBB22_11
.LBB22_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_cage_config_select_add_area, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB22_29
.LBB22_11:                              # %if.end.10
	jmp	.LBB22_12
.LBB22_12:                              # %do.end
	movl	$0, -32(%rbp)
.LBB22_13:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	movq	-24(%rbp), %rcx
	movq	40(%rcx), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB22_29
# BB#14:                                # %for.body
                                        #   in Loop: Header=BB22_13 Depth=1
	movslq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	(%rcx), %rcx
	shlq	$6, %rax
	addq	%rax, %rcx
	movq	%rcx, -40(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.LBB22_21
# BB#15:                                # %if.then.14
                                        #   in Loop: Header=BB22_13 Depth=1
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	cvtsi2sdl	-16(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB22_20
# BB#16:                                # %land.lhs.true.18
                                        #   in Loop: Header=BB22_13 Depth=1
	movq	-40(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movl	-16(%rbp), %ecx
	addl	-8(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	ucomisd	%xmm0, %xmm1
	jb	.LBB22_20
# BB#17:                                # %land.lhs.true.25
                                        #   in Loop: Header=BB22_13 Depth=1
	movq	-40(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	cvtsi2sdl	-12(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB22_20
# BB#18:                                # %land.lhs.true.31
                                        #   in Loop: Header=BB22_13 Depth=1
	movq	-40(%rbp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movl	-12(%rbp), %ecx
	addl	-4(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	ucomisd	%xmm0, %xmm1
	jb	.LBB22_20
# BB#19:                                # %if.then.39
                                        #   in Loop: Header=BB22_13 Depth=1
	movq	-40(%rbp), %rax
	movl	$1, 56(%rax)
.LBB22_20:                              # %if.end.40
                                        #   in Loop: Header=BB22_13 Depth=1
	jmp	.LBB22_27
.LBB22_21:                              # %if.else.41
                                        #   in Loop: Header=BB22_13 Depth=1
	movq	-40(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-16(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB22_26
# BB#22:                                # %land.lhs.true.47
                                        #   in Loop: Header=BB22_13 Depth=1
	movq	-40(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movl	-16(%rbp), %ecx
	addl	-8(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	ucomisd	%xmm0, %xmm1
	jb	.LBB22_26
# BB#23:                                # %land.lhs.true.56
                                        #   in Loop: Header=BB22_13 Depth=1
	movq	-40(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-12(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB22_26
# BB#24:                                # %land.lhs.true.63
                                        #   in Loop: Header=BB22_13 Depth=1
	movq	-40(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movl	-12(%rbp), %ecx
	addl	-4(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm1
	ucomisd	%xmm0, %xmm1
	jb	.LBB22_26
# BB#25:                                # %if.then.72
                                        #   in Loop: Header=BB22_13 Depth=1
	movq	-40(%rbp), %rax
	movl	$1, 56(%rax)
.LBB22_26:                              # %if.end.74
                                        #   in Loop: Header=BB22_13 Depth=1
	jmp	.LBB22_27
.LBB22_27:                              # %if.end.75
                                        #   in Loop: Header=BB22_13 Depth=1
	jmp	.LBB22_28
.LBB22_28:                              # %for.inc
                                        #   in Loop: Header=BB22_13 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB22_13
.LBB22_29:                              # %for.end
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_cage_config_select_add_area, .Lfunc_end22-gimp_cage_config_select_add_area
	.cfi_endproc

	.globl	gimp_cage_config_toggle_point_selection
	.align	16, 0x90
	.type	gimp_cage_config_toggle_point_selection,@function
gimp_cage_config_toggle_point_selection: # @gimp_cage_config_toggle_point_selection
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
	movq	%rax, -32(%rbp)
	callq	gimp_cage_config_get_type
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB23_3
# BB#2:                                 # %if.then
	movl	$0, -44(%rbp)
	jmp	.LBB23_8
.LBB23_3:                               # %if.else
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB23_6
# BB#4:                                 # %land.lhs.true
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB23_6
# BB#5:                                 # %if.then.3
	movl	$1, -44(%rbp)
	jmp	.LBB23_7
.LBB23_6:                               # %if.else.4
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -44(%rbp)
.LBB23_7:                               # %if.end
	jmp	.LBB23_8
.LBB23_8:                               # %if.end.6
	movl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB23_10
# BB#9:                                 # %if.then.8
	jmp	.LBB23_11
.LBB23_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_cage_config_toggle_point_selection, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB23_23
.LBB23_11:                              # %if.end.10
	jmp	.LBB23_12
.LBB23_12:                              # %do.end
	jmp	.LBB23_13
.LBB23_13:                              # %do.body.11
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB23_15
# BB#14:                                # %if.then.13
	jmp	.LBB23_16
.LBB23_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_cage_config_toggle_point_selection, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB23_23
.LBB23_16:                              # %if.end.15
	jmp	.LBB23_17
.LBB23_17:                              # %do.end.16
	jmp	.LBB23_18
.LBB23_18:                              # %do.body.17
	cmpl	$0, -12(%rbp)
	jl	.LBB23_20
# BB#19:                                # %if.then.19
	jmp	.LBB23_21
.LBB23_20:                              # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_cage_config_toggle_point_selection, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB23_23
.LBB23_21:                              # %if.end.21
	jmp	.LBB23_22
.LBB23_22:                              # %do.end.22
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	(%rcx), %rcx
	shlq	$6, %rax
	addq	%rax, %rcx
	movq	%rcx, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$0, 56(%rax)
	setne	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movq	-24(%rbp), %rax
	movl	%esi, 56(%rax)
.LBB23_23:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_cage_config_toggle_point_selection, .Lfunc_end23-gimp_cage_config_toggle_point_selection
	.cfi_endproc

	.globl	gimp_cage_config_point_is_selected
	.align	16, 0x90
	.type	gimp_cage_config_point_is_selected,@function
gimp_cage_config_point_is_selected:     # @gimp_cage_config_point_is_selected
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	callq	gimp_cage_config_get_type
	movq	%rax, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB24_3
# BB#2:                                 # %if.then
	movl	$0, -52(%rbp)
	jmp	.LBB24_8
.LBB24_3:                               # %if.else
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB24_6
# BB#4:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB24_6
# BB#5:                                 # %if.then.3
	movl	$1, -52(%rbp)
	jmp	.LBB24_7
.LBB24_6:                               # %if.else.4
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -52(%rbp)
.LBB24_7:                               # %if.end
	jmp	.LBB24_8
.LBB24_8:                               # %if.end.6
	movl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	je	.LBB24_10
# BB#9:                                 # %if.then.8
	jmp	.LBB24_11
.LBB24_10:                              # %if.else.9
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_cage_config_point_is_selected, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB24_23
.LBB24_11:                              # %if.end.10
	jmp	.LBB24_12
.LBB24_12:                              # %do.end
	jmp	.LBB24_13
.LBB24_13:                              # %do.body.11
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB24_15
# BB#14:                                # %if.then.13
	jmp	.LBB24_16
.LBB24_15:                              # %if.else.14
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_cage_config_point_is_selected, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB24_23
.LBB24_16:                              # %if.end.15
	jmp	.LBB24_17
.LBB24_17:                              # %do.end.16
	jmp	.LBB24_18
.LBB24_18:                              # %do.body.17
	cmpl	$0, -20(%rbp)
	jl	.LBB24_20
# BB#19:                                # %if.then.19
	jmp	.LBB24_21
.LBB24_20:                              # %if.else.20
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.gimp_cage_config_point_is_selected, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB24_23
.LBB24_21:                              # %if.end.21
	jmp	.LBB24_22
.LBB24_22:                              # %do.end.22
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	(%rcx), %rcx
	shlq	$6, %rax
	addq	%rax, %rcx
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	56(%rax), %edx
	movl	%edx, -4(%rbp)
.LBB24_23:                              # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_cage_config_point_is_selected, .Lfunc_end24-gimp_cage_config_point_is_selected
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cage_config_class_init,@function
gimp_cage_config_class_init:            # @gimp_cage_config_class_init
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
	subq	$16, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movabsq	$gimp_cage_config_finalize, %rsi
	movabsq	$gimp_cage_config_get_property, %rdi
	movabsq	$gimp_cage_config_set_property, %rcx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rcx, 24(%rax)
	movq	-16(%rbp), %rax
	movq	%rdi, 32(%rax)
	movq	-16(%rbp), %rax
	movq	%rsi, 48(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_cage_config_class_init, .Lfunc_end25-gimp_cage_config_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cage_config_set_property,@function
gimp_cage_config_set_property:          # @gimp_cage_config_set_property
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %sw.default
	jmp	.LBB26_2
.LBB26_2:                               # %do.body
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
	movl	$145, %edx
	movabsq	$.L.str.9, %rcx
	movl	-56(%rbp), %r8d         # 4-byte Reload
	movq	-64(%rbp), %r9          # 8-byte Reload
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#3:                                 # %do.end
	jmp	.LBB26_4
.LBB26_4:                               # %sw.epilog
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_cage_config_set_property, .Lfunc_end26-gimp_cage_config_set_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cage_config_get_property,@function
gimp_cage_config_get_property:          # @gimp_cage_config_get_property
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %sw.default
	jmp	.LBB27_2
.LBB27_2:                               # %do.body
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
	movl	$131, %edx
	movabsq	$.L.str.9, %rcx
	movl	-56(%rbp), %r8d         # 4-byte Reload
	movq	-64(%rbp), %r9          # 8-byte Reload
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	%r10, (%rsp)
	movq	%rax, 8(%rsp)
	movb	$0, %al
	callq	g_warning
# BB#3:                                 # %do.end
	jmp	.LBB27_4
.LBB27_4:                               # %sw.epilog
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_cage_config_get_property, .Lfunc_end27-gimp_cage_config_get_property
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_cage_config_finalize,@function
gimp_cage_config_finalize:              # @gimp_cage_config_finalize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_cage_config_get_type
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	g_array_free
	movl	$80, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	gimp_cage_config_parent_class, %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_cage_config_finalize, .Lfunc_end28-gimp_cage_config_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB29_2
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
.LBB29_2:                               # %entry
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
.Lfunc_end29:
	.size	g_warning, .Lfunc_end29-g_warning
	.cfi_endproc

	.type	gimp_cage_config_get_type.g_define_type_id__volatile,@object # @gimp_cage_config_get_type.g_define_type_id__volatile
	.local	gimp_cage_config_get_type.g_define_type_id__volatile
	.comm	gimp_cage_config_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpCageConfig"
	.size	.L.str, 15

	.type	gimp_cage_config_get_type.g_implement_interface_info,@object # @gimp_cage_config_get_type.g_implement_interface_info
	.section	.rodata,"a",@progbits
	.align	8
gimp_cage_config_get_type.g_implement_interface_info:
	.zero	24
	.size	gimp_cage_config_get_type.g_implement_interface_info, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Gimp-GEGL"
	.size	.L.str.1, 10

	.type	.L__func__.gimp_cage_config_insert_cage_point,@object # @__func__.gimp_cage_config_insert_cage_point
.L__func__.gimp_cage_config_insert_cage_point:
	.asciz	"gimp_cage_config_insert_cage_point"
	.size	.L__func__.gimp_cage_config_insert_cage_point, 35

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_CAGE_CONFIG (gcc)"
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"point_number <= gcc->cage_points->len"
	.size	.L.str.3, 38

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"point_number >= 0"
	.size	.L.str.4, 18

	.type	.L__func__.gimp_cage_config_remove_cage_point,@object # @__func__.gimp_cage_config_remove_cage_point
.L__func__.gimp_cage_config_remove_cage_point:
	.asciz	"gimp_cage_config_remove_cage_point"
	.size	.L__func__.gimp_cage_config_remove_cage_point, 35

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"point_number < gcc->cage_points->len"
	.size	.L.str.5, 37

	.type	.L__func__.gimp_cage_config_remove_selected_points,@object # @__func__.gimp_cage_config_remove_selected_points
.L__func__.gimp_cage_config_remove_selected_points:
	.asciz	"gimp_cage_config_remove_selected_points"
	.size	.L__func__.gimp_cage_config_remove_selected_points, 40

	.type	.L__func__.gimp_cage_config_get_point_coordinate,@object # @__func__.gimp_cage_config_get_point_coordinate
.L__func__.gimp_cage_config_get_point_coordinate:
	.asciz	"gimp_cage_config_get_point_coordinate"
	.size	.L__func__.gimp_cage_config_get_point_coordinate, 38

	.type	.L__func__.gimp_cage_config_add_displacement,@object # @__func__.gimp_cage_config_add_displacement
.L__func__.gimp_cage_config_add_displacement:
	.asciz	"gimp_cage_config_add_displacement"
	.size	.L__func__.gimp_cage_config_add_displacement, 34

	.type	.L__func__.gimp_cage_config_commit_displacement,@object # @__func__.gimp_cage_config_commit_displacement
.L__func__.gimp_cage_config_commit_displacement:
	.asciz	"gimp_cage_config_commit_displacement"
	.size	.L__func__.gimp_cage_config_commit_displacement, 37

	.type	.L__func__.gimp_cage_config_reset_displacement,@object # @__func__.gimp_cage_config_reset_displacement
.L__func__.gimp_cage_config_reset_displacement:
	.asciz	"gimp_cage_config_reset_displacement"
	.size	.L__func__.gimp_cage_config_reset_displacement, 36

	.type	.L__func__.gimp_cage_config_get_bounding_box,@object # @__func__.gimp_cage_config_get_bounding_box
.L__func__.gimp_cage_config_get_bounding_box:
	.asciz	"gimp_cage_config_get_bounding_box"
	.size	.L__func__.gimp_cage_config_get_bounding_box, 34

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gcc->cage_points->len >= 0"
	.size	.L.str.6, 27

	.type	.L__func__.gimp_cage_config_reverse_cage,@object # @__func__.gimp_cage_config_reverse_cage
.L__func__.gimp_cage_config_reverse_cage:
	.asciz	"gimp_cage_config_reverse_cage"
	.size	.L__func__.gimp_cage_config_reverse_cage, 30

	.type	.L__func__.gimp_cage_config_reverse_cage_if_needed,@object # @__func__.gimp_cage_config_reverse_cage_if_needed
.L__func__.gimp_cage_config_reverse_cage_if_needed:
	.asciz	"gimp_cage_config_reverse_cage_if_needed"
	.size	.L__func__.gimp_cage_config_reverse_cage_if_needed, 40

	.type	.L__func__.gimp_cage_config_point_inside,@object # @__func__.gimp_cage_config_point_inside
.L__func__.gimp_cage_config_point_inside:
	.asciz	"gimp_cage_config_point_inside"
	.size	.L__func__.gimp_cage_config_point_inside, 30

	.type	.L__func__.gimp_cage_config_select_point,@object # @__func__.gimp_cage_config_select_point
.L__func__.gimp_cage_config_select_point:
	.asciz	"gimp_cage_config_select_point"
	.size	.L__func__.gimp_cage_config_select_point, 30

	.type	.L__func__.gimp_cage_config_select_area,@object # @__func__.gimp_cage_config_select_area
.L__func__.gimp_cage_config_select_area:
	.asciz	"gimp_cage_config_select_area"
	.size	.L__func__.gimp_cage_config_select_area, 29

	.type	.L__func__.gimp_cage_config_select_add_area,@object # @__func__.gimp_cage_config_select_add_area
.L__func__.gimp_cage_config_select_add_area:
	.asciz	"gimp_cage_config_select_add_area"
	.size	.L__func__.gimp_cage_config_select_add_area, 33

	.type	.L__func__.gimp_cage_config_toggle_point_selection,@object # @__func__.gimp_cage_config_toggle_point_selection
.L__func__.gimp_cage_config_toggle_point_selection:
	.asciz	"gimp_cage_config_toggle_point_selection"
	.size	.L__func__.gimp_cage_config_toggle_point_selection, 40

	.type	.L__func__.gimp_cage_config_deselect_points,@object # @__func__.gimp_cage_config_deselect_points
.L__func__.gimp_cage_config_deselect_points:
	.asciz	"gimp_cage_config_deselect_points"
	.size	.L__func__.gimp_cage_config_deselect_points, 33

	.type	.L__func__.gimp_cage_config_point_is_selected,@object # @__func__.gimp_cage_config_point_is_selected
.L__func__.gimp_cage_config_point_is_selected:
	.asciz	"gimp_cage_config_point_is_selected"
	.size	.L__func__.gimp_cage_config_point_is_selected, 35

	.type	gimp_cage_config_parent_class,@object # @gimp_cage_config_parent_class
	.local	gimp_cage_config_parent_class
	.comm	gimp_cage_config_parent_class,8,8
	.type	GimpCageConfig_private_offset,@object # @GimpCageConfig_private_offset
	.local	GimpCageConfig_private_offset
	.comm	GimpCageConfig_private_offset,4,4
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%s:%u: invalid %s id %u for \"%s\" of type '%s' in '%s'"
	.size	.L.str.7, 54

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimpcageconfig.c"
	.size	.L.str.8, 17

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"property"
	.size	.L.str.9, 9

	.type	.L__func__.gimp_cage_config_compute_scaling_factor,@object # @__func__.gimp_cage_config_compute_scaling_factor
.L__func__.gimp_cage_config_compute_scaling_factor:
	.asciz	"gimp_cage_config_compute_scaling_factor"
	.size	.L__func__.gimp_cage_config_compute_scaling_factor, 40

	.type	.L__func__.gimp_cage_config_compute_edges_normal,@object # @__func__.gimp_cage_config_compute_edges_normal
.L__func__.gimp_cage_config_compute_edges_normal:
	.asciz	"gimp_cage_config_compute_edges_normal"
	.size	.L__func__.gimp_cage_config_compute_edges_normal, 38


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
