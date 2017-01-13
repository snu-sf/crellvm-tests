	.text
	.file	"gimppainttools_pdb.bc"
	.globl	gimp_airbrush
	.align	16, 0x90
	.type	gimp_airbrush,@function
gimp_airbrush:                          # @gimp_airbrush
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
	pushq	%r14
	pushq	%rbx
	subq	$112, %rsp
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
	leaq	.L.str(%rip), %rax
	leaq	-60(%rbp), %rcx
	movl	$16, %r8d
	movl	$3, %r9d
	xorl	%r10d, %r10d
	movl	$8, %r11d
	movl	$22, %ebx
	movl	%edi, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movl	%esi, -36(%rbp)
	movq	%rdx, -48(%rbp)
	movl	$1, -64(%rbp)
	movl	-20(%rbp), %esi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-36(%rbp), %edi
	movq	-48(%rbp), %rdx
	movl	%edi, -68(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -72(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movl	-72(%rbp), %ecx         # 4-byte Reload
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	-68(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, (%rsp)
	movl	$8, 8(%rsp)
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, 16(%rsp)
	movl	$22, 24(%rsp)
	movb	$1, %al
	movl	%ebx, -84(%rbp)         # 4-byte Spill
	movl	%r11d, -88(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %ecx
	movl	%ecx, -64(%rbp)
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-64(%rbp), %eax
	addq	$112, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_airbrush, .Lfunc_end0-gimp_airbrush
	.cfi_endproc

	.globl	gimp_airbrush_default
	.align	16, 0x90
	.type	gimp_airbrush_default,@function
gimp_airbrush_default:                  # @gimp_airbrush_default
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp5:
	.cfi_def_cfa_offset 16
.Ltmp6:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp7:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$88, %rsp
.Ltmp8:
	.cfi_offset %rbx, -24
	leaq	.L.str.1(%rip), %rax
	leaq	-36(%rbp), %rcx
	movl	$16, %r8d
	xorl	%r9d, %r9d
	movl	$8, %r10d
	movl	$22, %r11d
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$1, -40(%rbp)
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edi
	movq	-24(%rbp), %rdx
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -48(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movl	-48(%rbp), %ecx         # 4-byte Reload
	movl	%r9d, %r8d
	movl	-44(%rbp), %r9d         # 4-byte Reload
	movl	$8, (%rsp)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -60(%rbp)        # 4-byte Spill
	movl	%r11d, -64(%rbp)        # 4-byte Spill
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
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_airbrush_default, .Lfunc_end1-gimp_airbrush_default
	.cfi_endproc

	.globl	gimp_clone
	.align	16, 0x90
	.type	gimp_clone,@function
gimp_clone:                             # @gimp_clone
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$176, %rsp
.Ltmp12:
	.cfi_offset %rbx, -48
.Ltmp13:
	.cfi_offset %r12, -40
.Ltmp14:
	.cfi_offset %r14, -32
.Ltmp15:
	.cfi_offset %r15, -24
	leaq	.L.str.2(%rip), %rax
	leaq	-92(%rbp), %r9
	movl	$16, %r10d
	xorl	%r11d, %r11d
	movl	$3, %ebx
	movl	$8, %r14d
	movl	$22, %r15d
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	%edx, -44(%rbp)
	movsd	%xmm0, -56(%rbp)
	movsd	%xmm1, -64(%rbp)
	movl	%ecx, -68(%rbp)
	movq	%r8, -80(%rbp)
	movl	$1, -96(%rbp)
	movl	-36(%rbp), %ecx
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %esi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-68(%rbp), %edi
	movq	-80(%rbp), %r8
	movl	%edi, -100(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -104(%rbp)        # 4-byte Spill
	movq	%r9, %rsi
	movl	%edx, -108(%rbp)        # 4-byte Spill
	movl	%r10d, %edx
	movq	%r8, -120(%rbp)         # 8-byte Spill
	movl	%r10d, %r8d
	movl	-108(%rbp), %r9d        # 4-byte Reload
	movl	$0, (%rsp)
	movl	-104(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, 8(%rsp)
	movl	$3, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$0, 32(%rsp)
	movl	-100(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, 40(%rsp)
	movl	$8, 48(%rsp)
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, 56(%rsp)
	movl	$22, 64(%rsp)
	movb	$2, %al
	movl	%r14d, -124(%rbp)       # 4-byte Spill
	movl	%r15d, -128(%rbp)       # 4-byte Spill
	movl	%r11d, -132(%rbp)       # 4-byte Spill
	movl	%ebx, -136(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r12b
	andb	$1, %r12b
	movzbl	%r12b, %ecx
	movl	%ecx, -96(%rbp)
	movq	-88(%rbp), %rdi
	movl	-92(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-96(%rbp), %eax
	addq	$176, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_clone, .Lfunc_end2-gimp_clone
	.cfi_endproc

	.globl	gimp_clone_default
	.align	16, 0x90
	.type	gimp_clone_default,@function
gimp_clone_default:                     # @gimp_clone_default
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
	pushq	%rbx
	subq	$88, %rsp
.Ltmp19:
	.cfi_offset %rbx, -24
	leaq	.L.str.3(%rip), %rax
	leaq	-36(%rbp), %rcx
	movl	$16, %r8d
	xorl	%r9d, %r9d
	movl	$8, %r10d
	movl	$22, %r11d
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$1, -40(%rbp)
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edi
	movq	-24(%rbp), %rdx
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -48(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movl	-48(%rbp), %ecx         # 4-byte Reload
	movl	%r9d, %r8d
	movl	-44(%rbp), %r9d         # 4-byte Reload
	movl	$8, (%rsp)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -60(%rbp)        # 4-byte Spill
	movl	%r11d, -64(%rbp)        # 4-byte Spill
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
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_clone_default, .Lfunc_end3-gimp_clone_default
	.cfi_endproc

	.globl	gimp_convolve
	.align	16, 0x90
	.type	gimp_convolve,@function
gimp_convolve:                          # @gimp_convolve
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$112, %rsp
.Ltmp23:
	.cfi_offset %rbx, -48
.Ltmp24:
	.cfi_offset %r12, -40
.Ltmp25:
	.cfi_offset %r14, -32
.Ltmp26:
	.cfi_offset %r15, -24
	leaq	.L.str.4(%rip), %rax
	leaq	-76(%rbp), %r8
	movl	$16, %r9d
	movl	$3, %r10d
	xorl	%r11d, %r11d
	movl	$8, %ebx
	movl	$22, %r14d
	movl	%edi, -36(%rbp)
	movsd	%xmm0, -48(%rbp)
	movl	%esi, -52(%rbp)
	movl	%edx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movl	$1, -80(%rbp)
	movl	-36(%rbp), %ecx
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-52(%rbp), %edx
	movl	-56(%rbp), %esi
	movq	-64(%rbp), %r15
	movq	%rax, %rdi
	movl	%esi, -84(%rbp)         # 4-byte Spill
	movq	%r8, %rsi
	movl	%edx, -88(%rbp)         # 4-byte Spill
	movl	%r9d, %edx
	movl	%r10d, %r8d
	movl	%r11d, %r9d
	movl	-88(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, (%rsp)
	movl	$0, 8(%rsp)
	movl	-84(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 16(%rsp)
	movl	$8, 24(%rsp)
	movq	%r15, 32(%rsp)
	movl	$22, 40(%rsp)
	movb	$1, %al
	movl	%ebx, -92(%rbp)         # 4-byte Spill
	movl	%r14d, -96(%rbp)        # 4-byte Spill
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
	addq	$112, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_convolve, .Lfunc_end4-gimp_convolve
	.cfi_endproc

	.globl	gimp_convolve_default
	.align	16, 0x90
	.type	gimp_convolve_default,@function
gimp_convolve_default:                  # @gimp_convolve_default
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
	pushq	%rbx
	subq	$88, %rsp
.Ltmp30:
	.cfi_offset %rbx, -24
	leaq	.L.str.5(%rip), %rax
	leaq	-36(%rbp), %rcx
	movl	$16, %r8d
	xorl	%r9d, %r9d
	movl	$8, %r10d
	movl	$22, %r11d
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$1, -40(%rbp)
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edi
	movq	-24(%rbp), %rdx
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -48(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movl	-48(%rbp), %ecx         # 4-byte Reload
	movl	%r9d, %r8d
	movl	-44(%rbp), %r9d         # 4-byte Reload
	movl	$8, (%rsp)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -60(%rbp)        # 4-byte Spill
	movl	%r11d, -64(%rbp)        # 4-byte Spill
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
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_convolve_default, .Lfunc_end5-gimp_convolve_default
	.cfi_endproc

	.globl	gimp_dodgeburn
	.align	16, 0x90
	.type	gimp_dodgeburn,@function
gimp_dodgeburn:                         # @gimp_dodgeburn
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$160, %rsp
.Ltmp34:
	.cfi_offset %rbx, -48
.Ltmp35:
	.cfi_offset %r12, -40
.Ltmp36:
	.cfi_offset %r14, -32
.Ltmp37:
	.cfi_offset %r15, -24
	leaq	.L.str.6(%rip), %rax
	leaq	-84(%rbp), %r9
	movl	$16, %r10d
	movl	$3, %r11d
	xorl	%ebx, %ebx
	movl	$8, %r14d
	movl	$22, %r15d
	movl	%edi, -36(%rbp)
	movsd	%xmm0, -48(%rbp)
	movl	%esi, -52(%rbp)
	movl	%edx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movq	%r8, -72(%rbp)
	movl	$1, -88(%rbp)
	movl	-36(%rbp), %ecx
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-52(%rbp), %edx
	movl	-56(%rbp), %esi
	movl	-60(%rbp), %edi
	movq	-72(%rbp), %r8
	movl	%edi, -92(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -96(%rbp)         # 4-byte Spill
	movq	%r9, %rsi
	movl	%edx, -100(%rbp)        # 4-byte Spill
	movl	%r10d, %edx
	movq	%r8, -112(%rbp)         # 8-byte Spill
	movl	%r11d, %r8d
	movl	%ebx, %r9d
	movl	-100(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, (%rsp)
	movl	$0, 8(%rsp)
	movl	-96(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	-92(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 32(%rsp)
	movl	$8, 40(%rsp)
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, 48(%rsp)
	movl	$22, 56(%rsp)
	movb	$1, %al
	movl	%r14d, -116(%rbp)       # 4-byte Spill
	movl	%r15d, -120(%rbp)       # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r12b
	andb	$1, %r12b
	movzbl	%r12b, %ecx
	movl	%ecx, -88(%rbp)
	movq	-80(%rbp), %rdi
	movl	-84(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-88(%rbp), %eax
	addq	$160, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_dodgeburn, .Lfunc_end6-gimp_dodgeburn
	.cfi_endproc

	.globl	gimp_dodgeburn_default
	.align	16, 0x90
	.type	gimp_dodgeburn_default,@function
gimp_dodgeburn_default:                 # @gimp_dodgeburn_default
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
	pushq	%rbx
	subq	$88, %rsp
.Ltmp41:
	.cfi_offset %rbx, -24
	leaq	.L.str.7(%rip), %rax
	leaq	-36(%rbp), %rcx
	movl	$16, %r8d
	xorl	%r9d, %r9d
	movl	$8, %r10d
	movl	$22, %r11d
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$1, -40(%rbp)
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edi
	movq	-24(%rbp), %rdx
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -48(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movl	-48(%rbp), %ecx         # 4-byte Reload
	movl	%r9d, %r8d
	movl	-44(%rbp), %r9d         # 4-byte Reload
	movl	$8, (%rsp)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -60(%rbp)        # 4-byte Spill
	movl	%r11d, -64(%rbp)        # 4-byte Spill
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
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_dodgeburn_default, .Lfunc_end7-gimp_dodgeburn_default
	.cfi_endproc

	.globl	gimp_eraser
	.align	16, 0x90
	.type	gimp_eraser,@function
gimp_eraser:                            # @gimp_eraser
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$136, %rsp
.Ltmp45:
	.cfi_offset %rbx, -40
.Ltmp46:
	.cfi_offset %r14, -32
.Ltmp47:
	.cfi_offset %r15, -24
	leaq	.L.str.8(%rip), %rax
	leaq	-60(%rbp), %r9
	movl	$16, %r10d
	xorl	%r11d, %r11d
	movl	$8, %ebx
	movl	$22, %r14d
	movl	%edi, -28(%rbp)
	movl	%esi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	%r8d, -48(%rbp)
	movl	$1, -64(%rbp)
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %esi
	movq	-40(%rbp), %rdx
	movl	-44(%rbp), %edi
	movl	-48(%rbp), %r8d
	movl	%edi, -68(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -72(%rbp)         # 4-byte Spill
	movq	%r9, %rsi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movl	%r10d, %edx
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	movl	%r11d, %r8d
	movl	-72(%rbp), %r9d         # 4-byte Reload
	movl	$8, (%rsp)
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	-68(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 24(%rsp)
	movl	$0, 32(%rsp)
	movl	-84(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 40(%rsp)
	movl	$22, 48(%rsp)
	movb	$0, %al
	movl	%ebx, -88(%rbp)         # 4-byte Spill
	movl	%r14d, -92(%rbp)        # 4-byte Spill
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
.Lfunc_end8:
	.size	gimp_eraser, .Lfunc_end8-gimp_eraser
	.cfi_endproc

	.globl	gimp_eraser_default
	.align	16, 0x90
	.type	gimp_eraser_default,@function
gimp_eraser_default:                    # @gimp_eraser_default
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
	pushq	%rbx
	subq	$88, %rsp
.Ltmp51:
	.cfi_offset %rbx, -24
	leaq	.L.str.9(%rip), %rax
	leaq	-36(%rbp), %rcx
	movl	$16, %r8d
	xorl	%r9d, %r9d
	movl	$8, %r10d
	movl	$22, %r11d
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$1, -40(%rbp)
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edi
	movq	-24(%rbp), %rdx
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -48(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movl	-48(%rbp), %ecx         # 4-byte Reload
	movl	%r9d, %r8d
	movl	-44(%rbp), %r9d         # 4-byte Reload
	movl	$8, (%rsp)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -60(%rbp)        # 4-byte Spill
	movl	%r11d, -64(%rbp)        # 4-byte Spill
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
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_eraser_default, .Lfunc_end9-gimp_eraser_default
	.cfi_endproc

	.globl	gimp_heal
	.align	16, 0x90
	.type	gimp_heal,@function
gimp_heal:                              # @gimp_heal
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
	subq	$136, %rsp
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
	leaq	.L.str.10(%rip), %rax
	leaq	-92(%rbp), %r8
	movl	$16, %r9d
	movl	$3, %r10d
	xorl	%r11d, %r11d
	movl	$8, %ebx
	movl	$22, %r14d
	movl	%edi, -44(%rbp)
	movl	%esi, -48(%rbp)
	movsd	%xmm0, -56(%rbp)
	movsd	%xmm1, -64(%rbp)
	movl	%edx, -68(%rbp)
	movq	%rcx, -80(%rbp)
	movl	$1, -96(%rbp)
	movl	-44(%rbp), %ecx
	movl	-48(%rbp), %edx
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-68(%rbp), %esi
	movq	-80(%rbp), %r15
	movq	%rax, %rdi
	movl	%esi, -100(%rbp)        # 4-byte Spill
	movq	%r8, %rsi
	movl	%edx, -104(%rbp)        # 4-byte Spill
	movl	%r9d, %edx
	movl	%r9d, %r8d
	movl	-104(%rbp), %r9d        # 4-byte Reload
	movl	$3, (%rsp)
	movl	$3, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	-100(%rbp), %r12d       # 4-byte Reload
	movl	%r12d, 24(%rsp)
	movl	$8, 32(%rsp)
	movq	%r15, 40(%rsp)
	movl	$22, 48(%rsp)
	movb	$2, %al
	movl	%r14d, -108(%rbp)       # 4-byte Spill
	movl	%r10d, -112(%rbp)       # 4-byte Spill
	movl	%r11d, -116(%rbp)       # 4-byte Spill
	movl	%ebx, -120(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r13b
	andb	$1, %r13b
	movzbl	%r13b, %ecx
	movl	%ecx, -96(%rbp)
	movq	-88(%rbp), %rdi
	movl	-92(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-96(%rbp), %eax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_heal, .Lfunc_end10-gimp_heal
	.cfi_endproc

	.globl	gimp_heal_default
	.align	16, 0x90
	.type	gimp_heal_default,@function
gimp_heal_default:                      # @gimp_heal_default
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
	subq	$88, %rsp
.Ltmp63:
	.cfi_offset %rbx, -24
	leaq	.L.str.11(%rip), %rax
	leaq	-36(%rbp), %rcx
	movl	$16, %r8d
	xorl	%r9d, %r9d
	movl	$8, %r10d
	movl	$22, %r11d
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$1, -40(%rbp)
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edi
	movq	-24(%rbp), %rdx
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -48(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movl	-48(%rbp), %ecx         # 4-byte Reload
	movl	%r9d, %r8d
	movl	-44(%rbp), %r9d         # 4-byte Reload
	movl	$8, (%rsp)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -60(%rbp)        # 4-byte Spill
	movl	%r11d, -64(%rbp)        # 4-byte Spill
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
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_heal_default, .Lfunc_end11-gimp_heal_default
	.cfi_endproc

	.globl	gimp_paintbrush
	.align	16, 0x90
	.type	gimp_paintbrush,@function
gimp_paintbrush:                        # @gimp_paintbrush
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
	subq	$152, %rsp
.Ltmp67:
	.cfi_offset %rbx, -40
.Ltmp68:
	.cfi_offset %r14, -32
.Ltmp69:
	.cfi_offset %r15, -24
	leaq	.L.str.12(%rip), %rax
	leaq	-84(%rbp), %r8
	movl	$16, %r9d
	movl	$3, %r10d
	xorl	%r11d, %r11d
	movl	$8, %ebx
	movl	$22, %r14d
	movl	%edi, -28(%rbp)
	movsd	%xmm0, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movsd	%xmm1, -72(%rbp)
	movl	$1, -88(%rbp)
	movl	-28(%rbp), %ecx
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-44(%rbp), %esi
	movq	-56(%rbp), %rdx
	movl	-60(%rbp), %edi
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	%edi, -92(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -96(%rbp)         # 4-byte Spill
	movq	%r8, %rsi
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movl	%r9d, %edx
	movl	%r10d, %r8d
	movl	%r11d, %r9d
	movl	-96(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, (%rsp)
	movl	$8, 8(%rsp)
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	-92(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 32(%rsp)
	movl	$3, 40(%rsp)
	movl	$22, 48(%rsp)
	movb	$2, %al
	movl	%r14d, -108(%rbp)       # 4-byte Spill
	movl	%ebx, -112(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r15b
	andb	$1, %r15b
	movzbl	%r15b, %ecx
	movl	%ecx, -88(%rbp)
	movq	-80(%rbp), %rdi
	movl	-84(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-88(%rbp), %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_paintbrush, .Lfunc_end12-gimp_paintbrush
	.cfi_endproc

	.globl	gimp_paintbrush_default
	.align	16, 0x90
	.type	gimp_paintbrush_default,@function
gimp_paintbrush_default:                # @gimp_paintbrush_default
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
	subq	$88, %rsp
.Ltmp73:
	.cfi_offset %rbx, -24
	leaq	.L.str.13(%rip), %rax
	leaq	-36(%rbp), %rcx
	movl	$16, %r8d
	xorl	%r9d, %r9d
	movl	$8, %r10d
	movl	$22, %r11d
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$1, -40(%rbp)
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edi
	movq	-24(%rbp), %rdx
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -48(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movl	-48(%rbp), %ecx         # 4-byte Reload
	movl	%r9d, %r8d
	movl	-44(%rbp), %r9d         # 4-byte Reload
	movl	$8, (%rsp)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -60(%rbp)        # 4-byte Spill
	movl	%r11d, -64(%rbp)        # 4-byte Spill
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
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_paintbrush_default, .Lfunc_end13-gimp_paintbrush_default
	.cfi_endproc

	.globl	gimp_pencil
	.align	16, 0x90
	.type	gimp_pencil,@function
gimp_pencil:                            # @gimp_pencil
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
	pushq	%rbx
	subq	$88, %rsp
.Ltmp77:
	.cfi_offset %rbx, -24
	leaq	.L.str.14(%rip), %rax
	leaq	-36(%rbp), %rcx
	movl	$16, %r8d
	xorl	%r9d, %r9d
	movl	$8, %r10d
	movl	$22, %r11d
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$1, -40(%rbp)
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edi
	movq	-24(%rbp), %rdx
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -48(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movl	-48(%rbp), %ecx         # 4-byte Reload
	movl	%r9d, %r8d
	movl	-44(%rbp), %r9d         # 4-byte Reload
	movl	$8, (%rsp)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -60(%rbp)        # 4-byte Spill
	movl	%r11d, -64(%rbp)        # 4-byte Spill
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
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_pencil, .Lfunc_end14-gimp_pencil
	.cfi_endproc

	.globl	gimp_smudge
	.align	16, 0x90
	.type	gimp_smudge,@function
gimp_smudge:                            # @gimp_smudge
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
	pushq	%r14
	pushq	%rbx
	subq	$112, %rsp
.Ltmp81:
	.cfi_offset %rbx, -32
.Ltmp82:
	.cfi_offset %r14, -24
	leaq	.L.str.15(%rip), %rax
	leaq	-60(%rbp), %rcx
	movl	$16, %r8d
	movl	$3, %r9d
	xorl	%r10d, %r10d
	movl	$8, %r11d
	movl	$22, %ebx
	movl	%edi, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movl	%esi, -36(%rbp)
	movq	%rdx, -48(%rbp)
	movl	$1, -64(%rbp)
	movl	-20(%rbp), %esi
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-36(%rbp), %edi
	movq	-48(%rbp), %rdx
	movl	%edi, -68(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -72(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movl	-72(%rbp), %ecx         # 4-byte Reload
	movl	%r9d, %r8d
	movl	%r10d, %r9d
	movl	-68(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, (%rsp)
	movl	$8, 8(%rsp)
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, 16(%rsp)
	movl	$22, 24(%rsp)
	movb	$1, %al
	movl	%ebx, -84(%rbp)         # 4-byte Spill
	movl	%r11d, -88(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %ecx
	movl	%ecx, -64(%rbp)
	movq	-56(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-64(%rbp), %eax
	addq	$112, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_smudge, .Lfunc_end15-gimp_smudge
	.cfi_endproc

	.globl	gimp_smudge_default
	.align	16, 0x90
	.type	gimp_smudge_default,@function
gimp_smudge_default:                    # @gimp_smudge_default
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
	subq	$88, %rsp
.Ltmp86:
	.cfi_offset %rbx, -24
	leaq	.L.str.16(%rip), %rax
	leaq	-36(%rbp), %rcx
	movl	$16, %r8d
	xorl	%r9d, %r9d
	movl	$8, %r10d
	movl	$22, %r11d
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$1, -40(%rbp)
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edi
	movq	-24(%rbp), %rdx
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -48(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movl	-48(%rbp), %ecx         # 4-byte Reload
	movl	%r9d, %r8d
	movl	-44(%rbp), %r9d         # 4-byte Reload
	movl	$8, (%rsp)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -60(%rbp)        # 4-byte Spill
	movl	%r11d, -64(%rbp)        # 4-byte Spill
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
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_smudge_default, .Lfunc_end16-gimp_smudge_default
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-airbrush"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-airbrush-default"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-clone"
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-clone-default"
	.size	.L.str.3, 19

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-convolve"
	.size	.L.str.4, 14

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-convolve-default"
	.size	.L.str.5, 22

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-dodgeburn"
	.size	.L.str.6, 15

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-dodgeburn-default"
	.size	.L.str.7, 23

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-eraser"
	.size	.L.str.8, 12

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-eraser-default"
	.size	.L.str.9, 20

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-heal"
	.size	.L.str.10, 10

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp-heal-default"
	.size	.L.str.11, 18

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp-paintbrush"
	.size	.L.str.12, 16

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp-paintbrush-default"
	.size	.L.str.13, 24

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp-pencil"
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimp-smudge"
	.size	.L.str.15, 12

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimp-smudge-default"
	.size	.L.str.16, 20


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
