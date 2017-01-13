	.text
	.file	"gimppattern_pdb.bc"
	.globl	gimp_pattern_get_info
	.align	16, 0x90
	.type	gimp_pattern_get_info,@function
gimp_pattern_get_info:                  # @gimp_pattern_get_info
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
	leaq	-44(%rbp), %r8
	movl	$4, %r9d
	movl	$22, %r10d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	$1, -48(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movq	%r8, %rsi
	movl	%r9d, %edx
	movl	%r10d, %r8d
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	movq	-40(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %edx
	movl	%edx, -48(%rbp)
	cmpl	$0, -48(%rbp)
	je	.LBB0_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-40(%rbp), %rax
	movl	88(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-40(%rbp), %rax
	movl	128(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_2:                                # %if.end
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-48(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_pattern_get_info, .Lfunc_end0-gimp_pattern_get_info
	.cfi_endproc

	.globl	gimp_pattern_get_pixels
	.align	16, 0x90
	.type	gimp_pattern_get_pixels,@function
gimp_pattern_get_pixels:                # @gimp_pattern_get_pixels
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
	pushq	%r14
	pushq	%rbx
	subq	$64, %rsp
.Ltmp6:
	.cfi_offset %rbx, -32
.Ltmp7:
	.cfi_offset %r14, -24
	leaq	.L.str.1(%rip), %rax
	leaq	-76(%rbp), %r10
	movl	$4, %r11d
	movl	$22, %ebx
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movl	$1, -80(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rax, %rdi
	movq	%r10, %rsi
	movl	%r11d, %edx
	movl	%ebx, %r8d
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	movq	-48(%rbp), %rax
	movl	$0, (%rax)
	movq	-56(%rbp), %rax
	movl	$0, (%rax)
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
	movq	-72(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %edx
	movl	%edx, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB1_2
# BB#1:                                 # %if.then
	movl	$1, %eax
	movl	%eax, %esi
	movq	-72(%rbp), %rcx
	movl	48(%rcx), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-72(%rbp), %rcx
	movl	88(%rcx), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-72(%rbp), %rcx
	movl	128(%rcx), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-72(%rbp), %rcx
	movl	168(%rcx), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-56(%rbp), %rcx
	movslq	(%rcx), %rdi
	callq	g_malloc_n@PLT
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rax
	movq	(%rax), %rdi
	movq	-72(%rbp), %rax
	movq	208(%rax), %rsi
	movq	-56(%rbp), %rax
	movslq	(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rdx
	callq	memcpy@PLT
.LBB1_2:                                # %if.end
	movq	-72(%rbp), %rdi
	movl	-76(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-80(%rbp), %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_pattern_get_pixels, .Lfunc_end1-gimp_pattern_get_pixels
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-pattern-get-info"
	.size	.L.str, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-pattern-get-pixels"
	.size	.L.str.1, 24


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
