	.text
	.file	"dtoastr.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4503599627370496        # double 2.2250738585072014E-308
	.text
	.globl	dtoastr
	.align	16, 0x90
	.type	dtoastr,@function
dtoastr:                                # @dtoastr
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
	subq	$96, %rsp
	xorps	%xmm1, %xmm1
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	ucomisd	-32(%rbp), %xmm1
	jbe	.LBB0_2
# BB#1:                                 # %cond.true
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
	jmp	.LBB0_3
.LBB0_2:                                # %cond.false
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)        # 8-byte Spill
.LBB0_3:                                # %cond.end
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	.LCPI0_0, %xmm1         # xmm1 = mem[0],zero
	movl	$15, %eax
	movl	$1, %ecx
	movl	$103, %edx
	movl	$71, %esi
	leaq	-43(%rbp), %rdi
	movsd	%xmm0, -56(%rbp)
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rdi
	movq	%rdi, %r8
	addq	$1, %r8
	movq	%r8, -72(%rbp)
	movb	$37, (%rdi)
	movq	-72(%rbp), %rdi
	movb	$45, (%rdi)
	movl	-20(%rbp), %r9d
	andl	$1, %r9d
	cmpl	$0, %r9d
	setne	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %r9d
	movq	-72(%rbp), %rdi
	movslq	%r9d, %r8
	addq	%r8, %rdi
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rdi
	movb	$43, (%rdi)
	movl	-20(%rbp), %r9d
	andl	$2, %r9d
	cmpl	$0, %r9d
	setne	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %r9d
	movq	-72(%rbp), %rdi
	movslq	%r9d, %r8
	addq	%r8, %rdi
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rdi
	movb	$32, (%rdi)
	movl	-20(%rbp), %r9d
	andl	$4, %r9d
	cmpl	$0, %r9d
	setne	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %r9d
	movq	-72(%rbp), %rdi
	movslq	%r9d, %r8
	addq	%r8, %rdi
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rdi
	movb	$48, (%rdi)
	movl	-20(%rbp), %r9d
	andl	$8, %r9d
	cmpl	$0, %r9d
	setne	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %r9d
	movq	-72(%rbp), %rdi
	movslq	%r9d, %r8
	addq	%r8, %rdi
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rdi
	movq	%rdi, %r8
	addq	$1, %r8
	movq	%r8, -72(%rbp)
	movb	$42, (%rdi)
	movq	-72(%rbp), %rdi
	movq	%rdi, %r8
	addq	$1, %r8
	movq	%r8, -72(%rbp)
	movb	$46, (%rdi)
	movq	-72(%rbp), %rdi
	movq	%rdi, %r8
	addq	$1, %r8
	movq	%r8, -72(%rbp)
	movb	$42, (%rdi)
	movq	-72(%rbp), %rdi
	movb	$76, (%rdi)
	movq	-72(%rbp), %rdi
	movq	%rdi, -72(%rbp)
	movl	-20(%rbp), %r9d
	andl	$16, %r9d
	cmpl	$0, %r9d
	cmovnel	%esi, %edx
	movb	%dl, %r10b
	movq	-72(%rbp), %rdi
	movq	%rdi, %r8
	addq	$1, %r8
	movq	%r8, -72(%rbp)
	movb	%r10b, (%rdi)
	movq	-72(%rbp), %rdi
	movb	$0, (%rdi)
	ucomisd	-56(%rbp), %xmm1
	cmoval	%ecx, %eax
	movl	%eax, -60(%rbp)
.LBB0_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	leaq	-43(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-24(%rbp), %ecx
	movl	-60(%rbp), %r8d
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	ftoastr_snprintf
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	jl	.LBB0_8
# BB#5:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	$17, %eax
	cmpl	-60(%rbp), %eax
	jle	.LBB0_8
# BB#6:                                 # %lor.lhs.false.33
                                        #   in Loop: Header=BB0_4 Depth=1
	movslq	-76(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jae	.LBB0_9
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB0_4 Depth=1
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	strtod
	ucomisd	-32(%rbp), %xmm0
	jne	.LBB0_9
	jp	.LBB0_9
.LBB0_8:                                # %if.then
	movl	-76(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.LBB0_9:                                # %if.end
                                        #   in Loop: Header=BB0_4 Depth=1
	jmp	.LBB0_10
.LBB0_10:                               # %for.inc
                                        #   in Loop: Header=BB0_4 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB0_4
.Lfunc_end0:
	.size	dtoastr, .Lfunc_end0-dtoastr
	.cfi_endproc

	.align	16, 0x90
	.type	ftoastr_snprintf,@function
ftoastr_snprintf:                       # @ftoastr_snprintf
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movsd	%xmm0, -48(%rbp)
	movl	-36(%rbp), %ecx
	movl	%ecx, -100(%rbp)
	cmpq	$40, -24(%rbp)
	jae	.LBB1_6
# BB#1:                                 # %if.then
	xorl	%edx, %edx
	leaq	-96(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-40(%rbp), %ecx
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movb	$1, %al
	callq	sprintf
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	jge	.LBB1_3
# BB#2:                                 # %if.then.2
	movl	-100(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB1_9
.LBB1_3:                                # %if.end
	movl	-100(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB1_5
# BB#4:                                 # %if.then.4
	movl	-36(%rbp), %eax
	movl	%eax, -100(%rbp)
.LBB1_5:                                # %if.end.5
	jmp	.LBB1_6
.LBB1_6:                                # %if.end.6
	movslq	-100(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB1_8
# BB#7:                                 # %if.then.9
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-36(%rbp), %edx
	movl	-40(%rbp), %ecx
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movb	$1, %al
	callq	sprintf
	movl	%eax, -100(%rbp)
.LBB1_8:                                # %if.end.11
	movl	-100(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB1_9:                                # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	ftoastr_snprintf, .Lfunc_end1-ftoastr_snprintf
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
