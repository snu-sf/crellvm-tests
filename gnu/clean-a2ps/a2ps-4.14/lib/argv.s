	.text
	.file	"argv.bc"
	.globl	dupargv
	.align	16, 0x90
	.type	dupargv,@function
dupargv:                                # @dupargv
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
	cmpq	$0, -16(%rbp)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB0_15
.LBB0_2:                                # %if.end
	movl	$0, -20(%rbp)
.LBB0_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB0_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_5
.LBB0_5:                                # %for.inc
                                        #   in Loop: Header=BB0_3 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_3
.LBB0_6:                                # %for.end
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	shlq	$3, %rcx
	movq	%rcx, %rdi
	callq	malloc
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_8
# BB#7:                                 # %if.then.4
	movq	$0, -8(%rbp)
	jmp	.LBB0_15
.LBB0_8:                                # %if.end.5
	movl	$0, -20(%rbp)
.LBB0_9:                                # %for.cond.6
                                        # =>This Inner Loop Header: Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB0_14
# BB#10:                                # %for.body.11
                                        #   in Loop: Header=BB0_9 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	strlen
	movl	%eax, %edx
	movl	%edx, -36(%rbp)
	movl	-36(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	malloc
	movslq	-20(%rbp), %rcx
	movq	-32(%rbp), %rdi
	movq	%rax, (%rdi,%rcx,8)
	movslq	-20(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB0_12
# BB#11:                                # %if.then.26
	movq	-32(%rbp), %rdi
	callq	freeargv
	movq	$0, -8(%rbp)
	jmp	.LBB0_15
.LBB0_12:                               # %if.end.27
                                        #   in Loop: Header=BB0_9 Depth=1
	movslq	-20(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	strcpy
	movq	%rax, -48(%rbp)         # 8-byte Spill
# BB#13:                                # %for.inc.33
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_9
.LBB0_14:                               # %for.end.35
	movslq	-20(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	$0, (%rcx,%rax,8)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_15:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	dupargv, .Lfunc_end0-dupargv
	.cfi_endproc

	.globl	freeargv
	.align	16, 0x90
	.type	freeargv,@function
freeargv:                               # @freeargv
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB1_6
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB1_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	free
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB1_2 Depth=1
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB1_2
.LBB1_5:                                # %for.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB1_6:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	freeargv, .Lfunc_end1-freeargv
	.cfi_endproc

	.globl	freeargv_from
	.align	16, 0x90
	.type	freeargv_from,@function
freeargv_from:                          # @freeargv_from
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB2_12
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB2_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -12(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jle	.LBB2_4
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	setne	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB2_4:                                # %land.end
                                        #   in Loop: Header=BB2_2 Depth=1
	movb	-25(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB2_5
	jmp	.LBB2_7
.LBB2_5:                                # %for.body
                                        #   in Loop: Header=BB2_2 Depth=1
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB2_2 Depth=1
	movl	-12(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB2_2
.LBB2_7:                                # %for.end
	jmp	.LBB2_8
.LBB2_8:                                # %for.cond.3
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_11
# BB#9:                                 # %for.body.5
                                        #   in Loop: Header=BB2_8 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	callq	free
# BB#10:                                # %for.inc.6
                                        #   in Loop: Header=BB2_8 Depth=1
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB2_8
.LBB2_11:                               # %for.end.8
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB2_12:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	freeargv_from, .Lfunc_end2-freeargv_from
	.cfi_endproc

	.globl	buildargv_argc
	.align	16, 0x90
	.type	buildargv_argc,@function
buildargv_argc:                         # @buildargv_argc
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB3_59
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	strlen
	addq	$16, %rax
	andq	$-16, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rsp
	movq	%rdi, -32(%rbp)
.LBB3_2:                                # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
                                        #     Child Loop BB3_19 Depth 2
                                        #     Child Loop BB3_54 Depth 2
	jmp	.LBB3_3
.LBB3_3:                                # %while.cond
                                        #   Parent Loop BB3_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	movslq	%ecx, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movzwl	(%rax,%rdx,2), %ecx
	andl	$8192, %ecx             # imm = 0x2000
	cmpl	$0, %ecx
	je	.LBB3_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB3_3 Depth=2
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_3
.LBB3_5:                                # %while.end
                                        #   in Loop: Header=BB3_2 Depth=1
	cmpl	$0, -48(%rbp)
	je	.LBB3_7
# BB#6:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movl	-48(%rbp), %edx
	subl	$1, %edx
	cmpl	%edx, %ecx
	jl	.LBB3_18
.LBB3_7:                                # %if.then.7
                                        #   in Loop: Header=BB3_2 Depth=1
	cmpq	$0, -56(%rbp)
	jne	.LBB3_12
# BB#8:                                 # %if.then.10
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$8, (%rax)
	jle	.LBB3_10
# BB#9:                                 # %cond.true
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	jmp	.LBB3_11
.LBB3_10:                               # %cond.false
                                        #   in Loop: Header=BB3_2 Depth=1
	movl	$8, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB3_11
.LBB3_11:                               # %cond.end
                                        #   in Loop: Header=BB3_2 Depth=1
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, -48(%rbp)
	movslq	-48(%rbp), %rcx
	shlq	$3, %rcx
	movq	%rcx, %rdi
	callq	malloc
	movq	%rax, -64(%rbp)
	jmp	.LBB3_13
.LBB3_12:                               # %if.else
                                        #   in Loop: Header=BB3_2 Depth=1
	movl	-48(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -48(%rbp)
	movq	-56(%rbp), %rcx
	movslq	-48(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	callq	realloc
	movq	%rax, -64(%rbp)
.LBB3_13:                               # %if.end
                                        #   in Loop: Header=BB3_2 Depth=1
	cmpq	$0, -64(%rbp)
	jne	.LBB3_17
# BB#14:                                # %if.then.21
	cmpq	$0, -56(%rbp)
	je	.LBB3_16
# BB#15:                                # %if.then.24
	movq	-56(%rbp), %rdi
	callq	freeargv
	movq	$0, -56(%rbp)
.LBB3_16:                               # %if.end.25
	jmp	.LBB3_58
.LBB3_17:                               # %if.end.26
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movslq	(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	$0, (%rcx,%rax,8)
.LBB3_18:                               # %if.end.29
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB3_19:                               # %while.cond.30
                                        #   Parent Loop BB3_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB3_51
# BB#20:                                # %while.body.34
                                        #   in Loop: Header=BB3_19 Depth=2
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	movslq	%ecx, %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movzwl	(%rax,%rdx,2), %ecx
	andl	$8192, %ecx             # imm = 0x2000
	cmpl	$0, %ecx
	je	.LBB3_25
# BB#21:                                # %land.lhs.true
                                        #   in Loop: Header=BB3_19 Depth=2
	cmpl	$0, -36(%rbp)
	jne	.LBB3_25
# BB#22:                                # %land.lhs.true.43
                                        #   in Loop: Header=BB3_19 Depth=2
	cmpl	$0, -40(%rbp)
	jne	.LBB3_25
# BB#23:                                # %land.lhs.true.45
                                        #   in Loop: Header=BB3_19 Depth=2
	cmpl	$0, -44(%rbp)
	jne	.LBB3_25
# BB#24:                                # %if.then.47
                                        #   in Loop: Header=BB3_2 Depth=1
	jmp	.LBB3_51
.LBB3_25:                               # %if.else.48
                                        #   in Loop: Header=BB3_19 Depth=2
	cmpl	$0, -44(%rbp)
	je	.LBB3_27
# BB#26:                                # %if.then.50
                                        #   in Loop: Header=BB3_19 Depth=2
	movl	$0, -44(%rbp)
	movq	-8(%rbp), %rax
	movb	(%rax), %cl
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movb	%cl, (%rax)
	jmp	.LBB3_49
.LBB3_27:                               # %if.else.52
                                        #   in Loop: Header=BB3_19 Depth=2
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$92, %ecx
	jne	.LBB3_29
# BB#28:                                # %if.then.56
                                        #   in Loop: Header=BB3_19 Depth=2
	movl	$1, -44(%rbp)
	jmp	.LBB3_48
.LBB3_29:                               # %if.else.57
                                        #   in Loop: Header=BB3_19 Depth=2
	cmpl	$0, -36(%rbp)
	je	.LBB3_34
# BB#30:                                # %if.then.59
                                        #   in Loop: Header=BB3_19 Depth=2
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$39, %ecx
	jne	.LBB3_32
# BB#31:                                # %if.then.63
                                        #   in Loop: Header=BB3_19 Depth=2
	movl	$0, -36(%rbp)
	jmp	.LBB3_33
.LBB3_32:                               # %if.else.64
                                        #   in Loop: Header=BB3_19 Depth=2
	movq	-8(%rbp), %rax
	movb	(%rax), %cl
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movb	%cl, (%rax)
.LBB3_33:                               # %if.end.66
                                        #   in Loop: Header=BB3_19 Depth=2
	jmp	.LBB3_47
.LBB3_34:                               # %if.else.67
                                        #   in Loop: Header=BB3_19 Depth=2
	cmpl	$0, -40(%rbp)
	je	.LBB3_39
# BB#35:                                # %if.then.69
                                        #   in Loop: Header=BB3_19 Depth=2
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$34, %ecx
	jne	.LBB3_37
# BB#36:                                # %if.then.73
                                        #   in Loop: Header=BB3_19 Depth=2
	movl	$0, -40(%rbp)
	jmp	.LBB3_38
.LBB3_37:                               # %if.else.74
                                        #   in Loop: Header=BB3_19 Depth=2
	movq	-8(%rbp), %rax
	movb	(%rax), %cl
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movb	%cl, (%rax)
.LBB3_38:                               # %if.end.76
                                        #   in Loop: Header=BB3_19 Depth=2
	jmp	.LBB3_46
.LBB3_39:                               # %if.else.77
                                        #   in Loop: Header=BB3_19 Depth=2
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$39, %ecx
	jne	.LBB3_41
# BB#40:                                # %if.then.81
                                        #   in Loop: Header=BB3_19 Depth=2
	movl	$1, -36(%rbp)
	jmp	.LBB3_45
.LBB3_41:                               # %if.else.82
                                        #   in Loop: Header=BB3_19 Depth=2
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$34, %ecx
	jne	.LBB3_43
# BB#42:                                # %if.then.86
                                        #   in Loop: Header=BB3_19 Depth=2
	movl	$1, -40(%rbp)
	jmp	.LBB3_44
.LBB3_43:                               # %if.else.87
                                        #   in Loop: Header=BB3_19 Depth=2
	movq	-8(%rbp), %rax
	movb	(%rax), %cl
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -24(%rbp)
	movb	%cl, (%rax)
.LBB3_44:                               # %if.end.89
                                        #   in Loop: Header=BB3_19 Depth=2
	jmp	.LBB3_45
.LBB3_45:                               # %if.end.90
                                        #   in Loop: Header=BB3_19 Depth=2
	jmp	.LBB3_46
.LBB3_46:                               # %if.end.91
                                        #   in Loop: Header=BB3_19 Depth=2
	jmp	.LBB3_47
.LBB3_47:                               # %if.end.92
                                        #   in Loop: Header=BB3_19 Depth=2
	jmp	.LBB3_48
.LBB3_48:                               # %if.end.93
                                        #   in Loop: Header=BB3_19 Depth=2
	jmp	.LBB3_49
.LBB3_49:                               # %if.end.94
                                        #   in Loop: Header=BB3_19 Depth=2
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
# BB#50:                                # %if.end.96
                                        #   in Loop: Header=BB3_19 Depth=2
	jmp	.LBB3_19
.LBB3_51:                               # %while.end.97
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	-24(%rbp), %rax
	movb	$0, (%rax)
	movq	-32(%rbp), %rdi
	callq	strdup
	movq	-16(%rbp), %rdi
	movslq	(%rdi), %rdi
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx,%rdi,8)
	movq	-16(%rbp), %rax
	movslq	(%rax), %rax
	movq	-56(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB3_53
# BB#52:                                # %if.then.105
	movq	-56(%rbp), %rdi
	callq	freeargv
	movq	$0, -56(%rbp)
	jmp	.LBB3_58
.LBB3_53:                               # %if.end.106
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movslq	(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	$0, (%rdx,%rax,8)
.LBB3_54:                               # %while.cond.109
                                        #   Parent Loop BB3_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	movslq	%ecx, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movzwl	(%rax,%rdx,2), %ecx
	andl	$8192, %ecx             # imm = 0x2000
	cmpl	$0, %ecx
	je	.LBB3_56
# BB#55:                                # %while.body.117
                                        #   in Loop: Header=BB3_54 Depth=2
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_54
.LBB3_56:                               # %while.end.119
                                        #   in Loop: Header=BB3_2 Depth=1
	jmp	.LBB3_57
.LBB3_57:                               # %do.cond
                                        #   in Loop: Header=BB3_2 Depth=1
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB3_2
.LBB3_58:                               # %do.end
	jmp	.LBB3_59
.LBB3_59:                               # %if.end.123
	movq	-56(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	buildargv_argc, .Lfunc_end3-buildargv_argc
	.cfi_endproc

	.globl	buildargv
	.align	16, 0x90
	.type	buildargv,@function
buildargv:                              # @buildargv
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
	subq	$16, %rsp
	leaq	-12(%rbp), %rsi
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	-8(%rbp), %rdi
	callq	buildargv_argc
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	buildargv, .Lfunc_end4-buildargv
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
