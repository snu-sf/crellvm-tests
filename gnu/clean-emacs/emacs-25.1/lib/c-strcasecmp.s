	.text
	.file	"c-strcasecmp.bc"
	.globl	c_strcasecmp
	.align	16, 0x90
	.type	c_strcasecmp,@function
c_strcasecmp:                           # @c_strcasecmp
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movq	-32(%rbp), %rsi
	cmpq	-40(%rbp), %rsi
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB0_8
.LBB0_2:                                # %if.end
	jmp	.LBB0_3
.LBB0_3:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %edi
	callq	c_tolower
	movb	%al, %cl
	movb	%cl, -41(%rbp)
	movq	-40(%rbp), %rdx
	movzbl	(%rdx), %edi
	callq	c_tolower
	movb	%al, %cl
	movb	%cl, -42(%rbp)
	movzbl	-41(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB0_5
# BB#4:                                 # %if.then.8
	jmp	.LBB0_7
.LBB0_5:                                # %if.end.9
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
# BB#6:                                 # %do.cond
                                        #   in Loop: Header=BB0_3 Depth=1
	movzbl	-41(%rbp), %eax
	movzbl	-42(%rbp), %ecx
	cmpl	%ecx, %eax
	je	.LBB0_3
.LBB0_7:                                # %do.end
	movzbl	-41(%rbp), %eax
	movzbl	-42(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -4(%rbp)
.LBB0_8:                                # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	c_strcasecmp, .Lfunc_end0-c_strcasecmp
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
