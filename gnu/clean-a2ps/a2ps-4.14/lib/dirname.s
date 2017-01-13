	.text
	.file	"dirname.bc"
	.globl	dir_name
	.align	16, 0x90
	.type	dir_name,@function
dir_name:                               # @dir_name
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
	movl	$47, %esi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	strrchr
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movabsq	$.L.str, %rax
	movq	%rax, -16(%rbp)
	movl	$1, -36(%rbp)
	jmp	.LBB0_8
.LBB0_2:                                # %if.else
	jmp	.LBB0_3
.LBB0_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	cmpq	-16(%rbp), %rdx
	movb	%cl, -37(%rbp)          # 1-byte Spill
	jbe	.LBB0_5
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$47, %ecx
	sete	%dl
	movb	%dl, -37(%rbp)          # 1-byte Spill
.LBB0_5:                                # %land.end
                                        #   in Loop: Header=BB0_3 Depth=1
	movb	-37(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_6
	jmp	.LBB0_7
.LBB0_6:                                # %while.body
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-32(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_3
.LBB0_7:                                # %while.end
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	%rcx, %rax
	addq	$1, %rax
	movl	%eax, %edx
	movl	%edx, -36(%rbp)
.LBB0_8:                                # %if.end
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	callq	malloc
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_10
# BB#9:                                 # %if.then.10
	movq	$0, -8(%rbp)
	jmp	.LBB0_11
.LBB0_10:                               # %if.end.11
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movslq	-36(%rbp), %rdx
	callq	strncpy
	movslq	-36(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movb	$0, (%rsi,%rdx)
	movq	-24(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB0_11:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	dir_name, .Lfunc_end0-dir_name
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"."
	.size	.L.str, 2


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
