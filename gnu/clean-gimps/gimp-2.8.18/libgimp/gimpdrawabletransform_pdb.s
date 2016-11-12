	.text
	.file	"gimpdrawabletransform_pdb.bc"
	.globl	gimp_drawable_transform_flip_simple
	.align	16, 0x90
	.type	gimp_drawable_transform_flip_simple,@function
gimp_drawable_transform_flip_simple:    # @gimp_drawable_transform_flip_simple
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
	subq	$120, %rsp
.Ltmp3:
	.cfi_offset %rbx, -24
	leaq	.L.str(%rip), %rax
	leaq	-52(%rbp), %r8
	movl	$16, %r9d
	xorl	%r10d, %r10d
	movl	$3, %r11d
	movl	$22, %ebx
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	$-1, -56(%rbp)
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %esi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-36(%rbp), %edi
	movl	%edi, -60(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -64(%rbp)         # 4-byte Spill
	movq	%r8, %rsi
	movl	%edx, -68(%rbp)         # 4-byte Spill
	movl	%r9d, %edx
	movl	%r10d, %r8d
	movl	-68(%rbp), %r9d         # 4-byte Reload
	movl	$0, (%rsp)
	movl	-64(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 8(%rsp)
	movl	$3, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	-60(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 32(%rsp)
	movl	$22, 40(%rsp)
	movb	$1, %al
	movl	%r11d, -72(%rbp)        # 4-byte Spill
	movl	%ebx, -76(%rbp)         # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -56(%rbp)
.LBB0_2:                                # %if.end
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-56(%rbp), %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_drawable_transform_flip_simple, .Lfunc_end0-gimp_drawable_transform_flip_simple
	.cfi_endproc

	.globl	gimp_drawable_transform_flip
	.align	16, 0x90
	.type	gimp_drawable_transform_flip,@function
gimp_drawable_transform_flip:           # @gimp_drawable_transform_flip
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$216, %rsp
.Ltmp7:
	.cfi_offset %rbx, -40
.Ltmp8:
	.cfi_offset %r14, -32
.Ltmp9:
	.cfi_offset %r15, -24
	leaq	.L.str.1(%rip), %rax
	leaq	-100(%rbp), %r10
	movl	$16, %r11d
	movl	$3, %ebx
	xorl	%r14d, %r14d
	movl	$22, %r15d
	movl	%edi, -28(%rbp)
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm1, -48(%rbp)
	movsd	%xmm2, -56(%rbp)
	movsd	%xmm3, -64(%rbp)
	movl	%esi, -68(%rbp)
	movl	%edx, -72(%rbp)
	movl	%ecx, -76(%rbp)
	movl	%r8d, -80(%rbp)
	movl	%r9d, -84(%rbp)
	movl	$-1, -104(%rbp)
	movl	-28(%rbp), %ecx
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	movl	-68(%rbp), %edx
	movl	-72(%rbp), %esi
	movl	-76(%rbp), %edi
	movl	-80(%rbp), %r8d
	movl	-84(%rbp), %r9d
	movl	%edi, -108(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -112(%rbp)        # 4-byte Spill
	movq	%r10, %rsi
	movl	%edx, -116(%rbp)        # 4-byte Spill
	movl	%r11d, %edx
	movl	%r8d, -120(%rbp)        # 4-byte Spill
	movl	%ebx, %r8d
	movl	%r9d, -124(%rbp)        # 4-byte Spill
	movl	%ebx, %r9d
	movl	$3, (%rsp)
	movl	$3, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	-116(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 24(%rsp)
	movl	$0, 32(%rsp)
	movl	-112(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 40(%rsp)
	movl	$0, 48(%rsp)
	movl	-108(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 56(%rsp)
	movl	$0, 64(%rsp)
	movl	-120(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 72(%rsp)
	movl	$0, 80(%rsp)
	movl	-124(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 88(%rsp)
	movl	$22, 96(%rsp)
	movb	$4, %al
	movl	%r14d, -128(%rbp)       # 4-byte Spill
	movl	%r15d, -132(%rbp)       # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movq	-96(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -104(%rbp)
.LBB1_2:                                # %if.end
	movq	-96(%rbp), %rdi
	movl	-100(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-104(%rbp), %eax
	addq	$216, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_drawable_transform_flip, .Lfunc_end1-gimp_drawable_transform_flip
	.cfi_endproc

	.globl	gimp_drawable_transform_flip_default
	.align	16, 0x90
	.type	gimp_drawable_transform_flip_default,@function
gimp_drawable_transform_flip_default:   # @gimp_drawable_transform_flip_default
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
	subq	$152, %rsp
.Ltmp13:
	.cfi_offset %rbx, -24
	leaq	.L.str.2(%rip), %rax
	leaq	-68(%rbp), %rcx
	movl	$16, %r8d
	movl	$3, %r9d
	xorl	%r10d, %r10d
	movl	$22, %r11d
	movl	%edi, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movsd	%xmm3, -48(%rbp)
	movl	%esi, -52(%rbp)
	movl	%edx, -56(%rbp)
	movl	$-1, -72(%rbp)
	movl	-12(%rbp), %edx
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edi
	movl	%edi, -76(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -80(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	%edx, -84(%rbp)         # 4-byte Spill
	movl	%r8d, %edx
	movl	-84(%rbp), %ecx         # 4-byte Reload
	movl	%r9d, %r8d
	movl	$3, (%rsp)
	movl	$3, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	-80(%rbp), %ebx         # 4-byte Reload
	movl	%ebx, 24(%rsp)
	movl	$0, 32(%rsp)
	movl	-76(%rbp), %ebx         # 4-byte Reload
	movl	%ebx, 40(%rsp)
	movl	$22, 48(%rsp)
	movb	$4, %al
	movl	%r11d, -88(%rbp)        # 4-byte Spill
	movl	%r10d, -92(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -72(%rbp)
.LBB2_2:                                # %if.end
	movq	-64(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-72(%rbp), %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_drawable_transform_flip_default, .Lfunc_end2-gimp_drawable_transform_flip_default
	.cfi_endproc

	.globl	gimp_drawable_transform_perspective
	.align	16, 0x90
	.type	gimp_drawable_transform_perspective,@function
gimp_drawable_transform_perspective:    # @gimp_drawable_transform_perspective
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$280, %rsp              # imm = 0x118
.Ltmp17:
	.cfi_offset %rbx, -40
.Ltmp18:
	.cfi_offset %r14, -32
.Ltmp19:
	.cfi_offset %r15, -24
	leaq	.L.str.3(%rip), %rax
	leaq	-132(%rbp), %r10
	movl	$16, %r11d
	movl	$3, %ebx
	xorl	%r14d, %r14d
	movl	$22, %r15d
	movl	%edi, -28(%rbp)
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm1, -48(%rbp)
	movsd	%xmm2, -56(%rbp)
	movsd	%xmm3, -64(%rbp)
	movsd	%xmm4, -72(%rbp)
	movsd	%xmm5, -80(%rbp)
	movsd	%xmm6, -88(%rbp)
	movsd	%xmm7, -96(%rbp)
	movl	%esi, -100(%rbp)
	movl	%edx, -104(%rbp)
	movl	%ecx, -108(%rbp)
	movl	%r8d, -112(%rbp)
	movl	%r9d, -116(%rbp)
	movl	$-1, -136(%rbp)
	movl	-28(%rbp), %ecx
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-72(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-80(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-88(%rbp), %xmm6        # xmm6 = mem[0],zero
	movsd	-96(%rbp), %xmm7        # xmm7 = mem[0],zero
	movl	-100(%rbp), %edx
	movl	-104(%rbp), %esi
	movl	-108(%rbp), %edi
	movl	-112(%rbp), %r8d
	movl	-116(%rbp), %r9d
	movl	%edi, -140(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -144(%rbp)        # 4-byte Spill
	movq	%r10, %rsi
	movl	%edx, -148(%rbp)        # 4-byte Spill
	movl	%r11d, %edx
	movl	%r8d, -152(%rbp)        # 4-byte Spill
	movl	%ebx, %r8d
	movl	%r9d, -156(%rbp)        # 4-byte Spill
	movl	%ebx, %r9d
	movl	$3, (%rsp)
	movl	$3, 8(%rsp)
	movl	$3, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$3, 32(%rsp)
	movl	$3, 40(%rsp)
	movl	$0, 48(%rsp)
	movl	-148(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 56(%rsp)
	movl	$0, 64(%rsp)
	movl	-144(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 72(%rsp)
	movl	$0, 80(%rsp)
	movl	-140(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 88(%rsp)
	movl	$0, 96(%rsp)
	movl	-152(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 104(%rsp)
	movl	$0, 112(%rsp)
	movl	-156(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 120(%rsp)
	movl	$22, 128(%rsp)
	movb	$8, %al
	movl	%r15d, -160(%rbp)       # 4-byte Spill
	movl	%r14d, -164(%rbp)       # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	-128(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -136(%rbp)
.LBB3_2:                                # %if.end
	movq	-128(%rbp), %rdi
	movl	-132(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-136(%rbp), %eax
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_drawable_transform_perspective, .Lfunc_end3-gimp_drawable_transform_perspective
	.cfi_endproc

	.globl	gimp_drawable_transform_perspective_default
	.align	16, 0x90
	.type	gimp_drawable_transform_perspective_default,@function
gimp_drawable_transform_perspective_default: # @gimp_drawable_transform_perspective_default
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
	pushq	%rbx
	subq	$216, %rsp
.Ltmp23:
	.cfi_offset %rbx, -24
	leaq	.L.str.4(%rip), %rax
	leaq	-100(%rbp), %rcx
	movl	$16, %r8d
	movl	$3, %r9d
	xorl	%r10d, %r10d
	movl	$22, %r11d
	movl	%edi, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movsd	%xmm3, -48(%rbp)
	movsd	%xmm4, -56(%rbp)
	movsd	%xmm5, -64(%rbp)
	movsd	%xmm6, -72(%rbp)
	movsd	%xmm7, -80(%rbp)
	movl	%esi, -84(%rbp)
	movl	%edx, -88(%rbp)
	movl	$-1, -104(%rbp)
	movl	-12(%rbp), %edx
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-56(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-64(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-72(%rbp), %xmm6        # xmm6 = mem[0],zero
	movsd	-80(%rbp), %xmm7        # xmm7 = mem[0],zero
	movl	-84(%rbp), %esi
	movl	-88(%rbp), %edi
	movl	%edi, -108(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -112(%rbp)        # 4-byte Spill
	movq	%rcx, %rsi
	movl	%edx, -116(%rbp)        # 4-byte Spill
	movl	%r8d, %edx
	movl	-116(%rbp), %ecx        # 4-byte Reload
	movl	%r9d, %r8d
	movl	$3, (%rsp)
	movl	$3, 8(%rsp)
	movl	$3, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$3, 32(%rsp)
	movl	$3, 40(%rsp)
	movl	$0, 48(%rsp)
	movl	-112(%rbp), %ebx        # 4-byte Reload
	movl	%ebx, 56(%rsp)
	movl	$0, 64(%rsp)
	movl	-108(%rbp), %ebx        # 4-byte Reload
	movl	%ebx, 72(%rsp)
	movl	$22, 80(%rsp)
	movb	$8, %al
	movl	%r11d, -120(%rbp)       # 4-byte Spill
	movl	%r10d, -124(%rbp)       # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movq	-96(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -104(%rbp)
.LBB4_2:                                # %if.end
	movq	-96(%rbp), %rdi
	movl	-100(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-104(%rbp), %eax
	addq	$216, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_drawable_transform_perspective_default, .Lfunc_end4-gimp_drawable_transform_perspective_default
	.cfi_endproc

	.globl	gimp_drawable_transform_rotate_simple
	.align	16, 0x90
	.type	gimp_drawable_transform_rotate_simple,@function
gimp_drawable_transform_rotate_simple:  # @gimp_drawable_transform_rotate_simple
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
	pushq	%r14
	pushq	%rbx
	subq	$144, %rsp
.Ltmp27:
	.cfi_offset %rbx, -32
.Ltmp28:
	.cfi_offset %r14, -24
	leaq	.L.str.5(%rip), %rax
	leaq	-52(%rbp), %r10
	movl	$16, %r11d
	xorl	%ebx, %ebx
	movl	$22, %r14d
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movl	$-1, -56(%rbp)
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %r9d
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %esi
	movl	-36(%rbp), %edi
	movl	-40(%rbp), %r8d
	movl	%edi, -60(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -64(%rbp)         # 4-byte Spill
	movq	%r10, %rsi
	movl	%edx, -68(%rbp)         # 4-byte Spill
	movl	%r11d, %edx
	movl	%r8d, -72(%rbp)         # 4-byte Spill
	movl	%ebx, %r8d
	movl	$0, (%rsp)
	movl	-68(%rbp), %r11d        # 4-byte Reload
	movl	%r11d, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	-64(%rbp), %r11d        # 4-byte Reload
	movl	%r11d, 24(%rsp)
	movl	$0, 32(%rsp)
	movl	-60(%rbp), %r11d        # 4-byte Reload
	movl	%r11d, 40(%rsp)
	movl	$0, 48(%rsp)
	movl	-72(%rbp), %r11d        # 4-byte Reload
	movl	%r11d, 56(%rsp)
	movl	$22, 64(%rsp)
	movb	$0, %al
	movl	%r14d, -76(%rbp)        # 4-byte Spill
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
	addq	$144, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_drawable_transform_rotate_simple, .Lfunc_end5-gimp_drawable_transform_rotate_simple
	.cfi_endproc

	.globl	gimp_drawable_transform_rotate
	.align	16, 0x90
	.type	gimp_drawable_transform_rotate,@function
gimp_drawable_transform_rotate:         # @gimp_drawable_transform_rotate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$232, %rsp
.Ltmp32:
	.cfi_offset %rbx, -56
.Ltmp33:
	.cfi_offset %r12, -48
.Ltmp34:
	.cfi_offset %r13, -40
.Ltmp35:
	.cfi_offset %r14, -32
.Ltmp36:
	.cfi_offset %r15, -24
	movl	32(%rbp), %eax
	movl	24(%rbp), %r10d
	movl	16(%rbp), %r11d
	leaq	.L.str.6(%rip), %rbx
	leaq	-100(%rbp), %r14
	movl	$16, %r15d
	movl	$3, %r12d
	xorl	%r13d, %r13d
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movl	$22, %eax
	movl	%edi, -44(%rbp)
	movsd	%xmm0, -56(%rbp)
	movl	%esi, -60(%rbp)
	movl	%edx, -64(%rbp)
	movl	%ecx, -68(%rbp)
	movl	%r8d, -72(%rbp)
	movl	%r9d, -76(%rbp)
	movl	%r11d, -80(%rbp)
	movl	%r10d, -84(%rbp)
	movl	-108(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, -88(%rbp)
	movl	$-1, -104(%rbp)
	movl	-44(%rbp), %ecx
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %esi
	movl	-68(%rbp), %edi
	movl	-72(%rbp), %r8d
	movl	-76(%rbp), %r9d
	movl	-80(%rbp), %r10d
	movl	-84(%rbp), %r11d
	movl	%eax, -112(%rbp)        # 4-byte Spill
	movl	-88(%rbp), %eax
	movl	%edi, -116(%rbp)        # 4-byte Spill
	movq	%rbx, %rdi
	movl	%esi, -120(%rbp)        # 4-byte Spill
	movq	%r14, %rsi
	movl	%edx, -124(%rbp)        # 4-byte Spill
	movl	%r15d, %edx
	movl	%r8d, -128(%rbp)        # 4-byte Spill
	movl	%r12d, %r8d
	movl	%r9d, -132(%rbp)        # 4-byte Spill
	movl	%r13d, %r9d
	movl	-124(%rbp), %r15d       # 4-byte Reload
	movl	%r15d, (%rsp)
	movl	$0, 8(%rsp)
	movl	-120(%rbp), %r15d       # 4-byte Reload
	movl	%r15d, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	-116(%rbp), %r15d       # 4-byte Reload
	movl	%r15d, 32(%rsp)
	movl	$0, 40(%rsp)
	movl	-128(%rbp), %r15d       # 4-byte Reload
	movl	%r15d, 48(%rsp)
	movl	$0, 56(%rsp)
	movl	-132(%rbp), %r15d       # 4-byte Reload
	movl	%r15d, 64(%rsp)
	movl	$0, 72(%rsp)
	movl	%r10d, 80(%rsp)
	movl	$0, 88(%rsp)
	movl	%r11d, 96(%rsp)
	movl	$0, 104(%rsp)
	movl	%eax, 112(%rsp)
	movl	$22, 120(%rsp)
	movb	$1, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movq	-96(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -104(%rbp)
.LBB6_2:                                # %if.end
	movq	-96(%rbp), %rdi
	movl	-100(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-104(%rbp), %eax
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_drawable_transform_rotate, .Lfunc_end6-gimp_drawable_transform_rotate
	.cfi_endproc

	.globl	gimp_drawable_transform_rotate_default
	.align	16, 0x90
	.type	gimp_drawable_transform_rotate_default,@function
gimp_drawable_transform_rotate_default: # @gimp_drawable_transform_rotate_default
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$168, %rsp
.Ltmp40:
	.cfi_offset %rbx, -40
.Ltmp41:
	.cfi_offset %r14, -32
.Ltmp42:
	.cfi_offset %r15, -24
	leaq	.L.str.7(%rip), %rax
	leaq	-76(%rbp), %r10
	movl	$16, %r11d
	movl	$3, %ebx
	xorl	%r14d, %r14d
	movl	$22, %r15d
	movl	%edi, -28(%rbp)
	movsd	%xmm0, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movl	%ecx, -52(%rbp)
	movl	%r8d, -56(%rbp)
	movl	%r9d, -60(%rbp)
	movl	$-1, -80(%rbp)
	movl	-28(%rbp), %ecx
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %esi
	movl	-52(%rbp), %edi
	movl	-56(%rbp), %r8d
	movl	-60(%rbp), %r9d
	movl	%edi, -84(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -88(%rbp)         # 4-byte Spill
	movq	%r10, %rsi
	movl	%edx, -92(%rbp)         # 4-byte Spill
	movl	%r11d, %edx
	movl	%r8d, -96(%rbp)         # 4-byte Spill
	movl	%ebx, %r8d
	movl	%r9d, -100(%rbp)        # 4-byte Spill
	movl	%r14d, %r9d
	movl	-92(%rbp), %r11d        # 4-byte Reload
	movl	%r11d, (%rsp)
	movl	$0, 8(%rsp)
	movl	-88(%rbp), %r11d        # 4-byte Reload
	movl	%r11d, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	-84(%rbp), %r11d        # 4-byte Reload
	movl	%r11d, 32(%rsp)
	movl	$0, 40(%rsp)
	movl	-96(%rbp), %r11d        # 4-byte Reload
	movl	%r11d, 48(%rsp)
	movl	$0, 56(%rsp)
	movl	-100(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 64(%rsp)
	movl	$22, 72(%rsp)
	movb	$1, %al
	movl	%r15d, -104(%rbp)       # 4-byte Spill
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
	addq	$168, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_drawable_transform_rotate_default, .Lfunc_end7-gimp_drawable_transform_rotate_default
	.cfi_endproc

	.globl	gimp_drawable_transform_scale
	.align	16, 0x90
	.type	gimp_drawable_transform_scale,@function
gimp_drawable_transform_scale:          # @gimp_drawable_transform_scale
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
	pushq	%rbx
	subq	$216, %rsp
.Ltmp46:
	.cfi_offset %rbx, -40
.Ltmp47:
	.cfi_offset %r14, -32
.Ltmp48:
	.cfi_offset %r15, -24
	leaq	.L.str.8(%rip), %rax
	leaq	-100(%rbp), %r10
	movl	$16, %r11d
	movl	$3, %ebx
	xorl	%r14d, %r14d
	movl	$22, %r15d
	movl	%edi, -28(%rbp)
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm1, -48(%rbp)
	movsd	%xmm2, -56(%rbp)
	movsd	%xmm3, -64(%rbp)
	movl	%esi, -68(%rbp)
	movl	%edx, -72(%rbp)
	movl	%ecx, -76(%rbp)
	movl	%r8d, -80(%rbp)
	movl	%r9d, -84(%rbp)
	movl	$-1, -104(%rbp)
	movl	-28(%rbp), %ecx
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	movl	-68(%rbp), %edx
	movl	-72(%rbp), %esi
	movl	-76(%rbp), %edi
	movl	-80(%rbp), %r8d
	movl	-84(%rbp), %r9d
	movl	%edi, -108(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -112(%rbp)        # 4-byte Spill
	movq	%r10, %rsi
	movl	%edx, -116(%rbp)        # 4-byte Spill
	movl	%r11d, %edx
	movl	%r8d, -120(%rbp)        # 4-byte Spill
	movl	%ebx, %r8d
	movl	%r9d, -124(%rbp)        # 4-byte Spill
	movl	%ebx, %r9d
	movl	$3, (%rsp)
	movl	$3, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	-116(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 24(%rsp)
	movl	$0, 32(%rsp)
	movl	-112(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 40(%rsp)
	movl	$0, 48(%rsp)
	movl	-108(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 56(%rsp)
	movl	$0, 64(%rsp)
	movl	-120(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 72(%rsp)
	movl	$0, 80(%rsp)
	movl	-124(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 88(%rsp)
	movl	$22, 96(%rsp)
	movb	$4, %al
	movl	%r14d, -128(%rbp)       # 4-byte Spill
	movl	%r15d, -132(%rbp)       # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movq	-96(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -104(%rbp)
.LBB8_2:                                # %if.end
	movq	-96(%rbp), %rdi
	movl	-100(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-104(%rbp), %eax
	addq	$216, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_drawable_transform_scale, .Lfunc_end8-gimp_drawable_transform_scale
	.cfi_endproc

	.globl	gimp_drawable_transform_scale_default
	.align	16, 0x90
	.type	gimp_drawable_transform_scale_default,@function
gimp_drawable_transform_scale_default:  # @gimp_drawable_transform_scale_default
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
	pushq	%rbx
	subq	$152, %rsp
.Ltmp52:
	.cfi_offset %rbx, -24
	leaq	.L.str.9(%rip), %rax
	leaq	-68(%rbp), %rcx
	movl	$16, %r8d
	movl	$3, %r9d
	xorl	%r10d, %r10d
	movl	$22, %r11d
	movl	%edi, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movsd	%xmm3, -48(%rbp)
	movl	%esi, -52(%rbp)
	movl	%edx, -56(%rbp)
	movl	$-1, -72(%rbp)
	movl	-12(%rbp), %edx
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edi
	movl	%edi, -76(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -80(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	%edx, -84(%rbp)         # 4-byte Spill
	movl	%r8d, %edx
	movl	-84(%rbp), %ecx         # 4-byte Reload
	movl	%r9d, %r8d
	movl	$3, (%rsp)
	movl	$3, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	-80(%rbp), %ebx         # 4-byte Reload
	movl	%ebx, 24(%rsp)
	movl	$0, 32(%rsp)
	movl	-76(%rbp), %ebx         # 4-byte Reload
	movl	%ebx, 40(%rsp)
	movl	$22, 48(%rsp)
	movb	$4, %al
	movl	%r11d, -88(%rbp)        # 4-byte Spill
	movl	%r10d, -92(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -72(%rbp)
.LBB9_2:                                # %if.end
	movq	-64(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-72(%rbp), %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_drawable_transform_scale_default, .Lfunc_end9-gimp_drawable_transform_scale_default
	.cfi_endproc

	.globl	gimp_drawable_transform_shear
	.align	16, 0x90
	.type	gimp_drawable_transform_shear,@function
gimp_drawable_transform_shear:          # @gimp_drawable_transform_shear
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp55:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$176, %rsp
.Ltmp56:
	.cfi_offset %rbx, -48
.Ltmp57:
	.cfi_offset %r12, -40
.Ltmp58:
	.cfi_offset %r14, -32
.Ltmp59:
	.cfi_offset %r15, -24
	movl	16(%rbp), %eax
	leaq	.L.str.10(%rip), %r10
	leaq	-84(%rbp), %r11
	movl	$16, %ebx
	xorl	%r14d, %r14d
	movl	$3, %r15d
	movl	$22, %r12d
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movsd	%xmm0, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	%ecx, -56(%rbp)
	movl	%r8d, -60(%rbp)
	movl	%r9d, -64(%rbp)
	movl	%eax, -68(%rbp)
	movl	$-1, -88(%rbp)
	movl	-36(%rbp), %ecx
	movl	-40(%rbp), %r9d
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-52(%rbp), %eax
	movl	-56(%rbp), %edx
	movl	-60(%rbp), %esi
	movl	-64(%rbp), %edi
	movl	-68(%rbp), %r8d
	movl	%edi, -92(%rbp)         # 4-byte Spill
	movq	%r10, %rdi
	movl	%esi, -96(%rbp)         # 4-byte Spill
	movq	%r11, %rsi
	movl	%edx, -100(%rbp)        # 4-byte Spill
	movl	%ebx, %edx
	movl	%r8d, -104(%rbp)        # 4-byte Spill
	movl	%r14d, %r8d
	movl	$3, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, 32(%rsp)
	movl	$0, 40(%rsp)
	movl	-96(%rbp), %eax         # 4-byte Reload
	movl	%eax, 48(%rsp)
	movl	$0, 56(%rsp)
	movl	-92(%rbp), %eax         # 4-byte Reload
	movl	%eax, 64(%rsp)
	movl	$0, 72(%rsp)
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	%eax, 80(%rsp)
	movl	$22, 88(%rsp)
	movb	$1, %al
	movl	%r15d, -108(%rbp)       # 4-byte Spill
	movl	%r12d, -112(%rbp)       # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movq	-80(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -88(%rbp)
.LBB10_2:                               # %if.end
	movq	-80(%rbp), %rdi
	movl	-84(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-88(%rbp), %eax
	addq	$176, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_drawable_transform_shear, .Lfunc_end10-gimp_drawable_transform_shear
	.cfi_endproc

	.globl	gimp_drawable_transform_shear_default
	.align	16, 0x90
	.type	gimp_drawable_transform_shear_default,@function
gimp_drawable_transform_shear_default:  # @gimp_drawable_transform_shear_default
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
	pushq	%rbx
	subq	$120, %rsp
.Ltmp63:
	.cfi_offset %rbx, -24
	leaq	.L.str.11(%rip), %rax
	leaq	-44(%rbp), %r8
	movl	$16, %r9d
	xorl	%r10d, %r10d
	movl	$3, %r11d
	movl	$22, %ebx
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	$-1, -48(%rbp)
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %edx
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edi
	movl	%edi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -56(%rbp)         # 4-byte Spill
	movq	%r8, %rsi
	movl	%edx, -60(%rbp)         # 4-byte Spill
	movl	%r9d, %edx
	movl	%r10d, %r8d
	movl	-60(%rbp), %r9d         # 4-byte Reload
	movl	$3, (%rsp)
	movl	$0, 8(%rsp)
	movl	-56(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	-52(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 32(%rsp)
	movl	$22, 40(%rsp)
	movb	$1, %al
	movl	%r11d, -64(%rbp)        # 4-byte Spill
	movl	%ebx, -68(%rbp)         # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -48(%rbp)
.LBB11_2:                               # %if.end
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-48(%rbp), %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_drawable_transform_shear_default, .Lfunc_end11-gimp_drawable_transform_shear_default
	.cfi_endproc

	.globl	gimp_drawable_transform_2d
	.align	16, 0x90
	.type	gimp_drawable_transform_2d,@function
gimp_drawable_transform_2d:             # @gimp_drawable_transform_2d
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
.Ltmp65:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp66:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
.Ltmp67:
	.cfi_offset %rbx, -40
.Ltmp68:
	.cfi_offset %r14, -32
.Ltmp69:
	.cfi_offset %r15, -24
	leaq	.L.str.12(%rip), %rax
	leaq	-124(%rbp), %r10
	movl	$16, %r11d
	movl	$3, %ebx
	xorl	%r14d, %r14d
	movl	$22, %r15d
	movl	%edi, -28(%rbp)
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm1, -48(%rbp)
	movsd	%xmm2, -56(%rbp)
	movsd	%xmm3, -64(%rbp)
	movsd	%xmm4, -72(%rbp)
	movsd	%xmm5, -80(%rbp)
	movsd	%xmm6, -88(%rbp)
	movl	%esi, -92(%rbp)
	movl	%edx, -96(%rbp)
	movl	%ecx, -100(%rbp)
	movl	%r8d, -104(%rbp)
	movl	%r9d, -108(%rbp)
	movl	$-1, -128(%rbp)
	movl	-28(%rbp), %ecx
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-72(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-80(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-88(%rbp), %xmm6        # xmm6 = mem[0],zero
	movl	-92(%rbp), %edx
	movl	-96(%rbp), %esi
	movl	-100(%rbp), %edi
	movl	-104(%rbp), %r8d
	movl	-108(%rbp), %r9d
	movl	%edi, -132(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -136(%rbp)        # 4-byte Spill
	movq	%r10, %rsi
	movl	%edx, -140(%rbp)        # 4-byte Spill
	movl	%r11d, %edx
	movl	%r8d, -144(%rbp)        # 4-byte Spill
	movl	%ebx, %r8d
	movl	%r9d, -148(%rbp)        # 4-byte Spill
	movl	%ebx, %r9d
	movl	$3, (%rsp)
	movl	$3, 8(%rsp)
	movl	$3, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$3, 32(%rsp)
	movl	$0, 40(%rsp)
	movl	-140(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 48(%rsp)
	movl	$0, 56(%rsp)
	movl	-136(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 64(%rsp)
	movl	$0, 72(%rsp)
	movl	-132(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 80(%rsp)
	movl	$0, 88(%rsp)
	movl	-144(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 96(%rsp)
	movl	$0, 104(%rsp)
	movl	-148(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 112(%rsp)
	movl	$22, 120(%rsp)
	movb	$7, %al
	movl	%r15d, -152(%rbp)       # 4-byte Spill
	movl	%r14d, -156(%rbp)       # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB12_2
# BB#1:                                 # %if.then
	movq	-120(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -128(%rbp)
.LBB12_2:                               # %if.end
	movq	-120(%rbp), %rdi
	movl	-124(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-128(%rbp), %eax
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_drawable_transform_2d, .Lfunc_end12-gimp_drawable_transform_2d
	.cfi_endproc

	.globl	gimp_drawable_transform_2d_default
	.align	16, 0x90
	.type	gimp_drawable_transform_2d_default,@function
gimp_drawable_transform_2d_default:     # @gimp_drawable_transform_2d_default
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp72:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$200, %rsp
.Ltmp73:
	.cfi_offset %rbx, -24
	leaq	.L.str.13(%rip), %rax
	leaq	-92(%rbp), %rcx
	movl	$16, %r8d
	movl	$3, %r9d
	xorl	%r10d, %r10d
	movl	$22, %r11d
	movl	%edi, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movsd	%xmm3, -48(%rbp)
	movsd	%xmm4, -56(%rbp)
	movsd	%xmm5, -64(%rbp)
	movsd	%xmm6, -72(%rbp)
	movl	%esi, -76(%rbp)
	movl	%edx, -80(%rbp)
	movl	$-1, -96(%rbp)
	movl	-12(%rbp), %edx
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-56(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-64(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-72(%rbp), %xmm6        # xmm6 = mem[0],zero
	movl	-76(%rbp), %esi
	movl	-80(%rbp), %edi
	movl	%edi, -100(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -104(%rbp)        # 4-byte Spill
	movq	%rcx, %rsi
	movl	%edx, -108(%rbp)        # 4-byte Spill
	movl	%r8d, %edx
	movl	-108(%rbp), %ecx        # 4-byte Reload
	movl	%r9d, %r8d
	movl	$3, (%rsp)
	movl	$3, 8(%rsp)
	movl	$3, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$3, 32(%rsp)
	movl	$0, 40(%rsp)
	movl	-104(%rbp), %ebx        # 4-byte Reload
	movl	%ebx, 48(%rsp)
	movl	$0, 56(%rsp)
	movl	-100(%rbp), %ebx        # 4-byte Reload
	movl	%ebx, 64(%rsp)
	movl	$22, 72(%rsp)
	movb	$7, %al
	movl	%r10d, -112(%rbp)       # 4-byte Spill
	movl	%r11d, -116(%rbp)       # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB13_2
# BB#1:                                 # %if.then
	movq	-88(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -96(%rbp)
.LBB13_2:                               # %if.end
	movq	-88(%rbp), %rdi
	movl	-92(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-96(%rbp), %eax
	addq	$200, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_drawable_transform_2d_default, .Lfunc_end13-gimp_drawable_transform_2d_default
	.cfi_endproc

	.globl	gimp_drawable_transform_matrix
	.align	16, 0x90
	.type	gimp_drawable_transform_matrix,@function
gimp_drawable_transform_matrix:         # @gimp_drawable_transform_matrix
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp76:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$312, %rsp              # imm = 0x138
.Ltmp77:
	.cfi_offset %rbx, -40
.Ltmp78:
	.cfi_offset %r14, -32
.Ltmp79:
	.cfi_offset %r15, -24
	movsd	16(%rbp), %xmm8         # xmm8 = mem[0],zero
	leaq	.L.str.14(%rip), %rax
	leaq	-140(%rbp), %r10
	movl	$16, %r11d
	movl	$3, %ebx
	xorl	%r14d, %r14d
	movl	$22, %r15d
	movl	%edi, -28(%rbp)
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm1, -48(%rbp)
	movsd	%xmm2, -56(%rbp)
	movsd	%xmm3, -64(%rbp)
	movsd	%xmm4, -72(%rbp)
	movsd	%xmm5, -80(%rbp)
	movsd	%xmm6, -88(%rbp)
	movsd	%xmm7, -96(%rbp)
	movsd	%xmm8, -104(%rbp)
	movl	%esi, -108(%rbp)
	movl	%edx, -112(%rbp)
	movl	%ecx, -116(%rbp)
	movl	%r8d, -120(%rbp)
	movl	%r9d, -124(%rbp)
	movl	$-1, -144(%rbp)
	movl	-28(%rbp), %ecx
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-64(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-72(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-80(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-88(%rbp), %xmm6        # xmm6 = mem[0],zero
	movsd	-96(%rbp), %xmm7        # xmm7 = mem[0],zero
	movsd	-104(%rbp), %xmm8       # xmm8 = mem[0],zero
	movl	-108(%rbp), %edx
	movl	-112(%rbp), %esi
	movl	-116(%rbp), %edi
	movl	-120(%rbp), %r8d
	movl	-124(%rbp), %r9d
	movl	%edi, -148(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -152(%rbp)        # 4-byte Spill
	movq	%r10, %rsi
	movl	%edx, -156(%rbp)        # 4-byte Spill
	movl	%r11d, %edx
	movl	%r8d, -160(%rbp)        # 4-byte Spill
	movl	%ebx, %r8d
	movl	%r9d, -164(%rbp)        # 4-byte Spill
	movl	%ebx, %r9d
	movl	$3, (%rsp)
	movl	$3, 8(%rsp)
	movl	$3, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$3, 32(%rsp)
	movl	$3, 40(%rsp)
	movl	$3, 48(%rsp)
	movsd	%xmm8, 56(%rsp)
	movl	$0, 64(%rsp)
	movl	-156(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 72(%rsp)
	movl	$0, 80(%rsp)
	movl	-152(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 88(%rsp)
	movl	$0, 96(%rsp)
	movl	-148(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 104(%rsp)
	movl	$0, 112(%rsp)
	movl	-160(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 120(%rsp)
	movl	$0, 128(%rsp)
	movl	-164(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 136(%rsp)
	movl	$22, 144(%rsp)
	movb	$8, %al
	movl	%r14d, -168(%rbp)       # 4-byte Spill
	movl	%r15d, -172(%rbp)       # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB14_2
# BB#1:                                 # %if.then
	movq	-136(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -144(%rbp)
.LBB14_2:                               # %if.end
	movq	-136(%rbp), %rdi
	movl	-140(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-144(%rbp), %eax
	addq	$312, %rsp              # imm = 0x138
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_drawable_transform_matrix, .Lfunc_end14-gimp_drawable_transform_matrix
	.cfi_endproc

	.globl	gimp_drawable_transform_matrix_default
	.align	16, 0x90
	.type	gimp_drawable_transform_matrix_default,@function
gimp_drawable_transform_matrix_default: # @gimp_drawable_transform_matrix_default
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
.Ltmp81:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp82:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$232, %rsp
.Ltmp83:
	.cfi_offset %rbx, -24
	movsd	16(%rbp), %xmm8         # xmm8 = mem[0],zero
	leaq	.L.str.15(%rip), %rax
	leaq	-108(%rbp), %rcx
	movl	$16, %r8d
	movl	$3, %r9d
	xorl	%r10d, %r10d
	movl	$22, %r11d
	movl	%edi, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movsd	%xmm3, -48(%rbp)
	movsd	%xmm4, -56(%rbp)
	movsd	%xmm5, -64(%rbp)
	movsd	%xmm6, -72(%rbp)
	movsd	%xmm7, -80(%rbp)
	movsd	%xmm8, -88(%rbp)
	movl	%esi, -92(%rbp)
	movl	%edx, -96(%rbp)
	movl	$-1, -112(%rbp)
	movl	-12(%rbp), %edx
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-56(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-64(%rbp), %xmm5        # xmm5 = mem[0],zero
	movsd	-72(%rbp), %xmm6        # xmm6 = mem[0],zero
	movsd	-80(%rbp), %xmm7        # xmm7 = mem[0],zero
	movsd	-88(%rbp), %xmm8        # xmm8 = mem[0],zero
	movl	-92(%rbp), %esi
	movl	-96(%rbp), %edi
	movl	%edi, -116(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -120(%rbp)        # 4-byte Spill
	movq	%rcx, %rsi
	movl	%edx, -124(%rbp)        # 4-byte Spill
	movl	%r8d, %edx
	movl	-124(%rbp), %ecx        # 4-byte Reload
	movl	%r9d, %r8d
	movl	$3, (%rsp)
	movl	$3, 8(%rsp)
	movl	$3, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$3, 32(%rsp)
	movl	$3, 40(%rsp)
	movl	$3, 48(%rsp)
	movsd	%xmm8, 56(%rsp)
	movl	$0, 64(%rsp)
	movl	-120(%rbp), %ebx        # 4-byte Reload
	movl	%ebx, 72(%rsp)
	movl	$0, 80(%rsp)
	movl	-116(%rbp), %ebx        # 4-byte Reload
	movl	%ebx, 88(%rsp)
	movl	$22, 96(%rsp)
	movb	$8, %al
	movl	%r10d, -128(%rbp)       # 4-byte Spill
	movl	%r11d, -132(%rbp)       # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB15_2
# BB#1:                                 # %if.then
	movq	-104(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -112(%rbp)
.LBB15_2:                               # %if.end
	movq	-104(%rbp), %rdi
	movl	-108(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-112(%rbp), %eax
	addq	$232, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_drawable_transform_matrix_default, .Lfunc_end15-gimp_drawable_transform_matrix_default
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-drawable-transform-flip-simple"
	.size	.L.str, 36

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-drawable-transform-flip"
	.size	.L.str.1, 29

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-drawable-transform-flip-default"
	.size	.L.str.2, 37

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-drawable-transform-perspective"
	.size	.L.str.3, 36

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-drawable-transform-perspective-default"
	.size	.L.str.4, 44

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-drawable-transform-rotate-simple"
	.size	.L.str.5, 38

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-drawable-transform-rotate"
	.size	.L.str.6, 31

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-drawable-transform-rotate-default"
	.size	.L.str.7, 39

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-drawable-transform-scale"
	.size	.L.str.8, 30

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-drawable-transform-scale-default"
	.size	.L.str.9, 38

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-drawable-transform-shear"
	.size	.L.str.10, 30

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp-drawable-transform-shear-default"
	.size	.L.str.11, 38

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp-drawable-transform-2d"
	.size	.L.str.12, 27

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp-drawable-transform-2d-default"
	.size	.L.str.13, 35

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp-drawable-transform-matrix"
	.size	.L.str.14, 31

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimp-drawable-transform-matrix-default"
	.size	.L.str.15, 39


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
