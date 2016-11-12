	.text
	.file	"basename.bc"
	.globl	base_name
	.align	16, 0x90
	.type	base_name,@function
base_name:                              # @base_name
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movl	$1, -20(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB0_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$47, %ecx
	jne	.LBB0_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_5
.LBB0_4:                                # %if.else
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -20(%rbp)
.LBB0_5:                                # %if.end
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_6
.LBB0_6:                                # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_1
.LBB0_7:                                # %for.end
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB0_11
# BB#8:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$47, %ecx
	jne	.LBB0_11
# BB#9:                                 # %land.lhs.true.9
	cmpl	$0, -20(%rbp)
	je	.LBB0_11
# BB#10:                                # %if.then.11
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
.LBB0_11:                               # %if.end.13
	movq	-16(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	base_name, .Lfunc_end0-base_name
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
