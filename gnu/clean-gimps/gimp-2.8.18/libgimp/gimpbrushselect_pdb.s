	.text
	.file	"gimpbrushselect_pdb.bc"
	.globl	gimp_brushes_popup
	.align	16, 0x90
	.type	gimp_brushes_popup,@function
gimp_brushes_popup:                     # @gimp_brushes_popup
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
	subq	$160, %rsp
.Ltmp3:
	.cfi_offset %rbx, -48
.Ltmp4:
	.cfi_offset %r12, -40
.Ltmp5:
	.cfi_offset %r14, -32
.Ltmp6:
	.cfi_offset %r15, -24
	leaq	.L.str(%rip), %rax
	leaq	-84(%rbp), %r9
	movl	$4, %r10d
	movl	$3, %r11d
	xorl	%ebx, %ebx
	movl	$22, %r14d
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movsd	%xmm0, -64(%rbp)
	movl	%ecx, -68(%rbp)
	movl	%r8d, -72(%rbp)
	movl	$1, -88(%rbp)
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-68(%rbp), %r8d
	movl	-72(%rbp), %r15d
	movq	%rax, %rdi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movq	%r9, %rsi
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movl	%r10d, %edx
	movl	%r8d, -108(%rbp)        # 4-byte Spill
	movl	%r10d, %r8d
	movq	-104(%rbp), %r9         # 8-byte Reload
	movl	$4, (%rsp)
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$3, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	-108(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, 32(%rsp)
	movl	$0, 40(%rsp)
	movl	%r15d, 48(%rsp)
	movl	$22, 56(%rsp)
	movb	$1, %al
	movl	%ebx, -112(%rbp)        # 4-byte Spill
	movl	%r14d, -116(%rbp)       # 4-byte Spill
	movl	%r11d, -120(%rbp)       # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r12b
	andb	$1, %r12b
	movzbl	%r12b, %edx
	movl	%edx, -88(%rbp)
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
.Lfunc_end0:
	.size	gimp_brushes_popup, .Lfunc_end0-gimp_brushes_popup
	.cfi_endproc

	.globl	gimp_brushes_close_popup
	.align	16, 0x90
	.type	gimp_brushes_close_popup,@function
gimp_brushes_close_popup:               # @gimp_brushes_close_popup
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
	subq	$32, %rsp
	leaq	.L.str.1(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$4, %edx
	movl	$22, %r8d
	movq	%rdi, -8(%rbp)
	movl	$1, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %edx
	movl	%edx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_brushes_close_popup, .Lfunc_end1-gimp_brushes_close_popup
	.cfi_endproc

	.globl	gimp_brushes_set_popup
	.align	16, 0x90
	.type	gimp_brushes_set_popup,@function
gimp_brushes_set_popup:                 # @gimp_brushes_set_popup
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$128, %rsp
.Ltmp13:
	.cfi_offset %rbx, -48
.Ltmp14:
	.cfi_offset %r12, -40
.Ltmp15:
	.cfi_offset %r14, -32
.Ltmp16:
	.cfi_offset %r15, -24
	leaq	.L.str.2(%rip), %rax
	leaq	-76(%rbp), %r8
	movl	$4, %r9d
	movl	$3, %r10d
	xorl	%r11d, %r11d
	movl	$22, %ebx
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movsd	%xmm0, -56(%rbp)
	movl	%edx, -60(%rbp)
	movl	%ecx, -64(%rbp)
	movl	$1, -80(%rbp)
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-60(%rbp), %edx
	movl	-64(%rbp), %r14d
	movq	%rax, %rdi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%r8, %rsi
	movl	%edx, -92(%rbp)         # 4-byte Spill
	movl	%r9d, %edx
	movl	%r9d, %r8d
	movq	-88(%rbp), %r9          # 8-byte Reload
	movl	$3, (%rsp)
	movl	$0, 8(%rsp)
	movl	-92(%rbp), %r15d        # 4-byte Reload
	movl	%r15d, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	%r14d, 32(%rsp)
	movl	$22, 40(%rsp)
	movb	$1, %al
	movl	%ebx, -96(%rbp)         # 4-byte Spill
	movl	%r10d, -100(%rbp)       # 4-byte Spill
	movl	%r11d, -104(%rbp)       # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r12b
	andb	$1, %r12b
	movzbl	%r12b, %edx
	movl	%edx, -80(%rbp)
	movq	-72(%rbp), %rdi
	movl	-76(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-80(%rbp), %eax
	addq	$128, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_brushes_set_popup, .Lfunc_end2-gimp_brushes_set_popup
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-brushes-popup"
	.size	.L.str, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-brushes-close-popup"
	.size	.L.str.1, 25

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-brushes-set-popup"
	.size	.L.str.2, 23


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
