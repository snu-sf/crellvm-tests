	.text
	.file	"viewport.bc"
	.globl	RethinkDisplayViewports
	.align	16, 0x90
	.type	RethinkDisplayViewports,@function
RethinkDisplayViewports:                # @RethinkDisplayViewports
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
	subq	$32, %rsp
	movq	display, %rax
	movq	328(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	cmpq	$0, -16(%rbp)
	je	.LBB0_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB0_3:                                # %for.cond.1
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -24(%rbp)
	je	.LBB0_6
# BB#4:                                 # %for.body.3
                                        #   in Loop: Header=BB0_3 Depth=2
	xorl	%esi, %esi
	movl	$40, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movq	$0, 8(%rcx)
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	memset
	movq	-24(%rbp), %rcx
	movq	%rcx, %rdi
	callq	free
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB0_3 Depth=2
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB0_3
.LBB0_6:                                # %for.end
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	$0, 56(%rax)
# BB#7:                                 # %for.inc.5
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_1
.LBB0_8:                                # %for.end.6
	movq	display, %rax
	movl	$-1, 368(%rax)
	movq	display, %rax
	movl	$-1, 372(%rax)
	movq	display, %rax
	movq	328(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB0_9:                                # %for.cond.8
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB0_20
# BB#10:                                # %for.body.10
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	$40, %eax
	movl	%eax, %edi
	callq	malloc
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	jne	.LBB0_12
# BB#11:                                # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB0_21
.LBB0_12:                               # %if.end
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-16(%rbp), %rax
	movl	216(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 24(%rax)
	movq	-16(%rbp), %rax
	movl	224(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 32(%rax)
	movq	-16(%rbp), %rax
	movl	220(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 28(%rax)
	movq	-16(%rbp), %rax
	movl	228(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-16(%rbp), %rax
	movl	208(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 16(%rax)
	movq	-16(%rbp), %rax
	movl	212(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 20(%rax)
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-16(%rbp), %rax
	movl	216(%rax), %edx
	movq	display, %rax
	cmpl	368(%rax), %edx
	jl	.LBB0_14
# BB#13:                                # %lor.lhs.false
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	display, %rax
	cmpl	$-1, 368(%rax)
	jne	.LBB0_15
.LBB0_14:                               # %if.then.20
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-16(%rbp), %rax
	movl	216(%rax), %ecx
	movq	display, %rax
	movl	%ecx, 368(%rax)
.LBB0_15:                               # %if.end.23
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-16(%rbp), %rax
	movl	220(%rax), %ecx
	movq	display, %rax
	cmpl	372(%rax), %ecx
	jg	.LBB0_17
# BB#16:                                # %lor.lhs.false.27
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	display, %rax
	cmpl	$-1, 372(%rax)
	jne	.LBB0_18
.LBB0_17:                               # %if.then.30
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-16(%rbp), %rax
	movl	220(%rax), %ecx
	movq	display, %rax
	movl	%ecx, 372(%rax)
.LBB0_18:                               # %if.end.33
                                        #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_19
.LBB0_19:                               # %for.inc.34
                                        #   in Loop: Header=BB0_9 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB0_9
.LBB0_20:                               # %for.end.36
	movl	$0, -4(%rbp)
.LBB0_21:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	RethinkDisplayViewports, .Lfunc_end0-RethinkDisplayViewports
	.cfi_endproc

	.globl	RethinkViewportOffsets
	.align	16, 0x90
	.type	RethinkViewportOffsets,@function
RethinkViewportOffsets:                 # @RethinkViewportOffsets
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	56(%rdi), %rdi
	movq	%rdi, -16(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB1_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-8(%rbp), %rax
	movl	208(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 16(%rax)
	movq	-8(%rbp), %rax
	movl	212(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 20(%rax)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB1_1
.LBB1_4:                                # %for.end
	popq	%rbp
	retq
.Lfunc_end1:
	.size	RethinkViewportOffsets, .Lfunc_end1-RethinkViewportOffsets
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
