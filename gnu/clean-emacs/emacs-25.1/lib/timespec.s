	.text
	.file	"timespec.bc"
	.globl	make_timespec
	.align	16, 0x90
	.type	make_timespec,@function
make_timespec:                          # @make_timespec
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
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -48(%rbp)
	movq	-32(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movups	-48(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	make_timespec, .Lfunc_end0-make_timespec
	.cfi_endproc

	.globl	timespec_cmp
	.align	16, 0x90
	.type	timespec_cmp,@function
timespec_cmp:                           # @timespec_cmp
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-16(%rbp), %rcx
	cmpq	-32(%rbp), %rcx
	jge	.LBB1_2
# BB#1:                                 # %cond.true
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB1_6
.LBB1_2:                                # %cond.false
	movq	-16(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jle	.LBB1_4
# BB#3:                                 # %cond.true.5
	movl	$1, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB1_5
.LBB1_4:                                # %cond.false.6
	movq	-8(%rbp), %rax
	subq	-24(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, -40(%rbp)         # 4-byte Spill
.LBB1_5:                                # %cond.end
	movl	-40(%rbp), %eax         # 4-byte Reload
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB1_6:                                # %cond.end.8
	movl	-36(%rbp), %eax         # 4-byte Reload
	popq	%rbp
	retq
.Lfunc_end1:
	.size	timespec_cmp, .Lfunc_end1-timespec_cmp
	.cfi_endproc

	.globl	timespec_sign
	.align	16, 0x90
	.type	timespec_sign,@function
timespec_sign:                          # @timespec_sign
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	cmpq	$0, -16(%rbp)
	jge	.LBB2_2
# BB#1:                                 # %cond.true
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -20(%rbp)         # 4-byte Spill
	jmp	.LBB2_5
.LBB2_2:                                # %cond.false
	movb	$1, %al
	cmpq	$0, -16(%rbp)
	movb	%al, -21(%rbp)          # 1-byte Spill
	jne	.LBB2_4
# BB#3:                                 # %lor.rhs
	cmpq	$0, -8(%rbp)
	setne	%al
	movb	%al, -21(%rbp)          # 1-byte Spill
.LBB2_4:                                # %lor.end
	movb	-21(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -20(%rbp)         # 4-byte Spill
.LBB2_5:                                # %cond.end
	movl	-20(%rbp), %eax         # 4-byte Reload
	popq	%rbp
	retq
.Lfunc_end2:
	.size	timespec_sign, .Lfunc_end2-timespec_sign
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4741671816366391296     # double 1.0E+9
	.text
	.globl	timespectod
	.align	16, 0x90
	.type	timespectod,@function
timespectod:                            # @timespectod
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
	movsd	.LCPI3_0, %xmm0         # xmm0 = mem[0],zero
	movq	%rdi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	cvtsi2sdq	-16(%rbp), %xmm1
	cvtsi2sdq	-8(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movaps	%xmm1, %xmm0
	popq	%rbp
	retq
.Lfunc_end3:
	.size	timespectod, .Lfunc_end3-timespectod
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
