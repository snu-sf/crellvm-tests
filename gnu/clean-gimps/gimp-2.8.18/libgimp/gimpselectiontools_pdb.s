	.text
	.file	"gimpselectiontools_pdb.bc"
	.globl	gimp_by_color_select
	.align	16, 0x90
	.type	gimp_by_color_select,@function
gimp_by_color_select:                   # @gimp_by_color_select
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
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$200, %rsp
.Ltmp3:
	.cfi_offset %rbx, -56
.Ltmp4:
	.cfi_offset %r12, -48
.Ltmp5:
	.cfi_offset %r13, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
	movl	16(%rbp), %eax
	leaq	.L.str(%rip), %r10
	leaq	-100(%rbp), %r11
	movl	$16, %ebx
	movl	$10, %r14d
	xorl	%r15d, %r15d
	movl	$3, %r12d
	movl	$22, %r13d
	movl	%edi, -44(%rbp)
	movq	%rsi, -56(%rbp)
	movl	%edx, -60(%rbp)
	movl	%ecx, -64(%rbp)
	movl	%r8d, -68(%rbp)
	movl	%r9d, -72(%rbp)
	movsd	%xmm0, -80(%rbp)
	movl	%eax, -84(%rbp)
	movl	$1, -104(%rbp)
	movl	-44(%rbp), %ecx
	movq	-56(%rbp), %r9
	movl	-60(%rbp), %eax
	movl	-64(%rbp), %edx
	movl	-68(%rbp), %edi
	movl	-72(%rbp), %r8d
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-84(%rbp), %esi
	movl	%edi, -108(%rbp)        # 4-byte Spill
	movq	%r10, %rdi
	movl	%esi, -112(%rbp)        # 4-byte Spill
	movq	%r11, %rsi
	movl	%edx, -116(%rbp)        # 4-byte Spill
	movl	%ebx, %edx
	movl	%r8d, -120(%rbp)        # 4-byte Spill
	movl	%r14d, %r8d
	movl	$0, (%rsp)
	movl	%eax, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	%eax, 24(%rsp)
	movl	$0, 32(%rsp)
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, 40(%rsp)
	movl	$0, 48(%rsp)
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	%eax, 56(%rsp)
	movl	$3, 64(%rsp)
	movl	$0, 72(%rsp)
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, 80(%rsp)
	movl	$22, 88(%rsp)
	movb	$1, %al
	movl	%r13d, -124(%rbp)       # 4-byte Spill
	movl	%r15d, -128(%rbp)       # 4-byte Spill
	movl	%r12d, -132(%rbp)       # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -104(%rbp)
	movq	-96(%rbp), %rdi
	movl	-100(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-104(%rbp), %eax
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_by_color_select, .Lfunc_end0-gimp_by_color_select
	.cfi_endproc

	.globl	gimp_by_color_select_full
	.align	16, 0x90
	.type	gimp_by_color_select_full,@function
gimp_by_color_select_full:              # @gimp_by_color_select_full
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp10:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$248, %rsp
.Ltmp11:
	.cfi_offset %rbx, -56
.Ltmp12:
	.cfi_offset %r12, -48
.Ltmp13:
	.cfi_offset %r13, -40
.Ltmp14:
	.cfi_offset %r14, -32
.Ltmp15:
	.cfi_offset %r15, -24
	movl	32(%rbp), %eax
	movl	24(%rbp), %r10d
	movl	16(%rbp), %r11d
	leaq	.L.str.1(%rip), %rbx
	leaq	-116(%rbp), %r14
	movl	$16, %r15d
	movl	$10, %r12d
	xorl	%r13d, %r13d
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movl	$3, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	movl	$22, %eax
	movl	%edi, -44(%rbp)
	movq	%rsi, -56(%rbp)
	movl	%edx, -60(%rbp)
	movl	%ecx, -64(%rbp)
	movl	%r8d, -68(%rbp)
	movl	%r9d, -72(%rbp)
	movsd	%xmm0, -80(%rbp)
	movsd	%xmm1, -88(%rbp)
	movl	%r11d, -92(%rbp)
	movl	%r10d, -96(%rbp)
	movl	-124(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, -100(%rbp)
	movl	$1, -120(%rbp)
	movl	-44(%rbp), %ecx
	movq	-56(%rbp), %r9
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %edi
	movl	-68(%rbp), %r8d
	movl	-72(%rbp), %r10d
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-88(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-92(%rbp), %r11d
	movl	-96(%rbp), %esi
	movl	%eax, -132(%rbp)        # 4-byte Spill
	movl	-100(%rbp), %eax
	movl	%edi, -136(%rbp)        # 4-byte Spill
	movq	%rbx, %rdi
	movl	%esi, -140(%rbp)        # 4-byte Spill
	movq	%r14, %rsi
	movl	%edx, -144(%rbp)        # 4-byte Spill
	movl	%r15d, %edx
	movl	%r8d, -148(%rbp)        # 4-byte Spill
	movl	%r12d, %r8d
	movl	$0, (%rsp)
	movl	-144(%rbp), %r15d       # 4-byte Reload
	movl	%r15d, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	-136(%rbp), %r15d       # 4-byte Reload
	movl	%r15d, 24(%rsp)
	movl	$0, 32(%rsp)
	movl	-148(%rbp), %r15d       # 4-byte Reload
	movl	%r15d, 40(%rsp)
	movl	$0, 48(%rsp)
	movl	%r10d, 56(%rsp)
	movl	$3, 64(%rsp)
	movl	$3, 72(%rsp)
	movl	$0, 80(%rsp)
	movl	%r11d, 88(%rsp)
	movl	$0, 96(%rsp)
	movl	-140(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, 104(%rsp)
	movl	$0, 112(%rsp)
	movl	%eax, 120(%rsp)
	movl	$22, 128(%rsp)
	movb	$2, %al
	movl	%r13d, -152(%rbp)       # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -120(%rbp)
	movq	-112(%rbp), %rdi
	movl	-116(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-120(%rbp), %eax
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_by_color_select_full, .Lfunc_end1-gimp_by_color_select_full
	.cfi_endproc

	.globl	gimp_ellipse_select
	.align	16, 0x90
	.type	gimp_ellipse_select,@function
gimp_ellipse_select:                    # @gimp_ellipse_select
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
	pushq	%r14
	pushq	%rbx
	subq	$192, %rsp
.Ltmp19:
	.cfi_offset %rbx, -32
.Ltmp20:
	.cfi_offset %r14, -24
	leaq	.L.str.2(%rip), %rax
	leaq	-92(%rbp), %r8
	movl	$13, %r9d
	movl	$3, %r10d
	xorl	%r11d, %r11d
	movl	$22, %ebx
	movl	%edi, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movsd	%xmm2, -48(%rbp)
	movsd	%xmm3, -56(%rbp)
	movl	%esi, -60(%rbp)
	movl	%edx, -64(%rbp)
	movl	%ecx, -68(%rbp)
	movsd	%xmm4, -80(%rbp)
	movl	$1, -96(%rbp)
	movl	-20(%rbp), %ecx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-56(%rbp), %xmm3        # xmm3 = mem[0],zero
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %esi
	movl	-68(%rbp), %edi
	movsd	-80(%rbp), %xmm4        # xmm4 = mem[0],zero
	movl	%edi, -100(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -104(%rbp)        # 4-byte Spill
	movq	%r8, %rsi
	movl	%edx, -108(%rbp)        # 4-byte Spill
	movl	%r9d, %edx
	movl	%r10d, %r8d
	movl	%r10d, %r9d
	movl	$3, (%rsp)
	movl	$3, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	-108(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, 24(%rsp)
	movl	$0, 32(%rsp)
	movl	-104(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, 40(%rsp)
	movl	$0, 48(%rsp)
	movl	-100(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, 56(%rsp)
	movl	$3, 64(%rsp)
	movl	$22, 72(%rsp)
	movb	$5, %al
	movl	%ebx, -112(%rbp)        # 4-byte Spill
	movl	%r11d, -116(%rbp)       # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %ecx
	movl	%ecx, -96(%rbp)
	movq	-88(%rbp), %rdi
	movl	-92(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-96(%rbp), %eax
	addq	$192, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_ellipse_select, .Lfunc_end2-gimp_ellipse_select
	.cfi_endproc

	.globl	gimp_free_select
	.align	16, 0x90
	.type	gimp_free_select,@function
gimp_free_select:                       # @gimp_free_select
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$168, %rsp
.Ltmp24:
	.cfi_offset %rbx, -56
.Ltmp25:
	.cfi_offset %r12, -48
.Ltmp26:
	.cfi_offset %r13, -40
.Ltmp27:
	.cfi_offset %r14, -32
.Ltmp28:
	.cfi_offset %r15, -24
	leaq	.L.str.3(%rip), %rax
	leaq	-92(%rbp), %r10
	movl	$13, %r11d
	xorl	%ebx, %ebx
	movl	$8, %r14d
	movl	$3, %r15d
	movl	$22, %r12d
	movl	%edi, -44(%rbp)
	movl	%esi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movl	%r8d, -64(%rbp)
	movl	%r9d, -68(%rbp)
	movsd	%xmm0, -80(%rbp)
	movl	$1, -96(%rbp)
	movl	-44(%rbp), %ecx
	movl	-48(%rbp), %r9d
	movq	-56(%rbp), %rdx
	movl	-60(%rbp), %esi
	movl	-64(%rbp), %edi
	movl	-68(%rbp), %r8d
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	%edi, -100(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -104(%rbp)        # 4-byte Spill
	movq	%r10, %rsi
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movl	%r11d, %edx
	movl	%r8d, -116(%rbp)        # 4-byte Spill
	movl	%ebx, %r8d
	movl	$8, (%rsp)
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	-104(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 24(%rsp)
	movl	$0, 32(%rsp)
	movl	-100(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 40(%rsp)
	movl	$0, 48(%rsp)
	movl	-116(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 56(%rsp)
	movl	$3, 64(%rsp)
	movl	$22, 72(%rsp)
	movb	$1, %al
	movl	%r12d, -120(%rbp)       # 4-byte Spill
	movl	%r15d, -124(%rbp)       # 4-byte Spill
	movl	%r14d, -128(%rbp)       # 4-byte Spill
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
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_free_select, .Lfunc_end3-gimp_free_select
	.cfi_endproc

	.globl	gimp_fuzzy_select
	.align	16, 0x90
	.type	gimp_fuzzy_select,@function
gimp_fuzzy_select:                      # @gimp_fuzzy_select
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
	pushq	%r12
	pushq	%rbx
	subq	$208, %rsp
.Ltmp32:
	.cfi_offset %rbx, -48
.Ltmp33:
	.cfi_offset %r12, -40
.Ltmp34:
	.cfi_offset %r14, -32
.Ltmp35:
	.cfi_offset %r15, -24
	leaq	.L.str.4(%rip), %rax
	leaq	-100(%rbp), %r10
	movl	$16, %r11d
	movl	$3, %ebx
	xorl	%r14d, %r14d
	movl	$22, %r15d
	movl	%edi, -36(%rbp)
	movsd	%xmm0, -48(%rbp)
	movsd	%xmm1, -56(%rbp)
	movl	%esi, -60(%rbp)
	movl	%edx, -64(%rbp)
	movl	%ecx, -68(%rbp)
	movl	%r8d, -72(%rbp)
	movsd	%xmm2, -80(%rbp)
	movl	%r9d, -84(%rbp)
	movl	$1, -104(%rbp)
	movl	-36(%rbp), %ecx
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %esi
	movl	-68(%rbp), %edi
	movl	-72(%rbp), %r8d
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
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
	movl	$0, (%rsp)
	movl	-116(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	-112(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 24(%rsp)
	movl	$0, 32(%rsp)
	movl	-108(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 40(%rsp)
	movl	$0, 48(%rsp)
	movl	-120(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 56(%rsp)
	movl	$3, 64(%rsp)
	movl	$0, 72(%rsp)
	movl	-124(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 80(%rsp)
	movl	$22, 88(%rsp)
	movb	$3, %al
	movl	%r15d, -128(%rbp)       # 4-byte Spill
	movl	%r14d, -132(%rbp)       # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r12b
	andb	$1, %r12b
	movzbl	%r12b, %ecx
	movl	%ecx, -104(%rbp)
	movq	-96(%rbp), %rdi
	movl	-100(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-104(%rbp), %eax
	addq	$208, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_fuzzy_select, .Lfunc_end4-gimp_fuzzy_select
	.cfi_endproc

	.globl	gimp_fuzzy_select_full
	.align	16, 0x90
	.type	gimp_fuzzy_select_full,@function
gimp_fuzzy_select_full:                 # @gimp_fuzzy_select_full
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
.Ltmp39:
	.cfi_offset %rbx, -56
.Ltmp40:
	.cfi_offset %r12, -48
.Ltmp41:
	.cfi_offset %r13, -40
.Ltmp42:
	.cfi_offset %r14, -32
.Ltmp43:
	.cfi_offset %r15, -24
	movl	24(%rbp), %eax
	movl	16(%rbp), %r10d
	leaq	.L.str.5(%rip), %r11
	leaq	-124(%rbp), %rbx
	movl	$16, %r14d
	movl	$3, %r15d
	xorl	%r12d, %r12d
	movl	$22, %r13d
	movl	%edi, -44(%rbp)
	movsd	%xmm0, -56(%rbp)
	movsd	%xmm1, -64(%rbp)
	movl	%esi, -68(%rbp)
	movl	%edx, -72(%rbp)
	movl	%ecx, -76(%rbp)
	movl	%r8d, -80(%rbp)
	movsd	%xmm2, -88(%rbp)
	movsd	%xmm3, -96(%rbp)
	movl	%r9d, -100(%rbp)
	movl	%r10d, -104(%rbp)
	movl	%eax, -108(%rbp)
	movl	$1, -128(%rbp)
	movl	-44(%rbp), %ecx
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-68(%rbp), %eax
	movl	-72(%rbp), %edx
	movl	-76(%rbp), %esi
	movl	-80(%rbp), %edi
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-96(%rbp), %xmm3        # xmm3 = mem[0],zero
	movl	-100(%rbp), %r8d
	movl	-104(%rbp), %r9d
	movl	-108(%rbp), %r10d
	movl	%edi, -132(%rbp)        # 4-byte Spill
	movq	%r11, %rdi
	movl	%esi, -136(%rbp)        # 4-byte Spill
	movq	%rbx, %rsi
	movl	%edx, -140(%rbp)        # 4-byte Spill
	movl	%r14d, %edx
	movl	%r8d, -144(%rbp)        # 4-byte Spill
	movl	%r15d, %r8d
	movl	%r9d, -148(%rbp)        # 4-byte Spill
	movl	%r15d, %r9d
	movl	$0, (%rsp)
	movl	%eax, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	-140(%rbp), %eax        # 4-byte Reload
	movl	%eax, 24(%rsp)
	movl	$0, 32(%rsp)
	movl	-136(%rbp), %eax        # 4-byte Reload
	movl	%eax, 40(%rsp)
	movl	$0, 48(%rsp)
	movl	-132(%rbp), %eax        # 4-byte Reload
	movl	%eax, 56(%rsp)
	movl	$3, 64(%rsp)
	movl	$3, 72(%rsp)
	movl	$0, 80(%rsp)
	movl	-144(%rbp), %eax        # 4-byte Reload
	movl	%eax, 88(%rsp)
	movl	$0, 96(%rsp)
	movl	-148(%rbp), %eax        # 4-byte Reload
	movl	%eax, 104(%rsp)
	movl	$0, 112(%rsp)
	movl	%r10d, 120(%rsp)
	movl	$22, 128(%rsp)
	movb	$4, %al
	movl	%r13d, -152(%rbp)       # 4-byte Spill
	movl	%r12d, -156(%rbp)       # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -128(%rbp)
	movq	-120(%rbp), %rdi
	movl	-124(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-128(%rbp), %eax
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_fuzzy_select_full, .Lfunc_end5-gimp_fuzzy_select_full
	.cfi_endproc

	.globl	gimp_rect_select
	.align	16, 0x90
	.type	gimp_rect_select,@function
gimp_rect_select:                       # @gimp_rect_select
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
	subq	$160, %rsp
.Ltmp47:
	.cfi_offset %rbx, -32
.Ltmp48:
	.cfi_offset %r14, -24
	leaq	.L.str.6(%rip), %rax
	leaq	-84(%rbp), %rcx
	movl	$13, %r8d
	movl	$3, %r9d
	xorl	%r10d, %r10d
	movl	$22, %r11d
	movl	%edi, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movsd	%xmm2, -48(%rbp)
	movsd	%xmm3, -56(%rbp)
	movl	%esi, -60(%rbp)
	movl	%edx, -64(%rbp)
	movsd	%xmm4, -72(%rbp)
	movl	$1, -88(%rbp)
	movl	-20(%rbp), %edx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-56(%rbp), %xmm3        # xmm3 = mem[0],zero
	movl	-60(%rbp), %esi
	movl	-64(%rbp), %edi
	movsd	-72(%rbp), %xmm4        # xmm4 = mem[0],zero
	movl	%edi, -92(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -96(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	%edx, -100(%rbp)        # 4-byte Spill
	movl	%r8d, %edx
	movl	-100(%rbp), %ecx        # 4-byte Reload
	movl	%r9d, %r8d
	movl	$3, (%rsp)
	movl	$3, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	-96(%rbp), %ebx         # 4-byte Reload
	movl	%ebx, 24(%rsp)
	movl	$0, 32(%rsp)
	movl	-92(%rbp), %ebx         # 4-byte Reload
	movl	%ebx, 40(%rsp)
	movl	$3, 48(%rsp)
	movl	$22, 56(%rsp)
	movb	$5, %al
	movl	%r11d, -104(%rbp)       # 4-byte Spill
	movl	%r10d, -108(%rbp)       # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %ecx
	movl	%ecx, -88(%rbp)
	movq	-80(%rbp), %rdi
	movl	-84(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-88(%rbp), %eax
	addq	$160, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_rect_select, .Lfunc_end6-gimp_rect_select
	.cfi_endproc

	.globl	gimp_round_rect_select
	.align	16, 0x90
	.type	gimp_round_rect_select,@function
gimp_round_rect_select:                 # @gimp_round_rect_select
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
	pushq	%r14
	pushq	%rbx
	subq	$240, %rsp
.Ltmp52:
	.cfi_offset %rbx, -32
.Ltmp53:
	.cfi_offset %r14, -24
	leaq	.L.str.7(%rip), %rax
	leaq	-116(%rbp), %r8
	movl	$13, %r9d
	movl	$3, %r10d
	xorl	%r11d, %r11d
	movl	$22, %ebx
	movl	%edi, -20(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movsd	%xmm2, -48(%rbp)
	movsd	%xmm3, -56(%rbp)
	movsd	%xmm4, -64(%rbp)
	movsd	%xmm5, -72(%rbp)
	movl	%esi, -76(%rbp)
	movl	%edx, -80(%rbp)
	movl	%ecx, -84(%rbp)
	movsd	%xmm6, -96(%rbp)
	movsd	%xmm7, -104(%rbp)
	movl	$1, -120(%rbp)
	movl	-20(%rbp), %ecx
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-56(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-64(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-72(%rbp), %xmm5        # xmm5 = mem[0],zero
	movl	-76(%rbp), %edx
	movl	-80(%rbp), %esi
	movl	-84(%rbp), %edi
	movsd	-96(%rbp), %xmm6        # xmm6 = mem[0],zero
	movsd	-104(%rbp), %xmm7       # xmm7 = mem[0],zero
	movl	%edi, -124(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -128(%rbp)        # 4-byte Spill
	movq	%r8, %rsi
	movl	%edx, -132(%rbp)        # 4-byte Spill
	movl	%r9d, %edx
	movl	%r10d, %r8d
	movl	%r10d, %r9d
	movl	$3, (%rsp)
	movl	$3, 8(%rsp)
	movl	$3, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$0, 32(%rsp)
	movl	-132(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, 40(%rsp)
	movl	$0, 48(%rsp)
	movl	-128(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, 56(%rsp)
	movl	$0, 64(%rsp)
	movl	-124(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, 72(%rsp)
	movl	$3, 80(%rsp)
	movl	$3, 88(%rsp)
	movl	$22, 96(%rsp)
	movb	$8, %al
	movl	%ebx, -136(%rbp)        # 4-byte Spill
	movl	%r11d, -140(%rbp)       # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %ecx
	movl	%ecx, -120(%rbp)
	movq	-112(%rbp), %rdi
	movl	-116(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-120(%rbp), %eax
	addq	$240, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_round_rect_select, .Lfunc_end7-gimp_round_rect_select
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-by-color-select"
	.size	.L.str, 21

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-by-color-select-full"
	.size	.L.str.1, 26

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-ellipse-select"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-free-select"
	.size	.L.str.3, 17

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-fuzzy-select"
	.size	.L.str.4, 18

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-fuzzy-select-full"
	.size	.L.str.5, 23

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-rect-select"
	.size	.L.str.6, 17

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-round-rect-select"
	.size	.L.str.7, 23


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
