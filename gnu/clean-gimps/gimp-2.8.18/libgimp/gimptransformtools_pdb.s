	.text
	.file	"gimptransformtools_pdb.bc"
	.globl	gimp_flip
	.align	16, 0x90
	.type	gimp_flip,@function
gimp_flip:                              # @gimp_flip
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
	leaq	.L.str(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$16, %edx
	xorl	%r8d, %r8d
	movl	$22, %r9d
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$-1, -24(%rbp)
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edi
	movl	%edi, -28(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -32(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	-32(%rbp), %ecx         # 4-byte Reload
	movl	-28(%rbp), %r10d        # 4-byte Reload
	movl	%r9d, -36(%rbp)         # 4-byte Spill
	movl	%r10d, %r9d
	movl	$22, (%rsp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB0_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_flip, .Lfunc_end0-gimp_flip
	.cfi_endproc

	.globl	gimp_perspective
	.align	16, 0x90
	.type	gimp_perspective,@function
gimp_perspective:                       # @gimp_perspective
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
	subq	$176, %rsp
	leaq	.L.str.1(%rip), %rax
	leaq	-84(%rbp), %rcx
	movl	$16, %edx
	xorl	%r8d, %r8d
	movl	$3, %r9d
	movl	$22, %r10d
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm3, -40(%rbp)
	movsd	%xmm4, -48(%rbp)
	movsd	%xmm5, -56(%rbp)
	movsd	%xmm6, -64(%rbp)
	movsd	%xmm7, -72(%rbp)
	movl	$-1, -88(%rbp)
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edi
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
	movl	%esi, -96(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	-96(%rbp), %ecx         # 4-byte Reload
	movl	-92(%rbp), %r11d        # 4-byte Reload
	movl	%r9d, -100(%rbp)        # 4-byte Spill
	movl	%r11d, %r9d
	movl	$3, (%rsp)
	movl	$3, 8(%rsp)
	movl	$3, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$3, 32(%rsp)
	movl	$3, 40(%rsp)
	movl	$3, 48(%rsp)
	movl	$3, 56(%rsp)
	movl	$22, 64(%rsp)
	movb	$8, %al
	movl	%r10d, -104(%rbp)       # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movq	-80(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -88(%rbp)
.LBB1_2:                                # %if.end
	movq	-80(%rbp), %rdi
	movl	-84(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-88(%rbp), %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_perspective, .Lfunc_end1-gimp_perspective
	.cfi_endproc

	.globl	gimp_rotate
	.align	16, 0x90
	.type	gimp_rotate,@function
gimp_rotate:                            # @gimp_rotate
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
	subq	$64, %rsp
	leaq	.L.str.2(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$16, %edx
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
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -32(%rbp)
.LBB2_2:                                # %if.end
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-32(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_rotate, .Lfunc_end2-gimp_rotate
	.cfi_endproc

	.globl	gimp_scale
	.align	16, 0x90
	.type	gimp_scale,@function
gimp_scale:                             # @gimp_scale
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
	subq	$112, %rsp
	leaq	.L.str.3(%rip), %rax
	leaq	-52(%rbp), %rcx
	movl	$16, %edx
	xorl	%r8d, %r8d
	movl	$3, %r9d
	movl	$22, %r10d
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm3, -40(%rbp)
	movl	$-1, -56(%rbp)
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-40(%rbp), %xmm3        # xmm3 = mem[0],zero
	movl	%edi, -60(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -64(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	-64(%rbp), %ecx         # 4-byte Reload
	movl	-60(%rbp), %r11d        # 4-byte Reload
	movl	%r9d, -68(%rbp)         # 4-byte Spill
	movl	%r11d, %r9d
	movl	$3, (%rsp)
	movl	$3, 8(%rsp)
	movl	$3, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$22, 32(%rsp)
	movb	$4, %al
	movl	%r10d, -72(%rbp)        # 4-byte Spill
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
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_scale, .Lfunc_end3-gimp_scale
	.cfi_endproc

	.globl	gimp_shear
	.align	16, 0x90
	.type	gimp_shear,@function
gimp_shear:                             # @gimp_shear
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
	pushq	%rbx
	subq	$104, %rsp
.Ltmp15:
	.cfi_offset %rbx, -24
	leaq	.L.str.4(%rip), %rax
	leaq	-44(%rbp), %rcx
	movl	$16, %r8d
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
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -48(%rbp)
.LBB4_2:                                # %if.end
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-48(%rbp), %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_shear, .Lfunc_end4-gimp_shear
	.cfi_endproc

	.globl	gimp_transform_2d
	.align	16, 0x90
	.type	gimp_transform_2d,@function
gimp_transform_2d:                      # @gimp_transform_2d
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
	subq	$160, %rsp
	leaq	.L.str.5(%rip), %rax
	leaq	-76(%rbp), %rcx
	movl	$16, %edx
	xorl	%r8d, %r8d
	movl	$3, %r9d
	movl	$22, %r10d
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm3, -40(%rbp)
	movsd	%xmm4, -48(%rbp)
	movsd	%xmm5, -56(%rbp)
	movsd	%xmm6, -64(%rbp)
	movl	$-1, -80(%rbp)
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-40(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-48(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-56(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-64(%rbp), %xmm6        # xmm6 = mem[0],zero
	movl	%edi, -84(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -88(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	-88(%rbp), %ecx         # 4-byte Reload
	movl	-84(%rbp), %r11d        # 4-byte Reload
	movl	%r9d, -92(%rbp)         # 4-byte Spill
	movl	%r11d, %r9d
	movl	$3, (%rsp)
	movl	$3, 8(%rsp)
	movl	$3, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$3, 32(%rsp)
	movl	$3, 40(%rsp)
	movl	$3, 48(%rsp)
	movl	$22, 56(%rsp)
	movb	$7, %al
	movl	%r10d, -96(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movq	-72(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -80(%rbp)
.LBB5_2:                                # %if.end
	movq	-72(%rbp), %rdi
	movl	-76(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-80(%rbp), %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_transform_2d, .Lfunc_end5-gimp_transform_2d
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-flip"
	.size	.L.str, 10

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-perspective"
	.size	.L.str.1, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-rotate"
	.size	.L.str.2, 12

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-scale"
	.size	.L.str.3, 11

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-shear"
	.size	.L.str.4, 11

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-transform-2d"
	.size	.L.str.5, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
