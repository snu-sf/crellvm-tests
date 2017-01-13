	.text
	.file	"gimpimageselect_pdb.bc"
	.globl	gimp_image_select_color
	.align	16, 0x90
	.type	gimp_image_select_color,@function
gimp_image_select_color:                # @gimp_image_select_color
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$112, %rsp
.Ltmp3:
	.cfi_offset %rbx, -48
.Ltmp4:
	.cfi_offset %r12, -40
.Ltmp5:
	.cfi_offset %r14, -32
.Ltmp6:
	.cfi_offset %r15, -24
	leaq	.L.str(%rip), %rax
	leaq	-68(%rbp), %r8
	movl	$13, %r9d
	xorl	%r10d, %r10d
	movl	$16, %r11d
	movl	$10, %ebx
	movl	$22, %r14d
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	%edx, -44(%rbp)
	movq	%rcx, -56(%rbp)
	movl	$1, -72(%rbp)
	movl	-36(%rbp), %ecx
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %esi
	movq	-56(%rbp), %r15
	movq	%rax, %rdi
	movl	%esi, -76(%rbp)         # 4-byte Spill
	movq	%r8, %rsi
	movl	%edx, -80(%rbp)         # 4-byte Spill
	movl	%r9d, %edx
	movl	%r10d, %r8d
	movl	-80(%rbp), %r9d         # 4-byte Reload
	movl	$16, (%rsp)
	movl	-76(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 8(%rsp)
	movl	$10, 16(%rsp)
	movq	%r15, 24(%rsp)
	movl	$22, 32(%rsp)
	movb	$0, %al
	movl	%r11d, -84(%rbp)        # 4-byte Spill
	movl	%ebx, -88(%rbp)         # 4-byte Spill
	movl	%r14d, -92(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r12b
	andb	$1, %r12b
	movzbl	%r12b, %ecx
	movl	%ecx, -72(%rbp)
	movq	-64(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-72(%rbp), %eax
	addq	$112, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_image_select_color, .Lfunc_end0-gimp_image_select_color
	.cfi_endproc

	.globl	gimp_image_select_contiguous_color
	.align	16, 0x90
	.type	gimp_image_select_contiguous_color,@function
gimp_image_select_contiguous_color:     # @gimp_image_select_contiguous_color
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$120, %rsp
.Ltmp10:
	.cfi_offset %rbx, -40
.Ltmp11:
	.cfi_offset %r14, -32
.Ltmp12:
	.cfi_offset %r15, -24
	leaq	.L.str.1(%rip), %rax
	leaq	-68(%rbp), %rcx
	movl	$13, %r8d
	xorl	%r9d, %r9d
	movl	$16, %r10d
	movl	$3, %r11d
	movl	$22, %ebx
	movl	%edi, -28(%rbp)
	movl	%esi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movsd	%xmm0, -48(%rbp)
	movsd	%xmm1, -56(%rbp)
	movl	$1, -72(%rbp)
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %esi
	movl	-36(%rbp), %edi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	%edi, -76(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -80(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	%edx, -84(%rbp)         # 4-byte Spill
	movl	%r8d, %edx
	movl	-84(%rbp), %ecx         # 4-byte Reload
	movl	%r9d, %r8d
	movl	-80(%rbp), %r9d         # 4-byte Reload
	movl	$16, (%rsp)
	movl	-76(%rbp), %r14d        # 4-byte Reload
	movl	%r14d, 8(%rsp)
	movl	$3, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$22, 32(%rsp)
	movb	$2, %al
	movl	%ebx, -88(%rbp)         # 4-byte Spill
	movl	%r10d, -92(%rbp)        # 4-byte Spill
	movl	%r11d, -96(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r15b
	andb	$1, %r15b
	movzbl	%r15b, %ecx
	movl	%ecx, -72(%rbp)
	movq	-64(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-72(%rbp), %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_image_select_contiguous_color, .Lfunc_end1-gimp_image_select_contiguous_color
	.cfi_endproc

	.globl	gimp_image_select_rectangle
	.align	16, 0x90
	.type	gimp_image_select_rectangle,@function
gimp_image_select_rectangle:            # @gimp_image_select_rectangle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp15:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$120, %rsp
.Ltmp16:
	.cfi_offset %rbx, -24
	leaq	.L.str.2(%rip), %rax
	leaq	-60(%rbp), %rcx
	movl	$13, %edx
	xorl	%r8d, %r8d
	movl	$3, %r9d
	movl	$22, %r10d
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movsd	%xmm3, -48(%rbp)
	movl	$1, -64(%rbp)
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	movl	%edi, -68(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -72(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	-72(%rbp), %ecx         # 4-byte Reload
	movl	-68(%rbp), %r11d        # 4-byte Reload
	movl	%r9d, -76(%rbp)         # 4-byte Spill
	movl	%r11d, %r9d
	movl	$3, (%rsp)
	movl	$3, 8(%rsp)
	movl	$3, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$22, 32(%rsp)
	movb	$4, %al
	movl	%r10d, -80(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %ecx
	movl	%ecx, -64(%rbp)
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-64(%rbp), %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_image_select_rectangle, .Lfunc_end2-gimp_image_select_rectangle
	.cfi_endproc

	.globl	gimp_image_select_round_rectangle
	.align	16, 0x90
	.type	gimp_image_select_round_rectangle,@function
gimp_image_select_round_rectangle:      # @gimp_image_select_round_rectangle
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
	pushq	%rbx
	subq	$152, %rsp
.Ltmp20:
	.cfi_offset %rbx, -24
	leaq	.L.str.3(%rip), %rax
	leaq	-76(%rbp), %rcx
	movl	$13, %edx
	xorl	%r8d, %r8d
	movl	$3, %r9d
	movl	$22, %r10d
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movsd	%xmm3, -48(%rbp)
	movsd	%xmm4, -56(%rbp)
	movsd	%xmm5, -64(%rbp)
	movl	$1, -80(%rbp)
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-56(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-64(%rbp), %xmm5        # xmm5 = mem[0],zero
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
	movl	$22, 48(%rsp)
	movb	$6, %al
	movl	%r10d, -96(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %ecx
	movl	%ecx, -80(%rbp)
	movq	-72(%rbp), %rdi
	movl	-76(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-80(%rbp), %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_image_select_round_rectangle, .Lfunc_end3-gimp_image_select_round_rectangle
	.cfi_endproc

	.globl	gimp_image_select_ellipse
	.align	16, 0x90
	.type	gimp_image_select_ellipse,@function
gimp_image_select_ellipse:              # @gimp_image_select_ellipse
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
	pushq	%rbx
	subq	$120, %rsp
.Ltmp24:
	.cfi_offset %rbx, -24
	leaq	.L.str.4(%rip), %rax
	leaq	-60(%rbp), %rcx
	movl	$13, %edx
	xorl	%r8d, %r8d
	movl	$3, %r9d
	movl	$22, %r10d
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movsd	%xmm3, -48(%rbp)
	movl	$1, -64(%rbp)
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # xmm3 = mem[0],zero
	movl	%edi, -68(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -72(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	-72(%rbp), %ecx         # 4-byte Reload
	movl	-68(%rbp), %r11d        # 4-byte Reload
	movl	%r9d, -76(%rbp)         # 4-byte Spill
	movl	%r11d, %r9d
	movl	$3, (%rsp)
	movl	$3, 8(%rsp)
	movl	$3, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$22, 32(%rsp)
	movb	$4, %al
	movl	%r10d, -80(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %ecx
	movl	%ecx, -64(%rbp)
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-64(%rbp), %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_image_select_ellipse, .Lfunc_end4-gimp_image_select_ellipse
	.cfi_endproc

	.globl	gimp_image_select_polygon
	.align	16, 0x90
	.type	gimp_image_select_polygon,@function
gimp_image_select_polygon:              # @gimp_image_select_polygon
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$104, %rsp
.Ltmp28:
	.cfi_offset %rbx, -40
.Ltmp29:
	.cfi_offset %r14, -32
.Ltmp30:
	.cfi_offset %r15, -24
	leaq	.L.str.5(%rip), %rax
	leaq	-60(%rbp), %r8
	movl	$13, %r9d
	xorl	%r10d, %r10d
	movl	$8, %r11d
	movl	$22, %ebx
	movl	%edi, -28(%rbp)
	movl	%esi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%rcx, -48(%rbp)
	movl	$1, -64(%rbp)
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %esi
	movq	-48(%rbp), %r14
	movq	%rax, %rdi
	movl	%esi, -68(%rbp)         # 4-byte Spill
	movq	%r8, %rsi
	movl	%edx, -72(%rbp)         # 4-byte Spill
	movl	%r9d, %edx
	movl	%r10d, %r8d
	movl	-72(%rbp), %r9d         # 4-byte Reload
	movl	$0, (%rsp)
	movl	-68(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 8(%rsp)
	movl	$8, 16(%rsp)
	movq	%r14, 24(%rsp)
	movl	$22, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -76(%rbp)         # 4-byte Spill
	movl	%r11d, -80(%rbp)        # 4-byte Spill
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
.Lfunc_end5:
	.size	gimp_image_select_polygon, .Lfunc_end5-gimp_image_select_polygon
	.cfi_endproc

	.globl	gimp_image_select_item
	.align	16, 0x90
	.type	gimp_image_select_item,@function
gimp_image_select_item:                 # @gimp_image_select_item
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
	pushq	%r14
	pushq	%rbx
	subq	$80, %rsp
.Ltmp34:
	.cfi_offset %rbx, -32
.Ltmp35:
	.cfi_offset %r14, -24
	leaq	.L.str.6(%rip), %rax
	leaq	-44(%rbp), %rcx
	movl	$13, %r8d
	xorl	%r9d, %r9d
	movl	$11, %r10d
	movl	$22, %r11d
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	$1, -48(%rbp)
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edi
	movl	%edi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -56(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	%edx, -60(%rbp)         # 4-byte Spill
	movl	%r8d, %edx
	movl	-60(%rbp), %ecx         # 4-byte Reload
	movl	%r9d, %r8d
	movl	-56(%rbp), %r9d         # 4-byte Reload
	movl	$11, (%rsp)
	movl	-52(%rbp), %ebx         # 4-byte Reload
	movl	%ebx, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -64(%rbp)        # 4-byte Spill
	movl	%r11d, -68(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %ecx
	movl	%ecx, -48(%rbp)
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-48(%rbp), %eax
	addq	$80, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_image_select_item, .Lfunc_end6-gimp_image_select_item
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-image-select-color"
	.size	.L.str, 24

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-image-select-contiguous-color"
	.size	.L.str.1, 35

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-image-select-rectangle"
	.size	.L.str.2, 28

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-image-select-round-rectangle"
	.size	.L.str.3, 34

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-image-select-ellipse"
	.size	.L.str.4, 26

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-image-select-polygon"
	.size	.L.str.5, 26

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-image-select-item"
	.size	.L.str.6, 23


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
