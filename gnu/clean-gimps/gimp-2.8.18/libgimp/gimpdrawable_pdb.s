	.text
	.file	"gimpdrawable_pdb.bc"
	.globl	gimp_drawable_type
	.align	16, 0x90
	.type	gimp_drawable_type,@function
gimp_drawable_type:                     # @gimp_drawable_type
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
	movl	$16, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movl	$0, -24(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
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
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_drawable_type, .Lfunc_end0-gimp_drawable_type
	.cfi_endproc

	.globl	gimp_drawable_type_with_alpha
	.align	16, 0x90
	.type	gimp_drawable_type_with_alpha,@function
gimp_drawable_type_with_alpha:          # @gimp_drawable_type_with_alpha
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
	movl	$16, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movl	$0, -24(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB1_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_drawable_type_with_alpha, .Lfunc_end1-gimp_drawable_type_with_alpha
	.cfi_endproc

	.globl	gimp_drawable_has_alpha
	.align	16, 0x90
	.type	gimp_drawable_has_alpha,@function
gimp_drawable_has_alpha:                # @gimp_drawable_has_alpha
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
	leaq	.L.str.2(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$16, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movl	$0, -24(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB2_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_drawable_has_alpha, .Lfunc_end2-gimp_drawable_has_alpha
	.cfi_endproc

	.globl	gimp_drawable_is_rgb
	.align	16, 0x90
	.type	gimp_drawable_is_rgb,@function
gimp_drawable_is_rgb:                   # @gimp_drawable_is_rgb
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
	leaq	.L.str.3(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$16, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movl	$0, -24(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB3_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_drawable_is_rgb, .Lfunc_end3-gimp_drawable_is_rgb
	.cfi_endproc

	.globl	gimp_drawable_is_gray
	.align	16, 0x90
	.type	gimp_drawable_is_gray,@function
gimp_drawable_is_gray:                  # @gimp_drawable_is_gray
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
	leaq	.L.str.4(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$16, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movl	$0, -24(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB4_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_drawable_is_gray, .Lfunc_end4-gimp_drawable_is_gray
	.cfi_endproc

	.globl	gimp_drawable_is_indexed
	.align	16, 0x90
	.type	gimp_drawable_is_indexed,@function
gimp_drawable_is_indexed:               # @gimp_drawable_is_indexed
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
	leaq	.L.str.5(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$16, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movl	$0, -24(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB5_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_drawable_is_indexed, .Lfunc_end5-gimp_drawable_is_indexed
	.cfi_endproc

	.globl	gimp_drawable_bpp
	.align	16, 0x90
	.type	gimp_drawable_bpp,@function
gimp_drawable_bpp:                      # @gimp_drawable_bpp
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
	subq	$32, %rsp
	leaq	.L.str.6(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$16, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movl	$0, -24(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB6_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_drawable_bpp, .Lfunc_end6-gimp_drawable_bpp
	.cfi_endproc

	.globl	gimp_drawable_width
	.align	16, 0x90
	.type	gimp_drawable_width,@function
gimp_drawable_width:                    # @gimp_drawable_width
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
	subq	$32, %rsp
	leaq	.L.str.7(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$16, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movl	$0, -24(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB7_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_drawable_width, .Lfunc_end7-gimp_drawable_width
	.cfi_endproc

	.globl	gimp_drawable_height
	.align	16, 0x90
	.type	gimp_drawable_height,@function
gimp_drawable_height:                   # @gimp_drawable_height
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
	subq	$32, %rsp
	leaq	.L.str.8(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$16, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movl	$0, -24(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB8_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_drawable_height, .Lfunc_end8-gimp_drawable_height
	.cfi_endproc

	.globl	gimp_drawable_offsets
	.align	16, 0x90
	.type	gimp_drawable_offsets,@function
gimp_drawable_offsets:                  # @gimp_drawable_offsets
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
	leaq	.L.str.9(%rip), %rax
	leaq	-36(%rbp), %rcx
	movl	$16, %r8d
	movl	$22, %r9d
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$1, -40(%rbp)
	movl	-4(%rbp), %edi
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movl	%r8d, %edx
	movl	-44(%rbp), %ecx         # 4-byte Reload
	movl	%r9d, %r8d
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	movq	-32(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %ecx
	movl	%ecx, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-32(%rbp), %rax
	movl	88(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
.LBB9_2:                                # %if.end
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-40(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_drawable_offsets, .Lfunc_end9-gimp_drawable_offsets
	.cfi_endproc

	.globl	gimp_drawable_set_image
	.align	16, 0x90
	.type	gimp_drawable_set_image,@function
gimp_drawable_set_image:                # @gimp_drawable_set_image
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
	subq	$48, %rsp
	leaq	.L.str.10(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$16, %edx
	movl	$13, %r8d
	movl	$22, %r9d
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$1, -24(%rbp)
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
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %ecx
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_drawable_set_image, .Lfunc_end10-gimp_drawable_set_image
	.cfi_endproc

	.globl	gimp_drawable_mask_bounds
	.align	16, 0x90
	.type	gimp_drawable_mask_bounds,@function
gimp_drawable_mask_bounds:              # @gimp_drawable_mask_bounds
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
	subq	$64, %rsp
	leaq	.L.str.11(%rip), %rax
	leaq	-52(%rbp), %r9
	movl	$16, %r10d
	movl	$22, %r11d
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$0, -56(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movq	%r9, %rsi
	movl	%r10d, %edx
	movl	%r11d, %r8d
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -56(%rbp)
	movq	-48(%rbp), %rax
	movl	88(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-48(%rbp), %rax
	movl	128(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-48(%rbp), %rax
	movl	168(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-48(%rbp), %rax
	movl	208(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
.LBB11_2:                               # %if.end
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-56(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_drawable_mask_bounds, .Lfunc_end11-gimp_drawable_mask_bounds
	.cfi_endproc

	.globl	gimp_drawable_mask_intersect
	.align	16, 0x90
	.type	gimp_drawable_mask_intersect,@function
gimp_drawable_mask_intersect:           # @gimp_drawable_mask_intersect
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
	leaq	.L.str.12(%rip), %rax
	leaq	-52(%rbp), %r9
	movl	$16, %r10d
	movl	$22, %r11d
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$0, -56(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movq	%r9, %rsi
	movl	%r10d, %edx
	movl	%r11d, %r8d
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB12_2
# BB#1:                                 # %if.then
	movq	-48(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -56(%rbp)
	movq	-48(%rbp), %rax
	movl	88(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-48(%rbp), %rax
	movl	128(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-48(%rbp), %rax
	movl	168(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-48(%rbp), %rax
	movl	208(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
.LBB12_2:                               # %if.end
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-56(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_drawable_mask_intersect, .Lfunc_end12-gimp_drawable_mask_intersect
	.cfi_endproc

	.globl	gimp_drawable_merge_shadow
	.align	16, 0x90
	.type	gimp_drawable_merge_shadow,@function
gimp_drawable_merge_shadow:             # @gimp_drawable_merge_shadow
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
	leaq	.L.str.13(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$16, %edx
	xorl	%r8d, %r8d
	movl	$22, %r9d
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$1, -24(%rbp)
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
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %ecx
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_drawable_merge_shadow, .Lfunc_end13-gimp_drawable_merge_shadow
	.cfi_endproc

	.globl	gimp_drawable_free_shadow
	.align	16, 0x90
	.type	gimp_drawable_free_shadow,@function
gimp_drawable_free_shadow:              # @gimp_drawable_free_shadow
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
	leaq	.L.str.14(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$16, %edx
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
.Lfunc_end14:
	.size	gimp_drawable_free_shadow, .Lfunc_end14-gimp_drawable_free_shadow
	.cfi_endproc

	.globl	gimp_drawable_update
	.align	16, 0x90
	.type	gimp_drawable_update,@function
gimp_drawable_update:                   # @gimp_drawable_update
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
	pushq	%r14
	pushq	%rbx
	subq	$128, %rsp
.Ltmp48:
	.cfi_offset %rbx, -32
.Ltmp49:
	.cfi_offset %r14, -24
	leaq	.L.str.15(%rip), %rax
	leaq	-52(%rbp), %r9
	movl	$16, %r10d
	xorl	%r11d, %r11d
	movl	$22, %ebx
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	$1, -56(%rbp)
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edi
	movl	-36(%rbp), %r8d
	movl	%edi, -60(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -64(%rbp)         # 4-byte Spill
	movq	%r9, %rsi
	movl	%edx, -68(%rbp)         # 4-byte Spill
	movl	%r10d, %edx
	movl	%r8d, -72(%rbp)         # 4-byte Spill
	movl	%r11d, %r8d
	movl	-68(%rbp), %r9d         # 4-byte Reload
	movl	$0, (%rsp)
	movl	-64(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	-60(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 24(%rsp)
	movl	$0, 32(%rsp)
	movl	-72(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 40(%rsp)
	movl	$22, 48(%rsp)
	movb	$0, %al
	movl	%ebx, -76(%rbp)         # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %ecx
	movl	%ecx, -56(%rbp)
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-56(%rbp), %eax
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_drawable_update, .Lfunc_end15-gimp_drawable_update
	.cfi_endproc

	.globl	gimp_drawable_get_pixel
	.align	16, 0x90
	.type	gimp_drawable_get_pixel,@function
gimp_drawable_get_pixel:                # @gimp_drawable_get_pixel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	leaq	.L.str.16(%rip), %rax
	leaq	-36(%rbp), %r8
	movl	$16, %r9d
	xorl	%r10d, %r10d
	movl	$22, %r11d
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movq	%rcx, -24(%rbp)
	movq	$0, -48(%rbp)
	movl	-4(%rbp), %ecx
	movl	-8(%rbp), %edx
	movl	-12(%rbp), %esi
	movq	%rax, %rdi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%r8, %rsi
	movl	%edx, -56(%rbp)         # 4-byte Spill
	movl	%r9d, %edx
	movl	%r10d, %r8d
	movl	-56(%rbp), %r9d         # 4-byte Reload
	movl	$0, (%rsp)
	movl	-52(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$0, %al
	movl	%r11d, -60(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	movq	-32(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB16_2
# BB#1:                                 # %if.then
	movl	$1, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movl	48(%rcx), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-24(%rbp), %rcx
	movslq	(%rcx), %rdi
	callq	g_malloc_n@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	88(%rax), %rsi
	movq	-24(%rbp), %rax
	movslq	(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rdx
	callq	memcpy@PLT
.LBB16_2:                               # %if.end
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-48(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_drawable_get_pixel, .Lfunc_end16-gimp_drawable_get_pixel
	.cfi_endproc

	.globl	gimp_drawable_set_pixel
	.align	16, 0x90
	.type	gimp_drawable_set_pixel,@function
gimp_drawable_set_pixel:                # @gimp_drawable_set_pixel
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
	pushq	%rbx
	subq	$136, %rsp
.Ltmp56:
	.cfi_offset %rbx, -40
.Ltmp57:
	.cfi_offset %r14, -32
.Ltmp58:
	.cfi_offset %r15, -24
	leaq	.L.str.17(%rip), %rax
	leaq	-60(%rbp), %r9
	movl	$16, %r10d
	xorl	%r11d, %r11d
	movl	$7, %ebx
	movl	$22, %r14d
	movl	%edi, -28(%rbp)
	movl	%esi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	$1, -64(%rbp)
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %edx
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edi
	movq	-48(%rbp), %r8
	movl	%edi, -68(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -72(%rbp)         # 4-byte Spill
	movq	%r9, %rsi
	movl	%edx, -76(%rbp)         # 4-byte Spill
	movl	%r10d, %edx
	movq	%r8, -88(%rbp)          # 8-byte Spill
	movl	%r11d, %r8d
	movl	-76(%rbp), %r9d         # 4-byte Reload
	movl	$0, (%rsp)
	movl	-72(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	-68(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 24(%rsp)
	movl	$7, 32(%rsp)
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, 40(%rsp)
	movl	$22, 48(%rsp)
	movb	$0, %al
	movl	%ebx, -92(%rbp)         # 4-byte Spill
	movl	%r14d, -96(%rbp)        # 4-byte Spill
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
	addq	$136, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_drawable_set_pixel, .Lfunc_end17-gimp_drawable_set_pixel
	.cfi_endproc

	.globl	gimp_drawable_fill
	.align	16, 0x90
	.type	gimp_drawable_fill,@function
gimp_drawable_fill:                     # @gimp_drawable_fill
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp61:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	.L.str.18(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$16, %edx
	xorl	%r8d, %r8d
	movl	$22, %r9d
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$1, -24(%rbp)
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
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %ecx
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_drawable_fill, .Lfunc_end18-gimp_drawable_fill
	.cfi_endproc

	.globl	gimp_drawable_offset
	.align	16, 0x90
	.type	gimp_drawable_offset,@function
gimp_drawable_offset:                   # @gimp_drawable_offset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$128, %rsp
.Ltmp65:
	.cfi_offset %rbx, -32
.Ltmp66:
	.cfi_offset %r14, -24
	leaq	.L.str.19(%rip), %rax
	leaq	-52(%rbp), %r9
	movl	$16, %r10d
	xorl	%r11d, %r11d
	movl	$22, %ebx
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	$1, -56(%rbp)
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edi
	movl	-36(%rbp), %r8d
	movl	%edi, -60(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -64(%rbp)         # 4-byte Spill
	movq	%r9, %rsi
	movl	%edx, -68(%rbp)         # 4-byte Spill
	movl	%r10d, %edx
	movl	%r8d, -72(%rbp)         # 4-byte Spill
	movl	%r11d, %r8d
	movl	-68(%rbp), %r9d         # 4-byte Reload
	movl	$0, (%rsp)
	movl	-64(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	-60(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 24(%rsp)
	movl	$0, 32(%rsp)
	movl	-72(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 40(%rsp)
	movl	$22, 48(%rsp)
	movb	$0, %al
	movl	%ebx, -76(%rbp)         # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %ecx
	movl	%ecx, -56(%rbp)
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-56(%rbp), %eax
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_drawable_offset, .Lfunc_end19-gimp_drawable_offset
	.cfi_endproc

	.hidden	_gimp_drawable_thumbnail
	.globl	_gimp_drawable_thumbnail
	.align	16, 0x90
	.type	_gimp_drawable_thumbnail,@function
_gimp_drawable_thumbnail:               # @_gimp_drawable_thumbnail
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp69:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
.Ltmp70:
	.cfi_offset %rbx, -56
.Ltmp71:
	.cfi_offset %r12, -48
.Ltmp72:
	.cfi_offset %r13, -40
.Ltmp73:
	.cfi_offset %r14, -32
.Ltmp74:
	.cfi_offset %r15, -24
	movq	24(%rbp), %rax
	movq	16(%rbp), %r10
	leaq	.L.str.20(%rip), %r11
	leaq	-108(%rbp), %rbx
	movl	$16, %r14d
	xorl	%r15d, %r15d
	movl	$22, %r12d
	movl	%edi, -44(%rbp)
	movl	%esi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	%r10, -88(%rbp)
	movq	%rax, -96(%rbp)
	movl	$1, -112(%rbp)
	movl	-44(%rbp), %ecx
	movl	-48(%rbp), %r9d
	movl	-52(%rbp), %edx
	movq	%r11, %rdi
	movq	%rbx, %rsi
	movl	%edx, -116(%rbp)        # 4-byte Spill
	movl	%r14d, %edx
	movl	%r15d, %r8d
	movl	$0, (%rsp)
	movl	-116(%rbp), %r14d       # 4-byte Reload
	movl	%r14d, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$0, %al
	movl	%r12d, -120(%rbp)       # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -104(%rbp)
	movq	-64(%rbp), %rax
	movl	$0, (%rax)
	movq	-72(%rbp), %rax
	movl	$0, (%rax)
	movq	-80(%rbp), %rax
	movl	$0, (%rax)
	movq	-88(%rbp), %rax
	movl	$0, (%rax)
	movq	-96(%rbp), %rax
	movq	$0, (%rax)
	movq	-104(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r13b
	andb	$1, %r13b
	movzbl	%r13b, %ecx
	movl	%ecx, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB20_2
# BB#1:                                 # %if.then
	movl	$1, %eax
	movl	%eax, %esi
	movq	-104(%rbp), %rcx
	movl	48(%rcx), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-104(%rbp), %rcx
	movl	88(%rcx), %eax
	movq	-72(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-104(%rbp), %rcx
	movl	128(%rcx), %eax
	movq	-80(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-104(%rbp), %rcx
	movl	168(%rcx), %eax
	movq	-88(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-88(%rbp), %rcx
	movslq	(%rcx), %rdi
	callq	g_malloc_n@PLT
	movq	-96(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-96(%rbp), %rax
	movq	(%rax), %rdi
	movq	-104(%rbp), %rax
	movq	208(%rax), %rsi
	movq	-88(%rbp), %rax
	movslq	(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rdx
	callq	memcpy@PLT
.LBB20_2:                               # %if.end
	movq	-104(%rbp), %rdi
	movl	-108(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-112(%rbp), %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	_gimp_drawable_thumbnail, .Lfunc_end20-_gimp_drawable_thumbnail
	.cfi_endproc

	.hidden	_gimp_drawable_sub_thumbnail
	.globl	_gimp_drawable_sub_thumbnail
	.align	16, 0x90
	.type	_gimp_drawable_sub_thumbnail,@function
_gimp_drawable_sub_thumbnail:           # @_gimp_drawable_sub_thumbnail
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$216, %rsp
.Ltmp78:
	.cfi_offset %rbx, -56
.Ltmp79:
	.cfi_offset %r12, -48
.Ltmp80:
	.cfi_offset %r13, -40
.Ltmp81:
	.cfi_offset %r14, -32
.Ltmp82:
	.cfi_offset %r15, -24
	movq	56(%rbp), %rax
	movq	48(%rbp), %r10
	movq	40(%rbp), %r11
	movq	32(%rbp), %rbx
	movq	24(%rbp), %r14
	movl	16(%rbp), %r15d
	leaq	.L.str.21(%rip), %r12
	leaq	-124(%rbp), %r13
	movl	%ecx, -132(%rbp)        # 4-byte Spill
	movl	$16, %ecx
	movl	%ecx, -136(%rbp)        # 4-byte Spill
	xorl	%ecx, %ecx
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	movl	$22, %ecx
	movl	%edi, -44(%rbp)
	movl	%esi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	-132(%rbp), %edx        # 4-byte Reload
	movl	%edx, -56(%rbp)
	movl	%r8d, -60(%rbp)
	movl	%r9d, -64(%rbp)
	movl	%r15d, -68(%rbp)
	movq	%r14, -80(%rbp)
	movq	%rbx, -88(%rbp)
	movq	%r11, -96(%rbp)
	movq	%r10, -104(%rbp)
	movq	%rax, -112(%rbp)
	movl	$1, -128(%rbp)
	movl	-44(%rbp), %esi
	movl	-48(%rbp), %r9d
	movl	-52(%rbp), %edi
	movl	-56(%rbp), %r8d
	movl	-60(%rbp), %r15d
	movl	-64(%rbp), %edx
	movl	-68(%rbp), %r10d
	movl	%edi, -144(%rbp)        # 4-byte Spill
	movq	%r12, %rdi
	movl	%esi, -148(%rbp)        # 4-byte Spill
	movq	%r13, %rsi
	movl	-136(%rbp), %r11d       # 4-byte Reload
	movl	%edx, -152(%rbp)        # 4-byte Spill
	movl	%r11d, %edx
	movl	-148(%rbp), %r11d       # 4-byte Reload
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	movl	%r11d, %ecx
	movl	-140(%rbp), %r11d       # 4-byte Reload
	movl	%r8d, -160(%rbp)        # 4-byte Spill
	movl	%r11d, %r8d
	movl	$0, (%rsp)
	movl	-144(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	-160(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 24(%rsp)
	movl	$0, 32(%rsp)
	movl	%r15d, 40(%rsp)
	movl	$0, 48(%rsp)
	movl	-152(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 56(%rsp)
	movl	$0, 64(%rsp)
	movl	%r10d, 72(%rsp)
	movl	$22, 80(%rsp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -120(%rbp)
	movq	-80(%rbp), %rax
	movl	$0, (%rax)
	movq	-88(%rbp), %rax
	movl	$0, (%rax)
	movq	-96(%rbp), %rax
	movl	$0, (%rax)
	movq	-104(%rbp), %rax
	movl	$0, (%rax)
	movq	-112(%rbp), %rax
	movq	$0, (%rax)
	movq	-120(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -128(%rbp)
	cmpl	$0, -128(%rbp)
	je	.LBB21_2
# BB#1:                                 # %if.then
	movl	$1, %eax
	movl	%eax, %esi
	movq	-120(%rbp), %rcx
	movl	48(%rcx), %eax
	movq	-80(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-120(%rbp), %rcx
	movl	88(%rcx), %eax
	movq	-88(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-120(%rbp), %rcx
	movl	128(%rcx), %eax
	movq	-96(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-120(%rbp), %rcx
	movl	168(%rcx), %eax
	movq	-104(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-104(%rbp), %rcx
	movslq	(%rcx), %rdi
	callq	g_malloc_n@PLT
	movq	-112(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-112(%rbp), %rax
	movq	(%rax), %rdi
	movq	-120(%rbp), %rax
	movq	208(%rax), %rsi
	movq	-104(%rbp), %rax
	movslq	(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rdx
	callq	memcpy@PLT
.LBB21_2:                               # %if.end
	movq	-120(%rbp), %rdi
	movl	-124(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-128(%rbp), %eax
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	_gimp_drawable_sub_thumbnail, .Lfunc_end21-_gimp_drawable_sub_thumbnail
	.cfi_endproc

	.globl	gimp_drawable_foreground_extract
	.align	16, 0x90
	.type	gimp_drawable_foreground_extract,@function
gimp_drawable_foreground_extract:       # @gimp_drawable_foreground_extract
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp83:
	.cfi_def_cfa_offset 16
.Ltmp84:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp85:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$72, %rsp
.Ltmp86:
	.cfi_offset %rbx, -24
	leaq	.L.str.22(%rip), %rax
	leaq	-36(%rbp), %rcx
	movl	$16, %r8d
	xorl	%r9d, %r9d
	movl	$22, %r10d
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$1, -40(%rbp)
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %edi
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -48(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movl	%r8d, %edx
	movl	-52(%rbp), %ecx         # 4-byte Reload
	movl	%r9d, %r8d
	movl	-48(%rbp), %r9d         # 4-byte Reload
	movl	$16, (%rsp)
	movl	-44(%rbp), %r11d        # 4-byte Reload
	movl	%r11d, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -56(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %ecx
	movl	%ecx, -40(%rbp)
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-40(%rbp), %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_drawable_foreground_extract, .Lfunc_end22-gimp_drawable_foreground_extract
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-drawable-type"
	.size	.L.str, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-drawable-type-with-alpha"
	.size	.L.str.1, 30

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-drawable-has-alpha"
	.size	.L.str.2, 24

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-drawable-is-rgb"
	.size	.L.str.3, 21

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-drawable-is-gray"
	.size	.L.str.4, 22

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-drawable-is-indexed"
	.size	.L.str.5, 25

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-drawable-bpp"
	.size	.L.str.6, 18

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-drawable-width"
	.size	.L.str.7, 20

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-drawable-height"
	.size	.L.str.8, 21

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-drawable-offsets"
	.size	.L.str.9, 22

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-drawable-set-image"
	.size	.L.str.10, 24

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp-drawable-mask-bounds"
	.size	.L.str.11, 26

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp-drawable-mask-intersect"
	.size	.L.str.12, 29

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp-drawable-merge-shadow"
	.size	.L.str.13, 27

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp-drawable-free-shadow"
	.size	.L.str.14, 26

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimp-drawable-update"
	.size	.L.str.15, 21

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimp-drawable-get-pixel"
	.size	.L.str.16, 24

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gimp-drawable-set-pixel"
	.size	.L.str.17, 24

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp-drawable-fill"
	.size	.L.str.18, 19

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp-drawable-offset"
	.size	.L.str.19, 21

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gimp-drawable-thumbnail"
	.size	.L.str.20, 24

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimp-drawable-sub-thumbnail"
	.size	.L.str.21, 28

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gimp-drawable-foreground-extract"
	.size	.L.str.22, 33


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
