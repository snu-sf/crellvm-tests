	.text
	.file	"gxi16bit.bc"
	.align	16, 0x90
	.type	sample_unpack_16,@function
sample_unpack_16:                       # @sample_unpack_16
	.cfi_startproc
# BB#0:                                 # %entry
	addl	%ecx, %ecx
	movl	%r8d, %r11d
	subl	%ecx, %r11d
	cmpl	$2, %r11d
	jl	.LBB0_6
# BB#1:                                 # %while.body.lr.ph
	movl	%ecx, %eax
	addq	%rax, %rdx
	movslq	8(%rsp), %r9
	addl	$-2, %r8d
	subl	%ecx, %r8d
	movl	%r8d, %r10d
	shrl	%r10d
	btl	$1, %r8d
	jb	.LBB0_2
# BB#3:                                 # %while.body.prol
	movzbl	(%rdx), %eax
	shll	$8, %eax
	movzbl	1(%rdx), %ecx
	orl	%eax, %ecx
	imull	$32760, %ecx, %eax      # imm = 0x7FF8
	addl	$32760, %eax            # imm = 0x7FF8
	shrl	$16, %eax
	movw	%ax, (%rdi)
	leaq	(%rdi,%r9), %rcx
	addq	$2, %rdx
	addl	$-2, %r11d
	jmp	.LBB0_4
.LBB0_2:
	movq	%rdi, %rcx
.LBB0_4:                                # %while.body.lr.ph.split
	testl	%r10d, %r10d
	je	.LBB0_6
	.align	16, 0x90
.LBB0_5:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rdx), %r8d
	shll	$8, %r8d
	movzbl	1(%rdx), %eax
	orl	%r8d, %eax
	imull	$32760, %eax, %eax      # imm = 0x7FF8
	addl	$32760, %eax            # imm = 0x7FF8
	shrl	$16, %eax
	movw	%ax, (%rcx)
	movzbl	2(%rdx), %r8d
	shll	$8, %r8d
	movzbl	3(%rdx), %eax
	orl	%r8d, %eax
	imull	$32760, %eax, %eax      # imm = 0x7FF8
	addl	$32760, %eax            # imm = 0x7FF8
	shrl	$16, %eax
	movw	%ax, (%r9,%rcx)
	addq	%r9, %rcx
	addq	%r9, %rcx
	addl	$-4, %r11d
	addq	$4, %rdx
	cmpl	$1, %r11d
	jg	.LBB0_5
.LBB0_6:                                # %while.end
	movl	$0, (%rsi)
	movq	%rdi, %rax
	retq
.Lfunc_end0:
	.size	sample_unpack_16, .Lfunc_end0-sample_unpack_16
	.cfi_endproc

	.align	16, 0x90
	.type	sample_unpackicc_16,@function
sample_unpackicc_16:                    # @sample_unpackicc_16
	.cfi_startproc
# BB#0:                                 # %entry
	addl	%ecx, %ecx
	movl	%r8d, %r11d
	subl	%ecx, %r11d
	cmpl	$2, %r11d
	jl	.LBB1_6
# BB#1:                                 # %while.body.lr.ph
	movl	%ecx, %eax
	addq	%rax, %rdx
	movslq	8(%rsp), %r9
	addl	$-2, %r8d
	subl	%ecx, %r8d
	movl	%r8d, %r10d
	shrl	%r10d
	btl	$1, %r8d
	jb	.LBB1_2
# BB#3:                                 # %while.body.prol
	movzbl	(%rdx), %eax
	shll	$8, %eax
	movzbl	1(%rdx), %ecx
	orl	%eax, %ecx
	movw	%cx, (%rdi)
	leaq	(%rdi,%r9), %rcx
	addq	$2, %rdx
	addl	$-2, %r11d
	jmp	.LBB1_4
.LBB1_2:
	movq	%rdi, %rcx
.LBB1_4:                                # %while.body.lr.ph.split
	testl	%r10d, %r10d
	je	.LBB1_6
	.align	16, 0x90
.LBB1_5:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rdx), %r8d
	shll	$8, %r8d
	movzbl	1(%rdx), %eax
	orl	%r8d, %eax
	movw	%ax, (%rcx)
	movzbl	2(%rdx), %r8d
	shll	$8, %r8d
	movzbl	3(%rdx), %eax
	orl	%r8d, %eax
	movw	%ax, (%r9,%rcx)
	addq	%r9, %rcx
	addq	%r9, %rcx
	addl	$-4, %r11d
	addq	$4, %rdx
	cmpl	$1, %r11d
	jg	.LBB1_5
.LBB1_6:                                # %while.end
	movl	$0, (%rsi)
	movq	%rdi, %rax
	retq
.Lfunc_end1:
	.size	sample_unpackicc_16, .Lfunc_end1-sample_unpackicc_16
	.cfi_endproc

	.type	sample_unpack_16_proc,@object # @sample_unpack_16_proc
	.section	.rodata,"a",@progbits
	.globl	sample_unpack_16_proc
	.align	8
sample_unpack_16_proc:
	.quad	sample_unpack_16
	.size	sample_unpack_16_proc, 8

	.type	sample_unpackicc_16_proc,@object # @sample_unpackicc_16_proc
	.globl	sample_unpackicc_16_proc
	.align	8
sample_unpackicc_16_proc:
	.quad	sample_unpackicc_16
	.size	sample_unpackicc_16_proc, 8


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
