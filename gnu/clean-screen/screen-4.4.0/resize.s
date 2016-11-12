	.text
	.file	"resize.bc"
	.globl	CheckScreenSize
	.align	16, 0x90
	.type	CheckScreenSize,@function
CheckScreenSize:                        # @CheckScreenSize
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpq	$0, display
	jne	.LBB0_4
# BB#1:                                 # %if.then
	jmp	.LBB0_2
.LBB0_2:                                # %do.body
	jmp	.LBB0_3
.LBB0_3:                                # %do.end
	jmp	.LBB0_21
.LBB0_4:                                # %if.end
	movl	$21523, %eax            # imm = 0x5413
	movl	%eax, %esi
	movabsq	$glwz, %rcx
	movq	display, %rdx
	movl	4900(%rdx), %edi
	movq	%rcx, %rdx
	movb	$0, %al
	callq	ioctl
	cmpl	$0, %eax
	je	.LBB0_8
# BB#5:                                 # %if.then.2
	jmp	.LBB0_6
.LBB0_6:                                # %do.body.3
	jmp	.LBB0_7
.LBB0_7:                                # %do.end.4
	movq	display, %rax
	movl	5448(%rax), %ecx
	movl	%ecx, -8(%rbp)
	movq	display, %rax
	movl	5440(%rax), %ecx
	movl	%ecx, -12(%rbp)
	jmp	.LBB0_13
.LBB0_8:                                # %if.else
	movzwl	glwz+2, %eax
	movl	%eax, -8(%rbp)
	movzwl	glwz, %eax
	movl	%eax, -12(%rbp)
	cmpl	$0, -8(%rbp)
	jne	.LBB0_10
# BB#9:                                 # %if.then.11
	movq	display, %rax
	movl	5448(%rax), %ecx
	movl	%ecx, -8(%rbp)
.LBB0_10:                               # %if.end.15
	cmpl	$0, -12(%rbp)
	jne	.LBB0_12
# BB#11:                                # %if.then.18
	movq	display, %rax
	movl	5440(%rax), %ecx
	movl	%ecx, -12(%rbp)
.LBB0_12:                               # %if.end.22
	jmp	.LBB0_13
.LBB0_13:                               # %if.end.23
	jmp	.LBB0_14
.LBB0_14:                               # %do.body.24
	jmp	.LBB0_15
.LBB0_15:                               # %do.end.25
	movq	display, %rax
	movl	444(%rax), %ecx
	cmpl	-8(%rbp), %ecx
	jne	.LBB0_20
# BB#16:                                # %land.lhs.true
	movq	display, %rax
	movl	448(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	jne	.LBB0_20
# BB#17:                                # %if.then.30
	jmp	.LBB0_18
.LBB0_18:                               # %do.body.31
	jmp	.LBB0_19
.LBB0_19:                               # %do.end.32
	jmp	.LBB0_21
.LBB0_20:                               # %if.end.33
	callq	KillBlanker
	callq	ResetIdle
	movl	-8(%rbp), %edi
	movl	-12(%rbp), %esi
	movl	-4(%rbp), %edx
	callq	ChangeScreenSize
.LBB0_21:                               # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	CheckScreenSize, .Lfunc_end0-CheckScreenSize
	.cfi_endproc

	.globl	ChangeScreenSize
	.align	16, 0x90
	.type	ChangeScreenSize,@function
ChangeScreenSize:                       # @ChangeScreenSize
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
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB1_2
.LBB1_2:                                # %do.end
	jmp	.LBB1_3
.LBB1_3:                                # %do.body.1
	jmp	.LBB1_4
.LBB1_4:                                # %do.end.2
	movq	display, %rax
	addq	$16, %rax
	movq	%rax, -32(%rbp)
	movl	-4(%rbp), %ecx
	subl	$1, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 220(%rax)
	movq	display, %rax
	cmpl	$4, 528(%rax)
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 224(%rax)
	movl	-8(%rbp), %ecx
	subl	$1, %ecx
	movq	-32(%rbp), %rax
	cmpq	$0, 32(%rax)
	movl	%ecx, -40(%rbp)         # 4-byte Spill
	je	.LBB1_6
# BB#5:                                 # %land.lhs.true
	movb	$1, %al
	movq	-32(%rbp), %rcx
	movq	32(%rcx), %rcx
	cmpq	$0, 16(%rcx)
	movb	%al, -41(%rbp)          # 1-byte Spill
	jne	.LBB1_7
.LBB1_6:                                # %lor.rhs
	cmpl	$0, captionalways
	setne	%al
	movb	%al, -41(%rbp)          # 1-byte Spill
.LBB1_7:                                # %lor.end
	movb	-41(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	-40(%rbp), %edx         # 4-byte Reload
	subl	%ecx, %edx
	movq	display, %rsi
	cmpl	$1, 528(%rsi)
	sete	%al
	andb	$1, %al
	movzbl	%al, %ecx
	subl	%ecx, %edx
	movq	-32(%rbp), %rsi
	movl	%edx, 228(%rsi)
	movq	-32(%rbp), %rsi
	movl	228(%rsi), %ecx
	movq	-32(%rbp), %rsi
	subl	224(%rsi), %ecx
	addl	$1, %ecx
	movq	-32(%rbp), %rsi
	movl	%ecx, 92(%rsi)
	movq	-32(%rbp), %rsi
	cmpq	$0, 32(%rsi)
	je	.LBB1_9
# BB#8:                                 # %if.then
	movq	-32(%rbp), %rdi
	callq	ResizeCanvas
	callq	RecreateCanvasChain
	callq	RethinkDisplayViewports
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB1_9:                                # %if.end
	movq	display, %rax
	cmpq	$0, 336(%rax)
	jne	.LBB1_11
# BB#10:                                # %if.then.19
	movq	display, %rax
	movq	328(%rax), %rax
	movq	display, %rcx
	movq	%rax, 336(%rcx)
.LBB1_11:                               # %if.end.21
	movq	display, %rax
	cmpq	$0, 336(%rax)
	je	.LBB1_13
# BB#12:                                # %if.then.24
	movq	display, %rax
	movq	336(%rax), %rax
	movq	64(%rax), %rax
	movq	56(%rax), %rax
	movq	40(%rax), %rax
	movq	display, %rcx
	movq	%rax, 376(%rcx)
.LBB1_13:                               # %if.end.26
	movl	-4(%rbp), %eax
	movq	display, %rcx
	movl	%eax, 444(%rcx)
	movl	-8(%rbp), %eax
	movq	display, %rcx
	movl	%eax, 448(%rcx)
	movl	-4(%rbp), %edi
	callq	CheckMaxSize
	movq	display, %rcx
	cmpq	$0, 5792(%rcx)
	je	.LBB1_15
# BB#14:                                # %if.then.28
	movq	display, %rax
	movl	5448(%rax), %ecx
	movq	display, %rax
	movl	%ecx, 452(%rax)
	movq	display, %rax
	movl	5440(%rax), %ecx
	movq	display, %rax
	movl	%ecx, 456(%rax)
	jmp	.LBB1_23
.LBB1_15:                               # %if.else
	movq	display, %rax
	cmpq	$0, 5800(%rax)
	je	.LBB1_21
# BB#16:                                # %land.lhs.true.38
	movl	-4(%rbp), %eax
	cmpl	Z0width, %eax
	je	.LBB1_18
# BB#17:                                # %lor.lhs.false
	movl	-4(%rbp), %eax
	cmpl	Z1width, %eax
	jne	.LBB1_21
.LBB1_18:                               # %land.lhs.true.43
	movq	display, %rax
	movl	5448(%rax), %ecx
	cmpl	Z0width, %ecx
	je	.LBB1_20
# BB#19:                                # %lor.lhs.false.49
	movq	display, %rax
	movl	5448(%rax), %ecx
	cmpl	Z1width, %ecx
	jne	.LBB1_21
.LBB1_20:                               # %if.then.55
	movq	display, %rax
	movl	5448(%rax), %ecx
	movq	display, %rax
	movl	%ecx, 452(%rax)
	jmp	.LBB1_22
.LBB1_21:                               # %if.else.60
	movl	-4(%rbp), %eax
	movq	display, %rcx
	movl	%eax, 452(%rcx)
.LBB1_22:                               # %if.end.62
	movl	-8(%rbp), %eax
	movq	display, %rcx
	movl	%eax, 456(%rcx)
.LBB1_23:                               # %if.end.64
	jmp	.LBB1_24
.LBB1_24:                               # %do.body.65
	jmp	.LBB1_25
.LBB1_25:                               # %do.end.66
	cmpl	$0, -12(%rbp)
	je	.LBB1_27
# BB#26:                                # %if.then.68
	callq	ResizeLayersToCanvases
.LBB1_27:                               # %if.end.69
	cmpl	$2, -12(%rbp)
	jne	.LBB1_40
# BB#28:                                # %land.lhs.true.72
	movq	display, %rax
	cmpq	$0, 5792(%rax)
	jne	.LBB1_40
# BB#29:                                # %land.lhs.true.78
	movq	displays, %rax
	cmpq	$0, (%rax)
	jne	.LBB1_40
# BB#30:                                # %if.then.81
	movq	windows, %rax
	movq	%rax, -24(%rbp)
.LBB1_31:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB1_39
# BB#32:                                # %for.body
                                        #   in Loop: Header=BB1_31 Depth=1
	jmp	.LBB1_33
.LBB1_33:                               # %do.body.83
                                        #   in Loop: Header=BB1_31 Depth=1
	jmp	.LBB1_34
.LBB1_34:                               # %do.end.84
                                        #   in Loop: Header=BB1_31 Depth=1
	movl	-4(%rbp), %eax
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rcx
	cmpq	$0, 152(%rcx)
	je	.LBB1_37
# BB#35:                                # %land.lhs.true.86
                                        #   in Loop: Header=BB1_31 Depth=1
	movq	-24(%rbp), %rax
	movq	152(%rax), %rax
	cmpq	$0, (%rax)
	jne	.LBB1_37
# BB#36:                                # %if.then.90
                                        #   in Loop: Header=BB1_31 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	movq	152(%rdx), %rdi
	movl	-36(%rbp), %esi
	movl	-8(%rbp), %edx
	callq	ResizeLayer
.LBB1_37:                               # %if.end.92
                                        #   in Loop: Header=BB1_31 Depth=1
	jmp	.LBB1_38
.LBB1_38:                               # %for.inc
                                        #   in Loop: Header=BB1_31 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB1_31
.LBB1_39:                               # %for.end
	jmp	.LBB1_40
.LBB1_40:                               # %if.end.93
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	ChangeScreenSize, .Lfunc_end1-ChangeScreenSize
	.cfi_endproc

	.align	16, 0x90
	.type	CheckMaxSize,@function
CheckMaxSize:                           # @CheckMaxSize
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
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movq	null, %rax
	movq	%rax, -16(%rbp)
	movq	blank, %rax
	movq	%rax, -24(%rbp)
	cmpl	$1000, -4(%rbp)         # imm = 0x3E8
	jle	.LBB2_2
# BB#1:                                 # %if.then
	movl	$1000, -4(%rbp)         # imm = 0x3E8
.LBB2_2:                                # %if.end
	movl	-4(%rbp), %eax
	cmpl	maxwidth, %eax
	jg	.LBB2_4
# BB#3:                                 # %if.then.2
	jmp	.LBB2_122
.LBB2_4:                                # %if.end.3
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, maxwidth
# BB#5:                                 # %do.body
	jmp	.LBB2_6
.LBB2_6:                                # %do.end
	movq	blank, %rdi
	movl	maxwidth, %esi
	callq	xrealloc
	movq	%rax, blank
	movq	null, %rdi
	movl	maxwidth, %esi
	callq	xrealloc
	movq	%rax, null
	movq	mline_old, %rdi
	movl	maxwidth, %esi
	callq	xrealloc
	movq	%rax, mline_old
	movq	mline_old+8, %rdi
	movl	maxwidth, %esi
	callq	xrealloc
	movq	%rax, mline_old+8
	movq	mline_old+16, %rdi
	movl	maxwidth, %esi
	callq	xrealloc
	movq	%rax, mline_old+16
	movq	mline_old+24, %rdi
	movl	maxwidth, %esi
	callq	xrealloc
	movq	%rax, mline_old+24
	movq	mline_old+32, %rdi
	movl	maxwidth, %esi
	callq	xrealloc
	movq	%rax, mline_old+32
	cmpq	$0, blank
	je	.LBB2_13
# BB#7:                                 # %land.lhs.true
	cmpq	$0, null
	je	.LBB2_13
# BB#8:                                 # %land.lhs.true.11
	cmpq	$0, mline_old
	je	.LBB2_13
# BB#9:                                 # %land.lhs.true.13
	cmpq	$0, mline_old+8
	je	.LBB2_13
# BB#10:                                # %land.lhs.true.15
	cmpq	$0, mline_old+16
	je	.LBB2_13
# BB#11:                                # %land.lhs.true.17
	cmpq	$0, mline_old+24
	je	.LBB2_13
# BB#12:                                # %land.lhs.true.19
	cmpq	$0, mline_old+32
	jne	.LBB2_14
.LBB2_13:                               # %if.then.21
	xorl	%edi, %edi
	movabsq	$.L.str.2, %rsi
	movabsq	$strnomem, %rdx
	movb	$0, %al
	callq	Panic
.LBB2_14:                               # %if.end.22
	movq	blank, %rdi
	movl	maxwidth, %esi
	callq	MakeBlankLine
	xorl	%esi, %esi
	movq	null, %rdi
	movslq	maxwidth, %rdx
	callq	memset
	movq	blank, %rdx
	movq	%rdx, mline_blank
	movq	null, %rdx
	movq	%rdx, mline_blank+8
	movq	null, %rdx
	movq	%rdx, mline_null
	movq	null, %rdx
	movq	%rdx, mline_null+8
	movq	null, %rdx
	movq	%rdx, mline_blank+16
	movq	null, %rdx
	movq	%rdx, mline_null+16
	movq	null, %rdx
	movq	%rdx, mline_blank+24
	movq	null, %rdx
	movq	%rdx, mline_null+24
	movq	null, %rdx
	movq	%rdx, mline_blank+32
	movq	null, %rdx
	movq	%rdx, mline_null+32
	movq	windows, %rdx
	movq	%rdx, -32(%rbp)
.LBB2_15:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_18 Depth 2
                                        #     Child Loop BB2_44 Depth 2
                                        #     Child Loop BB2_70 Depth 2
                                        #     Child Loop BB2_96 Depth 2
	cmpq	$0, -32(%rbp)
	je	.LBB2_122
# BB#16:                                # %for.body
                                        #   in Loop: Header=BB2_15 Depth=1
	jmp	.LBB2_17
.LBB2_17:                               # %do.body.24
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	-32(%rbp), %rax
	movq	9864(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -36(%rbp)
.LBB2_18:                               # %for.cond.25
                                        #   Parent Loop BB2_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	36(%rcx), %eax
	jge	.LBB2_41
# BB#19:                                # %for.body.28
                                        #   in Loop: Header=BB2_18 Depth=2
	jmp	.LBB2_20
.LBB2_20:                               # %do.body.29
                                        #   in Loop: Header=BB2_18 Depth=2
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB2_22
# BB#21:                                # %if.then.32
                                        #   in Loop: Header=BB2_18 Depth=2
	movq	blank, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB2_22:                               # %if.end.34
                                        #   in Loop: Header=BB2_18 Depth=2
	jmp	.LBB2_23
.LBB2_23:                               # %do.end.35
                                        #   in Loop: Header=BB2_18 Depth=2
	jmp	.LBB2_24
.LBB2_24:                               # %do.body.36
                                        #   in Loop: Header=BB2_18 Depth=2
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB2_26
# BB#25:                                # %if.then.39
                                        #   in Loop: Header=BB2_18 Depth=2
	movq	null, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 8(%rcx)
.LBB2_26:                               # %if.end.41
                                        #   in Loop: Header=BB2_18 Depth=2
	jmp	.LBB2_27
.LBB2_27:                               # %do.end.42
                                        #   in Loop: Header=BB2_18 Depth=2
	jmp	.LBB2_28
.LBB2_28:                               # %do.body.43
                                        #   in Loop: Header=BB2_18 Depth=2
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB2_30
# BB#29:                                # %if.then.46
                                        #   in Loop: Header=BB2_18 Depth=2
	movq	null, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 16(%rcx)
.LBB2_30:                               # %if.end.48
                                        #   in Loop: Header=BB2_18 Depth=2
	jmp	.LBB2_31
.LBB2_31:                               # %do.end.49
                                        #   in Loop: Header=BB2_18 Depth=2
	jmp	.LBB2_32
.LBB2_32:                               # %do.body.50
                                        #   in Loop: Header=BB2_18 Depth=2
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB2_34
# BB#33:                                # %if.then.53
                                        #   in Loop: Header=BB2_18 Depth=2
	movq	null, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 24(%rcx)
.LBB2_34:                               # %if.end.55
                                        #   in Loop: Header=BB2_18 Depth=2
	jmp	.LBB2_35
.LBB2_35:                               # %do.end.56
                                        #   in Loop: Header=BB2_18 Depth=2
	jmp	.LBB2_36
.LBB2_36:                               # %do.body.57
                                        #   in Loop: Header=BB2_18 Depth=2
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB2_38
# BB#37:                                # %if.then.60
                                        #   in Loop: Header=BB2_18 Depth=2
	movq	null, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 32(%rcx)
.LBB2_38:                               # %if.end.62
                                        #   in Loop: Header=BB2_18 Depth=2
	jmp	.LBB2_39
.LBB2_39:                               # %do.end.63
                                        #   in Loop: Header=BB2_18 Depth=2
	jmp	.LBB2_40
.LBB2_40:                               # %for.inc
                                        #   in Loop: Header=BB2_18 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movq	-48(%rbp), %rcx
	addq	$40, %rcx
	movq	%rcx, -48(%rbp)
	jmp	.LBB2_18
.LBB2_41:                               # %for.end
                                        #   in Loop: Header=BB2_15 Depth=1
	jmp	.LBB2_42
.LBB2_42:                               # %do.end.64
                                        #   in Loop: Header=BB2_15 Depth=1
	jmp	.LBB2_43
.LBB2_43:                               # %do.body.65
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	-32(%rbp), %rax
	movq	10872(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -36(%rbp)
.LBB2_44:                               # %for.cond.66
                                        #   Parent Loop BB2_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	10860(%rcx), %eax
	jge	.LBB2_67
# BB#45:                                # %for.body.69
                                        #   in Loop: Header=BB2_44 Depth=2
	jmp	.LBB2_46
.LBB2_46:                               # %do.body.70
                                        #   in Loop: Header=BB2_44 Depth=2
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB2_48
# BB#47:                                # %if.then.74
                                        #   in Loop: Header=BB2_44 Depth=2
	movq	blank, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB2_48:                               # %if.end.76
                                        #   in Loop: Header=BB2_44 Depth=2
	jmp	.LBB2_49
.LBB2_49:                               # %do.end.77
                                        #   in Loop: Header=BB2_44 Depth=2
	jmp	.LBB2_50
.LBB2_50:                               # %do.body.78
                                        #   in Loop: Header=BB2_44 Depth=2
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB2_52
# BB#51:                                # %if.then.82
                                        #   in Loop: Header=BB2_44 Depth=2
	movq	null, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 8(%rcx)
.LBB2_52:                               # %if.end.84
                                        #   in Loop: Header=BB2_44 Depth=2
	jmp	.LBB2_53
.LBB2_53:                               # %do.end.85
                                        #   in Loop: Header=BB2_44 Depth=2
	jmp	.LBB2_54
.LBB2_54:                               # %do.body.86
                                        #   in Loop: Header=BB2_44 Depth=2
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB2_56
# BB#55:                                # %if.then.90
                                        #   in Loop: Header=BB2_44 Depth=2
	movq	null, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 16(%rcx)
.LBB2_56:                               # %if.end.92
                                        #   in Loop: Header=BB2_44 Depth=2
	jmp	.LBB2_57
.LBB2_57:                               # %do.end.93
                                        #   in Loop: Header=BB2_44 Depth=2
	jmp	.LBB2_58
.LBB2_58:                               # %do.body.94
                                        #   in Loop: Header=BB2_44 Depth=2
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB2_60
# BB#59:                                # %if.then.98
                                        #   in Loop: Header=BB2_44 Depth=2
	movq	null, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 24(%rcx)
.LBB2_60:                               # %if.end.100
                                        #   in Loop: Header=BB2_44 Depth=2
	jmp	.LBB2_61
.LBB2_61:                               # %do.end.101
                                        #   in Loop: Header=BB2_44 Depth=2
	jmp	.LBB2_62
.LBB2_62:                               # %do.body.102
                                        #   in Loop: Header=BB2_44 Depth=2
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB2_64
# BB#63:                                # %if.then.106
                                        #   in Loop: Header=BB2_44 Depth=2
	movq	null, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 32(%rcx)
.LBB2_64:                               # %if.end.108
                                        #   in Loop: Header=BB2_44 Depth=2
	jmp	.LBB2_65
.LBB2_65:                               # %do.end.109
                                        #   in Loop: Header=BB2_44 Depth=2
	jmp	.LBB2_66
.LBB2_66:                               # %for.inc.110
                                        #   in Loop: Header=BB2_44 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movq	-48(%rbp), %rcx
	addq	$40, %rcx
	movq	%rcx, -48(%rbp)
	jmp	.LBB2_44
.LBB2_67:                               # %for.end.113
                                        #   in Loop: Header=BB2_15 Depth=1
	jmp	.LBB2_68
.LBB2_68:                               # %do.end.114
                                        #   in Loop: Header=BB2_15 Depth=1
	jmp	.LBB2_69
.LBB2_69:                               # %do.body.115
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	-32(%rbp), %rax
	movq	12744(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -36(%rbp)
.LBB2_70:                               # %for.cond.116
                                        #   Parent Loop BB2_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	12736(%rcx), %eax
	jge	.LBB2_93
# BB#71:                                # %for.body.120
                                        #   in Loop: Header=BB2_70 Depth=2
	jmp	.LBB2_72
.LBB2_72:                               # %do.body.121
                                        #   in Loop: Header=BB2_70 Depth=2
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB2_74
# BB#73:                                # %if.then.125
                                        #   in Loop: Header=BB2_70 Depth=2
	movq	blank, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB2_74:                               # %if.end.127
                                        #   in Loop: Header=BB2_70 Depth=2
	jmp	.LBB2_75
.LBB2_75:                               # %do.end.128
                                        #   in Loop: Header=BB2_70 Depth=2
	jmp	.LBB2_76
.LBB2_76:                               # %do.body.129
                                        #   in Loop: Header=BB2_70 Depth=2
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB2_78
# BB#77:                                # %if.then.133
                                        #   in Loop: Header=BB2_70 Depth=2
	movq	null, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 8(%rcx)
.LBB2_78:                               # %if.end.135
                                        #   in Loop: Header=BB2_70 Depth=2
	jmp	.LBB2_79
.LBB2_79:                               # %do.end.136
                                        #   in Loop: Header=BB2_70 Depth=2
	jmp	.LBB2_80
.LBB2_80:                               # %do.body.137
                                        #   in Loop: Header=BB2_70 Depth=2
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB2_82
# BB#81:                                # %if.then.141
                                        #   in Loop: Header=BB2_70 Depth=2
	movq	null, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 16(%rcx)
.LBB2_82:                               # %if.end.143
                                        #   in Loop: Header=BB2_70 Depth=2
	jmp	.LBB2_83
.LBB2_83:                               # %do.end.144
                                        #   in Loop: Header=BB2_70 Depth=2
	jmp	.LBB2_84
.LBB2_84:                               # %do.body.145
                                        #   in Loop: Header=BB2_70 Depth=2
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB2_86
# BB#85:                                # %if.then.149
                                        #   in Loop: Header=BB2_70 Depth=2
	movq	null, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 24(%rcx)
.LBB2_86:                               # %if.end.151
                                        #   in Loop: Header=BB2_70 Depth=2
	jmp	.LBB2_87
.LBB2_87:                               # %do.end.152
                                        #   in Loop: Header=BB2_70 Depth=2
	jmp	.LBB2_88
.LBB2_88:                               # %do.body.153
                                        #   in Loop: Header=BB2_70 Depth=2
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB2_90
# BB#89:                                # %if.then.157
                                        #   in Loop: Header=BB2_70 Depth=2
	movq	null, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 32(%rcx)
.LBB2_90:                               # %if.end.159
                                        #   in Loop: Header=BB2_70 Depth=2
	jmp	.LBB2_91
.LBB2_91:                               # %do.end.160
                                        #   in Loop: Header=BB2_70 Depth=2
	jmp	.LBB2_92
.LBB2_92:                               # %for.inc.161
                                        #   in Loop: Header=BB2_70 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movq	-48(%rbp), %rcx
	addq	$40, %rcx
	movq	%rcx, -48(%rbp)
	jmp	.LBB2_70
.LBB2_93:                               # %for.end.164
                                        #   in Loop: Header=BB2_15 Depth=1
	jmp	.LBB2_94
.LBB2_94:                               # %do.end.165
                                        #   in Loop: Header=BB2_15 Depth=1
	jmp	.LBB2_95
.LBB2_95:                               # %do.body.166
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	-32(%rbp), %rax
	movq	12720(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -36(%rbp)
.LBB2_96:                               # %for.cond.168
                                        #   Parent Loop BB2_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	12732(%rcx), %eax
	jge	.LBB2_119
# BB#97:                                # %for.body.172
                                        #   in Loop: Header=BB2_96 Depth=2
	jmp	.LBB2_98
.LBB2_98:                               # %do.body.173
                                        #   in Loop: Header=BB2_96 Depth=2
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB2_100
# BB#99:                                # %if.then.177
                                        #   in Loop: Header=BB2_96 Depth=2
	movq	blank, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB2_100:                              # %if.end.179
                                        #   in Loop: Header=BB2_96 Depth=2
	jmp	.LBB2_101
.LBB2_101:                              # %do.end.180
                                        #   in Loop: Header=BB2_96 Depth=2
	jmp	.LBB2_102
.LBB2_102:                              # %do.body.181
                                        #   in Loop: Header=BB2_96 Depth=2
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB2_104
# BB#103:                               # %if.then.185
                                        #   in Loop: Header=BB2_96 Depth=2
	movq	null, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 8(%rcx)
.LBB2_104:                              # %if.end.187
                                        #   in Loop: Header=BB2_96 Depth=2
	jmp	.LBB2_105
.LBB2_105:                              # %do.end.188
                                        #   in Loop: Header=BB2_96 Depth=2
	jmp	.LBB2_106
.LBB2_106:                              # %do.body.189
                                        #   in Loop: Header=BB2_96 Depth=2
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB2_108
# BB#107:                               # %if.then.193
                                        #   in Loop: Header=BB2_96 Depth=2
	movq	null, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 16(%rcx)
.LBB2_108:                              # %if.end.195
                                        #   in Loop: Header=BB2_96 Depth=2
	jmp	.LBB2_109
.LBB2_109:                              # %do.end.196
                                        #   in Loop: Header=BB2_96 Depth=2
	jmp	.LBB2_110
.LBB2_110:                              # %do.body.197
                                        #   in Loop: Header=BB2_96 Depth=2
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB2_112
# BB#111:                               # %if.then.201
                                        #   in Loop: Header=BB2_96 Depth=2
	movq	null, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 24(%rcx)
.LBB2_112:                              # %if.end.203
                                        #   in Loop: Header=BB2_96 Depth=2
	jmp	.LBB2_113
.LBB2_113:                              # %do.end.204
                                        #   in Loop: Header=BB2_96 Depth=2
	jmp	.LBB2_114
.LBB2_114:                              # %do.body.205
                                        #   in Loop: Header=BB2_96 Depth=2
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB2_116
# BB#115:                               # %if.then.209
                                        #   in Loop: Header=BB2_96 Depth=2
	movq	null, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, 32(%rcx)
.LBB2_116:                              # %if.end.211
                                        #   in Loop: Header=BB2_96 Depth=2
	jmp	.LBB2_117
.LBB2_117:                              # %do.end.212
                                        #   in Loop: Header=BB2_96 Depth=2
	jmp	.LBB2_118
.LBB2_118:                              # %for.inc.213
                                        #   in Loop: Header=BB2_96 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	movq	-48(%rbp), %rcx
	addq	$40, %rcx
	movq	%rcx, -48(%rbp)
	jmp	.LBB2_96
.LBB2_119:                              # %for.end.216
                                        #   in Loop: Header=BB2_15 Depth=1
	jmp	.LBB2_120
.LBB2_120:                              # %do.end.217
                                        #   in Loop: Header=BB2_15 Depth=1
	jmp	.LBB2_121
.LBB2_121:                              # %for.inc.218
                                        #   in Loop: Header=BB2_15 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB2_15
.LBB2_122:                              # %for.end.219
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	CheckMaxSize, .Lfunc_end2-CheckMaxSize
	.cfi_endproc

	.globl	ResizeLayersToCanvases
	.align	16, 0x90
	.type	ResizeLayersToCanvases,@function
ResizeLayersToCanvases:                 # @ResizeLayersToCanvases
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
	subq	$64, %rsp
# BB#1:                                 # %do.body
	jmp	.LBB3_2
.LBB3_2:                                # %do.end
	movq	display, %rax
	movl	$0, 784(%rax)
	movq	display, %rax
	movq	328(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB3_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB3_40
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB3_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_39
.LBB3_6:                                # %if.end
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_7
.LBB3_7:                                # %do.body.1
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_8
.LBB3_8:                                # %do.end.2
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	220(%rax), %edx
	movq	-8(%rbp), %rax
	subl	216(%rax), %edx
	addl	$1, %edx
	cmpl	%edx, %ecx
	jne	.LBB3_13
# BB#9:                                 # %land.lhs.true
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	228(%rax), %edx
	movq	-8(%rbp), %rax
	subl	224(%rax), %edx
	addl	$1, %edx
	cmpl	%edx, %ecx
	jne	.LBB3_13
# BB#10:                                # %if.then.7
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_11
.LBB3_11:                               # %do.body.8
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_12
.LBB3_12:                               # %do.end.9
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_39
.LBB3_13:                               # %if.end.10
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-16(%rbp), %rdi
	callq	MayResizeLayer
	cmpl	$0, %eax
	jne	.LBB3_17
# BB#14:                                # %if.then.12
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_15
.LBB3_15:                               # %do.body.13
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_16
.LBB3_16:                               # %do.end.14
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_20
.LBB3_17:                               # %if.else
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_18
.LBB3_18:                               # %do.body.15
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_19
.LBB3_19:                               # %do.end.16
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	220(%rax), %ecx
	movq	-8(%rbp), %rax
	subl	216(%rax), %ecx
	addl	$1, %ecx
	movq	-8(%rbp), %rax
	movl	228(%rax), %edx
	movq	-8(%rbp), %rax
	subl	224(%rax), %edx
	addl	$1, %edx
	movq	display, %rax
	movl	%ecx, %esi
	movq	%rax, %rcx
	callq	ResizeLayer
.LBB3_20:                               # %if.end.25
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movl	16(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movl	20(%rax), %ecx
	movl	%ecx, -24(%rbp)
	movl	-24(%rbp), %ecx
	movq	-8(%rbp), %rax
	addl	212(%rax), %ecx
	movq	-8(%rbp), %rax
	cmpl	224(%rax), %ecx
	jge	.LBB3_22
# BB#21:                                # %if.then.31
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-8(%rbp), %rax
	movl	224(%rax), %ecx
	subl	-24(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 212(%rax)
	movq	-8(%rbp), %rdi
	callq	RethinkViewportOffsets
	jmp	.LBB3_25
.LBB3_22:                               # %if.else.35
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	addl	212(%rcx), %eax
	movq	-8(%rbp), %rcx
	cmpl	228(%rcx), %eax
	jle	.LBB3_24
# BB#23:                                # %if.then.40
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-8(%rbp), %rax
	movl	228(%rax), %ecx
	subl	-24(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 212(%rax)
	movq	-8(%rbp), %rdi
	callq	RethinkViewportOffsets
.LBB3_24:                               # %if.end.44
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_25
.LBB3_25:                               # %if.end.45
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	addl	208(%rcx), %eax
	movq	-8(%rbp), %rcx
	cmpl	216(%rcx), %eax
	jge	.LBB3_31
# BB#26:                                # %if.then.49
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	$2, %eax
	movq	-8(%rbp), %rcx
	movl	216(%rcx), %edx
	movl	-20(%rbp), %esi
	movq	-8(%rbp), %rcx
	addl	208(%rcx), %esi
	subl	%esi, %edx
	movl	%edx, -28(%rbp)
	movl	-28(%rbp), %edx
	movq	-8(%rbp), %rcx
	movl	220(%rcx), %esi
	movq	-8(%rbp), %rcx
	subl	216(%rcx), %esi
	addl	$1, %esi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, -40(%rbp)         # 4-byte Spill
	cltd
	movl	-36(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movl	-40(%rbp), %edi         # 4-byte Reload
	cmpl	%eax, %edi
	jge	.LBB3_28
# BB#27:                                # %if.then.59
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	$2, %eax
	movq	-8(%rbp), %rcx
	movl	220(%rcx), %edx
	movq	-8(%rbp), %rcx
	subl	216(%rcx), %edx
	addl	$1, %edx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-44(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movl	%eax, -28(%rbp)
.LBB3_28:                               # %if.end.65
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-8(%rbp), %rax
	movl	208(%rax), %ecx
	addl	-28(%rbp), %ecx
	movq	-8(%rbp), %rax
	cmpl	216(%rax), %ecx
	jle	.LBB3_30
# BB#29:                                # %if.then.70
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-8(%rbp), %rax
	movl	216(%rax), %ecx
	movq	-8(%rbp), %rax
	subl	208(%rax), %ecx
	movl	%ecx, -28(%rbp)
.LBB3_30:                               # %if.end.74
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	addl	208(%rcx), %eax
	movl	%eax, 208(%rcx)
	movq	-8(%rbp), %rdi
	callq	RethinkViewportOffsets
	jmp	.LBB3_38
.LBB3_31:                               # %if.else.77
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	addl	208(%rcx), %eax
	movq	-8(%rbp), %rcx
	cmpl	220(%rcx), %eax
	jle	.LBB3_37
# BB#32:                                # %if.then.82
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	$2, %eax
	movl	-20(%rbp), %ecx
	movq	-8(%rbp), %rdx
	addl	208(%rdx), %ecx
	movq	-8(%rbp), %rdx
	subl	220(%rdx), %ecx
	movl	%ecx, -32(%rbp)
	movl	-32(%rbp), %ecx
	movq	-8(%rbp), %rdx
	movl	220(%rdx), %esi
	movq	-8(%rbp), %rdx
	subl	216(%rdx), %esi
	addl	$1, %esi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	cltd
	movl	-48(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	cmpl	%eax, %ecx
	jge	.LBB3_34
# BB#33:                                # %if.then.94
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	$2, %eax
	movq	-8(%rbp), %rcx
	movl	220(%rcx), %edx
	movq	-8(%rbp), %rcx
	subl	216(%rcx), %edx
	addl	$1, %edx
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-52(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movl	%eax, -32(%rbp)
.LBB3_34:                               # %if.end.100
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-8(%rbp), %rax
	movl	208(%rax), %ecx
	subl	-32(%rbp), %ecx
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	addl	8(%rax), %ecx
	subl	$1, %ecx
	movq	-8(%rbp), %rax
	cmpl	220(%rax), %ecx
	jge	.LBB3_36
# BB#35:                                # %if.then.109
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-8(%rbp), %rax
	movl	208(%rax), %ecx
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	addl	8(%rax), %ecx
	subl	$1, %ecx
	movq	-8(%rbp), %rax
	subl	220(%rax), %ecx
	movl	%ecx, -32(%rbp)
.LBB3_36:                               # %if.end.117
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	208(%rcx), %edx
	subl	%eax, %edx
	movl	%edx, 208(%rcx)
	movq	-8(%rbp), %rdi
	callq	RethinkViewportOffsets
.LBB3_37:                               # %if.end.120
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_38
.LBB3_38:                               # %if.end.121
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_39
.LBB3_39:                               # %for.inc
                                        #   in Loop: Header=BB3_3 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_3
.LBB3_40:                               # %for.end
	xorl	%edi, %edi
	callq	Redisplay
	movq	display, %rax
	cmpl	$0, 784(%rax)
	je	.LBB3_42
# BB#41:                                # %if.then.124
	callq	kaablamm
	movq	display, %rax
	movl	$0, 784(%rax)
.LBB3_42:                               # %if.end.126
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	ResizeLayersToCanvases, .Lfunc_end3-ResizeLayersToCanvases
	.cfi_endproc

	.globl	ResizeLayer
	.align	16, 0x90
	.type	ResizeLayer,@function
ResizeLayer:                            # @ResizeLayer
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	flayer, %rcx
	movq	%rcx, -48(%rbp)
	movq	display, %rcx
	movq	%rcx, -64(%rbp)
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %edx
	cmpl	-12(%rbp), %edx
	jne	.LBB4_3
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movl	12(%rax), %ecx
	cmpl	-16(%rbp), %ecx
	jne	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_65
.LBB4_3:                                # %if.end
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	40(%rax), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -48(%rbp)
	je	.LBB4_7
# BB#4:                                 # %land.lhs.true.2
	movq	-8(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB4_6
# BB#5:                                 # %lor.lhs.false
	movq	-48(%rbp), %rax
	movq	56(%rax), %rax
	movq	40(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB4_7
.LBB4_6:                                # %if.then.7
	movq	$0, -48(%rbp)
.LBB4_7:                                # %if.end.8
	movq	-8(%rbp), %rax
	movq	%rax, flayer
	cmpq	$0, -32(%rbp)
	je	.LBB4_33
# BB#8:                                 # %if.then.10
	movq	displays, %rax
	movq	%rax, -56(%rbp)
.LBB4_9:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_11 Depth 2
                                        #       Child Loop BB4_15 Depth 3
                                        #         Child Loop BB4_19 Depth 4
	cmpq	$0, -56(%rbp)
	je	.LBB4_32
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB4_9 Depth=1
	movq	-56(%rbp), %rax
	movq	328(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB4_11:                               # %for.cond.12
                                        #   Parent Loop BB4_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_15 Depth 3
                                        #         Child Loop BB4_19 Depth 4
	cmpq	$0, -40(%rbp)
	je	.LBB4_30
# BB#12:                                # %for.body.14
                                        #   in Loop: Header=BB4_11 Depth=2
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	56(%rcx), %rcx
	movq	40(%rcx), %rcx
	cmpq	%rcx, %rax
	jne	.LBB4_28
# BB#13:                                # %if.then.18
                                        #   in Loop: Header=BB4_11 Depth=2
	jmp	.LBB4_14
.LBB4_14:                               # %do.body
                                        #   in Loop: Header=BB4_11 Depth=2
	movq	$0, -72(%rbp)
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, flayer
.LBB4_15:                               # %while.cond
                                        #   Parent Loop BB4_9 Depth=1
                                        #     Parent Loop BB4_11 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_19 Depth 4
	movq	flayer, %rax
	cmpq	$0, 48(%rax)
	je	.LBB4_26
# BB#16:                                # %while.body
                                        #   in Loop: Header=BB4_15 Depth=3
	movq	flayer, %rax
	movq	32(%rax), %rax
	movq	40(%rax), %rax
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB4_18
# BB#17:                                # %if.then.22
                                        #   in Loop: Header=BB4_15 Depth=3
	movq	flayer, %rax
	movq	%rax, -72(%rbp)
	movq	flayer, %rax
	movq	48(%rax), %rax
	movq	%rax, flayer
	jmp	.LBB4_25
.LBB4_18:                               # %if.else
                                        #   in Loop: Header=BB4_15 Depth=3
	movq	flayer, %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
.LBB4_19:                               # %for.cond.24
                                        #   Parent Loop BB4_9 Depth=1
                                        #     Parent Loop BB4_11 Depth=2
                                        #       Parent Loop BB4_15 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpq	$0, -80(%rbp)
	je	.LBB4_22
# BB#20:                                # %for.body.26
                                        #   in Loop: Header=BB4_19 Depth=4
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movl	$1, 784(%rax)
# BB#21:                                # %for.inc
                                        #   in Loop: Header=BB4_19 Depth=4
	movq	-80(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB4_19
.LBB4_22:                               # %for.end
                                        #   in Loop: Header=BB4_15 Depth=3
	callq	ExitOverlayPage
	cmpq	$0, -72(%rbp)
	je	.LBB4_24
# BB#23:                                # %if.then.28
                                        #   in Loop: Header=BB4_15 Depth=3
	movq	flayer, %rax
	movq	-72(%rbp), %rcx
	movq	%rax, 48(%rcx)
.LBB4_24:                               # %if.end.30
                                        #   in Loop: Header=BB4_15 Depth=3
	jmp	.LBB4_25
.LBB4_25:                               # %if.end.31
                                        #   in Loop: Header=BB4_15 Depth=3
	jmp	.LBB4_15
.LBB4_26:                               # %while.end
                                        #   in Loop: Header=BB4_11 Depth=2
	movq	flayer, %rax
	movq	32(%rax), %rax
	movq	40(%rax), %rax
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	callq	*%rax
	movl	%eax, -140(%rbp)        # 4-byte Spill
# BB#27:                                # %do.end
                                        #   in Loop: Header=BB4_11 Depth=2
	jmp	.LBB4_28
.LBB4_28:                               # %if.end.35
                                        #   in Loop: Header=BB4_11 Depth=2
	jmp	.LBB4_29
.LBB4_29:                               # %for.inc.36
                                        #   in Loop: Header=BB4_11 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB4_11
.LBB4_30:                               # %for.end.37
                                        #   in Loop: Header=BB4_9 Depth=1
	jmp	.LBB4_31
.LBB4_31:                               # %for.inc.38
                                        #   in Loop: Header=BB4_9 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB4_9
.LBB4_32:                               # %for.end.39
	jmp	.LBB4_48
.LBB4_33:                               # %if.else.40
	jmp	.LBB4_34
.LBB4_34:                               # %do.body.41
	movq	$0, -88(%rbp)
	movq	flayer, %rax
	movq	%rax, flayer
.LBB4_35:                               # %while.cond.43
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_39 Depth 2
	movq	flayer, %rax
	cmpq	$0, 48(%rax)
	je	.LBB4_46
# BB#36:                                # %while.body.46
                                        #   in Loop: Header=BB4_35 Depth=1
	movq	flayer, %rax
	movq	32(%rax), %rax
	movq	40(%rax), %rax
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB4_38
# BB#37:                                # %if.then.51
                                        #   in Loop: Header=BB4_35 Depth=1
	movq	flayer, %rax
	movq	%rax, -88(%rbp)
	movq	flayer, %rax
	movq	48(%rax), %rax
	movq	%rax, flayer
	jmp	.LBB4_45
.LBB4_38:                               # %if.else.53
                                        #   in Loop: Header=BB4_35 Depth=1
	movq	flayer, %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
.LBB4_39:                               # %for.cond.56
                                        #   Parent Loop BB4_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -96(%rbp)
	je	.LBB4_42
# BB#40:                                # %for.body.58
                                        #   in Loop: Header=BB4_39 Depth=2
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movl	$1, 784(%rax)
# BB#41:                                # %for.inc.61
                                        #   in Loop: Header=BB4_39 Depth=2
	movq	-96(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB4_39
.LBB4_42:                               # %for.end.63
                                        #   in Loop: Header=BB4_35 Depth=1
	callq	ExitOverlayPage
	cmpq	$0, -88(%rbp)
	je	.LBB4_44
# BB#43:                                # %if.then.65
                                        #   in Loop: Header=BB4_35 Depth=1
	movq	flayer, %rax
	movq	-88(%rbp), %rcx
	movq	%rax, 48(%rcx)
.LBB4_44:                               # %if.end.67
                                        #   in Loop: Header=BB4_35 Depth=1
	jmp	.LBB4_45
.LBB4_45:                               # %if.end.68
                                        #   in Loop: Header=BB4_35 Depth=1
	jmp	.LBB4_35
.LBB4_46:                               # %while.end.69
	movq	flayer, %rax
	movq	32(%rax), %rax
	movq	40(%rax), %rax
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	callq	*%rax
	movl	%eax, -144(%rbp)        # 4-byte Spill
# BB#47:                                # %do.end.73
	jmp	.LBB4_48
.LBB4_48:                               # %if.end.74
	movq	displays, %rax
	movq	%rax, display
.LBB4_49:                               # %for.cond.75
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_53 Depth 2
	cmpq	$0, display
	je	.LBB4_62
# BB#50:                                # %for.body.77
                                        #   in Loop: Header=BB4_49 Depth=1
	movq	display, %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB4_52
# BB#51:                                # %if.then.79
                                        #   in Loop: Header=BB4_49 Depth=1
	jmp	.LBB4_61
.LBB4_52:                               # %if.end.80
                                        #   in Loop: Header=BB4_49 Depth=1
	movq	display, %rax
	movq	328(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB4_53:                               # %for.cond.82
                                        #   Parent Loop BB4_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$0, -40(%rbp)
	je	.LBB4_58
# BB#54:                                # %for.body.84
                                        #   in Loop: Header=BB4_53 Depth=2
	movq	-40(%rbp), %rax
	movq	64(%rax), %rax
	movq	56(%rax), %rax
	movq	40(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB4_56
# BB#55:                                # %if.then.89
                                        #   in Loop: Header=BB4_53 Depth=2
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movq	display, %rdx
	movq	%rdx, -104(%rbp)
	movq	flayer, %rdx
	movq	%rdx, -112(%rbp)
	movq	-40(%rbp), %rdx
	movq	64(%rdx), %rdx
	movq	%rdx, -120(%rbp)
	movq	-120(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, -128(%rbp)
	movq	-40(%rbp), %rdx
	movq	72(%rdx), %rdx
	movq	%rdx, -136(%rbp)
	movq	-120(%rbp), %rdx
	movq	%rdx, flayer
	movq	-40(%rbp), %rdx
	movq	-120(%rbp), %rsi
	movq	%rdx, (%rsi)
	movq	-40(%rbp), %rdx
	movq	$0, 72(%rdx)
	movq	flayer, %rdx
	movq	32(%rdx), %rdx
	movl	%eax, %edi
	movl	%eax, %esi
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movl	%eax, %edx
	movq	-152(%rbp), %r8         # 8-byte Reload
	callq	*16(%r8)
	xorl	%r8d, %r8d
	movq	-112(%rbp), %r9
	movq	%r9, flayer
	movq	-128(%rbp), %r9
	movq	-120(%rbp), %r10
	movq	%r9, (%r10)
	movq	-136(%rbp), %r9
	movq	-40(%rbp), %r10
	movq	%r9, 72(%r10)
	movq	-104(%rbp), %r9
	movq	%r9, display
	movq	-40(%rbp), %r9
	movl	216(%r9), %edi
	movq	-40(%rbp), %r9
	movl	224(%r9), %esi
	movq	-40(%rbp), %r9
	movl	220(%r9), %edx
	movq	-40(%rbp), %r9
	movl	228(%r9), %ecx
	callq	RefreshArea
.LBB4_56:                               # %if.end.101
                                        #   in Loop: Header=BB4_53 Depth=2
	jmp	.LBB4_57
.LBB4_57:                               # %for.inc.102
                                        #   in Loop: Header=BB4_53 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB4_53
.LBB4_58:                               # %for.end.104
                                        #   in Loop: Header=BB4_49 Depth=1
	movq	display, %rax
	cmpl	$0, 784(%rax)
	je	.LBB4_60
# BB#59:                                # %if.then.107
                                        #   in Loop: Header=BB4_49 Depth=1
	callq	kaablamm
	movq	display, %rax
	movl	$0, 784(%rax)
.LBB4_60:                               # %if.end.109
                                        #   in Loop: Header=BB4_49 Depth=1
	jmp	.LBB4_61
.LBB4_61:                               # %for.inc.110
                                        #   in Loop: Header=BB4_49 Depth=1
	movq	display, %rax
	movq	(%rax), %rax
	movq	%rax, display
	jmp	.LBB4_49
.LBB4_62:                               # %for.end.112
	cmpq	$0, -48(%rbp)
	je	.LBB4_64
# BB#63:                                # %if.then.114
	movq	-48(%rbp), %rax
	movq	%rax, flayer
.LBB4_64:                               # %if.end.115
	movq	-64(%rbp), %rax
	movq	%rax, display
.LBB4_65:                               # %return
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	ResizeLayer, .Lfunc_end4-ResizeLayer
	.cfi_endproc

	.globl	MayResizeLayer
	.align	16, 0x90
	.type	MayResizeLayer,@function
MayResizeLayer:                         # @MayResizeLayer
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
	movq	%rdi, -16(%rbp)
	movl	$0, -20(%rbp)
# BB#1:                                 # %do.body
	jmp	.LBB5_2
.LBB5_2:                                # %do.end
	jmp	.LBB5_3
.LBB5_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB5_13
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_11
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB5_3 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	cmpl	$1, %eax
	jg	.LBB5_7
# BB#6:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, 72(%rax)
	je	.LBB5_10
.LBB5_7:                                # %if.then.4
	jmp	.LBB5_8
.LBB5_8:                                # %do.body.5
	jmp	.LBB5_9
.LBB5_9:                                # %do.end.6
	movl	$0, -4(%rbp)
	jmp	.LBB5_16
.LBB5_10:                               # %if.end
                                        #   in Loop: Header=BB5_3 Depth=1
	jmp	.LBB5_11
.LBB5_11:                               # %if.end.7
                                        #   in Loop: Header=BB5_3 Depth=1
	jmp	.LBB5_12
.LBB5_12:                               # %for.inc
                                        #   in Loop: Header=BB5_3 Depth=1
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB5_3
.LBB5_13:                               # %for.end
	jmp	.LBB5_14
.LBB5_14:                               # %do.body.8
	jmp	.LBB5_15
.LBB5_15:                               # %do.end.9
	movl	$1, -4(%rbp)
.LBB5_16:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end5:
	.size	MayResizeLayer, .Lfunc_end5-MayResizeLayer
	.cfi_endproc

	.align	16, 0x90
	.type	kaablamm,@function
kaablamm:                               # @kaablamm
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
	xorl	%edi, %edi
	movabsq	$.L.str.4, %rsi
	movb	$0, %al
	callq	Msg
	popq	%rbp
	retq
.Lfunc_end6:
	.size	kaablamm, .Lfunc_end6-kaablamm
	.cfi_endproc

	.globl	xrealloc
	.align	16, 0x90
	.type	xrealloc,@function
xrealloc:                               # @xrealloc
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movslq	-20(%rbp), %rdi
	callq	malloc
	movq	%rax, -8(%rbp)
	jmp	.LBB7_5
.LBB7_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movslq	-20(%rbp), %rsi
	callq	realloc
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	je	.LBB7_4
# BB#3:                                 # %if.then.3
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB7_5
.LBB7_4:                                # %if.end.4
	movq	-16(%rbp), %rdi
	callq	free
	movq	$0, -8(%rbp)
.LBB7_5:                                # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	xrealloc, .Lfunc_end7-xrealloc
	.cfi_endproc

	.globl	ChangeWindowSize
	.align	16, 0x90
	.type	ChangeWindowSize,@function
ChangeWindowSize:                       # @ChangeWindowSize
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
	subq	$416, %rsp              # imm = 0x1A0
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	cmpl	$0, -20(%rbp)
	jle	.LBB8_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, -24(%rbp)
	jg	.LBB8_3
.LBB8_2:                                # %if.then
	movl	$0, -28(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -20(%rbp)
.LBB8_3:                                # %if.end
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB8_5
# BB#4:                                 # %if.then.3
	movl	$0, -4(%rbp)
	jmp	.LBB8_287
.LBB8_5:                                # %if.end.4
	cmpl	$1000, -20(%rbp)        # imm = 0x3E8
	jle	.LBB8_7
# BB#6:                                 # %if.then.6
	xorl	%edi, %edi
	movabsq	$.L.str, %rsi
	movl	$1000, %edx             # imm = 0x3E8
	movb	$0, %al
	callq	Msg
	movl	$1000, -20(%rbp)        # imm = 0x3E8
.LBB8_7:                                # %if.end.7
	cmpl	$1000, -24(%rbp)        # imm = 0x3E8
	jle	.LBB8_9
# BB#8:                                 # %if.then.9
	xorl	%edi, %edi
	movabsq	$.L.str.1, %rsi
	movl	$1000, %edx             # imm = 0x3E8
	movb	$0, %al
	callq	Msg
	movl	$1000, -24(%rbp)        # imm = 0x3E8
.LBB8_9:                                # %if.end.10
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	cmpl	-20(%rbp), %ecx
	jne	.LBB8_15
# BB#10:                                # %land.lhs.true
	movq	-16(%rbp), %rax
	movl	36(%rax), %ecx
	cmpl	-24(%rbp), %ecx
	jne	.LBB8_15
# BB#11:                                # %land.lhs.true.14
	movq	-16(%rbp), %rax
	movl	10860(%rax), %ecx
	cmpl	-28(%rbp), %ecx
	jne	.LBB8_15
# BB#12:                                # %if.then.16
	jmp	.LBB8_13
.LBB8_13:                               # %do.body
	jmp	.LBB8_14
.LBB8_14:                               # %do.end
	movl	$0, -4(%rbp)
	jmp	.LBB8_287
.LBB8_15:                               # %if.end.17
	movl	-20(%rbp), %edi
	callq	CheckMaxSize
# BB#16:                                # %do.body.18
	jmp	.LBB8_17
.LBB8_17:                               # %do.end.19
	jmp	.LBB8_18
.LBB8_18:                               # %do.body.20
	jmp	.LBB8_19
.LBB8_19:                               # %do.end.21
	jmp	.LBB8_20
.LBB8_20:                               # %do.body.22
	jmp	.LBB8_21
.LBB8_21:                               # %do.end.23
	movq	-16(%rbp), %rax
	movl	10860(%rax), %ecx
	movq	-16(%rbp), %rax
	addl	36(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -76(%rbp)
	movl	-28(%rbp), %ecx
	addl	-24(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movl	$0, -112(%rbp)
	movl	$0, -116(%rbp)
	movl	$0, -120(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB8_31
# BB#22:                                # %if.then.29
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	32(%rcx), %eax
	jne	.LBB8_24
# BB#23:                                # %lor.lhs.false.33
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	36(%rcx), %eax
	je	.LBB8_27
.LBB8_24:                               # %if.then.37
	movl	$40, %eax
	movl	%eax, %esi
	movslq	-24(%rbp), %rdi
	callq	calloc
	movq	%rax, -64(%rbp)
	cmpq	$0, %rax
	jne	.LBB8_26
# BB#25:                                # %if.then.40
	movq	-16(%rbp), %rdi
	callq	KillWindow
	xorl	%edi, %edi
	movabsq	$.L.str.2, %rsi
	movabsq	$strnomem, %rdx
	movb	$0, %al
	callq	Msg
	movl	$-1, -4(%rbp)
	jmp	.LBB8_287
.LBB8_26:                               # %if.end.41
	jmp	.LBB8_30
.LBB8_27:                               # %if.else
	jmp	.LBB8_28
.LBB8_28:                               # %do.body.42
	jmp	.LBB8_29
.LBB8_29:                               # %do.end.43
	movq	-16(%rbp), %rax
	movq	9864(%rax), %rax
	movq	%rax, -64(%rbp)
	movl	-24(%rbp), %ecx
	movl	-76(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -76(%rbp)
	movl	-24(%rbp), %ecx
	movl	-80(%rbp), %edx
	subl	%ecx, %edx
	movl	%edx, -80(%rbp)
	movq	-16(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, -112(%rbp)
	movq	-16(%rbp), %rax
	movl	44(%rax), %ecx
	movl	%ecx, -116(%rbp)
	movq	-16(%rbp), %rax
	movl	9520(%rax), %ecx
	movl	%ecx, -120(%rbp)
.LBB8_30:                               # %if.end.48
	jmp	.LBB8_31
.LBB8_31:                               # %if.end.49
	cmpl	$0, -28(%rbp)
	je	.LBB8_35
# BB#32:                                # %if.then.51
	movl	$40, %eax
	movl	%eax, %esi
	movslq	-28(%rbp), %rdi
	callq	calloc
	movq	%rax, -72(%rbp)
	cmpq	$0, %rax
	jne	.LBB8_34
# BB#33:                                # %if.then.56
	xorl	%edi, %edi
	movabsq	$.L.str.3, %rsi
	movb	$0, %al
	callq	Msg
	movl	$0, -28(%rbp)
	movl	-24(%rbp), %edi
	subl	$1, %edi
	movl	%edi, -80(%rbp)
.LBB8_34:                               # %if.end.58
	jmp	.LBB8_35
.LBB8_35:                               # %if.end.59
	movl	$0, -108(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 32(%rax)
	je	.LBB8_40
# BB#36:                                # %land.lhs.true.63
	movq	-16(%rbp), %rax
	movl	40(%rax), %ecx
	movq	-16(%rbp), %rax
	cmpl	32(%rax), %ecx
	jne	.LBB8_40
# BB#37:                                # %if.then.70
	jmp	.LBB8_38
.LBB8_38:                               # %do.body.71
	jmp	.LBB8_39
.LBB8_39:                               # %do.end.72
	movl	$1, -108(%rbp)
	movq	-16(%rbp), %rax
	movl	40(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 40(%rax)
.LBB8_40:                               # %if.end.75
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	cmpl	-20(%rbp), %ecx
	jne	.LBB8_71
# BB#41:                                # %if.then.80
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movl	40(%rcx), %edx
	addl	-108(%rbp), %edx
	movl	%edx, -112(%rbp)
	movq	-16(%rbp), %rcx
	movl	44(%rcx), %edx
	addl	-24(%rbp), %edx
	movq	-16(%rbp), %rcx
	subl	36(%rcx), %edx
	movl	%edx, -116(%rbp)
	subl	-116(%rbp), %eax
	movl	%eax, -132(%rbp)
	movq	-16(%rbp), %rcx
	movl	44(%rcx), %eax
	movq	-16(%rbp), %rcx
	addl	10860(%rcx), %eax
	subl	$1, %eax
	movl	%eax, -100(%rbp)
.LBB8_42:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -100(%rbp)
	movb	%cl, -133(%rbp)         # 1-byte Spill
	jl	.LBB8_44
# BB#43:                                # %land.rhs
                                        #   in Loop: Header=BB8_42 Depth=1
	movl	-116(%rbp), %eax
	addl	-132(%rbp), %eax
	cmpl	-24(%rbp), %eax
	setl	%cl
	movb	%cl, -133(%rbp)         # 1-byte Spill
.LBB8_44:                               # %land.end
                                        #   in Loop: Header=BB8_42 Depth=1
	movb	-133(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB8_45
	jmp	.LBB8_54
.LBB8_45:                               # %for.body
                                        #   in Loop: Header=BB8_42 Depth=1
	movl	-100(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	10860(%rcx), %eax
	jge	.LBB8_47
# BB#46:                                # %cond.true
                                        #   in Loop: Header=BB8_42 Depth=1
	movq	-16(%rbp), %rax
	movl	10864(%rax), %ecx
	addl	-100(%rbp), %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movl	%ecx, %eax
	cltd
	movq	-144(%rbp), %rsi        # 8-byte Reload
	idivl	10860(%rsi)
	movslq	%edx, %rdi
	movq	-16(%rbp), %r8
	imulq	$40, %rdi, %rdi
	addq	10872(%r8), %rdi
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	jmp	.LBB8_48
.LBB8_47:                               # %cond.false
                                        #   in Loop: Header=BB8_42 Depth=1
	movl	-100(%rbp), %eax
	movq	-16(%rbp), %rcx
	subl	10860(%rcx), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	imulq	$40, %rcx, %rcx
	addq	9864(%rdx), %rcx
	movq	%rcx, -152(%rbp)        # 8-byte Spill
.LBB8_48:                               # %cond.end
                                        #   in Loop: Header=BB8_42 Depth=1
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB8_50
# BB#49:                                # %if.then.112
	jmp	.LBB8_54
.LBB8_50:                               # %if.end.113
                                        #   in Loop: Header=BB8_42 Depth=1
	movq	-16(%rbp), %rax
	movslq	32(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$32, %edx
	jne	.LBB8_52
# BB#51:                                # %if.then.122
	jmp	.LBB8_54
.LBB8_52:                               # %if.end.123
                                        #   in Loop: Header=BB8_42 Depth=1
	movl	-132(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -132(%rbp)
# BB#53:                                # %for.inc
                                        #   in Loop: Header=BB8_42 Depth=1
	movl	-100(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB8_42
.LBB8_54:                               # %for.end
	cmpl	$0, -132(%rbp)
	jge	.LBB8_56
# BB#55:                                # %if.then.127
	movl	$0, -132(%rbp)
	jmp	.LBB8_59
.LBB8_56:                               # %if.else.128
	jmp	.LBB8_57
.LBB8_57:                               # %do.body.129
	jmp	.LBB8_58
.LBB8_58:                               # %do.end.130
	jmp	.LBB8_59
.LBB8_59:                               # %if.end.131
	movl	-132(%rbp), %eax
	addl	-116(%rbp), %eax
	movl	%eax, -116(%rbp)
	movq	-16(%rbp), %rcx
	cmpl	$0, 9520(%rcx)
	jle	.LBB8_64
# BB#60:                                # %if.then.136
	movq	-16(%rbp), %rax
	movl	9520(%rax), %ecx
	addl	-24(%rbp), %ecx
	movq	-16(%rbp), %rax
	subl	36(%rax), %ecx
	addl	-132(%rbp), %ecx
	movl	%ecx, -120(%rbp)
	cmpl	$1, -120(%rbp)
	jl	.LBB8_62
# BB#61:                                # %lor.lhs.false.145
	movl	-120(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jle	.LBB8_63
.LBB8_62:                               # %if.then.148
	movl	$0, -120(%rbp)
.LBB8_63:                               # %if.end.149
	jmp	.LBB8_64
.LBB8_64:                               # %if.end.150
	jmp	.LBB8_65
.LBB8_65:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-132(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -132(%rbp)
	cmpl	$0, %eax
	jle	.LBB8_70
# BB#66:                                # %while.body
                                        #   in Loop: Header=BB8_65 Depth=1
	movl	-76(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	10860(%rcx), %eax
	jge	.LBB8_68
# BB#67:                                # %cond.true.157
                                        #   in Loop: Header=BB8_65 Depth=1
	movq	-16(%rbp), %rax
	movl	10864(%rax), %ecx
	addl	-76(%rbp), %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movl	%ecx, %eax
	cltd
	movq	-160(%rbp), %rsi        # 8-byte Reload
	idivl	10860(%rsi)
	movslq	%edx, %rdi
	movq	-16(%rbp), %r8
	imulq	$40, %rdi, %rdi
	addq	10872(%r8), %rdi
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	jmp	.LBB8_69
.LBB8_68:                               # %cond.false.165
                                        #   in Loop: Header=BB8_65 Depth=1
	movl	-76(%rbp), %eax
	movq	-16(%rbp), %rcx
	subl	10860(%rcx), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	imulq	$40, %rcx, %rcx
	addq	9864(%rdx), %rcx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
.LBB8_69:                               # %cond.end.171
                                        #   in Loop: Header=BB8_65 Depth=1
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	FreeMline
	movl	-76(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -76(%rbp)
	jmp	.LBB8_65
.LBB8_70:                               # %while.end
	jmp	.LBB8_71
.LBB8_71:                               # %if.end.174
	jmp	.LBB8_72
.LBB8_72:                               # %do.body.175
	jmp	.LBB8_73
.LBB8_73:                               # %do.end.176
	cmpl	$0, -76(%rbp)
	jl	.LBB8_78
# BB#74:                                # %if.then.179
	movl	-76(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	10860(%rcx), %eax
	jge	.LBB8_76
# BB#75:                                # %cond.true.183
	movq	-16(%rbp), %rax
	movl	10864(%rax), %ecx
	addl	-76(%rbp), %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movl	%ecx, %eax
	cltd
	movq	-176(%rbp), %rsi        # 8-byte Reload
	idivl	10860(%rsi)
	movslq	%edx, %rdi
	movq	-16(%rbp), %r8
	imulq	$40, %rdi, %rdi
	addq	10872(%r8), %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	jmp	.LBB8_77
.LBB8_76:                               # %cond.false.191
	movl	-76(%rbp), %eax
	movq	-16(%rbp), %rcx
	subl	10860(%rcx), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	imulq	$40, %rcx, %rcx
	addq	9864(%rdx), %rcx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
.LBB8_77:                               # %cond.end.197
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
.LBB8_78:                               # %if.end.199
	cmpl	$0, -80(%rbp)
	jl	.LBB8_83
# BB#79:                                # %if.then.202
	movl	-80(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB8_81
# BB#80:                                # %cond.true.205
	movslq	-80(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-72(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	jmp	.LBB8_82
.LBB8_81:                               # %cond.false.208
	movl	-80(%rbp), %eax
	subl	-28(%rbp), %eax
	movslq	%eax, %rcx
	imulq	$40, %rcx, %rcx
	addq	-64(%rbp), %rcx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
.LBB8_82:                               # %cond.end.212
	movq	-192(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
.LBB8_83:                               # %if.end.214
	jmp	.LBB8_84
.LBB8_84:                               # %while.cond.215
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_100 Depth 2
                                        #     Child Loop BB8_110 Depth 2
                                        #     Child Loop BB8_119 Depth 2
                                        #       Child Loop BB8_144 Depth 3
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -76(%rbp)
	movb	%cl, -193(%rbp)         # 1-byte Spill
	jl	.LBB8_86
# BB#85:                                # %land.rhs.218
                                        #   in Loop: Header=BB8_84 Depth=1
	cmpl	$0, -80(%rbp)
	setge	%al
	movb	%al, -193(%rbp)         # 1-byte Spill
.LBB8_86:                               # %land.end.221
                                        #   in Loop: Header=BB8_84 Depth=1
	movb	-193(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB8_87
	jmp	.LBB8_192
.LBB8_87:                               # %while.body.222
                                        #   in Loop: Header=BB8_84 Depth=1
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	cmpl	-20(%rbp), %ecx
	jne	.LBB8_99
# BB#88:                                # %if.then.227
                                        #   in Loop: Header=BB8_84 Depth=1
	movabsq	$mline_zero, %rax
	movl	$40, %ecx
	movl	%ecx, %edx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rsi, %rdi
	movq	-208(%rbp), %rsi        # 8-byte Reload
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	movq	-224(%rbp), %rsi        # 8-byte Reload
	movq	-216(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	movl	-76(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -76(%rbp)
	cmpl	$0, %ecx
	jl	.LBB8_93
# BB#89:                                # %if.then.231
                                        #   in Loop: Header=BB8_84 Depth=1
	movl	-76(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	10860(%rcx), %eax
	jge	.LBB8_91
# BB#90:                                # %cond.true.235
                                        #   in Loop: Header=BB8_84 Depth=1
	movq	-16(%rbp), %rax
	movl	10864(%rax), %ecx
	addl	-76(%rbp), %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	movl	%ecx, %eax
	cltd
	movq	-232(%rbp), %rsi        # 8-byte Reload
	idivl	10860(%rsi)
	movslq	%edx, %rdi
	movq	-16(%rbp), %r8
	imulq	$40, %rdi, %rdi
	addq	10872(%r8), %rdi
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	jmp	.LBB8_92
.LBB8_91:                               # %cond.false.243
                                        #   in Loop: Header=BB8_84 Depth=1
	movl	-76(%rbp), %eax
	movq	-16(%rbp), %rcx
	subl	10860(%rcx), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	imulq	$40, %rcx, %rcx
	addq	9864(%rdx), %rcx
	movq	%rcx, -240(%rbp)        # 8-byte Spill
.LBB8_92:                               # %cond.end.249
                                        #   in Loop: Header=BB8_84 Depth=1
	movq	-240(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
.LBB8_93:                               # %if.end.251
                                        #   in Loop: Header=BB8_84 Depth=1
	movl	-80(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, %eax
	jl	.LBB8_98
# BB#94:                                # %if.then.255
                                        #   in Loop: Header=BB8_84 Depth=1
	movl	-80(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB8_96
# BB#95:                                # %cond.true.258
                                        #   in Loop: Header=BB8_84 Depth=1
	movslq	-80(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-72(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB8_97
.LBB8_96:                               # %cond.false.261
                                        #   in Loop: Header=BB8_84 Depth=1
	movl	-80(%rbp), %eax
	subl	-28(%rbp), %eax
	movslq	%eax, %rcx
	imulq	$40, %rcx, %rcx
	addq	-64(%rbp), %rcx
	movq	%rcx, -248(%rbp)        # 8-byte Spill
.LBB8_97:                               # %cond.end.265
                                        #   in Loop: Header=BB8_84 Depth=1
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
.LBB8_98:                               # %if.end.267
                                        #   in Loop: Header=BB8_84 Depth=1
	jmp	.LBB8_84
.LBB8_99:                               # %if.end.268
                                        #   in Loop: Header=BB8_84 Depth=1
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -84(%rbp)
.LBB8_100:                              # %for.cond.272
                                        #   Parent Loop BB8_84 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -84(%rbp)
	jle	.LBB8_106
# BB#101:                               # %for.body.275
                                        #   in Loop: Header=BB8_100 Depth=2
	movslq	-84(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$32, %edx
	jne	.LBB8_103
# BB#102:                               # %lor.lhs.false.282
                                        #   in Loop: Header=BB8_100 Depth=2
	movslq	-84(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$0, %edx
	je	.LBB8_104
.LBB8_103:                              # %if.then.287
                                        #   in Loop: Header=BB8_84 Depth=1
	jmp	.LBB8_106
.LBB8_104:                              # %if.end.288
                                        #   in Loop: Header=BB8_100 Depth=2
	jmp	.LBB8_105
.LBB8_105:                              # %for.inc.289
                                        #   in Loop: Header=BB8_100 Depth=2
	movl	-84(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB8_100
.LBB8_106:                              # %for.end.291
                                        #   in Loop: Header=BB8_84 Depth=1
	movl	-76(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	44(%rcx), %edx
	movq	-16(%rbp), %rcx
	addl	10860(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB8_109
# BB#107:                               # %land.lhs.true.298
                                        #   in Loop: Header=BB8_84 Depth=1
	movl	-84(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	40(%rcx), %eax
	jge	.LBB8_109
# BB#108:                               # %if.then.303
                                        #   in Loop: Header=BB8_84 Depth=1
	movq	-16(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, -84(%rbp)
.LBB8_109:                              # %if.end.306
                                        #   in Loop: Header=BB8_84 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	-76(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -100(%rbp)
.LBB8_110:                              # %for.cond.309
                                        #   Parent Loop BB8_84 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -100(%rbp)
	jl	.LBB8_118
# BB#111:                               # %for.body.312
                                        #   in Loop: Header=BB8_110 Depth=2
	movl	-100(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	10860(%rcx), %eax
	jge	.LBB8_113
# BB#112:                               # %cond.true.316
                                        #   in Loop: Header=BB8_110 Depth=2
	movq	-16(%rbp), %rax
	movl	10864(%rax), %ecx
	addl	-100(%rbp), %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	movl	%ecx, %eax
	cltd
	movq	-256(%rbp), %rsi        # 8-byte Reload
	idivl	10860(%rsi)
	movslq	%edx, %rdi
	movq	-16(%rbp), %r8
	imulq	$40, %rdi, %rdi
	addq	10872(%r8), %rdi
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	jmp	.LBB8_114
.LBB8_113:                              # %cond.false.324
                                        #   in Loop: Header=BB8_110 Depth=2
	movl	-100(%rbp), %eax
	movq	-16(%rbp), %rcx
	subl	10860(%rcx), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	imulq	$40, %rcx, %rcx
	addq	9864(%rdx), %rcx
	movq	%rcx, -264(%rbp)        # 8-byte Spill
.LBB8_114:                              # %cond.end.330
                                        #   in Loop: Header=BB8_110 Depth=2
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	movslq	32(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx), %rcx
	movzbl	(%rcx,%rax), %edx
	cmpl	$32, %edx
	jne	.LBB8_116
# BB#115:                               # %if.then.340
                                        #   in Loop: Header=BB8_84 Depth=1
	jmp	.LBB8_118
.LBB8_116:                              # %if.end.341
                                        #   in Loop: Header=BB8_110 Depth=2
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	addl	-84(%rbp), %ecx
	movl	%ecx, -84(%rbp)
# BB#117:                               # %for.inc.345
                                        #   in Loop: Header=BB8_110 Depth=2
	movl	-100(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB8_110
.LBB8_118:                              # %for.end.347
                                        #   in Loop: Header=BB8_84 Depth=1
	movl	-84(%rbp), %eax
	subl	$1, %eax
	cltd
	idivl	-20(%rbp)
	addl	$1, %edx
	movl	%edx, -96(%rbp)
	movl	-80(%rbp), %edx
	movl	%edx, -104(%rbp)
.LBB8_119:                              # %while.cond.351
                                        #   Parent Loop BB8_84 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_144 Depth 3
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -84(%rbp)
	movb	%cl, -265(%rbp)         # 1-byte Spill
	jle	.LBB8_122
# BB#120:                               # %land.lhs.true.354
                                        #   in Loop: Header=BB8_119 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -76(%rbp)
	movb	%cl, -265(%rbp)         # 1-byte Spill
	jl	.LBB8_122
# BB#121:                               # %land.rhs.357
                                        #   in Loop: Header=BB8_119 Depth=2
	cmpl	$0, -80(%rbp)
	setge	%al
	movb	%al, -265(%rbp)         # 1-byte Spill
.LBB8_122:                              # %land.end.360
                                        #   in Loop: Header=BB8_119 Depth=2
	movb	-265(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB8_123
	jmp	.LBB8_189
.LBB8_123:                              # %while.body.361
                                        #   in Loop: Header=BB8_119 Depth=2
	movl	-96(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jle	.LBB8_125
# BB#124:                               # %cond.true.364
                                        #   in Loop: Header=BB8_119 Depth=2
	movl	-92(%rbp), %eax
	movl	%eax, -272(%rbp)        # 4-byte Spill
	jmp	.LBB8_126
.LBB8_125:                              # %cond.false.365
                                        #   in Loop: Header=BB8_119 Depth=2
	movl	-96(%rbp), %eax
	movl	%eax, -272(%rbp)        # 4-byte Spill
.LBB8_126:                              # %cond.end.366
                                        #   in Loop: Header=BB8_119 Depth=2
	movl	-272(%rbp), %eax        # 4-byte Reload
	movl	%eax, -88(%rbp)
	movq	-48(%rbp), %rcx
	cmpq	$0, (%rcx)
	jne	.LBB8_130
# BB#127:                               # %if.then.371
                                        #   in Loop: Header=BB8_119 Depth=2
	movq	-48(%rbp), %rdi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	callq	AllocMline
	cmpl	$0, %eax
	je	.LBB8_129
# BB#128:                               # %if.then.375
	jmp	.LBB8_223
.LBB8_129:                              # %if.end.376
                                        #   in Loop: Header=BB8_119 Depth=2
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movslq	-96(%rbp), %rcx
	addq	%rcx, %rax
	movl	-20(%rbp), %edx
	subl	-96(%rbp), %edx
	movq	%rax, %rdi
	movl	%edx, %esi
	callq	MakeBlankLine
	xorl	%edx, %edx
	movl	$32, %esi
	movl	-104(%rbp), %r8d
	cmpl	-80(%rbp), %r8d
	cmovel	%esi, %edx
	movb	%dl, %r9b
	movslq	-20(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	(%rcx), %rcx
	movb	%r9b, (%rcx,%rax)
.LBB8_130:                              # %if.end.386
                                        #   in Loop: Header=BB8_119 Depth=2
	movq	-40(%rbp), %rdi
	movl	-92(%rbp), %eax
	subl	-88(%rbp), %eax
	movq	-48(%rbp), %rdx
	movl	-96(%rbp), %ecx
	subl	-88(%rbp), %ecx
	movl	-88(%rbp), %r8d
	movl	-20(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -276(%rbp)        # 4-byte Spill
	movl	%eax, %esi
	movl	-276(%rbp), %r9d        # 4-byte Reload
	callq	BcopyMline
	cmpl	$0, %eax
	je	.LBB8_132
# BB#131:                               # %if.then.392
	jmp	.LBB8_223
.LBB8_132:                              # %if.end.393
                                        #   in Loop: Header=BB8_119 Depth=2
	movl	-76(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	44(%rcx), %edx
	movq	-16(%rbp), %rcx
	addl	10860(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB8_167
# BB#133:                               # %land.lhs.true.400
                                        #   in Loop: Header=BB8_119 Depth=2
	movl	-92(%rbp), %eax
	subl	-88(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	40(%rcx), %eax
	jg	.LBB8_167
# BB#134:                               # %land.lhs.true.406
                                        #   in Loop: Header=BB8_119 Depth=2
	movl	-92(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	40(%rcx), %eax
	jle	.LBB8_167
# BB#135:                               # %if.then.411
                                        #   in Loop: Header=BB8_119 Depth=2
	movq	-16(%rbp), %rax
	movl	40(%rax), %ecx
	addl	-96(%rbp), %ecx
	subl	-92(%rbp), %ecx
	addl	-108(%rbp), %ecx
	movl	%ecx, -112(%rbp)
	movl	-80(%rbp), %ecx
	subl	-28(%rbp), %ecx
	movl	%ecx, -116(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB8_137
# BB#136:                               # %cond.true.419
                                        #   in Loop: Header=BB8_119 Depth=2
	xorl	%eax, %eax
	subl	-116(%rbp), %eax
	movl	-84(%rbp), %ecx
	subl	-88(%rbp), %ecx
	movl	%eax, -280(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	-20(%rbp)
	movl	-280(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, -284(%rbp)        # 4-byte Spill
	jmp	.LBB8_138
.LBB8_137:                              # %cond.false.423
                                        #   in Loop: Header=BB8_119 Depth=2
	xorl	%eax, %eax
	movl	%eax, -284(%rbp)        # 4-byte Spill
	jmp	.LBB8_138
.LBB8_138:                              # %cond.end.424
                                        #   in Loop: Header=BB8_119 Depth=2
	movl	-284(%rbp), %eax        # 4-byte Reload
	movl	%eax, -132(%rbp)
	movl	-80(%rbp), %eax
	addl	-132(%rbp), %eax
	movl	-28(%rbp), %ecx
	addl	-24(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jle	.LBB8_140
# BB#139:                               # %if.then.431
                                        #   in Loop: Header=BB8_119 Depth=2
	movl	-28(%rbp), %eax
	addl	-24(%rbp), %eax
	subl	$1, %eax
	subl	-80(%rbp), %eax
	movl	%eax, -132(%rbp)
.LBB8_140:                              # %if.end.435
                                        #   in Loop: Header=BB8_119 Depth=2
	cmpl	$0, -132(%rbp)
	jle	.LBB8_164
# BB#141:                               # %if.then.438
                                        #   in Loop: Header=BB8_119 Depth=2
	jmp	.LBB8_142
.LBB8_142:                              # %do.body.439
                                        #   in Loop: Header=BB8_119 Depth=2
	jmp	.LBB8_143
.LBB8_143:                              # %do.end.440
                                        #   in Loop: Header=BB8_119 Depth=2
	movl	-28(%rbp), %eax
	addl	-24(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -128(%rbp)
.LBB8_144:                              # %for.cond.443
                                        #   Parent Loop BB8_84 Depth=1
                                        #     Parent Loop BB8_119 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-128(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jl	.LBB8_155
# BB#145:                               # %for.body.446
                                        #   in Loop: Header=BB8_144 Depth=3
	movl	-128(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB8_147
# BB#146:                               # %cond.true.449
                                        #   in Loop: Header=BB8_144 Depth=3
	movslq	-128(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-72(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jmp	.LBB8_148
.LBB8_147:                              # %cond.false.452
                                        #   in Loop: Header=BB8_144 Depth=3
	movl	-128(%rbp), %eax
	subl	-28(%rbp), %eax
	movslq	%eax, %rcx
	imulq	$40, %rcx, %rcx
	addq	-64(%rbp), %rcx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
.LBB8_148:                              # %cond.end.456
                                        #   in Loop: Header=BB8_144 Depth=3
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	FreeMline
	movl	-128(%rbp), %ecx
	subl	-132(%rbp), %ecx
	cmpl	-80(%rbp), %ecx
	jge	.LBB8_150
# BB#149:                               # %if.then.461
                                        #   in Loop: Header=BB8_144 Depth=3
	jmp	.LBB8_154
.LBB8_150:                              # %if.end.462
                                        #   in Loop: Header=BB8_144 Depth=3
	movl	-128(%rbp), %eax
	subl	-132(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB8_152
# BB#151:                               # %cond.true.466
                                        #   in Loop: Header=BB8_144 Depth=3
	movl	-128(%rbp), %eax
	subl	-132(%rbp), %eax
	movslq	%eax, %rcx
	imulq	$40, %rcx, %rcx
	addq	-72(%rbp), %rcx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
	jmp	.LBB8_153
.LBB8_152:                              # %cond.false.470
                                        #   in Loop: Header=BB8_144 Depth=3
	movl	-128(%rbp), %eax
	subl	-132(%rbp), %eax
	subl	-28(%rbp), %eax
	movslq	%eax, %rcx
	imulq	$40, %rcx, %rcx
	addq	-64(%rbp), %rcx
	movq	%rcx, -304(%rbp)        # 8-byte Spill
.LBB8_153:                              # %cond.end.475
                                        #   in Loop: Header=BB8_144 Depth=3
	movq	-304(%rbp), %rax        # 8-byte Reload
	movabsq	$mline_zero, %rcx
	movl	$40, %edx
	movl	%edx, %esi
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rdi
	movq	%rdi, -312(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-312(%rbp), %rax        # 8-byte Reload
	movq	%rsi, -320(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-320(%rbp), %rdx        # 8-byte Reload
	movq	%rcx, -328(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	movq	-328(%rbp), %rsi        # 8-byte Reload
	movq	-320(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
.LBB8_154:                              # %for.inc.477
                                        #   in Loop: Header=BB8_144 Depth=3
	movl	-128(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -128(%rbp)
	jmp	.LBB8_144
.LBB8_155:                              # %for.end.479
                                        #   in Loop: Header=BB8_119 Depth=2
	movl	-132(%rbp), %eax
	addl	-116(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-132(%rbp), %eax
	addl	-80(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB8_157
# BB#156:                               # %cond.true.484
                                        #   in Loop: Header=BB8_119 Depth=2
	movslq	-80(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-72(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	jmp	.LBB8_158
.LBB8_157:                              # %cond.false.487
                                        #   in Loop: Header=BB8_119 Depth=2
	movl	-80(%rbp), %eax
	subl	-28(%rbp), %eax
	movslq	%eax, %rcx
	imulq	$40, %rcx, %rcx
	addq	-64(%rbp), %rcx
	movq	%rcx, -336(%rbp)        # 8-byte Spill
.LBB8_158:                              # %cond.end.491
                                        #   in Loop: Header=BB8_119 Depth=2
	movq	-336(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	cmpl	$0, -120(%rbp)
	jle	.LBB8_163
# BB#159:                               # %if.then.495
                                        #   in Loop: Header=BB8_119 Depth=2
	movl	-120(%rbp), %eax
	addl	-132(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jle	.LBB8_161
# BB#160:                               # %cond.true.499
                                        #   in Loop: Header=BB8_119 Depth=2
	xorl	%eax, %eax
	movl	%eax, -340(%rbp)        # 4-byte Spill
	jmp	.LBB8_162
.LBB8_161:                              # %cond.false.500
                                        #   in Loop: Header=BB8_119 Depth=2
	movl	-120(%rbp), %eax
	addl	-132(%rbp), %eax
	movl	%eax, -340(%rbp)        # 4-byte Spill
.LBB8_162:                              # %cond.end.502
                                        #   in Loop: Header=BB8_119 Depth=2
	movl	-340(%rbp), %eax        # 4-byte Reload
	movl	%eax, -120(%rbp)
.LBB8_163:                              # %if.end.504
                                        #   in Loop: Header=BB8_119 Depth=2
	jmp	.LBB8_164
.LBB8_164:                              # %if.end.505
                                        #   in Loop: Header=BB8_119 Depth=2
	jmp	.LBB8_165
.LBB8_165:                              # %do.body.506
                                        #   in Loop: Header=BB8_119 Depth=2
	jmp	.LBB8_166
.LBB8_166:                              # %do.end.507
                                        #   in Loop: Header=BB8_119 Depth=2
	jmp	.LBB8_167
.LBB8_167:                              # %if.end.508
                                        #   in Loop: Header=BB8_119 Depth=2
	movq	-16(%rbp), %rax
	cmpl	$0, 9520(%rax)
	jle	.LBB8_174
# BB#168:                               # %land.lhs.true.512
                                        #   in Loop: Header=BB8_119 Depth=2
	movl	-76(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	9520(%rcx), %edx
	subl	$1, %edx
	movq	-16(%rbp), %rcx
	addl	10860(%rcx), %edx
	cmpl	%edx, %eax
	jne	.LBB8_174
# BB#169:                               # %land.lhs.true.519
                                        #   in Loop: Header=BB8_119 Depth=2
	movl	-92(%rbp), %eax
	subl	-88(%rbp), %eax
	cmpl	$0, %eax
	jg	.LBB8_174
# BB#170:                               # %if.then.523
                                        #   in Loop: Header=BB8_119 Depth=2
	movl	-80(%rbp), %eax
	subl	-28(%rbp), %eax
	cmpl	$0, %eax
	jl	.LBB8_172
# BB#171:                               # %cond.true.527
                                        #   in Loop: Header=BB8_119 Depth=2
	movl	-80(%rbp), %eax
	addl	$1, %eax
	subl	-28(%rbp), %eax
	movl	%eax, -344(%rbp)        # 4-byte Spill
	jmp	.LBB8_173
.LBB8_172:                              # %cond.false.530
                                        #   in Loop: Header=BB8_119 Depth=2
	xorl	%eax, %eax
	movl	%eax, -344(%rbp)        # 4-byte Spill
	jmp	.LBB8_173
.LBB8_173:                              # %cond.end.531
                                        #   in Loop: Header=BB8_119 Depth=2
	movl	-344(%rbp), %eax        # 4-byte Reload
	movl	%eax, -120(%rbp)
.LBB8_174:                              # %if.end.533
                                        #   in Loop: Header=BB8_119 Depth=2
	movl	-88(%rbp), %eax
	movl	-92(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -92(%rbp)
	movl	-88(%rbp), %eax
	movl	-96(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -96(%rbp)
	movl	-88(%rbp), %eax
	movl	-84(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -84(%rbp)
	cmpl	$0, -92(%rbp)
	jne	.LBB8_181
# BB#175:                               # %if.then.539
                                        #   in Loop: Header=BB8_119 Depth=2
	movq	-40(%rbp), %rdi
	callq	FreeMline
	movq	-16(%rbp), %rdi
	movl	32(%rdi), %eax
	movl	%eax, -92(%rbp)
	movl	-76(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -76(%rbp)
	cmpl	$0, %eax
	jl	.LBB8_180
# BB#176:                               # %if.then.545
                                        #   in Loop: Header=BB8_119 Depth=2
	movl	-76(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	10860(%rcx), %eax
	jge	.LBB8_178
# BB#177:                               # %cond.true.549
                                        #   in Loop: Header=BB8_119 Depth=2
	movq	-16(%rbp), %rax
	movl	10864(%rax), %ecx
	addl	-76(%rbp), %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	movl	%ecx, %eax
	cltd
	movq	-352(%rbp), %rsi        # 8-byte Reload
	idivl	10860(%rsi)
	movslq	%edx, %rdi
	movq	-16(%rbp), %r8
	imulq	$40, %rdi, %rdi
	addq	10872(%r8), %rdi
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	jmp	.LBB8_179
.LBB8_178:                              # %cond.false.557
                                        #   in Loop: Header=BB8_119 Depth=2
	movl	-76(%rbp), %eax
	movq	-16(%rbp), %rcx
	subl	10860(%rcx), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	imulq	$40, %rcx, %rcx
	addq	9864(%rdx), %rcx
	movq	%rcx, -360(%rbp)        # 8-byte Spill
.LBB8_179:                              # %cond.end.563
                                        #   in Loop: Header=BB8_119 Depth=2
	movq	-360(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
.LBB8_180:                              # %if.end.565
                                        #   in Loop: Header=BB8_119 Depth=2
	jmp	.LBB8_181
.LBB8_181:                              # %if.end.566
                                        #   in Loop: Header=BB8_119 Depth=2
	cmpl	$0, -96(%rbp)
	jne	.LBB8_188
# BB#182:                               # %if.then.569
                                        #   in Loop: Header=BB8_119 Depth=2
	movl	-20(%rbp), %eax
	movl	%eax, -96(%rbp)
	movl	-80(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, %eax
	jl	.LBB8_187
# BB#183:                               # %if.then.573
                                        #   in Loop: Header=BB8_119 Depth=2
	movl	-80(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB8_185
# BB#184:                               # %cond.true.576
                                        #   in Loop: Header=BB8_119 Depth=2
	movslq	-80(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-72(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jmp	.LBB8_186
.LBB8_185:                              # %cond.false.579
                                        #   in Loop: Header=BB8_119 Depth=2
	movl	-80(%rbp), %eax
	subl	-28(%rbp), %eax
	movslq	%eax, %rcx
	imulq	$40, %rcx, %rcx
	addq	-64(%rbp), %rcx
	movq	%rcx, -368(%rbp)        # 8-byte Spill
.LBB8_186:                              # %cond.end.583
                                        #   in Loop: Header=BB8_119 Depth=2
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
.LBB8_187:                              # %if.end.585
                                        #   in Loop: Header=BB8_119 Depth=2
	jmp	.LBB8_188
.LBB8_188:                              # %if.end.586
                                        #   in Loop: Header=BB8_119 Depth=2
	jmp	.LBB8_119
.LBB8_189:                              # %while.end.587
                                        #   in Loop: Header=BB8_84 Depth=1
	jmp	.LBB8_190
.LBB8_190:                              # %do.body.588
                                        #   in Loop: Header=BB8_84 Depth=1
	jmp	.LBB8_191
.LBB8_191:                              # %do.end.589
                                        #   in Loop: Header=BB8_84 Depth=1
	jmp	.LBB8_84
.LBB8_192:                              # %while.end.590
	jmp	.LBB8_193
.LBB8_193:                              # %while.cond.591
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -76(%rbp)
	jl	.LBB8_200
# BB#194:                               # %while.body.594
                                        #   in Loop: Header=BB8_193 Depth=1
	movq	-40(%rbp), %rdi
	callq	FreeMline
	movl	-76(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -76(%rbp)
	cmpl	$0, %eax
	jl	.LBB8_199
# BB#195:                               # %if.then.598
                                        #   in Loop: Header=BB8_193 Depth=1
	movl	-76(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	10860(%rcx), %eax
	jge	.LBB8_197
# BB#196:                               # %cond.true.602
                                        #   in Loop: Header=BB8_193 Depth=1
	movq	-16(%rbp), %rax
	movl	10864(%rax), %ecx
	addl	-76(%rbp), %ecx
	movq	-16(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	movl	%ecx, %eax
	cltd
	movq	-376(%rbp), %rsi        # 8-byte Reload
	idivl	10860(%rsi)
	movslq	%edx, %rdi
	movq	-16(%rbp), %r8
	imulq	$40, %rdi, %rdi
	addq	10872(%r8), %rdi
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	jmp	.LBB8_198
.LBB8_197:                              # %cond.false.610
                                        #   in Loop: Header=BB8_193 Depth=1
	movl	-76(%rbp), %eax
	movq	-16(%rbp), %rcx
	subl	10860(%rcx), %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	imulq	$40, %rcx, %rcx
	addq	9864(%rdx), %rcx
	movq	%rcx, -384(%rbp)        # 8-byte Spill
.LBB8_198:                              # %cond.end.616
                                        #   in Loop: Header=BB8_193 Depth=1
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	%rax, -40(%rbp)
.LBB8_199:                              # %if.end.618
                                        #   in Loop: Header=BB8_193 Depth=1
	jmp	.LBB8_193
.LBB8_200:                              # %while.end.619
	jmp	.LBB8_201
.LBB8_201:                              # %while.cond.620
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -80(%rbp)
	jl	.LBB8_210
# BB#202:                               # %while.body.623
                                        #   in Loop: Header=BB8_201 Depth=1
	movq	-48(%rbp), %rdi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	callq	AllocMline
	cmpl	$0, %eax
	je	.LBB8_204
# BB#203:                               # %if.then.627
	jmp	.LBB8_223
.LBB8_204:                              # %if.end.628
                                        #   in Loop: Header=BB8_201 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, %esi
	callq	MakeBlankLine
	movl	-80(%rbp), %ecx
	addl	$-1, %ecx
	movl	%ecx, -80(%rbp)
	cmpl	$0, %ecx
	jl	.LBB8_209
# BB#205:                               # %if.then.634
                                        #   in Loop: Header=BB8_201 Depth=1
	movl	-80(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB8_207
# BB#206:                               # %cond.true.637
                                        #   in Loop: Header=BB8_201 Depth=1
	movslq	-80(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-72(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	jmp	.LBB8_208
.LBB8_207:                              # %cond.false.640
                                        #   in Loop: Header=BB8_201 Depth=1
	movl	-80(%rbp), %eax
	subl	-28(%rbp), %eax
	movslq	%eax, %rcx
	imulq	$40, %rcx, %rcx
	addq	-64(%rbp), %rcx
	movq	%rcx, -392(%rbp)        # 8-byte Spill
.LBB8_208:                              # %cond.end.644
                                        #   in Loop: Header=BB8_201 Depth=1
	movq	-392(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
.LBB8_209:                              # %if.end.646
                                        #   in Loop: Header=BB8_201 Depth=1
	jmp	.LBB8_201
.LBB8_210:                              # %while.end.647
	movq	-16(%rbp), %rax
	cmpq	$0, 9864(%rax)
	je	.LBB8_213
# BB#211:                               # %land.lhs.true.650
	movq	-16(%rbp), %rax
	movq	9864(%rax), %rax
	cmpq	-64(%rbp), %rax
	je	.LBB8_213
# BB#212:                               # %if.then.654
	movq	-16(%rbp), %rax
	movq	9864(%rax), %rax
	movq	%rax, %rdi
	callq	free
.LBB8_213:                              # %if.end.656
	movq	-64(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 9864(%rcx)
	movq	-16(%rbp), %rax
	cmpq	$0, 10872(%rax)
	je	.LBB8_216
# BB#214:                               # %land.lhs.true.660
	movq	-16(%rbp), %rax
	movq	10872(%rax), %rax
	cmpq	-72(%rbp), %rax
	je	.LBB8_216
# BB#215:                               # %if.then.664
	movq	-16(%rbp), %rax
	movq	10872(%rax), %rax
	movq	%rax, %rdi
	callq	free
.LBB8_216:                              # %if.end.666
	movq	-72(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 10872(%rcx)
	movq	-16(%rbp), %rax
	movl	32(%rax), %edx
	cmpl	-20(%rbp), %edx
	je	.LBB8_254
# BB#217:                               # %if.then.672
	cmpl	$0, -20(%rbp)
	je	.LBB8_250
# BB#218:                               # %if.then.674
	movq	-16(%rbp), %rax
	cmpq	$0, 10808(%rax)
	je	.LBB8_220
# BB#219:                               # %cond.true.676
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	movl	%ecx, -396(%rbp)        # 4-byte Spill
	jmp	.LBB8_221
.LBB8_220:                              # %cond.false.679
	xorl	%eax, %eax
	movl	%eax, -396(%rbp)        # 4-byte Spill
	jmp	.LBB8_221
.LBB8_221:                              # %cond.end.680
	movl	-396(%rbp), %eax        # 4-byte Reload
	movl	%eax, -124(%rbp)
	movq	-16(%rbp), %rcx
	movq	10808(%rcx), %rdi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	callq	xrealloc
	movq	-16(%rbp), %rcx
	movq	%rax, 10808(%rcx)
	movq	-16(%rbp), %rax
	cmpq	$0, 10808(%rax)
	jne	.LBB8_243
# BB#222:                               # %if.then.689
	jmp	.LBB8_223
.LBB8_223:                              # %nomem
	cmpq	$0, -64(%rbp)
	je	.LBB8_238
# BB#224:                               # %if.then.691
	movl	-24(%rbp), %eax
	addl	-28(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -80(%rbp)
.LBB8_225:                              # %for.cond.694
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -80(%rbp)
	jl	.LBB8_231
# BB#226:                               # %for.body.697
                                        #   in Loop: Header=BB8_225 Depth=1
	movl	-80(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB8_228
# BB#227:                               # %cond.true.700
                                        #   in Loop: Header=BB8_225 Depth=1
	movslq	-80(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	-72(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	jmp	.LBB8_229
.LBB8_228:                              # %cond.false.703
                                        #   in Loop: Header=BB8_225 Depth=1
	movl	-80(%rbp), %eax
	subl	-28(%rbp), %eax
	movslq	%eax, %rcx
	imulq	$40, %rcx, %rcx
	addq	-64(%rbp), %rcx
	movq	%rcx, -408(%rbp)        # 8-byte Spill
.LBB8_229:                              # %cond.end.707
                                        #   in Loop: Header=BB8_225 Depth=1
	movq	-408(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	FreeMline
# BB#230:                               # %for.inc.709
                                        #   in Loop: Header=BB8_225 Depth=1
	movl	-80(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB8_225
.LBB8_231:                              # %for.end.711
	cmpq	$0, -64(%rbp)
	je	.LBB8_234
# BB#232:                               # %land.lhs.true.713
	movq	-16(%rbp), %rax
	movq	9864(%rax), %rax
	cmpq	-64(%rbp), %rax
	je	.LBB8_234
# BB#233:                               # %if.then.717
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB8_234:                              # %if.end.718
	cmpq	$0, -72(%rbp)
	je	.LBB8_237
# BB#235:                               # %land.lhs.true.720
	movq	-16(%rbp), %rax
	movq	10872(%rax), %rax
	cmpq	-72(%rbp), %rax
	je	.LBB8_237
# BB#236:                               # %if.then.724
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB8_237:                              # %if.end.725
	jmp	.LBB8_238
.LBB8_238:                              # %if.end.726
	movq	-16(%rbp), %rdi
	callq	KillWindow
	xorl	%edi, %edi
	movabsq	$.L.str.2, %rsi
	movabsq	$strnomem, %rdx
	movb	$0, %al
	callq	Msg
	cmpq	$0, -64(%rbp)
	je	.LBB8_240
# BB#239:                               # %if.then.728
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB8_240:                              # %if.end.729
	cmpq	$0, -72(%rbp)
	je	.LBB8_242
# BB#241:                               # %if.then.731
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	callq	free
.LBB8_242:                              # %if.end.732
	movl	$-1, -4(%rbp)
	jmp	.LBB8_287
.LBB8_243:                              # %if.end.733
	jmp	.LBB8_244
.LBB8_244:                              # %for.cond.734
                                        # =>This Inner Loop Header: Depth=1
	movl	-124(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB8_249
# BB#245:                               # %for.body.737
                                        #   in Loop: Header=BB8_244 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -124(%rbp)
	movb	%cl, -409(%rbp)         # 1-byte Spill
	je	.LBB8_247
# BB#246:                               # %land.rhs.739
                                        #   in Loop: Header=BB8_244 Depth=1
	movl	-124(%rbp), %eax
	andl	$7, %eax
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	movb	%cl, -409(%rbp)         # 1-byte Spill
.LBB8_247:                              # %land.end.741
                                        #   in Loop: Header=BB8_244 Depth=1
	movb	-409(%rbp), %al         # 1-byte Reload
	xorl	%ecx, %ecx
	movl	$1, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movb	%cl, %al
	movslq	-124(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	10808(%rdi), %rdi
	movb	%al, (%rdi,%rsi)
# BB#248:                               # %for.inc.747
                                        #   in Loop: Header=BB8_244 Depth=1
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB8_244
.LBB8_249:                              # %for.end.749
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	10808(%rcx), %rcx
	movb	$0, (%rcx,%rax)
	jmp	.LBB8_253
.LBB8_250:                              # %if.else.753
	movq	-16(%rbp), %rax
	cmpq	$0, 10808(%rax)
	je	.LBB8_252
# BB#251:                               # %if.then.756
	movq	-16(%rbp), %rax
	movq	10808(%rax), %rdi
	callq	free
.LBB8_252:                              # %if.end.758
	movq	-16(%rbp), %rax
	movq	$0, 10808(%rax)
.LBB8_253:                              # %if.end.760
	jmp	.LBB8_254
.LBB8_254:                              # %if.end.761
	movl	-116(%rbp), %eax
	movq	-16(%rbp), %rcx
	subl	44(%rcx), %eax
	movq	-16(%rbp), %rcx
	addl	9920(%rcx), %eax
	movl	%eax, 9920(%rcx)
	movl	-112(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 40(%rcx)
	movl	-116(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 44(%rcx)
	movq	-16(%rbp), %rcx
	cmpl	$0, 9520(%rcx)
	jle	.LBB8_256
# BB#255:                               # %if.then.774
	movl	-120(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 9520(%rcx)
.LBB8_256:                              # %if.end.776
	movq	-16(%rbp), %rax
	movl	40(%rax), %ecx
	cmpl	-20(%rbp), %ecx
	jle	.LBB8_258
# BB#257:                               # %if.then.781
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 40(%rcx)
.LBB8_258:                              # %if.end.784
	movq	-16(%rbp), %rax
	movl	44(%rax), %ecx
	cmpl	-24(%rbp), %ecx
	jl	.LBB8_260
# BB#259:                               # %if.then.789
	movl	-24(%rbp), %eax
	subl	$1, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 44(%rcx)
.LBB8_260:                              # %if.end.793
	movq	-16(%rbp), %rax
	movl	9916(%rax), %ecx
	cmpl	-20(%rbp), %ecx
	jle	.LBB8_262
# BB#261:                               # %if.then.797
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 9916(%rcx)
.LBB8_262:                              # %if.end.800
	movq	-16(%rbp), %rax
	movl	9920(%rax), %ecx
	cmpl	-24(%rbp), %ecx
	jl	.LBB8_264
# BB#263:                               # %if.then.805
	movl	-24(%rbp), %eax
	subl	$1, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 9920(%rcx)
.LBB8_264:                              # %if.end.809
	movq	-16(%rbp), %rax
	cmpl	$0, 9920(%rax)
	jge	.LBB8_266
# BB#265:                               # %if.then.814
	movq	-16(%rbp), %rax
	movl	$0, 9920(%rax)
.LBB8_266:                              # %if.end.817
	movq	-16(%rbp), %rax
	movl	12760(%rax), %ecx
	cmpl	-20(%rbp), %ecx
	jle	.LBB8_268
# BB#267:                               # %if.then.821
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 12760(%rcx)
.LBB8_268:                              # %if.end.825
	movq	-16(%rbp), %rax
	movl	12764(%rax), %ecx
	cmpl	-24(%rbp), %ecx
	jl	.LBB8_270
# BB#269:                               # %if.then.831
	movl	-24(%rbp), %eax
	subl	$1, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 12764(%rcx)
.LBB8_270:                              # %if.end.836
	movq	-16(%rbp), %rax
	cmpl	$0, 12764(%rax)
	jge	.LBB8_272
# BB#271:                               # %if.then.842
	movq	-16(%rbp), %rax
	movl	$0, 12764(%rax)
.LBB8_272:                              # %if.end.846
	movq	-16(%rbp), %rax
	movl	$0, 9956(%rax)
	movl	-24(%rbp), %ecx
	subl	$1, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 9960(%rax)
	cmpl	$0, -20(%rbp)
	je	.LBB8_286
# BB#273:                               # %land.lhs.true.849
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	cmpl	-20(%rbp), %ecx
	jne	.LBB8_275
# BB#274:                               # %lor.lhs.false.854
	movq	-16(%rbp), %rax
	movl	36(%rax), %ecx
	cmpl	-24(%rbp), %ecx
	je	.LBB8_286
.LBB8_275:                              # %land.lhs.true.859
	movq	-16(%rbp), %rax
	cmpl	$0, 32(%rax)
	je	.LBB8_286
# BB#276:                               # %land.lhs.true.864
	movq	-16(%rbp), %rax
	cmpl	$0, 36(%rax)
	je	.LBB8_286
# BB#277:                               # %land.lhs.true.869
	movq	-16(%rbp), %rax
	cmpl	$0, 524(%rax)
	jl	.LBB8_286
# BB#278:                               # %land.lhs.true.872
	movq	-16(%rbp), %rax
	cmpl	$0, 10992(%rax)
	je	.LBB8_286
# BB#279:                               # %if.then.874
	movl	-20(%rbp), %eax
	movw	%ax, %cx
	movw	%cx, glwz+2
	movl	-24(%rbp), %eax
	movw	%ax, %cx
	movw	%cx, glwz
# BB#280:                               # %do.body.877
	jmp	.LBB8_281
.LBB8_281:                              # %do.end.878
	movl	$21524, %eax            # imm = 0x5414
	movl	%eax, %esi
	movabsq	$glwz, %rcx
	movq	-16(%rbp), %rdx
	movl	524(%rdx), %edi
	movq	%rcx, %rdx
	movb	$0, %al
	callq	ioctl
	cmpl	$0, %eax
	je	.LBB8_285
# BB#282:                               # %if.then.882
	jmp	.LBB8_283
.LBB8_283:                              # %do.body.883
	jmp	.LBB8_284
.LBB8_284:                              # %do.end.884
	jmp	.LBB8_285
.LBB8_285:                              # %if.end.885
	jmp	.LBB8_286
.LBB8_286:                              # %if.end.886
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 36(%rcx)
	movq	-16(%rbp), %rcx
	movl	$0, 10864(%rcx)
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 10860(%rcx)
	movl	$0, -4(%rbp)
.LBB8_287:                              # %return
	movl	-4(%rbp), %eax
	addq	$416, %rsp              # imm = 0x1A0
	popq	%rbp
	retq
.Lfunc_end8:
	.size	ChangeWindowSize, .Lfunc_end8-ChangeWindowSize
	.cfi_endproc

	.align	16, 0x90
	.type	FreeMline,@function
FreeMline:                              # @FreeMline
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, (%rdi)
	je	.LBB9_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	free
.LBB9_2:                                # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB9_5
# BB#3:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	null, %rax
	je	.LBB9_5
# BB#4:                                 # %if.then.4
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	free
.LBB9_5:                                # %if.end.6
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB9_8
# BB#6:                                 # %land.lhs.true.8
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	null, %rax
	je	.LBB9_8
# BB#7:                                 # %if.then.11
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	free
.LBB9_8:                                # %if.end.13
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB9_11
# BB#9:                                 # %land.lhs.true.15
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	null, %rax
	je	.LBB9_11
# BB#10:                                # %if.then.18
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	free
.LBB9_11:                               # %if.end.20
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB9_14
# BB#12:                                # %land.lhs.true.22
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	null, %rax
	je	.LBB9_14
# BB#13:                                # %if.then.25
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	free
.LBB9_14:                               # %if.end.27
	movabsq	$mline_zero, %rax
	movl	$40, %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	memcpy
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	FreeMline, .Lfunc_end9-FreeMline
	.cfi_endproc

	.align	16, 0x90
	.type	AllocMline,@function
AllocMline:                             # @AllocMline
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movslq	-20(%rbp), %rdi
	callq	malloc
	movq	-16(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	null, %rax
	movq	-16(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	null, %rax
	movq	-16(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	null, %rax
	movq	-16(%rbp), %rdi
	movq	%rax, 24(%rdi)
	movq	null, %rax
	movq	-16(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB10_3
.LBB10_2:                               # %if.end
	movl	$0, -4(%rbp)
.LBB10_3:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	AllocMline, .Lfunc_end10-AllocMline
	.cfi_endproc

	.align	16, 0x90
	.type	MakeBlankLine,@function
MakeBlankLine:                          # @MakeBlankLine
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
.LBB11_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -12(%rbp)
	cmpl	$0, %eax
	je	.LBB11_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	movb	$32, (%rax)
	jmp	.LBB11_1
.LBB11_3:                               # %while.end
	popq	%rbp
	retq
.Lfunc_end11:
	.size	MakeBlankLine, .Lfunc_end11-MakeBlankLine
	.cfi_endproc

	.align	16, 0x90
	.type	BcopyMline,@function
BcopyMline:                             # @BcopyMline
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
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movl	$0, -40(%rbp)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movslq	-12(%rbp), %rdi
	addq	%rdi, %rdx
	movq	-24(%rbp), %rdi
	movq	(%rdi), %rdi
	movslq	-28(%rbp), %rax
	addq	%rax, %rdi
	movslq	-32(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	bcopy
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	null, %rax
	je	.LBB12_5
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	null, %rax
	jne	.LBB12_5
# BB#2:                                 # %if.then
	movl	$1, %eax
	movl	%eax, %esi
	movslq	-36(%rbp), %rdi
	callq	calloc
	movq	-24(%rbp), %rsi
	movq	%rax, 8(%rsi)
	cmpq	$0, %rax
	jne	.LBB12_4
# BB#3:                                 # %if.then.12
	movq	null, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movl	$-1, -40(%rbp)
.LBB12_4:                               # %if.end
	jmp	.LBB12_5
.LBB12_5:                               # %if.end.14
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	null, %rax
	je	.LBB12_7
# BB#6:                                 # %if.then.18
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-12(%rbp), %rcx
	addq	%rcx, %rax
	movq	-24(%rbp), %rcx
	movq	8(%rcx), %rcx
	movslq	-28(%rbp), %rdx
	addq	%rdx, %rcx
	movslq	-32(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	bcopy
.LBB12_7:                               # %if.end.26
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	null, %rax
	je	.LBB12_12
# BB#8:                                 # %land.lhs.true.29
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	null, %rax
	jne	.LBB12_12
# BB#9:                                 # %if.then.33
	movl	$1, %eax
	movl	%eax, %esi
	movslq	-36(%rbp), %rdi
	callq	calloc
	movq	-24(%rbp), %rsi
	movq	%rax, 16(%rsi)
	cmpq	$0, %rax
	jne	.LBB12_11
# BB#10:                                # %if.then.39
	movq	null, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movl	$-1, -40(%rbp)
.LBB12_11:                              # %if.end.41
	jmp	.LBB12_12
.LBB12_12:                              # %if.end.42
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	null, %rax
	je	.LBB12_14
# BB#13:                                # %if.then.46
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movslq	-12(%rbp), %rcx
	addq	%rcx, %rax
	movq	-24(%rbp), %rcx
	movq	16(%rcx), %rcx
	movslq	-28(%rbp), %rdx
	addq	%rdx, %rcx
	movslq	-32(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	bcopy
.LBB12_14:                              # %if.end.54
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	null, %rax
	je	.LBB12_19
# BB#15:                                # %land.lhs.true.57
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	null, %rax
	jne	.LBB12_19
# BB#16:                                # %if.then.61
	movl	$1, %eax
	movl	%eax, %esi
	movslq	-36(%rbp), %rdi
	callq	calloc
	movq	-24(%rbp), %rsi
	movq	%rax, 24(%rsi)
	cmpq	$0, %rax
	jne	.LBB12_18
# BB#17:                                # %if.then.67
	movq	null, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movl	$-1, -40(%rbp)
.LBB12_18:                              # %if.end.69
	jmp	.LBB12_19
.LBB12_19:                              # %if.end.70
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	null, %rax
	je	.LBB12_21
# BB#20:                                # %if.then.74
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movslq	-12(%rbp), %rcx
	addq	%rcx, %rax
	movq	-24(%rbp), %rcx
	movq	24(%rcx), %rcx
	movslq	-28(%rbp), %rdx
	addq	%rdx, %rcx
	movslq	-32(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	bcopy
.LBB12_21:                              # %if.end.82
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	null, %rax
	je	.LBB12_26
# BB#22:                                # %land.lhs.true.85
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	null, %rax
	jne	.LBB12_26
# BB#23:                                # %if.then.89
	movl	$1, %eax
	movl	%eax, %esi
	movslq	-36(%rbp), %rdi
	callq	calloc
	movq	-24(%rbp), %rsi
	movq	%rax, 32(%rsi)
	cmpq	$0, %rax
	jne	.LBB12_25
# BB#24:                                # %if.then.95
	movq	null, %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movl	$-1, -40(%rbp)
.LBB12_25:                              # %if.end.97
	jmp	.LBB12_26
.LBB12_26:                              # %if.end.98
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	null, %rax
	je	.LBB12_28
# BB#27:                                # %if.then.102
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movslq	-12(%rbp), %rcx
	addq	%rcx, %rax
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rcx
	movslq	-28(%rbp), %rdx
	addq	%rdx, %rcx
	movslq	-32(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	bcopy
.LBB12_28:                              # %if.end.110
	movl	-40(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	BcopyMline, .Lfunc_end12-BcopyMline
	.cfi_endproc

	.globl	FreeAltScreen
	.align	16, 0x90
	.type	FreeAltScreen,@function
FreeAltScreen:                          # @FreeAltScreen
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 12720(%rdi)
	je	.LBB13_6
# BB#1:                                 # %if.then
	movl	$0, -12(%rbp)
.LBB13_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	12732(%rcx), %eax
	jge	.LBB13_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB13_2 Depth=1
	movq	-8(%rbp), %rax
	movq	12720(%rax), %rax
	movslq	-12(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdi
	callq	FreeMline
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB13_2 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB13_2
.LBB13_5:                               # %for.end
	movq	-8(%rbp), %rax
	movq	12720(%rax), %rax
	movq	%rax, %rdi
	callq	free
.LBB13_6:                               # %if.end
	movq	-8(%rbp), %rax
	movq	$0, 12720(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 12728(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 12732(%rax)
	movq	-8(%rbp), %rax
	cmpq	$0, 12744(%rax)
	je	.LBB13_12
# BB#7:                                 # %if.then.13
	movl	$0, -12(%rbp)
.LBB13_8:                               # %for.cond.14
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	12736(%rcx), %eax
	jge	.LBB13_11
# BB#9:                                 # %for.body.17
                                        #   in Loop: Header=BB13_8 Depth=1
	movq	-8(%rbp), %rax
	movq	12744(%rax), %rax
	movslq	-12(%rbp), %rcx
	imulq	$40, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdi
	callq	FreeMline
# BB#10:                                # %for.inc.22
                                        #   in Loop: Header=BB13_8 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB13_8
.LBB13_11:                              # %for.end.24
	movq	-8(%rbp), %rax
	movq	12744(%rax), %rax
	movq	%rax, %rdi
	callq	free
.LBB13_12:                              # %if.end.27
	movq	-8(%rbp), %rax
	movq	$0, 12744(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 12752(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 12736(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	FreeAltScreen, .Lfunc_end13-FreeAltScreen
	.cfi_endproc

	.globl	EnterAltScreen
	.align	16, 0x90
	.type	EnterAltScreen,@function
EnterAltScreen:                         # @EnterAltScreen
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, 12712(%rdi)
	jne	.LBB14_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	FreeAltScreen
	movq	-8(%rbp), %rdi
	callq	SwapAltScreen
	jmp	.LBB14_3
.LBB14_2:                               # %if.else
	movq	-8(%rbp), %rax
	movl	$0, 36(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 10860(%rax)
.LBB14_3:                               # %if.end
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	12728(%rax), %esi
	movq	-8(%rbp), %rax
	movl	12732(%rax), %edx
	movq	-8(%rbp), %rax
	movl	12736(%rax), %ecx
	callq	ChangeWindowSize
	movq	-8(%rbp), %rdi
	movl	$1, 12712(%rdi)
	movl	%eax, -12(%rbp)         # 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	EnterAltScreen, .Lfunc_end14-EnterAltScreen
	.cfi_endproc

	.align	16, 0x90
	.type	SwapAltScreen,@function
SwapAltScreen:                          # @SwapAltScreen
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
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	12720(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	9864(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 12720(%rcx)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 9864(%rcx)
# BB#2:                                 # %do.end
	jmp	.LBB15_3
.LBB15_3:                               # %do.body.4
	movq	-8(%rbp), %rax
	movl	12728(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rax
	movl	32(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 12728(%rax)
	movl	-20(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 32(%rax)
# BB#4:                                 # %do.end.10
	jmp	.LBB15_5
.LBB15_5:                               # %do.body.11
	movq	-8(%rbp), %rax
	movl	12732(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rax
	movl	36(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 12732(%rax)
	movl	-20(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 36(%rax)
# BB#6:                                 # %do.end.18
	jmp	.LBB15_7
.LBB15_7:                               # %do.body.19
	movq	-8(%rbp), %rax
	movl	12736(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rax
	movl	10860(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 12736(%rax)
	movl	-20(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 10860(%rax)
# BB#8:                                 # %do.end.24
	jmp	.LBB15_9
.LBB15_9:                               # %do.body.25
	movq	-8(%rbp), %rax
	movq	12744(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	10872(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 12744(%rcx)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 10872(%rcx)
# BB#10:                                # %do.end.30
	jmp	.LBB15_11
.LBB15_11:                              # %do.body.31
	movq	-8(%rbp), %rax
	movl	12752(%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rax
	movl	10864(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 12752(%rax)
	movl	-20(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 10864(%rax)
# BB#12:                                # %do.end.36
	popq	%rbp
	retq
.Lfunc_end15:
	.size	SwapAltScreen, .Lfunc_end15-SwapAltScreen
	.cfi_endproc

	.globl	LeaveAltScreen
	.align	16, 0x90
	.type	LeaveAltScreen,@function
LeaveAltScreen:                         # @LeaveAltScreen
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, 12712(%rdi)
	jne	.LBB16_2
# BB#1:                                 # %if.then
	jmp	.LBB16_3
.LBB16_2:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	SwapAltScreen
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	12728(%rax), %esi
	movq	-8(%rbp), %rax
	movl	12732(%rax), %edx
	movq	-8(%rbp), %rax
	movl	12736(%rax), %ecx
	callq	ChangeWindowSize
	movq	-8(%rbp), %rdi
	movl	%eax, -12(%rbp)         # 4-byte Spill
	callq	FreeAltScreen
	movq	-8(%rbp), %rdi
	movl	$0, 12712(%rdi)
.LBB16_3:                               # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	LeaveAltScreen, .Lfunc_end16-LeaveAltScreen
	.cfi_endproc

	.type	glwz,@object            # @glwz
	.comm	glwz,8,2
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Window width too large. Truncated to %d."
	.size	.L.str, 41

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Window height too large. Truncated to %d."
	.size	.L.str.1, 42

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%s"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"No memory for history buffer - turned off"
	.size	.L.str.3, 42

	.type	mline_zero,@object      # @mline_zero
	.local	mline_zero
	.comm	mline_zero,40,8
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Aborted because of window size change."
	.size	.L.str.4, 39

	.type	maxwidth,@object        # @maxwidth
	.local	maxwidth
	.comm	maxwidth,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
