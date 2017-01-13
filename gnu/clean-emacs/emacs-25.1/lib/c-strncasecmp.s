	.text
	.file	"c-strncasecmp.bc"
	.globl	c_strncasecmp
	.align	16, 0x90
	.type	c_strncasecmp,@function
c_strncasecmp:                          # @c_strncasecmp
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	movq	-40(%rbp), %rdx
	cmpq	-48(%rbp), %rdx
	je	.LBB0_2
# BB#1:                                 # %lor.lhs.false
	cmpq	$0, -32(%rbp)
	jne	.LBB0_3
.LBB0_2:                                # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB0_10
.LBB0_3:                                # %if.end
	jmp	.LBB0_4
.LBB0_4:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %edi
	callq	c_tolower
	movb	%al, %cl
	movb	%cl, -49(%rbp)
	movq	-48(%rbp), %rdx
	movzbl	(%rdx), %edi
	callq	c_tolower
	movb	%al, %cl
	movb	%cl, -50(%rbp)
	movq	-32(%rbp), %rdx
	addq	$-1, %rdx
	movq	%rdx, -32(%rbp)
	cmpq	$0, %rdx
	je	.LBB0_6
# BB#5:                                 # %lor.lhs.false.8
                                        #   in Loop: Header=BB0_4 Depth=1
	movzbl	-49(%rbp), %eax
	cmpl	$0, %eax
	jne	.LBB0_7
.LBB0_6:                                # %if.then.12
	jmp	.LBB0_9
.LBB0_7:                                # %if.end.13
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
# BB#8:                                 # %do.cond
                                        #   in Loop: Header=BB0_4 Depth=1
	movzbl	-49(%rbp), %eax
	movzbl	-50(%rbp), %ecx
	cmpl	%ecx, %eax
	je	.LBB0_4
.LBB0_9:                                # %do.end
	movzbl	-49(%rbp), %eax
	movzbl	-50(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -4(%rbp)
.LBB0_10:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	c_strncasecmp, .Lfunc_end0-c_strncasecmp
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
