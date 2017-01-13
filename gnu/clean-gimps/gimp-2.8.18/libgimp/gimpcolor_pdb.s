	.text
	.file	"gimpcolor_pdb.bc"
	.globl	gimp_brightness_contrast
	.align	16, 0x90
	.type	gimp_brightness_contrast,@function
gimp_brightness_contrast:               # @gimp_brightness_contrast
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
	subq	$72, %rsp
.Ltmp3:
	.cfi_offset %rbx, -24
	leaq	.L.str(%rip), %rax
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
	movl	$0, (%rsp)
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
.Lfunc_end0:
	.size	gimp_brightness_contrast, .Lfunc_end0-gimp_brightness_contrast
	.cfi_endproc

	.globl	gimp_levels
	.align	16, 0x90
	.type	gimp_levels,@function
gimp_levels:                            # @gimp_levels
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
	pushq	%r12
	pushq	%rbx
	subq	$160, %rsp
.Ltmp7:
	.cfi_offset %rbx, -48
.Ltmp8:
	.cfi_offset %r12, -40
.Ltmp9:
	.cfi_offset %r14, -32
.Ltmp10:
	.cfi_offset %r15, -24
	leaq	.L.str.1(%rip), %rax
	leaq	-76(%rbp), %r10
	movl	$16, %r11d
	xorl	%ebx, %ebx
	movl	$3, %r14d
	movl	$22, %r15d
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	%edx, -44(%rbp)
	movl	%ecx, -48(%rbp)
	movsd	%xmm0, -56(%rbp)
	movl	%r8d, -60(%rbp)
	movl	%r9d, -64(%rbp)
	movl	$1, -80(%rbp)
	movl	-36(%rbp), %ecx
	movl	-40(%rbp), %r9d
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %esi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %edi
	movl	-64(%rbp), %r8d
	movl	%edi, -84(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -88(%rbp)         # 4-byte Spill
	movq	%r10, %rsi
	movl	%edx, -92(%rbp)         # 4-byte Spill
	movl	%r11d, %edx
	movl	%r8d, -96(%rbp)         # 4-byte Spill
	movl	%ebx, %r8d
	movl	$0, (%rsp)
	movl	-92(%rbp), %r11d        # 4-byte Reload
	movl	%r11d, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	-88(%rbp), %r11d        # 4-byte Reload
	movl	%r11d, 24(%rsp)
	movl	$3, 32(%rsp)
	movl	$0, 40(%rsp)
	movl	-84(%rbp), %r11d        # 4-byte Reload
	movl	%r11d, 48(%rsp)
	movl	$0, 56(%rsp)
	movl	-96(%rbp), %r11d        # 4-byte Reload
	movl	%r11d, 64(%rsp)
	movl	$22, 72(%rsp)
	movb	$1, %al
	movl	%r14d, -100(%rbp)       # 4-byte Spill
	movl	%r15d, -104(%rbp)       # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r12b
	andb	$1, %r12b
	movzbl	%r12b, %ecx
	movl	%ecx, -80(%rbp)
	movq	-72(%rbp), %rdi
	movl	-76(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-80(%rbp), %eax
	addq	$160, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_levels, .Lfunc_end1-gimp_levels
	.cfi_endproc

	.globl	gimp_levels_auto
	.align	16, 0x90
	.type	gimp_levels_auto,@function
gimp_levels_auto:                       # @gimp_levels_auto
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp13:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.2(%rip), %rax
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
.Lfunc_end2:
	.size	gimp_levels_auto, .Lfunc_end2-gimp_levels_auto
	.cfi_endproc

	.globl	gimp_levels_stretch
	.align	16, 0x90
	.type	gimp_levels_stretch,@function
gimp_levels_stretch:                    # @gimp_levels_stretch
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
	subq	$32, %rsp
	leaq	.L.str.3(%rip), %rax
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
.Lfunc_end3:
	.size	gimp_levels_stretch, .Lfunc_end3-gimp_levels_stretch
	.cfi_endproc

	.globl	gimp_posterize
	.align	16, 0x90
	.type	gimp_posterize,@function
gimp_posterize:                         # @gimp_posterize
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
	subq	$48, %rsp
	leaq	.L.str.4(%rip), %rax
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
.Lfunc_end4:
	.size	gimp_posterize, .Lfunc_end4-gimp_posterize
	.cfi_endproc

	.globl	gimp_desaturate
	.align	16, 0x90
	.type	gimp_desaturate,@function
gimp_desaturate:                        # @gimp_desaturate
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
	subq	$32, %rsp
	leaq	.L.str.5(%rip), %rax
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
.Lfunc_end5:
	.size	gimp_desaturate, .Lfunc_end5-gimp_desaturate
	.cfi_endproc

	.globl	gimp_desaturate_full
	.align	16, 0x90
	.type	gimp_desaturate_full,@function
gimp_desaturate_full:                   # @gimp_desaturate_full
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
	subq	$48, %rsp
	leaq	.L.str.6(%rip), %rax
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
.Lfunc_end6:
	.size	gimp_desaturate_full, .Lfunc_end6-gimp_desaturate_full
	.cfi_endproc

	.globl	gimp_equalize
	.align	16, 0x90
	.type	gimp_equalize,@function
gimp_equalize:                          # @gimp_equalize
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
	subq	$48, %rsp
	leaq	.L.str.7(%rip), %rax
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
.Lfunc_end7:
	.size	gimp_equalize, .Lfunc_end7-gimp_equalize
	.cfi_endproc

	.globl	gimp_invert
	.align	16, 0x90
	.type	gimp_invert,@function
gimp_invert:                            # @gimp_invert
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
	subq	$32, %rsp
	leaq	.L.str.8(%rip), %rax
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
.Lfunc_end8:
	.size	gimp_invert, .Lfunc_end8-gimp_invert
	.cfi_endproc

	.globl	gimp_curves_spline
	.align	16, 0x90
	.type	gimp_curves_spline,@function
gimp_curves_spline:                     # @gimp_curves_spline
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$104, %rsp
.Ltmp35:
	.cfi_offset %rbx, -40
.Ltmp36:
	.cfi_offset %r14, -32
.Ltmp37:
	.cfi_offset %r15, -24
	leaq	.L.str.9(%rip), %rax
	leaq	-60(%rbp), %r8
	movl	$16, %r9d
	xorl	%r10d, %r10d
	movl	$7, %r11d
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
	movl	$7, 16(%rsp)
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
.Lfunc_end9:
	.size	gimp_curves_spline, .Lfunc_end9-gimp_curves_spline
	.cfi_endproc

	.globl	gimp_curves_explicit
	.align	16, 0x90
	.type	gimp_curves_explicit,@function
gimp_curves_explicit:                   # @gimp_curves_explicit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp38:
	.cfi_def_cfa_offset 16
.Ltmp39:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp40:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$104, %rsp
.Ltmp41:
	.cfi_offset %rbx, -40
.Ltmp42:
	.cfi_offset %r14, -32
.Ltmp43:
	.cfi_offset %r15, -24
	leaq	.L.str.10(%rip), %rax
	leaq	-60(%rbp), %r8
	movl	$16, %r9d
	xorl	%r10d, %r10d
	movl	$7, %r11d
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
	movl	$7, 16(%rsp)
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
.Lfunc_end10:
	.size	gimp_curves_explicit, .Lfunc_end10-gimp_curves_explicit
	.cfi_endproc

	.globl	gimp_color_balance
	.align	16, 0x90
	.type	gimp_color_balance,@function
gimp_color_balance:                     # @gimp_color_balance
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp46:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$128, %rsp
.Ltmp47:
	.cfi_offset %rbx, -32
.Ltmp48:
	.cfi_offset %r14, -24
	leaq	.L.str.11(%rip), %rax
	leaq	-68(%rbp), %rcx
	movl	$16, %r8d
	xorl	%r9d, %r9d
	movl	$3, %r10d
	movl	$22, %r11d
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm1, -48(%rbp)
	movsd	%xmm2, -56(%rbp)
	movl	$1, -72(%rbp)
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-56(%rbp), %xmm2        # xmm2 = mem[0],zero
	movl	%edi, -76(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -80(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	%edx, -84(%rbp)         # 4-byte Spill
	movl	%r8d, %edx
	movl	-84(%rbp), %ecx         # 4-byte Reload
	movl	%r9d, %r8d
	movl	-80(%rbp), %r9d         # 4-byte Reload
	movl	$0, (%rsp)
	movl	-76(%rbp), %ebx         # 4-byte Reload
	movl	%ebx, 8(%rsp)
	movl	$3, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$3, 32(%rsp)
	movl	$22, 40(%rsp)
	movb	$3, %al
	movl	%r11d, -88(%rbp)        # 4-byte Spill
	movl	%r10d, -92(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %ecx
	movl	%ecx, -72(%rbp)
	movq	-64(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-72(%rbp), %eax
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_color_balance, .Lfunc_end11-gimp_color_balance
	.cfi_endproc

	.globl	gimp_colorize
	.align	16, 0x90
	.type	gimp_colorize,@function
gimp_colorize:                          # @gimp_colorize
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
	subq	$80, %rsp
	leaq	.L.str.12(%rip), %rax
	leaq	-44(%rbp), %rsi
	movl	$16, %edx
	movl	$3, %ecx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movl	$1, -48(%rbp)
	movl	-4(%rbp), %edi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movl	%edi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	-52(%rbp), %r9d         # 4-byte Reload
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	movl	%r9d, %ecx
	movl	-56(%rbp), %r10d        # 4-byte Reload
	movl	%r8d, -60(%rbp)         # 4-byte Spill
	movl	%r10d, %r8d
	movl	%r10d, %r9d
	movl	$3, (%rsp)
	movl	$22, 8(%rsp)
	movb	$3, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %ecx
	movl	%ecx, -48(%rbp)
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-48(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_colorize, .Lfunc_end12-gimp_colorize
	.cfi_endproc

	.globl	gimp_histogram
	.align	16, 0x90
	.type	gimp_histogram,@function
gimp_histogram:                         # @gimp_histogram
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp54:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$152, %rsp
.Ltmp55:
	.cfi_offset %rbx, -56
.Ltmp56:
	.cfi_offset %r12, -48
.Ltmp57:
	.cfi_offset %r13, -40
.Ltmp58:
	.cfi_offset %r14, -32
.Ltmp59:
	.cfi_offset %r15, -24
	movq	40(%rbp), %rax
	movq	32(%rbp), %r10
	movq	24(%rbp), %r11
	movq	16(%rbp), %rbx
	leaq	.L.str.13(%rip), %r14
	leaq	-116(%rbp), %r15
	movl	$16, %r12d
	xorl	%r13d, %r13d
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	movl	$22, %ecx
	movl	%edi, -44(%rbp)
	movl	%esi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	-124(%rbp), %edx        # 4-byte Reload
	movl	%edx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movq	%r9, -72(%rbp)
	movq	%rbx, -80(%rbp)
	movq	%r11, -88(%rbp)
	movq	%r10, -96(%rbp)
	movq	%rax, -104(%rbp)
	movl	$1, -120(%rbp)
	movl	-44(%rbp), %esi
	movl	-48(%rbp), %r9d
	movl	-52(%rbp), %edi
	movl	-56(%rbp), %edx
	movl	%edi, -128(%rbp)        # 4-byte Spill
	movq	%r14, %rdi
	movl	%esi, -132(%rbp)        # 4-byte Spill
	movq	%r15, %rsi
	movl	%edx, -136(%rbp)        # 4-byte Spill
	movl	%r12d, %edx
	movl	-132(%rbp), %r12d       # 4-byte Reload
	movl	%ecx, -140(%rbp)        # 4-byte Spill
	movl	%r12d, %ecx
	movl	%r13d, %r8d
	movl	$0, (%rsp)
	movl	-128(%rbp), %r13d       # 4-byte Reload
	movl	%r13d, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	-136(%rbp), %r13d       # 4-byte Reload
	movl	%r13d, 24(%rsp)
	movl	$22, 32(%rsp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	xorps	%xmm0, %xmm0
	movq	%rax, -112(%rbp)
	movq	-64(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-72(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-80(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-88(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-96(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-104(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-112(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -120(%rbp)
	cmpl	$0, -120(%rbp)
	je	.LBB13_2
# BB#1:                                 # %if.then
	movq	-112(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-64(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-112(%rbp), %rax
	movsd	88(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-72(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-112(%rbp), %rax
	movsd	128(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-80(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-112(%rbp), %rax
	movsd	168(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-88(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-112(%rbp), %rax
	movsd	208(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-96(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-112(%rbp), %rax
	movsd	248(%rax), %xmm0        # xmm0 = mem[0],zero
	movq	-104(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB13_2:                               # %if.end
	movq	-112(%rbp), %rdi
	movl	-116(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-120(%rbp), %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_histogram, .Lfunc_end13-gimp_histogram
	.cfi_endproc

	.globl	gimp_hue_saturation
	.align	16, 0x90
	.type	gimp_hue_saturation,@function
gimp_hue_saturation:                    # @gimp_hue_saturation
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
	subq	$104, %rsp
.Ltmp63:
	.cfi_offset %rbx, -24
	leaq	.L.str.14(%rip), %rax
	leaq	-52(%rbp), %rcx
	movl	$16, %edx
	xorl	%r8d, %r8d
	movl	$3, %r9d
	movl	$22, %r10d
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movl	$1, -56(%rbp)
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-40(%rbp), %xmm2        # xmm2 = mem[0],zero
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
	movl	$22, 24(%rsp)
	movb	$3, %al
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %ecx
	movl	%ecx, -56(%rbp)
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-56(%rbp), %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_hue_saturation, .Lfunc_end14-gimp_hue_saturation
	.cfi_endproc

	.globl	gimp_threshold
	.align	16, 0x90
	.type	gimp_threshold,@function
gimp_threshold:                         # @gimp_threshold
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
	pushq	%rbx
	subq	$72, %rsp
.Ltmp67:
	.cfi_offset %rbx, -24
	leaq	.L.str.15(%rip), %rax
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
	movl	$0, (%rsp)
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
.Lfunc_end15:
	.size	gimp_threshold, .Lfunc_end15-gimp_threshold
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-brightness-contrast"
	.size	.L.str, 25

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-levels"
	.size	.L.str.1, 12

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-levels-auto"
	.size	.L.str.2, 17

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-levels-stretch"
	.size	.L.str.3, 20

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-posterize"
	.size	.L.str.4, 15

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-desaturate"
	.size	.L.str.5, 16

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-desaturate-full"
	.size	.L.str.6, 21

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-equalize"
	.size	.L.str.7, 14

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-invert"
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-curves-spline"
	.size	.L.str.9, 19

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-curves-explicit"
	.size	.L.str.10, 21

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp-color-balance"
	.size	.L.str.11, 19

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp-colorize"
	.size	.L.str.12, 14

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp-histogram"
	.size	.L.str.13, 15

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp-hue-saturation"
	.size	.L.str.14, 20

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimp-threshold"
	.size	.L.str.15, 15


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
