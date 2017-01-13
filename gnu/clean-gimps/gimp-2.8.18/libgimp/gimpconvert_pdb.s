	.text
	.file	"gimpconvert_pdb.bc"
	.globl	gimp_image_convert_rgb
	.align	16, 0x90
	.type	gimp_image_convert_rgb,@function
gimp_image_convert_rgb:                 # @gimp_image_convert_rgb
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
	subq	$32, %rsp
	leaq	.L.str(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$13, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movl	$1, -24(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %ecx
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_image_convert_rgb, .Lfunc_end0-gimp_image_convert_rgb
	.cfi_endproc

	.globl	gimp_image_convert_grayscale
	.align	16, 0x90
	.type	gimp_image_convert_grayscale,@function
gimp_image_convert_grayscale:           # @gimp_image_convert_grayscale
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
	subq	$32, %rsp
	leaq	.L.str.1(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$13, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movl	$1, -24(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %ecx
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_image_convert_grayscale, .Lfunc_end1-gimp_image_convert_grayscale
	.cfi_endproc

	.globl	gimp_image_convert_indexed
	.align	16, 0x90
	.type	gimp_image_convert_indexed,@function
gimp_image_convert_indexed:             # @gimp_image_convert_indexed
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$168, %rsp
.Ltmp9:
	.cfi_offset %rbx, -56
.Ltmp10:
	.cfi_offset %r12, -48
.Ltmp11:
	.cfi_offset %r13, -40
.Ltmp12:
	.cfi_offset %r14, -32
.Ltmp13:
	.cfi_offset %r15, -24
	movq	16(%rbp), %rax
	leaq	.L.str.2(%rip), %r10
	leaq	-84(%rbp), %r11
	movl	$13, %ebx
	xorl	%r14d, %r14d
	movl	$4, %r15d
	movl	$22, %r12d
	movl	%edi, -44(%rbp)
	movl	%esi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	%ecx, -56(%rbp)
	movl	%r8d, -60(%rbp)
	movl	%r9d, -64(%rbp)
	movq	%rax, -72(%rbp)
	movl	$1, -88(%rbp)
	movl	-44(%rbp), %ecx
	movl	-48(%rbp), %r9d
	movl	-52(%rbp), %edx
	movl	-56(%rbp), %esi
	movl	-60(%rbp), %edi
	movl	-64(%rbp), %r8d
	movq	-72(%rbp), %rax
	movl	%edi, -92(%rbp)         # 4-byte Spill
	movq	%r10, %rdi
	movl	%esi, -96(%rbp)         # 4-byte Spill
	movq	%r11, %rsi
	movl	%edx, -100(%rbp)        # 4-byte Spill
	movl	%ebx, %edx
	movl	%r8d, -104(%rbp)        # 4-byte Spill
	movl	%r14d, %r8d
	movl	$0, (%rsp)
	movl	-100(%rbp), %ebx        # 4-byte Reload
	movl	%ebx, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	-96(%rbp), %ebx         # 4-byte Reload
	movl	%ebx, 24(%rsp)
	movl	$0, 32(%rsp)
	movl	-92(%rbp), %ebx         # 4-byte Reload
	movl	%ebx, 40(%rsp)
	movl	$0, 48(%rsp)
	movl	-104(%rbp), %ebx        # 4-byte Reload
	movl	%ebx, 56(%rsp)
	movl	$4, 64(%rsp)
	movq	%rax, 72(%rsp)
	movl	$22, 80(%rsp)
	movb	$0, %al
	movl	%r12d, -108(%rbp)       # 4-byte Spill
	movl	%r15d, -112(%rbp)       # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r13b
	andb	$1, %r13b
	movzbl	%r13b, %ecx
	movl	%ecx, -88(%rbp)
	movq	-80(%rbp), %rdi
	movl	-84(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-88(%rbp), %eax
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_image_convert_indexed, .Lfunc_end2-gimp_image_convert_indexed
	.cfi_endproc

	.globl	gimp_image_convert_set_dither_matrix
	.align	16, 0x90
	.type	gimp_image_convert_set_dither_matrix,@function
gimp_image_convert_set_dither_matrix:   # @gimp_image_convert_set_dither_matrix
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
	subq	$104, %rsp
.Ltmp17:
	.cfi_offset %rbx, -40
.Ltmp18:
	.cfi_offset %r14, -32
.Ltmp19:
	.cfi_offset %r15, -24
	leaq	.L.str.3(%rip), %rax
	leaq	-60(%rbp), %r8
	xorl	%r9d, %r9d
	movl	$7, %r10d
	movl	$22, %r11d
	movl	%edi, -28(%rbp)
	movl	%esi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movl	$1, -64(%rbp)
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %esi
	movq	-48(%rbp), %rbx
	movq	%rax, %rdi
	movl	%esi, -68(%rbp)         # 4-byte Spill
	movq	%r8, %rsi
	movl	%edx, -72(%rbp)         # 4-byte Spill
	movl	%r9d, %edx
	movl	%r9d, %r8d
	movl	-72(%rbp), %r9d         # 4-byte Reload
	movl	$0, (%rsp)
	movl	-68(%rbp), %r14d        # 4-byte Reload
	movl	%r14d, 8(%rsp)
	movl	$7, 16(%rsp)
	movq	%rbx, 24(%rsp)
	movl	$22, 32(%rsp)
	movb	$0, %al
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	movl	%r10d, -80(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r15b
	andb	$1, %r15b
	movzbl	%r15b, %ecx
	movl	%ecx, -64(%rbp)
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-64(%rbp), %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_image_convert_set_dither_matrix, .Lfunc_end3-gimp_image_convert_set_dither_matrix
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-image-convert-rgb"
	.size	.L.str, 23

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-image-convert-grayscale"
	.size	.L.str.1, 29

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-image-convert-indexed"
	.size	.L.str.2, 27

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-image-convert-set-dither-matrix"
	.size	.L.str.3, 37


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
