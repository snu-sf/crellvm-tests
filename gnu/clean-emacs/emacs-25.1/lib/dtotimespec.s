	.text
	.file	"dtotimespec.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4890909195324358656     # double 9.2233720368547758E+18
.LCPI0_1:
	.quad	-4332462841530417152    # double -9.2233720368547758E+18
.LCPI0_2:
	.quad	4741671816366391296     # double 1.0E+9
	.text
	.globl	dtotimespec
	.align	16, 0x90
	.type	dtotimespec,@function
dtotimespec:                            # @dtotimespec
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
	subq	$64, %rsp
	movsd	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI0_1, %xmm2         # xmm2 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm2, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB0_2
# BB#1:                                 # %if.then
	movabsq	$-9223372036854775808, %rdi # imm = 0x8000000000000000
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	make_timespec
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	jmp	.LBB0_7
.LBB0_2:                                # %if.else
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB0_4
# BB#3:                                 # %if.then.2
	movabsq	$9223372036854775807, %rdi # imm = 0x7FFFFFFFFFFFFFFF
	movl	$999999999, %eax        # imm = 0x3B9AC9FF
	movl	%eax, %esi
	callq	make_timespec
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
	jmp	.LBB0_7
.LBB0_4:                                # %if.else.4
	movl	$1000000000, %eax       # imm = 0x3B9ACA00
	movl	%eax, %ecx
	movsd	.LCPI0_2, %xmm0         # xmm0 = mem[0],zero
	cvttsd2si	-24(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	cvtsi2sdq	-48(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	cvttsd2si	-56(%rbp), %rdx
	movq	%rdx, -64(%rbp)
	cvtsi2sdq	-64(%rbp), %xmm0
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	seta	%sil
	andb	$1, %sil
	movzbl	%sil, %eax
	movslq	%eax, %rdx
	addq	-64(%rbp), %rdx
	movq	%rdx, -64(%rbp)
	movq	-64(%rbp), %rax
	cqto
	idivq	%rcx
	addq	-48(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	cqto
	idivq	%rcx
	movq	%rdx, -64(%rbp)
	cmpq	$0, -64(%rbp)
	jge	.LBB0_6
# BB#5:                                 # %if.then.14
	movq	-48(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	addq	$1000000000, %rax       # imm = 0x3B9ACA00
	movq	%rax, -64(%rbp)
.LBB0_6:                                # %if.end
	movq	-48(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	make_timespec
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
.LBB0_7:                                # %return
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	dtotimespec, .Lfunc_end0-dtotimespec
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
