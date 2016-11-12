	.text
	.file	"isdir.bc"
	.globl	isdir
	.align	16, 0x90
	.type	isdir,@function
isdir:                                  # @isdir
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
	subq	$160, %rsp
	leaq	-152(%rbp), %rsi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	stat
	xorl	%ecx, %ecx
	movb	%cl, %dl
	cmpl	$0, %eax
	movb	%dl, -153(%rbp)         # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movl	-128(%rbp), %eax
	andl	$61440, %eax            # imm = 0xF000
	cmpl	$16384, %eax            # imm = 0x4000
	sete	%cl
	movb	%cl, -153(%rbp)         # 1-byte Spill
.LBB0_2:                                # %land.end
	movb	-153(%rbp), %al         # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	isdir, .Lfunc_end0-isdir
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
