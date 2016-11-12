	.text
	.file	"gscrypt1.bc"
	.globl	gs_type1_encrypt
	.align	16, 0x90
	.type	gs_type1_encrypt,@function
gs_type1_encrypt:                       # @gs_type1_encrypt
	.cfi_startproc
# BB#0:                                 # %entry
	movw	(%rcx), %ax
	testl	%edx, %edx
	je	.LBB0_6
# BB#1:                                 # %while.body.preheader
	testb	$1, %dl
	jne	.LBB0_3
# BB#2:
	movl	%edx, %r8d
	jmp	.LBB0_4
.LBB0_3:                                # %while.body.prol
	movzwl	%ax, %r9d
	movzbl	(%rsi), %r8d
	movl	%r9d, %eax
	shrl	$8, %eax
	xorl	%r8d, %eax
	movb	%al, (%rdi)
	addl	%r9d, %eax
	imull	$52845, %eax, %eax      # imm = 0xCE6D
	addl	$22719, %eax            # imm = 0x58BF
	incq	%rsi
	incq	%rdi
	leal	-1(%rdx), %r8d
.LBB0_4:                                # %while.body.preheader.split
	cmpl	$1, %edx
	je	.LBB0_6
	.align	16, 0x90
.LBB0_5:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi), %r9d
	movzwl	%ax, %edx
	movl	%edx, %eax
	shrl	$8, %eax
	xorl	%r9d, %eax
	movb	%al, (%rdi)
	addl	%edx, %eax
	imull	$52845, %eax, %eax      # imm = 0xCE6D
	addl	$22719, %eax            # imm = 0x58BF
	movzbl	1(%rsi), %r9d
	movzwl	%ax, %edx
	movl	%edx, %eax
	shrl	$8, %eax
	xorl	%r9d, %eax
	movb	%al, 1(%rdi)
	addl	%edx, %eax
	imull	$52845, %eax, %eax      # imm = 0xCE6D
	addl	$22719, %eax            # imm = 0x58BF
	addq	$2, %rsi
	addq	$2, %rdi
	addl	$-2, %r8d
	jne	.LBB0_5
.LBB0_6:                                # %while.end
	movw	%ax, (%rcx)
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	gs_type1_encrypt, .Lfunc_end0-gs_type1_encrypt
	.cfi_endproc

	.globl	gs_type1_decrypt
	.align	16, 0x90
	.type	gs_type1_decrypt,@function
gs_type1_decrypt:                       # @gs_type1_decrypt
	.cfi_startproc
# BB#0:                                 # %entry
	movw	(%rcx), %ax
	testl	%edx, %edx
	je	.LBB1_6
# BB#1:                                 # %while.body.preheader
	testb	$1, %dl
	jne	.LBB1_3
# BB#2:
	movl	%edx, %r8d
	jmp	.LBB1_4
.LBB1_3:                                # %while.body.prol
	movzwl	%ax, %r8d
	movzbl	(%rsi), %r9d
	incq	%rsi
	movl	%r8d, %eax
	shrl	$8, %eax
	xorl	%r9d, %eax
	movb	%al, (%rdi)
	addl	%r8d, %r9d
	imull	$52845, %r9d, %eax      # imm = 0xCE6D
	addl	$22719, %eax            # imm = 0x58BF
	incq	%rdi
	leal	-1(%rdx), %r8d
.LBB1_4:                                # %while.body.preheader.split
	cmpl	$1, %edx
	je	.LBB1_6
	.align	16, 0x90
.LBB1_5:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rsi), %edx
	movzwl	%ax, %r9d
	movl	%r9d, %eax
	shrl	$8, %eax
	xorl	%edx, %eax
	movb	%al, (%rdi)
	addl	%r9d, %edx
	imull	$52845, %edx, %r9d      # imm = 0xCE6D
	leal	22719(%r9), %edx
	movzbl	1(%rsi), %eax
	shrl	$8, %edx
	xorl	%eax, %edx
	movb	%dl, 1(%rdi)
	leal	22719(%rax,%r9), %eax
	imull	$52845, %eax, %eax      # imm = 0xCE6D
	addl	$22719, %eax            # imm = 0x58BF
	addq	$2, %rsi
	addq	$2, %rdi
	addl	$-2, %r8d
	jne	.LBB1_5
.LBB1_6:                                # %while.end
	movw	%ax, (%rcx)
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	gs_type1_decrypt, .Lfunc_end1-gs_type1_decrypt
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
