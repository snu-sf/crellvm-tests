	.text
	.file	"cm.bc"
	.globl	evalcost
	.align	16, 0x90
	.type	evalcost,@function
evalcost:                               # @evalcost
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
	movl	%edi, -4(%rbp)
	movl	cost, %edi
	addl	$1, %edi
	movl	%edi, cost
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	evalcost, .Lfunc_end0-evalcost
	.cfi_endproc

	.globl	cmputc
	.align	16, 0x90
	.type	cmputc,@function
cmputc:                                 # @cmputc
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
	movl	%edi, -4(%rbp)
	movq	current_tty, %rax
	cmpq	$0, 40(%rax)
	je	.LBB1_2
# BB#1:                                 # %if.then
	movl	-4(%rbp), %eax
	andl	$127, %eax
	movq	current_tty, %rcx
	movq	40(%rcx), %rsi
	movl	%eax, %edi
	callq	_IO_putc
	movl	%eax, -8(%rbp)          # 4-byte Spill
.LBB1_2:                                # %if.end
	movl	-4(%rbp), %eax
	andl	$127, %eax
	movq	current_tty, %rcx
	movq	32(%rcx), %rsi
	movl	%eax, %edi
	callq	_IO_putc
	movl	-4(%rbp), %edi
	movl	%eax, -12(%rbp)         # 4-byte Spill
	movl	%edi, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	cmputc, .Lfunc_end1-cmputc
	.cfi_endproc

	.globl	cmcheckmagic
	.align	16, 0x90
	.type	cmcheckmagic,@function
cmcheckmagic:                           # @cmcheckmagic
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
	movq	-8(%rbp), %rdi
	movq	72(%rdi), %rdi
	movl	4(%rdi), %eax
	movq	-8(%rbp), %rdi
	movq	72(%rdi), %rdi
	cmpl	136(%rdi), %eax
	jne	.LBB2_9
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movb	148(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB2_3
# BB#2:                                 # %lor.lhs.false
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movl	(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movl	140(%rax), %edx
	subl	$1, %edx
	cmpl	%edx, %ecx
	jl	.LBB2_4
.LBB2_3:                                # %if.then.6
	callq	emacs_abort
.LBB2_4:                                # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB2_6
# BB#5:                                 # %if.then.7
	movl	$13, %edi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rsi
	callq	_IO_putc
	movl	%eax, -12(%rbp)         # 4-byte Spill
.LBB2_6:                                # %if.end.9
	movl	$13, %edi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rsi
	callq	_IO_putc
	movq	-8(%rbp), %rsi
	cmpq	$0, 40(%rsi)
	movl	%eax, -16(%rbp)         # 4-byte Spill
	je	.LBB2_8
# BB#7:                                 # %if.then.13
	movl	$10, %edi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rsi
	callq	_IO_putc
	movl	%eax, -20(%rbp)         # 4-byte Spill
.LBB2_8:                                # %if.end.16
	movl	$10, %edi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rsi
	callq	_IO_putc
	movq	-8(%rbp), %rsi
	movq	72(%rsi), %rsi
	movl	$0, 4(%rsi)
	movq	-8(%rbp), %rsi
	movq	72(%rsi), %rsi
	movl	(%rsi), %edi
	addl	$1, %edi
	movl	%edi, (%rsi)
	movl	%eax, -24(%rbp)         # 4-byte Spill
.LBB2_9:                                # %if.end.23
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	cmcheckmagic, .Lfunc_end2-cmcheckmagic
	.cfi_endproc

	.globl	cmcostinit
	.align	16, 0x90
	.type	cmcostinit,@function
cmcostinit:                             # @cmcostinit
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	72(%rdi), %rdi
	cmpq	$0, 8(%rdi)
	je	.LBB3_2
# BB#1:                                 # %cond.true
	movl	$1, %esi
	movabsq	$evalcost, %rdx
	movl	$0, cost
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	8(%rax), %rdi
	callq	tputs
	movl	cost, %esi
	movl	%esi, -20(%rbp)         # 4-byte Spill
	jmp	.LBB3_3
.LBB3_2:                                # %cond.false
	movl	$9999, %eax             # imm = 0x270F
	movl	%eax, -20(%rbp)         # 4-byte Spill
	jmp	.LBB3_3
.LBB3_3:                                # %cond.end
	movl	-20(%rbp), %eax         # 4-byte Reload
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rcx
	movl	%eax, 152(%rcx)
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rcx
	cmpq	$0, 16(%rcx)
	je	.LBB3_5
# BB#4:                                 # %cond.true.6
	movl	$1, %esi
	movabsq	$evalcost, %rdx
	movl	$0, cost
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	16(%rax), %rdi
	callq	tputs
	movl	cost, %esi
	movl	%esi, -24(%rbp)         # 4-byte Spill
	jmp	.LBB3_6
.LBB3_5:                                # %cond.false.9
	movl	$9999, %eax             # imm = 0x270F
	movl	%eax, -24(%rbp)         # 4-byte Spill
	jmp	.LBB3_6
.LBB3_6:                                # %cond.end.10
	movl	-24(%rbp), %eax         # 4-byte Reload
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rcx
	movl	%eax, 156(%rcx)
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rcx
	cmpq	$0, 24(%rcx)
	je	.LBB3_8
# BB#7:                                 # %cond.true.15
	movl	$1, %esi
	movabsq	$evalcost, %rdx
	movl	$0, cost
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	24(%rax), %rdi
	callq	tputs
	movl	cost, %esi
	movl	%esi, -28(%rbp)         # 4-byte Spill
	jmp	.LBB3_9
.LBB3_8:                                # %cond.false.18
	movl	$9999, %eax             # imm = 0x270F
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jmp	.LBB3_9
.LBB3_9:                                # %cond.end.19
	movl	-28(%rbp), %eax         # 4-byte Reload
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rcx
	movl	%eax, 160(%rcx)
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rcx
	cmpq	$0, 32(%rcx)
	je	.LBB3_11
# BB#10:                                # %cond.true.24
	movl	$1, %esi
	movabsq	$evalcost, %rdx
	movl	$0, cost
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	32(%rax), %rdi
	callq	tputs
	movl	cost, %esi
	movl	%esi, -32(%rbp)         # 4-byte Spill
	jmp	.LBB3_12
.LBB3_11:                               # %cond.false.27
	movl	$9999, %eax             # imm = 0x270F
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jmp	.LBB3_12
.LBB3_12:                               # %cond.end.28
	movl	-32(%rbp), %eax         # 4-byte Reload
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rcx
	movl	%eax, 164(%rcx)
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rcx
	cmpq	$0, 40(%rcx)
	je	.LBB3_14
# BB#13:                                # %cond.true.33
	movl	$1, %esi
	movabsq	$evalcost, %rdx
	movl	$0, cost
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	40(%rax), %rdi
	callq	tputs
	movl	cost, %esi
	movl	%esi, -36(%rbp)         # 4-byte Spill
	jmp	.LBB3_15
.LBB3_14:                               # %cond.false.36
	movl	$9999, %eax             # imm = 0x270F
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB3_15
.LBB3_15:                               # %cond.end.37
	movl	-36(%rbp), %eax         # 4-byte Reload
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rcx
	movl	%eax, 168(%rcx)
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rcx
	cmpq	$0, 48(%rcx)
	je	.LBB3_17
# BB#16:                                # %cond.true.42
	movl	$1, %esi
	movabsq	$evalcost, %rdx
	movl	$0, cost
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	48(%rax), %rdi
	callq	tputs
	movl	cost, %esi
	movl	%esi, -40(%rbp)         # 4-byte Spill
	jmp	.LBB3_18
.LBB3_17:                               # %cond.false.45
	movl	$9999, %eax             # imm = 0x270F
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB3_18
.LBB3_18:                               # %cond.end.46
	movl	-40(%rbp), %eax         # 4-byte Reload
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rcx
	movl	%eax, 172(%rcx)
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rcx
	cmpq	$0, 56(%rcx)
	je	.LBB3_20
# BB#19:                                # %cond.true.51
	movl	$1, %esi
	movabsq	$evalcost, %rdx
	movl	$0, cost
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	56(%rax), %rdi
	callq	tputs
	movl	cost, %esi
	movl	%esi, -44(%rbp)         # 4-byte Spill
	jmp	.LBB3_21
.LBB3_20:                               # %cond.false.54
	movl	$9999, %eax             # imm = 0x270F
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB3_21
.LBB3_21:                               # %cond.end.55
	movl	-44(%rbp), %eax         # 4-byte Reload
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rcx
	movl	%eax, 176(%rcx)
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rcx
	cmpl	$0, 144(%rcx)
	je	.LBB3_26
# BB#22:                                # %cond.true.60
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	cmpq	$0, 64(%rax)
	je	.LBB3_24
# BB#23:                                # %cond.true.63
	movl	$1, %esi
	movabsq	$evalcost, %rdx
	movl	$0, cost
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	64(%rax), %rdi
	callq	tputs
	movl	cost, %esi
	movl	%esi, -48(%rbp)         # 4-byte Spill
	jmp	.LBB3_25
.LBB3_24:                               # %cond.false.66
	movl	$9999, %eax             # imm = 0x270F
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB3_25
.LBB3_25:                               # %cond.end.67
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB3_27
.LBB3_26:                               # %cond.false.69
	movl	$9999, %eax             # imm = 0x270F
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB3_27
.LBB3_27:                               # %cond.end.70
	movl	-52(%rbp), %eax         # 4-byte Reload
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rcx
	movl	%eax, 180(%rcx)
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rcx
	cmpq	$0, 80(%rcx)
	jne	.LBB3_29
# BB#28:                                # %cond.true.74
	movl	$9999, %eax             # imm = 0x270F
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB3_33
.LBB3_29:                               # %cond.false.75
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rcx
	movq	80(%rcx), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	tgoto
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB3_31
# BB#30:                                # %cond.true.79
	movl	$1, %esi
	movabsq	$evalcost, %rdx
	movl	$0, cost
	movq	-16(%rbp), %rdi
	callq	tputs
	movl	cost, %esi
	movl	%esi, -60(%rbp)         # 4-byte Spill
	jmp	.LBB3_32
.LBB3_31:                               # %cond.false.80
	movl	$9999, %eax             # imm = 0x270F
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB3_32
.LBB3_32:                               # %cond.end.81
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB3_33:                               # %cond.end.83
	movl	-56(%rbp), %eax         # 4-byte Reload
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rcx
	movl	%eax, 188(%rcx)
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rcx
	cmpq	$0, 88(%rcx)
	jne	.LBB3_35
# BB#34:                                # %cond.true.88
	movl	$9999, %eax             # imm = 0x270F
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB3_39
.LBB3_35:                               # %cond.false.89
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rcx
	movq	88(%rcx), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	tgoto
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB3_37
# BB#36:                                # %cond.true.94
	movl	$1, %esi
	movabsq	$evalcost, %rdx
	movl	$0, cost
	movq	-16(%rbp), %rdi
	callq	tputs
	movl	cost, %esi
	movl	%esi, -68(%rbp)         # 4-byte Spill
	jmp	.LBB3_38
.LBB3_37:                               # %cond.false.95
	movl	$9999, %eax             # imm = 0x270F
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB3_38
.LBB3_38:                               # %cond.end.96
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB3_39:                               # %cond.end.98
	movl	-64(%rbp), %eax         # 4-byte Reload
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rcx
	movl	%eax, 192(%rcx)
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rcx
	cmpq	$0, 96(%rcx)
	jne	.LBB3_41
# BB#40:                                # %cond.true.103
	movl	$9999, %eax             # imm = 0x270F
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB3_45
.LBB3_41:                               # %cond.false.104
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rcx
	movq	96(%rcx), %rdi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	tgoto
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB3_43
# BB#42:                                # %cond.true.109
	movl	$1, %esi
	movabsq	$evalcost, %rdx
	movl	$0, cost
	movq	-16(%rbp), %rdi
	callq	tputs
	movl	cost, %esi
	movl	%esi, -76(%rbp)         # 4-byte Spill
	jmp	.LBB3_44
.LBB3_43:                               # %cond.false.110
	movl	$9999, %eax             # imm = 0x270F
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB3_44
.LBB3_44:                               # %cond.end.111
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB3_45:                               # %cond.end.113
	movl	-72(%rbp), %eax         # 4-byte Reload
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rcx
	movl	%eax, 196(%rcx)
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	cmcostinit, .Lfunc_end3-cmcostinit
	.cfi_endproc

	.globl	cmgoto
	.align	16, 0x90
	.type	cmgoto,@function
cmgoto:                                 # @cmgoto
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
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rdi
	movq	72(%rdi), %rdi
	cmpl	(%rdi), %edx
	jne	.LBB4_3
# BB#1:                                 # %land.lhs.true
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rcx
	cmpl	4(%rcx), %eax
	jne	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_46
.LBB4_3:                                # %if.end
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	cmpl	$0, (%rax)
	jl	.LBB4_31
# BB#4:                                 # %land.lhs.true.6
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	cmpl	$0, 4(%rax)
	jl	.LBB4_31
# BB#5:                                 # %if.then.10
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movl	(%rax), %esi
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movl	4(%rax), %edx
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %r8d
	callq	calccost
	movl	%eax, -32(%rbp)
	movl	$0, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	72(%rdi), %rdi
	movl	168(%rdi), %eax
	movl	%eax, -20(%rbp)
	cmpl	$9999, %eax             # imm = 0x270F
	jge	.LBB4_7
# BB#6:                                 # %if.then.17
	xorl	%eax, %eax
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %r8d
	movl	%eax, %esi
	movl	%eax, %edx
	movl	%eax, %r9d
	callq	calccost
	addl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
.LBB4_7:                                # %if.end.19
	movl	-20(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB4_9
# BB#8:                                 # %if.then.21
	movl	-20(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	$1, -40(%rbp)
.LBB4_9:                                # %if.end.22
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movl	176(%rax), %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$9999, %ecx             # imm = 0x270F
	jge	.LBB4_11
# BB#10:                                # %if.then.25
	xorl	%eax, %eax
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rcx
	movl	140(%rcx), %edx
	subl	$1, %edx
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %r8d
	movl	%edx, %esi
	movl	%eax, %edx
	movl	%eax, %r9d
	callq	calccost
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB4_11:                               # %if.end.29
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB4_13
# BB#12:                                # %if.then.31
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	$2, -40(%rbp)
.LBB4_13:                               # %if.end.32
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movl	172(%rax), %ecx
	movl	%ecx, -24(%rbp)
	cmpl	$9999, %ecx             # imm = 0x270F
	jge	.LBB4_21
# BB#14:                                # %if.then.35
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movb	148(%rax), %cl
	shrb	$4, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB4_19
# BB#15:                                # %if.then.37
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	cmpl	140(%rax), %ecx
	jl	.LBB4_17
# BB#16:                                # %if.then.44
	movl	$9999, -24(%rbp)        # imm = 0x270F
	jmp	.LBB4_18
.LBB4_17:                               # %if.else
	xorl	%eax, %eax
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rcx
	movl	(%rcx), %edx
	addl	$1, %edx
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %r8d
	movl	%edx, %esi
	movl	%eax, %edx
	movl	%eax, %r9d
	callq	calccost
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB4_18:                               # %if.end.50
	jmp	.LBB4_20
.LBB4_19:                               # %if.else.51
	xorl	%eax, %eax
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rcx
	movl	(%rcx), %esi
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %r8d
	movl	%eax, %edx
	movl	%eax, %r9d
	callq	calccost
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB4_20:                               # %if.end.56
	jmp	.LBB4_21
.LBB4_21:                               # %if.end.57
	movl	-24(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB4_23
# BB#22:                                # %if.then.59
	movl	-24(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	$3, -40(%rbp)
.LBB4_23:                               # %if.end.60
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movl	188(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	80(%rax), %rax
	movq	%rax, -56(%rbp)
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	cmpl	(%rax), %ecx
	jne	.LBB4_26
# BB#24:                                # %land.lhs.true.66
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	cmpl	$9999, 192(%rax)        # imm = 0x270F
	jge	.LBB4_26
# BB#25:                                # %if.then.69
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movl	192(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	88(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB4_30
.LBB4_26:                               # %if.else.73
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rcx
	cmpl	4(%rcx), %eax
	jne	.LBB4_29
# BB#27:                                # %land.lhs.true.77
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	cmpl	$9999, 196(%rax)        # imm = 0x270F
	jge	.LBB4_29
# BB#28:                                # %if.then.80
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movl	196(%rax), %ecx
	movl	%ecx, -36(%rbp)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	96(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB4_29:                               # %if.end.84
	jmp	.LBB4_30
.LBB4_30:                               # %if.end.85
	jmp	.LBB4_32
.LBB4_31:                               # %if.else.86
	movl	$0, -36(%rbp)
	movl	$100000, -32(%rbp)      # imm = 0x186A0
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	80(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB4_32:                               # %if.end.89
	movl	-36(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jg	.LBB4_39
# BB#33:                                # %if.then.91
	movl	$0, cost
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rcx
	cmpq	88(%rcx), %rax
	jne	.LBB4_35
# BB#34:                                # %cond.true
	movq	-56(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	tgoto
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB4_36
.LBB4_35:                               # %cond.false
	movq	-56(%rbp), %rdi
	movl	-16(%rbp), %esi
	movl	-12(%rbp), %edx
	callq	tgoto
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB4_36:                               # %cond.end
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	$1, %esi
	movabsq	$evalcost, %rdx
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, current_tty
	movq	-48(%rbp), %rdi
	callq	tputs
	movl	cost, %esi
	cmpl	-32(%rbp), %esi
	jg	.LBB4_38
# BB#37:                                # %if.then.98
	movl	$1, %esi
	movabsq	$cmputc, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, current_tty
	movq	-48(%rbp), %rdi
	callq	tputs
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movl	%esi, (%rax)
	movl	-16(%rbp), %esi
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movl	%esi, 4(%rax)
	jmp	.LBB4_46
.LBB4_38:                               # %if.end.103
	jmp	.LBB4_39
.LBB4_39:                               # %if.end.104
	movl	-40(%rbp), %eax
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movl	%ecx, -72(%rbp)         # 4-byte Spill
	je	.LBB4_40
	jmp	.LBB4_47
.LBB4_47:                               # %if.end.104
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	je	.LBB4_41
	jmp	.LBB4_48
.LBB4_48:                               # %if.end.104
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	je	.LBB4_42
	jmp	.LBB4_45
.LBB4_40:                               # %sw.bb
	movl	$1, %esi
	movabsq	$cmputc, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, current_tty
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	40(%rax), %rdi
	callq	tputs
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movl	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movl	$0, 4(%rax)
	jmp	.LBB4_45
.LBB4_41:                               # %sw.bb.110
	movl	$1, %esi
	movabsq	$cmputc, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, current_tty
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	56(%rax), %rdi
	callq	tputs
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movl	140(%rax), %esi
	subl	$1, %esi
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movl	%esi, (%rax)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movl	$0, 4(%rax)
	jmp	.LBB4_45
.LBB4_42:                               # %sw.bb.119
	movl	$1, %esi
	movabsq	$cmputc, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, current_tty
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	48(%rax), %rdi
	callq	tputs
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movb	148(%rax), %cl
	shrb	$4, %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB4_44
# BB#43:                                # %if.then.127
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
.LBB4_44:                               # %if.end.130
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movl	$0, 4(%rax)
.LBB4_45:                               # %sw.epilog
	movl	$1, %r9d
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movl	(%rax), %esi
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movl	4(%rax), %edx
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %r8d
	callq	calccost
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rdi
	movq	72(%rdi), %rdi
	movl	%ecx, (%rdi)
	movl	-16(%rbp), %ecx
	movq	-8(%rbp), %rdi
	movq	72(%rdi), %rdi
	movl	%ecx, 4(%rdi)
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB4_46:                               # %return
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	cmgoto, .Lfunc_end4-cmgoto
	.cfi_endproc

	.align	16, 0x90
	.type	calccost,@function
calccost:                               # @calccost
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movq	-16(%rbp), %rdi
	movq	72(%rdi), %rdi
	movl	4(%rdi), %ecx
	movq	-16(%rbp), %rdi
	movq	72(%rdi), %rdi
	cmpl	136(%rdi), %ecx
	jne	.LBB5_2
# BB#1:                                 # %if.then
	jmp	.LBB5_53
.LBB5_2:                                # %if.end
	movl	$0, -52(%rbp)
	movl	-28(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, %eax
	jne	.LBB5_4
# BB#3:                                 # %if.then.3
	jmp	.LBB5_17
.LBB5_4:                                # %if.end.4
	cmpl	$0, -40(%rbp)
	jge	.LBB5_6
# BB#5:                                 # %if.then.6
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movq	72(%rcx), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -80(%rbp)
	movq	-16(%rbp), %rcx
	movq	72(%rcx), %rcx
	movl	152(%rcx), %edx
	movl	%edx, -48(%rbp)
	subl	-40(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB5_7
.LBB5_6:                                # %if.else
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movl	156(%rax), %ecx
	movl	%ecx, -48(%rbp)
.LBB5_7:                                # %if.end.12
	cmpl	$9999, -48(%rbp)        # imm = 0x270F
	jne	.LBB5_11
# BB#8:                                 # %if.then.14
	cmpl	$0, -36(%rbp)
	je	.LBB5_10
# BB#9:                                 # %if.then.15
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -84(%rbp)         # 4-byte Spill
.LBB5_10:                               # %if.end.16
	movl	-48(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB5_63
.LBB5_11:                               # %if.end.17
	movl	-48(%rbp), %eax
	imull	-40(%rbp), %eax
	movl	%eax, -52(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB5_16
# BB#12:                                # %if.then.19
	jmp	.LBB5_13
.LBB5_13:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %esi
	movabsq	$cmputc, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, current_tty
	movq	-80(%rbp), %rdi
	callq	tputs
# BB#14:                                # %do.cond
                                        #   in Loop: Header=BB5_13 Depth=1
	movl	-40(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, %eax
	jg	.LBB5_13
# BB#15:                                # %do.end
	jmp	.LBB5_16
.LBB5_16:                               # %if.end.21
	jmp	.LBB5_17
.LBB5_17:                               # %x
	movl	-32(%rbp), %eax
	subl	-24(%rbp), %eax
	movl	%eax, -44(%rbp)
	cmpl	$0, %eax
	jne	.LBB5_19
# BB#18:                                # %if.then.24
	jmp	.LBB5_62
.LBB5_19:                               # %if.end.25
	cmpl	$0, -44(%rbp)
	jge	.LBB5_21
# BB#20:                                # %if.then.27
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movq	72(%rcx), %rcx
	movq	24(%rcx), %rcx
	movq	%rcx, -80(%rbp)
	movq	-16(%rbp), %rcx
	movq	72(%rcx), %rcx
	movl	160(%rcx), %edx
	movl	%edx, -48(%rbp)
	subl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB5_51
.LBB5_21:                               # %if.end.31
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	cmpl	$9999, 180(%rax)        # imm = 0x270F
	jge	.LBB5_23
# BB#22:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movb	148(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	testb	$1, %cl
	jne	.LBB5_24
.LBB5_23:                               # %if.then.35
	jmp	.LBB5_47
.LBB5_24:                               # %if.end.36
	movl	-44(%rbp), %eax
	movl	-24(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movq	72(%rdx), %rdx
	movl	%eax, -88(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	cltd
	movq	-96(%rbp), %rsi         # 8-byte Reload
	idivl	144(%rsi)
	movl	-88(%rbp), %ecx         # 4-byte Reload
	addl	%edx, %ecx
	movq	-16(%rbp), %rdi
	movq	72(%rdi), %rdi
	movl	%ecx, %eax
	cltd
	idivl	144(%rdi)
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rdi
	movq	72(%rdi), %rdi
	cltd
	idivl	144(%rdi)
	addl	-56(%rbp), %eax
	movq	-16(%rbp), %rdi
	movq	72(%rdi), %rdi
	imull	144(%rdi), %eax
	movl	%eax, -64(%rbp)
	movl	-64(%rbp), %eax
	movq	-16(%rbp), %rdi
	movq	72(%rdi), %rdi
	addl	144(%rdi), %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movq	-16(%rbp), %rdi
	movq	72(%rdi), %rdi
	cmpl	136(%rdi), %eax
	jl	.LBB5_26
# BB#25:                                # %if.then.54
	movl	$0, -60(%rbp)
.LBB5_26:                               # %if.end.55
	cmpl	$0, -56(%rbp)
	je	.LBB5_28
# BB#27:                                # %cond.true
	movl	-56(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	72(%rcx), %rcx
	imull	180(%rcx), %eax
	movl	-32(%rbp), %edx
	subl	-64(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	72(%rcx), %rcx
	imull	164(%rcx), %edx
	addl	%edx, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB5_29
.LBB5_28:                               # %cond.false
	movl	$9999, %eax             # imm = 0x270F
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB5_29
.LBB5_29:                               # %cond.end
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -72(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB5_31
# BB#30:                                # %cond.true.65
	movl	-60(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	72(%rcx), %rcx
	imull	180(%rcx), %eax
	movl	-68(%rbp), %edx
	subl	-32(%rbp), %edx
	movq	-16(%rbp), %rcx
	movq	72(%rcx), %rcx
	imull	160(%rcx), %edx
	addl	%edx, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB5_32
.LBB5_31:                               # %cond.false.74
	movl	$9999, %eax             # imm = 0x270F
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB5_32
.LBB5_32:                               # %cond.end.75
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	%eax, -48(%rbp)
	movl	-48(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jge	.LBB5_34
# BB#33:                                # %if.then.78
	movl	-60(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -64(%rbp)
.LBB5_34:                               # %if.end.79
	cmpl	$9999, -72(%rbp)        # imm = 0x270F
	jl	.LBB5_36
# BB#35:                                # %if.then.81
	jmp	.LBB5_44
.LBB5_36:                               # %if.end.82
	movl	-72(%rbp), %eax
	movl	-44(%rbp), %ecx
	movq	-16(%rbp), %rdx
	movq	72(%rdx), %rdx
	imull	164(%rdx), %ecx
	cmpl	%ecx, %eax
	jge	.LBB5_43
# BB#37:                                # %if.then.87
	movl	-72(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB5_42
# BB#38:                                # %if.then.90
	jmp	.LBB5_39
.LBB5_39:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-56(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, %eax
	jl	.LBB5_41
# BB#40:                                # %while.body
                                        #   in Loop: Header=BB5_39 Depth=1
	movl	$1, %esi
	movabsq	$cmputc, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, current_tty
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	64(%rax), %rdi
	callq	tputs
	jmp	.LBB5_39
.LBB5_41:                               # %while.end
	jmp	.LBB5_42
.LBB5_42:                               # %if.end.94
	movl	-64(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB5_43:                               # %if.end.95
	jmp	.LBB5_44
.LBB5_44:                               # %newdelta
	movl	-32(%rbp), %eax
	subl	-24(%rbp), %eax
	movl	%eax, -44(%rbp)
	cmpl	$0, %eax
	jne	.LBB5_46
# BB#45:                                # %if.then.98
	jmp	.LBB5_62
.LBB5_46:                               # %if.end.99
	jmp	.LBB5_47
.LBB5_47:                               # %olddelta
	cmpl	$0, -44(%rbp)
	jle	.LBB5_49
# BB#48:                                # %if.then.101
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movl	164(%rax), %ecx
	movl	%ecx, -48(%rbp)
	jmp	.LBB5_50
.LBB5_49:                               # %if.else.105
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movq	72(%rcx), %rcx
	movq	24(%rcx), %rcx
	movq	%rcx, -80(%rbp)
	movq	-16(%rbp), %rcx
	movq	72(%rcx), %rcx
	movl	160(%rcx), %edx
	movl	%edx, -48(%rbp)
	subl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB5_50:                               # %if.end.111
	jmp	.LBB5_51
.LBB5_51:                               # %dodelta
	cmpl	$9999, -48(%rbp)        # imm = 0x270F
	jne	.LBB5_56
# BB#52:                                # %if.then.113
	jmp	.LBB5_53
.LBB5_53:                               # %fail
	cmpl	$0, -36(%rbp)
	je	.LBB5_55
# BB#54:                                # %if.then.115
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB5_55:                               # %if.end.117
	movl	$9999, -4(%rbp)         # imm = 0x270F
	jmp	.LBB5_63
.LBB5_56:                               # %if.end.118
	movl	-48(%rbp), %eax
	imull	-44(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -52(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB5_61
# BB#57:                                # %if.then.122
	jmp	.LBB5_58
.LBB5_58:                               # %do.body.123
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, %esi
	movabsq	$cmputc, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, current_tty
	movq	-80(%rbp), %rdi
	callq	tputs
# BB#59:                                # %do.cond.124
                                        #   in Loop: Header=BB5_58 Depth=1
	movl	-44(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -44(%rbp)
	cmpl	$0, %eax
	jg	.LBB5_58
# BB#60:                                # %do.end.127
	jmp	.LBB5_61
.LBB5_61:                               # %if.end.128
	jmp	.LBB5_62
.LBB5_62:                               # %done
	movl	-52(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB5_63:                               # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	calccost, .Lfunc_end5-calccost
	.cfi_endproc

	.globl	Wcm_clear
	.align	16, 0x90
	.type	Wcm_clear,@function
Wcm_clear:                              # @Wcm_clear
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
	subq	$16, %rsp
	xorl	%esi, %esi
	movl	$200, %eax
	movl	%eax, %edx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	72(%rdi), %rdi
	callq	memset
	movq	$0, UP
	movq	$0, BC
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	Wcm_clear, .Lfunc_end6-Wcm_clear
	.cfi_endproc

	.globl	Wcm_init
	.align	16, 0x90
	.type	Wcm_init,@function
Wcm_init:                               # @Wcm_init
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	72(%rdi), %rdi
	cmpq	$0, 80(%rdi)
	je	.LBB7_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB7_13
.LBB7_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB7_4
# BB#3:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	cmpq	$0, 24(%rax)
	jne	.LBB7_5
.LBB7_4:                                # %if.then.5
	movl	$-1, -4(%rbp)
	jmp	.LBB7_13
.LBB7_5:                                # %if.end.6
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	cmpq	$0, 80(%rax)
	jne	.LBB7_9
# BB#6:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	cmpq	$0, 16(%rax)
	je	.LBB7_8
# BB#7:                                 # %lor.lhs.false.12
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	cmpq	$0, 32(%rax)
	jne	.LBB7_9
.LBB7_8:                                # %if.then.15
	movl	$-1, -4(%rbp)
	jmp	.LBB7_13
.LBB7_9:                                # %if.end.16
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	cmpl	$0, 140(%rax)
	jle	.LBB7_11
# BB#10:                                # %lor.lhs.false.18
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	cmpl	$0, 136(%rax)
	jg	.LBB7_12
.LBB7_11:                               # %if.then.21
	movl	$-2, -4(%rbp)
	jmp	.LBB7_13
.LBB7_12:                               # %if.end.22
	movl	$0, -4(%rbp)
.LBB7_13:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end7:
	.size	Wcm_init, .Lfunc_end7-Wcm_init
	.cfi_endproc

	.type	cost,@object            # @cost
	.comm	cost,4,4
	.type	current_tty,@object     # @current_tty
	.comm	current_tty,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"OOPS"
	.size	.L.str, 5


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
