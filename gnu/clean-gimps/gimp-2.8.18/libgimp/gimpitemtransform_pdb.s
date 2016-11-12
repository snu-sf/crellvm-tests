	.text
	.file	"gimpitemtransform_pdb.bc"
	.globl	gimp_item_transform_flip_simple
	.align	16, 0x90
	.type	gimp_item_transform_flip_simple,@function
gimp_item_transform_flip_simple:        # @gimp_item_transform_flip_simple
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
	pushq	%rbx
	subq	$104, %rsp
.Ltmp3:
	.cfi_offset %rbx, -24
	leaq	.L.str(%rip), %rax
	leaq	-44(%rbp), %rcx
	movl	$11, %r8d
	xorl	%r9d, %r9d
	movl	$3, %r10d
	movl	$22, %r11d
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movl	$-1, -48(%rbp)
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %edi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	%edi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -56(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	%edx, -60(%rbp)         # 4-byte Spill
	movl	%r8d, %edx
	movl	-60(%rbp), %ecx         # 4-byte Reload
	movl	%r9d, %r8d
	movl	-56(%rbp), %r9d         # 4-byte Reload
	movl	$0, (%rsp)
	movl	-52(%rbp), %ebx         # 4-byte Reload
	movl	%ebx, 8(%rsp)
	movl	$3, 16(%rsp)
	movl	$22, 24(%rsp)
	movb	$1, %al
	movl	%r11d, -64(%rbp)        # 4-byte Spill
	movl	%r10d, -68(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -48(%rbp)
.LBB0_2:                                # %if.end
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-48(%rbp), %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_item_transform_flip_simple, .Lfunc_end0-gimp_item_transform_flip_simple
	.cfi_endproc

	.globl	gimp_item_transform_flip
	.align	16, 0x90
	.type	gimp_item_transform_flip,@function
gimp_item_transform_flip:               # @gimp_item_transform_flip
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp4:
	.cfi_def_cfa_offset 16
.Ltmp5:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp6:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	leaq	.L.str.1(%rip), %rax
	leaq	-52(%rbp), %rsi
	movl	$11, %edx
	movl	$3, %ecx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm3, -40(%rbp)
	movl	$-1, -56(%rbp)
	movl	-4(%rbp), %edi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-40(%rbp), %xmm3        # xmm3 = mem[0],zero
	movl	%edi, -60(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	-60(%rbp), %r9d         # 4-byte Reload
	movl	%ecx, -64(%rbp)         # 4-byte Spill
	movl	%r9d, %ecx
	movl	-64(%rbp), %r10d        # 4-byte Reload
	movl	%r8d, -68(%rbp)         # 4-byte Spill
	movl	%r10d, %r8d
	movl	%r10d, %r9d
	movl	$3, (%rsp)
	movl	$3, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$4, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -56(%rbp)
.LBB1_2:                                # %if.end
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-56(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_item_transform_flip, .Lfunc_end1-gimp_item_transform_flip
	.cfi_endproc

	.globl	gimp_item_transform_perspective
	.align	16, 0x90
	.type	gimp_item_transform_perspective,@function
gimp_item_transform_perspective:        # @gimp_item_transform_perspective
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp9:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	leaq	.L.str.2(%rip), %rax
	leaq	-84(%rbp), %rsi
	movl	$11, %edx
	movl	$3, %ecx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm3, -40(%rbp)
	movsd	%xmm4, -48(%rbp)
	movsd	%xmm5, -56(%rbp)
	movsd	%xmm6, -64(%rbp)
	movsd	%xmm7, -72(%rbp)
	movl	$-1, -88(%rbp)
	movl	-4(%rbp), %edi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-40(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-48(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-56(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-64(%rbp), %xmm6        # xmm6 = mem[0],zero
	movsd	-72(%rbp), %xmm7        # xmm7 = mem[0],zero
	movl	%edi, -92(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	-92(%rbp), %r9d         # 4-byte Reload
	movl	%ecx, -96(%rbp)         # 4-byte Spill
	movl	%r9d, %ecx
	movl	-96(%rbp), %r10d        # 4-byte Reload
	movl	%r8d, -100(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movl	%r10d, %r9d
	movl	$3, (%rsp)
	movl	$3, 8(%rsp)
	movl	$3, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$3, 32(%rsp)
	movl	$3, 40(%rsp)
	movl	$22, 48(%rsp)
	movb	$8, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movq	-80(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -88(%rbp)
.LBB2_2:                                # %if.end
	movq	-80(%rbp), %rdi
	movl	-84(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-88(%rbp), %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_item_transform_perspective, .Lfunc_end2-gimp_item_transform_perspective
	.cfi_endproc

	.globl	gimp_item_transform_rotate_simple
	.align	16, 0x90
	.type	gimp_item_transform_rotate_simple,@function
gimp_item_transform_rotate_simple:      # @gimp_item_transform_rotate_simple
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp12:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$120, %rsp
.Ltmp13:
	.cfi_offset %rbx, -24
	leaq	.L.str.3(%rip), %rax
	leaq	-52(%rbp), %rcx
	movl	$11, %r8d
	xorl	%r9d, %r9d
	movl	$3, %r10d
	movl	$22, %r11d
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movl	$-1, -56(%rbp)
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %edi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	%edi, -60(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -64(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	%edx, -68(%rbp)         # 4-byte Spill
	movl	%r8d, %edx
	movl	-68(%rbp), %ecx         # 4-byte Reload
	movl	%r9d, %r8d
	movl	-64(%rbp), %r9d         # 4-byte Reload
	movl	$0, (%rsp)
	movl	-60(%rbp), %ebx         # 4-byte Reload
	movl	%ebx, 8(%rsp)
	movl	$3, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$22, 32(%rsp)
	movb	$2, %al
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -56(%rbp)
.LBB3_2:                                # %if.end
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-56(%rbp), %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_item_transform_rotate_simple, .Lfunc_end3-gimp_item_transform_rotate_simple
	.cfi_endproc

	.globl	gimp_item_transform_rotate
	.align	16, 0x90
	.type	gimp_item_transform_rotate,@function
gimp_item_transform_rotate:             # @gimp_item_transform_rotate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	leaq	.L.str.4(%rip), %rax
	leaq	-52(%rbp), %rcx
	movl	$11, %edx
	movl	$3, %r8d
	xorl	%r9d, %r9d
	movl	$22, %r10d
	movl	%edi, -4(%rbp)
	movsd	%xmm0, -16(%rbp)
	movl	%esi, -20(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movl	$-1, -56(%rbp)
	movl	-4(%rbp), %esi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-20(%rbp), %edi
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movl	%edi, -60(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -64(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	-64(%rbp), %ecx         # 4-byte Reload
	movl	-60(%rbp), %r11d        # 4-byte Reload
	movl	%r11d, (%rsp)
	movl	$3, 8(%rsp)
	movl	$3, 16(%rsp)
	movl	$22, 24(%rsp)
	movb	$3, %al
	movl	%r10d, -68(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -56(%rbp)
.LBB4_2:                                # %if.end
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-56(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_item_transform_rotate, .Lfunc_end4-gimp_item_transform_rotate
	.cfi_endproc

	.globl	gimp_item_transform_scale
	.align	16, 0x90
	.type	gimp_item_transform_scale,@function
gimp_item_transform_scale:              # @gimp_item_transform_scale
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	leaq	.L.str.5(%rip), %rax
	leaq	-52(%rbp), %rsi
	movl	$11, %edx
	movl	$3, %ecx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm3, -40(%rbp)
	movl	$-1, -56(%rbp)
	movl	-4(%rbp), %edi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-40(%rbp), %xmm3        # xmm3 = mem[0],zero
	movl	%edi, -60(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	-60(%rbp), %r9d         # 4-byte Reload
	movl	%ecx, -64(%rbp)         # 4-byte Spill
	movl	%r9d, %ecx
	movl	-64(%rbp), %r10d        # 4-byte Reload
	movl	%r8d, -68(%rbp)         # 4-byte Spill
	movl	%r10d, %r8d
	movl	%r10d, %r9d
	movl	$3, (%rsp)
	movl	$3, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$4, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -56(%rbp)
.LBB5_2:                                # %if.end
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-56(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_item_transform_scale, .Lfunc_end5-gimp_item_transform_scale
	.cfi_endproc

	.globl	gimp_item_transform_shear
	.align	16, 0x90
	.type	gimp_item_transform_shear,@function
gimp_item_transform_shear:              # @gimp_item_transform_shear
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp22:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	.L.str.6(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$11, %edx
	xorl	%r8d, %r8d
	movl	$3, %r9d
	movl	$22, %r10d
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movl	$-1, -32(%rbp)
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	%edi, -36(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -40(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	-40(%rbp), %ecx         # 4-byte Reload
	movl	-36(%rbp), %r11d        # 4-byte Reload
	movl	%r9d, -44(%rbp)         # 4-byte Spill
	movl	%r11d, %r9d
	movl	$3, (%rsp)
	movl	$22, 8(%rsp)
	movb	$1, %al
	movl	%r10d, -48(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -32(%rbp)
.LBB6_2:                                # %if.end
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-32(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_item_transform_shear, .Lfunc_end6-gimp_item_transform_shear
	.cfi_endproc

	.globl	gimp_item_transform_2d
	.align	16, 0x90
	.type	gimp_item_transform_2d,@function
gimp_item_transform_2d:                 # @gimp_item_transform_2d
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	leaq	.L.str.7(%rip), %rax
	leaq	-76(%rbp), %rsi
	movl	$11, %edx
	movl	$3, %ecx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm3, -40(%rbp)
	movsd	%xmm4, -48(%rbp)
	movsd	%xmm5, -56(%rbp)
	movsd	%xmm6, -64(%rbp)
	movl	$-1, -80(%rbp)
	movl	-4(%rbp), %edi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-40(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-48(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-56(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-64(%rbp), %xmm6        # xmm6 = mem[0],zero
	movl	%edi, -84(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	-84(%rbp), %r9d         # 4-byte Reload
	movl	%ecx, -88(%rbp)         # 4-byte Spill
	movl	%r9d, %ecx
	movl	-88(%rbp), %r10d        # 4-byte Reload
	movl	%r8d, -92(%rbp)         # 4-byte Spill
	movl	%r10d, %r8d
	movl	%r10d, %r9d
	movl	$3, (%rsp)
	movl	$3, 8(%rsp)
	movl	$3, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$3, 32(%rsp)
	movl	$22, 40(%rsp)
	movb	$7, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -80(%rbp)
.LBB7_2:                                # %if.end
	movq	-72(%rbp), %rdi
	movl	-76(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-80(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_item_transform_2d, .Lfunc_end7-gimp_item_transform_2d
	.cfi_endproc

	.globl	gimp_item_transform_matrix
	.align	16, 0x90
	.type	gimp_item_transform_matrix,@function
gimp_item_transform_matrix:             # @gimp_item_transform_matrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp28:
	.cfi_def_cfa_register %rbp
	subq	$192, %rsp
	movsd	16(%rbp), %xmm8         # xmm8 = mem[0],zero
	leaq	.L.str.8(%rip), %rax
	leaq	-92(%rbp), %rsi
	movl	$11, %edx
	movl	$3, %ecx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm3, -40(%rbp)
	movsd	%xmm4, -48(%rbp)
	movsd	%xmm5, -56(%rbp)
	movsd	%xmm6, -64(%rbp)
	movsd	%xmm7, -72(%rbp)
	movsd	%xmm8, -80(%rbp)
	movl	$-1, -96(%rbp)
	movl	-4(%rbp), %edi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-40(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-48(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-56(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-64(%rbp), %xmm6        # xmm6 = mem[0],zero
	movsd	-72(%rbp), %xmm7        # xmm7 = mem[0],zero
	movsd	-80(%rbp), %xmm8        # xmm8 = mem[0],zero
	movl	%edi, -100(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	-100(%rbp), %r9d        # 4-byte Reload
	movl	%ecx, -104(%rbp)        # 4-byte Spill
	movl	%r9d, %ecx
	movl	-104(%rbp), %r10d       # 4-byte Reload
	movl	%r8d, -108(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movl	%r10d, %r9d
	movl	$3, (%rsp)
	movl	$3, 8(%rsp)
	movl	$3, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$3, 32(%rsp)
	movl	$3, 40(%rsp)
	movl	$3, 48(%rsp)
	movsd	%xmm8, 56(%rsp)
	movl	$22, 64(%rsp)
	movb	$8, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movq	-88(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -96(%rbp)
.LBB8_2:                                # %if.end
	movq	-88(%rbp), %rdi
	movl	-92(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-96(%rbp), %eax
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_item_transform_matrix, .Lfunc_end8-gimp_item_transform_matrix
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-item-transform-flip-simple"
	.size	.L.str, 32

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-item-transform-flip"
	.size	.L.str.1, 25

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-item-transform-perspective"
	.size	.L.str.2, 32

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-item-transform-rotate-simple"
	.size	.L.str.3, 34

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-item-transform-rotate"
	.size	.L.str.4, 27

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-item-transform-scale"
	.size	.L.str.5, 26

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-item-transform-shear"
	.size	.L.str.6, 26

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-item-transform-2d"
	.size	.L.str.7, 23

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-item-transform-matrix"
	.size	.L.str.8, 27


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
