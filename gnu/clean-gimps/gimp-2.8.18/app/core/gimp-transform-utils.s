	.text
	.file	"gimp-transform-utils.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4611686018427387904     # double 2
	.text
	.globl	gimp_transform_get_rotate_center
	.align	16, 0x90
	.type	gimp_transform_get_rotate_center,@function
gimp_transform_get_rotate_center:       # @gimp_transform_get_rotate_center
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
	movq	16(%rbp), %rax
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	movq	%r9, -32(%rbp)
	movq	%rax, -40(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -32(%rbp)
	je	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_transform_get_rotate_center, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_12
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	jmp	.LBB0_6
.LBB0_6:                                # %do.body.1
	cmpq	$0, -40(%rbp)
	je	.LBB0_8
# BB#7:                                 # %if.then.3
	jmp	.LBB0_9
.LBB0_8:                                # %if.else.4
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_transform_get_rotate_center, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_12
.LBB0_9:                                # %if.end.5
	jmp	.LBB0_10
.LBB0_10:                               # %do.end.6
	cmpl	$0, -20(%rbp)
	je	.LBB0_12
# BB#11:                                # %if.then.7
	movsd	.LCPI0_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-4(%rbp), %xmm1
	cvtsi2sdl	-12(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movq	-32(%rbp), %rax
	movsd	%xmm1, (%rax)
	cvtsi2sdl	-8(%rbp), %xmm1
	cvtsi2sdl	-16(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movq	-40(%rbp), %rax
	movsd	%xmm1, (%rax)
.LBB0_12:                               # %if.end.13
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_transform_get_rotate_center, .Lfunc_end0-gimp_transform_get_rotate_center
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI1_0:
	.quad	4611686018427387904     # double 2
	.text
	.globl	gimp_transform_get_flip_axis
	.align	16, 0x90
	.type	gimp_transform_get_flip_axis,@function
gimp_transform_get_flip_axis:           # @gimp_transform_get_flip_axis
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
	movq	16(%rbp), %rax
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	movl	%r9d, -24(%rbp)
	movq	%rax, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -32(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_transform_get_flip_axis, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_12
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	cmpl	$0, -24(%rbp)
	je	.LBB1_12
# BB#6:                                 # %if.then.1
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	je	.LBB1_7
	jmp	.LBB1_13
.LBB1_13:                               # %if.then.1
	movl	-36(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	je	.LBB1_8
	jmp	.LBB1_9
.LBB1_7:                                # %sw.bb
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-4(%rbp), %xmm1
	cvtsi2sdl	-12(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movq	-32(%rbp), %rax
	movsd	%xmm1, (%rax)
	jmp	.LBB1_11
.LBB1_8:                                # %sw.bb.3
	movsd	.LCPI1_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-8(%rbp), %xmm1
	cvtsi2sdl	-16(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movq	-32(%rbp), %rax
	movsd	%xmm1, (%rax)
	jmp	.LBB1_11
.LBB1_9:                                # %sw.default
	jmp	.LBB1_10
.LBB1_10:                               # %do.body.8
	movabsq	$.L.str, %rdi
	movl	$8, %esi
	movabsq	$.L.str.4, %rdx
	movabsq	$.L.str.5, %rcx
	movl	$72, %r8d
	movabsq	$.L__func__.gimp_transform_get_flip_axis, %r9
	movb	$0, %al
	callq	g_log
	jmp	.LBB1_12
.LBB1_11:                               # %sw.epilog
	jmp	.LBB1_12
.LBB1_12:                               # %if.end.10
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_transform_get_flip_axis, .Lfunc_end1-gimp_transform_get_flip_axis
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
.LCPI2_1:
	.quad	-4616189618054758400    # double -1
	.text
	.globl	gimp_transform_matrix_flip
	.align	16, 0x90
	.type	gimp_transform_matrix_flip,@function
gimp_transform_matrix_flip:             # @gimp_transform_matrix_flip
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_transform_matrix_flip, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_9
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB2_6
	jmp	.LBB2_10
.LBB2_10:                               # %do.end
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	je	.LBB2_7
	jmp	.LBB2_11
.LBB2_11:                               # %do.end
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	je	.LBB2_8
	jmp	.LBB2_9
.LBB2_6:                                # %sw.bb
	xorps	%xmm1, %xmm1
	movq	-8(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	callq	gimp_matrix3_translate
	movsd	.LCPI2_1, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rdi
	callq	gimp_matrix3_scale
	xorps	%xmm1, %xmm1
	movq	-8(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_matrix3_translate
	jmp	.LBB2_9
.LBB2_7:                                # %sw.bb.1
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rdi
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm1
	callq	gimp_matrix3_translate
	movsd	.LCPI2_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI2_1, %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rdi
	callq	gimp_matrix3_scale
	xorps	%xmm0, %xmm0
	movq	-8(%rbp), %rdi
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_matrix3_translate
	jmp	.LBB2_9
.LBB2_8:                                # %sw.bb.3
	jmp	.LBB2_9
.LBB2_9:                                # %sw.epilog
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_transform_matrix_flip, .Lfunc_end2-gimp_transform_matrix_flip
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4607182418800017408     # double 1
.LCPI3_1:
	.quad	-4616189618054758400    # double -1
	.text
	.globl	gimp_transform_matrix_flip_free
	.align	16, 0x90
	.type	gimp_transform_matrix_flip_free,@function
gimp_transform_matrix_flip_free:        # @gimp_transform_matrix_flip_free
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm3, -40(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_transform_matrix_flip_free, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB3_6
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-24(%rbp), %xmm0
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-16(%rbp), %xmm1
	callq	atan2
	movsd	%xmm0, -48(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_matrix3_identity
	movq	-8(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm1
	callq	gimp_matrix3_translate
	movq	-8(%rbp), %rdi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	callq	gimp_matrix3_rotate
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI3_1, %xmm1         # xmm1 = mem[0],zero
	movq	-8(%rbp), %rdi
	callq	gimp_matrix3_scale
	movq	-8(%rbp), %rdi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_matrix3_rotate
	movq	-8(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_matrix3_translate
.LBB3_6:                                # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_transform_matrix_flip_free, .Lfunc_end3-gimp_transform_matrix_flip_free
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI4_0:
	.quad	-4613618979930100456    # double -1.5707963267948966
.LCPI4_1:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI4_2:
	.quad	4609753056924675352     # double 1.5707963267948966
	.text
	.globl	gimp_transform_matrix_rotate
	.align	16, 0x90
	.type	gimp_transform_matrix_rotate,@function
gimp_transform_matrix_rotate:           # @gimp_transform_matrix_rotate
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
	movl	%esi, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	-12(%rbp), %esi
	testl	%esi, %esi
	movl	%esi, -44(%rbp)         # 4-byte Spill
	je	.LBB4_1
	jmp	.LBB4_5
.LBB4_5:                                # %entry
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB4_2
	jmp	.LBB4_6
.LBB4_6:                                # %entry
	movl	-44(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB4_3
	jmp	.LBB4_4
.LBB4_1:                                # %sw.bb
	movsd	.LCPI4_2, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	jmp	.LBB4_4
.LBB4_2:                                # %sw.bb.1
	movsd	.LCPI4_1, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	jmp	.LBB4_4
.LBB4_3:                                # %sw.bb.2
	movsd	.LCPI4_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
.LBB4_4:                                # %sw.epilog
	movq	-8(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	callq	gimp_transform_matrix_rotate_center
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_transform_matrix_rotate, .Lfunc_end4-gimp_transform_matrix_rotate
	.cfi_endproc

	.globl	gimp_transform_matrix_rotate_center
	.align	16, 0x90
	.type	gimp_transform_matrix_rotate_center,@function
gimp_transform_matrix_rotate_center:    # @gimp_transform_matrix_rotate_center
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB5_3
# BB#2:                                 # %if.then
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_transform_matrix_rotate_center, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB5_6
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %do.end
	movq	-8(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm1
	callq	gimp_matrix3_translate
	movq	-8(%rbp), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_matrix3_rotate
	movq	-8(%rbp), %rdi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_matrix3_translate
.LBB5_6:                                # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_transform_matrix_rotate_center, .Lfunc_end5-gimp_transform_matrix_rotate_center
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI6_0:
	.quad	4611686018427387904     # double 2
	.text
	.globl	gimp_transform_matrix_rotate_rect
	.align	16, 0x90
	.type	gimp_transform_matrix_rotate_rect,@function
gimp_transform_matrix_rotate_rect:      # @gimp_transform_matrix_rotate_rect
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB6_3
# BB#2:                                 # %if.then
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_transform_matrix_rotate_rect, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB6_6
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %do.end
	movsd	.LCPI6_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-12(%rbp), %xmm1
	cvtsi2sdl	-20(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -40(%rbp)
	cvtsi2sdl	-16(%rbp), %xmm1
	cvtsi2sdl	-24(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -48(%rbp)
	movq	-8(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm1
	callq	gimp_matrix3_translate
	movq	-8(%rbp), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	gimp_matrix3_rotate
	movq	-8(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_matrix3_translate
.LBB6_6:                                # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_transform_matrix_rotate_rect, .Lfunc_end6-gimp_transform_matrix_rotate_rect
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI7_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_transform_matrix_scale
	.align	16, 0x90
	.type	gimp_transform_matrix_scale,@function
gimp_transform_matrix_scale:            # @gimp_transform_matrix_scale
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
	movsd	.LCPI7_0, %xmm4         # xmm4 = mem[0],zero
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movsd	%xmm2, -48(%rbp)
	movsd	%xmm3, -56(%rbp)
	movsd	%xmm4, -64(%rbp)
	movsd	%xmm4, -72(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB7_3
# BB#2:                                 # %if.then
	jmp	.LBB7_4
.LBB7_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_transform_matrix_scale, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_10
.LBB7_4:                                # %if.end
	jmp	.LBB7_5
.LBB7_5:                                # %do.end
	cmpl	$0, -20(%rbp)
	jle	.LBB7_7
# BB#6:                                 # %if.then.2
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-20(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
.LBB7_7:                                # %if.end.3
	cmpl	$0, -24(%rbp)
	jle	.LBB7_9
# BB#8:                                 # %if.then.6
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-24(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
.LBB7_9:                                # %if.end.9
	movq	-8(%rbp), %rdi
	callq	gimp_matrix3_identity
	xorl	%eax, %eax
	movq	-8(%rbp), %rdi
	movl	%eax, %ecx
	subl	-12(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	subl	-16(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	callq	gimp_matrix3_translate
	movq	-8(%rbp), %rdi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_matrix3_scale
	movq	-8(%rbp), %rdi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_matrix3_translate
.LBB7_10:                               # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_transform_matrix_scale, .Lfunc_end7-gimp_transform_matrix_scale
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI8_0:
	.quad	4611686018427387904     # double 2
	.text
	.globl	gimp_transform_matrix_shear
	.align	16, 0x90
	.type	gimp_transform_matrix_shear,@function
gimp_transform_matrix_shear:            # @gimp_transform_matrix_shear
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movsd	%xmm0, -40(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB8_3
# BB#2:                                 # %if.then
	jmp	.LBB8_4
.LBB8_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_transform_matrix_shear, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_13
.LBB8_4:                                # %if.end
	jmp	.LBB8_5
.LBB8_5:                                # %do.end
	cmpl	$0, -20(%rbp)
	jne	.LBB8_7
# BB#6:                                 # %if.then.2
	movl	$1, -20(%rbp)
.LBB8_7:                                # %if.end.3
	cmpl	$0, -24(%rbp)
	jne	.LBB8_9
# BB#8:                                 # %if.then.5
	movl	$1, -24(%rbp)
.LBB8_9:                                # %if.end.6
	movsd	.LCPI8_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-12(%rbp), %xmm1
	cvtsi2sdl	-20(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -48(%rbp)
	cvtsi2sdl	-16(%rbp), %xmm1
	cvtsi2sdl	-24(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -56(%rbp)
	movq	-8(%rbp), %rdi
	callq	gimp_matrix3_identity
	movq	-8(%rbp), %rdi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movd	%xmm1, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm1
	callq	gimp_matrix3_translate
	cmpl	$0, -28(%rbp)
	jne	.LBB8_11
# BB#10:                                # %if.then.15
	movq	-8(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-24(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_matrix3_xshear
	jmp	.LBB8_12
.LBB8_11:                               # %if.else.18
	movq	-8(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsi2sdl	-20(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	callq	gimp_matrix3_yshear
.LBB8_12:                               # %if.end.21
	movq	-8(%rbp), %rdi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_matrix3_translate
.LBB8_13:                               # %return
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_transform_matrix_shear, .Lfunc_end8-gimp_transform_matrix_shear
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	gimp_transform_matrix_perspective
	.align	16, 0x90
	.type	gimp_transform_matrix_perspective,@function
gimp_transform_matrix_perspective:      # @gimp_transform_matrix_perspective
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movsd	%xmm2, -48(%rbp)
	movsd	%xmm3, -56(%rbp)
	movsd	%xmm4, -64(%rbp)
	movsd	%xmm5, -72(%rbp)
	movsd	%xmm6, -80(%rbp)
	movsd	%xmm7, -88(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB9_3
# BB#2:                                 # %if.then
	jmp	.LBB9_4
.LBB9_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_transform_matrix_perspective, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB9_20
.LBB9_4:                                # %if.end
	jmp	.LBB9_5
.LBB9_5:                                # %do.end
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -176(%rbp)
	movsd	%xmm0, -168(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.LBB9_7
# BB#6:                                 # %if.then.2
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-20(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -168(%rbp)
.LBB9_7:                                # %if.end.3
	cmpl	$0, -24(%rbp)
	jle	.LBB9_9
# BB#8:                                 # %if.then.6
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	cvtsi2sdl	-24(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -176(%rbp)
.LBB9_9:                                # %if.end.9
	xorl	%eax, %eax
	movq	-8(%rbp), %rdi
	movl	%eax, %ecx
	subl	-12(%rbp), %ecx
	cvtsi2sdl	%ecx, %xmm0
	subl	-16(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	callq	gimp_matrix3_translate
	movq	-8(%rbp), %rdi
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-176(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_matrix3_scale
	xorps	%xmm0, %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-80(%rbp), %xmm1
	movsd	%xmm1, -184(%rbp)
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-80(%rbp), %xmm1
	movsd	%xmm1, -192(%rbp)
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-48(%rbp), %xmm1
	addsd	-80(%rbp), %xmm1
	subsd	-64(%rbp), %xmm1
	movsd	%xmm1, -200(%rbp)
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-88(%rbp), %xmm1
	movsd	%xmm1, -208(%rbp)
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-88(%rbp), %xmm1
	movsd	%xmm1, -216(%rbp)
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-56(%rbp), %xmm1
	addsd	-88(%rbp), %xmm1
	subsd	-72(%rbp), %xmm1
	movsd	%xmm1, -224(%rbp)
	movsd	-200(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB9_12
	jp	.LBB9_12
# BB#10:                                # %land.lhs.true
	xorps	%xmm0, %xmm0
	movsd	-224(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB9_12
	jp	.LBB9_12
# BB#11:                                # %if.then.26
	xorps	%xmm0, %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-32(%rbp), %xmm1
	movsd	%xmm1, -160(%rbp)
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-48(%rbp), %xmm1
	movsd	%xmm1, -152(%rbp)
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -144(%rbp)
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-40(%rbp), %xmm1
	movsd	%xmm1, -136(%rbp)
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-56(%rbp), %xmm1
	movsd	%xmm1, -128(%rbp)
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -120(%rbp)
	movsd	%xmm0, -112(%rbp)
	movsd	%xmm0, -104(%rbp)
	jmp	.LBB9_19
.LBB9_12:                               # %if.else.53
	xorps	%xmm0, %xmm0
	movsd	-200(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-216(%rbp), %xmm1
	movsd	-224(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-192(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	movsd	%xmm1, -232(%rbp)
	movsd	-184(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-216(%rbp), %xmm1
	movsd	-208(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-192(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	movsd	%xmm1, -240(%rbp)
	movsd	-240(%rbp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB9_14
	jp	.LBB9_14
# BB#13:                                # %cond.true
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	jmp	.LBB9_15
.LBB9_14:                               # %cond.false
	movsd	-232(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-240(%rbp), %xmm0
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
.LBB9_15:                               # %cond.end
	movsd	-248(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	movsd	%xmm0, -112(%rbp)
	movsd	-184(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-224(%rbp), %xmm0
	movsd	-208(%rbp), %xmm2       # xmm2 = mem[0],zero
	mulsd	-200(%rbp), %xmm2
	subsd	%xmm2, %xmm0
	movsd	%xmm0, -232(%rbp)
	movsd	-240(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB9_17
	jp	.LBB9_17
# BB#16:                                # %cond.true.70
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
	jmp	.LBB9_18
.LBB9_17:                               # %cond.false.71
	movsd	-232(%rbp), %xmm0       # xmm0 = mem[0],zero
	divsd	-240(%rbp), %xmm0
	movsd	%xmm0, -256(%rbp)       # 8-byte Spill
.LBB9_18:                               # %cond.end.73
	movsd	-256(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -104(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-32(%rbp), %xmm0
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-48(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -160(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-32(%rbp), %xmm0
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-64(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -152(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -144(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-40(%rbp), %xmm0
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-56(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -136(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-40(%rbp), %xmm0
	movsd	-104(%rbp), %xmm1       # xmm1 = mem[0],zero
	mulsd	-72(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -128(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -120(%rbp)
.LBB9_19:                               # %if.end.120
	leaq	-160(%rbp), %rdi
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -96(%rbp)
	movq	-8(%rbp), %rsi
	callq	gimp_matrix3_mult
.LBB9_20:                               # %return
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_transform_matrix_perspective, .Lfunc_end9-gimp_transform_matrix_perspective
	.cfi_endproc

	.globl	gimp_transform_polygon_is_convex
	.align	16, 0x90
	.type	gimp_transform_polygon_is_convex,@function
gimp_transform_polygon_is_convex:       # @gimp_transform_polygon_is_convex
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
	xorl	%eax, %eax
	movb	%al, %cl
	xorps	%xmm8, %xmm8
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movsd	%xmm3, -32(%rbp)
	movsd	%xmm4, -40(%rbp)
	movsd	%xmm5, -48(%rbp)
	movsd	%xmm6, -56(%rbp)
	movsd	%xmm7, -64(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-8(%rbp), %xmm0
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-16(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-8(%rbp), %xmm1
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-16(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-8(%rbp), %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-16(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-8(%rbp), %xmm1
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-16(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-24(%rbp), %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-32(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-24(%rbp), %xmm1
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-32(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-24(%rbp), %xmm0
	movsd	-16(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	-32(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	subsd	-24(%rbp), %xmm1
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	subsd	-32(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-80(%rbp), %xmm0
	ucomisd	%xmm8, %xmm0
	movb	%cl, -97(%rbp)          # 1-byte Spill
	jbe	.LBB10_2
# BB#1:                                 # %land.rhs
	xorps	%xmm0, %xmm0
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-96(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	seta	%al
	movb	%al, -97(%rbp)          # 1-byte Spill
.LBB10_2:                               # %land.end
	movb	-97(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_transform_polygon_is_convex, .Lfunc_end10-gimp_transform_polygon_is_convex
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Core"
	.size	.L.str, 10

	.type	.L__func__.gimp_transform_get_rotate_center,@object # @__func__.gimp_transform_get_rotate_center
.L__func__.gimp_transform_get_rotate_center:
	.asciz	"gimp_transform_get_rotate_center"
	.size	.L__func__.gimp_transform_get_rotate_center, 33

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"center_x != NULL"
	.size	.L.str.1, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"center_y != NULL"
	.size	.L.str.2, 17

	.type	.L__func__.gimp_transform_get_flip_axis,@object # @__func__.gimp_transform_get_flip_axis
.L__func__.gimp_transform_get_flip_axis:
	.asciz	"gimp_transform_get_flip_axis"
	.size	.L__func__.gimp_transform_get_flip_axis, 29

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"axis != NULL"
	.size	.L.str.3, 13

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"file %s: line %d (%s): should not be reached"
	.size	.L.str.4, 45

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-transform-utils.c"
	.size	.L.str.5, 23

	.type	.L__func__.gimp_transform_matrix_flip,@object # @__func__.gimp_transform_matrix_flip
.L__func__.gimp_transform_matrix_flip:
	.asciz	"gimp_transform_matrix_flip"
	.size	.L__func__.gimp_transform_matrix_flip, 27

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"matrix != NULL"
	.size	.L.str.6, 15

	.type	.L__func__.gimp_transform_matrix_flip_free,@object # @__func__.gimp_transform_matrix_flip_free
.L__func__.gimp_transform_matrix_flip_free:
	.asciz	"gimp_transform_matrix_flip_free"
	.size	.L__func__.gimp_transform_matrix_flip_free, 32

	.type	.L__func__.gimp_transform_matrix_rotate_rect,@object # @__func__.gimp_transform_matrix_rotate_rect
.L__func__.gimp_transform_matrix_rotate_rect:
	.asciz	"gimp_transform_matrix_rotate_rect"
	.size	.L__func__.gimp_transform_matrix_rotate_rect, 34

	.type	.L__func__.gimp_transform_matrix_rotate_center,@object # @__func__.gimp_transform_matrix_rotate_center
.L__func__.gimp_transform_matrix_rotate_center:
	.asciz	"gimp_transform_matrix_rotate_center"
	.size	.L__func__.gimp_transform_matrix_rotate_center, 36

	.type	.L__func__.gimp_transform_matrix_scale,@object # @__func__.gimp_transform_matrix_scale
.L__func__.gimp_transform_matrix_scale:
	.asciz	"gimp_transform_matrix_scale"
	.size	.L__func__.gimp_transform_matrix_scale, 28

	.type	.L__func__.gimp_transform_matrix_shear,@object # @__func__.gimp_transform_matrix_shear
.L__func__.gimp_transform_matrix_shear:
	.asciz	"gimp_transform_matrix_shear"
	.size	.L__func__.gimp_transform_matrix_shear, 28

	.type	.L__func__.gimp_transform_matrix_perspective,@object # @__func__.gimp_transform_matrix_perspective
.L__func__.gimp_transform_matrix_perspective:
	.asciz	"gimp_transform_matrix_perspective"
	.size	.L__func__.gimp_transform_matrix_perspective, 34


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
