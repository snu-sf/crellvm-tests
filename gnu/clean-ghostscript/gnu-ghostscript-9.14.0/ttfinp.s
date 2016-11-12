	.text
	.file	"ttfinp.bc"
	.globl	ttfReader__Byte
	.align	16, 0x90
	.type	ttfReader__Byte,@function
ttfReader__Byte:                        # @ttfReader__Byte
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp0:
	.cfi_def_cfa_offset 16
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	callq	*8(%rdi)
	movzbl	7(%rsp), %eax
	popq	%rdx
	retq
.Lfunc_end0:
	.size	ttfReader__Byte, .Lfunc_end0-ttfReader__Byte
	.cfi_endproc

	.globl	ttfReader__SignedByte
	.align	16, 0x90
	.type	ttfReader__SignedByte,@function
ttfReader__SignedByte:                  # @ttfReader__SignedByte
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp1:
	.cfi_def_cfa_offset 16
	leaq	7(%rsp), %rsi
	movl	$1, %edx
	callq	*8(%rdi)
	movsbl	7(%rsp), %eax
	popq	%rdx
	retq
.Lfunc_end1:
	.size	ttfReader__SignedByte, .Lfunc_end1-ttfReader__SignedByte
	.cfi_endproc

	.globl	ttfReader__Short
	.align	16, 0x90
	.type	ttfReader__Short,@function
ttfReader__Short:                       # @ttfReader__Short
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 16
	leaq	6(%rsp), %rsi
	movl	$2, %edx
	callq	*8(%rdi)
	movzbl	6(%rsp), %eax
	shll	$8, %eax
	movzbl	7(%rsp), %ecx
	orl	%eax, %ecx
	movswl	%cx, %eax
	popq	%rdx
	retq
.Lfunc_end2:
	.size	ttfReader__Short, .Lfunc_end2-ttfReader__Short
	.cfi_endproc

	.globl	ttfReader__UShort
	.align	16, 0x90
	.type	ttfReader__UShort,@function
ttfReader__UShort:                      # @ttfReader__UShort
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp3:
	.cfi_def_cfa_offset 16
	leaq	6(%rsp), %rsi
	movl	$2, %edx
	callq	*8(%rdi)
	movzbl	6(%rsp), %eax
	shll	$8, %eax
	movzbl	7(%rsp), %ecx
	orl	%eax, %ecx
	movzwl	%cx, %eax
	popq	%rdx
	retq
.Lfunc_end3:
	.size	ttfReader__UShort, .Lfunc_end3-ttfReader__UShort
	.cfi_endproc

	.globl	ttfReader__UInt
	.align	16, 0x90
	.type	ttfReader__UInt,@function
ttfReader__UInt:                        # @ttfReader__UInt
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 16
	leaq	4(%rsp), %rsi
	movl	$4, %edx
	callq	*8(%rdi)
	movzbl	4(%rsp), %eax
	shll	$24, %eax
	movzbl	5(%rsp), %ecx
	shll	$16, %ecx
	orl	%eax, %ecx
	movzbl	6(%rsp), %edx
	shll	$8, %edx
	orl	%ecx, %edx
	movzbl	7(%rsp), %eax
	orl	%edx, %eax
	popq	%rdx
	retq
.Lfunc_end4:
	.size	ttfReader__UInt, .Lfunc_end4-ttfReader__UInt
	.cfi_endproc

	.globl	ttfReader__Int
	.align	16, 0x90
	.type	ttfReader__Int,@function
ttfReader__Int:                         # @ttfReader__Int
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp5:
	.cfi_def_cfa_offset 16
	leaq	4(%rsp), %rsi
	movl	$4, %edx
	callq	*8(%rdi)
	movzbl	4(%rsp), %eax
	shll	$24, %eax
	movzbl	5(%rsp), %ecx
	shll	$16, %ecx
	orl	%eax, %ecx
	movzbl	6(%rsp), %edx
	shll	$8, %edx
	orl	%ecx, %edx
	movzbl	7(%rsp), %eax
	orl	%edx, %eax
	popq	%rdx
	retq
.Lfunc_end5:
	.size	ttfReader__Int, .Lfunc_end5-ttfReader__Int
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
