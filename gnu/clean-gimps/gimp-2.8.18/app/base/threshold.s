	.text
	.file	"threshold.bc"
	.globl	threshold
	.align	16, 0x90
	.type	threshold,@function
threshold:                              # @threshold
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movl	48(%rdx), %eax
	movl	%eax, -72(%rbp)
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	pixel_region_has_alpha
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB0_2
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rax
	movl	52(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	jmp	.LBB0_3
.LBB0_2:                                # %cond.false
	movq	-16(%rbp), %rax
	movl	52(%rax), %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
.LBB0_3:                                # %cond.end
	movl	-84(%rbp), %eax         # 4-byte Reload
	movl	%eax, -64(%rbp)
.LBB0_4:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
                                        #       Child Loop BB0_21 Depth 3
	movl	-72(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -72(%rbp)
	cmpl	$0, %eax
	je	.LBB0_28
# BB#5:                                 # %while.body
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	-16(%rbp), %rax
	movl	44(%rax), %ecx
	movl	%ecx, -68(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB0_6:                                # %while.cond.6
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_21 Depth 3
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -68(%rbp)
	cmpl	$0, %eax
	je	.LBB0_27
# BB#7:                                 # %while.body.9
                                        #   in Loop: Header=BB0_6 Depth=2
	movq	-8(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB0_17
# BB#8:                                 # %if.then
                                        #   in Loop: Header=BB0_6 Depth=2
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-40(%rbp), %rax
	movzbl	1(%rax), %edx
	cmpl	%edx, %ecx
	jle	.LBB0_10
# BB#9:                                 # %cond.true.14
                                        #   in Loop: Header=BB0_6 Depth=2
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, -88(%rbp)         # 4-byte Spill
	jmp	.LBB0_11
.LBB0_10:                               # %cond.false.17
                                        #   in Loop: Header=BB0_6 Depth=2
	movq	-40(%rbp), %rax
	movzbl	1(%rax), %ecx
	movl	%ecx, -88(%rbp)         # 4-byte Spill
.LBB0_11:                               # %cond.end.20
                                        #   in Loop: Header=BB0_6 Depth=2
	movl	-88(%rbp), %eax         # 4-byte Reload
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %eax
	movq	-40(%rbp), %rcx
	movzbl	2(%rcx), %edx
	cmpl	%edx, %eax
	jle	.LBB0_13
# BB#12:                                # %cond.true.26
                                        #   in Loop: Header=BB0_6 Depth=2
	movl	-80(%rbp), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB0_14
.LBB0_13:                               # %cond.false.27
                                        #   in Loop: Header=BB0_6 Depth=2
	movq	-40(%rbp), %rax
	movzbl	2(%rax), %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
.LBB0_14:                               # %cond.end.30
                                        #   in Loop: Header=BB0_6 Depth=2
	movl	-92(%rbp), %eax         # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %eax
	movq	-8(%rbp), %rsi
	cmpl	4(%rsi), %eax
	movb	%dl, -93(%rbp)          # 1-byte Spill
	jl	.LBB0_16
# BB#15:                                # %land.rhs
                                        #   in Loop: Header=BB0_6 Depth=2
	movl	-80(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	8(%rcx), %eax
	setle	%dl
	movb	%dl, -93(%rbp)          # 1-byte Spill
.LBB0_16:                               # %land.end
                                        #   in Loop: Header=BB0_6 Depth=2
	movb	-93(%rbp), %al          # 1-byte Reload
	xorl	%ecx, %ecx
	movl	$255, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -80(%rbp)
	jmp	.LBB0_20
.LBB0_17:                               # %if.else
                                        #   in Loop: Header=BB0_6 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-40(%rbp), %rdx
	movzbl	(%rdx), %eax
	movq	-8(%rbp), %rdx
	cmpl	4(%rdx), %eax
	movb	%cl, -94(%rbp)          # 1-byte Spill
	jl	.LBB0_19
# BB#18:                                # %land.rhs.42
                                        #   in Loop: Header=BB0_6 Depth=2
	movq	-40(%rbp), %rax
	movzbl	(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	8(%rax), %ecx
	setle	%dl
	movb	%dl, -94(%rbp)          # 1-byte Spill
.LBB0_19:                               # %land.end.48
                                        #   in Loop: Header=BB0_6 Depth=2
	movb	-94(%rbp), %al          # 1-byte Reload
	xorl	%ecx, %ecx
	movl	$255, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -80(%rbp)
.LBB0_20:                               # %if.end
                                        #   in Loop: Header=BB0_6 Depth=2
	movl	$0, -76(%rbp)
.LBB0_21:                               # %for.cond
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-76(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB0_24
# BB#22:                                # %for.body
                                        #   in Loop: Header=BB0_21 Depth=3
	movl	-80(%rbp), %eax
	movb	%al, %cl
	movslq	-76(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movb	%cl, (%rsi,%rdx)
# BB#23:                                # %for.inc
                                        #   in Loop: Header=BB0_21 Depth=3
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB0_21
.LBB0_24:                               # %for.end
                                        #   in Loop: Header=BB0_6 Depth=2
	cmpl	$0, -60(%rbp)
	je	.LBB0_26
# BB#25:                                # %if.then.55
                                        #   in Loop: Header=BB0_6 Depth=2
	movslq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movslq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	movb	%dl, (%rcx,%rax)
.LBB0_26:                               # %if.end.60
                                        #   in Loop: Header=BB0_6 Depth=2
	movq	-16(%rbp), %rax
	movl	52(%rax), %ecx
	movq	-40(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	52(%rax), %ecx
	movq	-56(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB0_6
.LBB0_27:                               # %while.end
                                        #   in Loop: Header=BB0_4 Depth=1
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-32(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-48(%rbp), %rax
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB0_4
.LBB0_28:                               # %while.end.70
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	threshold, .Lfunc_end0-threshold
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
