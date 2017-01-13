	.text
	.file	"layer.bc"
	.globl	LGotoPos
	.align	16, 0x90
	.type	LGotoPos,@function
LGotoPos:                               # @LGotoPos
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movb	88(%rdi), %al
	shlb	$7, %al
	sarb	$7, %al
	movsbl	%al, %edx
	cmpl	$0, %edx
	je	.LBB0_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movl	-16(%rbp), %r8d
	callq	LayPauseUpdateRegion
.LBB0_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB0_3:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_22 Depth 2
	cmpq	$0, -24(%rbp)
	je	.LBB0_33
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-8(%rbp), %rax
	movb	88(%rax), %cl
	shlb	$7, %cl
	sarb	$7, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB0_7
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-24(%rbp), %rax
	cmpl	$0, 48(%rax)
	je	.LBB0_7
# BB#6:                                 # %if.then.9
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_32
.LBB0_7:                                # %if.end.10
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, display
	movq	display, %rax
	cmpl	$0, 7812(%rax)
	je	.LBB0_9
# BB#8:                                 # %if.then.12
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_32
.LBB0_9:                                # %if.end.13
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-24(%rbp), %rax
	movq	display, %rcx
	cmpq	336(%rcx), %rax
	je	.LBB0_11
# BB#10:                                # %if.then.14
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_32
.LBB0_11:                               # %if.end.15
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	addl	208(%rcx), %eax
	movl	%eax, -36(%rbp)
	movl	-16(%rbp), %eax
	movq	-24(%rbp), %rcx
	addl	212(%rcx), %eax
	movl	%eax, -40(%rbp)
# BB#12:                                # %do.body
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_13
.LBB0_13:                               # %do.end
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-36(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	216(%rcx), %eax
	jge	.LBB0_15
# BB#14:                                # %if.then.18
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-24(%rbp), %rax
	movl	216(%rax), %ecx
	movl	%ecx, -36(%rbp)
.LBB0_15:                               # %if.end.20
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-40(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	224(%rcx), %eax
	jge	.LBB0_17
# BB#16:                                # %if.then.22
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-24(%rbp), %rax
	movl	224(%rax), %ecx
	movl	%ecx, -40(%rbp)
.LBB0_17:                               # %if.end.24
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-36(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	220(%rcx), %eax
	jle	.LBB0_19
# BB#18:                                # %if.then.26
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-24(%rbp), %rax
	movl	220(%rax), %ecx
	movl	%ecx, -36(%rbp)
.LBB0_19:                               # %if.end.28
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-40(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	228(%rcx), %eax
	jle	.LBB0_21
# BB#20:                                # %if.then.30
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-24(%rbp), %rax
	movl	228(%rax), %ecx
	movl	%ecx, -40(%rbp)
.LBB0_21:                               # %if.end.32
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB0_22:                               # %for.cond.33
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -32(%rbp)
	je	.LBB0_31
# BB#23:                                # %for.body.35
                                        #   in Loop: Header=BB0_22 Depth=2
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jl	.LBB0_25
# BB#24:                                # %lor.lhs.false
                                        #   in Loop: Header=BB0_22 Depth=2
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	28(%rcx), %eax
	jle	.LBB0_26
.LBB0_25:                               # %if.then.38
                                        #   in Loop: Header=BB0_22 Depth=2
	jmp	.LBB0_30
.LBB0_26:                               # %if.end.39
                                        #   in Loop: Header=BB0_22 Depth=2
	movl	-40(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	32(%rcx), %eax
	jl	.LBB0_28
# BB#27:                                # %lor.lhs.false.41
                                        #   in Loop: Header=BB0_22 Depth=2
	movl	-40(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jle	.LBB0_29
.LBB0_28:                               # %if.then.43
                                        #   in Loop: Header=BB0_22 Depth=2
	jmp	.LBB0_30
.LBB0_29:                               # %if.end.44
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-36(%rbp), %edi
	movl	-40(%rbp), %esi
	callq	GotoPos
	jmp	.LBB0_31
.LBB0_30:                               # %for.inc
                                        #   in Loop: Header=BB0_22 Depth=2
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_22
.LBB0_31:                               # %for.end
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_32
.LBB0_32:                               # %for.inc.45
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB0_3
.LBB0_33:                               # %for.end.46
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	LGotoPos, .Lfunc_end0-LGotoPos
	.cfi_endproc

	.globl	LayPauseUpdateRegion
	.align	16, 0x90
	.type	LayPauseUpdateRegion,@function
LayPauseUpdateRegion:                   # @LayPauseUpdateRegion
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	-8(%rbp), %rdi
	movb	88(%rdi), %al
	shlb	$7, %al
	sarb	$7, %al
	movsbl	%al, %ecx
	cmpl	$0, %ecx
	jne	.LBB1_2
# BB#1:                                 # %if.then
	jmp	.LBB1_26
.LBB1_2:                                # %if.end
	cmpl	$0, -20(%rbp)
	jge	.LBB1_4
# BB#3:                                 # %if.then.1
	movl	$0, -20(%rbp)
.LBB1_4:                                # %if.end.2
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jl	.LBB1_6
# BB#5:                                 # %if.then.4
	movq	-8(%rbp), %rax
	movl	12(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -24(%rbp)
.LBB1_6:                                # %if.end.6
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jl	.LBB1_8
# BB#7:                                 # %if.then.8
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -16(%rbp)
.LBB1_8:                                # %if.end.11
	movq	-8(%rbp), %rax
	cmpl	$-1, 112(%rax)
	je	.LBB1_10
# BB#9:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movl	112(%rax), %ecx
	cmpl	-20(%rbp), %ecx
	jle	.LBB1_11
.LBB1_10:                               # %if.then.17
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 112(%rcx)
.LBB1_11:                               # %if.end.20
	movq	-8(%rbp), %rax
	movl	116(%rax), %ecx
	cmpl	-24(%rbp), %ecx
	jge	.LBB1_18
# BB#12:                                # %if.then.23
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 116(%rcx)
	movq	-8(%rbp), %rcx
	movl	120(%rcx), %eax
	cmpl	-24(%rbp), %eax
	jg	.LBB1_17
# BB#13:                                # %if.then.28
	movq	-8(%rbp), %rax
	movl	120(%rax), %ecx
	movl	%ecx, -28(%rbp)
	movl	-24(%rbp), %ecx
	addl	$32, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 120(%rax)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	-8(%rbp), %rdx
	movslq	120(%rdx), %rdx
	shlq	$2, %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	realloc
	movq	-8(%rbp), %rdx
	movq	%rax, 96(%rdx)
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	-8(%rbp), %rdx
	movslq	120(%rdx), %rdx
	shlq	$2, %rdx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	callq	realloc
	movq	-8(%rbp), %rdx
	movq	%rax, 104(%rdx)
.LBB1_14:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	120(%rcx), %eax
	jge	.LBB1_16
# BB#15:                                # %while.body
                                        #   in Loop: Header=BB1_14 Depth=1
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	104(%rcx), %rcx
	movl	$-1, (%rcx,%rax,4)
	movslq	-28(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	96(%rcx), %rcx
	movl	$-1, (%rcx,%rax,4)
	movl	-28(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -28(%rbp)
	jmp	.LBB1_14
.LBB1_16:                               # %while.end
	jmp	.LBB1_17
.LBB1_17:                               # %if.end.56
	jmp	.LBB1_18
.LBB1_18:                               # %if.end.57
	jmp	.LBB1_19
.LBB1_19:                               # %while.cond.58
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jg	.LBB1_26
# BB#20:                                # %while.body.61
                                        #   in Loop: Header=BB1_19 Depth=1
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	96(%rcx), %rcx
	cmpl	$-1, (%rcx,%rax,4)
	je	.LBB1_22
# BB#21:                                # %lor.lhs.false.68
                                        #   in Loop: Header=BB1_19 Depth=1
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	96(%rcx), %rcx
	movl	(%rcx,%rax,4), %edx
	cmpl	-12(%rbp), %edx
	jle	.LBB1_23
.LBB1_22:                               # %if.then.75
                                        #   in Loop: Header=BB1_19 Depth=1
	movl	-12(%rbp), %eax
	movslq	-20(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	96(%rdx), %rdx
	movl	%eax, (%rdx,%rcx,4)
.LBB1_23:                               # %if.end.80
                                        #   in Loop: Header=BB1_19 Depth=1
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	104(%rcx), %rcx
	movl	(%rcx,%rax,4), %edx
	cmpl	-16(%rbp), %edx
	jge	.LBB1_25
# BB#24:                                # %if.then.87
                                        #   in Loop: Header=BB1_19 Depth=1
	movl	-16(%rbp), %eax
	movslq	-20(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	104(%rdx), %rdx
	movl	%eax, (%rdx,%rcx,4)
.LBB1_25:                               # %if.end.92
                                        #   in Loop: Header=BB1_19 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB1_19
.LBB1_26:                               # %while.end.94
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	LayPauseUpdateRegion, .Lfunc_end1-LayPauseUpdateRegion
	.cfi_endproc

	.globl	LScrollH
	.align	16, 0x90
	.type	LScrollH,@function
LScrollH:                               # @LScrollH
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movq	%rax, -40(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	jmp	.LBB2_40
.LBB2_2:                                # %if.end
	movq	-8(%rbp), %rax
	movb	88(%rax), %cl
	shlb	$7, %cl
	sarb	$7, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB2_4
# BB#3:                                 # %if.then.1
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-16(%rbp), %ecx
	movl	-16(%rbp), %r8d
	callq	LayPauseUpdateRegion
.LBB2_4:                                # %if.end.2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB2_5:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_10 Depth 2
	cmpq	$0, -48(%rbp)
	je	.LBB2_40
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB2_5 Depth=1
	movq	-8(%rbp), %rax
	movb	88(%rax), %cl
	shlb	$7, %cl
	sarb	$7, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB2_9
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB2_5 Depth=1
	movq	-48(%rbp), %rax
	cmpl	$0, 48(%rax)
	je	.LBB2_9
# BB#8:                                 # %if.then.11
                                        #   in Loop: Header=BB2_5 Depth=1
	jmp	.LBB2_39
.LBB2_9:                                # %if.end.12
                                        #   in Loop: Header=BB2_5 Depth=1
	movq	-48(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB2_10:                               # %for.cond.13
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -56(%rbp)
	je	.LBB2_38
# BB#11:                                # %for.body.15
                                        #   in Loop: Header=BB2_10 Depth=2
	movl	-16(%rbp), %eax
	movq	-56(%rbp), %rcx
	addl	20(%rcx), %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	movq	-56(%rbp), %rcx
	cmpl	32(%rcx), %eax
	jl	.LBB2_13
# BB#12:                                # %lor.lhs.false
                                        #   in Loop: Header=BB2_10 Depth=2
	movl	-60(%rbp), %eax
	movq	-56(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jle	.LBB2_14
.LBB2_13:                               # %if.then.18
                                        #   in Loop: Header=BB2_10 Depth=2
	jmp	.LBB2_37
.LBB2_14:                               # %if.end.19
                                        #   in Loop: Header=BB2_10 Depth=2
	movl	-20(%rbp), %eax
	movq	-56(%rbp), %rcx
	addl	16(%rcx), %eax
	movl	%eax, -64(%rbp)
	movl	-24(%rbp), %eax
	movq	-56(%rbp), %rcx
	addl	16(%rcx), %eax
	movl	%eax, -68(%rbp)
	movl	-64(%rbp), %eax
	movq	-56(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jge	.LBB2_16
# BB#15:                                # %if.then.24
                                        #   in Loop: Header=BB2_10 Depth=2
	movq	-56(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -64(%rbp)
.LBB2_16:                               # %if.end.26
                                        #   in Loop: Header=BB2_10 Depth=2
	movl	-68(%rbp), %eax
	movq	-56(%rbp), %rcx
	cmpl	28(%rcx), %eax
	jle	.LBB2_18
# BB#17:                                # %if.then.28
                                        #   in Loop: Header=BB2_10 Depth=2
	movq	-56(%rbp), %rax
	movl	28(%rax), %ecx
	movl	%ecx, -68(%rbp)
.LBB2_18:                               # %if.end.30
                                        #   in Loop: Header=BB2_10 Depth=2
	movl	-64(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jle	.LBB2_20
# BB#19:                                # %if.then.32
                                        #   in Loop: Header=BB2_10 Depth=2
	jmp	.LBB2_37
.LBB2_20:                               # %if.end.33
                                        #   in Loop: Header=BB2_10 Depth=2
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, display
	movq	display, %rax
	cmpl	$0, 7812(%rax)
	je	.LBB2_22
# BB#21:                                # %if.then.35
                                        #   in Loop: Header=BB2_10 Depth=2
	jmp	.LBB2_37
.LBB2_22:                               # %if.end.36
                                        #   in Loop: Header=BB2_10 Depth=2
	movl	-60(%rbp), %edi
	movl	-64(%rbp), %esi
	movl	-68(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	-28(%rbp), %r8d
	cmpq	$0, -40(%rbp)
	movl	%edi, -72(%rbp)         # 4-byte Spill
	movl	%esi, -76(%rbp)         # 4-byte Spill
	movl	%edx, -80(%rbp)         # 4-byte Spill
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	movl	%r8d, -88(%rbp)         # 4-byte Spill
	je	.LBB2_24
# BB#23:                                # %cond.true
                                        #   in Loop: Header=BB2_10 Depth=2
	xorl	%eax, %eax
	movq	-40(%rbp), %rdi
	movq	-56(%rbp), %rcx
	subl	16(%rcx), %eax
	movl	%eax, %esi
	callq	mloff
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB2_25
.LBB2_24:                               # %cond.false
                                        #   in Loop: Header=BB2_10 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB2_25
.LBB2_25:                               # %cond.end
                                        #   in Loop: Header=BB2_10 Depth=2
	movq	-96(%rbp), %rax         # 8-byte Reload
	movl	-72(%rbp), %edi         # 4-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movl	-80(%rbp), %edx         # 4-byte Reload
	movl	-84(%rbp), %ecx         # 4-byte Reload
	movl	-88(%rbp), %r8d         # 4-byte Reload
	movq	%rax, %r9
	callq	ScrollH
	movl	-68(%rbp), %ecx
	subl	-64(%rbp), %ecx
	movl	-24(%rbp), %edx
	subl	-20(%rbp), %edx
	cmpl	%edx, %ecx
	jne	.LBB2_27
# BB#26:                                # %if.then.42
                                        #   in Loop: Header=BB2_10 Depth=2
	jmp	.LBB2_37
.LBB2_27:                               # %if.end.43
                                        #   in Loop: Header=BB2_10 Depth=2
	cmpl	$0, -12(%rbp)
	jle	.LBB2_29
# BB#28:                                # %if.then.45
                                        #   in Loop: Header=BB2_10 Depth=2
	movl	-68(%rbp), %eax
	addl	$1, %eax
	subl	-12(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	-24(%rbp), %eax
	movq	-56(%rbp), %rcx
	addl	16(%rcx), %eax
	subl	-12(%rbp), %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB2_30
.LBB2_29:                               # %if.else
                                        #   in Loop: Header=BB2_10 Depth=2
	movl	-64(%rbp), %eax
	subl	$1, %eax
	subl	-12(%rbp), %eax
	movl	%eax, -68(%rbp)
	movl	-20(%rbp), %eax
	movq	-56(%rbp), %rcx
	addl	16(%rcx), %eax
	subl	-12(%rbp), %eax
	movl	%eax, -64(%rbp)
.LBB2_30:                               # %if.end.56
                                        #   in Loop: Header=BB2_10 Depth=2
	movl	-64(%rbp), %eax
	movq	-56(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jge	.LBB2_32
# BB#31:                                # %if.then.59
                                        #   in Loop: Header=BB2_10 Depth=2
	movq	-56(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -64(%rbp)
.LBB2_32:                               # %if.end.61
                                        #   in Loop: Header=BB2_10 Depth=2
	movl	-68(%rbp), %eax
	movq	-56(%rbp), %rcx
	cmpl	28(%rcx), %eax
	jle	.LBB2_34
# BB#33:                                # %if.then.64
                                        #   in Loop: Header=BB2_10 Depth=2
	movq	-56(%rbp), %rax
	movl	28(%rax), %ecx
	movl	%ecx, -68(%rbp)
.LBB2_34:                               # %if.end.66
                                        #   in Loop: Header=BB2_10 Depth=2
	movl	-64(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jg	.LBB2_36
# BB#35:                                # %if.then.68
                                        #   in Loop: Header=BB2_10 Depth=2
	movl	$1, %r8d
	movl	-64(%rbp), %edi
	movl	-60(%rbp), %esi
	movl	-68(%rbp), %edx
	movl	-60(%rbp), %ecx
	callq	RefreshArea
.LBB2_36:                               # %if.end.69
                                        #   in Loop: Header=BB2_10 Depth=2
	jmp	.LBB2_37
.LBB2_37:                               # %for.inc
                                        #   in Loop: Header=BB2_10 Depth=2
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB2_10
.LBB2_38:                               # %for.end
                                        #   in Loop: Header=BB2_5 Depth=1
	jmp	.LBB2_39
.LBB2_39:                               # %for.inc.70
                                        #   in Loop: Header=BB2_5 Depth=1
	movq	-48(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB2_5
.LBB2_40:                               # %for.end.71
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	LScrollH, .Lfunc_end2-LScrollH
	.cfi_endproc

	.align	16, 0x90
	.type	mloff,@function
mloff:                                  # @mloff
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB3_3
.LBB3_2:                                # %if.end
	movabsq	$mloff.mml, %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movslq	-20(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, mloff.mml
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movslq	-20(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, mloff.mml+8
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movslq	-20(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, mloff.mml+16
	movq	-16(%rbp), %rcx
	movq	24(%rcx), %rcx
	movslq	-20(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, mloff.mml+24
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movslq	-20(%rbp), %rdx
	addq	%rdx, %rcx
	movq	%rcx, mloff.mml+32
	movq	%rax, -8(%rbp)
.LBB3_3:                                # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end3:
	.size	mloff, .Lfunc_end3-mloff
	.cfi_endproc

	.globl	LScrollV
	.align	16, 0x90
	.type	LScrollV,@function
LScrollV:                               # @LScrollV
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	jmp	.LBB4_47
.LBB4_2:                                # %if.end
	movq	-8(%rbp), %rax
	movb	88(%rax), %cl
	shlb	$7, %cl
	sarb	$7, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB4_4
# BB#3:                                 # %if.then.1
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	subl	$1, %ecx
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %r8d
	movl	%edx, -60(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-60(%rbp), %ecx         # 4-byte Reload
	callq	LayPauseUpdateRegion
.LBB4_4:                                # %if.end.2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB4_5:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_10 Depth 2
	cmpq	$0, -32(%rbp)
	je	.LBB4_47
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	-8(%rbp), %rax
	movb	88(%rax), %cl
	shlb	$7, %cl
	sarb	$7, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB4_9
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	-32(%rbp), %rax
	cmpl	$0, 48(%rax)
	je	.LBB4_9
# BB#8:                                 # %if.then.11
                                        #   in Loop: Header=BB4_5 Depth=1
	jmp	.LBB4_46
.LBB4_9:                                # %if.end.12
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB4_10:                               # %for.cond.13
                                        #   Parent Loop BB4_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -40(%rbp)
	je	.LBB4_45
# BB#11:                                # %for.body.15
                                        #   in Loop: Header=BB4_10 Depth=2
	movq	-40(%rbp), %rax
	movl	16(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	subl	$1, %ecx
	movq	-40(%rbp), %rax
	addl	16(%rax), %ecx
	movl	%ecx, -56(%rbp)
	movl	-16(%rbp), %ecx
	movq	-40(%rbp), %rax
	addl	20(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movl	-20(%rbp), %ecx
	movq	-40(%rbp), %rax
	addl	20(%rax), %ecx
	movl	%ecx, -48(%rbp)
	movl	-52(%rbp), %ecx
	movq	-40(%rbp), %rax
	cmpl	24(%rax), %ecx
	jge	.LBB4_13
# BB#12:                                # %if.then.23
                                        #   in Loop: Header=BB4_10 Depth=2
	movq	-40(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -52(%rbp)
.LBB4_13:                               # %if.end.25
                                        #   in Loop: Header=BB4_10 Depth=2
	movl	-56(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	28(%rcx), %eax
	jle	.LBB4_15
# BB#14:                                # %if.then.27
                                        #   in Loop: Header=BB4_10 Depth=2
	movq	-40(%rbp), %rax
	movl	28(%rax), %ecx
	movl	%ecx, -56(%rbp)
.LBB4_15:                               # %if.end.29
                                        #   in Loop: Header=BB4_10 Depth=2
	movl	-44(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	32(%rcx), %eax
	jge	.LBB4_17
# BB#16:                                # %if.then.31
                                        #   in Loop: Header=BB4_10 Depth=2
	movq	-40(%rbp), %rax
	movl	32(%rax), %ecx
	movl	%ecx, -44(%rbp)
.LBB4_17:                               # %if.end.33
                                        #   in Loop: Header=BB4_10 Depth=2
	movl	-48(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jle	.LBB4_19
# BB#18:                                # %if.then.35
                                        #   in Loop: Header=BB4_10 Depth=2
	movq	-40(%rbp), %rax
	movl	36(%rax), %ecx
	movl	%ecx, -48(%rbp)
.LBB4_19:                               # %if.end.37
                                        #   in Loop: Header=BB4_10 Depth=2
	movl	-44(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jg	.LBB4_21
# BB#20:                                # %lor.lhs.false
                                        #   in Loop: Header=BB4_10 Depth=2
	movl	-52(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jle	.LBB4_22
.LBB4_21:                               # %if.then.40
                                        #   in Loop: Header=BB4_10 Depth=2
	jmp	.LBB4_44
.LBB4_22:                               # %if.end.41
                                        #   in Loop: Header=BB4_10 Depth=2
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, display
	movq	display, %rax
	cmpl	$0, 7812(%rax)
	je	.LBB4_24
# BB#23:                                # %if.then.43
                                        #   in Loop: Header=BB4_10 Depth=2
	jmp	.LBB4_44
.LBB4_24:                               # %if.end.44
                                        #   in Loop: Header=BB4_10 Depth=2
	movq	-40(%rbp), %rax
	movl	24(%rax), %edi
	movl	-44(%rbp), %esi
	movq	-40(%rbp), %rax
	movl	28(%rax), %edx
	movl	-48(%rbp), %ecx
	movl	-12(%rbp), %r8d
	movl	-24(%rbp), %r9d
	callq	ScrollV
# BB#25:                                # %do.body
                                        #   in Loop: Header=BB4_10 Depth=2
	jmp	.LBB4_26
.LBB4_26:                               # %do.end
                                        #   in Loop: Header=BB4_10 Depth=2
	jmp	.LBB4_27
.LBB4_27:                               # %do.body.47
                                        #   in Loop: Header=BB4_10 Depth=2
	jmp	.LBB4_28
.LBB4_28:                               # %do.end.48
                                        #   in Loop: Header=BB4_10 Depth=2
	movl	-48(%rbp), %eax
	subl	-44(%rbp), %eax
	movl	-20(%rbp), %ecx
	subl	-16(%rbp), %ecx
	cmpl	%ecx, %eax
	jne	.LBB4_30
# BB#29:                                # %if.then.52
                                        #   in Loop: Header=BB4_10 Depth=2
	jmp	.LBB4_44
.LBB4_30:                               # %if.end.53
                                        #   in Loop: Header=BB4_10 Depth=2
	cmpl	$0, -12(%rbp)
	jle	.LBB4_32
# BB#31:                                # %if.then.55
                                        #   in Loop: Header=BB4_10 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	subl	-12(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-20(%rbp), %eax
	movq	-40(%rbp), %rcx
	addl	20(%rcx), %eax
	subl	-12(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB4_33
.LBB4_32:                               # %if.else
                                        #   in Loop: Header=BB4_10 Depth=2
	movl	-44(%rbp), %eax
	subl	$1, %eax
	subl	-12(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-16(%rbp), %eax
	movq	-40(%rbp), %rcx
	addl	20(%rcx), %eax
	subl	-12(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB4_33:                               # %if.end.66
                                        #   in Loop: Header=BB4_10 Depth=2
	jmp	.LBB4_34
.LBB4_34:                               # %do.body.67
                                        #   in Loop: Header=BB4_10 Depth=2
	jmp	.LBB4_35
.LBB4_35:                               # %do.end.68
                                        #   in Loop: Header=BB4_10 Depth=2
	movl	-44(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	32(%rcx), %eax
	jge	.LBB4_37
# BB#36:                                # %if.then.71
                                        #   in Loop: Header=BB4_10 Depth=2
	movq	-40(%rbp), %rax
	movl	32(%rax), %ecx
	movl	%ecx, -44(%rbp)
.LBB4_37:                               # %if.end.73
                                        #   in Loop: Header=BB4_10 Depth=2
	movl	-48(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jle	.LBB4_39
# BB#38:                                # %if.then.76
                                        #   in Loop: Header=BB4_10 Depth=2
	movq	-40(%rbp), %rax
	movl	36(%rax), %ecx
	movl	%ecx, -48(%rbp)
.LBB4_39:                               # %if.end.78
                                        #   in Loop: Header=BB4_10 Depth=2
	jmp	.LBB4_40
.LBB4_40:                               # %do.body.79
                                        #   in Loop: Header=BB4_10 Depth=2
	jmp	.LBB4_41
.LBB4_41:                               # %do.end.80
                                        #   in Loop: Header=BB4_10 Depth=2
	movl	-44(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jg	.LBB4_43
# BB#42:                                # %if.then.82
                                        #   in Loop: Header=BB4_10 Depth=2
	movl	$1, %r8d
	movl	-52(%rbp), %edi
	movl	-44(%rbp), %esi
	movl	-56(%rbp), %edx
	movl	-48(%rbp), %ecx
	callq	RefreshArea
.LBB4_43:                               # %if.end.83
                                        #   in Loop: Header=BB4_10 Depth=2
	jmp	.LBB4_44
.LBB4_44:                               # %for.inc
                                        #   in Loop: Header=BB4_10 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB4_10
.LBB4_45:                               # %for.end
                                        #   in Loop: Header=BB4_5 Depth=1
	jmp	.LBB4_46
.LBB4_46:                               # %for.inc.84
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB4_5
.LBB4_47:                               # %for.end.85
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	LScrollV, .Lfunc_end4-LScrollV
	.cfi_endproc

	.globl	LInsChar
	.align	16, 0x90
	.type	LInsChar,@function
LInsChar:                               # @LInsChar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	-8(%rbp), %rsi
	movb	88(%rsi), %al
	shlb	$7, %al
	sarb	$7, %al
	movsbl	%al, %ecx
	cmpl	$0, %ecx
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	subl	$1, %ecx
	movl	-24(%rbp), %edx
	movl	-24(%rbp), %r8d
	movl	%edx, -96(%rbp)         # 4-byte Spill
	movl	%ecx, %edx
	movl	-96(%rbp), %ecx         # 4-byte Reload
	callq	LayPauseUpdateRegion
.LBB5_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB5_3:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_8 Depth 2
	cmpq	$0, -40(%rbp)
	je	.LBB5_40
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-8(%rbp), %rax
	movb	88(%rax), %cl
	shlb	$7, %cl
	sarb	$7, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB5_7
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-40(%rbp), %rax
	cmpl	$0, 48(%rax)
	je	.LBB5_7
# BB#6:                                 # %if.then.9
                                        #   in Loop: Header=BB5_3 Depth=1
	jmp	.LBB5_39
.LBB5_7:                                # %if.end.10
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB5_8:                                # %for.cond.11
                                        #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -48(%rbp)
	je	.LBB5_38
# BB#9:                                 # %for.body.13
                                        #   in Loop: Header=BB5_8 Depth=2
	movl	-24(%rbp), %eax
	movq	-48(%rbp), %rcx
	addl	20(%rcx), %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	32(%rcx), %eax
	jl	.LBB5_11
# BB#10:                                # %lor.lhs.false
                                        #   in Loop: Header=BB5_8 Depth=2
	movl	-60(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jle	.LBB5_12
.LBB5_11:                               # %if.then.15
                                        #   in Loop: Header=BB5_8 Depth=2
	jmp	.LBB5_37
.LBB5_12:                               # %if.end.16
                                        #   in Loop: Header=BB5_8 Depth=2
	movl	-20(%rbp), %eax
	movq	-48(%rbp), %rcx
	addl	16(%rcx), %eax
	movl	%eax, -52(%rbp)
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %eax
	subl	$1, %eax
	movq	-48(%rbp), %rcx
	addl	16(%rcx), %eax
	movl	%eax, -56(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -72(%rbp)
	movl	$0, -64(%rbp)
	movl	-52(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jge	.LBB5_22
# BB#13:                                # %if.then.23
                                        #   in Loop: Header=BB5_8 Depth=2
	movabsq	$mchar_blank, %rax
	movq	-48(%rbp), %rcx
	movl	24(%rcx), %edx
	movl	%edx, -52(%rbp)
	movq	%rax, -72(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB5_20
# BB#14:                                # %if.then.26
                                        #   in Loop: Header=BB5_8 Depth=2
	movl	-52(%rbp), %eax
	movq	-48(%rbp), %rcx
	subl	16(%rcx), %eax
	subl	$1, %eax
	movl	%eax, -92(%rbp)
	cmpl	$0, -92(%rbp)
	jl	.LBB5_19
# BB#15:                                # %land.lhs.true.31
                                        #   in Loop: Header=BB5_8 Depth=2
	movl	-92(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jge	.LBB5_19
# BB#16:                                # %if.then.34
                                        #   in Loop: Header=BB5_8 Depth=2
	jmp	.LBB5_17
.LBB5_17:                               # %do.body
                                        #   in Loop: Header=BB5_8 Depth=2
	movslq	-92(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, -80(%rbp)
	movslq	-92(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, -79(%rbp)
	movslq	-92(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	16(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, -78(%rbp)
	movslq	-92(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	24(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, -77(%rbp)
	movslq	-92(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	32(%rcx), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, -76(%rbp)
	movb	$0, -75(%rbp)
# BB#18:                                # %do.end
                                        #   in Loop: Header=BB5_8 Depth=2
	leaq	-80(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB5_19:                               # %if.end.48
                                        #   in Loop: Header=BB5_8 Depth=2
	jmp	.LBB5_21
.LBB5_20:                               # %if.else
                                        #   in Loop: Header=BB5_8 Depth=2
	movl	$1, -64(%rbp)
.LBB5_21:                               # %if.end.49
                                        #   in Loop: Header=BB5_8 Depth=2
	jmp	.LBB5_22
.LBB5_22:                               # %if.end.50
                                        #   in Loop: Header=BB5_8 Depth=2
	movl	-56(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	28(%rcx), %eax
	jle	.LBB5_24
# BB#23:                                # %if.then.52
                                        #   in Loop: Header=BB5_8 Depth=2
	movq	-48(%rbp), %rax
	movl	28(%rax), %ecx
	movl	%ecx, -56(%rbp)
.LBB5_24:                               # %if.end.54
                                        #   in Loop: Header=BB5_8 Depth=2
	movl	-52(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jle	.LBB5_26
# BB#25:                                # %if.then.56
                                        #   in Loop: Header=BB5_8 Depth=2
	jmp	.LBB5_37
.LBB5_26:                               # %if.end.57
                                        #   in Loop: Header=BB5_8 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, display
	movq	display, %rax
	cmpl	$0, 7812(%rax)
	je	.LBB5_28
# BB#27:                                # %if.then.59
                                        #   in Loop: Header=BB5_8 Depth=2
	jmp	.LBB5_37
.LBB5_28:                               # %if.end.60
                                        #   in Loop: Header=BB5_8 Depth=2
	movq	-8(%rbp), %rax
	cmpl	$8, 24(%rax)
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	display, %rax
	cmpl	$8, 496(%rax)
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	cmpl	%esi, %edx
	je	.LBB5_30
# BB#29:                                # %cond.true
                                        #   in Loop: Header=BB5_8 Depth=2
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	8(%rax), %esi
	movq	-8(%rbp), %rax
	movl	24(%rax), %edx
	movq	display, %rax
	movl	496(%rax), %ecx
	callq	recode_mline
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB5_31
.LBB5_30:                               # %cond.false
                                        #   in Loop: Header=BB5_8 Depth=2
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB5_31:                               # %cond.end
                                        #   in Loop: Header=BB5_8 Depth=2
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -88(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$8, 24(%rax)
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	display, %rax
	cmpl	$8, 496(%rax)
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	cmpl	%esi, %edx
	je	.LBB5_33
# BB#32:                                # %cond.true.77
                                        #   in Loop: Header=BB5_8 Depth=2
	movq	-72(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	24(%rax), %esi
	movq	display, %rax
	movl	496(%rax), %edx
	callq	recode_mchar
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB5_34
.LBB5_33:                               # %cond.false.81
                                        #   in Loop: Header=BB5_8 Depth=2
	movq	-72(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB5_34:                               # %cond.end.82
                                        #   in Loop: Header=BB5_8 Depth=2
	movq	-112(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edx
	movl	-60(%rbp), %edi
	movq	-88(%rbp), %r8
	movq	-48(%rbp), %r9
	subl	16(%r9), %ecx
	movl	%edi, -116(%rbp)        # 4-byte Spill
	movq	%r8, %rdi
	movl	%esi, -120(%rbp)        # 4-byte Spill
	movl	%ecx, %esi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	%edx, -132(%rbp)        # 4-byte Spill
	callq	mloff
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movl	-120(%rbp), %esi        # 4-byte Reload
	movl	-132(%rbp), %edx        # 4-byte Reload
	movl	-116(%rbp), %ecx        # 4-byte Reload
	movq	%rax, %r8
	callq	InsChar
	cmpl	$0, -64(%rbp)
	je	.LBB5_36
# BB#35:                                # %if.then.88
                                        #   in Loop: Header=BB5_8 Depth=2
	movl	$1, %r8d
	movl	-52(%rbp), %edi
	movl	-60(%rbp), %esi
	movl	-52(%rbp), %edx
	movl	-60(%rbp), %ecx
	callq	RefreshArea
.LBB5_36:                               # %if.end.89
                                        #   in Loop: Header=BB5_8 Depth=2
	jmp	.LBB5_37
.LBB5_37:                               # %for.inc
                                        #   in Loop: Header=BB5_8 Depth=2
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB5_8
.LBB5_38:                               # %for.end
                                        #   in Loop: Header=BB5_3 Depth=1
	jmp	.LBB5_39
.LBB5_39:                               # %for.inc.90
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB5_3
.LBB5_40:                               # %for.end.91
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	LInsChar, .Lfunc_end5-LInsChar
	.cfi_endproc

	.globl	LPutChar
	.align	16, 0x90
	.type	LPutChar,@function
LPutChar:                               # @LPutChar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp20:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	-8(%rbp), %rsi
	movb	88(%rsi), %al
	shlb	$7, %al
	sarb	$7, %al
	movsbl	%al, %ecx
	cmpl	$0, %ecx
	je	.LBB6_2
# BB#1:                                 # %if.then
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %r8
	movzbl	5(%r8), %r9d
	cmpl	$0, %r9d
	cmovnel	%ecx, %eax
	addl	%eax, %edx
	movl	-24(%rbp), %ecx
	movl	-24(%rbp), %r8d
	callq	LayPauseUpdateRegion
.LBB6_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB6_3:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_10 Depth 2
	cmpq	$0, -32(%rbp)
	je	.LBB6_24
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-8(%rbp), %rax
	movb	88(%rax), %cl
	shlb	$7, %cl
	sarb	$7, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB6_7
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-32(%rbp), %rax
	cmpl	$0, 48(%rax)
	je	.LBB6_7
# BB#6:                                 # %if.then.10
                                        #   in Loop: Header=BB6_3 Depth=1
	jmp	.LBB6_23
.LBB6_7:                                # %if.end.11
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, display
	movq	display, %rax
	cmpl	$0, 7812(%rax)
	je	.LBB6_9
# BB#8:                                 # %if.then.13
                                        #   in Loop: Header=BB6_3 Depth=1
	jmp	.LBB6_23
.LBB6_9:                                # %if.end.14
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB6_10:                               # %for.cond.15
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -40(%rbp)
	je	.LBB6_22
# BB#11:                                # %for.body.17
                                        #   in Loop: Header=BB6_10 Depth=2
	movl	-24(%rbp), %eax
	movq	-40(%rbp), %rcx
	addl	20(%rcx), %eax
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	32(%rcx), %eax
	jl	.LBB6_13
# BB#12:                                # %lor.lhs.false
                                        #   in Loop: Header=BB6_10 Depth=2
	movl	-48(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jle	.LBB6_14
.LBB6_13:                               # %if.then.22
                                        #   in Loop: Header=BB6_10 Depth=2
	jmp	.LBB6_21
.LBB6_14:                               # %if.end.23
                                        #   in Loop: Header=BB6_10 Depth=2
	movl	-20(%rbp), %eax
	movq	-40(%rbp), %rcx
	addl	16(%rcx), %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jl	.LBB6_16
# BB#15:                                # %lor.lhs.false.27
                                        #   in Loop: Header=BB6_10 Depth=2
	movl	-44(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	28(%rcx), %eax
	jle	.LBB6_17
.LBB6_16:                               # %if.then.30
                                        #   in Loop: Header=BB6_10 Depth=2
	jmp	.LBB6_21
.LBB6_17:                               # %if.end.31
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$8, 24(%rax)
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	display, %rax
	cmpl	$8, 496(%rax)
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	cmpl	%esi, %edx
	je	.LBB6_19
# BB#18:                                # %cond.true
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	24(%rax), %esi
	movq	display, %rax
	movl	496(%rax), %edx
	callq	recode_mchar
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB6_20
.LBB6_19:                               # %cond.false
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB6_20:                               # %cond.end
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	-44(%rbp), %esi
	movl	-48(%rbp), %edx
	movq	%rax, %rdi
	callq	PutChar
	jmp	.LBB6_22
.LBB6_21:                               # %for.inc
                                        #   in Loop: Header=BB6_10 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB6_10
.LBB6_22:                               # %for.end
                                        #   in Loop: Header=BB6_3 Depth=1
	jmp	.LBB6_23
.LBB6_23:                               # %for.inc.41
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB6_3
.LBB6_24:                               # %for.end.42
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	LPutChar, .Lfunc_end6-LPutChar
	.cfi_endproc

	.globl	LPutStr
	.align	16, 0x90
	.type	LPutStr,@function
LPutStr:                                # @LPutStr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp23:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movl	-36(%rbp), %edx
	addl	-20(%rbp), %edx
	movq	-8(%rbp), %rcx
	cmpl	8(%rcx), %edx
	jle	.LBB7_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	subl	-36(%rbp), %ecx
	movl	%ecx, -20(%rbp)
.LBB7_2:                                # %if.end
	movq	-8(%rbp), %rax
	movb	88(%rax), %cl
	shlb	$7, %cl
	sarb	$7, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB7_4
# BB#3:                                 # %if.then.2
	movq	-8(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-36(%rbp), %eax
	addl	-20(%rbp), %eax
	subl	$1, %eax
	movl	-40(%rbp), %ecx
	movl	-40(%rbp), %r8d
	movl	%eax, %edx
	callq	LayPauseUpdateRegion
.LBB7_4:                                # %if.end.5
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB7_5:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_10 Depth 2
                                        #       Child Loop BB7_28 Depth 3
                                        #       Child Loop BB7_35 Depth 3
	cmpq	$0, -48(%rbp)
	je	.LBB7_41
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB7_5 Depth=1
	movq	-8(%rbp), %rax
	movb	88(%rax), %cl
	shlb	$7, %cl
	sarb	$7, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB7_9
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB7_5 Depth=1
	movq	-48(%rbp), %rax
	cmpl	$0, 48(%rax)
	je	.LBB7_9
# BB#8:                                 # %if.then.14
                                        #   in Loop: Header=BB7_5 Depth=1
	jmp	.LBB7_40
.LBB7_9:                                # %if.end.15
                                        #   in Loop: Header=BB7_5 Depth=1
	movq	-48(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB7_10:                               # %for.cond.16
                                        #   Parent Loop BB7_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_28 Depth 3
                                        #       Child Loop BB7_35 Depth 3
	cmpq	$0, -56(%rbp)
	je	.LBB7_39
# BB#11:                                # %for.body.18
                                        #   in Loop: Header=BB7_10 Depth=2
	movl	-40(%rbp), %eax
	movq	-56(%rbp), %rcx
	addl	20(%rcx), %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	movq	-56(%rbp), %rcx
	cmpl	32(%rcx), %eax
	jl	.LBB7_13
# BB#12:                                # %lor.lhs.false
                                        #   in Loop: Header=BB7_10 Depth=2
	movl	-76(%rbp), %eax
	movq	-56(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jle	.LBB7_14
.LBB7_13:                               # %if.then.22
                                        #   in Loop: Header=BB7_10 Depth=2
	jmp	.LBB7_38
.LBB7_14:                               # %if.end.23
                                        #   in Loop: Header=BB7_10 Depth=2
	movl	-36(%rbp), %eax
	movq	-56(%rbp), %rcx
	addl	16(%rcx), %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	addl	-20(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -72(%rbp)
	movl	-68(%rbp), %eax
	movq	-56(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jge	.LBB7_16
# BB#15:                                # %if.then.28
                                        #   in Loop: Header=BB7_10 Depth=2
	movq	-56(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -68(%rbp)
.LBB7_16:                               # %if.end.30
                                        #   in Loop: Header=BB7_10 Depth=2
	movl	-72(%rbp), %eax
	movq	-56(%rbp), %rcx
	cmpl	28(%rcx), %eax
	jle	.LBB7_18
# BB#17:                                # %if.then.32
                                        #   in Loop: Header=BB7_10 Depth=2
	movq	-56(%rbp), %rax
	movl	28(%rax), %ecx
	movl	%ecx, -72(%rbp)
.LBB7_18:                               # %if.end.34
                                        #   in Loop: Header=BB7_10 Depth=2
	movl	-68(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jle	.LBB7_20
# BB#19:                                # %if.then.36
                                        #   in Loop: Header=BB7_10 Depth=2
	jmp	.LBB7_38
.LBB7_20:                               # %if.end.37
                                        #   in Loop: Header=BB7_10 Depth=2
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, display
	movq	display, %rax
	cmpl	$0, 7812(%rax)
	je	.LBB7_22
# BB#21:                                # %if.then.39
                                        #   in Loop: Header=BB7_10 Depth=2
	jmp	.LBB7_38
.LBB7_22:                               # %if.end.40
                                        #   in Loop: Header=BB7_10 Depth=2
	movl	-68(%rbp), %edi
	movl	-76(%rbp), %esi
	callq	GotoPos
	movq	-32(%rbp), %rdi
	callq	SetRendition
	xorl	%esi, %esi
	movl	%esi, %edi
	movq	-16(%rbp), %rax
	movslq	-68(%rbp), %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	movq	%rdi, %rdx
	subq	%rcx, %rdx
	addq	%rdx, %rax
	movq	-56(%rbp), %rcx
	movslq	16(%rcx), %rcx
	subq	%rcx, %rdi
	addq	%rdi, %rax
	movq	%rax, -64(%rbp)
	movq	display, %rax
	cmpl	$8, 496(%rax)
	jne	.LBB7_34
# BB#23:                                # %land.lhs.true.48
                                        #   in Loop: Header=BB7_10 Depth=2
	movq	-8(%rbp), %rax
	cmpl	$8, 24(%rax)
	je	.LBB7_34
# BB#24:                                # %land.lhs.true.50
                                        #   in Loop: Header=BB7_10 Depth=2
	movq	-32(%rbp), %rax
	movzbl	2(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB7_27
# BB#25:                                # %lor.lhs.false.52
                                        #   in Loop: Header=BB7_10 Depth=2
	movq	-32(%rbp), %rax
	movzbl	3(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB7_27
# BB#26:                                # %lor.lhs.false.55
                                        #   in Loop: Header=BB7_10 Depth=2
	movq	-8(%rbp), %rax
	cmpl	$0, 24(%rax)
	je	.LBB7_34
.LBB7_27:                               # %if.then.58
                                        #   in Loop: Header=BB7_10 Depth=2
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -88(%rbp)
	movw	4(%rax), %dx
	movw	%dx, -84(%rbp)
.LBB7_28:                               # %while.cond
                                        #   Parent Loop BB7_5 Depth=1
                                        #     Parent Loop BB7_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-68(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jg	.LBB7_33
# BB#29:                                # %while.body
                                        #   in Loop: Header=BB7_28 Depth=3
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movb	(%rax), %dl
	movb	%dl, -88(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$8, 24(%rax)
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movq	display, %rax
	cmpl	$8, 496(%rax)
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %edi
	cmpl	%edi, %esi
	je	.LBB7_31
# BB#30:                                # %cond.true
                                        #   in Loop: Header=BB7_28 Depth=3
	leaq	-88(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	24(%rax), %esi
	movq	display, %rax
	movl	496(%rax), %edx
	callq	recode_mchar
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB7_32
.LBB7_31:                               # %cond.false
                                        #   in Loop: Header=BB7_28 Depth=3
	leaq	-88(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB7_32
.LBB7_32:                               # %cond.end
                                        #   in Loop: Header=BB7_28 Depth=3
	movq	-96(%rbp), %rax         # 8-byte Reload
	movl	-68(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -68(%rbp)
	movl	-76(%rbp), %edx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	PutChar
	jmp	.LBB7_28
.LBB7_33:                               # %while.end
                                        #   in Loop: Header=BB7_10 Depth=2
	jmp	.LBB7_38
.LBB7_34:                               # %if.end.71
                                        #   in Loop: Header=BB7_10 Depth=2
	jmp	.LBB7_35
.LBB7_35:                               # %while.cond.72
                                        #   Parent Loop BB7_5 Depth=1
                                        #     Parent Loop BB7_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-68(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -68(%rbp)
	cmpl	-72(%rbp), %eax
	jg	.LBB7_37
# BB#36:                                # %while.body.76
                                        #   in Loop: Header=BB7_35 Depth=3
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -64(%rbp)
	movsbl	(%rax), %edi
	callq	PUTCHARLP
	jmp	.LBB7_35
.LBB7_37:                               # %while.end.79
                                        #   in Loop: Header=BB7_10 Depth=2
	jmp	.LBB7_38
.LBB7_38:                               # %for.inc
                                        #   in Loop: Header=BB7_10 Depth=2
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB7_10
.LBB7_39:                               # %for.end
                                        #   in Loop: Header=BB7_5 Depth=1
	jmp	.LBB7_40
.LBB7_40:                               # %for.inc.80
                                        #   in Loop: Header=BB7_5 Depth=1
	movq	-48(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB7_5
.LBB7_41:                               # %for.end.81
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	LPutStr, .Lfunc_end7-LPutStr
	.cfi_endproc

	.globl	LPutWinMsg
	.align	16, 0x90
	.type	LPutWinMsg,@function
LPutWinMsg:                             # @LPutWinMsg
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	%r9d, -40(%rbp)
	movl	-36(%rbp), %edx
	addl	-20(%rbp), %edx
	movq	-8(%rbp), %rcx
	cmpl	8(%rcx), %edx
	jle	.LBB8_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	subl	-36(%rbp), %ecx
	movl	%ecx, -20(%rbp)
.LBB8_2:                                # %if.end
	movq	-8(%rbp), %rax
	movb	88(%rax), %cl
	shlb	$7, %cl
	sarb	$7, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB8_4
# BB#3:                                 # %if.then.2
	movq	-8(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-36(%rbp), %eax
	addl	-20(%rbp), %eax
	subl	$1, %eax
	movl	-40(%rbp), %ecx
	movl	-40(%rbp), %r8d
	movl	%eax, %edx
	callq	LayPauseUpdateRegion
.LBB8_4:                                # %if.end.5
	movq	-16(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -72(%rbp)
	movl	-72(%rbp), %ecx
	cmpl	-20(%rbp), %ecx
	jle	.LBB8_6
# BB#5:                                 # %if.then.8
	movl	-20(%rbp), %eax
	movl	%eax, -72(%rbp)
.LBB8_6:                                # %if.end.9
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB8_7:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_12 Depth 2
                                        #       Child Loop BB8_29 Depth 3
	cmpq	$0, -48(%rbp)
	je	.LBB8_35
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB8_7 Depth=1
	movq	-8(%rbp), %rax
	movb	88(%rax), %cl
	shlb	$7, %cl
	sarb	$7, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB8_11
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB8_7 Depth=1
	movq	-48(%rbp), %rax
	cmpl	$0, 48(%rax)
	je	.LBB8_11
# BB#10:                                # %if.then.18
                                        #   in Loop: Header=BB8_7 Depth=1
	jmp	.LBB8_34
.LBB8_11:                               # %if.end.19
                                        #   in Loop: Header=BB8_7 Depth=1
	movq	-48(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB8_12:                               # %for.cond.20
                                        #   Parent Loop BB8_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_29 Depth 3
	cmpq	$0, -56(%rbp)
	je	.LBB8_33
# BB#13:                                # %for.body.22
                                        #   in Loop: Header=BB8_12 Depth=2
	movl	-40(%rbp), %eax
	movq	-56(%rbp), %rcx
	addl	20(%rcx), %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movq	-56(%rbp), %rcx
	cmpl	32(%rcx), %eax
	jl	.LBB8_15
# BB#14:                                # %lor.lhs.false
                                        #   in Loop: Header=BB8_12 Depth=2
	movl	-68(%rbp), %eax
	movq	-56(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jle	.LBB8_16
.LBB8_15:                               # %if.then.28
                                        #   in Loop: Header=BB8_12 Depth=2
	jmp	.LBB8_32
.LBB8_16:                               # %if.end.29
                                        #   in Loop: Header=BB8_12 Depth=2
	movl	-36(%rbp), %eax
	movq	-56(%rbp), %rcx
	addl	16(%rcx), %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	addl	-20(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -64(%rbp)
	movl	-60(%rbp), %eax
	movq	-56(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jge	.LBB8_18
# BB#17:                                # %if.then.35
                                        #   in Loop: Header=BB8_12 Depth=2
	movq	-56(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -60(%rbp)
.LBB8_18:                               # %if.end.37
                                        #   in Loop: Header=BB8_12 Depth=2
	movl	-64(%rbp), %eax
	movq	-56(%rbp), %rcx
	cmpl	28(%rcx), %eax
	jle	.LBB8_20
# BB#19:                                # %if.then.40
                                        #   in Loop: Header=BB8_12 Depth=2
	movq	-56(%rbp), %rax
	movl	28(%rax), %ecx
	movl	%ecx, -64(%rbp)
.LBB8_20:                               # %if.end.42
                                        #   in Loop: Header=BB8_12 Depth=2
	movl	-60(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jle	.LBB8_22
# BB#21:                                # %if.then.45
                                        #   in Loop: Header=BB8_12 Depth=2
	jmp	.LBB8_32
.LBB8_22:                               # %if.end.46
                                        #   in Loop: Header=BB8_12 Depth=2
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, display
	movq	display, %rax
	cmpl	$0, 7812(%rax)
	je	.LBB8_24
# BB#23:                                # %if.then.48
                                        #   in Loop: Header=BB8_12 Depth=2
	jmp	.LBB8_32
.LBB8_24:                               # %if.end.49
                                        #   in Loop: Header=BB8_12 Depth=2
	movl	-60(%rbp), %edi
	movl	-68(%rbp), %esi
	callq	GotoPos
	movq	-32(%rbp), %rdi
	callq	SetRendition
	movl	-64(%rbp), %esi
	movl	-36(%rbp), %eax
	movq	-56(%rbp), %rdi
	addl	16(%rdi), %eax
	subl	%eax, %esi
	addl	$1, %esi
	movl	%esi, -76(%rbp)
	movl	-76(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jle	.LBB8_26
# BB#25:                                # %if.then.56
                                        #   in Loop: Header=BB8_12 Depth=2
	movl	-72(%rbp), %eax
	movl	%eax, -76(%rbp)
.LBB8_26:                               # %if.end.57
                                        #   in Loop: Header=BB8_12 Depth=2
	movq	-16(%rbp), %rdi
	movl	-60(%rbp), %eax
	subl	-36(%rbp), %eax
	movq	-56(%rbp), %rcx
	subl	16(%rcx), %eax
	movl	-76(%rbp), %edx
	movl	%eax, %esi
	callq	PutWinMsg
	movl	-36(%rbp), %eax
	movq	-56(%rbp), %rcx
	addl	16(%rcx), %eax
	addl	-76(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	movq	-56(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jge	.LBB8_28
# BB#27:                                # %if.then.67
                                        #   in Loop: Header=BB8_12 Depth=2
	movq	-56(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -60(%rbp)
.LBB8_28:                               # %if.end.69
                                        #   in Loop: Header=BB8_12 Depth=2
	movq	display, %rax
	movl	476(%rax), %ecx
	movl	%ecx, -88(%rbp)
	movw	480(%rax), %dx
	movw	%dx, -84(%rbp)
	movl	-60(%rbp), %edi
	movl	-68(%rbp), %esi
	callq	GotoPos
	leaq	-88(%rbp), %rdi
	callq	SetRendition
.LBB8_29:                               # %while.cond
                                        #   Parent Loop BB8_7 Depth=1
                                        #     Parent Loop BB8_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-60(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -60(%rbp)
	cmpl	-64(%rbp), %eax
	jg	.LBB8_31
# BB#30:                                # %while.body
                                        #   in Loop: Header=BB8_29 Depth=3
	movl	$32, %edi
	callq	PUTCHARLP
	jmp	.LBB8_29
.LBB8_31:                               # %while.end
                                        #   in Loop: Header=BB8_12 Depth=2
	jmp	.LBB8_32
.LBB8_32:                               # %for.inc
                                        #   in Loop: Header=BB8_12 Depth=2
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB8_12
.LBB8_33:                               # %for.end
                                        #   in Loop: Header=BB8_7 Depth=1
	jmp	.LBB8_34
.LBB8_34:                               # %for.inc.72
                                        #   in Loop: Header=BB8_7 Depth=1
	movq	-48(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB8_7
.LBB8_35:                               # %for.end.73
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	LPutWinMsg, .Lfunc_end8-LPutWinMsg
	.cfi_endproc

	.globl	LClearLine
	.align	16, 0x90
	.type	LClearLine,@function
LClearLine:                             # @LClearLine
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	%r9, -32(%rbp)
	movl	-16(%rbp), %ecx
	movq	-8(%rbp), %rdi
	cmpl	8(%rdi), %ecx
	jl	.LBB9_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -16(%rbp)
.LBB9_2:                                # %if.end
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jl	.LBB9_4
# BB#3:                                 # %if.then.4
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -20(%rbp)
.LBB9_4:                                # %if.end.7
	movq	-8(%rbp), %rax
	movb	88(%rax), %cl
	shlb	$7, %cl
	sarb	$7, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB9_6
# BB#5:                                 # %if.then.8
	movq	-8(%rbp), %rdi
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	-12(%rbp), %r8d
	callq	LayPauseUpdateRegion
.LBB9_6:                                # %if.end.9
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB9_7:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_12 Depth 2
	cmpq	$0, -40(%rbp)
	je	.LBB9_34
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB9_7 Depth=1
	movq	-8(%rbp), %rax
	movb	88(%rax), %cl
	shlb	$7, %cl
	sarb	$7, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB9_11
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB9_7 Depth=1
	movq	-40(%rbp), %rax
	cmpl	$0, 48(%rax)
	je	.LBB9_11
# BB#10:                                # %if.then.18
                                        #   in Loop: Header=BB9_7 Depth=1
	jmp	.LBB9_33
.LBB9_11:                               # %if.end.19
                                        #   in Loop: Header=BB9_7 Depth=1
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB9_12:                               # %for.cond.20
                                        #   Parent Loop BB9_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -48(%rbp)
	je	.LBB9_32
# BB#13:                                # %for.body.22
                                        #   in Loop: Header=BB9_12 Depth=2
	movl	-16(%rbp), %eax
	movq	-48(%rbp), %rcx
	addl	16(%rcx), %eax
	movl	%eax, -56(%rbp)
	movl	-20(%rbp), %eax
	movq	-48(%rbp), %rcx
	addl	16(%rcx), %eax
	movl	%eax, -60(%rbp)
	movl	-12(%rbp), %eax
	movq	-48(%rbp), %rcx
	addl	20(%rcx), %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	32(%rcx), %eax
	jl	.LBB9_15
# BB#14:                                # %lor.lhs.false
                                        #   in Loop: Header=BB9_12 Depth=2
	movl	-52(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jle	.LBB9_16
.LBB9_15:                               # %if.then.28
                                        #   in Loop: Header=BB9_12 Depth=2
	jmp	.LBB9_31
.LBB9_16:                               # %if.end.29
                                        #   in Loop: Header=BB9_12 Depth=2
	movl	-56(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jge	.LBB9_18
# BB#17:                                # %if.then.31
                                        #   in Loop: Header=BB9_12 Depth=2
	movq	-48(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -56(%rbp)
.LBB9_18:                               # %if.end.33
                                        #   in Loop: Header=BB9_12 Depth=2
	movl	-60(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	28(%rcx), %eax
	jle	.LBB9_20
# BB#19:                                # %if.then.35
                                        #   in Loop: Header=BB9_12 Depth=2
	movq	-48(%rbp), %rax
	movl	28(%rax), %ecx
	movl	%ecx, -60(%rbp)
.LBB9_20:                               # %if.end.37
                                        #   in Loop: Header=BB9_12 Depth=2
	movl	-56(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jle	.LBB9_22
# BB#21:                                # %if.then.39
                                        #   in Loop: Header=BB9_12 Depth=2
	jmp	.LBB9_31
.LBB9_22:                               # %if.end.40
                                        #   in Loop: Header=BB9_12 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, display
	movq	display, %rax
	cmpl	$0, 7812(%rax)
	je	.LBB9_24
# BB#23:                                # %if.then.42
                                        #   in Loop: Header=BB9_12 Depth=2
	jmp	.LBB9_31
.LBB9_24:                               # %if.end.43
                                        #   in Loop: Header=BB9_12 Depth=2
	cmpq	$0, -32(%rbp)
	je	.LBB9_29
# BB#25:                                # %cond.true
                                        #   in Loop: Header=BB9_12 Depth=2
	movq	-8(%rbp), %rax
	cmpl	$8, 24(%rax)
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	display, %rax
	cmpl	$8, 496(%rax)
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	cmpl	%esi, %edx
	je	.LBB9_27
# BB#26:                                # %cond.true.50
                                        #   in Loop: Header=BB9_12 Depth=2
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	8(%rax), %esi
	movq	-8(%rbp), %rax
	movl	24(%rax), %edx
	movq	display, %rax
	movl	496(%rax), %ecx
	callq	recode_mline
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB9_28
.LBB9_27:                               # %cond.false
                                        #   in Loop: Header=BB9_12 Depth=2
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB9_28:                               # %cond.end
                                        #   in Loop: Header=BB9_12 Depth=2
	movq	-72(%rbp), %rax         # 8-byte Reload
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rdx
	subl	16(%rdx), %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	mloff
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB9_30
.LBB9_29:                               # %cond.false.57
                                        #   in Loop: Header=BB9_12 Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB9_30
.LBB9_30:                               # %cond.end.58
                                        #   in Loop: Header=BB9_12 Depth=2
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edx
	movl	-60(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movq	%rax, %rdi
	callq	ClearLine
.LBB9_31:                               # %for.inc
                                        #   in Loop: Header=BB9_12 Depth=2
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB9_12
.LBB9_32:                               # %for.end
                                        #   in Loop: Header=BB9_7 Depth=1
	jmp	.LBB9_33
.LBB9_33:                               # %for.inc.60
                                        #   in Loop: Header=BB9_7 Depth=1
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB9_7
.LBB9_34:                               # %for.end.61
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	LClearLine, .Lfunc_end9-LClearLine
	.cfi_endproc

	.globl	LClearArea
	.align	16, 0x90
	.type	LClearArea,@function
LClearArea:                             # @LClearArea
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movl	%eax, -32(%rbp)
	cmpl	$0, -16(%rbp)
	jl	.LBB10_2
# BB#1:                                 # %lor.lhs.false
	movl	-24(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB10_3
.LBB10_2:                               # %if.then
	jmp	.LBB10_49
.LBB10_3:                               # %if.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jl	.LBB10_5
# BB#4:                                 # %if.then.3
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -12(%rbp)
.LBB10_5:                               # %if.end.5
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jl	.LBB10_7
# BB#6:                                 # %if.then.8
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -20(%rbp)
.LBB10_7:                               # %if.end.11
	movq	-8(%rbp), %rax
	movb	88(%rax), %cl
	shlb	$7, %cl
	sarb	$7, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB10_9
# BB#8:                                 # %if.then.12
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-20(%rbp), %edx
	movl	-16(%rbp), %ecx
	movl	-24(%rbp), %r8d
	callq	LayPauseUpdateRegion
.LBB10_9:                               # %if.end.13
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB10_10:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_17 Depth 2
                                        #       Child Loop BB10_41 Depth 3
	cmpq	$0, -40(%rbp)
	je	.LBB10_49
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB10_10 Depth=1
	movq	-8(%rbp), %rax
	movb	88(%rax), %cl
	shlb	$7, %cl
	sarb	$7, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB10_14
# BB#12:                                # %land.lhs.true
                                        #   in Loop: Header=BB10_10 Depth=1
	movq	-40(%rbp), %rax
	cmpl	$0, 48(%rax)
	je	.LBB10_14
# BB#13:                                # %if.then.22
                                        #   in Loop: Header=BB10_10 Depth=1
	jmp	.LBB10_48
.LBB10_14:                              # %if.end.23
                                        #   in Loop: Header=BB10_10 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, display
	movq	display, %rax
	cmpl	$0, 7812(%rax)
	je	.LBB10_16
# BB#15:                                # %if.then.25
                                        #   in Loop: Header=BB10_10 Depth=1
	jmp	.LBB10_48
.LBB10_16:                              # %if.end.26
                                        #   in Loop: Header=BB10_10 Depth=1
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB10_17:                              # %for.cond.27
                                        #   Parent Loop BB10_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_41 Depth 3
	cmpq	$0, -48(%rbp)
	je	.LBB10_47
# BB#18:                                # %for.body.29
                                        #   in Loop: Header=BB10_17 Depth=2
	movl	-12(%rbp), %eax
	movq	-48(%rbp), %rcx
	addl	16(%rcx), %eax
	movl	%eax, -52(%rbp)
	movl	-20(%rbp), %eax
	movq	-48(%rbp), %rcx
	addl	16(%rcx), %eax
	movl	%eax, -60(%rbp)
	movl	-16(%rbp), %eax
	movq	-48(%rbp), %rcx
	addl	20(%rcx), %eax
	movl	%eax, -56(%rbp)
	movl	-24(%rbp), %eax
	movq	-48(%rbp), %rcx
	addl	20(%rcx), %eax
	movl	%eax, -64(%rbp)
	movl	-52(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jge	.LBB10_20
# BB#19:                                # %if.then.36
                                        #   in Loop: Header=BB10_17 Depth=2
	movq	-48(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -52(%rbp)
.LBB10_20:                              # %if.end.38
                                        #   in Loop: Header=BB10_17 Depth=2
	movl	-60(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	28(%rcx), %eax
	jle	.LBB10_22
# BB#21:                                # %if.then.40
                                        #   in Loop: Header=BB10_17 Depth=2
	movq	-48(%rbp), %rax
	movl	28(%rax), %ecx
	movl	%ecx, -60(%rbp)
.LBB10_22:                              # %if.end.42
                                        #   in Loop: Header=BB10_17 Depth=2
	movl	-52(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	28(%rcx), %eax
	jle	.LBB10_24
# BB#23:                                # %if.then.45
                                        #   in Loop: Header=BB10_17 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
.LBB10_24:                              # %if.end.46
                                        #   in Loop: Header=BB10_17 Depth=2
	movl	-60(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jge	.LBB10_26
# BB#25:                                # %if.then.49
                                        #   in Loop: Header=BB10_17 Depth=2
	movl	-64(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -64(%rbp)
.LBB10_26:                              # %if.end.50
                                        #   in Loop: Header=BB10_17 Depth=2
	movl	-56(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	32(%rcx), %eax
	jge	.LBB10_28
# BB#27:                                # %if.then.52
                                        #   in Loop: Header=BB10_17 Depth=2
	movq	-48(%rbp), %rax
	movl	32(%rax), %ecx
	movl	%ecx, -56(%rbp)
.LBB10_28:                              # %if.end.54
                                        #   in Loop: Header=BB10_17 Depth=2
	movl	-64(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jle	.LBB10_30
# BB#29:                                # %if.then.56
                                        #   in Loop: Header=BB10_17 Depth=2
	movq	-48(%rbp), %rax
	movl	36(%rax), %ecx
	movl	%ecx, -64(%rbp)
.LBB10_30:                              # %if.end.58
                                        #   in Loop: Header=BB10_17 Depth=2
	movl	-56(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jle	.LBB10_32
# BB#31:                                # %if.then.60
                                        #   in Loop: Header=BB10_17 Depth=2
	jmp	.LBB10_46
.LBB10_32:                              # %if.end.61
                                        #   in Loop: Header=BB10_17 Depth=2
	cmpl	$0, -12(%rbp)
	je	.LBB10_34
# BB#33:                                # %lor.lhs.false.63
                                        #   in Loop: Header=BB10_17 Depth=2
	movl	-56(%rbp), %eax
	movl	-16(%rbp), %ecx
	movq	-48(%rbp), %rdx
	addl	20(%rdx), %ecx
	cmpl	%ecx, %eax
	je	.LBB10_35
.LBB10_34:                              # %if.then.67
                                        #   in Loop: Header=BB10_17 Depth=2
	movq	-48(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -52(%rbp)
.LBB10_35:                              # %if.end.69
                                        #   in Loop: Header=BB10_17 Depth=2
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	je	.LBB10_37
# BB#36:                                # %lor.lhs.false.73
                                        #   in Loop: Header=BB10_17 Depth=2
	movl	-64(%rbp), %eax
	movl	-24(%rbp), %ecx
	movq	-48(%rbp), %rdx
	addl	20(%rdx), %ecx
	cmpl	%ecx, %eax
	je	.LBB10_38
.LBB10_37:                              # %if.then.77
                                        #   in Loop: Header=BB10_17 Depth=2
	movq	-48(%rbp), %rax
	movl	28(%rax), %ecx
	movl	%ecx, -60(%rbp)
.LBB10_38:                              # %if.end.79
                                        #   in Loop: Header=BB10_17 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, display
	movl	-52(%rbp), %edi
	movl	-56(%rbp), %esi
	movq	-48(%rbp), %rax
	movl	24(%rax), %edx
	movq	-48(%rbp), %rax
	movl	28(%rax), %ecx
	movl	-60(%rbp), %r8d
	movl	-64(%rbp), %r9d
	movl	-28(%rbp), %r10d
	movl	-32(%rbp), %r11d
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	callq	ClearArea
	movl	-20(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	cmpl	%edx, %ecx
	jne	.LBB10_45
# BB#39:                                # %land.lhs.true.86
                                        #   in Loop: Header=BB10_17 Depth=2
	movl	-60(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	16(%rcx), %edx
	addl	-20(%rbp), %edx
	cmpl	%edx, %eax
	jle	.LBB10_45
# BB#40:                                # %if.then.90
                                        #   in Loop: Header=BB10_17 Depth=2
	movabsq	$mchar_blank, %rdi
	callq	SetRendition
	movl	-56(%rbp), %eax
	movl	%eax, -68(%rbp)
.LBB10_41:                              # %for.cond.91
                                        #   Parent Loop BB10_10 Depth=1
                                        #     Parent Loop BB10_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-68(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jg	.LBB10_44
# BB#42:                                # %for.body.93
                                        #   in Loop: Header=BB10_41 Depth=3
	movl	-20(%rbp), %eax
	movq	-48(%rbp), %rcx
	addl	16(%rcx), %eax
	addl	$1, %eax
	movl	-68(%rbp), %esi
	movl	%eax, %edi
	callq	GotoPos
	movl	$124, %edi
	callq	PUTCHARLP
# BB#43:                                # %for.inc
                                        #   in Loop: Header=BB10_41 Depth=3
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB10_41
.LBB10_44:                              # %for.end
                                        #   in Loop: Header=BB10_17 Depth=2
	jmp	.LBB10_45
.LBB10_45:                              # %if.end.98
                                        #   in Loop: Header=BB10_17 Depth=2
	jmp	.LBB10_46
.LBB10_46:                              # %for.inc.99
                                        #   in Loop: Header=BB10_17 Depth=2
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB10_17
.LBB10_47:                              # %for.end.100
                                        #   in Loop: Header=BB10_10 Depth=1
	jmp	.LBB10_48
.LBB10_48:                              # %for.inc.101
                                        #   in Loop: Header=BB10_10 Depth=1
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB10_10
.LBB10_49:                              # %for.end.102
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	LClearArea, .Lfunc_end10-LClearArea
	.cfi_endproc

	.globl	LCDisplayLine
	.align	16, 0x90
	.type	LCDisplayLine,@function
LCDisplayLine:                          # @LCDisplayLine
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movq	-8(%rbp), %rsi
	movb	88(%rsi), %al
	shlb	$7, %al
	sarb	$7, %al
	movsbl	%al, %ecx
	cmpl	$0, %ecx
	je	.LBB11_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-20(%rbp), %r8d
	callq	LayPauseUpdateRegion
.LBB11_2:                               # %if.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB11_3:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_10 Depth 2
	cmpq	$0, -40(%rbp)
	je	.LBB11_31
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-8(%rbp), %rax
	movb	88(%rax), %cl
	shlb	$7, %cl
	sarb	$7, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB11_7
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-40(%rbp), %rax
	cmpl	$0, 48(%rax)
	je	.LBB11_7
# BB#6:                                 # %if.then.9
                                        #   in Loop: Header=BB11_3 Depth=1
	jmp	.LBB11_30
.LBB11_7:                               # %if.end.10
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, display
	movq	display, %rax
	cmpl	$0, 7812(%rax)
	je	.LBB11_9
# BB#8:                                 # %if.then.12
                                        #   in Loop: Header=BB11_3 Depth=1
	jmp	.LBB11_30
.LBB11_9:                               # %if.end.13
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB11_10:                              # %for.cond.14
                                        #   Parent Loop BB11_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -48(%rbp)
	je	.LBB11_29
# BB#11:                                # %for.body.16
                                        #   in Loop: Header=BB11_10 Depth=2
	movl	-24(%rbp), %eax
	movq	-48(%rbp), %rcx
	addl	16(%rcx), %eax
	movl	%eax, -52(%rbp)
	movl	-28(%rbp), %eax
	movq	-48(%rbp), %rcx
	addl	16(%rcx), %eax
	movl	%eax, -56(%rbp)
	movl	-20(%rbp), %eax
	movq	-48(%rbp), %rcx
	addl	20(%rcx), %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	32(%rcx), %eax
	jl	.LBB11_13
# BB#12:                                # %lor.lhs.false
                                        #   in Loop: Header=BB11_10 Depth=2
	movl	-60(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jle	.LBB11_14
.LBB11_13:                              # %if.then.21
                                        #   in Loop: Header=BB11_10 Depth=2
	jmp	.LBB11_28
.LBB11_14:                              # %if.end.22
                                        #   in Loop: Header=BB11_10 Depth=2
	movl	-52(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	24(%rcx), %eax
	jge	.LBB11_16
# BB#15:                                # %if.then.24
                                        #   in Loop: Header=BB11_10 Depth=2
	movq	-48(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -52(%rbp)
.LBB11_16:                              # %if.end.26
                                        #   in Loop: Header=BB11_10 Depth=2
	movl	-56(%rbp), %eax
	movq	-48(%rbp), %rcx
	cmpl	28(%rcx), %eax
	jle	.LBB11_18
# BB#17:                                # %if.then.28
                                        #   in Loop: Header=BB11_10 Depth=2
	movq	-48(%rbp), %rax
	movl	28(%rax), %ecx
	movl	%ecx, -56(%rbp)
.LBB11_18:                              # %if.end.30
                                        #   in Loop: Header=BB11_10 Depth=2
	movl	-52(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jle	.LBB11_20
# BB#19:                                # %if.then.32
                                        #   in Loop: Header=BB11_10 Depth=2
	jmp	.LBB11_28
.LBB11_20:                              # %if.end.33
                                        #   in Loop: Header=BB11_10 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, display
# BB#21:                                # %do.body
                                        #   in Loop: Header=BB11_10 Depth=2
	jmp	.LBB11_22
.LBB11_22:                              # %do.end
                                        #   in Loop: Header=BB11_10 Depth=2
	jmp	.LBB11_23
.LBB11_23:                              # %do.body.35
                                        #   in Loop: Header=BB11_10 Depth=2
	jmp	.LBB11_24
.LBB11_24:                              # %do.end.36
                                        #   in Loop: Header=BB11_10 Depth=2
	movabsq	$mline_null, %rax
	movabsq	$mline_blank, %rcx
	cmpl	$0, -32(%rbp)
	cmovneq	%rcx, %rax
	movq	-8(%rbp), %rcx
	cmpl	$8, 24(%rcx)
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movq	display, %rcx
	cmpl	$8, 496(%rcx)
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %edi
	cmpl	%edi, %esi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	je	.LBB11_26
# BB#25:                                # %cond.true
                                        #   in Loop: Header=BB11_10 Depth=2
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	8(%rax), %esi
	movq	-8(%rbp), %rax
	movl	24(%rax), %edx
	movq	display, %rax
	movl	496(%rax), %ecx
	callq	recode_mline
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB11_27
.LBB11_26:                              # %cond.false
                                        #   in Loop: Header=BB11_10 Depth=2
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB11_27:                              # %cond.end
                                        #   in Loop: Header=BB11_10 Depth=2
	movq	-80(%rbp), %rax         # 8-byte Reload
	xorl	%ecx, %ecx
	movq	-48(%rbp), %rdx
	subl	16(%rdx), %ecx
	movq	%rax, %rdi
	movl	%ecx, %esi
	callq	mloff
	movl	-60(%rbp), %edx
	movl	-52(%rbp), %ecx
	movl	-56(%rbp), %r8d
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	DisplayLine
.LBB11_28:                              # %for.inc
                                        #   in Loop: Header=BB11_10 Depth=2
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB11_10
.LBB11_29:                              # %for.end
                                        #   in Loop: Header=BB11_3 Depth=1
	jmp	.LBB11_30
.LBB11_30:                              # %for.inc.48
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB11_3
.LBB11_31:                              # %for.end.49
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	LCDisplayLine, .Lfunc_end11-LCDisplayLine
	.cfi_endproc

	.globl	LCDisplayLineWrap
	.align	16, 0x90
	.type	LCDisplayLineWrap,@function
LCDisplayLineWrap:                      # @LCDisplayLineWrap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movb	(%rax), %cl
	movb	%cl, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movb	(%rax), %cl
	movb	%cl, -39(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movb	(%rax), %cl
	movb	%cl, -38(%rbp)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movb	(%rax), %cl
	movb	%cl, -37(%rbp)
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movb	(%rax), %cl
	movb	%cl, -36(%rbp)
	movb	$0, -35(%rbp)
# BB#2:                                 # %do.end
	movq	-8(%rbp), %rax
	cmpl	$8, 24(%rax)
	jne	.LBB12_5
# BB#3:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movzbl	1(%rax), %ecx
	cmpl	$255, %ecx
	jne	.LBB12_8
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movzbl	1(%rax), %ecx
	cmpl	$255, %ecx
	je	.LBB12_7
	jmp	.LBB12_8
.LBB12_5:                               # %cond.false
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movzbl	(%rax), %ecx
	andl	$31, %ecx
	cmpl	$0, %ecx
	je	.LBB12_8
# BB#6:                                 # %land.lhs.true.24
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movzbl	(%rax), %ecx
	andl	$224, %ecx
	cmpl	$0, %ecx
	jne	.LBB12_8
.LBB12_7:                               # %if.then
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movb	1(%rax), %cl
	movb	%cl, -35(%rbp)
	movl	-24(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -24(%rbp)
.LBB12_8:                               # %if.end
	leaq	-40(%rbp), %rsi
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, %edx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	LWrapChar
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jg	.LBB12_10
# BB#9:                                 # %if.then.37
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movl	-32(%rbp), %r9d
	callq	LCDisplayLine
.LBB12_10:                              # %if.end.38
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	LCDisplayLineWrap, .Lfunc_end12-LCDisplayLineWrap
	.cfi_endproc

	.globl	LWrapChar
	.align	16, 0x90
	.type	LWrapChar,@function
LWrapChar:                              # @LWrapChar
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movq	-8(%rbp), %rsi
	movb	88(%rsi), %al
	shlb	$7, %al
	sarb	$7, %al
	movsbl	%al, %ecx
	cmpl	$0, %ecx
	je	.LBB13_2
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	subl	$1, %ecx
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %r8d
	movl	%edx, -108(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-108(%rbp), %ecx        # 4-byte Reload
	callq	LayPauseUpdateRegion
.LBB13_2:                               # %if.end
	xorl	%eax, %eax
	movl	$256, %ecx              # imm = 0x100
	movq	-16(%rbp), %rdx
	movzbl	4(%rdx), %esi
	andl	$240, %esi
	sarl	$4, %esi
	movq	-16(%rbp), %rdx
	movzbl	1(%rdx), %edi
	andl	$128, %edi
	cmpl	$0, %edi
	cmovnel	%ecx, %eax
	orl	%eax, %esi
	movl	%esi, -104(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-28(%rbp), %eax
	je	.LBB13_49
# BB#3:                                 # %if.then.5
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	12(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jne	.LBB13_5
# BB#4:                                 # %cond.true
	movl	-20(%rbp), %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB13_6
.LBB13_5:                               # %cond.false
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB13_6:                               # %cond.end
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, -84(%rbp)
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
.LBB13_7:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_14 Depth 2
                                        #     Child Loop BB13_25 Depth 2
	cmpq	$0, -40(%rbp)
	je	.LBB13_48
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB13_7 Depth=1
	movq	-8(%rbp), %rax
	movb	88(%rax), %cl
	shlb	$7, %cl
	sarb	$7, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB13_11
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB13_7 Depth=1
	movq	-40(%rbp), %rax
	cmpl	$0, 48(%rax)
	je	.LBB13_11
# BB#10:                                # %if.then.18
                                        #   in Loop: Header=BB13_7 Depth=1
	jmp	.LBB13_47
.LBB13_11:                              # %if.end.19
                                        #   in Loop: Header=BB13_7 Depth=1
	movl	$0, -88(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, display
	movq	display, %rax
	cmpl	$0, 7812(%rax)
	je	.LBB13_13
# BB#12:                                # %if.then.21
                                        #   in Loop: Header=BB13_7 Depth=1
	jmp	.LBB13_47
.LBB13_13:                              # %if.end.22
                                        #   in Loop: Header=BB13_7 Depth=1
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB13_14:                              # %for.cond.23
                                        #   Parent Loop BB13_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -64(%rbp)
	je	.LBB13_22
# BB#15:                                # %for.body.25
                                        #   in Loop: Header=BB13_14 Depth=2
	movl	-20(%rbp), %eax
	movq	-64(%rbp), %rcx
	addl	20(%rcx), %eax
	movl	%eax, -88(%rbp)
	movl	-84(%rbp), %eax
	movq	-64(%rbp), %rcx
	addl	20(%rcx), %eax
	movl	%eax, -92(%rbp)
	movl	-92(%rbp), %eax
	movq	-64(%rbp), %rcx
	cmpl	32(%rcx), %eax
	jl	.LBB13_20
# BB#16:                                # %land.lhs.true.31
                                        #   in Loop: Header=BB13_14 Depth=2
	movl	-92(%rbp), %eax
	movq	-64(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jg	.LBB13_20
# BB#17:                                # %land.lhs.true.34
                                        #   in Loop: Header=BB13_14 Depth=2
	movq	-64(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-64(%rbp), %rax
	cmpl	24(%rax), %ecx
	jl	.LBB13_20
# BB#18:                                # %land.lhs.true.37
                                        #   in Loop: Header=BB13_14 Depth=2
	movq	-64(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-64(%rbp), %rax
	cmpl	28(%rax), %ecx
	jg	.LBB13_20
# BB#19:                                # %if.then.41
                                        #   in Loop: Header=BB13_7 Depth=1
	jmp	.LBB13_22
.LBB13_20:                              # %if.end.42
                                        #   in Loop: Header=BB13_14 Depth=2
	jmp	.LBB13_21
.LBB13_21:                              # %for.inc
                                        #   in Loop: Header=BB13_14 Depth=2
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB13_14
.LBB13_22:                              # %for.end
                                        #   in Loop: Header=BB13_7 Depth=1
	cmpq	$0, -64(%rbp)
	jne	.LBB13_24
# BB#23:                                # %if.then.45
                                        #   in Loop: Header=BB13_7 Depth=1
	jmp	.LBB13_47
.LBB13_24:                              # %if.end.46
                                        #   in Loop: Header=BB13_7 Depth=1
	movq	-40(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -72(%rbp)
.LBB13_25:                              # %for.cond.48
                                        #   Parent Loop BB13_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -72(%rbp)
	je	.LBB13_33
# BB#26:                                # %for.body.50
                                        #   in Loop: Header=BB13_25 Depth=2
	movl	-88(%rbp), %eax
	movq	-72(%rbp), %rcx
	cmpl	32(%rcx), %eax
	jl	.LBB13_31
# BB#27:                                # %land.lhs.true.54
                                        #   in Loop: Header=BB13_25 Depth=2
	movl	-88(%rbp), %eax
	movq	-72(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jg	.LBB13_31
# BB#28:                                # %land.lhs.true.58
                                        #   in Loop: Header=BB13_25 Depth=2
	movq	-72(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-8(%rbp), %rax
	addl	8(%rax), %ecx
	subl	$1, %ecx
	movq	-72(%rbp), %rax
	cmpl	24(%rax), %ecx
	jl	.LBB13_31
# BB#29:                                # %land.lhs.true.66
                                        #   in Loop: Header=BB13_25 Depth=2
	movq	-72(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-8(%rbp), %rax
	addl	8(%rax), %ecx
	subl	$1, %ecx
	movq	-72(%rbp), %rax
	cmpl	28(%rax), %ecx
	jg	.LBB13_31
# BB#30:                                # %if.then.74
                                        #   in Loop: Header=BB13_7 Depth=1
	jmp	.LBB13_33
.LBB13_31:                              # %if.end.75
                                        #   in Loop: Header=BB13_25 Depth=2
	jmp	.LBB13_32
.LBB13_32:                              # %for.inc.76
                                        #   in Loop: Header=BB13_25 Depth=2
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB13_25
.LBB13_33:                              # %for.end.78
                                        #   in Loop: Header=BB13_7 Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB13_36
# BB#34:                                # %lor.lhs.false
                                        #   in Loop: Header=BB13_7 Depth=1
	cmpl	$0, -32(%rbp)
	je	.LBB13_42
# BB#35:                                # %land.lhs.true.82
                                        #   in Loop: Header=BB13_7 Depth=1
	movq	-64(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-8(%rbp), %rax
	addl	8(%rax), %ecx
	subl	$1, %ecx
	movq	-64(%rbp), %rax
	cmpl	36(%rax), %ecx
	jle	.LBB13_42
.LBB13_36:                              # %if.then.90
                                        #   in Loop: Header=BB13_7 Depth=1
	jmp	.LBB13_37
.LBB13_37:                              # %do.body
                                        #   in Loop: Header=BB13_7 Depth=1
	jmp	.LBB13_38
.LBB13_38:                              # %do.end
                                        #   in Loop: Header=BB13_7 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	$0, 72(%rax)
	cmpl	$0, -32(%rbp)
	je	.LBB13_40
# BB#39:                                # %if.then.95
                                        #   in Loop: Header=BB13_7 Depth=1
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-84(%rbp), %ecx
	callq	LInsChar
	jmp	.LBB13_41
.LBB13_40:                              # %if.else
                                        #   in Loop: Header=BB13_7 Depth=1
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-84(%rbp), %ecx
	callq	LPutChar
.LBB13_41:                              # %if.end.96
                                        #   in Loop: Header=BB13_7 Depth=1
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 72(%rcx)
	jmp	.LBB13_46
.LBB13_42:                              # %if.else.99
                                        #   in Loop: Header=BB13_7 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$8, 24(%rax)
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	display, %rax
	cmpl	$8, 496(%rax)
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	cmpl	%esi, %edx
	je	.LBB13_44
# BB#43:                                # %cond.true.106
                                        #   in Loop: Header=BB13_7 Depth=1
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	24(%rax), %esi
	movq	display, %rax
	movl	496(%rax), %edx
	callq	recode_mchar
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB13_45
.LBB13_44:                              # %cond.false.109
                                        #   in Loop: Header=BB13_7 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB13_45:                              # %cond.end.110
                                        #   in Loop: Header=BB13_7 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	-64(%rbp), %rcx
	movl	16(%rcx), %edx
	movq	-8(%rbp), %rcx
	addl	8(%rcx), %edx
	movl	-88(%rbp), %esi
	movq	-64(%rbp), %rcx
	movl	16(%rcx), %ecx
	movq	-64(%rbp), %rdi
	movl	16(%rdi), %r9d
	movq	-8(%rbp), %rdi
	addl	8(%rdi), %r9d
	subl	$1, %r9d
	movl	-32(%rbp), %r10d
	movq	%rax, %rdi
	movl	%esi, -124(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-124(%rbp), %edx        # 4-byte Reload
	movl	$-1, (%rsp)
	movl	%r10d, 8(%rsp)
	callq	WrapChar
.LBB13_46:                              # %if.end.120
                                        #   in Loop: Header=BB13_7 Depth=1
	jmp	.LBB13_47
.LBB13_47:                              # %for.inc.121
                                        #   in Loop: Header=BB13_7 Depth=1
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB13_7
.LBB13_48:                              # %for.end.123
	jmp	.LBB13_84
.LBB13_49:                              # %if.else.124
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB13_50:                              # %for.cond.126
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_57 Depth 2
	cmpq	$0, -40(%rbp)
	je	.LBB13_83
# BB#51:                                # %for.body.128
                                        #   in Loop: Header=BB13_50 Depth=1
	movq	-8(%rbp), %rax
	movb	88(%rax), %cl
	shlb	$7, %cl
	sarb	$7, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB13_54
# BB#52:                                # %land.lhs.true.135
                                        #   in Loop: Header=BB13_50 Depth=1
	movq	-40(%rbp), %rax
	cmpl	$0, 48(%rax)
	je	.LBB13_54
# BB#53:                                # %if.then.138
                                        #   in Loop: Header=BB13_50 Depth=1
	jmp	.LBB13_82
.LBB13_54:                              # %if.end.139
                                        #   in Loop: Header=BB13_50 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, display
	movq	display, %rax
	cmpl	$0, 7812(%rax)
	je	.LBB13_56
# BB#55:                                # %if.then.143
                                        #   in Loop: Header=BB13_50 Depth=1
	jmp	.LBB13_82
.LBB13_56:                              # %if.end.144
                                        #   in Loop: Header=BB13_50 Depth=1
	movq	-40(%rbp), %rax
	addq	$56, %rax
	movq	%rax, -80(%rbp)
.LBB13_57:                              # %for.cond.146
                                        #   Parent Loop BB13_50 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	cmpq	$0, %rax
	je	.LBB13_65
# BB#58:                                # %for.body.148
                                        #   in Loop: Header=BB13_57 Depth=2
	movl	-28(%rbp), %eax
	movq	-64(%rbp), %rcx
	addl	20(%rcx), %eax
	movl	%eax, -92(%rbp)
	movl	-92(%rbp), %eax
	movq	-64(%rbp), %rcx
	cmpl	32(%rcx), %eax
	jl	.LBB13_63
# BB#59:                                # %land.lhs.true.154
                                        #   in Loop: Header=BB13_57 Depth=2
	movl	-92(%rbp), %eax
	movq	-64(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jg	.LBB13_63
# BB#60:                                # %land.lhs.true.158
                                        #   in Loop: Header=BB13_57 Depth=2
	movq	-64(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-64(%rbp), %rax
	cmpl	24(%rax), %ecx
	jl	.LBB13_63
# BB#61:                                # %land.lhs.true.163
                                        #   in Loop: Header=BB13_57 Depth=2
	movq	-64(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-8(%rbp), %rax
	addl	8(%rax), %ecx
	subl	$1, %ecx
	movq	-64(%rbp), %rax
	cmpl	28(%rax), %ecx
	jg	.LBB13_63
# BB#62:                                # %if.then.171
                                        #   in Loop: Header=BB13_50 Depth=1
	jmp	.LBB13_65
.LBB13_63:                              # %if.end.172
                                        #   in Loop: Header=BB13_57 Depth=2
	jmp	.LBB13_64
.LBB13_64:                              # %for.inc.173
                                        #   in Loop: Header=BB13_57 Depth=2
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB13_57
.LBB13_65:                              # %for.end.175
                                        #   in Loop: Header=BB13_50 Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB13_67
# BB#66:                                # %if.then.177
                                        #   in Loop: Header=BB13_50 Depth=1
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB13_67:                              # %if.end.179
                                        #   in Loop: Header=BB13_50 Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB13_74
# BB#68:                                # %if.then.182
                                        #   in Loop: Header=BB13_50 Depth=1
	movl	$1, %esi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	$0, 72(%rax)
	movq	-8(%rbp), %rdi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	movl	-104(%rbp), %r8d
	callq	LScrollV
	cmpq	$0, -64(%rbp)
	jne	.LBB13_73
# BB#69:                                # %if.then.188
                                        #   in Loop: Header=BB13_50 Depth=1
	cmpl	$0, -32(%rbp)
	je	.LBB13_71
# BB#70:                                # %if.then.190
                                        #   in Loop: Header=BB13_50 Depth=1
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%eax, %r8d
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-28(%rbp), %ecx
	callq	LInsChar
	jmp	.LBB13_72
.LBB13_71:                              # %if.else.191
                                        #   in Loop: Header=BB13_50 Depth=1
	xorl	%edx, %edx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-28(%rbp), %ecx
	callq	LPutChar
.LBB13_72:                              # %if.end.192
                                        #   in Loop: Header=BB13_50 Depth=1
	jmp	.LBB13_73
.LBB13_73:                              # %if.end.193
                                        #   in Loop: Header=BB13_50 Depth=1
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 72(%rcx)
.LBB13_74:                              # %if.end.196
                                        #   in Loop: Header=BB13_50 Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB13_81
# BB#75:                                # %if.then.198
                                        #   in Loop: Header=BB13_50 Depth=1
	movq	-64(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	-24(%rbp), %edx
	movq	-64(%rbp), %rax
	addl	20(%rax), %edx
	movl	%edx, -96(%rbp)
	movl	-28(%rbp), %edx
	movq	-64(%rbp), %rax
	addl	20(%rax), %edx
	movl	%edx, -100(%rbp)
	movl	-96(%rbp), %edx
	movq	-64(%rbp), %rax
	cmpl	32(%rax), %edx
	jge	.LBB13_77
# BB#76:                                # %if.then.206
                                        #   in Loop: Header=BB13_50 Depth=1
	movq	-64(%rbp), %rax
	movl	32(%rax), %ecx
	movl	%ecx, -96(%rbp)
.LBB13_77:                              # %if.end.208
                                        #   in Loop: Header=BB13_50 Depth=1
	movq	-8(%rbp), %rax
	cmpl	$8, 24(%rax)
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movq	display, %rax
	cmpl	$8, 496(%rax)
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %esi
	cmpl	%esi, %edx
	je	.LBB13_79
# BB#78:                                # %cond.true.217
                                        #   in Loop: Header=BB13_50 Depth=1
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	24(%rax), %esi
	movq	display, %rax
	movl	496(%rax), %edx
	callq	recode_mchar
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB13_80
.LBB13_79:                              # %cond.false.221
                                        #   in Loop: Header=BB13_50 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB13_80:                              # %cond.end.222
                                        #   in Loop: Header=BB13_50 Depth=1
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-64(%rbp), %rcx
	movl	16(%rcx), %edx
	movq	-8(%rbp), %rcx
	addl	8(%rcx), %edx
	movl	-100(%rbp), %esi
	movq	-64(%rbp), %rcx
	movl	16(%rcx), %ecx
	movl	-96(%rbp), %r8d
	movq	-64(%rbp), %rdi
	movl	16(%rdi), %r9d
	movq	-8(%rbp), %rdi
	addl	8(%rdi), %r9d
	subl	$1, %r9d
	movl	-100(%rbp), %r10d
	movl	-32(%rbp), %r11d
	movq	%rax, %rdi
	movl	%esi, -140(%rbp)        # 4-byte Spill
	movl	%edx, %esi
	movl	-140(%rbp), %edx        # 4-byte Reload
	movl	%r10d, (%rsp)
	movl	%r11d, 8(%rsp)
	callq	WrapChar
.LBB13_81:                              # %if.end.232
                                        #   in Loop: Header=BB13_50 Depth=1
	jmp	.LBB13_82
.LBB13_82:                              # %for.inc.233
                                        #   in Loop: Header=BB13_50 Depth=1
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB13_50
.LBB13_83:                              # %for.end.235
	jmp	.LBB13_84
.LBB13_84:                              # %if.end.236
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	LWrapChar, .Lfunc_end13-LWrapChar
	.cfi_endproc

	.globl	LSetRendition
	.align	16, 0x90
	.type	LSetRendition,@function
LSetRendition:                          # @LSetRendition
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -24(%rbp)
.LBB14_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB14_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, display
	movq	display, %rax
	cmpl	$0, 7812(%rax)
	je	.LBB14_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB14_1 Depth=1
	jmp	.LBB14_5
.LBB14_4:                               # %if.end
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	SetRendition
.LBB14_5:                               # %for.inc
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB14_1
.LBB14_6:                               # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	LSetRendition, .Lfunc_end14-LSetRendition
	.cfi_endproc

	.globl	LCursorVisibility
	.align	16, 0x90
	.type	LCursorVisibility,@function
LCursorVisibility:                      # @LCursorVisibility
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -24(%rbp)
.LBB15_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB15_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, display
	movq	display, %rax
	cmpl	$0, 7812(%rax)
	je	.LBB15_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_7
.LBB15_4:                               # %if.end
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-24(%rbp), %rax
	movq	display, %rcx
	cmpq	336(%rcx), %rax
	je	.LBB15_6
# BB#5:                                 # %if.then.2
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_7
.LBB15_6:                               # %if.end.3
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-12(%rbp), %edi
	callq	CursorVisibility
.LBB15_7:                               # %for.inc
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB15_1
.LBB15_8:                               # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	LCursorVisibility, .Lfunc_end15-LCursorVisibility
	.cfi_endproc

	.globl	LSetFlow
	.align	16, 0x90
	.type	LSetFlow,@function
LSetFlow:                               # @LSetFlow
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -24(%rbp)
.LBB16_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB16_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, display
	movq	-24(%rbp), %rax
	movq	display, %rcx
	cmpq	336(%rcx), %rax
	je	.LBB16_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_5
.LBB16_4:                               # %if.end
                                        #   in Loop: Header=BB16_1 Depth=1
	movl	-12(%rbp), %edi
	callq	SetFlow
.LBB16_5:                               # %for.inc
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB16_1
.LBB16_6:                               # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	LSetFlow, .Lfunc_end16-LSetFlow
	.cfi_endproc

	.globl	LKeypadMode
	.align	16, 0x90
	.type	LKeypadMode,@function
LKeypadMode:                            # @LKeypadMode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -24(%rbp)
.LBB17_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB17_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, display
	movq	display, %rax
	cmpl	$0, 7812(%rax)
	je	.LBB17_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB17_1 Depth=1
	jmp	.LBB17_7
.LBB17_4:                               # %if.end
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-24(%rbp), %rax
	movq	display, %rcx
	cmpq	336(%rcx), %rax
	je	.LBB17_6
# BB#5:                                 # %if.then.2
                                        #   in Loop: Header=BB17_1 Depth=1
	jmp	.LBB17_7
.LBB17_6:                               # %if.end.3
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-12(%rbp), %edi
	callq	KeypadMode
.LBB17_7:                               # %for.inc
                                        #   in Loop: Header=BB17_1 Depth=1
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB17_1
.LBB17_8:                               # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	LKeypadMode, .Lfunc_end17-LKeypadMode
	.cfi_endproc

	.globl	LCursorkeysMode
	.align	16, 0x90
	.type	LCursorkeysMode,@function
LCursorkeysMode:                        # @LCursorkeysMode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -24(%rbp)
.LBB18_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB18_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, display
	movq	display, %rax
	cmpl	$0, 7812(%rax)
	je	.LBB18_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB18_1 Depth=1
	jmp	.LBB18_7
.LBB18_4:                               # %if.end
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-24(%rbp), %rax
	movq	display, %rcx
	cmpq	336(%rcx), %rax
	je	.LBB18_6
# BB#5:                                 # %if.then.2
                                        #   in Loop: Header=BB18_1 Depth=1
	jmp	.LBB18_7
.LBB18_6:                               # %if.end.3
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-12(%rbp), %edi
	callq	CursorkeysMode
.LBB18_7:                               # %for.inc
                                        #   in Loop: Header=BB18_1 Depth=1
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB18_1
.LBB18_8:                               # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	LCursorkeysMode, .Lfunc_end18-LCursorkeysMode
	.cfi_endproc

	.globl	LMouseMode
	.align	16, 0x90
	.type	LMouseMode,@function
LMouseMode:                             # @LMouseMode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -24(%rbp)
.LBB19_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB19_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, display
	movq	display, %rax
	cmpl	$0, 7812(%rax)
	je	.LBB19_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB19_1 Depth=1
	jmp	.LBB19_7
.LBB19_4:                               # %if.end
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-24(%rbp), %rax
	movq	display, %rcx
	cmpq	336(%rcx), %rax
	je	.LBB19_6
# BB#5:                                 # %if.then.2
                                        #   in Loop: Header=BB19_1 Depth=1
	jmp	.LBB19_7
.LBB19_6:                               # %if.end.3
                                        #   in Loop: Header=BB19_1 Depth=1
	movl	-12(%rbp), %edi
	callq	MouseMode
.LBB19_7:                               # %for.inc
                                        #   in Loop: Header=BB19_1 Depth=1
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB19_1
.LBB19_8:                               # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	LMouseMode, .Lfunc_end19-LMouseMode
	.cfi_endproc

	.globl	LClearAll
	.align	16, 0x90
	.type	LClearAll,@function
LClearAll:                              # @LClearAll
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %esi
	subl	$1, %esi
	movq	-8(%rbp), %rcx
	movl	12(%rcx), %edx
	subl	$1, %edx
	movl	-12(%rbp), %r8d
	movl	%esi, -16(%rbp)         # 4-byte Spill
	movl	%eax, %esi
	movl	%edx, -20(%rbp)         # 4-byte Spill
	movl	%eax, %edx
	movl	-16(%rbp), %ecx         # 4-byte Reload
	movl	-20(%rbp), %r9d         # 4-byte Reload
	movl	%r8d, -24(%rbp)         # 4-byte Spill
	movl	%r9d, %r8d
	movl	%eax, %r9d
	movl	-24(%rbp), %eax         # 4-byte Reload
	movl	%eax, (%rsp)
	callq	LClearArea
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	LClearAll, .Lfunc_end20-LClearAll
	.cfi_endproc

	.globl	LRefreshAll
	.align	16, 0x90
	.type	LRefreshAll,@function
LRefreshAll:                            # @LRefreshAll
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB21_2
.LBB21_2:                               # %do.end
	movq	flayer, %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, flayer
	cmpl	$0, -12(%rbp)
	jne	.LBB21_4
# BB#3:                                 # %if.then
	xorl	%eax, %eax
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %edx
	subl	$1, %edx
	movq	-8(%rbp), %rcx
	movl	12(%rcx), %esi
	subl	$1, %esi
	movl	%esi, -32(%rbp)         # 4-byte Spill
	movl	%eax, %esi
	movl	%edx, -36(%rbp)         # 4-byte Spill
	movl	%eax, %edx
	movl	-36(%rbp), %ecx         # 4-byte Reload
	movl	-32(%rbp), %r8d         # 4-byte Reload
	movl	%eax, %r9d
	movl	$0, (%rsp)
	callq	LClearArea
.LBB21_4:                               # %if.end
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	$1, %ecx
	movq	flayer, %rdx
	movq	32(%rdx), %rdx
	movl	%eax, %edi
	movl	%eax, %esi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movq	-48(%rbp), %r8          # 8-byte Reload
	callq	*16(%r8)
	movl	$0, -28(%rbp)
.LBB21_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jge	.LBB21_8
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB21_5 Depth=1
	xorl	%esi, %esi
	movl	$1, %ecx
	movq	flayer, %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movl	-28(%rbp), %edi
	movq	-8(%rbp), %rdx
	movl	8(%rdx), %r8d
	subl	$1, %r8d
	movl	%r8d, %edx
	callq	*%rax
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB21_5 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB21_5
.LBB21_8:                               # %for.end
	movq	-24(%rbp), %rax
	movq	%rax, flayer
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	LRefreshAll, .Lfunc_end21-LRefreshAll
	.cfi_endproc

	.globl	LMsg
	.align	16, 0x90
	.type	LMsg,@function
LMsg:                                   # @LMsg
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	subq	$8640, %rsp             # imm = 0x21C0
	testb	%al, %al
	movaps	%xmm7, -8448(%rbp)      # 16-byte Spill
	movaps	%xmm6, -8464(%rbp)      # 16-byte Spill
	movaps	%xmm5, -8480(%rbp)      # 16-byte Spill
	movaps	%xmm4, -8496(%rbp)      # 16-byte Spill
	movaps	%xmm3, -8512(%rbp)      # 16-byte Spill
	movaps	%xmm2, -8528(%rbp)      # 16-byte Spill
	movaps	%xmm1, -8544(%rbp)      # 16-byte Spill
	movaps	%xmm0, -8560(%rbp)      # 16-byte Spill
	movl	%edi, -8564(%rbp)       # 4-byte Spill
	movq	%r9, -8576(%rbp)        # 8-byte Spill
	movq	%r8, -8584(%rbp)        # 8-byte Spill
	movq	%rcx, -8592(%rbp)       # 8-byte Spill
	movq	%rdx, -8600(%rbp)       # 8-byte Spill
	movq	%rsi, -8608(%rbp)       # 8-byte Spill
	je	.LBB22_18
# BB#17:                                # %entry
	movaps	-8560(%rbp), %xmm0      # 16-byte Reload
	movaps	%xmm0, -8384(%rbp)
	movaps	-8544(%rbp), %xmm1      # 16-byte Reload
	movaps	%xmm1, -8368(%rbp)
	movaps	-8528(%rbp), %xmm2      # 16-byte Reload
	movaps	%xmm2, -8352(%rbp)
	movaps	-8512(%rbp), %xmm3      # 16-byte Reload
	movaps	%xmm3, -8336(%rbp)
	movaps	-8496(%rbp), %xmm4      # 16-byte Reload
	movaps	%xmm4, -8320(%rbp)
	movaps	-8480(%rbp), %xmm5      # 16-byte Reload
	movaps	%xmm5, -8304(%rbp)
	movaps	-8464(%rbp), %xmm6      # 16-byte Reload
	movaps	%xmm6, -8288(%rbp)
	movaps	-8448(%rbp), %xmm7      # 16-byte Reload
	movaps	%xmm7, -8272(%rbp)
.LBB22_18:                              # %entry
	movq	-8576(%rbp), %rax       # 8-byte Reload
	movq	%rax, -8392(%rbp)
	movq	-8584(%rbp), %rcx       # 8-byte Reload
	movq	%rcx, -8400(%rbp)
	movq	-8592(%rbp), %rdx       # 8-byte Reload
	movq	%rdx, -8408(%rbp)
	movq	-8600(%rbp), %rsi       # 8-byte Reload
	movq	%rsi, -8416(%rbp)
	movq	-8608(%rbp), %rdi       # 8-byte Reload
	movl	-8564(%rbp), %r8d       # 4-byte Reload
	leaq	-48(%rbp), %r9
	leaq	-8240(%rbp), %r10
	movl	%r8d, -4(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%r10, -8248(%rbp)
	leaq	-8432(%rbp), %rdi
	movq	%rdi, 16(%r9)
	leaq	16(%rbp), %rdi
	movq	%rdi, 8(%r9)
	movl	$48, 4(%r9)
	movl	$16, (%r9)
	movq	-16(%rbp), %rdi
	callq	DoNLS
	movl	$8092, %r8d             # imm = 0x1F9C
	movl	%r8d, %esi
	leaq	-48(%rbp), %rcx
	movq	%rax, -16(%rbp)
	movq	-8248(%rbp), %rdi
	movq	-16(%rbp), %rdx
	callq	vsnprintf
	leaq	-48(%rbp), %rcx
	cmpl	$0, -4(%rbp)
	movl	%eax, -8612(%rbp)       # 4-byte Spill
	movq	%rcx, -8624(%rbp)       # 8-byte Spill
	je	.LBB22_2
# BB#1:                                 # %if.then
	movq	-8248(%rbp), %rdi
	callq	strlen
	addq	-8248(%rbp), %rax
	movq	%rax, -8248(%rbp)
	movq	-8248(%rbp), %rax
	movq	%rax, %rdi
	addq	$1, %rdi
	movq	%rdi, -8248(%rbp)
	movb	$58, (%rax)
	movq	-8248(%rbp), %rax
	movq	%rax, %rdi
	addq	$1, %rdi
	movq	%rdi, -8248(%rbp)
	movb	$32, (%rax)
	movq	-8248(%rbp), %rdi
	movl	-4(%rbp), %ecx
	movq	%rdi, -8632(%rbp)       # 8-byte Spill
	movl	%ecx, %edi
	callq	strerror
	leaq	-8240(%rbp), %rdx
	addq	$8192, %rdx             # imm = 0x2000
	movq	-8248(%rbp), %rsi
	subq	%rsi, %rdx
	subq	$1, %rdx
	movq	-8632(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	strncpy
	movb	$0, -49(%rbp)
	movq	%rax, -8640(%rbp)       # 8-byte Spill
.LBB22_2:                               # %if.end
	jmp	.LBB22_3
.LBB22_3:                               # %do.body
	jmp	.LBB22_4
.LBB22_4:                               # %do.end
	movq	displays, %rax
	movq	%rax, display
.LBB22_5:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_7 Depth 2
	cmpq	$0, display
	je	.LBB22_16
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB22_5 Depth=1
	movq	display, %rax
	movq	328(%rax), %rax
	movq	%rax, -8256(%rbp)
.LBB22_7:                               # %for.cond.14
                                        #   Parent Loop BB22_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -8256(%rbp)
	je	.LBB22_12
# BB#8:                                 # %for.body.16
                                        #   in Loop: Header=BB22_7 Depth=2
	movq	-8256(%rbp), %rax
	movq	64(%rax), %rax
	cmpq	flayer, %rax
	jne	.LBB22_10
# BB#9:                                 # %if.then.17
                                        #   in Loop: Header=BB22_5 Depth=1
	jmp	.LBB22_12
.LBB22_10:                              # %if.end.18
                                        #   in Loop: Header=BB22_7 Depth=2
	jmp	.LBB22_11
.LBB22_11:                              # %for.inc
                                        #   in Loop: Header=BB22_7 Depth=2
	movq	-8256(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8256(%rbp)
	jmp	.LBB22_7
.LBB22_12:                              # %for.end
                                        #   in Loop: Header=BB22_5 Depth=1
	cmpq	$0, -8256(%rbp)
	jne	.LBB22_14
# BB#13:                                # %if.then.20
                                        #   in Loop: Header=BB22_5 Depth=1
	jmp	.LBB22_15
.LBB22_14:                              # %if.end.21
                                        #   in Loop: Header=BB22_5 Depth=1
	leaq	-8240(%rbp), %rdi
	callq	MakeStatus
.LBB22_15:                              # %for.inc.23
                                        #   in Loop: Header=BB22_5 Depth=1
	movq	display, %rax
	movq	(%rax), %rax
	movq	%rax, display
	jmp	.LBB22_5
.LBB22_16:                              # %for.end.24
	addq	$8640, %rsp             # imm = 0x21C0
	popq	%rbp
	retq
.Lfunc_end22:
	.size	LMsg, .Lfunc_end22-LMsg
	.cfi_endproc

	.globl	KillLayerChain
	.align	16, 0x90
	.type	KillLayerChain,@function
KillLayerChain:                         # @KillLayerChain
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	flayer, %rdi
	movq	%rdi, -40(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB23_2
.LBB23_2:                               # %do.end
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB23_3:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_12 Depth 2
	cmpq	$0, -32(%rbp)
	je	.LBB23_17
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB23_3 Depth=1
	movabsq	$WinLf, %rax
	movq	-32(%rbp), %rcx
	cmpq	%rax, 32(%rcx)
	je	.LBB23_6
# BB#5:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB23_3 Depth=1
	movabsq	$BlankLf, %rax
	movq	-32(%rbp), %rcx
	cmpq	%rax, 32(%rcx)
	jne	.LBB23_7
.LBB23_6:                               # %if.then
	jmp	.LBB23_17
.LBB23_7:                               # %if.end
                                        #   in Loop: Header=BB23_3 Depth=1
	jmp	.LBB23_8
.LBB23_8:                               # %do.body.3
                                        #   in Loop: Header=BB23_3 Depth=1
	jmp	.LBB23_9
.LBB23_9:                               # %do.end.4
                                        #   in Loop: Header=BB23_3 Depth=1
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB23_11
# BB#10:                                # %if.then.6
                                        #   in Loop: Header=BB23_3 Depth=1
	movq	$0, -40(%rbp)
.LBB23_11:                              # %if.end.7
                                        #   in Loop: Header=BB23_3 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB23_12:                              # %for.cond.8
                                        #   Parent Loop BB23_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -16(%rbp)
	je	.LBB23_15
# BB#13:                                # %for.body.10
                                        #   in Loop: Header=BB23_12 Depth=2
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 72(%rax)
# BB#14:                                # %for.inc
                                        #   in Loop: Header=BB23_12 Depth=2
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB23_12
.LBB23_15:                              # %for.end
                                        #   in Loop: Header=BB23_3 Depth=1
	jmp	.LBB23_16
.LBB23_16:                              # %for.inc.12
                                        #   in Loop: Header=BB23_3 Depth=1
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB23_3
.LBB23_17:                              # %for.end.13
	movq	-8(%rbp), %rax
	movq	%rax, flayer
.LBB23_18:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	flayer, %rax
	cmpq	-32(%rbp), %rax
	je	.LBB23_20
# BB#19:                                # %while.body
                                        #   in Loop: Header=BB23_18 Depth=1
	callq	ExitOverlayPage
	jmp	.LBB23_18
.LBB23_20:                              # %while.end
	movq	-40(%rbp), %rax
	movq	%rax, flayer
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	KillLayerChain, .Lfunc_end23-KillLayerChain
	.cfi_endproc

	.globl	ExitOverlayPage
	.align	16, 0x90
	.type	ExitOverlayPage,@function
ExitOverlayPage:                        # @ExitOverlayPage
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$0, -20(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB24_2
.LBB24_2:                               # %do.end
	jmp	.LBB24_3
.LBB24_3:                               # %do.body.1
	jmp	.LBB24_4
.LBB24_4:                               # %do.end.2
	movq	flayer, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB24_8
# BB#5:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	$0, 56(%rax)
	je	.LBB24_7
# BB#6:                                 # %if.then.4
	movq	flayer, %rax
	movq	32(%rax), %rax
	movq	56(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rdi
	callq	*%rax
.LBB24_7:                               # %if.end
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdi
	callq	free
.LBB24_8:                               # %if.end.9
	movabsq	$WinLf, %rax
	movq	flayer, %rcx
	movq	56(%rcx), %rcx
	movq	40(%rcx), %rcx
	movq	%rcx, -16(%rbp)
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	%rcx, flayer
	movq	flayer, %rcx
	cmpq	%rax, 32(%rcx)
	jne	.LBB24_23
# BB#9:                                 # %if.then.12
	movq	-8(%rbp), %rax
	cmpl	$0, 64(%rax)
	je	.LBB24_15
# BB#10:                                # %if.then.14
	jmp	.LBB24_11
.LBB24_11:                              # %do.body.15
	jmp	.LBB24_12
.LBB24_12:                              # %do.end.16
	movq	-16(%rbp), %rax
	movl	160(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 160(%rax)
# BB#13:                                # %do.body.17
	jmp	.LBB24_14
.LBB24_14:                              # %do.end.18
	jmp	.LBB24_15
.LBB24_15:                              # %if.end.19
	movq	-16(%rbp), %rax
	cmpl	$0, 160(%rax)
	je	.LBB24_22
# BB#16:                                # %land.lhs.true
	movq	-16(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB24_22
# BB#17:                                # %land.lhs.true.23
	movq	-16(%rbp), %rax
	movq	152(%rax), %rax
	cmpq	flayer, %rax
	je	.LBB24_22
# BB#18:                                # %land.lhs.true.26
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB24_22
# BB#19:                                # %if.then.28
	jmp	.LBB24_20
.LBB24_20:                              # %do.body.29
	jmp	.LBB24_21
.LBB24_21:                              # %do.end.30
	movq	-16(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, flayer
	movl	$1, -20(%rbp)
.LBB24_22:                              # %if.end.32
	jmp	.LBB24_23
.LBB24_23:                              # %if.end.33
	cmpq	$0, -16(%rbp)
	je	.LBB24_26
# BB#24:                                # %land.lhs.true.35
	movq	-16(%rbp), %rax
	movq	152(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB24_26
# BB#25:                                # %if.then.38
	movq	flayer, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 152(%rcx)
.LBB24_26:                              # %if.end.40
	cmpq	$0, -16(%rbp)
	je	.LBB24_29
# BB#27:                                # %land.lhs.true.42
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	10904(%rcx), %rax
	jne	.LBB24_29
# BB#28:                                # %if.then.44
	movq	-16(%rbp), %rax
	movq	$0, 10904(%rax)
.LBB24_29:                              # %if.end.47
	movq	layouts, %rax
	movq	%rax, -48(%rbp)
.LBB24_30:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_32 Depth 2
	cmpq	$0, -48(%rbp)
	je	.LBB24_39
# BB#31:                                # %for.body
                                        #   in Loop: Header=BB24_30 Depth=1
	movq	-48(%rbp), %rax
	movq	344(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB24_32:                              # %for.cond.49
                                        #   Parent Loop BB24_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -32(%rbp)
	je	.LBB24_37
# BB#33:                                # %for.body.51
                                        #   in Loop: Header=BB24_32 Depth=2
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB24_35
# BB#34:                                # %if.then.53
                                        #   in Loop: Header=BB24_32 Depth=2
	movq	flayer, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 64(%rcx)
.LBB24_35:                              # %if.end.55
                                        #   in Loop: Header=BB24_32 Depth=2
	jmp	.LBB24_36
.LBB24_36:                              # %for.inc
                                        #   in Loop: Header=BB24_32 Depth=2
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB24_32
.LBB24_37:                              # %for.end
                                        #   in Loop: Header=BB24_30 Depth=1
	jmp	.LBB24_38
.LBB24_38:                              # %for.inc.56
                                        #   in Loop: Header=BB24_30 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB24_30
.LBB24_39:                              # %for.end.57
	movq	$0, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB24_40:                              # %for.cond.59
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB24_43
# BB#41:                                # %for.body.61
                                        #   in Loop: Header=BB24_40 Depth=1
	movq	flayer, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 64(%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
# BB#42:                                # %for.inc.63
                                        #   in Loop: Header=BB24_40 Depth=1
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB24_40
.LBB24_43:                              # %for.end.64
	cmpq	$0, -40(%rbp)
	je	.LBB24_47
# BB#44:                                # %if.then.66
	movq	flayer, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	$0, 72(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	flayer, %rcx
	movq	%rax, (%rcx)
	cmpl	$0, -20(%rbp)
	je	.LBB24_46
# BB#45:                                # %if.then.72
	xorl	%esi, %esi
	movq	flayer, %rdi
	callq	LRefreshAll
.LBB24_46:                              # %if.end.73
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 72(%rcx)
.LBB24_47:                              # %if.end.75
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rdi
	callq	LayerCleanupMemory
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movq	flayer, %rax
	movq	32(%rax), %rax
	callq	*48(%rax)
	movq	flayer, %rdi
	movq	flayer, %rax
	movl	16(%rax), %esi
	movq	flayer, %rax
	movl	20(%rax), %edx
	callq	LGotoPos
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	ExitOverlayPage, .Lfunc_end24-ExitOverlayPage
	.cfi_endproc

	.globl	InitOverlayPage
	.align	16, 0x90
	.type	InitOverlayPage,@function
InitOverlayPage:                        # @InitOverlayPage
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB25_2
.LBB25_2:                               # %do.end
	movq	$0, -48(%rbp)
	cmpq	$0, display
	je	.LBB25_5
# BB#3:                                 # %land.lhs.true
	movq	display, %rax
	movq	336(%rax), %rax
	movq	64(%rax), %rax
	cmpq	flayer, %rax
	jne	.LBB25_5
# BB#4:                                 # %if.then
	movq	display, %rax
	movq	336(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB25_5:                               # %if.end
	movl	$1, %eax
	movl	%eax, %edi
	movl	$128, %eax
	movl	%eax, %esi
	callq	calloc
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	jne	.LBB25_7
# BB#6:                                 # %if.then.3
	xorl	%edi, %edi
	movabsq	$.L.str, %rsi
	movb	$0, %al
	callq	Msg
	movl	$-1, -4(%rbp)
	jmp	.LBB25_65
.LBB25_7:                               # %if.end.4
	jmp	.LBB25_8
.LBB25_8:                               # %do.body.5
	jmp	.LBB25_9
.LBB25_9:                               # %do.end.6
	movq	$0, -32(%rbp)
	cmpl	$0, -8(%rbp)
	je	.LBB25_13
# BB#10:                                # %if.then.8
	movl	$1, %eax
	movl	%eax, %edi
	movslq	-8(%rbp), %rsi
	callq	calloc
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	jne	.LBB25_12
# BB#11:                                # %if.then.12
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	xorl	%edi, %edi
	movabsq	$.L.str.1, %rsi
	movb	$0, %al
	callq	Msg
	movl	$-1, -4(%rbp)
	jmp	.LBB25_65
.LBB25_12:                              # %if.end.13
	jmp	.LBB25_13
.LBB25_13:                              # %if.end.14
	movq	flayer, %rax
	movq	56(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB25_22
# BB#14:                                # %land.lhs.true.16
	movq	-72(%rbp), %rax
	movq	152(%rax), %rax
	cmpq	flayer, %rax
	je	.LBB25_17
# BB#15:                                # %lor.lhs.false
	cmpl	$0, -20(%rbp)
	je	.LBB25_22
# BB#16:                                # %land.lhs.true.20
	movq	flayer, %rax
	cmpq	$0, 48(%rax)
	jne	.LBB25_22
.LBB25_17:                              # %if.then.23
	movq	-72(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB25_21
# BB#18:                                # %land.lhs.true.26
	movq	-72(%rbp), %rax
	movq	152(%rax), %rax
	cmpq	flayer, %rax
	je	.LBB25_21
# BB#19:                                # %land.lhs.true.30
	movq	-72(%rbp), %rax
	movq	152(%rax), %rax
	cmpq	$0, (%rax)
	jne	.LBB25_21
# BB#20:                                # %if.then.34
	movq	-72(%rbp), %rax
	movq	152(%rax), %rdi
	callq	KillLayerChain
.LBB25_21:                              # %if.end.36
	movq	-40(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, 152(%rcx)
.LBB25_22:                              # %if.end.38
	cmpq	$0, -48(%rbp)
	je	.LBB25_34
# BB#23:                                # %land.lhs.true.40
	movq	flayer, %rax
	cmpq	$0, 48(%rax)
	jne	.LBB25_34
# BB#24:                                # %land.lhs.true.44
	cmpl	$0, -20(%rbp)
	jne	.LBB25_34
# BB#25:                                # %if.then.46
	movq	display, %rax
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, display
	callq	RemoveStatus
	movq	-80(%rbp), %rax
	movq	%rax, display
	movq	flayer, %rax
	movq	%rax, -64(%rbp)
.LBB25_26:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, %rax
	je	.LBB25_31
# BB#27:                                # %for.body
                                        #   in Loop: Header=BB25_26 Depth=1
	movq	-56(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB25_29
# BB#28:                                # %if.then.51
	jmp	.LBB25_31
.LBB25_29:                              # %if.end.52
                                        #   in Loop: Header=BB25_26 Depth=1
	jmp	.LBB25_30
.LBB25_30:                              # %for.inc
                                        #   in Loop: Header=BB25_26 Depth=1
	movq	-56(%rbp), %rax
	addq	$72, %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB25_26
.LBB25_31:                              # %for.end
	jmp	.LBB25_32
.LBB25_32:                              # %do.body.53
	jmp	.LBB25_33
.LBB25_33:                              # %do.end.54
	movq	-48(%rbp), %rax
	movq	72(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	$0, 72(%rax)
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 64(%rcx)
	jmp	.LBB25_64
.LBB25_34:                              # %if.else
	jmp	.LBB25_35
.LBB25_35:                              # %do.body.59
	movq	display, %rax
	movq	%rax, -88(%rbp)
	movq	displays, %rax
	movq	%rax, display
.LBB25_36:                              # %for.cond.62
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_38 Depth 2
	cmpq	$0, display
	je	.LBB25_47
# BB#37:                                # %for.body.64
                                        #   in Loop: Header=BB25_36 Depth=1
	movq	display, %rax
	movq	328(%rax), %rax
	movq	%rax, -96(%rbp)
.LBB25_38:                              # %for.cond.65
                                        #   Parent Loop BB25_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -96(%rbp)
	je	.LBB25_43
# BB#39:                                # %for.body.67
                                        #   in Loop: Header=BB25_38 Depth=2
	movq	-96(%rbp), %rax
	movq	64(%rax), %rax
	cmpq	flayer, %rax
	jne	.LBB25_41
# BB#40:                                # %if.then.71
                                        #   in Loop: Header=BB25_36 Depth=1
	jmp	.LBB25_43
.LBB25_41:                              # %if.end.72
                                        #   in Loop: Header=BB25_38 Depth=2
	jmp	.LBB25_42
.LBB25_42:                              # %for.inc.73
                                        #   in Loop: Header=BB25_38 Depth=2
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB25_38
.LBB25_43:                              # %for.end.74
                                        #   in Loop: Header=BB25_36 Depth=1
	cmpq	$0, -96(%rbp)
	jne	.LBB25_45
# BB#44:                                # %if.then.77
                                        #   in Loop: Header=BB25_36 Depth=1
	jmp	.LBB25_46
.LBB25_45:                              # %if.end.78
                                        #   in Loop: Header=BB25_36 Depth=1
	callq	RemoveStatus
.LBB25_46:                              # %for.inc.79
                                        #   in Loop: Header=BB25_36 Depth=1
	movq	display, %rax
	movq	(%rax), %rax
	movq	%rax, display
	jmp	.LBB25_36
.LBB25_47:                              # %for.end.80
	movq	-88(%rbp), %rax
	movq	%rax, display
# BB#48:                                # %do.end.81
	cmpl	$0, -20(%rbp)
	je	.LBB25_52
# BB#49:                                # %if.then.83
	jmp	.LBB25_50
.LBB25_50:                              # %do.body.84
	jmp	.LBB25_51
.LBB25_51:                              # %do.end.85
	jmp	.LBB25_52
.LBB25_52:                              # %if.end.86
	cmpl	$0, -20(%rbp)
	je	.LBB25_59
# BB#53:                                # %land.lhs.true.88
	movabsq	$WinLf, %rax
	movq	flayer, %rcx
	cmpq	%rax, 32(%rcx)
	jne	.LBB25_59
# BB#54:                                # %if.then.91
	jmp	.LBB25_55
.LBB25_55:                              # %do.body.92
	jmp	.LBB25_56
.LBB25_56:                              # %do.end.93
	jmp	.LBB25_57
.LBB25_57:                              # %do.body.94
	jmp	.LBB25_58
.LBB25_58:                              # %do.end.95
	movq	-72(%rbp), %rax
	movl	160(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 160(%rax)
	movq	-40(%rbp), %rax
	movl	$1, 64(%rax)
.LBB25_59:                              # %if.end.96
	movq	flayer, %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB25_60:                              # %for.cond.100
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB25_63
# BB#61:                                # %for.body.102
                                        #   in Loop: Header=BB25_60 Depth=1
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 64(%rcx)
# BB#62:                                # %for.inc.104
                                        #   in Loop: Header=BB25_60 Depth=1
	movq	-56(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB25_60
.LBB25_63:                              # %for.end.106
	movq	flayer, %rax
	movq	$0, (%rax)
.LBB25_64:                              # %if.end.108
	movq	flayer, %rax
	movl	8(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	flayer, %rax
	movl	12(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, 12(%rax)
	movq	-40(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 32(%rdx)
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 40(%rdx)
	movq	flayer, %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 48(%rdx)
	movq	flayer, %rax
	movq	56(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 56(%rdx)
	movq	-40(%rbp), %rax
	movq	%rax, flayer
	movq	flayer, %rax
	movq	32(%rax), %rax
	callq	*48(%rax)
	movl	$0, -4(%rbp)
.LBB25_65:                              # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	InitOverlayPage, .Lfunc_end25-InitOverlayPage
	.cfi_endproc

	.globl	LayerCleanupMemory
	.align	16, 0x90
	.type	LayerCleanupMemory,@function
LayerCleanupMemory:                     # @LayerCleanupMemory
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 96(%rdi)
	je	.LBB26_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, %rdi
	callq	free
.LBB26_2:                               # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB26_4
# BB#3:                                 # %if.then.5
	movq	-8(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, %rdi
	callq	free
.LBB26_4:                               # %if.end.8
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	LayerCleanupMemory, .Lfunc_end26-LayerCleanupMemory
	.cfi_endproc

	.globl	LayProcessMouse
	.align	16, 0x90
	.type	LayProcessMouse,@function
LayProcessMouse:                        # @LayProcessMouse
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	movb	%sil, %al
	movq	%rdi, -16(%rbp)
	movb	%al, -17(%rbp)
	movq	-16(%rbp), %rdi
	movslq	76(%rdi), %rdi
	cmpq	$3, %rdi
	jb	.LBB27_2
# BB#1:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB27_6
.LBB27_2:                               # %if.end
	movq	-16(%rbp), %rax
	movl	76(%rax), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, 76(%rax)
	movl	%ecx, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jle	.LBB27_4
# BB#3:                                 # %cond.true
	movzbl	-17(%rbp), %eax
	subl	$33, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jmp	.LBB27_5
.LBB27_4:                               # %cond.false
	movzbl	-17(%rbp), %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB27_5:                               # %cond.end
	movl	-28(%rbp), %eax         # 4-byte Reload
	movb	%al, %cl
	movslq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movb	%cl, 72(%rsi,%rdx)
	movq	-16(%rbp), %rdx
	movslq	76(%rdx), %rdx
	cmpq	$3, %rdx
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -4(%rbp)
.LBB27_6:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end27:
	.size	LayProcessMouse, .Lfunc_end27-LayProcessMouse
	.cfi_endproc

	.globl	LayProcessMouseSwitch
	.align	16, 0x90
	.type	LayProcessMouseSwitch,@function
LayProcessMouseSwitch:                  # @LayProcessMouseSwitch
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rdi
	movl	%esi, 80(%rdi)
	cmpl	$0, %esi
	je	.LBB28_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	$0, 76(%rax)
.LBB28_2:                               # %if.end
	popq	%rbp
	retq
.Lfunc_end28:
	.size	LayProcessMouseSwitch, .Lfunc_end28-LayProcessMouseSwitch
	.cfi_endproc

	.globl	LayPause
	.align	16, 0x90
	.type	LayPause,@function
LayPause:                               # @LayPause
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	display, %rdi
	movq	%rdi, -32(%rbp)
	cmpl	$0, -12(%rbp)
	setne	%al
	xorb	$-1, %al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %esi
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movb	88(%rdi), %al
	shlb	$7, %al
	sarb	$7, %al
	movsbl	%al, %esi
	cmpl	-12(%rbp), %esi
	jne	.LBB29_2
# BB#1:                                 # %if.then
	jmp	.LBB29_60
.LBB29_2:                               # %if.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movb	%al, %dl
	movb	88(%rcx), %sil
	andb	$1, %dl
	andb	$-2, %sil
	orb	%dl, %sil
	movb	%sil, 88(%rcx)
	shlb	$7, %dl
	sarb	$7, %dl
	movsbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB29_4
# BB#3:                                 # %if.then.5
	movq	-8(%rbp), %rax
	movl	$-1, 116(%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 112(%rax)
	jmp	.LBB29_60
.LBB29_4:                               # %if.end.8
	movq	-8(%rbp), %rax
	cmpl	$-1, 112(%rax)
	jne	.LBB29_7
# BB#5:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpl	$-1, 116(%rax)
	jne	.LBB29_7
# BB#6:                                 # %if.then.15
	jmp	.LBB29_60
.LBB29_7:                               # %if.end.16
	movabsq	$WinLf, %rax
	movq	-8(%rbp), %rcx
	cmpq	%rax, 32(%rcx)
	jne	.LBB29_9
# BB#8:                                 # %if.then.18
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB29_10
.LBB29_9:                               # %if.else
	movq	$0, -48(%rbp)
.LBB29_10:                              # %if.end.19
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB29_11:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_15 Depth 2
                                        #       Child Loop BB29_17 Depth 3
	cmpq	$0, -24(%rbp)
	je	.LBB29_55
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB29_11 Depth=1
	movq	-24(%rbp), %rax
	cmpl	$0, 48(%rax)
	jne	.LBB29_14
# BB#13:                                # %if.then.22
                                        #   in Loop: Header=BB29_11 Depth=1
	jmp	.LBB29_54
.LBB29_14:                              # %if.end.23
                                        #   in Loop: Header=BB29_11 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, display
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB29_15:                              # %for.cond.24
                                        #   Parent Loop BB29_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB29_17 Depth 3
	cmpq	$0, -56(%rbp)
	je	.LBB29_43
# BB#16:                                # %for.body.26
                                        #   in Loop: Header=BB29_15 Depth=2
	movq	-8(%rbp), %rax
	movl	112(%rax), %ecx
	movl	%ecx, -36(%rbp)
.LBB29_17:                              # %for.cond.29
                                        #   Parent Loop BB29_11 Depth=1
                                        #     Parent Loop BB29_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	116(%rcx), %eax
	jg	.LBB29_41
# BB#18:                                # %for.body.33
                                        #   in Loop: Header=BB29_17 Depth=3
	movl	-36(%rbp), %eax
	movq	-56(%rbp), %rcx
	addl	20(%rcx), %eax
	movq	-56(%rbp), %rcx
	cmpl	32(%rcx), %eax
	jl	.LBB29_39
# BB#19:                                # %land.lhs.true.35
                                        #   in Loop: Header=BB29_17 Depth=3
	movl	-36(%rbp), %eax
	movq	-56(%rbp), %rcx
	addl	20(%rcx), %eax
	movq	-56(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jg	.LBB29_39
# BB#20:                                # %land.lhs.true.39
                                        #   in Loop: Header=BB29_17 Depth=3
	movslq	-36(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	96(%rcx), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -60(%rbp)
	cmpl	$0, %edx
	jl	.LBB29_39
# BB#21:                                # %land.lhs.true.42
                                        #   in Loop: Header=BB29_17 Depth=3
	movslq	-36(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	104(%rcx), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -64(%rbp)
	cmpl	$0, %edx
	jl	.LBB29_39
# BB#22:                                # %if.then.47
                                        #   in Loop: Header=BB29_17 Depth=3
	movq	-56(%rbp), %rax
	movl	16(%rax), %ecx
	addl	-60(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movq	-56(%rbp), %rax
	movl	16(%rax), %ecx
	addl	-64(%rbp), %ecx
	movl	%ecx, -64(%rbp)
	movl	-60(%rbp), %ecx
	movq	-56(%rbp), %rax
	cmpl	24(%rax), %ecx
	jge	.LBB29_24
# BB#23:                                # %if.then.52
                                        #   in Loop: Header=BB29_17 Depth=3
	movq	-56(%rbp), %rax
	movl	24(%rax), %ecx
	movl	%ecx, -60(%rbp)
.LBB29_24:                              # %if.end.54
                                        #   in Loop: Header=BB29_17 Depth=3
	movl	-64(%rbp), %eax
	movq	-56(%rbp), %rcx
	cmpl	28(%rcx), %eax
	jle	.LBB29_26
# BB#25:                                # %if.then.56
                                        #   in Loop: Header=BB29_17 Depth=3
	movq	-56(%rbp), %rax
	movl	28(%rax), %ecx
	movl	%ecx, -64(%rbp)
.LBB29_26:                              # %if.end.58
                                        #   in Loop: Header=BB29_17 Depth=3
	movq	-8(%rbp), %rax
	cmpl	$8, 24(%rax)
	jne	.LBB29_36
# BB#27:                                # %land.lhs.true.60
                                        #   in Loop: Header=BB29_17 Depth=3
	movl	-64(%rbp), %eax
	movq	-56(%rbp), %rcx
	cmpl	28(%rcx), %eax
	jge	.LBB29_36
# BB#28:                                # %land.lhs.true.63
                                        #   in Loop: Header=BB29_17 Depth=3
	cmpq	$0, -48(%rbp)
	je	.LBB29_36
# BB#29:                                # %if.then.65
                                        #   in Loop: Header=BB29_17 Depth=3
	movb	$1, %al
	movq	-48(%rbp), %rcx
	movq	9864(%rcx), %rcx
	movslq	-36(%rbp), %rdx
	imulq	$40, %rdx, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -72(%rbp)
	testb	$1, %al
	jne	.LBB29_30
	jmp	.LBB29_32
.LBB29_30:                              # %cond.true
                                        #   in Loop: Header=BB29_17 Depth=3
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-72(%rbp), %rdx
	movq	16(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$255, %eax
	jne	.LBB29_35
# BB#31:                                # %land.lhs.true.71
                                        #   in Loop: Header=BB29_17 Depth=3
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-72(%rbp), %rdx
	movq	(%rdx), %rdx
	movzbl	(%rdx,%rcx), %eax
	cmpl	$255, %eax
	je	.LBB29_34
	jmp	.LBB29_35
.LBB29_32:                              # %cond.false
                                        #   in Loop: Header=BB29_17 Depth=3
	movslq	-64(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	andl	$31, %edx
	cmpl	$0, %edx
	je	.LBB29_35
# BB#33:                                # %land.lhs.true.84
                                        #   in Loop: Header=BB29_17 Depth=3
	movslq	-64(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	16(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	andl	$224, %edx
	cmpl	$0, %edx
	jne	.LBB29_35
.LBB29_34:                              # %if.then.92
                                        #   in Loop: Header=BB29_17 Depth=3
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
.LBB29_35:                              # %if.end.93
                                        #   in Loop: Header=BB29_17 Depth=3
	jmp	.LBB29_36
.LBB29_36:                              # %if.end.94
                                        #   in Loop: Header=BB29_17 Depth=3
	movl	-60(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jg	.LBB29_38
# BB#37:                                # %if.then.97
                                        #   in Loop: Header=BB29_17 Depth=3
	xorl	%ecx, %ecx
	movl	-36(%rbp), %eax
	movq	-56(%rbp), %rdx
	addl	20(%rdx), %eax
	movl	-60(%rbp), %esi
	movl	-64(%rbp), %edx
	movl	%eax, %edi
	callq	RefreshLine
.LBB29_38:                              # %if.end.100
                                        #   in Loop: Header=BB29_17 Depth=3
	jmp	.LBB29_39
.LBB29_39:                              # %if.end.101
                                        #   in Loop: Header=BB29_17 Depth=3
	jmp	.LBB29_40
.LBB29_40:                              # %for.inc
                                        #   in Loop: Header=BB29_17 Depth=3
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB29_17
.LBB29_41:                              # %for.end
                                        #   in Loop: Header=BB29_15 Depth=2
	jmp	.LBB29_42
.LBB29_42:                              # %for.inc.103
                                        #   in Loop: Header=BB29_15 Depth=2
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB29_15
.LBB29_43:                              # %for.end.104
                                        #   in Loop: Header=BB29_11 Depth=1
	movq	-24(%rbp), %rax
	movq	display, %rcx
	cmpq	336(%rcx), %rax
	jne	.LBB29_53
# BB#44:                                # %if.then.107
                                        #   in Loop: Header=BB29_11 Depth=1
	movq	-8(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-24(%rbp), %rax
	addl	208(%rax), %ecx
	movl	%ecx, -76(%rbp)
	movq	-8(%rbp), %rax
	movl	20(%rax), %ecx
	movq	-24(%rbp), %rax
	addl	212(%rax), %ecx
	movl	%ecx, -80(%rbp)
	movl	-76(%rbp), %ecx
	movq	-24(%rbp), %rax
	cmpl	216(%rax), %ecx
	jge	.LBB29_46
# BB#45:                                # %if.then.112
                                        #   in Loop: Header=BB29_11 Depth=1
	movq	-24(%rbp), %rax
	movl	216(%rax), %ecx
	movl	%ecx, -76(%rbp)
.LBB29_46:                              # %if.end.114
                                        #   in Loop: Header=BB29_11 Depth=1
	movl	-80(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	224(%rcx), %eax
	jge	.LBB29_48
# BB#47:                                # %if.then.117
                                        #   in Loop: Header=BB29_11 Depth=1
	movq	-24(%rbp), %rax
	movl	224(%rax), %ecx
	movl	%ecx, -80(%rbp)
.LBB29_48:                              # %if.end.119
                                        #   in Loop: Header=BB29_11 Depth=1
	movl	-76(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	220(%rcx), %eax
	jle	.LBB29_50
# BB#49:                                # %if.then.122
                                        #   in Loop: Header=BB29_11 Depth=1
	movq	-24(%rbp), %rax
	movl	220(%rax), %ecx
	movl	%ecx, -76(%rbp)
.LBB29_50:                              # %if.end.124
                                        #   in Loop: Header=BB29_11 Depth=1
	movl	-80(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	228(%rcx), %eax
	jle	.LBB29_52
# BB#51:                                # %if.then.127
                                        #   in Loop: Header=BB29_11 Depth=1
	movq	-24(%rbp), %rax
	movl	228(%rax), %ecx
	movl	%ecx, -80(%rbp)
.LBB29_52:                              # %if.end.129
                                        #   in Loop: Header=BB29_11 Depth=1
	movl	-76(%rbp), %edi
	movl	-80(%rbp), %esi
	callq	GotoPos
.LBB29_53:                              # %if.end.130
                                        #   in Loop: Header=BB29_11 Depth=1
	jmp	.LBB29_54
.LBB29_54:                              # %for.inc.131
                                        #   in Loop: Header=BB29_11 Depth=1
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB29_11
.LBB29_55:                              # %for.end.132
	movq	-8(%rbp), %rax
	movl	112(%rax), %ecx
	movl	%ecx, -36(%rbp)
.LBB29_56:                              # %for.cond.135
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	116(%rcx), %eax
	jg	.LBB29_59
# BB#57:                                # %for.body.140
                                        #   in Loop: Header=BB29_56 Depth=1
	movslq	-36(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	104(%rcx), %rcx
	movl	$-1, (%rcx,%rax,4)
	movslq	-36(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	96(%rcx), %rcx
	movl	$-1, (%rcx,%rax,4)
# BB#58:                                # %for.inc.149
                                        #   in Loop: Header=BB29_56 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB29_56
.LBB29_59:                              # %for.end.151
	movq	display, %rax
	movq	%rax, -32(%rbp)
.LBB29_60:                              # %return
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	LayPause, .Lfunc_end29-LayPause
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"No memory for layer struct"
	.size	.L.str, 27

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"No memory for layer data"
	.size	.L.str.1, 25

	.type	mloff.mml,@object       # @mloff.mml
	.local	mloff.mml
	.comm	mloff.mml,40,8

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
