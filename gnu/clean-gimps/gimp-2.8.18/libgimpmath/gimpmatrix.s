	.text
	.file	"gimpmatrix.bc"
	.globl	gimp_matrix2_get_type
	.align	16, 0x90
	.type	gimp_matrix2_get_type,@function
gimp_matrix2_get_type:                  # @gimp_matrix2_get_type
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
	cmpq	$0, gimp_matrix2_get_type.matrix_type(%rip)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	leaq	.L.str(%rip), %rdi
	leaq	matrix2_copy(%rip), %rax
	movq	g_free@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	callq	g_boxed_type_register_static@PLT
	movq	%rax, gimp_matrix2_get_type.matrix_type(%rip)
.LBB0_2:                                # %if.end
	movq	gimp_matrix2_get_type.matrix_type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_matrix2_get_type, .Lfunc_end0-gimp_matrix2_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	matrix2_copy,@function
matrix2_copy:                           # @matrix2_copy
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
	movl	$32, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_memdup@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	matrix2_copy, .Lfunc_end1-matrix2_copy
	.cfi_endproc

	.globl	gimp_param_matrix2_get_type
	.align	16, 0x90
	.type	gimp_param_matrix2_get_type,@function
gimp_param_matrix2_get_type:            # @gimp_param_matrix2_get_type
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
	cmpq	$0, gimp_param_matrix2_get_type.spec_type(%rip)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	leaq	.L.str.1(%rip), %rsi
	leaq	gimp_param_matrix2_get_type.type_info(%rip), %rdx
	xorl	%ecx, %ecx
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	128(%rax), %rdi
	callq	g_type_register_static@PLT
	movq	%rax, gimp_param_matrix2_get_type.spec_type(%rip)
.LBB2_2:                                # %if.end
	movq	gimp_param_matrix2_get_type.spec_type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_param_matrix2_get_type, .Lfunc_end2-gimp_param_matrix2_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_matrix2_class_init,@function
gimp_param_matrix2_class_init:          # @gimp_param_matrix2_class_init
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	gimp_matrix2_get_type@PLT
	leaq	gimp_param_matrix2_values_cmp(%rip), %rdi
	leaq	gimp_param_matrix2_set_default(%rip), %rcx
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	%rcx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	%rdi, 40(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_param_matrix2_class_init, .Lfunc_end3-gimp_param_matrix2_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_matrix2_init,@function
gimp_param_matrix2_init:                # @gimp_param_matrix2_init
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
	callq	gimp_param_matrix2_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	callq	gimp_matrix2_identity@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_param_matrix2_init, .Lfunc_end4-gimp_param_matrix2_init
	.cfi_endproc

	.globl	gimp_param_spec_matrix2
	.align	16, 0x90
	.type	gimp_param_spec_matrix2,@function
gimp_param_spec_matrix2:                # @gimp_param_spec_matrix2
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -40(%rbp)
	je	.LBB5_3
# BB#2:                                 # %if.then
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	leaq	.L.str.2(%rip), %rdi
	leaq	.L__func__.gimp_param_spec_matrix2(%rip), %rsi
	leaq	.L.str.3(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB5_6
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %do.end
	callq	gimp_param_matrix2_get_type@PLT
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movl	-44(%rbp), %r8d
	movq	%rax, %rdi
	callq	g_param_spec_internal@PLT
	movl	$76, %r8d
	movl	%r8d, %esi
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 72(%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 80(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 88(%rax)
	movq	24(%rcx), %rcx
	movq	%rcx, 96(%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -8(%rbp)
.LBB5_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_param_spec_matrix2, .Lfunc_end5-gimp_param_spec_matrix2
	.cfi_endproc

	.globl	gimp_matrix2_identity
	.align	16, 0x90
	.type	gimp_matrix2_identity,@function
gimp_matrix2_identity:                  # @gimp_matrix2_identity
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	gimp_matrix2_identity.identity(%rip), %rax
	movq	%rax, (%rdi)
	movq	gimp_matrix2_identity.identity+8(%rip), %rax
	movq	%rax, 8(%rdi)
	movq	gimp_matrix2_identity.identity+16(%rip), %rax
	movq	%rax, 16(%rdi)
	movq	gimp_matrix2_identity.identity+24(%rip), %rax
	movq	%rax, 24(%rdi)
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_matrix2_identity, .Lfunc_end6-gimp_matrix2_identity
	.cfi_endproc

	.globl	gimp_matrix2_mult
	.align	16, 0x90
	.type	gimp_matrix2_mult,@function
gimp_matrix2_mult:                      # @gimp_matrix2_mult
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rsi
	mulsd	(%rsi), %xmm0
	movq	-8(%rbp), %rsi
	movsd	8(%rsi), %xmm1          # xmm1 = mem[0],zero
	movq	-16(%rbp), %rsi
	mulsd	16(%rsi), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movq	-8(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movq	-16(%rbp), %rsi
	mulsd	8(%rsi), %xmm0
	movq	-8(%rbp), %rsi
	movsd	8(%rsi), %xmm1          # xmm1 = mem[0],zero
	movq	-16(%rbp), %rsi
	mulsd	24(%rsi), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	-8(%rbp), %rsi
	movsd	16(%rsi), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rsi
	mulsd	(%rsi), %xmm0
	movq	-8(%rbp), %rsi
	movsd	24(%rsi), %xmm1         # xmm1 = mem[0],zero
	movq	-16(%rbp), %rsi
	mulsd	16(%rsi), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	-8(%rbp), %rsi
	movsd	16(%rsi), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rsi
	mulsd	8(%rsi), %xmm0
	movq	-8(%rbp), %rsi
	movsd	24(%rsi), %xmm1         # xmm1 = mem[0],zero
	movq	-16(%rbp), %rsi
	mulsd	24(%rsi), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	-48(%rbp), %rdi
	movq	%rdi, (%rsi)
	movq	-40(%rbp), %rdi
	movq	%rdi, 8(%rsi)
	movq	-32(%rbp), %rdi
	movq	%rdi, 16(%rsi)
	movq	-24(%rbp), %rdi
	movq	%rdi, 24(%rsi)
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_matrix2_mult, .Lfunc_end7-gimp_matrix2_mult
	.cfi_endproc

	.globl	gimp_matrix3_get_type
	.align	16, 0x90
	.type	gimp_matrix3_get_type,@function
gimp_matrix3_get_type:                  # @gimp_matrix3_get_type
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
	cmpq	$0, gimp_matrix3_get_type.matrix_type(%rip)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	leaq	.L.str.4(%rip), %rdi
	leaq	matrix3_copy(%rip), %rax
	movq	g_free@GOTPCREL(%rip), %rdx
	movq	%rax, %rsi
	callq	g_boxed_type_register_static@PLT
	movq	%rax, gimp_matrix3_get_type.matrix_type(%rip)
.LBB8_2:                                # %if.end
	movq	gimp_matrix3_get_type.matrix_type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_matrix3_get_type, .Lfunc_end8-gimp_matrix3_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	matrix3_copy,@function
matrix3_copy:                           # @matrix3_copy
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
	subq	$16, %rsp
	movl	$72, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_memdup@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	matrix3_copy, .Lfunc_end9-matrix3_copy
	.cfi_endproc

	.globl	gimp_param_matrix3_get_type
	.align	16, 0x90
	.type	gimp_param_matrix3_get_type,@function
gimp_param_matrix3_get_type:            # @gimp_param_matrix3_get_type
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
	cmpq	$0, gimp_param_matrix3_get_type.spec_type(%rip)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	leaq	.L.str.5(%rip), %rsi
	leaq	gimp_param_matrix3_get_type.type_info(%rip), %rdx
	xorl	%ecx, %ecx
	movq	g_param_spec_types@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	128(%rax), %rdi
	callq	g_type_register_static@PLT
	movq	%rax, gimp_param_matrix3_get_type.spec_type(%rip)
.LBB10_2:                               # %if.end
	movq	gimp_param_matrix3_get_type.spec_type(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_param_matrix3_get_type, .Lfunc_end10-gimp_param_matrix3_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_matrix3_class_init,@function
gimp_param_matrix3_class_init:          # @gimp_param_matrix3_class_init
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	gimp_matrix3_get_type@PLT
	leaq	gimp_param_matrix3_values_cmp(%rip), %rdi
	leaq	gimp_param_matrix3_set_default(%rip), %rcx
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-8(%rbp), %rax
	movq	%rcx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	%rdi, 40(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_param_matrix3_class_init, .Lfunc_end11-gimp_param_matrix3_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_matrix3_init,@function
gimp_param_matrix3_init:                # @gimp_param_matrix3_init
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	callq	gimp_param_matrix3_get_type@PLT
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	callq	gimp_matrix3_identity@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_param_matrix3_init, .Lfunc_end12-gimp_param_matrix3_init
	.cfi_endproc

	.globl	gimp_param_spec_matrix3
	.align	16, 0x90
	.type	gimp_param_spec_matrix3,@function
gimp_param_spec_matrix3:                # @gimp_param_spec_matrix3
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
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	callq	gimp_param_matrix3_get_type@PLT
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movl	-36(%rbp), %r8d
	movq	%rax, %rdi
	callq	g_param_spec_internal@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movl	$72, %eax
	movl	%eax, %edx
	movq	-48(%rbp), %rcx
	addq	$72, %rcx
	movq	-32(%rbp), %rsi
	movq	%rcx, %rdi
	callq	memcpy@PLT
.LBB13_2:                               # %if.end
	movl	$76, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rcx
	movq	%rcx, %rdi
	callq	g_type_check_instance_cast@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_param_spec_matrix3, .Lfunc_end13-gimp_param_spec_matrix3
	.cfi_endproc

	.globl	gimp_matrix3_identity
	.align	16, 0x90
	.type	gimp_matrix3_identity,@function
gimp_matrix3_identity:                  # @gimp_matrix3_identity
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
	subq	$16, %rsp
	leaq	gimp_matrix3_identity.identity(%rip), %rax
	movl	$72, %ecx
	movl	%ecx, %edx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	memcpy@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_matrix3_identity, .Lfunc_end14-gimp_matrix3_identity
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_matrix3_transform_point
	.align	16, 0x90
	.type	gimp_matrix3_transform_point,@function
gimp_matrix3_transform_point:           # @gimp_matrix3_transform_point
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
	xorps	%xmm2, %xmm2
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-8(%rbp), %rdx
	movsd	48(%rdx), %xmm0         # xmm0 = mem[0],zero
	mulsd	-16(%rbp), %xmm0
	movq	-8(%rbp), %rdx
	movsd	56(%rdx), %xmm1         # xmm1 = mem[0],zero
	mulsd	-24(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rdx
	addsd	64(%rdx), %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm2, %xmm0
	jne	.LBB15_2
	jp	.LBB15_2
# BB#1:                                 # %if.then
	movsd	.LCPI15_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	jmp	.LBB15_3
.LBB15_2:                               # %if.else
	movsd	.LCPI15_0(%rip), %xmm0  # xmm0 = mem[0],zero
	divsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
.LBB15_3:                               # %if.end
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	mulsd	-16(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	mulsd	-24(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	addsd	16(%rax), %xmm0
	mulsd	-48(%rbp), %xmm0
	movq	-32(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	mulsd	-16(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movsd	32(%rax), %xmm1         # xmm1 = mem[0],zero
	mulsd	-24(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	addsd	40(%rax), %xmm0
	mulsd	-48(%rbp), %xmm0
	movq	-40(%rbp), %rax
	movsd	%xmm0, (%rax)
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_matrix3_transform_point, .Lfunc_end15-gimp_matrix3_transform_point
	.cfi_endproc

	.globl	gimp_matrix3_mult
	.align	16, 0x90
	.type	gimp_matrix3_mult,@function
gimp_matrix3_mult:                      # @gimp_matrix3_mult
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
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB16_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_3 Depth 2
	cmpl	$3, -20(%rbp)
	jge	.LBB16_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB16_1 Depth=1
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	%rax, %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	%rax, %rcx
	movsd	8(%rcx), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	%rax, %rcx
	movsd	16(%rcx), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)
	movl	$0, -24(%rbp)
.LBB16_3:                               # %for.cond.13
                                        #   Parent Loop BB16_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -24(%rbp)
	jge	.LBB16_6
# BB#4:                                 # %for.body.15
                                        #   in Loop: Header=BB16_3 Depth=2
	leaq	-96(%rbp), %rax
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movslq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	mulsd	(%rdx,%rcx,8), %xmm0
	movslq	-24(%rbp), %rcx
	movslq	-20(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movsd	%xmm0, (%rsi,%rcx,8)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movslq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	mulsd	24(%rdx,%rcx,8), %xmm0
	movslq	-24(%rbp), %rcx
	movslq	-20(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	addsd	(%rsi,%rcx,8), %xmm0
	movsd	%xmm0, (%rsi,%rcx,8)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movslq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	mulsd	48(%rdx,%rcx,8), %xmm0
	movslq	-24(%rbp), %rcx
	movslq	-20(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rax
	addsd	(%rax,%rcx,8), %xmm0
	movsd	%xmm0, (%rax,%rcx,8)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB16_3 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB16_3
.LBB16_6:                               # %for.end
                                        #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_7
.LBB16_7:                               # %for.inc.46
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB16_1
.LBB16_8:                               # %for.end.48
	movl	$72, %eax
	movl	%eax, %edx
	leaq	-96(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	memcpy@PLT
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_matrix3_mult, .Lfunc_end16-gimp_matrix3_mult
	.cfi_endproc

	.globl	gimp_matrix3_translate
	.align	16, 0x90
	.type	gimp_matrix3_translate,@function
gimp_matrix3_translate:                 # @gimp_matrix3_translate
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
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	-8(%rbp), %rdi
	movsd	48(%rdi), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movq	-8(%rbp), %rdi
	movsd	56(%rdi), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	movq	-8(%rbp), %rdi
	movsd	64(%rdi), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0
	movq	-8(%rbp), %rdi
	addsd	(%rdi), %xmm0
	movsd	%xmm0, (%rdi)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-40(%rbp), %xmm0
	movq	-8(%rbp), %rdi
	addsd	8(%rdi), %xmm0
	movsd	%xmm0, 8(%rdi)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-48(%rbp), %xmm0
	movq	-8(%rbp), %rdi
	addsd	16(%rdi), %xmm0
	movsd	%xmm0, 16(%rdi)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0
	movq	-8(%rbp), %rdi
	addsd	24(%rdi), %xmm0
	movsd	%xmm0, 24(%rdi)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-40(%rbp), %xmm0
	movq	-8(%rbp), %rdi
	addsd	32(%rdi), %xmm0
	movsd	%xmm0, 32(%rdi)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-48(%rbp), %xmm0
	movq	-8(%rbp), %rdi
	addsd	40(%rdi), %xmm0
	movsd	%xmm0, 40(%rdi)
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_matrix3_translate, .Lfunc_end17-gimp_matrix3_translate
	.cfi_endproc

	.globl	gimp_matrix3_scale
	.align	16, 0x90
	.type	gimp_matrix3_scale,@function
gimp_matrix3_scale:                     # @gimp_matrix3_scale
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
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	mulsd	(%rdi), %xmm0
	movsd	%xmm0, (%rdi)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	mulsd	8(%rdi), %xmm0
	movsd	%xmm0, 8(%rdi)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	mulsd	16(%rdi), %xmm0
	movsd	%xmm0, 16(%rdi)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	mulsd	24(%rdi), %xmm0
	movsd	%xmm0, 24(%rdi)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	mulsd	32(%rdi), %xmm0
	movsd	%xmm0, 32(%rdi)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	mulsd	40(%rdi), %xmm0
	movsd	%xmm0, 40(%rdi)
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_matrix3_scale, .Lfunc_end18-gimp_matrix3_scale
	.cfi_endproc

	.globl	gimp_matrix3_rotate
	.align	16, 0x90
	.type	gimp_matrix3_rotate,@function
gimp_matrix3_rotate:                    # @gimp_matrix3_rotate
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
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	cos@PLT
	movsd	%xmm0, -40(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	sin@PLT
	movsd	%xmm0, -48(%rbp)
	movq	-8(%rbp), %rdi
	movsd	(%rdi), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	movq	-8(%rbp), %rdi
	movsd	24(%rdi), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-24(%rbp), %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-32(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movq	-8(%rbp), %rdi
	movsd	%xmm0, (%rdi)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-24(%rbp), %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-32(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 24(%rdi)
	movq	-8(%rbp), %rdi
	movsd	8(%rdi), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	movq	-8(%rbp), %rdi
	movsd	32(%rdi), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-24(%rbp), %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-32(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 8(%rdi)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-24(%rbp), %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-32(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 32(%rdi)
	movq	-8(%rbp), %rdi
	movsd	16(%rdi), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	movq	-8(%rbp), %rdi
	movsd	40(%rdi), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-24(%rbp), %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-32(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 16(%rdi)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-24(%rbp), %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-32(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movq	-8(%rbp), %rdi
	movsd	%xmm0, 40(%rdi)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_matrix3_rotate, .Lfunc_end19-gimp_matrix3_rotate
	.cfi_endproc

	.globl	gimp_matrix3_xshear
	.align	16, 0x90
	.type	gimp_matrix3_xshear,@function
gimp_matrix3_xshear:                    # @gimp_matrix3_xshear
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
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	mulsd	24(%rdi), %xmm0
	movq	-8(%rbp), %rdi
	addsd	(%rdi), %xmm0
	movsd	%xmm0, (%rdi)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	mulsd	32(%rdi), %xmm0
	movq	-8(%rbp), %rdi
	addsd	8(%rdi), %xmm0
	movsd	%xmm0, 8(%rdi)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	mulsd	40(%rdi), %xmm0
	movq	-8(%rbp), %rdi
	addsd	16(%rdi), %xmm0
	movsd	%xmm0, 16(%rdi)
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_matrix3_xshear, .Lfunc_end20-gimp_matrix3_xshear
	.cfi_endproc

	.globl	gimp_matrix3_yshear
	.align	16, 0x90
	.type	gimp_matrix3_yshear,@function
gimp_matrix3_yshear:                    # @gimp_matrix3_yshear
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
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	mulsd	(%rdi), %xmm0
	movq	-8(%rbp), %rdi
	addsd	24(%rdi), %xmm0
	movsd	%xmm0, 24(%rdi)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	mulsd	8(%rdi), %xmm0
	movq	-8(%rbp), %rdi
	addsd	32(%rdi), %xmm0
	movsd	%xmm0, 32(%rdi)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	mulsd	16(%rdi), %xmm0
	movq	-8(%rbp), %rdi
	addsd	40(%rdi), %xmm0
	movsd	%xmm0, 40(%rdi)
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_matrix3_yshear, .Lfunc_end21-gimp_matrix3_yshear
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI22_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_matrix3_affine
	.align	16, 0x90
	.type	gimp_matrix3_affine,@function
gimp_matrix3_affine:                    # @gimp_matrix3_affine
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
	subq	$128, %rsp
	leaq	-128(%rbp), %rax
	movsd	.LCPI22_0(%rip), %xmm6  # xmm6 = mem[0],zero
	xorps	%xmm7, %xmm7
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm3, -40(%rbp)
	movsd	%xmm4, -48(%rbp)
	movsd	%xmm5, -56(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -128(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)
	movsd	%xmm7, -80(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)
	movsd	%xmm7, -72(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)
	movsd	%xmm6, -64(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_matrix3_mult@PLT
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_matrix3_affine, .Lfunc_end22-gimp_matrix3_affine
	.cfi_endproc

	.globl	gimp_matrix3_determinant
	.align	16, 0x90
	.type	gimp_matrix3_determinant,@function
gimp_matrix3_determinant:               # @gimp_matrix3_determinant
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movsd	(%rdi), %xmm0           # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	32(%rdi), %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rdi
	mulsd	64(%rdi), %xmm1
	movq	-8(%rbp), %rdi
	movsd	40(%rdi), %xmm2         # xmm2 = mem[0],zero
	movq	-8(%rbp), %rdi
	mulsd	56(%rdi), %xmm2
	subsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rdi
	movsd	24(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	8(%rdi), %xmm1          # xmm1 = mem[0],zero
	movq	-8(%rbp), %rdi
	mulsd	64(%rdi), %xmm1
	movq	-8(%rbp), %rdi
	movsd	16(%rdi), %xmm2         # xmm2 = mem[0],zero
	movq	-8(%rbp), %rdi
	mulsd	56(%rdi), %xmm2
	subsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -16(%rbp)
	movq	-8(%rbp), %rdi
	movsd	48(%rdi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdi
	movsd	8(%rdi), %xmm1          # xmm1 = mem[0],zero
	movq	-8(%rbp), %rdi
	mulsd	40(%rdi), %xmm1
	movq	-8(%rbp), %rdi
	movsd	16(%rdi), %xmm2         # xmm2 = mem[0],zero
	movq	-8(%rbp), %rdi
	mulsd	32(%rdi), %xmm2
	subsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	addsd	-16(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_matrix3_determinant, .Lfunc_end23-gimp_matrix3_determinant
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI24_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_matrix3_invert
	.align	16, 0x90
	.type	gimp_matrix3_invert,@function
gimp_matrix3_invert:                    # @gimp_matrix3_invert
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_matrix3_determinant@PLT
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -88(%rbp)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB24_2
	jp	.LBB24_2
# BB#1:                                 # %if.then
	jmp	.LBB24_3
.LBB24_2:                               # %if.end
	movl	$72, %eax
	movl	%eax, %edx
	leaq	-80(%rbp), %rcx
	movsd	.LCPI24_0(%rip), %xmm0  # xmm0 = mem[0],zero
	divsd	-88(%rbp), %xmm0
	movsd	%xmm0, -88(%rbp)
	movq	-8(%rbp), %rsi
	movsd	32(%rsi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	mulsd	64(%rsi), %xmm0
	movq	-8(%rbp), %rsi
	movsd	40(%rsi), %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rsi
	mulsd	56(%rsi), %xmm1
	subsd	%xmm1, %xmm0
	mulsd	-88(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
	movq	-8(%rbp), %rsi
	movsd	24(%rsi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	mulsd	64(%rsi), %xmm0
	movq	-8(%rbp), %rsi
	movsd	40(%rsi), %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rsi
	mulsd	48(%rsi), %xmm1
	subsd	%xmm1, %xmm0
	movd	%xmm0, %rsi
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	xorq	%rdi, %rsi
	movd	%rsi, %xmm0
	mulsd	-88(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
	movq	-8(%rbp), %rsi
	movsd	24(%rsi), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	mulsd	56(%rsi), %xmm0
	movq	-8(%rbp), %rsi
	movsd	32(%rsi), %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rsi
	mulsd	48(%rsi), %xmm1
	subsd	%xmm1, %xmm0
	mulsd	-88(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	-8(%rbp), %rsi
	movsd	8(%rsi), %xmm0          # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	mulsd	64(%rsi), %xmm0
	movq	-8(%rbp), %rsi
	movsd	16(%rsi), %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rsi
	mulsd	56(%rsi), %xmm1
	subsd	%xmm1, %xmm0
	movd	%xmm0, %rsi
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	xorq	%rdi, %rsi
	movd	%rsi, %xmm0
	mulsd	-88(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	movq	-8(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	mulsd	64(%rsi), %xmm0
	movq	-8(%rbp), %rsi
	movsd	16(%rsi), %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rsi
	mulsd	48(%rsi), %xmm1
	subsd	%xmm1, %xmm0
	mulsd	-88(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
	movq	-8(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	mulsd	56(%rsi), %xmm0
	movq	-8(%rbp), %rsi
	movsd	8(%rsi), %xmm1          # xmm1 = mem[0],zero
	movq	-8(%rbp), %rsi
	mulsd	48(%rsi), %xmm1
	subsd	%xmm1, %xmm0
	movd	%xmm0, %rsi
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	xorq	%rdi, %rsi
	movd	%rsi, %xmm0
	mulsd	-88(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-8(%rbp), %rsi
	movsd	8(%rsi), %xmm0          # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	mulsd	40(%rsi), %xmm0
	movq	-8(%rbp), %rsi
	movsd	16(%rsi), %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rsi
	mulsd	32(%rsi), %xmm1
	subsd	%xmm1, %xmm0
	mulsd	-88(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-8(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	mulsd	40(%rsi), %xmm0
	movq	-8(%rbp), %rsi
	movsd	16(%rsi), %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rsi
	mulsd	24(%rsi), %xmm1
	subsd	%xmm1, %xmm0
	movd	%xmm0, %rsi
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	xorq	%rdi, %rsi
	movd	%rsi, %xmm0
	mulsd	-88(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	-8(%rbp), %rsi
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movq	-8(%rbp), %rsi
	mulsd	32(%rsi), %xmm0
	movq	-8(%rbp), %rsi
	movsd	8(%rsi), %xmm1          # xmm1 = mem[0],zero
	movq	-8(%rbp), %rsi
	mulsd	24(%rsi), %xmm1
	subsd	%xmm1, %xmm0
	mulsd	-88(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rcx, %rsi
	callq	memcpy@PLT
.LBB24_3:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_matrix3_invert, .Lfunc_end24-gimp_matrix3_invert
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI25_0:
	.quad	4517329193108106637     # double 9.9999999999999995E-7
.LCPI25_2:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI25_1:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.globl	gimp_matrix3_is_identity
	.align	16, 0x90
	.type	gimp_matrix3_is_identity,@function
gimp_matrix3_is_identity:               # @gimp_matrix3_is_identity
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
	movq	%rdi, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB25_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_3 Depth 2
	cmpl	$3, -20(%rbp)
	jge	.LBB25_15
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB25_1 Depth=1
	movl	$0, -24(%rbp)
.LBB25_3:                               # %for.cond.1
                                        #   Parent Loop BB25_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -24(%rbp)
	jge	.LBB25_13
# BB#4:                                 # %for.body.3
                                        #   in Loop: Header=BB25_3 Depth=2
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jne	.LBB25_8
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB25_3 Depth=2
	movsd	.LCPI25_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI25_2(%rip), %xmm1  # xmm1 = mem[0],zero
	movslq	-24(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	-16(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rdx
	movsd	(%rdx,%rax,8), %xmm2    # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	movapd	.LCPI25_1(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm2
	ucomisd	%xmm0, %xmm2
	jbe	.LBB25_7
# BB#6:                                 # %if.then.8
	movl	$0, -4(%rbp)
	jmp	.LBB25_16
.LBB25_7:                               # %if.end
                                        #   in Loop: Header=BB25_3 Depth=2
	jmp	.LBB25_11
.LBB25_8:                               # %if.else
                                        #   in Loop: Header=BB25_3 Depth=2
	movsd	.LCPI25_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movslq	-24(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	-16(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rdx
	movsd	(%rdx,%rax,8), %xmm1    # xmm1 = mem[0],zero
	movapd	.LCPI25_1(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB25_10
# BB#9:                                 # %if.then.16
	movl	$0, -4(%rbp)
	jmp	.LBB25_16
.LBB25_10:                              # %if.end.17
                                        #   in Loop: Header=BB25_3 Depth=2
	jmp	.LBB25_11
.LBB25_11:                              # %if.end.18
                                        #   in Loop: Header=BB25_3 Depth=2
	jmp	.LBB25_12
.LBB25_12:                              # %for.inc
                                        #   in Loop: Header=BB25_3 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB25_3
.LBB25_13:                              # %for.end
                                        #   in Loop: Header=BB25_1 Depth=1
	jmp	.LBB25_14
.LBB25_14:                              # %for.inc.19
                                        #   in Loop: Header=BB25_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB25_1
.LBB25_15:                              # %for.end.21
	movl	$1, -4(%rbp)
.LBB25_16:                              # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_matrix3_is_identity, .Lfunc_end25-gimp_matrix3_is_identity
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI26_0:
	.quad	4517329193108106637     # double 9.9999999999999995E-7
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI26_1:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.globl	gimp_matrix3_is_diagonal
	.align	16, 0x90
	.type	gimp_matrix3_is_diagonal,@function
gimp_matrix3_is_diagonal:               # @gimp_matrix3_is_diagonal
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
	movq	%rdi, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB26_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_3 Depth 2
	cmpl	$3, -20(%rbp)
	jge	.LBB26_11
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB26_1 Depth=1
	movl	$0, -24(%rbp)
.LBB26_3:                               # %for.cond.1
                                        #   Parent Loop BB26_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -24(%rbp)
	jge	.LBB26_9
# BB#4:                                 # %for.body.3
                                        #   in Loop: Header=BB26_3 Depth=2
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	je	.LBB26_7
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB26_3 Depth=2
	movsd	.LCPI26_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movslq	-24(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	-16(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rdx
	movsd	(%rdx,%rax,8), %xmm1    # xmm1 = mem[0],zero
	movapd	.LCPI26_1(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB26_7
# BB#6:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB26_12
.LBB26_7:                               # %if.end
                                        #   in Loop: Header=BB26_3 Depth=2
	jmp	.LBB26_8
.LBB26_8:                               # %for.inc
                                        #   in Loop: Header=BB26_3 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB26_3
.LBB26_9:                               # %for.end
                                        #   in Loop: Header=BB26_1 Depth=1
	jmp	.LBB26_10
.LBB26_10:                              # %for.inc.8
                                        #   in Loop: Header=BB26_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB26_1
.LBB26_11:                              # %for.end.10
	movl	$1, -4(%rbp)
.LBB26_12:                              # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_matrix3_is_diagonal, .Lfunc_end26-gimp_matrix3_is_diagonal
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI27_0:
	.quad	4517329193108106637     # double 9.9999999999999995E-7
.LCPI27_2:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI27_1:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.globl	gimp_matrix3_is_affine
	.align	16, 0x90
	.type	gimp_matrix3_is_affine,@function
gimp_matrix3_is_affine:                 # @gimp_matrix3_is_affine
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
	xorl	%eax, %eax
	movb	%al, %cl
	movsd	.LCPI27_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movsd	48(%rdi), %xmm1         # xmm1 = mem[0],zero
	movapd	.LCPI27_1(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	movb	%cl, -9(%rbp)           # 1-byte Spill
	jbe	.LBB27_3
# BB#1:                                 # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	movsd	.LCPI27_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-8(%rbp), %rdx
	movsd	56(%rdx), %xmm1         # xmm1 = mem[0],zero
	movapd	.LCPI27_1(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	movb	%cl, -9(%rbp)           # 1-byte Spill
	jbe	.LBB27_3
# BB#2:                                 # %land.rhs
	movsd	.LCPI27_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI27_2(%rip), %xmm1  # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	64(%rax), %xmm2         # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	movapd	.LCPI27_1(%rip), %xmm1  # xmm1 = [9223372036854775807,9223372036854775807]
	andpd	%xmm1, %xmm2
	ucomisd	%xmm2, %xmm0
	seta	%cl
	movb	%cl, -9(%rbp)           # 1-byte Spill
.LBB27_3:                               # %land.end
	movb	-9(%rbp), %al           # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_matrix3_is_affine, .Lfunc_end27-gimp_matrix3_is_affine
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI28_0:
	.quad	4517329193108106637     # double 9.9999999999999995E-7
.LCPI28_2:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI28_1:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.globl	gimp_matrix3_is_simple
	.align	16, 0x90
	.type	gimp_matrix3_is_simple,@function
gimp_matrix3_is_simple:                 # @gimp_matrix3_is_simple
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	movsd	.LCPI28_0(%rip), %xmm0  # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	subsd	48(%rdi), %xmm1
	movapd	.LCPI28_1(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	movb	%cl, -17(%rbp)          # 1-byte Spill
	jbe	.LBB28_15
# BB#1:                                 # %land.lhs.true
	xorl	%eax, %eax
	movb	%al, %cl
	movsd	.LCPI28_0(%rip), %xmm0  # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	-16(%rbp), %rdx
	subsd	56(%rdx), %xmm1
	movapd	.LCPI28_1(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	movb	%cl, -17(%rbp)          # 1-byte Spill
	jbe	.LBB28_15
# BB#2:                                 # %land.lhs.true.7
	xorl	%eax, %eax
	movb	%al, %cl
	movsd	.LCPI28_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI28_2(%rip), %xmm1  # xmm1 = mem[0],zero
	movq	-16(%rbp), %rdx
	movsd	64(%rdx), %xmm2         # xmm2 = mem[0],zero
	movapd	.LCPI28_1(%rip), %xmm3  # xmm3 = [9223372036854775807,9223372036854775807]
	andpd	%xmm3, %xmm2
	subsd	%xmm2, %xmm1
	movapd	.LCPI28_1(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	movb	%cl, -17(%rbp)          # 1-byte Spill
	jbe	.LBB28_15
# BB#3:                                 # %land.lhs.true.14
	xorl	%eax, %eax
	movb	%al, %cl
	movsd	.LCPI28_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdx
	movsd	16(%rdx), %xmm1         # xmm1 = mem[0],zero
	movq	-16(%rbp), %rdx
	movsd	16(%rdx), %xmm2         # xmm2 = mem[0],zero
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	movaps	%xmm2, %xmm0
	movb	%cl, -33(%rbp)          # 1-byte Spill
	movsd	%xmm1, -48(%rbp)        # 8-byte Spill
	callq	rint@PLT
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movapd	.LCPI28_1(%rip), %xmm0  # xmm0 = [9223372036854775807,9223372036854775807]
	andpd	%xmm0, %xmm1
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movb	-33(%rbp), %cl          # 1-byte Reload
	movb	%cl, -17(%rbp)          # 1-byte Spill
	jbe	.LBB28_15
# BB#4:                                 # %land.lhs.true.23
	xorl	%eax, %eax
	movb	%al, %cl
	movsd	.LCPI28_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-16(%rbp), %rdx
	movsd	40(%rdx), %xmm1         # xmm1 = mem[0],zero
	movq	-16(%rbp), %rdx
	movsd	40(%rdx), %xmm2         # xmm2 = mem[0],zero
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	movaps	%xmm2, %xmm0
	movb	%cl, -57(%rbp)          # 1-byte Spill
	movsd	%xmm1, -72(%rbp)        # 8-byte Spill
	callq	rint@PLT
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movapd	.LCPI28_1(%rip), %xmm0  # xmm0 = [9223372036854775807,9223372036854775807]
	andpd	%xmm0, %xmm1
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movb	-57(%rbp), %cl          # 1-byte Reload
	movb	%cl, -17(%rbp)          # 1-byte Spill
	jbe	.LBB28_15
# BB#5:                                 # %land.rhs
	movsd	.LCPI28_0(%rip), %xmm0  # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	-16(%rbp), %rax
	subsd	(%rax), %xmm1
	movapd	.LCPI28_1(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB28_9
# BB#6:                                 # %land.lhs.true.37
	movsd	.LCPI28_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI28_2(%rip), %xmm1  # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	8(%rax), %xmm2          # xmm2 = mem[0],zero
	movapd	.LCPI28_1(%rip), %xmm3  # xmm3 = [9223372036854775807,9223372036854775807]
	andpd	%xmm3, %xmm2
	subsd	%xmm2, %xmm1
	movapd	.LCPI28_1(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB28_9
# BB#7:                                 # %land.lhs.true.44
	movsd	.LCPI28_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI28_2(%rip), %xmm1  # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	24(%rax), %xmm2         # xmm2 = mem[0],zero
	movapd	.LCPI28_1(%rip), %xmm3  # xmm3 = [9223372036854775807,9223372036854775807]
	andpd	%xmm3, %xmm2
	subsd	%xmm2, %xmm1
	movapd	.LCPI28_1(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB28_9
# BB#8:                                 # %land.lhs.true.51
	movb	$1, %al
	movsd	.LCPI28_0(%rip), %xmm0  # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	-16(%rbp), %rcx
	subsd	32(%rcx), %xmm1
	movapd	.LCPI28_1(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	movb	%al, -73(%rbp)          # 1-byte Spill
	ja	.LBB28_14
.LBB28_9:                               # %lor.rhs
	xorl	%eax, %eax
	movb	%al, %cl
	movsd	.LCPI28_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI28_2(%rip), %xmm1  # xmm1 = mem[0],zero
	movq	-16(%rbp), %rdx
	movsd	(%rdx), %xmm2           # xmm2 = mem[0],zero
	movapd	.LCPI28_1(%rip), %xmm3  # xmm3 = [9223372036854775807,9223372036854775807]
	andpd	%xmm3, %xmm2
	subsd	%xmm2, %xmm1
	movapd	.LCPI28_1(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	movb	%cl, -74(%rbp)          # 1-byte Spill
	jbe	.LBB28_13
# BB#10:                                # %land.lhs.true.63
	xorl	%eax, %eax
	movb	%al, %cl
	movsd	.LCPI28_0(%rip), %xmm0  # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	-16(%rbp), %rdx
	subsd	8(%rdx), %xmm1
	movapd	.LCPI28_1(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	movb	%cl, -74(%rbp)          # 1-byte Spill
	jbe	.LBB28_13
# BB#11:                                # %land.lhs.true.69
	xorl	%eax, %eax
	movb	%al, %cl
	movsd	.LCPI28_0(%rip), %xmm0  # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movq	-16(%rbp), %rdx
	subsd	24(%rdx), %xmm1
	movapd	.LCPI28_1(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	movb	%cl, -74(%rbp)          # 1-byte Spill
	jbe	.LBB28_13
# BB#12:                                # %land.rhs.75
	movsd	.LCPI28_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI28_2(%rip), %xmm1  # xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	32(%rax), %xmm2         # xmm2 = mem[0],zero
	movapd	.LCPI28_1(%rip), %xmm3  # xmm3 = [9223372036854775807,9223372036854775807]
	andpd	%xmm3, %xmm2
	subsd	%xmm2, %xmm1
	movapd	.LCPI28_1(%rip), %xmm2  # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	seta	%cl
	movb	%cl, -74(%rbp)          # 1-byte Spill
.LBB28_13:                              # %land.end
	movb	-74(%rbp), %al          # 1-byte Reload
	movb	%al, -73(%rbp)          # 1-byte Spill
.LBB28_14:                              # %lor.end
	movb	-73(%rbp), %al          # 1-byte Reload
	movb	%al, -17(%rbp)          # 1-byte Spill
.LBB28_15:                              # %land.end.82
	movb	-17(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_matrix3_is_simple, .Lfunc_end28-gimp_matrix3_is_simple
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI29_0:
	.quad	4640537203540230144     # double 180
.LCPI29_1:
	.quad	4609753056924675352     # double 1.5707963267948966
	.text
	.globl	gimp_matrix4_to_deg
	.align	16, 0x90
	.type	gimp_matrix4_to_deg,@function
gimp_matrix4_to_deg:                    # @gimp_matrix4_to_deg
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movsd	32(%rcx), %xmm0         # xmm0 = mem[0],zero
	callq	asin@PLT
	movsd	.LCPI29_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI29_1(%rip), %xmm2  # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm0
	mulsd	%xmm0, %xmm1
	movq	-16(%rbp), %rcx
	movsd	%xmm1, (%rcx)
	movq	-8(%rbp), %rcx
	movsd	64(%rcx), %xmm0         # xmm0 = mem[0],zero
	callq	asin@PLT
	movsd	.LCPI29_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI29_1(%rip), %xmm2  # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm0
	mulsd	%xmm0, %xmm1
	movq	-24(%rbp), %rcx
	movsd	%xmm1, (%rcx)
	movq	-8(%rbp), %rcx
	movsd	72(%rcx), %xmm0         # xmm0 = mem[0],zero
	callq	asin@PLT
	movsd	.LCPI29_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI29_1(%rip), %xmm2  # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm0
	mulsd	%xmm0, %xmm1
	movq	-32(%rbp), %rcx
	movsd	%xmm1, (%rcx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_matrix4_to_deg, .Lfunc_end29-gimp_matrix4_to_deg
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_matrix2_set_default,@function
gimp_param_matrix2_set_default:         # @gimp_param_matrix2_set_default
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_param_matrix2_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$72, %rax
	movq	%rax, %rsi
	callq	g_value_set_static_boxed@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	gimp_param_matrix2_set_default, .Lfunc_end30-gimp_param_matrix2_set_default
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_matrix2_values_cmp,@function
gimp_param_matrix2_values_cmp:          # @gimp_param_matrix2_values_cmp
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB31_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	cmpq	$0, -48(%rbp)
	cmovnel	%ecx, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB31_16
.LBB31_2:                               # %if.else
	cmpq	$0, -48(%rbp)
	jne	.LBB31_4
# BB#3:                                 # %if.then.5
	cmpq	$0, -40(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB31_16
.LBB31_4:                               # %if.end
	jmp	.LBB31_5
.LBB31_5:                               # %if.end.7
	movl	$0, -52(%rbp)
.LBB31_6:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_8 Depth 2
	cmpl	$2, -52(%rbp)
	jge	.LBB31_15
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB31_6 Depth=1
	movl	$0, -56(%rbp)
.LBB31_8:                               # %for.cond.10
                                        #   Parent Loop BB31_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$2, -56(%rbp)
	jge	.LBB31_13
# BB#9:                                 # %for.body.13
                                        #   in Loop: Header=BB31_8 Depth=2
	movslq	-56(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movq	-40(%rbp), %rdx
	shlq	$4, %rcx
	addq	%rcx, %rdx
	movsd	(%rdx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movslq	-56(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movq	-48(%rbp), %rdx
	shlq	$4, %rcx
	addq	%rcx, %rdx
	ucomisd	(%rdx,%rax,8), %xmm0
	jne	.LBB31_10
	jp	.LBB31_10
	jmp	.LBB31_11
.LBB31_10:                              # %if.then.24
	movl	$1, -4(%rbp)
	jmp	.LBB31_16
.LBB31_11:                              # %if.end.25
                                        #   in Loop: Header=BB31_8 Depth=2
	jmp	.LBB31_12
.LBB31_12:                              # %for.inc
                                        #   in Loop: Header=BB31_8 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB31_8
.LBB31_13:                              # %for.end
                                        #   in Loop: Header=BB31_6 Depth=1
	jmp	.LBB31_14
.LBB31_14:                              # %for.inc.26
                                        #   in Loop: Header=BB31_6 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB31_6
.LBB31_15:                              # %for.end.28
	movl	$0, -4(%rbp)
.LBB31_16:                              # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_param_matrix2_values_cmp, .Lfunc_end31-gimp_param_matrix2_values_cmp
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_matrix3_set_default,@function
gimp_param_matrix3_set_default:         # @gimp_param_matrix3_set_default
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	gimp_param_matrix3_get_type@PLT
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	$72, %rax
	movq	%rax, %rsi
	callq	g_value_set_static_boxed@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_param_matrix3_set_default, .Lfunc_end32-gimp_param_matrix3_set_default
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_param_matrix3_values_cmp,@function
gimp_param_matrix3_values_cmp:          # @gimp_param_matrix3_values_cmp
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB33_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	cmpq	$0, -48(%rbp)
	cmovnel	%ecx, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB33_16
.LBB33_2:                               # %if.else
	cmpq	$0, -48(%rbp)
	jne	.LBB33_4
# BB#3:                                 # %if.then.5
	cmpq	$0, -40(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB33_16
.LBB33_4:                               # %if.end
	jmp	.LBB33_5
.LBB33_5:                               # %if.end.7
	movl	$0, -52(%rbp)
.LBB33_6:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_8 Depth 2
	cmpl	$3, -52(%rbp)
	jge	.LBB33_15
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB33_6 Depth=1
	movl	$0, -56(%rbp)
.LBB33_8:                               # %for.cond.10
                                        #   Parent Loop BB33_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -56(%rbp)
	jge	.LBB33_13
# BB#9:                                 # %for.body.13
                                        #   in Loop: Header=BB33_8 Depth=2
	movslq	-56(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movq	-40(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rdx
	movsd	(%rdx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movslq	-56(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movq	-48(%rbp), %rdx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rdx
	ucomisd	(%rdx,%rax,8), %xmm0
	jne	.LBB33_10
	jp	.LBB33_10
	jmp	.LBB33_11
.LBB33_10:                              # %if.then.24
	movl	$1, -4(%rbp)
	jmp	.LBB33_16
.LBB33_11:                              # %if.end.25
                                        #   in Loop: Header=BB33_8 Depth=2
	jmp	.LBB33_12
.LBB33_12:                              # %for.inc
                                        #   in Loop: Header=BB33_8 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB33_8
.LBB33_13:                              # %for.end
                                        #   in Loop: Header=BB33_6 Depth=1
	jmp	.LBB33_14
.LBB33_14:                              # %for.inc.26
                                        #   in Loop: Header=BB33_6 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB33_6
.LBB33_15:                              # %for.end.28
	movl	$0, -4(%rbp)
.LBB33_16:                              # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end33:
	.size	gimp_param_matrix3_values_cmp, .Lfunc_end33-gimp_param_matrix3_values_cmp
	.cfi_endproc

	.type	gimp_matrix2_get_type.matrix_type,@object # @gimp_matrix2_get_type.matrix_type
	.local	gimp_matrix2_get_type.matrix_type
	.comm	gimp_matrix2_get_type.matrix_type,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpMatrix2"
	.size	.L.str, 12

	.type	gimp_param_matrix2_get_type.spec_type,@object # @gimp_param_matrix2_get_type.spec_type
	.local	gimp_param_matrix2_get_type.spec_type
	.comm	gimp_param_matrix2_get_type.spec_type,8,8
	.type	gimp_param_matrix2_get_type.type_info,@object # @gimp_param_matrix2_get_type.type_info
	.section	.data.rel.ro.local,"aw",@progbits
	.align	8
gimp_param_matrix2_get_type.type_info:
	.short	80                      # 0x50
	.zero	6
	.quad	0
	.quad	0
	.quad	gimp_param_matrix2_class_init
	.quad	0
	.quad	0
	.short	104                     # 0x68
	.short	0                       # 0x0
	.zero	4
	.quad	gimp_param_matrix2_init
	.quad	0
	.size	gimp_param_matrix2_get_type.type_info, 72

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"GimpParamMatrix2"
	.size	.L.str.1, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"LibGimpMath"
	.size	.L.str.2, 12

	.type	.L__func__.gimp_param_spec_matrix2,@object # @__func__.gimp_param_spec_matrix2
.L__func__.gimp_param_spec_matrix2:
	.asciz	"gimp_param_spec_matrix2"
	.size	.L__func__.gimp_param_spec_matrix2, 24

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"default_value != NULL"
	.size	.L.str.3, 22

	.type	gimp_matrix2_identity.identity,@object # @gimp_matrix2_identity.identity
	.section	.rodata,"a",@progbits
	.align	8
gimp_matrix2_identity.identity:
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	4607182418800017408     # double 1.000000e+00
	.size	gimp_matrix2_identity.identity, 32

	.type	gimp_matrix3_get_type.matrix_type,@object # @gimp_matrix3_get_type.matrix_type
	.local	gimp_matrix3_get_type.matrix_type
	.comm	gimp_matrix3_get_type.matrix_type,8,8
	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"GimpMatrix3"
	.size	.L.str.4, 12

	.type	gimp_param_matrix3_get_type.spec_type,@object # @gimp_param_matrix3_get_type.spec_type
	.local	gimp_param_matrix3_get_type.spec_type
	.comm	gimp_param_matrix3_get_type.spec_type,8,8
	.type	gimp_param_matrix3_get_type.type_info,@object # @gimp_param_matrix3_get_type.type_info
	.section	.data.rel.ro.local,"aw",@progbits
	.align	8
gimp_param_matrix3_get_type.type_info:
	.short	80                      # 0x50
	.zero	6
	.quad	0
	.quad	0
	.quad	gimp_param_matrix3_class_init
	.quad	0
	.quad	0
	.short	144                     # 0x90
	.short	0                       # 0x0
	.zero	4
	.quad	gimp_param_matrix3_init
	.quad	0
	.size	gimp_param_matrix3_get_type.type_info, 72

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"GimpParamMatrix3"
	.size	.L.str.5, 17

	.type	gimp_matrix3_identity.identity,@object # @gimp_matrix3_identity.identity
	.section	.rodata,"a",@progbits
	.align	8
gimp_matrix3_identity.identity:
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	4607182418800017408     # double 1.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	0                       # double 0.000000e+00
	.quad	4607182418800017408     # double 1.000000e+00
	.size	gimp_matrix3_identity.identity, 72


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
