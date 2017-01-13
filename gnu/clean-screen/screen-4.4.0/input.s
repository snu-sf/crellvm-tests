	.text
	.file	"input.bc"
	.globl	inp_setprompt
	.align	16, 0x90
	.type	inp_setprompt,@function
inp_setprompt:                          # @inp_setprompt
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
	movq	%rsi, -16(%rbp)
	movq	flayer, %rsi
	movq	40(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB0_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 816(%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdi
	movq	%rax, 808(%rdi)
.LBB0_2:                                # %if.end
	cmpq	$0, -16(%rbp)
	je	.LBB0_6
# BB#3:                                 # %if.then.2
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	%rcx, %rax
	je	.LBB0_5
# BB#4:                                 # %if.then.4
	movl	$768, %eax              # imm = 0x300
	movl	%eax, %edx
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	strncpy
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB0_5:                                # %if.end.9
	movq	-24(%rbp), %rax
	movb	$0, 768(%rax)
	movq	-24(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 772(%rax)
	movq	-24(%rbp), %rax
	movl	%ecx, 776(%rax)
.LBB0_6:                                # %if.end.19
	xorl	%eax, %eax
	movq	flayer, %rcx
	movl	12(%rcx), %edx
	subl	$1, %edx
	movq	flayer, %rcx
	movl	8(%rcx), %esi
	subl	$1, %esi
	movl	%edx, %edi
	movl	%esi, -36(%rbp)         # 4-byte Spill
	movl	%eax, %esi
	movl	-36(%rbp), %edx         # 4-byte Reload
	movl	%eax, %ecx
	callq	InpRedisplayLine
	movq	-24(%rbp), %r8
	movl	816(%r8), %eax
	movq	-24(%rbp), %r8
	movl	820(%r8), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -40(%rbp)         # 4-byte Spill
	je	.LBB0_8
# BB#7:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB0_9
.LBB0_8:                                # %cond.false
	movq	-24(%rbp), %rax
	movl	776(%rax), %ecx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
.LBB0_9:                                # %cond.end
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	-40(%rbp), %ecx         # 4-byte Reload
	addl	%eax, %ecx
	movq	flayer, %rdx
	movl	%ecx, 16(%rdx)
	movq	flayer, %rdx
	movl	12(%rdx), %eax
	subl	$1, %eax
	movq	flayer, %rdx
	movl	%eax, 20(%rdx)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	inp_setprompt, .Lfunc_end0-inp_setprompt
	.cfi_endproc

	.align	16, 0x90
	.type	InpRedisplayLine,@function
InpRedisplayLine:                       # @InpRedisplayLine
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
	subq	$80, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movq	flayer, %rax
	movq	40(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	-4(%rbp), %ecx
	movq	flayer, %rax
	movl	12(%rax), %edx
	subl	$1, %edx
	cmpl	%edx, %ecx
	je	.LBB1_16
# BB#1:                                 # %if.then
	jmp	.LBB1_2
.LBB1_2:                                # %do.body
	movq	flayer, %rax
	movq	%rax, -56(%rbp)
# BB#3:                                 # %do.body.1
	jmp	.LBB1_4
.LBB1_4:                                # %do.end
	movq	flayer, %rax
	movq	48(%rax), %rax
	movq	%rax, flayer
	movq	flayer, %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
# BB#5:                                 # %do.body.2
	jmp	.LBB1_6
.LBB1_6:                                # %do.end.3
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	flayer, %rcx
	movq	%rax, (%rcx)
	movq	flayer, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
.LBB1_7:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB1_10
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB1_7 Depth=1
	movq	flayer, %rax
	movq	-72(%rbp), %rcx
	movq	%rax, 64(%rcx)
# BB#9:                                 # %for.inc
                                        #   in Loop: Header=BB1_7 Depth=1
	movq	-72(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB1_7
.LBB1_10:                               # %for.end
	movq	flayer, %rax
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	callq	*%rax
	movq	-56(%rbp), %rax
	movq	%rax, flayer
	movq	flayer, %rax
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
.LBB1_11:                               # %for.cond.8
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB1_14
# BB#12:                                # %for.body.10
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	flayer, %rax
	movq	-72(%rbp), %rcx
	movq	%rax, 64(%rcx)
# BB#13:                                # %for.inc.12
                                        #   in Loop: Header=BB1_11 Depth=1
	movq	-72(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB1_11
.LBB1_14:                               # %for.end.14
	movq	-64(%rbp), %rax
	movq	flayer, %rcx
	movq	48(%rcx), %rcx
	movq	%rax, (%rcx)
# BB#15:                                # %do.end.17
	jmp	.LBB1_33
.LBB1_16:                               # %if.end
	movq	-48(%rbp), %rax
	movslq	772(%rax), %rax
	movq	-48(%rbp), %rcx
	movb	$0, (%rcx,%rax)
	movl	-8(%rbp), %edx
	movl	%edx, -20(%rbp)
	movl	-12(%rbp), %edx
	subl	-8(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -36(%rbp)
	movl	$0, -28(%rbp)
	movq	-48(%rbp), %rax
	movl	816(%rax), %edx
	movl	%edx, -24(%rbp)
	cmpl	$0, -36(%rbp)
	jle	.LBB1_21
# BB#17:                                # %land.lhs.true
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB1_21
# BB#18:                                # %if.then.22
	movl	-36(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	movl	-24(%rbp), %ecx
	subl	-20(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB1_20
# BB#19:                                # %if.then.25
	movl	-24(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB1_20:                               # %if.end.27
	movabsq	$mchar_so, %rcx
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	flayer, %rdi
	movq	-48(%rbp), %rsi
	movq	808(%rsi), %rsi
	movslq	-20(%rbp), %r8
	addq	%r8, %rsi
	movslq	-28(%rbp), %r8
	subq	%r8, %rdx
	addq	%rdx, %rsi
	movl	-32(%rbp), %edx
	movl	-20(%rbp), %r8d
	movl	-4(%rbp), %r9d
	callq	LPutStr
	movl	-32(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-32(%rbp), %eax
	movl	-36(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, -36(%rbp)
.LBB1_21:                               # %if.end.32
	movl	-24(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-48(%rbp), %rcx
	movl	772(%rcx), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-48(%rbp), %rcx
	movl	820(%rcx), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB1_27
# BB#22:                                # %land.lhs.true.37
	cmpl	$0, -36(%rbp)
	jle	.LBB1_27
# BB#23:                                # %land.lhs.true.39
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB1_27
# BB#24:                                # %if.then.41
	movl	-36(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	movl	-24(%rbp), %ecx
	subl	-20(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB1_26
# BB#25:                                # %if.then.44
	movl	-24(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB1_26:                               # %if.end.46
	movabsq	$mchar_so, %rcx
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	flayer, %rdi
	movq	-48(%rbp), %rsi
	movslq	-20(%rbp), %r8
	addq	%r8, %rsi
	movslq	-28(%rbp), %r8
	subq	%r8, %rdx
	addq	%rdx, %rsi
	movl	-32(%rbp), %edx
	movl	-20(%rbp), %r8d
	movl	-4(%rbp), %r9d
	callq	LPutStr
	movl	-32(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-32(%rbp), %eax
	movl	-36(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, -36(%rbp)
.LBB1_27:                               # %if.end.56
	movl	-24(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	flayer, %rcx
	movl	8(%rcx), %eax
	movl	%eax, -24(%rbp)
	cmpl	$0, -16(%rbp)
	jne	.LBB1_33
# BB#28:                                # %land.lhs.true.58
	cmpl	$0, -36(%rbp)
	jle	.LBB1_33
# BB#29:                                # %land.lhs.true.60
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB1_33
# BB#30:                                # %if.then.62
	movl	-36(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	movl	-24(%rbp), %ecx
	subl	-20(%rbp), %ecx
	cmpl	%ecx, %eax
	jle	.LBB1_32
# BB#31:                                # %if.then.65
	movl	-24(%rbp), %eax
	subl	-20(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB1_32:                               # %if.end.67
	xorl	%r9d, %r9d
	movq	flayer, %rdi
	movl	-20(%rbp), %esi
	movl	-4(%rbp), %edx
	movl	-20(%rbp), %eax
	addl	-32(%rbp), %eax
	subl	$1, %eax
	movl	-4(%rbp), %r8d
	movl	%eax, %ecx
	movl	$0, (%rsp)
	callq	LClearArea
	movl	-32(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
.LBB1_33:                               # %if.end.71
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	InpRedisplayLine, .Lfunc_end1-InpRedisplayLine
	.cfi_endproc

	.globl	Input
	.align	16, 0x90
	.type	Input,@function
Input:                                  # @Input
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movl	%r9d, -36(%rbp)
	cmpq	$0, flayer
	jne	.LBB2_2
# BB#1:                                 # %if.then
	jmp	.LBB2_16
.LBB2_2:                                # %if.end
	cmpl	$768, -12(%rbp)         # imm = 0x300
	jle	.LBB2_4
# BB#3:                                 # %if.then.1
	movl	$768, -12(%rbp)         # imm = 0x300
.LBB2_4:                                # %if.end.2
	movl	-16(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB2_8
# BB#5:                                 # %if.then.4
	movq	flayer, %rax
	movl	8(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	strlen
	movq	-56(%rbp), %rdi         # 8-byte Reload
	subq	%rax, %rdi
	movl	%edi, %ecx
	movl	%ecx, -40(%rbp)
	movl	-12(%rbp), %ecx
	cmpl	-40(%rbp), %ecx
	jle	.LBB2_7
# BB#6:                                 # %if.then.9
	movl	-40(%rbp), %eax
	movl	%eax, -12(%rbp)
.LBB2_7:                                # %if.end.10
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.11
	cmpl	$0, -12(%rbp)
	jge	.LBB2_10
# BB#9:                                 # %if.then.14
	xorl	%eax, %eax
	movabsq	$.L.str, %rsi
	movl	%eax, %ecx
	subl	-12(%rbp), %ecx
	movl	%eax, %edi
	movl	%ecx, %edx
	movb	$0, %al
	callq	LMsg
	jmp	.LBB2_16
.LBB2_10:                               # %if.end.16
	movl	$856, %edi              # imm = 0x358
	movabsq	$InpLf, %rsi
	movl	$1, %edx
	callq	InitOverlayPage
	cmpl	$0, %eax
	je	.LBB2_12
# BB#11:                                # %if.then.19
	jmp	.LBB2_16
.LBB2_12:                               # %if.end.20
	movq	flayer, %rax
	movl	$1, 68(%rax)
	movq	flayer, %rax
	movq	40(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	-12(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 800(%rax)
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, 824(%rdx)
	movq	-48(%rbp), %rax
	movl	$0, 772(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 776(%rax)
	movq	inphist+792, %rax
	movq	-48(%rbp), %rdx
	movq	%rax, 792(%rdx)
	movl	-16(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 820(%rax)
	movl	-36(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 840(%rax)
	cmpq	$0, -32(%rbp)
	jne	.LBB2_14
# BB#13:                                # %if.then.25
	movq	-48(%rbp), %rax
	addq	$840, %rax              # imm = 0x348
	movq	%rax, -32(%rbp)
.LBB2_14:                               # %if.end.27
	movq	-32(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 832(%rcx)
	movq	-48(%rbp), %rax
	movl	$0, 816(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 808(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 848(%rax)
	cmpq	$0, -8(%rbp)
	je	.LBB2_16
# BB#15:                                # %if.then.30
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rdi
	callq	inp_setprompt
.LBB2_16:                               # %if.end.31
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	Input, .Lfunc_end2-Input
	.cfi_endproc

	.align	16, 0x90
	.type	InpProcess,@function
InpProcess:                             # @InpProcess
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
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -68(%rbp)
	movq	flayer, %rsi
	movq	40(%rsi), %rsi
	movq	%rsi, -48(%rbp)
	movq	display, %rsi
	movq	%rsi, -56(%rbp)
	movq	flayer, %rdi
	movq	-48(%rbp), %rsi
	movl	816(%rsi), %eax
	movq	-48(%rbp), %rsi
	movl	820(%rsi), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movl	%eax, -148(%rbp)        # 4-byte Spill
	je	.LBB3_2
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, -152(%rbp)        # 4-byte Spill
	jmp	.LBB3_3
.LBB3_2:                                # %cond.false
	movq	-48(%rbp), %rax
	movl	776(%rax), %ecx
	movl	%ecx, -152(%rbp)        # 4-byte Spill
.LBB3_3:                                # %cond.end
	movl	-152(%rbp), %eax        # 4-byte Reload
	movl	-148(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movq	flayer, %rdx
	movl	12(%rdx), %eax
	subl	$1, %eax
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movl	%ecx, %esi
	movl	%eax, %edx
	callq	LGotoPos
	cmpq	$0, -8(%rbp)
	jne	.LBB3_5
# BB#4:                                 # %if.then
	callq	InpAbort
	jmp	.LBB3_206
.LBB3_5:                                # %if.end
	movq	-48(%rbp), %rax
	movl	816(%rax), %ecx
	movq	-48(%rbp), %rax
	addl	776(%rax), %ecx
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB3_6:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_24 Depth 2
                                        #     Child Loop BB3_60 Depth 2
                                        #     Child Loop BB3_65 Depth 2
                                        #     Child Loop BB3_120 Depth 2
                                        #     Child Loop BB3_144 Depth 2
	cmpl	$0, -20(%rbp)
	je	.LBB3_200
# BB#7:                                 # %while.body
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	movq	-48(%rbp), %rcx
	movslq	776(%rcx), %rcx
	addq	%rcx, %rax
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	(%rax), %dl
	movb	%dl, -33(%rbp)
	movl	-20(%rbp), %esi
	addl	$-1, %esi
	movl	%esi, -20(%rbp)
	movq	-48(%rbp), %rax
	movl	820(%rax), %esi
	andl	$4, %esi
	cmpl	$0, %esi
	je	.LBB3_11
# BB#8:                                 # %if.then.12
                                        #   in Loop: Header=BB3_6 Depth=1
	movb	-33(%rbp), %al
	movq	-48(%rbp), %rcx
	movslq	772(%rcx), %rcx
	movq	-48(%rbp), %rdx
	movb	%al, (%rdx,%rcx)
	cmpb	$0, -33(%rbp)
	je	.LBB3_10
# BB#9:                                 # %if.then.18
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, display
	movq	-48(%rbp), %rax
	movq	824(%rax), %rax
	movq	-48(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movl	772(%rcx), %esi
	movq	-48(%rbp), %rcx
	movq	832(%rcx), %rdx
	callq	*%rax
	movq	-48(%rbp), %rax
	movslq	772(%rax), %rax
	movq	-48(%rbp), %rcx
	movb	(%rcx,%rax), %r8b
	movb	%r8b, -33(%rbp)
.LBB3_10:                               # %if.end.30
                                        #   in Loop: Header=BB3_6 Depth=1
	jmp	.LBB3_16
.LBB3_11:                               # %if.else
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	movl	820(%rax), %ecx
	andl	$2, %ecx
	cmpl	$0, %ecx
	je	.LBB3_15
# BB#12:                                # %if.then.34
                                        #   in Loop: Header=BB3_6 Depth=1
	leaq	-33(%rbp), %rdi
	movl	$1, %esi
	movq	-56(%rbp), %rax
	movq	%rax, display
	movq	-48(%rbp), %rax
	movq	824(%rax), %rax
	movq	-48(%rbp), %rcx
	movq	832(%rcx), %rdx
	callq	*%rax
	cmpb	$0, -33(%rbp)
	je	.LBB3_14
# BB#13:                                # %if.then.38
                                        #   in Loop: Header=BB3_6 Depth=1
	jmp	.LBB3_6
.LBB3_14:                               # %if.end.39
                                        #   in Loop: Header=BB3_6 Depth=1
	jmp	.LBB3_15
.LBB3_15:                               # %if.end.40
                                        #   in Loop: Header=BB3_6 Depth=1
	jmp	.LBB3_16
.LBB3_16:                               # %if.end.41
                                        #   in Loop: Header=BB3_6 Depth=1
	movzbl	-33(%rbp), %eax
	andl	$127, %eax
	cmpl	$32, %eax
	jl	.LBB3_36
# BB#17:                                # %land.lhs.true
                                        #   in Loop: Header=BB3_6 Depth=1
	movsbl	-33(%rbp), %eax
	cmpl	$127, %eax
	je	.LBB3_36
# BB#18:                                # %land.lhs.true.48
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	movl	772(%rax), %ecx
	movq	-48(%rbp), %rax
	cmpl	800(%rax), %ecx
	jge	.LBB3_36
# BB#19:                                # %if.then.53
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	movl	772(%rax), %ecx
	movq	-48(%rbp), %rax
	cmpl	776(%rax), %ecx
	jle	.LBB3_21
# BB#20:                                # %if.then.60
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-80(%rbp), %rdi
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movq	-48(%rbp), %rcx
	movl	772(%rcx), %edx
	movq	-48(%rbp), %rcx
	subl	776(%rcx), %edx
	movslq	%edx, %rdx
	movq	%rax, %rsi
	callq	bcopy
.LBB3_21:                               # %if.end.68
                                        #   in Loop: Header=BB3_6 Depth=1
	movb	-33(%rbp), %al
	movq	-48(%rbp), %rcx
	movl	776(%rcx), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, 776(%rcx)
	movslq	%edx, %rcx
	movq	-48(%rbp), %rdi
	movb	%al, (%rdi,%rcx)
	movq	-48(%rbp), %rcx
	movl	772(%rcx), %edx
	addl	$1, %edx
	movl	%edx, 772(%rcx)
	movq	-48(%rbp), %rcx
	movl	820(%rcx), %edx
	andl	$1, %edx
	cmpl	$0, %edx
	jne	.LBB3_28
# BB#22:                                # %if.then.81
                                        #   in Loop: Header=BB3_6 Depth=1
	leaq	-88(%rbp), %rsi
	movl	mchar_so, %eax
	movl	%eax, -88(%rbp)
	movw	mchar_so+4, %cx
	movw	%cx, -84(%rbp)
	movq	-80(%rbp), %rdx
	movq	%rdx, %rdi
	addq	$1, %rdi
	movq	%rdi, -80(%rbp)
	movb	(%rdx), %r8b
	movb	%r8b, -88(%rbp)
	movq	flayer, %rdi
	movl	-24(%rbp), %edx
	movq	flayer, %r9
	movl	12(%r9), %eax
	subl	$1, %eax
	movl	%eax, %ecx
	callq	LPutChar
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	movq	-80(%rbp), %rsi
	movq	-48(%rbp), %rdi
	movq	-48(%rbp), %r9
	movslq	772(%r9), %r9
	addq	%r9, %rdi
	cmpq	%rdi, %rsi
	jae	.LBB3_27
# BB#23:                                # %if.then.95
                                        #   in Loop: Header=BB3_6 Depth=1
	jmp	.LBB3_24
.LBB3_24:                               # %while.cond.96
                                        #   Parent Loop BB3_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-80(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movslq	772(%rdx), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jae	.LBB3_26
# BB#25:                                # %while.body.106
                                        #   in Loop: Header=BB3_24 Depth=2
	leaq	-88(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -80(%rbp)
	movb	(%rax), %dl
	movb	%dl, -88(%rbp)
	movq	flayer, %rdi
	movl	-24(%rbp), %r8d
	movl	%r8d, %r9d
	addl	$1, %r9d
	movl	%r9d, -24(%rbp)
	movq	flayer, %rax
	movl	12(%rax), %r9d
	subl	$1, %r9d
	movl	%r8d, %edx
	movl	%r9d, %ecx
	callq	LPutChar
	jmp	.LBB3_24
.LBB3_26:                               # %while.end
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	movl	816(%rax), %ecx
	movq	-48(%rbp), %rax
	addl	776(%rax), %ecx
	movl	%ecx, -24(%rbp)
	movq	flayer, %rdi
	movl	-24(%rbp), %esi
	movq	flayer, %rax
	movl	12(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %edx
	callq	LGotoPos
.LBB3_27:                               # %if.end.118
                                        #   in Loop: Header=BB3_6 Depth=1
	jmp	.LBB3_28
.LBB3_28:                               # %if.end.119
                                        #   in Loop: Header=BB3_6 Depth=1
	jmp	.LBB3_29
.LBB3_29:                               # %do.body
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	cmpq	$0, 848(%rax)
	je	.LBB3_34
# BB#30:                                # %if.then.122
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	cmpq	$0, 848(%rax)
	jne	.LBB3_32
# BB#31:                                # %if.then.126
	callq	abort
.LBB3_32:                               # %if.else.127
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	movq	848(%rax), %rdi
	callq	free
# BB#33:                                # %if.end.129
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	movq	$0, 848(%rax)
.LBB3_34:                               # %if.end.131
                                        #   in Loop: Header=BB3_6 Depth=1
	jmp	.LBB3_35
.LBB3_35:                               # %do.end
                                        #   in Loop: Header=BB3_6 Depth=1
	jmp	.LBB3_199
.LBB3_36:                               # %if.else.132
                                        #   in Loop: Header=BB3_6 Depth=1
	movsbl	-33(%rbp), %eax
	cmpl	$8, %eax
	je	.LBB3_38
# BB#37:                                # %lor.lhs.false
                                        #   in Loop: Header=BB3_6 Depth=1
	movsbl	-33(%rbp), %eax
	cmpl	$127, %eax
	jne	.LBB3_47
.LBB3_38:                               # %land.lhs.true.139
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	cmpl	$0, 776(%rax)
	jle	.LBB3_47
# BB#39:                                # %if.then.144
                                        #   in Loop: Header=BB3_6 Depth=1
	movl	$1, %r8d
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rax
	addq	$-1, %rax
	movq	-80(%rbp), %rdx
	movl	-24(%rbp), %ecx
	movq	%rax, %rsi
	callq	erase_chars
# BB#40:                                # %do.body.146
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	cmpq	$0, 848(%rax)
	je	.LBB3_45
# BB#41:                                # %if.then.149
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	cmpq	$0, 848(%rax)
	jne	.LBB3_43
# BB#42:                                # %if.then.153
	callq	abort
.LBB3_43:                               # %if.else.154
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	movq	848(%rax), %rdi
	callq	free
# BB#44:                                # %if.end.156
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	movq	$0, 848(%rax)
.LBB3_45:                               # %if.end.158
                                        #   in Loop: Header=BB3_6 Depth=1
	jmp	.LBB3_46
.LBB3_46:                               # %do.end.159
                                        #   in Loop: Header=BB3_6 Depth=1
	jmp	.LBB3_198
.LBB3_47:                               # %if.else.160
                                        #   in Loop: Header=BB3_6 Depth=1
	movsbl	-33(%rbp), %eax
	cmpl	$21, %eax
	jne	.LBB3_52
# BB#48:                                # %if.then.164
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	movl	816(%rax), %ecx
	movl	%ecx, -24(%rbp)
	movq	-48(%rbp), %rax
	cmpl	$0, 772(%rax)
	je	.LBB3_51
# BB#49:                                # %land.lhs.true.169
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	movl	820(%rax), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	jne	.LBB3_51
# BB#50:                                # %if.then.173
                                        #   in Loop: Header=BB3_6 Depth=1
	xorl	%r9d, %r9d
	movq	flayer, %rdi
	movl	-24(%rbp), %esi
	movq	flayer, %rax
	movl	12(%rax), %ecx
	subl	$1, %ecx
	movl	-24(%rbp), %edx
	movq	-48(%rbp), %rax
	addl	772(%rax), %edx
	subl	$1, %edx
	movq	flayer, %rax
	movl	12(%rax), %r8d
	subl	$1, %r8d
	movl	%edx, -156(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-156(%rbp), %ecx        # 4-byte Reload
	movl	$0, (%rsp)
	callq	LClearArea
	movq	flayer, %rdi
	movl	-24(%rbp), %esi
	movq	flayer, %rax
	movl	12(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %edx
	callq	LGotoPos
.LBB3_51:                               # %if.end.184
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	movl	$0, 776(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 772(%rax)
	jmp	.LBB3_197
.LBB3_52:                               # %if.else.189
                                        #   in Loop: Header=BB3_6 Depth=1
	movsbl	-33(%rbp), %eax
	cmpl	$11, %eax
	jne	.LBB3_57
# BB#53:                                # %if.then.193
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	movl	816(%rax), %ecx
	movq	-48(%rbp), %rax
	addl	776(%rax), %ecx
	movl	%ecx, -24(%rbp)
	movq	-48(%rbp), %rax
	movl	772(%rax), %ecx
	movq	-48(%rbp), %rax
	cmpl	776(%rax), %ecx
	jle	.LBB3_56
# BB#54:                                # %land.lhs.true.204
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	movl	820(%rax), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	jne	.LBB3_56
# BB#55:                                # %if.then.208
                                        #   in Loop: Header=BB3_6 Depth=1
	xorl	%r9d, %r9d
	movq	flayer, %rdi
	movl	-24(%rbp), %esi
	movq	flayer, %rax
	movl	12(%rax), %ecx
	subl	$1, %ecx
	movl	-24(%rbp), %edx
	movq	-48(%rbp), %rax
	addl	772(%rax), %edx
	movq	-48(%rbp), %rax
	subl	776(%rax), %edx
	subl	$1, %edx
	movq	flayer, %rax
	movl	12(%rax), %r8d
	subl	$1, %r8d
	movl	%edx, -160(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-160(%rbp), %ecx        # 4-byte Reload
	movl	$0, (%rsp)
	callq	LClearArea
	movq	flayer, %rdi
	movl	-24(%rbp), %esi
	movq	flayer, %rax
	movl	12(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %edx
	callq	LGotoPos
.LBB3_56:                               # %if.end.222
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	movl	776(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 772(%rax)
	jmp	.LBB3_196
.LBB3_57:                               # %if.else.227
                                        #   in Loop: Header=BB3_6 Depth=1
	movsbl	-33(%rbp), %eax
	cmpl	$23, %eax
	jne	.LBB3_77
# BB#58:                                # %land.lhs.true.231
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	cmpl	$0, 776(%rax)
	jle	.LBB3_77
# BB#59:                                # %if.then.236
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$-1, %rcx
	movq	%rcx, -80(%rbp)
	movq	%rax, -96(%rbp)
.LBB3_60:                               # %while.cond.238
                                        #   Parent Loop BB3_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-80(%rbp), %rdx
	movq	-48(%rbp), %rsi
	cmpq	%rsi, %rdx
	movb	%cl, -161(%rbp)         # 1-byte Spill
	jbe	.LBB3_62
# BB#61:                                # %land.rhs
                                        #   in Loop: Header=BB3_60 Depth=2
	movq	-80(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$32, %ecx
	sete	%dl
	movb	%dl, -161(%rbp)         # 1-byte Spill
.LBB3_62:                               # %land.end
                                        #   in Loop: Header=BB3_60 Depth=2
	movb	-161(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB3_63
	jmp	.LBB3_64
.LBB3_63:                               # %while.body.247
                                        #   in Loop: Header=BB3_60 Depth=2
	movq	-80(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB3_60
.LBB3_64:                               # %while.end.249
                                        #   in Loop: Header=BB3_6 Depth=1
	jmp	.LBB3_65
.LBB3_65:                               # %while.cond.250
                                        #   Parent Loop BB3_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-80(%rbp), %rdx
	movq	-48(%rbp), %rsi
	cmpq	%rsi, %rdx
	movb	%cl, -162(%rbp)         # 1-byte Spill
	jbe	.LBB3_67
# BB#66:                                # %land.rhs.256
                                        #   in Loop: Header=BB3_65 Depth=2
	movq	-80(%rbp), %rax
	movsbl	-1(%rax), %ecx
	cmpl	$32, %ecx
	setne	%dl
	movb	%dl, -162(%rbp)         # 1-byte Spill
.LBB3_67:                               # %land.end.261
                                        #   in Loop: Header=BB3_65 Depth=2
	movb	-162(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB3_68
	jmp	.LBB3_69
.LBB3_68:                               # %while.body.262
                                        #   in Loop: Header=BB3_65 Depth=2
	movq	-80(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB3_65
.LBB3_69:                               # %while.end.264
                                        #   in Loop: Header=BB3_6 Depth=1
	movl	$1, %r8d
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-96(%rbp), %rdx
	movl	-24(%rbp), %ecx
	callq	erase_chars
# BB#70:                                # %do.body.265
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	cmpq	$0, 848(%rax)
	je	.LBB3_75
# BB#71:                                # %if.then.268
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	cmpq	$0, 848(%rax)
	jne	.LBB3_73
# BB#72:                                # %if.then.272
	callq	abort
.LBB3_73:                               # %if.else.273
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	movq	848(%rax), %rdi
	callq	free
# BB#74:                                # %if.end.275
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	movq	$0, 848(%rax)
.LBB3_75:                               # %if.end.277
                                        #   in Loop: Header=BB3_6 Depth=1
	jmp	.LBB3_76
.LBB3_76:                               # %do.end.278
                                        #   in Loop: Header=BB3_6 Depth=1
	jmp	.LBB3_195
.LBB3_77:                               # %if.else.279
                                        #   in Loop: Header=BB3_6 Depth=1
	movsbl	-33(%rbp), %eax
	cmpl	$4, %eax
	jne	.LBB3_87
# BB#78:                                # %land.lhs.true.283
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	movl	776(%rax), %ecx
	movq	-48(%rbp), %rax
	cmpl	772(%rax), %ecx
	jge	.LBB3_87
# BB#79:                                # %if.then.290
                                        #   in Loop: Header=BB3_6 Depth=1
	xorl	%r8d, %r8d
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movl	-24(%rbp), %ecx
	movq	%rax, %rdx
	callq	erase_chars
# BB#80:                                # %do.body.292
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	cmpq	$0, 848(%rax)
	je	.LBB3_85
# BB#81:                                # %if.then.295
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	cmpq	$0, 848(%rax)
	jne	.LBB3_83
# BB#82:                                # %if.then.299
	callq	abort
.LBB3_83:                               # %if.else.300
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	movq	848(%rax), %rdi
	callq	free
# BB#84:                                # %if.end.302
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	movq	$0, 848(%rax)
.LBB3_85:                               # %if.end.304
                                        #   in Loop: Header=BB3_6 Depth=1
	jmp	.LBB3_86
.LBB3_86:                               # %do.end.305
                                        #   in Loop: Header=BB3_6 Depth=1
	jmp	.LBB3_194
.LBB3_87:                               # %if.else.306
                                        #   in Loop: Header=BB3_6 Depth=1
	movsbl	-33(%rbp), %eax
	cmpl	$1, %eax
	je	.LBB3_89
# BB#88:                                # %lor.lhs.false.310
                                        #   in Loop: Header=BB3_6 Depth=1
	movzbl	-33(%rbp), %eax
	cmpl	$129, %eax
	jne	.LBB3_90
.LBB3_89:                               # %if.then.314
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	flayer, %rdi
	movq	-48(%rbp), %rax
	movl	776(%rax), %ecx
	movl	-24(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -24(%rbp)
	movq	flayer, %rax
	movl	12(%rax), %ecx
	subl	$1, %ecx
	movl	%edx, %esi
	movl	%ecx, %edx
	callq	LGotoPos
	movq	-48(%rbp), %rax
	movl	$0, 776(%rax)
	jmp	.LBB3_193
.LBB3_90:                               # %if.else.322
                                        #   in Loop: Header=BB3_6 Depth=1
	movsbl	-33(%rbp), %eax
	cmpl	$2, %eax
	je	.LBB3_92
# BB#91:                                # %lor.lhs.false.326
                                        #   in Loop: Header=BB3_6 Depth=1
	movzbl	-33(%rbp), %eax
	cmpl	$130, %eax
	jne	.LBB3_94
.LBB3_92:                               # %land.lhs.true.330
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	cmpl	$0, 776(%rax)
	jle	.LBB3_94
# BB#93:                                # %if.then.335
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	flayer, %rdi
	movl	-24(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -24(%rbp)
	movq	flayer, %rcx
	movl	12(%rcx), %edx
	subl	$1, %edx
	movl	%eax, %esi
	callq	LGotoPos
	movq	-48(%rbp), %rcx
	movl	776(%rcx), %eax
	addl	$-1, %eax
	movl	%eax, 776(%rcx)
	jmp	.LBB3_192
.LBB3_94:                               # %if.else.342
                                        #   in Loop: Header=BB3_6 Depth=1
	movsbl	-33(%rbp), %eax
	cmpl	$5, %eax
	je	.LBB3_96
# BB#95:                                # %lor.lhs.false.346
                                        #   in Loop: Header=BB3_6 Depth=1
	movzbl	-33(%rbp), %eax
	cmpl	$133, %eax
	jne	.LBB3_97
.LBB3_96:                               # %if.then.350
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	flayer, %rdi
	movq	-48(%rbp), %rax
	movl	772(%rax), %ecx
	movq	-48(%rbp), %rax
	subl	776(%rax), %ecx
	addl	-24(%rbp), %ecx
	movl	%ecx, -24(%rbp)
	movq	flayer, %rax
	movl	12(%rax), %edx
	subl	$1, %edx
	movl	%ecx, %esi
	callq	LGotoPos
	movq	-48(%rbp), %rax
	movl	772(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 776(%rax)
	jmp	.LBB3_191
.LBB3_97:                               # %if.else.363
                                        #   in Loop: Header=BB3_6 Depth=1
	movsbl	-33(%rbp), %eax
	cmpl	$6, %eax
	je	.LBB3_99
# BB#98:                                # %lor.lhs.false.367
                                        #   in Loop: Header=BB3_6 Depth=1
	movzbl	-33(%rbp), %eax
	cmpl	$134, %eax
	jne	.LBB3_101
.LBB3_99:                               # %land.lhs.true.371
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	movl	776(%rax), %ecx
	movq	-48(%rbp), %rax
	cmpl	772(%rax), %ecx
	jge	.LBB3_101
# BB#100:                               # %if.then.378
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	flayer, %rdi
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	movq	flayer, %rcx
	movl	12(%rcx), %edx
	subl	$1, %edx
	movl	%eax, %esi
	callq	LGotoPos
	movq	-48(%rbp), %rcx
	movl	776(%rcx), %eax
	addl	$1, %eax
	movl	%eax, 776(%rcx)
	jmp	.LBB3_190
.LBB3_101:                              # %if.else.385
                                        #   in Loop: Header=BB3_6 Depth=1
	movsbl	-33(%rbp), %eax
	cmpl	$16, %eax
	je	.LBB3_103
# BB#102:                               # %lor.lhs.false.389
                                        #   in Loop: Header=BB3_6 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movzbl	-33(%rbp), %eax
	cmpl	$144, %eax
	movb	%cl, -163(%rbp)         # 1-byte Spill
	jne	.LBB3_104
.LBB3_103:                              # %land.rhs.393
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	cmpq	$0, 792(%rax)
	setne	%cl
	movb	%cl, -163(%rbp)         # 1-byte Spill
.LBB3_104:                              # %land.end.397
                                        #   in Loop: Header=BB3_6 Depth=1
	movb	-163(%rbp), %al         # 1-byte Reload
	movb	%al, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -60(%rbp)
	testb	$1, %al
	jne	.LBB3_113
# BB#105:                               # %lor.lhs.false.398
                                        #   in Loop: Header=BB3_6 Depth=1
	movsbl	-33(%rbp), %eax
	cmpl	$14, %eax
	je	.LBB3_107
# BB#106:                               # %lor.lhs.false.402
                                        #   in Loop: Header=BB3_6 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movzbl	-33(%rbp), %eax
	cmpl	$142, %eax
	movb	%cl, -164(%rbp)         # 1-byte Spill
	jne	.LBB3_108
.LBB3_107:                              # %land.rhs.406
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	cmpq	$0, 784(%rax)
	setne	%cl
	movb	%cl, -164(%rbp)         # 1-byte Spill
.LBB3_108:                              # %land.end.410
                                        #   in Loop: Header=BB3_6 Depth=1
	movb	-164(%rbp), %al         # 1-byte Reload
	movb	%al, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -64(%rbp)
	testb	$1, %al
	jne	.LBB3_113
# BB#109:                               # %lor.lhs.false.412
                                        #   in Loop: Header=BB3_6 Depth=1
	movsbl	-33(%rbp), %eax
	cmpl	$18, %eax
	je	.LBB3_111
# BB#110:                               # %lor.lhs.false.416
                                        #   in Loop: Header=BB3_6 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movzbl	-33(%rbp), %eax
	cmpl	$146, %eax
	movb	%cl, -165(%rbp)         # 1-byte Spill
	jne	.LBB3_112
.LBB3_111:                              # %land.rhs.420
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	cmpq	$0, 792(%rax)
	setne	%cl
	movb	%cl, -165(%rbp)         # 1-byte Spill
.LBB3_112:                              # %land.end.424
                                        #   in Loop: Header=BB3_6 Depth=1
	movb	-165(%rbp), %al         # 1-byte Reload
	movb	%al, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, -68(%rbp)
	testb	$1, %al
	jne	.LBB3_113
	jmp	.LBB3_148
.LBB3_113:                              # %if.then.426
                                        #   in Loop: Header=BB3_6 Depth=1
	movl	$-1, -116(%rbp)
	movl	mchar_so, %eax
	movl	%eax, -104(%rbp)
	movw	mchar_so+4, %cx
	movw	%cx, -100(%rbp)
	cmpl	$0, -60(%rbp)
	je	.LBB3_115
# BB#114:                               # %if.then.430
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	movq	792(%rax), %rax
	movq	%rax, -112(%rbp)
	jmp	.LBB3_129
.LBB3_115:                              # %if.else.433
                                        #   in Loop: Header=BB3_6 Depth=1
	cmpl	$0, -64(%rbp)
	je	.LBB3_117
# BB#116:                               # %if.then.435
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	movq	784(%rax), %rax
	movq	%rax, -112(%rbp)
	jmp	.LBB3_128
.LBB3_117:                              # %if.else.438
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	movslq	772(%rax), %rax
	movq	-48(%rbp), %rcx
	movb	$0, (%rcx,%rax)
	movq	-48(%rbp), %rax
	cmpq	$0, 848(%rax)
	jne	.LBB3_119
# BB#118:                               # %if.then.447
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rdi
	callq	SaveStr
	movq	-48(%rbp), %rdi
	movq	%rax, 848(%rdi)
.LBB3_119:                              # %if.end.452
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	movq	792(%rax), %rax
	movq	%rax, -112(%rbp)
.LBB3_120:                              # %for.cond
                                        #   Parent Loop BB3_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -112(%rbp)
	je	.LBB3_125
# BB#121:                               # %for.body
                                        #   in Loop: Header=BB3_120 Depth=2
	movq	-112(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	848(%rax), %rsi
	callq	strstr
	movq	%rax, -128(%rbp)
	cmpq	$0, %rax
	je	.LBB3_123
# BB#122:                               # %if.then.461
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-128(%rbp), %rax
	movq	-112(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -116(%rbp)
	jmp	.LBB3_125
.LBB3_123:                              # %if.end.465
                                        #   in Loop: Header=BB3_120 Depth=2
	jmp	.LBB3_124
.LBB3_124:                              # %for.inc
                                        #   in Loop: Header=BB3_120 Depth=2
	movq	-112(%rbp), %rax
	movq	792(%rax), %rax
	movq	%rax, -112(%rbp)
	jmp	.LBB3_120
.LBB3_125:                              # %for.end
                                        #   in Loop: Header=BB3_6 Depth=1
	cmpq	$0, -112(%rbp)
	jne	.LBB3_127
# BB#126:                               # %if.then.468
                                        #   in Loop: Header=BB3_6 Depth=1
	jmp	.LBB3_6
.LBB3_127:                              # %if.end.469
                                        #   in Loop: Header=BB3_6 Depth=1
	jmp	.LBB3_128
.LBB3_128:                              # %if.end.470
                                        #   in Loop: Header=BB3_6 Depth=1
	jmp	.LBB3_129
.LBB3_129:                              # %if.end.471
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	cmpl	$0, 772(%rax)
	je	.LBB3_132
# BB#130:                               # %land.lhs.true.475
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	movl	820(%rax), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	jne	.LBB3_132
# BB#131:                               # %if.then.479
                                        #   in Loop: Header=BB3_6 Depth=1
	xorl	%r9d, %r9d
	movq	flayer, %rdi
	movq	-48(%rbp), %rax
	movl	816(%rax), %esi
	movq	flayer, %rax
	movl	12(%rax), %ecx
	subl	$1, %ecx
	movq	-48(%rbp), %rax
	movl	816(%rax), %edx
	movq	-48(%rbp), %rax
	addl	772(%rax), %edx
	subl	$1, %edx
	movq	flayer, %rax
	movl	12(%rax), %r8d
	subl	$1, %r8d
	movl	%edx, -172(%rbp)        # 4-byte Spill
	movl	%ecx, %edx
	movl	-172(%rbp), %ecx        # 4-byte Reload
	movl	$0, (%rsp)
	callq	LClearArea
.LBB3_132:                              # %if.end.490
                                        #   in Loop: Header=BB3_6 Depth=1
	cmpl	$0, -60(%rbp)
	jne	.LBB3_134
# BB#133:                               # %lor.lhs.false.492
                                        #   in Loop: Header=BB3_6 Depth=1
	cmpl	$0, -68(%rbp)
	je	.LBB3_136
.LBB3_134:                              # %land.lhs.true.494
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	cmpq	$0, 784(%rax)
	jne	.LBB3_136
# BB#135:                               # %if.then.498
                                        #   in Loop: Header=BB3_6 Depth=1
	movabsq	$inphist, %rdi
	movl	$800, %eax              # imm = 0x320
	movl	%eax, %edx
	movq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	callq	memcpy
.LBB3_136:                              # %if.end.500
                                        #   in Loop: Header=BB3_6 Depth=1
	movl	$800, %eax              # imm = 0x320
	movl	%eax, %edx
	movq	-48(%rbp), %rcx
	movq	-112(%rbp), %rsi
	movq	%rcx, %rdi
	callq	memcpy
	cmpl	$-1, -116(%rbp)
	je	.LBB3_138
# BB#137:                               # %if.then.504
                                        #   in Loop: Header=BB3_6 Depth=1
	movl	-116(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 776(%rcx)
.LBB3_138:                              # %if.end.507
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	movl	772(%rax), %ecx
	movq	-48(%rbp), %rax
	cmpl	800(%rax), %ecx
	jle	.LBB3_140
# BB#139:                               # %if.then.513
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	movl	800(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 772(%rax)
.LBB3_140:                              # %if.end.517
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	movl	776(%rax), %ecx
	movq	-48(%rbp), %rax
	cmpl	772(%rax), %ecx
	jle	.LBB3_142
# BB#141:                               # %if.then.524
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	movl	772(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 776(%rax)
.LBB3_142:                              # %if.end.529
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	movl	816(%rax), %ecx
	movl	%ecx, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rax
	movl	820(%rax), %ecx
	andl	$1, %ecx
	cmpl	$0, %ecx
	jne	.LBB3_147
# BB#143:                               # %if.then.537
                                        #   in Loop: Header=BB3_6 Depth=1
	jmp	.LBB3_144
.LBB3_144:                              # %while.cond.538
                                        #   Parent Loop BB3_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-80(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movslq	772(%rdx), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jae	.LBB3_146
# BB#145:                               # %while.body.548
                                        #   in Loop: Header=BB3_144 Depth=2
	leaq	-104(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -80(%rbp)
	movb	(%rax), %dl
	movb	%dl, -104(%rbp)
	movq	flayer, %rdi
	movl	-24(%rbp), %r8d
	movl	%r8d, %r9d
	addl	$1, %r9d
	movl	%r9d, -24(%rbp)
	movq	flayer, %rax
	movl	12(%rax), %r9d
	subl	$1, %r9d
	movl	%r8d, %edx
	movl	%r9d, %ecx
	callq	LPutChar
	jmp	.LBB3_144
.LBB3_146:                              # %while.end.554
                                        #   in Loop: Header=BB3_6 Depth=1
	jmp	.LBB3_147
.LBB3_147:                              # %if.end.555
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	movl	816(%rax), %ecx
	movq	-48(%rbp), %rax
	addl	776(%rax), %ecx
	movl	%ecx, -24(%rbp)
	movq	flayer, %rdi
	movl	-24(%rbp), %esi
	movq	flayer, %rax
	movl	12(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %edx
	callq	LGotoPos
	jmp	.LBB3_189
.LBB3_148:                              # %if.else.562
                                        #   in Loop: Header=BB3_6 Depth=1
	movsbl	-33(%rbp), %eax
	cmpl	$3, %eax
	je	.LBB3_154
# BB#149:                               # %lor.lhs.false.566
                                        #   in Loop: Header=BB3_6 Depth=1
	movsbl	-33(%rbp), %eax
	cmpl	$7, %eax
	je	.LBB3_154
# BB#150:                               # %lor.lhs.false.570
                                        #   in Loop: Header=BB3_6 Depth=1
	movsbl	-33(%rbp), %eax
	cmpl	$27, %eax
	je	.LBB3_154
# BB#151:                               # %lor.lhs.false.574
                                        #   in Loop: Header=BB3_6 Depth=1
	movsbl	-33(%rbp), %eax
	cmpl	$0, %eax
	je	.LBB3_154
# BB#152:                               # %lor.lhs.false.578
                                        #   in Loop: Header=BB3_6 Depth=1
	movsbl	-33(%rbp), %eax
	cmpl	$10, %eax
	je	.LBB3_154
# BB#153:                               # %lor.lhs.false.582
                                        #   in Loop: Header=BB3_6 Depth=1
	movsbl	-33(%rbp), %eax
	cmpl	$13, %eax
	jne	.LBB3_180
.LBB3_154:                              # %if.then.586
	movsbl	-33(%rbp), %eax
	cmpl	$10, %eax
	je	.LBB3_157
# BB#155:                               # %land.lhs.true.590
	movsbl	-33(%rbp), %eax
	cmpl	$13, %eax
	je	.LBB3_157
# BB#156:                               # %if.then.594
	movq	-48(%rbp), %rax
	movl	$0, 772(%rax)
.LBB3_157:                              # %if.end.597
	movq	-48(%rbp), %rax
	movslq	772(%rax), %rax
	movq	-48(%rbp), %rcx
	movb	$0, (%rcx,%rax)
	movq	-48(%rbp), %rax
	cmpl	$0, 772(%rax)
	je	.LBB3_174
# BB#158:                               # %land.lhs.true.607
	movq	-48(%rbp), %rax
	movl	820(%rax), %ecx
	andl	$3, %ecx
	cmpl	$0, %ecx
	jne	.LBB3_174
# BB#159:                               # %if.then.611
	movq	inphist+792, %rax
	movq	%rax, -136(%rbp)
.LBB3_160:                              # %for.cond.612
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -136(%rbp)
	je	.LBB3_169
# BB#161:                               # %for.body.614
                                        #   in Loop: Header=BB3_160 Depth=1
	movq	-136(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB3_167
# BB#162:                               # %if.then.623
	movq	-136(%rbp), %rax
	cmpq	$0, 784(%rax)
	je	.LBB3_164
# BB#163:                               # %if.then.626
	movq	-136(%rbp), %rax
	movq	792(%rax), %rax
	movq	-136(%rbp), %rcx
	movq	784(%rcx), %rcx
	movq	%rax, 792(%rcx)
.LBB3_164:                              # %if.end.630
	movq	-136(%rbp), %rax
	cmpq	$0, 792(%rax)
	je	.LBB3_166
# BB#165:                               # %if.then.633
	movq	-136(%rbp), %rax
	movq	784(%rax), %rax
	movq	-136(%rbp), %rcx
	movq	792(%rcx), %rcx
	movq	%rax, 784(%rcx)
.LBB3_166:                              # %if.end.637
	movq	-48(%rbp), %rax
	movl	776(%rax), %ecx
	movq	-136(%rbp), %rax
	movl	%ecx, 776(%rax)
	jmp	.LBB3_169
.LBB3_167:                              # %if.end.641
                                        #   in Loop: Header=BB3_160 Depth=1
	jmp	.LBB3_168
.LBB3_168:                              # %for.inc.642
                                        #   in Loop: Header=BB3_160 Depth=1
	movq	-136(%rbp), %rax
	movq	792(%rax), %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB3_160
.LBB3_169:                              # %for.end.644
	cmpq	$0, -136(%rbp)
	jne	.LBB3_171
# BB#170:                               # %if.then.646
	movl	$800, %eax              # imm = 0x320
	movl	%eax, %edi
	callq	malloc
	movl	$800, %ecx              # imm = 0x320
	movl	%ecx, %edx
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	-48(%rbp), %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-184(%rbp), %rsi        # 8-byte Reload
	callq	memcpy
.LBB3_171:                              # %if.end.649
	movabsq	$inphist, %rax
	movq	-136(%rbp), %rcx
	movq	%rax, 784(%rcx)
	movq	inphist+792, %rax
	movq	-136(%rbp), %rcx
	movq	%rax, 792(%rcx)
	cmpq	$0, inphist+792
	je	.LBB3_173
# BB#172:                               # %if.then.653
	movq	-136(%rbp), %rax
	movq	inphist+792, %rcx
	movq	%rax, 784(%rcx)
.LBB3_173:                              # %if.end.655
	movq	-136(%rbp), %rax
	movq	%rax, inphist+792
.LBB3_174:                              # %if.end.656
	movq	flayer, %rax
	movq	$0, 40(%rax)
	callq	InpAbort
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movq	-56(%rbp), %rax
	movq	%rax, display
	movq	-48(%rbp), %rax
	movl	820(%rax), %edx
	andl	$2, %edx
	cmpl	$0, %edx
	jne	.LBB3_176
# BB#175:                               # %if.then.662
	movq	-48(%rbp), %rax
	movq	824(%rax), %rax
	movq	-48(%rbp), %rdi
	movq	-48(%rbp), %rcx
	movl	772(%rcx), %esi
	movq	-48(%rbp), %rcx
	movq	832(%rcx), %rdx
	callq	*%rax
	jmp	.LBB3_177
.LBB3_176:                              # %if.else.670
	xorl	%esi, %esi
	movq	-48(%rbp), %rax
	movq	824(%rax), %rax
	movq	-32(%rbp), %rcx
	addq	$-1, %rcx
	movq	-48(%rbp), %rdx
	movq	832(%rdx), %rdx
	movq	%rcx, %rdi
	callq	*%rax
.LBB3_177:                              # %if.end.674
	movq	-48(%rbp), %rax
	cmpq	$0, 848(%rax)
	je	.LBB3_179
# BB#178:                               # %if.then.677
	movq	-48(%rbp), %rax
	movq	848(%rax), %rdi
	callq	free
.LBB3_179:                              # %if.end.679
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	jmp	.LBB3_206
.LBB3_180:                              # %if.else.680
                                        #   in Loop: Header=BB3_6 Depth=1
	jmp	.LBB3_181
.LBB3_181:                              # %do.body.681
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	cmpq	$0, 848(%rax)
	je	.LBB3_186
# BB#182:                               # %if.then.684
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	cmpq	$0, 848(%rax)
	jne	.LBB3_184
# BB#183:                               # %if.then.688
	callq	abort
.LBB3_184:                              # %if.else.689
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	movq	848(%rax), %rdi
	callq	free
# BB#185:                               # %if.end.691
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-48(%rbp), %rax
	movq	$0, 848(%rax)
.LBB3_186:                              # %if.end.693
                                        #   in Loop: Header=BB3_6 Depth=1
	jmp	.LBB3_187
.LBB3_187:                              # %do.end.694
                                        #   in Loop: Header=BB3_6 Depth=1
	jmp	.LBB3_188
.LBB3_188:                              # %if.end.695
                                        #   in Loop: Header=BB3_6 Depth=1
	jmp	.LBB3_189
.LBB3_189:                              # %if.end.696
                                        #   in Loop: Header=BB3_6 Depth=1
	jmp	.LBB3_190
.LBB3_190:                              # %if.end.697
                                        #   in Loop: Header=BB3_6 Depth=1
	jmp	.LBB3_191
.LBB3_191:                              # %if.end.698
                                        #   in Loop: Header=BB3_6 Depth=1
	jmp	.LBB3_192
.LBB3_192:                              # %if.end.699
                                        #   in Loop: Header=BB3_6 Depth=1
	jmp	.LBB3_193
.LBB3_193:                              # %if.end.700
                                        #   in Loop: Header=BB3_6 Depth=1
	jmp	.LBB3_194
.LBB3_194:                              # %if.end.701
                                        #   in Loop: Header=BB3_6 Depth=1
	jmp	.LBB3_195
.LBB3_195:                              # %if.end.702
                                        #   in Loop: Header=BB3_6 Depth=1
	jmp	.LBB3_196
.LBB3_196:                              # %if.end.703
                                        #   in Loop: Header=BB3_6 Depth=1
	jmp	.LBB3_197
.LBB3_197:                              # %if.end.704
                                        #   in Loop: Header=BB3_6 Depth=1
	jmp	.LBB3_198
.LBB3_198:                              # %if.end.705
                                        #   in Loop: Header=BB3_6 Depth=1
	jmp	.LBB3_199
.LBB3_199:                              # %if.end.706
                                        #   in Loop: Header=BB3_6 Depth=1
	jmp	.LBB3_6
.LBB3_200:                              # %while.end.707
	movq	-48(%rbp), %rax
	movl	820(%rax), %ecx
	andl	$2, %ecx
	cmpl	$0, %ecx
	jne	.LBB3_205
# BB#201:                               # %if.then.711
	movq	-48(%rbp), %rax
	movl	816(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	820(%rax), %edx
	andl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -188(%rbp)        # 4-byte Spill
	je	.LBB3_203
# BB#202:                               # %cond.true.716
	xorl	%eax, %eax
	movl	%eax, -192(%rbp)        # 4-byte Spill
	jmp	.LBB3_204
.LBB3_203:                              # %cond.false.717
	movq	-48(%rbp), %rax
	movl	776(%rax), %ecx
	movl	%ecx, -192(%rbp)        # 4-byte Spill
.LBB3_204:                              # %cond.end.720
	movl	-192(%rbp), %eax        # 4-byte Reload
	movl	-188(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movq	flayer, %rdx
	movl	%ecx, 16(%rdx)
	movq	flayer, %rdx
	movl	12(%rdx), %eax
	subl	$1, %eax
	movq	flayer, %rdx
	movl	%eax, 20(%rdx)
.LBB3_205:                              # %if.end.725
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
.LBB3_206:                              # %return
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	InpProcess, .Lfunc_end3-InpProcess
	.cfi_endproc

	.align	16, 0x90
	.type	InpAbort,@function
InpAbort:                               # @InpAbort
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
	subq	$48, %rsp
# BB#1:                                 # %do.body
	movq	flayer, %rax
	movq	%rax, -8(%rbp)
# BB#2:                                 # %do.body.1
	jmp	.LBB4_3
.LBB4_3:                                # %do.end
	movq	flayer, %rax
	movq	48(%rax), %rax
	movq	%rax, flayer
	movq	flayer, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
# BB#4:                                 # %do.body.2
	jmp	.LBB4_5
.LBB4_5:                                # %do.end.3
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	flayer, %rcx
	movq	%rax, (%rcx)
	movq	flayer, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB4_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB4_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	flayer, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 64(%rcx)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB4_6 Depth=1
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB4_6
.LBB4_9:                                # %for.end
	xorl	%eax, %eax
	movq	flayer, %rcx
	movq	32(%rcx), %rcx
	movq	16(%rcx), %rcx
	movq	flayer, %rdx
	movl	12(%rdx), %esi
	subl	$1, %esi
	movq	flayer, %rdx
	movl	8(%rdx), %edi
	subl	$1, %edi
	movl	%edi, -28(%rbp)         # 4-byte Spill
	movl	%esi, %edi
	movl	%eax, %esi
	movl	-28(%rbp), %edx         # 4-byte Reload
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	movl	%eax, %ecx
	movq	-40(%rbp), %r8          # 8-byte Reload
	callq	*%r8
	movq	-8(%rbp), %r8
	movq	%r8, flayer
	movq	flayer, %r8
	movq	(%r8), %r8
	movq	%r8, -24(%rbp)
.LBB4_10:                               # %for.cond.9
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB4_13
# BB#11:                                # %for.body.11
                                        #   in Loop: Header=BB4_10 Depth=1
	movq	flayer, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 64(%rcx)
# BB#12:                                # %for.inc.13
                                        #   in Loop: Header=BB4_10 Depth=1
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB4_10
.LBB4_13:                               # %for.end.15
	movq	-16(%rbp), %rax
	movq	flayer, %rcx
	movq	48(%rcx), %rcx
	movq	%rax, (%rcx)
# BB#14:                                # %do.end.18
	callq	ExitOverlayPage
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	InpAbort, .Lfunc_end4-InpAbort
	.cfi_endproc

	.align	16, 0x90
	.type	erase_chars,@function
erase_chars:                            # @erase_chars
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB5_2
.LBB5_2:                                # %do.end
	movq	-8(%rbp), %rax
	movslq	772(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	subq	%rdx, %rcx
	cmpq	%rcx, %rax
	jle	.LBB5_4
# BB#3:                                 # %if.then
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movslq	772(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	subq	%rdx, %rcx
	subq	%rcx, %rax
	movq	%rax, %rdx
	callq	bcopy
.LBB5_4:                                # %if.end
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	movl	%edx, -36(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB5_6
# BB#5:                                 # %if.then.16
	movl	-36(%rbp), %eax
	movl	-28(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -28(%rbp)
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rdx
	movl	776(%rdx), %ecx
	subl	%eax, %ecx
	movl	%ecx, 776(%rdx)
.LBB5_6:                                # %if.end.20
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	772(%rcx), %edx
	subl	%eax, %edx
	movl	%edx, 772(%rcx)
	movq	-8(%rbp), %rcx
	movl	820(%rcx), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB5_17
# BB#7:                                 # %if.then.25
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	.LBB5_9
# BB#8:                                 # %cond.true
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB5_10
.LBB5_9:                                # %cond.false
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB5_10:                               # %cond.end
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -56(%rbp)
	movl	mchar_so, %ecx
	movl	%ecx, -48(%rbp)
	movw	mchar_so+4, %dx
	movw	%dx, -44(%rbp)
.LBB5_11:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movslq	772(%rdx), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jae	.LBB5_13
# BB#12:                                # %while.body
                                        #   in Loop: Header=BB5_11 Depth=1
	leaq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -56(%rbp)
	movb	(%rax), %dl
	movb	%dl, -48(%rbp)
	movq	flayer, %rdi
	movl	-28(%rbp), %r8d
	movl	%r8d, %r9d
	addl	$1, %r9d
	movl	%r9d, -28(%rbp)
	movq	flayer, %rax
	movl	12(%rax), %r9d
	subl	$1, %r9d
	movl	%r8d, %edx
	movl	%r9d, %ecx
	callq	LPutChar
	jmp	.LBB5_11
.LBB5_13:                               # %while.end
	jmp	.LBB5_14
.LBB5_14:                               # %while.cond.36
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -36(%rbp)
	cmpl	$0, %eax
	je	.LBB5_16
# BB#15:                                # %while.body.38
                                        #   in Loop: Header=BB5_14 Depth=1
	movabsq	$mchar_blank, %rsi
	movq	flayer, %rdi
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -28(%rbp)
	movq	flayer, %rdx
	movl	12(%rdx), %ecx
	subl	$1, %ecx
	movl	%eax, %edx
	callq	LPutChar
	jmp	.LBB5_14
.LBB5_16:                               # %while.end.42
	movq	-8(%rbp), %rax
	movl	816(%rax), %ecx
	movq	-8(%rbp), %rax
	addl	776(%rax), %ecx
	movl	%ecx, -28(%rbp)
	movq	flayer, %rdi
	movl	-28(%rbp), %esi
	movq	flayer, %rax
	movl	12(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %edx
	callq	LGotoPos
.LBB5_17:                               # %if.end.47
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	erase_chars, .Lfunc_end5-erase_chars
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Width %d chars too small"
	.size	.L.str, 25

	.type	InpLf,@object           # @InpLf
	.data
	.align	8
InpLf:
	.quad	InpProcess
	.quad	InpAbort
	.quad	InpRedisplayLine
	.quad	DefClearLine
	.quad	DefRewrite
	.quad	DefResize
	.quad	DefRestore
	.quad	0
	.size	InpLf, 64

	.type	inphist,@object         # @inphist
	.local	inphist
	.comm	inphist,800,8

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
