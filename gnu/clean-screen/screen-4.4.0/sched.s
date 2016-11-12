	.text
	.file	"sched.bc"
	.globl	evenq
	.align	16, 0x90
	.type	evenq,@function
evenq:                                  # @evenq
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
# BB#1:                                 # %do.body
	jmp	.LBB0_2
.LBB0_2:                                # %do.end
	movq	-8(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB0_4
# BB#3:                                 # %if.then
	jmp	.LBB0_13
.LBB0_4:                                # %if.end
	movabsq	$evs, %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 28(%rax)
	jne	.LBB0_6
# BB#5:                                 # %if.then.1
	movabsq	$tevs, %rax
	movl	$1, calctimeout
	movq	%rax, -24(%rbp)
.LBB0_6:                                # %if.end.2
	jmp	.LBB0_7
.LBB0_7:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	je	.LBB0_12
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB0_7 Depth=1
	movq	-8(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-16(%rbp), %rax
	cmpl	32(%rax), %ecx
	jle	.LBB0_10
# BB#9:                                 # %if.then.6
	jmp	.LBB0_12
.LBB0_10:                               # %if.end.7
                                        #   in Loop: Header=BB0_7 Depth=1
	jmp	.LBB0_11
.LBB0_11:                               # %for.inc
                                        #   in Loop: Header=BB0_7 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB0_7
.LBB0_12:                               # %for.end
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movl	$1, 56(%rax)
.LBB0_13:                               # %return
	popq	%rbp
	retq
.Lfunc_end0:
	.size	evenq, .Lfunc_end0-evenq
	.cfi_endproc

	.globl	evdeq
	.align	16, 0x90
	.type	evdeq,@function
evdeq:                                  # @evdeq
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
# BB#1:                                 # %do.body
	jmp	.LBB1_2
.LBB1_2:                                # %do.end
	movq	-8(%rbp), %rax
	cmpl	$0, 56(%rax)
	jne	.LBB1_4
# BB#3:                                 # %if.then
	jmp	.LBB1_16
.LBB1_4:                                # %if.end
	movabsq	$evs, %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 28(%rax)
	jne	.LBB1_6
# BB#5:                                 # %if.then.1
	movabsq	$tevs, %rax
	movl	$1, calctimeout
	movq	%rax, -24(%rbp)
.LBB1_6:                                # %if.end.2
	jmp	.LBB1_7
.LBB1_7:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	je	.LBB1_12
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB1_7 Depth=1
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB1_10
# BB#9:                                 # %if.then.5
	jmp	.LBB1_12
.LBB1_10:                               # %if.end.6
                                        #   in Loop: Header=BB1_7 Depth=1
	jmp	.LBB1_11
.LBB1_11:                               # %for.inc
                                        #   in Loop: Header=BB1_7 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB1_7
.LBB1_12:                               # %for.end
	jmp	.LBB1_13
.LBB1_13:                               # %do.body.7
	jmp	.LBB1_14
.LBB1_14:                               # %do.end.8
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movl	$0, 56(%rax)
	movq	-8(%rbp), %rax
	cmpq	nextev, %rax
	jne	.LBB1_16
# BB#15:                                # %if.then.12
	movq	nextev, %rax
	movq	(%rax), %rax
	movq	%rax, nextev
.LBB1_16:                               # %if.end.14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	evdeq, .Lfunc_end1-evdeq
	.cfi_endproc

	.globl	sched
	.align	16, 0x90
	.type	sched,@function
sched:                                  # @sched
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
	subq	$432, %rsp              # imm = 0x1B0
	movq	$0, -280(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_14 Depth 2
                                        #     Child Loop BB2_45 Depth 2
	cmpl	$0, calctimeout
	je	.LBB2_3
# BB#2:                                 # %if.then
                                        #   in Loop: Header=BB2_1 Depth=1
	callq	calctimo
	movq	%rax, -280(%rbp)
.LBB2_3:                                # %if.end
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpq	$0, -280(%rbp)
	je	.LBB2_9
# BB#4:                                 # %if.then.2
                                        #   in Loop: Header=BB2_1 Depth=1
	leaq	-296(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	gettimeofday
	movq	-280(%rbp), %rsi
	movq	40(%rsi), %rsi
	subq	-296(%rbp), %rsi
	movq	%rsi, -296(%rbp)
	movq	-280(%rbp), %rsi
	movq	48(%rsi), %rsi
	subq	-288(%rbp), %rsi
	movq	%rsi, -288(%rbp)
	cmpq	$0, -288(%rbp)
	movl	%eax, -320(%rbp)        # 4-byte Spill
	jge	.LBB2_6
# BB#5:                                 # %if.then.12
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-288(%rbp), %rax
	addq	$1000000, %rax          # imm = 0xF4240
	movq	%rax, -288(%rbp)
	movq	-296(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -296(%rbp)
.LBB2_6:                                # %if.end.15
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpq	$0, -296(%rbp)
	jge	.LBB2_8
# BB#7:                                 # %if.then.18
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	$0, -288(%rbp)
	movq	$0, -296(%rbp)
.LBB2_8:                                # %if.end.21
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_9
.LBB2_9:                                # %if.end.22
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_10
.LBB2_10:                               # %do.body
                                        #   in Loop: Header=BB2_1 Depth=1
	leaq	-136(%rbp), %rax
	movl	$16, %ecx
                                        # kill: RCX<def> ECX<kill>
	xorl	%edx, %edx
	movq	%rax, -328(%rbp)        # 8-byte Spill
	movl	%edx, %eax
	movq	-328(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, %rdi
	#APP
	cld
	rep
	stosq	%rax, %es:(%rdi)
	#NO_APP
	movl	%ecx, %eax
	movl	%eax, -304(%rbp)
	movl	%edi, %eax
	movl	%eax, -308(%rbp)
# BB#11:                                # %do.end
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_12
.LBB2_12:                               # %do.body.24
                                        #   in Loop: Header=BB2_1 Depth=1
	leaq	-264(%rbp), %rax
	movl	$16, %ecx
                                        # kill: RCX<def> ECX<kill>
	xorl	%edx, %edx
	movq	%rax, -336(%rbp)        # 8-byte Spill
	movl	%edx, %eax
	movq	-336(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, %rdi
	#APP
	cld
	rep
	stosq	%rax, %es:(%rdi)
	#NO_APP
	movl	%ecx, %eax
	movl	%eax, -312(%rbp)
	movl	%edi, %eax
	movl	%eax, -316(%rbp)
# BB#13:                                # %do.end.31
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	evs, %rax
	movq	%rax, -8(%rbp)
.LBB2_14:                               # %for.cond.32
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -8(%rbp)
	je	.LBB2_30
# BB#15:                                # %for.body
                                        #   in Loop: Header=BB2_14 Depth=2
	movq	-8(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB2_23
# BB#16:                                # %land.lhs.true
                                        #   in Loop: Header=BB2_14 Depth=2
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movl	(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpq	$0, 72(%rax)
	movl	%ecx, -340(%rbp)        # 4-byte Spill
	je	.LBB2_18
# BB#17:                                # %cond.true
                                        #   in Loop: Header=BB2_14 Depth=2
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movl	(%rax), %ecx
	movl	%ecx, -344(%rbp)        # 4-byte Spill
	jmp	.LBB2_19
.LBB2_18:                               # %cond.false
                                        #   in Loop: Header=BB2_14 Depth=2
	xorl	%eax, %eax
	movl	%eax, -344(%rbp)        # 4-byte Spill
	jmp	.LBB2_19
.LBB2_19:                               # %cond.end
                                        #   in Loop: Header=BB2_14 Depth=2
	movl	-344(%rbp), %eax        # 4-byte Reload
	movl	-340(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jg	.LBB2_23
# BB#20:                                # %if.then.39
                                        #   in Loop: Header=BB2_14 Depth=2
	jmp	.LBB2_21
.LBB2_21:                               # %do.body.40
                                        #   in Loop: Header=BB2_14 Depth=2
	jmp	.LBB2_22
.LBB2_22:                               # %do.end.41
                                        #   in Loop: Header=BB2_14 Depth=2
	jmp	.LBB2_29
.LBB2_23:                               # %if.end.42
                                        #   in Loop: Header=BB2_14 Depth=2
	movq	-8(%rbp), %rax
	cmpl	$1, 28(%rax)
	jne	.LBB2_25
# BB#24:                                # %if.then.44
                                        #   in Loop: Header=BB2_14 Depth=2
	movl	$64, %eax
	movl	$1, %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rsi
	movl	24(%rsi), %ecx
	movl	%eax, -348(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	movq	%rdx, -360(%rbp)        # 8-byte Spill
	cltd
	movl	-348(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%edx, %edx
	movl	%edx, %ecx
                                        # kill: CL<def> RCX<kill>
	movq	-360(%rbp), %rsi        # 8-byte Reload
	shlq	%cl, %rsi
	movq	-8(%rbp), %rdi
	movl	24(%rdi), %edx
	movl	%edx, %eax
	cltd
	movl	-348(%rbp), %r8d        # 4-byte Reload
	idivl	%r8d
	movslq	%eax, %rdi
	orq	-136(%rbp,%rdi,8), %rsi
	movq	%rsi, -136(%rbp,%rdi,8)
	jmp	.LBB2_28
.LBB2_25:                               # %if.else
                                        #   in Loop: Header=BB2_14 Depth=2
	movq	-8(%rbp), %rax
	cmpl	$2, 28(%rax)
	jne	.LBB2_27
# BB#26:                                # %if.then.50
                                        #   in Loop: Header=BB2_14 Depth=2
	movl	$64, %eax
	movl	$1, %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rsi
	movl	24(%rsi), %ecx
	movl	%eax, -364(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	cltd
	movl	-364(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%edx, %edx
	movl	%edx, %ecx
                                        # kill: CL<def> RCX<kill>
	movq	-376(%rbp), %rsi        # 8-byte Reload
	shlq	%cl, %rsi
	movq	-8(%rbp), %rdi
	movl	24(%rdi), %edx
	movl	%edx, %eax
	cltd
	movl	-364(%rbp), %r8d        # 4-byte Reload
	idivl	%r8d
	movslq	%eax, %rdi
	orq	-264(%rbp,%rdi,8), %rsi
	movq	%rsi, -264(%rbp,%rdi,8)
.LBB2_27:                               # %if.end.61
                                        #   in Loop: Header=BB2_14 Depth=2
	jmp	.LBB2_28
.LBB2_28:                               # %if.end.62
                                        #   in Loop: Header=BB2_14 Depth=2
	jmp	.LBB2_29
.LBB2_29:                               # %for.inc
                                        #   in Loop: Header=BB2_14 Depth=2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB2_14
.LBB2_30:                               # %for.end
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpq	$0, -280(%rbp)
	je	.LBB2_32
# BB#31:                                # %cond.true.64
                                        #   in Loop: Header=BB2_1 Depth=1
	leaq	-296(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jmp	.LBB2_33
.LBB2_32:                               # %cond.false.65
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	jmp	.LBB2_33
.LBB2_33:                               # %cond.end.66
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-384(%rbp), %rax        # 8-byte Reload
	movl	$1024, %edi             # imm = 0x400
	leaq	-136(%rbp), %rsi
	leaq	-264(%rbp), %rdx
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	%rax, %r8
	callq	select
	movl	%eax, -300(%rbp)
	cmpl	$0, -300(%rbp)
	jge	.LBB2_37
# BB#34:                                # %if.then.70
                                        #   in Loop: Header=BB2_1 Depth=1
	callq	__errno_location
	cmpl	$4, (%rax)
	je	.LBB2_36
# BB#35:                                # %if.then.73
	callq	__errno_location
	movabsq	$.L.str, %rsi
	movl	(%rax), %edi
	movb	$0, %al
	callq	Panic
.LBB2_36:                               # %if.end.75
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	$0, -300(%rbp)
	jmp	.LBB2_44
.LBB2_37:                               # %if.else.76
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpl	$0, -300(%rbp)
	jne	.LBB2_43
# BB#38:                                # %if.then.78
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_39
.LBB2_39:                               # %do.body.79
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_40
.LBB2_40:                               # %do.end.80
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_41
.LBB2_41:                               # %do.body.81
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_42
.LBB2_42:                               # %do.end.82
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-280(%rbp), %rdi
	callq	evdeq
	movq	-280(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	-280(%rbp), %rax
	movq	-280(%rbp), %rcx
	movq	16(%rcx), %rsi
	movq	%rdi, -392(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-392(%rbp), %rax        # 8-byte Reload
	callq	*%rax
.LBB2_43:                               # %if.end.83
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_44
.LBB2_44:                               # %if.end.84
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	evs, %rax
	movq	%rax, -8(%rbp)
.LBB2_45:                               # %for.cond.85
                                        #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -8(%rbp)
	je	.LBB2_64
# BB#46:                                # %for.body.87
                                        #   in Loop: Header=BB2_45 Depth=2
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, nextev
	movq	-8(%rbp), %rax
	cmpl	$3, 28(%rax)
	je	.LBB2_54
# BB#47:                                # %if.then.91
                                        #   in Loop: Header=BB2_45 Depth=2
	movq	-8(%rbp), %rax
	cmpl	$1, 28(%rax)
	jne	.LBB2_49
# BB#48:                                # %cond.true.94
                                        #   in Loop: Header=BB2_45 Depth=2
	leaq	-136(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	jmp	.LBB2_50
.LBB2_49:                               # %cond.false.95
                                        #   in Loop: Header=BB2_45 Depth=2
	leaq	-264(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	jmp	.LBB2_50
.LBB2_50:                               # %cond.end.96
                                        #   in Loop: Header=BB2_45 Depth=2
	movq	-400(%rbp), %rax        # 8-byte Reload
	movq	%rax, -272(%rbp)
	cmpl	$0, -300(%rbp)
	je	.LBB2_52
# BB#51:                                # %lor.lhs.false
                                        #   in Loop: Header=BB2_45 Depth=2
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$64, %eax
	movq	-8(%rbp), %rdx
	movl	24(%rdx), %esi
	movl	%eax, -404(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-404(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movslq	%eax, %rdi
	movq	-272(%rbp), %r8
	movq	(%r8,%rdi,8), %rdi
	movq	-8(%rbp), %r8
	movl	24(%r8), %eax
	cltd
	idivl	%esi
	movl	%edx, %edx
	movl	%edx, %r8d
	movq	%rcx, -416(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
                                        # kill: CL<def> RCX<kill>
	movq	-416(%rbp), %r8         # 8-byte Reload
	shlq	%cl, %r8
	andq	%r8, %rdi
	cmpq	$0, %rdi
	jne	.LBB2_53
.LBB2_52:                               # %if.then.109
                                        #   in Loop: Header=BB2_45 Depth=2
	jmp	.LBB2_63
.LBB2_53:                               # %if.end.110
                                        #   in Loop: Header=BB2_45 Depth=2
	movl	-300(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -300(%rbp)
.LBB2_54:                               # %if.end.112
                                        #   in Loop: Header=BB2_45 Depth=2
	movq	-8(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB2_60
# BB#55:                                # %land.lhs.true.115
                                        #   in Loop: Header=BB2_45 Depth=2
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movl	(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpq	$0, 72(%rax)
	movl	%ecx, -420(%rbp)        # 4-byte Spill
	je	.LBB2_57
# BB#56:                                # %cond.true.119
                                        #   in Loop: Header=BB2_45 Depth=2
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movl	(%rax), %ecx
	movl	%ecx, -424(%rbp)        # 4-byte Spill
	jmp	.LBB2_58
.LBB2_57:                               # %cond.false.121
                                        #   in Loop: Header=BB2_45 Depth=2
	xorl	%eax, %eax
	movl	%eax, -424(%rbp)        # 4-byte Spill
	jmp	.LBB2_58
.LBB2_58:                               # %cond.end.122
                                        #   in Loop: Header=BB2_45 Depth=2
	movl	-424(%rbp), %eax        # 4-byte Reload
	movl	-420(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jg	.LBB2_60
# BB#59:                                # %if.then.125
                                        #   in Loop: Header=BB2_45 Depth=2
	jmp	.LBB2_63
.LBB2_60:                               # %if.end.126
                                        #   in Loop: Header=BB2_45 Depth=2
	jmp	.LBB2_61
.LBB2_61:                               # %do.body.127
                                        #   in Loop: Header=BB2_45 Depth=2
	jmp	.LBB2_62
.LBB2_62:                               # %do.end.128
                                        #   in Loop: Header=BB2_45 Depth=2
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rsi
	callq	*%rax
.LBB2_63:                               # %for.inc.131
                                        #   in Loop: Header=BB2_45 Depth=2
	movq	nextev, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB2_45
.LBB2_64:                               # %for.end.132
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_1
.Lfunc_end2:
	.size	sched, .Lfunc_end2-sched
	.cfi_endproc

	.align	16, 0x90
	.type	calctimo,@function
calctimo:                               # @calctimo
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
	movq	tevs, %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB3_14
.LBB3_2:                                # %if.end
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	tevs, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB3_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB3_13
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_5
.LBB3_5:                                # %do.body
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_6
.LBB3_6:                                # %do.end
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	40(%rcx), %rax
	jge	.LBB3_8
# BB#7:                                 # %if.then.4
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_12
.LBB3_8:                                # %if.end.5
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	40(%rcx), %rax
	jg	.LBB3_10
# BB#9:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	48(%rcx), %rax
	jle	.LBB3_11
.LBB3_10:                               # %if.then.13
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB3_11:                               # %if.end.16
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_12
.LBB3_12:                               # %for.inc
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB3_3
.LBB3_13:                               # %for.end
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB3_14:                               # %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end3:
	.size	calctimo, .Lfunc_end3-calctimo
	.cfi_endproc

	.globl	SetTimeout
	.align	16, 0x90
	.type	SetTimeout,@function
SetTimeout:                             # @SetTimeout
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB4_2
.LBB4_2:                                # %do.end
	jmp	.LBB4_3
.LBB4_3:                                # %do.body.1
	jmp	.LBB4_4
.LBB4_4:                                # %do.end.2
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	addq	$40, %rcx
	movq	%rcx, %rdi
	callq	gettimeofday
	movl	$1000, %edx             # imm = 0x3E8
	movl	-12(%rbp), %r8d
	movl	%eax, -16(%rbp)         # 4-byte Spill
	movl	%r8d, %eax
	movl	%edx, -20(%rbp)         # 4-byte Spill
	cltd
	movl	-20(%rbp), %r8d         # 4-byte Reload
	idivl	%r8d
	movslq	%eax, %rcx
	movq	-8(%rbp), %rsi
	addq	40(%rsi), %rcx
	movq	%rcx, 40(%rsi)
	movl	-12(%rbp), %eax
	cltd
	idivl	%r8d
	imull	$1000, %edx, %edx       # imm = 0x3E8
	movslq	%edx, %rcx
	movq	-8(%rbp), %rsi
	addq	48(%rsi), %rcx
	movq	%rcx, 48(%rsi)
	movq	-8(%rbp), %rcx
	cmpq	$1000000, 48(%rcx)      # imm = 0xF4240
	jle	.LBB4_6
# BB#5:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	48(%rax), %rcx
	subq	$1000000, %rcx          # imm = 0xF4240
	movq	%rcx, 48(%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 40(%rax)
.LBB4_6:                                # %if.end
	movq	-8(%rbp), %rax
	cmpl	$0, 56(%rax)
	je	.LBB4_8
# BB#7:                                 # %if.then.14
	movl	$1, calctimeout
.LBB4_8:                                # %if.end.15
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	SetTimeout, .Lfunc_end4-SetTimeout
	.cfi_endproc

	.type	evs,@object             # @evs
	.local	evs
	.comm	evs,8,8
	.type	calctimeout,@object     # @calctimeout
	.local	calctimeout
	.comm	calctimeout,4,4
	.type	tevs,@object            # @tevs
	.local	tevs
	.comm	tevs,8,8
	.type	nextev,@object          # @nextev
	.local	nextev
	.comm	nextev,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"select"
	.size	.L.str, 7


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
